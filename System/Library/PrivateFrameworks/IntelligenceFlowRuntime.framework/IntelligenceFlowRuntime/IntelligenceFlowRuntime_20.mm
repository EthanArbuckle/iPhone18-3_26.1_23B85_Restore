uint64_t sub_22BD2DE44(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BDB7B44();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E60B0, &qword_22BDCD5F8);
  v10 = sub_22BDBB304();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608]);
        result = sub_22BDBABA4();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22BD2E15C(uint64_t a1, char a2, uint64_t *a3)
{
  v58 = a3;
  v56 = sub_22BDB4C34();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v56);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = v47 - v10;
  MEMORY[0x28223BE20](v9);
  v57 = v47 - v11;
  v12 = sub_22BBE6DE0(&qword_27D8E6100, &qword_22BDCD658);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = v47 - v16;
  v52 = *(a1 + 16);
  if (!v52)
  {
  }

  v17 = 0;
  v51 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v14 + 48);
  v49 = v15;
  v50 = v18;
  v54 = (v5 + 32);
  v47[2] = v5 + 8;
  v47[3] = v5 + 16;
  v47[1] = v5 + 40;
  while (v17 < *(a1 + 16))
  {
    v19 = v5;
    v20 = *(v15 + 72);
    v21 = v53;
    sub_22BC5E5C4();
    v22 = *v54;
    v23 = v56;
    (*v54)(v57, v21, v56);
    v22(v55, &v21[v50], v23);
    v24 = *v58;
    sub_22BBDAE68();
    v27 = v26;
    v28 = *(v24 + 16);
    v29 = (v25 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = v25;
    if (*(v24 + 24) >= v28 + v29)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6128, &qword_22BDCD688);
        sub_22BDBB4B4();
      }
    }

    else
    {
      v31 = v58;
      sub_22BD5C910();
      v32 = *v31;
      sub_22BBDAE68();
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

      v27 = v33;
    }

    v35 = *v58;
    if (v30)
    {
      v5 = v19;
      v36 = *(v19 + 72) * v27;
      v37 = *(v19 + 16);
      v38 = v48;
      v39 = v56;
      v37(v48, v35[7] + v36, v56);
      v40 = *(v5 + 8);
      v40(v55, v39);
      v40(v57, v39);
      (*(v5 + 40))(v35[7] + v36, v38, v39);
    }

    else
    {
      v35[(v27 >> 6) + 8] |= 1 << v27;
      v5 = v19;
      v41 = *(v19 + 72) * v27;
      v42 = v56;
      v22((v35[6] + v41), v57, v56);
      v22((v35[7] + v41), v55, v42);
      v43 = v35[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_19;
      }

      v35[2] = v45;
    }

    ++v17;
    a2 = 1;
    v15 = v49;
    if (v52 == v17)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BD2E59C(uint64_t a1, char a2, uint64_t *a3)
{
  v65 = a3;
  v5 = sub_22BDB89F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v53 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v48 - v10;
  v63 = sub_22BDB4C34();
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BBE6DE0(&qword_27D8E6108, &unk_22BDCD660);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = v48 - v19;
  v59 = *(a1 + 16);
  if (!v59)
  {
  }

  v20 = 0;
  v58 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = *(v17 + 48);
  v56 = v6;
  v57 = v21;
  v61 = (v6 + 32);
  v62 = (v12 + 32);
  v50 = v6 + 8;
  v51 = v6 + 16;
  v52 = v12;
  v48[1] = v6 + 40;
  v49 = (v12 + 8);
  v54 = v18;
  v55 = a1;
  while (v20 < *(a1 + 16))
  {
    v22 = *(v18 + 72);
    v23 = v60;
    sub_22BC5E5C4();
    v24 = *v62;
    (*v62)(v64, v23, v63);
    v25 = *v61;
    v26 = &v23[v57];
    v27 = v5;
    (*v61)(v11, v26, v5);
    v28 = *v65;
    sub_22BBDAE68();
    v31 = v30;
    v32 = *(v28 + 16);
    v33 = (v29 & 1) == 0;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_18;
    }

    v34 = v29;
    if (*(v28 + 24) >= v32 + v33)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E6138, &qword_22BDCD698);
        sub_22BDBB4B4();
      }
    }

    else
    {
      v35 = v65;
      sub_22BD5CC44();
      v36 = *v35;
      sub_22BBDAE68();
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v31 = v37;
    }

    v39 = *v65;
    if (v34)
    {
      v40 = v56;
      v41 = *(v56 + 72) * v31;
      v42 = v53;
      v5 = v27;
      (*(v56 + 16))(v53, v39[7] + v41, v27);
      (*(v40 + 8))(v11, v27);
      (*v49)(v64, v63);
      (*(v40 + 40))(v39[7] + v41, v42, v27);
    }

    else
    {
      v39[(v31 >> 6) + 8] |= 1 << v31;
      v24((v39[6] + *(v52 + 72) * v31), v64, v63);
      v43 = v39[7] + *(v56 + 72) * v31;
      v5 = v27;
      v25(v43, v11, v27);
      v44 = v39[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_19;
      }

      v39[2] = v46;
    }

    ++v20;
    a2 = 1;
    v18 = v54;
    a1 = v55;
    if (v59 == v20)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

unint64_t sub_22BD2EA58()
{
  result = qword_27D8E5F48;
  if (!qword_27D8E5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F48);
  }

  return result;
}

uint64_t sub_22BD2EAAC()
{
  v1 = sub_22BB35760();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BD2EB00()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BD2EBBC()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.ActionValue(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD2EC68()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD2ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BD2ED98()
{
  if (!qword_2814288B0)
  {
    sub_22BD2EF18(0, &qword_2814288A8, MEMORY[0x277D1C338]);
    if (!v1)
    {
      atomic_store(v0, &qword_2814288B0);
    }
  }
}

void sub_22BD2EDFC()
{
  if (!qword_28142DD20)
  {
    v0 = sub_22BDB4C34();
    if (!v1)
    {
      atomic_store(v0, &qword_28142DD20);
    }
  }
}

void sub_22BD2EE44()
{
  type metadata accessor for FeedbackLearning.FlowExpressionValue(319);
  if (v0 <= 0x3F)
  {
    sub_22BD2EF18(319, &qword_281428818, MEMORY[0x277D1E890]);
    if (v1 <= 0x3F)
    {
      sub_22BD2EF18(319, &qword_281428888, type metadata accessor for FeedbackLearning.FlowActionEvent);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD2EF18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BD2EF94()
{
  sub_22BDB5F24();
  if (v0 <= 0x3F)
  {
    sub_22BDB4C34();
    if (v1 <= 0x3F)
    {
      sub_22BD2EF18(319, &qword_281428890, type metadata accessor for FeedbackLearning.FlowExpression);
      if (v2 <= 0x3F)
      {
        sub_22BD2EF18(319, &qword_281428818, MEMORY[0x277D1E890]);
        if (v3 <= 0x3F)
        {
          sub_22BD2EF18(319, &qword_281428888, type metadata accessor for FeedbackLearning.FlowActionEvent);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *sub_22BD2F0C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BD2F1B0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BD2F260()
{
  result = qword_27D8E5F68;
  if (!qword_27D8E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F68);
  }

  return result;
}

unint64_t sub_22BD2F2B8()
{
  result = qword_27D8E5F70;
  if (!qword_27D8E5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F70);
  }

  return result;
}

unint64_t sub_22BD2F310()
{
  result = qword_27D8E5F78;
  if (!qword_27D8E5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F78);
  }

  return result;
}

unint64_t sub_22BD2F368()
{
  result = qword_27D8E5F80;
  if (!qword_27D8E5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F80);
  }

  return result;
}

unint64_t sub_22BD2F3C0()
{
  result = qword_27D8E5F88;
  if (!qword_27D8E5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F88);
  }

  return result;
}

unint64_t sub_22BD2F418()
{
  result = qword_27D8E5F90;
  if (!qword_27D8E5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F90);
  }

  return result;
}

unint64_t sub_22BD2F470()
{
  result = qword_27D8E5F98;
  if (!qword_27D8E5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F98);
  }

  return result;
}

unint64_t sub_22BD2F4C8()
{
  result = qword_27D8E5FA0;
  if (!qword_27D8E5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FA0);
  }

  return result;
}

unint64_t sub_22BD2F520()
{
  result = qword_27D8E5FA8;
  if (!qword_27D8E5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FA8);
  }

  return result;
}

unint64_t sub_22BD2F578()
{
  result = qword_27D8E5FB0;
  if (!qword_27D8E5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FB0);
  }

  return result;
}

unint64_t sub_22BD2F5D0()
{
  result = qword_27D8E5FB8;
  if (!qword_27D8E5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FB8);
  }

  return result;
}

unint64_t sub_22BD2F628()
{
  result = qword_27D8E5FC0;
  if (!qword_27D8E5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5FC0);
  }

  return result;
}

uint64_t sub_22BD2F67C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22BD222F0(a1, v2[2], a2);
}

uint64_t sub_22BD2F6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22BD2F758()
{
  v2 = *(v0 + 16) + 1;

  sub_22BD8F3C8();
}

uint64_t static PSELearningUtil.triggerPSEDataCollection(after:)()
{
  sub_22BB2F0D4();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  v3 = sub_22BDBB454();
  *(v0 + 24) = v3;
  v4 = *(v3 - 8);
  *(v0 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v0 + 40) = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BD2F880()
{
  if (*(v0 + 88))
  {
    v1 = sub_22BDB5FF4();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    *(v0 + 64) = sub_22BB3666C();
    sub_22BB32A48(MEMORY[0x277D3E918]);
    v15 = v4;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    sub_22BB35BC0(v5);

    return v15();
  }

  else
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 16);
    v9 = sub_22BDBB8B4();
    v11 = v10;
    sub_22BDBB774();
    sub_22BB32A48(dword_22BDCD7D8);
    v16 = v12;
    v13 = swift_task_alloc();
    *(v0 + 48) = v13;
    *v13 = v0;
    v13[1] = sub_22BD2F9E0;
    v14 = *(v0 + 40);

    return v16(v9, v11, 0, 0, 1);
  }
}

uint64_t sub_22BD2F9E0()
{
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = *v1;
  sub_22BB3053C();
  *v11 = v10;
  *(v12 + 56) = v0;

  (*(v8 + 8))(v7, v9);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BD2FB44()
{
  v1 = sub_22BDB5FF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 64) = sub_22BB3666C();
  sub_22BB32A48(MEMORY[0x277D3E918]);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  sub_22BB35BC0(v5);

  return v7();
}

uint64_t sub_22BD2FBF0()
{
  sub_22BB2F0D4();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22BB3053C();
  *v8 = v7;
  *(v9 + 80) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BD2FCF4()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  sub_22BB2F09C();

  return v3();
}

uint64_t sub_22BD2FD5C()
{
  sub_22BB2F0D4();
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[5];

  sub_22BB2F09C();

  return v4();
}

uint64_t sub_22BD2FDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22BDBB444();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22BD2FEC0, 0, 0);
}

uint64_t sub_22BD2FEC0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_22BDBB454();
  v7 = sub_22BD30330(&qword_27D8E6228, MEMORY[0x277D85928]);
  sub_22BDBB754();
  sub_22BD30330(&qword_27D8E6230, MEMORY[0x277D858F8]);
  sub_22BDBB464();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22BD30050;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_22BD30050()
{
  v2 = *v1;
  sub_22BB3053C();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[8];
  v10 = *v1;
  sub_22BB3053C();
  *v11 = v10;
  v2[15] = v0;

  v7(v8, v9);
  if (v0)
  {
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = v2[10];
    v15 = v2[11];

    sub_22BB2F09C();

    return v17();
  }
}

uint64_t sub_22BD301FC()
{
  sub_22BB2F0D4();
  v2 = v0[10];
  v1 = v0[11];

  sub_22BB2F09C();
  v4 = v0[15];

  return v3();
}

_BYTE *storeEnumTagSinglePayload for PSELearningUtil(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD30330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BD30378()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_22BDB77D4();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v13 = sub_22BDB77C4();
  v14 = sub_22BDBB0F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22BB2C000, v13, v14, "Registering ToolKitMonitor", v15, 2u);
    sub_22BB30458();
  }

  (*(v7 + 8))(v12, v4);
  v16 = sub_22BDBAEF4();
  sub_22BB336D0(v3, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_22BCA20FC(0, 0, v3, &unk_22BDCD830, v17);
}

uint64_t sub_22BD30540()
{
  v1 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v2 = sub_22BDB77D4();
  v0[9] = v2;
  v3 = *(v2 - 8);
  v0[10] = v3;
  v4 = *(v3 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v5 = *(*(sub_22BBE6DE0(&qword_27D8E6238, &qword_22BDCD838) - 8) + 64) + 15;
  v0[14] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E6240, &qword_22BDCD840);
  v0[15] = v6;
  v7 = *(v6 - 8);
  v0[16] = v7;
  v8 = *(v7 + 64) + 15;
  v0[17] = swift_task_alloc();
  v9 = sub_22BBE6DE0(&qword_27D8E6248, &qword_22BDCD848);
  v0[18] = v9;
  v10 = *(v9 - 8);
  v0[19] = v10;
  v11 = *(v10 + 64) + 15;
  v0[20] = swift_task_alloc();
  v12 = sub_22BBE6DE0(&qword_27D8E6250, &qword_22BDCD850);
  v0[21] = v12;
  v13 = *(v12 - 8);
  v0[22] = v13;
  v14 = *(v13 + 64) + 15;
  v0[23] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E6258, &qword_22BDCD858);
  v0[24] = v15;
  v16 = *(v15 - 8);
  v0[25] = v16;
  v17 = *(v16 + 64) + 15;
  v0[26] = swift_task_alloc();
  v18 = sub_22BBE6DE0(&qword_27D8E6260, &qword_22BDCD860);
  v0[27] = v18;
  v19 = *(v18 - 8);
  v0[28] = v19;
  v20 = *(v19 + 64) + 15;
  v0[29] = swift_task_alloc();
  v21 = sub_22BBE6DE0(&qword_27D8E6268, &qword_22BDCD868);
  v0[30] = v21;
  v22 = *(v21 - 8);
  v0[31] = v22;
  v23 = *(v22 + 64) + 15;
  v0[32] = swift_task_alloc();
  v24 = sub_22BBE6DE0(&qword_27D8E6270, &qword_22BDCD870);
  v0[33] = v24;
  v25 = *(v24 - 8);
  v0[34] = v25;
  v26 = *(v25 + 64) + 15;
  v0[35] = swift_task_alloc();
  v27 = sub_22BBE6DE0(&qword_27D8E6278, &qword_22BDCD878);
  v0[36] = v27;
  v28 = *(v27 - 8);
  v0[37] = v28;
  v29 = *(v28 + 64) + 15;
  v0[38] = swift_task_alloc();
  v30 = sub_22BBE6DE0(&qword_27D8E6280, &qword_22BDCD880);
  v0[39] = v30;
  v31 = *(v30 - 8);
  v0[40] = v31;
  v32 = *(v31 + 64) + 15;
  v0[41] = swift_task_alloc();
  v33 = sub_22BDBB1E4();
  v0[42] = v33;
  v34 = *(v33 - 8);
  v0[43] = v34;
  v35 = *(v34 + 64) + 15;
  v0[44] = swift_task_alloc();
  v36 = sub_22BBE6DE0(&qword_27D8E6288, &qword_22BDCD888);
  v0[45] = v36;
  v37 = *(v36 - 8);
  v0[46] = v37;
  v38 = *(v37 + 64) + 15;
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v39 = type metadata accessor for ToolboxRebuildTrigger();
  v0[52] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v41 = sub_22BBE6DE0(&qword_27D8E6290, &unk_22BDCD890);
  v0[56] = v41;
  v42 = *(v41 - 8);
  v0[57] = v42;
  v43 = *(v42 + 64) + 15;
  v0[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD30BDC, 0, 0);
}

uint64_t sub_22BD30BDC()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[52];
  v68 = v0[51];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = sub_22BDBABE4();
  v8 = v2 + *(v3 + 24);
  sub_22BDBAED4();
  *v2 = sub_22BDBABF4();
  v2[1] = v9;
  v10 = sub_22BB76868();
  v12 = v11;

  v2[2] = v10;
  v2[3] = v12;
  sub_22BDB9EE4();
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_22BDBB1B4();
  sub_22BDBB1F4();

  sub_22BD315C8();
  sub_22BDB9F14();
  v16 = *(v5 + 8);
  v15 = (v5 + 8);
  v17 = v16;
  (v16)(v4, v6);
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  if (qword_281428770 != -1)
  {
    swift_once();
  }

  v43 = v0[58];
  v44 = v0[56];
  v20 = v0[52];
  v51 = v0[51];
  v42 = v0[50];
  v67 = v0[49];
  v69 = v0[48];
  v38 = v0[47];
  v21 = v0[44];
  v49 = v0[45];
  v22 = v0[42];
  v60 = v0[41];
  v66 = v0[39];
  v57 = v0[38];
  v62 = v0[37];
  v59 = v0[36];
  v58 = v0[34];
  v56 = v0[33];
  v50 = v0[32];
  v54 = v0[35];
  v55 = v0[31];
  v52 = v0[28];
  v53 = v0[30];
  v48 = v0[27];
  v46 = v0[29];
  v47 = v0[25];
  v45 = v0[24];
  v37 = v0[23];
  v40 = v0[26];
  v41 = v0[22];
  v39 = v0[21];
  v61 = v0[17];
  v64 = v0[20];
  v65 = v0[16];
  v63 = v0[15];
  sub_22BDBB1F4();

  sub_22BB33E00();
  v23 = sub_22BB371F0();
  v17(v23);
  v24 = [v18 defaultCenter];
  sub_22BDBABE4();
  sub_22BB311F8();

  sub_22BB33E00();
  v25 = sub_22BB371F0();
  v17(v25);
  v26 = [v18 defaultCenter];
  sub_22BDBABE4();
  sub_22BB311F8();

  sub_22BB33E00();
  v27 = sub_22BB371F0();
  v17(v27);
  v28 = [v18 defaultCenter];
  sub_22BDBABE4();
  sub_22BB311F8();

  sub_22BB33E00();
  v29 = sub_22BB371F0();
  v17(v29);
  sub_22BDB9EF4();
  sub_22BBB5F9C(&qword_281428928, &qword_27D8E6250, &qword_22BDCD850);
  sub_22BBB5F9C(&qword_281428930, &qword_27D8E6290, &unk_22BDCD890);
  sub_22BDB9F24();
  (*(v41 + 8))(v37, v39);
  sub_22BBB5F9C(&qword_281428958, &qword_27D8E6288, &qword_22BDCD888);
  sub_22BDB9DC4();
  (*(v47 + 8))(v40, v45);
  sub_22BDB9DD4();
  (*(v52 + 8))(v46, v48);
  sub_22BDB9DE4();
  (*(v55 + 8))(v50, v53);
  sub_22BDB9DF4();
  (*(v58 + 8))(v54, v56);
  sub_22BDB9E04();
  (*(v62 + 8))(v57, v59);
  v30 = sub_22BBB5F9C(&qword_281428950, &qword_27D8E6280, &qword_22BDCD880);
  MEMORY[0x2318A3F10](v66, v30);
  sub_22BDB9E44();
  (*(v65 + 8))(v61, v63);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v31 = *(MEMORY[0x277D856D0] + 4);
  v32 = swift_task_alloc();
  v33 = sub_22BB31DA4(v32);
  *v33 = v34;
  v35 = sub_22BB35BE4(v33);

  return MEMORY[0x282200308](v35);
}

uint64_t sub_22BD312EC()
{
  sub_22BB2F0D4();
  *(v0 + 48) = *(v0 + 480);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_22BD31374()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 88);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v3 = v1;
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 512);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22BB2C000, v4, v5, "ToolKitMonitor: Indexing failed with %@.", v7, 0xCu);
    sub_22BB58780(v8, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    MEMORY[0x2318A6080](v7, -1, -1);
  }

  v11 = *(v0 + 512);
  v12 = *(v0 + 496);

  v13 = *(v0 + 432);
  v14 = *(v0 + 80) + 8;
  (*(v0 + 488))(*(v0 + 88), *(v0 + 72));
  sub_22BBB5528(v13);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v15 = *(MEMORY[0x277D856D0] + 4);
  v16 = swift_task_alloc();
  v17 = sub_22BB31DA4(v16);
  *v17 = v18;
  v19 = sub_22BB35BE4();

  return MEMORY[0x282200308](v19);
}

uint64_t sub_22BD3152C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  sub_22BB3280C(v4);

  return sub_22BD30540();
}

unint64_t sub_22BD315C8()
{
  result = qword_281428768;
  if (!qword_281428768)
  {
    sub_22BDBB1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428768);
  }

  return result;
}

uint64_t sub_22BD31620()
{
  result = sub_22BDBAEF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD316A0(uint64_t a1)
{
  v44 = sub_22BDB7964();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v35[1] = v1;
    v48 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v6, 0);
    v8 = v48;
    v11 = sub_22BDB1D44(a1);
    result = v8;
    v12 = 0;
    v13 = a1 + 56;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v36 = a1 + 64;
    v37 = v6;
    v38 = v3;
    v39 = a1;
    v42 = a1 + 56;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v47 = v10;
        v45 = v12;
        v46 = v9;
        v15 = v43;
        v16 = v44;
        v17 = result;
        (*(v3 + 16))(v43, *(a1 + 48) + *(v3 + 72) * v11, v44);
        v18 = sub_22BDB7954();
        v20 = v19;
        (*(v3 + 8))(v15, v16);
        result = v17;
        v48 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22BD28158(v21 > 1, v22 + 1, 1);
          result = v48;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v13 = v42;
        if (v47)
        {
          goto LABEL_29;
        }

        v3 = v38;
        a1 = v39;
        v24 = 1 << *(v39 + 32);
        if (v11 >= v24)
        {
          goto LABEL_26;
        }

        v25 = *(v42 + 8 * v14);
        if ((v25 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v39 + 36) != v46)
        {
          goto LABEL_28;
        }

        v26 = v25 & (-2 << (v11 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v27 = v37;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v27 = v37;
          v30 = (v36 + 8 * v14);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              v33 = result;
              sub_22BBBFEB0(v11, v46, 0);
              result = v33;
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          v34 = result;
          sub_22BBBFEB0(v11, v46, 0);
          result = v34;
        }

LABEL_19:
        v12 = v45 + 1;
        if (v45 + 1 == v27)
        {
          return result;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
  }

  return result;
}

uint64_t sub_22BD319D8(uint64_t a1)
{
  v2 = sub_22BD38ADC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BD31A14(uint64_t a1)
{
  v2 = sub_22BD38ADC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BD31A78()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return sub_22BB31F54();
}

uint64_t AgenticPlanner.__allocating_init(router:services:instrumentationSender:)()
{
  sub_22BB3CB10();
  v0 = swift_allocObject();
  AgenticPlanner.init(router:services:instrumentationSender:)();
  return v0;
}

uint64_t AgenticPlanner.init(router:services:instrumentationSender:)()
{
  sub_22BB3CB10();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_22BDB8394();
  *(v1 + 120) = v4;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0x6C6379436E616C70;
  *(v1 + 192) = 0xEB00000000644965;
  sub_22BB382E8(v3, v1 + 128);
  *(v1 + 168) = v2;
  sub_22BB382E8(v0, v1 + 200);
  return v1;
}

void sub_22BD31B68()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E62C0, &qword_22BDCD9E8);
  v4 = sub_22BB2F0C8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = sub_22BDB9B14();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BDB9B54();
  v19 = sub_22BB30444(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v26 = v25 - v24;
  v27 = *(v2 + 16);
  if (v27)
  {
    v62 = v8;
    v63 = v17;
    v64 = v0;
    v28 = v2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * (v27 - 1);
    v29 = v23;
    v30 = v22;
    (*(v23 + 16))(v26, v28, v22);
    v65 = v26;
    sub_22BDB9B24();
    v31 = *(v12 + 88);
    v32 = sub_22BB3AB18();
    v33 = v31(v32);
    v34 = *MEMORY[0x277D1E700];
    v35 = *(v12 + 8);
    v36 = sub_22BB3AB18();
    v35(v36);
    if (v33 == v34)
    {
      v37 = v64[14];
      v38 = v64[15];
      v39 = *(v29 + 8);

      v39(v65, v30);
    }

    else
    {
      v40 = v29;
      v41 = v63;
      v42 = v65;
      sub_22BDB9B24();
      v43 = (v31)(v41, v9);
      v44 = *MEMORY[0x277D1E770];
      (v35)(v41, v9);
      if (v43 == v44)
      {
        v45 = v64[14];
        v46 = v64[15];
      }

      else
      {
        v47 = v64;
        v48 = v64[20];
        sub_22BB69FEC(v64 + 16, v64[19]);
        v49 = v62;
        sub_22BB331D4();
        sub_22BDB7984();
        v50 = sub_22BDB8004();
        if (sub_22BB3AA28(v49, 1, v50) == 1)
        {
          (*(v40 + 8))(v42, v30);
          sub_22BB58728(v49, &qword_27D8E62C0, &qword_22BDCD9E8);
          goto LABEL_11;
        }

        sub_22BB58728(v49, &qword_27D8E62C0, &qword_22BDCD9E8);
        v51 = v47[14];
        v52 = v47[15];
      }

      sub_22BBE6DE0(&qword_27D8E62C8, &unk_22BDCD9F0);
      v53 = v42;
      v54 = sub_22BDB9254();
      sub_22BB30444(v54);
      v56 = v55;
      v58 = *(v57 + 72);
      v59 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_22BDBCBD0;
      (*(v56 + 104))(v60 + v59, *MEMORY[0x277D1E308], v54);
      v61 = *(v40 + 8);

      v61(v53, v30);
    }
  }

LABEL_11:
  sub_22BB314EC();
}

uint64_t sub_22BD31F98()
{
  sub_22BB2F0D4();
  v1[3] = v0;
  v1[4] = v2;
  v1[2] = v3;
  v4 = sub_22BDB8334();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22BB30ACC();
  v8 = sub_22BDB8134();
  v1[8] = v8;
  sub_22BB30434(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_22BB30ACC();
  v12 = sub_22BDB80E4();
  v1[11] = v12;
  sub_22BB30434(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = sub_22BB30ACC();
  v16 = sub_22BDB9774();
  v1[14] = v16;
  sub_22BB30434(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = sub_22BB30ACC();
  v20 = sub_22BDB82C4();
  v1[17] = v20;
  sub_22BB30434(v20);
  v1[18] = v21;
  v23 = *(v22 + 64);
  v1[19] = sub_22BB30ACC();
  v24 = sub_22BDB43E4();
  v1[20] = v24;
  sub_22BB30434(v24);
  v1[21] = v25;
  v27 = *(v26 + 64);
  v1[22] = sub_22BB30ACC();
  v28 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22BD321BC()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v19 = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v0 + 184) = sub_22BDB8E54();
  v8 = *MEMORY[0x277D1D868];
  *(v0 + 256) = v8;
  v9 = sub_22BDB8014();
  *(v0 + 192) = v9;
  sub_22BB2F330(v9);
  v11 = *(v10 + 104);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v2, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D1DC88], v4);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v12 = *(v6 + 8);
  *(v0 + 216) = v12;
  *(v0 + 224) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v5, v19);
  v13 = *(v3 + 8);
  v14 = sub_22BB30AE4();
  v15(v14);
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_22BD32364;
  v17 = *(v0 + 24);
  sub_22BB3487C(*(v0 + 16));

  return sub_22BD32850();
}

