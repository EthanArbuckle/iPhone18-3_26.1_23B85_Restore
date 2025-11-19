BOOL sub_22C5EC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22C371AAC();
  v8 = v7;
  v9 = 0;
  v11 = *(v10 + 16);
  do
  {
    v12 = v9;
    if (v11 == v9)
    {
      break;
    }

    v13 = *(a4(0) - 8);
    v14 = v8(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    if (v4)
    {
      break;
    }

    v9 = v12 + 1;
  }

  while ((v14 & 1) == 0);
  return v11 != v12;
}

BOOL sub_22C5EC828(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

Swift::Bool __swiftcall ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(Swift::Bool willRunOpensIntent)
{
  v2 = v1;
  v3 = willRunOpensIntent;
  v4 = sub_22C908D6C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C908FCC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  sub_22C908E9C();
  sub_22C908FAC();
  v50 = sub_22C5EDAF0(&qword_27D9BF1B8, MEMORY[0x277D726D0]);
  v22 = sub_22C90AE0C();
  v25 = *(v14 + 8);
  v23 = v14 + 8;
  v24 = v25;
  v25(v19, v11);
  v25(v21, v11);
  if (v22)
  {
    goto LABEL_3;
  }

  v43 = v24;
  v44 = v23;
  v45 = v3;
  v26 = sub_22C908DEC();
  v27 = *MEMORY[0x277D72120];
  v28 = v51;
  v46 = *(v7 + 104);
  v29 = v46(v51, v27, v4);
  v47 = v2;
  v49 = v4;
  MEMORY[0x28223BE20](v29);
  sub_22C372A70();
  v31 = sub_22C5EC74C(sub_22C5ED7D4, v30, v26, MEMORY[0x277D721A0]);

  v32 = v49;
  v33 = *(v7 + 8);
  v48 = v7 + 8;
  v33(v28, v49);
  if (v31)
  {
LABEL_3:
    v34 = 1;
  }

  else
  {
    v42 = v33;
    v36 = sub_22C908DEC();
    v37 = v51;
    v38 = v46(v51, *MEMORY[0x277D72158], v32);
    MEMORY[0x28223BE20](v38);
    sub_22C372A70();
    v34 = sub_22C5EC74C(sub_22C5EDB54, v39, v36, MEMORY[0x277D721A0]);

    v42(v37, v32);
    if ((v34 & 1) == 0 && v45)
    {
      sub_22C908E9C();
      sub_22C908FBC();
      v34 = sub_22C90AE0C();
      v40 = v43;
      v43(v19, v11);
      v40(v21, v11);
    }
  }

  return v34 & 1;
}

uint64_t ResponseModeRequirementEvaluator.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_22C90687C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_22C3A5908(&qword_27D9BF1C0, &qword_22C9221F8);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9BD760, &qword_22C922200) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C5ECE40, 0, 0);
}

uint64_t sub_22C5ECE40()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[2] = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  sub_22C907EAC();

  v3 = sub_22C903B1C();
  v4 = sub_22C36C080(v1);
  v5 = v0[17];
  v6 = v0[12];
  if (v4 == 1)
  {
    v7 = v0[6];
    sub_22C36DD28(v0[12], &qword_27D9BD760, &qword_22C922200);
    sub_22C36C640(v5, 1, 1, v7);
  }

  else
  {
    StructuredContext.SiriRequestContext.mode.getter(v0[17]);
    (*(*(v3 - 8) + 8))(v6, v3);
  }

  v8 = v0[16];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[6];
  v12 = *(v0[7] + 104);
  v12(v8, *MEMORY[0x277D1DC30], v11);
  sub_22C5EDB90();
  v13 = *(v10 + 48);
  v14 = sub_22C36BA00();
  sub_22C5ED828(v14, v15);
  sub_22C5ED828(v8, v9 + v13);
  if (sub_22C370B74(v9, 1, v11) == 1)
  {
    v16 = v0[6];
    sub_22C36DD28(v0[16], &qword_27D9BF1C8, &unk_22C922208);
    if (sub_22C36C080(v9 + v13) == 1)
    {
      v17 = v0[11];
LABEL_13:
      sub_22C36DD28(v17, &qword_27D9BF1C8, &unk_22C922208);
LABEL_18:
      v44 = 0;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v18 = v0[6];
  sub_22C5ED828(v0[11], v0[15]);
  v19 = sub_22C36C080(v9 + v13);
  v20 = v0[15];
  v21 = v0[16];
  if (v19 == 1)
  {
    v22 = v0[6];
    v23 = v0[7];
    sub_22C36DD28(v0[16], &qword_27D9BF1C8, &unk_22C922208);
    v24 = *(v23 + 8);
    v25 = sub_22C36BA00();
    v26(v25);
LABEL_9:
    sub_22C36DD28(v0[11], &qword_27D9BF1C0, &qword_22C9221F8);
    goto LABEL_10;
  }

  v77 = v0[11];
  v78 = v10;
  v45 = v0[7];
  v46 = v0[8];
  v47 = v0[6];
  (*(v45 + 32))(v46, v9 + v13, v47);
  sub_22C373668();
  sub_22C5EDAF0(v48, v49);
  v76 = sub_22C38BC18();
  v50 = *(v45 + 8);
  v50(v46, v47);
  sub_22C36DD28(v21, &qword_27D9BF1C8, &unk_22C922208);
  v50(v20, v47);
  v10 = v78;
  sub_22C36DD28(v77, &qword_27D9BF1C8, &unk_22C922208);
  if (v76)
  {
    goto LABEL_18;
  }

LABEL_10:
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[10];
  v30 = v0[6];
  v12(v28, *MEMORY[0x277D1DC20], v30);
  sub_22C5EDB90();
  v31 = *(v10 + 48);
  v32 = sub_22C36BA00();
  sub_22C5ED828(v32, v33);
  sub_22C5ED828(v28, v29 + v31);
  if (sub_22C370B74(v29, 1, v30) == 1)
  {
    v34 = v0[6];
    sub_22C36DD28(v0[14], &qword_27D9BF1C8, &unk_22C922208);
    if (sub_22C36C080(v29 + v31) == 1)
    {
      v17 = v0[10];
      goto LABEL_13;
    }

LABEL_16:
    sub_22C36DD28(v0[10], &qword_27D9BF1C0, &qword_22C9221F8);
    v44 = 1;
    goto LABEL_20;
  }

  v35 = v0[6];
  sub_22C5ED828(v0[10], v0[13]);
  v36 = sub_22C36C080(v29 + v31);
  v37 = v0[13];
  v38 = v0[14];
  if (v36 == 1)
  {
    v39 = v0[6];
    v40 = v0[7];
    sub_22C36DD28(v0[14], &qword_27D9BF1C8, &unk_22C922208);
    v41 = *(v40 + 8);
    v42 = sub_22C36BA00();
    v43(v42);
    goto LABEL_16;
  }

  v51 = v0[10];
  v53 = v0[7];
  v52 = v0[8];
  v54 = v0[6];
  (*(v53 + 32))(v52, v29 + v31, v54);
  sub_22C373668();
  sub_22C5EDAF0(v55, v56);
  v57 = sub_22C38BC18();
  v58 = *(v53 + 8);
  v58(v52, v54);
  sub_22C36DD28(v38, &qword_27D9BF1C8, &unk_22C922208);
  v58(v37, v54);
  sub_22C36DD28(v51, &qword_27D9BF1C8, &unk_22C922208);
  v44 = v57 ^ 1;
LABEL_20:
  v59 = v0[4];
  v60 = ToolDefinition.isAppLaunchRequired(willRunOpensIntent:)(v44 & 1);
  v61 = v0[17];
  v62 = v0[3];
  if (v60)
  {
    sub_22C36DD28(v0[17], &qword_27D9BF1C8, &unk_22C922208);
  }

  else
  {
    sub_22C5EA97C(&unk_283FAFA60);
    v64 = v63;
    sub_22C36DD28(v61, &qword_27D9BF1C8, &unk_22C922208);
    *v62 = v64;
  }

  type metadata accessor for RequirementStatus();
  swift_storeEnumTagMultiPayload();
  v66 = v0[16];
  v65 = v0[17];
  v68 = v0[14];
  v67 = v0[15];
  v70 = v0[12];
  v69 = v0[13];
  v72 = v0[10];
  v71 = v0[11];
  v73 = v0[8];

  v74 = v0[1];

  return v74();
}

uint64_t sub_22C5ED424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C3B00E8;

  return ResponseModeRequirementEvaluator.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t sub_22C5ED4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C90B4FC() & 1;
  }
}

uint64_t sub_22C5ED518(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_22C5EDAF0(a4, a5);
  return sub_22C90A0BC() & 1;
}

uint64_t sub_22C5ED7D4()
{
  v1 = *(v0 + 16);
  sub_22C36AD58();
  return sub_22C5ED518(v2, v3, v4, v5, MEMORY[0x277D721A0]) & 1;
}

uint64_t sub_22C5ED828(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF1C8, &unk_22C922208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5ED9B8()
{
  v0 = sub_22C90A11C();
  v2 = v1;
  if (v0 == sub_22C90A11C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22C90B4FC();
  }

  return v5 & 1;
}

_BYTE *storeEnumTagSinglePayload for ResponseModeRequirementEvaluator(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C5EDAF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C5EDB90()
{

  return sub_22C36C640(v0, 0, 1, v1);
}

void sub_22C5EDC28(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v77 = a3;
  v64 = a5;
  v67 = a1;
  v68 = a2;
  v6 = sub_22C3A5908(a1, a2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64 - v8;
  v75 = sub_22C90957C();
  v10 = sub_22C369824(v75);
  v69 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v74 = v15 - v14;
  v16 = sub_22C90969C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C36993C();
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  v25 = sub_22C90941C();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v33 = v32 - v31;
  MEMORY[0x2318B6CE0]();
  v34 = v16;
  v35 = sub_22C9093FC();
  (*(v28 + 8))(v33, v25);
  v37 = v35 + 56;
  v36 = *(v35 + 56);
  v38 = *(v35 + 32);
  sub_22C373680();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v80 = v19 + 32;
  v81 = v19 + 16;
  v79 = v19 + 88;
  v78 = *MEMORY[0x277D72FA0];
  v71 = (v19 + 96);
  v72 = (v19 + 8);
  v45 = v69++;
  v70 = (v45 + 4);
  v65 = v19;
  v66 = v24;
  v73 = v35;
  while (v42)
  {
    v46 = v39;
LABEL_7:
    v47 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    (*(v19 + 16))(v24, *(v35 + 48) + *(v19 + 72) * (v47 | (v46 << 6)), v34);
    v48 = *(v19 + 32);
    v49 = sub_22C36BC58();
    v50(v49);
    v51 = (*(v19 + 88))(v5, v34);
    if (v51 == v78)
    {
      v52 = v34;
      (*v71)(v5, v34);
      v53 = sub_22C3A5908(&qword_27D9BF208, &qword_22C927740);
      v54 = v74;
      v55 = v75;
      (*v70)(v74, v5 + *(v53 + 48), v75);
      v56 = sub_22C90966C();
      sub_22C36985C(v56);
      v58 = (*(v57 + 8))(v5);
      v76(v58);
      (*v69)(v54, v55);
      v59 = v77(0);
      if (sub_22C370B74(v9, 1, v59) != 1)
      {

        (*(*(v59 - 8) + 32))(v64, v9, v59);
        v61 = sub_22C38BC3C();
LABEL_12:
        sub_22C36C640(v61, v62, v63, v60);
        return;
      }

      sub_22C36DD28(v9, v67, v68);
      v39 = v46;
      v34 = v52;
      v19 = v65;
      v24 = v66;
      v35 = v73;
    }

    else
    {
      (*v72)(v5, v34);
      v39 = v46;
    }
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v44)
    {

      v60 = v77(0);
      v61 = v64;
      v62 = 1;
      v63 = 1;
      goto LABEL_12;
    }

    v42 = *(v37 + 8 * v46);
    ++v39;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void ParameterDefinition.comparisonSeachPredicateTemplates.getter()
{
  v49 = sub_22C90957C();
  v0 = *(v49 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  sub_22C369838();
  v59 = v3 - v2;
  v4 = sub_22C90969C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = sub_22C90941C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v23 = v22 - v21;
  MEMORY[0x2318B6CE0]();
  v24 = v4;
  v25 = sub_22C9093FC();
  (*(v18 + 8))(v23, v15);
  v27 = v25 + 56;
  v26 = *(v25 + 56);
  v28 = *(v25 + 32);
  sub_22C373680();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;
  v57 = v7 + 32;
  v58 = v7 + 16;
  v56 = v7 + 88;
  v55 = *MEMORY[0x277D72FA0];
  v51 = (v7 + 96);
  v52 = (v7 + 8);
  v50 = (v0 + 32);
  v53 = v0 + 8;
  v54 = v25;
  v48 = v7;
  while (v32)
  {
    v35 = v29;
    v36 = v59;
LABEL_8:
    v37 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    (*(v7 + 16))(v14, *(v25 + 48) + *(v7 + 72) * (v37 | (v35 << 6)), v24);
    (*(v7 + 32))(v12, v14, v24);
    v38 = (*(v7 + 88))(v12, v24);
    if (v38 == v55)
    {
      (*v51)(v12, v24);
      v39 = sub_22C3A5908(&qword_27D9BF208, &qword_22C927740);
      (*v50)(v36, &v12[*(v39 + 48)], v49);
      v40 = sub_22C90966C();
      sub_22C36985C(v40);
      v42 = v12;
      (*(v41 + 8))(v12);
      v43 = *(sub_22C90954C() + 16);

      if (v43)
      {
        sub_22C90954C();

        v46 = sub_22C371ABC();
        v47(v46);
        return;
      }

      v44 = sub_22C371ABC();
      v45(v44);
      v29 = v35;
      v12 = v42;
      v7 = v48;
      v25 = v54;
    }

    else
    {
      (*v52)(v12, v24);
      v29 = v35;
    }
  }

  v36 = v59;
  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      return;
    }

    v32 = *(v27 + 8 * v35);
    ++v29;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22C5EE4F4(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_22C90969C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C36993C();
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_22C90941C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = v18 - v17;
  MEMORY[0x2318B6CE0]();
  v20 = sub_22C9093FC();
  (*(v14 + 8))(v19, v11);
  v21 = *(v20 + 56);
  v22 = *(v20 + 32);
  sub_22C373680();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v50 = v5 + 32;
  v51 = v5 + 16;
  v49 = v5 + 88;
  v48 = *MEMORY[0x277D72E78];
  if ((v25 & v24) != 0)
  {
    while (1)
    {
      v29 = v23;
LABEL_6:
      (*(v5 + 16))(v10, *(v20 + 48) + *(v5 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v2);
      (*(v5 + 32))(v1, v10, v2);
      v30 = *(v5 + 88);
      v31 = sub_22C36BC58();
      v33 = v32(v31);
      if (v33 == v48)
      {
        break;
      }

      v26 &= v26 - 1;
      v34 = *(v5 + 8);
      v35 = sub_22C36BC58();
      v36(v35);
      v23 = v29;
      if (!v26)
      {
        goto LABEL_3;
      }
    }

    v41 = *(v5 + 96);
    v42 = sub_22C36BC58();
    v43(v42);
    v44 = sub_22C90967C();
    sub_22C36985C(v44);
    (*(v45 + 32))(v47, v1, v44);
    v38 = sub_22C38BC3C();
LABEL_10:
    sub_22C36C640(v38, v39, v40, v37);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v29 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        v37 = sub_22C90967C();
        v38 = v47;
        v39 = 1;
        v40 = 1;
        goto LABEL_10;
      }

      v26 = *(v20 + 56 + 8 * v29);
      ++v23;
      if (v26)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

char *sub_22C5EE7DC()
{
  v1 = sub_22C9063DC();
  v2 = *(v1 - 8);
  v136 = v1;
  v137 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v138 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  v135 = &v123 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  v134 = &v123 - v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v133 = &v123 - v10;
  sub_22C369930();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v123 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v123 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v123 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v123 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v123 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v123 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v123 - v30;
  v32 = *(v0 + 16);
  v33 = v139;
  v34 = sub_22C5EF3C0(v32, 9, 50, 15);
  v139 = v33;
  if (v33)
  {
    goto LABEL_2;
  }

  v130 = v14;
  v131 = v0;
  v36 = v138;
  v128 = v20;
  v129 = v17;
  v126 = v26;
  v127 = v23;
  v124 = v31;
  v125 = v29;
  v132 = v34;

  if (!v132)
  {
    v40 = v36;
    sub_22C903FAC();
    v41 = sub_22C9063CC();
    v42 = sub_22C90AADC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = sub_22C36D240();
      sub_22C36D944(v43);
      sub_22C372A84();
    }

    sub_22C5F04EC();
    v45 = v40;
    goto LABEL_10;
  }

  v37 = v131;
  v32 = *(v131 + 32);
  v38 = v139;
  v39 = sub_22C5EFA80(v32, 1000, 8);
  if (!v38)
  {
    v46 = v39;

    if (!v46)
    {
      v48 = v135;
      sub_22C903FAC();
      v49 = sub_22C9063CC();
      v50 = sub_22C90AADC();
      if (sub_22C369E90(v50))
      {
        v51 = sub_22C36D240();
        sub_22C36D944(v51);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v45 = v48;
      goto LABEL_10;
    }

    v47 = v37[5];
    v54 = sub_22C5EFA80(v47, 1000, 2);

    if (!v54)
    {
      v56 = v134;
      sub_22C903FAC();
      v57 = sub_22C9063CC();
      v58 = sub_22C90AADC();
      if (sub_22C369E90(v58))
      {
        v59 = sub_22C36D240();
        sub_22C36D944(v59);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v45 = v56;
      goto LABEL_10;
    }

    v55 = v37[6];
    v62 = sub_22C5EFA80(v55, 1000, 7);

    if (!v62)
    {
      v64 = v133;
      sub_22C903FAC();
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      if (sub_22C369E90(v66))
      {
        v67 = sub_22C36D240();
        sub_22C36D944(v67);
        sub_22C372A84();
      }

      sub_22C5F04EC();
      v45 = v64;
      goto LABEL_10;
    }

    v63 = v37[7];
    v70 = sub_22C5EFA80(v63, 10, 3);
    v138 = v54;

    if (!v70)
    {
      v75 = v130;
      sub_22C903FAC();
      v76 = sub_22C9063CC();
      v77 = sub_22C90AADC();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v136;
      v80 = v137;
      if (v78)
      {
        v81 = sub_22C36D240();
        *v81 = 0;
        sub_22C3699EC();
      }

      (*(v80 + 8))(v75, v79);
      return 0;
    }

    v71 = v37[8];
    v72 = sub_22C5EFA80(v71, 50, 2);
    v73 = v136;
    v74 = v137;
    v82 = v72;

    v135 = v82;
    if (v82)
    {
      v83 = *(v131 + 72);
      v89 = sub_22C5EFA80(v83, 50, 15);
      v90 = v70;

      if (!v89)
      {
        sub_22C903FAC();
        v92 = sub_22C9063CC();
        v93 = sub_22C90AADC();
        if (sub_22C369E90(v93))
        {
          v94 = sub_22C36D240();
          sub_22C36D944(v94);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v45 = v128;
        goto LABEL_10;
      }

      v91 = *(v131 + 80);
      v134 = sub_22C5F0048(v91, 4);

      if (!v134)
      {
        sub_22C903FAC();
        v97 = sub_22C9063CC();
        v98 = sub_22C90AADC();
        if (sub_22C369E90(v98))
        {
          v99 = sub_22C36D240();
          sub_22C36D944(v99);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v45 = v127;
LABEL_10:
        v44(v45, v136);
        return 0;
      }

      v102 = sub_22C36C098(*(v131 + 88));

      if (!v102)
      {
        sub_22C903FAC();
        v103 = sub_22C9063CC();
        v104 = sub_22C90AADC();
        if (sub_22C369E90(v104))
        {
          v105 = sub_22C36D240();
          sub_22C36D944(v105);
          sub_22C372A84();
        }

        sub_22C5F04EC();
        v45 = v126;
        goto LABEL_10;
      }

      v108 = sub_22C36C098(*(v131 + 96));

      if (!v108)
      {
        sub_22C903FAC();
        v110 = sub_22C9063CC();
        v111 = sub_22C90AADC();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = sub_22C36D240();
          *v112 = 0;
          sub_22C3699EC();
        }

        sub_22C5F04EC();
        v45 = v125;
        goto LABEL_10;
      }

      v109 = sub_22C36C098(*(v131 + 104));
      v139 = 0;
      v113 = v109;

      if (v113)
      {
        v137 = *(v131 + 24);
        v114 = *(v131 + 112);
        type metadata accessor for PlanResolutionModelInput();
        swift_allocObject();
        *(&v122 + 1) = v113;
        *(&v121 + 1) = v102;
        *&v122 = v108;
        *&v121 = v134;
        v115 = v137;
        v14 = sub_22C8FDB98(v132, v137, v46, v138, v62, v90, v135, v89, v121, v122, v114);
        v116 = v115;
        v117 = v114;
        return v14;
      }

      sub_22C903FAC();
      v118 = sub_22C9063CC();
      v119 = sub_22C90AADC();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = sub_22C36D240();
        *v120 = 0;
        sub_22C3699EC();
      }

      (v137)[1](v124, v136);
    }

    else
    {
      v84 = v70;
      v139 = 0;
      v85 = v129;
      sub_22C903FAC();
      v86 = sub_22C9063CC();
      v87 = sub_22C90AADC();
      if (sub_22C369E90(v87))
      {
        v88 = sub_22C36D240();
        *v88 = 0;
        sub_22C3699EC();
      }

      (*(v74 + 8))(v85, v73);
    }

    return 0;
  }

LABEL_2:
  return v14;
}

id sub_22C5EF3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22C9063DC();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = v61 - v14;
  v15 = [a1 shape];
  v16 = sub_22C3D3108();
  v17 = sub_22C90A5EC();

  v18 = sub_22C36E2B8(v17);

  if (v18 == 3)
  {
    v19 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v20 = swift_allocObject();
    v72 = xmmword_22C922270;
    *(v20 + 16) = xmmword_22C922270;
    *(v20 + 32) = sub_22C90A91C();
    *(v20 + 40) = sub_22C90A91C();
    *(v20 + 48) = sub_22C90A91C();
    v21 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    result = sub_22C5F2214(v20, 65568);
    if (!v4)
    {
      v26 = result;
      v65 = a2;
      v61[1] = 0;
      v62 = a4;
      v27 = sub_22C90ABEC();
      [v26 fillWithNumber_];

      v67 = a1;
      v28 = [a1 shape];
      v29 = sub_22C90A5EC();

      sub_22C633A2C(0, (v29 & 0xC000000000000001) == 0, v29);
      v73 = v19;
      v66 = v26;
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }

      v30 = *(v29 + 32);
LABEL_9:
      v31 = v30;
      v32 = v70;
      v33 = v65;

      v34 = [(objc_class *)v31 integerValue];

      if (v34 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v34;
      }

      v64 = v35;
      v36 = [v67 shape];
      v37 = sub_22C90A5EC();

      sub_22C633A2C(1, (v37 & 0xC000000000000001) == 0, v37);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x2318B8460](1, v37);
      }

      else
      {
        v38 = *(v37 + 40);
      }

      v39 = v38;

      v40 = [v39 integerValue];

      if (v40 >= a3)
      {
        v41 = a3;
      }

      else
      {
        v41 = v40;
      }

      v68 = v41;
      v42 = [v67 shape];
      v43 = sub_22C90A5EC();

      sub_22C633A2C(2, (v43 & 0xC000000000000001) == 0, v43);
      v44 = v63;
      if ((v43 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x2318B8460](2, v43);
      }

      else
      {
        v45 = *(v43 + 48);
      }

      v46 = v45;

      v47 = [v46 integerValue];

      v48 = v62;
      if (v47 >= v62)
      {
        v49 = v62;
      }

      else
      {
        v49 = v47;
      }

      sub_22C903FAC();
      v29 = sub_22C9063CC();
      v50 = sub_22C90AABC();
      if (os_log_type_enabled(v29, v50))
      {
        v51 = v49;
        v52 = swift_slowAlloc();
        *v52 = 134218496;
        *(v52 + 4) = v65;
        *(v52 + 12) = 2048;
        *(v52 + 14) = a3;
        *(v52 + 22) = 2048;
        *(v52 + 24) = v48;
        _os_log_impl(&dword_22C366000, v29, v50, "3d reshaping with %ld,%ld,%ld", v52, 0x20u);
        v53 = v52;
        v49 = v51;
        MEMORY[0x2318B9880](v53, -1, -1);
      }

      v65 = v16;

      result = (*(v32 + 8))(v44, v71);
      if (v64 < 0)
      {
        __break(1u);
      }

      else
      {
        if (!v64)
        {
          return v66;
        }

        if ((v68 & 0x8000000000000000) == 0)
        {
          v69 = v49;
          v70 = 0;
          while (1)
          {
            if (v68)
            {
              if (v49 < 0)
              {
                __break(1u);
LABEL_38:
                v30 = MEMORY[0x2318B8460](0, v29);
                goto LABEL_9;
              }

              for (i = 0; i != v68; ++i)
              {
                v16 = v66;
                v55 = v67;
                if (v49)
                {
                  v56 = 0;
                  do
                  {
                    v71 = v56 + 1;
                    a3 = swift_allocObject();
                    *(a3 + 16) = v72;
                    *(a3 + 32) = sub_22C90A91C();
                    *(a3 + 40) = sub_22C90A91C();
                    *(a3 + 48) = sub_22C90A91C();
                    v57 = swift_allocObject();
                    *(v57 + 16) = v72;
                    *(v57 + 32) = sub_22C90A91C();
                    *(v57 + 40) = sub_22C90A91C();
                    *(v57 + 48) = sub_22C90A91C();
                    v58 = sub_22C90A5DC();

                    v59 = [v55 0x1FB4DDAF8];

                    v60 = sub_22C90A5DC();
                    v29 = &off_278729000;

                    [v16 setObject:v59 forKeyedSubscript:v60];

                    v49 = v69;
                    v56 = v71;
                  }

                  while (v49 != v71);
                }
              }
            }

            if (++v70 == v64)
            {
              return v66;
            }
          }
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_22C903FAC();
    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22C366000, v23, v24, "PlanResolutionModelInput#reshape3dMultiArray: Input array is not 3 dimentional", v25, 2u);
      MEMORY[0x2318B9880](v25, -1, -1);
    }

    (*(v70 + 8))(v13, v71);
    return 0;
  }

  return result;
}

id sub_22C5EFA80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9063DC();
  i = *(v7 - 8);
  v8 = *(i + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = v53 - v12;
  v13 = [a1 shape];
  v14 = sub_22C3D3108();
  v15 = sub_22C90A5EC();

  v16 = sub_22C36E2B8(v15);

  if (v16 == 2)
  {
    v17 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v18 = swift_allocObject();
    v60 = xmmword_22C922280;
    *(v18 + 16) = xmmword_22C922280;
    *(v18 + 32) = sub_22C90A91C();
    *(v18 + 40) = sub_22C90A91C();
    v19 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    result = sub_22C5F2214(v18, 65568);
    if (v3)
    {
      return result;
    }

    v24 = a3;
    v54 = v7;
    v57 = v14;
    v25 = result;
    v26 = sub_22C90ABEC();
    v58 = v25;
    [v25 fillWithNumber_];

    v59 = a1;
    v27 = [a1 shape];
    v28 = sub_22C90A5EC();

    sub_22C633A2C(0, (v28 & 0xC000000000000001) == 0, v28);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2318B8460](0, v28);
    }

    else
    {
      v29 = *(v28 + 32);
    }

    v30 = v29;

    v31 = [v30 integerValue];

    if (v31 >= a2)
    {
      v32 = a2;
    }

    else
    {
      v32 = v31;
    }

    v56 = v32;
    v33 = [v59 shape];
    v34 = sub_22C90A5EC();

    sub_22C633A2C(1, (v34 & 0xC000000000000001) == 0, v34);
    v53[1] = 0;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x2318B8460](1, v34);
    }

    else
    {
      v35 = *(v34 + 40);
    }

    v36 = v35;
    v37 = v55;

    v38 = [v36 integerValue];

    if (v38 >= a3)
    {
      v39 = a3;
    }

    else
    {
      v39 = v38;
    }

    sub_22C903FAC();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134218240;
      *(v42 + 4) = a2;
      *(v42 + 12) = 2048;
      *(v42 + 14) = v24;
      _os_log_impl(&dword_22C366000, v40, v41, "2d reshaping with %ld,%ld", v42, 0x16u);
      MEMORY[0x2318B9880](v42, -1, -1);
    }

    v55 = v17;

    result = (*(i + 8))(v37, v54);
    if (v56 < 0)
    {
      __break(1u);
    }

    else
    {
      if (!v56)
      {
        return v58;
      }

      if ((v39 & 0x8000000000000000) == 0)
      {
        for (i = 0; i != v56; ++i)
        {
          if (v39)
          {
            v43 = 0;
            do
            {
              v44 = v39;
              v45 = v43 + 1;
              v46 = swift_allocObject();
              *(v46 + 16) = v60;
              *(v46 + 32) = sub_22C90A91C();
              *(v46 + 40) = sub_22C90A91C();
              v47 = swift_allocObject();
              *(v47 + 16) = v60;
              *(v47 + 32) = sub_22C90A91C();
              *(v47 + 40) = sub_22C90A91C();
              v48 = sub_22C90A5DC();

              v49 = [v59 0x1FB4DDAF8];

              v50 = sub_22C90A5DC();
              v51 = v58;

              [v51 setObject:v49 forKeyedSubscript:v50];

              v43 = v45;
              v52 = v44 == v45;
              v39 = v44;
            }

            while (!v52);
          }
        }

        return v58;
      }
    }

    __break(1u);
    return result;
  }

  sub_22C903FAC();
  v21 = sub_22C9063CC();
  v22 = sub_22C90AADC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22C366000, v21, v22, "PlanResolutionModelInput#reshape2dMultiArray: Input array is not 2 dimentional", v23, 2u);
    MEMORY[0x2318B9880](v23, -1, -1);
  }

  (*(i + 8))(v11, v7);
  return 0;
}

