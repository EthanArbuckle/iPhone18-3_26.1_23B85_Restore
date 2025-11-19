id sub_1D4F42FA4(id a1, uint64_t a2)
{
  v59 = a2;
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v52 - v15;
  sub_1D560D7A8();
  v17 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1D4E7661C(v16, &unk_1EC7F1970, &qword_1D561F4A0);
    v62 = 0;
  }

  else
  {
    v62 = sub_1D517FFC8();
    OUTLINED_FUNCTION_24_0(v17);
    (*(v18 + 8))(v16, v17);
  }

  sub_1D560D808();
  if (v19)
  {
    v61 = sub_1D5614D38();
  }

  else
  {
    v61 = 0;
  }

  sub_1D560D688();
  if (v20)
  {
    v58 = sub_1D5614D38();
  }

  else
  {
    v58 = 0;
  }

  sub_1D560D768();
  if (v21)
  {
    v57 = sub_1D5614D38();
  }

  else
  {
    v57 = 0;
  }

  sub_1D560D648();
  if (v22)
  {
    v56 = sub_1D5614D38();
  }

  else
  {
    v56 = 0;
  }

  sub_1D560D628();
  if (v23)
  {
    v55 = sub_1D5614D38();
  }

  else
  {
    v55 = 0;
  }

  sub_1D560D568();
  if (v24)
  {
    v54 = sub_1D5614D38();
  }

  else
  {
    v54 = 0;
  }

  sub_1D560D5C8();
  v25 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v25) == 1)
  {
    sub_1D4E7661C(v10, &unk_1EC7EBF20, &unk_1D561F530);
    v53 = 0;
  }

  else
  {
    v53 = sub_1D5115F20();
    OUTLINED_FUNCTION_24_0(v25);
    (*(v26 + 8))(v10, v25);
  }

  sub_1D560D5A8();
  if (v27)
  {
    v28 = sub_1D5614D38();
  }

  else
  {
    v28 = 0;
  }

  sub_1D560D6C8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v25) == 1)
  {
    sub_1D4E7661C(v8, &unk_1EC7EBF20, &unk_1D561F530);
    v29 = 0;
  }

  else
  {
    v29 = sub_1D5115F20();
    OUTLINED_FUNCTION_24_0(v25);
    (*(v30 + 8))(v8, v25);
  }

  sub_1D560D728();
  if (v31)
  {
    v32 = sub_1D5614D38();
  }

  else
  {
    v32 = 0;
  }

  sub_1D560D548();
  if (v33)
  {
    v34 = sub_1D5614D38();
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_opt_self();
  v36 = sub_1D560D7C8();
  sub_1D4F40C50(v36);
  v38 = v37;

  v39 = sub_1D51594D4();
  v51 = v35;
  v50 = v38;
  *&v49 = v28;
  *(&v49 + 1) = v29;
  v40 = v28;
  v42 = v57;
  v41 = v58;
  v43 = v56;
  v44 = v29;
  v46 = v54;
  v45 = v55;
  v47 = v53;
  v60 = sub_1D501AE58(v62, v61, v58, v57, v56, v55, v54, v53, v49, v32, v34, v50, v60, v39, v51);

  return v60;
}

uint64_t sub_1D4F43460(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_1D560D4C8();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560F148();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPreferredID();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v48 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v48 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v48 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF68, &unk_1D561F5E0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v48 - v29;
  v31 = (&v48 + *(v28 + 56) - v29);
  sub_1D4F43EF8(a1, &v48 - v29);
  sub_1D4F43EF8(v53, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F43EF8(v30, v23);
      v33 = *v23;
      v32 = v23[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2u:
      sub_1D4F43EF8(v30, v20);
      v35 = *v20;
      v34 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      if (v35 != *v31 || v34 != v31[1])
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 3u:
      sub_1D4F43EF8(v30, v17);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = v51;
        v37 = v52;
        v39 = v48;
        (*(v51 + 32))(v48, v31, v52);
        v40 = sub_1D560D498();
        v41 = *(v38 + 8);
        v41(v39, v37);
        v41(v17, v37);
        goto LABEL_28;
      }

      (*(v51 + 8))(v17, v52);
      goto LABEL_25;
    case 4u:
      sub_1D4F43EF8(v30, v14);
      v33 = *v14;
      v32 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_21:

        goto LABEL_25;
      }

LABEL_15:
      if (v33 == *v31 && v32 == v31[1])
      {
LABEL_22:
      }

      else
      {
LABEL_19:
        v43 = sub_1D5616168();

        if ((v43 & 1) == 0)
        {
          sub_1D4F43F5C(v30);
          goto LABEL_26;
        }
      }

      sub_1D4F43F5C(v30);
      v40 = 1;
      break;
    default:
      sub_1D4F43EF8(v30, v25);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v49 + 8))(v25, v50);
LABEL_25:
        sub_1D4E7661C(v30, &qword_1EC7EBF68, &unk_1D561F5E0);
LABEL_26:
        v40 = 0;
      }

      else
      {
        v45 = v49;
        v44 = v50;
        (*(v49 + 32))(v9, v31, v50);
        v40 = sub_1D560F0E8();
        v46 = *(v45 + 8);
        v46(v9, v44);
        v46(v25, v44);
LABEL_28:
        sub_1D4F43F5C(v30);
      }

      break;
  }

  return v40 & 1;
}

uint64_t sub_1D4F43954()
{
  v1 = sub_1D560D4C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560F148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicPreferredID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4F43EF8(v0, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = *v14;
      v22 = v14[1];
      v18 = 1;
      goto LABEL_7;
    case 2u:
      v19 = *v14;
      v20 = v14[1];
      v18 = 2;
      goto LABEL_7;
    case 3u:
      (*(v2 + 32))(v5, v14, v1);
      MEMORY[0x1DA6EC0D0](3);
      sub_1D4F43FB8(&qword_1EC7EBF70, MEMORY[0x1E6974F48]);
      sub_1D5614CB8();
      return (*(v2 + 8))(v5, v1);
    case 4u:
      v16 = *v14;
      v17 = v14[1];
      v18 = 4;
LABEL_7:
      MEMORY[0x1DA6EC0D0](v18);
      sub_1D5614E28();

      break;
    default:
      (*(v7 + 32))(v10, v14, v6);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D4F43FB8(&qword_1EC7EBF78, MEMORY[0x1E69755E8]);
      sub_1D5614CB8();
      result = (*(v7 + 8))(v10, v6);
      break;
  }

  return result;
}

uint64_t sub_1D4F43C68()
{
  sub_1D56162D8();
  sub_1D4F43954();
  return sub_1D5616328();
}

uint64_t sub_1D4F43CB4()
{
  sub_1D56162D8();
  sub_1D4F43954();
  return sub_1D5616328();
}

uint64_t type metadata accessor for MusicPreferredID()
{
  result = qword_1EDD5C408;
  if (!qword_1EDD5C408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F43D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F43DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF40, &unk_1D561F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F43E30()
{
  result = sub_1D560F148();
  if (v1 <= 0x3F)
  {
    result = sub_1D560D4C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4F43EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPreferredID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F43F5C(uint64_t a1)
{
  v2 = type metadata accessor for MusicPreferredID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F43FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_28_12()
{
  v4 = *(v2 - 120);

  return sub_1D4E7661C(v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_31_14()
{
  result = *(v0 - 256);
  v3 = *(v1 - 304);
  return result;
}

void OUTLINED_FUNCTION_34_11()
{
}

void sub_1D4F440B8()
{
  sub_1D4F44260(319, &qword_1EDD5CFF0, sub_1D4F441CC, MEMORY[0x1E6968070]);
  if (v0 <= 0x3F)
  {
    sub_1D4F44210();
    if (v1 <= 0x3F)
    {
      sub_1D4F44260(319, &qword_1EDD528C0, MEMORY[0x1E6968130], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D4F441CC()
{
  result = qword_1EDD526D0;
  if (!qword_1EDD526D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526D0);
  }

  return result;
}

void sub_1D4F44210()
{
  if (!qword_1EDD52768)
  {
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52768);
    }
  }
}

void sub_1D4F44260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D4F4430C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF90, &qword_1D561F6D0) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v75 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  v8 = OUTLINED_FUNCTION_4(v7);
  v80 = v9;
  v81 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF98, &qword_1D561F6D8);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v85 = _s10PropertiesVMa(0);
  v23 = OUTLINED_FUNCTION_14(v85);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v83 = a1;
  v84 = (&v75 - v30);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F48108();
  v32 = v82;
  sub_1D5616398();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v76 = v14;
  v77 = v6;
  v78 = v28;
  v82 = v17;
  LOBYTE(v87) = 0;
  v33 = sub_1D5615F68();
  v35 = v22;
  v37 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_3_17();
    v40 = v78;
    sub_1D560BA48();
    v37 = v38;
    *v40 = xmmword_1D561F5F0;
    *(v40 + v31[7]) = v38;
    *(v40 + v31[8]) = v38;
    *(v40 + v31[9]) = v38;
    *(v40 + v31[10]) = v38;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v40, v41);
    v33 = 50;
    v42 = v84;
  }

  else
  {
    v42 = v84;
    v40 = v78;
  }

  *v42 = v33;
  LOBYTE(v87) = 1;
  v43 = sub_1D5615F68();
  if (v44)
  {
    v45 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    v42 = v84;
    sub_1D560BA48();
    OUTLINED_FUNCTION_17_11(xmmword_1D561F5F0);
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v40, v46);
    v43 = 8;
  }

  v47 = v81;
  v42[1] = v43;
  LOBYTE(v87) = 2;
  sub_1D4F482A0(&unk_1EDD5CFF8);
  v48 = v77;
  sub_1D5615F78();
  if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
  {
    v49 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_3_17();
    v50 = v81;
    sub_1D560BA48();
    OUTLINED_FUNCTION_17_11(xmmword_1D561F5F0);
    v51 = v42 + v40;
    v42 = v84;
    v52 = v76;
    (*(v80 + 16))(v76, v51, v50);
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v40, v53);
    if (__swift_getEnumTagSinglePayload(v48, 1, v50) != 1)
    {
      sub_1D4E50004(v48, &qword_1EC7EBF90, &qword_1D561F6D0);
    }
  }

  else
  {
    v50 = v47;
    v52 = v76;
    (*(v80 + 32))(v76, v48, v50);
  }

  v54 = v85;
  (*(v80 + 32))(v42 + v85[6], v52, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
  v86 = 3;
  sub_1D4F481A0(&qword_1EDD52750);
  v55 = v35;
  sub_1D5615F78();
  v56 = v87;
  v57 = v15;
  if (!v87)
  {
    v55 = [objc_opt_self() hours];
    v58 = v85[6];
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    v59 = v78;
    v54 = v85;
    sub_1D560BA48();
    *v59 = xmmword_1D561F5F0;
    *(v59 + v54[7]) = v37;
    *(v59 + v54[8]) = v37;
    *(v59 + v54[9]) = v37;
    *(v59 + v54[10]) = v37;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v59, v60);
    v56 = v37;
  }

  *(v42 + v54[7]) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
  v86 = 4;
  sub_1D4F48208(&unk_1EDD528B0);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_13_20();
  v77 = v57;
  v61 = v87;
  if (v87)
  {
    v57 = v85;
  }

  else
  {
    v76 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_48_6();
    *v55 = xmmword_1D561F5F0;
    *(v55 + v57[7]) = v37;
    *(v55 + v57[8]) = v37;
    *(v55 + v57[9]) = v37;
    *(v55 + v57[10]) = v37;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v55, v62);
    v61 = v37;
  }

  *(v42 + v57[8]) = v61;
  v86 = 5;
  OUTLINED_FUNCTION_28_13();
  v63 = v77;
  OUTLINED_FUNCTION_13_20();
  v64 = v87;
  if (v87)
  {
    v63 = v85;
  }

  else
  {
    v76 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_48_6();
    *v55 = xmmword_1D561F5F0;
    *(v55 + v63[7]) = v37;
    *(v55 + v63[8]) = v37;
    *(v55 + v63[9]) = v37;
    *(v55 + v63[10]) = v37;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v55, v65);
    v64 = v37;
  }

  *(v42 + v63[9]) = v64;
  v86 = 6;
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_13_20();
  v66 = v87;
  v67 = v82;
  if (v87)
  {
    (*(v82 + 8))(v35, v77);
    v68 = v85;
  }

  else
  {
    v69 = [objc_opt_self() hours];
    v68 = v85;
    v70 = v85[6];
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    v71 = v78;
    sub_1D560BA48();
    (*(v67 + 8))(v35, v77);
    *v71 = xmmword_1D561F5F0;
    *(v71 + v68[7]) = v37;
    *(v71 + v68[8]) = v37;
    *(v71 + v68[9]) = v37;
    *(v71 + v68[10]) = v37;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v71, v72);
    v66 = v37;
  }

  *(v42 + v68[10]) = v66;
  OUTLINED_FUNCTION_10_15();
  sub_1D4F48E5C(v42, v73, v74);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_1D4F48EBC(v42, v66);
}

uint64_t sub_1D4F44D0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D4F44D28, a2, 0);
}

uint64_t sub_1D4F44D28()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[4] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D4F44E38;
  v5 = v0[2];

  return sub_1D4F44F58(v5, 0xD00000000000001FLL, 0x80000001D567F260, v2, v3);
}

uint64_t sub_1D4F44E38()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D4F44F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[5] = _s10PropertiesVMa(0);
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1D4F45020;

  return sub_1D52FA4F8(a2, a3, a4, a5);
}

uint64_t sub_1D4F45020()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 48);
  *v4 = *v1;
  v3[7] = v7;
  v3[8] = v8;
  v3[9] = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4F4512C()
{
  v30 = v0;
  if (v0[8])
  {
    v1 = v0[9];
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[2];
    v5 = sub_1D560B9C8();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    v8 = OUTLINED_FUNCTION_86_0();
    sub_1D5013DB0(v8, v9);
    OUTLINED_FUNCTION_11_17();
    sub_1D4F4815C(v10);
    sub_1D560B948();
    if (!v1)
    {

      v24 = OUTLINED_FUNCTION_86_0();
      sub_1D4E55E1C(v24, v25);
      v26 = 0;
      goto LABEL_10;
    }

    v11 = OUTLINED_FUNCTION_86_0();
    sub_1D4E55E1C(v11, v12);

    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v13 = v0[4];
    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76DE0);

    v15 = v1;
    v16 = sub_1D560C738();
    v17 = sub_1D56156C8();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[3];
      v18 = v0[4];
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_33_17();
      v29 = OUTLINED_FUNCTION_138_0();
      *v20 = 136446466;
      *(v20 + 4) = sub_1D4E6835C(v19, v18, &v29);
      *(v20 + 12) = 2114;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1D4E3F000, v16, v17, "Get Codable: unable to decode %{public}s: %{public}@.", v20, 0x16u);
      sub_1D4E50004(v21, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  v26 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v0[2], v26, 1, v0[5]);
  OUTLINED_FUNCTION_55();

  return v27();
}

