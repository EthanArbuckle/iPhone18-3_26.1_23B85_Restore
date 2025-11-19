void sub_2167EA648(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v13 = 0;
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v8 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v17 = (a2 - 1);
            }

            *v16 = v17;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v8;
    }

    else
    {
      v14 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v8 + a2;
      bzero(a1, v10);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v14;
        break;
      case 2:
        *(a1 + v10) = v14;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v10) = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2167EA890(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA904(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA978(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EA9B4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E2C118);
  __swift_project_value_buffer(v0, qword_280E2C118);
  return sub_217007C94();
}

uint64_t sub_2167EAA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_217006A94();
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for MappingInvalidationUpdate();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_2167EAAF4()
{
  result = sub_217006A94();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PageUpdateMappingCoordinator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

int *sub_2167EABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v4 = *(a2 + 16);
  v5 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  OUTLINED_FUNCTION_16();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v7 + 16))(v10, a1, v5);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    (*(v7 + 8))(v10, v5);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v18, v10, v4);
    v20(v16, v18, v4);
    return sub_216E41D9C(v16, 0, 0, 0, 0, v4, v22);
  }
}

uint64_t sub_2167EADCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167EAE64, v4, v3);
}

uint64_t sub_2167EAE64()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_217006A94();
  OUTLINED_FUNCTION_9();
  (*(v3 + 16))(v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2167EAEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v28 = a1;
  v29 = a5;
  v6 = *(a4 + 16);
  v7 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  (*(v16 + 16))(&v26 - v18, a3, v14);
  if (__swift_getEnumTagSinglePayload(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v19, v14);
    v20 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v19, AssociatedTypeWitness);
  }

  (*(v7 + 64))(v27, v20, v6, v7);
  if (v20)
  {
    v22 = swift_getAssociatedConformanceWitness();
    (*(v22 + 48))(AssociatedTypeWitness, v22);
    v23 = sub_21694D558();

    v24 = v23 ^ 1;
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v24 = 1;
  }

  return sub_216E41E50(v13, v24 & 1, AssociatedTypeWitness, v29);
}

uint64_t sub_2167EB1F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166DFAC0;

  return sub_2167EADCC(a1);
}

uint64_t sub_2167EB2D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EB310(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167EB34C()
{
  result = qword_27CAB8278;
  if (!qword_27CAB8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8278);
  }

  return result;
}

uint64_t sub_2167EB3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v93 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v76 - v5;
  v91 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v85 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v82 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v83 = &v76 - v10;
  v11 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v96 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v81 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v76 - v16;
  v18 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v87 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v86 = &v76 - v24;
  OUTLINED_FUNCTION_3_1();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  MEMORY[0x28223BE20](v26);
  sub_21700D7A4();
  v29 = a1;
  sub_21700CE04();
  v30 = *(v96 + 16);
  v89 = v11;
  v79 = v96 + 16;
  v80 = v30;
  v30(v17, v93, v11);
  sub_21700D734();
  v31 = a1;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v34 = v33;
  v36 = *(v20 + 8);
  v35 = v20 + 8;
  v37 = v18;
  v38 = v18;
  v39 = v36;
  (v36)(v28, v38);
  v88 = v34;
  if (v34)
  {
    v40 = v35;
    v41 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
    v94 = v32;
    v95 = v34;
    v42 = v92;
    sub_21700F364();
    v43 = v86;
    sub_21700CE04();
    v44 = sub_21700CD24();
    v46 = v45;
    (v39)(v43, v37);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    *(v42 + *(v41 + 24)) = v47;
    v48 = v87;
    v86 = 0x8000000217082700;
    sub_21700CE04();
    v49 = v90;
    sub_21700CD74();
    v87 = v40;
    (v39)(v48, v37);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v91);
    v51 = v42;
    if (EnumTagSinglePayload == 1)
    {
      sub_21669987C(v90, &qword_27CAB78D0);
      v52 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_35();
      sub_2167EBBB4(v53, v54);
      OUTLINED_FUNCTION_3_0();
      *v55 = 0xD000000000000010;
      v55[1] = v86;
      v55[2] = v41;
      (*(*(v52 - 8) + 104))(v55, *MEMORY[0x277D22530], v52);
      swift_willThrow();
      v56 = OUTLINED_FUNCTION_4_20();
      v57(v56);
      (v39)(v31, v37);
    }

    else
    {
      v77 = v41;
      v78 = v31;
      v86 = v39;
      v66 = v85;
      v67 = v83;
      v68 = v91;
      (*(v85 + 32))(v83, v90, v91);
      (*(v66 + 16))(v82, v67, v68);
      v69 = v93;
      v70 = v89;
      v80(v81, v93, v89);
      type metadata accessor for ContentDescriptor();
      sub_2167EBBB4(qword_280E40390, type metadata accessor for ContentDescriptor);
      v71 = v84;
      v72 = sub_21700E934();
      if (!v71)
      {
        v75 = v72;
        (*(v96 + 8))(v69, v70);
        (v86)(v78, v37);
        result = (*(v66 + 8))(v67, v91);
        *(v51 + *(v77 + 28)) = v75;
        return result;
      }

      (*(v96 + 8))(v69, v70);
      (v86)(v78, v37);
      (*(v66 + 8))(v67, v91);
    }
  }

  else
  {
    v58 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_35();
    sub_2167EBBB4(v59, v60);
    OUTLINED_FUNCTION_3_0();
    v62 = v61;
    v63 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
    *v62 = 25705;
    v62[1] = 0xE200000000000000;
    v62[2] = v63;
    (*(*(v58 - 8) + 104))(v62, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    v64 = OUTLINED_FUNCTION_4_20();
    v65(v64);
    (v39)(v29, v37);
    v51 = v92;
  }

  result = sub_21669987C(v51, &qword_27CAB6D58);
  if (v88)
  {
    v74 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
    return sub_216788110(v51 + *(v74 + 20));
  }

  return result;
}

uint64_t sub_2167EBBB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2167EBC0C()
{
  OUTLINED_FUNCTION_33();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  type metadata accessor for ModalActionModelDestinations.Destination();
  v0[11] = swift_task_alloc();
  v4 = sub_21700DFD4();
  v0[12] = v4;
  v0[13] = *(v4 - 8);
  v0[14] = swift_task_alloc();
  sub_21700EA34();
  v0[15] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v0[16] = v6;
  v0[17] = v5;

  return MEMORY[0x2822009F8](sub_2167EBD2C, v6, v5);
}

uint64_t sub_2167EBD2C()
{
  OUTLINED_FUNCTION_31();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_116();
  sub_21700E094();
  sub_216685F4C(0, &qword_280E29D68);
  sub_21700E094();
  v1 = v0[7];
  v2 = [v1 ams_activeiTunesAccount];
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_2167EBE50;
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  return sub_2167EC4B8(v5, v7, v4, v2, v6);
}

uint64_t sub_2167EBE50()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_2167EC378;
  }

  else
  {
    v7 = sub_2167EBF84;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2167EBF84()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[9];
  v2 = *(v1 + *(type metadata accessor for OpenFinancePageAction(0) + 36));
  if (v2 == 2)
  {
    goto LABEL_2;
  }

  if (v2)
  {
  }

  else
  {
    v6 = sub_21700F7D4();

    if ((v6 & 1) == 0)
    {
LABEL_2:
      v3 = type metadata accessor for PresentSheetAction();
      v0[5] = v3;
      v4 = &qword_280E3EA78;
      v5 = type metadata accessor for PresentSheetAction;
      goto LABEL_7;
    }
  }

  v3 = type metadata accessor for PresentFullScreenCoverAction();
  v0[5] = v3;
  v4 = &qword_27CAB8298;
  v5 = type metadata accessor for PresentFullScreenCoverAction;
LABEL_7:
  v7 = sub_2167EE594(v4, v5);
  v8 = v0[11];
  v9 = v0[9];
  v0[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2167EE6CC(v8, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for ModalActionModelDestinations.Destination);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v11 + 16))(boxed_opaque_existential_1, v9);
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_2167EC1A4;
  v13 = v0[10];
  v14 = v0[8];

  return (sub_216EAE324)(v14, v0 + 2, v13);
}

uint64_t sub_2167EC1A4()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_2167EC414;
  }

  else
  {
    v7 = sub_2167EC2D8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2167EC2D8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_10_11();

  OUTLINED_FUNCTION_1_20();
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC378()
{
  OUTLINED_FUNCTION_31();

  v1 = OUTLINED_FUNCTION_116();
  v2(v1);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC414()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_10_11();

  OUTLINED_FUNCTION_1_20();
  v1 = OUTLINED_FUNCTION_116();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2167EC4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[82] = a5;
  v5[81] = a4;
  v5[80] = a3;
  v5[79] = a2;
  v5[78] = a1;
  v6 = type metadata accessor for OpenFinancePageAction(0);
  v5[83] = v6;
  v7 = *(v6 - 8);
  v5[84] = v7;
  v5[85] = *(v7 + 64);
  v5[86] = swift_task_alloc();
  v8 = sub_217005EF4();
  v5[87] = v8;
  v5[88] = *(v8 - 8);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  sub_21700EA34();
  v5[92] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[93] = v10;
  v5[94] = v9;

  return MEMORY[0x2822009F8](sub_2167EC63C, v10, v9);
}

uint64_t sub_2167EC63C()
{
  OUTLINED_FUNCTION_93();
  sub_216B80558(v0[79] + *(v0[83] + 24), v0[80], v0[91]);
  v1 = sub_21700DF34();
  v0[95] = v1;
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_2167EC780;
  v3 = v0[91];

  return sub_2167ED744(v3, v1);
}

uint64_t sub_2167EC780()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 776) = v7;
  *(v8 + 784) = v0;

  swift_unknownObjectRelease();
  v9 = *(v2 + 752);
  v10 = *(v2 + 744);
  if (v0)
  {
    v11 = sub_2167ED690;
  }

  else
  {
    v11 = sub_2167EC8D8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2167EC8D8()
{
  v95 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 632);
  if (*(v2 + *(v1 + 28)))
  {
    v3 = *(v2 + *(v1 + 28));
  }

  else
  {
    v3 = sub_21700E384();
    v1 = *(v0 + 664);
    v2 = *(v0 + 632);
  }

  v4 = *(v2 + *(v1 + 32));
  sub_21700DF14();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sub_21700E384();
  }

  *(v0 + 80) = MEMORY[0x277D839B0];
  *(v0 + 56) = 1;
  sub_2166EF9C4((v0 + 56), (v0 + 88));
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v94 = v5;
  sub_2166EF9D4();
  sub_216934F28();
  if (*(v0 + 176))
  {
    sub_2166EF9C4((v0 + 152), (v0 + 120));
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = sub_2166E2BA8(v6);
    if (v8)
    {
      v9 = MEMORY[0x277D837D0];
    }

    else
    {
      v7 = 0;
      v9 = 0;
      *(v0 + 136) = 0;
    }

    *(v0 + 120) = v7;
    *(v0 + 128) = v8;
    *(v0 + 144) = v9;
    if (*(v0 + 176))
    {
      sub_216697664(v0 + 152, &unk_27CABF7A0);
    }
  }

  if (*(v0 + 144))
  {
    sub_2166EF9C4((v0 + 120), (v0 + 568));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
  }

  else
  {
    sub_216697664(v0 + 120, &unk_27CABF7A0);
    v10 = sub_2166AF66C(7368801, 0xE300000000000000);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v94 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
      sub_21700F554();

      sub_2166EF9C4((*(v3 + 56) + 32 * v12), (v0 + 184));
      sub_21700F574();
    }

    else
    {
      *(v0 + 200) = 0u;
      *(v0 + 184) = 0u;
    }

    sub_216697664(v0 + 184, &unk_27CABF7A0);
  }

  sub_216934F28();
  v13 = MEMORY[0x277D837D0];
  if (*(v0 + 272))
  {
    sub_2166EF9C4((v0 + 248), (v0 + 216));
  }

  else
  {
    *(v0 + 240) = MEMORY[0x277D837D0];
    *(v0 + 216) = 0xD000000000000011;
    *(v0 + 224) = 0x8000000217082740;
  }

  sub_2166EF9C4((v0 + 216), (v0 + 280));
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_7_16();
  sub_2166EF9D4();
  v14 = v94;
  sub_216934F28();
  if (*(v0 + 368))
  {
    sub_2166EF9C4((v0 + 344), (v0 + 312));
  }

  else
  {
    sub_216685F4C(0, &qword_280E29BF0);
    v15 = sub_2166A6590();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 longLongValue];

      v18 = MEMORY[0x277D84A28];
    }

    else
    {
      v17 = 0;
      v18 = 0;
      *(v0 + 320) = 0;
      *(v0 + 328) = 0;
    }

    *(v0 + 312) = v17;
    *(v0 + 336) = v18;
    if (*(v0 + 368))
    {
      sub_216697664(v0 + 344, &unk_27CABF7A0);
    }
  }

  if (*(v0 + 336))
  {
    sub_2166EF9C4((v0 + 312), (v0 + 536));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
    v14 = v94;
  }

  else
  {
    sub_216697664(v0 + 312, &unk_27CABF7A0);
    v19 = sub_2166AF66C(1682535268, 0xE400000000000000);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v94 = v14;
      v14 = *(v14 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_9_21();
      sub_2166EF9C4((*(v14 + 56) + 32 * v21), (v0 + 376));
      sub_21700F574();
    }

    else
    {
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
    }

    sub_216697664(v0 + 376, &unk_27CABF7A0);
  }

  sub_216934F28();
  if (*(v0 + 464))
  {
    sub_2166EF9C4((v0 + 440), (v0 + 408));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
    sub_21700D4B4();
    v22 = *(v0 + 40);
    if (v22)
    {
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v24 = (*(v23 + 8))(v22, v23);
      *(v0 + 432) = v13;
      *(v0 + 408) = v24;
      *(v0 + 416) = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    }

    else
    {
      sub_216697664(v0 + 16, &qword_27CAB71A8);
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
    }

    if (*(v0 + 464))
    {
      sub_216697664(v0 + 440, &unk_27CABF7A0);
    }
  }

  if (*(v0 + 432))
  {
    sub_2166EF9C4((v0 + 408), (v0 + 504));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_16();
    sub_2166EF9D4();
  }

  else
  {
    sub_216697664(v0 + 408, &unk_27CABF7A0);
    v26 = sub_2166AF66C(0x746E6F4365676170, 0xEB00000000747865);
    if (v27)
    {
      v28 = v26;
      swift_isUniquelyReferenced_nonNull_native();
      v94 = v14;
      v29 = *(v14 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_9_21();
      sub_2166EF9C4((*(v29 + 56) + 32 * v28), (v0 + 472));
      sub_21700F574();
    }

    else
    {
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
    }

    sub_216697664(v0 + 472, &unk_27CABF7A0);
  }

  v30 = *(v0 + 776);
  v31 = sub_21700E344();
  v32 = sub_21700E344();
  if (!v30)
  {
    v66 = *(v0 + 728);
    v67 = *(v0 + 720);
    v68 = *(v0 + 704);
    v69 = *(v0 + 696);
    v82 = *(v0 + 688);
    v83 = *(v0 + 672);
    v86 = *(v0 + 656);
    v88 = v66;
    v70 = *(v0 + 648);
    v81 = *(v0 + 632);
    v91 = *(v0 + 624);

    v80 = sub_21700DF34();
    (*(v68 + 16))(v67, v66, v69);
    type metadata accessor for CommerceWebViewModel();
    swift_allocObject();
    v71 = v70;
    v93 = v32;
    v72 = v31;
    v73 = sub_216ECCFA8(v80, v67, v70, v32, v31);
    sub_2167EE6CC(v81, v82, type metadata accessor for OpenFinancePageAction);
    v74 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v86;
    sub_2167EE5DC(v82, v75 + v74);

    sub_216ECC0FC(sub_2167EE640, v75);

    (*(v68 + 8))(v88, v69);
    *v91 = v73;
    type metadata accessor for ModalActionModelDestinations.Destination();
LABEL_61:
    swift_storeEnumTagMultiPayload();
    goto LABEL_62;
  }

  if (v30 == 1)
  {
    v40 = *(v0 + 728);
    v41 = *(v0 + 720);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 648);

    v45 = sub_21700DF34();
    v46 = v40;
    v47 = *(v42 + 16);
    v47(v41, v46, v43);
    type metadata accessor for CommerceWebViewModel();
    swift_allocObject();
    v48 = v44;
    v92 = v32;
    v90 = v31;
    v87 = sub_216ECCFA8(v45, v41, v44, v32, v31);
    if (qword_27CAB58E8 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 728);
    v50 = *(v0 + 712);
    v51 = *(v0 + 696);
    v52 = sub_217007CA4();
    __swift_project_value_buffer(v52, qword_27CAB8280);
    v47(v50, v49, v51);
    v53 = sub_217007C84();
    v54 = sub_21700ED84();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 728);
    v57 = *(v0 + 712);
    v58 = *(v0 + 704);
    v59 = *(v0 + 696);
    if (v55)
    {
      v60 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v94 = v84;
      *v60 = 136446210;
      sub_2167EE594(&qword_27CAB82A0, MEMORY[0x277CC9260]);
      v61 = sub_21700F784();
      v85 = v56;
      v63 = v62;
      v64 = *(v58 + 8);
      v64(v57, v59);
      v65 = sub_2166A85FC(v61, v63, &v94);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_216679000, v53, v54, "AMSParserURLType .webLegacy is not supported. URL: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x21CEA1440](v84, -1, -1);
      MEMORY[0x21CEA1440](v60, -1, -1);

      v64(v85, v59);
    }

    else
    {

      v78 = *(v58 + 8);
      v78(v57, v59);
      v78(v56, v59);
    }

    **(v0 + 624) = v87;
    type metadata accessor for ModalActionModelDestinations.Destination();
    goto LABEL_61;
  }

  if (v30 != 2)
  {
    v76 = *(v0 + 776);
    sub_21700F3B4();
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    MEMORY[0x21CE9F490](0xD000000000000012, 0x80000002170827A0);
    *(v0 + 616) = v76;
    type metadata accessor for AMSParserURLType(0);
    sub_21700F544();
    return sub_21700F584();
  }

  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 704);
  v36 = *(v0 + 696);
  v89 = *(v0 + 648);
  v37 = *(v0 + 624);

  v38 = sub_21700DF34();
  (*(v35 + 32))(v34, v33, v36);
  type metadata accessor for MarketingSheetModel();
  swift_allocObject();
  *v37 = sub_216977FD0(v38, v34, v89, v32, v31);
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  v39 = v89;
LABEL_62:

  OUTLINED_FUNCTION_3();

  return v79();
}

uint64_t sub_2167ED690()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[87];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2167ED744(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2167ED764, 0, 0);
}

