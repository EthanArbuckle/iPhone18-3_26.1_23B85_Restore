void sub_22C4B7478(uint64_t a1, void (*a2)(void *__return_ptr, void), uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v7 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v75 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v91 = 0;
  v92 = MEMORY[0x277D84F90];
  v74 = *(a1 + 16);
  v78 = &v67 - v13;
  v69 = a1;
  v68 = a2;
  while (1)
  {
    if (v15 == v74)
    {

      return;
    }

    if (v15 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v17 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v18 = *(v72 + 72);
    v82 = v15;
    v81 = v18;
    sub_22C4B7E50(a1 + v17 + v18 * v15, v14);
    a2(&v88, v14);
    if (v4)
    {

      sub_22C4B7EA8(v14, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      return;
    }

    v79 = v17;
    v19 = v90;
    v95 = v90;
    v93 = v88;
    v94 = v89;
    v20 = v91;
    v21 = v92;
    v22 = *(v92 + 16);
    v80 = v16;
    if (v91)
    {

      sub_22C7DB47C(&v93, v21 + 32, v22, (v20 + 16));
      v24 = v23;
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    if (v22)
    {
      break;
    }

LABEL_34:
    sub_22C7D4904(&v93);
    v47 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = *(v47 + 16);
      sub_22C3B67F0();
      v47 = v96;
    }

    v50 = *(v47 + 16);
    if (v50 >= *(v47 + 24) >> 1)
    {
      sub_22C3B67F0();
      v47 = v96;
    }

    *(v47 + 16) = v50 + 1;
    v51 = v47 + 32;
    *(v47 + 32 + 8 * v50) = MEMORY[0x277D84F90];
    sub_22C4B7E50(v14, v75);
    v52 = *(v47 + 32 + 8 * v50);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 32 + 8 * v50) = v52;
    if ((v53 & 1) == 0)
    {
      v61 = *(v52 + 16);
      sub_22C59161C();
      v52 = v62;
      *(v51 + 8 * v50) = v62;
    }

    v54 = *(v52 + 16);
    v55 = v54 + 1;
    if (v54 >= *(v52 + 24) >> 1)
    {
      sub_22C59161C();
      v52 = v63;
      *(v51 + 8 * v50) = v63;
    }

    v56 = &v97;
LABEL_57:
    v60 = *(v56 - 32);
    v15 = v82 + 1;
    *(v52 + 16) = v55;
    sub_22C4B86BC(v60, v52 + v79 + v54 * v81);
    sub_22C43627C(v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
    v14 = v78;
    sub_22C4B7EA8(v78, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    v16 = v47;
  }

  v70 = 0;
  v24 = 0;
  v27 = v88;
  v28 = (v92 + 64);
  v85 = v89;
  v86 = *(&v88 + 1);
  v84 = *(&v89 + 1);
  v77 = v88;
  v76 = v90;
  v83 = v22;
  while (1)
  {
    v30 = *(v28 - 4);
    v29 = *(v28 - 3);
    v32 = *(v28 - 2);
    v31 = *(v28 - 1);
    v33 = *v28;
    if (*v28)
    {
      break;
    }

    if (v95)
    {
LABEL_23:
      sub_22C4B87A4(&v93, v87);
LABEL_24:
      sub_22C480D88(v30, v29, v32, v31, v33);
      sub_22C43627C(v30, v29, v32, v31, v33);
      sub_22C43627C(v27, v86, v85, v84, v19);
      goto LABEL_31;
    }

    if (v30 == v93 && v29 == *(&v93 + 1))
    {
      sub_22C4B87A4(&v93, v87);
      v4 = v70;
      a1 = v69;
      goto LABEL_46;
    }

    v45 = *(v28 - 4);
    v46 = *(v28 - 3);
    v39 = sub_22C90B4FC();
    sub_22C4B87A4(&v93, v87);
    sub_22C480D88(v30, v29, v32, v31, 0);
    sub_22C43627C(v30, v29, v32, v31, 0);
    v40 = v27;
    v42 = v85;
    v41 = v86;
    v43 = v84;
LABEL_30:
    sub_22C43627C(v40, v41, v42, v43, v19);
    if (v39)
    {
      v4 = v70;
      a1 = v69;
      goto LABEL_47;
    }

LABEL_31:
    ++v24;
    v28 += 40;
    if (v83 == v24)
    {
      v4 = v70;
      a1 = v69;
      a2 = v68;
      v14 = v78;
      goto LABEL_34;
    }
  }

  if ((v95 & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v94;
  if (v30 != v93 || v29 != *(&v93 + 1))
  {
    v36 = *(v28 - 4);
    v37 = *(v28 - 3);
    if ((sub_22C90B4FC() & 1) == 0)
    {
      sub_22C4B87A4(&v93, v87);
      v19 = v76;
      v27 = v77;
      goto LABEL_24;
    }
  }

  if (v32 != v34 || v31 != *(&v34 + 1))
  {
    v39 = sub_22C90B4FC();
    sub_22C4B87A4(&v93, v87);
    sub_22C480D88(v30, v29, v32, v31, 1);
    sub_22C43627C(v30, v29, v32, v31, 1);
    v27 = v77;
    v40 = v77;
    v42 = v85;
    v41 = v86;
    v43 = v84;
    v19 = v76;
    goto LABEL_30;
  }

  sub_22C4B87A4(&v93, v87);
  v4 = v70;
  a1 = v69;
  v19 = v76;
LABEL_46:
  sub_22C480D88(v30, v29, v32, v31, v33);
  sub_22C43627C(v30, v29, v32, v31, v33);
  sub_22C43627C(v77, v86, v85, v84, v19);
LABEL_47:
  a2 = v68;
  v14 = v78;
LABEL_48:
  v47 = v80;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1C4(v47);
    v47 = v57;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v24 < *(v47 + 16))
  {
    v58 = v47 + 32;
    sub_22C4B7E50(v14, v71);
    v52 = *(v47 + 32 + 8 * v24);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 32 + 8 * v24) = v52;
    if ((v59 & 1) == 0)
    {
      v64 = *(v52 + 16);
      sub_22C59161C();
      v52 = v65;
      *(v58 + 8 * v24) = v65;
    }

    v54 = *(v52 + 16);
    v55 = v54 + 1;
    if (v54 >= *(v52 + 24) >> 1)
    {
      sub_22C59161C();
      v52 = v66;
      *(v58 + 8 * v24) = v66;
    }

    v56 = &v95;
    goto LABEL_57;
  }

LABEL_62:
  __break(1u);
}

unint64_t sub_22C4B7C64()
{
  result = qword_27D9BD188;
  if (!qword_27D9BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD188);
  }

  return result;
}

unint64_t sub_22C4B7CB8()
{
  result = qword_27D9BD190;
  if (!qword_27D9BD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD190);
  }

  return result;
}

unint64_t sub_22C4B7D0C()
{
  result = qword_27D9BD1A0;
  if (!qword_27D9BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD1A0);
  }

  return result;
}

uint64_t sub_22C4B7D60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BAF98, &qword_22C90D838);
    sub_22C4B1ACC(a2, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C4B7DFC()
{
  result = qword_27D9BD1F8;
  if (!qword_27D9BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD1F8);
  }

  return result;
}

uint64_t sub_22C4B7E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C4B7EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C4B7F48()
{
  result = sub_22C4B7FCC();
  if (v1 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C4B7FCC()
{
  result = qword_281434258[0];
  if (!qword_281434258[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281434258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTools.AttributedRetrievedToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTools.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C4B81F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4B82A0()
{
  result = qword_27D9BD228;
  if (!qword_27D9BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD228);
  }

  return result;
}

unint64_t sub_22C4B82F8()
{
  result = qword_27D9BD230;
  if (!qword_27D9BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD230);
  }

  return result;
}

unint64_t sub_22C4B8350()
{
  result = qword_27D9BD238;
  if (!qword_27D9BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD238);
  }

  return result;
}

unint64_t sub_22C4B83A8()
{
  result = qword_27D9BD240;
  if (!qword_27D9BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD240);
  }

  return result;
}

unint64_t sub_22C4B8400()
{
  result = qword_27D9BD248;
  if (!qword_27D9BD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD248);
  }

  return result;
}

unint64_t sub_22C4B8458()
{
  result = qword_27D9BD250;
  if (!qword_27D9BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD250);
  }

  return result;
}

unint64_t sub_22C4B84B0()
{
  result = qword_27D9BD258;
  if (!qword_27D9BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD258);
  }

  return result;
}

unint64_t sub_22C4B8508()
{
  result = qword_27D9BD260;
  if (!qword_27D9BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD260);
  }

  return result;
}

unint64_t sub_22C4B8560()
{
  result = qword_27D9BD268;
  if (!qword_27D9BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD268);
  }

  return result;
}

unint64_t sub_22C4B85B8()
{
  result = qword_27D9BD270;
  if (!qword_27D9BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD270);
  }

  return result;
}

unint64_t sub_22C4B8610()
{
  result = qword_27D9BD278;
  if (!qword_27D9BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD278);
  }

  return result;
}

unint64_t sub_22C4B8668()
{
  result = qword_27D9BD280;
  if (!qword_27D9BD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD280);
  }

  return result;
}