uint64_t sub_1D4F453BC()
{
  v18 = v0;
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_23_15(v3, qword_1EDD76DE0);

  v4 = v1;
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_33_17();
    v17 = OUTLINED_FUNCTION_138_0();
    *v11 = 136446466;
    *(v11 + 4) = sub_1D4E6835C(v10, v9, &v17);
    *(v11 + 12) = 2114;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D4E3F000, v5, v6, "Get Codable: unable to get %{public}s from database: %{public}@.", v11, 0x16u);
    sub_1D4E50004(v12, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);
  OUTLINED_FUNCTION_55();

  return v15();
}

uint64_t sub_1D4F45598()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F45634, v3, 0);
}

uint64_t sub_1D4F45634()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v0[5] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[6] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F456C4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D4F48E5C(v0[3], v3, _s10PropertiesVMa);
  v4 = _s10PropertiesVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D4F457D0;
  v6 = v0[4];

  return sub_1D4F459E0(v6, 0xD00000000000001FLL, 0x80000001D567F260, v1, v2);
}

uint64_t sub_1D4F457D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  *(v2 + 64) = v0;

  sub_1D4E50004(v8, &qword_1EC7EBFC0, &qword_1D564EA20);

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v2 + 32);

    v15 = *(v9 + 8);

    return v15();
  }
}

uint64_t sub_1D4F45984()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1D4F459E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v7 = _s10PropertiesVMa(0);
  v5[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F45AB4, 0, 0);
}

uint64_t sub_1D4F45AB4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1D4F489C0(*(v0 + 128), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D4E50004(*(v0 + 168), &qword_1EC7EBFC0, &qword_1D564EA20);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1D4F45E30;
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);

    return sub_1D52FAFA8(v7, v6, v4, v5);
  }

  v9 = *(v0 + 176);
  sub_1D4F48A30(*(v0 + 168), *(v0 + 184));
  v10 = sub_1D560B9F8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_1D560B9E8();
  OUTLINED_FUNCTION_11_17();
  sub_1D4F4815C(v13);
  v14 = sub_1D560B9D8();
  *(v0 + 200) = v14;
  *(v0 + 208) = v15;
  v16 = v14;
  v17 = v15;
  sub_1D4F48DE4(v14, v15);
  v18 = OUTLINED_FUNCTION_86_0();
  v20 = sub_1D4F48C18(v18, v19);
  if (v21)
  {
    goto LABEL_12;
  }

  *(v0 + 96) = v16;
  *(v0 + 104) = v17;
  v22 = OUTLINED_FUNCTION_86_0();
  sub_1D4F48DE4(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC8, &qword_1D561F700);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4E50004(v0 + 56, &qword_1EC7EBFD0, &qword_1D561F708);
LABEL_11:
    v30 = OUTLINED_FUNCTION_86_0();
    v20 = sub_1D4F48918(v30, v31);
LABEL_12:
    v28 = v20;
    v29 = v21;
    v32 = OUTLINED_FUNCTION_86_0();
    sub_1D4E55E1C(v32, v33);
    goto LABEL_13;
  }

  sub_1D4E48324((v0 + 56), v0 + 16);
  v24 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_1D5615EA8() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_11;
  }

  v25 = OUTLINED_FUNCTION_86_0();
  sub_1D4E55E1C(v25, v26);
  v27 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D5615E98();
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_13:
  *(v0 + 224) = v29;
  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  *v34 = v0;
  v34[1] = sub_1D4F45F5C;
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);

  return sub_1D52FAA28(v28, v29, v37, v38, v35, v36);
}

uint64_t sub_1D4F45E30()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = *(v1 + 184);
  v6 = *(v1 + 168);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1D4F45F5C()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 232);
  *v4 = *v1;
  *(v3 + 240) = v0;

  v6 = *(v2 + 224);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4F46084()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];

  sub_1D4E55E1C(v1, v2);
  OUTLINED_FUNCTION_0_25();
  sub_1D4F48EBC(v4, v5);
  v6 = v0[23];
  v7 = v0[21];

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D4F46118()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];

  sub_1D4E55E1C(v1, v2);
  OUTLINED_FUNCTION_0_25();
  sub_1D4F48EBC(v4, v5);
  v6 = v0[30];
  v7 = v0[23];
  v8 = v0[21];

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D4F461AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v217 = a2;
  v3 = _s10PropertiesVMa(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v209 - v11);
  v232 = sub_1D560C328();
  v13 = OUTLINED_FUNCTION_4(v232);
  v214 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v231 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v233 = &v209 - v20;
  v230 = _s10PropertiesV15BagDateIntervalVMa(0);
  v21 = OUTLINED_FUNCTION_4(v230);
  v213 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v229 = v25;
  v26 = sub_1D560BB08();
  v234 = OUTLINED_FUNCTION_4(v26);
  *&v235 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_59_0();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v221 = &v209 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v209 - v36;
  v38 = sub_1D560B928();
  v39 = OUTLINED_FUNCTION_4(v38);
  v227 = v40;
  v228 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v226 = v43;
  v44 = sub_1D510588C();
  v216 = v9;
  v222 = v37;
  v218 = v44;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v45 = sub_1D560C758();
  __swift_project_value_buffer(v45, qword_1EDD76A90);
  v46 = sub_1D560C738();
  v47 = sub_1D56156E8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_142();
    *v48 = 134349056;
    *(v48 + 4) = v218;
    OUTLINED_FUNCTION_26_9();
    _os_log_impl(v49, v50, v51, v52, v48, 0xCu);
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_18_16();
  v53 = sub_1D5105950();
  v220 = v12;
  v223 = a1;
  v54 = qword_1EDD54478;
  v55 = v53;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v56 = sub_1D560C758();
  __swift_project_value_buffer(v56, qword_1EDD76A90);
  v57 = sub_1D560C738();
  sub_1D56156E8();

  v58 = OUTLINED_FUNCTION_37_4();
  v215 = v55;
  if (v58)
  {
    v59 = OUTLINED_FUNCTION_142();
    v236[0] = OUTLINED_FUNCTION_138_0();
    *v59 = 136446210;
    v60 = MEMORY[0x1DA6EAF70](v55, MEMORY[0x1E69E6530]);
    v62 = sub_1D4E6835C(v60, v61, v236);

    *(v59 + 4) = v62;
    v12 = v220;
    OUTLINED_FUNCTION_26_9();
    _os_log_impl(v63, v64, v65, v66, v59, 0xCu);
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v67 = v228;
  v68 = sub_1D560B9C8();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_1D560B9B8();
  (*(v227 + 104))(v226, *MEMORY[0x1E6967F30], v67);
  sub_1D560B938();
  OUTLINED_FUNCTION_18_16();
  v224 = v71;
  v74 = sub_1D4F476CC(v72 + 3, v73 | 0x8000000000000000, v71);
  v219 = v3;
  v211 = 0;
  if (v74[2])
  {
    OUTLINED_FUNCTION_38_13();
    v76 = v75;
    sub_1D4F03CDC();
    v77 = v236[0];
    OUTLINED_FUNCTION_6_4();
    v210 = v76;
    v79 = v76 + v78;
    OUTLINED_FUNCTION_5_15();
    v225 = v81;
    v226 = v80;
    v3 = v222;
    v12 = v233;
    do
    {
      OUTLINED_FUNCTION_4_17();
      v83 = v82;
      v84 = v229;
      sub_1D4F48E5C(v79, v229, v82);
      v85 = *v225;
      v86 = v232;
      (*v225)(v12, v84, v232);
      v85(v231, v84 + *(v230 + 20), v86);
      sub_1D560BAD8();
      sub_1D4F48EBC(v84, v83);
      v236[0] = v77;
      v88 = *(v77 + 16);
      v87 = *(v77 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_29_9(v87);
        sub_1D4F03CDC();
        v77 = v236[0];
      }

      *(v77 + 16) = v88 + 1;
      OUTLINED_FUNCTION_6_4();
      (*(v90 + 32))(v77 + v89 + *(v90 + 72) * v88, v3);
      v79 += v227;
    }

    while (v228 != 1);
    v222 = v77;

    OUTLINED_FUNCTION_16_17();
    v32 = v212;
  }

  else
  {

    v222 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_32_17();
  if (!v91)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v92 = sub_1D560C758();
  __swift_project_value_buffer(v92, qword_1EDD76A90);
  v93 = v222;

  v94 = sub_1D560C738();
  v95 = sub_1D56156E8();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = OUTLINED_FUNCTION_142();
    v236[0] = OUTLINED_FUNCTION_138_0();
    *v96 = 136446210;
    v97 = MEMORY[0x1DA6EAF70](v93, v234);
    v99 = sub_1D4E6835C(v97, v98, v236);

    *(v96 + 4) = v99;
    v12 = v220;
    OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v100, v101, "􁉰 Rejected dates for all rows is %{public}s.");
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_12_21();
  }

  v102 = MEMORY[0x1E69E7CC0];
  v103 = &unk_1E84C5000;
  v104 = v211;
  OUTLINED_FUNCTION_18_16();
  v107 = sub_1D4F476CC(v105 + 13, v106 | 0x8000000000000000, v224);
  v108 = v104;
  if (v104)
  {
    OUTLINED_FUNCTION_32_17();
    if (!v91)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v109 = sub_1D560C758();
    __swift_project_value_buffer(v109, qword_1EDD76A90);
    v110 = v104;
    v111 = sub_1D560C738();
    v112 = sub_1D56156C8();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = OUTLINED_FUNCTION_142();
      v114 = OUTLINED_FUNCTION_33_17();
      *v113 = 138543362;
      v115 = v108;
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 4) = v116;
      *v114 = v116;
      OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v117, v118, "􁉰 Defaulting rejected dates for audio analysis to N/A, because unable to get from the bag: %{public}@.");
      sub_1D4E50004(v114, &unk_1EC7F2C00, &qword_1D5623260);
      v103 = &unk_1E84C5000;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_12_21();
    }

    v119 = [objc_opt_self() hours];
    v120 = v108;
    v121 = *(v3 + 24);
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    sub_1D560BA48();

    *v12 = xmmword_1D561F5F0;
    *(v12 + *(v3 + 28)) = v102;
    *(v12 + *(v3 + 32)) = v102;
    *(v12 + *(v3 + 36)) = v102;
    *(v12 + *(v3 + 40)) = v102;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v12, v122);
    v123 = 0;
    v221 = v102;
  }

  else
  {
    v211 = 0;
    if (v107[2])
    {
      OUTLINED_FUNCTION_38_13();
      v125 = v124;
      sub_1D4F03CDC();
      v3 = v236[0];
      OUTLINED_FUNCTION_6_4();
      v210 = v125;
      v127 = v125 + v126;
      OUTLINED_FUNCTION_5_15();
      v225 = v128;
      v226 = v129;
      v130 = v221;
      v12 = v233;
      do
      {
        OUTLINED_FUNCTION_4_17();
        v132 = v131;
        v133 = v229;
        sub_1D4F48E5C(v127, v229, v131);
        v134 = *v226;
        v135 = v232;
        (*v226)(v12, v133, v232);
        v134(v231, v133 + *(v230 + 20), v135);
        sub_1D560BAD8();
        sub_1D4F48EBC(v133, v132);
        v236[0] = v3;
        v137 = *(v3 + 16);
        v136 = *(v3 + 24);
        if (v137 >= v136 >> 1)
        {
          OUTLINED_FUNCTION_29_9(v136);
          sub_1D4F03CDC();
          v3 = v236[0];
        }

        *(v3 + 16) = v137 + 1;
        OUTLINED_FUNCTION_6_4();
        (*(v139 + 32))(v3 + v138 + *(v139 + 72) * v137, v130);
        v127 += v227;
      }

      while (v228 != 1);
      v221 = v3;

      OUTLINED_FUNCTION_16_17();
      v103 = &unk_1E84C5000;
      v32 = v212;
    }

    else
    {

      v221 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_32_17();
    if (!v91)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v140 = sub_1D560C758();
    __swift_project_value_buffer(v140, qword_1EDD76A90);
    v141 = v221;

    v142 = sub_1D560C738();
    v143 = sub_1D56156E8();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = OUTLINED_FUNCTION_142();
      v145 = OUTLINED_FUNCTION_138_0();
      v236[0] = v145;
      *v144 = 136446210;
      v146 = MEMORY[0x1DA6EAF70](v141, v234);
      v148 = sub_1D4E6835C(v146, v147, v236);
      v12 = v220;

      *(v144 + 4) = v148;
      OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v149, v150, "􁉰 Rejected dates for audio analysis is %{public}s.");
      __swift_destroy_boxed_opaque_existential_1(v145);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_12_21();
    }

    v102 = MEMORY[0x1E69E7CC0];
    v123 = v211;
  }

  OUTLINED_FUNCTION_18_16();
  v153 = sub_1D4F476CC(v151 + 14, v152 | 0x8000000000000000, v224);
  if (v123)
  {
    OUTLINED_FUNCTION_32_17();
    if (!v91)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v154 = sub_1D560C758();
    v155 = OUTLINED_FUNCTION_23_15(v154, qword_1EDD76A90);
    v156 = sub_1D560C738();
    sub_1D56156C8();

    if (OUTLINED_FUNCTION_37_4())
    {
      v157 = OUTLINED_FUNCTION_142();
      v158 = OUTLINED_FUNCTION_33_17();
      *v157 = 138543362;
      v159 = v123;
      v160 = _swift_stdlib_bridgeErrorToNSError();
      *(v157 + 4) = v160;
      *v158 = v160;
      OUTLINED_FUNCTION_26_9();
      _os_log_impl(v161, v162, v163, v164, v157, 0xCu);
      sub_1D4E50004(v158, &unk_1EC7F2C00, &qword_1D5623260);
      v3 = v219;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v165 = [objc_opt_self() v103[463]];
    v166 = *(v3 + 24);
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    sub_1D560BA48();

    *v12 = xmmword_1D561F5F0;
    *(v12 + *(v3 + 28)) = v102;
    *(v12 + *(v3 + 32)) = v102;
    *(v12 + *(v3 + 36)) = v102;
    *(v12 + *(v3 + 40)) = v102;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v12, v167);
    v168 = v102;
  }

  else
  {
    v169 = v153;
    v170 = v153[2];
    if (v170)
    {
      v236[0] = v102;
      sub_1D4F03CDC();
      OUTLINED_FUNCTION_6_4();
      v223 = v169;
      v172 = v169 + v171;
      OUTLINED_FUNCTION_5_15();
      v225 = v173;
      v226 = v174;
      v3 = v233;
      do
      {
        OUTLINED_FUNCTION_4_17();
        v176 = v175;
        v177 = v229;
        sub_1D4F48E5C(v172, v229, v175);
        v178 = *v226;
        v179 = v232;
        (*v226)(v3, v177, v232);
        v178(v231, v177 + *(v230 + 20), v179);
        sub_1D560BAD8();
        v180 = v177;
        v168 = v228;
        sub_1D4F48EBC(v180, v176);
        v236[0] = v168;
        v182 = *(v168 + 16);
        v181 = *(v168 + 24);
        v12 = (v182 + 1);
        if (v182 >= v181 >> 1)
        {
          OUTLINED_FUNCTION_29_9(v181);
          sub_1D4F03CDC();
          v168 = v236[0];
        }

        *(v168 + 16) = v12;
        OUTLINED_FUNCTION_6_4();
        (*(v184 + 32))(v168 + v183 + *(v184 + 72) * v182, v32);
        v172 += v227;
        --v170;
        v3 = v233;
      }

      while (v170);

      OUTLINED_FUNCTION_16_17();
      v102 = MEMORY[0x1E69E7CC0];
      v103 = &unk_1E84C5000;
    }

    else
    {

      v168 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v185 = sub_1D560C758();
    OUTLINED_FUNCTION_23_15(v185, qword_1EDD76A90);

    v186 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_45_11();

    if (OUTLINED_FUNCTION_37_4())
    {
      v187 = OUTLINED_FUNCTION_142();
      v188 = OUTLINED_FUNCTION_138_0();
      v236[0] = v188;
      *v187 = 136446210;
      v189 = MEMORY[0x1DA6EAF70](v168, v234);
      v191 = sub_1D4E6835C(v189, v190, v236);

      *(v187 + 4) = v191;
      v102 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_26_9();
      _os_log_impl(v192, v193, v194, v195, v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v188);
      v3 = v219;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }
  }

  v196 = objc_opt_self();
  v197 = [v196 v103[463]];
  v198 = *(v3 + 24);
  sub_1D4F441CC();
  sub_1D560BA48();
  v235 = xmmword_1D561F5F0;
  *v12 = xmmword_1D561F5F0;
  *(v12 + *(v3 + 28)) = v102;
  *(v12 + *(v3 + 32)) = v102;
  *(v12 + *(v3 + 36)) = v102;
  *(v12 + *(v3 + 40)) = v102;
  OUTLINED_FUNCTION_10_15();
  sub_1D4F48EBC(v12, v199);
  v200 = [v196 v103[463]];
  v201 = *(v3 + 24);
  v202 = v216;
  sub_1D560BA48();

  *v202 = v235;
  *(v202 + *(v3 + 28)) = v102;
  *(v202 + *(v3 + 32)) = v102;
  *(v202 + *(v3 + 36)) = v102;
  *(v202 + *(v3 + 40)) = v102;
  v203 = *(v3 + 24);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  OUTLINED_FUNCTION_14(v204);
  v206 = v217;
  (*(v205 + 16))(v217 + v203, v202 + v201);
  result = sub_1D4F48EBC(v202, v197);
  *v206 = v218;
  v206[1] = 8;
  *(v206 + *(v3 + 28)) = v215;
  v208 = v221;
  *(v206 + *(v3 + 32)) = v222;
  *(v206 + *(v3 + 36)) = v208;
  *(v206 + *(v3 + 40)) = v168;
  return result;
}