uint64_t sub_22BD32364()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 232);
  *v6 = *v1;
  *(v5 + 240) = v0;

  v8 = *(v4 + 24);
  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BD32490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  v40 = *(v18 + 216);
  v41 = *(v18 + 224);
  v19 = *(v18 + 208);
  v20 = *(v18 + 184);
  v21 = *(v18 + 168);
  v22 = *(v18 + 176);
  v42 = *(v18 + 160);
  v43 = *(v18 + 152);
  v23 = *(v18 + 128);
  v25 = *(v18 + 104);
  v24 = *(v18 + 112);
  v26 = *(v18 + 88);
  v27 = *(v18 + 96);
  v28 = *(v18 + 80);
  v44 = v28;
  v45 = *(v18 + 56);
  v29 = *(v18 + 16);
  (*(v18 + 200))(v25, *(v18 + 256), *(v18 + 192));
  (*(v27 + 104))(v25, *MEMORY[0x277D1D9C0], v26);
  sub_22BDB96A4();
  sub_22BB331D4();
  sub_22BDB8E24();
  v40(v23, v24);
  (*(v27 + 8))(v25, v26);
  (*(v21 + 8))(v22, v42);

  sub_22BB39738();
  v30 = *(v18 + 248);
  sub_22BB35ED4();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, a16, a17, a18);
}

uint64_t sub_22BD325E8()
{
  v1 = *(v0 + 240);
  v21 = *(v0 + 224);
  v2 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 216);
  v22 = *(v0 + 176);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v3 = *(v0 + 128);
  v26 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v16 = *(v0 + 40);
  v17 = *(v0 + 112);
  v20 = *(v0 + 32);
  v9 = *(v0 + 16);
  (*(v0 + 200))(v4, *(v0 + 256), *(v0 + 192));
  (*(v5 + 104))(v4, *MEMORY[0x277D1DB30], v7);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v19(v3, v17);
  (*(v8 + 8))(v6, v16);
  (*(v5 + 8))(v4, v7);
  v10 = v1;
  sub_22BDB4BA4();
  v11 = *MEMORY[0x277D1D9A8];
  v12 = sub_22BDB80D4();
  sub_22BB2F330(v12);
  (*(v13 + 104))(v20, v11, v12);
  sub_22BB8C4F8(&qword_27D8E6298, 255, MEMORY[0x277D1D9B0]);
  swift_willThrowTypedImpl();

  (*(v23 + 8))(v22, v24);

  sub_22BB2F09C();

  return v14();
}

uint64_t sub_22BD32850()
{
  sub_22BB2F0D4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_22BDB4B94();
  v1[14] = v3;
  sub_22BB30434(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = sub_22BB30ACC();
  v7 = sub_22BDB9B14();
  v1[17] = v7;
  sub_22BB30434(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = sub_22BB30ACC();
  v11 = sub_22BDB97A4();
  v1[20] = v11;
  sub_22BB30434(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = sub_22BB30ACC();
  v15 = sub_22BDB7964();
  v1[23] = v15;
  sub_22BB30434(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v1[25] = sub_22BB3307C();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v19 = sub_22BBE6DE0(&qword_27D8E62C0, &qword_22BDCD9E8);
  v1[29] = v19;
  sub_22BB2F0C8(v19);
  v21 = *(v20 + 64);
  v1[30] = sub_22BB30ACC();
  v22 = sub_22BDB77D4();
  v1[31] = v22;
  sub_22BB30434(v22);
  v1[32] = v23;
  v25 = *(v24 + 64);
  v1[33] = sub_22BB3307C();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v26 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  v1[39] = sub_22BB30ACC();
  v29 = sub_22BDB9774();
  v1[40] = v29;
  sub_22BB30434(v29);
  v1[41] = v30;
  v32 = *(v31 + 64);
  v1[42] = sub_22BB30ACC();
  v33 = sub_22BDB9B54();
  v1[43] = v33;
  sub_22BB30434(v33);
  v1[44] = v34;
  v36 = *(v35 + 64);
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v37 = sub_22BDB7734();
  v1[47] = v37;
  sub_22BB30434(v37);
  v1[48] = v38;
  v40 = *(v39 + 64);
  v1[49] = sub_22BB3307C();
  v1[50] = swift_task_alloc();
  v41 = sub_22BDB7754();
  v1[51] = v41;
  sub_22BB30434(v41);
  v1[52] = v42;
  v44 = *(v43 + 64);
  v1[53] = sub_22BB3307C();
  v1[54] = swift_task_alloc();
  v45 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_22BD32C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22BB34770();
  a33 = v35;
  a34 = v36;
  a32 = v34;
  v38 = *(v34 + 424);
  v37 = *(v34 + 432);
  v39 = *(v34 + 408);
  v40 = *(v34 + 416);
  v41 = *(v34 + 400);
  sub_22BDB60D4();
  sub_22BDB60D4();
  sub_22BDB7744();
  sub_22BDB7704();
  v42 = *(v40 + 8);
  v43 = sub_22BB2F3F0();
  v222 = v44;
  (v44)(v43);
  v45 = sub_22BDB7744();
  v46 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v47 = *(v34 + 400);
    v48 = sub_22BB37F30();
    *v48 = 0;
    v49 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v45, v46, v49, "AgenticPlanner.run", "", v48, 2u);
    sub_22BB30AF0();
  }

  v50 = *(v34 + 400);
  v217 = *(v34 + 408);
  v218 = *(v34 + 432);
  v52 = *(v34 + 384);
  v51 = *(v34 + 392);
  v53 = *(v34 + 376);
  v54 = *(v34 + 336);
  v55 = *(v34 + 328);
  v219 = *(v34 + 320);
  v221 = *(v34 + 344);
  v56 = *(v34 + 312);
  v216 = *(v34 + 96);

  v57 = sub_22BB3459C(v52);
  v58(v57, v50, v53);
  v59 = sub_22BDB77A4();
  sub_22BB34ED4(v59);
  sub_22BB69A84();
  *(v34 + 440) = sub_22BB3DFFC();
  (*(v52 + 8))(v50, v53);
  v222(v218, v217);
  sub_22BDB96A4();
  v60 = sub_22BDB9744();
  (*(v55 + 8))(v54, v219);
  sub_22BD39594(v60);

  if (sub_22BB3AA28(v56, 1, v221) == 1)
  {
    v61 = *(v34 + 264);
    sub_22BB58728(*(v34 + 312), &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BDB6364();
    v62 = sub_22BDB77C4();
    v63 = sub_22BDBB114();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = sub_22BB37F30();
      *v64 = 0;
      _os_log_impl(&dword_22BB2C000, v62, v63, "no events in the transcript", v64, 2u);
      sub_22BB30AF0();
    }

    v66 = *(v34 + 256);
    v65 = *(v34 + 264);
    v67 = *(v34 + 248);

    v68 = *(v66 + 8);
    v69 = sub_22BB2F0E0();
    v70(v69);
    sub_22BD38978();
    v71 = swift_allocError();
    *v72 = 0;
    v72[1] = 0;
    v223 = v71;
    swift_willThrow();
    goto LABEL_7;
  }

  v86 = *(v34 + 104);
  (*(*(v34 + 352) + 32))(*(v34 + 368), *(v34 + 312), *(v34 + 344));
  if (*(v86 + 176))
  {
    v87 = *(v34 + 360);
    v88 = *(v34 + 368);
    v89 = *(v34 + 344);
    v90 = *(v34 + 352);
    v91 = *(v34 + 304);
    sub_22BDB6364();
    v92 = *(v90 + 16);
    v93 = sub_22BB31F54();
    v94(v93);
    v95 = sub_22BDB77C4();
    v96 = sub_22BDBB104();
    v97 = os_log_type_enabled(v95, v96);
    v99 = *(v34 + 352);
    v98 = *(v34 + 360);
    v224 = *(v34 + 344);
    v100 = *(v34 + 304);
    v102 = *(v34 + 248);
    v101 = *(v34 + 256);
    if (v97)
    {
      sub_22BB31AD8();
      v221 = v100;
      LODWORD(v218) = v96;
      v103 = sub_22BB38198();
      a22 = v103;
      *v100 = 136315138;
      v219 = v102;
      sub_22BDB99B4();
      v104 = *(v99 + 8);
      v104(v98, v224);
      sub_22BB36A70();
      sub_22BB371E4();

      *(v100 + 4) = v98;
      sub_22BB337EC(&dword_22BB2C000, v95, v218, "Processing new event: %s");
      sub_22BB32FA4(v103);
      sub_22BB30AF0();
      sub_22BB2F194();

      v107 = *(v101 + 8);
      v105 = v101 + 8;
      v106 = v107;
      (v107)(v100, v102);
    }

    else
    {

      v104 = *(v99 + 8);
      v104(v98, v224);
      v111 = *(v101 + 8);
      v105 = v101 + 8;
      v106 = v111;
      v112 = sub_22BB35464();
      (v111)(v112, v113);
    }

    *(v34 + 464) = v104;
    *(v34 + 472) = v106;
    sub_22BB33510();
    sub_22BDB8004();
    v114 = sub_22BB371E4();
    if (sub_22BB3AA28(v114, 1, v98) == 1)
    {
      sub_22BB315C4();
      v116 = *(v105 + 88);
      v115 = v105 + 88;
      v117 = sub_22BB30AE4();
      if (v118(v117) == *MEMORY[0x277D1E770])
      {
        v119 = *(v34 + 440);
        v219 = *(v34 + 368);
        v221 = v104;
        v120 = *(v34 + 352);
        v218 = *(v34 + 344);
        v121 = sub_22BB3ADCC();
        v122(v121);
        v123 = sub_22BB3E1FC();
        v124(v123);
        sub_22BDB9784();
        sub_22BDB9794();
        sub_22BDB4B84();
        v125 = sub_22BB720CC();
        v126(v125);
        v223 = v95;
        swift_willThrow();
        v127 = *(v115 + 8);
        v128 = sub_22BB35464();
        v129(v128);
        v221(v219, v218);
LABEL_7:
        sub_22BD35260();

        sub_22BB31DB4();
        v73 = *(v34 + 304);
        v74 = *(v34 + 312);
        v75 = *(v34 + 288);
        v76 = *(v34 + 296);
        sub_22BB308DC();
        sub_22BB330C4();

        sub_22BB2F09C();
        sub_22BB38A6C();

        return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, v216, v217, v218, v219, v221, v223, a22, a23, a24, a25, a26);
      }

      v226 = v106;
      v156 = sub_22BB3B6EC();
      v157(v156);
      sub_22BDB6364();
      v158 = sub_22BDB77C4();
      v159 = sub_22BDBB104();
      if (sub_22BB333C0(v159))
      {
        *sub_22BB37F30() = 0;
        sub_22BB2F0A8(&dword_22BB2C000, v160, v161, "Router did not return a callable service. Returning no new transript events and things might get quiet...");
        sub_22BB35600();
      }

      sub_22BB33288();
      v162 = *(v34 + 248);
      v163 = *(v34 + 256);

      v164 = sub_22BB32E04();
      v106(v164);
      v165 = sub_22BB2F0E0();
      (v104)(v165);
      sub_22BD35260();

      v167 = *(v34 + 424);
      v166 = *(v34 + 432);
      v169 = *(v34 + 392);
      v168 = *(v34 + 400);
      v171 = *(v34 + 360);
      v170 = *(v34 + 368);
      v172 = *(v34 + 336);
      v174 = *(v34 + 304);
      v173 = *(v34 + 312);
      sub_22BB323E8();

      sub_22BB39738();
      sub_22BB38A6C();

      return v177(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12, a13, a14, a15, v216, v217, v218, v219, v221, v226, a22, a23, a24, a25, a26);
    }

    else
    {
      v130 = sub_22BB72F2C();
      v132 = v131;
      if ((*(v133 + 88))(v130, v98) == *MEMORY[0x277D1D748])
      {
        v225 = v106;
        sub_22BB39514();
        (*(v132 + 96))(v95, v98);
        v134 = sub_22BB36014();
        v135(v134);
        sub_22BDB6364();
        v136 = sub_22BB37098();
        v218 = v137;
        v137(v136);
        v138 = sub_22BDB77C4();
        v139 = sub_22BDBB104();
        v140 = sub_22BB3E3C4(v139);
        v141 = *(v34 + 296);
        v142 = *(v34 + 248);
        v220 = *(v34 + 256);
        v221 = v104;
        v143 = *(v34 + 216);
        v145 = *(v34 + 184);
        v144 = *(v34 + 192);
        if (v140)
        {
          sub_22BB31AD8();
          v217 = v142;
          v216 = sub_22BB38198();
          a22 = v216;
          *v142 = 136315138;
          sub_22BB35C18();
          sub_22BB8C4F8(v146, 255, v147);
          v148 = sub_22BDBB684();
          a15 = v141;
          v150 = v149;
          LODWORD(a14) = v139;
          v151 = *(v144 + 8);
          v152 = sub_22BB3CB04();
          v151(v152);
          sub_22BB32EE0(v148, v150, &a22);
          sub_22BB371E4();

          *(v142 + 4) = v143;
          sub_22BB337EC(&dword_22BB2C000, v138, v139, "Routing to planner service: %s");
          sub_22BB32FA4(v216);
          sub_22BB30AF0();
          sub_22BB2F194();

          v153 = v151;
          v154 = a15;
          v155 = v142;
        }

        else
        {

          v153 = *(v144 + 8);
          v185 = sub_22BB3CB04();
          v153(v185);
          v154 = sub_22BB3B528();
        }

        v186 = v225;
        (v225)(v154, v155);
        *(v34 + 496) = v153;
        v187 = sub_22BB92298();
        v188 = sub_22BB343C8(v187);
        sub_22BD79B78(v188, v189, v190);

        if (!*(v34 + 80))
        {
          v219 = v153;
          sub_22BB518A8();
          sub_22BB58728(v34 + 56, &qword_27D8E62D8, qword_22BDCDA00);
          sub_22BDB6364();
          v194 = sub_22BB3182C();
          v218(v194);
          v195 = sub_22BDB77C4();
          v196 = sub_22BDBB114();
          v197 = sub_22BB3E3C4(v196);
          v198 = *(v34 + 280);
          v199 = *(v34 + 248);
          v200 = *(v34 + 256);
          v202 = *(v34 + 192);
          v201 = *(v34 + 200);
          v203 = *(v34 + 184);
          if (v197)
          {
            sub_22BB31AD8();
            v218 = v199;
            v204 = sub_22BB38198();
            a22 = v204;
            *v225 = 136315138;
            sub_22BB35C18();
            sub_22BB8C4F8(v205, 255, v206);
            sub_22BDBB684();
            v216 = v200;
            v217 = v198;
            v207 = sub_22BB37820();
            v219(v207, v203);
            sub_22BB36A70();
            sub_22BB371E4();

            *(v225 + 4) = v201;
            sub_22BB337EC(&dword_22BB2C000, v195, v196, "No service with identifier: %s");
            sub_22BB32FA4(v204);
            sub_22BB35600();
            sub_22BB2F194();

            (v225)(v198, v218);
          }

          else
          {

            v208 = sub_22BB37820();
            v219(v208, v203);
            v209 = sub_22BB30AE4();
            v225(v209);
          }

          v210 = sub_22BB3B0E4();
          v212 = v211;
          sub_22BD38978();
          v213 = swift_allocError();
          *v214 = v210;
          v214[1] = v212;
          v223 = v213;
          swift_willThrow();
          v215 = sub_22BB331D4();
          (v221)(v215);
          v219(v201, v186);
          goto LABEL_7;
        }

        sub_22BB382E8((v34 + 56), v34 + 16);
        swift_task_alloc();
        sub_22BB30B34();
        *(v34 + 504) = v191;
        *v191 = v192;
        sub_22BB3576C(v191);
        sub_22BB38A6C();

        return sub_22BD36D40();
      }

      else
      {
        v183 = *(v34 + 232);
        sub_22BB38A6C();

        return sub_22BDBB6C4();
      }
    }
  }

  else
  {
    v108 = swift_task_alloc();
    *(v34 + 448) = v108;
    *v108 = v34;
    v108[1] = sub_22BD33894;
    v109 = *(v34 + 104);
    sub_22BB3487C(*(v34 + 96));
    sub_22BB38A6C();

    return sub_22BD34B24();
  }
}

uint64_t sub_22BD33894()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = *(v2 + 448);
  *v4 = *v1;
  *(v3 + 456) = v0;

  v6 = *(v2 + 104);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD339B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint8_t *buf, uint64_t a15, uint64_t *a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22BB34770();
  v169 = *(v34 + 456);
  v35 = *(v34 + 360);
  v36 = *(v34 + 368);
  v38 = *(v34 + 344);
  v37 = *(v34 + 352);
  v39 = *(v34 + 304);
  sub_22BDB6364();
  v40 = *(v37 + 16);
  v41 = sub_22BB31F54();
  v42(v41);
  v43 = sub_22BDB77C4();
  v44 = sub_22BDBB104();
  v45 = sub_22BB3E3C4(v44);
  v47 = *(v34 + 352);
  v46 = *(v34 + 360);
  v48 = *(v34 + 344);
  v49 = *(v34 + 304);
  v51 = *(v34 + 248);
  v50 = *(v34 + 256);
  if (v45)
  {
    v172 = *(v34 + 248);
    v52 = sub_22BB31AD8();
    a17 = v48;
    a22 = sub_22BB314C8();
    *v52 = 136315138;
    sub_22BDB99B4();
    a19 = v49;
    v49 = v53;
    LODWORD(a18) = v44;
    v54 = *(v47 + 8);
    v54(v46, v48);
    v55 = sub_22BB30AE4();
    v46 = sub_22BB32EE0(v55, v56, v57);

    *(v52 + 4) = v46;
    _os_log_impl(&dword_22BB2C000, v43, a18, "Processing new event: %s", v52, 0xCu);
    sub_22BB32FA4(a22);
    sub_22BB30AF0();
    sub_22BB3A3D8();

    v58 = *(v50 + 8);
    v58(a19, v172);
  }

  else
  {

    v54 = *(v47 + 8);
    v54(v46, v48);
    v58 = *(v50 + 8);
    v58(v49, v51);
  }

  *(v34 + 464) = v54;
  *(v34 + 472) = v58;
  sub_22BB33510();
  sub_22BDB8004();
  v59 = sub_22BB371E4();
  if (sub_22BB3AA28(v59, 1, v46) == 1)
  {
    sub_22BB315C4();
    isa = v43[11].isa;
    v60 = v43 + 11;
    v62 = sub_22BB30AE4();
    v173 = v54;
    if (v63(v62) == *MEMORY[0x277D1E770])
    {
      v64 = *(v34 + 440);
      v65 = *(v34 + 352);
      v165 = *(v34 + 344);
      v166 = *(v34 + 368);
      v66 = sub_22BB3ADCC();
      v67(v66);
      v68 = sub_22BB3E1FC();
      v69(v68);
      sub_22BDB9784();
      sub_22BDB9794();
      sub_22BDB4B84();
      v70 = sub_22BB720CC();
      v71(v70);
      v170 = v49;
      swift_willThrow();
      v72 = v60[1].isa;
      v73 = sub_22BB35464();
      v74(v73);
      v54(v166, v165);
LABEL_27:
      sub_22BD35260();

      sub_22BB31DB4();
      v153 = *(v34 + 304);
      v154 = *(v34 + 312);
      v155 = *(v34 + 288);
      v156 = *(v34 + 296);
      sub_22BB308DC();
      v168 = *(v34 + 152);
      v175 = *(v34 + 128);

      sub_22BB2F09C();
      sub_22BB38A6C();

      return v158(v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, a12, a13, buf, a15, a16, a17, v165, v168, v170, v175, a22, a23, a24, a25, a26);
    }

    v97 = sub_22BB3B6EC();
    v98(v97);
    sub_22BDB6364();
    v99 = sub_22BDB77C4();
    v100 = sub_22BDBB104();
    if (sub_22BB333C0(v100))
    {
      *sub_22BB37F30() = 0;
      sub_22BB2F0A8(&dword_22BB2C000, v101, v102, "Router did not return a callable service. Returning no new transript events and things might get quiet...");
      sub_22BB35600();
    }

    sub_22BB33288();
    v103 = *(v34 + 248);
    v104 = *(v34 + 256);

    v105 = sub_22BB32E04();
    (v58)(v105);
    v106 = sub_22BB2F0E0();
    v173(v106);
    sub_22BD35260();

    v108 = *(v34 + 424);
    v107 = *(v34 + 432);
    v110 = *(v34 + 392);
    v109 = *(v34 + 400);
    v112 = *(v34 + 360);
    v111 = *(v34 + 368);
    v113 = *(v34 + 336);
    v115 = *(v34 + 304);
    v114 = *(v34 + 312);
    sub_22BB323E8();

    sub_22BB39738();
    sub_22BB38A6C();

    return v118(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, buf, a15, a16, a17, a18, a19, v169, v173, a22, a23, a24, a25, a26);
  }

  else
  {
    v75 = sub_22BB72F2C();
    v77 = v76;
    if ((*(v78 + 88))(v75, v46) == *MEMORY[0x277D1D748])
    {
      v174 = v54;
      sub_22BB39514();
      (*(v77 + 96))(v49, v46);
      v79 = sub_22BB36014();
      v80(v79);
      sub_22BDB6364();
      v81 = sub_22BB37098();
      a17 = v82;
      (v82)(v81);
      v83 = sub_22BDB77C4();
      v84 = sub_22BDBB104();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v34 + 296);
      v87 = *(v34 + 248);
      v165 = v86;
      v167 = *(v34 + 256);
      v88 = *(v34 + 216);
      v90 = *(v34 + 184);
      v89 = *(v34 + 192);
      if (v85)
      {
        buf = sub_22BB31AD8();
        a16 = sub_22BB314C8();
        a22 = a16;
        *buf = 136315138;
        sub_22BB35C18();
        sub_22BB8C4F8(v91, 255, v92);
        sub_22BDBB684();
        a15 = v87;
        LODWORD(a13) = v84;
        v93 = *(v89 + 8);
        v93(v88, v90);
        v94 = sub_22BB3182C();
        sub_22BB32EE0(v94, v95, v96);
        sub_22BB371E4();

        *(buf + 4) = v88;
        _os_log_impl(&dword_22BB2C000, v83, a13, "Routing to planner service: %s", buf, 0xCu);
        sub_22BB32FA4(a16);
        sub_22BB30AF0();
        sub_22BB30AF0();
      }

      else
      {

        v93 = *(v89 + 8);
        v93(v88, v90);
      }

      v58(v165, v87);
      *(v34 + 496) = v93;
      v127 = sub_22BB92298();
      v128 = sub_22BB343C8(v127);
      sub_22BD79B78(v128, v129, v130);

      if (!*(v34 + 80))
      {
        sub_22BB518A8();
        sub_22BB58728(v34 + 56, &qword_27D8E62D8, qword_22BDCDA00);
        sub_22BDB6364();
        v134 = sub_22BB3182C();
        (a17)(v134);
        v135 = sub_22BDB77C4();
        v136 = sub_22BDBB114();
        v137 = sub_22BB3E3C4(v136);
        v171 = *(v34 + 280);
        v138 = *(v34 + 248);
        v139 = *(v34 + 256);
        v141 = *(v34 + 192);
        v140 = *(v34 + 200);
        v142 = *(v34 + 184);
        if (v137)
        {
          sub_22BB31AD8();
          v165 = v139;
          a17 = sub_22BB38198();
          a22 = a17;
          *v93 = 136315138;
          sub_22BB35C18();
          sub_22BB8C4F8(v143, 255, v144);
          sub_22BDBB684();
          LODWORD(a15) = v136;
          a16 = v138;
          v145 = sub_22BB37820();
          v93(v145, v142);
          sub_22BB36A70();
          sub_22BB371E4();

          *(v93 + 4) = v140;
          sub_22BB337EC(&dword_22BB2C000, v135, v136, "No service with identifier: %s");
          v140 = a17;
          sub_22BB32FA4(a17);
          sub_22BB30AF0();
          sub_22BB2F194();
        }

        else
        {

          v146 = sub_22BB37820();
          v93(v146, v142);
        }

        v58(v171, v138);
        v147 = sub_22BB3B0E4();
        v149 = v148;
        sub_22BD38978();
        v150 = swift_allocError();
        *v151 = v147;
        v151[1] = v149;
        v170 = v150;
        swift_willThrow();
        v152 = sub_22BB331D4();
        v174(v152);
        v93(v140, v93);
        goto LABEL_27;
      }

      sub_22BB382E8((v34 + 56), v34 + 16);
      swift_task_alloc();
      sub_22BB30B34();
      *(v34 + 504) = v131;
      *v131 = v132;
      sub_22BB3576C(v131);
      sub_22BB38A6C();

      return sub_22BD36D40();
    }

    else
    {
      v125 = *(v34 + 232);
      sub_22BB38A6C();

      return sub_22BDBB6C4();
    }
  }
}