uint64_t sub_22C4B86BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C4B8714(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4B878C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_22C43627C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

void sub_22C4B8820(int a1@<W8>)
{
  *(v2 - 200) = a1;
  v3 = *(v2 - 216);
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v3 + 104;
  *(v2 - 120) = v1;
  *(v2 - 224) = v1 - 8;
}

void *sub_22C4B8858@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, void, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v169 = a3;
  v158 = a5;
  v168 = sub_22C90941C();
  v8 = sub_22C369824(v168);
  v156 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v157 = v13 - v12;
  v167 = sub_22C3A5908(&qword_27D9BC398, &qword_22C912AC8);
  v14 = sub_22C36985C(v167);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v166 = (v17 - v18);
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v165 = (&v132 - v20);
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  v164 = (&v132 - v22);
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v163 = &v132 - v24;
  v172 = sub_22C90981C();
  v25 = sub_22C369824(v172);
  v186 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v162 = v29 - v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v152 = &v132 - v32;
  v33 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  sub_22C369ABC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v132 - v39;
  v41 = sub_22C908EAC();
  v42 = sub_22C369824(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v49 = v48 - v47;
  v171 = a1;
  sub_22C4826EC(v40);
  v50 = sub_22C370B74(v40, 1, v41);
  v153 = v41;
  if (v50 == 1)
  {
    sub_22C36DD28(v40, &qword_27D9BC1E8, &qword_22C9123B0);
  }

  else
  {
    (*(v44 + 32))(v49, v40, v41);
    sub_22C4B93B0(v49, a2, a4);
    (*(v44 + 8))(v49, v41);
  }

  v51 = a2[8];
  v52 = a2[9];
  sub_22C374168(a2 + 5, v51);
  v53 = v170;
  result = (*(v52 + 16))(v183, v171, v169, a4, v51, v52);
  if (!v53)
  {
    v170 = a4;
    v179 = v183[0];
    v180 = v183[1];
    v181 = v184;
    v182 = v185;
    if (BYTE8(v184) == 1)
    {
LABEL_6:
      sub_22C3E022C(&v179);
      v55 = type metadata accessor for _PromptToolData(0);
      v56 = v158;
      v57 = 1;
      return sub_22C36C640(v56, v57, 1, v55);
    }

    v138 = v44;
    v139 = v37;
    v143 = *(&v179 + 1);
    v58 = v179;
    v144 = 0;
    v59 = v180;
    v60 = v181;
    v61 = a2[8];
    v62 = a2[9];
    sub_22C374168(a2 + 5, v61);
    v169 = *(v62 + 32);
    v154 = v58;
    v63 = v143;

    v141 = v59;
    v142 = v60;
    v155 = *(&v59 + 1);
    sub_22C456C94(v63, v59);
    v64 = v144;
    (v169)(&v175, v171, v170, v61, v62);
    if (v64)
    {
      sub_22C456CE4(v154, v63, v141, v155, v142, 0);
      return sub_22C3E022C(&v179);
    }

    else
    {
      v174[0] = v175;
      v174[1] = v176;
      v174[2] = v177;
      v174[3] = v178;
      v65 = v175;
      v66 = v176;
      v67 = v177;
      v68 = BYTE8(v177);
      sub_22C456C30(v175, *(&v175 + 1), v176, *(&v176 + 1), v177, SBYTE8(v177));
      sub_22C3E022C(v174);
      if (v68 == 1)
      {
        sub_22C456CE4(v154, v143, v141, v155, v142, 0);
        goto LABEL_6;
      }

      v133 = v67;
      v134 = *(&v66 + 1);
      v135 = v66;
      v136 = *(&v65 + 1);
      v137 = v65;
      v144 = 0;
      v151 = v182;
      v69 = *(v182 + 16);
      v70 = MEMORY[0x277D84F90];
      v71 = v154;
      v72 = v155;
      if (!v69)
      {
        v107 = MEMORY[0x277D84F90];
LABEL_34:
        v173 = v70;
        v108 = *(v107 + 16);
        if (v108)
        {
          v169 = *(v186 + 16);
          v170 = v107;
          v109 = v107 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
          v110 = *(v186 + 72);
          v166 = (v156 + 8);
          v167 = v110;
          v186 += 16;
          v111 = (v186 - 8);
          v112 = v157;
          v113 = v152;
          do
          {
            v114 = v172;
            v115 = (v169)(v113, v109, v172);
            MEMORY[0x2318B6CE0](v115);
            sub_22C9093DC();
            (*v166)(v112, v168);
            (*v111)(v113, v114);
            sub_22C3CD230();
            v109 += v167;
            --v108;
          }

          while (v108);

          v71 = v154;
          v72 = v155;
        }

        else
        {
        }

        v116 = v139;
        sub_22C4826EC(v139);
        v117 = v153;
        v118 = sub_22C370B74(v116, 1, v153);
        v119 = v157;
        if (v118 == 1)
        {
          sub_22C36DD28(v116, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          MEMORY[0x2318B6290]();
          (*(v138 + 8))(v116, v117);
          sub_22C9093DC();
          (*(v156 + 8))(v119, v168);
        }

        v186 = *(&v182 + 1);

        swift_retain_n();
        sub_22C3AD9E8();
        sub_22C7B539C();
        v120 = v171;
        sub_22C4B94EC(v171);
        sub_22C7B53C8();
        v172 = v121;
        v170 = type metadata accessor for _PromptToolData(0);
        v122 = v71;
        v123 = v158;
        v124 = v158 + *(v170 + 32);
        sub_22C4B9B30(v120, v124, type metadata accessor for RenderableTool);
        v125 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
        *(v124 + *(v125 + 20)) = v151;
        *(v124 + *(v125 + 24)) = v122;

        v127 = v142;
        v126 = v143;
        v128 = v141;
        sub_22C456C94(v143, v141);
        v129 = v137;
        sub_22C456CE4(v137, v136, v135, v134, v133, 0);
        sub_22C456CE4(v122, v126, v128, v72, v127, 0);
        sub_22C3E022C(&v179);
        *v123 = v129;
        v123[1] = v122;
        v130 = v172;
        v123[2] = v186;
        v123[3] = v130;
        v55 = v170;
        v131 = (v123 + *(v170 + 36));
        *v131 = v126;
        v131[1] = v128;
        v131[2] = v72;
        v131[3] = v127;
        v56 = v123;
        v57 = 0;
        return sub_22C36C640(v56, v57, 1, v55);
      }

      v173 = MEMORY[0x277D84F90];
      sub_22C3B6FA0();
      v170 = v173;
      result = sub_22C6339F8(v151);
      v75 = result;
      v76 = v151;
      v77 = 0;
      v78 = v151 + 64;
      v147 = v186 + 32;
      v148 = (v186 + 16);
      v145 = v69;
      v146 = v73;
      v140 = v151 + 72;
      v149 = v151 + 64;
      while ((v75 & 0x8000000000000000) == 0 && v75 < 1 << *(v76 + 32))
      {
        if ((*(v78 + 8 * (v75 >> 6)) & (1 << v75)) == 0)
        {
          goto LABEL_44;
        }

        if (*(v76 + 36) != v73)
        {
          goto LABEL_45;
        }

        v160 = v73;
        v161 = 1 << v75;
        v169 = v75 >> 6;
        v150 = v74;
        v159 = v77;
        v79 = v167;
        v80 = *(v167 + 48);
        v81 = *(v76 + 56);
        v82 = (*(v76 + 48) + 16 * v75);
        v84 = *v82;
        v83 = v82[1];
        v85 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
        v86 = v163;
        sub_22C4B9B30(v81 + *(*(v85 - 8) + 72) * v75, &v163[v80], type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
        v87 = v164;
        *v164 = v84;
        *(v87 + 8) = v83;
        sub_22C4B9ACC(&v86[v80], v87 + *(v79 + 48));
        v88 = v165;
        sub_22C3E8FB4(v87, v165, &qword_27D9BC398, &qword_22C912AC8);
        v89 = v88[1];
        v90 = *(v79 + 48);
        v91 = v166;
        *v166 = *v88;
        *(v91 + 8) = v89;
        sub_22C4B9ACC(v88 + v90, v91 + v90);
        v92 = v91 + v90;
        v93 = v172;
        v94 = v162;
        (*v148)(v162, v92, v172);

        sub_22C36DD28(v91, &qword_27D9BC398, &qword_22C912AC8);
        sub_22C36DD28(v87, &qword_27D9BC398, &qword_22C912AC8);
        v95 = v170;
        v173 = v170;
        v96 = *(v170 + 16);
        if (v96 >= *(v170 + 24) >> 1)
        {
          sub_22C3B6FA0();
          v95 = v173;
        }

        *(v95 + 16) = v96 + 1;
        v97 = (*(v186 + 80) + 32) & ~*(v186 + 80);
        v170 = v95;
        result = (*(v186 + 32))(v95 + v97 + *(v186 + 72) * v96, v94, v93);
        v76 = v151;
        v98 = 1 << *(v151 + 32);
        v78 = v149;
        if (v75 >= v98)
        {
          goto LABEL_46;
        }

        v99 = *(v149 + 8 * v169);
        if ((v99 & v161) == 0)
        {
          goto LABEL_47;
        }

        if (*(v151 + 36) != v160)
        {
          goto LABEL_48;
        }

        v100 = v99 & (-2 << (v75 & 0x3F));
        if (v100)
        {
          v98 = __clz(__rbit64(v100)) | v75 & 0x7FFFFFFFFFFFFFC0;
          v72 = v155;
          v101 = v145;
        }

        else
        {
          v102 = v169 << 6;
          v103 = v169 + 1;
          v104 = (v140 + 8 * v169);
          v72 = v155;
          v101 = v145;
          while (v103 < (v98 + 63) >> 6)
          {
            v106 = *v104++;
            v105 = v106;
            v102 += 64;
            ++v103;
            if (v106)
            {
              result = sub_22C3A5038(v75, v160, v150 & 1);
              v76 = v151;
              v98 = __clz(__rbit64(v105)) + v102;
              goto LABEL_31;
            }
          }

          result = sub_22C3A5038(v75, v160, v150 & 1);
          v76 = v151;
        }

LABEL_31:
        v74 = 0;
        v77 = v159 + 1;
        v75 = v98;
        v73 = v146;
        v71 = v154;
        if (v159 + 1 == v101)
        {
          v107 = v170;
          v70 = MEMORY[0x277D84F90];
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C4B93B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_22C90977C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C374168(a2, a2[3]);
  sub_22C47FCDC();
  v10 = sub_22C9096FC();
  v14 = v9;
  sub_22C4FB170(v10, v11, sub_22C436434, v13, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22C4B94EC(uint64_t a1)
{
  v2 = type metadata accessor for RenderableTool();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4B9B30(a1, v5, type metadata accessor for RenderableTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C483C8C(v5);
    return MEMORY[0x277D84F90];
  }

  v11 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v12 = sub_22C9036EC();
  v13 = *(v12 - 8);
  if ((*(v13 + 88))(v5, v12) != *MEMORY[0x277D1ECD0])
  {
    v18 = sub_22C9037DC();
    (*(*(v18 - 8) + 8))(&v5[v11], v18);
    (*(v13 + 8))(v5, v12);
    return MEMORY[0x277D84F90];
  }

  (*(v13 + 96))(v5, v12);
  (*(v7 + 32))(v10, v5, v6);
  v14 = sub_22C9037DC();
  (*(*(v14 - 8) + 8))(&v5[v11], v14);
  if (sub_22C908E7C() == 0x73656D5F646E6573 && v15 == 0xEC00000065676173)
  {
  }

  else
  {
    v17 = sub_22C90B4FC();

    if ((v17 & 1) == 0)
    {
      (*(v7 + 8))(v10, v6);
      return MEMORY[0x277D84F90];
    }
  }

  sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
  v21 = sub_22C90952C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22C90F800;
  if (qword_27D9BA6B0 != -1)
  {
    swift_once();
  }

  v25 = sub_22C37AA60(v21, &qword_27D9E3F88);
  (*(v22 + 16))(v19 + v24, v25, v21);
  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t sub_22C4B9900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v6 = sub_22C90941C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v20 = sub_22C3E8FB4(a1, &v27 - v18, &qword_27D9BB050, &unk_22C90D8F0);
  v21 = *(v16 + 56);
  MEMORY[0x2318B6CE0](v20);
  v22 = sub_22C90981C();
  sub_22C36985C(v22);
  (*(v23 + 8))(&v19[v21]);
  LOBYTE(v21) = sub_22C4F6864(a2, v27);
  (*(v9 + 8))(v14, v6);
  v24 = sub_22C908EAC();
  sub_22C36985C(v24);
  result = (*(v25 + 8))(v19);
  *v28 = v21;
  return result;
}

uint64_t sub_22C4B9ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4B9B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4B9B90(uint64_t a1)
{
  v181 = sub_22C9063DC();
  v2 = sub_22C369824(v181);
  v194 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v186 = v6;
  v198 = sub_22C9093BC();
  v192 = *(v198 - 8);
  v7 = *(v192 + 64);
  MEMORY[0x28223BE20](v198 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v197 = v9;
  v180 = sub_22C90919C();
  v10 = sub_22C369824(v180);
  v193 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C36D234(v14);
  v15 = sub_22C3A5908(&qword_27D9BD2B0, &unk_22C917EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v144 - v17;
  v19 = type metadata accessor for DynamicEnumeration.Case(0);
  v20 = sub_22C369824(v19);
  v147 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  sub_22C36D234(v25);
  v26 = sub_22C9084CC();
  v27 = sub_22C369824(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v144 - v35;
  v37 = sub_22C903E2C();
  v38 = sub_22C369824(v37);
  v195 = v39;
  v196 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  v184 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C36D234(v44);
  v45 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  sub_22C36D234(&v144 - v47);
  v152 = type metadata accessor for DynamicEnumeration(0);
  v48 = sub_22C369824(v152);
  v151 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698A8();
  sub_22C36D234(v52);
  v167 = sub_22C90941C();
  v53 = sub_22C369824(v167);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA64();
  sub_22C36D234(v60);
  v61 = v36;
  v62 = v19;
  v63 = v26;
  v64 = sub_22C4BAA14(a1);
  sub_22C3A5908(&qword_27D9BD2C0, &unk_22C917EF0);
  result = sub_22C90B1CC();
  v67 = result;
  v68 = 0;
  v69 = *(v64 + 64);
  v145 = v64 + 64;
  v156 = v64;
  v70 = 1 << *(v64 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v69;
  v144 = (v70 + 63) >> 6;
  v153 = v55 + 16;
  v155 = v55;
  v165 = v55 + 32;
  v190 = (v29 + 8);
  ++v195;
  v185 = v29;
  v171 = v29 + 16;
  v183 = (v192 + 88);
  v182 = *MEMORY[0x277D72A38];
  v177 = v192 + 8;
  v176 = v194 + 8;
  v175 = v192 + 96;
  v174 = (v193 + 16);
  v173 = v193 + 8;
  v148 = result + 64;
  *&v66 = 136315394;
  v170 = v66;
  v191 = v34;
  v193 = v61;
  v149 = result;
  v178 = v18;
  v187 = v62;
  v169 = v26;
  while (1)
  {
    v73 = v157;
    if (!v72)
    {
      break;
    }

    v158 = (v72 - 1) & v72;
    v159 = v68;
    v74 = __clz(__rbit64(v72)) | (v68 << 6);
LABEL_11:
    v78 = v156;
    v79 = *(v156 + 48);
    v80 = v155;
    v81 = *(v155 + 16);
    v161 = *(v155 + 72) * v74;
    v82 = v154;
    v83 = v167;
    v84 = v74;
    v81(v154, v79 + v161, v167);
    v85 = *(v78 + 56);
    v162 = v84;
    v86 = *(v85 + 8 * v84);
    v160 = *(v80 + 32);
    v160(v166, v82, v83);
    sub_22C58B098(v86, v73);
    result = sub_22C370B74(v73, 1, v63);
    if (result == 1)
    {
      goto LABEL_34;
    }

    v87 = v172;
    sub_22C9084AC();
    v188 = *v190;
    v188(v73, v63);
    sub_22C903E1C();
    v194 = *v195;
    result = (v194)(v87, v196);
    v88 = 0;
    v192 = *(v86 + 16);
    v168 = MEMORY[0x277D84F90];
    v89 = v191;
    v90 = v171;
    v189 = v86;
    while (v192 != v88)
    {
      if (v88 >= *(v86 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v91 = *(v185 + 16);
      v91(v61, v86 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v88, v63);
      v92 = v90;
      v93 = v184;
      sub_22C9084AC();
      v94 = v197;
      sub_22C903E0C();
      (v194)(v93, v196);
      v95 = (*v183)(v94, v198);
      if (v95 == v182)
      {
        sub_22C36BA4C(&v201);
        v96 = v197;
        v97(v197, v198);
        v98 = *v96;
        v99 = swift_projectBox();
        v100 = *v174;
        v101 = v63;
        v102 = v179;
        v103 = v180;
        (*v174)(v179, v99, v180);

        v100(v18, v102, v103);
        v104 = v187;
        v105 = &v18[*(v187 + 20)];
        sub_22C9068FC();
        sub_22C36BA4C(&v200);
        v106 = v102;
        v63 = v101;
        v107 = v103;
        v61 = v193;
        v108(v106, v107);
        v109 = 0;
        v90 = v92;
        v86 = v189;
        v110 = v188;
      }

      else
      {
        sub_22C36BA4C(&v203);
        v111(v197, v198);
        sub_22C903F7C();
        v91(v89, v61, v63);
        v112 = sub_22C9063CC();
        v113 = v63;
        v114 = sub_22C90AADC();
        if (os_log_type_enabled(v112, v114))
        {
          v115 = v113;
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v199 = v117;
          *v116 = v170;
          *(v116 + 4) = sub_22C36F9F4(0x6F72662874696E69, 0xEB00000000293A6DLL, &v199);
          *(v116 + 12) = 2080;
          v118 = v89;
          v119 = v172;
          sub_22C9084AC();
          sub_22C903E0C();
          (v194)(v119, v196);
          v120 = sub_22C90A1AC();
          v122 = v121;
          v123 = v115;
          v124 = v188;
          v188(v118, v123);
          v125 = sub_22C36F9F4(v120, v122, &v199);
          v126 = v186;
          v61 = v193;

          *(v116 + 14) = v125;
          _os_log_impl(&dword_22C366000, v112, v114, "%s Found a non-entity TypedValue in a DynamicEnumerationEntityStatement: %s", v116, 0x16u);
          swift_arrayDestroy();
          v127 = v117;
          v90 = v171;
          MEMORY[0x2318B9880](v127, -1, -1);
          MEMORY[0x2318B9880](v116, -1, -1);

          sub_22C36BA4C(&v202);
          v110 = v124;
          v128(v126, v181);
          v109 = 1;
          v18 = v178;
          v104 = v187;
          v63 = v169;
        }

        else
        {
          v90 = v92;

          v110 = v188;
          v188(v89, v113);
          sub_22C36BA4C(&v202);
          v129(v186, v181);
          v109 = 1;
          v18 = v178;
          v63 = v113;
          v104 = v187;
        }

        v86 = v189;
      }

      sub_22C36C640(v18, v109, 1, v104);
      v110(v61, v63);
      if (sub_22C370B74(v18, 1, v104) == 1)
      {
        result = sub_22C4BB104(v18);
        ++v88;
        v89 = v191;
      }

      else
      {
        v130 = v146;
        sub_22C4BB16C(v18, v146, type metadata accessor for DynamicEnumeration.Case);
        sub_22C4BB16C(v130, v163, type metadata accessor for DynamicEnumeration.Case);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v191;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v134 = *(v168 + 16);
          sub_22C591874();
          v168 = v135;
        }

        v132 = *(v168 + 16);
        if (v132 >= *(v168 + 24) >> 1)
        {
          sub_22C591874();
          v168 = v136;
        }

        ++v88;
        v133 = v168;
        *(v168 + 16) = v132 + 1;
        result = sub_22C4BB16C(v163, v133 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v132, type metadata accessor for DynamicEnumeration.Case);
      }
    }

    v137 = v150;
    v138 = v167;
    v139 = v160;
    v160(v150, v164, v167);
    *(v137 + *(v152 + 20)) = v168;
    v140 = v162;
    *(v148 + ((v162 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v162;
    v67 = v149;
    v139(*(v149 + 48) + v161, v166, v138);
    result = sub_22C4BB16C(v137, *(v67 + 56) + *(v151 + 72) * v140, type metadata accessor for DynamicEnumeration);
    v141 = *(v67 + 16);
    v142 = __OFADD__(v141, 1);
    v143 = v141 + 1;
    if (v142)
    {
      goto LABEL_33;
    }

    *(v67 + 16) = v143;
    v68 = v159;
    v72 = v158;
  }

  v75 = v68;
  while (1)
  {
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v76 >= v144)
    {

      return v67;
    }

    v77 = *(v145 + 8 * v76);
    ++v75;
    if (v77)
    {
      v158 = (v77 - 1) & v77;
      v159 = v76;
      v74 = __clz(__rbit64(v77)) | (v76 << 6);
      goto LABEL_11;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_22C4BAA14(uint64_t a1)
{
  v53 = sub_22C903E2C();
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C90941C();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v58 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22C9084CC();
  v8 = *(*(v57 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v57);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v40 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v59 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  v49 = (v2 + 8);
  v50 = v15 + 16;
  v51 = v15;
  v54 = v14;
  v55 = (v15 + 32);
  v43 = v5 + 32;
  v44 = v5;
  v42 = (v5 + 8);
  v41 = xmmword_22C90F800;
  v45 = a1;
  while (1)
  {
    if (v54 == v12)
    {

      return v13;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v16 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v17 = *(v51 + 72);
    (*(v51 + 16))(v56, a1 + v16 + v17 * v12, v57);
    v18 = v52;
    sub_22C9084AC();
    sub_22C903E1C();
    (*v49)(v18, v53);
    sub_22C6284D4();
    v21 = v20;
    v22 = v13[2];
    v23 = (v19 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v13[3] < v22 + v23)
    {
      sub_22C88CD3C();
      v13 = v59;
      sub_22C6284D4();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v21 = v25;
    }

    if (v24)
    {
      (*v42)(v58, v48);
      v27 = v13[7];
      v28 = *v55;
      (*v55)(v47, v56, v57);
      v29 = *(v27 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v21) = v29;
      v46 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v29 + 16);
        sub_22C5917AC();
        v29 = v37;
        *(v27 + 8 * v21) = v37;
      }

      v31 = *(v29 + 16);
      if (v31 >= *(v29 + 24) >> 1)
      {
        sub_22C5917AC();
        v29 = v38;
        *(v27 + 8 * v21) = v38;
      }

      *(v29 + 16) = v31 + 1;
      v46((v29 + v16 + v31 * v17), v47, v57);
      a1 = v45;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC88, &unk_22C91DAD0);
      v32 = swift_allocObject();
      *(v32 + 16) = v41;
      (*v55)((v32 + v16), v56, v57);
      v13[(v21 >> 6) + 8] |= 1 << v21;
      (*(v44 + 32))(v13[6] + *(v44 + 72) * v21, v58, v48);
      *(v13[7] + 8 * v21) = v32;
      v33 = v13[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v13[2] = v35;
    }

    ++v12;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4BAEE0(uint64_t a1)
{
  sub_22C48A9B4(a1, v1[1]);
  v3 = *v1;

  return sub_22C48A9B4(a1, v3);
}

uint64_t sub_22C4BAF20(unint64_t *a1, unint64_t *a2)
{
  if ((sub_22C48819C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];

  return sub_22C48819C(v4, v5);
}

uint64_t sub_22C4BAF7C()
{
  sub_22C90B62C();
  sub_22C48A9B4(v2, v0[1]);
  sub_22C48A9B4(v2, *v0);
  return sub_22C90B66C();
}

uint64_t sub_22C4BAFD4()
{
  sub_22C90B62C();
  sub_22C4BAEE0(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C4BB014@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_22C6284D4(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for DynamicEnumeration(0);
    sub_22C4BB364(v7 + *(*(v8 - 8) + 72) * v6, a2);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for DynamicEnumeration(0);
    v9 = a2;
    v10 = 1;
  }

  return sub_22C36C640(v9, v10, 1, v11);
}

uint64_t sub_22C4BB104(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD2B0, &unk_22C917EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4BB16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22C4BB228()
{
  if (!qword_27D9BD2D8)
  {
    type metadata accessor for DynamicEnumeration.Case(255);
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD2D8);
    }
  }
}

uint64_t sub_22C4BB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4BB364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C4BB420()
{
  sub_22C45924C();
  if (v0 <= 0x3F)
  {
    sub_22C4BB4EC();
    if (v1 <= 0x3F)
    {
      sub_22C4BB550();
      if (v2 <= 0x3F)
      {
        type metadata accessor for _PromptMapper._ToolPromptMap(319);
        if (v3 <= 0x3F)
        {
          sub_22C4BB62C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C4BB4EC()
{
  if (!qword_27D9BD300)
  {
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD300);
    }
  }
}

void sub_22C4BB550()
{
  if (!qword_27D9BD308)
  {
    sub_22C90952C();
    sub_22C4BB5E4(&qword_28142FA80, MEMORY[0x277D72D58]);
    v0 = sub_22C90A8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD308);
    }
  }
}

uint64_t sub_22C4BB5E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22C4BB62C()
{
  if (!qword_27D9BD310)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD310);
    }
  }
}

uint64_t sub_22C4BB6C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0x6168706C41;
  *(a2 + 1) = 0xE500000000000000;
  v4 = _s15AlphaComponentsVMa();
  v5.n128_f64[0] = sub_22C387108(v4[11]);
  sub_22C373428(*(v6 + 48), v5);
  sub_22C373428(*(v7 + 52), v8);
  sub_22C373428(*(v9 + 56), v10);
  sub_22C373428(*(v11 + 60), v12);
  *(v13 + 40) = -1;
  bzero(&a2[*(v14 + 64)], 0x110uLL);
  bzero(&a2[v4[17]], 0x190uLL);
  v15.n128_f64[0] = sub_22C387108(v4[18]);
  *(v16 + 40) = -1;
  sub_22C373428(v4[19], v15);
  sub_22C373428(v4[20], v17);
  *(v18 + 40) = -1;
  sub_22C373428(v4[21], v19);
  *(v20 + 40) = -1;
  sub_22C373428(v4[22], v21);
  *(v22 + 40) = -1;
  sub_22C373428(v4[23], v23);
  *(v24 + 40) = -1;
  sub_22C373428(v4[24], v25);
  *(v26 + 40) = -1;
  sub_22C373428(v4[25], v27);
  *(v28 + 40) = -1;
  v29 = v4[5];
  v30 = sub_22C90077C();
  sub_22C36985C(v30);
  (*(v31 + 16))(&a2[v29], a1);
  v32 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v4[6]] = *(a1 + v32[5]);
  sub_22C3E8FB4(a1 + v32[6], &a2[v4[7]], &qword_27D9BB730, &unk_22C90FE30);
  sub_22C3E8FB4(a1 + v32[7], &a2[v4[8]], &qword_27D9BB728, &qword_22C911230);
  v33 = (a1 + v32[8]);
  v34 = *v33;
  v35 = v33[1];
  v36 = &a2[v4[9]];
  *v36 = v34;
  *(v36 + 1) = v35;
  v37 = v32[10];
  v38 = v4[10];
  sub_22C369DCC();
  sub_22C4BF520(a1 + v39, &a2[v40], v41);

  return sub_22C4BF580(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15AlphaComponentsVMa()
{
  result = qword_27D9BD320;
  if (!qword_27D9BD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4BB930()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C9071BC();
    if (v1 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v2 <= 0x3F)
      {
        sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
        if (v3 <= 0x3F)
        {
          sub_22C430E9C(319, &qword_28142FA20);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences();
            if (v5 <= 0x3F)
            {
              sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
              if (v6 <= 0x3F)
              {
                sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                if (v7 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                  if (v8 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                    if (v9 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD368, &qword_27D9BD370, &qword_22C918220);
                      if (v10 <= 0x3F)
                      {
                        sub_22C430E9C(319, &qword_281434970);
                        if (v11 <= 0x3F)
                        {
                          sub_22C430E9C(319, &qword_281434B98);
                          if (v12 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                            if (v13 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_2814335D0, &qword_27D9BD380, &qword_22C918228);
                              if (v14 <= 0x3F)
                              {
                                sub_22C4BBD84(319, &qword_28142F938, &qword_27D9BD388, &unk_22C9182D0);
                                if (v15 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                          if (v20 <= 0x3F)
                                          {
                                            swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_22C4BBD30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C4BBD84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    v5 = sub_22C90AC6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22C4BBDE4()
{
  sub_22C3727F4();
  v2 = _s15AlphaComponentsVMa();
  v3 = *(v2 + 44);
  sub_22C3E8FB4(v1 + v3, &v11, &qword_27D9BD3D0, &unk_22C918320);
  if (v12)
  {
    return sub_22C36C730(&v11, v0);
  }

  sub_22C36DD28(&v11, &qword_27D9BD3D0, &unk_22C918320);
  v5 = *(v2 + 40);
  v6 = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[3] = v6;
  v0[4] = &off_283FB8878;
  v7 = sub_22C36D548(v0);
  sub_22C9006AC();
  v8 = *(v6 + 20);
  sub_22C369DCC();
  sub_22C4BF520(v1 + v5, v7 + v9, v10);
  sub_22C36DD28(v1 + v3, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4BBEF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15AlphaComponentsVMa() + 48);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v1_0;
  a1[4] = &off_283FB8858;
  *a1 = swift_allocObject();
  sub_22C4BBDE4();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4BBFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s15AlphaComponentsVMa() + 52);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD3E0, &unk_22C918720);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD3E0, &unk_22C918720);
  *(a1 + 24) = &type metadata for DynamicEnumerationCaseRenderer_v1_0;
  *(a1 + 32) = &off_283FB8E40;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4BC0A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s15AlphaComponentsVMa();
  v5 = *(v4 + 56);
  sub_22C3E8FB4(v2 + v5, &v11, &qword_27D9BD3F8, &unk_22C918340);
  if (v12)
  {
    return sub_22C36C730(&v11, a1);
  }

  sub_22C36DD28(&v11, &qword_27D9BD3F8, &unk_22C918340);
  v7 = *(v2 + *(v4 + 24));
  v8 = type metadata accessor for ToolRenderer_v1_0();
  a1[3] = v8;
  a1[4] = &off_283FB9200;
  v9 = sub_22C36D548(a1);
  sub_22C90718C();
  v10 = v9 + *(v8 + 20);
  sub_22C4BC1AC();
  sub_22C36DD28(v2 + v5, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v2 + v5);
}

void *sub_22C4BC1AC()
{
  sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa();
  v2 = *(v1 + 64);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4BCDBC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4BC244()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15AlphaComponentsVMa() + 60);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4BCD48(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4BC340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v4 = sub_22C9063DC();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v7 = *(*(v88 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v81 - v10;
  v11 = type metadata accessor for FullPlannerPreferences();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v81 - v24;
  v26 = sub_22C90046C();
  v99 = *(v26 - 8);
  v27 = *(v99 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  v87 = _s15AlphaComponentsVMa();
  v32 = *(v87 + 40);
  v95 = a1;
  sub_22C4BF520(a1 + v32, v21, type metadata accessor for FullPlannerPreferences);
  v33 = *(v11 + 24);
  v34 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v92 = v21;
  sub_22C4BF580(v21, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    sub_22C36DD28(v25, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v35 = swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v96 = v35;
    return result;
  }

  v38 = *(v99 + 32);
  v81 = v26;
  v38(v31, v25, v26);
  v39 = v95;
  sub_22C4BF520(v95 + v32, v19, type metadata accessor for FullPlannerPreferences);
  v40 = &v19[*(v11 + 36)];
  sub_22C901EDC();
  sub_22C4BF580(v19, type metadata accessor for FullPlannerPreferences);
  v42 = v97;
  v41 = v98;
  v43 = v97 == 0x6E65476E656B6F74 && v98 == 0xEE00726F74617265;
  v44 = v11;
  v45 = v32;
  if (v43 || (sub_22C90B4FC() & 1) != 0)
  {
    v86 = v31;

    v46 = v99;
    v47 = v87;
    v48 = v91;
    sub_22C3E8FB4(v39 + *(v87 + 32), v91, &qword_27D9BB728, &qword_22C911230);
    v49 = *(v47 + 20);
    v50 = v88;
    v51 = *(v88 + 20);
    v52 = sub_22C90077C();
    (*(*(v52 - 8) + 16))(v48 + v51, v39 + v49, v52);
    v53 = v92;
    sub_22C4BF520(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v54 = *(v44 + 104);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4BF580(v53, type metadata accessor for FullPlannerPreferences);
    *(v48 + *(v50 + 24)) = v97;
    v55 = v90;
    sub_22C4BF520(v48, v90, type metadata accessor for FullPlannerGMSClientConfiguration);
    v56 = v39 + v45;
    v57 = v89;
    sub_22C4BF520(v56, v89, type metadata accessor for FullPlannerPreferences);
    v58 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v59 = v93;
    v93[3] = v58;
    v59[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370);
    v60 = sub_22C36D548(v59);
    v61 = v94;
    sub_22C4D0D18(v55, v57, v60);
    v35 = v61;
    if (v61)
    {
      sub_22C4BF580(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v46 + 8))(v86, v81);
      result = sub_22C4BF5D8(v59);
      goto LABEL_10;
    }

    sub_22C4BF580(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
    v62 = v81;
    v31 = v86;
  }

  else
  {
    v91 = v34;
    v63 = v42 == 0x65696C4370747468 && v41 == 0xEA0000000000746ELL;
    v46 = v99;
    if (v63)
    {
    }

    else
    {
      v64 = sub_22C90B4FC();

      if ((v64 & 1) == 0)
      {
        v65 = v82;
        sub_22C903F7C();
        v66 = sub_22C9063CC();
        v67 = sub_22C90AADC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v31;
          v69 = swift_slowAlloc();
          *v69 = 0;
          v70 = v69;
          v31 = v68;
          MEMORY[0x2318B9880](v70, -1, -1);
        }

        (*(v83 + 8))(v65, v84);
        sub_22C3DD0D8();
        v35 = swift_allocError();
        *v71 = 0;
        v71[1] = 0;
        swift_willThrow();
        result = (*(v46 + 8))(v31, v81);
        goto LABEL_10;
      }
    }

    v62 = v81;
    (*(v46 + 16))(v86, v31, v81);
    v72 = v92;
    sub_22C4BF520(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v73 = v72 + *(v44 + 28);
    sub_22C901EDC();
    sub_22C4BF580(v72, type metadata accessor for FullPlannerPreferences);
    v74 = v97;
    v75 = v98;
    v76 = v39 + v45;
    v77 = v85;
    sub_22C4BF520(v76, v85, type metadata accessor for FullPlannerPreferences);
    v78 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v79 = v93;
    v93[3] = v78;
    v79[4] = &off_2818B22B8;
    v80 = sub_22C36D548(v79);
    sub_22C3F5190(v86, v74, v75, v77, v80);
  }

  return (*(v46 + 8))(v31, v62);
}

uint64_t sub_22C4BCC28@<X0>(uint64_t a1@<X8>)
{
  sub_22C4BDD88();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248);
    v2 = swift_allocObject();
    sub_22C4BDF94();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4BCD48@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4BCDBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v125 = a2;
  v118 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0(0);
  v3 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v117 = (&v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v5 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v7 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v122 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v9 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v121 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v11 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v124 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v13 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v15 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = 0;
  memset(v147, 0, sizeof(v147));
  v19[3] = &type metadata for EnumerationCaseDefinitionRenderer_v1_0;
  v19[4] = &off_283FB8E80;
  v19[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v19[9] = &off_283FB8EC8;
  v20 = v19;
  v19[5] = swift_allocObject();
  v21 = v20;
  sub_22C4BBDE4();
  v22 = v16[6];
  v23 = _s15AlphaComponentsVMa();
  v24 = *(a1 + v23[6]);
  v25 = v23[6];

  sub_22C90718C();

  v26 = sub_22C908AEC();
  sub_22C36C640(v21 + v22, 0, 1, v26);
  v27 = v16[7];
  v28 = v23[5];
  v105 = v23;
  v29 = sub_22C90077C();
  (*(*(v29 - 8) + 16))(v21 + v27, a1 + v28, v29);
  sub_22C36C640(v21 + v27, 0, 1, v29);
  v30 = v23[10];
  v119 = v21;
  v120 = v30;
  v31 = v21 + v16[8];
  v104 = type metadata accessor for FullPlannerPreferences;
  sub_22C4BF520(a1 + v30, v31, type metadata accessor for FullPlannerPreferences);
  v32 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  v33 = v125;
  v125[32] = v32;
  v33[33] = &off_283FB8E20;
  v34 = v32;
  v35 = sub_22C36D548(v33 + 29);
  v35[3] = v16;
  v35[4] = &off_283FB8E68;
  v36 = v35;
  v37 = sub_22C36D548(v35);
  sub_22C4BF520(v21, v37, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  v36[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v36[9] = &off_283FB8FE0;
  v38 = swift_allocObject();
  v36[5] = v38;
  sub_22C4BECC0(v147, v38 + 16);
  v39 = v36;
  v40 = a1;
  sub_22C4BBDE4();
  v41 = *(a1 + v25);
  v42 = v25;
  v106 = v25;
  v43 = v34;
  v44 = *(v34 + 28);

  sub_22C90718C();

  v143[3] = v43;
  v110 = v43;
  v143[4] = &off_283FB8E20;
  v45 = sub_22C36D548(v143);
  v108 = v39;
  v109 = type metadata accessor for TypeIdentifierRenderer_v1_0;
  sub_22C4BF520(v39, v45, type metadata accessor for TypeIdentifierRenderer_v1_0);
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  v142[3] = v43;
  v142[4] = &off_283FB8E20;
  v46 = sub_22C36D548(v142);
  sub_22C4BF520(v39, v46, type metadata accessor for TypeIdentifierRenderer_v1_0);
  sub_22C4BBFDC(v15);
  v47 = v15;
  v15[8] = &type metadata for StaticTypeInstanceRenderer_v1_0;
  v15[9] = &off_283FB8E00;
  v48 = swift_allocObject();
  v15[5] = v48;
  sub_22C4BED1C(v143, v48 + 16);
  v49 = v123;
  v50 = v15 + *(v123 + 24);
  v111 = v15;
  sub_22C4BF520(v40 + v120, v50, type metadata accessor for FullPlannerPreferences);
  v51 = *(v40 + v42);

  v52 = v124;
  sub_22C90718C();

  v53 = v107;
  v54 = (v52 + *(v107 + 20));
  v54[3] = &type metadata for StaticTypeInstanceRenderer_v1_0;
  v54[4] = &off_283FB8E00;
  v55 = swift_allocObject();
  *v54 = v55;
  sub_22C4BED1C(v143, v55 + 16);
  v56 = (v52 + *(v53 + 24));
  v56[3] = v49;
  v56[4] = &off_283FB8E50;
  v57 = sub_22C36D548(v56);
  v112 = type metadata accessor for DynamicEnumerationRenderer_v1_0;
  sub_22C4BF520(v47, v57, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  v138[3] = v53;
  v138[4] = &off_283FB8F90;
  v58 = sub_22C36D548(v138);
  sub_22C4BF520(v52, v58, type metadata accessor for TypeInstanceRenderer_v1_0);
  v139 = 0u;
  v140 = 0u;
  v141 = 0;
  v59 = v40;
  v60 = v40 + v105[7];
  v61 = v121;
  sub_22C3E8FB4(v60, v121, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4BBDE4();
  v62 = v122;
  *(v122 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v62 + 32) = &off_283FB8ED8;
  v63 = swift_allocObject();
  *v62 = v63;
  sub_22C4BEDC0(v138, v63 + 16);
  *(v62 + 64) = &type metadata for ToolNameRenderer_v1_0;
  *(v62 + 72) = &off_283FB8858;
  v64 = swift_allocObject();
  *(v62 + 40) = v64;
  sub_22C4BEE1C(v137, v64 + 16);
  *(v62 + 80) = 0u;
  *(v62 + 96) = 0u;
  *(v62 + 112) = 0;
  v65 = v113;
  *(v62 + 144) = v113;
  *(v62 + 152) = &off_283FB8F70;
  v66 = sub_22C36D548((v62 + 120));
  sub_22C4BF520(v61, v66, type metadata accessor for ToolDescriptionProvider_v1_0);
  v67 = v114;
  v68 = v120;
  v69 = v62 + *(v114 + 32);
  v70 = v104;
  sub_22C4BF520(v59 + v120, v69, v104);
  v71 = v115;
  *v115 = 0u;
  v71[1] = 0u;
  *(v71 + 4) = 0;
  *(v71 + 8) = v65;
  *(v71 + 9) = &off_283FB8F70;
  v72 = v71;
  v73 = sub_22C36D548(v71 + 5);
  sub_22C4BF520(v61, v73, type metadata accessor for ToolDescriptionProvider_v1_0);
  v74 = v116;
  v75 = v59;
  v76 = v59 + v68;
  v77 = v72;
  sub_22C4BF520(v76, v72 + *(v116 + 24), v70);
  v136[3] = v67;
  v78 = v67;
  v136[4] = &off_283FB8F40;
  v79 = sub_22C36D548(v136);
  v80 = v122;
  sub_22C4BF520(v122, v79, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4BBDE4();
  v135[3] = &type metadata for ToolNameRenderer_v1_0;
  v135[4] = &off_283FB8858;
  v135[0] = swift_allocObject();
  sub_22C4BEE1C(v137, v135[0] + 16);
  v81 = v117;
  v117[3] = v78;
  v81[4] = &off_283FB8F40;
  v82 = sub_22C36D548(v81);
  sub_22C4BF520(v80, v82, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v81[8] = v74;
  v81[9] = &off_283FB8E98;
  v83 = sub_22C36D548(v81 + 5);
  sub_22C4BF520(v72, v83, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v81[13] = &type metadata for EntitySetterRenderer_v1_0;
  v81[14] = &off_283FB8F18;
  v84 = swift_allocObject();
  v81[10] = v84;
  sub_22C4BEE78(v136, v84 + 16);
  v81[18] = &type metadata for UIControlRenderer_v2_0;
  v81[19] = &off_283FB9700;
  v85 = swift_allocObject();
  v81[15] = v85;
  sub_22C4BEED4(v135, v85 + 16);
  v86 = *(v75 + v106);
  v87 = v118;
  v88 = *(v118 + 32);

  sub_22C90718C();

  v89 = v110;
  v134[3] = v110;
  v134[4] = &off_283FB8E20;
  v90 = sub_22C36D548(v134);
  v92 = v108;
  v91 = v109;
  sub_22C4BF520(v108, v90, v109);
  v133[3] = v89;
  v133[4] = &off_283FB8E20;
  v93 = sub_22C36D548(v133);
  sub_22C4BF520(v92, v93, v91);
  v133[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v133[9] = &off_283FB8FC0;
  v133[13] = &type metadata for INPersonRenderer_v1_0;
  v133[14] = &off_283FB8FB0;
  v129[3] = v89;
  v129[4] = &off_283FB8E20;
  v94 = sub_22C36D548(v129);
  sub_22C4BF520(v92, v94, v91);
  v131 = &type metadata for PrimitiveValueRenderer_v1_0;
  v132 = &off_283FB8EB8;
  v130 = swift_allocObject();
  sub_22C4BEF30(v133, v130 + 16);
  sub_22C4BEF8C(v129, v128);
  sub_22C4BEFE8(v142, v127);
  sub_22C4BF044(v134, v126);
  v95 = sub_22C4D656C(v128, v127, v126);
  v96 = v125;
  sub_22C4BBDE4();
  v96[8] = v87;
  v96[9] = &off_283FB8DD8;
  v97 = sub_22C36D548(v96 + 5);
  sub_22C4BF520(v81, v97, type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0);
  v96[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v96[14] = &off_283FB8ED8;
  v98 = swift_allocObject();
  v96[10] = v98;
  sub_22C4BEDC0(v138, v98 + 16);
  v96[18] = &type metadata for ToolNameRenderer_v1_0;
  v96[19] = &off_283FB8858;
  v99 = swift_allocObject();
  v96[15] = v99;
  sub_22C4BEE1C(v137, v99 + 16);
  v96[27] = v123;
  v96[28] = &off_283FB8E50;
  v100 = sub_22C36D548(v96 + 24);
  v101 = v111;
  sub_22C4BF520(v111, v100, v112);

  sub_22C4BF0A0(v129);
  sub_22C4BF0F4(v133);
  sub_22C4BF148(v134);
  sub_22C4BF580(v81, type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0);
  sub_22C4BF19C(v135);
  sub_22C4BF1F0(v136);
  sub_22C4BF580(v77, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4BF580(v80, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4BF244(v137);
  sub_22C4BF580(v121, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v138);
  sub_22C4BF580(v124, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4BF580(v101, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  sub_22C4BF2EC(v142);
  sub_22C4BF340(v143);
  sub_22C4BF580(v119, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  result = sub_22C4BF394(v147);
  v96[20] = v95;
  v96[21] = &off_283FB87B0;
  v96[22] = v95;
  v96[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4BDA34()
{
  sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa();
  v2 = *(v1 + 68);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4BDACC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4BDACC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v4 = swift_allocObject();
  *(a2 + 80) = v4;
  *(v4 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v4 + 48) = &off_283FB8638;
  v5 = *(_s15AlphaComponentsVMa() + 24);
  v6 = *(a1 + v5);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v7 = swift_allocObject();
  *(a2 + 120) = v7;
  v7[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v7[6] = &off_283FB84F8;
  sub_22C36D548(v7 + 2);

  sub_22C90718C();

  v8 = *(a1 + v5);
  v9 = type metadata accessor for ExpressionParser_v1_0();
  v7[10] = v9;
  v7[11] = &off_283FB8460;
  v10 = sub_22C36D548(v7 + 7);
  v11 = v9[5];

  sub_22C90718C();

  sub_22C4BC1AC();
  sub_22C378A4C(&v25, v10 + v9[6]);
  sub_22C3DF2E8(&v24);
  v12 = v10 + v9[7];
  sub_22C4BBDE4();
  v13 = v10 + v9[8];
  *(v13 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v13 + 4) = &off_283FB8298;
  v14 = v10 + v9[9];
  *(v14 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v14 + 4) = &off_283FB8588;
  sub_22C4BC0A4((v10 + v9[10]));
  sub_22C4BBFDC(v10 + v9[11]);
  *v10 = 0;
  v7[15] = &type metadata for RenderingArbiter_v1_0;
  v7[16] = &off_283FB8588;
  v15 = *(a1 + v5);
  v16 = type metadata accessor for StatementResultParser_v1_0();
  *(a2 + 184) = v16;
  *(a2 + 192) = &off_283FB86D8;
  v17 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v18 = v17 + *(v16 + 20);
  sub_22C4BC1AC();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v19 = *(a1 + v5);
  v20 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v20;
  *(a2 + 312) = &off_283FB4130;
  v21 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v22 = v21 + *(v20 + 20);
  sub_22C4BC1AC();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4BDD88()
{
  sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa();
  v2 = *(v1 + 72);
  sub_22C3870F0(v1, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4BDE28(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4BDE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s15AlphaComponentsVMa();
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = type metadata accessor for ConversationParser_v1_0();
  a2[3] = v7;
  a2[4] = &off_283FB83D0;
  v8 = sub_22C36D548(a2);

  sub_22C90718C();

  v9 = v8 + v7[5];
  sub_22C4BDA34();
  v10 = v8 + v7[6];
  sub_22C4BC1AC();
  v11 = (v8 + v7[7]);
  v12 = type metadata accessor for ToolFetcher(0);
  v11[3] = v12;
  v11[4] = &off_283FB6BE0;
  v13 = sub_22C36D548(v11);
  sub_22C4BBEF4(v13);
  v14 = *(a1 + v5);
  v15 = *(v12 + 20);

  sub_22C90718C();

  sub_22C4BC0A4((v8 + v7[8]));
  v16 = v8 + v7[9];
  *(v16 + 3) = &type metadata for StubGrammarGenerator;
  *(v16 + 4) = &off_283FB5308;
  result = sub_22C4BF520(a1 + *(v4 + 40), v8 + v7[12], type metadata accessor for FullPlannerPreferences);
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = 1;
  return result;
}

uint64_t sub_22C4BDF94()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15AlphaComponentsVMa() + 76);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v5 = *v2;
    v6 = v3;
    v7 = *(v2 + 32);
  }

  if (*(&v6 + 1))
  {
    return sub_22C36C730(&v5, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  return sub_22C378A4C(v0, v2);
}

void sub_22C4BE038()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15AlphaComponentsVMa() + 80);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4BCC28(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4BE120()
{
  sub_22C3727F4();
  v2 = *(_s15AlphaComponentsVMa() + 84);
  sub_22C3E8FB4(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

void sub_22C4BE22C()
{
  sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa();
  v2 = *(v1 + 88);
  sub_22C3870F0(v1, v3, &qword_27D9BD3C8, &unk_22C9186B0, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4BE2CC(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4BE2CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-1] - v6;
  sub_22C4BC1AC();
  sub_22C4BBDE4();
  v8 = _s15AlphaComponentsVMa();
  v9 = *(a1 + v8[6]);
  v10 = v8[10];
  v11 = (a1 + v8[9]);
  v13 = *v11;
  v12 = v11[1];
  v14 = type metadata accessor for PromptMapperResolver();
  a2[3] = v14;
  a2[4] = &off_283FB3CE0;
  v15 = sub_22C36D548(a2);
  sub_22C4BF520(a1 + v10, v15 + *(v14 + 36), type metadata accessor for FullPlannerPreferences);
  sub_22C42F0B8(v23, v15);
  *(v15 + 17) = 0u;
  *(v15 + 18) = 0u;
  sub_22C378A4C(v22, (v15 + 38));
  v16 = sub_22C90A75C();
  sub_22C36C640(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v9;

  sub_22C580C40();
  v19 = v18;
  sub_22C36FF94(v22);
  result = sub_22C3DF2E8(v23);
  v15[43] = v19;
  v15[44] = v13;
  v15[45] = v12;
  return result;
}

void sub_22C4BE48C()
{
  sub_22C3727F4();
  v0 = _s15AlphaComponentsVMa();
  v1 = *(v0 + 92);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BCD48(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4BE53C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4BE120();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4BE22C();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15AlphaComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4BE690()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = _s15AlphaComponentsVMa();
  v7 = *(v6 + 96);
  result = sub_22C3E8FB4(v1 + v7, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    v10 = *(v6 + 40);
    sub_22C369DCC();
    sub_22C4BF520(v1 + v11, v5, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v5, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v7, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v7, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v9 = *v15;
    *v0 = v14;
    *(v0 + 16) = v9;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

void sub_22C4BE7F8()
{
  sub_22C3727F4();
  v0 = _s15AlphaComponentsVMa();
  v1 = *(v0 + 100);
  sub_22C3870F0(v0, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BCD48(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4BE8A8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4BE038();
  if (v31)
  {
    v4 = v28;
    v27[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v28, v32);
  sub_22C4BC244();
  if (v31)
  {
    v4 = v28;
    v25[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v32;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v28, v27);
  sub_22C4BE48C();
  if (v31)
  {
    v4 = v28;
    *&v24[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    goto LABEL_7;
  }

  sub_22C36C730(&v28, v25);
  sub_22C4BE690();
  if (v31)
  {
    v4 = v28;
    v21[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    sub_22C36FF94(v32);
    v6 = v25;
    goto LABEL_8;
  }

  sub_22C36C730(&v28, v24);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v26;
  v12 = sub_22C36D1E4(v25, v26);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v29 = &type metadata for PostInferenceHandler;
  v30 = &off_283FB3BA0;
  *&v28 = swift_allocObject();
  memcpy((v28 + 16), v15, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v17 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v10 + v17) = sub_22C36E65C(1);
  sub_22C378A4C(v32, v10 + 16);
  sub_22C378A4C(v27, v10 + 56);
  sub_22C378A4C(v10 + 56, v21);
  v18 = v22;
  v19 = v23;
  sub_22C374168(v21, v22);
  (*(v19 + 16))(v18, v19);
  sub_22C36FF94(v27);
  sub_22C36FF94(v32);
  sub_22C36FF94(v21);
  sub_22C36C730(&v28, v10 + 96);
  sub_22C36C730(v24, v10 + qword_27D9BDFC8);
  result = sub_22C36FF94(v25);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v10;
  return result;
}

uint64_t sub_22C4BEC78()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22C4BED78()
{
  sub_22C36FF94(v0 + 2);
  if (v0[10])
  {
    sub_22C36FF94(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C4BF444()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_22C4BF48C()
{
  result = qword_281434F60;
  if (!qword_281434F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434F60);
  }

  return result;
}

uint64_t sub_22C4BF4E0()
{
  if (*(v0 + 40))
  {
    sub_22C36FF94((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C4BF520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4BF580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *sub_22C4BF5D8(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2318B9880);
  }

  return result;
}

uint64_t sub_22C4BF628@<X0>(uint64_t a1@<X8>)
{
  sub_22C4C2330();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248);
    v2 = swift_allocObject();
    sub_22C4C253C();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4BF748@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4BF7BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x6F76617242;
  *(a2 + 1) = 0xE500000000000000;
  v8 = _s15BravoComponentsVMa();
  v9.n128_f64[0] = sub_22C388F74(v8[12]);
  sub_22C369DE4(*(v10 + 52), v9);
  sub_22C369DE4(*(v11 + 56), v12);
  sub_22C369DE4(*(v13 + 60), v14);
  sub_22C369DE4(*(v15 + 64), v16);
  *(v17 + 40) = -1;
  bzero(&a2[*(v18 + 68)], 0x110uLL);
  bzero(&a2[v8[18]], 0x190uLL);
  v19.n128_f64[0] = sub_22C388F74(v8[19]);
  *(v20 + 40) = -1;
  sub_22C369DE4(v8[20], v19);
  sub_22C369DE4(v8[21], v21);
  *(v22 + 40) = -1;
  sub_22C369DE4(v8[22], v23);
  *(v24 + 40) = -1;
  sub_22C369DE4(v8[23], v25);
  *(v26 + 40) = -1;
  sub_22C369DE4(v8[24], v27);
  *(v28 + 40) = -1;
  sub_22C369DE4(v8[25], v29);
  *(v30 + 40) = -1;
  sub_22C369DE4(v8[26], v31);
  *(v32 + 40) = -1;
  v33 = *(v5 + 16);
  v33(&a2[v8[5]], a1, v4);
  v34 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v8[6]] = *(a1 + v34[5]);
  sub_22C3E8FB4(a1 + v34[6], &a2[v8[7]], &qword_27D9BB730, &unk_22C90FE30);
  v35 = a1 + v34[10];
  v36 = *(type metadata accessor for FullPlannerPreferences() + 44);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v53 == 1)
  {
    v52 = 0;
    v37 = v51;
    v33(v51, a1, v4);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v52, v37, &v53);
    v47 = v53;
    v48 = v54;
    v49 = v55;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v48 = 0uLL;
  }

  v38 = &a2[v8[8]];
  *v38 = v47;
  *(v38 + 8) = v48;
  *(v38 + 3) = v49;
  v38[32] = 0;
  sub_22C3E8FB4(a1 + v34[7], &a2[v8[9]], &qword_27D9BB728, &qword_22C911230);
  v39 = (a1 + v34[8]);
  v40 = *v39;
  v41 = v39[1];
  v42 = &a2[v8[10]];
  *v42 = v40;
  *(v42 + 1) = v41;
  v43 = v8[11];
  sub_22C369DF4();
  sub_22C4C3618(v35, &a2[v44], v45);

  return sub_22C4C3678(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15BravoComponentsVMa()
{
  result = qword_27D9BD440;
  if (!qword_27D9BD440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4BFB60()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C9071BC();
    if (v1 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v2 <= 0x3F)
      {
        sub_22C4BFF78();
        if (v3 <= 0x3F)
        {
          sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v4 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20);
            if (v5 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences();
              if (v6 <= 0x3F)
              {
                sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                if (v7 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                  if (v8 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                    if (v9 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                      if (v10 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD368, &qword_27D9BD370, &qword_22C918220);
                        if (v11 <= 0x3F)
                        {
                          sub_22C430E9C(319, &qword_281434970);
                          if (v12 <= 0x3F)
                          {
                            sub_22C430E9C(319, &qword_281434B98);
                            if (v13 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                              if (v14 <= 0x3F)
                              {
                                sub_22C4BBD84(319, &qword_2814335D0, &qword_27D9BD380, &qword_22C918228);
                                if (v15 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F938, &qword_27D9BD388, &unk_22C9182D0);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                            if (v21 <= 0x3F)
                                            {
                                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_22C4BFF78()
{
  if (!qword_28142F910)
  {
    sub_22C3AC1A0(qword_27D9BD450, &qword_22C918260);
    sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
    v0 = sub_22C90B6AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28142F910);
    }
  }
}

uint64_t sub_22C4C0000@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15BravoComponentsVMa();
  v4 = *(v3 + 48);
  sub_22C3E8FB4(v1 + v4, &v9, &qword_27D9BD3D0, &unk_22C918320);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3D0, &unk_22C918320);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for AppNameRenderer_v1_0(0);
  a1[3] = v7;
  a1[4] = &off_283FB8878;
  v8 = sub_22C36D548(a1);
  sub_22C9006AC();
  sub_22C4C3618(v1 + v6, v8 + *(v7 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C0124@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15BravoComponentsVMa() + 52);
  sub_22C3E8FB4(v1 + v3, &v6, &qword_27D9BD400, &unk_22C918710);
  if (v7)
  {
    return sub_22C36C730(&v6, a1);
  }

  sub_22C36DD28(&v6, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  v5 = swift_allocObject();
  *a1 = v5;
  sub_22C4C0000((v5 + 16));
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C020C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s15BravoComponentsVMa() + 56);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD3E0, &unk_22C918720);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD3E0, &unk_22C918720);
  *(a1 + 24) = &type metadata for DynamicEnumerationCaseRenderer_v1_0;
  *(a1 + 32) = &off_283FB8E40;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C02D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s15BravoComponentsVMa();
  v5 = *(v4 + 60);
  sub_22C3E8FB4(v2 + v5, &v18, &qword_27D9BD3F8, &unk_22C918340);
  if (v19)
  {
    return sub_22C36C730(&v18, a1);
  }

  sub_22C36DD28(&v18, &qword_27D9BD3F8, &unk_22C918340);
  v7 = *(v4 + 24);
  v8 = *(v2 + v7);
  v9 = type metadata accessor for ToolRenderer_v2_0();
  a1[3] = v9;
  a1[4] = &off_283FB9988;
  v10 = sub_22C36D548(a1);
  sub_22C90718C();
  v11 = v10 + v9[5];
  sub_22C4C0440();
  v12 = *(v2 + v7);
  v13 = (v10 + v9[6]);
  v14 = type metadata accessor for ToolRenderer_v1_0();
  v13[3] = v14;
  v13[4] = &off_283FB9200;
  v15 = sub_22C36D548(v13);
  sub_22C90718C();
  v16 = v15 + *(v14 + 20);
  sub_22C4C0440();
  v17 = v10 + v9[7];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  sub_22C36DD28(v2 + v5, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v2 + v5);
}

void *sub_22C4C0440()
{
  sub_22C3727F4();
  v1 = _s15BravoComponentsVMa();
  v2 = *(v1 + 68);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C0EBC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C04D8()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15BravoComponentsVMa() + 64);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4BF748(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4C05D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v4 = sub_22C9063DC();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v7 = *(*(v88 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v81 - v10;
  v11 = type metadata accessor for FullPlannerPreferences();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v81 - v24;
  v26 = sub_22C90046C();
  v99 = *(v26 - 8);
  v27 = *(v99 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  v87 = _s15BravoComponentsVMa();
  v32 = *(v87 + 44);
  v95 = a1;
  sub_22C4C3618(a1 + v32, v21, type metadata accessor for FullPlannerPreferences);
  v33 = *(v11 + 24);
  v34 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v92 = v21;
  sub_22C4C3678(v21, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    sub_22C36DD28(v25, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v35 = swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v96 = v35;
    return result;
  }

  v38 = *(v99 + 32);
  v81 = v26;
  v38(v31, v25, v26);
  v39 = v95;
  sub_22C4C3618(v95 + v32, v19, type metadata accessor for FullPlannerPreferences);
  v40 = &v19[*(v11 + 36)];
  sub_22C901EDC();
  sub_22C4C3678(v19, type metadata accessor for FullPlannerPreferences);
  v42 = v97;
  v41 = v98;
  v43 = v97 == 0x6E65476E656B6F74 && v98 == 0xEE00726F74617265;
  v44 = v11;
  v45 = v32;
  if (v43 || (sub_22C90B4FC() & 1) != 0)
  {
    v86 = v31;

    v46 = v99;
    v47 = v87;
    v48 = v91;
    sub_22C3E8FB4(v39 + *(v87 + 36), v91, &qword_27D9BB728, &qword_22C911230);
    v49 = *(v47 + 20);
    v50 = v88;
    v51 = *(v88 + 20);
    v52 = sub_22C90077C();
    (*(*(v52 - 8) + 16))(v48 + v51, v39 + v49, v52);
    v53 = v92;
    sub_22C4C3618(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v54 = *(v44 + 104);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4C3678(v53, type metadata accessor for FullPlannerPreferences);
    *(v48 + *(v50 + 24)) = v97;
    v55 = v90;
    sub_22C4C3618(v48, v90, type metadata accessor for FullPlannerGMSClientConfiguration);
    v56 = v39 + v45;
    v57 = v89;
    sub_22C4C3618(v56, v89, type metadata accessor for FullPlannerPreferences);
    v58 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v59 = v93;
    v93[3] = v58;
    v59[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370);
    v60 = sub_22C36D548(v59);
    v61 = v94;
    sub_22C4D0D18(v55, v57, v60);
    v35 = v61;
    if (v61)
    {
      sub_22C4C3678(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v46 + 8))(v86, v81);
      result = sub_22C4BF5D8(v59);
      goto LABEL_10;
    }

    sub_22C4C3678(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
    v62 = v81;
    v31 = v86;
  }

  else
  {
    v91 = v34;
    v63 = v42 == 0x65696C4370747468 && v41 == 0xEA0000000000746ELL;
    v46 = v99;
    if (v63)
    {
    }

    else
    {
      v64 = sub_22C90B4FC();

      if ((v64 & 1) == 0)
      {
        v65 = v82;
        sub_22C903F7C();
        v66 = sub_22C9063CC();
        v67 = sub_22C90AADC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v31;
          v69 = swift_slowAlloc();
          *v69 = 0;
          v70 = v69;
          v31 = v68;
          MEMORY[0x2318B9880](v70, -1, -1);
        }

        (*(v83 + 8))(v65, v84);
        sub_22C3DD0D8();
        v35 = swift_allocError();
        *v71 = 0;
        v71[1] = 0;
        swift_willThrow();
        result = (*(v46 + 8))(v31, v81);
        goto LABEL_10;
      }
    }

    v62 = v81;
    (*(v46 + 16))(v86, v31, v81);
    v72 = v92;
    sub_22C4C3618(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v73 = v72 + *(v44 + 28);
    sub_22C901EDC();
    sub_22C4C3678(v72, type metadata accessor for FullPlannerPreferences);
    v74 = v97;
    v75 = v98;
    v76 = v39 + v45;
    v77 = v85;
    sub_22C4C3618(v76, v85, type metadata accessor for FullPlannerPreferences);
    v78 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v79 = v93;
    v93[3] = v78;
    v79[4] = &off_2818B22B8;
    v80 = sub_22C36D548(v79);
    sub_22C3F5190(v86, v74, v75, v77, v80);
  }

  return (*(v46 + 8))(v31, v62);
}

uint64_t sub_22C4C0EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v5 = *(v4 - 8);
  v155 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v156 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v154 = (&v139 - v9);
  v169 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  v10 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v147 = (&v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v12 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v168 = (&v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v14 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v167 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v16 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v166 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v18 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v165 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v20 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v163 = (&v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v23 = *(v22 - 8);
  v145 = (v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8);
  v152 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v162 = (&v139 - v27);
  v28 = type metadata accessor for FullPlannerPreferences();
  v29 = *(v28 - 8);
  v141 = v28 - 8;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8);
  v142 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v140 = &v139 - v33;
  v34 = type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  v35 = *(*(v34 - 1) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = 0;
  memset(v200, 0, sizeof(v200));
  v37[3] = &type metadata for EnumerationCaseDefinitionRenderer_v1_0;
  v37[4] = &off_283FB8E80;
  v37[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v37[9] = &off_283FB8EC8;
  v38 = v37;
  v39 = swift_allocObject();
  v38[5] = v39;
  v40 = v38;
  sub_22C4C0000((v39 + 16));
  v41 = v34[6];
  v42 = _s15BravoComponentsVMa();
  v43 = *(v42 + 24);
  v44 = v42;
  v45 = *(a1 + v43);
  v159 = v43;

  sub_22C90718C();

  v46 = sub_22C908AEC();
  sub_22C36C640(v40 + v41, 0, 1, v46);
  v47 = v34[7];
  v48 = *(v44 + 20);
  v144 = v44;
  v49 = sub_22C90077C();
  (*(*(v49 - 8) + 16))(v40 + v47, a1 + v48, v49);
  sub_22C36C640(v40 + v47, 0, 1, v49);
  v50 = *(v44 + 44);
  v51 = v34[8];
  v170 = type metadata accessor for FullPlannerPreferences;
  v52 = v50;
  v153 = v40;
  sub_22C4C3618(a1 + v50, v40 + v51, type metadata accessor for FullPlannerPreferences);
  v53 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v150 = a2;
  a2[32] = v53;
  a2[33] = &off_283FB96A0;
  v54 = v53;
  v55 = sub_22C36D548(a2 + 29);
  v55[3] = v34;
  v55[4] = &off_283FB8E68;
  v56 = sub_22C36D548(v55);
  sub_22C4C3618(v40, v56, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  v55[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v55[9] = &off_283FB8FE0;
  v57 = swift_allocObject();
  v55[5] = v57;
  sub_22C4BECC0(v200, v57 + 16);
  v55[13] = &type metadata for UTTypeRenderer_v1_0;
  v55[14] = &off_283FB8FD0;
  sub_22C4C0000(v55 + 15);
  v55[24] = 0;
  *(v55 + 10) = 0u;
  *(v55 + 11) = 0u;
  v58 = v55;
  v59 = *(a1 + v43);
  v60 = v54;
  v61 = *(v54 + 36);

  sub_22C90718C();

  v196[3] = v60;
  v196[4] = &off_283FB9688;
  v62 = sub_22C36D548(v196);
  sub_22C4C3618(v58, v62, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v197 = 0u;
  v198 = 0u;
  v199 = 0;
  v195[3] = v60;
  v161 = v60;
  v195[4] = &off_283FB96A0;
  v63 = sub_22C36D548(v195);
  v160 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C3618(v58, v63, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v195[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v195[9] = &off_283FB8FC0;
  v195[13] = &type metadata for INPersonRenderer_v1_0;
  v195[14] = &off_283FB8FB0;
  v191[3] = v60;
  v191[4] = &off_283FB96A0;
  v64 = sub_22C36D548(v191);
  v143 = v58;
  sub_22C4C3618(v58, v64, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v193 = &type metadata for PrimitiveValueRenderer_v1_0;
  v194 = &off_283FB8EB8;
  v192 = swift_allocObject();
  sub_22C4BEF30(v195, v192 + 16);
  v65 = v52;
  v157 = a1;
  v158 = v52;
  v66 = a1 + v52;
  v67 = v140;
  v68 = v170;
  sub_22C4C3618(v66, v140, v170);
  v69 = v141;
  v70 = *(v141 + 104);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4C3678(v67, type metadata accessor for FullPlannerPreferences);
  v71 = v184[0];
  v72 = a1 + v65;
  v73 = v142;
  sub_22C4C3618(v72, v142, v68);
  v74 = v73 + *(v69 + 104);
  sub_22C901EDC();
  sub_22C4C3678(v73, type metadata accessor for FullPlannerPreferences);
  v75 = v184[0];
  v189 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v190 = &off_283FB9738;
  v188 = swift_allocObject();
  sub_22C4C32E8(v191, v188 + 16);
  v184[1] = 0;
  v184[0] = 0;
  v184[2] = v71;
  v185 = 0;
  v186 = v75;
  v187 = 0;
  v76 = v162;
  v162[3] = v161;
  v76[4] = &off_283FB9688;
  v77 = v76;
  v78 = sub_22C36D548(v76);
  sub_22C4C3618(v58, v78, v160);
  v77[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v77[9] = &off_283FB9728;
  v79 = swift_allocObject();
  v77[5] = v79;
  sub_22C4C3344(v184, v79 + 16);
  v80 = v159;
  v81 = v157;
  v82 = *(v157 + v159);
  v83 = *(v145 + 8);

  sub_22C90718C();

  v84 = v163;
  sub_22C4C020C(v163);
  v84[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v84[9] = &off_283FB9668;
  v85 = swift_allocObject();
  v84[5] = v85;
  sub_22C4C33A0(v196, v85 + 16);
  v86 = v164;
  sub_22C4C3618(v81 + v158, v84 + *(v164 + 24), v170);
  v87 = *(v81 + v80);

  v88 = v165;
  sub_22C90718C();

  v89 = v146;
  v90 = (v88 + *(v146 + 20));
  v90[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v90[4] = &off_283FB9668;
  v91 = swift_allocObject();
  *v90 = v91;
  sub_22C4C33A0(v196, v91 + 16);
  v92 = (v88 + *(v89 + 24));
  v92[3] = v86;
  v92[4] = &off_283FB8E50;
  v93 = sub_22C36D548(v92);
  v145 = type metadata accessor for DynamicEnumerationRenderer_v1_0;
  sub_22C4C3618(v84, v93, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  v180[3] = v89;
  v180[4] = &off_283FB8F90;
  v94 = sub_22C36D548(v180);
  sub_22C4C3618(v88, v94, type metadata accessor for TypeInstanceRenderer_v1_0);
  v181 = 0u;
  v182 = 0u;
  v183 = 0;
  v95 = v81;
  v96 = v166;
  sub_22C3E8FB4(v81 + *(v144 + 28), v166, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4C0000(v179);
  v97 = v167;
  *(v167 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v97 + 32) = &off_283FB8ED8;
  v98 = swift_allocObject();
  *v97 = v98;
  sub_22C4BEDC0(v180, v98 + 16);
  *(v97 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v97 + 72) = &off_283FB9968;
  v99 = swift_allocObject();
  *(v97 + 40) = v99;
  sub_22C4C33FC(v179, v99 + 16);
  *(v97 + 80) = 0u;
  *(v97 + 96) = 0u;
  *(v97 + 112) = 0;
  v100 = v148;
  *(v97 + 144) = v148;
  *(v97 + 152) = &off_283FB8F70;
  v101 = sub_22C36D548((v97 + 120));
  sub_22C4C3618(v96, v101, type metadata accessor for ToolDescriptionProvider_v1_0);
  v102 = v149;
  v103 = v158;
  v104 = v170;
  sub_22C4C3618(v95 + v158, v97 + *(v149 + 32), v170);
  v105 = v168;
  *v168 = 0u;
  v105[1] = 0u;
  *(v105 + 4) = 0;
  *(v105 + 8) = v100;
  *(v105 + 9) = &off_283FB8F70;
  v106 = sub_22C36D548(v105 + 5);
  sub_22C4C3618(v96, v106, type metadata accessor for ToolDescriptionProvider_v1_0);
  v107 = v151;
  sub_22C4C3618(v95 + v103, v105 + *(v151 + 24), v104);
  v177[3] = v102;
  v177[4] = &off_283FB8F40;
  v108 = sub_22C36D548(v177);
  sub_22C4C3618(v97, v108, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C0000(v178);
  v176[3] = &type metadata for ToolNameRenderer_v2_0;
  v176[4] = &off_283FB9968;
  v176[0] = swift_allocObject();
  sub_22C4C33FC(v179, v176[0] + 16);
  v109 = v147;
  v147[3] = v102;
  v109[4] = &off_283FB8F40;
  v110 = sub_22C36D548(v109);
  sub_22C4C3618(v97, v110, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v109[8] = v107;
  v109[9] = &off_283FB8E98;
  v111 = sub_22C36D548(v109 + 5);
  sub_22C4C3618(v105, v111, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v109[13] = &type metadata for EntitySetterRenderer_v1_0;
  v109[14] = &off_283FB8F18;
  v112 = swift_allocObject();
  v109[10] = v112;
  sub_22C4BEE78(v177, v112 + 16);
  v109[18] = &type metadata for UIControlRenderer_v2_0;
  v109[19] = &off_283FB9700;
  v113 = swift_allocObject();
  v109[15] = v113;
  sub_22C4BEED4(v176, v113 + 16);
  v109[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v109[24] = &off_283FB96C0;
  v114 = swift_allocObject();
  v109[20] = v114;
  v114[5] = &type metadata for ToolNameRenderer_v2_0;
  v114[6] = &off_283FB9968;
  v115 = swift_allocObject();
  v114[2] = v115;
  sub_22C4C33FC(v179, v115 + 16);
  v116 = v159;
  v117 = v157;
  v118 = *(v157 + v159);
  v119 = *(v169 + 36);

  sub_22C90718C();

  v120 = v154;
  v121 = v161;
  v154[3] = v161;
  v120[4] = &off_283FB9688;
  v122 = sub_22C36D548(v120);
  v123 = v143;
  v124 = v160;
  sub_22C4C3618(v143, v122, v160);
  v120[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v120[9] = &off_283FB9718;
  v125 = *(v117 + v116);
  v126 = *(v155 + 32);

  sub_22C90718C();

  v172[3] = v121;
  v172[4] = &off_283FB96A0;
  v127 = sub_22C36D548(v172);
  sub_22C4C3618(v123, v127, v124);
  v174 = &type metadata for PrimitiveValueRenderer_v1_0;
  v175 = &off_283FB8EB8;
  v173 = swift_allocObject();
  sub_22C4BEF30(v195, v173 + 16);
  sub_22C4BEF8C(v172, v171);
  v128 = v162;
  v129 = v152;
  sub_22C4C3618(v162, v152, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v130 = v156;
  sub_22C4C3618(v120, v156, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v131 = sub_22C4D6614(v171, v129, v130);
  v132 = v150;
  sub_22C4C0000(v150);
  v132[8] = v169;
  v132[9] = &off_283FB9640;
  v133 = sub_22C36D548(v132 + 5);
  sub_22C4C3618(v109, v133, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v132[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v132[14] = &off_283FB8ED8;
  v134 = swift_allocObject();
  v132[10] = v134;
  sub_22C4BEDC0(v180, v134 + 16);
  v132[18] = &type metadata for ToolNameRenderer_v2_0;
  v132[19] = &off_283FB9968;
  v135 = swift_allocObject();
  v132[15] = v135;
  sub_22C4C33FC(v179, v135 + 16);
  v132[27] = v164;
  v132[28] = &off_283FB8E50;
  v136 = sub_22C36D548(v132 + 24);
  v137 = v163;
  sub_22C4C3618(v163, v136, v145);

  sub_22C4BF0A0(v172);
  sub_22C4C3678(v120, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4C3678(v109, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v176);
  sub_22C4BF1F0(v177);
  sub_22C4C3678(v168, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4C3678(v167, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v179);
  sub_22C4C3678(v166, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v180);
  sub_22C4C3678(v165, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4C3678(v137, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  sub_22C4C3678(v128, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v184);
  sub_22C4C3534(v191);
  sub_22C4BF0F4(v195);
  sub_22C4C3588(v196);
  sub_22C4C3678(v153, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  result = sub_22C4BF394(v200);
  v132[20] = v131;
  v132[21] = &off_283FB87B0;
  v132[22] = v131;
  v132[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4C1F9C()
{
  sub_22C3727F4();
  v1 = _s15BravoComponentsVMa();
  v2 = *(v1 + 72);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C2034(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4C2034@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v4 = swift_allocObject();
  *(a2 + 40) = v4;
  sub_22C4C0440();
  *(v4 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v5 = swift_allocObject();
  *(a2 + 80) = v5;
  *(v5 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v5 + 48) = &off_283FB8638;
  v6 = *(_s15BravoComponentsVMa() + 24);
  v7 = *(a1 + v6);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v8 = swift_allocObject();
  *(a2 + 120) = v8;
  v8[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v8[6] = &off_283FB84F8;
  sub_22C36D548(v8 + 2);

  sub_22C90718C();

  v9 = *(a1 + v6);
  v10 = type metadata accessor for ExpressionParser_v1_0();
  v8[10] = v10;
  v8[11] = &off_283FB8460;
  v11 = sub_22C36D548(v8 + 7);
  v12 = v10[5];

  sub_22C90718C();

  sub_22C4C0440();
  sub_22C378A4C(&v25, v11 + v10[6]);
  sub_22C3DF2E8(v24);
  sub_22C4C0000((v11 + v10[7]));
  v13 = v11 + v10[8];
  *(v13 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v13 + 4) = &off_283FB8298;
  v14 = v11 + v10[9];
  *(v14 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v14 + 4) = &off_283FB8588;
  sub_22C4C02D4((v11 + v10[10]));
  sub_22C4C020C(v11 + v10[11]);
  *v11 = 1;
  v8[15] = &type metadata for RenderingArbiter_v1_0;
  v8[16] = &off_283FB8588;
  v15 = *(a1 + v6);
  v16 = type metadata accessor for StatementResultParser_v1_0();
  *(a2 + 184) = v16;
  *(a2 + 192) = &off_283FB86D8;
  v17 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v18 = v17 + *(v16 + 20);
  sub_22C4C0440();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v19 = *(a1 + v6);
  v20 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v20;
  *(a2 + 312) = &off_283FB4130;
  v21 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v22 = v21 + *(v20 + 20);
  sub_22C4C0440();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4C2330()
{
  sub_22C3727F4();
  v1 = _s15BravoComponentsVMa();
  v2 = *(v1 + 76);
  sub_22C3870F0(v1, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4C23D0(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C23D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s15BravoComponentsVMa();
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = type metadata accessor for ConversationParser_v1_0();
  a2[3] = v7;
  a2[4] = &off_283FB83D0;
  v8 = sub_22C36D548(a2);

  sub_22C90718C();

  v9 = v8 + v7[5];
  sub_22C4C1F9C();
  v10 = v8 + v7[6];
  sub_22C4C0440();
  v11 = (v8 + v7[7]);
  v12 = type metadata accessor for ToolFetcher(0);
  v11[3] = v12;
  v11[4] = &off_283FB6BE0;
  v13 = sub_22C36D548(v11);
  sub_22C4C0124(v13);
  v14 = *(a1 + v5);
  v15 = *(v12 + 20);

  sub_22C90718C();

  sub_22C4C02D4((v8 + v7[8]));
  v16 = v8 + v7[9];
  *(v16 + 3) = &type metadata for StubGrammarGenerator;
  *(v16 + 4) = &off_283FB5308;
  result = sub_22C4C3618(a1 + *(v4 + 44), v8 + v7[12], type metadata accessor for FullPlannerPreferences);
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = 1;
  return result;
}

uint64_t sub_22C4C253C()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15BravoComponentsVMa() + 80);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v5 = *v2;
    v6 = v3;
    v7 = *(v2 + 32);
  }

  if (*(&v6 + 1))
  {
    return sub_22C36C730(&v5, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  return sub_22C378A4C(v0, v2);
}

void sub_22C4C25E0()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15BravoComponentsVMa() + 84);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4BF628(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4C26C8()
{
  sub_22C3727F4();
  v2 = *(_s15BravoComponentsVMa() + 88);
  sub_22C3E8FB4(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

void sub_22C4C27D4()
{
  sub_22C3727F4();
  v0 = _s15BravoComponentsVMa();
  v1 = *(v0 + 92);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C2884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_22C4C0440();
  v10 = _s15BravoComponentsVMa();
  v11 = a1 + *(v10 + 32);
  v12 = *v11;
  if (*(v11 + 32))
  {
    v35[0] = *v11;
    v13 = v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v36);
    *a2 = v12;
  }

  else
  {
    v15 = v10;
    v17 = *(v11 + 8);
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v32 = v16;
    sub_22C42B564(v12);
    sub_22C4C0000(v35);
    v34 = *(a1 + v15[6]);
    v18 = v15[11];
    v19 = (a1 + v15[10]);
    v21 = *v19;
    v20 = v19[1];
    v37 = v21;
    v33 = v20;
    v22 = type metadata accessor for PromptMapperResolver();
    a3[3] = v22;
    a3[4] = &off_283FB3CE0;
    v23 = sub_22C36D548(a3);
    sub_22C4C3618(a1 + v18, v23 + *(v22 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v36, v23);
    v23[34] = v12;
    v23[35] = v17;
    v24 = v31;
    v23[36] = v32;
    v23[37] = v24;
    sub_22C378A4C(v35, (v23 + 38));
    v25 = sub_22C90A75C();
    sub_22C36C640(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v34;

    sub_22C580C40();
    v29 = v28;
    sub_22C36FF94(v35);
    result = sub_22C3DF2E8(v36);
    v30 = v37;
    v23[43] = v29;
    v23[44] = v30;
    v23[45] = v27;
  }

  return result;
}

void sub_22C4C2AE4()
{
  sub_22C3727F4();
  v0 = _s15BravoComponentsVMa();
  v1 = *(v0 + 96);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C2B94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4C26C8();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4C27D4();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15BravoComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4C2CE8()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = _s15BravoComponentsVMa();
  v7 = *(v6 + 100);
  result = sub_22C3E8FB4(v1 + v7, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    v10 = *(v6 + 44);
    sub_22C369DF4();
    sub_22C4C3618(v1 + v11, v5, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v5, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v7, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v7, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v9 = *v15;
    *v0 = v14;
    *(v0 + 16) = v9;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

void sub_22C4C2E50()
{
  sub_22C3727F4();
  v0 = _s15BravoComponentsVMa();
  v1 = *(v0 + 104);
  sub_22C3870F0(v0, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C2F00@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4C25E0();
  if (v31)
  {
    v4 = v28;
    v27[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v28, v32);
  sub_22C4C04D8();
  if (v31)
  {
    v4 = v28;
    v25[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v32;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v28, v27);
  sub_22C4C2AE4();
  if (v31)
  {
    v4 = v28;
    *&v24[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    goto LABEL_7;
  }

  sub_22C36C730(&v28, v25);
  sub_22C4C2CE8();
  if (v31)
  {
    v4 = v28;
    v21[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    sub_22C36FF94(v32);
    v6 = v25;
    goto LABEL_8;
  }

  sub_22C36C730(&v28, v24);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v26;
  v12 = sub_22C36D1E4(v25, v26);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v29 = &type metadata for PostInferenceHandler;
  v30 = &off_283FB3BA0;
  *&v28 = swift_allocObject();
  memcpy((v28 + 16), v15, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v17 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v10 + v17) = sub_22C36E65C(1);
  sub_22C378A4C(v32, v10 + 16);
  sub_22C378A4C(v27, v10 + 56);
  sub_22C378A4C(v10 + 56, v21);
  v18 = v22;
  v19 = v23;
  sub_22C374168(v21, v22);
  (*(v19 + 16))(v18, v19);
  sub_22C36FF94(v27);
  sub_22C36FF94(v32);
  sub_22C36FF94(v21);
  sub_22C36C730(&v28, v10 + 96);
  sub_22C36C730(v24, v10 + qword_27D9BDFC8);
  result = sub_22C36FF94(v25);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v10;
  return result;
}

uint64_t sub_22C4C3458()
{
  sub_22C4C36D0();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C4C35DC()
{
  sub_22C4C36D0();
  sub_22C36FF94((v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22C4C3618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4C3678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4C36D0()
{
  sub_22C36FF94((v0 + 16));

  return sub_22C36FF94((v0 + 56));
}

uint64_t sub_22C4C36FC@<X0>(uint64_t a1@<X8>)
{
  sub_22C4C61B8();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248);
    v2 = swift_allocObject();
    sub_22C4C63C4();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4C381C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4C3890@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x65696C72616843;
  *(a2 + 1) = 0xE700000000000000;
  v8 = _s17CharlieComponentsVMa();
  v9.n128_f64[0] = sub_22C388F74(v8[12]);
  sub_22C369DE4(*(v10 + 52), v9);
  sub_22C369DE4(*(v11 + 56), v12);
  sub_22C369DE4(*(v13 + 60), v14);
  sub_22C369DE4(*(v15 + 64), v16);
  *(v17 + 40) = -1;
  bzero(&a2[*(v18 + 68)], 0x110uLL);
  bzero(&a2[v8[18]], 0x190uLL);
  v19.n128_f64[0] = sub_22C388F74(v8[19]);
  *(v20 + 40) = -1;
  sub_22C369DE4(v8[20], v19);
  sub_22C369DE4(v8[21], v21);
  *(v22 + 40) = -1;
  sub_22C369DE4(v8[22], v23);
  *(v24 + 40) = -1;
  sub_22C369DE4(v8[23], v25);
  *(v26 + 40) = -1;
  sub_22C369DE4(v8[24], v27);
  *(v28 + 40) = -1;
  sub_22C369DE4(v8[25], v29);
  *(v30 + 40) = -1;
  sub_22C369DE4(v8[26], v31);
  *(v32 + 40) = -1;
  v33 = *(v5 + 16);
  v33(&a2[v8[5]], a1, v4);
  v34 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v8[6]] = *(a1 + v34[5]);
  sub_22C3E8FB4(a1 + v34[6], &a2[v8[7]], &qword_27D9BB730, &unk_22C90FE30);
  v35 = a1 + v34[10];
  v36 = *(type metadata accessor for FullPlannerPreferences() + 44);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v53 == 1)
  {
    v52 = 0;
    v37 = v51;
    v33(v51, a1, v4);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v52, v37, &v53);
    v47 = v53;
    v48 = v54;
    v49 = v55;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v48 = 0uLL;
  }

  v38 = &a2[v8[8]];
  *v38 = v47;
  *(v38 + 8) = v48;
  *(v38 + 3) = v49;
  v38[32] = 0;
  sub_22C3E8FB4(a1 + v34[7], &a2[v8[9]], &qword_27D9BB728, &qword_22C911230);
  v39 = (a1 + v34[8]);
  v40 = *v39;
  v41 = v39[1];
  v42 = &a2[v8[10]];
  *v42 = v40;
  *(v42 + 1) = v41;
  v43 = v8[11];
  sub_22C369E0C();
  sub_22C4C7170(v35, &a2[v44], v45);

  return sub_22C4C71D0(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s17CharlieComponentsVMa()
{
  result = qword_2814352F8;
  if (!qword_2814352F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4C3C38@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s17CharlieComponentsVMa();
  v4 = *(v3 + 48);
  sub_22C3E8FB4(v1 + v4, &v9, &qword_27D9BD3D0, &unk_22C918320);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3D0, &unk_22C918320);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for AppNameRenderer_v1_0(0);
  a1[3] = v7;
  a1[4] = &off_283FB8878;
  v8 = sub_22C36D548(a1);
  sub_22C9006AC();
  sub_22C4C7170(v1 + v6, v8 + *(v7 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C3D5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s17CharlieComponentsVMa() + 52);
  sub_22C3E8FB4(v1 + v3, &v6, &qword_27D9BD400, &unk_22C918710);
  if (v7)
  {
    return sub_22C36C730(&v6, a1);
  }

  sub_22C36DD28(&v6, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  v5 = swift_allocObject();
  *a1 = v5;
  sub_22C4C3C38((v5 + 16));
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C3E44@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s17CharlieComponentsVMa();
  v4 = *(v3 + 56);
  sub_22C3E8FB4(v1 + v4, &v8, &qword_27D9BD3E0, &unk_22C918720);
  if (v9)
  {
    return sub_22C36C730(&v8, a1);
  }

  sub_22C36DD28(&v8, &qword_27D9BD3E0, &unk_22C918720);
  v6 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  a1[3] = v6;
  a1[4] = &off_283FB9A30;
  v7 = sub_22C36D548(a1);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[4] = 0;
  sub_22C4C7170(v1 + *(v3 + 44), v7 + *(v6 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C3F5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s17CharlieComponentsVMa();
  v5 = *(v4 + 60);
  sub_22C3E8FB4(v2 + v5, &v18, &qword_27D9BD3F8, &unk_22C918340);
  if (v19)
  {
    return sub_22C36C730(&v18, a1);
  }

  sub_22C36DD28(&v18, &qword_27D9BD3F8, &unk_22C918340);
  v7 = *(v4 + 24);
  v8 = *(v2 + v7);
  v9 = type metadata accessor for ToolRenderer_v2_0();
  a1[3] = v9;
  a1[4] = &off_283FB9988;
  v10 = sub_22C36D548(a1);
  sub_22C90718C();
  v11 = v10 + v9[5];
  sub_22C4C40C8();
  v12 = *(v2 + v7);
  v13 = (v10 + v9[6]);
  v14 = type metadata accessor for ToolRenderer_v1_0();
  v13[3] = v14;
  v13[4] = &off_283FB9200;
  v15 = sub_22C36D548(v13);
  sub_22C90718C();
  v16 = v15 + *(v14 + 20);
  sub_22C4C40C8();
  v17 = v10 + v9[7];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  sub_22C36DD28(v2 + v5, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v2 + v5);
}

void *sub_22C4C40C8()
{
  sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa();
  v2 = *(v1 + 68);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C4B44(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C4160()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17CharlieComponentsVMa() + 64);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4C381C(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4C425C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v4 = sub_22C9063DC();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v7 = *(*(v88 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v88);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v81 - v10;
  v11 = type metadata accessor for FullPlannerPreferences();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v81 - v24;
  v26 = sub_22C90046C();
  v99 = *(v26 - 8);
  v27 = *(v99 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  v87 = _s17CharlieComponentsVMa();
  v32 = *(v87 + 44);
  v95 = a1;
  sub_22C4C7170(a1 + v32, v21, type metadata accessor for FullPlannerPreferences);
  v33 = *(v11 + 24);
  v34 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v92 = v21;
  sub_22C4C71D0(v21, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    sub_22C36DD28(v25, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v35 = swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v96 = v35;
    return result;
  }

  v38 = *(v99 + 32);
  v81 = v26;
  v38(v31, v25, v26);
  v39 = v95;
  sub_22C4C7170(v95 + v32, v19, type metadata accessor for FullPlannerPreferences);
  v40 = &v19[*(v11 + 36)];
  sub_22C901EDC();
  sub_22C4C71D0(v19, type metadata accessor for FullPlannerPreferences);
  v42 = v97;
  v41 = v98;
  v43 = v97 == 0x6E65476E656B6F74 && v98 == 0xEE00726F74617265;
  v44 = v11;
  v45 = v32;
  if (v43 || (sub_22C90B4FC() & 1) != 0)
  {
    v86 = v31;

    v46 = v99;
    v47 = v87;
    v48 = v91;
    sub_22C3E8FB4(v39 + *(v87 + 36), v91, &qword_27D9BB728, &qword_22C911230);
    v49 = *(v47 + 20);
    v50 = v88;
    v51 = *(v88 + 20);
    v52 = sub_22C90077C();
    (*(*(v52 - 8) + 16))(v48 + v51, v39 + v49, v52);
    v53 = v92;
    sub_22C4C7170(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v54 = *(v44 + 104);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4C71D0(v53, type metadata accessor for FullPlannerPreferences);
    *(v48 + *(v50 + 24)) = v97;
    v55 = v90;
    sub_22C4C7170(v48, v90, type metadata accessor for FullPlannerGMSClientConfiguration);
    v56 = v39 + v45;
    v57 = v89;
    sub_22C4C7170(v56, v89, type metadata accessor for FullPlannerPreferences);
    v58 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v59 = v93;
    v93[3] = v58;
    v59[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370);
    v60 = sub_22C36D548(v59);
    v61 = v94;
    sub_22C4D0D18(v55, v57, v60);
    v35 = v61;
    if (v61)
    {
      sub_22C4C71D0(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v46 + 8))(v86, v81);
      result = sub_22C4BF5D8(v59);
      goto LABEL_10;
    }

    sub_22C4C71D0(v48, type metadata accessor for FullPlannerGMSClientConfiguration);
    v62 = v81;
    v31 = v86;
  }

  else
  {
    v91 = v34;
    v63 = v42 == 0x65696C4370747468 && v41 == 0xEA0000000000746ELL;
    v46 = v99;
    if (v63)
    {
    }

    else
    {
      v64 = sub_22C90B4FC();

      if ((v64 & 1) == 0)
      {
        v65 = v82;
        sub_22C903F7C();
        v66 = sub_22C9063CC();
        v67 = sub_22C90AADC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v31;
          v69 = swift_slowAlloc();
          *v69 = 0;
          v70 = v69;
          v31 = v68;
          MEMORY[0x2318B9880](v70, -1, -1);
        }

        (*(v83 + 8))(v65, v84);
        sub_22C3DD0D8();
        v35 = swift_allocError();
        *v71 = 0;
        v71[1] = 0;
        swift_willThrow();
        result = (*(v46 + 8))(v31, v81);
        goto LABEL_10;
      }
    }

    v62 = v81;
    (*(v46 + 16))(v86, v31, v81);
    v72 = v92;
    sub_22C4C7170(v39 + v45, v92, type metadata accessor for FullPlannerPreferences);
    v73 = v72 + *(v44 + 28);
    sub_22C901EDC();
    sub_22C4C71D0(v72, type metadata accessor for FullPlannerPreferences);
    v74 = v97;
    v75 = v98;
    v76 = v39 + v45;
    v77 = v85;
    sub_22C4C7170(v76, v85, type metadata accessor for FullPlannerPreferences);
    v78 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v79 = v93;
    v93[3] = v78;
    v79[4] = &off_2818B22B8;
    v80 = sub_22C36D548(v79);
    sub_22C3F5190(v86, v74, v75, v77, v80);
  }

  return (*(v46 + 8))(v31, v62);
}

uint64_t sub_22C4C4B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v183 = a2;
  v3 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v4 = *(v3 - 8);
  v172 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v173 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v170 = (&v156 - v8);
  v185 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  v9 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v164 = (&v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v11 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v184 = (&v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v13 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v182 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v15 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v181 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v17 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v180 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  v19 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v178 = (&v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v22 = *(v21 - 8);
  v162 = (v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v169 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v177 = (&v156 - v26);
  v27 = type metadata accessor for FullPlannerPreferences();
  v28 = *(v27 - 8);
  v159 = v27 - 8;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v160 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v158 = &v156 - v32;
  v33 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v34 = *(*(v33 - 1) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = 0;
  memset(v217, 0, sizeof(v217));
  v41 = _s17CharlieComponentsVMa();
  *(v40 + 4) = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v42 = *(v41 + 44);
  v43 = v41;
  v161 = v41;
  v44 = *(v37 + 20);
  v45 = v42;
  v186 = type metadata accessor for FullPlannerPreferences;
  v187 = v42;
  v171 = v40;
  sub_22C4C7170(a1 + v42, &v40[v44], type metadata accessor for FullPlannerPreferences);
  *(v36 + 3) = v37;
  *(v36 + 4) = &off_283FB9A58;
  v46 = sub_22C36D548(v36);
  sub_22C4C7170(v40, v46, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  *(v36 + 8) = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  *(v36 + 9) = &off_283FB8EC8;
  v47 = swift_allocObject();
  *(v36 + 5) = v47;
  sub_22C4C3C38((v47 + 16));
  *(v36 + 14) = 0;
  *(v36 + 5) = 0u;
  *(v36 + 6) = 0u;
  v48 = v36;
  v49 = *(a1 + *(v43 + 24));
  v50 = *(v43 + 24);
  v174 = v50;
  v51 = v33[7];

  sub_22C90718C();

  v52 = *(v43 + 20);
  v53 = v33[8];
  v54 = sub_22C90077C();
  (*(*(v54 - 8) + 16))(v48 + v53, a1 + v52, v54);
  v55 = v48 + v33[9];
  v56 = v48;
  v168 = v48;
  sub_22C4C7170(a1 + v45, v55, type metadata accessor for FullPlannerPreferences);
  v57 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v58 = v183;
  v183[32] = v57;
  v58[33] = &off_283FB96A0;
  v59 = v57;
  v60 = sub_22C36D548(v58 + 29);
  v60[3] = v33;
  v60[4] = &off_283FB9A40;
  v61 = sub_22C36D548(v60);
  sub_22C4C7170(v56, v61, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v60[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v60[9] = &off_283FB8FE0;
  v62 = swift_allocObject();
  v60[5] = v62;
  sub_22C4BECC0(v217, v62 + 16);
  v60[13] = &type metadata for UTTypeRenderer_v1_0;
  v60[14] = &off_283FB8FD0;
  v63 = a1;
  sub_22C4C3C38(v60 + 15);
  v60[24] = 0;
  *(v60 + 10) = 0u;
  *(v60 + 11) = 0u;
  v64 = *(a1 + v50);
  v65 = v59;
  v66 = *(v59 + 36);

  sub_22C90718C();

  v213[3] = v65;
  v213[4] = &off_283FB9688;
  v67 = sub_22C36D548(v213);
  sub_22C4C7170(v60, v67, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v214 = 0u;
  v215 = 0u;
  v216 = 0;
  v212[3] = v65;
  v176 = v65;
  v212[4] = &off_283FB96A0;
  v68 = sub_22C36D548(v212);
  v175 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C7170(v60, v68, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v212[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v212[9] = &off_283FB8FC0;
  v212[13] = &type metadata for INPersonRenderer_v1_0;
  v212[14] = &off_283FB8FB0;
  v208[3] = v65;
  v208[4] = &off_283FB96A0;
  v69 = sub_22C36D548(v208);
  v157 = v60;
  sub_22C4C7170(v60, v69, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v210 = &type metadata for PrimitiveValueRenderer_v1_0;
  v211 = &off_283FB8EB8;
  v209 = swift_allocObject();
  sub_22C4BEF30(v212, v209 + 16);
  v70 = v187;
  v71 = a1 + v187;
  v72 = v158;
  v73 = v186;
  sub_22C4C7170(v71, v158, v186);
  v74 = v159;
  v75 = *(v159 + 104);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4C71D0(v72, type metadata accessor for FullPlannerPreferences);
  v76 = v201[0];
  v77 = v63 + v70;
  v78 = v160;
  sub_22C4C7170(v77, v160, v73);
  v79 = v78 + *(v74 + 104);
  sub_22C901EDC();
  sub_22C4C71D0(v78, type metadata accessor for FullPlannerPreferences);
  v80 = v201[0];
  v206 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v207 = &off_283FB9738;
  v205 = swift_allocObject();
  sub_22C4C32E8(v208, v205 + 16);
  v201[1] = 0;
  v201[0] = 0;
  v201[2] = v76;
  v202 = 0;
  v203 = v80;
  v204 = 0;
  v81 = v177;
  v177[3] = v176;
  v81[4] = &off_283FB9688;
  v82 = v81;
  v83 = sub_22C36D548(v81);
  sub_22C4C7170(v60, v83, v175);
  v82[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v82[9] = &off_283FB9728;
  v84 = swift_allocObject();
  v82[5] = v84;
  sub_22C4C3344(v201, v84 + 16);
  v85 = v174;
  v86 = *(v63 + v174);
  v87 = *(v162 + 8);

  sub_22C90718C();

  v88 = v178;
  sub_22C4C3E44(v178);
  v88[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v88[9] = &off_283FB9668;
  v89 = swift_allocObject();
  v88[5] = v89;
  sub_22C4C33A0(v213, v89 + 16);
  v90 = v179;
  v91 = (v88 + *(v179 + 24));
  sub_22C4C3E44(v91);
  v91[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v91[9] = &off_283FB9668;
  v92 = swift_allocObject();
  v91[5] = v92;
  sub_22C4C33A0(v213, v92 + 16);
  v93 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v94 = v187;
  v95 = v91 + *(v93 + 24);
  v96 = v186;
  sub_22C4C7170(v63 + v187, v95, v186);
  v97 = v88 + *(v90 + 28);
  *(v97 + 4) = 0;
  *v97 = 0u;
  *(v97 + 1) = 0u;
  sub_22C4C7170(v63 + v94, v88 + *(v90 + 32), v96);
  v98 = *(v63 + v85);

  v99 = v180;
  sub_22C90718C();

  v100 = v163;
  v101 = (v99 + *(v163 + 20));
  v101[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v101[4] = &off_283FB9668;
  v102 = swift_allocObject();
  *v101 = v102;
  sub_22C4C33A0(v213, v102 + 16);
  v103 = (v99 + *(v100 + 24));
  v103[3] = v90;
  v103[4] = &off_283FB9A18;
  v104 = sub_22C36D548(v103);
  v162 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4C7170(v88, v104, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v197[3] = v100;
  v197[4] = &off_283FB8F90;
  v105 = sub_22C36D548(v197);
  sub_22C4C7170(v99, v105, type metadata accessor for TypeInstanceRenderer_v1_0);
  v198 = 0u;
  v199 = 0u;
  v200 = 0;
  v106 = v181;
  sub_22C3E8FB4(v63 + *(v161 + 28), v181, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4C3C38(v196);
  v107 = v182;
  *(v182 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v107 + 32) = &off_283FB8ED8;
  v108 = swift_allocObject();
  *v107 = v108;
  sub_22C4BEDC0(v197, v108 + 16);
  *(v107 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v107 + 72) = &off_283FB9968;
  v109 = swift_allocObject();
  *(v107 + 40) = v109;
  sub_22C4C33FC(v196, v109 + 16);
  *(v107 + 80) = 0u;
  *(v107 + 96) = 0u;
  *(v107 + 112) = 0;
  v110 = v165;
  *(v107 + 144) = v165;
  *(v107 + 152) = &off_283FB8F70;
  v111 = v107;
  v112 = sub_22C36D548((v107 + 120));
  sub_22C4C7170(v106, v112, type metadata accessor for ToolDescriptionProvider_v1_0);
  v113 = v166;
  v114 = v186;
  v115 = v187;
  sub_22C4C7170(v63 + v187, v107 + *(v166 + 32), v186);
  v116 = v184;
  *v184 = 0u;
  v116[1] = 0u;
  *(v116 + 4) = 0;
  *(v116 + 8) = v110;
  *(v116 + 9) = &off_283FB8F70;
  v117 = v116;
  v118 = sub_22C36D548(v116 + 5);
  sub_22C4C7170(v106, v118, type metadata accessor for ToolDescriptionProvider_v1_0);
  v119 = v167;
  v120 = v63;
  v121 = v63 + v115;
  v122 = v117;
  sub_22C4C7170(v121, v117 + *(v167 + 24), v114);
  v194[3] = v113;
  v194[4] = &off_283FB8F40;
  v123 = sub_22C36D548(v194);
  v124 = v111;
  sub_22C4C7170(v111, v123, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v125 = v120;
  sub_22C4C3C38(v195);
  v193[3] = &type metadata for ToolNameRenderer_v2_0;
  v193[4] = &off_283FB9968;
  v193[0] = swift_allocObject();
  sub_22C4C33FC(v196, v193[0] + 16);
  v126 = v164;
  v164[3] = v113;
  v126[4] = &off_283FB8F40;
  v127 = sub_22C36D548(v126);
  sub_22C4C7170(v124, v127, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v126[8] = v119;
  v126[9] = &off_283FB8E98;
  v128 = sub_22C36D548(v126 + 5);
  sub_22C4C7170(v122, v128, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v126[13] = &type metadata for EntitySetterRenderer_v1_0;
  v126[14] = &off_283FB8F18;
  v129 = swift_allocObject();
  v126[10] = v129;
  sub_22C4BEE78(v194, v129 + 16);
  v126[18] = &type metadata for UIControlRenderer_v2_0;
  v126[19] = &off_283FB9700;
  v130 = swift_allocObject();
  v126[15] = v130;
  sub_22C4BEED4(v193, v130 + 16);
  v126[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v126[24] = &off_283FB96C0;
  v131 = swift_allocObject();
  v126[20] = v131;
  v131[5] = &type metadata for ToolNameRenderer_v2_0;
  v131[6] = &off_283FB9968;
  v132 = swift_allocObject();
  v131[2] = v132;
  sub_22C4C33FC(v196, v132 + 16);
  v133 = v174;
  v134 = v125;
  v135 = *(v125 + v174);
  v136 = *(v185 + 36);

  sub_22C90718C();

  v137 = v170;
  v138 = v176;
  v170[3] = v176;
  v137[4] = &off_283FB9688;
  v139 = sub_22C36D548(v137);
  v140 = v157;
  v141 = v175;
  sub_22C4C7170(v157, v139, v175);
  v137[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v137[9] = &off_283FB9718;
  v142 = *(v134 + v133);
  v143 = *(v172 + 32);

  sub_22C90718C();

  v189[3] = v138;
  v189[4] = &off_283FB96A0;
  v144 = sub_22C36D548(v189);
  sub_22C4C7170(v140, v144, v141);
  v191 = &type metadata for PrimitiveValueRenderer_v1_0;
  v192 = &off_283FB8EB8;
  v190 = swift_allocObject();
  sub_22C4BEF30(v212, v190 + 16);
  sub_22C4BEF8C(v189, v188);
  v145 = v177;
  v146 = v169;
  sub_22C4C7170(v177, v169, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v147 = v173;
  sub_22C4C7170(v137, v173, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v148 = sub_22C4D6614(v188, v146, v147);
  v149 = v183;
  sub_22C4C3C38(v183);
  v149[8] = v185;
  v149[9] = &off_283FB9640;
  v150 = sub_22C36D548(v149 + 5);
  sub_22C4C7170(v126, v150, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v149[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v149[14] = &off_283FB8ED8;
  v151 = swift_allocObject();
  v149[10] = v151;
  sub_22C4BEDC0(v197, v151 + 16);
  v149[18] = &type metadata for ToolNameRenderer_v2_0;
  v149[19] = &off_283FB9968;
  v152 = swift_allocObject();
  v149[15] = v152;
  sub_22C4C33FC(v196, v152 + 16);
  v149[27] = v179;
  v149[28] = &off_283FB9A18;
  v153 = sub_22C36D548(v149 + 24);
  v154 = v178;
  sub_22C4C7170(v178, v153, v162);

  sub_22C4BF0A0(v189);
  sub_22C4C71D0(v137, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4C71D0(v126, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v193);
  sub_22C4BF1F0(v194);
  sub_22C4C71D0(v184, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4C71D0(v182, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v196);
  sub_22C4C71D0(v181, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v197);
  sub_22C4C71D0(v180, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4C71D0(v154, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4C71D0(v145, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v201);
  sub_22C4C3534(v208);
  sub_22C4BF0F4(v212);
  sub_22C4C3588(v213);
  sub_22C4C71D0(v168, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4C71D0(v171, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  result = sub_22C4BF394(v217);
  v149[20] = v148;
  v149[21] = &off_283FB87B0;
  v149[22] = v148;
  v149[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4C5D1C()
{
  sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa();
  v2 = *(v1 + 72);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C5DB4(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4C5DB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = _s17CharlieComponentsVMa();
  v10 = *(v9 + 24);
  v11 = *(a1 + v10);
  v12 = type metadata accessor for SpanEventPromptGenerator_v3_0();
  *(a2 + 24) = v12;
  *(a2 + 32) = &off_283FB9B38;
  v13 = sub_22C36D548(a2);

  sub_22C90718C();

  v14 = v13 + *(v12 + 20);
  sub_22C4C40C8();
  sub_22C4C7170(a1 + *(v9 + 44), v8, type metadata accessor for FullPlannerPreferences);
  v15 = *(v5 + 64);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4C71D0(v8, type metadata accessor for FullPlannerPreferences);
  *(v13 + *(v12 + 24)) = v36[0];
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v16 = swift_allocObject();
  *(a2 + 40) = v16;
  sub_22C4C40C8();
  *(v16 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v17 = swift_allocObject();
  *(a2 + 80) = v17;
  *(v17 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v17 + 48) = &off_283FB8638;
  v18 = *(a1 + v10);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v19 = swift_allocObject();
  *(a2 + 120) = v19;
  v19[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v19[6] = &off_283FB84F8;
  sub_22C36D548(v19 + 2);

  sub_22C90718C();

  v20 = *(a1 + v10);
  v21 = type metadata accessor for ExpressionParser_v1_0();
  v19[10] = v21;
  v19[11] = &off_283FB8460;
  v22 = sub_22C36D548(v19 + 7);
  v23 = v21[5];

  sub_22C90718C();

  sub_22C4C40C8();
  sub_22C378A4C(&v37, v22 + v21[6]);
  sub_22C3DF2E8(v36);
  sub_22C4C3C38((v22 + v21[7]));
  v24 = v22 + v21[8];
  *(v24 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v24 + 4) = &off_283FB8298;
  v25 = v22 + v21[9];
  *(v25 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v25 + 4) = &off_283FB8588;
  sub_22C4C3F5C((v22 + v21[10]));
  sub_22C4C3E44((v22 + v21[11]));
  *v22 = 1;
  v19[15] = &type metadata for RenderingArbiter_v1_0;
  v19[16] = &off_283FB8588;
  v26 = *(a1 + v10);
  v27 = type metadata accessor for StatementResultParser_v1_0();
  *(a2 + 184) = v27;
  *(a2 + 192) = &off_283FB86D8;
  v28 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v29 = v28 + *(v27 + 20);
  sub_22C4C40C8();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v30 = *(a1 + v10);
  v31 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v31;
  *(a2 + 312) = &off_283FB4130;
  v32 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v33 = v32 + *(v31 + 20);
  sub_22C4C40C8();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4C61B8()
{
  sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa();
  v2 = *(v1 + 76);
  sub_22C3870F0(v1, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4C6258(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C6258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s17CharlieComponentsVMa();
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = type metadata accessor for ConversationParser_v1_0();
  a2[3] = v7;
  a2[4] = &off_283FB83D0;
  v8 = sub_22C36D548(a2);

  sub_22C90718C();

  v9 = v8 + v7[5];
  sub_22C4C5D1C();
  v10 = v8 + v7[6];
  sub_22C4C40C8();
  v11 = (v8 + v7[7]);
  v12 = type metadata accessor for ToolFetcher(0);
  v11[3] = v12;
  v11[4] = &off_283FB6BE0;
  v13 = sub_22C36D548(v11);
  sub_22C4C3D5C(v13);
  v14 = *(a1 + v5);
  v15 = *(v12 + 20);

  sub_22C90718C();

  sub_22C4C3F5C((v8 + v7[8]));
  v16 = v8 + v7[9];
  *(v16 + 3) = &type metadata for StubGrammarGenerator;
  *(v16 + 4) = &off_283FB5308;
  result = sub_22C4C7170(a1 + *(v4 + 44), v8 + v7[12], type metadata accessor for FullPlannerPreferences);
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = 1;
  return result;
}

uint64_t sub_22C4C63C4()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17CharlieComponentsVMa() + 80);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v5 = *v2;
    v6 = v3;
    v7 = *(v2 + 32);
  }

  if (*(&v6 + 1))
  {
    return sub_22C36C730(&v5, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  return sub_22C378A4C(v0, v2);
}

void sub_22C4C6468()
{
  sub_22C3727F4();
  v2 = v1 + *(_s17CharlieComponentsVMa() + 84);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4C36FC(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4C6550()
{
  sub_22C3727F4();
  v2 = *(_s17CharlieComponentsVMa() + 88);
  sub_22C3E8FB4(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

void sub_22C4C665C()
{
  sub_22C3727F4();
  v0 = _s17CharlieComponentsVMa();
  v1 = *(v0 + 92);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C670C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_22C4C40C8();
  v10 = _s17CharlieComponentsVMa();
  v11 = a1 + *(v10 + 32);
  v12 = *v11;
  if (*(v11 + 32))
  {
    v35[0] = *v11;
    v13 = v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v36);
    *a2 = v12;
  }

  else
  {
    v15 = v10;
    v17 = *(v11 + 8);
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v32 = v16;
    sub_22C42B564(v12);
    sub_22C4C3C38(v35);
    v34 = *(a1 + v15[6]);
    v18 = v15[11];
    v19 = (a1 + v15[10]);
    v21 = *v19;
    v20 = v19[1];
    v37 = v21;
    v33 = v20;
    v22 = type metadata accessor for PromptMapperResolver();
    a3[3] = v22;
    a3[4] = &off_283FB3CE0;
    v23 = sub_22C36D548(a3);
    sub_22C4C7170(a1 + v18, v23 + *(v22 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v36, v23);
    v23[34] = v12;
    v23[35] = v17;
    v24 = v31;
    v23[36] = v32;
    v23[37] = v24;
    sub_22C378A4C(v35, (v23 + 38));
    v25 = sub_22C90A75C();
    sub_22C36C640(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v34;

    sub_22C580C40();
    v29 = v28;
    sub_22C36FF94(v35);
    result = sub_22C3DF2E8(v36);
    v30 = v37;
    v23[43] = v29;
    v23[44] = v30;
    v23[45] = v27;
  }

  return result;
}

void sub_22C4C696C()
{
  sub_22C3727F4();
  v0 = _s17CharlieComponentsVMa();
  v1 = *(v0 + 96);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C6A1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4C6550();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4C665C();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s17CharlieComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4C6B70()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = _s17CharlieComponentsVMa();
  v7 = *(v6 + 100);
  result = sub_22C3E8FB4(v1 + v7, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    v10 = *(v6 + 44);
    sub_22C369E0C();
    sub_22C4C7170(v1 + v11, v5, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v5, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v7, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v7, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v9 = *v15;
    *v0 = v14;
    *(v0 + 16) = v9;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

void sub_22C4C6CD8()
{
  sub_22C3727F4();
  v0 = _s17CharlieComponentsVMa();
  v1 = *(v0 + 104);
  sub_22C3870F0(v0, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4C6D88@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4C6468();
  if (v31)
  {
    v4 = v28;
    v27[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v28, v32);
  sub_22C4C4160();
  if (v31)
  {
    v4 = v28;
    v25[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v32;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v28, v27);
  sub_22C4C696C();
  if (v31)
  {
    v4 = v28;
    *&v24[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    goto LABEL_7;
  }

  sub_22C36C730(&v28, v25);
  sub_22C4C6B70();
  if (v31)
  {
    v4 = v28;
    v21[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    sub_22C36FF94(v32);
    v6 = v25;
    goto LABEL_8;
  }

  sub_22C36C730(&v28, v24);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v26;
  v12 = sub_22C36D1E4(v25, v26);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v29 = &type metadata for PostInferenceHandler;
  v30 = &off_283FB3BA0;
  *&v28 = swift_allocObject();
  memcpy((v28 + 16), v15, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v17 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v10 + v17) = sub_22C36E65C(1);
  sub_22C378A4C(v32, v10 + 16);
  sub_22C378A4C(v27, v10 + 56);
  sub_22C378A4C(v10 + 56, v21);
  v18 = v22;
  v19 = v23;
  sub_22C374168(v21, v22);
  (*(v19 + 16))(v18, v19);
  sub_22C36FF94(v27);
  sub_22C36FF94(v32);
  sub_22C36FF94(v21);
  sub_22C36C730(&v28, v10 + 96);
  sub_22C36C730(v24, v10 + qword_27D9BDFC8);
  result = sub_22C36FF94(v25);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v10;
  return result;
}

uint64_t sub_22C4C7170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4C71D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4C7270()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_22C4C7290()
{
  sub_22C4C7270();

  return swift_deallocClassInstance();
}

uint64_t *sub_22C4C7324()
{
  v1 = *v0;
  sub_22C4C75A8((v0 + 2));
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  v4 = sub_22C90AC6C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_22C4C73D4()
{
  sub_22C4C7324();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C4C742C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
}

uint64_t sub_22C4C745C()
{
  sub_22C4C7270();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_22C4C7488()
{
  sub_22C4C745C();

  return swift_deallocClassInstance();
}

uint64_t sub_22C4C74D4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22C90AC6C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4C75A8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD5D8, &qword_22C918510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4C7610@<X0>(uint64_t a1@<X8>)
{
  sub_22C4CA888();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760);
    v2 = swift_allocObject();
    sub_22C4CACFC();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4C7730@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4C77A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v63 - v6);
  v8 = sub_22C90077C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x61746C6544;
  a2[1] = 0xE500000000000000;
  v12 = _s15DeltaComponentsVMa();
  v13.n128_f64[0] = sub_22C388F74(v12[13]);
  sub_22C369DE4(*(v14 + 56), v13);
  sub_22C369DE4(*(v15 + 60), v16);
  sub_22C369DE4(*(v17 + 64), v18);
  sub_22C369DE4(*(v19 + 68), v20);
  sub_22C369DE4(*(v21 + 72), v22);
  *(v23 + 40) = -1;
  bzero(a2 + *(v24 + 76), 0x110uLL);
  bzero(a2 + v12[20], 0x190uLL);
  v25.n128_f64[0] = sub_22C388F74(v12[21]);
  *(v26 + 40) = -1;
  sub_22C369DE4(v12[22], v25);
  sub_22C369DE4(v12[23], v27);
  *(v28 + 40) = -1;
  sub_22C369DE4(v12[24], v29);
  *(v30 + 40) = -1;
  sub_22C369DE4(v12[25], v31);
  *(v32 + 40) = -1;
  sub_22C369DE4(v12[26], v33);
  *(v34 + 40) = -1;
  sub_22C369DE4(v12[27], v35);
  *(v36 + 40) = -1;
  sub_22C369DE4(v12[28], v37);
  *(v38 + 40) = -1;
  v39 = *(v9 + 16);
  v40 = a2 + v12[5];
  v65 = v8;
  v39(v40, a1, v8);
  v41 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *(a2 + v12[6]) = *(a1 + v41[5]);
  sub_22C3E8FB4(a1 + v41[6], a2 + v12[7], &qword_27D9BB730, &unk_22C90FE30);
  v42 = a1 + v41[10];
  v43 = *(type metadata accessor for FullPlannerPreferences() + 44);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v66 = v42;
  sub_22C901EDC();
  if (v68 == 1)
  {
    v67 = 0;
    v44 = v64;
    v39(v64, a1, v65);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v67, v44, &v68);
    v60 = v68;
    v61 = v69;
    v62 = v70;
  }

  else
  {
    v60 = 0;
    v62 = 0;
    v61 = 0uLL;
  }

  v45 = a2 + v12[8];
  *v45 = v60;
  *(v45 + 8) = v61;
  *(v45 + 3) = v62;
  v45[32] = 0;
  sub_22C3E8FB4(a1 + v41[7], a2 + v12[9], &qword_27D9BB728, &qword_22C911230);
  v46 = (a1 + v41[8]);
  v47 = *v46;
  v48 = v46[1];
  v49 = (a2 + v12[10]);
  *v49 = v47;
  v49[1] = v48;
  sub_22C3E8FB4(a1 + v41[9], v7, &qword_27D9BB720, &unk_22C90FE20);
  v50 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v7, 1, v50) == 1)
  {

    sub_22C36DD28(v7, &qword_27D9BB720, &unk_22C90FE20);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0x3000000000000007;
  }

  else
  {
    v51 = *v7;
    v52 = v7[1];
    v54 = v7[2];
    v53 = v7[3];

    sub_22C4C7C38(v51, v52, v54);
    sub_22C4CBAC0(v7, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
  }

  v55 = (a2 + v12[12]);
  *v55 = v51;
  v55[1] = v52;
  v55[2] = v54;
  v55[3] = v53;
  v56 = v12[11];
  sub_22C369E0C();
  sub_22C4C7170(v66, a2 + v57, v58);
  return sub_22C4CBAC0(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15DeltaComponentsVMa()
{
  result = qword_27D9BD5E0;
  if (!qword_27D9BD5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4C7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000007) != 0)
  {
    return sub_22C472434(a1, a2, a3);
  }

  return a1;
}

void sub_22C4C7C78()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C9071BC();
    if (v1 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v2 <= 0x3F)
      {
        sub_22C4BFF78();
        if (v3 <= 0x3F)
        {
          sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v4 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20);
            if (v5 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences();
              if (v6 <= 0x3F)
              {
                sub_22C430E9C(319, &qword_27D9BD5F0);
                if (v7 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                  if (v8 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                    if (v9 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD5F8, &qword_27D9BD600, &qword_22C918528);
                      if (v10 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                        if (v11 <= 0x3F)
                        {
                          sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                          if (v12 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_28142F948, &qword_27D9BD608, qword_22C918610);
                            if (v13 <= 0x3F)
                            {
                              sub_22C430E9C(319, &qword_281434970);
                              if (v14 <= 0x3F)
                              {
                                sub_22C430E9C(319, &qword_281434B98);
                                if (v15 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, qword_2814335D8, &qword_27D9BD610, &unk_22C918650);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F940, &qword_27D9BD618, &qword_22C918530);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                                if (v23 <= 0x3F)
                                                {
                                                  swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

unint64_t sub_22C4C80F4()
{
  result = qword_27D9BD620;
  if (!qword_27D9BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD620);
  }

  return result;
}

uint64_t sub_22C4C8148()
{
  sub_22C3727F4();
  v2 = _s15DeltaComponentsVMa();
  v3 = *(v2 + 52);
  v4 = sub_22C3E8FB4(v1 + v3, &v20, &qword_27D9BD3D0, &unk_22C918320);
  if (v21)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20);
  }

  sub_22C36D798(&v20);
  v13 = *(v2 + 44);
  v14 = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[3] = v14;
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  v16 = *(v14 + 20);
  sub_22C369E0C();
  sub_22C4C7170(v1 + v13, v15 + v17, v18);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4C8240@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15DeltaComponentsVMa() + 56);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  *a1 = swift_allocObject();
  sub_22C4C8148();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C8328()
{
  sub_22C3727F4();
  v2 = _s15DeltaComponentsVMa();
  v3 = sub_22C3E8FB4(v1 + *(v2 + 60), &v15, &qword_27D9BD628, &unk_22C91A390);
  if (v16)
  {
    return sub_22C36D7B0(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15);
  }

  sub_22C36DD28(&v15, &qword_27D9BD628, &unk_22C91A390);
  *(v0 + 24) = &unk_283FB9C10;
  *(v0 + 32) = &off_283FB9DC8;
  sub_22C3717CC();
  v12 = sub_22C37280C();
  return sub_22C378A4C(v12, v13);
}

uint64_t sub_22C4C83D4()
{
  sub_22C3727F4();
  v2 = _s15DeltaComponentsVMa();
  v3 = *(v2 + 64);
  v4 = sub_22C3E8FB4(v1 + v3, &v21, &qword_27D9BD3E0, &unk_22C918720);
  if (v22)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  sub_22C36D798(&v21);
  v13 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[3] = v13;
  v0[4] = &off_283FB9A30;
  v14 = sub_22C36D548(v0);
  sub_22C4C8328();
  v15 = *(v2 + 44);
  v16 = *(v13 + 20);
  sub_22C369E0C();
  sub_22C4C7170(v1 + v17, v14 + v18, v19);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4C84BC()
{
  v2 = v1;
  sub_22C3727F4();
  v3 = _s15DeltaComponentsVMa();
  v4 = *(v3 + 68);
  v5 = sub_22C3E8FB4(v2 + v4, &v26, &qword_27D9BD3F8, &unk_22C918340);
  if (v27)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v25, v26);
  }

  sub_22C36D798(&v26);
  v14 = *(v3 + 24);
  v15 = *(v2 + v14);
  v16 = type metadata accessor for ToolRenderer_v2_0();
  v0[3] = v16;
  v0[4] = &off_283FB9988;
  v17 = sub_22C36D548(v0);
  sub_22C90718C();
  v18 = v17 + v16[5];
  sub_22C4C8614();
  v19 = *(v2 + v14);
  v20 = (v17 + v16[6]);
  v21 = type metadata accessor for ToolRenderer_v1_0();
  v20[3] = v21;
  v20[4] = &off_283FB9200;
  v22 = sub_22C36D548(v20);
  sub_22C90718C();
  v23 = v22 + *(v21 + 20);
  sub_22C4C8614();
  v24 = v17 + v16[7];
  *(v24 + 3) = &unk_283FB9BD0;
  *(v24 + 4) = &off_283FB9DA0;
  sub_22C36D798(v2 + v4);
  return sub_22C378A4C(v0, v2 + v4);
}

void *sub_22C4C8614()
{
  sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa();
  v2 = *(v1 + 76);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C91D0(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C86AC()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15DeltaComponentsVMa() + 72);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4C7730(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4C87A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a3;
  v97 = a2;
  v4 = sub_22C9063DC();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v81 - v9;
  v10 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v14;
  v87 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  v15 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v81 - v22;
  MEMORY[0x28223BE20](v21);
  v98 = &v81 - v23;
  v24 = type metadata accessor for FullPlannerPreferences();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v88 = &v81 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v81 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v35 = _s15DeltaComponentsVMa();
  v36 = v35[11];
  sub_22C4C7170(a1 + v36, v34, type metadata accessor for FullPlannerPreferences);
  v94 = v24;
  v37 = *(v24 + 36);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4CBAC0(v34, type metadata accessor for FullPlannerPreferences);
  v38 = v99[0];
  if (*&v99[0] != 0x6E65476E656B6F74 || *(&v99[0] + 1) != 0xEE00726F74617265)
  {
    v82 = v4;
    v40 = v97;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v38 == 0x65696C4370747468 && *(&v38 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v73 = sub_22C90B4FC();

        if ((v73 & 1) == 0)
        {
          sub_22C903F7C();
          v74 = sub_22C9063CC();
          v75 = sub_22C90AADC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = v40;
            v77 = swift_slowAlloc();
            *v77 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v74, v75, v78, v77, 2u);
            v79 = v77;
            v40 = v76;
            MEMORY[0x2318B9880](v79, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v8 = v83;
      sub_22C903F7C();
      v74 = sub_22C9063CC();
      v75 = sub_22C90AADC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = v40;
        v77 = swift_slowAlloc();
        *v77 = 0;
        v78 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v84 + 8))(v8, v82);
      sub_22C3DD0D8();
      v61 = swift_allocError();
      *v80 = 0;
      v80[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v41 = a1 + v35[9];
  v42 = a1;
  v43 = v98;
  sub_22C3E8FB4(v41, v98, &qword_27D9BB728, &qword_22C911230);
  v44 = v35[5];
  v93 = v17;
  v45 = *(v17 + 5);
  v46 = sub_22C90077C();
  (*(*(v46 - 8) + 16))(v43 + v45, v42 + v44, v46);
  sub_22C4C7170(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v47 = v94;
  v48 = *(v94 + 104);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4CBAC0(v32, type metadata accessor for FullPlannerPreferences);
  *(v43 + *(v93 + 6)) = v99[0];
  v49 = v42;
  sub_22C4C7170(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v50 = &v32[*(v47 + 48)];
  sub_22C901EDC();
  sub_22C4CBAC0(v32, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v99[0]) == 1)
  {
    v51 = v91;
    sub_22C4C7170(v98, v91, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4C7170(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v100);
    sub_22C4CBAC0(v32, type metadata accessor for FullPlannerPreferences);
    LODWORD(v94) = v100;
    v52 = v42 + v36;
    v53 = v88;
    sub_22C4C7170(v52, v88, type metadata accessor for FullPlannerPreferences);
    v54 = v96;
    v55 = v87;
    v96[3] = v87;
    v54[4] = &off_2818B22E0;
    v93 = sub_22C36D548(v54);
    v56 = *(v55 + 24);
    v57 = v90;
    sub_22C901ADC();
    v58 = sub_22C901AEC();
    sub_22C36C640(v57, 0, 1, v58);
    sub_22C3E8FB4(v57, v89, &qword_27D9BD638, &unk_22C92C240);
    v59 = v92;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v57, &qword_27D9BD638, &unk_22C92C240);
    v60 = v95;
    sub_22C3EECF8(v51, 2, v53, v99);
    v61 = v60;
    v62 = v98;
    if (!v60)
    {
      sub_22C4CBAC0(v53, type metadata accessor for FullPlannerPreferences);
      sub_22C4CBAC0(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v99, v59);
      *(v59 + 40) = v94;
      sub_22C4CBB18(v59, v93);
      return sub_22C4CBAC0(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4CBAC0(v53, type metadata accessor for FullPlannerPreferences);
    sub_22C4CBAC0(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4CBAC0(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    v63 = sub_22C901B3C();
    (*(*(v63 - 8) + 8))(v59 + v56, v63);
    result = sub_22C4BF5D8(v54);
    v40 = v97;
  }

  else
  {
    v65 = v98;
    v66 = v86;
    sub_22C4C7170(v98, v86, type metadata accessor for FullPlannerGMSClientConfiguration);
    v67 = v85;
    sub_22C4C7170(v49 + v36, v85, type metadata accessor for FullPlannerPreferences);
    v68 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v69 = v96;
    v96[3] = v68;
    v69[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560);
    v70 = sub_22C36D548(v69);
    v71 = v95;
    sub_22C4D0D40(v66, v67, v70);
    v61 = v71;
    result = sub_22C4CBAC0(v65, type metadata accessor for FullPlannerGMSClientConfiguration);
    v40 = v97;
    if (!v71)
    {
      return result;
    }

    result = sub_22C4BF5D8(v69);
  }

LABEL_24:
  *v40 = v61;
  return result;
}

uint64_t sub_22C4C91D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v176 = a2;
  v3 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v4 = *(v3 - 8);
  v165 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v166 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v163 = (&v148 - v8);
  v178 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  v9 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v157 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v11 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v177 = (&v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v13 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v175 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v15 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v174 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v17 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v173 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  v19 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v171 = (&v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v22 = *(v21 - 8);
  v155 = (v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v162 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v170 = (&v148 - v26);
  v27 = type metadata accessor for FullPlannerPreferences();
  v28 = *(v27 - 8);
  v152 = v27 - 8;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v153 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v151 = &v148 - v32;
  v33 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v34 = *(*(v33 - 1) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = &unk_283FB9D88;
  v204 = &off_283FB9E30;
  v202[0] = 1;
  *(v40 + 3) = &unk_283FB9BF0;
  *(v40 + 4) = &off_283FB9DB0;
  v41 = _s15DeltaComponentsVMa();
  v42 = *(v41 + 44);
  v43 = v41;
  v44 = &v40[*(v37 + 20)];
  v164 = v40;
  v167 = type metadata accessor for FullPlannerPreferences;
  sub_22C4C7170(a1 + v42, v44, type metadata accessor for FullPlannerPreferences);
  v36[3] = v37;
  v36[4] = &off_283FB9A58;
  v45 = sub_22C36D548(v36);
  sub_22C4C7170(v40, v45, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v36[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v36[9] = &off_283FB8EC8;
  v36[5] = swift_allocObject();
  sub_22C4C8148();
  v36[13] = &unk_283FB9BF0;
  v36[14] = &off_283FB9DB0;
  v154 = v43;
  v179 = *(v43 + 24);
  v46 = *(a1 + v179);
  v47 = v33[7];

  sub_22C90718C();

  v48 = *(v43 + 20);
  v49 = v33[8];
  v50 = sub_22C90077C();
  (*(*(v50 - 8) + 16))(v36 + v49, a1 + v48, v50);
  v51 = v42;
  v52 = v36 + v33[9];
  v161 = v36;
  sub_22C4C7170(a1 + v42, v52, type metadata accessor for FullPlannerPreferences);
  v53 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v54 = v176;
  v176[32] = v53;
  v54[33] = &off_283FB96A0;
  v55 = v53;
  v56 = sub_22C36D548(v54 + 29);
  v56[3] = v33;
  v56[4] = &off_283FB9A40;
  v57 = sub_22C36D548(v56);
  sub_22C4C7170(v36, v57, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v56[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v56[9] = &off_283FB8FE0;
  v58 = swift_allocObject();
  v56[5] = v58;
  sub_22C4BECC0(v202, v58 + 16);
  v56[13] = &type metadata for UTTypeRenderer_v1_0;
  v56[14] = &off_283FB8FD0;
  sub_22C4C8148();
  v56[23] = &unk_283FB9D10;
  v56[24] = &off_283FB9E20;
  v59 = *(a1 + v179);
  v60 = *(v55 + 36);

  sub_22C90718C();

  v201[3] = v55;
  v201[4] = &off_283FB9688;
  v61 = sub_22C36D548(v201);
  sub_22C4C7170(v56, v61, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v201[8] = &unk_283FB9CF0;
  v201[9] = &off_283FB9E10;
  v200[3] = v55;
  v169 = v55;
  v200[4] = &off_283FB96A0;
  v62 = sub_22C36D548(v200);
  v168 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C7170(v56, v62, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v200[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v200[9] = &off_283FB8FC0;
  v200[13] = &type metadata for INPersonRenderer_v1_0;
  v200[14] = &off_283FB8FB0;
  v196[3] = v55;
  v196[4] = &off_283FB96A0;
  v63 = sub_22C36D548(v196);
  v150 = v56;
  sub_22C4C7170(v56, v63, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v198 = &type metadata for PrimitiveValueRenderer_v1_0;
  v199 = &off_283FB8EB8;
  v197 = swift_allocObject();
  sub_22C4BEF30(v200, v197 + 16);
  v64 = v51;
  v149 = v51;
  v65 = a1 + v51;
  v66 = v151;
  v67 = v167;
  sub_22C4C7170(v65, v151, v167);
  v68 = v152;
  v69 = *(v152 + 104);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4CBAC0(v66, type metadata accessor for FullPlannerPreferences);
  v70 = v189[0];
  v71 = a1 + v64;
  v72 = v153;
  sub_22C4C7170(v71, v153, v67);
  v73 = v72 + *(v68 + 104);
  sub_22C901EDC();
  sub_22C4CBAC0(v72, type metadata accessor for FullPlannerPreferences);
  v74 = v189[0];
  v194 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v195 = &off_283FB9738;
  v193 = swift_allocObject();
  sub_22C4C32E8(v196, v193 + 16);
  v189[1] = 0;
  v189[0] = 0;
  v189[2] = v70;
  v190 = 0;
  v191 = v74;
  v192 = 0;
  v75 = v170;
  v170[3] = v169;
  v75[4] = &off_283FB9688;
  v76 = v75;
  v77 = sub_22C36D548(v75);
  sub_22C4C7170(v56, v77, v168);
  v76[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v76[9] = &off_283FB9728;
  v78 = swift_allocObject();
  v76[5] = v78;
  sub_22C4C3344(v189, v78 + 16);
  v79 = v179;
  v80 = *(a1 + v179);
  v81 = *(v155 + 8);

  sub_22C90718C();

  v82 = v171;
  sub_22C4C83D4();
  v82[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v82[9] = &off_283FB9668;
  v83 = swift_allocObject();
  v82[5] = v83;
  sub_22C4C33A0(v201, v83 + 16);
  v84 = v172;
  v85 = (v82 + *(v172 + 24));
  sub_22C4C83D4();
  v85[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v85[9] = &off_283FB9668;
  v86 = swift_allocObject();
  v85[5] = v86;
  sub_22C4C33A0(v201, v86 + 16);
  v87 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v88 = v149;
  v89 = v167;
  sub_22C4C7170(a1 + v149, v85 + *(v87 + 24), v167);
  v90 = v82 + *(v84 + 28);
  sub_22C4C8328();
  sub_22C4C7170(a1 + v88, v82 + *(v84 + 32), v89);
  v91 = *(a1 + v79);

  v92 = v173;
  sub_22C90718C();

  v93 = v156;
  v94 = (v92 + *(v156 + 20));
  v94[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v94[4] = &off_283FB9668;
  v95 = swift_allocObject();
  *v94 = v95;
  sub_22C4C33A0(v201, v95 + 16);
  v96 = (v92 + *(v93 + 24));
  v96[3] = v84;
  v96[4] = &off_283FB9A18;
  v97 = sub_22C36D548(v96);
  v155 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4C7170(v82, v97, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v188[3] = v93;
  v188[4] = &off_283FB8F90;
  v98 = sub_22C36D548(v188);
  sub_22C4C7170(v92, v98, type metadata accessor for TypeInstanceRenderer_v1_0);
  v188[8] = &unk_283FB9CD0;
  v188[9] = &off_283FB9E00;
  v99 = v174;
  sub_22C3E8FB4(a1 + *(v154 + 28), v174, &qword_27D9BB730, &unk_22C90FE30);
  v100 = a1;
  sub_22C4C8148();
  v101 = v175;
  *(v175 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v101 + 32) = &off_283FB8ED8;
  v102 = swift_allocObject();
  *v101 = v102;
  sub_22C4BEDC0(v188, v102 + 16);
  *(v101 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v101 + 72) = &off_283FB9968;
  v103 = swift_allocObject();
  *(v101 + 40) = v103;
  sub_22C4C33FC(v187, v103 + 16);
  *(v101 + 104) = &unk_283FB9C88;
  *(v101 + 112) = &off_283FB9DE0;
  *(v101 + 80) = 1;
  v104 = v158;
  *(v101 + 144) = v158;
  *(v101 + 152) = &off_283FB8F70;
  v105 = v101;
  v106 = sub_22C36D548((v101 + 120));
  sub_22C4C7170(v99, v106, type metadata accessor for ToolDescriptionProvider_v1_0);
  v107 = v159;
  v108 = v88;
  v109 = v100 + v88;
  v110 = v100;
  v111 = v89;
  sub_22C4C7170(v109, v105 + *(v159 + 32), v89);
  v112 = v177;
  v177[3] = &unk_283FB9CB0;
  v112[4] = &off_283FB9DF0;
  v112[8] = v104;
  v112[9] = &off_283FB8F70;
  v113 = v112;
  v114 = sub_22C36D548(v112 + 5);
  sub_22C4C7170(v99, v114, type metadata accessor for ToolDescriptionProvider_v1_0);
  v115 = v160;
  v116 = *(v160 + 24);
  v148 = v110;
  sub_22C4C7170(v110 + v108, v113 + v116, v111);
  v186[3] = v107;
  v186[4] = &off_283FB8F40;
  v117 = sub_22C36D548(v186);
  sub_22C4C7170(v105, v117, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C8148();
  v185[3] = &type metadata for ToolNameRenderer_v2_0;
  v185[4] = &off_283FB9968;
  v185[0] = swift_allocObject();
  sub_22C4C33FC(v187, v185[0] + 16);
  v118 = v157;
  v157[3] = v107;
  v118[4] = &off_283FB8F40;
  v119 = sub_22C36D548(v118);
  sub_22C4C7170(v105, v119, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v118[8] = v115;
  v118[9] = &off_283FB8E98;
  v120 = sub_22C36D548(v118 + 5);
  sub_22C4C7170(v113, v120, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v118[13] = &type metadata for EntitySetterRenderer_v1_0;
  v118[14] = &off_283FB8F18;
  v121 = swift_allocObject();
  v118[10] = v121;
  sub_22C4BEE78(v186, v121 + 16);
  v118[18] = &type metadata for UIControlRenderer_v2_0;
  v118[19] = &off_283FB9700;
  v122 = swift_allocObject();
  v118[15] = v122;
  sub_22C4BEED4(v185, v122 + 16);
  v118[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v118[24] = &off_283FB96C0;
  v123 = swift_allocObject();
  v118[20] = v123;
  v123[5] = &type metadata for ToolNameRenderer_v2_0;
  v123[6] = &off_283FB9968;
  v124 = swift_allocObject();
  v123[2] = v124;
  sub_22C4C33FC(v187, v124 + 16);
  v125 = v179;
  v126 = v148;
  v127 = *(v148 + v179);
  v128 = *(v178 + 36);

  sub_22C90718C();

  v129 = v163;
  v130 = v169;
  v163[3] = v169;
  v129[4] = &off_283FB9688;
  v131 = sub_22C36D548(v129);
  v132 = v150;
  v133 = v168;
  sub_22C4C7170(v150, v131, v168);
  v129[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v129[9] = &off_283FB9718;
  v134 = *(v126 + v125);
  v135 = *(v165 + 32);

  sub_22C90718C();

  v181[3] = v130;
  v181[4] = &off_283FB96A0;
  v136 = sub_22C36D548(v181);
  sub_22C4C7170(v132, v136, v133);
  v183 = &type metadata for PrimitiveValueRenderer_v1_0;
  v184 = &off_283FB8EB8;
  v182 = swift_allocObject();
  sub_22C4BEF30(v200, v182 + 16);
  sub_22C4BEF8C(v181, v180);
  v137 = v170;
  v138 = v162;
  sub_22C4C7170(v170, v162, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v139 = v166;
  sub_22C4C7170(v129, v166, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v140 = sub_22C4D6614(v180, v138, v139);
  v141 = v176;
  sub_22C4C8148();
  v141[8] = v178;
  v141[9] = &off_283FB9640;
  v142 = sub_22C36D548(v141 + 5);
  sub_22C4C7170(v118, v142, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v141[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v141[14] = &off_283FB8ED8;
  v143 = swift_allocObject();
  v141[10] = v143;
  sub_22C4BEDC0(v188, v143 + 16);
  v141[18] = &type metadata for ToolNameRenderer_v2_0;
  v141[19] = &off_283FB9968;
  v144 = swift_allocObject();
  v141[15] = v144;
  sub_22C4C33FC(v187, v144 + 16);
  v141[27] = v172;
  v141[28] = &off_283FB9A18;
  v145 = sub_22C36D548(v141 + 24);
  v146 = v171;
  sub_22C4C7170(v171, v145, v155);

  sub_22C4BF0A0(v181);
  sub_22C4CBAC0(v129, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4CBAC0(v118, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v185);
  sub_22C4BF1F0(v186);
  sub_22C4CBAC0(v177, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4CBAC0(v175, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v187);
  sub_22C4CBAC0(v174, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v188);
  sub_22C4CBAC0(v173, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4CBAC0(v146, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4CBAC0(v137, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v189);
  sub_22C4C3534(v196);
  sub_22C4BF0F4(v200);
  sub_22C4C3588(v201);
  sub_22C4CBAC0(v161, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4CBAC0(v164, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  result = sub_22C4BF394(v202);
  v141[20] = v140;
  v141[21] = &off_283FB87B0;
  v141[22] = v140;
  v141[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4CA3EC()
{
  sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa();
  v2 = *(v1 + 80);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CA484(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4CA484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = _s15DeltaComponentsVMa();
  v10 = *(v9 + 24);
  v11 = *(a1 + v10);
  v12 = type metadata accessor for SpanEventPromptGenerator_v3_0();
  *(a2 + 24) = v12;
  *(a2 + 32) = &off_283FB9B38;
  v13 = sub_22C36D548(a2);

  sub_22C90718C();

  v14 = v13 + *(v12 + 20);
  sub_22C4C8614();
  sub_22C4C7170(a1 + *(v9 + 44), v8, type metadata accessor for FullPlannerPreferences);
  v15 = *(v5 + 64);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4CBAC0(v8, type metadata accessor for FullPlannerPreferences);
  *(v13 + *(v12 + 24)) = v39[0];
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v16 = swift_allocObject();
  *(a2 + 40) = v16;
  sub_22C4C8614();
  *(v16 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v17 = swift_allocObject();
  *(a2 + 80) = v17;
  *(v17 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v17 + 48) = &off_283FB8638;
  v18 = *(a1 + v10);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v19 = swift_allocObject();
  *(a2 + 120) = v19;
  v19[5] = type metadata accessor for ProgramStatementParser_v1_0();
  v19[6] = &off_283FB84F8;
  sub_22C36D548(v19 + 2);

  sub_22C90718C();

  v20 = *(a1 + v10);
  v21 = type metadata accessor for ExpressionParser_v1_0();
  v19[10] = v21;
  v19[11] = &off_283FB8460;
  v22 = sub_22C36D548(v19 + 7);
  v23 = v21[5];

  sub_22C90718C();

  sub_22C4C8614();
  sub_22C378A4C(&v40, v22 + v21[6]);
  sub_22C3DF2E8(v39);
  v24 = v22 + v21[7];
  sub_22C4C8148();
  v25 = v22 + v21[8];
  *(v25 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v25 + 4) = &off_283FB8298;
  v26 = v22 + v21[9];
  *(v26 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v26 + 4) = &off_283FB8588;
  v27 = v22 + v21[10];
  sub_22C4C84BC();
  v28 = v22 + v21[11];
  sub_22C4C83D4();
  *v22 = 1;
  v19[15] = &type metadata for RenderingArbiter_v1_0;
  v19[16] = &off_283FB8588;
  v29 = *(a1 + v10);
  v30 = type metadata accessor for StatementResultParser_v1_0();
  *(a2 + 184) = v30;
  *(a2 + 192) = &off_283FB86D8;
  v31 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  v32 = v31 + *(v30 + 20);
  sub_22C4C8614();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  v33 = *(a1 + v10);
  v34 = type metadata accessor for ExternalAgentOutcomeParser_v1_0();
  *(a2 + 304) = v34;
  *(a2 + 312) = &off_283FB4130;
  v35 = sub_22C36D548((a2 + 280));

  sub_22C90718C();

  v36 = v35 + *(v34 + 20);
  sub_22C4C8614();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4CA888()
{
  sub_22C3727F4();
  v0 = _s15DeltaComponentsVMa();
  v1 = *(v0 + 84);
  sub_22C3870F0(v0, v2, &qword_27D9BD3F0, &qword_22C918240, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4CA938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v41 = a3;
  v4 = type metadata accessor for FullPlannerPreferences();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90077C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4C84BC();
  sub_22C4C8614();
  v13 = _s15DeltaComponentsVMa();
  v14 = v13[5];
  v39 = v13[6];
  v15 = *(a1 + v39);
  v44 = v9;
  v16 = *(v9 + 16);
  v52 = v8;
  v16(v12, a1 + v14, v8);
  v17 = v13[11];
  v18 = (a1 + v13[12]);
  v19 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  v45 = *v18;
  v20 = v45;
  v46 = v19;
  v47 = v21;
  v48 = v22;
  v40 = v17;
  sub_22C4C7170(a1 + v17, v7, type metadata accessor for FullPlannerPreferences);

  sub_22C4C7C38(v20, v19, v21);
  v23 = v43;
  sub_22C5349F8(v49, v15, v12, &v45, v51);

  sub_22C4CBAC0(v7, type metadata accessor for FullPlannerPreferences);
  sub_22C4CBAA8(v45, v46, v47);
  (*(v44 + 8))(v12, v52);
  sub_22C3DF2E8(v49);
  if (v23)
  {
    result = sub_22C36FF94(v50);
    *v42 = v23;
  }

  else
  {
    sub_22C36FF94(v50);
    v25 = v39;
    v26 = *(a1 + v39);
    v27 = type metadata accessor for ConversationParser_v1_0();
    v28 = v41;
    v41[3] = v27;
    v28[4] = &off_283FB83D0;
    v29 = sub_22C36D548(v28);

    sub_22C90718C();

    v30 = v29 + v27[5];
    sub_22C4CA3EC();
    v31 = v29 + v27[6];
    sub_22C4C8614();
    v32 = (v29 + v27[7]);
    v33 = type metadata accessor for ToolFetcher(0);
    v32[3] = v33;
    v32[4] = &off_283FB6BE0;
    v34 = sub_22C36D548(v32);
    sub_22C4C8240(v34);
    v35 = *(a1 + v25);
    v36 = *(v33 + 20);

    sub_22C90718C();

    v37 = v29 + v27[8];
    sub_22C4C84BC();
    sub_22C36C730(v51, v29 + v27[9]);
    result = sub_22C4C7170(a1 + v40, v29 + v27[12], type metadata accessor for FullPlannerPreferences);
    *(v29 + v27[10]) = 0;
    *(v29 + v27[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4CACFC()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15DeltaComponentsVMa() + 88);
  if (*(v2 + 24))
  {
    sub_22C378A4C(v2, &v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v5 = *v2;
    v6 = v3;
    v7 = *(v2 + 32);
  }

  if (*(&v6 + 1))
  {
    return sub_22C36C730(&v5, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v2 + 24))
  {
    sub_22C36FF94(v2);
  }

  return sub_22C378A4C(v0, v2);
}

void sub_22C4CADA0()
{
  sub_22C3727F4();
  v2 = v1 + *(_s15DeltaComponentsVMa() + 92);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v19 = v5;
    v23 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v19);
    v23 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    sub_22C36BD58();
    sub_22C4C7610(v15);
    sub_22C36D78C();
    if (!v4)
    {
      if (v16)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v17 = *v0;
      v18 = v17;
      *v2 = v17;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23);
  }
}

void sub_22C4CAE88()
{
  sub_22C3727F4();
  v2 = *(_s15DeltaComponentsVMa() + 96);
  sub_22C3E8FB4(v1 + v2, &v14, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v11)
  {
    sub_22C36DD28(&v14, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v13 = sub_22C4D630C(v12);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v13;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v2, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v2, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18);
  }
}

void sub_22C4CAF94()
{
  sub_22C3727F4();
  v0 = _s15DeltaComponentsVMa();
  v1 = *(v0 + 100);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4CB044@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  sub_22C4C8614();
  v10 = _s15DeltaComponentsVMa();
  v11 = a1 + *(v10 + 32);
  v12 = *v11;
  if (*(v11 + 32))
  {
    v35[0] = *v11;
    v13 = v12;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v36);
    *a2 = v12;
  }

  else
  {
    v15 = v10;
    v17 = *(v11 + 8);
    v16 = *(v11 + 16);
    v31 = *(v11 + 24);
    v32 = v16;
    sub_22C42B564(v12);
    sub_22C4C8148();
    v34 = *(a1 + v15[6]);
    v18 = v15[11];
    v19 = (a1 + v15[10]);
    v21 = *v19;
    v20 = v19[1];
    v37 = v21;
    v33 = v20;
    v22 = type metadata accessor for PromptMapperResolver();
    a3[3] = v22;
    a3[4] = &off_283FB3CE0;
    v23 = sub_22C36D548(a3);
    sub_22C4C7170(a1 + v18, v23 + *(v22 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v36, v23);
    v23[34] = v12;
    v23[35] = v17;
    v24 = v31;
    v23[36] = v32;
    v23[37] = v24;
    sub_22C378A4C(v35, (v23 + 38));
    v25 = sub_22C90A75C();
    sub_22C36C640(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v27 = v33;
    v26[4] = v34;

    sub_22C580C40();
    v29 = v28;
    sub_22C36FF94(v35);
    result = sub_22C3DF2E8(v36);
    v30 = v37;
    v23[43] = v29;
    v23[44] = v30;
    v23[45] = v27;
  }

  return result;
}

void sub_22C4CB2A4()
{
  sub_22C3727F4();
  v0 = _s15DeltaComponentsVMa();
  v1 = *(v0 + 104);
  sub_22C3870F0(v0, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4CB354@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4CAE88();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4CAF94();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15DeltaComponentsVMa() + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4CB4A8()
{
  sub_22C3727F4();
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = _s15DeltaComponentsVMa();
  v7 = *(v6 + 108);
  result = sub_22C3E8FB4(v1 + v7, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    v10 = *(v6 + 44);
    sub_22C369E0C();
    sub_22C4C7170(v1 + v11, v5, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v5, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v7, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v7, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v9 = *v15;
    *v0 = v14;
    *(v0 + 16) = v9;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

void sub_22C4CB610()
{
  sub_22C3727F4();
  v0 = _s15DeltaComponentsVMa();
  v1 = *(v0 + 112);
  sub_22C3870F0(v0, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_22C4CB6C0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4CADA0();
  if (v31)
  {
    v4 = v28;
    v27[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v28, v32);
  sub_22C4C86AC();
  if (v31)
  {
    v4 = v28;
    v25[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v32;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v28, v27);
  sub_22C4CB2A4();
  if (v31)
  {
    v4 = v28;
    *&v24[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    goto LABEL_7;
  }

  sub_22C36C730(&v28, v25);
  sub_22C4CB4A8();
  if (v31)
  {
    v4 = v28;
    v21[0] = v28;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v27);
    sub_22C36FF94(v32);
    v6 = v25;
    goto LABEL_8;
  }

  sub_22C36C730(&v28, v24);
  v7 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v26;
  v12 = sub_22C36D1E4(v25, v26);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v29 = &type metadata for PostInferenceHandler;
  v30 = &off_283FB3BA0;
  *&v28 = swift_allocObject();
  memcpy((v28 + 16), v15, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v17 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v10 + v17) = sub_22C36E65C(1);
  sub_22C378A4C(v32, v10 + 16);
  sub_22C378A4C(v27, v10 + 56);
  sub_22C378A4C(v10 + 56, v21);
  v18 = v22;
  v19 = v23;
  sub_22C374168(v21, v22);
  (*(v19 + 16))(v18, v19);
  sub_22C36FF94(v27);
  sub_22C36FF94(v32);
  sub_22C36FF94(v21);
  sub_22C36C730(&v28, v10 + 96);
  sub_22C36C730(v24, v10 + qword_27D9BDFC8);
  result = sub_22C36FF94(v25);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v10;
  return result;
}

uint64_t sub_22C4CBAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000007) != 0)
  {
    return sub_22C472480(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22C4CBAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C4CBB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4CBB7C@<X0>(uint64_t a1@<X8>)
{
  sub_22C4CF688(v6);
  if (v7)
  {
    v2 = *&v6[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760);
    v2 = swift_allocObject();
    sub_22C4CFC84();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4CBC9C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4CBD10@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v75 - v6;
  v7 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = (&v75 - v11);
  v12 = sub_22C90077C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1869112133;
  *(a2 + 1) = 0xE400000000000000;
  v16 = _s14EchoComponentsVMa();
  v17.n128_f64[0] = sub_22C38711C(&a2[v16[14]]);
  sub_22C369DE4(*(v18 + 60), v17);
  sub_22C369DE4(*(v19 + 64), v20);
  sub_22C369DE4(*(v21 + 68), v22);
  sub_22C369DE4(*(v23 + 72), v24);
  sub_22C369DE4(*(v25 + 76), v26);
  sub_22C369DE4(*(v27 + 80), v28);
  *(v29 + 40) = -1;
  bzero(&a2[*(v30 + 84)], 0x110uLL);
  bzero(&a2[v16[22]], 0x190uLL);
  v31.n128_f64[0] = sub_22C38711C(&a2[v16[23]]);
  *(v32 + 40) = -1;
  sub_22C369DE4(v16[24], v31);
  sub_22C369DE4(v16[25], v33);
  *(v34 + 40) = -1;
  sub_22C369DE4(v16[26], v35);
  *(v36 + 40) = -1;
  sub_22C369DE4(v16[27], v37);
  *(v38 + 40) = -1;
  sub_22C369DE4(v16[28], v39);
  *(v40 + 40) = -1;
  sub_22C369DE4(v16[29], v41);
  *(v42 + 40) = -1;
  sub_22C369DE4(v16[30], v43);
  *(v44 + 40) = -1;
  v45 = *(v13 + 16);
  v45(&a2[v16[5]], a1, v12);
  v46 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v16[6]] = *&a1[v46[5]];
  sub_22C3E8FB4(&a1[v46[6]], &a2[v16[7]], &qword_27D9BB730, &unk_22C90FE30);
  v47 = &a1[v46[10]];
  v48 = *(type metadata accessor for FullPlannerPreferences() + 44);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v76 = v47;
  sub_22C901EDC();
  if (v82 == 1)
  {
    v81 = 0;
    v49 = v77;
    v45(v77, a1, v12);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v81, v49, &v82);
    v72 = v82;
    v73 = v83;
    v74 = v84;
  }

  else
  {
    v72 = 0;
    v74 = 0;
    v73 = 0uLL;
  }

  v50 = &a2[v16[8]];
  *v50 = v72;
  *(v50 + 8) = v73;
  *(v50 + 3) = v74;
  v50[32] = 0;
  sub_22C3E8FB4(&a1[v46[7]], &a2[v16[9]], &qword_27D9BB728, &qword_22C911230);
  v51 = &a1[v46[8]];
  v52 = *v51;
  v53 = *(v51 + 1);
  v54 = &a2[v16[10]];
  *v54 = v52;
  *(v54 + 1) = v53;
  v55 = v46[9];
  v77 = a1;
  v56 = v78;
  sub_22C3E8FB4(&a1[v55], v78, &qword_27D9BB720, &unk_22C90FE20);
  v57 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v56, 1, v57) == 1)
  {

    sub_22C36DD28(v56, &qword_27D9BB720, &unk_22C90FE20);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0x3000000000000007;
  }

  else
  {
    v58 = *v56;
    v59 = v56[1];
    v61 = v56[2];
    v60 = v56[3];

    sub_22C4C7C38(v58, v59, v61);
    sub_22C3717E8();
  }

  v62 = &a2[v16[12]];
  *v62 = v58;
  v62[1] = v59;
  v62[2] = v61;
  v62[3] = v60;
  v63 = v77;
  v64 = v79;
  sub_22C3E8FB4(&v77[v55], v79, &qword_27D9BB720, &unk_22C90FE20);
  if (sub_22C370B74(v64, 1, v57) == 1)
  {
    sub_22C36DD28(v64, &qword_27D9BB720, &unk_22C90FE20);
    v65 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v66 = v80;
    sub_22C36C640(v80, 1, 1, v65);
  }

  else
  {
    v67 = v64 + *(v57 + 20);
    v66 = v80;
    sub_22C3E8FB4(v67, v80, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3717E8();
  }

  sub_22C4CC2D0(v66, &a2[v16[13]]);
  v68 = v16[11];
  sub_22C36AA34();
  sub_22C4D0C60(v76, &a2[v69], v70);
  return sub_22C4D0CC0(v63, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s14EchoComponentsVMa()
{
  result = qword_2814353F0;
  if (!qword_2814353F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4CC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22C4CC368()
{
  sub_22C90077C();
  if (v0 <= 0x3F)
  {
    sub_22C9071BC();
    if (v1 <= 0x3F)
    {
      sub_22C4CC818(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v2 <= 0x3F)
      {
        sub_22C4BFF78();
        if (v3 <= 0x3F)
        {
          sub_22C4CC818(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v4 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20);
            if (v5 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences();
              if (v6 <= 0x3F)
              {
                sub_22C430E9C(319, &qword_27D9BD5F0);
                if (v7 <= 0x3F)
                {
                  sub_22C4CC818(319, &qword_27D9BD650, type metadata accessor for GrammarToolDefinitionBundle);
                  if (v8 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                    if (v9 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                      if (v10 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD5F8, &qword_27D9BD600, &qword_22C918528);
                        if (v11 <= 0x3F)
                        {
                          sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                          if (v12 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                            if (v13 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_28142F948, &qword_27D9BD608, qword_22C918610);
                              if (v14 <= 0x3F)
                              {
                                sub_22C430E9C(319, &qword_281434970);
                                if (v15 <= 0x3F)
                                {
                                  sub_22C430E9C(319, &qword_281434B98);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, qword_2814335D8, &qword_27D9BD610, &unk_22C918650);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F940, &qword_27D9BD618, &qword_22C918530);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    swift_cvw_initStructMetadataWithLayoutString();
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
          }
        }
      }
    }
  }
}

void sub_22C4CC818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C4CC86C()
{
  sub_22C3727F4();
  v2 = _s14EchoComponentsVMa();
  v3 = *(v2 + 56);
  v4 = sub_22C3E8FB4(v1 + v3, &v20, &qword_27D9BD3D0, &unk_22C918320);
  if (v21)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20);
  }

  sub_22C36D798(&v20);
  v13 = *(v2 + 44);
  v14 = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[3] = v14;
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  v16 = *(v14 + 20);
  sub_22C36AA34();
  sub_22C4D0C60(v1 + v13, v15 + v17, v18);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4CC964@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s14EchoComponentsVMa() + 60);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v5_0;
  a1[4] = &off_283FBAD00;
  *a1 = swift_allocObject();
  sub_22C4CC86C();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4CCB94()
{
  sub_22C3727F4();
  v2 = _s14EchoComponentsVMa();
  v3 = *(v2 + 72);
  v4 = sub_22C3E8FB4(v1 + v3, &v21, &qword_27D9BD3E0, &unk_22C918720);
  if (v22)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  sub_22C36D798(&v21);
  v13 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[3] = v13;
  v0[4] = &off_283FB9A30;
  v14 = sub_22C36D548(v0);
  sub_22C4CCAF0();
  v15 = *(v2 + 44);
  v16 = *(v13 + 20);
  sub_22C36AA34();
  sub_22C4D0C60(v1 + v17, v14 + v18, v19);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4CCC7C()
{
  v2 = v1;
  sub_22C3727F4();
  v3 = _s14EchoComponentsVMa();
  v4 = *(v3 + 76);
  v5 = sub_22C3E8FB4(v2 + v4, &v26, &qword_27D9BD3F8, &unk_22C918340);
  if (v27)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v25, v26);
  }

  sub_22C36D798(&v26);
  v14 = *(v3 + 24);
  v15 = *(v2 + v14);
  v16 = type metadata accessor for ToolRenderer_v5_0();
  v0[3] = v16;
  v0[4] = &off_283FBAD20;
  v17 = sub_22C36D548(v0);
  sub_22C90718C();
  v18 = v17 + v16[5];
  sub_22C4CCDE0();
  v19 = *(v2 + v14);
  v20 = (v17 + v16[6]);
  v21 = type metadata accessor for ToolRenderer_v1_0();
  v20[3] = v21;
  v20[4] = &off_283FB9200;
  v22 = sub_22C36D548(v20);
  sub_22C90718C();
  v23 = v22 + *(v21 + 20);
  sub_22C4CCDE0();
  v24 = v17 + v16[7];
  *(v24 + 3) = &unk_283FB9BD0;
  *(v24 + 4) = &off_283FB9DA0;
  sub_22C38711C(v17 + v16[8]);
  sub_22C36D798(v2 + v4);
  return sub_22C378A4C(v0, v2 + v4);
}

void *sub_22C4CCDE0()
{
  sub_22C3727F4();
  v1 = _s14EchoComponentsVMa();
  v2 = *(v1 + 84);
  v8 = sub_22C3870F0(v1, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CD99C(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4CCE78()
{
  sub_22C3727F4();
  v2 = v1 + *(_s14EchoComponentsVMa() + 80);
  sub_22C36D78C();
  if (v4)
  {
    sub_22C370678();
  }

  else if (v3)
  {
    v5 = *v2;
    v6 = *v2;
    *&v21 = v5;
    v25 = 1;
  }

  else
  {
    sub_22C378A4C(v2, &v21);
    v25 = 0;
  }

  sub_22C372800();
  if (v4)
  {
    v15 = sub_22C36BD58();
    sub_22C4CBC9C(v15, v16, v17);
    sub_22C36D78C();
    if (!v4)
    {
      if (v18)
      {
      }

      else
      {
        sub_22C36FF94(v2);
      }
    }

    if (*(v0 + 40))
    {
      v19 = *v0;
      v20 = v19;
      *v2 = v19;
      *(v2 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v2);
      *(v2 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_22C4CCF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a3;
  v97 = a2;
  v4 = sub_22C9063DC();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v81 - v9;
  v10 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v14;
  v87 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  v15 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v81 - v22;
  MEMORY[0x28223BE20](v21);
  v98 = &v81 - v23;
  v24 = type metadata accessor for FullPlannerPreferences();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v88 = &v81 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v81 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v81 - v33;
  v35 = _s14EchoComponentsVMa();
  v36 = v35[11];
  sub_22C4D0C60(a1 + v36, v34, type metadata accessor for FullPlannerPreferences);
  v94 = v24;
  v37 = *(v24 + 36);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4D0CC0(v34, type metadata accessor for FullPlannerPreferences);
  v38 = v99[0];
  if (*&v99[0] != 0x6E65476E656B6F74 || *(&v99[0] + 1) != 0xEE00726F74617265)
  {
    v82 = v4;
    v40 = v97;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v38 == 0x65696C4370747468 && *(&v38 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v73 = sub_22C90B4FC();

        if ((v73 & 1) == 0)
        {
          sub_22C903F7C();
          v74 = sub_22C9063CC();
          v75 = sub_22C90AADC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = v40;
            v77 = swift_slowAlloc();
            *v77 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v74, v75, v78, v77, 2u);
            v79 = v77;
            v40 = v76;
            MEMORY[0x2318B9880](v79, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v8 = v83;
      sub_22C903F7C();
      v74 = sub_22C9063CC();
      v75 = sub_22C90AADC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = v40;
        v77 = swift_slowAlloc();
        *v77 = 0;
        v78 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v84 + 8))(v8, v82);
      sub_22C3DD0D8();
      v61 = swift_allocError();
      *v80 = 0;
      v80[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v41 = a1 + v35[9];
  v42 = a1;
  v43 = v98;
  sub_22C3E8FB4(v41, v98, &qword_27D9BB728, &qword_22C911230);
  v44 = v35[5];
  v93 = v17;
  v45 = *(v17 + 5);
  v46 = sub_22C90077C();
  (*(*(v46 - 8) + 16))(v43 + v45, v42 + v44, v46);
  sub_22C4D0C60(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v47 = v94;
  v48 = *(v94 + 104);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4D0CC0(v32, type metadata accessor for FullPlannerPreferences);
  *(v43 + *(v93 + 6)) = v99[0];
  v49 = v42;
  sub_22C4D0C60(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
  v50 = &v32[*(v47 + 48)];
  sub_22C901EDC();
  sub_22C4D0CC0(v32, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v99[0]) == 1)
  {
    v51 = v91;
    sub_22C4D0C60(v98, v91, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D0C60(v42 + v36, v32, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v100);
    sub_22C4D0CC0(v32, type metadata accessor for FullPlannerPreferences);
    LODWORD(v94) = v100;
    v52 = v42 + v36;
    v53 = v88;
    sub_22C4D0C60(v52, v88, type metadata accessor for FullPlannerPreferences);
    v54 = v96;
    v55 = v87;
    v96[3] = v87;
    v54[4] = &off_2818B22E0;
    v93 = sub_22C36D548(v54);
    v56 = *(v55 + 24);
    v57 = v90;
    sub_22C901ADC();
    v58 = sub_22C901AEC();
    sub_22C36C640(v57, 0, 1, v58);
    sub_22C3E8FB4(v57, v89, &qword_27D9BD638, &unk_22C92C240);
    v59 = v92;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v57, &qword_27D9BD638, &unk_22C92C240);
    v60 = v95;
    sub_22C3EECF8(v51, 2, v53, v99);
    v61 = v60;
    v62 = v98;
    if (!v60)
    {
      sub_22C4D0CC0(v53, type metadata accessor for FullPlannerPreferences);
      sub_22C4D0CC0(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v99, v59);
      *(v59 + 40) = v94;
      sub_22C4CBB18(v59, v93);
      return sub_22C4D0CC0(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4D0CC0(v53, type metadata accessor for FullPlannerPreferences);
    sub_22C4D0CC0(v51, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D0CC0(v62, type metadata accessor for FullPlannerGMSClientConfiguration);
    v63 = sub_22C901B3C();
    (*(*(v63 - 8) + 8))(v59 + v56, v63);
    result = sub_22C4BF5D8(v54);
    v40 = v97;
  }

  else
  {
    v65 = v98;
    v66 = v86;
    sub_22C4D0C60(v98, v86, type metadata accessor for FullPlannerGMSClientConfiguration);
    v67 = v85;
    sub_22C4D0C60(v49 + v36, v85, type metadata accessor for FullPlannerPreferences);
    v68 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v69 = v96;
    v96[3] = v68;
    v69[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560);
    v70 = sub_22C36D548(v69);
    v71 = v95;
    sub_22C4D0D40(v66, v67, v70);
    v61 = v71;
    result = sub_22C4D0CC0(v65, type metadata accessor for FullPlannerGMSClientConfiguration);
    v40 = v97;
    if (!v71)
    {
      return result;
    }

    result = sub_22C4BF5D8(v69);
  }

LABEL_24:
  *v40 = v61;
  return result;
}

uint64_t sub_22C4CD99C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v237 = a2;
  v223 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0);
  v3 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v221 = (&v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v216 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  v5 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v215 = (&v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
  v7 = *(*(v214 - 8) + 64);
  MEMORY[0x28223BE20](v214);
  v236 = (&v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  v9 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v240 = (&v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  v11 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v239 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  v13 = *(*(v213 - 1) + 64);
  MEMORY[0x28223BE20](v213);
  v233 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  v15 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v229 = (&v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v18 = *(v17 - 8);
  v211 = (v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v222 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v227 = (&v205 - v22);
  v23 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v24 = *(v23 - 8);
  v210 = v23 - 8;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8);
  v220 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v228 = (&v205 - v28);
  v29 = type metadata accessor for FullPlannerPreferences();
  v30 = *(v29 - 8);
  v207 = v29 - 8;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29 - 8);
  v208 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v206 = &v205 - v34;
  v232 = type metadata accessor for PrimitiveValueRenderer_v2_0(0);
  v35 = *(*(v232 - 8) + 64);
  MEMORY[0x28223BE20](v232);
  v231 = (&v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v38 = *(v37 - 8);
  v226 = (v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v41 = (&v205 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v225 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v42 = *(*(v225 - 1) + 64);
  MEMORY[0x28223BE20](v225);
  v44 = (&v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = &unk_283FB9D88;
  v265 = &off_283FB9E30;
  v263[0] = 1;
  sub_22C4CCA4C(v47);
  v50 = _s14EchoComponentsVMa();
  v51 = *(v50 + 44);
  v52 = v50;
  v53 = *(v45 + 20);
  v219 = v49;
  v242 = type metadata accessor for FullPlannerPreferences;
  v243 = v51;
  sub_22C4D0C60(a1 + v51, &v49[v53], type metadata accessor for FullPlannerPreferences);
  v44[3] = v45;
  v44[4] = &off_283FB9A58;
  v54 = sub_22C36D548(v44);
  sub_22C4D0C60(v49, v54, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v55 = *(v52 + 24);
  v56 = v52;
  v209 = v52;
  v57 = *(a1 + v55);
  v58 = v55;
  v59 = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
  v60 = v44;
  v44[8] = v59;
  v44[9] = &off_283FBAC08;
  v61 = sub_22C36D548(v44 + 5);

  sub_22C90718C();

  v62 = v61 + *(v59 + 20);
  v63 = sub_22C4CC86C();
  sub_22C4CCA4C(v63);
  v64 = *(a1 + v58);
  v65 = v58;
  v66 = v225;
  v67 = *(v225 + 7);

  sub_22C90718C();

  v68 = *(v56 + 20);
  v69 = *(v66 + 8);
  v70 = sub_22C90077C();
  (*(*(v70 - 8) + 16))(v60 + v69, a1 + v68, v70);
  sub_22C4D0C60(a1 + v243, v60 + *(v66 + 9), type metadata accessor for FullPlannerPreferences);
  v41[3] = v66;
  v41[4] = &off_283FB9A40;
  v71 = sub_22C36D548(v41);
  v217 = v60;
  sub_22C4D0C60(v60, v71, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v41[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v41[9] = &off_283FB8FE0;
  v72 = swift_allocObject();
  v41[5] = v72;
  sub_22C4BECC0(v263, v72 + 16);
  v41[13] = &type metadata for UTTypeRenderer_v1_0;
  v41[14] = &off_283FB8FD0;
  sub_22C4CC86C();
  v41[23] = &unk_283FB9D10;
  v41[24] = &off_283FB9E20;
  v238 = v65;
  v73 = *(a1 + v65);
  v74 = *(v226 + 11);

  v75 = v41;
  v218 = v41;
  sub_22C90718C();

  v76 = *(a1 + v65);
  v241 = a1;
  v77 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v78 = v237;
  v237[32] = v77;
  v78[33] = &off_283FBABE8;
  v79 = sub_22C36D548(v78 + 29);

  sub_22C90718C();

  sub_22C4D0C60(v75, v79 + v77[5], type metadata accessor for TypeIdentifierRenderer_v2_0);
  v80 = (v79 + v77[6]);
  v80[3] = v66;
  v80[4] = &off_283FB9A40;
  v81 = sub_22C36D548(v80);
  sub_22C4D0C60(v60, v81, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v82 = (v79 + v77[7]);
  v82[3] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v82[4] = &off_283FB8FE0;
  v83 = swift_allocObject();
  *v82 = v83;
  sub_22C4BECC0(v263, v83 + 16);
  v84 = v77;
  v85 = v79 + v77[8];
  *(v85 + 3) = &type metadata for UTTypeRenderer_v1_0;
  *(v85 + 4) = &off_283FB8FD0;
  v86 = v79 + v77[9];
  sub_22C4CC86C();
  v87 = v79 + v77[10];
  *(v87 + 3) = &unk_283FB9D10;
  *(v87 + 4) = &off_283FB9E20;
  v262[3] = v77;
  v262[4] = &off_283FBABD0;
  v88 = sub_22C36D548(v262);
  sub_22C4D0C60(v79, v88, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v262[8] = &unk_283FB9CF0;
  v262[9] = &off_283FB9E10;
  v261[3] = v77;
  v261[4] = &off_283FBABE8;
  v89 = sub_22C36D548(v261);
  sub_22C4D0C60(v79, v89, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v261[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v261[9] = &off_283FB8FC0;
  v261[13] = &type metadata for INPersonRenderer_v1_0;
  v261[14] = &off_283FB8FB0;
  v90 = v231;
  v231[3] = v77;
  v90[4] = &off_283FBABE8;
  v224 = v77;
  v91 = sub_22C36D548(v90);
  v225 = type metadata accessor for TypeIdentifierRenderer_v5_0;
  v226 = v79;
  sub_22C4D0C60(v79, v91, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v90[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v90[9] = &off_283FB8FC0;
  v90[13] = &type metadata for INPersonRenderer_v1_0;
  v90[14] = &off_283FB8FB0;
  sub_22C4BEF30(v261, (v90 + 15));
  v92 = v232;
  v93 = v242;
  v94 = v243;
  v95 = v241;
  sub_22C4D0C60(v241 + v243, v90 + *(v232 + 32), v242);
  v259[3] = v84;
  v259[4] = &off_283FBABE8;
  v96 = sub_22C36D548(v259);
  sub_22C4D0C60(v79, v96, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v260[3] = v92;
  v260[4] = &off_283FB9748;
  v97 = sub_22C36D548(v260);
  v212 = type metadata accessor for PrimitiveValueRenderer_v2_0;
  sub_22C4D0C60(v90, v97, type metadata accessor for PrimitiveValueRenderer_v2_0);
  v98 = v94;
  v99 = v95;
  v100 = v95 + v94;
  v101 = v206;
  v102 = v93;
  sub_22C4D0C60(v100, v206, v93);
  v103 = v207;
  v104 = *(v207 + 104);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D0CC0(v101, type metadata accessor for FullPlannerPreferences);
  v105 = v252[0];
  v106 = v208;
  sub_22C4D0C60(v99 + v98, v208, v102);
  v107 = v106 + *(v103 + 104);
  sub_22C901EDC();
  sub_22C4D0CC0(v106, type metadata accessor for FullPlannerPreferences);
  v108 = v252[0];
  v257 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v258 = &off_283FB9738;
  v256 = swift_allocObject();
  sub_22C4C32E8(v259, v256 + 16);
  v252[1] = 0;
  v252[0] = 0;
  v252[2] = v105;
  v253 = 0;
  v254 = v108;
  v255 = 0;
  v109 = v228;
  v110 = v224;
  v228[3] = v224;
  v109[4] = &off_283FBABD0;
  v111 = v109;
  v112 = sub_22C36D548(v109);
  v114 = v225;
  v113 = v226;
  sub_22C4D0C60(v226, v112, v225);
  v111[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v111[9] = &off_283FB9728;
  v115 = swift_allocObject();
  v111[5] = v115;
  sub_22C4C3344(v252, v115 + 16);
  v116 = v238;
  v117 = v241;
  v118 = *(v241 + v238);
  v119 = *(v210 + 32);

  sub_22C90718C();

  v120 = v227;
  v227[3] = v110;
  v120[4] = &off_283FBABD0;
  v121 = v120;
  v122 = sub_22C36D548(v120);
  sub_22C4D0C60(v113, v122, v114);
  v121[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v121[9] = &off_283FB9718;
  v123 = *(v117 + v116);
  v124 = *(v211 + 8);

  sub_22C90718C();

  v125 = v229;
  sub_22C4CCB94();
  v125[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v125[9] = &off_283FBABB0;
  v126 = v125;
  v127 = swift_allocObject();
  v125[5] = v127;
  sub_22C4D0A18(v262, v127 + 16);
  v128 = v230;
  v129 = (v125 + *(v230 + 24));
  v130 = v126;
  sub_22C4CCB94();
  v129[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v129[9] = &off_283FBABB0;
  v131 = swift_allocObject();
  v129[5] = v131;
  sub_22C4D0A18(v262, v131 + 16);
  v132 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v134 = v242;
  v133 = v243;
  v135 = sub_22C4D0C60(v117 + v243, v129 + *(v132 + 24), v242);
  v136 = v126 + *(v128 + 28);
  sub_22C4CCAF0(v135);
  sub_22C4D0C60(v117 + v133, v126 + *(v128 + 32), v134);
  v137 = *(v117 + v116);

  v138 = v233;
  sub_22C90718C();

  v139 = v213;
  v140 = (v138 + *(v213 + 5));
  v140[3] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v140[4] = &off_283FBABB0;
  v141 = swift_allocObject();
  *v140 = v141;
  sub_22C4D0A18(v262, v141 + 16);
  v142 = (v138 + *(v139 + 6));
  v142[3] = v128;
  v142[4] = &off_283FB9A18;
  v143 = sub_22C36D548(v142);
  v211 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4D0C60(v130, v143, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v251[3] = v139;
  v251[4] = &off_283FB8F90;
  v144 = sub_22C36D548(v251);
  sub_22C4D0C60(v138, v144, type metadata accessor for TypeInstanceRenderer_v1_0);
  v251[8] = &unk_283FB9CD0;
  v251[9] = &off_283FB9E00;
  v145 = v239;
  sub_22C3E8FB4(v117 + *(v209 + 28), v239, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4CC86C();
  v146 = v240;
  v240[3] = &type metadata for ToolNameRenderer_v5_0;
  v146[4] = &off_283FBAD00;
  v147 = swift_allocObject();
  *v146 = v147;
  sub_22C4D0A74(v250, v147 + 16);
  v146[8] = &unk_283FB9CB0;
  v146[9] = &off_283FB9DF0;
  v148 = v234;
  v146[13] = v234;
  v146[14] = &off_283FB8F70;
  v149 = v146;
  v150 = sub_22C36D548(v146 + 10);
  v213 = type metadata accessor for ToolDescriptionProvider_v1_0;
  sub_22C4D0C60(v145, v150, type metadata accessor for ToolDescriptionProvider_v1_0);
  v151 = v116;
  v152 = *(v117 + v116);
  v153 = v235;
  v154 = *(v235 + 28);

  sub_22C90718C();

  v155 = v242;
  sub_22C4D0C60(v117 + v243, v149 + *(v153 + 32), v242);
  v156 = v236;
  v236[3] = v148;
  v156[4] = &off_283FB8F70;
  v157 = sub_22C36D548(v156);
  sub_22C4D0C60(v145, v157, type metadata accessor for ToolDescriptionProvider_v1_0);
  v158 = *(v117 + v151);
  v159 = v214;
  v160 = *(v214 + 20);

  sub_22C90718C();

  v161 = (v156 + v159[6]);
  v161[3] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v161[4] = &off_283FB8ED8;
  v162 = swift_allocObject();
  *v161 = v162;
  sub_22C4BEDC0(v251, v162 + 16);
  v163 = (v156 + v159[7]);
  v163[3] = &type metadata for ToolNameRenderer_v5_0;
  v163[4] = &off_283FBAD00;
  v164 = swift_allocObject();
  *v163 = v164;
  sub_22C4D0A74(v250, v164 + 16);
  v165 = v156 + v159[8];
  *(v165 + 3) = &unk_283FB9C88;
  *(v165 + 4) = &off_283FB9DE0;
  *v165 = 1;
  sub_22C4D0C60(v117 + v243, v156 + v159[9], v155);
  v166 = v215;
  v167 = v216;
  v168 = (v215 + *(v216 + 40));
  v169 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v168[3] = v169;
  v168[4] = &off_283FB8F40;
  v170 = sub_22C36D548(v168);
  v170[3] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v170[4] = &off_283FB8ED8;
  v171 = swift_allocObject();
  *v170 = v171;
  sub_22C4BEDC0(v251, v171 + 16);
  v170[8] = &type metadata for ToolNameRenderer_v5_0;
  v170[9] = &off_283FBAD00;
  v172 = swift_allocObject();
  v170[5] = v172;
  sub_22C4D0A74(v250, v172 + 16);
  v170[13] = &unk_283FB9C88;
  v170[14] = &off_283FB9DE0;
  *(v170 + 80) = 1;
  v170[18] = v234;
  v170[19] = &off_283FB8F70;
  v173 = sub_22C36D548(v170 + 15);
  sub_22C4D0C60(v239, v173, v213);
  v166[23] = v159;
  v166[24] = &off_283FBAB18;
  v174 = sub_22C36D548(v166 + 20);
  sub_22C4D0C60(v156, v174, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0);
  v175 = v241;
  v176 = *(v241 + v238);
  v177 = *(v167 + 36);

  sub_22C90718C();

  sub_22C4D0C60(v175 + v243, v170 + *(v169 + 32), v242);
  sub_22C378A4C(v170, v166);
  sub_22C378A4C((v170 + 5), (v166 + 5));
  sub_22C3E8FB4((v170 + 10), (v166 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C((v170 + 15), (v166 + 15));
  v249[3] = v167;
  v249[4] = &off_283FBAB80;
  v178 = sub_22C36D548(v249);
  sub_22C4D0C60(v166, v178, type metadata accessor for ToolDefinitionRenderer_v5_0);
  sub_22C4CC86C();
  v248[3] = &type metadata for ToolNameRenderer_v5_0;
  v248[4] = &off_283FBAD00;
  v248[0] = swift_allocObject();
  sub_22C4D0A74(v250, v248[0] + 16);
  v179 = v221;
  v221[3] = v167;
  v179[4] = &off_283FBAB80;
  v180 = sub_22C36D548(v179);
  sub_22C4D0C60(v166, v180, type metadata accessor for ToolDefinitionRenderer_v5_0);
  v179[8] = v235;
  v179[9] = &off_283FBAB60;
  v181 = sub_22C36D548(v179 + 5);
  sub_22C4D0C60(v240, v181, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  v179[13] = &type metadata for EntitySetterRenderer_v1_0;
  v179[14] = &off_283FB8F18;
  v182 = swift_allocObject();
  v179[10] = v182;
  sub_22C4BEE78(v249, v182 + 16);
  v179[18] = &type metadata for UIControlRenderer_v2_0;
  v179[19] = &off_283FB9700;
  v183 = swift_allocObject();
  v179[15] = v183;
  sub_22C4BEED4(v248, v183 + 16);
  v179[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v179[24] = &off_283FB96C0;
  v184 = swift_allocObject();
  v179[20] = v184;
  v184[5] = &type metadata for ToolNameRenderer_v5_0;
  v184[6] = &off_283FBAD00;
  v185 = swift_allocObject();
  v184[2] = v185;
  sub_22C4D0A74(v250, v185 + 16);
  v186 = *(v241 + v238);
  v187 = v223;
  v188 = *(v223 + 36);

  sub_22C90718C();

  v246[3] = v224;
  v246[4] = &off_283FBABE8;
  v189 = sub_22C36D548(v246);
  sub_22C4D0C60(v226, v189, v225);
  v247[3] = v232;
  v247[4] = &off_283FB9748;
  v190 = sub_22C36D548(v247);
  v191 = v231;
  sub_22C4D0C60(v231, v190, v212);
  sub_22C4BEF8C(v246, v244);
  v192 = v228;
  v193 = v220;
  sub_22C4D0C60(v228, v220, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v194 = v227;
  v195 = v222;
  sub_22C4D0C60(v227, v222, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v243 = sub_22C4D6614(v244, v193, v195);
  type metadata accessor for StrippedDirectionalTypedValuePromptRenderer_v5_0();
  v196 = swift_allocObject();
  sub_22C4C32E8(v259, v245);
  sub_22C4C3344(v252, v244);
  v242 = sub_22C4D69B4(v245, v244, v196);
  v197 = v237;
  sub_22C4CC86C();
  v197[8] = v187;
  v197[9] = &off_283FBAB38;
  v198 = sub_22C36D548(v197 + 5);
  sub_22C4D0C60(v179, v198, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  v197[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v197[14] = &off_283FB8ED8;
  v199 = swift_allocObject();
  v197[10] = v199;
  sub_22C4BEDC0(v251, v199 + 16);
  v197[18] = &type metadata for ToolNameRenderer_v5_0;
  v197[19] = &off_283FBAD00;
  v200 = swift_allocObject();
  v197[15] = v200;
  sub_22C4D0A74(v250, v200 + 16);
  v197[27] = v230;
  v197[28] = &off_283FB9A18;
  v201 = sub_22C36D548(v197 + 24);
  v202 = v229;
  sub_22C4D0C60(v229, v201, v211);
  sub_22C4D0B10(v250);
  sub_22C4D0CC0(v239, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4D0CC0(v219, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  sub_22C4BF0A0(v246);
  sub_22C4D0CC0(v179, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  sub_22C4BF19C(v248);
  sub_22C4BF1F0(v249);
  sub_22C4D0CC0(v236, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0);
  sub_22C4D0CC0(v240, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  sub_22C4BF298(v251);
  sub_22C4D0CC0(v233, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4D0CC0(v202, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4D0CC0(v194, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D0CC0(v192, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v252);
  sub_22C4C3534(v259);
  sub_22C4D0CC0(v191, type metadata accessor for PrimitiveValueRenderer_v2_0);
  sub_22C4BF0F4(v261);
  sub_22C4D0B64(v262);
  sub_22C4D0CC0(v218, type metadata accessor for TypeIdentifierRenderer_v2_0);
  sub_22C4D0CC0(v217, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4BF394(v263);
  result = sub_22C4D0CC0(v166, type metadata accessor for ToolDefinitionRenderer_v5_0);
  v204 = v242;
  v197[20] = v243;
  v197[21] = &off_283FB87B0;
  v197[22] = v204;
  v197[23] = &off_283FBAAE0;
  return result;
}