id sub_1D4F476CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = v3 + *(type metadata accessor for Bag() + 20);
  v9 = *v8;
  if (*(v8 + 8))
  {

    sub_1D5107F84();
    v11 = v10;
    v12 = v9;
    v13 = 1;
  }

  else
  {
    v14 = *(v9 + 16);
    sub_1D4F48F74(v9, 0);
    v15 = v14;
    v11 = sub_1D5105F48(a1, a2, v15, a3);

    v12 = v9;
    v13 = 0;
  }

  sub_1D4F48F14(v12, v13);
  if (!v4 && !v11)
  {
    sub_1D4F48F20();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  return v11;
}

void sub_1D4F477F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v2 = _s10PropertiesVMa(0);
    v3 = v2[6];
    sub_1D4F441CC();
    if (sub_1D560BA38())
    {
      v4 = OUTLINED_FUNCTION_44_0(v2[7]);
      if (sub_1D4EFAD58(v4, v5))
      {
        OUTLINED_FUNCTION_44_0(v2[8]);
        sub_1D4EFADAC();
        if (v6)
        {
          OUTLINED_FUNCTION_44_0(v2[9]);
          sub_1D4EFADAC();
          if (v7)
          {
            OUTLINED_FUNCTION_44_0(v2[10]);

            sub_1D4EFADAC();
          }
        }
      }
    }
  }
}