uint64_t sub_22BD3435C()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 504);
  *v6 = *v1;
  *(v5 + 512) = v0;

  v8 = *(v4 + 104);
  if (!v0)
  {
    *(v5 + 520) = v3;
  }

  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BD34488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void, void), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t), uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  v27 = v26[65];
  if (!v27)
  {
    v27 = MEMORY[0x277D84F90];
  }

  v72 = v27;
  if (*(v27 + 16))
  {
    v28 = v26[58];
    v29 = v26[46];
    v30 = v26[43];
    v31 = v26[44];
    sub_22BB32FA4(v26 + 2);
    v28(v29, v30);
  }

  else
  {
    v33 = v26[60];
    v32 = v26[61];
    v34 = v26[36];
    v35 = v26[28];
    v36 = v26[26];
    v37 = v26[23];
    sub_22BDB6364();
    v38 = sub_22BB3182C();
    v33(v38);
    v39 = sub_22BDB77C4();
    v40 = sub_22BDBB104();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v26[58];
    v43 = v26[46];
    v44 = v26[43];
    a20 = v26[36];
    a21 = v26[59];
    a17 = v26[62];
    a18 = v26[32];
    a19 = v26[31];
    v45 = v26[26];
    v46 = v26[23];
    v47 = v26[24];
    if (v41)
    {
      a16 = v26[44];
      v48 = sub_22BB31AD8();
      a15 = v43;
      a23 = sub_22BB314C8();
      *v48 = 136315138;
      sub_22BB35C18();
      sub_22BB8C4F8(v49, 255, v50);
      sub_22BDBB684();
      a13 = v44;
      a14 = v42;
      v51 = sub_22BB3B804();
      v52(v51);
      v53 = sub_22BB3B528();
      v56 = sub_22BB32EE0(v53, v54, v55);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_22BB2C000, v39, v40, "Planner service '%s' did not return new transcript events. Things might get quiet...", v48, 0xCu);
      sub_22BB32FA4(a23);
      sub_22BB35600();
      sub_22BB30AF0();
    }

    else
    {

      v57 = sub_22BB3B804();
      v58(v57);
    }

    a21(a20, a19);
    sub_22BB32FA4(v26 + 2);
    v42(v43, v44);
  }

  v59 = v26[55];
  v60 = v26[24] + 8;
  (v26[62])(v26[28], v26[23]);
  sub_22BD35260();

  sub_22BB31DB4();
  v61 = v26[38];
  v62 = v26[39];
  sub_22BB323E8();

  sub_22BB39738();
  sub_22BB38A6C();

  return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v72, a23, a24, a25, a26);
}

uint64_t sub_22BD347F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v25 = v24[55];
  (*(v24[44] + 8))(v24[46], v24[43]);
  sub_22BD35260();

  v39 = v24[57];
  sub_22BB31DB4();
  v26 = v24[38];
  v27 = v24[39];
  v28 = v24[36];
  v29 = v24[37];
  sub_22BB308DC();
  sub_22BB330C4();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v39, a22, a23, a24);
}

uint64_t sub_22BD34948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v25 = v24[62];
  v26 = v24[58];
  v27 = v24[55];
  v28 = v24[46];
  v29 = v24[43];
  v30 = v24[44];
  v31 = v24[28];
  v32 = v24[23];
  v33 = v24[24];
  sub_22BB32FA4(v24 + 2);
  v34 = sub_22BB30AE4();
  v26(v34);
  v35 = sub_22BB331D4();
  v25(v35);
  sub_22BD35260();

  v49 = v24[64];
  sub_22BB31DB4();
  v36 = v24[38];
  v37 = v24[39];
  v38 = v24[36];
  v39 = v24[37];
  sub_22BB308DC();
  sub_22BB330C4();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v49, a22, a23, a24);
}

uint64_t sub_22BD34ACC(void *a1)
{
  v1 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  return sub_22BDB7924() & 1;
}

uint64_t sub_22BD34B24()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_22BDB77D4();
  v1[5] = v3;
  sub_22BB30434(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_22BB30ACC();
  v7 = sub_22BDB7734();
  v1[8] = v7;
  sub_22BB30434(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_22BB3307C();
  v1[11] = swift_task_alloc();
  v11 = sub_22BDB7754();
  v1[12] = v11;
  sub_22BB30434(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v15 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22BD34CA0()
{
  v2 = v0[14];
  v1 = v0[15];
  if (*(v0[3] + 176))
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[7];
    v6 = v0[15];

    sub_22BB2F09C();

    return v7();
  }

  else
  {
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    v12 = v0[15];
    sub_22BDB60D4();
    sub_22BDB60D4();
    sub_22BDB7744();
    sub_22BDB7704();
    v13 = *(v10 + 8);
    v14 = sub_22BB2F3F0();
    v48 = v15;
    v15(v14);
    v16 = sub_22BDB7744();
    v17 = sub_22BDBB1D4();
    if (sub_22BDBB244())
    {
      v18 = v0[11];
      v19 = sub_22BB37F30();
      *v19 = 0;
      v20 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v16, v17, v20, "AgenticPlanner.setup", "", v19, 2u);
      sub_22BB30AF0();
    }

    v21 = v0[15];
    v23 = v0[11];
    v22 = v0[12];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    v27 = v0[3];
    v45 = v0[2];
    v46 = v0[4];

    v28 = sub_22BB3459C(v25);
    v29(v28, v23, v26);
    v30 = sub_22BDB77A4();
    sub_22BB34ED4(v30);
    sub_22BB69A84();
    v0[16] = sub_22BB3DFFC();
    v31 = *(v25 + 8);
    v32 = sub_22BB35464();
    v33(v32);
    v34 = sub_22BB331D4();
    v48(v34);
    sub_22BB37DDC();
    v38 = sub_22BB8C4F8(v35, v36, v37);
    v39 = swift_task_alloc();
    v0[17] = v39;
    v39[2] = v27;
    v39[3] = v45;
    v39[4] = v46;
    v40 = *(MEMORY[0x277D859B8] + 4);
    v41 = swift_task_alloc();
    v0[18] = v41;
    *v41 = v0;
    v41[1] = sub_22BD34F74;
    v42 = MEMORY[0x277D84F78] + 8;
    v43 = MEMORY[0x277D84F78] + 8;
    v44 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v41, v42, v43, v27, v38, &unk_22BDCD9B8, v39, v44);
  }
}

uint64_t sub_22BD34F74()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    v9 = v3[3];
    v10 = sub_22BD351A8;
  }

  else
  {
    v11 = v3[17];
    v12 = v3[3];

    v10 = sub_22BD35088;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22BD35088()
{
  sub_22BB30F5C();
  v1 = v0[7];
  *(v0[3] + 176) = 1;
  sub_22BDB6364();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    *sub_22BB37F30() = 0;
    sub_22BB2F0A8(&dword_22BB2C000, v4, v5, "Setting up all services succeeded");
    sub_22BB35600();
  }

  v6 = v0[16];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  v10 = *(v8 + 8);
  v11 = sub_22BB2F0E0();
  v12(v11);
  sub_22BD35260();

  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[7];

  sub_22BB2F09C();

  return v18();
}

uint64_t sub_22BD351A8()
{
  sub_22BB30F5C();
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  sub_22BD35260();

  sub_22BB2F09C();
  v9 = v0[19];

  return v8();
}

void sub_22BD35260()
{
  sub_22BB30F94();
  v32 = v0;
  v1 = sub_22BDB7764();
  v2 = sub_22BB30444(v1);
  v31 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v8 = v7 - v6;
  v33 = sub_22BDB7734();
  v9 = sub_22BB30444(v33);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB7754();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  sub_22BDB60D4();
  v26 = sub_22BDB7744();
  sub_22BDB7774();
  v30 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v31 + 88))(v8, v1) == *MEMORY[0x277D85B00])
    {
      v27 = "[Error] Interval already ended";
    }

    else
    {
      (*(v31 + 8))(v8, v1);
      v27 = "";
    }

    v28 = sub_22BB37F30();
    *v28 = 0;
    v29 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v26, v30, v29, v32, v27, v28, 2u);
    sub_22BB3A3D8();
  }

  (*(v11 + 8))(v16, v33);
  (*(v20 + 8))(v25, v17);
  sub_22BB314EC();
}

uint64_t sub_22BD354EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v7 = sub_22BDB96E4();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v5[20] = *(v8 + 64);
  v5[21] = swift_task_alloc();
  v9 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD35600, a3, 0);
}

uint64_t sub_22BD35600()
{
  sub_22BB3B558();
  sub_22BB348A0();
  v1 = *(v0 + 120);
  sub_22BD36B7C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v32 = **(v0 + 112);
    v33 = *(v0 + 152);
    v4 = v2 + 32;
    v31 = *(v0 + 160) + 7;
    v5 = sub_22BDBAEF4();
    do
    {
      v36 = v3;
      v6 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = *(v0 + 144);
      v34 = *(v0 + 136);
      v35 = *(v0 + 176);
      v9 = *(v0 + 128);
      sub_22BB336D0(v6, 1, 1, v5);
      sub_22BB69088(v4, v0 + 16);
      (*(v33 + 16))(v7, v9, v8);
      v10 = (*(v33 + 80) + 72) & ~*(v33 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      sub_22BB382E8((v0 + 16), v11 + 32);
      (*(v33 + 32))(v11 + v10, v7, v8);
      *(v11 + ((v31 + v10) & 0xFFFFFFFFFFFFFFF8)) = v34;
      sub_22BBB5584(v6, v35);
      v13 = sub_22BB3AA28(v35, 1, v5);
      v14 = *(v0 + 176);
      if (v13 == 1)
      {
        sub_22BB58728(*(v0 + 176), &qword_27D8E2978, &qword_22BDBD020);
      }

      else
      {
        sub_22BDBAEE4();
        (*(*(v5 - 8) + 8))(v14, v5);
      }

      if (*v12)
      {
        v15 = *(v11 + 24);
        v16 = *v12;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_22BDBAE44();
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
        v20 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v17;
        *(v0 + 80) = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v0 + 184);
      *(v0 + 88) = 1;
      *(v0 + 96) = v20;
      *(v0 + 104) = v32;
      swift_task_create();

      sub_22BB58728(v21, &qword_27D8E2978, &qword_22BDBD020);
      v4 += 40;
      v3 = v36 - 1;
    }

    while (v36 != 1);
  }

  sub_22BB37DDC();
  *(v0 + 192) = sub_22BB8C4F8(v22, v23, v24);
  v25 = *(v0 + 120);
  v26 = *(MEMORY[0x277D85818] + 4);
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
  *v27 = v0;
  sub_22BB37330();
  sub_22BB374A0();

  return MEMORY[0x2822004D0](v28);
}

uint64_t sub_22BD35974()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  v6 = *(v2 + 120);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD35A94()
{
  sub_22BB2F35C();
  if (*(v0 + 216) == 1)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 168);

    sub_22BB2F09C();

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 120);
    v8 = *(MEMORY[0x277D85818] + 4);
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    *v9 = v0;
    v10 = sub_22BB37330();

    return MEMORY[0x2822004D0](v10);
  }
}

uint64_t sub_22BD35B8C()
{
  sub_22BB2F0D4();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  sub_22BB2F09C();
  v5 = v0[26];

  return v4();
}

uint64_t sub_22BD35BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22BBF90EC;

  return sub_22BD35CA4(a4, a5);
}

uint64_t sub_22BD35CA4(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_22BDB8334();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = sub_22BDB8134();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v2[25] = v9;
  v10 = *(v9 - 8);
  v2[26] = v10;
  v11 = *(v10 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v12 = sub_22BDB80E4();
  v2[29] = v12;
  v13 = *(v12 - 8);
  v2[30] = v13;
  v14 = *(v13 + 64) + 15;
  v2[31] = swift_task_alloc();
  v15 = sub_22BDB9774();
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v17 = *(v16 + 64) + 15;
  v2[34] = swift_task_alloc();
  v18 = sub_22BDB82C4();
  v2[35] = v18;
  v19 = *(v18 - 8);
  v2[36] = v19;
  v20 = *(v19 + 64) + 15;
  v2[37] = swift_task_alloc();
  v21 = sub_22BDB43E4();
  v2[38] = v21;
  v22 = *(v21 - 8);
  v2[39] = v22;
  v23 = *(v22 + 64) + 15;
  v2[40] = swift_task_alloc();
  v24 = sub_22BDB7734();
  v2[41] = v24;
  v25 = *(v24 - 8);
  v2[42] = v25;
  v26 = *(v25 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v27 = sub_22BDB7754();
  v2[45] = v27;
  v28 = *(v27 - 8);
  v2[46] = v28;
  v29 = *(v28 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD36068, 0, 0);
}

uint64_t sub_22BD36068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22BB30EEC();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v30 = v26[47];
  v29 = v26[48];
  v31 = v26[45];
  v32 = v26[46];
  v33 = v26[44];
  v34 = v26[17];
  sub_22BDB60D4();
  sub_22BDB60D4();
  sub_22BDB7744();
  sub_22BDB7704();
  v35 = *(v32 + 8);
  v36 = sub_22BB2F3F0();
  v35(v36);
  sub_22BB69088(v34, (v26 + 2));
  v37 = sub_22BDB7744();
  v38 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v39 = v26[44];
    v40 = sub_22BB31AD8();
    v41 = sub_22BB314C8();
    a15 = v41;
    *v40 = 136315138;
    v42 = v26[5];
    v43 = v26[6];
    sub_22BB31214(v26 + 2);
    v44 = sub_22BDB7914();
    v46 = v45;
    sub_22BB32FA4(v26 + 2);
    v47 = sub_22BB32EE0(v44, v46, &a15);

    *(v40 + 4) = v47;
    v48 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v37, v38, v48, "PlannerService.setup(_:)", "Service: %s", v40, 0xCu);
    sub_22BB32FA4(v41);
    sub_22BB30AF0();
    sub_22BB35600();
  }

  else
  {

    sub_22BB32FA4(v26 + 2);
  }

  v49 = v26[48];
  v51 = v26[44];
  v50 = v26[45];
  v52 = v26[42];
  v53 = v26[41];
  v54 = v26[17];
  v55 = sub_22BB3459C(v52);
  v56(v55, v51, v53);
  v57 = sub_22BDB77A4();
  sub_22BB34ED4(v57);
  sub_22BB69A84();
  v26[49] = sub_22BB3DFFC();
  v58 = *(v52 + 8);
  v59 = sub_22BB32E04();
  v60(v59);
  v61 = sub_22BB2F0E0();
  v35(v61);
  v62 = *(v54 + 24);
  v63 = sub_22BB31F54();
  sub_22BB69FEC(v63, v64);
  swift_getDynamicType();
  v65 = *(v54 + 32);
  if (sub_22BDB7904())
  {
    v67 = v26[36];
    v66 = v26[37];
    v68 = v26[34];
    v121 = v26[35];
    v69 = v26[33];
    v70 = v26[17];
    v122 = v26[18];
    v124 = v26[40];
    v127 = v26[32];
    v26[50] = sub_22BDB8E54();
    v71 = *(v54 + 32);
    sub_22BB69FEC(v70, *(v54 + 24));
    sub_22BDB78D4();
    (*(v67 + 104))(v66, *MEMORY[0x277D1DCA0], v121);
    sub_22BDB96A4();
    sub_22BDB8E44();
    v72 = *(v69 + 8);
    v26[51] = v72;
    v26[52] = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v68, v127);
    v73 = *(v67 + 8);
    v74 = sub_22BB2F0E0();
    v75(v74);
    v77 = *(v54 + 24);
    v76 = *(v54 + 32);
    sub_22BB69FEC(v70, v77);
    v78 = *(MEMORY[0x277D1D568] + 4);
    v79 = swift_task_alloc();
    v26[53] = v79;
    *v79 = v26;
    v79[1] = sub_22BD36574;
    sub_22BB3487C(v26[18]);
    sub_22BB35ED4();

    return MEMORY[0x2821767B8](v80, v81, v82, v83, v84, v85, v86, v87, a9, v121, v122, v124, v70, v127, a15, a16, a17, a18);
  }

  else
  {
    v88 = v26[28];
    v89 = v26[17];
    sub_22BDB6364();
    sub_22BB69088(v89, (v26 + 7));
    v90 = sub_22BDB77C4();
    v91 = sub_22BDBB104();
    v92 = sub_22BB31400(v91);
    v93 = v26[28];
    v94 = v26[25];
    v95 = v26[26];
    if (v92)
    {
      sub_22BB31AD8();
      v96 = sub_22BB38198();
      a15 = v96;
      *v53 = 136315138;
      v97 = v26[10];
      v98 = v26[11];
      sub_22BB31214(v26 + 7);
      v99 = sub_22BDB7914();
      sub_22BB32FA4(v26 + 7);
      v100 = sub_22BB3CB04();
      sub_22BB32EE0(v100, v101, v102);
      sub_22BB3935C();

      *(v53 + 4) = v99;
      sub_22BB34108(&dword_22BB2C000, v103, v104, "%s is not enabled. Not calling setup()");
      sub_22BB32FA4(v96);
      sub_22BB3A3D8();
      sub_22BB2F194();

      v105 = sub_22BB30DB4();
      v106(v105);
    }

    else
    {

      v107 = sub_22BB30DB4();
      v108(v107);
      sub_22BB32FA4(v26 + 7);
    }

    sub_22BB6BB50();
    v123 = v110;
    v125 = v109;
    v126 = v26[24];
    v128 = v26[21];
    v111 = v26[17];
    sub_22BD380C8();

    sub_22BB2F09C();
    sub_22BB35ED4();

    return v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, v123, v125, v126, v128, a15, a16, a17, a18);
  }
}

uint64_t sub_22BD36574()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 432) = v0;

  if (v0)
  {
    v9 = sub_22BD36838;
  }

  else
  {
    v9 = sub_22BD36674;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22BD36674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  v43 = v18[51];
  v45 = v18[52];
  v19 = v18[39];
  v39 = v18[40];
  v47 = v18[38];
  v20 = v18[34];
  v21 = v18[31];
  v40 = v18[32];
  v41 = v18[50];
  v23 = v18[29];
  v22 = v18[30];
  v24 = v18[17];
  v25 = v18[18];
  v26 = v24[4];
  sub_22BB69FEC(v24, v24[3]);
  sub_22BB2F0E0();
  sub_22BDB78D4();
  (*(v22 + 104))(v21, *MEMORY[0x277D1D9D8], v23);
  sub_22BDB96A4();
  sub_22BB3AB18();
  sub_22BDB8E24();
  v43(v20, v40);
  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v39, v47);
  sub_22BB6BB50();
  v42 = v28;
  v44 = v27;
  v46 = v18[24];
  v48 = v18[21];
  v29 = v18[17];
  sub_22BD380C8();

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v42, v44, v46, v48, a16, a17, a18);
}

uint64_t sub_22BD36838()
{
  v2 = v0[27];
  v3 = v0[17];
  sub_22BDB6364();
  sub_22BB69088(v3, (v0 + 12));
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();
  v6 = sub_22BB31400(v5);
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  if (v6)
  {
    sub_22BB31AD8();
    v51 = sub_22BB38198();
    *v1 = 136315138;
    v10 = v0[15];
    v11 = v0[16];
    sub_22BB31214(v0 + 12);
    v12 = sub_22BDB7914();
    sub_22BB32FA4(v0 + 12);
    v13 = sub_22BB3CB04();
    sub_22BB32EE0(v13, v14, v15);
    sub_22BB3935C();

    *(v1 + 4) = v12;
    sub_22BB34108(&dword_22BB2C000, v16, v17, "%s failed setup");
    sub_22BB32FA4(v51);
    sub_22BB3A3D8();
    sub_22BB2F194();

    v18 = sub_22BB30DB4();
    v19(v18);
  }

  else
  {

    v20 = sub_22BB30DB4();
    v21(v20);
    sub_22BB32FA4(v0 + 12);
  }

  v32 = v0[54];
  v39 = v0[51];
  v40 = v0[52];
  v42 = v0[49];
  v43 = v0[48];
  v44 = v0[47];
  v45 = v0[44];
  v46 = v0[43];
  v35 = v0[40];
  v37 = v0[50];
  v38 = v0[39];
  v41 = v0[38];
  v47 = v0[37];
  v33 = v0[34];
  v36 = v0[32];
  v48 = v0[31];
  v49 = v0[28];
  v50 = v0[27];
  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[22];
  v25 = v0[20];
  v34 = v0[19];
  v26 = v0[17];
  v31 = v0[21];
  v27 = v26[4];
  sub_22BB69FEC(v26, v26[3]);
  sub_22BDB78D4();
  (*(v23 + 104))(v22, *MEMORY[0x277D1DB48], v24);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BB331D4();
  sub_22BDB8E34();
  v39(v33, v36);
  (*(v25 + 8))(v31, v34);
  (*(v23 + 8))(v22, v24);
  swift_willThrow();
  (*(v38 + 8))(v35, v41);
  sub_22BB3B528();
  sub_22BD380C8();

  sub_22BB2F09C();
  v29 = v0[54];

  return v28();
}