uint64_t sub_2167ED764()
{
  OUTLINED_FUNCTION_93();
  v1 = [objc_allocWithZone(MEMORY[0x277CEE6C8]) initWithBag_];
  v2 = sub_217005E04();
  v3 = [v1 typeForURL_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2167ED8D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2166A7F20;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2167ED8D8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_2167EDA60;
  }

  else
  {
    v5 = sub_2167ED9E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2167ED9E0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 144);

  v2 = [v1 integerValue];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2167EDA60()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2167EDAC8(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for PresentSheetAction();
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = type metadata accessor for MusicAppDestination.SharePageDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0x6E6F69746361;
  v52 = 0xE600000000000000;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&v53);
  if (!v57)
  {
    goto LABEL_16;
  }

  v43 = a4;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v53 = 0u;
    v54 = 0u;
    a2(&v53, 0);
    sub_216697664(&v53, &unk_27CABF7A0);
    return 0;
  }

  v42 = v7;
  v44 = a2;
  if (v51 == 0x616853636973756DLL && v52 == 0xEF74656568536572)
  {

    a2 = v44;
  }

  else
  {
    v22 = sub_21700F7D4();

    a2 = v44;
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v51 = 0x736D61726170;
  v52 = 0xE600000000000000;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&v53);
  if (!v57)
  {
LABEL_16:
    v26 = &unk_27CABF7A0;
    v27 = &v56;
LABEL_17:
    sub_216697664(v27, v26);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_216935010();
  if (!*(&v54 + 1))
  {

LABEL_21:
    v26 = &qword_27CABF7B0;
    v27 = &v53;
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v23 = sub_217005F64();
  v25 = v24;

  if (v25 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_216935010();
  a2 = v44;
  if (!*(&v54 + 1))
  {

    sub_21677A510(v23, v25);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21677A510(v23, v25);
    goto LABEL_18;
  }

  v41 = v23;
  v30 = sub_21700F5E4();

  if (v30)
  {
    if (v30 != 1)
    {
      sub_21677A510(v41, v25);
LABEL_15:

      a2 = v44;
      goto LABEL_18;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v18 + 24);
  v33 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v20[v32], 1, 1, v33);
  *v20 = v41;
  *(v20 + 1) = v25;
  v20[16] = v31;
  sub_216935010();

  if (*(&v54 + 1))
  {
    v34 = swift_dynamicCast();
    v35 = v42;
    if (v34)
    {
      sub_217005ED4();

      sub_2167EE784(v17, &v20[v32]);
    }
  }

  else
  {
    sub_216697664(&v53, &qword_27CABF7B0);
    v35 = v42;
  }

  type metadata accessor for ObjectGraph();
  v36 = v47;
  sub_21700E094();
  v37 = v48;
  sub_2167EE6CC(v20, &v48[*(v10 + 20)], type metadata accessor for MusicAppDestination.SharePageDescriptor);
  type metadata accessor for MusicAppDestination(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModalActionModelDestinations.Destination();
  v28 = 1;
  swift_storeEnumTagMultiPayload();
  v38 = sub_21700D284();
  (*(*(v38 - 8) + 16))(v37, v45, v38);
  *(&v54 + 1) = v10;
  v55 = sub_2167EE594(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  sub_2167EE6CC(v37, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  v40 = v49;
  (*(v49 + 104))(v9, *MEMORY[0x277D21E18], v35);
  sub_21700D5E4();

  (*(v40 + 8))(v9, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  v53 = 0u;
  v54 = 0u;
  v44(&v53, 0);
  sub_216697664(&v53, &unk_27CABF7A0);
  sub_2167EE72C(v37, type metadata accessor for PresentSheetAction);
  (*(v46 + 8))(v14, v36);
  sub_2167EE72C(v20, type metadata accessor for MusicAppDestination.SharePageDescriptor);
  return v28;
}

uint64_t sub_2167EE30C()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167EE3B8;

  return sub_2167EBC0C();
}

uint64_t sub_2167EE3B8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

unint64_t sub_2167EE4A0(uint64_t a1)
{
  result = sub_2166D9DAC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167EE514()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB8280);
  __swift_project_value_buffer(v0, qword_27CAB8280);
  return sub_217007C94();
}

uint64_t sub_2167EE594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2167EE5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenFinancePageAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167EE640(uint64_t a1, void (*a2)(__int128 *, void), uint64_t a3)
{
  v7 = *(type metadata accessor for OpenFinancePageAction(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_2167EDAC8(a1, a2, a3, v8, v9);
}

uint64_t sub_2167EE6CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167EE72C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167EE784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CuratorContextMenu()
{
  result = qword_280E3F0A8;
  if (!qword_280E3F0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167EE868()
{
  sub_2167B83B4();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_21700C554();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MenuConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2167EE91C()
{
  result = qword_280E45220[0];
  if (!qword_280E45220[0])
  {
    type metadata accessor for MenuBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E45220);
  }

  return result;
}

void sub_2167EE974()
{
  if (!qword_280E2B4C0)
  {
    sub_2170075A4();
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4C0);
    }
  }
}

uint64_t sub_2167EE9E8()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = var50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    v5 = type metadata accessor for CuratorContextMenu();
    v6 = *(v5 + 24);

    sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
    v15 = sub_216C64788(v0 + v6, v4, v0 + *(v5 + 28));

    (*(v2 + 8))(v4, v1);
    type metadata accessor for MenuBuilder();
    sub_216C647A0(v15);
  }

  else
  {
    type metadata accessor for MenuBuilder();
    sub_2167EE91C();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

unint64_t sub_2167EEB60()
{
  result = qword_27CAB82C0;
  if (!qword_27CAB82C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB82C8);
    sub_2167EEBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82C0);
  }

  return result;
}

unint64_t sub_2167EEBE4()
{
  result = qword_27CAB82D0;
  if (!qword_27CAB82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB82D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82D0);
  }

  return result;
}

uint64_t sub_2167EEC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v27 = sub_21700D2A4();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_2167EF578(a1, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21700EA34();
  swift_unknownObjectRetain();

  v18 = sub_21700EA24();
  v19 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v18;
  v20[3] = v21;
  v22 = v26;
  v20[4] = v25;
  v20[5] = v22;
  v20[6] = a3;
  sub_216782640(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_21677BBA0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v27);
  return sub_21700E1F4();
}

uint64_t sub_2167EEEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[9] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[10] = AssociatedConformanceWitness;
  v8[11] = *(AssociatedConformanceWitness + 8);
  v11 = swift_getAssociatedTypeWitness();
  v8[12] = v11;
  v8[13] = *(v11 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v12 = sub_21700F164();
  v8[16] = v12;
  v8[17] = *(v12 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = *(AssociatedTypeWitness - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  sub_21700EA34();
  v8[22] = sub_21700EA24();
  v14 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167EF120, v14, v13);
}

uint64_t sub_2167EF120()
{
  v30 = v0;
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];

  v29 = xmmword_217016EE0;
  (*(v3 + 16))(&v29, v2, v3);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
    v4 = v0[20];
    v5 = v0[19];
    v27 = v0[15];
    v28 = v0[14];
    v6 = v0[12];
    v7 = v0[13];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    (*(v5 + 32))();
    (*(v9 + 56))(v10, v9);
    sub_21700F3C4();
    v11 = *(v5 + 8);
    v11(v4, v8);
    sub_21700F3C4();
    swift_getAssociatedConformanceWitness();
    v12 = sub_21700E494();
    v13 = *(v7 + 8);
    v13(v28, v6);
    v13(v27, v6);
    if ((v12 & 1) != 0 && (*(v0[8] + 104))(v0[7]))
    {
      MusicStackAuthority.popToRoot()();
    }

    v11(v0[21], v0[9]);
  }

  v14 = v0[5];
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    sub_21700DF14();
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for DeepLinkInfoProvider();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v17 = v0[2];
  v18 = type metadata accessor for SearchAction();
  v19 = *(v14 + *(v18 + 24));
  if (*(v14 + *(v18 + 28)))
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v17 + 16);
  v22 = *(v17 + 24);
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = v20 | v19;
  sub_2167EF724(v21, v22);
  v23 = [objc_opt_self() defaultCenter];
  if (qword_280E29C70 != -1)
  {
    swift_once();
  }

  v24 = qword_280E739F0;
  v0[3] = v0[4];
  type metadata accessor for SearchActionImplementation();
  [v23 postNotificationName:v24 object:sub_21700F7B4()];
  swift_unknownObjectRelease();

  v25 = v0[1];

  return v25();
}

uint64_t sub_2167EF4E4()
{
  result = sub_21700E4D4();
  qword_280E739F0 = result;
  return result;
}

unint64_t sub_2167EF520()
{
  result = qword_280E44778[0];
  if (!qword_280E44778[0])
  {
    type metadata accessor for SearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44778);
  }

  return result;
}

uint64_t sub_2167EF578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167EF5DC(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for SearchAction() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2166DFAC0;

  return sub_2167EEEE4(a1, v9, v10, v11, v1 + v8, v12, v6, v5);
}

uint64_t sub_2167EF724(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2167EF738(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_actionDispatcher, v9, v4);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_21700D4B4();

  *(v2 + OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_userSocialProfileCoordinator) = v11[1];
  return v2;
}

uint64_t sub_2167EF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a2;
  v104 = a5;
  v103 = sub_2170075A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v8;
  v101 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ShareMusicItemAction();
  v95 = *(v94 - 8);
  v9 = MEMORY[0x28223BE20](v94);
  v98 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v93 = sub_21700CFB4();
  v13 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217005EF4();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21700D704();
  v90 = *(v91 - 8);
  v17 = MEMORY[0x28223BE20](v91);
  v87 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  v89 = sub_21700D284();
  v88 = *(v89 - 8);
  v27 = MEMORY[0x28223BE20](v89);
  v86 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a4;
  sub_21690696C(v27, v30, v31, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v84 = v37;
  v85 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v40 = (a3 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v41 = v40[1];
  v42 = MEMORY[0x277D837D0];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;
  *(inited + 72) = v42;
  *(inited + 80) = 1684957547;
  *(inited + 88) = 0xE400000000000000;
  sub_21700DF14();
  v97 = a1;
  *(inited + 96) = sub_21690764C();
  *(inited + 104) = v43;
  *(inited + 120) = v42;
  *(inited + 128) = 0x657461676976616ELL;
  *(inited + 168) = v42;
  *(inited + 136) = 0xEA00000000006F54;
  *(inited + 144) = 0x6568536572616853;
  *(inited + 152) = 0xEA00000000007465;
  v44 = sub_21700E384();
  v106 = v26;
  v107 = v15;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v15);
  v45 = v20;
  sub_21700D6F4();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v110 = v44;
  sub_2166EF9C4(&v110, v109);
  v46 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v46;
  sub_2166EF9D4();
  v47 = v108;
  v111 = v42;
  v48 = 0xE500000000000000;
  *&v110 = 0x6572616873;
  *(&v110 + 1) = 0xE500000000000000;
  sub_2166EF9C4(&v110, v109);
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v47;
  sub_2166EF9D4();
  v49 = v108;
  v50 = 0x79726F7473;
  switch(v29)
  {
    case 1:
      break;
    case 2:
      v48 = 0xE400000000000000;
      v50 = 1701998445;
      break;
    case 3:
      v50 = 0x636972796CLL;
      break;
    case 4:
      v50 = 0xD000000000000010;
      v48 = 0x80000002170801D0;
      break;
    case 5:
      v48 = 0x80000002170801F0;
      v50 = 0xD000000000000012;
      break;
    case 6:
      v48 = 0xE900000000000075;
      v50 = 0x6E654D6570697773;
      break;
    case 7:
      v48 = 0x8000000217080210;
      v50 = 0xD000000000000015;
      break;
    default:
      v48 = 0xE800000000000000;
      v50 = 0x6472616F6279656BLL;
      break;
  }

  v111 = v42;
  *&v110 = v50;
  *(&v110 + 1) = v48;
  sub_2166EF9C4(&v110, v109);
  swift_isUniquelyReferenced_nonNull_native();
  v108 = v49;
  sub_2166EF9D4();
  v51 = v108;
  sub_2167DE934(v106, v24);
  v52 = v107;
  if (__swift_getEnumTagSinglePayload(v24, 1, v107) == 1)
  {
    sub_216697664(v24, &qword_27CABA820);
  }

  else
  {
    v53 = v83;
    v54 = v82;
    (*(v83 + 32))(v82, v24, v52);
    v55 = sub_217005DE4();
    v111 = v42;
    *&v110 = v55;
    *(&v110 + 1) = v56;
    sub_2166EF9C4(&v110, v109);
    swift_isUniquelyReferenced_nonNull_native();
    v108 = v51;
    sub_2166EF9D4();
    v51 = v108;
    (*(v53 + 8))(v54, v52);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v57 = sub_21700CF84();
  v58 = __swift_project_value_buffer(v57, qword_280E73DB0);
  v59 = v92;
  MEMORY[0x21CE9DD70](v84, v85, 0x6E6F74747562, 0xE600000000000000, v51, v58);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v60 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_217013DA0;
  v62 = v61 + v60;
  v63 = v93;
  (*(v13 + 16))(v62, v59, v93);
  v64 = v90;
  v65 = v91;
  (*(v90 + 16))(v87, v45, v91);
  v66 = v86;
  sub_21700D244();
  (*(v13 + 8))(v59, v63);
  (*(v64 + 8))(v45, v65);
  sub_216697664(v106, &qword_27CABA820);
  v67 = v94;
  v68 = *(v94 + 20);
  v69 = v97;
  sub_2167F1404(v97, &v12[v68], type metadata accessor for ShareableMusicItem);
  v70 = type metadata accessor for ShareableMusicItem(0);
  __swift_storeEnumTagSinglePayload(&v12[v68], 0, 1, v70);
  __swift_storeEnumTagSinglePayload(&v12[*(v67 + 24)], 1, 1, v107);
  (*(v88 + 32))(v12, v66, v89);
  v71 = v104;
  sub_2167F1404(v69, v104, type metadata accessor for ShareableMusicItem);
  type metadata accessor for MenuActionType();
  swift_storeEnumTagMultiPayload();
  v72 = v98;
  sub_2167F1464(v12, v98, type metadata accessor for ShareMusicItemAction);
  v73 = v102;
  v74 = v101;
  v75 = v103;
  (*(v102 + 16))(v101, v100, v103);
  v76 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v77 = (v96 + *(v73 + 80) + v76) & ~*(v73 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = v105;
  sub_2167F1464(v72, v78 + v76, type metadata accessor for ShareMusicItemAction);
  (*(v73 + 32))(v78 + v77, v74, v75);
  v79 = type metadata accessor for MenuAction();
  v80 = (v71 + *(v79 + 20));
  *v80 = sub_2167F12E0;
  v80[1] = v78;
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v79);
}

uint64_t sub_2167F0500(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_7_17();
  a4(v15);
  OUTLINED_FUNCTION_34();
  (*(v16 + 16))(v12, v7);
  swift_storeEnumTagMultiPayload();
  v22 = 4;
  sub_2167EF884(v12, v5, v4, &v22, v6);
  OUTLINED_FUNCTION_1_21();
  sub_2167F14C4(v12, v17);
  v18 = sub_21678C1C4();
  sub_216697664(v6, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v18;
  v20 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v20;
}

uint64_t sub_2167F06BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShareableMusicItem(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v26[-v13];
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_7_17();
  v17 = *(type metadata accessor for MenuConfiguration(v16) + 20);
  swift_storeEnumTagMultiPayload();
  v18 = sub_216B88F54(a3 + v17, v3);
  sub_2167F14C4(v3, type metadata accessor for MenuContext);
  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 7;
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v20 + 16))(v10, a1);
  swift_storeEnumTagMultiPayload();
  v27 = v19;
  sub_2167EF884(v10, a2, a3, &v27, v14);
  OUTLINED_FUNCTION_1_21();
  sub_2167F14C4(v10, v21);
  v22 = sub_21678C1C4();
  sub_216697664(v14, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v22;
  v24 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v24;
}

uint64_t sub_2167F0944()
{
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for MenuAction();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v16 = OUTLINED_FUNCTION_7_17();
  if (*(v3 + *(type metadata accessor for SocialProfileDescriptor(v16) + 36)) == 1)
  {
    sub_2167F1404(v3, v7, type metadata accessor for SocialProfileDescriptor);
    swift_storeEnumTagMultiPayload();
    v22 = 4;
    sub_2167EF884(v7, v1, v0, &v22, v11);
    OUTLINED_FUNCTION_1_21();
    sub_2167F14C4(v7, v17);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_2167F1464(v11, v2, type metadata accessor for MenuAction);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38);
      v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_217013DA0;
      sub_2167F1464(v2, v18 + v19, type metadata accessor for MenuAction);
      return v18;
    }

    sub_216697664(v11, &qword_27CAB6DF0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2167F0C84(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for ShareMusicItemAction();
  v5[4] = sub_2167F13AC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2167F1404(a2, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_2167F0D44()
{

  v1 = OBJC_IVAR____TtC7MusicUI23ShareMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2167F0DC0()
{
  sub_2167F0D44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ShareMenuActionProvider()
{
  result = qword_280E375B8;
  if (!qword_280E375B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167F0E6C()
{
  sub_216692BBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2167F12E0()
{
  v1 = *(type metadata accessor for ShareMusicItemAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v3);
  v4 = *(v0 + 16);

  return sub_2167F0C84(v4, v0 + v2);
}

unint64_t sub_2167F13AC()
{
  result = qword_27CAB82E0;
  if (!qword_27CAB82E0)
  {
    type metadata accessor for ShareMusicItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82E0);
  }

  return result;
}

uint64_t sub_2167F1404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167F1464(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2167F14C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167F1588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2167F15F8(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_2167F15F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6 + 3, a1, v11);
  v6[2] = a2;
  v13 = sub_2167F1750();
  v15 = v14;
  (*(v12 + 8))(a1, v11);
  v6[8] = v13;
  v6[9] = v15;
  v6[10] = a3;
  v6[11] = a4;
  v6[12] = a5;
  return v6;
}

uint64_t sub_2167F1750()
{
  v0 = sub_217006224();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  v9[0] = sub_2169426B4();
  v9[1] = v4;
  MEMORY[0x21CE9F490](45, 0xE100000000000000);
  sub_217006214();
  v5 = sub_2170061F4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x21CE9F490](v5, v7);

  return v9[0];
}

uint64_t sub_2167F1880(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  OUTLINED_FUNCTION_103_1();
  v3[19] = v4;
  v5 = sub_21700E574();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  OUTLINED_FUNCTION_103_1();
  v7 = *(v6 + 88);
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = sub_217007C24();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_21700EA34();
  v3[31] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v3[32] = v10;
  v3[33] = v9;

  return MEMORY[0x2822009F8](sub_2167F1AA4, v10, v9);
}

uint64_t sub_2167F1AA4()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v2[15];
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_50();
  (*(v5 + 16))(v0 + 9, v3 + 24);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  v8 = v2[14];
  sub_216E46A9C((v0 + 9), v6, v7, (v0 + 2));
  type metadata accessor for IntentNetworkResponseReceiver();
  sub_21700D4D4();
  sub_21700DF14();
  v9 = v8;
  sub_21700E094();
  v0[34] = v0[14];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v2[10];
  v11[3] = v1;
  v11[4] = v2[12];
  v11[5] = v2[13];
  v11[6] = v9;
  v11[7] = v4;
  v12 = v2[16];
  v0[35] = v12;
  v11[8] = v12;
  v11[9] = v2[17];
  v11[10] = v10;

  v0[36] = sub_216E46AB4(v6, v7, sub_2167F2B64, v11);

  if (qword_280E485C8 != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[26];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0);
  v18 = __swift_project_value_buffer(v17, qword_280E73E38);
  v0[37] = v18;
  v19 = *(v14 + 16);
  v0[38] = v19;
  v0[39] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v16);
  sub_216BD7948(v15, "Fetch.JSModel", 13, 2, v13);
  v20 = swift_task_alloc();
  v0[40] = v20;
  v0[41] = type metadata accessor for NetworkRequestingIntent();
  swift_getWitnessTable();
  *v20 = v0;
  v20[1] = sub_2167F1DA8;
  OUTLINED_FUNCTION_7_3();

  return sub_2168E4C70(v21, v22, v23, v24, v25);
}

uint64_t sub_2167F1DA8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_2167F2624;
  }

  else
  {
    v5 = sub_2167F1EE4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167F1EE4()
{
  sub_216BD4F2C();
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_2167F1F7C;

  return sub_216E46B40();
}

uint64_t sub_2167F1F7C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_2167F2700;
  }

  else
  {
    v5 = sub_2167F20B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167F20B8()
{
  (*(*(v0 + 280) + 8))(*(v0 + 184));
  if (v1)
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    (*(v0 + 304))(v3, *(v0 + 296), *(v0 + 208));
    sub_216BD7948(v3, "Map.ExtractMusicItems", 21, 2, v2);
    sub_21700E564();
    v7 = sub_21700E524();
    v9 = v8;

    (*(v5 + 8))(v4, v6);
    if (v9 >> 60 != 15)
    {
      v10 = *(v0 + 352);
      sub_217005894();
      swift_allocObject();
      sub_217005884();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A38);
      sub_2167F2C08();
      sub_217005874();
      if (v10)
      {
        v11 = *(v0 + 240);
        v12 = *(v0 + 232);
        v13 = *(v0 + 192);
        v14 = *(v0 + 200);
        v15 = *(v0 + 184);

        sub_21677A510(v7, v9);

        sub_2167F2BA0(v12);
        (*(v13 + 8))(v14, v15);
        sub_2167F2BA0(v11);
        v16 = *(v0 + 328);
        OUTLINED_FUNCTION_0_36();

        OUTLINED_FUNCTION_50();
        (*(v17 + 8))(v0 + 16, v16);

        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_120();

        __asm { BRAA            X1, X16 }
      }

      v20 = *(v0 + 120);
      sub_216BD4F2C();
      sub_21692F2E8(v20, 1);

      sub_21677A510(v7, v9);
    }

    v21 = *(v0 + 232);
    (*(*(v0 + 280) + 16))(0, 0, *(v0 + 184));
    sub_2167F2BA0(v21);
  }

  v22 = swift_task_alloc();
  *(v0 + 360) = v22;
  *v22 = v0;
  v22[1] = sub_2167F23E4;
  OUTLINED_FUNCTION_120();

  return sub_216930510();
}

uint64_t sub_2167F23E4()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_2167F2504, v3, v2);
}

void sub_2167F2504()
{
  v1 = v0[41];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[16];

  sub_2167F2BA0(v2);
  (*(v3 + 32))(v6, v4, v5);
  sub_216E47F84();

  OUTLINED_FUNCTION_50();
  (*(v7 + 8))(v0 + 2, v1);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2167F2624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = *(v12 + 240);

  sub_2167F2BA0(v13);
  v14 = *(v12 + 328);
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_50();
  (*(v15 + 8))(v12 + 16, v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_2167F2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  v13 = v12[30];
  v15 = v12[24];
  v14 = v12[25];
  v16 = v12[23];

  (*(v15 + 8))(v14, v16);
  sub_2167F2BA0(v13);
  v17 = v12[41];
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_50();
  (*(v18 + 8))(v12 + 2, v17);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_2167F2800(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v3 = [a1 data];
    v4 = sub_217005FB4();
    v6 = v5;

    sub_21692F720(v4, v6, 0);
    sub_21677A524(v4, v6);
  }

  return result;
}

unint64_t sub_2167F28F8()
{
  sub_21700F3B4();

  type metadata accessor for AnyProtoRequestConvertibleIntent();
  v0 = sub_2169426B4();
  MEMORY[0x21CE9F490](v0);

  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2167F29C8()
{

  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_50();
  (*(v1 + 8))(v0 + 24);

  return v0;
}

uint64_t sub_2167F2A60()
{
  sub_2167F29C8();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2167F2AE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167F2B28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167F2BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2167F2C08()
{
  result = qword_27CAB82F8;
  if (!qword_27CAB82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38);
    sub_2167F2C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB82F8);
  }

  return result;
}

unint64_t sub_2167F2C8C()
{
  result = qword_27CAB8300;
  if (!qword_27CAB8300)
  {
    sub_2170067A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8300);
  }

  return result;
}

void sub_2167F2CE4()
{
  sub_2166D5480();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_2167F2D8C()
{
  result = sub_21700E4D4();
  qword_280E73B78 = result;
  return result;
}

uint64_t sub_2167F2DC4()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167F2E24(char a1)
{
  if (a1)
  {
    return 0x6C61626F6C67;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_2167F2E74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167F2DC4();
  *a1 = result;
  return result;
}

uint64_t sub_2167F2EA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167F2E24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_2167F2F64(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_1();
  v14 = *(v13 + 272);
  v15 = sub_21700D704();
  __swift_storeEnumTagSinglePayload(v6 + v14, 1, 1, v15);
  if (a4)
  {
    v16 = [objc_opt_self() defaultCenter];

    OUTLINED_FUNCTION_0_1();
    *(v6 + *(v17 + 288)) = v16;
  }

  else
  {
    sub_2167F3BFC();
    type metadata accessor for ObjectGraph();
    sub_21700E094();

    OUTLINED_FUNCTION_0_1();
    *(v6 + *(v18 + 288)) = v19;
  }

  OUTLINED_FUNCTION_0_1();
  v21 = (v6 + *(v20 + 280));
  *v21 = a5;
  v21[1] = a6;
  return sub_216B12724(a1, a2, a3 & 1);
}

id sub_2167F30AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v2 + *(v4 + 288));
  if (qword_280E30328 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  v6 = qword_280E73B78;

  return [v5 addObserver:v2 selector:sel_onEventFired_ name:v6 object:0];
}

id sub_2167F3158()
{
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 288));
  if (qword_280E30328 != -1)
  {
    OUTLINED_FUNCTION_1_22();
  }

  v3 = qword_280E73B78;

  return [v2 removeObserver:v0 name:v3 object:0];
}