uint64_t sub_22C5F0048(void *a1, uint64_t a2)
{
  v5 = sub_22C9063DC();
  v46 = *(v5 - 1);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  v44 = a1;
  v12 = [a1 shape];
  sub_22C3D3108();
  v13 = sub_22C90A5EC();

  v14 = sub_22C36E2B8(v13);

  if (v14 != 1)
  {
    sub_22C903FAC();
    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22C366000, v18, v19, "PlanResolutionModelInput#reshape1dMultiArray: Input array is not 1 dimentional", v20, 2u);
      MEMORY[0x2318B9880](v20, -1, -1);
    }

    (*(v46 + 8))(v9, v5);
    return 0;
  }

  v43 = v5;
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v15 = swift_allocObject();
  v45 = xmmword_22C922290;
  *(v15 + 16) = xmmword_22C922290;
  *(v15 + 32) = sub_22C90A91C();
  v16 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v17 = sub_22C5F2214(v15, 65568);
  if (v2)
  {
    return v5;
  }

  v5 = v17;
  v21 = sub_22C90ABEC();
  [v5 fillWithNumber_];

  v22 = v44;
  v23 = [v44 shape];
  v24 = sub_22C90A5EC();

  sub_22C633A2C(0, (v24 & 0xC000000000000001) == 0, v24);
  v42[1] = 0;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x2318B8460](0, v24);
  }

  else
  {
    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = [v26 integerValue];

  if (v27 >= a2)
  {
    v28 = a2;
  }

  else
  {
    v28 = v27;
  }

  sub_22C903FAC();
  v29 = sub_22C9063CC();
  v30 = sub_22C90AABC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = a2;
    _os_log_impl(&dword_22C366000, v29, v30, "1d reshaping with %ld", v31, 0xCu);
    v32 = v31;
    v22 = v44;
    MEMORY[0x2318B9880](v32, -1, -1);
  }

  result = (*(v46 + 8))(v11, v43);
  if ((v28 & 0x8000000000000000) == 0)
  {
    if (v28)
    {
      v34 = v22;
      v35 = 0;
      do
      {
        v36 = v35 + 1;
        v37 = swift_allocObject();
        *(v37 + 16) = v45;
        *(v37 + 32) = sub_22C90A91C();
        v38 = swift_allocObject();
        *(v38 + 16) = v45;
        *(v38 + 32) = sub_22C90A91C();
        v39 = sub_22C90A5DC();

        v40 = [v34 objectForKeyedSubscript_];

        v41 = sub_22C90A5DC();

        [v5 setObject:v40 forKeyedSubscript:v41];

        v35 = v36;
      }

      while (v28 != v36);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5F04F8(uint64_t a1)
{
  v3 = sub_22C9063DC();
  v105 = sub_22C369824(v3);
  v106 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22C369ABC();
  v104 = (v7 - v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v99 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v103 = &v99 - v14;
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v102 = v15;
  v16 = [*(a1 + 32) shape];
  sub_22C3D3108();
  v17 = sub_22C90A5EC();

  v18 = sub_22C5F2370();
  sub_22C633A2C(v18, v19, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2318B8460](0, v17);
  }

  else
  {
    v20 = *(v17 + 32);
  }

  v21 = v20;

  v22 = [v21 integerValue];

  v23 = *(a1 + 16);
  sub_22C5F0BAC(v23);
  if (v1)
  {
    v25 = v104;

    sub_22C903FAC();
    v26 = v1;
    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();

    if (os_log_type_enabled(v27, v28))
    {
      sub_22C37FE78();
      v29 = swift_slowAlloc();
      sub_22C37080C();
      v30 = swift_slowAlloc();
      sub_22C370220();
      v31 = swift_slowAlloc();
      v107 = v31;
      *v29 = 136315394;
      sub_22C36A0FC();
      *(v29 + 4) = sub_22C37A21C(v32, v33, v34);
      *(v29 + 12) = 2112;
      v35 = v1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_22C366000, v27, v28, "[%s]: Error creating new deflated ModelOutput: %@", v29, 0x16u);
      sub_22C5AB9D0(v30);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C36FF94(v31);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v37 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v37);
    }

    else
    {
    }

    sub_22C36D950();
    v55 = v25;
LABEL_17:
    v54(v55, v105);
    return 0;
  }

  v100 = v22;
  v101 = v24;

  if (!v101)
  {
    sub_22C903FAC();
    v57 = sub_22C9063CC();
    v58 = sub_22C90AADC();
    if (sub_22C369E90(v58))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v59 = swift_slowAlloc();
      v107 = v59;
      LODWORD(off_278729000) = 136315138;
      sub_22C36A0FC();
      *(&off_278729000 + 4) = sub_22C37A21C(v60, v61, v62);
      sub_22C3729C4(&dword_22C366000, v63, v64, "[%s]: Unable to deflate rankings");
      sub_22C36FF94(v59);
      v65 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v65);
      v66 = sub_22C36D66C();
      MEMORY[0x2318B9880](v66);
    }

    sub_22C36D950();
    v55 = v12;
    goto LABEL_17;
  }

  v38 = [*(a1 + 16) shape];
  v39 = sub_22C90A5EC();

  v40 = sub_22C5F2370();
  sub_22C633A2C(v40, v41, v39);
  if ((v39 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x2318B8460](0, v39);
  }

  else
  {
    v42 = *(v39 + 32);
  }

  v43 = v42;
  v44 = v104;

  v45 = [v43 integerValue];

  if (v45 >= 50)
  {
    v45 = 50;
  }

  v46 = [*(a1 + 16) &selRef_webSocketTaskWithURL_ + 3];
  v47 = sub_22C90A5EC();

  sub_22C633A2C(2, (v47 & 0xC000000000000001) == 0, v47);
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x2318B8460](2, v47);
  }

  else
  {
    v48 = *(v47 + 48);
  }

  v49 = v48;

  v50 = [v49 integerValue];

  sub_22C5F147C(v45, v50, 50, 15, 4);
  v52 = v51;
  if (!v51)
  {
    v67 = v103;
    sub_22C903FAC();
    v68 = sub_22C9063CC();
    v69 = sub_22C90AADC();
    if (sub_22C369E90(v69))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v70 = swift_slowAlloc();
      v107 = v70;
      *v44 = 136315138;
      sub_22C36A0FC();
      *(v44 + 4) = sub_22C37A21C(v71, v72, v73);
      sub_22C3729C4(&dword_22C366000, v74, v75, "[%s]: Unable to deflate diagnostics");
      sub_22C36FF94(v70);
      v76 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v76);
      v77 = sub_22C36D66C();
      MEMORY[0x2318B9880](v77);
    }

    sub_22C36D950();
    v55 = v67;
    goto LABEL_17;
  }

  v53 = sub_22C5F1C18(v100);
  v78 = v53;
  if (!v53)
  {
    v89 = v102;
    sub_22C903FAC();
    v90 = sub_22C9063CC();
    v91 = sub_22C90AADC();
    if (sub_22C369E90(v91))
    {
      swift_slowAlloc();
      sub_22C3735E4();
      v92 = swift_slowAlloc();
      v107 = v92;
      *v44 = 136315138;
      sub_22C36A0FC();
      *(v44 + 4) = sub_22C37A21C(v93, v94, v95);
      sub_22C3729C4(&dword_22C366000, v96, v97, "[%s]: Unable to deflate anonymized history");
      sub_22C36FF94(v92);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v98 = sub_22C36D66C();
      MEMORY[0x2318B9880](v98);
    }

    sub_22C36D950();
    v55 = v89;
    goto LABEL_17;
  }

  sub_22C8FDC98();
  v80 = v79;
  sub_22C8FDCAC();
  v82 = v81;
  sub_22C8FDD3C();
  v84 = v83;
  sub_22C8FDD60();
  v86 = v85;
  sub_22C8FDEB0();
  v88 = v87;
  type metadata accessor for PlanResolutionModelOutput();
  swift_allocObject();
  return sub_22C8FE0E8(v80, v82, v84, v86, v101, v52, v78, v88);
}

void sub_22C5F0BAC(void *a1)
{
  v79 = sub_22C9063DC();
  v2 = sub_22C369824(v79);
  v81 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v82 = v10;
  sub_22C8FDDF0();
  v11 = &off_278729000;
  v78 = v12;
  v13 = [v12 shape];
  v14 = sub_22C3D3108();
  v15 = sub_22C90A5EC();

  v16 = v15 & 0xC000000000000001;
  v17 = sub_22C5F2370();
  sub_22C633A2C(v17, v18, v15);
  v74 = v8;
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  v19 = *(v15 + 32);
  while (1)
  {
    sub_22C38A9E8();
    v20 = sub_22C5F23A0();

    v21 = [v78 *(v11 + 3520)];
    v22 = sub_22C90A5EC();

    sub_22C37F3C0();
    if (v16)
    {
      MEMORY[0x2318B8460](1, v22);
    }

    else
    {
      v23 = *(v22 + 40);
    }

    sub_22C38A9E8();
    v75 = sub_22C5F23A0();

    v24 = [v78 *(v11 + 3520)];
    v25 = sub_22C90A5EC();

    v26 = v25 & 0xC000000000000001;
    sub_22C633A2C(2, (v25 & 0xC000000000000001) == 0, v25);
    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318B8460](2, v25);
    }

    else
    {
      v27 = *(v25 + 48);
    }

    sub_22C38A9E8();
    v72 = sub_22C5F23A0();

    v28 = [a1 *(v11 + 3520)];
    v29 = sub_22C90A5EC();

    sub_22C37F3C0();
    if (v26)
    {
      MEMORY[0x2318B8460](1, v29);
    }

    else
    {
      v30 = *(v29 + 40);
    }

    sub_22C38A9E8();
    v16 = sub_22C5F23A0();

    v31 = [a1 *(v11 + 3520)];
    v80 = v14;
    v32 = sub_22C90A5EC();

    sub_22C633A2C(2, (v32 & 0xC000000000000001) == 0, v32);
    v77 = a1;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x2318B8460](2, v32);
    }

    else
    {
      v33 = *(v32 + 48);
    }

    v34 = v33;
    v35 = v20;

    v11 = sub_22C5F23A0();

    sub_22C903FAC();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AABC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      sub_22C370220();
      v39 = swift_slowAlloc();
      v83 = v39;
      *v38 = 136316674;
      *(v38 + 4) = sub_22C36F9F4(0xD00000000000002DLL, 0x800000022C933050, &v83);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v35;
      *(v38 + 22) = 2048;
      *(v38 + 24) = v75;
      *(v38 + 32) = 2048;
      *(v38 + 34) = v72;
      *(v38 + 42) = 2048;
      *(v38 + 44) = v35;
      *(v38 + 52) = 2048;
      *(v38 + 54) = v16;
      *(v38 + 62) = 2048;
      *(v38 + 64) = v11;
      _os_log_impl(&dword_22C366000, v36, v37, "[%s]: Source:%ldx%ldx%ld, Target:%ldx%ldx%ld", v38, 0x48u);
      sub_22C36FF94(v39);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v40 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v40);
    }

    v73 = *(v81 + 8);
    v73(v82, v79);
    v13 = v78;
    sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v41 = swift_allocObject();
    v82 = 3;
    *(v41 + 16) = xmmword_22C922270;
    *(v41 + 32) = sub_22C90A91C();
    *(v41 + 40) = sub_22C90A91C();
    *(v41 + 48) = sub_22C90A91C();
    v42 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v43 = sub_22C5F2214(v41, 65568);
    a1 = v76;
    if (v76)
    {
      break;
    }

    v56 = v43;
    v74 = 0;
    v57 = sub_22C90ABEC();
    [v56 fillWithNumber_];

    v58 = v75;
    if (v16 < v75)
    {
      v58 = v16;
    }

    if (v58 < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v76 = v16;
    v81 = v11;
    v14 = v56;
    if (v58)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v59 = 0;
      v79 = v58;
      do
      {
        a1 = v80;
        if (v11)
        {
          v60 = 0;
          do
          {
            v16 = v60 + 1;
            v61 = sub_22C5F2354();
            sub_22C38884C(v61);
            v61[2].n128_u64[0] = sub_22C90A91C();
            v61[2].n128_u64[1] = sub_22C90A91C();
            v61[3].n128_u64[0] = sub_22C90A91C();
            v62 = sub_22C5F2354();
            sub_22C38884C(v62);
            v62[2].n128_u64[0] = sub_22C90A91C();
            v62[2].n128_u64[1] = sub_22C90A91C();
            v62[3].n128_u64[0] = sub_22C90A91C();
            v63 = sub_22C90A5DC();

            v64 = [v78 objectForKeyedSubscript_];

            v65 = sub_22C90A5DC();

            [v14 setObject:v64 forKeyedSubscript:v65];

            v11 = v81;
            v60 = v16;
          }

          while (v81 != v16);
        }

        ++v59;
      }

      while (v59 != v79);
    }

    if (!v76)
    {
LABEL_34:

      return;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v15 = 0;
    while (!__OFADD__(v15, 1))
    {
      v79 = v15 + 1;
      a1 = v77;
      if (v11)
      {
        v66 = 0;
        do
        {
          v16 = v66 + 1;
          v67 = sub_22C5F2354();
          sub_22C38884C(v67);
          v67[2].n128_u64[0] = sub_22C90A91C();
          v67[2].n128_u64[1] = sub_22C90A91C();
          v67[3].n128_u64[0] = sub_22C90A91C();
          v68 = sub_22C5F2354();
          sub_22C38884C(v68);
          v68[2].n128_u64[0] = sub_22C90A91C();
          v68[2].n128_u64[1] = sub_22C90A91C();
          v68[3].n128_u64[0] = sub_22C90A91C();
          v69 = sub_22C90A5DC();

          v70 = [v77 objectForKeyedSubscript_];

          v71 = sub_22C90A5DC();

          [v14 setObject:v70 forKeyedSubscript:v71];

          v11 = v81;
          v66 = v16;
        }

        while (v81 != v16);
      }

      v13 = v78;
      ++v15;
      if (v79 == v76)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    MEMORY[0x2318B8460](0, v15);
  }

  sub_22C903FAC();
  v44 = v76;
  v45 = sub_22C9063CC();
  v46 = sub_22C90AADC();

  if (os_log_type_enabled(v45, v46))
  {
    sub_22C37FE78();
    v47 = swift_slowAlloc();
    sub_22C37080C();
    v48 = swift_slowAlloc();
    sub_22C370220();
    v49 = swift_slowAlloc();
    v83 = v49;
    *v47 = 136315394;
    sub_22C36A0FC();
    *(v47 + 4) = sub_22C36F9F4(0xD00000000000002DLL, v50, v51);
    *(v47 + 12) = 2112;
    v52 = v76;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 14) = v53;
    *v48 = v53;
    _os_log_impl(&dword_22C366000, v45, v46, "[%s]: Error creating new deflated MLMultiArray: %@", v47, 0x16u);
    sub_22C5AB9D0(v48);
    v54 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v54);
    sub_22C36FF94(v49);
    v55 = sub_22C36D66C();
    MEMORY[0x2318B9880](v55);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v73(v74, v79);
}