void sub_22BD36B7C()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = v0[20];
  sub_22BB69FEC(v0 + 16, v0[19]);
  sub_22BB371E4();
  v3 = sub_22BDB7974();
  v4 = sub_22BD316A0(v3);

  v5 = 0;
  v6 = v1[21];
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v5)
    {

      sub_22BB314EC();
      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    sub_22BB69088(v8, v17);
    sub_22BB31214(v17);
    *&v16[0] = sub_22BDB7914();
    *(&v16[0] + 1) = v10;
    MEMORY[0x28223BE20](*&v16[0]);
    v15[2] = v16;
    v11 = sub_22BD7283C(sub_22BD38788, v15, v4);

    if (v11)
    {
      sub_22BB382E8(v17, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BD28608(0, *(v9 + 16) + 1, 1);
        v9 = v18;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22BD28608((v13 > 1), v14 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v14 + 1;
      sub_22BB382E8(v16, v9 + 40 * v14 + 32);
    }

    else
    {
      sub_22BB32FA4(v17);
    }

    v8 += 40;
    ++v5;
  }

  __break(1u);
}

uint64_t sub_22BD36D40()
{
  sub_22BB2F0D4();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22BDB8334();
  v1[15] = v4;
  sub_22BB30434(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = sub_22BB30ACC();
  v8 = sub_22BDB8134();
  v1[18] = v8;
  sub_22BB30434(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_22BB30ACC();
  v12 = sub_22BDB77D4();
  v1[21] = v12;
  sub_22BB30434(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_22BB30ACC();
  v16 = sub_22BDB9B54();
  v1[24] = v16;
  sub_22BB30434(v16);
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = sub_22BB30ACC();
  v20 = sub_22BDB80E4();
  v1[27] = v20;
  sub_22BB30434(v20);
  v1[28] = v21;
  v23 = *(v22 + 64);
  v1[29] = sub_22BB30ACC();
  v24 = sub_22BDB78B4();
  v1[30] = v24;
  sub_22BB30434(v24);
  v1[31] = v25;
  v27 = *(v26 + 64);
  v1[32] = sub_22BB30ACC();
  v28 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v28);
  v30 = *(v29 + 64);
  v1[33] = sub_22BB30ACC();
  v31 = sub_22BDB79E4();
  v1[34] = v31;
  sub_22BB30434(v31);
  v1[35] = v32;
  v34 = *(v33 + 64);
  v1[36] = sub_22BB3307C();
  v1[37] = swift_task_alloc();
  v35 = sub_22BDB9774();
  v1[38] = v35;
  sub_22BB30434(v35);
  v1[39] = v36;
  v38 = *(v37 + 64);
  v1[40] = sub_22BB30ACC();
  v39 = sub_22BDB82C4();
  v1[41] = v39;
  sub_22BB30434(v39);
  v1[42] = v40;
  v42 = *(v41 + 64);
  v1[43] = sub_22BB30ACC();
  v43 = sub_22BDB43E4();
  v1[44] = v43;
  sub_22BB30434(v43);
  v1[45] = v44;
  v46 = *(v45 + 64);
  v1[46] = sub_22BB3307C();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v47 = sub_22BDB7964();
  v1[49] = v47;
  sub_22BB30434(v47);
  v1[50] = v48;
  v50 = *(v49 + 64);
  v1[51] = sub_22BB30ACC();
  v51 = sub_22BDB7734();
  v1[52] = v51;
  sub_22BB30434(v51);
  v1[53] = v52;
  v54 = *(v53 + 64);
  v1[54] = sub_22BB3307C();
  v1[55] = swift_task_alloc();
  v55 = sub_22BDB7754();
  v1[56] = v55;
  sub_22BB30434(v55);
  v1[57] = v56;
  v58 = *(v57 + 64);
  v1[58] = sub_22BB3307C();
  v1[59] = swift_task_alloc();
  v59 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_22BD371E0()
{
  v115 = v0;
  v2 = v0[12];
  v3 = *(v2 + 24);
  v4 = sub_22BB31F54();
  sub_22BB69FEC(v4, v5);
  swift_getDynamicType();
  v6 = *(v2 + 32);
  if (sub_22BDB7904())
  {
    v7 = v0[58];
    v8 = v0[59];
    v9 = v0[56];
    v10 = v0[57];
    v11 = v0[55];
    v12 = v0[12];
    sub_22BDB60D4();
    sub_22BDB60D4();
    sub_22BDB7744();
    sub_22BDB7704();
    v106 = *(v10 + 8);
    v106(v7, v9);
    sub_22BB69088(v12, (v0 + 7));
    v13 = sub_22BDB7744();
    v14 = sub_22BDBB1D4();
    v112 = v2;
    if (sub_22BDBB244())
    {
      v109 = v0[55];
      v15 = v0[50];
      v16 = v0[51];
      v17 = v0[49];
      v18 = v14;
      v19 = sub_22BB31AD8();
      v20 = sub_22BB314C8();
      v114 = v20;
      *v19 = 136315138;
      sub_22BB69FEC(v0 + 7, v0[10]);
      swift_getDynamicType();
      v21 = v0[11];
      sub_22BDB78C4();
      sub_22BB35C18();
      sub_22BB8C4F8(v22, 255, v23);
      v24 = sub_22BDBB684();
      v26 = v25;
      (*(v15 + 8))(v16, v17);
      sub_22BB32FA4(v0 + 7);
      v27 = sub_22BB32EE0(v24, v26, &v114);

      *(v19 + 4) = v27;
      v28 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v13, v18, v28, "PlannerService.handle(_:)", "Service: %s", v19, 0xCu);
      sub_22BB32FA4(v20);
      sub_22BB2F194();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB32FA4(v0 + 7);
    }

    v48 = v0[55];
    v86 = v0[56];
    v87 = v0[59];
    v49 = v0[53];
    v50 = v0[52];
    v110 = v0[48];
    v100 = v0[47];
    v104 = v0[44];
    v51 = v0[43];
    v52 = v0[40];
    v88 = v0[42];
    v89 = v0[41];
    v53 = v0[39];
    v95 = v0[45];
    v96 = v0[36];
    v93 = v0[37];
    v94 = v0[35];
    v98 = v0[34];
    v91 = v0[38];
    v92 = v0[33];
    v102 = v0[32];
    v54 = v0[12];
    v90 = v54;
    v55 = sub_22BB3459C(v49);
    v56(v55, v48, v50);
    v57 = sub_22BDB77A4();
    sub_22BB34ED4(v57);
    sub_22BB69A84();
    v0[60] = sub_22BB3DFFC();
    v58 = *(v49 + 8);
    v59 = sub_22BB3AB18();
    v60(v59);
    v106(v87, v86);
    v0[61] = sub_22BDB8E54();
    v61 = *(v112 + 32);
    sub_22BB69FEC(v54, *(v112 + 24));
    sub_22BDB78D4();
    (*(v88 + 104))(v51, *MEMORY[0x277D1DCA8], v89);
    sub_22BDB96A4();
    sub_22BB3B528();
    sub_22BDB8E44();
    v62 = *(v53 + 8);
    v0[62] = v62;
    v0[63] = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v52, v91);
    (*(v88 + 8))(v51, v89);
    sub_22BDB96A4();
    sub_22BDB4364();
    v63 = sub_22BB32E04();
    (v62)(v63);
    sub_22BDB79D4();
    (*(v95 + 16))(v100, v110, v104);
    v64 = *(v94 + 16);
    v65 = sub_22BB2F0E0();
    v66(v65);
    sub_22BB2F3F0();
    sub_22BDB78A4();
    v67 = *(v112 + 32);
    sub_22BB69FEC(v90, *(v112 + 24));
    v68 = *(MEMORY[0x277D1D570] + 4);
    v69 = swift_task_alloc();
    v0[64] = v69;
    *v69 = v0;
    v69[1] = sub_22BD378CC;
    v70 = v0[32];
    v71 = sub_22BB3487C(v0[13]);

    return MEMORY[0x2821767C0](v71);
  }

  else
  {
    v29 = v0[23];
    v30 = v0[12];
    sub_22BDB6364();
    sub_22BB69088(v30, (v0 + 2));
    v31 = sub_22BDB77C4();
    v32 = sub_22BDBB104();
    v33 = sub_22BB31400(v32);
    v35 = v0[22];
    v34 = v0[23];
    v36 = v0[21];
    if (v33)
    {
      sub_22BB31AD8();
      v37 = sub_22BB38198();
      v114 = v37;
      *v1 = 136315138;
      v38 = v0[5];
      v39 = v0[6];
      sub_22BB31214(v0 + 2);
      v40 = sub_22BDB7914();
      sub_22BB32FA4(v0 + 2);
      v41 = sub_22BB3CB04();
      sub_22BB32EE0(v41, v42, v43);
      sub_22BB3935C();

      *(v1 + 4) = v40;
      sub_22BB34108(&dword_22BB2C000, v44, v45, "Service %s is disabled. Skipping handle.");
      sub_22BB32FA4(v37);
      sub_22BB3A3D8();
      sub_22BB2F194();

      v46 = sub_22BB30DB4();
      v47(v46);
    }

    else
    {

      v72 = sub_22BB30DB4();
      v73(v72);
      sub_22BB32FA4(v0 + 2);
    }

    v75 = v0[58];
    v74 = v0[59];
    v77 = v0[54];
    v76 = v0[55];
    v78 = v0[51];
    v80 = v0[47];
    v79 = v0[48];
    v81 = v0[46];
    v82 = v0[43];
    v83 = v0[40];
    v97 = v0[37];
    v99 = v0[36];
    v101 = v0[33];
    v103 = v0[32];
    v105 = v0[29];
    v107 = v0[26];
    v108 = v0[23];
    v111 = v0[20];
    v113 = v0[17];

    sub_22BB39738();

    return v84(0);
  }
}

uint64_t sub_22BD378CC()
{
  sub_22BB2F35C();
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = *(v2 + 512);
  v6 = *v1;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 520) = v8;
  *(v9 + 528) = v0;

  v10 = *(v2 + 112);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD379F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v25 = v24[65];
  v26 = v24[29];
  v27 = v24[12];
  v28 = v27[4];
  sub_22BB69FEC(v27, v27[3]);
  sub_22BB371E4();
  sub_22BDB78D4();
  v91 = v25;
  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = v24[65];
    v31 = v24[45];
    v32 = v24[25];
    v101 = MEMORY[0x277D84F90];
    sub_22BB5838C();
    v33 = v101;
    v35 = *(v32 + 16);
    v34 = v32 + 16;
    v36 = v30 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v93 = *(v34 + 56);
    v96 = v35;
    do
    {
      v37 = v24[46];
      v96(v24[26], v36, v24[24]);
      sub_22BDB8F24();
      v38 = *(v34 - 8);
      v39 = sub_22BB32E04();
      v40(v39);
      a21 = v33;
      v41 = *(v33 + 16);
      if (v41 >= *(v33 + 24) >> 1)
      {
        sub_22BB5838C();
      }

      v42 = v24[46];
      v43 = v24[44];
      *(v33 + 16) = v41 + 1;
      (*(v31 + 32))(v33 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v41, v42, v43);
      v36 += v93;
      --v29;
    }

    while (v29);
  }

  v81 = v24[61];
  v83 = v24[62];
  v44 = v24[45];
  v45 = v24[40];
  v78 = v24[48];
  v79 = v24[38];
  v97 = v24[37];
  v99 = v24[44];
  v46 = v24[35];
  v94 = v24[34];
  v47 = v24[31];
  v87 = v24[63];
  v89 = v24[32];
  v48 = v24[29];
  v85 = v24[30];
  v50 = v24[27];
  v49 = v24[28];
  v51 = v24[13];
  v52 = v48 + *(sub_22BBE6DE0(&qword_27D8E62A0, &qword_22BDCD9A8) + 48);
  sub_22BDB8C34();
  (*(v49 + 104))(v48, *MEMORY[0x277D1D9E0], v50);
  sub_22BDB96A4();
  sub_22BDB8E24();
  v83(v45, v79);
  v53 = *(v49 + 8);
  v54 = sub_22BB35464();
  v55(v54);
  (*(v47 + 8))(v89, v85);
  (*(v46 + 8))(v97, v94);
  (*(v44 + 8))(v78, v99);
  v56 = v24[65];
  if (*(v91 + 16))
  {
    v100 = v24[65];
  }

  else
  {

    v100 = 0;
  }

  v57 = v24[60];
  v58 = v24[12];
  sub_22BD380C8();

  v60 = v24[58];
  v59 = v24[59];
  v61 = v24[54];
  v62 = v24[55];
  v63 = v24[51];
  v65 = v24[47];
  v64 = v24[48];
  v66 = v24[46];
  v67 = v24[43];
  v68 = v24[40];
  v80 = v24[37];
  v82 = v24[36];
  v84 = v24[33];
  v86 = v24[32];
  v88 = v24[29];
  v90 = v24[26];
  v92 = v24[23];
  v95 = v24[20];
  v98 = v24[17];

  sub_22BB39738();
  sub_22BB374A0();

  return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, v78, v80, v82, v84, v86, v88, v90, v92, v95, v98, v100, a21, a22, a23, a24);
}

uint64_t sub_22BD37DE8()
{
  v1 = v0[66];
  v19 = v0[62];
  v20 = v0[63];
  v18 = v0[61];
  v26 = v0[60];
  v27 = v0[59];
  v28 = v0[58];
  v29 = v0[55];
  v30 = v0[54];
  v31 = v0[51];
  v2 = v0[48];
  v33 = v0[47];
  v34 = v0[46];
  v24 = v0[45];
  v25 = v0[44];
  v35 = v0[43];
  v15 = v0[40];
  v17 = v0[38];
  v23 = v0[37];
  v36 = v0[36];
  v21 = v0[35];
  v22 = v0[34];
  v32 = v0[32];
  v3 = v0[30];
  v37 = v0[33];
  v38 = v0[29];
  v39 = v0[26];
  v40 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[16];
  v16 = v0[15];
  v8 = v0[12];
  v13 = v0[17];
  v14 = v0[13];
  (*(v0[31] + 8))();
  v9 = v8[4];
  sub_22BB69FEC(v8, v8[3]);
  sub_22BB3935C();
  sub_22BDB78D4();
  (*(v4 + 104))(v5, *MEMORY[0x277D1DB50], v6);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v19(v15, v17);
  (*(v7 + 8))(v13, v16);
  (*(v4 + 8))(v5, v6);
  swift_willThrow();
  (*(v21 + 8))(v23, v22);
  (*(v24 + 8))(v2, v25);
  sub_22BD380C8();

  sub_22BB2F09C();
  v11 = v0[66];

  return v10();
}

void sub_22BD380C8()
{
  sub_22BB30F94();
  v46 = v0;
  v2 = v1;
  v3 = sub_22BDB7764();
  v4 = sub_22BB30444(v3);
  v44 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v8 = sub_22BDB7734();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB7754();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  sub_22BDB60D4();
  sub_22BB69088(v2, v48);
  v26 = sub_22BDB7744();
  sub_22BDB7774();
  v43 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v42 = v11;

    sub_22BDB77B4();

    v27 = *(v44 + 88);
    v28 = sub_22BB3182C();
    if (v29(v28) == *MEMORY[0x277D85B00])
    {
      v30 = 0;
      v31 = 0;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      v32 = *(v44 + 8);
      v33 = sub_22BB3182C();
      v34(v33);
      v45 = "Service: %s";
      v31 = 2;
      v30 = 1;
    }

    v35 = v20;
    v36 = sub_22BB31AD8();
    v47 = sub_22BB314C8();
    *v36 = v31;
    *(v36 + 1) = v30;
    *(v36 + 2) = 2080;
    sub_22BB31214(v48);
    sub_22BDB7914();
    sub_22BB32FA4(v48);
    v37 = sub_22BB2F3F0();
    v40 = sub_22BB32EE0(v37, v38, v39);

    *(v36 + 4) = v40;
    v41 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v26, v43, v41, v46, v45, v36, 0xCu);
    sub_22BB32FA4(v47);
    sub_22BB30AF0();
    sub_22BB3A3D8();

    (*(v42 + 8))(v16, v8);
    (*(v35 + 8))(v25, v17);
  }

  else
  {

    (*(v11 + 8))(v16, v8);
    (*(v20 + 8))(v25, v17);
    sub_22BB32FA4(v48);
  }

  sub_22BB314EC();
}

void *AgenticPlanner.deinit()
{
  v1 = v0[15];

  sub_22BB32FA4(v0 + 16);
  v2 = v0[21];

  v3 = v0[24];

  sub_22BB32FA4(v0 + 25);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AgenticPlanner.__deallocating_deinit()
{
  AgenticPlanner.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t _s23IntelligenceFlowRuntime14AgenticPlannerC8makePlan12sessionStateSay0abE7Support7SessionO5EventVGAH0kI0V_tYaAF0E5ErrorOYKFTj()
{
  sub_22BB30F5C();
  v2 = *(*v0 + 176);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22BD38674;
  v5 = sub_22BB3182C();

  return v7(v5);
}

uint64_t sub_22BD38674()
{
  sub_22BB2F0D4();
  v2 = v1;
  sub_22BB32690();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22BB3052C();
  *v6 = v5;

  sub_22BB39738();

  return v7(v2);
}

uint64_t sub_22BD387A8()
{
  sub_22BB30F5C();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22BBF90EC;

  return sub_22BD354EC(v5, v3, v6, v7, v8);
}

uint64_t sub_22BD38864()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = sub_22BDB96E4();
  sub_22BB30434(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22BB3C48C;

  return sub_22BD35BFC(v3, v8, v9, v0 + 32, v0 + v6);
}

unint64_t sub_22BD38978()
{
  result = qword_27D8E62D0;
  if (!qword_27D8E62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E62D0);
  }

  return result;
}

uint64_t sub_22BD389EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD38A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22BD38A90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22BD38AA8(void *result, int a2)
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

unint64_t sub_22BD38ADC()
{
  result = qword_27D8E62E0;
  if (!qword_27D8E62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E62E0);
  }

  return result;
}

uint64_t AgenticPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22BB30418();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = v16 - v15;
  v18 = sub_22BDB9C14();
  sub_22BB30418();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  v26 = v25 - v24;
  sub_22BDB7C04();
  (*(v20 + 16))(v26, a2, v18);
  sub_22BDB7BF4();
  sub_22BD38F08(v60);
  sub_22BBE6DE0(&qword_27D8E6060, &qword_22BDCD590);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22BDCDAD0;
  v28 = sub_22BDB7F54();
  v29 = sub_22BDB7F44();
  v30 = MEMORY[0x277D1D710];
  *(v27 + 56) = v28;
  *(v27 + 64) = v30;
  *(v27 + 32) = v29;
  v31 = a4[3];
  v32 = sub_22BB69FEC(a4, v31);
  v33 = sub_22BDB7EE4();
  (*(v11 + 16))(v17, a6, a7);
  sub_22BB30418();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  (*(v39 + 16))(v38 - v37, v32, v31);

  v40 = sub_22BDB7ED4();
  v41 = MEMORY[0x277D1D700];
  *(v27 + 96) = v33;
  *(v27 + 104) = v41;
  *(v27 + 72) = v40;
  sub_22BDB7E74();
  sub_22BB33E24();

  v42 = sub_22BDB7E64();
  v43 = MEMORY[0x277D1D6F0];
  *(v27 + 136) = v33;
  *(v27 + 144) = v43;
  *(v27 + 112) = v42;
  sub_22BDB7F04();
  sub_22BB33E24();

  v44 = sub_22BDB7EF4();
  v45 = MEMORY[0x277D1D708];
  *(v27 + 176) = v33;
  *(v27 + 184) = v45;
  *(v27 + 152) = v44;
  v46 = sub_22BDB7E14();
  v47 = sub_22BDB7E04();
  v48 = MEMORY[0x277D1D6D8];
  *(v27 + 216) = v46;
  *(v27 + 224) = v48;
  *(v27 + 192) = v47;
  v49 = sub_22BDB7EB4();
  sub_22BDB7EA4();
  v50 = sub_22BDB7E94();
  v51 = MEMORY[0x277D1D6F8];
  *(v27 + 256) = v49;
  *(v27 + 264) = v51;
  *(v27 + 232) = v50;
  sub_22BDB7F84();
  sub_22BB33E24();

  v52 = sub_22BDB7F74();
  v53 = MEMORY[0x277D1D720];
  *(v27 + 296) = v49;
  *(v27 + 304) = v53;
  *(v27 + 272) = v52;
  sub_22BB69088(v60, v59);
  sub_22BB69088(a5, v58);
  type metadata accessor for AgenticPlanner();
  swift_allocObject();
  v54 = AgenticPlanner.init(router:services:instrumentationSender:)();

  sub_22BB32FA4(v60);
  return v54;
}

uint64_t sub_22BD38F08@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_22BDB7964();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BBE6DE0(&qword_27D8E62E8, &qword_22BDCDB30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22BDB7894();
  sub_22BB30418();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  swift_getKeyPath();
  sub_22BDB4BE4();

  sub_22BDB7884();
  v21 = sub_22BB3AA28(v9, 1, v10);
  v22 = MEMORY[0x277D1D558];
  if (v21 == 1)
  {
    (*(v12 + 104))(v20, *MEMORY[0x277D1D558], v10);
    if (sub_22BB3AA28(v9, 1, v10) != 1)
    {
      sub_22BD393C0(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v20, v9, v10);
  }

  (*(v12 + 16))(v18, v20, v10);
  v23 = (*(v12 + 88))(v18, v10);
  if (v23 == *MEMORY[0x277D1D550])
  {
    v24 = sub_22BDB7CB4();
    sub_22BDB7EB4();
    sub_22BDB7E84();
    sub_22BDB7E84();
LABEL_11:
    sub_22BDB7C84();
    sub_22BDB7C94();
    v25 = sub_22BDB7C64();
    v26 = MEMORY[0x277D1D648];
    v27 = v30;
    v30[3] = v24;
    v27[4] = v26;
    *v27 = v25;
    return (*(v12 + 8))(v20, v10);
  }

  if (v23 == *MEMORY[0x277D1D560])
  {
    v24 = sub_22BDB7CB4();
    sub_22BDB7EB4();
    sub_22BDB7E84();
    sub_22BDB7EE4();
    sub_22BDB7EC4();
    goto LABEL_11;
  }

  if (v23 == *v22)
  {
    v24 = sub_22BDB7CB4();
    sub_22BDB7CA4();
    sub_22BDB7C74();
    goto LABEL_11;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

uint64_t sub_22BD392E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = AgenticPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AgenticPlannerConfiguration(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD393C0(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E62E8, &qword_22BDCDB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD394AC(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 16))
  {
    v3 = a2(0);
    v4 = a1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
    v5 = *(*(v3 - 8) + 72);
    sub_22BBC0AFC();
    v6 = sub_22BB72084();
    v9 = v3;
  }

  else
  {
    a2(0);
    sub_22BB384BC();
    sub_22BB30B28();
  }

  return sub_22BB336D0(v6, v7, v8, v9);
}

uint64_t sub_22BD395AC()
{
  sub_22BB2F0D4();
  v1[7] = v0;
  v1[8] = v2;
  v1[6] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[9] = sub_22BB30ACC();
  v7 = sub_22BDB4B94();
  v1[10] = v7;
  sub_22BB30434(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = sub_22BB30ACC();
  v11 = sub_22BDB8334();
  v1[13] = v11;
  sub_22BB30434(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = sub_22BB30ACC();
  v15 = sub_22BDB8134();
  v1[16] = v15;
  sub_22BB30434(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = sub_22BB30ACC();
  v19 = sub_22BDB80E4();
  v1[19] = v19;
  sub_22BB30434(v19);
  v1[20] = v20;
  v22 = *(v21 + 64);
  v1[21] = sub_22BB30ACC();
  v23 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  v1[22] = sub_22BB30ACC();
  v26 = sub_22BDB9774();
  v1[23] = v26;
  sub_22BB30434(v26);
  v1[24] = v27;
  v29 = *(v28 + 64);
  v1[25] = sub_22BB30ACC();
  v30 = sub_22BDB82C4();
  v1[26] = v30;
  sub_22BB30434(v30);
  v1[27] = v31;
  v33 = *(v32 + 64);
  v1[28] = sub_22BB30ACC();
  v34 = sub_22BDB43E4();
  v1[29] = v34;
  sub_22BB30434(v34);
  v1[30] = v35;
  v37 = *(v36 + 64);
  v1[31] = sub_22BB30ACC();
  v38 = sub_22BDB77D4();
  v1[32] = v38;
  sub_22BB30434(v38);
  v1[33] = v39;
  v41 = *(v40 + 64);
  v1[34] = sub_22BB30ACC();
  v42 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_22BD398C0()
{
  v1 = *(v0 + 272);
  sub_22BDB63D4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "running planner");
    sub_22BB35600();
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 248);
  v13 = *(v0 + 192);
  v27 = *(v0 + 184);
  v28 = *(v0 + 176);
  v14 = *(v0 + 48);

  (*(v7 + 8))(v8, v9);
  *(v0 + 280) = sub_22BDB8E54();
  v15 = *MEMORY[0x277D1D8C0];
  *(v0 + 352) = v15;
  v16 = sub_22BDB8094();
  *(v0 + 288) = v16;
  sub_22BB2F330(v16);
  v18 = *(v17 + 104);
  *(v0 + 296) = v18;
  *(v0 + 304) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v11, v15);
  (*(v10 + 104))(v11, *MEMORY[0x277D1DC90], v25);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v19 = *(v13 + 8);
  *(v0 + 312) = v19;
  *(v0 + 320) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v27);
  (*(v10 + 8))(v11, v25);
  sub_22BDB96A4();
  v20 = sub_22BDB9744();
  v19(v12, v27);
  sub_22BB3090C();
  sub_22BBD22B0(v20, v21);

  v22 = swift_task_alloc();
  *(v0 + 328) = v22;
  *v22 = v0;
  v22[1] = sub_22BD39B24;
  v23 = *(v0 + 56);
  sub_22BB3487C(*(v0 + 48));

  return sub_22BBD2364();
}

uint64_t sub_22BD39B24()
{
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[41];
  *v4 = *v2;
  v3[42] = v0;

  v6 = v3[7];
  if (!v0)
  {
    v3[43] = v1;
  }

  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD39C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v45 = *(v22 + 312);
  v46 = *(v22 + 320);
  v23 = *(v22 + 304);
  v24 = *(v22 + 280);
  v26 = *(v22 + 240);
  v25 = *(v22 + 248);
  v47 = *(v22 + 232);
  v48 = *(v22 + 272);
  v27 = *(v22 + 200);
  v28 = *(v22 + 184);
  v44 = *(v22 + 176);
  v30 = *(v22 + 160);
  v29 = *(v22 + 168);
  v31 = *(v22 + 152);
  v49 = *(v22 + 224);
  v50 = *(v22 + 144);
  v32 = *(v22 + 120);
  v51 = v32;
  v52 = *(v22 + 96);
  v53 = *(v22 + 72);
  v33 = *(v22 + 48);
  (*(v22 + 296))(v29, *(v22 + 352), *(v22 + 288));
  (*(v30 + 104))(v29, *MEMORY[0x277D1D9C8], v31);
  sub_22BDB96A4();
  sub_22BDB8E24();
  v45(v27, v28);
  (*(v30 + 8))(v29, v31);
  sub_22BB58728(v44, &unk_27D8E69E0, &qword_22BDC1660);
  (*(v26 + 8))(v25, v47);

  sub_22BB39738();
  v34 = *(v22 + 344);
  sub_22BB38C7C();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, a20, a21, a22);
}

uint64_t sub_22BD39DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v21 = *(v20 + 336);
  v85 = *(v20 + 312);
  v86 = *(v20 + 320);
  v22 = *(v20 + 304);
  v23 = *(v20 + 248);
  v24 = *(v20 + 200);
  v84 = *(v20 + 184);
  v87 = *(v20 + 176);
  v25 = *(v20 + 136);
  v26 = *(v20 + 144);
  v27 = *(v20 + 120);
  v28 = *(v20 + 128);
  v29 = *(v20 + 112);
  v82 = *(v20 + 280);
  v83 = *(v20 + 104);
  v89 = *(v20 + 72);
  v91 = *(v20 + 80);
  v30 = *(v20 + 48);
  (*(v20 + 296))(v26, *(v20 + 352), *(v20 + 288));
  (*(v25 + 104))(v26, *MEMORY[0x277D1DB38], v28);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v85(v24, v84);
  (*(v29 + 8))(v27, v83);
  v31 = *(v25 + 8);
  v32 = sub_22BB35464();
  v33(v32);
  v34 = sub_22BDB4234();
  sub_22BD402CC();

  swift_getErrorValue();
  v35 = *(v20 + 16);
  v36 = *(v20 + 32);
  sub_22BD42574(*(v20 + 24), v89);
  v37 = sub_22BB3AA28(v89, 1, v91);
  v38 = *(v20 + 336);
  if (v37 == 1)
  {
    v39 = *(v20 + 64);
    sub_22BB58728(*(v20 + 72), &qword_27D8E62F0, &unk_22BDCDB78);
    v40 = v38;
    sub_22BDB4BA4();
    v41 = *MEMORY[0x277D1D9A8];
    v42 = sub_22BDB80D4();
    sub_22BB2F330(v42);
    (*(v43 + 104))(v39, v41, v42);
    sub_22BB37540();
    sub_22BB8C540(v44, 255, v45);
    sub_22BB33728();
    swift_willThrowTypedImpl();
  }

  else
  {
    v47 = *(v20 + 88);
    v46 = *(v20 + 96);
    v48 = *(v20 + 72);
    v49 = *(v20 + 80);
    v50 = *(v20 + 64);
    v51 = *(v47 + 32);
    v52 = sub_22BBBE718();
    v53(v52);
    (*(v47 + 16))(v50, v46, v49);
    v54 = *MEMORY[0x277D1D9A0];
    v55 = sub_22BDB80D4();
    sub_22BB2F330(v55);
    (*(v56 + 104))(v50, v54, v55);
    sub_22BB37540();
    sub_22BB8C540(v57, 255, v58);
    swift_willThrowTypedImpl();

    v59 = *(v47 + 8);
    v60 = sub_22BB30AE4();
    v61(v60);
  }

  v62 = *(v20 + 272);
  v64 = *(v20 + 240);
  v63 = *(v20 + 248);
  v66 = *(v20 + 224);
  v65 = *(v20 + 232);
  v67 = *(v20 + 200);
  v68 = *(v20 + 168);
  v69 = *(v20 + 144);
  v88 = *(v20 + 120);
  v90 = *(v20 + 96);
  v92 = *(v20 + 72);
  sub_22BB58728(*(v20 + 176), &unk_27D8E69E0, &qword_22BDC1660);
  v70 = *(v64 + 8);
  v71 = sub_22BB30AE4();
  v72(v71);

  sub_22BB2F09C();
  sub_22BB3CEF4();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, v82, v83, v84, v85, v86, v88, v90, v92, a18, a19, a20);
}