uint64_t sub_2167F31D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for InvalidationActionIntent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  v12 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  (*(*(v12 - 8) + 16))(v18, a1, v12);
  OUTLINED_FUNCTION_0_1();
  v14 = *(v13 + 272);
  swift_beginAccess();
  sub_2167F3B8C(v2 + v14, v7);
  sub_216C85FCC(v18, v7, v11);
  WitnessTable = swift_getWitnessTable();
  sub_2169424F0(v8, WitnessTable, a2);
  return (*(v9 + 8))(v11, v8);
}

void sub_2167F33D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_21700D704();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_217005964())
  {
    v23 = 0u;
    v24 = 0u;
    goto LABEL_11;
  }

  v20 = 1684957547;
  v21 = 0xE400000000000000;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v22);
  if (!*(&v24 + 1))
  {
LABEL_11:
    sub_21669987C(&v23, &unk_27CABF7A0);
    return;
  }

  if (swift_dynamicCast())
  {
    v12 = (v0 + *(*v0 + 280));
    if (v22[0] == *v12 && v22[1] == v12[1])
    {

      goto LABEL_14;
    }

    v14 = sub_21700F7D4();

    if (v14)
    {
LABEL_14:
      if (sub_217005964())
      {
        v20 = 0x617461646174656DLL;
        v21 = 0xE800000000000000;
        sub_21700F364();
        sub_216934FBC();

        sub_216788110(v22);
        if (*(&v24 + 1))
        {
          v15 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v7, v15 ^ 1u, 1, v8);
          if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
          {
            v16 = *(v9 + 32);
            v16(v11, v7, v8);
            v16(v5, v11, v8);
            __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
            v17 = *(*v0 + 272);
            swift_beginAccess();
            sub_2167F3C40(v5, v1 + v17);
            v18 = swift_endAccess();
LABEL_21:
            sub_216B12888(v18);
            return;
          }

LABEL_20:
          v18 = sub_21669987C(v7, qword_27CAB8320);
          goto LABEL_21;
        }
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      sub_21669987C(&v23, &unk_27CABF7A0);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      goto LABEL_20;
    }
  }
}

uint64_t sub_2167F378C()
{
  v0 = sub_217005974();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005934();

  sub_2167F33D0();

  return (*(v1 + 8))(v3, v0);
}

void sub_2167F3878()
{
  OUTLINED_FUNCTION_0_1();
  sub_21669987C(v0 + *(v1 + 272), qword_27CAB8320);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v3 = *(v0 + *(v2 + 288));
}

char *sub_2167F38F4()
{
  v0 = sub_216B127F4();
  sub_21669987C(&v0[*(*v0 + 272)], qword_27CAB8320);

  return v0;
}

uint64_t sub_2167F3984()
{
  v0 = sub_2167F38F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for InvalidationActionObserverScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2167F3AD0()
{
  result = qword_27CAB8308;
  if (!qword_27CAB8308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAB8310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8308);
  }

  return result;
}

unint64_t sub_2167F3B38()
{
  result = qword_27CAB8318;
  if (!qword_27CAB8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8318);
  }

  return result;
}

uint64_t sub_2167F3B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2167F3BFC()
{
  result = qword_280E29BD8;
  if (!qword_280E29BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29BD8);
  }

  return result;
}

uint64_t sub_2167F3C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167F3CD4(uint64_t a1)
{
  v2 = type metadata accessor for MusicAppDestinationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167F3D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(char *, char *, uint64_t, uint64_t))
{
  v22 = a3;
  v23 = a7;
  v20[1] = a6;
  v21 = a2;
  v8 = type metadata accessor for MusicAppDestinationContext(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresentationItem.Destination();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v15, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v17 = *(v9 + 28);
  v18 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v11[v17], 1, 1, v18);
  v23(v15, v11, v21, v22);
  sub_2167F3CD4(v11);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2167F3F68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_2167F404C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2167F408C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2167F4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = v43;
    v26 = v44;
    *v43 = v20;
    v25[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v27 = v42;
    sub_21700D224();
    v28 = OUTLINED_FUNCTION_1_23();
    v29(v28);
    v41(v26, v13);
    if (v27)
    {
    }

    else
    {
      v37 = type metadata accessor for RemoveFollowerAction();
      return (*(v39 + 32))(v43 + *(v37 + 20), v12, v40);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for RemoveFollowerAction();
    *v33 = 0x72506C6169636F73;
    v33[1] = 0xEF4449656C69666FLL;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_23();
    v36(v35);
    return (v24)(v44, v13);
  }
}

uint64_t sub_2167F4554(uint64_t a1)
{
  sub_2167CC348(v1, v15);
  v3 = *(a1 + 16);
  v16 = *(v1 + 56);
  v4 = objc_opt_self();

  v5 = [v4 systemGroupedBackgroundColor];
  sub_21700AC44();
  type metadata accessor for SongDetailContentView();
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  sub_217009C84();
  sub_21700A2E4();

  OUTLINED_FUNCTION_50();
  (*(v6 + 8))(v15, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE8);
  v7 = sub_2170089F4();
  OUTLINED_FUNCTION_4_21();
  sub_21669E098(v8, v9);
  OUTLINED_FUNCTION_0_9();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v14, v7, WitnessTable);
  OUTLINED_FUNCTION_50();
  v12 = *(v11 + 8);
  v12(v14, v7);
  sub_2166C24DC(v15, v7, WitnessTable);
  return (v12)(v15, v7);
}

uint64_t sub_2167F4748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for SongDetailHeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84A8);
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  v4 = sub_217008044();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  sub_217009C64();
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_2167F453C();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v8, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_2166C24DC(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_2167F494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v78 = a2;
  v80 = a1;
  v109 = a4;
  v107 = sub_2170096D4();
  v108 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B8);
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v88 = &v77 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84C0);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v77 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84C8);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v92 = &v77 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D0);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v94 = &v77 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84A8);
  v101 = *(v103 - 8);
  v10 = MEMORY[0x28223BE20](v103);
  v99 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = (&v77 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v77 - v18;
  v20 = type metadata accessor for SongDetailList();
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  v27 = sub_21700C084();
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SongDetailHeaderView();
  v110 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v83 = &v77 - v34;
  sub_216CCAD38();
  sub_216DE8BA8();
  sub_216683A80(&v26[*(v21 + 32)], v19, &qword_27CAB84E0);
  sub_2167FE1C0(v26, type metadata accessor for SongDetailList);
  sub_216DE8BA8();
  v35 = &v24[*(v21 + 40)];
  v36 = v85;
  sub_216683A80(v35, v85, &qword_27CAB6A00);
  sub_2167FE1C0(v24, type metadata accessor for SongDetailList);
  v37 = v86;
  v38 = v78;
  v39 = v79;
  sub_2167F56B8(v86);
  v82 = v33;
  sub_2167F5718(v37, v29, v19, v36, v33);
  v81 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v33, v30, WitnessTable);
  v40 = *(v110 + 8);
  v85 = v110 + 8;
  v86 = v40;
  (v40)(v33, v30);
  v111 = v38;
  v112 = v39;
  v113 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E8);
  sub_21669E098(&qword_27CAB84F0, &qword_27CAB84E8);
  v41 = v87;
  sub_217009ED4();
  sub_21700B314();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84F8);
  v43 = sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0);
  v44 = sub_2167FC538();
  v45 = MEMORY[0x277CE1340];
  v46 = MEMORY[0x277CE1350];
  v47 = v88;
  v48 = v89;
  sub_21700AB34();
  v49 = v48;
  (*(v90 + 8))(v41, v48);
  sub_21700B314();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8540);
  v119 = v49;
  v120 = v46;
  v121 = v42;
  v122 = v42;
  v123 = v43;
  v124 = v45;
  v125 = v44;
  v126 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v93;
  v119 = v93;
  v120 = OpaqueTypeConformance2;
  v76 = swift_getOpaqueTypeConformance2();
  v53 = v91;
  sub_21700AB34();
  (*(v96 + 8))(v47, v52);
  v119 = v52;
  v120 = v46;
  v121 = v50;
  v122 = v50;
  v123 = OpaqueTypeConformance2;
  v124 = v45;
  v125 = v76;
  v126 = v76;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v92;
  v56 = v97;
  sub_21700A874();
  (*(v98 + 8))(v53, v56);
  v57 = v106;
  sub_2170096C4();
  v119 = v56;
  v120 = v54;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277CDE0D0];
  v60 = v94;
  v61 = v100;
  v62 = v107;
  sub_21700ABC4();
  (*(v108 + 8))(v57, v62);
  (*(v102 + 8))(v55, v61);
  v119 = v61;
  v120 = v62;
  v121 = v58;
  v122 = v59;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v95;
  v65 = v104;
  sub_21700A794();
  v66 = v65;
  (*(v105 + 8))(v60, v65);
  v67 = v82;
  v68 = v83;
  v69 = v81;
  (*(v110 + 16))(v82, v83, v81);
  v119 = v67;
  v70 = v101;
  v71 = v99;
  v72 = v103;
  (*(v101 + 16))(v99, v64, v103);
  v120 = v71;
  v118[0] = v69;
  v118[1] = v72;
  v115 = v63;
  v116 = WitnessTable;
  v114 = v66;
  v117 = swift_getOpaqueTypeConformance2();
  sub_216984F84(&v119, 2, v118);
  v73 = *(v70 + 8);
  v73(v64, v72);
  v74 = v86;
  (v86)(v68, v69);
  v73(v71, v72);
  return (v74)(v67, v69);
}

uint64_t sub_2167F56B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2167F5718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2167C5834(a1, a5, &qword_27CAB84D8);
  v9 = type metadata accessor for SongDetailHeaderView();
  v10 = (a5 + v9[9]);
  type metadata accessor for CatalogPagePresenter();
  swift_getWitnessTable();
  *v10 = sub_217008CF4();
  v10[1] = v11;
  v12 = a5 + v9[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v9[11];
  v14 = sub_21700C084();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  sub_2167C5834(a3, a5 + v9[12], &qword_27CAB84E0);
  return sub_2167C5834(a4, a5 + v9[13], &qword_27CAB6A00);
}

uint64_t sub_2167F5874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8550);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  sub_216CCAD38();
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8558) + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v16[0] = sub_21700ACD4();
  v12 = sub_21700B0B4();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8560) + 36)] = v12;
  v10[*(v5 + 44)] = 0;
  sub_2167CC348(a1, v16);
  v16[7] = *(a1 + 56);
  sub_216683A80(v10, v8, &qword_27CAB8550);
  sub_2167FC7C8(v16, v15);
  sub_216683A80(v8, a2, &qword_27CAB8550);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8568);
  sub_2167FC7C8(v15, a2 + *(v13 + 48));

  sub_2167FC800(v16);
  sub_2167FDB84(v10, &qword_27CAB8550);
  sub_2167FC800(v15);
  return sub_2167FDB84(v8, &qword_27CAB8550);
}

uint64_t sub_2167F5A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170091E4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8518);
  v9 = *(v5 + 16);
  v9(a2 + *(v8 + 36), v7, v4);
  OUTLINED_FUNCTION_14_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B0);
  OUTLINED_FUNCTION_34();
  (*(v10 + 16))(a2, a1);
  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84F8) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8538);
  v9(v12 + *(v13 + 28), v7, v4);
  OUTLINED_FUNCTION_14_12();
  *v12 = KeyPath;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2167F5C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84F8);
  sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0);
  sub_2167FC538();
  swift_getOpaqueTypeConformance2();
  return sub_21700A3F4();
}

uint64_t sub_2167F5D68()
{
  v6 = *(v0 + 48);
  sub_2167FC7C8(v0, v5);
  v1 = swift_allocObject();
  v2 = v5[1];
  v1[1] = v5[0];
  v1[2] = v2;
  v3 = v5[3];
  v1[3] = v5[2];
  v1[4] = v3;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8808);
  sub_21669E098(&qword_27CAB8810, &qword_27CAB8800);
  sub_2167FD49C();
  sub_2167FDB28();
  return sub_21700B164();
}

uint64_t sub_2167F5E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88A0);
  MEMORY[0x28223BE20](v4);
  v12 = a1;
  v13 = a2;
  sub_2167F6080(a1, &v11[-v5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8888);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828);
  v8 = sub_2167FD5B4();
  v9 = sub_2167FD990();
  v14 = v6;
  v15 = MEMORY[0x277CE1350];
  v16 = v7;
  v17 = v7;
  v18 = v8;
  v19 = MEMORY[0x277CE1340];
  v20 = v9;
  v21 = v9;
  swift_getOpaqueTypeConformance2();
  sub_2167FDA1C();
  return sub_21700B194();
}

uint64_t sub_2167F6018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2167FDBD4(a1, a3 + 16);
  v5 = *(a2 + 56);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 104) = v5;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
}

uint64_t sub_2167F6080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88A8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8820);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - v8;
  if (*(a1 + 64))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v27 = v10;
  v28 = v11;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  sub_21700DF14();
  sub_21700B314();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8850);
  v14 = sub_2167C4D74();
  v15 = sub_2167FD7A0();
  v16 = MEMORY[0x277CE1350];
  sub_21700AB34();

  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8840);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848);
  v27 = v12;
  v28 = v16;
  v29 = v13;
  v30 = v13;
  v31 = v14;
  v32 = MEMORY[0x277CE1340];
  v33 = v15;
  v34 = v15;
  swift_getOpaqueTypeConformance2();
  v18 = sub_2167FD858();
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_21700AB34();
  (*(v23 + 8))(v4, v19);
  LODWORD(v19) = sub_217009834();
  (*(v21 + 32))(v9, v7, v22);
  *&v9[*(v24 + 36)] = v19;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8828);
  sub_2167FD5B4();
  sub_2167FD990();
  sub_21700AB34();
  return sub_2167FDB84(v9, &qword_27CAB8820);
}

uint64_t sub_2167F64EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = xmmword_217019E00;
  *(a2 + 64) = 0;
  return sub_2167770D0(v3, v2, v4, v5);
}

uint64_t sub_2167F6520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  return sub_2167770D0(v3, v2, v4, v5);
}

uint64_t sub_2167F654C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838);
  (*(*(v7 - 8) + 16))(v4, a1, v7);
  v8 = &v4[*(v2 + 36)];
  *v8 = KeyPath;
  v8[1] = v5;
  sub_217009DE4();
  sub_2167FD858();
  sub_21700A304();
  return sub_2167FDB84(v4, &qword_27CAB8848);
}

uint64_t sub_2167F668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009E94();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8838);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8848);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_2167F6748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217009CB4();
  sub_217007F24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_8();
  sub_216683A80(v11, v12, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8828);
  v15 = a1 + *(result + 36);
  *v15 = v2;
  *(v15 + 8) = v4;
  *(v15 + 16) = v6;
  *(v15 + 24) = v8;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_2167F67EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_216683A80(v2, &v13 - v9, &qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167C5834(v10, a1, &qword_27CAB8600);
  }

  sub_21700ED94();
  v12 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2167F69D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8608);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_2167F6CB4(v30 - v7);
  v11 = sub_217009C94();
  sub_217007F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8610) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_217009CA4();
  sub_217007F24();
  v22 = &v8[*(v6 + 36)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v30[0] = *(a1 + 44);
  (*(v4 + 16))(v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v10;
  *(v28 + 24) = v9;
  (*(v4 + 32))(v28 + v27, v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21700C084();
  sub_2167FCC68(&qword_27CAB8618, &qword_27CAB8608, &unk_21701A200, sub_2167FCC38);
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238]);
  sub_21700AB04();

  return sub_2167FDB84(v8, &qword_27CAB8608);
}

uint64_t sub_2167F6CB4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8698);
  MEMORY[0x28223BE20](v1);
  v3 = v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86B8);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8650);
  MEMORY[0x28223BE20](v7);
  v29 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = type metadata accessor for SongDetailHeaderView();
  sub_2167F67EC(v14);
  v16 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v28[1] = v7;
  sub_216683A80(v14, v12, &qword_27CAB8600);
  v17 = *(v16 - 8);
  if ((*(v17 + 88))(v12, v16) != *MEMORY[0x277CE0558])
  {
    (*(v17 + 8))(v12, v16);
LABEL_5:
    sub_2167F71BC(v15, v3);
    v21 = sub_217009CB4();
    sub_217007F24();
    v22 = &v3[*(v1 + 36)];
    *v22 = v21;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    *(v22 + 4) = v26;
    v22[40] = 0;
    v19 = &qword_27CAB8698;
    sub_216683A80(v3, v6, &qword_27CAB8698);
    swift_storeEnumTagMultiPayload();
    sub_2167FCDE8();
    sub_2167FD010();
    sub_217009554();
    v20 = v3;
    goto LABEL_6;
  }

  v18 = v29;
  sub_2167F7078(v29);
  v19 = &qword_27CAB8650;
  sub_216683A80(v18, v6, &qword_27CAB8650);
  swift_storeEnumTagMultiPayload();
  sub_2167FCDE8();
  sub_2167FD010();
  sub_217009554();
  v20 = v18;
LABEL_6:
  sub_2167FDB84(v20, v19);
  return sub_2167FDB84(v14, &qword_27CAB8600);
}

uint64_t sub_2167F7078@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86C0);
  sub_21669E098(&qword_27CAB86C8, &qword_27CAB86C0);
  *a1 = sub_216E69898();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D0);
  sub_2167F8460(v1, (a1 + *(v3 + 44)));
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8670) + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8660) + 36)) = 256;
  v6 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8650);
  v8 = a1 + *(result + 36);
  *v8 = v6;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_2167F71BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_217009194();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87B0);
  return sub_2167F76C0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_2167F721C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  sub_21700C084();
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238]);
  if ((sub_21700E494() & 1) == 0 || (type metadata accessor for SongDetailHeaderView(), type metadata accessor for CatalogPagePresenter(), swift_getWitnessTable(), sub_217008CB4(), sub_216A3FFDC(), , v6 = type metadata accessor for ToolbarConfiguration(0), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6), result = sub_2167FDB84(v5, &qword_27CAB7930), EnumTagSinglePayload == 1))
  {
    v9 = type metadata accessor for SongDetailHeaderView();
    type metadata accessor for CatalogPagePresenter();
    swift_getWitnessTable();
    sub_217008CB4();
    sub_2167F74A0(v9, v3);
    v10 = type metadata accessor for ToolbarConfiguration(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
    sub_216A3FFF0();
  }

  return result;
}

uint64_t sub_2167F74A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 44);
  v10 = sub_21700C084();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  (*(v6 + 104))(v8, *MEMORY[0x277D2A3F8], v5);
  sub_216683A80(v2 + *(a1 + 52), a2, &qword_27CAB6A00);
  v11 = type metadata accessor for GenericMusicItemToolbarContent(0);
  (*(v6 + 16))(a2 + *(v11 + 20), v8, v5);
  type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_2167FA01C(a1);
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = (a2 + *(type metadata accessor for GenericMusicItemToolbarContentProvider(0) + 20));
  v16 = *(type metadata accessor for ToolbarProperties(0) + 24);
  v17 = *MEMORY[0x277CDDDC0];
  v18 = sub_217009124();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = v12;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

uint64_t sub_2167F76C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40[1] = a2;
  v40[2] = a3;
  v43 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87B8);
  MEMORY[0x28223BE20](v41);
  v6 = v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87C0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v42 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  v20 = type metadata accessor for SongDetailHeaderView();
  v21 = a1;
  sub_216683A80(a1 + *(v20 + 48), v19, &qword_27CAB84E0);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for HeaderArtworkView(0);
  *&v19[v23[5]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  *&v19[v23[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v24 = &v19[v23[7]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  LOBYTE(KeyPath) = sub_217009CD4();
  sub_217007F24();
  v25 = &v19[*(v14 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  *v6 = sub_2170093C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87C8);
  sub_2167F7B38(v21, &v6[*(v30 + 44)]);
  sub_217009D94();
  sub_21669E098(&qword_27CAB87D0, &qword_27CAB87B8);
  sub_21700A304();
  sub_2167FDB84(v6, &qword_27CAB87B8);
  v31 = swift_getKeyPath();
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87D8) + 36)];
  *v32 = v31;
  *(v32 + 1) = 0;
  v32[16] = 1;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87E0) + 36)] = 256;
  v33 = swift_getKeyPath();
  v34 = &v12[*(v8 + 44)];
  *v34 = v33;
  v34[8] = 0;
  sub_216683A80(v19, v17, &qword_27CAB86F0);
  v35 = v42;
  sub_216683A80(v12, v42, &qword_27CAB87C0);
  v36 = v43;
  sub_216683A80(v17, v43, &qword_27CAB86F0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87E8);
  sub_216683A80(v35, v36 + *(v37 + 48), &qword_27CAB87C0);
  v38 = v36 + *(v37 + 64);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_2167FDB84(v12, &qword_27CAB87C0);
  sub_2167FDB84(v19, &qword_27CAB86F0);
  sub_2167FDB84(v35, &qword_27CAB87C0);
  return sub_2167FDB84(v17, &qword_27CAB86F0);
}