uint64_t sub_1D4F478CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001D567F390 == a2;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001D567F3B0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000028 && 0x80000001D567F3D0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000028 && 0x80000001D567F400 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001D567F430 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000022 && 0x80000001D567F450 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000021 && 0x80000001D567F480 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1D5616168();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D4F47B00(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F47BB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFB0, &qword_1D561F6E8);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F48108();
  sub_1D56163D8();
  v14 = *v3;
  v21 = 0;
  OUTLINED_FUNCTION_22_14();
  sub_1D56160B8();
  if (!v2)
  {
    v15 = v3[1];
    v21 = 1;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160B8();
    v16 = _s10PropertiesVMa(0);
    v17 = v16[6];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
    sub_1D4F482A0(&unk_1EDD5D000);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_42_2(v16[7]);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    sub_1D4F481A0(&unk_1EDD52758);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_42_2(v16[8]);
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
    sub_1D4F48208(&unk_1EDD528B8);
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_42_2(v16[9]);
    v20 = 5;
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_42_2(v16[10]);
    v20 = 6;
    OUTLINED_FUNCTION_9_18();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1D4F47EA0()
{
  MEMORY[0x1DA6EC0D0](*v0);
  MEMORY[0x1DA6EC0D0](v0[1]);
  v1 = _s10PropertiesVMa(0);
  v2 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  sub_1D4F482A0(&unk_1EC7EBFB8);
  sub_1D5614CB8();
  v3 = OUTLINED_FUNCTION_32_2(v1[7]);
  sub_1D4F08F34(v3, v4);
  OUTLINED_FUNCTION_32_2(v1[8]);
  sub_1D4F08EEC();
  OUTLINED_FUNCTION_32_2(v1[9]);
  sub_1D4F08EEC();
  OUTLINED_FUNCTION_32_2(v1[10]);

  sub_1D4F08EEC();
}

uint64_t sub_1D4F47F80()
{
  sub_1D56162D8();
  sub_1D4F47EA0();
  return sub_1D5616328();
}

uint64_t sub_1D4F47FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F478CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F47FF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F47AF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F48018(uint64_t a1)
{
  v2 = sub_1D4F48108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F48054(uint64_t a1)
{
  v2 = sub_1D4F48108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F480CC()
{
  sub_1D56162D8();
  sub_1D4F47EA0();
  return sub_1D5616328();
}

unint64_t sub_1D4F48108()
{
  result = qword_1EDD599E0[0];
  if (!qword_1EDD599E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD599E0);
  }

  return result;
}

unint64_t sub_1D4F4815C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F481A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F48208(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
    sub_1D4F4815C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F482A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBF80, &qword_1D561F600);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D4F482EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D4F483B8(char a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1 & 1);
  return sub_1D5616328();
}

uint64_t sub_1D4F48400(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D4F4842C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_1D560C328();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x1EEE9AC00](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFE8, &qword_1D561F870);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = _s10PropertiesV15BagDateIntervalVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F49280();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_1D4F4815C(&qword_1EDD5CF50);
  v20 = v31;
  v21 = v32;
  sub_1D5615FD8();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_1D5615FD8();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_1D4F48E5C(v23, v29, _s10PropertiesV15BagDateIntervalVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D4F48EBC(v23, _s10PropertiesV15BagDateIntervalVMa);
}

uint64_t sub_1D4F487EC()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4EA7328(v3, v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F48838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F482EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F48860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F483B0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F48888(uint64_t a1)
{
  v2 = sub_1D4F49280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F488C4(uint64_t a1)
{
  v2 = sub_1D4F49280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F48918(uint64_t a1, unint64_t a2)
{
  sub_1D4F48DE4(a1, a2);
  v4 = *(sub_1D4F48A94(a1, a2) + 16);
  v5 = sub_1D5614E08();

  return v5;
}

uint64_t sub_1D4F48984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5614E08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4F489C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F48A30(uint64_t a1, uint64_t a2)
{
  v4 = _s10PropertiesVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F48A94(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D560C1E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_1D4E6EFA4(v10, 0);
      v14 = sub_1D560C0F8();
      sub_1D4E55E1C(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_1D4E55E1C(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v13;
  }
}

uint64_t sub_1D4F48C18(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1D560BCA8() && __OFSUB__(v4, sub_1D560BCC8()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1D560BCB8();
LABEL_10:
      result = sub_1D5614E08();
      v6 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1D560BCA8() && __OFSUB__(v2, sub_1D560BCC8()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_1D4F48DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D4F48E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F48EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F48F14(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4F48F20()
{
  result = qword_1EC7EBFD8;
  if (!qword_1EC7EBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFD8);
  }

  return result;
}

uint64_t sub_1D4F48F74(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D4F48FA8()
{
  result = sub_1D560C328();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s10PropertiesV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10PropertiesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F4917C()
{
  result = qword_1EC7EBFE0;
  if (!qword_1EC7EBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFE0);
  }

  return result;
}

unint64_t sub_1D4F491D4()
{
  result = qword_1EDD599D0;
  if (!qword_1EDD599D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599D0);
  }

  return result;
}

unint64_t sub_1D4F4922C()
{
  result = qword_1EDD599D8;
  if (!qword_1EDD599D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599D8);
  }

  return result;
}

unint64_t sub_1D4F49280()
{
  result = qword_1EDD599C8;
  if (!qword_1EDD599C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599C8);
  }

  return result;
}

_BYTE *_s10PropertiesV15BagDateIntervalV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F493B4()
{
  result = qword_1EC7EBFF0;
  if (!qword_1EC7EBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFF0);
  }

  return result;
}

unint64_t sub_1D4F4940C()
{
  result = qword_1EDD599B8;
  if (!qword_1EDD599B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599B8);
  }

  return result;
}

unint64_t sub_1D4F49464()
{
  result = qword_1EDD599C0;
  if (!qword_1EDD599C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_34_12()
{
  v2 = *(*(v0 - 96) + 24);

  return sub_1D4F441CC();
}

unint64_t OUTLINED_FUNCTION_47_11()
{
  v2 = *(*(v0 - 96) + 24);

  return sub_1D4F441CC();
}

uint64_t MusicSummariesResponse.items.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicSummariesResponse.== infix(_:_:)()
{
  type metadata accessor for MusicSummary();
  sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary);
  sub_1D4F4A658(&qword_1EC7EC008, type metadata accessor for MusicSummary);

  return sub_1D560DAA8();
}

uint64_t MusicSummariesResponse.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();

  return sub_1D5614CB8();
}

unint64_t sub_1D4F496D0()
{
  result = qword_1EC7EC010;
  if (!qword_1EC7EC010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFF8, &qword_1D561F980);
    sub_1D4F4A658(&qword_1EC7EC018, type metadata accessor for MusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC010);
  }

  return result;
}

uint64_t MusicSummariesResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F497F4()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicSummariesResponse.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  v3[3] = v6;
  OUTLINED_FUNCTION_4(v6);
  v3[4] = v7;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[5] = v10;
  v11 = *(MEMORY[0x1E6974FE0] + 4);
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_1D4F4997C;

  return MEMORY[0x1EEDCE928](v10, a2, a3, v6);
}

uint64_t sub_1D4F4997C()
{
  OUTLINED_FUNCTION_60();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D4F49B08;
  }

  else
  {
    v3 = sub_1D4F49A8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D4F49A8C()
{
  OUTLINED_FUNCTION_60();
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D4F49B08()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D4F49B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4F49C18;

  return MusicSummariesResponse.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_1D4F49C18()
{
  OUTLINED_FUNCTION_60();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MusicSummariesResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = v33 - v7;
  v36 = sub_1D560CD48();
  v8 = OUTLINED_FUNCTION_4(v36);
  v38 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v33 - v24;
  sub_1D4E628D4(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC028, &qword_1D561F9A0);
  sub_1D4F4A40C(&qword_1EC7EC030);
  sub_1D5612428();
  if (!v2)
  {
    v34 = v18;
    (*(v18 + 16))(v23, v25, v15);
    v33[3] = a2;
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v33[0] = v14;
    sub_1D5616378();
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5616368();
    v28 = sub_1D560CD98();
    v29 = v35;
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v28);
    v33[2] = type metadata accessor for MusicSummary();
    v33[1] = sub_1D4F4A658(&qword_1EC7EC048, type metadata accessor for MusicSummary);
    sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary);
    v30 = v36;
    sub_1D5612368();

    sub_1D4F4A0BC(v29);
    (*(v38 + 8))(v33[0], v30);
    v31 = *(v34 + 8);
    v31(v23, v15);
    v31(v25, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4F4A0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicSummariesResponse.encode(to:)(void *a1)
{
  v31 = sub_1D5613578();
  v2 = OUTLINED_FUNCTION_4(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D560CD48();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  v19 = OUTLINED_FUNCTION_4(v32);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v30 - v24;
  v30 = a1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v27 = v31;
  (*(v4 + 104))(v9, *MEMORY[0x1E6976A78], v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F4A658(&qword_1EC7EC048, type metadata accessor for MusicSummary);
  sub_1D560DA98();
  (*(v4 + 8))(v9, v27);
  (*(v13 + 8))(v18, v10);
  sub_1D4F4A40C(&qword_1EC7EC050);
  v28 = v32;
  sub_1D5612418();
  return (*(v21 + 8))(v25, v28);
}

uint64_t sub_1D4F4A40C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC028, &qword_1D561F9A0);
    sub_1D4F4A658(&qword_1EC7EC038, type metadata accessor for CloudMusicSummary);
    sub_1D4F4A658(&qword_1EC7EC040, type metadata accessor for CloudMusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D4F4A510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F4A81C();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1D4F4A658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MusicSummariesResponse()
{
  result = qword_1EC7EC060;
  if (!qword_1EC7EC060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F4A71C()
{
  sub_1D4F4A788();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D4F4A788()
{
  if (!qword_1EC7EC070)
  {
    type metadata accessor for MusicSummary();
    sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EC070);
    }
  }
}

unint64_t sub_1D4F4A81C()
{
  result = qword_1EC7EC078;
  if (!qword_1EC7EC078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFF8, &qword_1D561F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC078);
  }

  return result;
}

uint64_t type metadata accessor for CuratorRelationshipProvider()
{
  result = qword_1EDD5DAE0;
  if (!qword_1EDD5DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F4A8F4()
{
  sub_1D4E6D600(319, &qword_1EDD5D778, &qword_1EC7EA560, &unk_1D561C4B0);
  if (v0 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD5D768, &qword_1EC7EA550, &qword_1D561D670);
      if (v2 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD5D788, &qword_1EC7EA5B8, &qword_1D561C4E0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_1D4F4AA50(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v160 = a2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4(v149);
  v145 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v143 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v144 = v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB678, &qword_1D56783A0);
  OUTLINED_FUNCTION_14(v147);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v148 = v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4(v155);
  v151 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v146 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v150 = v25;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC088, &unk_1D561FC10);
  OUTLINED_FUNCTION_14(v153);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v154 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v31 = OUTLINED_FUNCTION_4(v30);
  v157 = v32;
  v158 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v152 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v156 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v143 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4(v48);
  v50 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v143 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v143 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC090, &qword_1D561FC20);
  OUTLINED_FUNCTION_22(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v143 - v67;
  v69 = *(v66 + 56);
  sub_1D4F1C460(v159, &v143 - v67, &qword_1EC7EA790, &unk_1D561FB10);
  sub_1D4F1C460(v160, &v68[v69], &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v68, 1, v48);
  if (v70)
  {
    OUTLINED_FUNCTION_57(&v68[v69], 1, v48);
    if (v70)
    {
      sub_1D4E50004(v68, &qword_1EC7EA790, &unk_1D561FB10);
      goto LABEL_11;
    }

LABEL_9:
    v71 = &qword_1EC7EC090;
    v72 = &qword_1D561FC20;
    v73 = v68;
LABEL_41:
    sub_1D4E50004(v73, v71, v72);
    return 0;
  }

  sub_1D4F1C460(v68, v61, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(&v68[v69], 1, v48);
  if (v70)
  {
    (*(v50 + 8))(v61, v48);
    goto LABEL_9;
  }

  (*(v50 + 32))(v55, &v68[v69], v48);
  sub_1D4F4D044();
  v74 = sub_1D5614D18();
  v75 = *(v50 + 8);
  v75(v55, v48);
  v75(v61, v48);
  sub_1D4E50004(v68, &qword_1EC7EA790, &unk_1D561FB10);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v76 = type metadata accessor for CuratorRelationshipProvider();
  v77 = v76[5];
  v78 = *(v42 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v79, v80, v81, v82);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v83, v84, v85, v86);
  v87 = v158;
  OUTLINED_FUNCTION_4_18(v47, 1);
  if (v70)
  {
    OUTLINED_FUNCTION_1_31();
    if (v70)
    {
      sub_1D4E50004(v47, &qword_1EC7EA788, &unk_1D56223A0);
      goto LABEL_21;
    }

LABEL_19:
    v71 = &qword_1EC7EB668;
    v72 = &qword_1D5637E60;
LABEL_40:
    v73 = v47;
    goto LABEL_41;
  }

  sub_1D4F1C460(v47, v156, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_1_31();
  if (v88)
  {
    v89 = *(v157 + 8);
    v90 = OUTLINED_FUNCTION_200();
    v91(v90);
    goto LABEL_19;
  }

  v92 = v76;
  v93 = v157;
  v94 = &v47[v78];
  v95 = v152;
  (*(v157 + 32))(v152, v94, v87);
  sub_1D4F217AC();
  v96 = OUTLINED_FUNCTION_10_16();
  v97 = *(v93 + 8);
  v97(v95, v87);
  v98 = OUTLINED_FUNCTION_200();
  (v97)(v98);
  v76 = v92;
  sub_1D4E50004(v47, &qword_1EC7EA788, &unk_1D56223A0);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v99 = v76[6];
  v47 = v154;
  v100 = *(v153 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v101, v102, v103, v104);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v105, v106, v107, v108);
  v109 = v155;
  OUTLINED_FUNCTION_4_18(v47, 1);
  if (v70)
  {
    OUTLINED_FUNCTION_1_31();
    if (v70)
    {
      sub_1D4E50004(v47, &qword_1EC7EA780, &unk_1D561FB20);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_1D4F1C460(v47, v150, &qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_1_31();
  if (v110)
  {
    v111 = *(v151 + 8);
    v112 = OUTLINED_FUNCTION_200();
    v113(v112);
LABEL_29:
    v71 = &qword_1EC7EC088;
    v72 = &unk_1D561FC10;
    goto LABEL_40;
  }

  v114 = v76;
  v115 = v47;
  v116 = v151;
  OUTLINED_FUNCTION_11_18();
  v117 = &v115[v100];
  v118 = v146;
  v119(v146, v117, v109);
  sub_1D4F4CF90();
  v120 = OUTLINED_FUNCTION_10_16();
  v121 = *(v116 + 8);
  v121(v118, v109);
  v122 = OUTLINED_FUNCTION_200();
  (v121)(v122);
  v123 = v115;
  v76 = v114;
  sub_1D4E50004(v123, &qword_1EC7EA780, &unk_1D561FB20);
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v124 = v76[7];
  v47 = v148;
  v125 = *(v147 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v126, v127, v128, v129);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v130, v131, v132, v133);
  v134 = v149;
  OUTLINED_FUNCTION_4_18(v47, 1);
  if (v70)
  {
    OUTLINED_FUNCTION_1_31();
    if (v70)
    {
      sub_1D4E50004(v47, &qword_1EC7EA778, &qword_1D5622E60);
      return 1;
    }

    goto LABEL_39;
  }

  v135 = v144;
  sub_1D4F1C460(v47, v144, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_1_31();
  if (v136)
  {
    (*(v145 + 8))(v135, v134);
LABEL_39:
    v71 = &qword_1EC7EB678;
    v72 = &qword_1D56783A0;
    goto LABEL_40;
  }

  v138 = v145;
  v139 = &v47[v125];
  v140 = v143;
  (*(v145 + 32))(v143, v139, v134);
  sub_1D4F21860();
  v141 = OUTLINED_FUNCTION_10_16();
  v142 = *(v138 + 8);
  v142(v140, v134);
  v142(v135, v134);
  sub_1D4E50004(v47, &qword_1EC7EA778, &qword_1D5622E60);
  return (v141 & 1) != 0;
}

uint64_t sub_1D4F4B3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F7461727563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F68536F69646172 && a2 == 0xEA00000000007377;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0073656C69666FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D4F4B558(char a1)
{
  result = 0x73726F7461727563;
  switch(a1)
  {
    case 1:
      result = 0x7365726E6567;
      break;
    case 2:
      result = 0x6F68536F69646172;
      break;
    case 3:
      result = 0x72506C6169636F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F4B5E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC108, &qword_1D561FC30);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F4D260();
  sub_1D56163D8();
  v17[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  sub_1D4F4D644();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_17_12();
  if (!v1)
  {
    v12 = type metadata accessor for CuratorRelationshipProvider();
    v13 = v12[5];
    v17[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D6F8();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12();
    v14 = v12[6];
    v17[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D7AC();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12();
    v15 = v12[7];
    v17[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D860();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_1D4F4B804(uint64_t a1)
{
  v75 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4(v79);
  v74 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v73 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v78 = v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4(v77);
  v72 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v71 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v76 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v22);
  v70 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v69 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v68 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v68 - v46;
  v48 = v1;
  sub_1D4F1C460(v1, &v68 - v46, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v47, 1, v34);
  if (v49)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v36 + 32))(v41, v47, v34);
    sub_1D56162F8();
    sub_1D4F4D0F8();
    sub_1D5614CB8();
    (*(v36 + 8))(v41, v34);
  }

  v50 = type metadata accessor for CuratorRelationshipProvider();
  sub_1D4F1C460(v1 + v50[5], v33, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_57(v33, 1, v22);
  if (v49)
  {
    sub_1D56162F8();
  }

  else
  {
    v51 = v69;
    v52 = v70;
    OUTLINED_FUNCTION_11_18();
    v53(v51, v33, v22);
    sub_1D56162F8();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v52 + 8))(v51, v22);
  }

  v54 = v79;
  v55 = v76;
  sub_1D4F1C460(v48 + v50[6], v76, &qword_1EC7EA780, &unk_1D561FB20);
  v56 = OUTLINED_FUNCTION_35_1();
  v57 = v77;
  OUTLINED_FUNCTION_4_18(v56, v58);
  if (v49)
  {
    sub_1D56162F8();
  }

  else
  {
    v60 = v71;
    v59 = v72;
    OUTLINED_FUNCTION_11_18();
    v61(v60, v55, v57);
    sub_1D56162F8();
    sub_1D4F4D1AC();
    sub_1D5614CB8();
    (*(v59 + 8))(v60, v57);
  }

  v62 = v78;
  sub_1D4F1C460(v48 + v50[7], v78, &qword_1EC7EA778, &qword_1D5622E60);
  v63 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v63, v64, v54);
  if (v49)
  {
    return sub_1D56162F8();
  }

  v66 = v73;
  v65 = v74;
  (*(v74 + 32))(v73, v62, v54);
  sub_1D56162F8();
  sub_1D4F219C8();
  sub_1D5614CB8();
  return (*(v65 + 8))(v66, v54);
}

uint64_t sub_1D4F4BDBC()
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4(v75);
  v71 = v1;
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v70 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v74 = v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4(v73);
  v69 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v68 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v72 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v21);
  v67 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v66 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v66 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v66 - v45;
  sub_1D56162D8();
  v47 = v0;
  sub_1D4F1C460(v0, v46, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v46, 1, v33);
  if (v48)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v49(v40, v46, v33);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F4D0F8();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v35 + 8))(v40, v33);
  }

  v50 = type metadata accessor for CuratorRelationshipProvider();
  sub_1D4F1C460(v0 + v50[5], v32, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_57(v32, 1, v21);
  if (v48)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v52 = v66;
    v51 = v67;
    (*(v67 + 32))(v66, v32, v21);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v51 + 8))(v52, v21);
  }

  v53 = v72;
  sub_1D4F1C460(v47 + v50[6], v72, &qword_1EC7EA780, &unk_1D561FB20);
  v54 = OUTLINED_FUNCTION_35_1();
  v55 = v73;
  OUTLINED_FUNCTION_57(v54, v56, v73);
  if (v48)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v58 = v68;
    v57 = v69;
    (*(v69 + 32))(v68, v53, v55);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F4D1AC();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v57 + 8))(v58, v55);
  }

  v59 = v74;
  sub_1D4F1C460(v47 + v50[7], v74, &qword_1EC7EA778, &qword_1D5622E60);
  v60 = OUTLINED_FUNCTION_35_1();
  v61 = v75;
  OUTLINED_FUNCTION_57(v60, v62, v75);
  if (v48)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v64 = v70;
    v63 = v71;
    (*(v71 + 32))(v70, v59, v61);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v63 + 8))(v64, v61);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F4C330@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v70 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v75 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v77 = v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC0D8, &qword_1D561FC28);
  OUTLINED_FUNCTION_4(v78);
  v73 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v67 - v27;
  v29 = type metadata accessor for CuratorRelationshipProvider();
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_33();
  v72 = v34;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = v30[7];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v71 = v38;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = v30[8];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  v48 = v30[9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v79 = v33;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  v53 = a1;
  v54 = a1[3];
  v55 = v53[4];
  v81 = v53;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_1D4F4D260();
  v74 = v28;
  v56 = v80;
  sub_1D5616398();
  if (v56)
  {
    v63 = v79;
  }

  else
  {
    v80 = v44;
    v57 = v71;
    v67[1] = v49;
    v68 = v43;
    v67[0] = v48;
    v58 = v75;
    v59 = v76;
    v60 = v73;
    v85 = 0;
    sub_1D4F4D310();
    v61 = v74;
    sub_1D5615F78();
    v63 = v79;
    sub_1D4F1C350(v77, v79, &qword_1EC7EA790, &unk_1D561FB10);
    v84 = 1;
    sub_1D4F4D3C4();
    sub_1D5615F78();
    v64 = v60;
    sub_1D4F1C350(v58, v63 + v57, &qword_1EC7EA788, &unk_1D56223A0);
    v83 = 2;
    sub_1D4F4D478();
    sub_1D5615F78();
    sub_1D4F1C350(v59, v63 + v68, &qword_1EC7EA780, &unk_1D561FB20);
    v82 = 3;
    sub_1D4F4D52C();
    v65 = v70;
    v66 = v78;
    sub_1D5615F78();
    (*(v64 + 8))(v61, v66);
    sub_1D4F1C350(v65, v63 + v67[0], &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D4F4D5E0(v63, v69);
  }

  __swift_destroy_boxed_opaque_existential_1(v81);
  return sub_1D4F4D2B4(v63);
}

uint64_t sub_1D4F4C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F4B3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F4C860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F4B550();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F4C888(uint64_t a1)
{
  v2 = sub_1D4F4D260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F4C8C4(uint64_t a1)
{
  v2 = sub_1D4F4D260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F4C93C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v49 = *(v54 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v43 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  v47 = *(v51 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v43 - v27;
  sub_1D56162D8();
  v29 = v2;
  sub_1D4F1C460(v2, v28, &qword_1EC7EA790, &unk_1D561FB10);
  if (__swift_getEnumTagSinglePayload(v28, 1, v20) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v21 + 32))(v24, v28, v20);
    sub_1D56162F8();
    sub_1D4F4D0F8();
    sub_1D5614CB8();
    (*(v21 + 8))(v24, v20);
  }

  v30 = v53;
  sub_1D4F1C460(v2 + *(v53 + 20), v19, &qword_1EC7EA788, &unk_1D56223A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v13);
  v32 = v54;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v33 = v44;
    v34 = v45;
    (*(v45 + 32))(v44, v19, v13);
    sub_1D56162F8();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v34 + 8))(v33, v13);
  }

  v35 = v50;
  sub_1D4F1C460(v29 + *(v30 + 24), v50, &qword_1EC7EA780, &unk_1D561FB20);
  v36 = v51;
  if (__swift_getEnumTagSinglePayload(v35, 1, v51) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v38 = v46;
    v37 = v47;
    (*(v47 + 32))(v46, v35, v36);
    sub_1D56162F8();
    sub_1D4F4D1AC();
    sub_1D5614CB8();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v52;
  sub_1D4F1C460(v29 + *(v30 + 28), v52, &qword_1EC7EA778, &qword_1D5622E60);
  if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v41 = v48;
    v40 = v49;
    (*(v49 + 32))(v48, v39, v32);
    sub_1D56162F8();
    sub_1D4F219C8();
    sub_1D5614CB8();
    (*(v40 + 8))(v41, v32);
  }

  return sub_1D5616328();
}

unint64_t sub_1D4F4CF90()
{
  result = qword_1EC7EC098;
  if (!qword_1EC7EC098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC0A0, MEMORY[0x1E6977550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC098);
  }

  return result;
}

unint64_t sub_1D4F4D044()
{
  result = qword_1EC7EC0A8;
  if (!qword_1EC7EC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC0B0, MEMORY[0x1E6977048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0A8);
  }

  return result;
}

unint64_t sub_1D4F4D0F8()
{
  result = qword_1EC7EC0B8;
  if (!qword_1EC7EC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC0C0, MEMORY[0x1E6977048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0B8);
  }

  return result;
}

unint64_t sub_1D4F4D1AC()
{
  result = qword_1EC7EC0C8;
  if (!qword_1EC7EC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC0D0, MEMORY[0x1E6977550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0C8);
  }

  return result;
}

unint64_t sub_1D4F4D260()
{
  result = qword_1EC7EC0E0;
  if (!qword_1EC7EC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0E0);
  }

  return result;
}