uint64_t sub_22BD3A1D0()
{
  v53 = v0;
  v1 = v0[35];
  v2 = v0[12];
  sub_22BDB63D4();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB114();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[34];
    v5 = v0[35];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = sub_22BB31AD8();
    v11 = sub_22BB314C8();
    v52 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22BB32EE0(v6, v5, &v52);
    _os_log_impl(&dword_22BB2C000, v3, v4, "%s failed setup", v10, 0xCu);
    sub_22BB32FA4(v11);
    sub_22BB30AF0();
    sub_22BB3A3D8();

    v12 = *(v8 + 8);
    v13 = sub_22BB30AE4();
    v14(v13);
  }

  else
  {
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];

    v18 = *(v16 + 8);
    v19 = sub_22BB30AE4();
    v20(v19);
  }

  v33 = v0[41];
  v38 = v0[38];
  v39 = v0[39];
  v37 = v0[37];
  v42 = v0[36];
  v43 = v0[35];
  v44 = v0[33];
  v45 = v0[32];
  v46 = v0[29];
  v47 = v0[28];
  v21 = v0[24];
  v35 = v0[25];
  v40 = v0[23];
  v41 = v0[34];
  v48 = v0[22];
  v32 = v0[19];
  v36 = v0[17];
  v49 = v0[16];
  v50 = v0[13];
  v51 = v0[12];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[5];
  v34 = v0[4];
  v27 = v0[2];
  v28 = v27[4];
  sub_22BB69FEC(v27, v27[3]);
  sub_22BDB7994();
  (*(v22 + 104))(v23, *MEMORY[0x277D1DB48], v25);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v38(v32, v36);
  (*(v26 + 8))(v24, v34);
  (*(v22 + 8))(v23, v25);
  swift_willThrow();
  (*(v21 + 8))(v35, v40);
  sub_22BB8A288(v42, v41, v43);

  sub_22BB2F09C();
  v30 = v0[41];

  return v29();
}

uint64_t sub_22BD3A520()
{
  sub_22BB30F5C();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  sub_22BBBD410();

  sub_22BB2F09C();
  v9 = v0[18];

  return v8();
}

uint64_t sub_22BD3A5D8()
{
  sub_22BB2F0D4();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  sub_22BB2F09C();
  v5 = v0[25];

  return v4();
}

uint64_t sub_22BD3A648()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 400);
  v6 = *v2;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 408) = v8;
  *(v9 + 416) = v0;

  sub_22BB33218();
  v11 = *(v10 + 104);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BD3A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v23 = *(v22 + 304);
  v24 = *(v22 + 280);
  v25 = *(v22 + 288);
  if (*(v22 + 408))
  {
    v26 = *(v25 + 8);
    v27 = sub_22BB33728();
    v28(v27);
    sub_22BB38774();
    sub_22BBBD410();

    sub_22BB39738();
    sub_22BB38C7C();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    sub_22BB71F40();
    sub_22BB36A8C();
    sub_22BDB8BE4();
    sub_22BD42338();
    v52 = sub_22BB31A08();
    sub_22BB37A40(v38, *(v22 + 88), *(v22 + 72), *(v22 + 56));
    v39 = *(v25 + 8);
    v40 = sub_22BB33728();
    v41(v40);
    sub_22BB95778();
    v42 = *(v22 + 328);
    v43 = *(v22 + 336);
    sub_22BB3668C();
    sub_22BB3B108();
    sub_22BBBD410();

    sub_22BB2F09C();
    sub_22BB38C7C();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, v52, a19, a20, a21, a22);
  }
}

uint64_t sub_22BD3A9D8()
{
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[53];
  *v4 = *v2;
  v3[54] = v0;

  v6 = v3[13];
  if (!v0)
  {
    v3[55] = v1;
  }

  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD3AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v24 = sub_22BB39528();
  v25(v24);
  sub_22BB58728(v22, &qword_27D8E6320, &qword_22BDCDD00);
  v40 = v23[55];
  v27 = v23[46];
  v26 = v23[47];
  v28 = v23[45];
  v30 = v23[41];
  v29 = v23[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB39738();
  sub_22BB38C7C();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, a20, a21, a22);
}

uint64_t sub_22BD3AC3C()
{
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[56];
  *v4 = *v2;
  v3[57] = v0;

  v6 = v3[13];
  if (!v0)
  {
    v3[58] = v1;
  }

  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD3AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  sub_22BB354FC();
  v25 = *(v24 + 8);
  v26 = sub_22BB2F324();
  v27(v26);
  sub_22BB58728(v22, &qword_27D8E6320, &qword_22BDCDD00);
  v42 = v23[58];
  v29 = v23[46];
  v28 = v23[47];
  v30 = v23[45];
  v32 = v23[41];
  v31 = v23[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB39738();
  sub_22BB38C7C();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v42, a20, a21, a22);
}

uint64_t sub_22BD3AEA8()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 472);
  v6 = *v2;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 480) = v8;
  *(v9 + 488) = v0;

  sub_22BB33218();
  v11 = *(v10 + 104);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BD3AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v23 = v22[19].n128_u64[0];
  v24 = v22[17].n128_u64[1];
  v25 = v22[18].n128_u64[0];
  v26 = v22[15].n128_i64[0];
  if (v22[30].n128_u64[0])
  {
    v27 = *(v25 + 8);
    v28 = sub_22BB331D4();
    v29(v28);
    sub_22BB58728(v26, &qword_27D8E6320, &qword_22BDCDD00);
    sub_22BB38774();
    sub_22BBBD410();

    sub_22BB39738();
    sub_22BB38C7C();

    return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    sub_22BB71F40();
    sub_22BB36A8C();
    sub_22BDB8BE4();
    sub_22BD42338();
    v56 = sub_22BB31A08();
    sub_22BB37A40(v39, v22[3].n128_u64[0], v22[2], v22[1]);
    v40 = *(v25 + 8);
    v41 = sub_22BB331D4();
    v42(v41);
    sub_22BB58728(v26, &qword_27D8E6320, &qword_22BDCDD00);
    v44 = v22[23].n128_u64[0];
    v43 = v22[23].n128_u64[1];
    v45 = v22[22].n128_u64[1];
    v47 = v22[20].n128_u64[1];
    v46 = v22[21].n128_u64[0];
    sub_22BB3668C();
    sub_22BB3B108();
    sub_22BBBD410();

    sub_22BB2F09C();
    sub_22BB38C7C();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, v56, a19, a20, a21, a22);
  }
}

uint64_t sub_22BD3B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v23 = sub_22BB6BE80();
  (*(v24 + 8))(v23);
  v36 = v22[49];
  sub_22BB95778();
  v26 = v22[41];
  v25 = v22[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB31044();
  sub_22BB38C7C();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v36, a20, a21, a22);
}

uint64_t sub_22BD3B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v24 = sub_22BB39528();
  v25(v24);
  sub_22BB58728(v22, &qword_27D8E6320, &qword_22BDCDD00);
  v37 = v23[54];
  sub_22BB95778();
  v27 = v23[41];
  v26 = v23[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB31044();
  sub_22BB38C7C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v37, a20, a21, a22);
}

uint64_t sub_22BD3B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  sub_22BB354FC();
  v25 = *(v24 + 8);
  v26 = sub_22BB2F324();
  v27(v26);
  sub_22BB58728(v22, &qword_27D8E6320, &qword_22BDCDD00);
  v39 = v23[57];
  sub_22BB95778();
  v29 = v23[41];
  v28 = v23[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB31044();
  sub_22BB38C7C();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v39, a20, a21, a22);
}

uint64_t sub_22BD3B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v24 = sub_22BB39528();
  v25(v24);
  sub_22BB58728(v22, &qword_27D8E6320, &qword_22BDCDD00);
  v37 = v23[61];
  sub_22BB95778();
  v27 = v23[41];
  v26 = v23[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB31044();
  sub_22BB38C7C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v37, a20, a21, a22);
}

uint64_t sub_22BD3B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v23 = sub_22BB6BE80();
  (*(v24 + 8))(v23);
  v36 = v22[52];
  sub_22BB95778();
  v26 = v22[41];
  v25 = v22[42];
  sub_22BB35C30();
  sub_22BBBD410();

  sub_22BB31044();
  sub_22BB38C7C();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v36, a20, a21, a22);
}

uint64_t sub_22BD3B850()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB77D4();
  v1[4] = v3;
  sub_22BB30434(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22BB30ACC();
  v7 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD3B8F4()
{
  sub_22BB30F5C();
  v1 = v0[6];
  sub_22BDB63D4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "running query decoration...");
    sub_22BB35600();
  }

  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  v11 = *(v8 + 8);
  v12 = sub_22BB30AE4();
  v13(v12);
  swift_task_alloc();
  sub_22BB30B34();
  v0[7] = v14;
  *v14 = v15;
  v14[1] = sub_22BD3B9F4;
  v16 = v0[2];
  v17 = v0[3];

  return sub_22BD3DE98();
}

uint64_t sub_22BD3B9F4()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[6];

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v14 = v5[3];
    v5[8] = v3;

    return MEMORY[0x2822009F8](sub_22BD3BB30, v14, 0);
  }
}

uint64_t sub_22BD3BB30()
{
  sub_22BB2F35C();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (*(v1 + 16))
  {
    v2 = *(v0 + 48);

    sub_22BB39738();

    return v3(v1);
  }

  else
  {

    sub_22BBC788C();
    sub_22BB33E40();
    sub_22BB8C540(v5, 255, v6);
    sub_22BB37F10();
    sub_22BDB4B94();
    v7 = sub_22BB384BC();
    sub_22BB336D0(v7, 4, 6, v8);
    swift_willThrow();
    v9 = *(v0 + 48);

    sub_22BB2F09C();

    return v10();
  }
}

uint64_t sub_22BD3BC4C()
{
  sub_22BB2F0D4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[8] = sub_22BB3307C();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_22BDB43E4();
  v1[11] = v7;
  sub_22BB30434(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = sub_22BB3307C();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_22BDB9774();
  v1[16] = v11;
  sub_22BB30434(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = sub_22BB3307C();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v1[22] = sub_22BB3307C();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v18 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22BD3BE34()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[11];
  v7 = v0[6];
  v8 = v0[7];
  sub_22BDB96A4();
  sub_22BD40800();
  v9 = *(v5 + 8);
  v0[29] = v9;
  v0[30] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_22BB331D4();
  v9(v10);
  sub_22BB30AE4();
  sub_22BC5E5C4();
  v11 = sub_22BB3AA28(v2, 1, v6);
  v12 = v0[27];
  if (v11 == 1)
  {
    sub_22BB58728(v0[27], &qword_27D8E3218, &qword_22BDBE390);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[16];
    v15 = v0[10];
    v16 = v0[6];
    (*(v0[12] + 32))(v0[15], v0[27], v0[11]);
    sub_22BDB96A4();
    sub_22BDB9744();
    v17 = sub_22BB2F5A0();
    v9(v17);
    sub_22BB3090C();
    sub_22BBD22B0(v13, v18);

    v19 = sub_22BDB9B54();
    if (sub_22BB922B8(v19) == 1)
    {
      v20 = v0[11];
      sub_22BB58728(v0[10], &unk_27D8E69E0, &qword_22BDC1660);
      v21 = sub_22BB3A190();
      sub_22BB336D0(v21, v22, 1, v20);
    }

    else
    {
      v23 = v0[10];
      v24 = v0[26];
      sub_22BDB9964();
      sub_22BB30474(v13);
      v26 = *(v25 + 8);
      v27 = sub_22BB3182C();
      v28(v27);
    }

    v29 = v0[26];
    v30 = v0[15];
    v31 = v0[11];
    v32 = v0[12];
    sub_22BB31F54();
    sub_22BDB7F34();
    sub_22BB58728(v29, &qword_27D8E3218, &qword_22BDBE390);
    v33 = *(v32 + 8);
    v34 = sub_22BB30AE4();
    v35(v34);
  }

  v36 = swift_task_alloc();
  v0[31] = v36;
  *v36 = v0;
  v36[1] = sub_22BD3C098;
  v37 = v0[6];
  v38 = v0[7];
  sub_22BB3487C(v0[5]);

  return sub_22BD3C728();
}

uint64_t sub_22BD3C098()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_22BB33218();
  v6 = *(v5 + 248);
  *v7 = *v1;
  *(v8 + 256) = v0;

  sub_22BB33218();
  v10 = *(v9 + 56);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BD3C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v22 = v20 + 28;
  v21 = v20[28];
  v23 = v20[25];
  v24 = v20[11];
  sub_22BC5E5C4();
  v25 = sub_22BB3A190();
  sub_22BB31814(v25, v26, v24);
  if (v27)
  {
    sub_22BB58728(*v22, &qword_27D8E3218, &qword_22BDBE390);
    v22 = v20 + 25;
  }

  else
  {
    v29 = v20[29];
    v28 = v20[30];
    v30 = v20[19];
    v31 = v20[16];
    v32 = v20[9];
    v33 = v20[6];
    (*(v20[12] + 32))(v20[14], v20[25], v20[11]);
    sub_22BDB96A4();
    sub_22BDB9744();
    v34 = sub_22BB2F5A0();
    v29(v34);
    sub_22BB3090C();
    sub_22BBD22B0(v30, v35);

    v36 = sub_22BDB9B54();
    v37 = sub_22BB922B8(v36);
    if (v37 == 1)
    {
      v38 = v20[11];
      sub_22BB58728(v20[9], &unk_27D8E69E0, &qword_22BDC1660);
      v39 = sub_22BB3A190();
      sub_22BB336D0(v39, v40, 1, v38);
    }

    else
    {
      v41 = v20[9];
      v42 = v20[24];
      sub_22BDB9964();
      sub_22BB30474(v30);
      v44 = *(v43 + 8);
      v45 = sub_22BB3182C();
      v46(v45);
    }

    v47 = v20[24];
    v48 = v20[14];
    v49 = v20[11];
    v50 = v20[12];
    sub_22BB31F54();
    sub_22BDB7F14();
    sub_22BB58728(v47, &qword_27D8E3218, &qword_22BDBE390);
    v51 = *(v50 + 8);
    v52 = sub_22BB30AE4();
    v53(v52);
  }

  v54 = *v22;
  v81 = v20[3];
  v56 = v20[27];
  v55 = v20[28];
  v57 = v20[25];
  v58 = v20[26];
  v60 = v20[23];
  v59 = v20[24];
  v62 = v20[21];
  v61 = v20[22];
  v63 = v20[20];
  v73 = v20[19];
  v74 = v20[18];
  v75 = v20[15];
  v76 = v20[14];
  v77 = v20[13];
  v78 = v20[10];
  v79 = v20[9];
  v80 = v20[8];
  sub_22BB58728(v54, &qword_27D8E3218, &qword_22BDBE390);

  sub_22BB39738();
  sub_22BB3CEF4();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, v73, v74, v75, v76, v77, v78, v79, v80, v81, a18, a19, a20);
}

uint64_t sub_22BD3C470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22BB38A9C();
  sub_22BB37FCC();
  v23 = v22[28];
  v24 = v22[23];
  v25 = v22[11];
  sub_22BC5E5C4();
  v26 = sub_22BB3A190();
  sub_22BB31814(v26, v27, v25);
  if (v28)
  {
    sub_22BB58728(v22[23], &qword_27D8E3218, &qword_22BDBE390);
  }

  else
  {
    v30 = v22[29];
    v29 = v22[30];
    v31 = v22[18];
    v32 = v22[16];
    v33 = v22[8];
    v34 = v22[6];
    (*(v22[12] + 32))(v22[13], v22[23], v22[11]);
    sub_22BDB96A4();
    sub_22BDB9744();
    v35 = sub_22BB2F5A0();
    v30(v35);
    sub_22BB3090C();
    sub_22BBD22B0(v31, v36);

    v37 = sub_22BDB9B54();
    v38 = sub_22BB922B8(v37);
    if (v38 == 1)
    {
      v39 = v22[11];
      sub_22BB58728(v22[8], &unk_27D8E69E0, &qword_22BDC1660);
      v40 = sub_22BB3A190();
      sub_22BB336D0(v40, v41, 1, v39);
    }

    else
    {
      v42 = v22[8];
      v43 = v22[22];
      sub_22BDB9964();
      sub_22BB30474(v31);
      v45 = *(v44 + 8);
      v46 = sub_22BB3182C();
      v47(v46);
    }

    v48 = v22[32];
    v49 = v22[22];
    v51 = v22[12];
    v50 = v22[13];
    v52 = v22[11];
    sub_22BDB7F24();
    sub_22BB58728(v49, &qword_27D8E3218, &qword_22BDBE390);
    v53 = *(v51 + 8);
    v54 = sub_22BB30AE4();
    v55(v54);
  }

  v56 = v22[32];
  v57 = v22[27];
  v58 = v22[28];
  v60 = v22[25];
  v59 = v22[26];
  v62 = v22[23];
  v61 = v22[24];
  v64 = v22[21];
  v63 = v22[22];
  v75 = v22[20];
  v76 = v22[19];
  v77 = v22[18];
  v78 = v22[15];
  v79 = v22[14];
  v80 = v22[13];
  v81 = v22[10];
  v82 = v22[9];
  v83 = v22[8];
  swift_willThrow();
  sub_22BB58728(v58, &qword_27D8E3218, &qword_22BDBE390);

  sub_22BB2F09C();
  v65 = v22[32];
  sub_22BB38C7C();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, v75, v76, v77, v78, v79, v80, v81, v82, v83, a19, a20, a21, a22);
}