void sub_22C5F147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = sub_22C9063DC();
  v7 = sub_22C369824(v63);
  v66 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v60 = v15;
  sub_22C8FDE04();
  v17 = v16;
  v18 = [v16 shape];
  sub_22C3D3108();
  v19 = sub_22C90A5EC();

  v20 = sub_22C5F2370();
  sub_22C633A2C(v20, v21, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  for (i = *(v19 + 32); ; i = MEMORY[0x2318B8460](0, v19))
  {
    v23 = i;

    v24 = [(objc_class *)v23 integerValue];

    v25 = a5 * a1;
    if ((a5 * a1) >> 64 != (a5 * a1) >> 63)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    v26 = v25 * a2;
    if ((v25 * a2) >> 64 != (v25 * a2) >> 63)
    {
      goto LABEL_45;
    }

    v61 = v13;
    v27 = a3;
    v58 = a5;
    a3 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C922290;
    *(v28 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v29 = v26;
    v30 = [v17 dataType];
    v31 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v32 = sub_22C5F2214(v28, v30);
    v33 = sub_22C90ABEC();
    [v32 fillWithNumber_];

    v56 = a1 * a2;
    if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
    {
      goto LABEL_46;
    }

    v55 = v27 * a4;
    if ((v27 * a4) >> 64 != (v27 * a4) >> 63)
    {
      goto LABEL_47;
    }

    a5 = v60;
    sub_22C903FAC();
    v19 = sub_22C9063CC();
    v34 = sub_22C90AABC();
    if (os_log_type_enabled(v19, v34))
    {
      sub_22C370220();
      swift_slowAlloc();
      sub_22C3735E4();
      v68 = swift_slowAlloc();
      *v60 = 136315650;
      v35 = sub_22C5F237C("deflateModelOutputDiagnostics(numberOfTuples:numberOfAmbiguityDimentions:numberOfStaticTuplesSize:numberOfStaticDimentions:numberOfModelDiagnostics:)");
      sub_22C387350(v35);
      *(v60 + 24) = v29;
      _os_log_impl(&dword_22C366000, v19, v34, "[%s]: Source:%ld, Target:%ld", v60, 0x20u);
      sub_22C36FF94(v68);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v36 = sub_22C36D66C();
      MEMORY[0x2318B9880](v36);
    }

    v13 = v63;
    (*(v66 + 8))(v60, v63);
    if (v24 < v29)
    {
      break;
    }

    if (v58 < 0)
    {
      goto LABEL_49;
    }

    v47 = v17;
    if (!v58)
    {
LABEL_34:

      return;
    }

    if (a1 < 0)
    {
      goto LABEL_50;
    }

    v57 = 0;
    while (!a1)
    {
LABEL_33:
      if (++v57 == v58)
      {
        goto LABEL_34;
      }
    }

    if (a2 < 0)
    {
      goto LABEL_48;
    }

    v48 = 0;
    v62 = v55 * v57;
    LODWORD(v63) = (v55 * v57) >> 64 != (v55 * v57) >> 63;
    v59 = v56 * v57;
    LODWORD(v60) = (v56 * v57) >> 64 != (v56 * v57) >> 63;
    while (1)
    {
      v66 = v48;
      if (a2)
      {
        break;
      }

LABEL_32:
      v48 = v66 + 1;
      if (v66 + 1 == a1)
      {
        goto LABEL_33;
      }
    }

    if ((v55 * v57) >> 64 != (v55 * v57) >> 63)
    {
      goto LABEL_37;
    }

    v49 = a4 * v48;
    if ((a4 * v48) >> 64 != (a4 * v48) >> 63)
    {
      goto LABEL_38;
    }

    v50 = v62 + v49;
    if (__OFADD__(v62, v49))
    {
      goto LABEL_39;
    }

    if ((v56 * v57) >> 64 != (v56 * v57) >> 63)
    {
      goto LABEL_40;
    }

    v51 = a2 * v48;
    if ((a2 * v48) >> 64 != (a2 * v48) >> 63)
    {
      goto LABEL_41;
    }

    v17 = (v59 + v51);
    if (!__OFADD__(v59, v51))
    {
      v13 = 0;
      while (1)
      {
        v19 = v50 + v13;
        if (__OFADD__(v50, v13))
        {
          break;
        }

        if (__OFADD__(v17, v13))
        {
          goto LABEL_36;
        }

        ++v13;
        a5 = swift_allocObject();
        *(a5 + 16) = xmmword_22C922290;
        *(a5 + 32) = sub_22C90A91C();
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_22C922290;
        *(v52 + 32) = sub_22C90A91C();
        v53 = sub_22C90A5DC();

        v54 = [v47 objectForKeyedSubscript_];

        v19 = sub_22C90A5DC();

        [v32 setObject:v54 forKeyedSubscript:v19];

        if (a2 == v13)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    ;
  }

  sub_22C90AF5C();
  MEMORY[0x2318B7850](91, 0xE100000000000000);
  MEMORY[0x2318B7850](0xD000000000000095, 0x800000022C932FB0);
  MEMORY[0x2318B7850](0xD000000000000042, 0x800000022C932F60);
  sub_22C5F2300();
  v37 = swift_allocError();
  *v38 = 0;
  v38[1] = 0xE000000000000000;
  swift_willThrow();

  sub_22C903FAC();
  v39 = v37;
  v40 = sub_22C9063CC();
  v41 = sub_22C90AADC();

  if (os_log_type_enabled(v40, v41))
  {
    sub_22C37FE78();
    v42 = swift_slowAlloc();
    sub_22C37080C();
    v43 = swift_slowAlloc();
    sub_22C370220();
    v69 = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_22C5F237C("deflateModelOutputDiagnostics(numberOfTuples:numberOfAmbiguityDimentions:numberOfStaticTuplesSize:numberOfStaticDimentions:numberOfModelDiagnostics:)");
    *(v42 + 12) = 2112;
    v44 = v37;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v45;
    *v43 = v45;
    _os_log_impl(&dword_22C366000, v40, v41, "[%s]: Error creating new deflated MLMultiArray: %@", v42, 0x16u);
    sub_22C5AB9D0(v43);
    v46 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v46);
    sub_22C36FF94(v69);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  (*(v66 + 8))(v61, v63);
}

id sub_22C5F1C18(uint64_t a1)
{
  v58 = sub_22C9063DC();
  v2 = sub_22C369824(v58);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v53 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v11 = v10;
  sub_22C8FDE20();
  v56 = v12;
  v13 = [v12 shape];
  sub_22C3D3108();
  v14 = sub_22C90A5EC();

  v15 = sub_22C5F2370();
  sub_22C633A2C(v15, v16, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2318B8460](0, v14);
  }

  else
  {
    v17 = *(v14 + 32);
  }

  v18 = v17;

  v19 = [v18 integerValue];

  v20 = [v56 shape];
  v21 = sub_22C90A5EC();

  sub_22C633A2C(1, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x2318B8460](1, v21);
  }

  else
  {
    v22 = *(v21 + 40);
  }

  v23 = v22;

  v24 = [v23 integerValue];

  if (v19 < a1)
  {
    a1 = v19;
  }

  sub_22C903FAC();
  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();
  v57 = v24;
  if (os_log_type_enabled(v25, v26))
  {
    swift_slowAlloc();
    sub_22C3735E4();
    v27 = swift_slowAlloc();
    v59 = v27;
    *v24 = 136316162;
    v28 = sub_22C36F9F4(0xD00000000000002ELL, 0x800000022C932F30, &v59);
    sub_22C387350(v28);
    *(v24 + 24) = v24;
    *(v24 + 32) = v29;
    *(v24 + 34) = a1;
    *(v24 + 42) = v29;
    *(v24 + 44) = v24;
    _os_log_impl(&dword_22C366000, v25, v26, "[%s]: Source:%ldx%ld, Target:%ldx%ld", v24, 0x34u);
    sub_22C36FF94(v27);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v30 = *(v4 + 8);
  v30(v11, v58);
  sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22C922280;
  *(v31 + 32) = sub_22C90A91C();
  *(v31 + 40) = sub_22C90A91C();
  v32 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_22C5F2214(v31, 65568);
  if (v54)
  {

    sub_22C903FAC();
    v34 = v54;
    v35 = sub_22C9063CC();
    v36 = sub_22C90AADC();

    if (os_log_type_enabled(v35, v36))
    {
      sub_22C37FE78();
      v37 = swift_slowAlloc();
      sub_22C37080C();
      swift_slowAlloc();
      sub_22C3735E4();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v37 = 136315394;
      sub_22C36A0FC();
      *(v37 + 4) = sub_22C36F9F4(0xD00000000000002ELL, v39, v40);
      *(v37 + 12) = 2112;
      v41 = v54;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      *v24 = v42;
      _os_log_impl(&dword_22C366000, v35, v36, "[%s]: Error creating new deflated MLMultiArray: %@", v37, 0x16u);
      sub_22C5AB9D0(v24);
      v43 = sub_22C36D66C();
      MEMORY[0x2318B9880](v43);
      sub_22C36FF94(v38);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {
    }

    v30(v53, v58);
    return 0;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = result;
    if (!a1)
    {
LABEL_20:

      return v44;
    }

    if ((v24 & 0x8000000000000000) == 0)
    {
      v45 = 0;
      v55 = a1;
      do
      {
        if (v24)
        {
          v46 = 0;
          do
          {
            v47 = v46 + 1;
            v48 = swift_allocObject();
            sub_22C38884C(v48);
            v48[2].n128_u64[0] = sub_22C90A91C();
            v48[2].n128_u64[1] = sub_22C90A91C();
            v49 = swift_allocObject();
            sub_22C38884C(v49);
            v49[2].n128_u64[0] = sub_22C90A91C();
            v49[2].n128_u64[1] = sub_22C90A91C();
            v50 = sub_22C90A5DC();

            v51 = [v56 objectForKeyedSubscript_];

            v52 = sub_22C90A5DC();
            v24 = v57;

            [v44 setObject:v51 forKeyedSubscript:v52];

            v46 = v47;
          }

          while (v57 != v47);
        }

        ++v45;
      }

      while (v45 != v55);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

id sub_22C5F2214(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_22C3D3108();
  v4 = sub_22C90A5DC();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22C90030C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_22C5F2300()
{
  result = qword_27D9BF218;
  if (!qword_27D9BF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF218);
  }

  return result;
}

uint64_t sub_22C5F2354()
{

  return swift_allocObject();
}

uint64_t sub_22C5F237C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000095, (a1 - 32) | 0x8000000000000000, (v1 - 104));
}

id sub_22C5F23A0()
{

  return [v0 (v1 + 120)];
}

uint64_t StructuredSearchQueryKeys.rawValue.getter()
{
  result = 0x6E6F697473657571;
  switch(*v0)
  {
    case 1:
      v2 = 0x686372616573;
      goto LABEL_11;
    case 2:
      result = 0x64726F5F74726F73;
      break;
    case 3:
      v2 = 0x6E7275746572;
LABEL_11:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x656D616E5F676174;
      break;
    case 7:
      result = 0x6C6F635F67616C66;
      break;
    case 8:
      result = 0x645F656372756F73;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x6E6F73726570;
      break;
    case 0xD:
      result = 0x7265646E6573;
      break;
    case 0xE:
      result = 0x7265766965636572;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C5F2580(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if ((v16 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 0;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 1;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

IntelligenceFlowPlannerRuntime::StructuredSearchQueryKeys_optional __swiftcall StructuredSearchQueryKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22C5F2740(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_22C3D40E0();
}

unint64_t sub_22C5F2750()
{
  result = qword_27D9BF220;
  if (!qword_27D9BF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF220);
  }

  return result;
}

uint64_t sub_22C5F27C8@<X0>(uint64_t *a1@<X8>)
{
  result = StructuredSearchQueryKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22C5F27F4()
{
  result = qword_27D9BF228;
  if (!qword_27D9BF228)
  {
    sub_22C3AC1A0(&qword_27D9BF230, &qword_22C922360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StructuredSearchQueryKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredSearchQueryKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

BOOL sub_22C5F29CC(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x2318B57A0]();
  v10 = v2;
  v11 = a2;
  if (sub_22C5F2580(sub_22C5F34C4, &v9, a1))
  {
    v6 = *(a1 + 16);
    v7 = *(v5 + 16);

    return v6 == v7;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22C5F2A5C()
{
  MEMORY[0x2318B57A0]();
  v0 = sub_22C71B430();

  sub_22C3A5908(&qword_27D9BE3C0, &qword_22C91D970);
  v1 = sub_22C90098C();
  sub_22C369824(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F800;
  (*(v3 + 104))(v7 + v6, *MEMORY[0x277D36E40], v1);
  if (v0)
  {
    sub_22C36BA00();
    sub_22C46EC84();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_22C5F2BA4()
{
  v0 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = var50 - v2;
  v4 = sub_22C90654C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = (v11 - v10);
  v13 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = var50 - v15;
  v17 = sub_22C901FAC();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = MEMORY[0x2318B57A0]();
  sub_22C6053E0(v26, v16);

  if (sub_22C370B74(v16, 1, v17) == 1)
  {
    v27 = &qword_27D9BC030;
    v28 = &unk_22C911CC0;
    v29 = v16;
LABEL_5:
    sub_22C3770B0(v29, v27, v28);
    return 0;
  }

  (*(v20 + 32))(v25, v16, v17);
  sub_22C646D68(v25, v30, v31, v32, v33, v34, v35, v36, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  v37 = sub_22C9070DC();
  if (sub_22C370B74(v3, 1, v37) == 1)
  {
    (*(v20 + 8))(v25, v17);
    v27 = &qword_27D9BAA18;
    v28 = &qword_22C911C40;
    v29 = v3;
    goto LABEL_5;
  }

  sub_22C90702C();
  (*(v20 + 8))(v25, v17);
  (*(*(v37 - 8) + 8))(v3, v37);
  if ((*(v7 + 88))(v12, v4) == *MEMORY[0x277D1DAA8])
  {
    (*(v7 + 96))(v12, v4);
    v39 = *(sub_22C906F2C() - 8);
    v40 = v39[11];
    v41 = sub_22C36BA00();
    if (v42(v41) == *MEMORY[0x277D1DEF8])
    {
      v43 = v39[12];
      v44 = sub_22C36BA00();
      v45(v44);
      result = *v12;
      v46 = v12[1];
      return result;
    }

    v47 = v39[1];
    v48 = sub_22C36BA00();
    v49(v48);
  }

  else
  {
    (*(v7 + 8))(v12, v4);
  }

  return 0;
}

BOOL sub_22C5F2F8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v4 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = sub_22C90654C();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v47 = &v46 - v15;
  v16 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v46 - v18;
  v20 = sub_22C901FAC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = a1[1];
  v28 = MEMORY[0x2318B57A0](v23);
  sub_22C6053E0(v28, v19);

  if (sub_22C370B74(v19, 1, v20) == 1)
  {
    sub_22C3770B0(v19, &qword_27D9BC030, &unk_22C911CC0);
    return 0;
  }

  (*(v21 + 32))(v25, v19, v20);
  sub_22C646D68(v25, v29, v30, v31, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v36 = sub_22C9070DC();
  if (sub_22C370B74(v7, 1, v36) == 1)
  {
    sub_22C3770B0(v7, &qword_27D9BAA18, &qword_22C911C40);
    (*(v21 + 8))(v25, v20);
    return 0;
  }

  sub_22C90702C();
  (*(*(v36 - 8) + 8))(v7, v36);
  v39 = v49;
  v38 = v50;
  v40 = v47;
  (*(v49 + 32))(v47, v14, v50);
  v41 = v48;
  (*(v39 + 16))(v48, v40, v38);
  if ((*(v39 + 88))(v41, v38) == *MEMORY[0x277D1DAA8])
  {
    (*(v39 + 96))(v41, v38);
    v42 = sub_22C906F2C();
    v43 = *(v42 - 8);
    if ((*(v43 + 88))(v41, v42) == *MEMORY[0x277D1DEE8])
    {
      (*(v43 + 96))(v41, v42);
      v44 = *(*v41 + 16);

      (*(v39 + 8))(v40, v38);
      (*(v21 + 8))(v25, v20);
      return v44 == 1;
    }

    (*(v39 + 8))(v40, v38);
    (*(v21 + 8))(v25, v20);
    (*(v43 + 8))(v41, v42);
  }

  else
  {
    v45 = *(v39 + 8);
    v45(v40, v38);
    (*(v21 + 8))(v25, v20);
    v45(v41, v38);
  }

  return 1;
}

BOOL sub_22C5F34E4()
{
  v0 = sub_22C900A9C();
  v1 = sub_22C369824(v0);
  v43 = v2;
  v44 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v42 = v6 - v5;
  v7 = sub_22C900ACC();
  v8 = sub_22C369824(v7);
  v45 = v9;
  v46 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C90098C();
  v16 = sub_22C369824(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v23 = v22 - v21;
  MEMORY[0x2318B57A0]();
  v24 = sub_22C71B430();

  if (!v24)
  {

    v24 = MEMORY[0x277D84F90];
  }

  v25 = (*(v18 + 104))(v23, *MEMORY[0x277D36E38], v15);
  MEMORY[0x28223BE20](v25);
  sub_22C369920();
  *(v26 - 16) = v23;
  v28 = sub_22C5EC56C(sub_22C5F3904, v27, v24);

  v29 = (*(v18 + 8))(v23, v15);
  if (v28)
  {
    return 1;
  }

  MEMORY[0x2318B57A0](v29);
  v30 = sub_22C71B624();

  if (!v30)
  {

    v30 = MEMORY[0x277D84F90];
  }

  v31 = (*(v45 + 104))(v14, *MEMORY[0x277D36EC8], v46);
  MEMORY[0x28223BE20](v31);
  sub_22C369920();
  *(v32 - 16) = v14;
  v34 = sub_22C5EC53C(sub_22C5F3924, v33, v30);

  v35 = (*(v45 + 8))(v14, v46);
  if (v34)
  {
    return 1;
  }

  else
  {
    MEMORY[0x2318B57A0](v35);
    v37 = sub_22C71B818();

    if (!v37)
    {

      v37 = MEMORY[0x277D84F90];
    }

    v38 = (*(v43 + 104))(v42, *MEMORY[0x277D36EA0], v44);
    MEMORY[0x28223BE20](v38);
    sub_22C369920();
    *(v39 - 16) = v42;
    v36 = sub_22C5EC50C(sub_22C5F3944, v40, v37);

    (*(v43 + 8))(v42, v44);
  }

  return v36;
}

uint64_t sub_22C5F3964@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v103 = a5;
  v104 = a3;
  v105 = a4;
  v118 = a1;
  v119 = a2;
  v108 = a6;
  v99 = sub_22C901FAC();
  v6 = sub_22C369824(v99);
  v98 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  sub_22C3698F8(v10);
  v95 = sub_22C9093BC();
  v11 = sub_22C369824(v95);
  v94 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v96 = v15;
  v16 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = (&v91 - v18);
  sub_22C36BA0C();
  v110 = sub_22C90941C();
  v19 = sub_22C369824(v110);
  v102 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v106 = v26;
  v27 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v109 = &v91 - v29;
  sub_22C36BA0C();
  v30 = sub_22C90981C();
  v31 = sub_22C369824(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  v113 = v36;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v91 - v39;
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v107 = v41;
  result = sub_22C908DCC();
  v43 = result;
  v44 = 0;
  v45 = *(result + 16);
  v116 = v33 + 8;
  v117 = v33 + 16;
  v114 = (v33 + 32);
  v115 = MEMORY[0x277D84F90];
  v120 = v30;
  while (1)
  {
    if (v45 == v44)
    {

      v59 = v109;
      sub_22C58B39C(v115, v109);

      if (sub_22C370B74(v59, 1, v30) == 1)
      {
        v60 = &qword_27D9BC0C0;
        v61 = &unk_22C911FA0;
        v62 = v59;
      }

      else
      {
        v66 = v107;
        v67 = (*v114)(v107, v59, v30);
        v121[0] = 0;
        v68 = v100;
        MEMORY[0x2318B6CE0](v67);
        v69 = v106;
        sub_22C5F417C(v121, v106);
        v70 = v102;
        v71 = *(v102 + 8);
        v71(v68, v110);
        v72 = v101;
        v73 = v30;
        v74 = v104;
        v75 = v105;
        v76 = v111;
        sub_22C5F45E0(v69, v103, v101);
        v111 = v76;
        if (v76)
        {
          v71(v69, v110);
          sub_22C374E38();
          return v77(v66, v73);
        }

        v119 = v71;
        v78 = v110;
        if (sub_22C370B74(v72, 1, v110) != 1)
        {
          v80 = v92;
          (*(v70 + 32))(v92, v72, v78);
          (*(v94 + 16))(v96, v74, v95);
          if (v121[0] == 1)
          {
            v81 = v70;
            v82 = swift_allocBox();
            (*(v81 + 16))(v83, v80, v78);
            v84 = v93;
            *v93 = v82;
            (*(v81 + 104))(v84, *MEMORY[0x277D72AB0], v78);
          }

          else
          {
            (*(v70 + 16))(v93, v80, v78);
          }

          v85 = v107;
          (*(v98 + 16))(v97, v75, v99);
          v86 = v108;
          sub_22C907CBC();
          v87 = v110;
          v88 = v119;
          v119(v80, v110);
          v88(v106, v87);
          sub_22C374E38();
          v89(v85, v120);
          v90 = type metadata accessor for StepResolution();
          swift_storeEnumTagMultiPayload();
          v64 = v86;
          v65 = 0;
          v63 = v90;
          return sub_22C36C640(v64, v65, 1, v63);
        }

        v119(v69, v78);
        sub_22C374E38();
        v79(v107, v120);
        v60 = &qword_27D9BC028;
        v61 = &unk_22C9134B0;
        v62 = v72;
      }

      sub_22C36DD28(v62, v60, v61);
      v63 = type metadata accessor for StepResolution();
      v64 = v108;
      v65 = 1;
      return sub_22C36C640(v64, v65, 1, v63);
    }

    if (v44 >= *(v43 + 16))
    {
      break;
    }

    v46 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v47 = *(v33 + 72);
    (*(v33 + 16))(v40, v43 + v46 + v47 * v44, v30);
    if (sub_22C9097DC() == v118 && v48 == v119)
    {

LABEL_11:
      v52 = *v114;
      (*v114)(v113, v40, v120);
      v53 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v53;
      v112 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = *(v53 + 16);
        sub_22C377BA0();
        sub_22C3B6FA0();
        v53 = v122;
      }

      v56 = *(v53 + 16);
      v57 = v56 + 1;
      if (v56 >= *(v53 + 24) >> 1)
      {
        v115 = v56 + 1;
        sub_22C3B6FA0();
        v57 = v115;
        v53 = v122;
      }

      ++v44;
      *(v53 + 16) = v57;
      v115 = v53;
      v58 = v53 + v46 + v56 * v47;
      v30 = v120;
      result = v112(v58, v113, v120);
    }

    else
    {
      v50 = sub_22C90B4FC();

      if (v50)
      {
        goto LABEL_11;
      }

      sub_22C374E38();
      v30 = v120;
      result = v51(v40, v120);
      ++v44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5F417C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v63 = v5;
  v64 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v9 = v8;
  sub_22C36BA0C();
  v10 = sub_22C90941C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v58 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = (&v58 - v22);
  v24 = v13[2];
  sub_22C37EBD0();
  v24();
  v25 = v13[11];
  v26 = sub_22C372280();
  v28 = v27(v26);
  if (v28 == *MEMORY[0x277D72AD0])
  {
LABEL_2:
    v29 = v13[1];
    v30 = sub_22C372280();
    v31(v30);
    sub_22C37EBD0();
    return (v24)();
  }

  v65 = a2;
  if (v28 == *MEMORY[0x277D72AB0])
  {
    v33 = v13[12];
    v34 = sub_22C372280();
    v35(v34);
    v36 = *v23;
    v37 = swift_projectBox();
    (v24)(v21, v37, v10);
    *v66 = 1;
LABEL_7:
    sub_22C5F417C();
    v43 = v13[1];
    v44 = sub_22C36FCCC();
    v45(v44);
  }

  if (v28 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_6;
  }

  if (v28 == *MEMORY[0x277D72AD8] || v28 == *MEMORY[0x277D72AB8])
  {
    goto LABEL_2;
  }

  if (v28 == *MEMORY[0x277D72AE0])
  {
LABEL_6:
    v38 = v13[12];
    v39 = sub_22C372280();
    v40(v39);
    v41 = *v23;
    v42 = swift_projectBox();
    (v24)(v21, v42, v10);
    goto LABEL_7;
  }

  sub_22C903F8C();
  sub_22C37EBD0();
  v24();
  v66 = v9;
  v47 = sub_22C9063CC();
  v62 = sub_22C90AADC();
  if (os_log_type_enabled(v47, v62))
  {
    v48 = swift_slowAlloc();
    v60 = v48;
    v61 = swift_slowAlloc();
    v67 = v61;
    *v48 = 136315138;
    (v24)(v21, v18, v10);
    sub_22C36FCCC();
    v58 = sub_22C90A1AC();
    v59 = v47;
    v50 = v49;
    v51 = sub_22C387368();
    v21(v51);
    v52 = sub_22C36F9F4(v58, v50, &v67);

    v54 = v59;
    v53 = v60;
    *(v60 + 1) = v52;
    v55 = v61;
    sub_22C36FF94(v61);
    MEMORY[0x2318B9880](v55, -1, -1);
    MEMORY[0x2318B9880](v53, -1, -1);
  }

  else
  {

    v56 = sub_22C387368();
    v21(v56);
  }

  (*(v63 + 8))(v66, v64);
  sub_22C37EBD0();
  v24();
  v57 = sub_22C372280();
  return (v21)(v57);
}

uint64_t sub_22C5F45E0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v140 = a2;
  v142 = a3;
  v4 = sub_22C90952C();
  v149 = *(v4 - 8);
  v5 = *(v149 + 64);
  MEMORY[0x28223BE20](v4);
  v143 = &v125[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C9063DC();
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  MEMORY[0x28223BE20](v7);
  v136 = &v125[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_22C90430C();
  v146 = *(v153 - 1);
  v10 = *(v146 + 64);
  v11 = MEMORY[0x28223BE20](v153);
  v144 = &v125[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v125[-v13];
  v150 = sub_22C9094EC();
  v152 = *(v150 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x28223BE20](v150);
  v17 = &v125[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v125[-v20];
  v22 = sub_22C90941C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v125[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v23 + 16);
  v151 = a1;
  v133 = v23 + 16;
  v132 = v27;
  v27(v26, a1, v22);
  v28 = (*(v23 + 88))(v26, v22);
  v29 = *MEMORY[0x277D72AB8];
  v30 = MEMORY[0x277D72D50];
  v147 = v22;
  v145 = v4;
  v137 = v23;
  if (v28 != v29)
  {
    (*(v23 + 8))(v26, v22);
    v36 = *v30;
    v48 = v149;
    goto LABEL_8;
  }

  v128 = v28;
  (*(v23 + 96))(v26, v22);
  v31 = *v26;
  v32 = swift_projectBox();
  sub_22C4802FC(v32, v21);
  v139 = v18;
  v33 = *(v21 + *(v18 + 48));

  v34 = v149;
  v35 = (*(v149 + 88))(v21, v4);
  v36 = *v30;
  if (v35 != v36)
  {
    (*(v34 + 8))(v21, v4);

    v48 = v34;
    goto LABEL_8;
  }

  v37 = v22;
  v138 = v35;
  (*(v34 + 96))(v21, v4);
  v38 = *v21;
  v39 = swift_projectBox();
  v40 = v152;
  v41 = v150;
  (*(v152 + 16))(v17, v39, v150);
  v42 = (*(v40 + 88))(v17, v41);
  v43 = *MEMORY[0x277D72CC0];
  (*(v40 + 8))(v17, v41);

  if (v42 != v43)
  {
    v48 = v149;
    v36 = v138;
LABEL_8:
    sub_22C9093DC();
    v49 = v150;
    v50 = swift_allocBox();
    v51 = *MEMORY[0x277D72CD8];
    v52 = *(v152 + 104);
    v152 += 104;
    v153 = v52;
    v52(v53, v51, v49);
    v54 = v143;
    *v143 = v50;
    v55 = *(v48 + 104);
    v138 = v36;
    v56 = v36;
    v57 = v145;
    v55(v54, v56, v145);
    sub_22C5E94F0();
    LOBYTE(v50) = v58;

    (*(v48 + 8))(v54, v57);
    if (v50)
    {
      v59 = v148;
      result = sub_22C5F6894(v140);
      if (!v59)
      {
        if (result)
        {
          v60 = swift_allocBox();
          v62 = v61;
          v63 = v150;
          v64 = swift_allocBox();
          v153(v65, v51, v63);
          *v62 = v64;
          v55(v62, v138, v57);
          v66 = v142;
          *v142 = v60;
          v67 = v147;
          (*(v137 + 104))(v66, *MEMORY[0x277D72AD0], v147);
          v68 = v66;
          v69 = 0;
          v70 = v67;
        }

        else
        {
          v68 = v142;
          v69 = 1;
          v70 = v147;
        }

        return sub_22C36C640(v68, v69, 1, v70);
      }
    }

    else
    {
      v71 = v142;
      v72 = 1;
      v73 = v147;
      return sub_22C36C640(v71, v72, 1, v73);
    }

    return result;
  }

  v44 = v151;
  v45 = sub_22C5F55CC();
  v46 = v148;
  result = sub_22C5F5A9C(v140);
  if (v46)
  {
  }

  if (!result)
  {
    sub_22C36C640(v142, 1, 1, v37);
  }

  v126 = v42;
  v140 = v45;
  v148 = 0;
  v74 = 0;
  v143 = *(result + 16);
  v130 = v146 + 16;
  v129 = (v146 + 32);
  v127 = (v146 + 8);
  v75 = MEMORY[0x277D84F90];
  for (i = result; ; result = i)
  {
    v76 = v74;
    v77 = v139;
LABEL_21:
    if (v76 == v143)
    {
      break;
    }

    if (v76 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v78 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v79 = *(v146 + 72);
    v74 = (v76 + 1);
    (*(v146 + 16))(v14, result + v78 + v79 * v76, v153);
    v80 = v140 + v78;
    v81 = *(v140 + 2) + 1;
    do
    {
      if (!--v81)
      {
        (*v127)(v14, v153);
        v76 = v74;
        v44 = v151;
        v77 = v139;
        result = i;
        goto LABEL_21;
      }

      v82 = &v80[v79];
      v83 = sub_22C9042DC();
      v80 = v82;
    }

    while ((v83 & 1) == 0);
    v84 = *v129;
    (*v129)(v144, v14, v153);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C3B6BF8(0, *(v75 + 16) + 1, 1);
      v75 = v154;
    }

    v87 = *(v75 + 16);
    v86 = *(v75 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_22C3B6BF8(v86 > 1, v87 + 1, 1);
      v75 = v154;
    }

    *(v75 + 16) = v87 + 1;
    v84(v75 + v78 + v87 * v79, v144, v153);
    v37 = v147;
    v44 = v151;
  }

  if (*(v75 + 16))
  {

    v88 = swift_allocBox();
    v90 = v89;
    v91 = *(v77 + 48);
    v92 = v150;
    v93 = swift_allocBox();
    (*(v152 + 104))(v94, v126, v92);
    *v90 = v93;
    (*(v149 + 104))(v90, v138, v145);
    sub_22C3A5908(&qword_27D9BF238, &unk_22C925C80);
    v95 = sub_22C90969C();
    v96 = *(v95 - 8);
    v97 = *(v96 + 72);
    v98 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_22C90F800;
    *(v99 + v98) = v75;
    (*(v96 + 104))(v99 + v98, *MEMORY[0x277D72E68], v95);
    *(v90 + v91) = v99;
    v100 = v142;
    *v142 = v88;
    (*(v137 + 104))(v100, v128, v37);
    v71 = v100;
    v72 = 0;
    v73 = v37;
    return sub_22C36C640(v71, v72, 1, v73);
  }

  v101 = result;

  v102 = v136;
  sub_22C903F8C();
  v103 = v140;

  v104 = sub_22C9063CC();
  v105 = sub_22C90AADC();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v154 = v152;
    *v106 = 136315394;
    v107 = v153;
    v108 = MEMORY[0x2318B7AD0](v103, v153);
    v110 = v109;

    v111 = sub_22C36F9F4(v108, v110, &v154);

    *(v106 + 4) = v111;
    *(v106 + 12) = 2080;
    v112 = MEMORY[0x2318B7AD0](v101, v107);
    v114 = v113;

    v115 = sub_22C36F9F4(v112, v114, &v154);
    v116 = v151;

    *(v106 + 14) = v115;
    _os_log_impl(&dword_22C366000, v104, v105, "Unable to find appropriate type. Acceptable types: %s, available types: %s", v106, 0x16u);
    v117 = v152;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v117, -1, -1);
    MEMORY[0x2318B9880](v106, -1, -1);

    v118 = v116;
    (*(v134 + 8))(v136, v135);
    v119 = v141;
    v120 = v132;
  }

  else
  {

    (*(v134 + 8))(v102, v135);
    v119 = v141;
    v120 = v132;
    v118 = v44;
  }

  type metadata accessor for InterpreterError();
  sub_22C5F8844();
  swift_allocError();
  v122 = v121;
  v123 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
  v120(v122, v118, v37);
  v124 = sub_22C9093BC();
  (*(*(v124 - 8) + 16))(v122 + v123, v119, v124);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_22C5F52EC(void (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for InterpreterError();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v33 = v7;
  sub_22C36BA0C();
  v8 = sub_22C901FAC();
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C90941C();
  v18 = sub_22C369824(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v25 = v24 - v23;
  sub_22C5F417C(&v36, v24 - v23);
  sub_22C901F4C();
  v26 = sub_22C36FCCC();
  sub_22C5F45E0(v26, a1, v27);
  if (v35)
  {
    (*(v11 + 8))(v16, v8);
    v28 = *(v20 + 8);
    v28(v25, v17);
    v29 = v35;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {

        v30 = *(sub_22C3A5908(&qword_27D9BF240, &qword_22C922410) + 48);
        v31 = sub_22C9093BC();
        sub_22C36985C(v31);
        (*(v32 + 8))(v33 + v30);
        v28(v33, v17);

        sub_22C36C640(a2, 1, 1, v17);
        return;
      }

      sub_22C5F889C(v33);
    }
  }

  else
  {
    (*(v11 + 8))(v16, v8);
    (*(v20 + 8))(v25, v17);
  }
}

uint64_t sub_22C5F55CC()
{
  v1 = v0;
  v2 = sub_22C90969C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - v8;
  v9 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = sub_22C90941C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v17, v1, v13);
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D72AB8])
  {
    (*(v14 + 8))(v17, v13);
    return MEMORY[0x277D84F90];
  }

  (*(v14 + 96))(v17, v13);
  v18 = *v17;
  v19 = swift_projectBox();
  sub_22C4802FC(v19, v12);
  v20 = *&v12[*(v9 + 48)];
  v21 = sub_22C90952C();
  (*(*(v21 - 8) + 8))(v12, v21);

  v22 = *(v20 + 16);
  if (!v22)
  {

    return MEMORY[0x277D84F90];
  }

  v24 = *(v3 + 16);
  v23 = v3 + 16;
  v25 = *(v23 + 64);
  v45 = v20;
  v26 = (v20 + ((v25 + 32) & ~v25));
  v47 = *(v23 + 56);
  v49 = (v23 + 72);
  v50 = v24;
  v48 = *MEMORY[0x277D72E68];
  v27 = (v23 - 8);
  v51 = v23;
  v46 = (v23 + 80);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v29 = v52;
    v30 = v50;
    v50(v52, v26, v2);
    v30(v7, v29, v2);
    v31 = (*v49)(v7, v2);
    v32 = *v27;
    if (v31 == v48)
    {
      v32(v29, v2);
      result = (*v46)(v7, v2);
      v34 = *v7;
    }

    else
    {
      v32(v7, v2);
      result = (v32)(v29, v2);
      v34 = MEMORY[0x277D84F90];
    }

    v35 = *(v34 + 16);
    v36 = *(v28 + 16);
    if (__OFADD__(v36, v35))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v28 + 24) >> 1)
    {
      sub_22C5921DC();
      v28 = v37;
    }

    if (*(v34 + 16))
    {
      v38 = (*(v28 + 24) >> 1) - *(v28 + 16);
      result = sub_22C90430C();
      v39 = *(result - 8);
      if (v38 < v35)
      {
        goto LABEL_25;
      }

      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = *(v39 + 72);
      swift_arrayInitWithCopy();

      if (v35)
      {
        v42 = *(v28 + 16);
        v43 = __OFADD__(v42, v35);
        v44 = v42 + v35;
        if (v43)
        {
          goto LABEL_26;
        }

        *(v28 + 16) = v44;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_24;
      }
    }

    v26 += v47;
    if (!--v22)
    {

      return v28;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22C5F5A9C(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v213 = a1;
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22C3698F8(&v180 - v4);
  v187 = sub_22C90906C();
  v5 = sub_22C369824(v187);
  v185 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v9);
  v205 = sub_22C90941C();
  v10 = sub_22C369824(v205);
  v208 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v204 = v14;
  sub_22C36BA0C();
  v203 = sub_22C90963C();
  v15 = sub_22C369824(v203);
  v182 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v207 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v202 = v21;
  sub_22C36BA0C();
  v201 = sub_22C90965C();
  v22 = sub_22C369824(v201);
  v206 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  sub_22C3698D4();
  v27 = MEMORY[0x28223BE20](v26);
  v200 = &v180 - v28;
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C3698F8(v29);
  v191 = sub_22C90919C();
  v30 = sub_22C369824(v191);
  v190 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C9093BC();
  v36 = sub_22C369824(v35);
  v194 = v37;
  v195 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  v196 = v40;
  sub_22C36BA0C();
  v41 = sub_22C90947C();
  v42 = sub_22C369824(v41);
  v198 = v43;
  v199 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v48 = (v47 - v46);
  v49 = sub_22C90077C();
  v211 = sub_22C369824(v49);
  v212 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v211);
  sub_22C369838();
  v55 = v54 - v53;
  v210 = sub_22C908A8C();
  v56 = sub_22C369824(v210);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  v63 = v62 - v61;
  v209 = sub_22C90952C();
  v64 = sub_22C369824(v209);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C369838();
  v71 = v70 - v69;
  v72 = sub_22C9095CC();
  v73 = sub_22C369824(v72);
  v193 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C369838();
  v79 = v78 - v77;
  v192 = v1;
  sub_22C90935C();
  v80 = sub_22C908B2C();
  MEMORY[0x2318B6010](v80);
  v197 = v48;
  v81 = v214;
  sub_22C908B1C();
  v214 = v81;
  if (v81)
  {
    (*(v212 + 8))(v55, v211);
    (*(v58 + 8))(v63, v210);
    (*(v66 + 8))(v71, v209);
    return v79;
  }

  v82 = v196;
  v180 = v79;
  v181 = v72;
  (*(v212 + 8))(v55, v211);
  (*(v58 + 8))(v63, v210);
  (*(v66 + 8))(v71, v209);
  v84 = v197;
  v83 = v198;
  v85 = v199;
  if ((*(v198 + 88))(v197, v199) != *MEMORY[0x277D72B68])
  {
    v104 = *(v83 + 8);
    v105 = v84;
    v106 = v85;
LABEL_8:
    v104(v105, v106);
    return 0;
  }

  (*(v83 + 96))(v84, v85);
  v86 = v180;
  (*(v193 + 32))(v180, v84, v181);
  v88 = v194;
  v87 = v195;
  (*(v194 + 16))(v82, v192, v195);
  v89 = v88[11];
  v90 = sub_22C36A10C();
  v92 = v91(v90);
  if (v92 == *MEMORY[0x277D72A38])
  {
    v93 = v88[12];
    v94 = sub_22C36A10C();
    v95(v94);
    v96 = *v82;
    v97 = swift_projectBox();
    v98 = v189;
    (*(v190 + 16))(v189, v97, v191);
    sub_22C5F7618(v98, v86);
    v79 = v99;
    v100 = sub_22C3728B8();
    v101(v100);
    v102 = sub_22C37186C();
    v103(v102);
LABEL_6:

    return v79;
  }

  if (v92 == *MEMORY[0x277D729E0])
  {
    v108 = v88[12];
    v109 = sub_22C36A10C();
    v110(v109);
    v212 = *v82;
    v111 = swift_projectBox();
    (*(v185 + 16))(v186, v111, v187);
    v112 = v87;
    v79 = sub_22C90905C();
    v113 = v188;
    sub_22C58B008(v79, v188);

    if (sub_22C370B74(v113, 1, v112) != 1)
    {
      v149 = v214;
      v150 = sub_22C5F5A9C(v213);
      v214 = v149;
      if (v149)
      {
        v151 = sub_22C3728B8();
        v152(v151);
        v153 = sub_22C37186C();
        v154(v153);
        (*(v194 + 8))(v113, v195);

        return v79;
      }

      v79 = v150;
      v176 = sub_22C3728B8();
      v177(v176);
      v178 = sub_22C37186C();
      v179(v178);
      (*(v194 + 8))(v113, v195);
      goto LABEL_6;
    }

    v114 = sub_22C3728B8();
    v115(v114);
    v116 = sub_22C37186C();
    v117(v116);
    sub_22C36DD28(v113, &qword_27D9BB908, &qword_22C910960);

    return 0;
  }

  if (v92 != *MEMORY[0x277D729F8])
  {
    v155 = sub_22C37186C();
    v156(v155);
    v157 = v88[1];
    v105 = sub_22C36A10C();
    goto LABEL_8;
  }

  v118 = v88[1];
  v119 = sub_22C36A10C();
  v120(v119);
  result = sub_22C9095BC();
  v121 = 0;
  v210 = *(result + 16);
  v122 = v206;
  v212 = v206 + 16;
  LODWORD(v199) = *MEMORY[0x277D72E08];
  v197 = (v182 + 8);
  v198 = v182 + 104;
  v211 = (v206 + 8);
  v194 = v206 + 32;
  v195 = MEMORY[0x277D84F90];
  v123 = v201;
  v124 = v207;
  v125 = v208;
  v126 = v183;
  v209 = result;
  while (v210 != v121)
  {
    if (v121 >= *(result + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v196 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v127 = *(v122 + 72);
    (*(v122 + 16))(v126, result + v196 + v127 * v121, v123);
    v128 = v202;
    v129 = v126;
    sub_22C90964C();
    v130 = v124;
    v131 = v124;
    v132 = v203;
    (*v198)(v130, v199, v203);
    LODWORD(v213) = sub_22C90962C();
    v133 = *v197;
    (*v197)(v131, v132);
    v133(v128, v132);
    if (v213)
    {
      v137 = v127;
      v138 = v196;
      v213 = *v194;
      v213(v184, v129, v123);
      v139 = v195;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215 = v139;
      if (isUniquelyReferenced_nonNull_native)
      {
        v126 = v129;
      }

      else
      {
        v141 = *(v139 + 16);
        v142 = sub_22C377BA0();
        sub_22C3B6C70(v142, v143, v144);
        v126 = v183;
        v139 = v215;
      }

      v124 = v207;
      v125 = v208;
      v122 = v206;
      v145 = v139;
      v146 = *(v139 + 16);
      v147 = *(v145 + 24);
      if (v146 >= v147 >> 1)
      {
        sub_22C3B6C70(v147 > 1, v146 + 1, 1);
        v126 = v183;
        v145 = v215;
      }

      ++v121;
      *(v145 + 16) = v146 + 1;
      v195 = v145;
      v148 = v145 + v138 + v146 * v137;
      v123 = v201;
      (v213)(v148);
      result = v209;
    }

    else
    {
      v134 = *v211;
      v135 = sub_22C36FCCC();
      v136(v135);
      ++v121;
      v124 = v207;
      v125 = v208;
      v122 = v206;
      v126 = v129;
      result = v209;
    }
  }

  v158 = *(v195 + 16);
  if (v158)
  {
    v159 = v195 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v210 = *(v122 + 72);
    v213 = *(v122 + 16);
    v160 = (v125 + 8);
    v79 = MEMORY[0x277D84F90];
    v162 = v204;
    v161 = v205;
    v163 = v200;
    while (1)
    {
      v164 = v201;
      v213(v163, v159, v201);
      sub_22C90961C();
      v165 = sub_22C5F55CC();
      (*v160)(v162, v161);
      result = (*v211)(v163, v164);
      v166 = *(v165 + 16);
      v167 = *(v79 + 16);
      if (__OFADD__(v167, v166))
      {
        goto LABEL_47;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v167 + v166 > *(v79 + 24) >> 1)
      {
        sub_22C5921DC();
        v79 = v168;
      }

      v162 = v204;
      v161 = v205;
      if (*(v165 + 16))
      {
        v169 = (*(v79 + 24) >> 1) - *(v79 + 16);
        result = sub_22C90430C();
        v170 = *(result - 8);
        if (v169 < v166)
        {
          goto LABEL_49;
        }

        v171 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v172 = *(v170 + 72);
        swift_arrayInitWithCopy();

        v162 = v204;
        v161 = v205;
        v163 = v200;
        if (v166)
        {
          v173 = *(v79 + 16);
          v174 = __OFADD__(v173, v166);
          v175 = v173 + v166;
          if (v174)
          {
            goto LABEL_50;
          }

          *(v79 + 16) = v175;
        }
      }

      else
      {

        v163 = v200;
        if (v166)
        {
          goto LABEL_48;
        }
      }

      v159 += v210;
      if (!--v158)
      {

        goto LABEL_45;
      }
    }
  }

  v79 = MEMORY[0x277D84F90];
LABEL_45:
  (*(v193 + 8))(v180, v181);
  return v79;
}

uint64_t sub_22C5F6894(uint64_t a1)
{
  v116 = a1;
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v96 = &v91 - v4;
  v95 = sub_22C90906C();
  v94 = *(v95 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22C90941C();
  v99 = *(v109 - 8);
  v7 = *(v99 + 64);
  v8 = MEMORY[0x28223BE20](v109);
  v108 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v122 = &v91 - v10;
  v111 = sub_22C90963C();
  v98 = *(v111 - 8);
  v11 = *(v98 + 64);
  v12 = MEMORY[0x28223BE20](v111);
  v110 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v120 = &v91 - v14;
  v103 = sub_22C90965C();
  v118 = *(v103 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v103);
  v119 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22C9093BC();
  v101 = *(v104 - 1);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C90947C();
  v106 = *(v19 - 8);
  v107 = v19;
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22C90077C();
  v113 = *(v23 - 8);
  v114 = v23;
  v24 = *(v113 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22C908A8C();
  v27 = *(v112 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v112);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22C90952C();
  v117 = *(v121 - 8);
  v31 = *(v117 + 64);
  MEMORY[0x28223BE20](v121);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22C9095CC();
  v102 = *(v34 - 8);
  v35 = *(v102 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v1;
  sub_22C90935C();
  v39 = sub_22C908B2C();
  MEMORY[0x2318B6010](v39);
  v105 = v22;
  v41 = v115;
  v40 = v116;
  sub_22C908B1C();
  v115 = v41;
  if (v41)
  {
    (*(v113 + 8))(v26, v114);
    (*(v27 + 8))(v30, v112);
    (*(v117 + 8))(v33, v121);
    return v40 & 1;
  }

  v91 = v38;
  v93 = v37;
  v92 = v34;
  v42 = v103;
  (*(v113 + 8))(v26, v114);
  (*(v27 + 8))(v30, v112);
  (*(v117 + 8))(v33, v121);
  v44 = v105;
  v43 = v106;
  v45 = v107;
  if ((*(v106 + 88))(v105, v107) != *MEMORY[0x277D72B68])
  {
    (*(v43 + 8))(v44, v45);
    goto LABEL_15;
  }

  (*(v43 + 96))(v44, v45);
  v46 = v92;
  (*(v102 + 32))(v93, v44, v92);
  v47 = v101;
  v48 = v100;
  v49 = v104;
  (*(v101 + 16))(v100, v91, v104);
  v50 = (*(v47 + 88))(v48, v49);
  v52 = v110;
  v51 = v111;
  v54 = v119;
  v53 = v120;
  if (v50 != *MEMORY[0x277D72A38])
  {
    if (v50 == *MEMORY[0x277D729E0])
    {
      v77 = v101;
      v78 = v100;
      v79 = v104;
      (*(v101 + 96))(v100, v104);
      v80 = *v78;
      v81 = swift_projectBox();
      v82 = v94;
      v83 = v97;
      v84 = v95;
      (*(v94 + 16))(v97, v81, v95);
      v85 = sub_22C90905C();
      v86 = v96;
      sub_22C58B008(v85, v96);

      if (sub_22C370B74(v86, 1, v79) != 1)
      {
        v87 = v115;
        v40 = v86;
        v88 = sub_22C5F6894(v116);
        v89 = v102;
        v90 = v93;
        if (!v87)
        {
          v40 = v88;
        }

        (*(v82 + 8))(v97, v84);
        (*(v89 + 8))(v90, v92);
        (*(v77 + 8))(v86, v104);

        return v40 & 1;
      }

      (*(v82 + 8))(v83, v84);
      (*(v102 + 8))(v93, v92);
      sub_22C36DD28(v86, &qword_27D9BB908, &qword_22C910960);

      goto LABEL_15;
    }

    v49 = v104;
    v47 = v101;
    v48 = v100;
    if (v50 != *MEMORY[0x277D729F8])
    {
      (*(v102 + 8))(v93, v46);
      (*(v47 + 8))(v48, v49);
      goto LABEL_15;
    }
  }

  (*(v47 + 8))(v48, v49);
  result = sub_22C9095BC();
  v116 = result;
  v56 = v118;
  v114 = *(result + 16);
  if (!v114)
  {
LABEL_13:

    (*(v102 + 8))(v93, v92);
LABEL_15:
    v40 = 0;
    return v40 & 1;
  }

  v57 = 0;
  v113 = v116 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v112 = v118 + 16;
  LODWORD(v107) = *MEMORY[0x277D72E08];
  v105 = (v98 + 8);
  v106 = v98 + 104;
  v104 = (v118 + 8);
  LODWORD(v101) = *MEMORY[0x277D72CD8];
  LODWORD(v100) = *MEMORY[0x277D72D50];
  v117 += 104;
  LODWORD(v98) = *MEMORY[0x277D72AD0];
  v97 = (v99 + 104);
  v99 += 8;
  while (v57 < *(v116 + 16))
  {
    (*(v56 + 16))(v54, v113 + *(v56 + 72) * v57, v42);
    sub_22C90964C();
    (*v106)(v52, v107, v51);
    v58 = sub_22C90962C();
    v59 = v54;
    v60 = v42;
    v61 = v53;
    v62 = *v105;
    (*v105)(v52, v51);
    v62(v61, v51);
    if (v58)
    {
      sub_22C90961C();
      v63 = v121;
      v64 = swift_allocBox();
      v66 = v65;
      v67 = sub_22C9094EC();
      v68 = swift_allocBox();
      v69 = *(*(v67 - 8) + 104);
      v70 = v67;
      v71 = v108;
      v69(v72, v101, v70);
      *v66 = v68;
      v73 = v66;
      v74 = v109;
      v52 = v110;
      (*v117)(v73, v100, v63);
      *v71 = v64;
      (*v97)(v71, v98, v74);
      LOBYTE(v64) = sub_22C90940C();
      v75 = *v99;
      (*v99)(v71, v74);
      v76 = v74;
      v51 = v111;
      v75(v122, v76);
      result = (*v104)(v59, v60);
      v42 = v60;
      if (v64)
      {
        (*(v102 + 8))(v93, v92);

        v40 = 1;
        return v40 & 1;
      }
    }

    else
    {
      result = (*v104)(v59, v60);
      v42 = v60;
    }

    ++v57;
    v54 = v119;
    v53 = v120;
    v56 = v118;
    if (v114 == v57)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22C5F7618(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v3 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v122 = &v106 - v5;
  v6 = sub_22C90430C();
  v123 = *(v6 - 8);
  v124 = v6;
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v6);
  v109 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22C9063DC();
  v107 = *(v108 - 8);
  v9 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v106 - v13;
  v127 = sub_22C90941C();
  v112 = *(v127 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22C90952C();
  v116 = *(v117 - 8);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x28223BE20](v117);
  v115 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v114 = &v106 - v20;
  MEMORY[0x28223BE20](v19);
  v113 = &v106 - v21;
  v135 = sub_22C90963C();
  v22 = *(v135 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v135);
  v134 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v133 = &v106 - v26;
  v27 = sub_22C90965C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v120 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v125 = &v106 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v106 - v34;
  v118 = a2;
  v36 = sub_22C9095BC();
  v37 = 0;
  v137 = *(v36 + 16);
  v139 = v28 + 16;
  v132 = *MEMORY[0x277D72E08];
  v130 = (v22 + 8);
  v131 = (v22 + 104);
  v138 = (v28 + 8);
  v136 = v28;
  v119 = (v28 + 32);
  v121 = MEMORY[0x277D84F90];
  v129 = v36;
  while (v137 != v37)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v128 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v38 = *(v136 + 72);
    (*(v136 + 16))(v35, v36 + v128 + v38 * v37, v27);
    v39 = v133;
    sub_22C90964C();
    v40 = v35;
    v41 = v134;
    v42 = v135;
    (*v131)(v134, v132, v135);
    v43 = sub_22C90962C();
    v44 = v27;
    v45 = *v130;
    (*v130)(v41, v42);
    v45(v39, v42);
    if (v43)
    {
      v46 = v38;
      v47 = v128;
      v48 = *v119;
      (*v119)(v120, v40, v44);
      v49 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v49;
      v27 = v44;
      v35 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6C70(0, *(v49 + 16) + 1, 1);
        v49 = v140;
      }

      v36 = v129;
      v51 = v46;
      v53 = *(v49 + 16);
      v52 = *(v49 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22C3B6C70(v52 > 1, v53 + 1, 1);
        v49 = v140;
      }

      ++v37;
      *(v49 + 16) = v53 + 1;
      v121 = v49;
      v48((v49 + v47 + v53 * v51), v120, v27);
    }

    else
    {
      (*v138)(v40, v44);
      ++v37;
      v27 = v44;
      v35 = v40;
      v36 = v129;
    }
  }

  v54 = *(v121 + 16);
  if (!v54)
  {
LABEL_24:

    v72 = v113;
    sub_22C90959C();
    v73 = v114;
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v114);
    v74 = v116;
    v75 = *(v116 + 8);
    v76 = v72;
    v77 = v117;
    v75(v76, v117);
    v78 = swift_allocObject();
    v78[2] = 0xD000000000000028;
    v78[3] = 0x800000022C92EB40;
    v78[4] = 0xD000000000000015;
    v78[5] = 0x800000022C92EBD0;
    v79 = v115;
    *v115 = v78;
    (*(v74 + 104))(v79, *MEMORY[0x277D72D28], v77);
    LOBYTE(v74) = sub_22C90950C();
    v75(v79, v77);
    v75(v73, v77);
    if (v74)
    {
      v80 = sub_22C90914C();
      v81 = v110;
      sub_22C6053C8(v80, v110);

      v82 = sub_22C9093BC();
      if (sub_22C370B74(v81, 1, v82) == 1)
      {
        sub_22C36DD28(v81, &qword_27D9BB908, &qword_22C910960);
      }

      else
      {
        v83 = sub_22C5F82F4();
        (*(*(v82 - 8) + 8))(v81, v82);
        if (v83)
        {

          v84 = v106;
          sub_22C903F8C();

          v85 = sub_22C9063CC();
          v86 = sub_22C90AAFC();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v140 = v88;
            *v87 = 136315138;
            v89 = MEMORY[0x2318B7AD0](v83, MEMORY[0x277D837D0]);
            v91 = sub_22C36F9F4(v89, v90, &v140);

            *(v87 + 4) = v91;
            _os_log_impl(&dword_22C366000, v85, v86, "Retrieved available export identifiers for spotlight entity: %s", v87, 0xCu);
            sub_22C36FF94(v88);
            MEMORY[0x2318B9880](v88, -1, -1);
            MEMORY[0x2318B9880](v87, -1, -1);
          }

          (*(v107 + 8))(v84, v108);
          v92 = 0;
          v93 = *(v83 + 16);
          v94 = (v123 + 32);
          v95 = v83 + 40;
          v96 = MEMORY[0x277D84F90];
          v139 = v83 + 40;
LABEL_31:
          v97 = (v95 + 16 * v92);
          while (v93 != v92)
          {
            if (v92 >= *(v83 + 16))
            {
              goto LABEL_48;
            }

            v99 = *(v97 - 1);
            v98 = *v97;

            v100 = v122;
            sub_22C90431C();
            if (sub_22C370B74(v100, 1, v124) != 1)
            {
              v101 = *v94;
              (*v94)(v109, v100, v124);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = *(v96 + 16);
                sub_22C5921DC();
                v96 = v104;
              }

              v102 = *(v96 + 16);
              if (v102 >= *(v96 + 24) >> 1)
              {
                sub_22C5921DC();
                v96 = v105;
              }

              ++v92;
              *(v96 + 16) = v102 + 1;
              v101((v96 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v102), v109, v124);
              v95 = v139;
              goto LABEL_31;
            }

            sub_22C36DD28(v100, &qword_27D9BB638, &unk_22C9150C0);
            v97 += 2;
            ++v92;
          }
        }
      }
    }

    return;
  }

  v137 = v27;
  v55 = v121 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
  v56 = *(v136 + 72);
  v57 = *(v136 + 16);
  v58 = (v112 + 8);
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    v60 = v125;
    v61 = v137;
    v57(v125, v55, v137);
    v62 = v126;
    sub_22C90961C();
    v63 = sub_22C5F55CC();
    (*v58)(v62, v127);
    (*v138)(v60, v61);
    v64 = *(v63 + 16);
    v65 = *(v59 + 16);
    if (__OFADD__(v65, v64))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v65 + v64 > *(v59 + 24) >> 1)
    {
      sub_22C5921DC();
      v59 = v66;
    }

    if (*(v63 + 16))
    {
      if ((*(v59 + 24) >> 1) - *(v59 + 16) < v64)
      {
        goto LABEL_46;
      }

      v67 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v68 = *(v123 + 72);
      swift_arrayInitWithCopy();

      if (v64)
      {
        v69 = *(v59 + 16);
        v70 = __OFADD__(v69, v64);
        v71 = v69 + v64;
        if (v70)
        {
          goto LABEL_47;
        }

        *(v59 + 16) = v71;
      }
    }

    else
    {

      if (v64)
      {
        goto LABEL_45;
      }
    }

    v55 += v56;
    if (!--v54)
    {
      goto LABEL_24;
    }
  }

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

uint64_t sub_22C5F82F4()
{
  v1 = v0;
  v50 = sub_22C90931C();
  v52 = *(v50 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22C9093BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v44 - v14);
  v16 = sub_22C90906C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v6 + 16);
  v64 = v6 + 16;
  v63(v15, v1, v5);
  v62 = *(v6 + 88);
  if (v62(v15, v5) == *MEMORY[0x277D729E0])
  {
    v21 = *(v6 + 96);
    v58 = v6 + 96;
    v59 = v6 + 88;
    v57 = v21;
    v21(v15, v5);
    v22 = *v15;
    v23 = swift_projectBox();
    v47 = v17;
    (*(v17 + 16))(v20, v23, v16);

    v24 = sub_22C90905C();
    v25 = *(v24 + 16);
    v26 = v20;
    if (v25)
    {
      v45 = v20;
      v46 = v16;
      v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v44 = v24;
      v28 = v24 + v27;
      v61 = *(v6 + 72);
      v29 = (v6 + 32);
      v60 = *MEMORY[0x277D72A58];
      v55 = (v52 + 16);
      v56 = (v6 + 8);
      v54 = (v52 + 88);
      v53 = *MEMORY[0x277D729B8];
      v48 = (v52 + 96);
      v49 = (v52 + 8);
      v30 = MEMORY[0x277D84F90];
      v31 = v50;
      do
      {
        v63(v13, v28, v5);
        (*v29)(v10, v13, v5);
        v32 = v62(v10, v5);
        if (v32 == v60)
        {
          v57(v10, v5);
          v33 = *v10;
          v34 = swift_projectBox();
          (*v55)(v4, v34, v31);
          v35 = (*v54)(v4, v31);
          if (v35 == v53)
          {
            (*v48)(v4, v31);
            v36 = *v4;
            v51 = v4[1];
            v52 = v36;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = *(v30 + 16);
              sub_22C590270();
              v30 = v41;
            }

            v37 = *(v30 + 16);
            if (v37 >= *(v30 + 24) >> 1)
            {
              sub_22C590270();
              v30 = v42;
            }

            *(v30 + 16) = v37 + 1;
            v38 = v30 + 16 * v37;
            v39 = v51;
            *(v38 + 32) = v52;
            *(v38 + 40) = v39;
            v31 = v50;
          }

          else
          {
            (*v49)(v4, v31);
          }
        }

        else
        {
          (*v56)(v10, v5);
        }

        v28 += v61;
        --v25;
      }

      while (v25);

      v26 = v45;
      v16 = v46;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    (*(v47 + 8))(v26, v16);
  }

  else
  {
    (*(v6 + 8))(v15, v5);
    return 0;
  }

  return v30;
}

unint64_t sub_22C5F8844()
{
  result = qword_27D9BAA40;
  if (!qword_27D9BAA40)
  {
    type metadata accessor for InterpreterError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA40);
  }

  return result;
}

uint64_t sub_22C5F889C(uint64_t a1)
{
  v2 = type metadata accessor for InterpreterError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C5F88F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v28 = a1;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v29 = v6;
  v30 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_22C9093BC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v27[-v17];
  sub_22C5F8D4C();
  sub_22C909F0C();
  (*(v12 + 16))(v18, v3, v9);
  JointResolution.CandidateIdentifier.init(typedValue:)(v18, &v33);
  v20 = v33;
  v19 = v34;

  v33 = v20;
  v34 = v19;
  MEMORY[0x28223BE20](v21);
  *&v27[-16] = &v33;
  sub_22C5EC08C(sub_22C3AC11C, &v27[-32], v28);

  swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_22C36AD90();
  sub_22C62E2C4(5, v22);
  v23 = v33;
  if ((v31 & 0x100000000) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_22C36AD90();
    sub_22C62E2C4(6, v24);
    v23 = v33;
  }

  if ((v32 & 0x100000000) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_22C36AD90();
    sub_22C62E2C4(7, v25);
    return v33;
  }

  return v23;
}

unint64_t sub_22C5F8D4C()
{
  result = qword_2814345C8;
  if (!qword_2814345C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814345C8);
  }

  return result;
}

uint64_t sub_22C5F8DA0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v223 = a2;
  v3 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  v4 = sub_22C369914(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v230 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v239 = v9;
  sub_22C36BA0C();
  v238 = sub_22C90399C();
  v10 = sub_22C369824(v238);
  v207 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v245 = v14;
  v15 = sub_22C3A5908(&qword_27D9BF250, &qword_22C922418);
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v237 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v204 - v21;
  v242 = sub_22C903B9C();
  v23 = sub_22C369824(v242);
  v231 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  v236 = v27;
  sub_22C36BA0C();
  v211 = sub_22C90434C();
  v28 = sub_22C369824(v211);
  v210 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  v209 = v32;
  sub_22C36BA0C();
  v244 = sub_22C9081CC();
  v33 = sub_22C369824(v244);
  v241 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  v243 = v37;
  sub_22C36BA0C();
  v235 = sub_22C9039FC();
  v38 = sub_22C369824(v235);
  v208 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  v234 = v42;
  v43 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v44 = sub_22C369914(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  sub_22C3698D4();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v204 - v49;
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v229 = v51;
  v52 = sub_22C3A5908(&qword_27D9BF258, &qword_22C922420);
  v53 = sub_22C369914(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v225 = &v204 - v56;
  sub_22C36BA0C();
  v215 = sub_22C903ADC();
  v57 = sub_22C369824(v215);
  v206 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698A8();
  v205 = v61;
  v62 = sub_22C3A5908(&qword_27D9BF260, &qword_22C922428);
  v63 = sub_22C369914(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v213 = v68;
  v69 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  v70 = sub_22C369914(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v224 = &v204 - v73;
  sub_22C36BA0C();
  v232 = sub_22C903B1C();
  v74 = sub_22C369824(v232);
  v226 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698A8();
  v79 = v78;
  sub_22C36BA0C();
  v218 = sub_22C9063DC();
  v80 = sub_22C369824(v218);
  v217 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  v86 = &v204 - v85;
  v222 = sub_22C90096C();
  v87 = sub_22C369824(v222);
  v221 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  v93 = &v204 - v92;
  sub_22C90095C();
  v246 = sub_22C9087DC();
  v94 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v233 = sub_22C3AC13C();
  v95 = sub_22C907E5C();

  v227 = v50;
  v228 = v93;
  v240 = a1;
  if (v95)
  {
    [v95 coordinate];
    sub_22C90093C();
    [v95 coordinate];
    sub_22C90094C();
  }

  else
  {
    sub_22C903F8C();
    v96 = sub_22C9063CC();
    v97 = sub_22C90AADC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_22C366000, v96, v97, "Not setting location in SearchContext due to missing placemark context", v98, 2u);
      sub_22C3699EC();
    }

    (*(v217 + 8))(v86, v218);
  }

  v99 = v225;
  v246 = sub_22C9087DC();
  v100 = v224;
  v101 = v94;
  sub_22C907EAC();
  v102 = v232;
  sub_22C36D0A8(v100, 1, v232);
  if (!v109)
  {
    (*(v226 + 32))(v79, v100, v102);

    sub_22C903A1C();
    sub_22C36C0B4();
    if (!v109)
    {
      sub_22C5FAFF4(v110);
      sub_22C90086C();
    }

    sub_22C903A3C();
    sub_22C36C0B4();
    v108 = v229;
    v112 = v213;
    if (!v109)
    {
      sub_22C5FAFF4(v111);
      sub_22C90087C();
    }

    sub_22C903AAC();
    sub_22C36C0B4();
    if (!v109)
    {
      sub_22C5FAFF4(v113);
      sub_22C90091C();
    }

    sub_22C903A8C();
    sub_22C36C0B4();
    if (!v109)
    {
      sub_22C5FAFF4(v114);
      sub_22C9008FC();
    }

    sub_22C903A9C();
    sub_22C36C0B4();
    if (!v109)
    {
      sub_22C5FAFF4(v115);
      sub_22C90090C();
    }

    sub_22C903A6C();
    v116 = sub_22C903B0C();
    v117 = sub_22C36CCF8();
    sub_22C36D0A8(v117, v118, v116);
    if (v109)
    {
      sub_22C376B84(v112, &qword_27D9BF260, &qword_22C922428);
    }

    else
    {
      v119 = sub_22C903ABC();
      sub_22C36BBA8(v116);
      (*(v120 + 8))(v121, v116);
      if (v119 != 2)
      {
        sub_22C9008DC();
      }
    }

    v122 = v214;
    sub_22C903A6C();
    v123 = sub_22C36CCF8();
    sub_22C36D0A8(v123, v124, v116);
    if (v109)
    {
      sub_22C376B84(v122, &qword_27D9BF260, &qword_22C922428);
      sub_22C36C640(v99, 1, 1, v215);
      v125 = v216;
    }

    else
    {
      sub_22C903AEC();
      sub_22C36BBA8(v116);
      (*(v126 + 8))(v122, v116);
      v127 = v215;
      sub_22C36D0A8(v99, 1, v215);
      v125 = v216;
      if (!v128)
      {
        v225 = v101;
        v129 = v206;
        v130 = v205;
        (*(v206 + 32))(v205, v99, v127);
        sub_22C903ACC();
        sub_22C90092C();
        (*(v129 + 8))(v130, v127);
LABEL_32:
        sub_22C903A5C();
        if (v131)
        {
          sub_22C9008AC();
        }

        sub_22C903A2C();
        if (v132)
        {
          sub_22C9008CC();
        }

        sub_22C903A6C();
        v133 = sub_22C36CCF8();
        sub_22C36D0A8(v133, v134, v116);
        if (v109)
        {
          sub_22C376B84(v125, &qword_27D9BF260, &qword_22C922428);
        }

        else
        {
          sub_22C903AFC();
          v136 = v135;
          sub_22C36BBA8(v116);
          (*(v137 + 8))(v138, v116);
          if (v136)
          {
            sub_22C9008BC();
          }
        }

        sub_22C903A0C();
        sub_22C36C0B4();
        if (!v109)
        {
          v139 = sub_22C90085C();
        }

        MEMORY[0x2318B0F20](v139);
        sub_22C90088C();
        (*(v226 + 8))(v79, v232);
        v107 = v227;
        goto LABEL_44;
      }
    }

    sub_22C376B84(v99, &qword_27D9BF258, &qword_22C922420);
    goto LABEL_32;
  }

  sub_22C376B84(v100, &qword_27D9BD760, &qword_22C922200);

  v103 = v212;
  sub_22C903F8C();
  v104 = sub_22C9063CC();
  v105 = sub_22C90AADC();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_22C366000, v104, v105, "Not setting Siri request info in SearchContext due to missing Siri request context", v106, 2u);
    sub_22C3699EC();
  }

  (*(v217 + 8))(v103, v218);
  v107 = v227;
  v108 = v229;
LABEL_44:
  v246 = sub_22C9087DC();
  sub_22C907EEC();

  sub_22C5FA1AC(v108, v107, &qword_27D9BD798, &unk_22C919070);
  v140 = sub_22C9079FC();
  v141 = sub_22C36D0A8(v107, 1, v140);
  v240 = v22;
  if (v109)
  {
    sub_22C376B84(v107, &qword_27D9BD798, &unk_22C919070);
LABEL_62:
    v165 = v228;
    sub_22C9008EC();
    v166 = v219;
    sub_22C5FA1AC(v108, v219, &qword_27D9BD798, &unk_22C919070);
    v167 = sub_22C36CCF8();
    sub_22C36D0A8(v167, v168, v140);
    if (v109)
    {
      sub_22C376B84(v166, &qword_27D9BD798, &unk_22C919070);
      v169 = v223;
    }

    else
    {
      v170 = v166;
      v171 = sub_22C9079EC();
      sub_22C36BBA8(v140);
      (*(v172 + 8))(v170, v140);
      v173 = *(v171 + 16);
      if (v173)
      {
        v234 = *(v241 + 16);
        sub_22C372AA0();
        v227 = v171;
        v175 = v171 + v174;
        v232 = (v207 + 8);
        v177 = (v176 - 8);
        v235 = (v231 + 32);
        v178 = MEMORY[0x277D84F90];
        v241 = v176;
        v233 = *(v176 + 56);
        do
        {
          v234(v243, v175, v244);
          sub_22C9081AC();
          v179 = v239;
          sub_22C9038EC();
          v180 = sub_22C903BCC();
          sub_22C36D0A8(v179, 1, v180);
          if (v109)
          {
            v185 = v237;
            v186 = v242;
            sub_22C36C640(v237, 1, 1, v242);
          }

          else
          {
            v181 = v230;
            sub_22C5FA1AC(v179, v230, &qword_27D9BF248, &qword_22C926400);
            v182 = v237;
            sub_22C903BAC();
            sub_22C36BBA8(v180);
            v184 = v181;
            v185 = v182;
            v22 = v240;
            (*(v183 + 8))(v184, v180);
            v186 = v242;
          }

          sub_22C376B84(v179, &qword_27D9BF248, &qword_22C926400);
          (*v232)(v245, v238);
          sub_22C5FA210(v185, v22);
          (*v177)(v243, v244);
          sub_22C36D0A8(v22, 1, v186);
          if (v109)
          {
            sub_22C376B84(v22, &qword_27D9BF250, &qword_22C922418);
          }

          else
          {
            v187 = *v235;
            (*v235)(v236, v22, v186);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v190 = *(v178 + 16);
              sub_22C593F94();
              v178 = v191;
            }

            v189 = *(v178 + 16);
            if (v189 >= *(v178 + 24) >> 1)
            {
              sub_22C593F94();
              v178 = v192;
            }

            *(v178 + 16) = v189 + 1;
            v187(v178 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v189, v236, v242);
            v22 = v240;
          }

          v175 += v233;
          --v173;
        }

        while (v173);

        v169 = v223;
        v165 = v228;
      }

      else
      {

        v169 = v223;
      }

      v193 = v209;
      sub_22C90433C();
      sub_22C90432C();
      v194 = sub_22C9043BC();
      v195 = *(v194 + 48);
      v196 = *(v194 + 52);
      swift_allocObject();
      sub_22C9043AC();
      sub_22C90438C();

      sub_22C807CDC(v197);
      sub_22C90089C();

      (*(v210 + 8))(v193, v211);
      v108 = v229;
    }

    sub_22C90919C();
    v198 = swift_allocBox();
    v199 = v221;
    v200 = v222;
    (*(v221 + 16))(v220, v165, v222);
    sub_22C5FA154();
    sub_22C90916C();
    sub_22C376B84(v108, &qword_27D9BD798, &unk_22C919070);
    (*(v199 + 8))(v165, v200);
    *v169 = v198;
    v201 = *MEMORY[0x277D72A38];
    v202 = sub_22C9093BC();
    sub_22C36BBA8(v202);
    return (*(v203 + 104))(v169, v201);
  }

  v142 = MEMORY[0x2318B4EB0](v141);
  sub_22C36BBA8(v140);
  (*(v143 + 8))(v107, v140);
  v144 = *(v142 + 16);
  if (!v144)
  {

    v22 = v240;
    goto LABEL_62;
  }

  v232 = v140;
  v233 = *(v208 + 16);
  sub_22C372AA0();
  v227 = v142;
  v146 = v142 + v145;
  v148 = *(v147 + 56);
  v149 = (v147 - 8);
  v150 = MEMORY[0x277D84F90];
  while (1)
  {
    v151 = v234;
    v152 = v235;
    (v233)(v234, v146, v235);
    v153 = sub_22C5FA280();
    result = (*v149)(v151, v152);
    v155 = *(v153 + 16);
    v156 = *(v150 + 16);
    if (__OFADD__(v156, v155))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v156 + v155 > *(v150 + 24) >> 1)
    {
      sub_22C59405C();
      v150 = v157;
    }

    if (*(v153 + 16))
    {
      v158 = (*(v150 + 24) >> 1) - *(v150 + 16);
      result = sub_22C900A4C();
      v159 = *(result - 8);
      if (v158 < v155)
      {
        goto LABEL_85;
      }

      v160 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v161 = *(v159 + 72);
      swift_arrayInitWithCopy();

      if (v155)
      {
        v162 = *(v150 + 16);
        v163 = __OFADD__(v162, v155);
        v164 = v162 + v155;
        if (v163)
        {
          goto LABEL_86;
        }

        *(v150 + 16) = v164;
      }
    }

    else
    {

      if (v155)
      {
        goto LABEL_84;
      }
    }

    v146 += v148;
    if (!--v144)
    {

      v108 = v229;
      v22 = v240;
      v140 = v232;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

unint64_t sub_22C5FA154()
{
  result = qword_27D9BF268;
  if (!qword_27D9BF268)
  {
    sub_22C90096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF268);
  }

  return result;
}

uint64_t sub_22C5FA1AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  sub_22C36BBA8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C5FA210(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF250, &qword_22C922418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5FA280()
{
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v83 = v2;
  v84 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698E4();
  v88 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v82 = v7;
  sub_22C36BA0C();
  v8 = sub_22C90361C();
  v90 = sub_22C369824(v8);
  v91 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v90);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22C900A4C();
  v14 = sub_22C369824(v89);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v22 = sub_22C369914(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  v27 = sub_22C9093BC();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v28);
  v35 = v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = v78 - v36;
  sub_22C9039CC();
  sub_22C36D0A8(v26, 1, v27);
  if (v38)
  {
    sub_22C376B84(v26, &qword_27D9BB908, &qword_22C910960);
    v39 = v88;
    sub_22C903F8C();
    v40 = sub_22C9063CC();
    v41 = sub_22C90AAFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22C366000, v40, v41, "Skipping SpanMatchedEntity since there's no attached TypedValue", v42, 2u);
      sub_22C3699EC();
    }

    (*(v83 + 8))(v39, v84);
    return MEMORY[0x277D84F90];
  }

  (*(v30 + 32))(v37, v26, v27);
  v43 = sub_22C5FA9B0();
  v85 = v45;
  v86 = v43;
  v87 = v46;
  v88 = v44;
  if (!v44)
  {
    v60 = v82;
    sub_22C903F8C();
    v61 = *(v30 + 16);
    v81 = v37;
    v61(v35, v37, v27);
    v62 = sub_22C9063CC();
    v63 = v27;
    v64 = sub_22C90AAFC();
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v80 = v63;
      v66 = v65;
      v67 = v30;
      v68 = swift_slowAlloc();
      v92 = v68;
      *v66 = 136315138;
      v69 = sub_22C90938C();
      v71 = v70;
      v72 = *(v67 + 8);
      v73 = v35;
      v74 = v80;
      v72(v73, v80);
      v75 = sub_22C36F9F4(v69, v71, &v92);

      *(v66 + 4) = v75;
      _os_log_impl(&dword_22C366000, v62, v64, "Skipping SpanMatchedEntity since the typedValue is not an entity: %s", v66, 0xCu);
      sub_22C36FF94(v68);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v83 + 8))(v82, v84);
      v72(v81, v74);
    }

    else
    {

      v76 = *(v30 + 8);
      v76(v35, v63);
      (*(v83 + 8))(v60, v84);
      v76(v81, v63);
    }

    return MEMORY[0x277D84F90];
  }

  v47 = v30;
  v48 = sub_22C9039DC();
  v49 = *(v48 + 16);
  if (!v49)
  {

    (*(v47 + 8))(v37, v27);
    return MEMORY[0x277D84F90];
  }

  v79 = v47;
  v80 = v27;
  v81 = v37;
  v92 = MEMORY[0x277D84F90];
  sub_22C3B7640(0, v49, 0);
  v50 = v92;
  v51 = *(v91 + 16);
  sub_22C372AA0();
  v78[1] = v48;
  v53 = v48 + v52;
  v83 = *(v54 + 56);
  v84 = v55;
  v91 = v54;
  v56 = (v54 - 8);
  v82 = v16 + 32;
  do
  {
    v57 = v90;
    v84(v13, v53, v90);
    sub_22C900A3C();

    sub_22C900A2C();

    sub_22C9009CC();
    sub_22C90356C();
    sub_22C9009BC();
    sub_22C9035BC();
    sub_22C900A0C();
    sub_22C90358C();
    sub_22C9009DC();
    sub_22C9035DC();
    sub_22C9009FC();
    sub_22C90359C();
    sub_22C9009EC();
    sub_22C90360C();
    sub_22C900A1C();
    (*v56)(v13, v57);
    v92 = v50;
    v59 = *(v50 + 16);
    v58 = *(v50 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_22C3B7640(v58 > 1, v59 + 1, 1);
      v50 = v92;
    }

    *(v50 + 16) = v59 + 1;
    (*(v16 + 32))(v50 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v59, v20, v89);
    v53 += v83;
    --v49;
  }

  while (v49);
  (*(v79 + 8))(v81, v80);

  return v50;
}

uint64_t sub_22C5FA9B0()
{
  v1 = v0;
  v2 = sub_22C90910C();
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90952C();
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = (&v50 - v13);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = sub_22C9093BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v50 - v22);
  v24 = sub_22C90919C();
  v59 = *(v24 - 8);
  v60 = v24;
  v25 = *(v59 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v17 + 16);
  v58 = v1;
  v57(v23, v1, v16);
  v28 = *(v17 + 88);
  if (v28(v23, v16) != *MEMORY[0x277D72A38])
  {
    (*(v17 + 8))(v23, v16);
    v34 = v62;
    goto LABEL_6;
  }

  v51 = v28;
  v52 = v2;
  (*(v17 + 96))(v23, v16);
  v29 = *v23;
  v30 = swift_projectBox();
  (*(v59 + 16))(v27, v30, v60);

  sub_22C9090AC();
  v31 = v61;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v61);
  v32 = v63;
  v33 = v15;
  v34 = v62;
  v50 = *(v63 + 8);
  v50(v33, v62);
  if ((*(v32 + 88))(v31, v34) != *MEMORY[0x277D72D28])
  {
    (*(v59 + 8))(v27, v60);
    v50(v61, v34);
    v28 = v51;
    v2 = v52;
LABEL_6:
    v57(v21, v58, v16);
    if (v28(v21, v16) == *MEMORY[0x277D729F8])
    {
      (*(v17 + 96))(v21, v16);
      v39 = *v21;
      v40 = swift_projectBox();
      v42 = v55;
      v41 = v56;
      (*(v56 + 16))(v55, v40, v2);

      v43 = v53;
      sub_22C9090AC();
      v44 = v54;
      TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v54);
      v45 = v63;
      v46 = *(v63 + 8);
      v46(v43, v34);
      if ((*(v45 + 88))(v44, v34) == *MEMORY[0x277D72D28])
      {
        (*(v45 + 96))(v44, v34);
        v47 = *(*v44 + 32);
        v48 = *(*v44 + 40);

        v38 = sub_22C90908C();
        (*(v41 + 8))(v42, v2);
        return v38;
      }

      (*(v41 + 8))(v42, v2);
      v46(v44, v34);
    }

    else
    {
      (*(v17 + 8))(v21, v16);
    }

    return 0;
  }

  v35 = v61;
  (*(v63 + 96))(v61, v34);
  v36 = *(*v35 + 32);
  v37 = *(*v35 + 40);

  v38 = sub_22C90908C();
  (*(v59 + 8))(v27, v60);
  return v38;
}

uint64_t sub_22C5FB000(uint64_t a1)
{
  v3 = sub_22C90941C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v35[1] = v1;
  v48 = MEMORY[0x277D84F90];
  sub_22C3B6FE8(0, v10, 0);
  v11 = v48;
  result = sub_22C57D74C(a1);
  v15 = result;
  v16 = 0;
  v47 = a1 + 56;
  v40 = v4 + 8;
  v41 = v4 + 16;
  v38 = a1;
  v39 = v4 + 32;
  v36 = a1 + 64;
  v37 = v10;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(a1 + 32))
    {
      v17 = v15 >> 6;
      if ((*(v47 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v13)
      {
        goto LABEL_26;
      }

      LODWORD(v46) = v14;
      v43 = v16;
      v44 = v13;
      v18 = *(a1 + 48);
      v45 = *(v4 + 72);
      v19 = v42;
      v20 = (*(v4 + 16))(v42, v18 + v45 * v15, v3);
      sub_22C5FB67C(v20);
      (*(v4 + 8))(v19, v3);
      v48 = v11;
      v21 = v3;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      v24 = v11;
      if (v23 >= v22 >> 1)
      {
        sub_22C3B6FE8(v22 > 1, v23 + 1, 1);
        v24 = v48;
      }

      *(v24 + 16) = v23 + 1;
      result = (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v23 * v45, v9, v21);
      if (v46)
      {
        goto LABEL_30;
      }

      v3 = v21;
      v11 = v24;
      a1 = v38;
      v25 = 1 << *(v38 + 32);
      if (v15 >= v25)
      {
        goto LABEL_27;
      }

      v26 = *(v47 + 8 * v17);
      if ((v26 & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v38 + 36) != v44)
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v15 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v28 = v37;
      }

      else
      {
        v46 = v11;
        v29 = v4;
        v30 = v17 << 6;
        v31 = v17 + 1;
        v32 = (v36 + 8 * v17);
        v28 = v37;
        while (v31 < (v25 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_22C3A5038(v15, v44, 0);
            v25 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        result = sub_22C3A5038(v15, v44, 0);
LABEL_19:
        v4 = v29;
        v11 = v46;
      }

      v16 = v43 + 1;
      if (v43 + 1 == v28)
      {
        return v11;
      }

      v14 = 0;
      v13 = *(a1 + 36);
      v15 = v25;
      if (v25 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22C5FB388@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C90941C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_22C5FBAA4(v9))
  {
    (*(v5 + 32))(a1, v9, v2);
    v10 = 0;
  }

  else
  {
    (*(v5 + 8))(v9, v2);
    v10 = 1;
  }

  return sub_22C36C640(a1, v10, 1, v2);
}

uint64_t sub_22C5FB484()
{
  v1 = sub_22C90941C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C378048();
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - v8);
  v10 = v4[2];
  v10(&v33 - v8, v0, v1);
  v11 = v4[11];
  v12 = sub_22C36A724();
  v14 = v13(v12);
  if (v14 != *MEMORY[0x277D72AD0])
  {
    if (v14 == *MEMORY[0x277D72AB0])
    {
      v19 = v4[1];
      v20 = sub_22C36A724();
      v21(v20);
      v18 = 1;
      return v18 & 1;
    }

    if (v14 == *MEMORY[0x277D72AE8] || (v14 != *MEMORY[0x277D72AD8] ? (v32 = v14 == *MEMORY[0x277D72AB8]) : (v32 = 1), !v32 && v14 == *MEMORY[0x277D72AE0]))
    {
      v22 = v4[12];
      v23 = sub_22C36A724();
      v24(v23);
      v25 = *v9;
      swift_projectBox();
      v26 = sub_22C36A118();
      v27 = (v10)(v26);
      v18 = sub_22C5FB484(v27);
      v28 = v4[1];
      v29 = sub_22C36BBCC();
      v30(v29);

      return v18 & 1;
    }
  }

  v15 = v4[1];
  v16 = sub_22C36A724();
  v17(v16);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22C5FB67C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C90941C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C378048();
  MEMORY[0x28223BE20](v9);
  v11 = &v67[-v10];
  v12 = *(v6 + 16);
  v12(&v67[-v10], v1, v3);
  v13 = *(v6 + 88);
  v14 = sub_22C36A724();
  v16 = v15(v14);
  v17 = *MEMORY[0x277D72AD0];
  if (v16 == v17)
  {
    v18 = *(v6 + 8);
    v19 = sub_22C36A724();
    v20(v19);
    return v12(a1, v1, v3);
  }

  v22 = v16;
  if (v16 == *MEMORY[0x277D72AB0])
  {
    v23 = sub_22C36ADA4();
    v24(v23);
    v25 = *v11;
    swift_projectBox();
    v26 = sub_22C36A118();
    (v12)(v26);
    v27 = swift_allocBox();
    sub_22C5FB67C(v27);
    v28 = *(v6 + 8);
    v29 = sub_22C36BBCC();
    v30(v29);
    *a1 = v27;
LABEL_7:
    (*(v6 + 104))(a1, v22, v3);
  }

  if (v16 == *MEMORY[0x277D72AE8])
  {
    v31 = sub_22C36ADA4();
    v32(v31);
    v33 = *v11;
    v34 = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
    swift_projectBox();
    v35 = sub_22C36A118();
    (v12)(v35);
    v36 = swift_allocBox();
    v38 = v37;
    v39 = *(v34 + 48);
    sub_22C5FB67C(v36);
    v40 = *(v6 + 8);
    v41 = sub_22C36BBCC();
    v42(v41);
    v43 = sub_22C9093BC();
    sub_22C36C640(v38 + v39, 1, 1, v43);
    *a1 = v36;
    goto LABEL_7;
  }

  if (v16 == *MEMORY[0x277D72AD8])
  {
    v44 = sub_22C36ADA4();
    v45(v44);
    v46 = *(*v11 + 16);
    v47 = swift_allocObject();
    sub_22C5FB000(v46);
    sub_22C3ADD60();
    *(v47 + 16) = v48;
    *a1 = v47;
    (*(v6 + 104))(a1, v22, v3);
  }

  else if (v16 == *MEMORY[0x277D72AB8])
  {
    v49 = sub_22C36ADA4();
    v50(v49);
    v51 = *v11;
    v52 = swift_projectBox();
    v53 = sub_22C90952C();
    v54 = swift_allocBox();
    (*(*(v53 - 8) + 16))(v55, v52, v53);
    *a1 = v54;
    (*(v6 + 104))(a1, v17, v3);
  }

  else
  {
    if (v16 != *MEMORY[0x277D72AE0])
    {
      v12(a1, v1, v3);
      v64 = *(v6 + 8);
      v65 = sub_22C36A724();
      return v66(v65);
    }

    v56 = sub_22C36ADA4();
    v57(v56);
    v58 = *v11;
    swift_projectBox();
    v59 = sub_22C36A118();
    v60 = (v12)(v59);
    sub_22C5FB67C(v60);
    v61 = *(v6 + 8);
    v62 = sub_22C36BBCC();
    v63(v62);
  }
}

uint64_t sub_22C5FBAA4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - v6;
  v8 = sub_22C90941C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v40 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (v38 - v16);
  v18 = *(v9 + 16);
  v18(v38 - v16, v2, v8);
  v19 = (*(v9 + 88))(v17, v8);
  if (v19 != *MEMORY[0x277D72AD0])
  {
    v39 = a1;
    if (v19 == *MEMORY[0x277D72AB0])
    {
      (*(v9 + 96))(v17, v8);
      v21 = *v17;
      v22 = swift_projectBox();
      v18(v39, v22, v8);

      v20 = 1;
      return v20 & 1;
    }

    if (v19 == *MEMORY[0x277D72AE8])
    {
      (*(v9 + 96))(v17, v8);
      v38[1] = *v17;
      v23 = sub_22C3A5908(&qword_27D9BF270, &qword_22C9227F0);
      v24 = swift_projectBox();
      v25 = *(v23 + 48);
      v18(v15, v24, v8);
      sub_22C531200(v24 + v25, v7);
      v26 = v40;
      v20 = sub_22C5FBAA4(v40);
      (*(v9 + 8))(v15, v8);
      v27 = swift_allocBox();
      v29 = v28;
      v30 = *(v23 + 48);
      (*(v9 + 32))(v28, v26, v8);
      sub_22C5FBF34(v7, v29 + v30);
      *v39 = v27;
      (*(v9 + 104))();
    }

    else
    {
      v32 = v19 == *MEMORY[0x277D72AD8] || v19 == *MEMORY[0x277D72AB8];
      a1 = v39;
      if (v32)
      {
        goto LABEL_2;
      }

      if (v19 != *MEMORY[0x277D72AE0])
      {
        v18(v39, v2, v8);
        (*(v9 + 8))(v17, v8);
        goto LABEL_3;
      }

      (*(v9 + 96))(v17, v8);
      v33 = *v17;
      v34 = swift_projectBox();
      v18(v15, v34, v8);
      v35 = v40;
      v20 = sub_22C5FBAA4(v40);
      (*(v9 + 8))(v15, v8);
      v36 = swift_allocBox();
      (*(v9 + 32))(v37, v35, v8);
      *v39 = v36;
      (*(v9 + 104))();
    }

    return v20 & 1;
  }

LABEL_2:
  (*(v9 + 8))(v17, v8);
  v18(a1, v2, v8);
LABEL_3:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_22C5FBF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C5FBFA4()
{
  sub_22C9069BC();
  sub_22C383238();
  sub_22C601CF4(v0, v1);

  return sub_22C909F8C();
}

uint64_t sub_22C5FC01C()
{
  sub_22C90B62C();
  sub_22C9069BC();
  sub_22C383238();
  sub_22C601CF4(v0, v1);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C5FC09C()
{
  sub_22C90B62C();
  sub_22C9069BC();
  sub_22C601CF4(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

void *sub_22C5FC124(uint64_t *a1)
{
  v2 = v1;
  v59 = a1;
  v54 = sub_22C90634C();
  v3 = sub_22C369824(v54);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v53 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_22C90636C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v52 = *(v15 + 8);
  v52(v20, v12);
  v23 = sub_22C90635C();
  v24 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v25 = swift_slowAlloc();
    v51 = v2;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v23, v24, v27, "ActionResolver.init", "", v26, 2u);
    v2 = v51;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v28 = v54;
  (*(v5 + 16))(v53, v11, v54);
  v29 = sub_22C9063AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_22C37EF1C();
  v32 = sub_22C90639C();
  (*(v5 + 8))(v11, v28);
  v52(v22, v12);
  v33 = type metadata accessor for JointResolver();
  v34 = v55;
  v35 = sub_22C7500B8();
  if (v34)
  {
    sub_22C600BDC(v32, "ActionResolver.init");

    sub_22C36FF94(v59);
    type metadata accessor for ActionResolver();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v57 = v33;
    v58 = &off_283FBF928;
    *&v56 = v35;
    sub_22C36C730(&v56, (v2 + 7));
    type metadata accessor for JointResolverFeaturizer();
    swift_allocObject();
    v2[12] = sub_22C7550A4();
    v36 = v2;
    v37 = [objc_opt_self() clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v38 = swift_allocObject();
    v39 = sub_22C73D0DC(v37, 0xD000000000000021, 0x800000022C933280, v38);
    v40 = [objc_opt_self() useConfirmationPrompts];
    v57 = &type metadata for GenerativeAssistantToolsRiskProvider;
    v58 = &off_283FBE918;
    LOBYTE(v56) = v40;
    type metadata accessor for JointResolverTrialConfigProvider();
    v41 = swift_allocObject();
    v42 = sub_22C36D1E4(&v56, &type metadata for GenerativeAssistantToolsRiskProvider);
    v43 = sub_22C601F4C(v39, *v42, v41);
    sub_22C36FF94(&v56);
    v36[13] = v43;
    v44 = type metadata accessor for DeviceContextClient();
    v45 = swift_allocObject();
    v46 = sub_22C9043BC();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    *(v45 + 16) = sub_22C9043AC();
    v36[17] = v44;
    v36[18] = &off_283FBED08;
    v2 = v36;
    v36[14] = v45;
    v49 = v59;
    sub_22C378A4C(v59, (v36 + 2));
    type metadata accessor for JointResolverTokenDistanceProvider();
    v36[19] = swift_allocObject();
    sub_22C600BDC(v32, "ActionResolver.init");

    sub_22C36FF94(v49);
  }

  return v2;
}

uint64_t sub_22C5FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 360) = v74;
  *(v9 + 368) = v8;
  *(v9 + 344) = v72;
  *(v9 + 352) = v73;
  *(v9 + 328) = v70;
  *(v9 + 336) = v71;
  *(v9 + 312) = v68;
  *(v9 + 320) = v69;
  *(v9 + 73) = v67;
  *(v9 + 296) = a8;
  *(v9 + 304) = v66;
  *(v9 + 280) = a6;
  *(v9 + 288) = a7;
  *(v9 + 264) = a4;
  *(v9 + 272) = a5;
  *(v9 + 248) = a1;
  *(v9 + 256) = a3;
  *(v9 + 376) = *v8;
  v10 = _s10ModelInputVMa();
  *(v9 + 384) = v10;
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  *(v9 + 392) = sub_22C3699D4();
  v13 = sub_22C90769C();
  *(v9 + 400) = v13;
  sub_22C3699B8(v13);
  *(v9 + 408) = v14;
  v16 = *(v15 + 64);
  *(v9 + 416) = sub_22C3699D4();
  v17 = sub_22C9063DC();
  *(v9 + 424) = v17;
  sub_22C3699B8(v17);
  *(v9 + 432) = v18;
  v20 = *(v19 + 64);
  *(v9 + 440) = sub_22C36D0D4();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  v21 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v21);
  v23 = *(v22 + 64);
  *(v9 + 480) = sub_22C36D0D4();
  *(v9 + 488) = swift_task_alloc();
  v24 = type metadata accessor for JointResolution.DeviceContext();
  *(v9 + 496) = v24;
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  *(v9 + 504) = sub_22C3699D4();
  v27 = sub_22C90063C();
  *(v9 + 512) = v27;
  sub_22C3699B8(v27);
  *(v9 + 520) = v28;
  v30 = *(v29 + 64);
  *(v9 + 528) = sub_22C3699D4();
  v31 = _s14TypedCandidateVMa(0);
  *(v9 + 536) = v31;
  sub_22C3699B8(v31);
  *(v9 + 544) = v32;
  v34 = *(v33 + 64);
  *(v9 + 552) = sub_22C36D0D4();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  v35 = sub_22C9093BC();
  *(v9 + 576) = v35;
  sub_22C3699B8(v35);
  *(v9 + 584) = v36;
  v38 = *(v37 + 64);
  *(v9 + 592) = sub_22C36D0D4();
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  v39 = sub_22C908C5C();
  *(v9 + 624) = v39;
  sub_22C3699B8(v39);
  *(v9 + 632) = v40;
  v42 = *(v41 + 64);
  *(v9 + 640) = sub_22C36D0D4();
  *(v9 + 648) = swift_task_alloc();
  v43 = _s5TupleVMa(0);
  *(v9 + 656) = v43;
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  *(v9 + 664) = sub_22C3699D4();
  v46 = sub_22C3A5908(&qword_27D9BF2C8, &unk_22C922520);
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  *(v9 + 672) = sub_22C36D0D4();
  *(v9 + 680) = swift_task_alloc();
  v49 = sub_22C9069BC();
  *(v9 + 688) = v49;
  sub_22C3699B8(v49);
  *(v9 + 696) = v50;
  v52 = *(v51 + 64);
  *(v9 + 704) = sub_22C36D0D4();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  v53 = sub_22C90634C();
  *(v9 + 744) = v53;
  sub_22C3699B8(v53);
  *(v9 + 752) = v54;
  v56 = *(v55 + 64);
  *(v9 + 760) = sub_22C36D0D4();
  *(v9 + 768) = swift_task_alloc();
  v57 = sub_22C90636C();
  *(v9 + 776) = v57;
  sub_22C3699B8(v57);
  *(v9 + 784) = v58;
  v60 = *(v59 + 64);
  *(v9 + 792) = sub_22C36D0D4();
  *(v9 + 800) = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v61, v62, v63);
}

void sub_22C5FCAD0()
{
  v238 = v0;
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v230 = *(v3 + 8);
  v230(v2, v4);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = v0[96];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "ActionResolver.run", "", v9, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v11 = v0[100];
  v12 = v0[97];
  v13 = v0[96];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[93];
  v17 = v0[32];

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_22C3707B4();
  v197 = sub_22C90639C();
  v0[101] = v197;
  (*(v15 + 8))(v13, v16);
  v230(v11, v12);

  v22 = sub_22C807E08(v21);
  v0[102] = v22;
  v23 = *(v22 + 16);
  v0[103] = v23;
  v24 = v0;
  v231 = v0;
  v205 = v22;
  if (v23)
  {
    v25 = v0[87];
    v227 = v24[32];
    sub_22C3708A4(MEMORY[0x277D84F90]);
    sub_22C3B78C4();
    v26 = v234;
    v27 = *(v25 + 16);
    v25 += 16;
    v28 = *(v25 + 64);
    sub_22C36BA94();
    v30 = v22 + v29;
    v218 = *(v25 + 56);
    v221 = v31;
    v32 = (v25 - 8);
    v33 = v22 + v29;
    v34 = v23;
    v215 = (v25 - 8);
    while (1)
    {
      v221(v24[92], v33, v24[86]);
      if (!*(v227 + 16))
      {
        break;
      }

      v35 = v24[92];
      v36 = v24[32];
      sub_22C628D18();
      v32 = v215;
      v37 = *v215;
      if ((v38 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_22C37EC9C();
      v41 = *(v39 + v40 + 1);
LABEL_10:
      v37(v24[92], v24[86]);
      v42 = v26;
      v234 = v26;
      v44 = *(v26 + 16);
      v43 = *(v26 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22C369AB0(v43);
        sub_22C38C40C();
        sub_22C3B78C4();
        v32 = v215;
        v42 = v234;
      }

      *(v42 + 16) = v44 + 1;
      v26 = v42;
      *(v42 + v44 + 32) = v41;
      v33 += v218;
      --v34;
      v24 = v231;
      if (!v34)
      {
        sub_22C3708A4(MEMORY[0x277D84F90]);
        sub_22C3B7880();
        v45 = v234;
        v46 = v30;
        v47 = v23;
        do
        {
          v221(v24[91], v46, v24[86]);
          if (*(v227 + 16))
          {
            v48 = v45;
            v49 = v24[91];
            v50 = v24[32];
            sub_22C628D18();
            if (v51)
            {
              sub_22C37EC9C();
              v54 = *(v52 + v53 + 2);
            }

            else
            {
              v54 = 0;
            }

            v45 = v48;
          }

          else
          {
            v54 = 0;
          }

          v37(v24[91], v24[86]);
          v234 = v45;
          v56 = *(v45 + 16);
          v55 = *(v45 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_22C369AB0(v55);
            sub_22C38C40C();
            sub_22C3B7880();
            v45 = v234;
          }

          *(v45 + 16) = v56 + 1;
          *(v45 + v56 + 32) = v54;
          v46 += v218;
          --v47;
          v24 = v231;
        }

        while (v47);
        v57 = v45;
        sub_22C3708A4(MEMORY[0x277D84F90]);
        sub_22C3B783C();
        v58 = v234;
        do
        {
          v221(v231[90], v30, v231[86]);
          if (*(v227 + 16))
          {
            v59 = v58;
            v60 = v231[90];
            v61 = v231[32];
            sub_22C628D18();
            if (v62)
            {
              sub_22C37EC9C();
              v65 = *(v63 + v64);
            }

            else
            {
              v65 = 0;
            }

            v58 = v59;
          }

          else
          {
            v65 = 0;
          }

          v37(v231[90], v231[86]);
          v234 = v58;
          v67 = *(v58 + 16);
          v66 = *(v58 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_22C369AB0(v66);
            sub_22C38C40C();
            sub_22C3B783C();
            v58 = v234;
          }

          *(v58 + 16) = v67 + 1;
          *(v58 + v67 + 32) = v65;
          v30 += v218;
          --v23;
        }

        while (v23);
        v22 = v205;
        v68 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }

    v37 = *v32;
LABEL_9:
    v41 = 12;
    goto LABEL_10;
  }

  v58 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
LABEL_35:
  v199 = v57;
  v200 = v26;
  v24[106] = v26;
  v24[105] = v57;
  v198 = v58;
  v24[104] = v58;
  v69 = v24[87];
  v207 = v24[82];
  v70 = v24[79];
  v71 = v24[73];
  v204 = v24[68];
  v225 = v24[67];
  v202 = v24[46];
  v72 = v24[33];
  sub_22C600F28(v24[43]);
  v208 = v69;
  v209 = v73;
  v214 = (v71 + 8);
  v216 = (v71 + 16);
  v203 = v70;
  v201 = (v70 + 8);
  v206 = (v69 + 8);

  v74 = v68;
LABEL_36:
  v24[107] = v74;
  v75 = v24[85];
  v76 = v24[84];
  sub_22C80F1D0();
  sub_22C601D3C(v76, v75);
  v77 = sub_22C3A5908(&qword_27D9BF2D0, &unk_22C927B50);
  v78 = sub_22C37EF1C();
  if (sub_22C370B74(v78, v79, v77) == 1)
  {

    v159 = *(v74 + 16);
    v160 = MEMORY[0x277D84F90];
    if (v159)
    {
      v233 = MEMORY[0x277D84F90];

      v161 = sub_22C372264();
      sub_22C3B781C(v161, v162, v163);
      v164 = 0;
      v165 = v233;
      v210 = v159;
      v212 = v74 + 32;
      v224 = v74;
      while (v164 < *(v74 + 16))
      {
        v166 = *(v212 + 8 * v164);
        v167 = *(v166 + 16);
        if (v167)
        {
          v217 = v165;
          v234 = v160;

          sub_22C3B794C();
          v168 = v234;
          v169 = *(v204 + 80);
          sub_22C36BA94();
          v171 = v166 + v170;
          v220 = *(v172 + 72);
          do
          {
            v173 = v24[70];
            sub_22C60227C();
            sub_22C601DAC(v171, v173, v174);
            v175 = (v173 + *(v225 + 20));
            v176 = *v175;
            v177 = v175[1];
            v178 = v175[3];
            v229 = v175[2];
            v179 = v175[4];

            sub_22C37369C();
            sub_22C601E24(v173, v180);
            v234 = v168;
            v182 = *(v168 + 16);
            v181 = *(v168 + 24);
            if (v182 >= v181 >> 1)
            {
              sub_22C369AB0(v181);
              sub_22C3B794C();
              v168 = v234;
            }

            *(v168 + 16) = v182 + 1;
            v183 = (v168 + 40 * v182);
            v183[4] = v176;
            v183[5] = v177;
            v24 = v231;
            v183[6] = v229;
            v183[7] = v178;
            v183[8] = v179;
            v171 += v220;
            --v167;
          }

          while (v167);

          v160 = MEMORY[0x277D84F90];
          v159 = v210;
          v165 = v217;
        }

        else
        {
          v168 = v160;
        }

        v185 = *(v165 + 16);
        v184 = *(v165 + 24);
        v74 = v224;
        if (v185 >= v184 >> 1)
        {
          sub_22C369AB0(v184);
          sub_22C379FA0();
          sub_22C3B781C(v186, v187, v188);
        }

        ++v164;
        *(v165 + 16) = v185 + 1;
        *(v165 + 8 * v185 + 32) = v168;
        if (v164 == v159)
        {

          goto LABEL_72;
        }
      }

LABEL_78:
      __break(1u);
    }

    else
    {
      v165 = MEMORY[0x277D84F90];
LABEL_72:
      v189 = v24[66];
      sub_22C90052C();

      v24[108] = sub_22C74C164(v165, v200, v199, v198);
      v24[109] = v190;
      v24[110] = v191;
      v24[111] = v192;
      v193 = *sub_22C374168((v24[46] + 112), *(v24[46] + 136));
      v194 = swift_task_alloc();
      v24[112] = v194;
      *v194 = v24;
      v194[1] = sub_22C5FDAF0;
      v195 = v24[34];
      v196 = v24[35];

      sub_22C740278((v24 + 2), 0xD00000000000001DLL, 0x800000022C9331D0, v195, v196);
    }
  }

  else
  {
    v80 = v24[85];
    v81 = *v80;
    sub_22C601E7C(v80 + *(v77 + 48), v24[83], _s5TupleVMa);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v135 = *(v74 + 16);
      sub_22C36D270();
      sub_22C594F00();
      v74 = v136;
    }

    v83 = *(v74 + 16);
    v82 = *(v74 + 24);
    if (v83 >= v82 >> 1)
    {
      sub_22C369AB0(v82);
      sub_22C594F00();
      v74 = v137;
    }

    v84 = 0;
    *(v74 + 16) = v83 + 1;
    v219 = v74 + 32;
    v222 = v74;
    *(v74 + 32 + 8 * v83) = MEMORY[0x277D84F90];
    v211 = *(v22 + 16);
    v228 = v81;
    while (1)
    {
      if (v211 == v84)
      {
        v24 = v231;
        v132 = v231[83];
        sub_22C37F3E0();
        sub_22C601E24(v133, v134);
        goto LABEL_36;
      }

      if (v84 >= *(v22 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v85 = v231[89];
      v86 = v231[86];
      v87 = v231[83];
      v88 = *(v208 + 80);
      sub_22C36BA94();
      v91 = v22 + v89 + *(v90 + 72) * v84;
      (*(v90 + 16))();
      v92 = *(v87 + *(v207 + 24));
      if (!*(v92 + 16))
      {
        break;
      }

      v93 = v231[89];
      sub_22C628D18();
      if ((v95 & 1) == 0)
      {
        break;
      }

      v213 = v84;
      v96 = v231[81];
      v97 = v231[77];
      v98 = v231[76];
      v99 = v231[75];
      v100 = v231[72];
      v101 = v231[45];
      (*(v203 + 16))(v231[80], *(v92 + 56) + *(v203 + 72) * v94, v231[78]);
      v102 = *(v203 + 32);
      v103 = sub_22C36ECB4();
      v104(v103);
      sub_22C90774C();
      v105 = *(v202 + 152);
      v106 = sub_22C760C08(v96, v101);
      v107 = *v216;
      (*v216)(v98, v97, v100);
      LOBYTE(v234) = 1;
      v108 = sub_22C5F88F8(v209, 0x100000000, v106 | ((HIDWORD(v106) & 1) << 32));
      v107(v99, v98, v100);
      JointResolution.CandidateIdentifier.init(typedValue:)(v99, &v234);
      v109 = v231[76];
      v110 = v231[72];
      v111 = *v214;
      v112 = sub_22C36ECB4();
      v111(v112);
      v113 = v234;
      v114 = v235;
      v115 = v236;
      v116 = v237;
      v117 = v231[71];
      v107(v117, v231[77], v231[72]);
      v118 = (v117 + *(v225 + 20));
      *v118 = v113;
      v118[1] = v114;
      v118[2] = v115;
      v118[3] = v116;
      v118[4] = v108;
      if ((v228 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v228 >= *(v222 + 16))
      {
        goto LABEL_77;
      }

      v119 = *(v219 + 8 * v228);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v219 + 8 * v228) = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v129 = *(v119 + 16);
        sub_22C36D270();
        sub_22C594E38();
        v119 = v130;
        *(v219 + 8 * v228) = v130;
      }

      v122 = *(v119 + 16);
      v121 = *(v119 + 24);
      if (v122 >= v121 >> 1)
      {
        sub_22C369AB0(v121);
        sub_22C594E38();
        *(v219 + 8 * v228) = v131;
      }

      v123 = v231[89];
      v124 = v231[86];
      v125 = v231[81];
      v126 = v231[78];
      v127 = v231[71];
      (v111)(v231[77], v231[72]);
      (*v201)(v125, v126);
      (*v206)(v123, v124);
      v128 = *(v219 + 8 * v228);
      *(v128 + 16) = v122 + 1;
      sub_22C601E7C(v127, v128 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v122, _s14TypedCandidateVMa);
      v84 = v213 + 1;
      v22 = v205;
      v74 = v222;
    }

    v138 = v231[89];
    v139 = v231[86];
    v140 = v231[83];

    v234 = sub_22C9069AC();
    v235 = v141;
    MEMORY[0x2318B7850](14906, 0xE200000000000000);
    v231[23] = sub_22C90697C();
    *(v231 + 192) = v142 & 1;
    sub_22C3A5908(&qword_27D9BF2F0, &qword_22C922538);
    v143 = sub_22C90A1AC();
    MEMORY[0x2318B7850](v143);

    MEMORY[0x2318B7850](32, 0xE100000000000000);

    MEMORY[0x2318B7850](0xD000000000000019, 0x800000022C9331F0);

    v144 = v234;
    v145 = v235;
    sub_22C5F2300();
    swift_allocError();
    *v146 = v144;
    v146[1] = v145;
    swift_willThrow();
    (*v206)(v138, v139);
    sub_22C37F3E0();
    sub_22C601E24(v140, v147);

    sub_22C600BDC(v197, "ActionResolver.run");

    v148 = v231[100];
    v149 = v231[99];
    v150 = v231[96];
    v151 = v231[95];
    v152 = v231[92];
    v153 = v231[91];
    v154 = v231[90];
    v155 = v231[89];
    v156 = v231[88];
    v157 = v231[85];
    sub_22C371AD0();
    sub_22C36D95C();
    v223 = v231[55];
    v226 = v231[52];
    v232 = v231[49];

    sub_22C369A24();

    v158();
  }
}

uint64_t sub_22C5FDAF0()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 896);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  v2[113] = v0;

  if (v0)
  {
    v8 = v2[111];
    v9 = v2[110];
    v10 = v2[109];
    v11 = v2[108];
    v12 = v2[106];
    v13 = v2[105];
    v14 = v2[104];
    v15 = v2[102];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C5FDC68()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 368);
  v7 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v7;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  sub_22C90060C();
  v8 = (v1 + *(v3 + 20));
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  *(v8 + 41) = *(v0 + 121);
  v8[1] = v10;
  v8[2] = v11;
  *v8 = v9;
  *(v0 + 912) = *(v6 + 96);
  sub_22C36C640(v4, 1, 1, v2);
  v12 = sub_22C37EF1C();
  sub_22C36C640(v12, v13, 1, v2);
  v14 = swift_task_alloc();
  *(v0 + 920) = v14;
  *v14 = v0;
  v14[1] = sub_22C5FDD88;
  v15 = *(v0 + 480);
  v16 = *(v0 + 488);

  return sub_22C757604();
}

uint64_t sub_22C5FDD88(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = v3[115];
  v7 = v3[61];
  v8 = v3[60];
  v9 = *v1;
  *v5 = *v1;
  v4[116] = a1;

  sub_22C36DD28(v8, &qword_27D9BF2C0, &qword_22C925300);
  sub_22C36DD28(v7, &qword_27D9BF2C0, &qword_22C925300);
  v10 = swift_task_alloc();
  v4[117] = v10;
  *v10 = v9;
  v10[1] = sub_22C5FDFA4;
  v11 = v3[114];
  v12 = v3[111];
  v13 = v3[110];
  v14 = v3[109];
  v15 = v3[108];
  v16 = v3[66];

  return sub_22C755550();
}

uint64_t sub_22C5FDFA4()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v2 + 936);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  v9[118] = v8;
  v9[119] = v10;
  v9[120] = v0;

  v11 = *(v2 + 928);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C5FE0DC()
{
  v1 = v0[107];
  v2 = v0[101];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_22C600BDC(v2, "ActionResolver.run");

  v24 = v0[113];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[92];
  v8 = v0[91];
  sub_22C372AB0();
  v12 = v0[81];
  v13 = v0[80];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[71];
  v19 = v0[70];
  v9 = v0[69];
  sub_22C6023A0();
  v20 = v0[61];
  v21 = v0[60];
  v22 = v0[59];
  v23 = v0[58];
  sub_22C36C0C0();

  sub_22C369A24();

  return v10();
}

void sub_22C5FE30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, uint64_t), uint64_t a27, NSObject *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C60243C();
  a47 = v50;
  a48 = v51;
  a46 = v48;
  v52 = *(v48 + 952);
  v53 = *(v48 + 944);
  v54 = *(v48 + 472);

  sub_22C90401C();

  v55 = sub_22C9063CC();
  v56 = sub_22C90AABC();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v48 + 952);
  v59 = *(v48 + 944);
  if (v57)
  {
    v60 = swift_slowAlloc();
    *v60 = 134218240;
    *(v60 + 4) = *(v58 + 16);
    *(v60 + 12) = 2048;
    v61 = *(v59 + 16);

    *(v60 + 14) = v61;

    _os_log_impl(&dword_22C366000, v55, v56, "ActionResolver fetched %ld tupleInteractions and %ld candidateInteractions from InteractionStore", v60, 0x16u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
    v62 = *(v48 + 944);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v63 = *(v48 + 472);
  v64 = *(v48 + 960);
  v229 = *(v48 + 944);
  *(v48 + 976) = *(v48 + 952);
  *(v48 + 968) = v229;
  v249 = *(v48 + 856);
  sub_22C37F910();
  v65();
  *(v48 + 992) = *(v49 + 104);
  v66 = sub_22C90768C();
  LODWORD(a31) = sub_22C374514(v66, v67);
  *(v48 + 74) = a31;

  v68 = *(v249 + 16);
  v69 = MEMORY[0x277D84F90];
  if (v68)
  {
    v70 = *(v48 + 856);
    v243 = *(v48 + 368);
    a34 = MEMORY[0x277D84F90];

    v71 = sub_22C372264();
    sub_22C3B77FC(v71, v72, v73);
    v74 = a34;
    a28 = v68;
    while (1)
    {
      sub_22C38572C();
      if (v77)
      {
        goto LABEL_76;
      }

      v78 = *(v76 + 8 * v75);
      v79 = *(v78 + 16);
      if (v79)
      {
        v80 = v64;
        v236 = v75;
        v241 = v74;
        v81 = *(v48 + 544);
        a35 = v69;

        sub_22C60234C();
        sub_22C3B7908();
        v82 = 0;
        v83 = a35;
        v84 = *(v81 + 80);
        sub_22C36BA94();
        while (v82 < *(v78 + 16))
        {
          v85 = v79;
          v86 = *(v48 + 552);
          v87 = *(*(v48 + 544) + 72);
          sub_22C60227C();
          sub_22C601DAC(v88, v86, v89);
          v90 = sub_22C730100(v86, (v243 + 16), a31, 0, 1);
          if (v80)
          {
            v104 = *(v48 + 888);
            v105 = *(v48 + 880);
            v106 = *(v48 + 872);
            v107 = *(v48 + 864);
            v247 = *(v48 + 856);
            v224 = *(v48 + 840);
            v226 = *(v48 + 848);
            v108 = *(v48 + 832);
            v228 = v80;
            v109 = *(v48 + 816);
            v250 = *(v48 + 808);
            v234 = *(v48 + 552);
            v244 = *(v48 + 528);
            v110 = *(v48 + 520);
            v237 = *(v48 + 504);
            v239 = *(v48 + 512);

            sub_22C37369C();
            sub_22C601E24(v234, v111);
            sub_22C36ADB8();
            sub_22C601E24(v237, v112);
            (*(v110 + 8))(v244, v239);

            sub_22C600BDC(v250, "ActionResolver.run");

            v113 = *(v48 + 800);
            v114 = *(v48 + 792);
            v115 = *(v48 + 768);
            sub_22C602294();
            v223 = v116;
            v225 = *(v48 + 552);
            v227 = *(v48 + 528);
            v230 = *(v48 + 504);
            v232 = *(v48 + 488);
            v235 = *(v48 + 480);
            v238 = *(v48 + 472);
            v240 = *(v48 + 464);
            v242 = *(v48 + 456);
            v245 = *(v48 + 448);
            v248 = *(v48 + 440);
            v251 = *(v48 + 416);
            v117 = *(v48 + 392);

            sub_22C369A24();
            sub_22C37BEB8();

            v119(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v223, v225, v227, v228, v230, v232, v235, v238, v240, v242, v245, v248, v251, a33, a34, a35, a36, a37, a38, a39, a40);
            return;
          }

          v91 = v90;
          v92 = *(v48 + 552);
          sub_22C37369C();
          sub_22C601E24(v93, v94);
          a35 = v83;
          v96 = *(v83 + 16);
          v95 = *(v83 + 24);
          if (v96 >= v95 >> 1)
          {
            sub_22C369AB0(v95);
            sub_22C379FA0();
            sub_22C3B7908();
            v83 = a35;
          }

          v80 = 0;
          ++v82;
          *(v83 + 16) = v96 + 1;
          *(v83 + v96 + 32) = v91;
          v79 = v85;
          if (v85 == v82)
          {

            v64 = 0;
            v74 = v241;
            v69 = MEMORY[0x277D84F90];
            v75 = v236;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v83 = v69;
LABEL_16:
      a34 = v74;
      v98 = *(v74 + 16);
      v97 = *(v74 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_22C369AB0(v97);
        sub_22C379FA0();
        v100 = v99;
        sub_22C3B77FC(v101, v102, v103);
        v75 = v100;
        v74 = a34;
      }

      *(v74 + 16) = v98 + 1;
      *(v74 + 8 * v98 + 32) = v83;
      if ((v75 + 1) == a28)
      {
        v222 = *(v48 + 856);

        goto LABEL_24;
      }
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_24:
  *(v48 + 1000) = v74;
  v126 = *(v48 + 816);
  v127 = *(v48 + 464);
  sub_22C903FAC();

  v128 = sub_22C9063CC();
  v129 = sub_22C90AACC();

  v130 = os_log_type_enabled(v128, v129);
  v131 = MEMORY[0x277D84F70];
  if (v130)
  {
    LODWORD(a31) = v129;
    v132 = *(v48 + 824);
    v133 = swift_slowAlloc();
    a34 = sub_22C37A180();
    *v133 = 136315394;
    v134 = sub_22C3A5908(&qword_27D9BADD8, &unk_22C90D680);
    v135 = MEMORY[0x2318B7AD0](v74, v134);
    v137 = sub_22C36F9F4(v135, v136, &a34);

    *(v133 + 4) = v137;
    v246 = v133;
    *(v133 + 12) = 2080;
    v138 = MEMORY[0x277D84F90];
    if (v132)
    {
      sub_22C3862A8();
      v138 = a35;
      v139 = *(v74 + 80);
      sub_22C36BA94();
      sub_22C602414();
      do
      {
        v140 = sub_22C37B358();
        (unk_22C90F000)(v140);
        sub_22C9069AC();
        v141 = sub_22C375F4C();
        v142(v141);
        sub_22C602428();
        if (v77)
        {
          sub_22C369AB0(v143);
          sub_22C36ECC0();
          sub_22C3B5E2C();
          v138 = a35;
        }

        sub_22C3799F0();
      }

      while (!v144);
      v131 = MEMORY[0x277D84F70];
      v128 = a28;
    }

    v150 = *(v48 + 464);
    v64 = *(v48 + 424);
    v147 = *(v48 + 432);
    v151 = MEMORY[0x2318B7AD0](v138, MEMORY[0x277D837D0]);
    v153 = v152;

    v146 = sub_22C36F9F4(v151, v153, &a34);

    v74 = v246;
    *(v246 + 14) = v146;
    sub_22C381354(&dword_22C366000, v154, v155, "entityRiskLevel:%s for parameters: %s");
    sub_22C37E320();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v148 = sub_22C602340();
    v149 = v64;
  }

  else
  {
    v145 = *(v48 + 464);
    v146 = *(v48 + 424);
    v147 = *(v48 + 432);

    v148 = sub_22C37BBA4();
  }

  a26(v148, v149);
  sub_22C6023C8();
  v157 = *(v147 + 16);
  v156 = v147 + 16;
  v158 = sub_22C37B220();
  v159(v158);
  v160 = sub_22C9063CC();
  v161 = sub_22C90AABC();
  if (os_log_type_enabled(v160, v161))
  {
    v231 = v161;
    v64 = sub_22C386A98();
    a33 = sub_22C37A180();
    *v64 = 136315394;
    sub_22C90768C();
    v162 = sub_22C6023B0();
    v163(v162);
    v164 = sub_22C36F9F4(v74, &unk_22C90F000, &a33);

    *(v64 + 4) = v164;
    v233 = v64;
    *(v64 + 12) = 2080;
    if (*(v156 + 16))
    {
      sub_22C37AC94();
      v165 = sub_22C372264();
      sub_22C3B7998(v165, v166, v167);
      sub_22C375A64();
      while (1)
      {
        sub_22C38572C();
        if (v77)
        {
          break;
        }

        isa = a28[v168].isa;
        v170 = *(isa + 2);
        if (v170)
        {
          sub_22C602478();
          v171 = sub_22C60234C();
          sub_22C3B74E0(v171, v170, 0);
          v172 = a35;
          v173 = *(v146 + 80);
          sub_22C36BA94();
          v175 = isa + v174;
          v176 = *(v146 + 72);
          do
          {
            v177 = *(v48 + 592);
            v178 = *(v48 + 584);
            v146 = *(v48 + 576);
            v179 = *(v48 + 560);
            sub_22C60227C();
            sub_22C601DAC(v175, v179, v180);
            v181 = sub_22C3865C4();
            v182(v181);
            sub_22C37369C();
            sub_22C601E24(v179, v183);
            sub_22C6023EC();
            if (v77)
            {
              sub_22C369AB0(v184);
              sub_22C379FA0();
              sub_22C3B74E0(v191, v192, v193);
              v172 = a35;
            }

            v185 = *(v48 + 592);
            v186 = *(v48 + 576);
            *(v172 + 16) = v146;
            v187 = *(v160 + 80);
            sub_22C36BA94();
            v189 = sub_22C388360(v188);
            v190(v189);
            v175 += v176;
            --v170;
          }

          while (v170);

          v64 = a31;
        }

        sub_22C3867C0();
        if (v77)
        {
          sub_22C36ECC0();
          sub_22C3B7998(v194, v195, v196);
          v64 = a34;
        }

        sub_22C36ED94();
        if (v144)
        {
          v201 = *(v48 + 856);

          v160 = a21;
          goto LABEL_51;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_51:
    v202 = *(v48 + 456);
    v204 = *(v48 + 424);
    v203 = *(v48 + 432);
    v205 = sub_22C3A5908(&qword_27D9BADC0, &qword_22C90D668);
    v206 = MEMORY[0x2318B7AD0](v64, v205);
    v208 = v207;

    v146 = sub_22C36F9F4(v206, v208, &a33);

    v131 = v233;
    *(v233 + 14) = v146;
    sub_22C6024B8(&dword_22C366000, "entityRiskLevel toolId: %s values: %s", v231);
    sub_22C602458();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v199 = sub_22C602340();
    v200 = v204;
  }

  else
  {
    sub_22C602498();
    v197 = sub_22C36ECB4();
    v198(v197);
    v199 = sub_22C37BBA4();
  }

  a26(v199, v200);
  v209 = *(*(v48 + 856) + 16);

  v210 = 0;
  v211 = MEMORY[0x277D84F90];
  while (v209 != v210)
  {
    if (v210 >= *(*(v48 + 856) + 16))
    {
      goto LABEL_70;
    }

    sub_22C602400();
    if (v212)
    {
      goto LABEL_71;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v64 > *(v211 + 24) >> 1)
    {
      sub_22C594E38();
      v211 = v213;
    }

    if (*(v131 + 16))
    {
      sub_22C386D40();
      if (v215 != v212)
      {
        goto LABEL_73;
      }

      sub_22C3702BC(v214);

      if (v146)
      {
        v216 = *(v211 + 16);
        v212 = __OFADD__(v216, v146);
        v217 = v216 + v146;
        if (v212)
        {
          goto LABEL_74;
        }

        *(v211 + 16) = v217;
      }
    }

    else
    {

      if (v146)
      {
        goto LABEL_72;
      }
    }

    ++v210;
  }

  sub_22C3ADE88();
  *(v48 + 1008) = sub_22C807F04(v218);
  v219 = swift_task_alloc();
  *(v48 + 1016) = v219;
  *v219 = v48;
  sub_22C6022F0(v219);
  sub_22C37BEB8();

  sub_22C75744C(v220);
}

uint64_t sub_22C5FEF40(uint64_t a1)
{
  v4 = *v2;
  sub_22C369A30();
  *v5 = v4;
  v7 = *(v6 + 1016);
  v8 = *v2;
  sub_22C369970();
  *v9 = v8;
  v4[128] = v1;

  if (!v1)
  {
    v10 = v4[126];

    v4[129] = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C5FF060()
{
  v36 = *(v1 + 1032);
  v4 = *(v1 + 864);
  if (*(v4 + 16))
  {
    v2 = *(v1 + 73);
    sub_22C594D78();
    v6 = v5;
    v7 = *(v5 + 16);
    v3 = 2 * v7;
    do
    {
      v0 = v7 + 1;
      if (v7 >= *(v6 + 24) >> 1)
      {
        sub_22C379FA0();
        sub_22C594D78();
        v6 = v9;
      }

      sub_22C60231C();
    }

    while (!v8);
    v10 = *(v1 + 864);
  }

  else
  {
    v11 = *(v1 + 864);
  }

  v12 = *(v1 + 1000);
  v13 = *(v1 + 888);
  sub_22C36FDAC(*(v1 + 992));
  sub_22C37FE84(v14);
  v15 = *(v1 + 968);
  v16 = *(v1 + 872);
  sub_22C3775C0(v17);
  v18 = *(v4 + 16);
  v19 = sub_22C5C8B28(0x7FFuLL);
  v28 = sub_22C381B38(v19, v20, v21, v22, v23, v24, v25, v26, v35, v27);
  *(v29 + 24) = v13;
  *(v0 + *(v3 + 24)) = v28;
  *(v0 + *(v3 + 28)) = v36;
  sub_22C37A234(v30);
  *(v0 + v31) = v12;
  v32 = *sub_22C374168((v2 + 56), *(v2 + 80));
  v33 = swift_task_alloc();
  *(v1 + 1040) = v33;
  *v33 = v1;
  sub_22C374E44(v33);

  return sub_22C750500();
}

uint64_t sub_22C5FF1EC()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 1040);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  v2[131] = v0;

  if (v0)
  {
    v8 = v2[106];
    v9 = v2[105];
    v10 = v2[104];
    v11 = v2[102];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C5FF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_22C60243C();
  v43 = v40[131];
  v44 = sub_22C7432D0();
  v137 = v43;
  if (v43)
  {
    v47 = v40[106];
    v48 = v40[105];
    v49 = v40[104];
    v50 = v40[102];
    v51 = v40[101];
    v135 = v40[66];
    v136 = v40[107];
    v52 = v40[65];
    v133 = v40[63];
    v134 = v40[64];
    v53 = v40[49];
    v40[25] = v40[20];
    sub_22C36DD28((v40 + 25), &qword_27D9BAC08, &unk_22C91D830);
    v40[26] = v40[21];
    sub_22C36DD28((v40 + 26), &qword_27D9BF2D8, &unk_22C9239C0);
    v40[27] = v40[22];
    sub_22C36DD28((v40 + 27), &qword_27D9BF2D8, &unk_22C9239C0);

    sub_22C36A128();
    sub_22C601E24(v53, v54);
    sub_22C36ADB8();
    sub_22C601E24(v133, v55);
    (*(v52 + 8))(v135, v134);

    sub_22C600BDC(v51, "ActionResolver.run");

    v56 = v40[100];
    v57 = v40[99];
    v58 = v40[96];
    v59 = v40[95];
    v60 = v40[92];
    v61 = v40[91];
    v62 = v40[90];
    v63 = v40[89];
    v64 = v40[88];
    v65 = v40[85];
    sub_22C371AD0();
    sub_22C36D95C();
    v131 = v67;
    v132 = v66;
    a31 = v68;
    a32 = v40[55];
    a33 = v40[52];
    a34 = v40[49];

    sub_22C369A24();
  }

  else
  {
    v69 = v44;
    v70 = v45;
    v71 = v46;
    v40[28] = v40[20];
    sub_22C36DD28((v40 + 28), &qword_27D9BAC08, &unk_22C91D830);
    v40[29] = v40[21];
    sub_22C36DD28((v40 + 29), &qword_27D9BF2D8, &unk_22C9239C0);
    v40[30] = v40[22];
    sub_22C36DD28((v40 + 30), &qword_27D9BF2D8, &unk_22C9239C0);
    v72 = v40[106];
    v73 = v40[105];
    v74 = v40[104];
    v75 = v40[102];
    switch(v71)
    {
      case 1:
        sub_22C602374();

        sub_22C36A128();
        sub_22C601E24(v42, v109);
        sub_22C36ADB8();
        sub_22C601E24(v41, v110);
        (*(v70 + 8))(0, v71);
        *a34 = v69;
        v93 = 1;
        goto LABEL_8;
      case 2:
        sub_22C3767FC();
        v78 = v40[31];
        v79 = v78 + *(sub_22C3A5908(&qword_27D9BF2E8, &unk_22C9225E0) + 48);
        *v78 = v69;
        v80 = sub_22C37EF1C();
        sub_22C633A30(v80);
        sub_22C602358();
        v83(v79, v81 + v82 * v70, a30);

        v84 = sub_22C37EF1C();
        sub_22C633A30(v84);
        v85 = *(v73 + v70 + 32);

        v86 = sub_22C37EF1C();
        sub_22C633A30(v86);
        v87 = *(v74 + v70 + 32);

        v88 = sub_22C37EF1C();
        sub_22C633A30(v88);
        v89 = *(v72 + v70 + 32);

        sub_22C36A128();
        sub_22C601E24(a31, v90);
        sub_22C36ADB8();
        sub_22C601E24(a32, v91);
        (*(a33 + 8))(0, a34);
        v92 = type metadata accessor for ActionResolver.Parameter(0);
        v79[v92[5]] = v85;
        v79[v92[7]] = v87;
        v79[v92[6]] = v89;
        v93 = 2;
LABEL_8:
        LODWORD(a19) = v93;
        break;
      case 3:
        sub_22C3767FC();
        v94 = v40[31];
        v95 = v94 + *(sub_22C3A5908(&qword_27D9BF2E0, &qword_22C922530) + 48);
        *v94 = v70;
        v96 = sub_22C3707B4();
        sub_22C633A30(v96);
        sub_22C602358();
        v99(v95, v97 + v98 * v69, a30);

        v100 = sub_22C3707B4();
        sub_22C633A30(v100);
        v101 = *(v73 + v69 + 32);

        v102 = sub_22C3707B4();
        sub_22C633A30(v102);
        v103 = *(v74 + v69 + 32);

        v104 = sub_22C3707B4();
        sub_22C633A30(v104);
        v105 = *(v72 + v69 + 32);
        LODWORD(a19) = 3;
        sub_22C601E0C(v69, v70, 3);

        sub_22C36A128();
        sub_22C601E24(a31, v106);
        sub_22C36ADB8();
        sub_22C601E24(a32, v107);
        (*(a33 + 8))(0, a34);
        v108 = type metadata accessor for ActionResolver.Parameter(0);
        v95[v108[5]] = v101;
        v95[v108[7]] = v103;
        v95[v108[6]] = v105;
        break;
      default:
        sub_22C602374();

        sub_22C36A128();
        sub_22C601E24(v42, v76);
        sub_22C36ADB8();
        sub_22C601E24(v41, v77);
        (*(v70 + 8))(0, v71);
        LODWORD(a19) = 0;
        *a34 = v69;
        break;
    }

    v111 = v40[107];
    v112 = v40[101];
    v113 = v40[100];
    v114 = v40[99];
    v115 = v40[96];
    v116 = v40[95];
    v117 = v40[92];
    v118 = v40[91];
    a9 = v40[90];
    a10 = v40[89];
    a11 = v40[88];
    a12 = v40[85];
    sub_22C371AD0();
    a20 = v120;
    a21 = v119;
    a22 = v40[71];
    a23 = v40[70];
    a24 = v40[69];
    a25 = v40[66];
    a26 = v40[63];
    a27 = v40[61];
    a28 = v40[60];
    v131 = v40[59];
    v132 = v40[58];
    sub_22C36C0C0();
    v121 = v40[31];
    type metadata accessor for ActionResolver.Decision(0);
    swift_storeEnumTagMultiPayload();

    sub_22C600BDC(v112, "ActionResolver.run");

    sub_22C369A24();
  }

  sub_22C37BEB8();

  return v123(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v131, v132, a31, a32, a33, a34, v137, a36, a37, a38, a39, a40);
}

uint64_t sub_22C5FFB10()
{
  v1 = v0[107];
  v2 = v0[101];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[49];
  sub_22C36A128();
  sub_22C601E24(v8, v9);
  sub_22C36ADB8();
  sub_22C601E24(v6, v10);
  (*(v4 + 8))(v3, v5);

  sub_22C600BDC(v2, "ActionResolver.run");

  v32 = v0[131];
  v11 = v0[100];
  v12 = v0[99];
  v13 = v0[96];
  v14 = v0[95];
  v15 = v0[92];
  v16 = v0[91];
  sub_22C372AB0();
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[74];
  v26 = v0[71];
  v27 = v0[70];
  v17 = v0[69];
  sub_22C6023A0();
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[59];
  v31 = v0[58];
  sub_22C36C0C0();

  sub_22C369A24();

  return v18();
}

void sub_22C5FFD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, uint64_t), uint64_t a27, NSObject *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C60243C();
  a47 = v50;
  a48 = v51;
  a46 = v48;
  v52 = *(v48 + 960);
  v53 = *(v48 + 448);
  sub_22C90401C();
  v54 = v52;
  v55 = sub_22C9063CC();
  v56 = sub_22C90AADC();

  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v48 + 960);
  if (v57)
  {
    v59 = sub_22C36FB44();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    v61 = v58;
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 4) = v62;
    *v60 = v62;
    sub_22C382D04(&dword_22C366000, v63, v64, "[RECOVERABLE_ERROR]: %@");
    sub_22C36DD28(v60, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v65 = *(v48 + 448);
  v66 = MEMORY[0x277D84F90];
  *(v48 + 976) = MEMORY[0x277D84F90];
  *(v48 + 968) = v66;
  v67 = *(v48 + 856);
  sub_22C37F910();
  v68();
  *(v48 + 992) = *(v49 + 104);
  v69 = sub_22C90768C();
  v71 = v70;
  v202 = sub_22C374514(v69, v70);
  *(v48 + 74) = v202;

  v72 = *(v67 + 16);
  if (v72)
  {
    v73 = *(v48 + 856);
    a31 = *(v48 + 368);
    v74 = MEMORY[0x277D84F90];
    a34 = MEMORY[0x277D84F90];

    sub_22C3B77FC(0, v72, 0);
    v75 = a34;
    v200 = v72;
    while (1)
    {
      sub_22C38572C();
      if (v78)
      {
        goto LABEL_71;
      }

      v79 = *(v77 + 8 * v76);
      v71 = *(v79 + 16);
      if (v71)
      {
        a28 = v76;
        v80 = *(v48 + 544);
        a35 = v74;

        sub_22C60234C();
        sub_22C3B7908();
        v81 = 0;
        v74 = a35;
        v82 = *(v80 + 80);
        sub_22C36BA94();
        while (v81 < *(v79 + 16))
        {
          v83 = *(v48 + 552);
          v84 = *(*(v48 + 544) + 72);
          sub_22C60227C();
          sub_22C601DAC(v85, v83, v86);
          v87 = sub_22C730100(v83, (a31 + 16), v202, 0, 1);
          v88 = *(v48 + 552);
          sub_22C37369C();
          sub_22C601E24(v89, v90);
          a35 = v74;
          v92 = *(v74 + 16);
          v91 = *(v74 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_22C369AB0(v91);
            sub_22C36ECC0();
            sub_22C3B7908();
            v74 = a35;
          }

          ++v81;
          *(v74 + 16) = v92 + 1;
          *(v74 + v92 + 32) = v87;
          if (v71 == v81)
          {

            v76 = a28;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

LABEL_14:
      a34 = v75;
      v94 = *(v75 + 16);
      v93 = *(v75 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_22C369AB0(v93);
        sub_22C36ECC0();
        v96 = v95;
        sub_22C3B77FC(v97, v98, v99);
        v76 = v96;
        v75 = a34;
      }

      *(v75 + 16) = v94 + 1;
      *(v75 + 8 * v94 + 32) = v74;
      v74 = MEMORY[0x277D84F90];
      if ((&v76->isa + 1) == v200)
      {
        v197 = *(v48 + 856);

        goto LABEL_19;
      }
    }
  }

  v75 = MEMORY[0x277D84F90];
LABEL_19:
  *(v48 + 1000) = v75;
  v100 = *(v48 + 816);
  v101 = *(v48 + 464);
  sub_22C903FAC();

  v102 = sub_22C9063CC();
  v103 = sub_22C90AACC();

  v104 = os_log_type_enabled(v102, v103);
  v105 = v75;
  v106 = MEMORY[0x277D84F70];
  if (v104)
  {
    LODWORD(a31) = v103;
    v107 = *(v48 + 824);
    v108 = swift_slowAlloc();
    a34 = sub_22C37A180();
    *v108 = 136315394;
    v109 = sub_22C3A5908(&qword_27D9BADD8, &unk_22C90D680);
    v110 = MEMORY[0x2318B7AD0](v105, v109);
    v112 = sub_22C36F9F4(v110, v111, &a34);

    *(v108 + 4) = v112;
    v201 = v108;
    *(v108 + 12) = 2080;
    v113 = MEMORY[0x277D84F90];
    if (v107)
    {
      sub_22C3862A8();
      v113 = a35;
      v114 = *(v108 + 80);
      sub_22C36BA94();
      sub_22C602414();
      do
      {
        v115 = sub_22C37B358();
        (unk_22C90F000)(v115);
        sub_22C9069AC();
        v116 = sub_22C375F4C();
        v117(v116);
        sub_22C602428();
        if (v78)
        {
          sub_22C369AB0(v118);
          sub_22C36ECC0();
          sub_22C3B5E2C();
          v113 = a35;
        }

        sub_22C3799F0();
      }

      while (!v119);
      v106 = MEMORY[0x277D84F70];
      v102 = a28;
    }

    v125 = *(v48 + 464);
    v71 = *(v48 + 424);
    v122 = *(v48 + 432);
    v126 = MEMORY[0x2318B7AD0](v113, MEMORY[0x277D837D0]);
    v128 = v127;

    v121 = sub_22C36F9F4(v126, v128, &a34);

    v100 = v201;
    *(v201 + 14) = v121;
    sub_22C381354(&dword_22C366000, v129, v130, "entityRiskLevel:%s for parameters: %s");
    sub_22C37E320();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v123 = sub_22C602340();
    v124 = v71;
  }

  else
  {
    v120 = *(v48 + 464);
    v121 = *(v48 + 424);
    v122 = *(v48 + 432);

    v123 = sub_22C37BBA4();
  }

  a26(v123, v124);
  sub_22C6023C8();
  v132 = *(v122 + 16);
  v131 = v122 + 16;
  v133 = sub_22C37B220();
  v134(v133);
  v135 = sub_22C9063CC();
  v136 = sub_22C90AABC();
  if (os_log_type_enabled(v135, v136))
  {
    v198 = v136;
    v71 = sub_22C386A98();
    a33 = sub_22C37A180();
    *v71 = 136315394;
    sub_22C90768C();
    v137 = sub_22C6023B0();
    v138(v137);
    v139 = sub_22C36F9F4(v100, &unk_22C90F000, &a33);

    *(v71 + 4) = v139;
    v199 = v71;
    *(v71 + 12) = 2080;
    if (*(v131 + 16))
    {
      sub_22C37AC94();
      v140 = sub_22C372264();
      sub_22C3B7998(v140, v141, v142);
      sub_22C375A64();
      while (1)
      {
        sub_22C38572C();
        if (v78)
        {
          break;
        }

        isa = a28[v143].isa;
        v145 = *(isa + 2);
        if (v145)
        {
          sub_22C602478();
          v146 = sub_22C60234C();
          sub_22C3B74E0(v146, v145, 0);
          v147 = a35;
          v148 = *(v121 + 80);
          sub_22C36BA94();
          v150 = isa + v149;
          v151 = *(v121 + 72);
          do
          {
            v152 = *(v48 + 592);
            v153 = *(v48 + 584);
            v121 = *(v48 + 576);
            v154 = *(v48 + 560);
            sub_22C60227C();
            sub_22C601DAC(v150, v154, v155);
            v156 = sub_22C3865C4();
            v157(v156);
            sub_22C37369C();
            sub_22C601E24(v154, v158);
            sub_22C6023EC();
            if (v78)
            {
              sub_22C369AB0(v159);
              sub_22C379FA0();
              sub_22C3B74E0(v166, v167, v168);
              v147 = a35;
            }

            v160 = *(v48 + 592);
            v161 = *(v48 + 576);
            *(v147 + 16) = v121;
            v162 = *(v135 + 80);
            sub_22C36BA94();
            v164 = sub_22C388360(v163);
            v165(v164);
            v150 += v151;
            --v145;
          }

          while (v145);

          v71 = a31;
        }

        sub_22C3867C0();
        if (v78)
        {
          sub_22C36ECC0();
          sub_22C3B7998(v169, v170, v171);
          v71 = a34;
        }

        sub_22C36ED94();
        if (v119)
        {
          v176 = *(v48 + 856);

          v135 = a21;
          goto LABEL_46;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_46:
    v177 = *(v48 + 456);
    v179 = *(v48 + 424);
    v178 = *(v48 + 432);
    v180 = sub_22C3A5908(&qword_27D9BADC0, &qword_22C90D668);
    v181 = MEMORY[0x2318B7AD0](v71, v180);
    v183 = v182;

    v121 = sub_22C36F9F4(v181, v183, &a33);

    v106 = v199;
    *(v199 + 14) = v121;
    sub_22C6024B8(&dword_22C366000, "entityRiskLevel toolId: %s values: %s", v198);
    sub_22C602458();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v174 = sub_22C602340();
    v175 = v179;
  }

  else
  {
    sub_22C602498();
    v172 = sub_22C36ECB4();
    v173(v172);
    v174 = sub_22C37BBA4();
  }

  a26(v174, v175);
  v184 = *(*(v48 + 856) + 16);

  v185 = 0;
  v186 = MEMORY[0x277D84F90];
  while (v184 != v185)
  {
    if (v185 >= *(*(v48 + 856) + 16))
    {
      goto LABEL_65;
    }

    sub_22C602400();
    if (v187)
    {
      goto LABEL_66;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v71 > *(v186 + 24) >> 1)
    {
      sub_22C594E38();
      v186 = v188;
    }

    if (*(v106 + 16))
    {
      sub_22C386D40();
      if (v190 != v187)
      {
        goto LABEL_68;
      }

      sub_22C3702BC(v189);

      if (v121)
      {
        v191 = *(v186 + 16);
        v187 = __OFADD__(v191, v121);
        v192 = v191 + v121;
        if (v187)
        {
          goto LABEL_69;
        }

        *(v186 + 16) = v192;
      }
    }

    else
    {

      if (v121)
      {
        goto LABEL_67;
      }
    }

    ++v185;
  }

  sub_22C3ADE88();
  *(v48 + 1008) = sub_22C807F04(v193);
  v194 = swift_task_alloc();
  *(v48 + 1016) = v194;
  *v194 = v48;
  sub_22C6022F0(v194);
  sub_22C37BEB8();

  sub_22C75744C(v195);
}

uint64_t sub_22C60094C()
{
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 440);

  sub_22C903FAC();
  v6 = v3;
  v7 = sub_22C9063CC();
  v8 = sub_22C90AABC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1024);
  if (v9)
  {
    v11 = sub_22C36FB44();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    sub_22C382D04(&dword_22C366000, v15, v16, "[Recoverable Error]: Candidate similarity scores can't be fetched: %@");
    sub_22C36DD28(v12, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v17 = *(v0 + 432) + 8;
  (*(v0 + 984))(*(v0 + 440), *(v0 + 424));
  v18 = *(v0 + 864);
  v19 = MEMORY[0x277D84F90];
  if (*(v18 + 16))
  {
    v1 = *(v0 + 73);
    sub_22C594D78();
    v21 = v20;
    v22 = *(v20 + 16);
    v2 = 2 * v22;
    do
    {
      v10 = (v22 + 1);
      if (v22 >= *(v21 + 24) >> 1)
      {
        sub_22C379FA0();
        sub_22C594D78();
        v21 = v24;
      }

      sub_22C60231C();
    }

    while (!v23);
    v25 = *(v0 + 864);
  }

  else
  {
    v26 = *(v0 + 864);
  }

  v50 = *(v0 + 1000);
  v27 = *(v0 + 888);
  sub_22C36FDAC(*(v0 + 992));
  sub_22C37FE84(v28);
  v29 = *(v0 + 968);
  v30 = *(v0 + 872);
  sub_22C3775C0(v31);
  v32 = *(v18 + 16);
  v33 = sub_22C5C8B28(0x7FFuLL);
  v42 = sub_22C381B38(v33, v34, v35, v36, v37, v38, v39, v40, v49, v41);
  *(v43 + 24) = v27;
  *&v10[*(v2 + 24)] = v42;
  *&v10[*(v2 + 28)] = v19;
  sub_22C37A234(v44);
  *&v10[v45] = v50;
  v46 = *sub_22C374168((v1 + 56), *(v1 + 80));
  v47 = swift_task_alloc();
  *(v0 + 1040) = v47;
  *v47 = v0;
  sub_22C374E44(v47);

  return sub_22C750500();
}

uint64_t sub_22C600BDC(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90634C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C90636C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v27 = v26 - v25;
  sub_22C90365C();
  v28 = sub_22C90635C();
  sub_22C90638C();
  v40 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v39 = v13;

    sub_22C9063BC();

    if ((*(v41 + 88))(v9, v42) == *MEMORY[0x277D85B00])
    {
      v29 = 0;
      v30 = 0;
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v41 + 8))(v9, v42);
      v43 = "%s";
      v30 = 2;
      v29 = 1;
    }

    v32 = v22;
    v33 = sub_22C36FB44();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = v30;
    *(v33 + 1) = v29;
    *(v33 + 2) = 2080;
    sub_22C90366C();
    v35 = sub_22C90AF7C();
    v37 = sub_22C36F9F4(v35, v36, &v45);

    *(v33 + 4) = v37;
    v38 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v28, v40, v38, a2, v43, v33, 0xCu);
    sub_22C36FF94(v34);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v39 + 8))(v18, v10);
    return (*(v32 + 8))(v27, v19);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
    return (*(v22 + 8))(v27, v19);
  }
}

void sub_22C600F28(uint64_t a1)
{
  v132 = sub_22C90355C();
  v2 = sub_22C369824(v132);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v131 = v8 - v7;
  v9 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v143 = &v118 - v13;
  v14 = sub_22C9032BC();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v130 = v21 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v23 = sub_22C369914(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v147 = &v118 - v26;
  v153 = sub_22C90399C();
  v27 = sub_22C369824(v153);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v129 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  v146 = &v118 - v34;
  v35 = sub_22C9093BC();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v141 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  v140 = &v118 - v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  v46 = &v118 - v45;
  v120 = sub_22C9063DC();
  v47 = sub_22C369824(v120);
  v119 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v118 = v52 - v51;
  v152 = sub_22C3A5908(&qword_27D9BF300, &unk_22C922550);
  v53 = sub_22C36985C(v152);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  v128 = v56;
  sub_22C369930();
  MEMORY[0x28223BE20](v57);
  v144 = &v118 - v58;
  sub_22C369930();
  MEMORY[0x28223BE20](v59);
  v154 = &v118 - v60;
  v61 = 0;
  v148 = a1;
  v62 = *(a1 + 16);
  v151 = (v29 + 8);
  v138 = (v38 + 16);
  v139 = (v38 + 32);
  v127 = (v17 + 32);
  v137 = (v38 + 8);
  v63 = v46;
  v126 = (v17 + 8);
  v125 = (v4 + 8);
  v124 = "ActionResolver.run";
  v121 = MEMORY[0x277D84F90];
  v123 = "Couldn't convert typed value ";
  v142 = v14;
  v145 = v35;
  v149 = v62;
  v136 = v46;
  while (v62 != v61)
  {
    if (v61 >= v62)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v64 = sub_22C9081CC();
    v65 = *(v64 - 8);
    if (__OFADD__(v61, 1))
    {
      goto LABEL_21;
    }

    v66 = v64;
    v67 = *(v64 - 8);
    v68 = v148 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v61;
    v69 = v152;
    v70 = *(v152 + 48);
    v71 = v154;
    *v154 = v61;
    (*(v65 + 16))(&v71[v70], v68, v64);
    v72 = v71;
    v73 = v144;
    sub_22C601EDC(v72, v144);
    v74 = *(v69 + 48);
    v75 = v146;
    sub_22C9081AC();
    v150 = *(v67 + 8);
    v150(v73 + v74, v66);
    v76 = v147;
    sub_22C90391C();
    v77 = *v151;
    v78 = v75;
    v79 = v145;
    (*v151)(v78, v153);
    if (sub_22C370B74(v76, 1, v79) == 1)
    {
      sub_22C36DD28(v76, &qword_27D9BB908, &qword_22C910960);
      goto LABEL_11;
    }

    v135 = v61 + 1;
    (*v139)(v63, v76, v79);
    v80 = *v138;
    v81 = v140;
    (*v138)(v140, v63, v79);
    v82 = v141;
    v80(v141, v81, v79);
    v83 = v143;
    sub_22C766C2C(v82, v143);
    v84 = sub_22C3707B4();
    v85 = v142;
    if (sub_22C370B74(v84, v86, v142) == 1)
    {
      sub_22C36DD28(v83, &qword_27D9BF2F8, &unk_22C922540);
      v155[0] = 0;
      v155[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD00000000000001DLL, v124 | 0x8000000000000000);
      sub_22C90B12C();
      MEMORY[0x2318B7850](0xD000000000000029, v123 | 0x8000000000000000);
      v87 = *v137;
      v88 = sub_22C36ECB4();
      v87(v88);

      v63 = v136;
      v89 = sub_22C37B220();
      v87(v89);
      goto LABEL_11;
    }

    v90 = v130;
    (*v127)(v130, v83, v85);
    v122 = sub_22C90329C();
    v134 = v91;
    sub_22C9032AC();
    v133 = *v137;
    v92 = sub_22C37B220();
    v93(v92);
    (*v126)(v90, v85);

    v94 = v128;
    sub_22C601EDC(v154, v128);
    v95 = *(v152 + 48);
    v96 = v129;
    sub_22C9081AC();
    v150(v94 + v95, v66);
    v97 = v131;
    sub_22C90394C();
    v77(v96, v153);
    v98 = sub_22C90353C();
    (*v125)(v97, v132);
    v63 = v136;
    v99 = sub_22C37B220();
    v133(v99);
    if (v98)
    {
      v100 = v122;
      v101 = v134;
      sub_22C36DD28(v154, &qword_27D9BF300, &unk_22C922550);
      v102 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = *(v102 + 16);
        sub_22C36D270();
        sub_22C590270();
        v102 = v107;
      }

      v61 = v135;
      v104 = *(v102 + 16);
      v103 = *(v102 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_22C369AB0(v103);
        sub_22C590270();
        v102 = v108;
      }

      *(v102 + 16) = v104 + 1;
      v121 = v102;
      v105 = v102 + 16 * v104;
      *(v105 + 32) = v100;
      *(v105 + 40) = v101;
      v62 = v149;
    }

    else
    {

LABEL_11:
      v62 = v149;
      sub_22C36DD28(v154, &qword_27D9BF300, &unk_22C922550);
      ++v61;
    }
  }

  v109 = v118;
  sub_22C903FAC();
  v110 = v121;

  v111 = sub_22C9063CC();
  v112 = sub_22C90AABC();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = sub_22C36FB44();
    v114 = swift_slowAlloc();
    v155[0] = v114;
    *v113 = 136315138;
    v115 = MEMORY[0x2318B7AD0](v110, MEMORY[0x277D837D0]);
    v117 = sub_22C36F9F4(v115, v116, v155);

    *(v113 + 4) = v117;
    _os_log_impl(&dword_22C366000, v111, v112, "onScreenCandidateIDs = %s", v113, 0xCu);
    sub_22C36FF94(v114);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v119 + 8))(v109, v120);
}

uint64_t *sub_22C601980()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  sub_22C36FF94(v0 + 14);
  v3 = v0[19];

  return v0;
}

uint64_t sub_22C6019C8()
{
  sub_22C601980();

  return swift_deallocClassInstance();
}

void sub_22C601A40()
{
  sub_22C601AC8();
  if (v0 <= 0x3F)
  {
    sub_22C601AF0();
    if (v1 <= 0x3F)
    {
      sub_22C601B7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C601AC8()
{
  result = qword_27D9BF288;
  if (!qword_27D9BF288)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27D9BF288);
  }

  return result;
}

void sub_22C601AF0()
{
  if (!qword_27D9BF290)
  {
    type metadata accessor for ActionResolver.Parameter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF290);
    }
  }
}

void sub_22C601B7C()
{
  if (!qword_27D9BF298)
  {
    sub_22C3AC1A0(&qword_27D9BF2A0, &qword_22C922498);
    type metadata accessor for ActionResolver.Parameter(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BF298);
    }
  }
}

uint64_t sub_22C601C24()
{
  result = sub_22C9069BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C601CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C601D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF2C8, &unk_22C922520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C601DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22C36985C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C601E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}