uint64_t sub_1D4F4D2B4(uint64_t a1)
{
  v2 = type metadata accessor for CuratorRelationshipProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4F4D310()
{
  result = qword_1EC7EC0E8;
  if (!qword_1EC7EC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EDD52DE0, MEMORY[0x1E6977048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0E8);
  }

  return result;
}

unint64_t sub_1D4F4D3C4()
{
  result = qword_1EC7EC0F0;
  if (!qword_1EC7EC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D914(&qword_1EDD5D240, MEMORY[0x1E6976DC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0F0);
  }

  return result;
}

unint64_t sub_1D4F4D478()
{
  result = qword_1EC7EC0F8;
  if (!qword_1EC7EC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EDD52A30, MEMORY[0x1E6977550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0F8);
  }

  return result;
}

unint64_t sub_1D4F4D52C()
{
  result = qword_1EC7EC100;
  if (!qword_1EC7EC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D914(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC100);
  }

  return result;
}

uint64_t sub_1D4F4D5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorRelationshipProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F4D644()
{
  result = qword_1EC7EC110;
  if (!qword_1EC7EC110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC118, MEMORY[0x1E6977048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC110);
  }

  return result;
}

unint64_t sub_1D4F4D6F8()
{
  result = qword_1EC7EC120;
  if (!qword_1EC7EC120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D914(&qword_1EC7EC128, MEMORY[0x1E6976DC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC120);
  }

  return result;
}

unint64_t sub_1D4F4D7AC()
{
  result = qword_1EC7EC130;
  if (!qword_1EC7EC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC138, MEMORY[0x1E6977550]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC130);
  }

  return result;
}

unint64_t sub_1D4F4D860()
{
  result = qword_1EC7EC140;
  if (!qword_1EC7EC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D914(&qword_1EC7EC148, type metadata accessor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC140);
  }

  return result;
}

uint64_t sub_1D4F4D914(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CuratorRelationshipProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F4DA3C()
{
  result = qword_1EC7EC150;
  if (!qword_1EC7EC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC150);
  }

  return result;
}

unint64_t sub_1D4F4DA94()
{
  result = qword_1EC7EC158;
  if (!qword_1EC7EC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC158);
  }

  return result;
}

unint64_t sub_1D4F4DAEC()
{
  result = qword_1EC7EC160;
  if (!qword_1EC7EC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC160);
  }

  return result;
}

uint64_t MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

BOOL static MusicPlayer.PreviewCapabilityStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t MusicPlayer.PreviewCapabilityStatus.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicPlayer.PreviewCapabilityStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  v2 = 0;
  if (v1 != 5)
  {
    MEMORY[0x1DA6EC0D0](1);
    v2 = v1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F4DCE0()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 == 5)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D4F4DD44()
{
  result = qword_1EC7EC168;
  if (!qword_1EC7EC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC170, &qword_1D561FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC168);
  }

  return result;
}

unint64_t sub_1D4F4DDAC()
{
  result = qword_1EC7EC178;
  if (!qword_1EC7EC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC178);
  }

  return result;
}

unint64_t sub_1D4F4DE04()
{
  result = qword_1EC7EC180;
  if (!qword_1EC7EC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC180);
  }

  return result;
}

unsigned __int8 *_s23PreviewCapabilityStatusOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 5;
    v8 = v6 - 5;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s23PreviewCapabilityStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4F4DFD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D4F4DFEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s23PreviewCapabilityStatusO19UnpreviewableReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s23PreviewCapabilityStatusO19UnpreviewableReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for AudioAnalysisPropertyProvider()
{
  result = qword_1EC7EC188;
  if (!qword_1EC7EC188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F4E1E4()
{
  sub_1D4E6D600(319, &qword_1EC7EC198, &qword_1EC7EC1A0, &qword_1D561FEF0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7EC1A8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EC7EC1B0);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EC7EC1B8);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7EC1C0, &qword_1EC7EC1C8, &qword_1D561FEF8);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7EC1D0, &qword_1EC7EC1D8, &qword_1D561FF00);
    if (v8 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EC7EC1E0);
      v1 = v9;
      if (v10 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EC1E8, &qword_1EC7EC1F0, &qword_1D561FF08);
        v1 = v11;
        if (v12 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EC7EC1F8, &qword_1EC7EC200, &qword_1D561FF10);
          v1 = v13;
          if (v14 <= 0x3F)
          {
            sub_1D4F4E49C();
            v1 = v15;
            if (v16 <= 0x3F)
            {
              v1 = sub_1D560D838();
              if (v17 <= 0x3F)
              {
                v1 = sub_1D5610088();
                if (v18 <= 0x3F)
                {
                  sub_1D4E518A0(319, &qword_1EDD5F070);
                  v1 = v19;
                  if (v20 <= 0x3F)
                  {
                    sub_1D4E5CF94();
                    v1 = v21;
                    if (v22 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

  return v1;
}

void sub_1D4F4E49C()
{
  if (!qword_1EDD5D050)
  {
    sub_1D560CDE8();
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D050);
    }
  }
}

uint64_t sub_1D4F4E53C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567F5C0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_84;
  }

  v5 = qword_1EC7E9750;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_15_18();
  }

  sub_1D4EC5794(&qword_1EC7EC248, &qword_1EC7EC240, &unk_1D5620070);
  if (sub_1D5614D18())
  {
    if (*(v2 + 33))
    {
LABEL_6:

      v7 = 0;
      v8 = 0;
LABEL_14:
      *a1 = v8;
LABEL_15:
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = v7;
      return result;
    }

    v13 = *(v2 + 32);
    v14 = v2[3];
    v15 = *(v2 + 4);
    v16 = v2[1];
    v17 = *v2;
LABEL_13:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
    v8 = swift_allocObject();

    *(v8 + 16) = v17;
    *(v8 + 24) = v16;
    *(v8 + 32) = v15 & 1;
    *(v8 + 40) = v14;
    *(v8 + 48) = v13 & 1;
    goto LABEL_14;
  }

  v9 = qword_1EC7E9758;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_13_21();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v9)
  {
    v10 = v2[5];
    if (v10)
    {
      v11 = v2[6];

      v12 = &type metadata for AudioAnalysis.EventTimes;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = v12;
    return result;
  }

  v18 = qword_1EC7E9760;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_12_22();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v18)
  {
    if ((*(v2 + 105) & 1) == 0)
    {
      v22 = *(v2 + 104);
      v23 = v2[12];
      v24 = *(v2 + 22);
      v25 = v2[10];
      v26 = *(v2 + 18);
      v29 = v2 + 7;
      v27 = v2[7];
      v28 = v29[1];
      v20 = swift_allocObject();

      *(v20 + 16) = v27;
      *(v20 + 24) = v28;
      *(v20 + 32) = v26 & 1;
      *(v20 + 40) = v25;
      *(v20 + 48) = v24 & 1;
      *(v20 + 56) = v23;
      *(v20 + 64) = v22 & 1;
      v19 = &type metadata for AudioAnalysis.BeatsPerMinute;
      goto LABEL_29;
    }

LABEL_20:

    v19 = 0;
    v20 = 0;
LABEL_29:
    *a1 = v20;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v19;
    return result;
  }

  v21 = qword_1EC7E9768;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_11_19();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v21)
  {
    if (*(v2 + 145))
    {
      goto LABEL_6;
    }

    v13 = *(v2 + 144);
    v14 = v2[17];
    v15 = *(v2 + 32);
    v16 = v2[15];
    v17 = v2[14];
    goto LABEL_13;
  }

  v30 = qword_1EC7E9770;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_10_17();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v30)
  {
    if (*(v2 + 185))
    {
      goto LABEL_6;
    }

    v13 = *(v2 + 184);
    v14 = v2[22];
    v15 = *(v2 + 42);
    v16 = v2[20];
    v17 = v2[19];
    goto LABEL_13;
  }

  v31 = qword_1EC7E9798;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v31)
  {
    if ((v2[28] & 1) == 0)
    {
      v20 = swift_allocObject();
      v50 = *(v2 + 13);
      v51 = *(v2 + 12);

      *(v20 + 16) = v51;
      *(v20 + 32) = v50;
      v19 = &type metadata for AudioAnalysis.Fades;
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v32 = qword_1EC7E9778;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_9_19();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v32)
  {
    if (*(v2 + 313))
    {

      v7 = 0;
      v33 = 0;
    }

    else
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1C8, &qword_1D561FEF8);
      v33 = swift_allocObject();

      result = memcpy((v33 + 16), v2 + 29, 0x51uLL);
    }

    *a1 = v33;
    goto LABEL_15;
  }

  v34 = qword_1EC7E9780;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_8_22();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v34)
  {
    if (*(v2 + 353))
    {
      goto LABEL_6;
    }

    v13 = *(v2 + 352);
    v14 = v2[43];
    v15 = *(v2 + 84);
    v16 = v2[41];
    v17 = v2[40];
    goto LABEL_13;
  }

  v35 = qword_1EC7E9788;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_7_23();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v35)
  {
    v36 = *(v2 + 354);
    v8 = v36 | (*(v2 + 179) << 32);
    if ((v36 & 0xFF00) != 0x400)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1D8, &qword_1D561FF00);

      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v37 = qword_1EC7E9790;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_6_22();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if (v37)
  {
    if (*(v2 + 393))
    {

      v8 = 0;
      v7 = 0;
      goto LABEL_14;
    }

    v13 = *(v2 + 392);
    v14 = v2[48];
    v15 = *(v2 + 94);
    v16 = v2[46];
    v17 = v2[45];
    goto LABEL_13;
  }

  v38 = qword_1EC7E97A0;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_21_15();
  if ((v38 & 1) == 0)
  {
    v44 = qword_1EC7E97B0;

    if (v44 != -1)
    {
      OUTLINED_FUNCTION_4_19();
    }

    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_21_15();
    if (v44)
    {
      v45 = v2[53];
      if (v45)
      {
        v46 = &qword_1EC7EC1F0;
        v47 = &qword_1D561FF08;
LABEL_78:
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);

LABEL_82:

        *a1 = v45;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = v49;
        return result;
      }
    }

    else
    {
      v48 = qword_1EC7E97A8;

      if (v48 != -1)
      {
        OUTLINED_FUNCTION_3_18();
      }

      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_26_10();
      if ((v4 & 1) == 0)
      {
        while (1)
        {
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
LABEL_84:
          OUTLINED_FUNCTION_17_13();
          __break(1u);
        }
      }

      v45 = v2[54];
      if (v45)
      {
        v46 = &qword_1EC7EC200;
        v47 = &qword_1D561FF10;
        goto LABEL_78;
      }
    }

    v49 = 0;
    goto LABEL_82;
  }

  v39 = v2[52];
  if (v39)
  {
    v40 = *(v2 + 102);
    v41 = v2[50];

    v42 = &type metadata for AudioAnalysis.LoudnessCurve;
    v43 = v40 & 1;
  }

  else
  {

    v43 = 0;
    v41 = 0;
    v42 = 0;
  }

  *a1 = v41;
  *(a1 + 8) = v43;
  *(a1 + 15) = 0;
  *(a1 + 13) = 0;
  *(a1 + 9) = 0;
  *(a1 + 16) = v39;
  *(a1 + 24) = v42;
  return result;
}

void sub_1D4F4EDC4()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_17_13();
  __break(1u);
}

uint64_t sub_1D4F4EE74(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC228, &qword_1D5620058);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AudioAnalysisPropertyProvider();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC230, &unk_1D5620060);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D567F510);
    v42 = a1;
    v37 = *(v7 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v38 = 78;
    goto LABEL_31;
  }

  v3 = v16;
  sub_1D4E628D4(a2, &v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_1D4F507B0(v11);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D567F550);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v38 = 81;
    goto LABEL_31;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_1D4F50818(v11, v15);
  v17 = qword_1EC7E9798;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  OUTLINED_FUNCTION_27_9(qword_1EC7F7D38);
  sub_1D4EC5794(&qword_1EC7EC238, &qword_1EC7EC230, &unk_1D5620060);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_26_10();
  if (v17)
  {

    v18 = *(v15 + 12);
    v39 = *(v15 + 13);
    v40 = v18;
    v19 = v15[224];
    result = sub_1D4F5087C(v15);
    if (v19 == 1)
    {
      v21 = *(v4 + 192);
      v22 = *(v4 + 208);
      v23 = *(v4 + 224);
    }

    else
    {
      v23 = 0;
      v22 = v39;
      v21 = v40;
    }

    *(v4 + 192) = v21;
    *(v4 + 208) = v22;
    *(v4 + 224) = v23;
  }

  else
  {
    v24 = qword_1EC7E97A0;

    if (v24 != -1)
    {
      OUTLINED_FUNCTION_5_16();
    }

    OUTLINED_FUNCTION_27_9(qword_1EC7F7D40);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_26_10();
    if (v24)
    {

      v25 = *(v15 + 50);
      v26 = *(v15 + 51);
      v27 = *(v15 + 52);

      sub_1D4F5087C(v15);
      if (v27)
      {
        v28 = *(v4 + 416);
      }

      else
      {
        v25 = *(v4 + 400);
        v26 = *(v4 + 408);
        v36 = *(v4 + 416);
      }

      *(v4 + 400) = v25;
      *(v4 + 408) = v26;
      *(v4 + 416) = v27;
    }

    else
    {
      v29 = qword_1EC7E97B0;

      if (v29 != -1)
      {
        OUTLINED_FUNCTION_4_19();
      }

      OUTLINED_FUNCTION_27_9(qword_1EC7F7D48);
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_26_10();
      if (v29)
      {

        v30 = *(v15 + 53);

        sub_1D4F5087C(v15);
        v31 = *(v4 + 424);
        if (!v30)
        {
        }

        *(v4 + 424) = v30;
      }

      else
      {
        v32 = qword_1EC7E97A8;

        if (v32 != -1)
        {
          OUTLINED_FUNCTION_3_18();
        }

        OUTLINED_FUNCTION_27_9(qword_1EC87C738);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
        sub_1D4EC5794(&qword_1EC7EC248, &qword_1EC7EC240, &unk_1D5620070);
        sub_1D5614D18();
        OUTLINED_FUNCTION_26_10();
        if ((v33 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D567F590);
            v42 = v3;
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v38 = 95;
LABEL_31:
            *&v39 = v38;
            OUTLINED_FUNCTION_17_13();
            __break(1u);
          }
        }

        v34 = *(v15 + 54);

        sub_1D4F5087C(v15);
        v35 = *(v4 + 432);
        if (!v34)
        {
        }

        *(v4 + 432) = v34;
      }
    }
  }

  return result;
}

uint64_t sub_1D4F4F3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561FEC0;
  if (qword_1EC7E9750 != -1)
  {
    OUTLINED_FUNCTION_15_18();
  }

  *(v0 + 32) = qword_1EC87C6F0;
  v1 = qword_1EC7E9758;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_13_21();
  }

  *(v0 + 40) = qword_1EC87C6F8;
  v2 = qword_1EC7E9760;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_12_22();
  }

  *(v0 + 48) = qword_1EC87C700;
  v3 = qword_1EC7E9768;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_11_19();
  }

  *(v0 + 56) = qword_1EC87C708;
  v4 = qword_1EC7E9770;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_10_17();
  }

  *(v0 + 64) = qword_1EC87C710;
  v5 = qword_1EC7E9798;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  *(v0 + 72) = qword_1EC7F7D38;
  v6 = qword_1EC7E9778;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_9_19();
  }

  *(v0 + 80) = qword_1EC87C718;
  v7 = qword_1EC7E9780;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_8_22();
  }

  *(v0 + 88) = qword_1EC87C720;
  v8 = qword_1EC7E9788;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_7_23();
  }

  *(v0 + 96) = qword_1EC87C728;
  v9 = qword_1EC7E9790;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_6_22();
  }

  *(v0 + 104) = qword_1EC87C730;
  v10 = qword_1EC7E97A0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_5_16();
  }

  *(v0 + 112) = qword_1EC7F7D40;
  v11 = qword_1EC7E97B0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  *(v0 + 120) = qword_1EC7F7D48;
  v12 = qword_1EC7E97A8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_3_18();
  }

  *(v0 + 128) = qword_1EC87C738;
  qword_1EC87BE68 = v0;
}