uint64_t sub_2167F7B38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v52 = type metadata accessor for SongDetailHeaderView();
  v13 = *(v52 + 48);
  sub_216683A80(a1 + v13, v12, &qword_27CAB84E0);
  v14 = type metadata accessor for SongDetailListHeaderLockup();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_2167FDB84(v12, &qword_27CAB84E0);
  }

  else
  {
    v15 = &v12[*(v14 + 24)];
    v16 = *v15;
    v17 = *(v15 + 1);
    sub_21700DF14();
    sub_2167FE1C0(v12, type metadata accessor for SongDetailListHeaderLockup);
    v62 = v17;
    if (v17)
    {
      v58 = v16;
      goto LABEL_6;
    }
  }

  v58 = 0;
  v62 = 0xE000000000000000;
LABEL_6:
  v56 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  v59 = sub_217009814();
  v57 = sub_217009CA4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v86 = 0;
  sub_216683A80(a1 + v13, v10, &qword_27CAB84E0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_2167FDB84(v10, &qword_27CAB84E0);
LABEL_10:

    v28 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_11;
  }

  v26 = &v10[*(v14 + 28)];
  v28 = *v26;
  v27 = *(v26 + 1);
  sub_21700DF14();
  sub_2167FE1C0(v10, type metadata accessor for SongDetailListHeaderLockup);
  if (!v27)
  {
    goto LABEL_10;
  }

  v29 = v27;
LABEL_11:
  v55 = sub_217009E94();
  v30 = swift_getKeyPath();
  v51 = v30;
  v49 = sub_217009834();
  v31 = sub_217009CA4();
  v32 = v31;
  v50 = v31;
  sub_217007F24();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v84 = 0;
  v41 = v61;
  sub_2167F80C0(v52, v61);
  v42 = v54;
  sub_216683A80(v41, v54, &qword_27CAB86D8);
  v64[0] = v58;
  v64[1] = v62;
  v64[2] = 0;
  v64[3] = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v64[4] = KeyPath;
  v64[5] = v56;
  LODWORD(v64[6]) = v59;
  LOBYTE(v64[7]) = v57;
  *(&v64[7] + 1) = *v85;
  HIDWORD(v64[7]) = *&v85[3];
  v64[8] = v19;
  v64[9] = v21;
  v64[10] = v23;
  v64[11] = v25;
  LOBYTE(v64[12]) = 0;
  v44 = v53;
  memcpy(v53, v64, 0x61uLL);
  v65[0] = v28;
  v65[1] = v29;
  v65[2] = 0;
  v65[3] = v43;
  v65[4] = v30;
  v65[5] = v55;
  LODWORD(v43) = v49;
  LODWORD(v65[6]) = v49;
  LOBYTE(v65[7]) = v32;
  *(&v65[7] + 1) = *v63;
  HIDWORD(v65[7]) = *&v63[3];
  v65[8] = v34;
  v65[9] = v36;
  v65[10] = v38;
  v65[11] = v40;
  LOBYTE(v65[12]) = 0;
  memcpy(v44 + 104, v65, 0x61uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB87F0);
  sub_216683A80(v42, &v44[*(v45 + 64)], &qword_27CAB86D8);
  sub_216683A80(v64, v75, &qword_27CAB87F8);
  sub_216683A80(v65, v75, &qword_27CAB87F8);
  sub_2167FDB84(v61, &qword_27CAB86D8);
  sub_2167FDB84(v42, &qword_27CAB86D8);
  v66[0] = v28;
  v66[1] = v29;
  v66[2] = 0;
  v46 = MEMORY[0x277D84F90];
  v66[3] = MEMORY[0x277D84F90];
  v66[4] = v51;
  v66[5] = v55;
  v67 = v43;
  v68 = v50;
  *v69 = *v63;
  *&v69[3] = *&v63[3];
  v70 = v34;
  v71 = v36;
  v72 = v38;
  v73 = v40;
  v74 = 0;
  sub_2167FDB84(v66, &qword_27CAB87F8);
  v75[0] = v58;
  v75[1] = v62;
  v75[2] = 0;
  v75[3] = v46;
  v75[4] = KeyPath;
  v75[5] = v56;
  v76 = v59;
  v77 = v57;
  *v78 = *v85;
  *&v78[3] = *&v85[3];
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = v25;
  v83 = 0;
  return sub_2167FDB84(v75, &qword_27CAB87F8);
}

uint64_t sub_2167F80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8700);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = *(v4 + 56);
  v15 = v2;
  sub_216683A80(v2 + v14, v10, &qword_27CAB84E0);
  v16 = type metadata accessor for SongDetailListHeaderLockup();
  if (__swift_getEnumTagSinglePayload(v10, 1, v16) == 1)
  {
    sub_2167FDB84(v10, &qword_27CAB84E0);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  else
  {
    sub_216683A80(&v10[*(v16 + 36)], &v39, &qword_27CAB6DB0);
    sub_2167FE1C0(v10, type metadata accessor for SongDetailListHeaderLockup);
  }

  v17 = v11[11];
  v18 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v13[v17], 1, 1, v18);
  (*(v5 + 16))(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15, a1);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = *(a1 + 16);
  (*(v5 + 32))(v20 + v19, v7, a1);
  v21 = v11[12];
  *&v13[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v22 = &v13[v11[13]];
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  v23 = v41;
  v24 = v40;
  *v13 = v39;
  *(v13 + 1) = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = sub_2167FD0E8;
  *(v13 + 6) = v20;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  v25 = sub_217009C74();
  sub_2167F9C00();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v38;
  sub_2167C5834(v13, v38, &qword_27CAB8700);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8);
  v36 = v34 + *(result + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_2167F8460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v149 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86D8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v150 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v148 = &v132 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v139 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v132 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v132 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v143 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v132 - v15;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7648);
  v16 = MEMORY[0x28223BE20](v153);
  v141 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v135 = &v132 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7650);
  v19 = MEMORY[0x28223BE20](v151);
  v142 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v136 = &v132 - v21;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86E0);
  v22 = MEMORY[0x28223BE20](v152);
  v146 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v145 = &v132 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v132 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v144 = &v132 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v134 = &v132 - v31;
  MEMORY[0x28223BE20](v30);
  v156 = &v132 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86E8);
  v34 = v33 - 8;
  v35 = MEMORY[0x28223BE20](v33);
  v155 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v132 - v37;
  v138 = type metadata accessor for SongDetailHeaderView();
  v39 = *(v138 + 48);
  sub_216683A80(a1 + v39, v38, &qword_27CAB84E0);
  KeyPath = swift_getKeyPath();
  v41 = type metadata accessor for HeaderArtworkView(0);
  *&v38[v41[5]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  *&v38[v41[6]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v42 = &v38[v41[7]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  LOBYTE(v42) = sub_217009C74();
  sub_217007F24();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F0) + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  LOBYTE(v42) = sub_217009CA4();
  sub_217007F24();
  v52 = *(v34 + 44);
  v154 = v38;
  v53 = &v38[v52];
  *v53 = v42;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  v133 = v39;
  sub_216683A80(a1 + v39, v11, &qword_27CAB84E0);
  v58 = type metadata accessor for SongDetailListHeaderLockup();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v58);
  v147 = a1;
  if (EnumTagSinglePayload == 1)
  {
    v60 = v132;
    sub_2167FDB84(v11, &qword_27CAB84E0);
  }

  else
  {
    v60 = v132;
    v61 = &v11[*(v58 + 24)];
    v62 = *v61;
    v63 = *(v61 + 1);
    sub_21700DF14();
    sub_2167FE1C0(v11, type metadata accessor for SongDetailListHeaderLockup);
    if (v63)
    {
      v64 = v12;
      goto LABEL_6;
    }
  }

  v64 = v12;

  v62 = 0;
  v63 = 0xE000000000000000;
LABEL_6:
  v65 = sub_217009E24();
  v66 = swift_getKeyPath();
  v157 = v62;
  v158 = v63;
  v159 = 0;
  v160 = MEMORY[0x277D84F90];
  v161 = v66;
  v162 = v65;
  sub_217009D94();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  v68 = v137;
  v132 = v67;
  sub_21700A304();

  v69 = sub_217009814();
  v70 = *(v60 + 32);
  v71 = v135;
  v70(v135, v68, v64);
  *(v71 + *(v153 + 36)) = v69;
  LOBYTE(v69) = sub_217009CA4();
  sub_217007F24();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v136;
  sub_2167C5834(v71, v136, &qword_27CAB7648);
  v81 = v80 + *(v151 + 36);
  *v81 = v69;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  LOBYTE(v69) = sub_217009C74();
  sub_217007F24();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v80;
  v91 = v134;
  sub_2167C5834(v90, v134, &qword_27CAB7650);
  v92 = v91 + *(v152 + 36);
  *v92 = v69;
  *(v92 + 8) = v83;
  *(v92 + 16) = v85;
  *(v92 + 24) = v87;
  *(v92 + 32) = v89;
  *(v92 + 40) = 0;
  sub_2167C5834(v91, v156, &qword_27CAB86E0);
  v93 = v139;
  sub_216683A80(v147 + v133, v139, &qword_27CAB84E0);
  if (__swift_getEnumTagSinglePayload(v93, 1, v58) == 1)
  {
    sub_2167FDB84(v93, &qword_27CAB84E0);
LABEL_9:

    v95 = 0;
    v96 = 0xE000000000000000;
    goto LABEL_10;
  }

  v94 = (v93 + *(v58 + 28));
  v95 = *v94;
  v96 = v94[1];
  sub_21700DF14();
  sub_2167FE1C0(v93, type metadata accessor for SongDetailListHeaderLockup);
  if (!v96)
  {
    goto LABEL_9;
  }

LABEL_10:
  v97 = sub_217009E94();
  v98 = swift_getKeyPath();
  v157 = v95;
  v158 = v96;
  v159 = 0;
  v160 = MEMORY[0x277D84F90];
  v161 = v98;
  v162 = v97;
  sub_217009DC4();
  v99 = v143;
  sub_21700A304();

  v100 = sub_217009834();
  v101 = v141;
  v70(v141, v99, v64);
  *(v101 + *(v153 + 36)) = v100;
  LOBYTE(v100) = sub_217009CA4();
  sub_217007F24();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v142;
  sub_2167C5834(v101, v142, &qword_27CAB7648);
  v111 = v110 + *(v151 + 36);
  *v111 = v100;
  *(v111 + 8) = v103;
  *(v111 + 16) = v105;
  *(v111 + 24) = v107;
  *(v111 + 32) = v109;
  *(v111 + 40) = 0;
  LOBYTE(v100) = sub_217009C74();
  sub_217007F24();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v110;
  v121 = v140;
  sub_2167C5834(v120, v140, &qword_27CAB7650);
  v122 = v121 + *(v152 + 36);
  *v122 = v100;
  *(v122 + 8) = v113;
  *(v122 + 16) = v115;
  *(v122 + 24) = v117;
  *(v122 + 32) = v119;
  *(v122 + 40) = 0;
  v123 = v144;
  sub_2167C5834(v121, v144, &qword_27CAB86E0);
  v124 = v148;
  sub_2167F80C0(v138, v148);
  v125 = v155;
  sub_216683A80(v154, v155, &qword_27CAB86E8);
  v126 = v145;
  sub_216683A80(v156, v145, &qword_27CAB86E0);
  v127 = v146;
  sub_216683A80(v123, v146, &qword_27CAB86E0);
  v128 = v150;
  sub_216683A80(v124, v150, &qword_27CAB86D8);
  v129 = v149;
  *v149 = 0x4020000000000000;
  *(v129 + 8) = 0;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB86F8);
  sub_216683A80(v125, v129 + v130[12], &qword_27CAB86E8);
  sub_216683A80(v126, v129 + v130[16], &qword_27CAB86E0);
  sub_216683A80(v127, v129 + v130[20], &qword_27CAB86E0);
  sub_216683A80(v128, v129 + v130[24], &qword_27CAB86D8);
  sub_2167FDB84(v124, &qword_27CAB86D8);
  sub_2167FDB84(v123, &qword_27CAB86E0);
  sub_2167FDB84(v156, &qword_27CAB86E0);
  sub_2167FDB84(v154, &qword_27CAB86E8);
  sub_2167FDB84(v128, &qword_27CAB86D8);
  sub_2167FDB84(v127, &qword_27CAB86E0);
  sub_2167FDB84(v126, &qword_27CAB86E0);
  return sub_2167FDB84(v155, &qword_27CAB86E8);
}

void *sub_2167F90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a2;
  v33[2] = a3;
  v33[0] = a1;
  v36 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8710);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v33 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8718) - 8;
  MEMORY[0x28223BE20](v35);
  v34 = v33 - v8;
  v9 = sub_2170091A4();
  v10 = sub_21700ADB4();
  v11 = sub_216983738(189);
  v13 = v12;

  v14 = MEMORY[0x277D84F90];
  sub_2167770D0(v11, v13, 0, MEMORY[0x277D84F90]);
  sub_2167C4DF0(v11, v13, 0, v14);

  v39 = 1;
  v15 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  v38[0] = v9;
  v38[1] = 0;
  LOBYTE(v38[2]) = 1;
  v38[3] = v10;
  v38[4] = v11;
  v38[5] = v13;
  v38[6] = 0;
  v38[7] = v14;
  v38[8] = KeyPath;
  v38[9] = v15;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8720);
  sub_2167FD170();
  sub_21700A304();
  memcpy(__dst, v38, 0x50uLL);
  sub_2167FDB84(__dst, &qword_27CAB8720);
  v17 = sub_217009E24();
  v18 = swift_getKeyPath();
  v19 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8740) + 36)];
  *v19 = v18;
  v19[1] = v17;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8748) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v22 = *MEMORY[0x277CE1058];
  v23 = sub_21700ADF4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = sub_21700B3B4();
  v26 = v25;
  v27 = &v7[*(v5 + 44)];
  sub_2167F9524();
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8750) + 36)];
  *v28 = v24;
  v28[1] = v26;
  sub_21700B3B4();
  sub_217008BB4();
  v29 = v34;
  sub_2167C5834(v7, v34, &qword_27CAB8710);
  memcpy((v29 + *(v35 + 44)), v37, 0x70uLL);
  type metadata accessor for SongDetailHeaderView();
  sub_2167F9C00();
  sub_21700B3B4();
  sub_217008BB4();
  v30 = v36;
  sub_2167C5834(v29, v36, &qword_27CAB8718);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8758);
  return memcpy((v30 + *(v31 + 36)), v38, 0x70uLL);
}

uint64_t sub_2167F9524()
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8768);
  sub_2167FD26C();
  sub_2167FD324();
  return sub_21700B324();
}

void *sub_2167F9608@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  v8 = [objc_opt_self() tertiarySystemFillColor];
  *&v5[*(v3 + 60)] = sub_21700AC44();
  *&v5[*(v3 + 64)] = 256;
  v9 = type metadata accessor for SongDetailHeaderView();
  sub_2167F9828(v9);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, a1, &qword_27CAB8780);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760);
  return memcpy((a1 + *(v10 + 36)), __src, 0x70uLL);
}

double sub_2167F9828(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2167F9C00() & 1) == 0)
  {
    return 224.0;
  }

  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 + -210.0;
}

void *sub_2167F99A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8798);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = [objc_opt_self() tertiarySystemFillColor];
  v7 = sub_21700AC44();
  v8 = &v5[*(v3 + 44)];
  v9 = *(sub_217008B44() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_217009294();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  *v5 = v7;
  *(v5 + 4) = 256;
  v17 = type metadata accessor for SongDetailHeaderView();
  sub_2167F9828(v17);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, a1, &qword_27CAB8798);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8768);
  return memcpy((a1 + *(v18 + 36)), __src, 0x70uLL);
}

uint64_t sub_2167F9C00()
{
  v0 = sub_2170098A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_2167F67EC(&v21 - v13);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_216683A80(v14, v6, &qword_27CAB8600);
  sub_216683A80(v12, &v6[v15], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v22;
    sub_216683A80(v6, v22, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v21;
      (*(v1 + 32))(v21, &v6[v15], v0);
      sub_2167FDEE4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v16 = sub_21700E494();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_2167FDB84(v12, &qword_27CAB8600);
      sub_2167FDB84(v14, &qword_27CAB8600);
      v19(v17, v0);
      sub_2167FDB84(v6, &qword_27CAB8600);
      return v16 & 1;
    }

    sub_2167FDB84(v12, &qword_27CAB8600);
    sub_2167FDB84(v14, &qword_27CAB8600);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_2167FDB84(v12, &qword_27CAB8600);
  sub_2167FDB84(v14, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_2167FDB84(v6, &qword_27CAB8708);
    v16 = 0;
    return v16 & 1;
  }

  sub_2167FDB84(v6, &qword_27CAB8600);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_2167FA01C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_216683A80(v1 + *(a1 + 48), &v11 - v4, &qword_27CAB84E0);
  v6 = type metadata accessor for SongDetailListHeaderLockup();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2167FDB84(v5, &qword_27CAB84E0);
LABEL_4:
    v8 = sub_21700C014();

    return v8;
  }

  v7 = &v5[*(v6 + 24)];
  v8 = *v7;
  v9 = v7[1];
  sub_21700DF14();
  sub_2167FE1C0(v5, type metadata accessor for SongDetailListHeaderLockup);
  if (!v9)
  {
    goto LABEL_4;
  }

  return v8;
}

uint64_t sub_2167FA154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for HeaderArtworkView(0);
  sub_216683A80(v1 + *(v10 + 20), v9, &qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167C5834(v9, a1, &qword_27CAB8600);
  }

  sub_21700ED94();
  v12 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2167FA340@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8928);
  return sub_2167FA394(v1, a1 + *(v3 + 44));
}