uint64_t sub_22BD3C728()
{
  sub_22BB2F0D4();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_22BDB7734();
  v1[36] = v4;
  sub_22BB30434(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = sub_22BB3307C();
  v1[39] = swift_task_alloc();
  v8 = sub_22BDB7754();
  v1[40] = v8;
  sub_22BB30434(v8);
  v1[41] = v9;
  v11 = *(v10 + 64);
  v1[42] = sub_22BB3307C();
  v1[43] = swift_task_alloc();
  v12 = sub_22BDB77D4();
  v1[44] = v12;
  sub_22BB30434(v12);
  v1[45] = v13;
  v15 = *(v14 + 64);
  v1[46] = sub_22BB3307C();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v16 = sub_22BDB7FA4();
  v1[50] = v16;
  sub_22BB30434(v16);
  v1[51] = v17;
  v19 = *(v18 + 64);
  v1[52] = sub_22BB30ACC();
  v20 = sub_22BDB92B4();
  v1[53] = v20;
  sub_22BB30434(v20);
  v1[54] = v21;
  v23 = *(v22 + 64);
  v1[55] = sub_22BB3307C();
  v1[56] = swift_task_alloc();
  v24 = sub_22BDB7D54();
  v1[57] = v24;
  sub_22BB30434(v24);
  v1[58] = v25;
  v27 = *(v26 + 64);
  v1[59] = sub_22BB30ACC();
  v28 = sub_22BDB8FB4();
  v1[60] = v28;
  sub_22BB30434(v28);
  v1[61] = v29;
  v31 = *(v30 + 64);
  v1[62] = sub_22BB3307C();
  v1[63] = swift_task_alloc();
  v32 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  v1[64] = v32;
  sub_22BB2F0C8(v32);
  v34 = *(v33 + 64);
  v1[65] = sub_22BB30ACC();
  v35 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_22BD3CA10()
{
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[33];
  sub_22BBC0AFC();
  sub_22BB2F324();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[65];
      v8 = v0[55];
      v7 = v0[56];
      v9 = v0[53];
      v10 = v0[54];
      v12 = v0[51];
      v11 = v0[52];
      v13 = v0[50];
      v14 = sub_22BB977D0();
      v15(v14);
      v16 = sub_22BB8ABAC();
      v17(v16);
      sub_22BB690EC(v1 + 440, (v0 + 12));
      sub_22BDB7F94();
      v0[20] = v13;
      v0[21] = sub_22BB8C540(&qword_27D8E6340, 255, MEMORY[0x277D1D730]);
      v18 = sub_22BB8B8A0(v0 + 17);
      (*(v12 + 16))(v18, v11, v13);
      swift_task_alloc();
      sub_22BB30B34();
      v0[69] = v19;
      *v19 = v20;
      v19[1] = sub_22BD3D250;
      v21 = v0[34];
      v22 = v0[35];
    }

    else
    {
      v40 = v0[49];
      sub_22BDB63D4();
      v41 = sub_22BDB77C4();
      v42 = sub_22BDBB104();
      if (sub_22BB333C0(v42))
      {
        v43 = sub_22BB37F30();
        sub_22BB360F0(v43);
        sub_22BB2F0A8(&dword_22BB2C000, v44, v45, "StandardPlanner: generating plan");
        sub_22BB35600();
      }

      v46 = v0[49];
      v47 = v0[44];
      v48 = v0[45];
      v50 = v0[42];
      v49 = v0[43];
      v51 = v0[40];
      v52 = v0[41];
      v53 = v0[39];

      v0[72] = *(v48 + 8);
      v54 = sub_22BB30AE4();
      v94 = v55;
      v55(v54);
      sub_22BDB6114();
      sub_22BDB6114();
      sub_22BDB7744();
      sub_22BDB7704();
      v56 = *(v52 + 8);
      v57 = sub_22BB32E04();
      v93 = v58;
      v58(v57);
      v59 = sub_22BDB7744();
      v60 = sub_22BDBB1D4();
      if (sub_22BDBB244())
      {
        v61 = v0[39];
        v62 = sub_22BB37F30();
        *v62 = 0;
        v63 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v59, v60, v63, "StandardPlanner.generatePlan", "", v62, 2u);
        sub_22BB30AF0();
      }

      v64 = v0[48];
      v65 = v0[43];
      v67 = v0[39];
      v66 = v0[40];
      v69 = v0[37];
      v68 = v0[38];
      v70 = v0[36];

      v71 = sub_22BB3459C(v69);
      v72(v71, v67, v70);
      v73 = sub_22BDB77A4();
      sub_22BB34ED4(v73);
      sub_22BB3A190();
      v0[73] = sub_22BDB7794();
      v74 = *(v69 + 8);
      v75 = sub_22BB35464();
      v76(v75);
      v77 = sub_22BB331D4();
      v93(v77);
      sub_22BDB63D4();
      v78 = sub_22BDB77C4();
      v79 = sub_22BDBB104();
      if (sub_22BB333C0(v79))
      {
        v80 = sub_22BB37F30();
        sub_22BB360F0(v80);
        sub_22BB2F0A8(&dword_22BB2C000, v81, v82, "generating a plan...");
        sub_22BB35600();
      }

      v83 = v0[48];
      v84 = v0[44];
      v85 = v0[45];
      v86 = v0[35];

      v87 = sub_22BB30AE4();
      v94(v87);
      swift_task_alloc();
      sub_22BB30B34();
      v0[74] = v88;
      *v88 = v89;
      v88[1] = sub_22BD3D5A8;
      v90 = v0[34];
      v91 = v0[35];
    }
  }

  else
  {
    v23 = v0[65];
    v25 = v0[62];
    v24 = v0[63];
    v26 = v0[60];
    v27 = v0[61];
    v29 = v0[58];
    v28 = v0[59];
    v30 = v0[57];
    v31 = sub_22BB977D0();
    v32(v31);
    v33 = sub_22BB8ABAC();
    v34(v33);
    sub_22BB690EC(v1 + 440, (v0 + 22));
    sub_22BDB7D44();
    v0[30] = v30;
    v0[31] = sub_22BB8C540(&qword_27D8E6350, 255, MEMORY[0x277D1D688]);
    v35 = sub_22BB8B8A0(v0 + 27);
    (*(v29 + 16))(v35, v28, v30);
    swift_task_alloc();
    sub_22BB30B34();
    v0[66] = v36;
    *v36 = v37;
    v36[1] = sub_22BD3CEF4;
    v38 = v0[34];
    v39 = v0[35];
  }

  return sub_22BD3DE98();
}

uint64_t sub_22BD3CEF4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 528);
  *v4 = *v1;
  v3[67] = v7;
  v3[68] = v0;

  if (v0)
  {
    v8 = v3[35];
    v9 = sub_22BD3D954;
  }

  else
  {
    v10 = v3[35];
    sub_22BB32FA4(v3 + 27);
    v9 = sub_22BD3D010;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22BD3D010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = *(v18 + 504);
  v21 = *(v18 + 480);
  v20 = *(v18 + 488);
  v23 = *(v18 + 464);
  v22 = *(v18 + 472);
  v24 = *(v18 + 456);
  if (*(v18 + 536))
  {
    v25 = *(v23 + 8);
    v26 = sub_22BB32E04();
    v27(v26);
    v28 = sub_22BB33804();
    v29(v28);
    v30 = *(v18 + 536);
    sub_22BB32CB4();
    sub_22BB36E34();

    sub_22BB39738();
    sub_22BB35ED4();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_22BB32E68();
    sub_22BB36A8C();
    sub_22BDB8BE4();
    sub_22BD42338();
    v54 = sub_22BB31A08();
    sub_22BB37A40(v40, *(v18 + 88), *(v18 + 72), *(v18 + 56));
    v41 = *(v23 + 8);
    v42 = sub_22BB32E04();
    v43(v42);
    v44 = sub_22BB33804();
    v45(v44);
    sub_22BB32CB4();
    sub_22BB397CC();

    sub_22BB2F09C();
    sub_22BB35ED4();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, v54, a15, a16, a17, a18);
  }
}

uint64_t sub_22BD3D250()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 552);
  *v4 = *v1;
  v3[70] = v7;
  v3[71] = v0;

  if (v0)
  {
    v8 = v3[35];
    v9 = sub_22BD3DA68;
  }

  else
  {
    v10 = v3[35];
    sub_22BB32FA4(v3 + 17);
    v9 = sub_22BD3D36C;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22BD3D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = v18[28].n128_u64[0];
  v21 = v18[26].n128_u64[1];
  v20 = v18[27].n128_u64[0];
  v23 = v18[25].n128_u64[1];
  v22 = v18[26].n128_u64[0];
  v24 = v18[25].n128_u64[0];
  if (v18[35].n128_u64[0])
  {
    v25 = *(v23 + 8);
    v26 = sub_22BB32E04();
    v27(v26);
    v28 = sub_22BB33804();
    v29(v28);
    v30 = v18[35].n128_u64[0];
    sub_22BB32CB4();
    sub_22BB36E34();

    sub_22BB39738();
    sub_22BB35ED4();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_22BB32E68();
    sub_22BB36A8C();
    sub_22BDB8BE4();
    sub_22BD42338();
    v54 = sub_22BB31A08();
    sub_22BB37A40(v40, v18[3].n128_u64[0], v18[2], v18[1]);
    v41 = *(v23 + 8);
    v42 = sub_22BB32E04();
    v43(v42);
    v44 = sub_22BB33804();
    v45(v44);
    sub_22BB32CB4();
    sub_22BB397CC();

    sub_22BB2F09C();
    sub_22BB35ED4();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, v54, a15, a16, a17, a18);
  }
}

uint64_t sub_22BD3D5A8()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 592);
  v6 = *v2;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 600) = v8;
  *(v9 + 608) = v0;

  sub_22BB33218();
  v11 = *(v10 + 280);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BD3D6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  if (v18[75])
  {
    v20 = v18[73];
    sub_22BBBD410();

    v21 = v18[75];
    sub_22BB32CB4();
    sub_22BB36E34();

    sub_22BB39738();
    sub_22BB35ED4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    sub_22BDB6424();
    v31 = sub_22BDB6624();

    if (v31)
    {
      v32 = v18[47];
      sub_22BDB63D4();
      sub_22BDB77C4();
      v33 = sub_22BDBB104();
      if (sub_22BB333C0(v33))
      {
        v34 = sub_22BB37F30();
        sub_22BB360F0(v34);
        sub_22BB2F0A8(&dword_22BB2C000, v35, v36, "Skipping planner");
        sub_22BB35600();
      }

      sub_22BD42554();
      v37 = sub_22BB2F0E0();
      v19(v37);
    }

    else
    {
      v38 = v18[73];
    }

    sub_22BBC788C();
    sub_22BB33E40();
    sub_22BB8C540(v39, 255, v40);
    v50 = sub_22BB37F10();
    v41 = sub_22BDB4B94();
    sub_22BB3DEB0(v41);
    sub_22BBBD410();

    sub_22BB32CB4();
    sub_22BB397CC();

    sub_22BB2F09C();
    sub_22BB35ED4();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, v50, a15, a16, a17, a18);
  }
}

uint64_t sub_22BD3D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = v18[63];
  v20 = v18[60];
  v21 = v18[61];
  (*(v18[58] + 8))(v18[59], v18[57]);
  v22 = *(v21 + 8);
  v23 = sub_22BB2F324();
  v24(v23);
  sub_22BB32FA4(v18 + 27);
  v25 = v18[68];
  sub_22BB32CB4();
  sub_22BB3E3DC();

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BD3DA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v19 = v18[56];
  v20 = v18[53];
  v21 = v18[54];
  (*(v18[51] + 8))(v18[52], v18[50]);
  v22 = *(v21 + 8);
  v23 = sub_22BB2F324();
  v24(v23);
  sub_22BB32FA4(v18 + 17);
  v25 = v18[71];
  sub_22BB32CB4();
  sub_22BB3E3DC();

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22BD3DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BB68EA4();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 608);
  v32 = *(v28 + 368);
  sub_22BDB63D4();
  v33 = v31;
  v34 = sub_22BDB77C4();
  v35 = sub_22BDBB114();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v28 + 608);
    v37 = *(v28 + 360);
    v74 = *(v28 + 368);
    v76 = *(v28 + 576);
    v38 = *(v28 + 352);
    v39 = sub_22BB31AD8();
    v40 = sub_22BB314C8();
    a16 = v40;
    *v39 = 136315138;
    *(v28 + 256) = v36;
    v41 = v36;
    sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
    v42 = sub_22BDBAC14();
    v44 = sub_22BB32EE0(v42, v43, &a16);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_22BB2C000, v34, v35, "PlanOverridesService failed with error %s. Proceeding _without_ failing the request", v39, 0xCu);
    sub_22BB32FA4(v40);
    sub_22BB3A3D8();
    sub_22BB30AF0();

    v76(v74, v38);
  }

  else
  {
    v45 = *(v28 + 576);
    v35 = *(v28 + 360);
    v46 = *(v28 + 368);
    v47 = *(v28 + 352);

    v48 = sub_22BB30AE4();
    v45(v48);
  }

  sub_22BDB6424();
  v49 = sub_22BDB6624();

  if (v49)
  {
    v50 = *(v28 + 376);
    sub_22BDB63D4();
    sub_22BDB77C4();
    v51 = sub_22BDBB104();
    if (sub_22BB333C0(v51))
    {
      v52 = sub_22BB37F30();
      sub_22BB360F0(v52);
      sub_22BB2F0A8(&dword_22BB2C000, v53, v54, "Skipping planner");
      sub_22BB35600();
    }

    sub_22BD42554();
    v55 = sub_22BB2F0E0();
    v35(v55);
  }

  else
  {
    v56 = *(v28 + 584);
  }

  sub_22BBC788C();
  sub_22BB33E40();
  sub_22BB8C540(v57, 255, v58);
  v77 = sub_22BB37F10();
  v59 = sub_22BDB4B94();
  sub_22BB3DEB0(v59);
  sub_22BBBD410();

  sub_22BB32CB4();
  v60 = *(v28 + 376);
  v70 = *(v28 + 368);
  v71 = *(v28 + 344);
  v72 = *(v28 + 336);
  v73 = *(v28 + 312);
  v75 = *(v28 + 304);

  sub_22BB2F09C();
  sub_22BB3CEF4();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v70, v71, v72, v73, v75, v77, a16, a17, a18, a19, a20);
}

uint64_t sub_22BD3DE98()
{
  sub_22BB2F0D4();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22BDB8334();
  v1[25] = v4;
  sub_22BB30434(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = sub_22BB30ACC();
  v8 = sub_22BDB8134();
  v1[28] = v8;
  sub_22BB30434(v8);
  v1[29] = v9;
  v11 = *(v10 + 64);
  v1[30] = sub_22BB30ACC();
  v12 = sub_22BDB9B54();
  v1[31] = v12;
  sub_22BB30434(v12);
  v1[32] = v13;
  v15 = *(v14 + 64);
  v1[33] = sub_22BB30ACC();
  v16 = sub_22BDB80E4();
  v1[34] = v16;
  sub_22BB30434(v16);
  v1[35] = v17;
  v19 = *(v18 + 64);
  v1[36] = sub_22BB30ACC();
  v20 = sub_22BDB7944();
  v1[37] = v20;
  sub_22BB30434(v20);
  v1[38] = v21;
  v23 = *(v22 + 64);
  v1[39] = sub_22BB30ACC();
  v24 = sub_22BDB7574();
  v1[40] = v24;
  sub_22BB30434(v24);
  v1[41] = v25;
  v27 = *(v26 + 64);
  v1[42] = sub_22BB30ACC();
  v28 = sub_22BDB77D4();
  v1[43] = v28;
  sub_22BB30434(v28);
  v1[44] = v29;
  v31 = *(v30 + 64);
  v1[45] = sub_22BB3307C();
  v1[46] = swift_task_alloc();
  v32 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v32);
  v34 = *(v33 + 64);
  v1[47] = sub_22BB30ACC();
  v35 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v35);
  v37 = *(v36 + 64);
  v1[48] = sub_22BB3307C();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v38 = sub_22BDB9774();
  v1[52] = v38;
  sub_22BB30434(v38);
  v1[53] = v39;
  v41 = *(v40 + 64);
  v1[54] = sub_22BB3307C();
  v1[55] = swift_task_alloc();
  v42 = sub_22BDB82C4();
  v1[56] = v42;
  sub_22BB30434(v42);
  v1[57] = v43;
  v45 = *(v44 + 64);
  v1[58] = sub_22BB30ACC();
  v46 = sub_22BDB43E4();
  v1[59] = v46;
  sub_22BB30434(v46);
  v1[60] = v47;
  v49 = *(v48 + 64);
  v1[61] = sub_22BB3307C();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v50 = sub_22BDB7734();
  v1[68] = v50;
  sub_22BB30434(v50);
  v1[69] = v51;
  v53 = *(v52 + 64);
  v1[70] = sub_22BB3307C();
  v1[71] = swift_task_alloc();
  v54 = sub_22BDB7754();
  v1[72] = v54;
  sub_22BB30434(v54);
  v1[73] = v55;
  v57 = *(v56 + 64);
  v1[74] = sub_22BB3307C();
  v1[75] = swift_task_alloc();
  v58 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v58, v59, v60);
}

uint64_t sub_22BD3E378()
{
  v190 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 24);
  v3 = sub_22BB31F54();
  sub_22BB69FEC(v3, v4);
  swift_getDynamicType();
  v188 = v1;
  v5 = *(v1 + 32);
  if ((sub_22BDB79C4() & 1) == 0)
  {
    v27 = *(v0 + 360);
    v28 = *(v0 + 176);
    sub_22BDB63D4();
    sub_22BB690EC(v28, v0 + 16);
    v29 = sub_22BDB77C4();
    v30 = sub_22BDBB104();
    v31 = sub_22BB3805C(v30);
    v33 = *(v0 + 352);
    v32 = *(v0 + 360);
    v34 = *(v0 + 344);
    if (v31)
    {
      v35 = sub_22BB31AD8();
      v36 = sub_22BB314C8();
      v189[0] = v36;
      *v35 = 136315138;
      v37 = *(v0 + 48);
      sub_22BB69FEC((v0 + 16), *(v0 + 40));
      v38 = *(v37 + 8);
      sub_22BB3935C();
      v39 = sub_22BDBB684();
      sub_22BB32FA4((v0 + 16));
      v40 = sub_22BB3CB04();
      sub_22BB32EE0(v40, v41, v42);
      sub_22BB3935C();

      *(v35 + 4) = v39;
      _os_log_impl(&dword_22BB2C000, v29, v30, "Service %s is disabled. Skipping handle.", v35, 0xCu);
      sub_22BB32FA4(v36);
      sub_22BB3A3D8();
      sub_22BB30AF0();

      v43 = *(v33 + 8);
      v44 = sub_22BB2F0E0();
      v45(v44);
    }

    else
    {

      v66 = *(v33 + 8);
      v67 = sub_22BB2F0E0();
      v68(v67);
      sub_22BB32FA4((v0 + 16));
    }

    v69 = *(v0 + 600);
    v70 = *(v0 + 592);
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v73 = *(v0 + 536);
    v74 = *(v0 + 528);
    v75 = *(v0 + 520);
    v77 = *(v0 + 504);
    v76 = *(v0 + 512);
    v78 = *(v0 + 488);
    v79 = *(v0 + 496);
    sub_22BB6BB74();

    sub_22BB39738();
    sub_22BB3E07C();

    __asm { BRAA            X2, X16 }
  }

  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 176);
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v12 = *(v8 + 8);
  v13 = sub_22BB2F3F0();
  v186 = v14;
  (v14)(v13);
  sub_22BB690EC(v11, v0 + 56);
  v15 = sub_22BDB7744();
  v16 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v17 = *(v0 + 568);
    v18 = sub_22BB31AD8();
    v19 = sub_22BB314C8();
    v189[0] = v19;
    *v18 = 136315138;
    v20 = *(v0 + 88);
    sub_22BB69FEC((v0 + 56), *(v0 + 80));
    v21 = *(v20 + 8);
    v22 = sub_22BDBB684();
    v24 = v23;
    sub_22BB32FA4((v0 + 56));
    v25 = sub_22BB32EE0(v22, v24, v189);

    *(v18 + 4) = v25;
    v26 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v15, v16, v26, "PlannerService.handle(_:)", "Service: %s", v18, 0xCu);
    sub_22BB32FA4(v19);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {

    sub_22BB32FA4((v0 + 56));
  }

  v172 = *(v0 + 576);
  v173 = *(v0 + 600);
  v46 = *(v0 + 568);
  v47 = *(v0 + 560);
  v48 = *(v0 + 552);
  v49 = *(v0 + 544);
  v50 = *(v0 + 464);
  v51 = *(v0 + 456);
  v175 = *(v0 + 448);
  log = *(v0 + 536);
  v52 = *(v0 + 440);
  v53 = *(v0 + 424);
  v177 = *(v0 + 416);
  v179 = *(v0 + 408);
  v183 = *(v0 + 400);
  v185 = *(v0 + 472);
  v181 = *(v0 + 192);
  v174 = *(v0 + 184);
  v54 = *(v0 + 176);
  v55 = sub_22BB3459C(v48);
  v56(v55, v46, v49);
  v57 = sub_22BDB77A4();
  sub_22BB34ED4(v57);
  sub_22BB3A190();
  *(v0 + 608) = sub_22BDB7794();
  v58 = *(v48 + 8);
  v59 = sub_22BB34FB8();
  v60(v59);
  v186(v173, v172);
  *(v0 + 616) = sub_22BDB8E54();
  v61 = *(v188 + 32);
  sub_22BB69FEC(v54, *(v188 + 24));
  sub_22BB34FB8();
  sub_22BDB7994();
  (*(v51 + 104))(v50, *MEMORY[0x277D1DCA8], v175);
  sub_22BDB96A4();
  sub_22BDB8E44();
  v62 = *(v53 + 8);
  *(v0 + 624) = v62;
  *(v0 + 632) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v52, v177);
  (*(v51 + 8))(v50, v175);
  sub_22BDB96A4();
  sub_22BD40800();
  v62(v52, v177);
  sub_22BC5E5C4();
  v63 = sub_22BB3A190();
  sub_22BB31814(v63, v64, v185);
  if (v65)
  {
    sub_22BB58728(*(v0 + 400), &qword_27D8E3218, &qword_22BDBE390);
    goto LABEL_22;
  }

  v82 = *(v0 + 192);
  v83 = *(*(v0 + 480) + 32);
  v83(*(v0 + 528), *(v0 + 400), *(v0 + 472));
  sub_22BC5E5C4();
  if (!*(v0 + 160))
  {
    v98 = *(v0 + 528);
    v99 = *(v0 + 472);
    v100 = *(v0 + 480);
    sub_22BB58728(v0 + 136, &qword_27D8E62F8, &qword_22BDCDB90);
LABEL_21:
    v106 = *(v100 + 8);
    v107 = sub_22BB2F324();
    v108(v107);
    goto LABEL_22;
  }

  v84 = *(v0 + 432);
  v85 = *(v0 + 416);
  v86 = *(v0 + 376);
  v87 = *(v0 + 248);
  v88 = *(v0 + 184);
  sub_22BB382E8((v0 + 136), v0 + 96);
  sub_22BDB96A4();
  sub_22BDB9744();
  v89 = sub_22BB2F5A0();
  (v62)(v89);
  sub_22BB3090C();
  sub_22BBD22B0(v84, v90);

  v91 = sub_22BB3AA28(v86, 1, v87);
  v92 = *(v0 + 472);
  v93 = *(v0 + 392);
  v94 = *(v0 + 376);
  if (v91 == 1)
  {
    sub_22BB58728(*(v0 + 376), &unk_27D8E69E0, &qword_22BDC1660);
    sub_22BB30B28();
    sub_22BB336D0(v95, v96, v97, v92);
LABEL_20:
    v104 = *(v0 + 528);
    v105 = *(v0 + 472);
    v100 = *(v0 + 480);
    sub_22BB58728(*(v0 + 392), &qword_27D8E3218, &qword_22BDBE390);
    sub_22BB32FA4((v0 + 96));
    goto LABEL_21;
  }

  v101 = *(v0 + 248);
  v102 = *(v0 + 256);
  v103 = *(v0 + 392);
  sub_22BDB9964();
  (*(v102 + 8))(v94, v101);
  sub_22BB36B74(v93);
  if (v65)
  {
    goto LABEL_20;
  }

  v123 = *(v0 + 528);
  v125 = *(v0 + 504);
  v124 = *(v0 + 512);
  v126 = *(v0 + 472);
  v127 = *(v0 + 480);
  v128 = *(v0 + 368);
  v83(*(v0 + 520), *(v0 + 392), v126);
  sub_22BDB63D4();
  v129 = *(v127 + 16);
  v130 = sub_22BB3182C();
  v129(v130);
  (v129)(v125, v123, v126);
  v131 = sub_22BDB77C4();
  v132 = sub_22BDBB0F4();
  v133 = sub_22BB3805C(v132);
  v135 = *(v0 + 504);
  v134 = *(v0 + 512);
  v137 = *(v0 + 472);
  v136 = *(v0 + 480);
  v138 = *(v0 + 368);
  v139 = *(v0 + 344);
  v140 = *(v0 + 352);
  if (v133)
  {
    v182 = v132;
    v141 = swift_slowAlloc();
    v189[0] = swift_slowAlloc();
    *v141 = 136315394;
    sub_22BB8C540(&qword_28142DD38, 255, MEMORY[0x277CC95F0]);
    v184 = v139;
    v142 = sub_22BDBB684();
    v178 = v140;
    v180 = v138;
    v143 = v135;
    v145 = v144;
    v146 = *(v136 + 8);
    v147 = sub_22BB3CB04();
    v146(v147);
    v148 = sub_22BB32EE0(v142, v145, v189);

    *(v141 + 4) = v148;
    *(v141 + 12) = 2080;
    sub_22BDBB684();
    v187 = v146;
    (v146)(v143, v137);
    v149 = sub_22BB2F324();
    v152 = sub_22BB32EE0(v149, v150, v151);

    *(v141 + 14) = v152;
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB3A3D8();

    (*(v178 + 8))(v180, v184);
  }

  else
  {

    v153 = *(v136 + 8);
    v153(v135, v137);
    v154 = sub_22BB3CB04();
    v187 = v153;
    (v153)(v154);
    v155 = *(v140 + 8);
    v156 = sub_22BB2F0E0();
    v157(v156);
  }

  v158 = *(v0 + 528);
  v159 = *(v0 + 520);
  v160 = *(v0 + 472);
  v162 = *(v0 + 328);
  v161 = *(v0 + 336);
  v163 = *(v0 + 320);
  v164 = swift_task_alloc();
  *(v164 + 16) = v158;
  *(v164 + 24) = v159;
  sub_22BDB76D4();

  v165 = *(v0 + 120);
  v166 = *(v0 + 128);
  sub_22BB69FEC((v0 + 96), v165);
  (*(v166 + 8))(v161, v165, v166);
  v167 = *(v162 + 8);
  v168 = sub_22BB35464();
  v169(v168);
  v187(v159, v160);
  sub_22BB32FA4((v0 + 96));
  v170 = sub_22BB33728();
  (v187)(v170);
LABEL_22:
  v109 = *(v0 + 536);
  v110 = *(v0 + 496);
  v111 = *(v0 + 472);
  v112 = *(v0 + 408);
  v113 = *(v0 + 384);
  v114 = *(v0 + 312);
  v115 = *(v0 + 176);
  v116 = sub_22BB3459C(*(v0 + 480));
  v117(v116);
  sub_22BB30AE4();
  sub_22BC5E5C4();
  sub_22BB2F3F0();
  sub_22BDB7934();
  v118 = *(v188 + 32);
  sub_22BB69FEC(v115, *(v188 + 24));
  v119 = *(MEMORY[0x277D1D590] + 4);
  v120 = swift_task_alloc();
  *(v0 + 640) = v120;
  *v120 = v0;
  v120[1] = sub_22BD3EF28;
  v121 = *(v0 + 312);
  sub_22BB3487C(*(v0 + 184));
  sub_22BB3E07C();

  return MEMORY[0x282176820]();
}