void sub_1D4F4F6B8(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 33);
  if (*(a1 + 33))
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 33))
    {
      return;
    }

    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = *(a1 + 32);
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    v148[0] = *a2;
    v148[1] = v10;
    v149 = v11 & 1;
    v150 = v12;
    v151 = v13 & 1;
    v144[0] = v5;
    v144[1] = v6;
    v145 = v7 & 1;
    v146 = v8;
    v147 = v9 & 1;
    if ((sub_1D4F50948(v144, v148) & 1) == 0)
    {
      return;
    }
  }

  v14 = a1[6];
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  if (!a1[5])
  {
    v24 = a1[6];
    sub_1D4F50DE0(0);
    if (!v16)
    {
      sub_1D4F50DE0(0);
      sub_1D4F50E20(0);
      goto LABEL_19;
    }

    v25 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50DE0(v25);
    goto LABEL_14;
  }

  v17 = a1[5];
  if (!v16)
  {
    v26 = a1[6];
    sub_1D4F50DE0(v17);
    sub_1D4F50DE0(0);
    v27 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v27);

LABEL_14:
    v28 = OUTLINED_FUNCTION_61();
    sub_1D4F50E20(v28);
    v29 = OUTLINED_FUNCTION_15_2();
LABEL_16:
    sub_1D4F50E20(v29);
    return;
  }

  if ((sub_1D4EFA0D0(v17, *(a2 + 40)) & 1) == 0)
  {
    v30 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v30);
    v31 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50DE0(v31);
    v32 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v32);
    v33 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50E20(v33);

    v29 = OUTLINED_FUNCTION_61();
    goto LABEL_16;
  }

  v18 = sub_1D4EFA0D0(v14, v15);
  v19 = OUTLINED_FUNCTION_61();
  sub_1D4F50DE0(v19);
  v20 = OUTLINED_FUNCTION_15_2();
  sub_1D4F50DE0(v20);
  v21 = OUTLINED_FUNCTION_61();
  sub_1D4F50DE0(v21);
  v22 = OUTLINED_FUNCTION_15_2();
  sub_1D4F50E20(v22);

  v23 = OUTLINED_FUNCTION_61();
  sub_1D4F50E20(v23);
  if ((v18 & 1) == 0)
  {
    return;
  }

LABEL_19:
  v34 = *(a1 + 105);
  v35 = *(a2 + 105);
  if (v34)
  {
    if ((*(a2 + 105) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v36 = *(a2 + 56);
    v37 = *(a2 + 72);
    v38 = *(a2 + 80);
    v39 = *(a2 + 88);
    v40 = *(a2 + 96);
    v41 = *(a2 + 104);
    v42 = *(a1 + 9);
    __dst[0] = *(a1 + 7);
    __dst[1] = v42;
    __dst[2] = *(a1 + 11);
    LOBYTE(__dst[3]) = *(a1 + 104);
    BYTE1(__dst[3]) = v34;
    if (v35)
    {
      return;
    }

    v126[0] = v36;
    LOBYTE(v126[1]) = v37 & 1;
    *(&v126[1] + 1) = v38;
    LOBYTE(v126[2]) = v39 & 1;
    *(&v126[2] + 1) = v40;
    LOBYTE(v126[3]) = v41 & 1;
    if ((static AudioAnalysis.BeatsPerMinute.== infix(_:_:)(__dst, v126) & 1) == 0)
    {
      return;
    }
  }

  v43 = *(a2 + 145);
  if (*(a1 + 145))
  {
    if ((*(a2 + 145) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 145))
    {
      return;
    }

    v44 = a1[14];
    v45 = a1[15];
    v46 = a1[16];
    v47 = a1[17];
    v48 = *(a1 + 144);
    v49 = *(a2 + 120);
    v50 = *(a2 + 128);
    v51 = *(a2 + 136);
    v52 = *(a2 + 144);
    v140[0] = *(a2 + 112);
    v140[1] = v49;
    v141 = v50 & 1;
    v142 = v51;
    v143 = v52 & 1;
    v136[0] = v44;
    v136[1] = v45;
    v137 = v46 & 1;
    v138 = v47;
    v139 = v48 & 1;
    if ((sub_1D4F50948(v136, v140) & 1) == 0)
    {
      return;
    }
  }

  v53 = *(a2 + 185);
  if (*(a1 + 185))
  {
    if ((*(a2 + 185) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 185))
    {
      return;
    }

    v54 = a1[19];
    v55 = a1[20];
    v56 = a1[21];
    v57 = a1[22];
    v58 = *(a1 + 184);
    v59 = *(a2 + 160);
    v60 = *(a2 + 168);
    v61 = *(a2 + 176);
    v62 = *(a2 + 184);
    v132[0] = *(a2 + 152);
    v132[1] = v59;
    v133 = v60 & 1;
    v134 = v61;
    v135 = v62 & 1;
    v128[0] = v54;
    v128[1] = v55;
    v129 = v56 & 1;
    v130 = v57;
    v131 = v58 & 1;
    if ((sub_1D4F50948(v128, v132) & 1) == 0)
    {
      return;
    }
  }

  if (a1[28])
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 224))
    {
      return;
    }

    v64 = *(a1 + 24) == *(a2 + 192) && *(a1 + 25) == *(a2 + 200);
    v65 = v64 && *(a1 + 26) == *(a2 + 208);
    if (!v65 || *(a1 + 27) != *(a2 + 216))
    {
      return;
    }
  }

  v63 = *(a2 + 313);
  if (*(a1 + 313))
  {
    if ((*(a2 + 313) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 313))
    {
      return;
    }

    memcpy(__dst, (a2 + 232), 0x51uLL);
    memcpy(v126, a1 + 29, 0x51uLL);
    if (!sub_1D4F509B4(v126, __dst))
    {
      return;
    }
  }

  v67 = *(a2 + 353);
  if (*(a1 + 353))
  {
    if ((*(a2 + 353) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 353))
    {
      return;
    }

    v68 = a1[40];
    v69 = a1[41];
    v70 = a1[42];
    v71 = a1[43];
    v72 = *(a1 + 352);
    v73 = *(a2 + 328);
    v74 = *(a2 + 336);
    v75 = *(a2 + 344);
    v76 = *(a2 + 352);
    v122[0] = *(a2 + 320);
    v122[1] = v73;
    v123 = v74 & 1;
    v124 = v75;
    v125 = v76 & 1;
    v118[0] = v68;
    v118[1] = v69;
    v119 = v70 & 1;
    v120 = v71;
    v121 = v72 & 1;
    if ((sub_1D4F50948(v118, v122) & 1) == 0)
    {
      return;
    }
  }

  v77 = *(a2 + 354) & 0xFF00;
  if ((*(a1 + 354) & 0xFF00) == 0x400)
  {
    if (v77 != 1024)
    {
      return;
    }
  }

  else if (v77 == 1024 || (sub_1D4F50A58(*(a1 + 354) | (*(a1 + 179) << 32), *(a2 + 354) | (*(a2 + 358) << 32)) & 1) == 0)
  {
    return;
  }

  v78 = *(a2 + 393);
  if (*(a1 + 393))
  {
    if ((*(a2 + 393) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 393))
    {
      return;
    }

    v79 = a1[45];
    v80 = a1[46];
    v81 = a1[47];
    v82 = a1[48];
    v83 = *(a1 + 392);
    v84 = *(a2 + 368);
    v85 = *(a2 + 376);
    v86 = *(a2 + 384);
    v87 = *(a2 + 392);
    v114[0] = *(a2 + 360);
    v114[1] = v84;
    v115 = v85 & 1;
    v116 = v86;
    v117 = v87 & 1;
    v110[0] = v79;
    v110[1] = v80;
    v111 = v81 & 1;
    v112 = v82;
    v113 = v83 & 1;
    if ((sub_1D4F50948(v110, v114) & 1) == 0)
    {
      return;
    }
  }

  v88 = *(a2 + 416);
  if (a1[52])
  {
    if (v88)
    {
      v89 = *(a2 + 408);
      if (a1[51])
      {
        if ((v89 & 1) == 0)
        {
LABEL_73:
          v90 = a1[52];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else if (v89 & 1 | (*(a1 + 50) != *(a2 + 400)))
      {
        goto LABEL_73;
      }

      if ((sub_1D4EFA0D0(a1[52], *(a2 + 416)) & 1) == 0)
      {
        return;
      }

      goto LABEL_82;
    }

    v91 = a1[52];
LABEL_77:

    return;
  }

  if (v88)
  {
    goto LABEL_77;
  }

LABEL_82:
  v92 = *(a2 + 424);
  if (a1[53])
  {
    if (!v92 || (sub_1D4F0B2DC() & 1) == 0)
    {
      return;
    }
  }

  else if (v92)
  {
    return;
  }

  v93 = a1[54];
  v94 = *(a2 + 432);
  if (v93)
  {
    if (!v94 || (sub_1D4EF7F70(v93, v94) & 1) == 0)
    {
      return;
    }
  }

  else if (v94)
  {
    return;
  }

  v95 = a1[55];
  v96 = *(a2 + 440);
  sub_1D4EF6F7C();
  if ((v97 & 1) == 0)
  {
    return;
  }

  v98 = type metadata accessor for AudioAnalysisPropertyProvider();
  v99 = v98[18];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return;
  }

  v100 = v98[19];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v101 = v98[20];
  v102 = (a1 + v101);
  v103 = *(a1 + v101 + 8);
  v104 = (a2 + v101);
  v105 = v104[1];
  if (v103)
  {
    if (!v105)
    {
      return;
    }

    v106 = *v102 == *v104 && v103 == v105;
    if (!v106 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v105)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v98[21]);
  sub_1D4F286E0();
  if (v107)
  {
    OUTLINED_FUNCTION_44_0(v98[22]);
    sub_1D4F286E0();
    if (v108)
    {
      OUTLINED_FUNCTION_44_0(v98[23]);
      sub_1D4F286E0();
      if (v109)
      {
        OUTLINED_FUNCTION_44_0(v98[24]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D4F4FDB8(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 33) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v4 = *(v1 + 32);
    v5 = v1[3];
    v6 = *(v1 + 4);
    v7 = v1[1];
    v67 = *v1;
    v68 = v7;
    v69 = v6 & 1;
    v70 = v5;
    v71 = v4 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (v1[5])
  {
    v8 = v1[6];
    OUTLINED_FUNCTION_27();
    v9 = OUTLINED_FUNCTION_24();
    sub_1D4F07ACC(v9, v10);
    sub_1D4F07ACC(a1, v8);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v11 = *(v1 + 9);
  v63 = *(v1 + 7);
  v64 = v11;
  v65 = *(v1 + 11);
  v66 = *(v1 + 52);
  sub_1D4F860C8();
  if (*(v1 + 145) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v12 = *(v1 + 144);
    v13 = v1[17];
    v14 = *(v1 + 32);
    v15 = v1[15];
    v58 = v1[14];
    v59 = v15;
    v60 = v14 & 1;
    v61 = v13;
    v62 = v12 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (*(v1 + 185) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v16 = *(v1 + 184);
    v17 = v1[22];
    v18 = *(v1 + 42);
    v19 = v1[20];
    v53 = v1[19];
    v54 = v19;
    v55 = v18 & 1;
    v56 = v17;
    v57 = v16 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  v20 = *(v1 + 13);
  v50 = *(v1 + 12);
  v51 = v20;
  v52 = *(v1 + 224);
  sub_1D4F86040();
  if (*(v1 + 313))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    memcpy(__dst, v1 + 29, sizeof(__dst));
    OUTLINED_FUNCTION_27();
    sub_1D4F50C98(a1);
  }

  if (*(v1 + 353) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v44 = v1[40];
    v45 = v1[41];
    v46 = v1[42] & 1;
    v47 = v1[43];
    v48 = v1[44] & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  v21 = *(v1 + 354);
  v22 = v21 | (*(v1 + 179) << 32);
  if ((v21 & 0xFF00) == 0x400)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    v23 = OUTLINED_FUNCTION_24();
    sub_1D4F50B48(v23, v24);
  }

  if (*(v1 + 393) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v39 = v1[45];
    v40 = v1[46];
    v41 = v1[47] & 1;
    v42 = v1[48];
    v43 = v1[49] & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (v1[52])
  {
    v25 = v1[50];
    v26 = *(v1 + 102);
    OUTLINED_FUNCTION_27();
    if (v26)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1DA6EC100](v27);
    }

    v28 = OUTLINED_FUNCTION_24();
    sub_1D4F07ACC(v28, v29);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[53])
  {
    OUTLINED_FUNCTION_27();
    v30 = OUTLINED_FUNCTION_24();
    sub_1D4F0B2F4(v30);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[54])
  {
    OUTLINED_FUNCTION_27();
    v31 = OUTLINED_FUNCTION_24();
    sub_1D4F07A58(v31, v32);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v33 = v1[55];
  sub_1D4F070FC();
  v34 = type metadata accessor for AudioAnalysisPropertyProvider();
  v35 = v34[18];
  sub_1D560D838();
  sub_1D4F50E60(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v36 = v34[19];
  sub_1D5610088();
  sub_1D4F50E60(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v37 = (v2 + v34[20]);
  if (v37[1])
  {
    v38 = *v37;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v34[21]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[22]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[23]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[24]);

  sub_1D4F31AC0();
}

uint64_t sub_1D4F50200()
{
  sub_1D56162D8();
  sub_1D4F4FDB8(v1);
  return sub_1D5616328();
}

void (*sub_1D4F50254(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4F4E53C(v5);
  return sub_1D4F502C0;
}

void sub_1D4F502C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4F508D8(v2, v2 + 32);

    sub_1D4F4EDC4();
  }

  v4 = *(v2 + 64);

  sub_1D4F4EDC4();
}

uint64_t sub_1D4F50314()
{
  sub_1D56162D8();
  sub_1D4F4FDB8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F50398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4F50E60(&qword_1EC7EC220, type metadata accessor for AudioAnalysisPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4F50434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F504A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D4F5051C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 72);
  return result;
}

uint64_t sub_1D4F50540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F505B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D4F5061C(uint64_t a1)
{
  v2 = sub_1D4F50E60(&qword_1EC7EC220, type metadata accessor for AudioAnalysisPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4F50698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F50E60(&qword_1EC7EC208, type metadata accessor for AudioAnalysisPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F5072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F50E60(&qword_1EC7EC218, type metadata accessor for AudioAnalysisPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4F507B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC228, &qword_1D5620058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F50818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAnalysisPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5087C(uint64_t a1)
{
  v2 = type metadata accessor for AudioAnalysisPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F508D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F50948(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1D4F509B4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v4 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (!v4 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      v6 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
      if (v6 && *(a1 + 72) == *(a2 + 72))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 80) & 1) != 0;
}

uint64_t sub_1D4F50A58(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = WORD2(a1);
  v6 = WORD2(a2);
  v5 = a2;
  if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v7, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((HIWORD(v7) & 0xFF00) != 0x400)
  {
    v4 = HIWORD(v7);
    if ((HIWORD(v5) & 0xFF00) == 0x400)
    {
      return 0;
    }

    v3 = HIWORD(v5);
    if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v4, &v3) & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if ((v8 & 0xFF00) == 0x400)
    {
      if ((v6 & 0xFF00) != 0x400)
      {
        return 0;
      }
    }

    else
    {
      v4 = v8;
      if ((v6 & 0xFF00) == 0x400)
      {
        return 0;
      }

      v3 = v6;
      if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v4, &v3) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((HIWORD(v5) & 0xFF00) == 0x400)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1D4F50B48(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 == 21)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v3);
  }

  sub_1D56162F8();
  if ((a2 & 0xFF00) != 0x300)
  {
    MEMORY[0x1DA6EC0D0](BYTE1(a2));
  }

  if ((a2 & 0xFF000000) == 0x4000000)
  {
    goto LABEL_10;
  }

  sub_1D56162F8();
  sub_1D56162F8();
  if ((a2 & 0xFF0000) != 0x150000)
  {
    MEMORY[0x1DA6EC0D0](BYTE2(a2));
  }

  if ((a2 & 0xFF000000) == 0x3000000)
  {
LABEL_10:
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](BYTE3(a2));
  }

  if ((a2 & 0xFF0000000000) == 0x40000000000)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  sub_1D56162F8();
  if ((a2 & 0xFF00000000) != 0x1500000000)
  {
    MEMORY[0x1DA6EC0D0](BYTE4(a2));
  }

  if ((a2 & 0xFF0000000000) == 0x30000000000)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](BYTE5(a2));
}

uint64_t sub_1D4F50C98(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x1DA6EC100](*&v7);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1DA6EC100](*&v8);
  sub_1D4F85FD0(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);

  return sub_1D4F85FD0(a1, v9, v10, v11, v12);
}

uint64_t sub_1D4F50D3C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (*(v0 + 16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_1D56162F8();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC100](v3);
  }

  if (*(v0 + 32) == 1)
  {
    return sub_1D56162F8();
  }

  v5 = *(v0 + 24);
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1DA6EC100](v6);
}

uint64_t sub_1D4F50DE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4F50E20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4F50E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Artist.PlayableItem.id.getter()
{
  Artist.PlayableItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t Artist.PlayableItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Artist.PlayableItem();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D4F51070(v2, v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_1D5614898();
      v13 = MEMORY[0x1E69773A0];
    }

    else
    {
      v12 = sub_1D5614408();
      v13 = MEMORY[0x1E6977150];
    }
  }

  else
  {
    v12 = sub_1D5613AF8();
    v13 = MEMORY[0x1E6976CF0];
  }

  a1[3] = v12;
  a1[4] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, v10, v12);
}

uint64_t type metadata accessor for Artist.PlayableItem()
{
  result = qword_1EC7EC2E0;
  if (!qword_1EC7EC2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F51070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist.PlayableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Artist.PlayableItem.title.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5614408();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v6 = sub_1D5614898();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_15_6();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_24_17();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v22 = OUTLINED_FUNCTION_33_18();
  sub_1D4F51070(v22, v23);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = OUTLINED_FUNCTION_14_15(v9);
      v26(v25);
      sub_1D56146D8();
      OUTLINED_FUNCTION_22_15();
      (*(v9 + 8))(v1, v6);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_19_15();
      v33(v32);
      sub_1D5614388();
      OUTLINED_FUNCTION_22_15();
      (*(v6 + 8))(v0, v15);
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_8_23(v15);
    v28(v27);
    sub_1D5613AB8();
    OUTLINED_FUNCTION_22_15();
    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_45_3();
    v31(v30);
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_46();
}

void Artist.PlayableItem.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5614408();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v6 = sub_1D5614898();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_15_6();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_24_17();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v22 = OUTLINED_FUNCTION_33_18();
  sub_1D4F51070(v22, v23);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = OUTLINED_FUNCTION_14_15(v9);
      v26(v25);
      sub_1D5614468();
      OUTLINED_FUNCTION_22_15();
      (*(v9 + 8))(v1, v6);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_19_15();
      v33(v32);
      _s8MusicKit7StationV0aB8InternalE12providerNameSSSgvg_0();
      OUTLINED_FUNCTION_22_15();
      (*(v6 + 8))(v0, v15);
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_8_23(v15);
    v28(v27);
    sub_1D5613868();
    OUTLINED_FUNCTION_22_15();
    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_45_3();
    v31(v30);
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F51614()
{
  OUTLINED_FUNCTION_47();
  v40 = v2;
  v41 = v3;
  v39 = v4;
  v5 = sub_1D5614408();
  v6 = OUTLINED_FUNCTION_4(v5);
  v38 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_26_11();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_1D5613AF8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v25 = type metadata accessor for Artist.PlayableItem();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  sub_1D4F51070(v0, v30 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = (*(v13 + 32))(v18, v31, v10);
      v40(v33);
      (*(v13 + 8))(v18, v10);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_32_18(v38);
      v37 = v36(v35, v31, v5);
      v41(v37);
      (*(v38 + 8))(v1, v5);
    }
  }

  else
  {
    v34 = (*(v22 + 32))(v0, v31, v19);
    v39(v34);
    (*(v22 + 8))(v0, v19);
  }

  OUTLINED_FUNCTION_46();
}

void static Artist.PlayableItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v58 = v1;
  v59 = v2;
  v3 = sub_1D5614408();
  v4 = OUTLINED_FUNCTION_4(v3);
  v56 = v5;
  v57 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v53 = v9 - v8;
  v10 = sub_1D5614898();
  v11 = OUTLINED_FUNCTION_4(v10);
  v54 = v12;
  v55 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = OUTLINED_FUNCTION_15_6();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = type metadata accessor for Artist.PlayableItem();
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v52 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v52 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC288, &qword_1D5620090);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = &v52 - v39;
  v41 = *(v38 + 56);
  sub_1D4F51070(v58, &v52 - v39);
  sub_1D4F51070(v59, &v40[v41]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D4F51070(v40, v33);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v54;
        v43 = v55;
        (*(v54 + 32))(v0, &v40[v41], v55);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v45 = *(v44 + 8);
        v46 = OUTLINED_FUNCTION_75_2();
        v45(v46);
        (v45)(v33, v43);
LABEL_13:
        sub_1D4F51D44(v40);
        goto LABEL_14;
      }

      (*(v54 + 8))(v33, v55);
    }

    else
    {
      sub_1D4F51070(v40, v30);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v48 = v56;
        v47 = v57;
        v49 = v53;
        (*(v56 + 32))(v53, &v40[v41], v57);
        sub_1D5614368();
        v50 = *(v48 + 8);
        v50(v49, v47);
        v50(v30, v47);
        goto LABEL_13;
      }

      (*(v56 + 8))(v30, v57);
    }
  }

  else
  {
    sub_1D4F51070(v40, v35);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v18 + 32))(v23, &v40[v41], v15);
      OUTLINED_FUNCTION_210();
      sub_1D5613A68();
      v51 = *(v18 + 8);
      v51(v23, v15);
      v51(v35, v15);
      goto LABEL_13;
    }

    (*(v18 + 8))(v35, v15);
  }

  sub_1D4F51CDC(v40);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F51CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC288, &qword_1D5620090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F51D44(uint64_t a1)
{
  v2 = type metadata accessor for Artist.PlayableItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Artist.PlayableItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D5614408();
  v5 = OUTLINED_FUNCTION_4(v4);
  v43 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_26_11();
  v10 = OUTLINED_FUNCTION_4(v9);
  v42 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = OUTLINED_FUNCTION_15_6();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v20 = type metadata accessor for Artist.PlayableItem();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  sub_1D4F51070(v0, v25 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v42 + 32))(v2, v26, v9);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_11_20();
      sub_1D4F53C90(v28, v29);
      sub_1D5614CB8();
      v30 = *(v42 + 8);
      v31 = OUTLINED_FUNCTION_75_2();
      v32(v31);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_32_18(v43);
      v39(v38, v26, v4);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_9_20();
      sub_1D4F53C90(v40, v41);
      sub_1D5614CB8();
      (*(v43 + 8))(v1, v4);
    }
  }

  else
  {
    v33 = *(v17 + 32);
    v34 = OUTLINED_FUNCTION_210();
    v35(v34);
    MEMORY[0x1DA6EC0D0](0);
    OUTLINED_FUNCTION_10_18();
    sub_1D4F53C90(v36, v37);
    sub_1D5614CB8();
    (*(v17 + 8))(v3, v14);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t Artist.PlayableItem.hashValue.getter()
{
  sub_1D56162D8();
  Artist.PlayableItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F52110()
{
  sub_1D56162D8();
  Artist.PlayableItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F5214C@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.PlayableItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4F52178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D4F521F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D4F52270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D4F522EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D4F52368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D4F523E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D4F52460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D4F524DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D4F52558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D4F525D4()
{
  sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return sub_1D5613028();
}

uint64_t sub_1D4F52650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D4F526D4()
{
  sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return sub_1D5612FD8();
}

uint64_t sub_1D4F52758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D4F527D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D4F52850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975448] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D4F53C90(&qword_1EC7EC2C8, type metadata accessor for Artist.PlayableItem);
  *v10 = v4;
  v10[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v11);
}

uint64_t Artist.PlayableItem.init(from:)(uint64_t *a1)
{
  type metadata accessor for Artist.PlayableItem();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_12();
  sub_1D4F53C90(v3, v4);
  OUTLINED_FUNCTION_12_23();
  sub_1D4F53C90(v5, v1);
  OUTLINED_FUNCTION_13_22(&qword_1EC7EC2A0);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.PlayableItem.encode(to:)()
{
  type metadata accessor for Artist.PlayableItem();
  OUTLINED_FUNCTION_2_12();
  sub_1D4F53C90(v1, v2);
  OUTLINED_FUNCTION_12_23();
  sub_1D4F53C90(v3, v0);
  OUTLINED_FUNCTION_13_22(&qword_1EC7EC2A0);
  return sub_1D5612688();
}

void Artist.PlayableItem.description.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5614408();
  v3 = OUTLINED_FUNCTION_4(v2);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_26_11();
  v8 = OUTLINED_FUNCTION_4(v7);
  v46 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_15_6();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_24_17();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v22 = OUTLINED_FUNCTION_20_5();
  sub_1D4F51070(v22, v23);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = OUTLINED_FUNCTION_14_15(v46);
      v26(v25);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_18_18();
      OUTLINED_FUNCTION_11_20();
      sub_1D4F53C90(v27, v28);
      v29 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v29);

      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      v30 = *(v46 + 8);
      v31 = OUTLINED_FUNCTION_75_2();
      v32(v31);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_32_18(v47);
      v42(v41, v1, v2);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_18_18();
      OUTLINED_FUNCTION_9_20();
      sub_1D4F53C90(v43, v44);
      v45 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v45);

      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      (*(v47 + 8))(v0, v2);
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_8_23(v15);
    v34(v33);
    OUTLINED_FUNCTION_153();
    sub_1D5615B68();

    OUTLINED_FUNCTION_18_18();
    OUTLINED_FUNCTION_10_18();
    sub_1D4F53C90(v35, v36);
    v37 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v37);

    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    v38 = *(v15 + 8);
    v39 = OUTLINED_FUNCTION_45_3();
    v40(v39);
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_46();
}