uint64_t sub_2167FA394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v139 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = &v107 - v3;
  v4 = sub_21700C444();
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x28223BE20](v4);
  v132 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v121 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v116 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = &v107 - v15;
  v16 = sub_217007474();
  v127 = *(v16 - 8);
  v128 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v122 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = &v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v130 = *(v20 - 8);
  v131 = v20;
  MEMORY[0x28223BE20](v20);
  v129 = &v107 - v21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930);
  MEMORY[0x28223BE20](v123);
  v126 = &v107 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8938);
  MEMORY[0x28223BE20](v138);
  v125 = &v107 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  MEMORY[0x28223BE20](v117);
  v118 = &v107 - v24;
  v25 = sub_2170090F4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  MEMORY[0x28223BE20](v29);
  v31 = &v107 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v114 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v107 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v136 = &v107 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v107 - v40;
  v142 = sub_2170098A4();
  v140 = *(v142 - 8);
  v42 = MEMORY[0x28223BE20](v142);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v137 = &v107 - v45;
  v113 = type metadata accessor for HeaderArtworkView(0);
  sub_216683A80(v141 + *(v113 + 24), v31, &qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v31, v41, &qword_27CAB8600);
  }

  else
  {
    sub_21700ED94();
    v46 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v26 + 8))(v28, v25);
  }

  v47 = v142;
  if (__swift_getEnumTagSinglePayload(v41, 1, v142) != 1)
  {
    v108 = v28;
    v109 = v26;
    v110 = v25;
    v51 = v140;
    v111 = *(v140 + 32);
    v111(v137, v41, v47);
    v52 = *(v51 + 104);
    v52(v44, *MEMORY[0x277CE0560], v142);
    sub_217009894();
    v53 = *(v51 + 8);
    v140 = v51 + 8;
    v53(v44, v142);
    v54 = v136;
    sub_2167FA154(v136);
    v52(v37, *MEMORY[0x277CE0558], v142);
    v55 = v142;
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v142);
    v56 = *(v117 + 48);
    v57 = v118;
    sub_216683A80(v54, v118, &qword_27CAB8600);
    sub_216683A80(v37, v57 + v56, &qword_27CAB8600);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v55);
    v112 = v53;
    if (EnumTagSinglePayload == 1)
    {
      sub_2167FDB84(v37, &qword_27CAB8600);
      sub_2167FDB84(v54, &qword_27CAB8600);
      v59 = __swift_getEnumTagSinglePayload(v57 + v56, 1, v55);
      v60 = v141;
      if (v59 == 1)
      {
        sub_2167FDB84(v57, &qword_27CAB8600);
        v62 = v133;
        v61 = v134;
        v63 = v132;
        v64 = v122;
        v65 = v120;
        v66 = v119;
LABEL_13:
        v69 = v60 + *(v113 + 28);
        v70 = *v69;
        if (*(v69 + 8) != 1)
        {

          sub_21700ED94();
          v71 = sub_217009C34();
          sub_217007BC4();

          v72 = v108;
          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v70, 0);
          (*(v109 + 8))(v72, v110);
        }

LABEL_15:
        sub_216683A80(v60, v66, &qword_27CAB84E0);
        v73 = type metadata accessor for SongDetailListHeaderLockup();
        if (__swift_getEnumTagSinglePayload(v66, 1, v73) == 1)
        {
          v74 = &qword_27CAB84E0;
          v75 = v66;
        }

        else
        {
          v76 = v115;
          sub_216683A80(v66 + *(v73 + 44), v115, &qword_27CAB6D60);
          sub_2167FE1C0(v66, type metadata accessor for SongDetailListHeaderLockup);
          v77 = type metadata accessor for Artwork();
          if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
          {
            v81 = sub_21700C4B4();
            (*(*(v81 - 8) + 16))(v65, v76, v81);
            sub_2167FE1C0(v76, type metadata accessor for Artwork);
            v79 = v65;
            v80 = 0;
            v78 = v81;
LABEL_21:
            __swift_storeEnumTagSinglePayload(v79, v80, 1, v78);
            sub_217007434();
            v82 = v121;
            sub_216683A80(v60, v121, &qword_27CAB84E0);
            if (__swift_getEnumTagSinglePayload(v82, 1, v73) == 1)
            {
              v83 = &qword_27CAB84E0;
              v84 = v82;
            }

            else
            {
              v85 = v116;
              sub_216683A80(v82 + *(v73 + 44), v116, &qword_27CAB6D60);
              sub_2167FE1C0(v82, type metadata accessor for SongDetailListHeaderLockup);
              v86 = type metadata accessor for Artwork();
              if (__swift_getEnumTagSinglePayload(v85, 1, v86) != 1)
              {
                v88 = v85 + *(v86 + 20);
                v87 = v135;
                (*(v61 + 16))(v62, v88, v135);
                sub_2167FE1C0(v85, type metadata accessor for Artwork);
                __swift_storeEnumTagSinglePayload(v62, 0, 1, v87);
                (*(v61 + 32))(v63, v62, v87);
LABEL_28:
                v89 = v124;
                sub_2170073E4();
                (*(v61 + 8))(v63, v87);
                v90 = v128;
                v91 = *(v127 + 8);
                v91(v64, v128);
                *(swift_allocObject() + 16) = xmmword_217016ED0;
                sub_2167C505C();
                v92 = v129;
                sub_2170073F4();

                v91(v89, v90);
                v112(v137, v142);
                v93 = v126;
                v94 = &v126[*(v123 + 36)];
                v95 = *(sub_217008B44() + 20);
                v96 = *MEMORY[0x277CE0118];
                v97 = sub_217009294();
                (*(*(v97 - 8) + 104))(&v94[v95], v96, v97);
                __asm { FMOV            V0.2D, #7.0 }

                *v94 = _Q0;
                *&v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
                (*(v130 + 32))(v93, v92, v131);
                v103 = v125;
                sub_2167C5834(v93, v125, &qword_27CAB8930);
                v50 = v138;
                v104 = v103 + *(v138 + 36);
                *v104 = 0;
                *(v104 + 8) = 257;
                v105 = v103;
                v49 = v139;
                sub_2167C5834(v105, v139, &qword_27CAB8938);
                v48 = 0;
                return __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
              }

              v83 = &qword_27CAB6D60;
              v84 = v85;
            }

            sub_2167FDB84(v84, v83);
            v87 = v135;
            __swift_storeEnumTagSinglePayload(v62, 1, 1, v135);
            sub_21700C404();
            if (__swift_getEnumTagSinglePayload(v62, 1, v87) != 1)
            {
              sub_2167FDB84(v62, &qword_27CAB7530);
            }

            goto LABEL_28;
          }

          v74 = &qword_27CAB6D60;
          v75 = v76;
        }

        sub_2167FDB84(v75, v74);
        v78 = sub_21700C4B4();
        v79 = v65;
        v80 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v67 = v114;
      sub_216683A80(v57, v114, &qword_27CAB8600);
      if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v55) != 1)
      {
        v111(v44, (v57 + v56), v55);
        sub_2167FDEE4(&qword_280E2A858, MEMORY[0x277CE0570]);
        v68 = sub_21700E494();
        v53(v44, v55);
        sub_2167FDB84(v37, &qword_27CAB8600);
        sub_2167FDB84(v136, &qword_27CAB8600);
        v53(v67, v55);
        sub_2167FDB84(v57, &qword_27CAB8600);
        v62 = v133;
        v61 = v134;
        v63 = v132;
        v64 = v122;
        v60 = v141;
        v65 = v120;
        v66 = v119;
        if ((v68 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      sub_2167FDB84(v37, &qword_27CAB8600);
      sub_2167FDB84(v136, &qword_27CAB8600);
      v53(v67, v55);
      v60 = v141;
    }

    sub_2167FDB84(v57, &qword_27CAB8708);
    v62 = v133;
    v61 = v134;
    v63 = v132;
    v64 = v122;
    v65 = v120;
    v66 = v119;
    goto LABEL_15;
  }

  sub_2167FDB84(v41, &qword_27CAB8600);
  v48 = 1;
  v50 = v138;
  v49 = v139;
  return __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
}

uint64_t sub_2167FB508@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = sub_21700C074();
  if (v7)
  {
    MEMORY[0x28223BE20](v7);
    *(&v9 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B8);
    sub_2167FDC38();
    sub_21700B1B4();
    (*(v4 + 32))(a1, v6, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_2167FB6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v3 = sub_217008AD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SongDetailLyricsButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88C8);
  MEMORY[0x28223BE20](v10);
  v12 = (v23 - v11);
  sub_2167FBA24((v23 - v11));
  v13 = v10[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v12 + v13, 1, 1, v14);
  sub_2167FDDB0(a1, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_2167FDE14(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = v10[12];
  *(v12 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v18 = v12 + v10[13];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v12[5] = sub_2167FDE78;
  v12[6] = v16;
  v12[7] = 0;
  v12[8] = 0;
  sub_217008AC4();
  sub_21669E098(&qword_27CAB88D0, &qword_27CAB88C8);
  sub_2167FDEE4(&qword_280E2AD60, MEMORY[0x277CDDB18]);
  v19 = v23[0];
  sub_21700A364();
  (*(v4 + 8))(v6, v3);
  sub_2167FDB84(v12, &qword_27CAB88C8);
  v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v23[1] = sub_21700AC44();
  v21 = sub_21700B0B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB88B8);
  *(v19 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_2167FBA24@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v50 = sub_21700CFB4();
  v1 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217005EF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21700D704();
  v43 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v48 = sub_21700D284();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  v42 = xmmword_217013DA0;
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0x657461676976616ELL;
  *(inited + 40) = 0xEA00000000006F54;
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0x73636972796CLL;
  *(inited + 56) = 0xE600000000000000;
  v20 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
  sub_21700D6F4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v55 = v20;
  sub_2166EF9C4(&v55, v54);
  v21 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v21;
  sub_2166EF9D4();
  v22 = v53;
  v56 = v19;
  *&v55 = 0x657461676976616ELL;
  *(&v55 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v55, v54);
  swift_isUniquelyReferenced_nonNull_native();
  v53 = v22;
  sub_2166EF9D4();
  v23 = v53;
  sub_216683A80(v16, v14, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_2167FDB84(v14, &qword_27CABA820);
  }

  else
  {
    (*(v4 + 32))(v6, v14, v3);
    v24 = sub_217005DE4();
    v56 = v19;
    *&v55 = v24;
    *(&v55 + 1) = v25;
    sub_2166EF9C4(&v55, v54);
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v23;
    sub_2166EF9D4();
    v23 = v53;
    (*(v4 + 8))(v6, v3);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v26 = sub_21700CF84();
  v27 = __swift_project_value_buffer(v26, qword_280E73DB0);
  v28 = v49;
  MEMORY[0x21CE9DD70](0x73636972796CLL, 0xE600000000000000, 0x6E6F74747562, 0xE600000000000000, v23, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v29 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  v31 = v30 + v29;
  v32 = v50;
  (*(v1 + 16))(v31, v28, v50);
  v33 = v43;
  v34 = v47;
  (*(v43 + 16))(v44, v10, v47);
  v35 = v45;
  sub_21700D244();
  (*(v1 + 8))(v28, v32);
  (*(v33 + 8))(v10, v34);
  sub_2167FDB84(v16, &qword_27CABA820);
  v36 = type metadata accessor for ViewLyricsAction();
  v37 = v51;
  v51[3] = v36;
  v37[4] = sub_2167FDEE4(&qword_27CAB88E8, type metadata accessor for ViewLyricsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v39 = *(v36 + 20);
  v40 = sub_21700C084();
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_1 + v39, v52, v40);
  return (*(v46 + 32))(boxed_opaque_existential_1, v35, v48);
}

double sub_2167FC198@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2170091A4();
  v18 = 0;
  sub_2167FC31C();
  memcpy(__dst, __src, 0x7AuLL);
  memcpy(v21, __src, 0x7AuLL);
  sub_216683A80(__dst, v15, &qword_27CAB88E0);
  sub_2167FDB84(v21, &qword_27CAB88E0);
  memcpy(&v17[7], __dst, 0x7AuLL);
  v3 = v18;
  v4 = sub_217009CB4();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15[0] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  *&v19[7] = __src[0];
  *&v19[23] = __src[1];
  *&v19[39] = __src[2];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  memcpy((a1 + 17), v17, 0x81uLL);
  *(a1 + 152) = v4;
  *(a1 + 160) = v6;
  *(a1 + 168) = v8;
  *(a1 + 176) = v10;
  *(a1 + 184) = v12;
  *(a1 + 192) = 0;
  v13 = *&v19[16];
  *(a1 + 193) = *v19;
  *(a1 + 209) = v13;
  result = *&v19[32];
  *(a1 + 225) = *&v19[32];
  *(a1 + 240) = *&v19[47];
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_2167FC31C()
{
  if (qword_280E29B20 != -1)
  {
    swift_once();
  }

  v0 = qword_280E739D0;
  v1 = sub_21700AE14();
  v2 = sub_216983738(370);
  v4 = v3;
  v5 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v7 = sub_217009814();
  v8 = sub_217009CB4();
  sub_217007F24();
  __dst[0] = 0;
  v18[0] = v1;
  __src[0] = v2;
  __src[1] = v4;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = v5;
  LODWORD(__src[6]) = v7;
  LOBYTE(__src[7]) = v8;
  __src[8] = v9;
  __src[9] = v10;
  __src[10] = v11;
  __src[11] = v12;
  LOBYTE(__src[12]) = 0;
  v18[1] = v18;
  v18[2] = __src;
  v15 = 0;
  v16 = 1;
  v14 = 1;
  v18[3] = &v15;
  v18[4] = &v14;
  sub_2168AA694();
  memcpy(__dst, __src, 0x61uLL);
  sub_2167FDB84(__dst, &qword_27CAB87F8);
}

unint64_t sub_2167FC538()
{
  result = qword_27CAB8508;
  if (!qword_27CAB8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84F8);
    sub_2167FC5F0();
    sub_21669E098(&qword_27CAB8530, &qword_27CAB8538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8508);
  }

  return result;
}

unint64_t sub_2167FC5F0()
{
  result = qword_27CAB8510;
  if (!qword_27CAB8510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8518);
    sub_21669E098(&qword_27CAB8500, &qword_27CAB84B0);
    sub_21669E098(&qword_27CAB8520, &unk_27CAB8528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8510);
  }

  return result;
}

uint64_t sub_2167FC720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_216683A80(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_2167FC888()
{
  result = sub_21700C084();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2167FC8F4()
{
  sub_2167FCA6C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter();
    swift_getWitnessTable();
    sub_217008D04();
    if (v1 <= 0x3F)
    {
      sub_2167B8000();
      if (v2 <= 0x3F)
      {
        sub_21700C084();
        if (v3 <= 0x3F)
        {
          sub_2167FCAD0(319, qword_280E33DE0, type metadata accessor for SongDetailListHeaderLockup);
          if (v4 <= 0x3F)
          {
            sub_2167FCAD0(319, &qword_280E40340, type metadata accessor for ContentDescriptor);
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

void sub_2167FCA6C()
{
  if (!qword_280E2B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600);
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B440);
    }
  }
}

void sub_2167FCAD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2167FCBA0()
{
  v0 = type metadata accessor for SongDetailHeaderView();
  OUTLINED_FUNCTION_36(v0);

  return sub_2167F721C();
}

uint64_t sub_2167FCC68(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_0_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167FCCD8()
{
  result = qword_27CAB8628;
  if (!qword_27CAB8628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8630);
    sub_2167FCD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8628);
  }

  return result;
}

unint64_t sub_2167FCD5C()
{
  result = qword_27CAB8638;
  if (!qword_27CAB8638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8640);
    sub_2167FCDE8();
    sub_2167FD010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8638);
  }

  return result;
}

unint64_t sub_2167FCDE8()
{
  result = qword_27CAB8648;
  if (!qword_27CAB8648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8650);
    sub_2167FCEA0();
    sub_21669E098(&qword_280E2A730, &unk_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8648);
  }

  return result;
}

unint64_t sub_2167FCEA0()
{
  result = qword_27CAB8658;
  if (!qword_27CAB8658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8660);
    sub_2167FCF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8658);
  }

  return result;
}

unint64_t sub_2167FCF2C()
{
  result = qword_27CAB8668;
  if (!qword_27CAB8668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8670);
    sub_21669E098(&qword_27CAB8678, &unk_27CAB8680);
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8668);
  }

  return result;
}

unint64_t sub_2167FD010()
{
  result = qword_27CAB8690;
  if (!qword_27CAB8690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8698);
    sub_21669E098(&qword_27CAB86A0, &unk_27CAB86A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8690);
  }

  return result;
}

void *sub_2167FD0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for SongDetailHeaderView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_2167F90C4(v7, v3, v4, a1);
}

unint64_t sub_2167FD170()
{
  result = qword_27CAB8728;
  if (!qword_27CAB8728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8720);
    sub_21669E098(&qword_27CAB8730, &unk_27CAB8738);
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8728);
  }

  return result;
}

unint64_t sub_2167FD26C()
{
  result = qword_27CAB8770;
  if (!qword_27CAB8770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8760);
    sub_21669E098(&qword_27CAB8778, &qword_27CAB8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8770);
  }

  return result;
}

unint64_t sub_2167FD324()
{
  result = qword_27CAB8788;
  if (!qword_27CAB8788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8768);
    sub_2167FD3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8788);
  }

  return result;
}

unint64_t sub_2167FD3B0()
{
  result = qword_27CAB8790;
  if (!qword_27CAB8790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8798);
    sub_21669E098(&qword_27CAB87A0, &unk_27CAB87A8);
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8790);
  }

  return result;
}

unint64_t sub_2167FD49C()
{
  result = qword_27CAB8818;
  if (!qword_27CAB8818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828);
    sub_2167FD5B4();
    sub_2167FD990();
    swift_getOpaqueTypeConformance2();
    sub_2167FDA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8818);
  }

  return result;
}

unint64_t sub_2167FD5B4()
{
  result = qword_27CAB8830;
  if (!qword_27CAB8830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850);
    sub_2167C4D74();
    sub_2167FD7A0();
    swift_getOpaqueTypeConformance2();
    sub_2167FD858();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A830, &unk_27CAB8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8830);
  }

  return result;
}

unint64_t sub_2167FD7A0()
{
  result = qword_27CAB8858;
  if (!qword_27CAB8858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850);
    sub_2167C4D74();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8858);
  }

  return result;
}

unint64_t sub_2167FD858()
{
  result = qword_27CAB8868;
  if (!qword_27CAB8868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8850);
    sub_2167C4D74();
    sub_2167FD7A0();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8868);
  }

  return result;
}

unint64_t sub_2167FD990()
{
  result = qword_27CAB8878;
  if (!qword_27CAB8878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8828);
    sub_2167FD5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8878);
  }

  return result;
}

unint64_t sub_2167FDA1C()
{
  result = qword_27CAB8880;
  if (!qword_27CAB8880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8888);
    sub_2167FDAD4();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8880);
  }

  return result;
}

unint64_t sub_2167FDAD4()
{
  result = qword_27CAB8890;
  if (!qword_27CAB8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8890);
  }

  return result;
}

unint64_t sub_2167FDB28()
{
  result = qword_27CAB8898;
  if (!qword_27CAB8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8898);
  }

  return result;
}

uint64_t sub_2167FDB84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2167FDC38()
{
  result = qword_27CAB88C0;
  if (!qword_27CAB88C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88C8);
    sub_217008AD4();
    sub_21669E098(&qword_27CAB88D0, &qword_27CAB88C8);
    sub_2167FDEE4(&qword_280E2AD60, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A8C8, &qword_27CAB88D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB88C0);
  }

  return result;
}

uint64_t sub_2167FDDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongDetailLyricsButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167FDE14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongDetailLyricsButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2167FDE78@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SongDetailLyricsButton(0);
  OUTLINED_FUNCTION_36(v2);

  return sub_2167FC198(a1);
}

uint64_t sub_2167FDEE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2167FDF54()
{
  sub_2167FCAD0(319, qword_280E33DE0, type metadata accessor for SongDetailListHeaderLockup);
  if (v0 <= 0x3F)
  {
    sub_2167FCA6C();
    if (v1 <= 0x3F)
    {
      sub_2167B8000();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2167FE00C()
{
  result = qword_27CAB8900;
  if (!qword_27CAB8900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8908);
    sub_2167FD49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8900);
  }

  return result;
}

unint64_t sub_2167FE090()
{
  result = qword_27CAB8910;
  if (!qword_27CAB8910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8918);
    sub_2167FE114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8910);
  }

  return result;
}

unint64_t sub_2167FE114()
{
  result = qword_27CAB8920;
  if (!qword_27CAB8920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88B0);
    sub_2167FDC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8920);
  }

  return result;
}

uint64_t sub_2167FE1C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167FE258(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v37 = a1;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v17 = v16;
  v18 = v15;
  v19 = *(v11 + 8);
  v19(v18, v9);
  if (v17)
  {
    v32 = v17;
    v31 = v19;
    sub_21700CE04();
    v20 = *(v5 + 16);
    v20(v8, v34, v3);
    sub_2167A7528();
    sub_21700D734();
    if (__src[1])
    {
      memcpy(__dst, __src, 0x48uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_217013DA0;
      sub_2167ADC3C(__dst, v21 + 32);
      (*(v5 + 8))(v34, v3);
      v31(v37, v9);
      sub_2167ADC98(__dst);
    }

    else
    {
      sub_216699820(__src, &qword_27CAB8100);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
      sub_21700CE04();
      v30 = v9;
      v27 = v3;
      v28 = v34;
      v20(v8, v34, v27);
      sub_2167FF028();
      sub_21700D734();
      (*(v5 + 8))(v28, v27);
      v31(v37, v30);
    }

    return v33;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_24();
    sub_2167FEF38(v22, v23);
    swift_allocError();
    *v24 = 0x656C746974;
    v24[1] = 0xE500000000000000;
    v24[2] = &type metadata for ContainerDetailTracklistFooterLockup.GroupedTextLinkSection;
    OUTLINED_FUNCTION_50();
    (*(v25 + 104))();
    swift_willThrow();
    (*(v5 + 8))(v34, v3);
    return (v19)(v37, v9);
  }
}

uint64_t sub_2167FE6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2167FE258(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_2167FE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v96 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v79 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v90 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v82 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v87 = v8;
  v24 = *(v8 + 16);
  v89 = v6;
  v25 = v6;
  v26 = v90;
  v85 = v24;
  v86 = (v8 + 16);
  v24(v11, v93, v25);
  v80 = v23;
  v81 = v11;
  sub_21700D734();
  v27 = 25705;
  v28 = 0xE200000000000000;
  v91 = a1;
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v31 = v30;
  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v92 = v12;
  v34 = v12;
  v35 = v33;
  v33(v21, v34);
  v88 = v33;
  if (!v31)
  {
    v40 = v91;
    v41 = v92;
    goto LABEL_5;
  }

  v28 = 0x8000000217081C10;
  v27 = 0xD000000000000014;
  v36 = v84;
  sub_21700CE04();
  v37 = sub_21700CD24();
  v39 = v38;
  v35(v36, v92);
  if (v39)
  {
    v40 = v91;
    v41 = v92;

LABEL_5:
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_24();
    sub_2167FEF38(v42, v43);
    swift_allocError();
    v45 = v44;
    v46 = type metadata accessor for ContainerDetailTracklistFooterLockup();
    *v45 = v27;
    v45[1] = v28;
    v45[2] = v46;
    OUTLINED_FUNCTION_50();
    (*(v47 + 104))(v45);
    swift_willThrow();
    v48 = OUTLINED_FUNCTION_2_25();
    v49(v48, v89);
    v88(v40, v41);
    return sub_216699820(v96, &qword_27CAB6D58);
  }

  v51 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  v52 = v96;
  *(v96 + v51[7]) = v37;
  *&v94 = v29;
  *(&v94 + 1) = v31;
  sub_21700F364();
  type metadata accessor for ContentDescriptor();
  v53 = v80;
  v54 = v91;
  sub_21700CE04();
  v55 = v81;
  v56 = v93;
  v90 = v32;
  v85(v81, v93, v89);
  sub_2167FEF38(qword_280E40390, type metadata accessor for ContentDescriptor);
  sub_21700D734();
  v57 = v54;
  sub_21700CE04();
  v58 = sub_21700CDB4();
  v60 = v59;
  v88(v53, v92);
  v61 = (v52 + v51[8]);
  *v61 = v58;
  v61[1] = v60;
  v62 = v89;
  v63 = v57;
  sub_21700CE04();
  v85(v55, v56, v62);
  sub_2167FEF80();
  sub_21700D734();
  v64 = v95;
  v86 = v51;
  v65 = v52 + v51[9];
  *v65 = v94;
  *(v65 + 16) = v64;
  v66 = v82;
  v67 = v63;
  sub_21700CE04();
  v68 = v83;
  sub_21700CD74();
  v69 = v92;
  v70 = v88;
  v88(v66, v92);
  v71 = sub_21700E2C4();
  if (__swift_getEnumTagSinglePayload(v68, 1, v71) == 1)
  {
    v72 = OUTLINED_FUNCTION_2_25();
    v73(v72, v62);
    v70(v63, v69);
    result = sub_216699820(v68, &qword_27CAB78D0);
    v74 = 0;
  }

  else
  {
    v75 = v70;
    v74 = sub_21700E2A4();
    v76 = OUTLINED_FUNCTION_2_25();
    v77(v76, v62);
    v75(v67, v69);
    OUTLINED_FUNCTION_50();
    result = (*(v78 + 8))(v68, v71);
  }

  *(v96 + v86[10]) = v74;
  return result;
}

uint64_t sub_2167FEF38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2167FEF80()
{
  result = qword_27CAB8958;
  if (!qword_27CAB8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8958);
  }

  return result;
}