uint64_t sub_22BD3EF28()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 640);
  v6 = *v2;
  sub_22BB3053C();
  *v7 = v6;
  *(v9 + 648) = v8;
  *(v9 + 656) = v0;

  sub_22BB33218();
  v11 = *(v10 + 192);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_22BD3F044()
{
  v1 = v0[81];
  v2 = v0[36];
  v3 = v0[22];
  v4 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  sub_22BB2F5A0();
  sub_22BDB7994();
  v54 = v1;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v0[81];
    v7 = v0[60];
    v8 = v0[32];
    v61 = MEMORY[0x277D84F90];
    sub_22BB5838C();
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    v11 = *(v9 + 64);
    sub_22BB2F390();
    v13 = v6 + v12;
    v55 = *(v9 + 56);
    v57 = v14;
    do
    {
      v15 = v0[61];
      v57(v0[33], v13, v0[31]);
      sub_22BDB8F24();
      v16 = *(v9 - 8);
      v17 = sub_22BB32E04();
      v18(v17);
      v19 = *(v61 + 16);
      if (v19 >= *(v61 + 24) >> 1)
      {
        sub_22BB5838C();
      }

      v20 = v0[61];
      v21 = v0[59];
      *(v61 + 16) = v19 + 1;
      v22 = *(v7 + 80);
      sub_22BB2F390();
      (*(v7 + 32))(v61 + v23 + *(v7 + 72) * v19);
      v13 += v55;
      --v5;
    }

    while (v5);
  }

  v51 = v0[78];
  v52 = v0[79];
  v50 = v0[77];
  v24 = v0[67];
  v25 = v0[60];
  v59 = v0[59];
  v26 = v0[55];
  v49 = v0[52];
  v27 = v0[38];
  v56 = v0[39];
  v58 = v0[51];
  v28 = v0[36];
  v53 = v0[37];
  v29 = v0[34];
  v30 = v0[35];
  v31 = v0[23];
  v32 = v28 + *(sub_22BBE6DE0(&qword_27D8E62A0, &qword_22BDCD9A8) + 48);
  sub_22BDB8C34();
  (*(v30 + 104))(v28, *MEMORY[0x277D1D9E0], v29);
  sub_22BDB96A4();
  sub_22BDB8E24();
  v51(v26, v49);
  v33 = *(v30 + 8);
  v34 = sub_22BB32E04();
  v35(v34);
  (*(v27 + 8))(v56, v53);
  sub_22BB58728(v58, &qword_27D8E3218, &qword_22BDBE390);
  (*(v25 + 8))(v24, v59);
  if (*(v54 + 16))
  {
    v60 = v0[81];
  }

  else
  {
  }

  sub_22BD3F798(v0[76], v0[22]);

  v36 = v0[75];
  v37 = v0[74];
  v38 = v0[71];
  v39 = v0[70];
  v40 = v0[67];
  v41 = v0[66];
  v42 = v0[65];
  v44 = v0[63];
  v43 = v0[64];
  v45 = v0[61];
  v46 = v0[62];
  sub_22BB6BB74();

  sub_22BB39738();
  sub_22BB3E07C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22BD3F444()
{
  v15 = v0[82];
  v19 = v0[78];
  v20 = v0[79];
  v24 = v0[76];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[71];
  v17 = v0[67];
  v18 = v0[77];
  v28 = v0[70];
  v29 = v0[66];
  v30 = v0[65];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[62];
  v34 = v0[61];
  v22 = v0[60];
  v23 = v0[59];
  v35 = v0[58];
  v13 = v0[55];
  v36 = v0[54];
  v16 = v0[52];
  v21 = v0[51];
  v37 = v0[50];
  v38 = v0[49];
  v40 = v0[48];
  v41 = v0[47];
  v42 = v0[46];
  v43 = v0[45];
  v39 = v0[39];
  v1 = v0[37];
  v44 = v0[42];
  v45 = v0[36];
  v46 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v14 = v0[25];
  v7 = v0[22];
  v12 = v0[23];
  (*(v0[38] + 8))();
  v8 = v7[4];
  sub_22BB69FEC(v7, v7[3]);
  sub_22BB2F5A0();
  sub_22BDB7994();
  (*(v3 + 104))(v2, *MEMORY[0x277D1DB50], v4);
  sub_22BDB4234();
  sub_22BDB8324();
  sub_22BDB96A4();
  sub_22BDB8E34();
  v19(v13, v16);
  (*(v6 + 8))(v5, v14);
  (*(v3 + 8))(v2, v4);
  swift_willThrow();
  sub_22BB58728(v21, &qword_27D8E3218, &qword_22BDBE390);
  (*(v22 + 8))(v17, v23);
  sub_22BD3F798(v24, v7);

  sub_22BB2F09C();
  v10 = v0[82];

  return v9();
}

uint64_t sub_22BD3F798(uint64_t a1, uint64_t a2)
{
  v36 = sub_22BDB7764();
  v34 = *(v36 - 1);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB7754();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6114();
  sub_22BB690EC(a2, v38);
  v16 = sub_22BDB7744();
  sub_22BDB7774();
  v35 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {
    v31 = v12;
    v32 = v11;
    v33 = v6;

    sub_22BDB77B4();

    v17 = v34;
    v18 = v36;
    if ((*(v34 + 88))(v5, v36) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = 0;
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v5, v18);
      v36 = "Service: %s";
      v20 = 2;
      v19 = 1;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = v20;
    *(v22 + 1) = v19;
    *(v22 + 2) = 2080;
    v24 = v38[4];
    sub_22BB69FEC(v38, v38[3]);
    v25 = *(v24 + 8);
    v26 = sub_22BDBB684();
    v28 = v27;
    sub_22BB32FA4(v38);
    v29 = sub_22BB32EE0(v26, v28, &v37);

    *(v22 + 4) = v29;
    v30 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v16, v35, v30, "PlannerService.handle(_:)", v36, v22, 0xCu);
    sub_22BB32FA4(v23);
    MEMORY[0x2318A6080](v23, -1, -1);
    MEMORY[0x2318A6080](v22, -1, -1);

    (*(v7 + 8))(v10, v33);
    return (*(v31 + 8))(v15, v32);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
    return sub_22BB32FA4(v38);
  }
}

uint64_t sub_22BD3FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21[-v7];
  v9 = sub_22BBE6DE0(&qword_27D8E6328, &qword_22BDCDD18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21[-v11];
  v13 = sub_22BBE6DE0(&qword_27D8E6330, &qword_22BDCDD20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21[-v15];
  v17 = sub_22BDB7494();
  v23 = a2;
  sub_22BDB76D4();
  sub_22BB336D0(v16, 0, 1, v17);
  sub_22BDB74A4();
  v18 = sub_22BDB7454();
  v22 = a3;
  sub_22BDB76D4();
  sub_22BB336D0(v12, 0, 1, v18);
  sub_22BDB7464();
  sub_22BDB7604();
  v19 = sub_22BDB7614();
  sub_22BB336D0(v8, 0, 1, v19);
  return sub_22BDB7484();
}

uint64_t sub_22BD3FDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v5 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_22BDB7664();
  v17 = sub_22BDB43E4();
  sub_22BB2F330(v17);
  (*(v18 + 16))(v10, a2, v17);
  sub_22BB336D0(v10, 0, 1, v17);
  sub_22BDB7654();
  v19 = sub_22BDB7674();
  sub_22BB336D0(v16, 0, 1, v19);
  return a3(v16);
}

uint64_t sub_22BD3FF0C()
{
  v0 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBC0AFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x4D72656E6E616C50;
    }

    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x6269726373657250;
  }

  sub_22BBC0BB8(v3, type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction);
  return v5;
}

unint64_t sub_22BD40038()
{
  v0 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBC0AFC();
  v8 = 0x536E6F6973736553;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = 0xD000000000000010;
      v10 = type metadata accessor for StandardPlanner.StandardPlannerAction;
      v11 = v7;
      goto LABEL_5;
    case 2u:
      return v8;
    case 3u:
      v8 = 0xD000000000000010;
      break;
    case 4u:
      v8 = 0x6365447972657551;
      break;
    case 5u:
      v8 = 0x6F7365526E616C50;
      break;
    case 6u:
      v8 = 0xD000000000000012;
      break;
    case 7u:
      v8 = 1886352467;
      break;
    default:
      sub_22BBBE2AC();
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_22BDBB334();

      strcpy(v13, "PlanGeneration");
      HIBYTE(v13[1]) = -18;
      v9 = sub_22BD3FF0C();
      MEMORY[0x2318A4C40](v9);

      v8 = v13[0];
      v10 = type metadata accessor for StandardPlanner.StandardPlannerAction.PlanGenerationAction;
      v11 = v3;
LABEL_5:
      sub_22BBC0BB8(v11, v10);
      break;
  }

  return v8;
}

void sub_22BD402CC()
{
  sub_22BB30F94();
  v69 = v3;
  v4 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = sub_22BDB9B14();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  v24 = sub_22BB2F0C8(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v31);
  sub_22BB92338();
  MEMORY[0x28223BE20](v32);
  v68 = &v67 - v33;
  sub_22BC5E5C4();
  v34 = sub_22BDB9B54();
  v35 = sub_22BB3A190();
  sub_22BB31814(v35, v36, v34);
  if (v37)
  {
    sub_22BB58728(v9, &unk_27D8E69E0, &qword_22BDC1660);
    type metadata accessor for StandardPlanner.StandardPlannerAction(0);
    sub_22BB30B28();
    sub_22BB336D0(v38, v39, v40, v41);
  }

  else
  {
    sub_22BDB9B24();
    sub_22BB30474(v34);
    (*(v42 + 8))(v9, v34);
    (*(v13 + 32))(v22, v0, v10);
    v43 = *(v13 + 16);
    v44 = sub_22BB34FB8();
    v45(v44);
    sub_22BB72FA8(v18, v2);
    (*(v13 + 8))(v22, v10);
  }

  v46 = v68;
  sub_22BC8D26C();
  sub_22BC5E5C4();
  type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  sub_22BB36B74(v1);
  if (v37)
  {
    sub_22BB58728(v1, &qword_27D8E6320, &qword_22BDCDD00);
  }

  else
  {
    sub_22BD40038();
    sub_22BB32434();
    sub_22BBC0BB8(v1, v47);
  }

  sub_22BC5E5C4();
  sub_22BB36B74(v29);
  if (v37)
  {
    sub_22BB58728(v29, &qword_27D8E6320, &qword_22BDCDD00);
  }

  else
  {
    sub_22BB37074();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v49 = sub_22BDB97A4();
      sub_22BB30444(v49);
      v51 = v50;
      v53 = *(v52 + 88);
      v54 = sub_22BB37074();
      if (v55(v54) == *MEMORY[0x277D1E640])
      {

        v56 = *(v51 + 8);
      }

      else
      {
        v60 = *(v51 + 8);
      }

      v57 = sub_22BB37074();
      v58(v57);
    }

    else
    {
      sub_22BB32434();
      sub_22BBC0BB8(v29, v59);
    }
  }

  v61 = v69;
  v62 = [v69 domain];
  v63 = sub_22BDBABF4();
  v65 = v64;

  v71 = v63;
  v72 = v65;
  MEMORY[0x2318A4C40](46, 0xE100000000000000);
  v70 = [v61 code];
  v66 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v66);

  sub_22BDB7CE4();

  sub_22BB58728(v46, &qword_27D8E6320, &qword_22BDCDD00);
  sub_22BB314EC();
}

void sub_22BD40800()
{
  sub_22BB30F94();
  v118 = v1;
  v114 = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  v117 = &v110 - v8;
  v135 = sub_22BDB43E4();
  v9 = sub_22BB30444(v135);
  v116 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v13);
  v113 = &v110 - v14;
  v15 = &unk_27D8E69E0;
  v16 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v17 = sub_22BB30434(v16);
  v129 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v128 = (v21 - v22);
  v24 = MEMORY[0x28223BE20](v23);
  v125 = &v110 - v25;
  MEMORY[0x28223BE20](v24);
  v127 = &v110 - v26;
  v27 = sub_22BDB9B54();
  v28 = sub_22BB30444(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v33);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v34);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB313C0();
  MEMORY[0x28223BE20](v36);
  v38 = &v110 - v37;
  v126 = sub_22BBE6DE0(&qword_27D8E6300, &qword_22BDCDCE8);
  sub_22BB2F330(v126);
  v40 = *(v39 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v41);
  v134 = &v110 - v42;
  v140 = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E6308, &unk_22BDCDCF0);
  sub_22BD421B4();
  sub_22BDBB0C4();

  v43 = 0;
  v44 = v142;
  v45 = v143;
  v46 = *(v142 + 16);
  v130 = (v30 + 32);
  v131 = v46;
  v133 = v30;
  v137 = v30 + 8;
  v138 = v30 + 16;
  v47 = MEMORY[0x277D84F90];
  v132 = v2;
  v119 = v38;
  v124 = v142;
  v123 = v143;
  v120 = v0;
LABEL_2:
  v136 = v47;
  while (1)
  {
    if (v131 == v43)
    {

      goto LABEL_29;
    }

    if (v43 >= *(v44 + 16))
    {
      goto LABEL_42;
    }

    v48 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v122 = *(v133 + 72);
    v2 = *(v133 + 16);
    v2(v38, v44 + v48 + v122 * v43, v27);
    v49 = *(v45 + 16);
    if (v43 == v49)
    {
      break;
    }

    if (v43 >= v49)
    {
      goto LABEL_43;
    }

    v121 = v48;
    v50 = *(v129 + 80);
    sub_22BB2F390();
    v53 = v45 + v51 + *(v52 + 72) * v43;
    v54 = *(v126 + 48);
    v55 = *v130;
    (*v130)(v134, v38, v27);
    sub_22BC5E5C4();
    v56 = v128;
    sub_22BC5E5C4();
    v57 = sub_22BB3A190();
    sub_22BB31814(v57, v58, v27);
    if (v59)
    {
      v60 = sub_22BB3CB04();
      sub_22BB58728(v60, v61, &qword_22BDC1660);
    }

    else
    {
      v62 = v120;
      v55(v120, v56, v27);
      v63 = sub_22BDB99C4();
      v65 = v64;
      v66 = sub_22BDB99C4();
      v68 = v67;
      if (v65)
      {
        sub_22BB8ACB4();
        v70 = v62;
      }

      else
      {
        v140 = v63;
        v141 = 0;
        if (v67)
        {
          sub_22BB8ACB4();
          v71(v120, v27);
          v15 = &unk_27D8E69E0;
          v38 = v119;
          goto LABEL_17;
        }

        v139 = v66;
        sub_22BB96A28();
        v68 = sub_22BDBABD4();
        sub_22BB8ACB4();
        v70 = v120;
      }

      v69(v70, v27);
      v15 = &unk_27D8E69E0;
      v38 = v119;
      if (v68)
      {
        v72 = 1;
        v2 = v132;
        v73 = v125;
        v74 = v134;
        goto LABEL_18;
      }
    }

LABEL_17:
    v73 = v125;
    v74 = v134;
    v2(v125, v134, v27);
    v72 = 0;
    v2 = v132;
LABEL_18:
    sub_22BB336D0(v73, v72, 1, v27);
    v75 = v127;
    sub_22BC8D26C();
    sub_22BB58728(v74, &qword_27D8E6300, &qword_22BDCDCE8);
    v76 = sub_22BB3A190();
    sub_22BB31814(v76, v77, v27);
    if (!v59)
    {
      v80 = v111;
      v55(v111, v75, v27);
      v55(v112, v80, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        v84 = v136;
      }

      else
      {
        sub_22BB3267C(isUniquelyReferenced_nonNull_native, v82, v83, v136);
        sub_22BD8F6E4();
        v84 = v88;
      }

      v85 = v121;
      v86 = *(v84 + 16);
      if (v86 >= *(v84 + 24) >> 1)
      {
        sub_22BD8F6E4();
        v84 = v89;
      }

      ++v43;
      *(v84 + 16) = v86 + 1;
      v87 = v84;
      v55(v84 + v85 + v86 * v122, v112, v27);
      v47 = v87;
      v44 = v124;
      v45 = v123;
      goto LABEL_2;
    }

    v78 = sub_22BB3CB04();
    sub_22BB58728(v78, v79, &qword_22BDC1660);
    ++v43;
    v44 = v124;
    v45 = v123;
  }

  sub_22BB8ACB4();
  v90(v38, v27);
  v2 = v132;
LABEL_29:
  v91 = 0;
  v43 = 0;
  v92 = *(v136 + 16);
  v131 = (v116 + 32);
  v134 = MEMORY[0x277D84F90];
  sub_22BB6C700();
  v94 = v133;
  while (1)
  {
    if (v92 == v91)
    {

      sub_22BBD22B0(v134, MEMORY[0x277CC95F0]);

      sub_22BB314EC();
      return;
    }

    if (v91 >= *(v93 + 16))
    {
      break;
    }

    v95 = *(v94 + 80);
    sub_22BB2F390();
    (*(v94 + 16))(v2, v96 + v97 + *(v94 + 72) * v91, v27);
    sub_22BD411B8(v44, v15);
    sub_22BB8ACB4();
    v98(v2, v27);
    sub_22BB31814(v15, 1, v135);
    if (v59)
    {
      sub_22BB58728(v15, &qword_27D8E3218, &qword_22BDBE390);
      ++v91;
      v93 = v136;
    }

    else
    {
      v99 = *v131;
      v100 = v113;
      v101 = v135;
      (*v131)(v113, v15, v135);
      v130 = v99;
      v99(v115, v100, v101);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      if ((v102 & 1) == 0)
      {
        sub_22BB3267C(v102, v103, v104, v134);
        sub_22BD91308();
        v134 = v107;
      }

      v44 = *(v134 + 16);
      v15 = (v44 + 1);
      v2 = v132;
      if (v44 >= *(v134 + 24) >> 1)
      {
        sub_22BD91308();
        v134 = v108;
      }

      ++v91;
      v106 = v134;
      v105 = v135;
      *(v134 + 16) = v15;
      (v130)(v106 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v44, v115, v105);
      sub_22BB6C700();
      v93 = v136;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);

  sub_22BB8ACB4();
  v109(v2, v27);

  __break(1u);
}

uint64_t sub_22BD411B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_22BBE6DE0(&qword_27D8E6320, &qword_22BDCDD00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v41 - v9;
  v46 = sub_22BDB43E4();
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB9B14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BDB9254();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  (*(v18 + 104))(&v41 - v23, *MEMORY[0x277D1E308], v17);
  sub_22BDB9B24();
  sub_22BDB9AC4();
  (*(v13 + 8))(v16, v12);
  v25 = sub_22BC56078(v24, v22);
  v26 = *(v18 + 8);
  v26(v22, v17);
  v26(v24, v17);
  if (v25)
  {
    sub_22BDB8F24();
    v28 = *(v47 + 480);
    v27 = *(v47 + 488);

    v29 = v48;
    sub_22BDB4394();
    return sub_22BB336D0(v29, 0, 1, v46);
  }

  v31 = v47;
  sub_22BDB9B24();
  v32 = v43;
  sub_22BB72FA8(v16, v43);
  v33 = type metadata accessor for StandardPlanner.StandardPlannerAction(0);
  v34 = sub_22BB3AA28(v32, 1, v33);
  v35 = v46;
  if (v34 == 1)
  {
    goto LABEL_9;
  }

  v36 = v42;
  sub_22BC5E5C4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_22BBC0BB8(v36, type metadata accessor for StandardPlanner.StandardPlannerAction);
      goto LABEL_7;
    }

    sub_22BBC0BB8(v36, type metadata accessor for StandardPlanner.StandardPlannerAction);
LABEL_9:
    sub_22BB336D0(v44, 1, 1, v35);
    sub_22BB58728(v32, &qword_27D8E6320, &qword_22BDCDD00);
    return sub_22BC8D26C();
  }

LABEL_7:
  sub_22BB58728(v32, &qword_27D8E6320, &qword_22BDCDD00);
  sub_22BDB8F24();
  v39 = *(v31 + 480);
  v38 = *(v31 + 488);

  v40 = v44;
  sub_22BDB4394();
  sub_22BB336D0(v40, 0, 1, v35);
  return sub_22BC8D26C();
}

void StandardPlannerConfiguration.makePlanner<A>(sessionId:toolbox:identityChain:toolExecutionSession:instrumentationSender:actionRequirements:)()
{
  sub_22BB30F94();
  v42 = v0;
  v2 = v1;
  v49 = v3;
  v5 = v4;
  v7 = v6;
  v8 = *(v1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = v12 - v11;
  v50 = sub_22BDB7CD4();
  v14 = sub_22BB30444(v50);
  v53 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v51 = v19 - v18;
  v20 = sub_22BDB9C14();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v28 = v27 - v26;
  sub_22BDB7C04();
  (*(v23 + 16))(v28, v7, v20);
  sub_22BDB7BF4();
  v44 = sub_22BDB7874();
  sub_22BB690EC(v5, v63);

  v47 = sub_22BDB7864();
  v45 = sub_22BDB7D14();
  sub_22BDB7BE4();
  v48 = sub_22BDB7D04();
  v29 = v5[3];
  v30 = sub_22BB69FEC(v5, v29);
  v31 = (*(v8 + 16))(v13, v42, v2);
  v32 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  (*(v35 + 16))(v34 - v33, v30, v29);

  sub_22BDB7CC4();
  v36 = sub_22BDB6654();
  sub_22BB34ED4(v36);
  v37 = sub_22BDB6644();
  v43 = sub_22BDB7D34();
  sub_22BDB5644();
  sub_22BB690EC(v5, v63);
  v62[3] = v36;
  v62[4] = MEMORY[0x277D1D518];
  v62[0] = v37;

  sub_22BB2F3F0();
  v46 = sub_22BDB7D24();
  v38 = sub_22BDB7DF4();
  sub_22BB690EC(v5, v63);

  sub_22BDB7DE4();
  v52 = sub_22BDB7DD4();
  sub_22BB690EC(v49, v63);
  sub_22BB690EC(v5, v62);
  type metadata accessor for StandardPlanner();
  v39 = swift_allocObject();
  v61[3] = v44;
  v61[4] = sub_22BB8C540(&qword_281428AD0, 255, MEMORY[0x277D1D548]);
  v61[0] = v47;
  v60[3] = v45;
  v60[4] = sub_22BB8C540(&qword_281428AB8, 255, MEMORY[0x277D1D668]);
  v60[0] = v48;
  v59[3] = v50;
  v59[4] = sub_22BB8C540(&qword_281428AC0, 255, MEMORY[0x277D1D658]);
  v40 = sub_22BB8B8A0(v59);
  (*(v53 + 16))(v40, v51, v50);
  v58[3] = v43;
  v58[4] = sub_22BB8C540(&qword_281428AB0, 255, MEMORY[0x277D1D678]);
  v58[0] = v46;
  v57[3] = v38;
  v57[4] = sub_22BB8C540(&qword_281428AA8, 255, MEMORY[0x277D1D6D0]);
  v57[0] = v52;
  v56[3] = v36;
  v56[4] = MEMORY[0x277D1D518];
  v56[0] = v37;

  swift_defaultActor_initialize();
  *(v39 + 112) = 0;
  *(v39 + 480) = 0x6C6379436E616C70;
  *(v39 + 488) = 0xEB00000000644965;
  sub_22BB690EC(v63, v39 + 120);
  sub_22BB690EC(v62, v39 + 200);
  sub_22BB690EC(v61, v39 + 240);
  sub_22BB690EC(v60, v39 + 280);
  sub_22BB690EC(v59, v39 + 320);
  sub_22BB690EC(v58, v39 + 360);
  sub_22BB690EC(v57, v39 + 400);
  sub_22BB690EC(v56, v39 + 440);
  sub_22BB6A360(v54);

  sub_22BB32FA4(v62);
  sub_22BB32FA4(v63);
  (*(v53 + 8))(v51, v50);
  sub_22BB32FA4(v56);
  sub_22BB32FA4(v57);
  sub_22BB32FA4(v58);
  sub_22BB32FA4(v59);
  sub_22BB32FA4(v60);
  sub_22BB32FA4(v61);
  v41 = v54[1];
  *(v39 + 160) = v54[0];
  *(v39 + 176) = v41;
  *(v39 + 192) = v55;
  sub_22BB314EC();
}

uint64_t sub_22BD41DBC()
{
  v0 = type metadata accessor for StandardPlannerError(0);
  v1 = sub_22BB2F0C8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v6 = v5 - v4;
  sub_22BB2F324();
  sub_22BBC0AFC();
  v7 = sub_22BDB4B94();
  v8 = sub_22BB3AA28(v6, 6, v7);
  result = 0;
  switch(v8)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    default:
      sub_22BBC0BB8(v6, type metadata accessor for StandardPlannerError);
      result = 7;
      break;
  }

  return result;
}