void Artist.PlayableItem.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5614408();
  v3 = OUTLINED_FUNCTION_4(v2);
  v54 = v4;
  v55 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_26_11();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_15_6();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = OUTLINED_FUNCTION_24_17();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v23 = OUTLINED_FUNCTION_20_5();
  sub_1D4F51070(v23, v24);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = OUTLINED_FUNCTION_14_15(v10);
      v27(v26);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_17_14();
      v28 = sub_1D5614588();
      OUTLINED_FUNCTION_7_4(v28, v29);
      v30 = OUTLINED_FUNCTION_4_2();
      v32 = v31;

      MEMORY[0x1DA6EAC70](v30, v32);

      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      v33 = *(v10 + 8);
      v34 = OUTLINED_FUNCTION_75_2();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_32_18(v54);
      v48(v47, v1, v55);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_17_14();
      v49 = sub_1D5614268();
      OUTLINED_FUNCTION_7_4(v49, v50);
      v51 = OUTLINED_FUNCTION_4_2();
      v53 = v52;

      MEMORY[0x1DA6EAC70](v51, v53);

      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      v36 = *(v54 + 8);
      v34 = v0;
      v35 = v55;
    }

    v36(v34, v35);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_8_23(v16);
    v38(v37);
    OUTLINED_FUNCTION_153();
    sub_1D5615B68();

    OUTLINED_FUNCTION_17_14();
    v39 = sub_1D5613958();
    OUTLINED_FUNCTION_7_4(v39, v40);
    v41 = OUTLINED_FUNCTION_4_2();
    v43 = v42;

    MEMORY[0x1DA6EAC70](v41, v43);

    MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
    v44 = *(v16 + 8);
    v45 = OUTLINED_FUNCTION_45_3();
    v46(v45);
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F53278()
{
  result = qword_1EDD5F080;
  if (!qword_1EDD5F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F080);
  }

  return result;
}

void Artist.PlayableItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v59 = v3;
  v4 = sub_1D5614408();
  v5 = OUTLINED_FUNCTION_4(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v51 = v10 - v9;
  v11 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v11);
  v55 = v13;
  v56 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v54 = v17 - v16;
  v57 = sub_1D5613AF8();
  v18 = OUTLINED_FUNCTION_4(v57);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v23 = sub_1D5610088();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v24);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v50 - v32;
  v58 = type metadata accessor for Artist.PlayableItem();
  v34 = OUTLINED_FUNCTION_14(v58);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v41 = v2[3];
  v40 = v2[4];
  v60 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v41);
  sub_1D5610CF8();
  sub_1D560FFB8();
  sub_1D4F53C90(&qword_1EDD53350, MEMORY[0x1E6975BC8]);
  v42 = OUTLINED_FUNCTION_5_17();
  v43 = *(v26 + 8);
  v43(v31, v23);
  if (v42)
  {
    v43(v33, v23);
    OUTLINED_FUNCTION_29_10();
    sub_1D5613978();
    (*(v20 + 32))(v39, v0, v57);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1D4F53760(v39, v59);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_5_17();
  v44 = OUTLINED_FUNCTION_16_18();
  (v43)(v44);
  sub_1D5610038();
  OUTLINED_FUNCTION_5_17();
  v45 = OUTLINED_FUNCTION_16_18();
  (v43)(v45);
  if (v42)
  {
    v43(v33, v23);
    OUTLINED_FUNCTION_29_10();
    v47 = v54;
    sub_1D56145A8();
    (*(v55 + 32))(v39, v47, v56);
    goto LABEL_4;
  }

  sub_1D560FF58();
  OUTLINED_FUNCTION_5_17();
  v46 = OUTLINED_FUNCTION_16_18();
  (v43)(v46);
  sub_1D5610008();
  OUTLINED_FUNCTION_5_17();
  v48 = OUTLINED_FUNCTION_16_18();
  (v43)(v48);
  if (v42)
  {
    v43(v33, v23);
    OUTLINED_FUNCTION_29_10();
    v49 = v51;
    sub_1D5614288();
    (*(v52 + 32))(v39, v49, v53);
    goto LABEL_4;
  }

  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D4F53760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist.PlayableItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F537D0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC250);
  __swift_project_value_buffer(v0, qword_1EC7EC250);
  type metadata accessor for Artist.PlayableItem();
  sub_1D4F53C90(&qword_1EC7EC2C8, type metadata accessor for Artist.PlayableItem);
  return sub_1D560D978();
}