unint64_t sub_2167FEFD4()
{
  result = qword_27CAB8960;
  if (!qword_27CAB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8960);
  }

  return result;
}

unint64_t sub_2167FF028()
{
  result = qword_27CAB8970;
  if (!qword_27CAB8970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8968);
    sub_2167A7528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8970);
  }

  return result;
}

uint64_t sub_2167FF108()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167FF15C(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E656E696D6F7270;
  }
}

uint64_t sub_2167FF1B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167FF108();
  *a1 = result;
  return result;
}

uint64_t sub_2167FF1E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167FF15C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2167FF214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v42 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_21700CE04();
  v18 = sub_21700CDB4();
  v20 = v19;
  v21 = *(v11 + 8);
  v43 = v9;
  v41 = v21;
  v21(v17, v9);
  if (v20)
  {
    v44 = v18;
    v45 = v20;
    v39 = a3;
    sub_21700F364();
    sub_21700CE04();
    v22 = type metadata accessor for DefaultAccessoryButton();
    v23 = a1;
    v24 = v46;
    sub_21700D2E4();
    v25 = v43;
    v41(v15, v43);
    sub_21700D7A4();
    sub_21700CE04();
    (*(v6 + 16))(v40, v24, v42);
    v26 = v39;
    sub_21700D734();
    sub_21700CE04();
    v27 = sub_21700CDB4();
    v29 = v28;
    v30 = v25;
    v31 = v41;
    v41(v15, v30);
    v32 = (v26 + *(v22 + 24));
    *v32 = v27;
    v32[1] = v29;
    sub_21700CE04();
    sub_2167FFBC8();
    sub_21700CCC4();
    (*(v6 + 8))(v46, v42);
    v33 = v43;
    v31(v23, v43);
    result = (v31)(v15, v33);
    *(v26 + *(v22 + 32)) = v44;
  }

  else
  {
    v35 = sub_21700E2E4();
    sub_2167FFB80(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v37 = v36;
    v38 = type metadata accessor for DefaultAccessoryButton();
    *v37 = 25705;
    v37[1] = 0xE200000000000000;
    v37[2] = v38;
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v6 + 8))(v46, v42);
    return (v41)(a1, v43);
  }

  return result;
}

uint64_t sub_2167FF714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DefaultAccessoryButton(0);
  if (*(a1 + *(v4 + 20) + 8))
  {
    sub_21700DF14();
    sub_21700F364();
    v5 = type metadata accessor for DefaultAccessoryButton();
    v6 = a2 + v5[7];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    v7 = (a1 + *(v4 + 28));
    v9 = *v7;
    v8 = v7[1];
    sub_21700DF14();
    sub_2167FF880(a1);
    v10 = (a2 + v5[6]);
    *v10 = v9;
    v10[1] = v8;
    v11 = v5[5];
    v12 = sub_21700D7A4();
    result = __swift_storeEnumTagSinglePayload(a2 + v11, 1, 1, v12);
    *(a2 + v5[8]) = 0;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8988);
    sub_2167880BC();
    swift_allocError();
    *v15 = xmmword_217014E10;
    *(v15 + 16) = v14;
    swift_willThrow();
    return sub_2167FF880(a1);
  }

  return result;
}

uint64_t sub_2167FF880(uint64_t a1)
{
  v2 = type metadata accessor for DefaultAccessoryButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DefaultAccessoryButton()
{
  result = qword_280E39528;
  if (!qword_280E39528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167FF950()
{
  sub_216689C0C();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DefaultAccessoryButton.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2167FFAE4()
{
  result = qword_27CAB8990;
  if (!qword_27CAB8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8990);
  }

  return result;
}

uint64_t sub_2167FFB80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2167FFBC8()
{
  result = qword_27CAB89A0;
  if (!qword_27CAB89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89A0);
  }

  return result;
}

uint64_t sub_2167FFC28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2167FFC68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2167FFCD4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = a1;
  v2 = sub_217005EF4();
  v62 = v2;
  OUTLINED_FUNCTION_16();
  v4 = v3;
  v58 = v3;
  v61 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_103_2();
  v68 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v60 = sub_2170075E4();
  OUTLINED_FUNCTION_16();
  v67 = v11;
  v59 = *(v12 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_103_2();
  v64 = v14;
  MEMORY[0x28223BE20](v15);
  v63 = &v51 - v16;
  type metadata accessor for MarketingSheetModel();
  sub_2168023F4(&qword_27CAB89A8, type metadata accessor for MarketingSheetModel);
  OUTLINED_FUNCTION_28_13();
  v17 = OUTLINED_FUNCTION_47_7();
  v18 = *(v4 + 16);
  v55 = v4 + 16;
  v56 = v18;
  (v18)(v10, v17 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url, v2);

  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_47_7();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_47_7();
  sub_216976E78();

  v19 = v63;
  sub_2170075D4();
  v20 = OUTLINED_FUNCTION_47_7();
  v21 = v10;
  v57 = v10;
  v22 = v62;
  v23 = v56;
  v56(v10, (v20 + OBJC_IVAR____TtC7MusicUI19MarketingSheetModel_url), v62);

  v24 = v67;
  v53 = *(v67 + 16);
  v25 = v64;
  v26 = v60;
  v53(v64, v19, v60);
  v23(v68, v21, v22);
  v27 = *(v24 + 80);
  v28 = v24;
  v29 = (v27 + 16) & ~v27;
  v30 = v58;
  v55 = v29 + v59;
  v56 = v29;
  v31 = *(v58 + 80);
  v32 = v29 + v59;
  v33 = (v31 + v29 + v59 + 1) & ~v31;
  v59 = v27 | v31;
  v54 = v33;
  v52 = (v61 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = *(v28 + 32);
  v67 = v28 + 32;
  v36 = v34 + v29;
  v37 = v25;
  v35(v36, v25, v26);
  *(v34 + v32) = 0;
  v61 = *(v30 + 32);
  v38 = v62;
  v61(v34 + v33, v68, v62);
  v39 = v65;
  v40 = v52;
  *(v34 + v52) = v66;
  v41 = v63;
  v53(v39, v63, v26);
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89B0) + 36));
  *v42 = sub_2168001D0;
  v42[1] = v34;
  v42[2] = 0;
  v42[3] = 0;
  v43 = v35;
  v35(v37, v41, v26);
  v44 = v68;
  v45 = v61;
  v61(v68, v57, v38);
  v46 = swift_allocObject();
  v43(v56 + v46, v64, v26);
  v47 = v54;
  *(v46 + v55) = 0;
  v45(v46 + v47, v44, v38);
  *(v46 + v40) = v66;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89B8);
  v49 = (v65 + *(v48 + 36));
  *v49 = 0;
  v49[1] = 0;
  v49[2] = sub_2168005A8;
  v49[3] = v46;
  return swift_retain_n();
}

uint64_t sub_216800224()
{
  v5 = OUTLINED_FUNCTION_24_11();
  v6 = type metadata accessor for MarketingSheetDidAppearIntent(v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_34();
  (*(v8 + 16))(&v3[v4], v1);
  *v3 = v2 & 1;
  sub_216800310(v3, v0, type metadata accessor for MarketingSheetDidAppearIntent, type metadata accessor for MarketingSheetDidAppearIntent);
  return sub_216801D74();
}

uint64_t sub_216800310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v7 = a3(0);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_216801DC8(a1, v12, a4);
  sub_21700EA34();

  v18 = sub_21700EA24();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v18;
  v20[3] = v21;
  v20[4] = a2;
  sub_216801E28(v12, v20 + v19, a4);
  sub_21677E228();
}

uint64_t sub_2168004BC()
{
  v5 = OUTLINED_FUNCTION_24_11();
  v6 = type metadata accessor for MarketingSheetDidDisappearIntent(v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_34();
  (*(v8 + 16))(&v3[v4], v1);
  *v3 = v2 & 1;
  sub_216800310(v3, v0, type metadata accessor for MarketingSheetDidDisappearIntent, type metadata accessor for MarketingSheetDidDisappearIntent);
  return sub_216801D74();
}

uint64_t sub_2168005DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, void, unint64_t, void, uint64_t, uint64_t))
{
  v7 = sub_2170075E4();
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  v12 = sub_217005EF4();
  OUTLINED_FUNCTION_2(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v11 + *(v14 + 80) + 1) & ~*(v14 + 80);
  return a3(v3 + v9, *(v3 + v11), v3 + v17, *(v3 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_216800700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_216800958, v11, v10);
}

uint64_t sub_216800958()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_8_15(v2);

    return sub_216A992F0(v4, v5, v6);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CABFEF0);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v10))
    {
      v11 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v11);
      OUTLINED_FUNCTION_121(&dword_216679000, v12, v13, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v14();
  }
}

uint64_t sub_216800AC0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_216802440;
  }

  else
  {
    v8 = sub_216800BE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216800D3C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[30] = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_216802448;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19_16();
    v13(v12);
    OUTLINED_FUNCTION_44_9();
    v11 = sub_216802444;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216800EA4()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidDisappearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800700(v5, v6, v7, v8, v9);
}

uint64_t sub_216800F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_2168011C0, v11, v10);
}

uint64_t sub_2168011C0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_8_15(v2);

    return sub_216A996E0(v4, v5, v6);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CABFEF0);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v10))
    {
      v11 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v11);
      OUTLINED_FUNCTION_121(&dword_216679000, v12, v13, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v14();
  }
}

uint64_t sub_216801328()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_2168015A4;
  }

  else
  {
    v8 = sub_216801450;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2168015A4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_11();

  OUTLINED_FUNCTION_41_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21680163C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[30] = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_216801870;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_19_16();
    v13(v12);
    OUTLINED_FUNCTION_44_9();
    v11 = sub_2168017A4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2168017A4()
{
  OUTLINED_FUNCTION_33_10();

  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v0, v1);
  OUTLINED_FUNCTION_6_22();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216801870()
{
  OUTLINED_FUNCTION_33_10();

  (*(v6 + 8))(v3, v4);
  (*(v5 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  OUTLINED_FUNCTION_41_7();

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_21680194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  v5[19] = swift_task_alloc();
  v9 = sub_21700D3B4();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  sub_21700EA34();
  v5[23] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_216801BA4, v11, v10);
}

uint64_t sub_216801BA4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_46_6();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_39_5();
  if (v0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v1 + 216) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_8_15(v2);

    return sub_216A996E0(v4, v5, v6);
  }

  else
  {

    if (qword_27CAB5BD0 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CABFEF0);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (OUTLINED_FUNCTION_9_3(v10))
    {
      v11 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v11);
      OUTLINED_FUNCTION_121(&dword_216679000, v12, v13, "JSIntentDispatcher not available");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_6_22();

    OUTLINED_FUNCTION_23();

    return v14();
  }
}

uint64_t sub_216801D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216801D74()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216801DC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216801E28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216801E88()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidAppearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800F68(v5, v6, v7, v8, v9);
}

uint64_t sub_216801F4C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216802034()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidDisappearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_216800700(v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_5Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + v2[7];
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v4 + v3);

  return swift_deallocObject();
}

uint64_t sub_2168021E8()
{
  OUTLINED_FUNCTION_93();
  v1 = OUTLINED_FUNCTION_31_0();
  v2 = type metadata accessor for MarketingSheetDidAppearIntent(v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_7_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_31(v3);

  return sub_21680194C(v5, v6, v7, v8, v9);
}

unint64_t sub_2168022AC()
{
  result = qword_27CAB89C8;
  if (!qword_27CAB89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89B8);
    sub_216802338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89C8);
  }

  return result;
}

unint64_t sub_216802338()
{
  result = qword_27CAB89D0;
  if (!qword_27CAB89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89B0);
    sub_2168023F4(&qword_27CAB89D8, MEMORY[0x277CEE788]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB89D0);
  }

  return result;
}

uint64_t sub_2168023F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216802468()
{
  OUTLINED_FUNCTION_49();
  v23[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (v23 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = sub_21700ADB4();
  v12 = (v6 + *(v3 + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v14 = *MEMORY[0x277CE1050];
  sub_21700ADF4();
  OUTLINED_FUNCTION_34();
  (*(v15 + 104))(v12 + v13, v14);
  *v12 = swift_getKeyPath();
  *v6 = v11;
  sub_21680C99C();
  sub_21700A4F4();
  sub_216699778(v6, &qword_27CAB8B38);
  if (qword_280E2C3C0 != -1)
  {
    swift_once();
  }

  v16 = qword_280E2C3C8;
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = *MEMORY[0x277CDF988];
  v20 = sub_217008844();
  OUTLINED_FUNCTION_34();
  (*(v21 + 104))(v0, v19, v20);
  sub_216809AAC(&qword_280E2B340, MEMORY[0x277CDFA28]);

  if (sub_21700E494())
  {
    sub_21680D978();
    OUTLINED_FUNCTION_18_10();
    sub_21680DFBC(v22, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_216699778(v0, &qword_27CAB75D0);
    sub_216699778(v10, &qword_27CAB8C00);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2168027B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_217009EB4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for TopSearchLockupView(0);
  if (qword_280E2C400 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280E73B18);
  (*(v6 + 16))(v10, v12, v4);
  sub_2167CD8D8();
  sub_2170082A4();
  sub_2170082B4();
  v13 = v11[7];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v14 = v11[8];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v11[9];
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  v16 = (a2 + v11[10]);
  type metadata accessor for PlaybackPresenter();
  sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  *v16 = sub_217008CF4();
  v16[1] = v17;
  *a2 = a1;
  v18 = a2 + v11[11];
  *v18 = sub_216809AF0;
  *(v18 + 1) = a1;
  v18[16] = 0;
}

char *sub_216802A24()
{
  v0 = sub_2170067A4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCAE64();
  type metadata accessor for GenericItemStateObserver(0);
  swift_allocObject();
  return sub_216EBA37C(v2);
}

void sub_216802AB4()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v132 = v3;
  v136 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v131 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v7 - v6);
  v118 = sub_217006864();
  OUTLINED_FUNCTION_1();
  v112 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v11 - v10);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_70(&v103 - v18);
  v19 = type metadata accessor for TopSearchLockup();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v116 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v114 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_70(&v103 - v27);
  v105 = type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_1();
  v117 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A08);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_79_0();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A10);
  OUTLINED_FUNCTION_1();
  v113 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v36);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A18);
  OUTLINED_FUNCTION_1();
  v121 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A20);
  OUTLINED_FUNCTION_1();
  v122 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A28);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A38);
  OUTLINED_FUNCTION_1();
  v128 = v47;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v49);
  v50 = *v0;
  sub_2167B55A8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A40);
  v52 = v51[11];
  v53 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v1 + v52, 1, 1, v53);
  v135 = v2;
  sub_21680C2C0(v2, &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v55 = swift_allocObject();
  sub_21680C578(&v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54);
  v56 = v51[12];
  *(v1 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v57 = v1 + v51[13];
  *v57 = swift_getKeyPath();
  v57[40] = 0;
  v1[5] = sub_21680C060;
  v1[6] = v55;
  v1[7] = 0;
  v1[8] = 0;
  v138[3] = v136;
  v138[4] = sub_216809AAC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v138);
  sub_216CCAE64();
  v108 = v32;
  v58 = (v1 + *(v32 + 36));
  sub_2167B7D58(v138, (v58 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216809AAC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  *v58 = sub_217008CF4();
  v58[1] = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v138);
  sub_216DE8ED8();
  v60 = *(v20 + 28);
  v138[3] = MEMORY[0x277D84030];
  v138[0] = swift_allocObject();
  sub_216788294(&v23[v60], v138[0] + 16);
  sub_21680CFD0(v23, type metadata accessor for TopSearchLockup);
  OUTLINED_FUNCTION_94_0();
  v117 = v50;
  sub_216DE8ED8();
  v61 = sub_21680B98C(type metadata accessor for TopSearchLockup);
  v63 = v62;
  v64 = OUTLINED_FUNCTION_22_4();
  sub_21680CFD0(v64, v65);
  if (v63)
  {
    v66 = MEMORY[0x277D837D0];
  }

  else
  {
    v61 = 0;
    v66 = 0;
    v137[2] = 0;
  }

  v137[0] = v61;
  v137[1] = v63;
  v137[3] = v66;
  sub_21700D8D4();
  OUTLINED_FUNCTION_36_6(v137);
  OUTLINED_FUNCTION_36_6(v138);
  type metadata accessor for GenericItemStateObserver(0);
  sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  OUTLINED_FUNCTION_8();
  sub_2170081B4();
  OUTLINED_FUNCTION_94_0();
  sub_216EB9260(v67);

  v68 = v112;
  v69 = v133;
  v70 = v118;
  (*(v112 + 104))(v133, *MEMORY[0x277D2A4B0], v118);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  v71 = *(v106 + 48);
  v72 = v115;
  sub_216683A80(v58, v115, &qword_27CAB8A00);
  sub_216683A80(v69, v72 + v71, &qword_27CAB8A00);
  OUTLINED_FUNCTION_46_0(v72);
  v73 = v107;
  if (v74)
  {
    OUTLINED_FUNCTION_36_6(v69);
    OUTLINED_FUNCTION_36_6(v58);
    OUTLINED_FUNCTION_46_0(v72 + v71);
    if (v74)
    {
      sub_216699778(v72, &qword_27CAB8A00);
LABEL_15:
      v138[3] = MEMORY[0x277D839B0];
      LOBYTE(v138[0]) = 1;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_216683A80(v72, v107, &qword_27CAB8A00);
  OUTLINED_FUNCTION_46_0(v72 + v71);
  if (v74)
  {
    OUTLINED_FUNCTION_36_6(v133);
    OUTLINED_FUNCTION_36_6(v58);
    (*(v68 + 8))(v73, v70);
LABEL_12:
    sub_216699778(v72, &qword_27CAB89F8);
    goto LABEL_13;
  }

  v75 = v72 + v71;
  v76 = v104;
  (*(v68 + 32))(v104, v75, v70);
  sub_216809AAC(&qword_280E4A468, MEMORY[0x277D2A4B8]);
  v77 = sub_21700E494();
  v78 = *(v68 + 8);
  v78(v76, v70);
  sub_216699778(v133, &qword_27CAB8A00);
  v79 = OUTLINED_FUNCTION_8();
  sub_216699778(v79, v80);
  v78(v73, v70);
  sub_216699778(v72, &qword_27CAB8A00);
  if (v77)
  {
    goto LABEL_15;
  }

LABEL_13:
  memset(v138, 0, 32);
LABEL_16:
  v81 = v109;
  v82 = v134;
  sub_21700D8C4();
  v83 = *(v114 + 8);
  v84 = v116;
  v83(v82, v116);
  sub_216699778(v138, &unk_27CABF7A0);
  v85 = sub_21680C078();
  v86 = v110;
  v87 = v108;
  sub_21700A204();
  v83(v81, v84);
  v88 = sub_216699778(v1, &qword_27CAB8A08);
  v134 = &v103;
  MEMORY[0x28223BE20](v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A48);
  v138[0] = v87;
  v138[1] = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = sub_21680C194(&qword_280E3DBE8, &qword_27CAB8A48, &unk_21701AD10, sub_21680C138);
  v92 = v120;
  v93 = v119;
  sub_21700A4C4();
  v94 = (*(v113 + 8))(v86, v93);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_28_14();
  v138[0] = v93;
  v138[1] = v89;
  v138[2] = OpaqueTypeConformance2;
  v138[3] = v91;
  swift_getOpaqueTypeConformance2();
  sub_21680C194(qword_280E3AD80, &qword_27CAB8A50, &unk_217064CD0, sub_21680C20C);
  OUTLINED_FUNCTION_94_0();
  v95 = v124;
  sub_21700A4C4();
  (*(v121 + 8))(v92, v95);
  v96 = v125;
  v97 = (v125 + *(v111 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
  sub_217008C04();
  *v97 = swift_getKeyPath();
  (*(v122 + 32))(v96, OpaqueTypeConformance2, v126);
  sub_21700B3B4();
  sub_217008BB4();
  v98 = v127;
  sub_2167C5834(v96, v127, &qword_27CAB8A28);
  memcpy((v98 + *(v123 + 36)), v138, 0x70uLL);
  v99 = v130;
  sub_216CCAE64();
  OUTLINED_FUNCTION_94_0();
  sub_216E30884();
  (*(v131 + 8))(v99, v136);
  sub_216699778(v98, &qword_27CAB8A30);
  KeyPath = swift_getKeyPath();
  v101 = v132;
  (*(v128 + 32))(v132, OpaqueTypeConformance2, v129);
  v102 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A68) + 36);
  *v102 = KeyPath;
  *(v102 + 8) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216803B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for TopSearchLockupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A78);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  *v8 = sub_2170093B4();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A80);
  sub_216803F70(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A88) + 36)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C3D0 != -1)
  {
    swift_once();
  }

  v12 = sub_217008B34();
  v13 = __swift_project_value_buffer(v12, qword_280E2C3D8);
  sub_21680C2C0(v13, v10);
  *(v10 + *(v11 + 36)) = 0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A98) + 36)] = xmmword_21701AB40;
  v14 = sub_217009C84();
  v20[0] = v20;
  v15 = &v8[*(v6 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_21701AB50;
  *(v15 + 24) = xmmword_21701AB50;
  v15[40] = 0;
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  sub_21680C2C0(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21680C578(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_21680C37C();
  sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_216809AAC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  sub_21700A394();

  return sub_216699778(v8, &qword_27CAB8A78);
}

uint64_t sub_216803F70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v94 = sub_2170067A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TopSearchLockup();
  v4 = MEMORY[0x28223BE20](v83);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v83 - v6;
  v86 = type metadata accessor for TopSearchLockupView.TitleView(0);
  MEMORY[0x28223BE20](v86);
  v89 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB0);
  MEMORY[0x28223BE20](v87);
  v92 = &v83 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB8);
  v9 = MEMORY[0x28223BE20](v102);
  v91 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v83 - v11;
  v97 = sub_217008844();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AC0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v101 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v83 - v17;
  v95 = sub_217008C74();
  v18 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AC8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AD0);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AD8);
  v28 = MEMORY[0x28223BE20](v27);
  v99 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v83 - v31;
  MEMORY[0x28223BE20](v30);
  v98 = &v83 - v33;
  *v23 = sub_2170091A4();
  *(v23 + 1) = 0x4028000000000000;
  v23[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE0);
  sub_2168049E8(a1, &v23[*(v34 + 44)]);
  sub_217008C54();
  v35 = a1;
  v36 = 0.0;
  if (!sub_216806848())
  {
    type metadata accessor for TopSearchLockupView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    v36 = __src[0] + 0.0 + 30.0;
  }

  v37 = &v26[*(v24 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  (*(v18 + 32))(&v37[*(v38 + 40)], v20, v95);
  *v37 = v36;
  v37[8] = 0;
  sub_2167C5834(v23, v26, &qword_27CAB8AC8);
  v39 = sub_21700B3B4();
  v41 = v40;
  v42 = &v32[*(v27 + 36)];
  sub_21680692C(v35, v42);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AF0) + 36));
  *v43 = v39;
  v43[1] = v41;
  sub_2167C5834(v26, v32, &qword_27CAB8AD0);
  v44 = v98;
  sub_2167C5834(v32, v98, &qword_27CAB8AD8);
  v45 = type metadata accessor for TopSearchLockupView(0);
  sub_216C0C570(v45, v46, v47, v48, v49, v50, v51, v52, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  LOBYTE(v39) = sub_217008834();
  (*(v96 + 8))(v13, v97);
  if (v39)
  {
    v53 = v85;
    sub_216DE8ED8();
    v54 = v88;
    sub_216CCAE64();
    v55 = v84;
    sub_216DE8ED8();
    sub_216683A80(v55 + *(v83 + 24), __src, &qword_27CAB6DB0);
    sub_21680CFD0(v55, type metadata accessor for TopSearchLockup);
    v56 = __src[3];
    sub_216699778(__src, &qword_27CAB6DB0);
    v57 = v100;
    if (v56 == 0.0)
    {
      v58 = sub_2168063A4();
    }

    else
    {
      v58 = 0;
    }

    v61 = v89;
    sub_21680C578(v53, v89);
    v62 = v86;
    (*(v93 + 32))(v61 + *(v86 + 20), v54, v94);
    *(v61 + *(v62 + 24)) = v58 & 1;
    *(v61 + *(v62 + 28)) = 2;
    sub_21700B3C4();
    sub_217008BB4();
    v63 = v61;
    v64 = v92;
    sub_21680C578(v63, v92);
    memcpy((v64 + *(v87 + 36)), __src, 0x70uLL);
    v65 = sub_217009CA4();
    sub_217007F24();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v91;
    sub_2167C5834(v64, v91, &qword_27CAB8AB0);
    v60 = v102;
    v75 = v74 + *(v102 + 36);
    *v75 = v65;
    *(v75 + 8) = v67;
    *(v75 + 16) = v69;
    *(v75 + 24) = v71;
    *(v75 + 32) = v73;
    *(v75 + 40) = 0;
    v76 = v74;
    v77 = v90;
    sub_2167C5834(v76, v90, &qword_27CAB8AB8);
    sub_2167C5834(v77, v57, &qword_27CAB8AB8);
    v59 = 0;
  }

  else
  {
    v59 = 1;
    v60 = v102;
    v57 = v100;
  }

  __swift_storeEnumTagSinglePayload(v57, v59, 1, v60);
  v78 = v99;
  sub_216683A80(v44, v99, &qword_27CAB8AD8);
  v79 = v101;
  sub_216683A80(v57, v101, &qword_27CAB8AC0);
  v80 = v103;
  sub_216683A80(v78, v103, &qword_27CAB8AD8);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AF8);
  sub_216683A80(v79, v80 + *(v81 + 48), &qword_27CAB8AC0);
  sub_216699778(v57, &qword_27CAB8AC0);
  sub_216699778(v44, &qword_27CAB8AD8);
  sub_216699778(v79, &qword_27CAB8AC0);
  return sub_216699778(v78, &qword_27CAB8AD8);
}