uint64_t sub_22BD41EB8(uint64_t a1)
{
  v2 = sub_22BB8C540(&qword_27D8E6380, 255, type metadata accessor for StandardPlannerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BD41F28(uint64_t a1)
{
  v2 = sub_22BB8C540(&qword_27D8E6380, 255, type metadata accessor for StandardPlannerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s23IntelligenceFlowRuntime15StandardPlannerC8makePlan12sessionStateSay0abE7Support7SessionO5EventVGAH0kI0V_tYaAF0E5ErrorOYKFTj()
{
  sub_22BB30F5C();
  v2 = *(*v0 + 232);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22BD38674;
  v5 = sub_22BB3182C();

  return v7(v5);
}

_BYTE *storeEnumTagSinglePayload for StandardPlannerConfiguration(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BD421B4()
{
  result = qword_27D8E6310;
  if (!qword_27D8E6310)
  {
    sub_22BBEB2E0(&qword_27D8E6308, &unk_22BDCDCF0);
    sub_22BD42238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6310);
  }

  return result;
}

unint64_t sub_22BD42238()
{
  result = qword_27D8E6318;
  if (!qword_27D8E6318)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6318);
  }

  return result;
}

unint64_t sub_22BD42338()
{
  result = qword_27D8E6348;
  if (!qword_27D8E6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6348);
  }

  return result;
}

uint64_t sub_22BD423B4()
{
  v0 = sub_22BDB4B94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22BD42464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BD42530()
{
  v3 = v1[38];
  v4 = v1[35];
  v5 = v1[36];
  v6 = v1[30];
  v7 = v1[18];
  v8 = v1[14];
  v9 = v1[15];
}

void sub_22BD42554()
{
  v3 = v1[73];
  v4 = v1[72];
  v5 = v1[47];
  v6 = v1[44];
  v7 = v1[45];
}

uint64_t sub_22BD42574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_22BDB7854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  v19 = *(a1 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v3, a1);
  if (swift_dynamicCast())
  {
    (*(v11 + 32))(v15, v18, v10);
    if ((*(v11 + 88))(v15, v10) == *MEMORY[0x277D1D538])
    {
      (*(v11 + 96))(v15, v10);
      v23 = sub_22BDB4B94();
      (*(*(v23 - 8) + 32))(v9, v15, v23);
      sub_22BB336D0(v9, 0, 1, v23);
    }

    else
    {
      v25 = sub_22BDB4B94();
      sub_22BB336D0(v9, 1, 1, v25);
      (*(v11 + 8))(v15, v10);
    }

    sub_22BD42884(v9, a2);
  }

  else
  {
    v24 = sub_22BDB4B94();
    sub_22BB336D0(a2, 1, 1, v24);
  }

  return (*(v19 + 8))(v22, a1);
}

uint64_t sub_22BD42884(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E62F0, &unk_22BDCDB78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static RecommendedAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for ConfirmResolution(0);
  v4 = sub_22BB2F330(v76);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ExecuteResolution(0);
  v8 = sub_22BB2F330(v75);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecommendedAction(0);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v74 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  v28 = sub_22BBE6DE0(&qword_27D8E6388, &qword_22BDCDE90);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v74 - v31;
  v33 = (&v74 + *(v30 + 56) - v31);
  sub_22BD42FDC(a1, &v74 - v31);
  sub_22BD42FDC(a2, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BD42FDC(v32, v25);
      v53 = *v25;
      v54 = *(v25 + 1);
      if (sub_22BB3102C() != 1)
      {

        goto LABEL_22;
      }

      v55 = *v33;
      v56 = v33[1];
      sub_22BCEFA08();
      if (v57)
      {
        sub_22BCEFBF4();
        v59 = v58;

        if (v59)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      goto LABEL_38;
    case 2u:
      sub_22BD42FDC(v32, v22);
      if (sub_22BB3102C() != 2)
      {
        v34 = type metadata accessor for ConfirmResolution;
        v35 = v22;
        goto LABEL_20;
      }

      v36 = v33;
      v37 = v77;
      sub_22BD43120(v36, v77, type metadata accessor for ConfirmResolution);
      if (sub_22BDBA574())
      {
        v38 = *(type metadata accessor for CandidateEntity(0) + 20);
        v39 = *&v22[v38];
        v40 = *&v22[v38 + 8];
        v41 = (v37 + v38);
        v42 = v39 == *v41 && v40 == v41[1];
        if (v42 || (sub_22BDBB6D4() & 1) != 0)
        {
          v43 = *(v76 + 20);
          v44 = *&v22[v43];
          v45 = *(v37 + v43);
          sub_22BCEFBF4();
          if (v46)
          {
            sub_22BB33E58();
            sub_22BD430A8(v37, v47);
            v48 = v22;
            goto LABEL_33;
          }
        }
      }

      sub_22BB33E58();
      sub_22BD430A8(v37, v60);
      v61 = v22;
      goto LABEL_36;
    case 3u:
      sub_22BD42FDC(v32, v19);
      v49 = *v19;
      if (sub_22BB3102C() == 3)
      {
        v50 = *v33;
        sub_22BCEFBF4();
        v52 = v51;

        sub_22BB35C68();
        return v52 & 1;
      }

LABEL_22:

      goto LABEL_23;
    default:
      sub_22BD42FDC(v32, v27);
      if (sub_22BB3102C())
      {
        v34 = type metadata accessor for ExecuteResolution;
        v35 = v27;
LABEL_20:
        sub_22BD430A8(v35, v34);
LABEL_23:
        sub_22BD43040(v32);
        goto LABEL_39;
      }

      sub_22BD43120(v33, v12, type metadata accessor for ExecuteResolution);
      if ((sub_22BDBA574() & 1) == 0)
      {
        goto LABEL_35;
      }

      v62 = *(type metadata accessor for CandidateEntity(0) + 20);
      v63 = *&v27[v62];
      v64 = *&v27[v62 + 8];
      v65 = &v12[v62];
      v66 = v63 == *v65 && v64 == *(v65 + 1);
      if (!v66 && (sub_22BDBB6D4() & 1) == 0 || (v67 = *(v75 + 20), v68 = *&v27[v67], v69 = *&v12[v67], sub_22BCEFBF4(), (v70 & 1) == 0))
      {
LABEL_35:
        sub_22BB32CD0();
        sub_22BD430A8(v12, v72);
        v61 = v27;
LABEL_36:
        sub_22BD430A8(v61, v25);
LABEL_38:
        sub_22BB35C68();
LABEL_39:
        v52 = 0;
        return v52 & 1;
      }

      sub_22BB32CD0();
      sub_22BD430A8(v12, v71);
      v48 = v27;
LABEL_33:
      sub_22BD430A8(v48, v25);
LABEL_34:
      sub_22BB35C68();
      v52 = 1;
      return v52 & 1;
  }
}

void static DisambiguateResolution.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_22BCEFA08();
  if (v6)
  {

    sub_22BCEFBF4();
  }
}

void sub_22BD42E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (sub_22BDBA574())
  {
    v6 = type metadata accessor for CandidateEntity(0);
    sub_22BB3244C(v6);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_22BDBB6D4() & 1) != 0)
    {
      v10 = *(a3(0) + 20);
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);

      sub_22BCEFBF4();
    }
  }
}

void static NoValidCandidates.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22BCEFBF4();
}

uint64_t static CandidateEntity.== infix(_:_:)()
{
  if ((sub_22BDBA574() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for CandidateEntity(0);
  sub_22BB3244C(v0);
  v3 = v3 && v1 == v2;
  if (v3)
  {
    return 1;
  }

  return sub_22BDBB6D4();
}

uint64_t sub_22BD42FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD43040(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6388, &qword_22BDCDE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BD430A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BD43120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BD43194()
{
  result = type metadata accessor for ExecuteResolution(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConfirmResolution(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD43240()
{
  result = sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD432DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22BD4331C(uint64_t result, int a2, int a3)
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

uint64_t sub_22BD4337C()
{
  v3 = sub_22BB30CF8();
  v4 = type metadata accessor for CandidateEntity(v3);
  v5 = sub_22BB314BC(v4);
  if (*(v6 + 84) != v1)
  {
    return sub_22BB32714(*(v0 + *(v2 + 20)));
  }

  return sub_22BB3AA28(v0, v1, v5);
}

uint64_t sub_22BD43420()
{
  v4 = sub_22BB31C98();
  v5 = type metadata accessor for CandidateEntity(v4);
  result = sub_22BB314BC(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_22BB34284();

    return sub_22BB336D0(v8, v9, v10, v11);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

void sub_22BD434A8()
{
  type metadata accessor for CandidateEntity(319);
  if (v0 <= 0x3F)
  {
    sub_22BC7DCBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BD4352C(uint64_t *a1, int a2)
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

uint64_t sub_22BD4356C(uint64_t result, int a2, int a3)
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

uint64_t sub_22BD435BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_22BDB8E14();
  v3[35] = v4;
  v5 = *(v4 - 8);
  v3[36] = v5;
  v6 = *(v5 + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = sub_22BDBA514();
  v3[38] = v7;
  v8 = *(v7 - 8);
  v3[39] = v8;
  v9 = *(v8 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v10 = *(*(sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD4372C, 0, 0);
}

uint64_t sub_22BD4372C()
{
  if (!*(*(v0 + 264) + 16))
  {
    goto LABEL_14;
  }

  v1 = sub_22BD8446C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_14;
  }

  v3 = *(v0 + 264);
  sub_22BB69088(*(v3 + 56) + 40 * v1, v0 + 56);
  sub_22BB382E8((v0 + 56), v0 + 16);
  sub_22BD80E80(v3, v0 + 136);
  if (*(v0 + 160))
  {
    v4 = *(v0 + 344);
    sub_22BB382E8((v0 + 136), v0 + 96);
    sub_22BB69088(v0 + 96, v0 + 176);
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    v5 = sub_22BDBA594();
    v6 = swift_dynamicCast();
    v7 = *(v0 + 344);
    if (v6)
    {
      sub_22BB30924(*(v0 + 344), 0);
      v8 = *(v5 - 8);
      v9 = *(v8 + 88);
      v10 = v9(v7, v5);
      v11 = *(v0 + 344);
      if (v10 != *MEMORY[0x277D72A58])
      {
        sub_22BB35C90();
        (*(v8 + 8))(v11, v5);
        goto LABEL_14;
      }

      v12 = v10;
      v62 = v9;
      v13 = *(v0 + 328);
      v14 = *(v0 + 304);
      v15 = *(v0 + 312);
      v61 = *(v8 + 96);
      v61(v11, v5);
      v16 = *v11;
      v17 = swift_projectBox();
      v60 = *(v15 + 16);
      v60(v13, v17, v14);
      v59 = *(v15 + 88);
      v18 = v59(v13, v14);
      if (v18 != *MEMORY[0x277D729B8])
      {
        v54 = *(v0 + 328);
        v55 = *(v0 + 304);
        v56 = *(v0 + 312);
        sub_22BB35C90();
        (*(v56 + 8))(v54, v55);
LABEL_21:

        goto LABEL_14;
      }

      v19 = v18;
      v20 = *(v0 + 336);
      v58 = *(*(v0 + 312) + 8);
      v58(*(v0 + 328), *(v0 + 304));

      sub_22BB69088(v0 + 16, v0 + 216);
      v21 = swift_dynamicCast();
      v22 = *(v0 + 336);
      if (v21)
      {
        sub_22BB30924(*(v0 + 336), 0);
        v23 = v62(v22, v5);
        v24 = *(v0 + 336);
        if (v23 != v12)
        {
          sub_22BB35C90();
          (*(v8 + 8))(v24, v5);
          goto LABEL_14;
        }

        v25 = *(v0 + 320);
        v26 = *(v0 + 304);
        v61(*(v0 + 336), v5);
        v27 = *v24;
        v28 = swift_projectBox();
        v60(v25, v28, v26);
        v29 = v59(v25, v26);
        v30 = *(v0 + 320);
        if (v29 == v19)
        {
          v32 = *(v0 + 288);
          v31 = *(v0 + 296);
          v34 = *(v0 + 272);
          v33 = *(v0 + 280);
          v35 = *(v0 + 256);
          (*(*(v0 + 312) + 96))(*(v0 + 320), *(v0 + 304));
          v37 = *v30;
          v36 = v30[1];

          MEMORY[0x2318A2DC0](v38);
          sub_22BDB8DE4();
          (*(v32 + 8))(v31, v33);
          *v35 = v34;
          v39 = type metadata accessor for RecommendedAction(0);
          swift_storeEnumTagMultiPayload();

          sub_22BB35C90();
          v40 = v35;
          v41 = 0;
          v42 = v39;
          goto LABEL_15;
        }

        v57 = *(v0 + 304);
        sub_22BB35C90();
        v58(v30, v57);
        goto LABEL_21;
      }

      sub_22BB35C90();
      sub_22BB30924(v22, 1);
      v43 = &qword_27D8E2668;
      v44 = &unk_22BDBCCD0;
      v45 = v22;
    }

    else
    {
      sub_22BB35C90();
      sub_22BB30924(v7, 1);
      v43 = &qword_27D8E2668;
      v44 = &unk_22BDBCCD0;
      v45 = v7;
    }
  }

  else
  {
    sub_22BB32FA4((v0 + 16));
    v43 = &unk_27D8E2940;
    v44 = &unk_22BDBCFC0;
    v45 = v0 + 136;
  }

  sub_22BB58780(v45, v43, v44);
LABEL_14:
  v46 = *(v0 + 256);
  v42 = type metadata accessor for RecommendedAction(0);
  v40 = v46;
  v41 = 1;
LABEL_15:
  sub_22BB336D0(v40, v41, 1, v42);
  v48 = *(v0 + 336);
  v47 = *(v0 + 344);
  v50 = *(v0 + 320);
  v49 = *(v0 + 328);
  v51 = *(v0 + 296);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t type metadata accessor for Resolver()
{
  result = qword_27D8E63D0;
  if (!qword_27D8E63D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BD43CDC()
{
  result = sub_22BDB9C14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BD43D48()
{
  sub_22BB2F0D4();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  v9 = sub_22BDB9C14();
  v1[20] = v9;
  v10 = *(v9 - 8);
  v1[21] = v10;
  v11 = *(v10 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD43E10, 0, 0);
}

uint64_t sub_22BD43E10()
{
  v2 = v0[21];
  v1 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v11 = v0[13];
  v12 = v0[15];
  v10 = v0[12];
  (*(v4 + 88))(v5, v4);
  (*(v4 + 104))(v5, v4);
  v7 = *(v4 + 72);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_22BB8B8A0(v0 + 7);
  v7(v5, v4);
  (*(v3 + 24))(v11, v1, v0 + 2, v0 + 7, v12, v3);
  sub_22BB32FA4(v0 + 2);
  (*(v2 + 8))(v1, v14);
  sub_22BB32FA4(v0 + 7);

  sub_22BB2F09C();

  return v8();
}

uint64_t sub_22BD43FB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BBF90EC;

  return sub_22BD43D48();
}

uint64_t sub_22BD44098(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v18 = MEMORY[0x277D84F90];
    sub_22BD286A0(0, v4, 0);
    v5 = v18;
    v17 = sub_22BDB9B54();
    sub_22BD61DE0(v17);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v9 + 72);
    sub_22BD62BB4();
    sub_22BB3B194(v10, v11);
    while (1)
    {
      sub_22BDB9484();
      if (v1)
      {
        break;
      }

      sub_22BC54A00();
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22BD286A0((v12 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 16 * v13;
      *(v14 + 32) = v2;
      *(v14 + 40) = v3;
      v8 += v16;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_22BD44210(uint64_t a1)
{
  v3 = sub_22BDB9B54();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v27 = MEMORY[0x277D84F90];
    sub_22BB6FF1C();
    v10 = v27;
    v11 = (a1 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = sub_22BB31DF8();
      sub_22BB352C4(v14, v15);
      v16 = sub_22BB31DF8();
      sub_22BB352C4(v16, v17);
      sub_22BD62BB4();
      sub_22BB3B194(&qword_27D8E65B8, v18);
      sub_22BB31DF8();
      sub_22BDB9474();
      v19 = sub_22BB31DF8();
      if (v1)
      {
        break;
      }

      sub_22BB3531C(v19, v20);
      v21 = *(v27 + 16);
      if (v21 >= *(v27 + 24) >> 1)
      {
        sub_22BB6FF1C();
      }

      v11 += 2;
      *(v27 + 16) = v21 + 1;
      sub_22BB969F4();
      v23 = v27 + v22 + *(v6 + 72) * v21;
      v24 = *(v6 + 32);
      sub_22BB69260();
      v25();
      if (!--v9)
      {
        return v10;
      }
    }

    sub_22BB3531C(v19, v20);
  }

  return v10;
}

uint64_t sub_22BD443E4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a1;
  v48 = MEMORY[0x277D84F90];
  sub_22BD28680(0, v2, 0);
  v47 = v48;
  result = sub_22BDB1D48(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v38 = v5;
  v39 = v2;
  v37 = v3 + 72;
  v40 = v3 + 64;
  v41 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_28;
    }

    v45 = v5;
    v43 = v6;
    v11 = (*(v3 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v7);
    swift_bridgeObjectRetain_n();
    v15 = sub_22BDB8454();
    v17 = v16;
    v18 = sub_22BDB95A4();
    v19 = *a2;
    v44 = v8;
    v46 = v18;
    if (*(*a2 + 16) && (sub_22BB72B1C(), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v23 = v47;
    v25 = *(v47 + 16);
    v24 = *(v47 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_22BD28680((v24 > 1), v25 + 1, 1);
      v23 = v47;
    }

    *(v23 + 16) = v25 + 1;
    v26 = (v23 + 32 * v25);
    v26[4] = v15;
    v26[5] = v17;
    v26[6] = v46;
    v26[7] = v22;
    v3 = v41;
    v27 = 1 << *(v41 + 32);
    if (v7 >= v27)
    {
      goto LABEL_29;
    }

    v9 = v40;
    v28 = *(v40 + 8 * v10);
    if ((v28 & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    v47 = v23;
    if (*(v41 + 36) != v45)
    {
      goto LABEL_31;
    }

    v29 = v28 & (-2 << (v7 & 0x3F));
    if (v29)
    {
      v27 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v30 = v39;
      v31 = v44;
    }

    else
    {
      v32 = v10 << 6;
      v33 = v10 + 1;
      v34 = (v37 + 8 * v10);
      v30 = v39;
      v31 = v44;
      while (v33 < (v27 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_22BBBFEB0(v7, v45, v43 & 1);
          v27 = __clz(__rbit64(v35)) + v32;
          goto LABEL_23;
        }
      }

      result = sub_22BBBFEB0(v7, v45, v43 & 1);
    }

LABEL_23:
    v6 = 0;
    v8 = v31 + 1;
    v7 = v27;
    v5 = v38;
    if (v8 == v30)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22BD446BC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
      return sub_22BB335C0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

void sub_22BD4477C()
{
  sub_22BB30F94();
  v1 = v0;
  v54 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
  v2 = sub_22BB2F330(v54);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30560();
  v53 = v5;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v6);
  v52 = &v49 - v7;
  v55 = v1;
  if (*(v1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E3000, &qword_22BDBDA98);
    sub_22BB358DC();
    v8 = sub_22BDBB524();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v55 + 64;
  v10 = 1 << *(v55 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v55 + 64);
  v13 = (v10 + 63) >> 6;
  v49 = v8 + 64;

  v14 = 0;
  v51 = v8;
  for (i = v9; v12; v9 = i)
  {
    v15 = v14;
LABEL_11:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v55 + 56);
    v19 = (*(v55 + 48) + 16 * v17);
    v21 = *v19;
    v56 = v19[1];
    v20 = v56;
    v22 = sub_22BDBA594();
    sub_22BB30444(v22);
    v24 = v23;
    v26 = v18 + *(v25 + 72) * v17;
    v27 = v54;
    v28 = *(v54 + 48);
    sub_22BD642C4();
    v29 = v52;
    v31(&v52[v30]);
    *v29 = v21;
    v29[1] = v20;
    v32 = v29;
    v33 = v53;
    sub_22BB6BEE0(v32, v53, &qword_27D8E27E8, &qword_22BDBF4C0);
    v34 = *(v27 + 48);
    v35 = *v33;
    v36 = *(v33 + 1);
    v58 = v22;
    v59 = MEMORY[0x277D72A68];
    v37 = sub_22BB8B8A0(&v57);
    (*(v24 + 32))(v37, &v33[v34], v22);
    sub_22BB382E8(&v57, v61);
    sub_22BB382E8(v61, v62);
    sub_22BB382E8(v62, &v60);

    sub_22BB2F12C();
    v38 = v51;
    v39 = sub_22BD8446C();
    v40 = v39;
    if (v41)
    {
      v42 = (v38[6] + 16 * v39);
      v43 = v42[1];
      *v42 = v35;
      v42[1] = v36;

      v44 = (v38[7] + 40 * v40);
      sub_22BB32FA4(v44);
      sub_22BB382E8(&v60, v44);
    }

    else
    {
      if (v38[2] >= v38[3])
      {
        goto LABEL_20;
      }

      *(v49 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v45 = (v38[6] + 16 * v39);
      *v45 = v35;
      v45[1] = v36;
      sub_22BB382E8(&v60, v38[7] + 40 * v39);
      v46 = v38[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_21;
      }

      v38[2] = v48;
    }

    v14 = v15;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      sub_22BB314EC();
      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BD44B04()
{
  sub_22BB30F94();
  v1 = v0;
  v76 = sub_22BBE6DE0(&qword_27D8E6650, &qword_22BDCE5E0);
  sub_22BB2F330(v76);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v75 = &v65 - v5;
  v6 = sub_22BBE6DE0(&qword_27D8E6658, &qword_22BDCE5E8);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  v74 = &v65 - v10;
  sub_22BB2F120();
  v11 = sub_22BDB4C34();
  v12 = sub_22BB30444(v11);
  v77 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v18 = v17 - v16;
  v72 = sub_22BBE6DE0(&qword_27D8E6660, &qword_22BDCE5F0);
  v19 = sub_22BB2F330(v72);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30560();
  v71 = v22;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v23);
  v70 = &v65 - v24;
  v78 = v1;
  if (*(v1 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6668, &qword_22BDCE5F8);
    sub_22BB358DC();
    v25 = sub_22BDBB524();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v27 = *(v78 + 64);
  v26 = v78 + 64;
  v28 = *(v78 + 32);
  sub_22BD5FC48();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v68 = v77 + 16;
  v81 = v77 + 32;
  v34 = v25 + 64;

  v35 = 0;
  v66 = v33;
  v67 = v26;
  v73 = v18;
  v69 = v25;
  if (!v31)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v37 = __clz(__rbit64(v31)) | (v35 << 6);
    v38 = v77;
    v39 = v78;
    v40 = *(v78 + 48);
    v79 = *(v77 + 72);
    v41 = v70;
    (*(v77 + 16))(v70, v40 + v79 * v37, v11);
    v42 = *(*(v39 + 56) + 8 * v37);
    v44 = v71;
    v43 = v72;
    *(v41 + *(v72 + 48)) = v42;
    sub_22BB6BEE0(v41, v44, &qword_27D8E6660, &qword_22BDCE5F0);
    v45 = *(v43 + 48);
    v80 = *(v76 + 48);
    v46 = *(v38 + 32);
    v47 = v11;
    v48 = v75;
    v49 = sub_22BB97B0C();
    v46(v49);
    v82 = *(v44 + v45);

    sub_22BBE6DE0(&qword_27D8E6670, &qword_22BDCE600);
    sub_22BBE6DE0(&qword_27D8E6678, &qword_22BDCE608);
    v50 = v80;
    swift_dynamicCast();
    v51 = sub_22BB345A8();
    v46(v51);
    v52 = *&v48[v50];
    v11 = v47;
    v53 = v73;
    v54 = sub_22BD60F04();
    v46(v54);
    v55 = v69;
    v56 = *(v69 + 40);
    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v57);
    sub_22BB69A84();
    sub_22BDBABA4();
    v58 = *(v55 + 32);
    sub_22BD60BF0();
    v60 = *(v34 + 8 * v59);
    sub_22BD63668();
    if (v61)
    {
      sub_22BD60BDC();
      while (1)
      {
        sub_22BB97184();
        if (v61)
        {
          if (v63)
          {
            goto LABEL_23;
          }
        }

        if (v62 == v64)
        {
          v62 = 0;
        }

        if (*(v34 + 8 * v62) != -1)
        {
          sub_22BB9748C();
          goto LABEL_19;
        }
      }
    }

    sub_22BD61144();
LABEL_19:
    v31 &= v31 - 1;
    *(v34 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    (v46)(*(v55 + 48) + v53 * v79, v53, v11);
    *(*(v55 + 56) + 8 * v53) = v52;
    ++*(v55 + 16);
    v33 = v66;
    v26 = v67;
  }

  while (v31);
LABEL_5:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v33)
    {

      sub_22BB314EC();
      return;
    }

    v31 = *(v26 + 8 * v36);
    ++v35;
    if (v31)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}