uint64_t sub_1D4F538A8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC268);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EC268);
  if (qword_1EC7E89C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EC250);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4F53994@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D560D9A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D4F53A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = *(sub_1D560D9A8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D5620080;
  sub_1D560D908();
  sub_1D560D968();
  result = sub_1D560D958();
  qword_1EC7EC280 = v3;
  return result;
}

uint64_t static Artist.PlayableItem.supportedTypeValues.getter()
{
  if (qword_1EC7E89D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D4F53BAC()
{
  result = qword_1EDD53A18;
  if (!qword_1EDD53A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53A18);
  }

  return result;
}

uint64_t sub_1D4F53C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4F53CE0()
{
  result = sub_1D5613AF8();
  if (v1 <= 0x3F)
  {
    result = sub_1D5614898();
    if (v2 <= 0x3F)
    {
      result = sub_1D5614408();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t LanguageAttributes.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LanguageAttributes.tag.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void static LanguageAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v20 = *(a1 + 36);
  v16 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v21 = *(a2 + 35);
  v22 = *(a1 + 35);
  v18 = *(a1 + 37);
  v19 = *(a2 + 36);
  v17 = *(a2 + 37);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v15 = *(a2 + 40);
  if (v12 || (sub_1D5616168() & 1) != 0)
  {
    v13 = v6 ^ v11;
    if (v2 == v7 && v3 == v8)
    {
      if ((v4 ^ v9 | v5 ^ v10 | v13))
      {
        return;
      }
    }

    else if ((v4 ^ v9) & 1 | ((sub_1D5616168() & 1) == 0) | ((v5 ^ v10) | v13) & 1)
    {
      return;
    }

    if (((v22 ^ v21) & 1) == 0 && ((v20 ^ v19) & 1) == 0 && ((v18 ^ v17) & 1) == 0)
    {

      sub_1D4F286E0();
    }
  }
}

uint64_t sub_1D4F53F84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1D5616168();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1D4F54264(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6572657453736168;
      break;
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F54360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F53F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F54388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F5425C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F543B0(uint64_t a1)
{
  v2 = sub_1D4F546B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F543EC(uint64_t a1)
{
  v2 = sub_1D4F546B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC2F0, &unk_1D5620440);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v17 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  LODWORD(v13) = *(v1 + 32);
  v22 = *(v1 + 33);
  v23 = v13;
  LODWORD(v13) = *(v1 + 34);
  v20 = *(v1 + 35);
  v21 = v13;
  LODWORD(v13) = *(v1 + 36);
  v18 = *(v1 + 37);
  v19 = v13;
  v17 = v1[5];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F546B0();
  sub_1D56163D8();
  LOBYTE(v28) = 0;
  v15 = v26;
  sub_1D5616088();
  if (!v15)
  {
    LOBYTE(v28) = 1;
    sub_1D5616088();
    OUTLINED_FUNCTION_148(2);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_148(3);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_148(4);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_148(5);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_148(6);
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_148(7);
    OUTLINED_FUNCTION_2_13();
    v28 = v17;
    v27 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    sub_1D56160C8();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1D4F546B0()
{
  result = qword_1EC7EC2F8;
  if (!qword_1EC7EC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC2F8);
  }

  return result;
}

void LanguageAttributes.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  v8 = *(v0 + 35);
  v9 = *(v0 + 36);
  v10 = *(v0 + 37);
  v11 = v0[5];
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();

  sub_1D4F31AC0();
}

uint64_t LanguageAttributes.hashValue.getter()
{
  sub_1D56162D8();
  LanguageAttributes.hash(into:)();
  return sub_1D5616328();
}

uint64_t LanguageAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC300, &qword_1D5620450);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F546B0();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v10 = sub_1D5615F98();
  v12 = v11;
  v30 = v10;
  OUTLINED_FUNCTION_0_27(1);
  v13 = sub_1D5615F98();
  v15 = v14;
  v29 = v13;
  OUTLINED_FUNCTION_0_27(2);
  v28 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(3);
  v26 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(4);
  v24 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(5);
  v23 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(6);
  v22 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(7);
  v21 = sub_1D5615FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v42 = 8;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v20 = v26 & 1;
  v27 = v24 & 1;
  v28 &= 1u;
  v16 = OUTLINED_FUNCTION_109_0();
  v17(v16);
  v25 = v43;
  *&v31 = v30;
  *(&v31 + 1) = v12;
  *&v32 = v29;
  *(&v32 + 1) = v15;
  LOBYTE(v33) = v28;
  BYTE1(v33) = v20;
  BYTE2(v33) = v27;
  BYTE3(v33) = v23 & 1;
  BYTE4(v33) = v22 & 1;
  BYTE5(v33) = v21 & 1;
  *(&v33 + 1) = v43;
  v18 = v32;
  *a2 = v31;
  a2[1] = v18;
  a2[2] = v33;
  sub_1D4F54C3C(&v31, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v30;
  v34[1] = v12;
  v34[2] = v29;
  v34[3] = v15;
  v35 = v28;
  v36 = v20;
  v37 = v27;
  v38 = v23 & 1;
  v39 = v22 & 1;
  v40 = v21 & 1;
  v41 = v25;
  return sub_1D4F54C74(v34);
}

uint64_t sub_1D4F54C00()
{
  sub_1D56162D8();
  LanguageAttributes.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D4F54CA8()
{
  result = qword_1EC7EC308;
  if (!qword_1EC7EC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F54E74()
{
  result = qword_1EC7EC310;
  if (!qword_1EC7EC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC310);
  }

  return result;
}

unint64_t sub_1D4F54ECC()
{
  result = qword_1EC7EC318;
  if (!qword_1EC7EC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC318);
  }

  return result;
}

unint64_t sub_1D4F54F24()
{
  result = qword_1EC7EC320;
  if (!qword_1EC7EC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC320);
  }

  return result;
}

uint64_t type metadata accessor for CloudEditorialUber()
{
  result = qword_1EDD56650;
  if (!qword_1EDD56650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F54FEC()
{
  sub_1D4F55058();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D4F55058()
{
  if (!qword_1EDD531B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD531B0);
    }
  }
}

BOOL sub_1D4F55104(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_16_0();
  v24 = *(v23 + 56);
  sub_1D4F55DC8(a1, v2);
  sub_1D4F55DC8(a2, v2 + v24);
  OUTLINED_FUNCTION_10(v2);
  if (!v25)
  {
    sub_1D4F55DC8(v2, v18);
    OUTLINED_FUNCTION_10(v2 + v24);
    if (!v25)
    {
      (*(v7 + 32))(v12, v2 + v24, v5);
      sub_1D4F56034(&qword_1EC7EBEB8, &qword_1EC7EBDD0);
      v27 = sub_1D5614D18();
      v28 = *(v7 + 8);
      v28(v12, v5);
      v28(v18, v5);
      sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
      return (v27 & 1) != 0;
    }

    (*(v7 + 8))(v18, v5);
LABEL_9:
    sub_1D4E6C9CC(v2, &qword_1EC7EC330, &qword_1D56222C0);
    return 0;
  }

  OUTLINED_FUNCTION_10(v2 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  return 1;
}

uint64_t sub_1D4F55394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x724172657473616DLL && a2 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D4F55430(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC348, &qword_1D5620798);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F55E38();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F55F60(&qword_1EC7EC350);
  sub_1D5616068();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_1D4F55590()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1D4F55DC8(v0, &v17 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v4 + 32))(v1, v13, v2);
  sub_1D56162F8();
  OUTLINED_FUNCTION_1_8();
  sub_1D4F56034(v15, v16);
  sub_1D5614CB8();
  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_1D4F55724()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1D56162D8();
  sub_1D4F55DC8(v2, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v14, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_1_8();
    sub_1D4F56034(v15, v16);
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F558D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC338, &qword_1D5620790);
  OUTLINED_FUNCTION_4(v10);
  v28 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = type metadata accessor for CloudEditorialUber();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F55E38();
  sub_1D5616398();
  if (!v2)
  {
    v24 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F55F60(&qword_1EDD531B8);
    sub_1D5615F78();
    (*(v28 + 8))(v16, v10);
    sub_1D4F55E8C(v9, v22);
    sub_1D4F55EFC(v22, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4F55B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F55394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4F55B30(uint64_t a1)
{
  v2 = sub_1D4F55E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F55B6C(uint64_t a1)
{
  v2 = sub_1D4F55E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F55BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  sub_1D4F55DC8(v1, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D56162F8();
    sub_1D4F56034(&qword_1EC7EBE78, &qword_1EC7EBDC8);
    sub_1D5614CB8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F55DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F55E38()
{
  result = qword_1EC7EC340;
  if (!qword_1EC7EC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC340);
  }

  return result;
}

uint64_t sub_1D4F55E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F55EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudEditorialUber();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F55F60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v3 = MEMORY[0x1E6975968];
    sub_1D4F560D0(&qword_1EDD533A8, MEMORY[0x1E6975968]);
    sub_1D4F560D0(&qword_1EDD533B0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F56034(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F560D0(a2, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F560D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CloudEditorialUber.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D4F561C8()
{
  result = qword_1EC7EC358;
  if (!qword_1EC7EC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC358);
  }

  return result;
}

unint64_t sub_1D4F56220()
{
  result = qword_1EC7EC360;
  if (!qword_1EC7EC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC360);
  }

  return result;
}

unint64_t sub_1D4F56278()
{
  result = qword_1EC7EC368;
  if (!qword_1EC7EC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC368);
  }

  return result;
}

uint64_t MusicLibrary.UndoLikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void sub_1D4F5636C(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  sub_1D4F5E39C(a1, a2, &v5);
  if (v5 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *a3 = v4;
}

unint64_t sub_1D4F563C4()
{
  result = qword_1EC7EC370;
  if (!qword_1EC7EC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC370);
  }

  return result;
}

_BYTE *_s14UndoLikeActionVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s14UndoLikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Bag.init()()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4F56628()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);
  sub_1D502EF3C();
  v2 = *(v1 + 17);
  *(v0 + 80) = v2;
  if (v2 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_28_14(v3);

    return sub_1D4F56EB4(v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_28_14(v6);

    return sub_1D4F573D4();
  }
}

uint64_t sub_1D4F56728()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 64) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4F56840()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 72) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4F56958()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 64);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v5 + *(type metadata accessor for Bag() + 20);
  *v6 = v2;
  *(v6 + 8) = (v3 & 1) == 0;
  sub_1D4E56C6C(v4, v5);

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D4F56A10()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);
  sub_1D4F581B8(*(v0 + 24));

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D4F56A78()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3 + *(type metadata accessor for Bag() + 20);
  *v5 = v1;
  *(v5 + 8) = (v2 & 1) == 0;
  v6 = OUTLINED_FUNCTION_159();
  sub_1D4E56C6C(v6, v7);

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D4F56B10()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 56);
  sub_1D4F581B8(*(v0 + 24));

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t Bag.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v68 = a2;
  v69 = a4;
  v67 = a1;
  v65 = a5;
  v7 = sub_1D56158D8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v66 = v13;
  OUTLINED_FUNCTION_23();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  __swift_storeEnumTagSinglePayload(&v64 - v21, 1, 1, a3);
  v23 = type metadata accessor for Bag();
  OUTLINED_FUNCTION_24_10(v23);
  v25 = *v24;
  v26 = *(v24 + 8);
  if (v26)
  {
    v27 = *v24;

    OUTLINED_FUNCTION_27_10();
    sub_1D4F593CC(v28, v29, v30, v31, v32, v33);
    if (v5)
    {
      v34 = *(v10 + 8);
      v35 = OUTLINED_FUNCTION_13_8();
      v36(v35);
      v37 = v25;
      v38 = 1;
      return sub_1D4F48F14(v37, v38);
    }

    v52 = *(v10 + 8);
    v53 = OUTLINED_FUNCTION_13_8();
    v70 = v54;
    v54(v53);
    v20 = v17;
  }

  else
  {
    v39 = *(v25 + 16);
    sub_1D4F48F74(*v24, 0);
    v40 = v39;
    OUTLINED_FUNCTION_27_10();
    sub_1D4F583E0(v41, v42, v43, v44, v45, v46, v47);
    if (v5)
    {
      v48 = *(v10 + 8);
      v49 = OUTLINED_FUNCTION_13_8();
      v50(v49);

      v37 = v25;
      v38 = 0;
      return sub_1D4F48F14(v37, v38);
    }

    v55 = *(v10 + 8);
    v56 = OUTLINED_FUNCTION_13_8();
    v70 = v57;
    v57(v56);
  }

  sub_1D4F48F14(v25, v26);
  (*(v10 + 32))(v22, v20, v7);
  v58 = v66;
  (*(v10 + 16))(v66, v22, v7);
  if (__swift_getEnumTagSinglePayload(v58, 1, a3) == 1)
  {
    v59 = v70;
    (v70)(v58, v7);
    sub_1D4F48F20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_13_8();
    return v59(v61);
  }

  else
  {
    v62 = OUTLINED_FUNCTION_13_8();
    v70(v62);
    OUTLINED_FUNCTION_24_0(a3);
    return (*(v63 + 32))(v65, v58, a3);
  }
}

uint64_t sub_1D4F56EB4(uint64_t a1)
{
  *(v1 + 152) = a1;
  OUTLINED_FUNCTION_57_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F56EE0()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69E4618]);
  v4 = sub_1D55F6F50(sub_1D4F5A488, v2);
  v0[20] = v4;

  v5 = [objc_opt_self() sharedBagProvider];
  v0[21] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D4F5707C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B8, &qword_1D5620C68);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4F40510;
  v0[13] = &block_descriptor_1;
  v0[14] = v6;
  [v5 getBagForRequestContext:v4 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D4F5707C()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 176) = *(v4 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4F57180()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 160);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D4F571E8()
{
  v23 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  if (qword_1EC7E90A8 != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v4 = v0[22];
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EC87C2B8);
  v6 = v4;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v0[10] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v13 = sub_1D5614DB8();
    v15 = sub_1D4E6835C(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "Failed loading bag with error: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v16);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v17);
  }

  v18 = v0[22];
  sub_1D4F48F20();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v20();
}

uint64_t sub_1D4F573D4()
{
  OUTLINED_FUNCTION_60();
  v32 = *MEMORY[0x1E69E9840];
  v0[19] = v1;
  v2 = sub_1D560D428();
  v0[20] = v2;
  OUTLINED_FUNCTION_69(v2);
  v0[21] = v3;
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560CD48();
  v0[23] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[24] = v7;
  v9 = *(v8 + 64) + 15;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v10 = type metadata accessor for MusicRequestConfiguration();
  v0[27] = v10;
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  v13 = sub_1D560B918();
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  v16 = sub_1D560D388();
  v0[30] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[31] = v17;
  v19 = *(v18 + 64);
  v0[32] = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  v23 = sub_1D560C0A8();
  v0[34] = v23;
  OUTLINED_FUNCTION_69(v23);
  v0[35] = v24;
  v26 = *(v25 + 64) + 15;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}