uint64_t sub_2168049E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v159 = type metadata accessor for DownloadStatusIndicator();
  v3 = MEMORY[0x28223BE20](v159);
  v162 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v170 = &v129 - v5;
  v6 = sub_217008844();
  v156 = *(v6 - 8);
  v157 = v6;
  MEMORY[0x28223BE20](v6);
  v155 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for TopSearchLockupView.TitleView(0);
  MEMORY[0x28223BE20](v149);
  v151 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AB0);
  MEMORY[0x28223BE20](v150);
  v154 = &v129 - v9;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B80);
  v10 = MEMORY[0x28223BE20](v153);
  v160 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v152 = &v129 - v13;
  MEMORY[0x28223BE20](v12);
  v169 = &v129 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v15 - 8);
  v136 = &v129 - v16;
  *&v163 = type metadata accessor for TopSearchLockup();
  v17 = MEMORY[0x28223BE20](v163);
  v147 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v140 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  MEMORY[0x28223BE20](v23);
  v133 = &v129 - v25;
  v135 = type metadata accessor for ArtworkView();
  MEMORY[0x28223BE20](v135);
  *&v145 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B88);
  MEMORY[0x28223BE20](v137);
  v138 = &v129 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B90);
  MEMORY[0x28223BE20](v139);
  v143 = &v129 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B98);
  v30 = MEMORY[0x28223BE20](v29);
  v141 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v142 = &v129 - v32;
  v33 = sub_2170067A4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v146 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v132 = &v129 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v144 = &v129 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v129 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BA0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v158 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v129 - v46;
  v167 = a1;
  *&v168 = *a1;
  sub_216CCAE64();
  LODWORD(a1) = (*(v34 + 88))(v42, v33);
  v48 = *MEMORY[0x277D2A438];
  *&v164 = v34;
  v49 = *(v34 + 8);
  *&v166 = v33;
  v49(v42, v33);
  v165 = v47;
  if (a1 == v48)
  {
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v29);
    v50 = v163;
    goto LABEL_10;
  }

  v130 = v49;
  v131 = v29;
  v51 = v133;
  sub_216DE8ED8();
  v52 = v136;
  sub_216ABFA0C(v136);
  sub_21680CFD0(v51, type metadata accessor for TopSearchLockup);
  v53 = v144;
  sub_216CCAE64();
  v54 = sub_2168F9850(v53);
  v56 = v55;
  v57 = v134;
  sub_216DE8ED8();
  v58 = *(v57 + *(v163 + 56));
  sub_21680CFD0(v57, type metadata accessor for TopSearchLockup);
  if (v58 >= 2)
  {
    v59 = 99.5555556;
  }

  else
  {
    v59 = 56.0;
  }

  v60 = v52;
  v61 = v145;
  sub_2167C5834(v60, v145, &qword_27CAB6D60);
  v62 = v135;
  v63 = (v61 + *(v135 + 20));
  *v63 = v54;
  v63[1] = v56;
  v64 = v61 + *(v62 + 24);
  *v64 = v59;
  *(v64 + 8) = 0x404C000000000000;
  v65 = sub_21700B3B4();
  v135 = v66;
  v136 = v65;
  v67 = *(v167 + *(type metadata accessor for TopSearchLockupView(0) + 40));
  if (v67)
  {

    v68 = v144;
    sub_216CCAE64();
    v69 = v164;
    v70 = v132;
    v71 = v166;
    (*(v164 + 16))(v132, v68, v166);
    v72 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v67;
    (*(v69 + 32))(v73 + v72, v70, v71);
    type metadata accessor for PlaybackPresenter();
    sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

    v74 = sub_217008684();
    v76 = v75;
    v130(v68, v71);
    v77 = v138;
    sub_21680C578(v145, v138);
    v78 = v136;
    v79 = v77 + *(v137 + 36);
    *v79 = sub_21680CE98;
    *(v79 + 8) = v73;
    *(v79 + 16) = 0;
    *(v79 + 24) = v74;
    *(v79 + 32) = v76;
    v80 = v135;
    *(v79 + 40) = v78;
    *(v79 + 48) = v80;
    v81 = v140;
    sub_216DE8ED8();
    v50 = v163;
    v82 = *(v81 + *(v163 + 56));
    sub_21680CFD0(v81, type metadata accessor for TopSearchLockup);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v83 = qword_280E73AA0;
    v84 = byte_280E73AA8;
    v85 = qword_280E73AB0;
    v86 = v143;
    sub_2167C5834(v77, v143, &qword_27CAB8B88);
    v87 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BA8) + 36);
    *v87 = v82;
    v145 = xmmword_21701AB60;
    *(v87 + 8) = xmmword_21701AB60;
    *(v87 + 24) = 256;
    KeyPath = swift_getKeyPath();
    LOBYTE(v171) = v84;
    LOBYTE(v189) = 0;
    v89 = v86 + *(v139 + 36);
    *v89 = v83;
    *(v89 + 8) = v84;
    *(v89 + 9) = v188[0];
    *(v89 + 12) = *(v188 + 3);
    *(v89 + 16) = v85;
    *(v89 + 24) = v82;
    *(v89 + 25) = v179;
    *(v89 + 28) = *(&v179 + 3);
    *(v89 + 32) = v145;
    *(v89 + 48) = KeyPath;
    *(v89 + 56) = 0;

    v90 = sub_21700B3B4();
    v92 = v91;
    v93 = v131;
    v94 = v141;
    v95 = &v141[*(v131 + 36)];
    sub_216805B70(v95);
    v96 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB0) + 36));
    *v96 = v90;
    v96[1] = v92;
    sub_2167C5834(v86, v94, &qword_27CAB8B90);
    v97 = v142;
    sub_2167C5834(v94, v142, &qword_27CAB8B98);
    v47 = v165;
    sub_2167C5834(v97, v165, &qword_27CAB8B98);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v93);
LABEL_10:
    v98 = v146;
    v99 = v148;
    sub_216DE8ED8();
    sub_216CCAE64();
    v100 = v147;
    sub_216DE8ED8();
    sub_216683A80(v100 + *(v50 + 24), v188, &qword_27CAB6DB0);
    sub_21680CFD0(v100, type metadata accessor for TopSearchLockup);
    v101 = v188[3];
    sub_216699778(v188, &qword_27CAB6DB0);
    if (v101)
    {
      v102 = 0;
    }

    else
    {
      v102 = sub_2168063A4();
    }

    v103 = v151;
    sub_21680C578(v99, v151);
    v104 = v149;
    (*(v164 + 32))(v103 + *(v149 + 20), v98, v166);
    *(v103 + *(v104 + 24)) = v102 & 1;
    *(v103 + *(v104 + 28)) = 1;
    sub_21700B3C4();
    sub_217008BB4();
    v105 = v154;
    sub_21680C578(v103, v154);
    memcpy((v105 + *(v150 + 36)), v188, 0x70uLL);
    v106 = type metadata accessor for TopSearchLockupView(0);
    v107 = v155;
    sub_216C0C570(v106, v108, v109, v110, v111, v112, v113, v114, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v115 = sub_217008834();
    (*(v156 + 8))(v107, v157);
    if (v115)
    {
      v116 = 0.0;
    }

    else
    {
      v116 = 1.0;
    }

    v117 = v152;
    sub_2167C5834(v105, v152, &qword_27CAB8AB0);
    *(v117 + *(v153 + 36)) = v116;
    sub_2167C5834(v117, v169, &qword_27CAB8B80);
    type metadata accessor for GenericItemStateObserver(0);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    sub_2170081B4();
    sub_216EB9284(v170);

    *&v179 = 0x403C000000000000;
    sub_2167CD8D8();
    sub_2170082B4();
    *&v179 = 0x402C000000000000;
    sub_2170082B4();
    if (sub_216806848())
    {
      LOBYTE(v189) = 0;
      v178 = 0;
    }

    else
    {
      if (sub_216806848())
      {
        v168 = 0u;
        LODWORD(v167) = 255;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
LABEL_22:
        v118 = v158;
        sub_216683A80(v47, v158, &qword_27CAB8BA0);
        v119 = v169;
        v120 = v160;
        sub_216683A80(v169, v160, &qword_27CAB8B80);
        v121 = v170;
        v122 = v162;
        sub_21680C2C0(v170, v162);
        v123 = v161;
        sub_216683A80(v118, v161, &qword_27CAB8BA0);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BC0);
        sub_216683A80(v120, v123 + v124[12], &qword_27CAB8B80);
        sub_21680C2C0(v122, v123 + v124[16]);
        v125 = v123 + v124[20];
        v126 = v166;
        *v125 = v168;
        *(v125 + 16) = v126;
        v127 = v163;
        *(v125 + 32) = v164;
        *(v125 + 48) = v127;
        *(v125 + 64) = v167;
        sub_21680CFD0(v121, type metadata accessor for DownloadStatusIndicator);
        sub_216699778(v119, &qword_27CAB8B80);
        sub_216699778(v165, &qword_27CAB8BA0);
        sub_21680CFD0(v122, type metadata accessor for DownloadStatusIndicator);
        sub_216699778(v120, &qword_27CAB8B80);
        return sub_216699778(v118, &qword_27CAB8BA0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      sub_2170082C4();
      sub_21700B3B4();
      sub_2170083C4();
      v186 = 1;
      v185 = v190;
      v184 = v192;
      v187 = 1;
      v171 = 0;
      v172 = 1;
      v173 = v189;
      v174 = v190;
      v175 = v191;
      v176 = v192;
      v177 = v193;
      v178 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8);
    sub_21680CEF8();
    sub_21680CF4C();
    sub_217009554();
    v166 = v180;
    v168 = v179;
    v163 = v182;
    v164 = v181;
    LODWORD(v167) = v183;
    goto LABEL_22;
  }

  type metadata accessor for PlaybackPresenter();
  sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216805B70@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BC8);
  MEMORY[0x28223BE20](v36);
  v34 = (&v32 - v1);
  v2 = sub_217006864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  type metadata accessor for TopSearchLockupView(0);
  type metadata accessor for GenericItemStateObserver(0);
  sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  v17 = v3;
  sub_2170081B4();
  sub_216EB9260(v16);

  (*(v3 + 104))(v14, *MEMORY[0x277D2A4B0], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_216683A80(v16, v8, &qword_27CAB8A00);
  sub_216683A80(v14, &v8[v18], &qword_27CAB8A00);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_216699778(v14, &qword_27CAB8A00);
    sub_216699778(v16, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      sub_216699778(v8, &qword_27CAB8A00);
      v19 = v36;
LABEL_8:
      v27 = sub_2170091A4();
      v28 = v34;
      *v34 = v27;
      v28[1] = 0;
      *(v28 + 16) = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD0);
      sub_2168060E4(v28 + *(v29 + 44));
      *(v28 + *(v19 + 36)) = xmmword_21701AB70;
      v30 = v28;
      v22 = v37;
      sub_2167C5834(v30, v37, &qword_27CAB8BC8);
      v21 = 0;
      return __swift_storeEnumTagSinglePayload(v22, v21, 1, v19);
    }
  }

  else
  {
    v20 = v35;
    sub_216683A80(v8, v35, &qword_27CAB8A00);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) != 1)
    {
      v23 = &v8[v18];
      v24 = v33;
      (*(v17 + 32))(v33, v23, v2);
      sub_216809AAC(&qword_280E4A468, MEMORY[0x277D2A4B8]);
      v25 = sub_21700E494();
      v26 = *(v17 + 8);
      v26(v24, v2);
      sub_216699778(v14, &qword_27CAB8A00);
      sub_216699778(v16, &qword_27CAB8A00);
      v26(v20, v2);
      sub_216699778(v8, &qword_27CAB8A00);
      v19 = v36;
      if ((v25 & 1) == 0)
      {
        v21 = 1;
        v22 = v37;
        return __swift_storeEnumTagSinglePayload(v22, v21, 1, v19);
      }

      goto LABEL_8;
    }

    sub_216699778(v14, &qword_27CAB8A00);
    sub_216699778(v16, &qword_27CAB8A00);
    (*(v17 + 8))(v20, v2);
  }

  sub_216699778(v8, &qword_27CAB89F8);
  v21 = 1;
  v19 = v36;
  v22 = v37;
  return __swift_storeEnumTagSinglePayload(v22, v21, 1, v19);
}

uint64_t sub_2168060E4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BD8);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v25 - v9);
  v11 = sub_21700ADB4();
  sub_217009DE4();
  v12 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
  v13 = sub_217009DF4();
  sub_216699778(v3, &qword_27CAB81D0);
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE0) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v17 = *MEMORY[0x277CE1058];
  v18 = sub_21700ADF4();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  v19 = sub_21700AC54();
  v20 = swift_getKeyPath();
  v21 = (v10 + *(v5 + 44));
  *v21 = v20;
  v21[1] = v19;
  sub_216683A80(v10, v8, &qword_27CAB8BD8);
  v22 = v26;
  sub_216683A80(v8, v26, &qword_27CAB8BD8);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BE8) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_216699778(v10, &qword_27CAB8BD8);
  return sub_216699778(v8, &qword_27CAB8BD8);
}

uint64_t sub_2168063A4()
{
  v1 = sub_21700BA94();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2170067A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21700BAB4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_216CCAE64();
  v17 = *(v0 + *(type metadata accessor for TopSearchLockupView(0) + 40));
  if (!v17)
  {
    type metadata accessor for PlaybackPresenter();
    sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_2167B7D58(v17 + 16, v29);
  sub_216DDF0DC(v29, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  (*(v4 + 8))(v6, v3);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v19 = *(v11 + 32);
    v19(v16, v9, v10);
    v19(v14, v16, v10);
    v20 = (*(v11 + 88))(v14, v10);
    if (v20 == *MEMORY[0x277D2AE90])
    {
      (*(v11 + 96))(v14, v10);
      v22 = v26;
      v21 = v27;
      v23 = v28;
      (*(v27 + 32))(v26, v14, v28);
      v24 = (*(v21 + 88))(v22, v23);
      if (v24 != *MEMORY[0x277D2AE98] && v24 != *MEMORY[0x277D2AED0])
      {
        (*(v21 + 8))(v22, v23);
        return 1;
      }
    }

    else if (v20 != *MEMORY[0x277D2AEE0])
    {
      (*(v11 + 8))(v14, v10);
      return 1;
    }

    return 0;
  }

  sub_216699778(v9, &qword_27CAB7090);
  return 1;
}

BOOL sub_216806848()
{
  v0 = type metadata accessor for TopSearchLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216DE8ED8();
  sub_216683A80(&v3[*(v1 + 32)], v7, &qword_27CAB6DB0);
  sub_21680CFD0(v3, type metadata accessor for TopSearchLockup);
  v4 = v8 != 0;
  sub_216699778(v7, &qword_27CAB6DB0);
  return v4;
}

uint64_t sub_21680692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B00);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  if (sub_216806848())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    *v6 = sub_2170091A4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B08);
    sub_216806A60(a1, &v6[*(v8 + 44)]);
    *&v6[*(v4 + 36)] = xmmword_21701AB80;
    sub_2167C5834(v6, a2, &qword_27CAB8B00);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

uint64_t sub_216806A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for TopSearchLockupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B10);
  v14 = MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v36 - v16);
  sub_216CCAE64();
  v18 = sub_217006784();
  v37 = v19;
  v38 = v18;
  (*(v11 + 8))(v13, v10);
  sub_21680C2C0(a1, v9);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_21680C578(v9, v21 + v20);
  sub_21680C2C0(a1, v7);
  v22 = swift_allocObject();
  sub_21680C578(v7, v22 + v20);
  v23 = v37;
  *v17 = v38;
  v17[1] = v23;
  v17[2] = sub_21680C5F4;
  v17[3] = v21;
  v17[4] = sub_21680C658;
  v17[5] = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B18);
  v25 = *(v24 + 60);
  *(v17 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v26 = v17 + *(v24 + 64);
  *v26 = swift_getKeyPath();
  v26[40] = 0;
  if (qword_280E2C380 != -1)
  {
    swift_once();
  }

  v27 = sub_217008C14();
  v28 = __swift_project_value_buffer(v27, qword_280E2C388);
  KeyPath = swift_getKeyPath();
  v30 = (v17 + *(v39 + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60);
  (*(*(v27 - 8) + 16))(v30 + *(v31 + 28), v28, v27);
  *v30 = KeyPath;
  v32 = v40;
  sub_216683A80(v17, v40, &qword_27CAB8B10);
  v33 = v41;
  *v41 = 0;
  *(v33 + 8) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B20);
  sub_216683A80(v32, v33 + *(v34 + 48), &qword_27CAB8B10);
  sub_216699778(v17, &qword_27CAB8B10);
  return sub_216699778(v32, &qword_27CAB8B10);
}

uint64_t sub_216806EDC@<X0>(void *a1@<X8>)
{
  v65 = a1;
  v54 = sub_21700D704();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700D284();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v55);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for TopSearchLockup();
  v9 = (v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = type metadata accessor for MenuConfiguration(0);
  v61 = *(v18 - 1);
  v19 = MEMORY[0x28223BE20](v18);
  v64 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v62 = v24;
  MEMORY[0x28223BE20](v21);
  v59 = &v49 - v25;
  v60 = sub_2170067A4();
  v26 = *(v60 - 8);
  v27 = MEMORY[0x28223BE20](v60);
  v57 = v28;
  v58 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v56 = &v49 - v29;
  sub_216CCAE64();
  sub_216DE8ED8();
  v30 = &v17[v9[20]];
  v63 = v7;
  sub_216683A80(v30, v7, &qword_27CAB6A00);
  sub_21680CFD0(v17, type metadata accessor for TopSearchLockup);
  sub_216DE8ED8();
  LOBYTE(v17) = v15[v9[18]];
  sub_21680CFD0(v15, type metadata accessor for TopSearchLockup);
  *v4 = v17;
  swift_storeEnumTagMultiPayload();
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  sub_216DE8ED8();
  sub_216683A80(&v12[v9[8]], v66, &qword_27CAB6DB0);
  sub_21680CFD0(v12, type metadata accessor for TopSearchLockup);
  v31 = v67;
  if (v67)
  {
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v32 = v49;
    sub_21700CE54();
    v33 = v51;
    sub_21700D274();
    v34 = sub_21700D6C4();
    v31 = v35;
    (*(v53 + 8))(v33, v54);
    (*(v50 + 8))(v32, v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    sub_216699778(v66, &qword_27CAB6DB0);
    v34 = 0;
  }

  v36 = v63;
  sub_216683A80(v63, v23, &qword_27CAB6A00);
  sub_21680C2C0(v4, &v23[v18[5]]);
  v37 = &v23[v18[6]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v23[v18[7]] = 0;
  sub_216683A80(v68, &v23[v18[8]], &qword_27CAB6DB0);
  if (!v31)
  {
    v34 = 0;
    v31 = 0xE000000000000000;
  }

  sub_216699778(v68, &qword_27CAB6DB0);
  sub_21680CFD0(v4, type metadata accessor for MenuContext);
  sub_216699778(v36, &qword_27CAB6A00);
  v38 = &v23[v18[9]];
  *v38 = v34;
  v38[1] = v31;
  v39 = v59;
  sub_21680C578(v23, v59);
  v40 = *(v26 + 32);
  v41 = v58;
  v42 = v60;
  v40(v58, v56, v60);
  v43 = v64;
  sub_21680C578(v39, v64);
  v44 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v45 = (v57 + *(v61 + 80) + v44) & ~*(v61 + 80);
  v46 = swift_allocObject();
  v40((v46 + v44), v41, v42);
  result = sub_21680C578(v43, v46 + v45);
  v48 = v65;
  *v65 = sub_21680E000;
  v48[1] = v46;
  return result;
}

uint64_t sub_216807630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v64[1] = a2;
  v64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v64[0]);
  v3 = v64 - v2;
  v4 = sub_217009574();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B28);
  MEMORY[0x28223BE20](v7);
  v9 = (v64 - v8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B30);
  MEMORY[0x28223BE20](v68);
  v11 = v64 - v10;
  v12 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v13 = sub_21700ADF4();
  v14 = __swift_project_value_buffer(v13, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v16 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38) + 36));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
  (*(*(v13 - 8) + 16))(v16 + *(v17 + 28), v14, v13);
  *v16 = KeyPath;
  *v9 = v12;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v18 = qword_280E73B48;
  v19 = swift_getKeyPath();
  v20 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40) + 36));
  *v20 = v19;
  v20[1] = v18;
  v21 = qword_280E2C3A8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280E2C3B0;
  v23 = swift_getKeyPath();
  v24 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B48) + 36));
  *v24 = v23;
  v24[1] = v22;
  type metadata accessor for TopSearchLockupView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  v25 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B50) + 36));
  v26 = v70;
  *v25 = v69;
  v25[1] = v26;
  v25[2] = v71;
  v27 = v9 + *(v7 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B58);
  sub_217008C54();
  *v27 = 0;
  sub_217008C84();
  sub_21680C6E8();
  sub_216809AAC(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v28 = v66;
  sub_21700A3E4();
  (*(v65 + 8))(v6, v28);
  sub_216699778(v9, &qword_27CAB8B28);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B60) + 36)] = 256;
  LOBYTE(v28) = sub_217009CB4();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B68) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(v28) = sub_217009CD4();
  sub_217007F24();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B70) + 36)];
  *v46 = v28;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v28) = sub_217009C94();
  sub_2170082C4();
  sub_217007F24();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B78) + 36)];
  *v55 = v28;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  LOBYTE(v28) = sub_217009CA4();
  sub_2170082C4();
  sub_217007F24();
  v56 = &v11[*(v68 + 36)];
  *v56 = v28;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  v61 = *MEMORY[0x277CDF988];
  v62 = sub_217008844();
  (*(*(v62 - 8) + 104))(v3, v61, v62);
  sub_216809AAC(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_21680CA54();
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_216699778(v3, &qword_27CAB75D0);
    return sub_216699778(v11, &qword_27CAB8B30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216807DC4@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v35 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TopSearchLockup();
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MenuConfiguration(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v32 = sub_2170067A4();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_216CCAE64();
  sub_216DE8ED8();
  sub_216DE8ED8();
  v20 = v7[*(v4 + 72)];
  sub_21680CFD0(v7, type metadata accessor for TopSearchLockup);
  *v2 = v20;
  swift_storeEnumTagMultiPayload();
  sub_2168A63BC();
  sub_21680CFD0(v2, type metadata accessor for MenuContext);
  sub_21680CFD0(v9, type metadata accessor for TopSearchLockup);
  v21 = *(v15 + 32);
  v22 = v31;
  v23 = v19;
  v24 = v32;
  v21(v31, v23, v32);
  v25 = v33;
  sub_21680C578(v14, v33);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + *(v34 + 80) + v26) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v21((v28 + v26), v22, v24);
  result = sub_21680C578(v25, v28 + v27);
  v30 = v36;
  *v36 = sub_21680C5D0;
  v30[1] = v28;
  return result;
}

uint64_t sub_216808150()
{
  v0 = type metadata accessor for TopSearchLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_2170067A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216CCAE64();
  sub_216DE8ED8();
  sub_216683A80(&v3[*(v1 + 32)], v9, &qword_27CAB6DB0);
  sub_21680CFD0(v3, type metadata accessor for TopSearchLockup);
  return sub_2167BA710(v6, v9);
}

uint64_t sub_216808278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_2170075A4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopSearchLockup();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8ED8();
  sub_216683A80(&v12[*(v10 + 32)], &v36, &qword_27CAB6DB0);
  sub_21680CFD0(v12, type metadata accessor for TopSearchLockup);
  sub_216CCAE64();
  type metadata accessor for TopSearchLockupView(0);
  v13 = sub_216C0C534(&v31);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_216DE8ED8();
  v21 = v12[*(v10 + 72)];
  sub_21680CFD0(v12, type metadata accessor for TopSearchLockup);
  *v2 = v21;
  v22 = type metadata accessor for MenuContext(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v22);
  sub_2167B9BDC(&v36, v8, &v31, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_216699778(v2, &qword_27CAB6DE8);
  (*(v29 + 8))(v5, v30);
  sub_216699778(&v31, &qword_27CAB7310);
  (*(v27 + 8))(v8, v28);
  return sub_216699778(&v36, &qword_27CAB6DB0);
}

void *sub_2168085A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v19[1] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v20 = a1;
  sub_216CCAE64();
  v10 = (*(v5 + 88))(v9, v4);
  v11 = *MEMORY[0x277D2A3B8];
  v12 = *MEMORY[0x277D2A3F8];
  v13 = *MEMORY[0x277D2A3D8];
  v14 = *MEMORY[0x277D2A3E0];
  result = (*(v5 + 8))(v9, v4);
  if (v10 == v11 || v10 == v12 || v10 == v13 || v10 == v14)
  {
    sub_216CCAE64();
    if (*(v20 + *(type metadata accessor for TopSearchLockupView(0) + 40)))
    {

      sub_216ADF378();
      return memcpy(a2, __src, 0x78uLL);
    }

    else
    {
      type metadata accessor for PlaybackPresenter();
      sub_216809AAC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
      result = sub_217008CD4();
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    a2[14] = 0;
  }

  return result;
}

uint64_t sub_2168087E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A70);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v26 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A58);
  MEMORY[0x28223BE20](v30);
  v27 = &v26 - v7;
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v26 = *a1;
  sub_216CCAE64();
  v13 = (*(v9 + 88))(v12, v8);
  v14 = *MEMORY[0x277D2A3B8];
  v15 = *MEMORY[0x277D2A3F8];
  v16 = *MEMORY[0x277D2A3D8];
  v17 = *MEMORY[0x277D2A3E0];
  (*(v9 + 8))(v12, v8);
  if (v13 == v14 || v13 == v15 || v13 == v16 || v13 == v17)
  {
    type metadata accessor for TopSearchLockupView(0);
    type metadata accessor for GenericItemStateObserver(0);
    sub_216809AAC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
    sub_2170081B4();
    sub_216EB92A8(v28);

    sub_2170081B4();
    sub_216EB9284(v29);

    sub_216CCAE64();
    v21 = v27;
    sub_216ADFC6C();
    v22 = v31;
    sub_2167C5834(v21, v31, &qword_27CAB8A58);
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 1;
    v24 = v31;
  }

  return __swift_storeEnumTagSinglePayload(v24, v23, 1, v30);
}

uint64_t sub_216808B74@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C10);
  return sub_216808BC8(v1, a1 + *(v3 + 44));
}

uint64_t sub_216808BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C20);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = type metadata accessor for TopSearchLockup();
  v17 = v16;
  v18 = *(v16 + 28);
  v85 = a2;
  v86 = a1;
  v19 = (a1 + v18);
  v20 = v19[1];
  v21 = 0x1FBBB1000;
  v87 = v15;
  if (v20)
  {
    v105 = v16;
    v22 = *v19;
    KeyPath = swift_getKeyPath();
    sub_21700DF14();
    v24 = sub_217009E64();
    v25 = swift_getKeyPath();
    LOBYTE(v113[0]) = 0;
    LOBYTE(v107[0]) = 0;
    v106[0] = v22;
    v106[1] = v20;
    LOBYTE(v106[2]) = 0;
    v106[3] = MEMORY[0x277D84F90];
    v106[4] = KeyPath;
    v106[5] = 1;
    LOBYTE(v106[6]) = 0;
    v106[7] = v25;
    v106[8] = v24;
    sub_217009DE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C50);
    sub_21680DB9C();
    sub_21700A304();
    memcpy(__dst, v106, 0x48uLL);
    sub_216699778(__dst, &qword_27CAB8C50);
    if (qword_27CAB58F8 != -1)
    {
      swift_once();
    }

    v21 = &unk_278226000;
    if (*(v86 + *(type metadata accessor for TopSearchLockupView.TitleView(0) + 24)) == 1)
    {
      v26 = [objc_opt_self() tertiaryLabelColor];
      v27 = sub_21700AC44();
    }

    else
    {
      v27 = qword_27CAB89E0;
    }

    v15 = v87;
    v17 = v105;
    (*(v5 + 16))(v13, v7, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C28);
    *&v13[*(v31 + 36)] = v27;
    (*(v5 + 8))(v7, v4);
    v29 = v13;
    v30 = 0;
    v28 = v31;
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C28);
    v29 = v13;
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v32 = v21;
  sub_2167C5834(v13, v15, &qword_27CAB8C20);
  v33 = v86;
  v34 = (v86 + v17[8]);
  v35 = v34[1];
  if (v35)
  {
    v105 = *v34;
    v36 = v35;
  }

  else
  {
    type metadata accessor for TopSearchLockupView.TitleView(0);
    v105 = sub_216C74700();
    v36 = v37;
  }

  v38 = *(v33 + v17[11]);
  sub_21700DF14();
  v39 = sub_217009194();
  type metadata accessor for ExplicitBadgingPresenter();
  sub_216809AAC(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v41 = sub_217008CF4();
  if (v36)
  {
    v42 = v36;
    v43 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v43 = v105 & 0xFFFFFFFFFFFFLL;
    }

    v44 = v32;
    if (v43)
    {
      v106[0] = v41;
      v106[1] = v40;
      v106[2] = v105;
      v106[3] = v42;
      LOWORD(v106[4]) = v38;
      *(&v106[4] + 2) = v126;
      HIWORD(v106[4]) = v127;
      v106[5] = 0;
      LOBYTE(v106[6]) = 0;
      *(&v106[6] + 1) = *v125;
      HIDWORD(v106[6]) = *&v125[3];
      v106[7] = v39;
      v98 = v106[6];
      v99 = v106[4];
      v100 = v40;
      v101 = v41;
      __dst[0] = v41;
      __dst[1] = v40;
      __dst[2] = v105;
      __dst[3] = v42;
      v103 = v42;
      LOWORD(__dst[4]) = v38;
      HIWORD(__dst[4]) = v127;
      *(&__dst[4] + 2) = v126;
      __dst[5] = 0;
      LOBYTE(__dst[6]) = 0;
      HIDWORD(__dst[6]) = *&v125[3];
      *(&__dst[6] + 1) = *v125;
      __dst[7] = v39;
      sub_21680DAEC(v106, v113);
      sub_21680DB48(__dst);
    }

    else
    {

      v100 = 0;
      v101 = 0;
      v105 = 0;
      v103 = 0;
      v98 = 0;
      v99 = 0;
      v39 = 0;
    }
  }

  else
  {

    v100 = 0;
    v101 = 0;
    v105 = 0;
    v103 = 0;
    v98 = 0;
    v99 = 0;
    v39 = 0;
    v44 = v32;
  }

  v45 = v85;
  v102 = v39;
  v46 = type metadata accessor for TopSearchLockupView.TitleView(0);
  v84 = *(v33 + *(v46 + 28));
  v97 = swift_getKeyPath();
  v128 = 0;
  if (qword_280E2C338 != -1)
  {
    swift_once();
  }

  v47 = qword_280E2C340;
  v95 = swift_getKeyPath();
  v96 = v47;
  v48 = qword_280E2C300;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = *(v33 + *(v46 + 24));
  if (v49)
  {
    v50 = [objc_opt_self() (v44 + 1802)];
    v94 = sub_21700AC44();
  }

  else
  {
    v94 = qword_280E2C308;
  }

  v51 = v44;
  v52 = (v33 + v17[9]);
  v53 = v52[1];
  if (v53)
  {
    v89 = *v52;
    v92 = MEMORY[0x277D84F90];
  }

  else
  {
    v89 = 0;
    v92 = 0;
  }

  v54 = v15;
  v91 = swift_getKeyPath();
  v55 = qword_280E2C320;
  v93 = v53;
  sub_21700DF14();
  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_280E2C328;
  v90 = swift_getKeyPath();
  v124 = 0;
  v57 = qword_280E2C2E8;
  v83 = v56;

  if (v57 != -1)
  {
    swift_once();
    if (v49)
    {
      goto LABEL_33;
    }

LABEL_35:
    v88 = qword_280E2C2F0;

    goto LABEL_36;
  }

  if (!v49)
  {
    goto LABEL_35;
  }

LABEL_33:
  v58 = [objc_opt_self() (v51 + 1802)];
  v88 = sub_21700AC44();
LABEL_36:
  v59 = (v33 + v17[10]);
  v60 = *v59;
  v61 = v59[1];
  sub_21700DF14();
  v62 = sub_216809640(v60, v61, v49);
  v64 = v63;
  v86 = v65;
  v82 = v66;
  v81 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  LOBYTE(__dst[0]) = 0;
  v67 = v104;
  sub_216683A80(v54, v104, &qword_27CAB8C20);
  sub_216683A80(v67, v45, &qword_27CAB8C20);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C30);
  v69 = v68[12];
  v106[0] = v101;
  v106[1] = v100;
  v106[2] = v105;
  v106[3] = v103;
  v106[4] = v99;
  v106[5] = 0;
  v106[6] = v98;
  v106[7] = v102;
  v70 = v84;
  v106[8] = v97;
  v106[9] = v84;
  LOBYTE(v106[10]) = 0;
  *(&v106[10] + 1) = v129[0];
  HIDWORD(v106[10]) = *(v129 + 3);
  v106[11] = v95;
  v106[12] = v96;
  v106[13] = v94;
  memcpy((v45 + v69), v106, 0x70uLL);
  v71 = v68[16];
  v72 = v45;
  v107[0] = v89;
  v107[1] = v93;
  v107[2] = 0;
  v107[3] = v92;
  v107[4] = v91;
  v107[5] = v70;
  LOBYTE(v107[6]) = 0;
  v73 = v83;
  v107[7] = v90;
  v107[8] = v83;
  v107[9] = v88;
  memcpy((v45 + v71), v107, 0x50uLL);
  v74 = v68[20];
  v108[0] = v62;
  v108[1] = v64;
  v75 = v86;
  v76 = v81;
  v77 = v82;
  v108[2] = v86;
  v108[3] = v82;
  v108[4] = v81;
  v108[5] = 1;
  LOBYTE(v108[6]) = 0;
  v78 = v80;
  v108[7] = v80;
  v108[8] = v73;
  memcpy((v72 + v74), v108, 0x48uLL);

  sub_216683A80(v106, __dst, &qword_27CAB8C38);
  sub_216683A80(v107, __dst, &qword_27CAB8C40);
  sub_216683A80(v108, __dst, &qword_27CAB8C48);
  sub_216699778(v87, &qword_27CAB8C20);
  v109[0] = v62;
  v109[1] = v64;
  v109[2] = v75;
  v109[3] = v77;
  v109[4] = v76;
  v109[5] = 1;
  v110 = 0;
  v111 = v78;
  v112 = v73;
  sub_216699778(v109, &qword_27CAB8C48);
  v113[0] = v89;
  v113[1] = v93;
  v113[2] = 0;
  v113[3] = v92;
  v113[4] = v91;
  v113[5] = v70;
  v114 = 0;
  v115 = v90;
  v116 = v73;
  v117 = v88;
  sub_216699778(v113, &qword_27CAB8C40);
  __dst[0] = v101;
  __dst[1] = v100;
  __dst[2] = v105;
  __dst[3] = v103;
  __dst[4] = v99;
  __dst[5] = 0;
  __dst[6] = v98;
  __dst[7] = v102;
  __dst[8] = v97;
  __dst[9] = v70;
  v119 = 0;
  *v120 = v129[0];
  *&v120[3] = *(v129 + 3);
  v121 = v95;
  v122 = v96;
  v123 = v94;
  sub_216699778(__dst, &qword_27CAB8C38);
  return sub_216699778(v104, &qword_27CAB8C20);
}

uint64_t sub_216809640(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    sub_21680A15C();
    v4 = v3;

    sub_217009264();
    LOWORD(v38) = 256;
    v37 = 0;
    v5 = sub_21700A154();
    v7 = v6;
    v9 = v8;
    v43 = *(v4 + 16);
    sub_216777114(v5, v6, v8 & 1);
    result = sub_21700DF14();
    v11 = 0;
    v44 = v4;
    v12 = (v4 + 48);
    v40 = v7;
    v41 = v5;
    v13 = v5;
    v14 = v7;
    v39 = v9;
    for (i = v9; ; i = v36)
    {
      if (v43 == v11)
      {

        sub_21678817C(v41, v40, v39 & 1);

        return v13;
      }

      if (v11 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      v47 = i;
      v48 = v12;
      v49 = v11;
      v16 = *v12;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v17 = sub_21700A174();
      v19 = v18;
      v21 = v20;
      if (v16 == 1)
      {
        break;
      }

      if (qword_280E2C310 != -1)
      {
        goto LABEL_7;
      }

LABEL_9:
      v51 = v13;

      v50 = v14;
      if (a3)
      {
        v22 = [objc_opt_self() tertiaryLabelColor];
        sub_21700AC44();
      }

      else
      {
      }

      v23 = sub_21700A044();
      v25 = v24;
      v27 = v26;
      sub_21678817C(v17, v19, v21 & 1);

      v28 = sub_21700A084();
      v30 = v29;
      v32 = v31;
      sub_21678817C(v23, v25, v27 & 1);

      v33 = sub_21700A064();
      v45 = v34;
      v46 = v33;
      v36 = v35;

      sub_21678817C(v28, v30, v32 & 1);

      sub_21678817C(v51, v50, v47 & 1);

      v12 = v48 + 24;
      v11 = v49 + 1;
      v14 = v45;
      v13 = v46;
    }

    if (qword_27CAB5908 == -1)
    {
      goto LABEL_9;
    }

LABEL_7:
    swift_once();
    goto LABEL_9;
  }

  return 0;
}