void sub_22C74F0D4()
{
  sub_22C74F1A8(319, &qword_27D9BFBD8, MEMORY[0x277D1E130]);
  if (v0 <= 0x3F)
  {
    sub_22C74F1A8(319, &qword_27D9BFBE0, MEMORY[0x277D73358]);
    if (v1 <= 0x3F)
    {
      sub_22C74F1FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C74F1A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_22C74F1FC()
{
  if (!qword_27D9BFBE8)
  {
    sub_22C9069BC();
    sub_22C908C5C();
    sub_22C74F76C(&qword_27D9BAA98, MEMORY[0x277D1DCF0]);
    v0 = sub_22C909F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BFBE8);
    }
  }
}

uint64_t _s13DimensionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13DimensionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C74F430()
{
  result = qword_27D9BFBF0;
  if (!qword_27D9BFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBF0);
  }

  return result;
}

unint64_t sub_22C74F488()
{
  result = qword_27D9BFBF8;
  if (!qword_27D9BFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFBF8);
  }

  return result;
}

unint64_t sub_22C74F4E0()
{
  result = qword_27D9BFC00;
  if (!qword_27D9BFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC00);
  }

  return result;
}

unint64_t sub_22C74F538()
{
  result = qword_27D9BFC08;
  if (!qword_27D9BFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC08);
  }

  return result;
}

uint64_t sub_22C74F5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C74F614()
{
  result = qword_27D9BFC18;
  if (!qword_27D9BFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC18);
  }

  return result;
}

unint64_t sub_22C74F66C()
{
  result = qword_27D9BFC20;
  if (!qword_27D9BFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC20);
  }

  return result;
}

unint64_t sub_22C74F6C4()
{
  result = qword_27D9BFC28;
  if (!qword_27D9BFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC28);
  }

  return result;
}

unint64_t sub_22C74F718()
{
  result = qword_27D9BFC30;
  if (!qword_27D9BFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC30);
  }

  return result;
}

uint64_t sub_22C74F76C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s18DimensionsMetadataVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s18DimensionsMetadataVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t _s18DimensionsMetadataVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _s14TupleRiskLevelVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14TupleRiskLevelVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C74FA88()
{
  result = sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C74FB64(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C74FBB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C369A9C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C74FC0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C3A5908(a3, a4);
  sub_22C369A9C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C74FC64()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  (*(*(v3 - 8) + 8))(v0, v3);
  return v0;
}

_BYTE *sub_22C74FCC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C74FDA0()
{
  result = qword_27D9BFC88;
  if (!qword_27D9BFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC88);
  }

  return result;
}

uint64_t sub_22C74FE38()
{
  v2 = *(v1 - 176);
  v3 = *(*(v1 - 224) + 48) + *(v2 + 72) * v0;
  v4 = *(v2 + 16);
  result = *(v1 - 184);
  v6 = *(v1 - 104);
  v7 = *(v1 - 232);
  return result;
}

uint64_t sub_22C74FE64()
{
  v3 = *(v2 - 96);
  v4 = *(v1 + 56) + *(v3 + 72) * v0;
  v5 = *(v3 + 16);
  result = *(v2 - 112);
  v7 = *(v2 - 136);
  return result;
}

uint64_t sub_22C74FE8C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 208);
  return result;
}

uint64_t sub_22C74FEBC()
{

  return sub_22C90A0BC();
}

uint64_t sub_22C74FF00()
{
  v3 = *(v1 + 48);
  v5 = *v0;
  v4 = v0[1];
  v6 = *(v2 - 128);
  v7 = **(v2 - 112);
  return *(v2 - 152);
}

uint64_t sub_22C74FF4C(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(v4 - 104);
  *v7 = v2;
  v7[1] = v1;

  return sub_22C74FBB8(v3, v7 + v6);
}

uint64_t sub_22C74FF84()
{
  v3 = *(v2 - 88);
  v4 = *(v0 + 56) + *(v3 + 72) * v1;
  v5 = *(v3 + 16);
  result = *(v2 - 96);
  v7 = *(v2 - 120);
  return result;
}

char *sub_22C74FFA8(uint64_t a1)
{
  v6 = *(a1 + 48);
  *v4 = v1;
  v4[1] = v2;
  v7 = *(v3 + 32);
  result = v4 + v6;
  v9 = *(v5 - 112);
  return result;
}

uint64_t sub_22C74FFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(a1 + 16) = a13;

  return sub_22C90A91C();
}

void sub_22C750028()
{
  v2 = *(v0 + 48);
  v3 = *v1;
  v4 = v1[1];
}

uint64_t sub_22C750040()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C750064()
{
  v3 = *(*(v2 - 112) + 20);
  result = *(v0 + v3);
  v5 = *(v1 + v3);
  return result;
}

void sub_22C750084(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
}

uint64_t sub_22C750098()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22C90B62C();
}

uint64_t sub_22C7500B8()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for TrialManager();
  v1 = swift_allocObject();
  v4[3] = &type metadata for JointResolverBiomeLogger;
  v4[4] = &off_283FC3F88;
  v4[0] = sub_22C73D0DC(v0, 0xD000000000000021, 0x800000022C933280, v1);
  type metadata accessor for JointResolver();
  v2 = swift_allocObject();
  sub_22C750184(v4);
  return v2;
}

uint64_t sub_22C750184(uint64_t *a1)
{
  v43 = a1;
  v1 = sub_22C90634C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_22C90636C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v40 = *(v15 + 8);
  v41 = v12;
  v40(v20, v12);
  v23 = sub_22C90635C();
  v24 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v25 = swift_slowAlloc();
    v39 = v1;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v23, v24, v27, "JointResolver.init", "", v26, 2u);
    v1 = v39;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v4 + 16))(v9, v11, v1);
  v28 = sub_22C9063AC();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_22C90639C();
  (*(v4 + 8))(v11, v1);
  v40(v22, v41);
  sub_22C90657C();
  sub_22C90656C();
  type metadata accessor for PlanResolutionCachableModel();
  sub_22C754EF8();
  v32 = v42;
  v33 = sub_22C90655C();
  if (v32)
  {

    sub_22C7524B8(v31, "JointResolver.init");

    sub_22C36FF94(v43);
    type metadata accessor for JointResolver();
    v34 = v44;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v33;

    v34 = v44;
    *(v44 + 16) = v35;
    v36 = v43;
    sub_22C378A4C(v43, v34 + 24);
    sub_22C7524B8(v31, "JointResolver.init");

    sub_22C36FF94(v36);
  }

  return v34;
}

uint64_t sub_22C750500()
{
  sub_22C369980();
  *(v1 + 1112) = v0;
  *(v1 + 1104) = v2;
  *(v1 + 1096) = v3;
  *(v1 + 916) = v4;
  *(v1 + 1088) = v5;
  *(v1 + 1080) = v6;
  *(v1 + 1032) = v7;
  *(v1 + 984) = v8;
  v9 = sub_22C90069C();
  *(v1 + 1120) = v9;
  sub_22C3699B8(v9);
  *(v1 + 1128) = v10;
  v12 = *(v11 + 64);
  *(v1 + 1136) = sub_22C36D0D4();
  *(v1 + 1144) = swift_task_alloc();
  *(v1 + 1152) = swift_task_alloc();
  *(v1 + 1160) = swift_task_alloc();
  *(v1 + 1168) = swift_task_alloc();
  v13 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  *(v1 + 1176) = swift_task_alloc();
  v14 = _s10ModelInputVMa();
  *(v1 + 1184) = v14;
  v15 = *(*(v14 - 8) + 64);
  *(v1 + 1192) = sub_22C36D0D4();
  *(v1 + 1200) = swift_task_alloc();
  v16 = sub_22C9063DC();
  *(v1 + 1208) = v16;
  sub_22C3699B8(v16);
  *(v1 + 1216) = v17;
  v19 = *(v18 + 64);
  *(v1 + 1224) = sub_22C36D0D4();
  *(v1 + 1232) = swift_task_alloc();
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  v20 = sub_22C90634C();
  *(v1 + 1256) = v20;
  sub_22C3699B8(v20);
  *(v1 + 1264) = v21;
  v23 = *(v22 + 64);
  *(v1 + 1272) = sub_22C36D0D4();
  *(v1 + 1280) = swift_task_alloc();
  v24 = sub_22C90636C();
  *(v1 + 1288) = v24;
  sub_22C3699B8(v24);
  *(v1 + 1296) = v25;
  v27 = *(v26 + 64);
  *(v1 + 1304) = sub_22C36D0D4();
  *(v1 + 1312) = swift_task_alloc();
  v28 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_22C75077C()
{
  v216 = v0;
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1280);
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v7 = sub_22C90635C();
  v8 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v9 = *(v0 + 1280);
    sub_22C3720F4();
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v7, v8, v11, "JointResolver.resolve", "", v10, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v12 = *(v0 + 1312);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1264);
  v17 = *(v0 + 1256);
  v211 = *(v0 + 1032);

  (*(v16 + 16))(v15, v14, v17);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 1320) = sub_22C90639C();
  (*(v16 + 8))(v14, v17);
  v6(v12, v13);
  sub_22C3A5908(&qword_27D9BFCA8, &qword_22C925198);
  inited = swift_initStackObject();
  *(v0 + 1328) = inited;
  *(inited + 24) = 0;
  v22 = (inited + 24);
  *(inited + 16) = MEMORY[0x277D84F98];
  v23 = (inited + 16);
  sub_22C743A7C(inited);
  *(v0 + 1336) = v24;
  v25 = v24;
  v26 = *(v0 + 1248);
  v27 = *(v0 + 1200);
  v28 = *(v0 + 1032);
  sub_22C903FAC();
  v29 = sub_22C36A724();
  sub_22C754A9C(v29, v30);
  v31 = sub_22C9063CC();
  v32 = sub_22C90AABC();
  v195 = v23;
  lock = v22;
  if (sub_22C37B204(v32))
  {
    v33 = *(v0 + 1200);
    v34 = *(v0 + 1184);
    v35 = sub_22C36FB44();
    v36 = sub_22C370060();
    v215[0] = v36;
    *v35 = 136315138;
    v37 = *(v33 + *(v34 + 40));
    if (*(v33 + *(v34 + 40)))
    {
      if (v37 == 1)
      {
        v38 = 0xD000000000000013;
      }

      else
      {
        v38 = 0x6F7365526C6F6F74;
      }

      if (v37 == 1)
      {
        v39 = 0x800000022C934740;
      }

      else
      {
        v39 = 0xEC0000007265766CLL;
      }
    }

    else
    {
      v39 = 0xEE007265766C6F73;
      v38 = 0x65526E6F69746361;
    }

    v212 = *(v0 + 1248);
    v47 = *(v0 + 1216);
    v48 = *(v0 + 1208);
    sub_22C745BA0(*(v0 + 1200));
    v49 = sub_22C36F9F4(v38, v39, v215);

    *(v35 + 4) = v49;
    sub_22C37F89C();
    _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
    sub_22C36FF94(v36);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v44 = *(v47 + 8);
    v45 = v212;
    v46 = v48;
  }

  else
  {
    v40 = *(v0 + 1248);
    v41 = *(v0 + 1216);
    v42 = *(v0 + 1208);
    v43 = *(v0 + 1200);

    sub_22C745BA0(v43);
    v44 = *(v41 + 8);
    v45 = sub_22C36BAFC();
  }

  v44(v45, v46);
  v204 = v44;
  *(v0 + 1344) = v44;
  v55 = *(v0 + 1176);
  v56 = *(v0 + 1168);
  v57 = *(v0 + 1160);
  v58 = *(v0 + 1152);
  v59 = *(v0 + 1128);
  v60 = *(v0 + 1120);
  v61 = *(v0 + 1112);
  v207 = *(v0 + 1096);
  v213 = *(v0 + 916);
  sub_22C90A73C();
  v62 = sub_22C90A75C();
  *(v0 + 1352) = v62;
  sub_22C36C640(v55, 0, 1, v62);
  v63 = swift_allocObject();
  v63[2] = 0;
  v63[3] = 0;
  v63[4] = v25;

  sub_22C8FAAA0(0, 0, v55, &unk_22C9251A8, v63);

  sub_22C3770B0(v55, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C90068C();
  v64 = *(v59 + 16);
  v64(v57, v56, v60);
  v64(v58, v207, v60);
  v65 = type metadata accessor for JointResolverTelemetry();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  *(v0 + 1360) = sub_22C75B3DC(v57, v58);
  sub_22C75C098();
  sub_22C75B48C();
  v68 = sub_22C374168((v61 + 24), *(v61 + 48));
  sub_22C8FC0C0(v213 & 1, v56, *v68);
  v69 = sub_22C5EE7DC();
  *(v0 + 1368) = v69;
  v100 = v69;
  if (!v69)
  {
    v164 = *(v0 + 1232);
    sub_22C903FAC();
    v165 = sub_22C9063CC();
    v166 = sub_22C90AADC();
    if (sub_22C37B204(v166))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C37F89C();
      _os_log_impl(v167, v168, v169, v170, v171, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v172 = *(v0 + 1232);
    v173 = *(v0 + 1216);
    v174 = *(v0 + 1208);

    v175 = sub_22C36BAFC();
    v204(v175);
    sub_22C5F2300();
    v176 = swift_allocError();
    *v177 = 0xD000000000000035;
    v177[1] = 0x800000022C9348F0;
    swift_willThrow();
    v178 = v176;
    v214 = v176;
    v70 = *(v0 + 1360);
    v71 = *(v0 + 1224);
    sub_22C75BAC0();
    sub_22C903FAC();
    v72 = v178;
    v73 = sub_22C9063CC();
    v74 = sub_22C90AADC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = sub_22C36FB44();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = v214;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_22C366000, v73, v74, "JointResolver error in JR inference call %@", v75, 0xCu);
      sub_22C3770B0(v76, &qword_27D9BB158, qword_22C910FD0);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v208 = *(v0 + 1360);
    v79 = *(v0 + 1344);
    v80 = *(v0 + 1336);
    v81 = v73;
    v82 = *(v0 + 1328);
    v83 = *(v0 + 1224);
    v84 = *(v0 + 1216);
    v85 = *(v0 + 1208);
    v86 = *(v0 + 1168);
    v87 = *(v0 + 1128);
    v88 = *(v0 + 1120);

    v79(v83, v85);
    swift_willThrow();

    swift_setDeallocating();
    v89 = *(v82 + 16);

    (*(v87 + 8))(v86, v88);
    v90 = *(v0 + 1312);
    v91 = *(v0 + 1304);
    v92 = *(v0 + 1280);
    v93 = *(v0 + 1272);
    v94 = *(v0 + 1248);
    v95 = *(v0 + 1240);
    v96 = *(v0 + 1232);
    v97 = *(v0 + 1224);
    v193 = *(v0 + 1200);
    v196 = *(v0 + 1192);
    locka = *(v0 + 1176);
    v199 = *(v0 + 1168);
    v201 = *(v0 + 1160);
    v203 = *(v0 + 1152);
    v205 = *(v0 + 1144);
    v209 = *(v0 + 1136);
    sub_22C7524B8(*(v0 + 1320), "JointResolver.resolve");

    sub_22C372F94(0);

    sub_22C369A24();
    sub_22C36FCB0();

    __asm { BRAA            X1, X16 }
  }

  v192 = v64;
  v101 = *(v0 + 1184);
  v102 = *(v0 + 1112);
  v103 = *(v0 + 1032);
  sub_22C36A83C();
  v104 = swift_allocObject();
  *(v104 + 16) = v102;
  *(v104 + 24) = v100;
  sub_22C36A83C();
  v105 = swift_allocObject();
  *(v0 + 1376) = v105;
  *(v105 + 16) = &unk_22C9251C0;
  *(v105 + 24) = v104;

  sub_22C3A5908(&qword_27D9BFCB0, &qword_22C9251D8);
  v106 = swift_asyncLet_begin();
  v110 = *(v103 + *(v101 + 20));
  v111 = *(v110 + 16);
  if (!v111)
  {
    v116 = MEMORY[0x277D84F98];
LABEL_54:
    *(v0 + 1384) = v116;
    sub_22C372434();
    sub_22C36FCB0();

    return MEMORY[0x282200930](v106, v107, v108, v109);
  }

  v112 = 0;
  v113 = v0 + 696;
  v114 = *(v0 + 1128);
  v115 = v110 + 32;
  v188 = v114 + 32;
  v189 = v114 + 8;
  v190 = v114;
  v187 = v114 + 40;
  v116 = MEMORY[0x277D84F98];
  v184 = *(v110 + 16);
  v185 = *(v103 + *(v101 + 20));
  v183 = v110 + 32;
  while (1)
  {
    if (v112 >= *(v110 + 16))
    {
LABEL_63:
      __break(1u);
      return MEMORY[0x282200930](v106, v107, v108, v109);
    }

    v106 = *(v115 + 8 * v112);
    v194 = *(v106 + 16);
    if (v194)
    {
      break;
    }

LABEL_48:
    if (++v112 == v111)
    {
      goto LABEL_54;
    }
  }

  v186 = v112;

  v117 = 0;
  v118 = (v106 + 64);
  v191 = v106;
  while (1)
  {
    if (v117 >= *(v106 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v202 = v117;
    v206 = v116;
    v119 = *(v118 - 4);
    v120 = *(v118 - 3);
    v122 = *(v118 - 2);
    v121 = *(v118 - 1);
    v123 = *v118;
    sub_22C5F8D4C();

    sub_22C909F0C();
    v210 = v122;
    if ((v119 || v120 != 0xE000000000000000) && (sub_22C90B4FC() & 1) == 0)
    {
      goto LABEL_35;
    }

    if (!v122 && v121 == 0xE000000000000000 || (sub_22C90B4FC() & 1) != 0)
    {
      v124 = sub_22C370018();
      sub_22C749DA0(v124, v125);
      v127 = v126;
      swift_bridgeObjectRelease_n();

      if (v127)
      {
        v200 = -1;
        goto LABEL_37;
      }
    }

    else
    {
LABEL_35:
      swift_bridgeObjectRelease_n();
    }

    v128 = sub_22C909F0C();
    *(v0 + 696) = v119;
    *(v0 + 704) = v120;
    *(v0 + 712) = v210;
    *(v0 + 720) = v121;
    *(v0 + 728) = v128;
    *(swift_task_alloc() + 16) = v113;
    os_unfair_lock_lock(lock);
    sub_22C7432B4(v195, v215);
    os_unfair_lock_unlock(lock);
    sub_22C740224(v113);
    v200 = v215[0];

LABEL_37:
    v129 = *(v0 + 1144);
    v130 = *(v0 + 1136);
    v131 = *(v0 + 1120);
    v132 = *(v0 + 1104);
    *(v0 + 856) = v119;
    *(v0 + 864) = v120;
    *(v0 + 872) = v210;
    *(v0 + 880) = v121;
    sub_22C754DD0();

    sub_22C902B4C();

    v133 = *(v0 + 864);
    v134 = *(v0 + 880);

    v192(v130, v129, v131);
    swift_isUniquelyReferenced_nonNull_native();
    v215[0] = v206;
    v106 = sub_22C628CD4(v200);
    if (__OFADD__(*(v206 + 16), (v107 & 1) == 0))
    {
      goto LABEL_61;
    }

    v135 = v106;
    v136 = v107;
    sub_22C3A5908(&qword_27D9BFCB8, &qword_22C9251E0);
    v137 = sub_22C90B15C();
    v116 = v215[0];
    if (v137)
    {
      break;
    }

    v113 = v0 + 696;
LABEL_42:
    v145 = *(v0 + 1144);
    v146 = *(v0 + 1120);
    if (v136)
    {
      v147 = sub_22C755080(v137, *(v0 + 1136), v138, v139, v140, v141, v142, v143, v182, v183, v184, v185, v186, v187, v188, v189, v190);
      (*(v200 + 40))(v147);
      v148 = sub_22C75506C();
      v149(v148);
    }

    else
    {
      sub_22C36ED48(v116 + 8 * (v135 >> 6));
      *(*(v116 + 48) + 8 * v135) = v200;
      v158 = sub_22C755080(v150, v151, v152, v153, v154, v155, v156, v157, v182, v183, v184, v185, v186, v187, v188, v189, v190);
      (*(v200 + 32))(v158);
      v159 = sub_22C75506C();
      v106 = v160(v159);
      v161 = *(v116 + 16);
      v162 = __OFADD__(v161, 1);
      v163 = v161 + 1;
      if (v162)
      {
        goto LABEL_62;
      }

      *(v116 + 16) = v163;
    }

    v106 = v191;
    v117 = v202 + 1;
    v118 += 5;
    if (v194 == v202 + 1)
    {

      v111 = v184;
      v110 = v185;
      v112 = v186;
      v115 = v183;
      goto LABEL_48;
    }
  }

  v137 = sub_22C628CD4(v200);
  v113 = v0 + 696;
  if ((v136 & 1) == (v144 & 1))
  {
    v135 = v137;
    goto LABEL_42;
  }

  sub_22C36FCB0();

  return sub_22C90B54C();
}

uint64_t sub_22C751550()
{
  sub_22C369980();
  *(v1 + 1392) = v0;
  if (v0)
  {
    v2 = *(v1 + 1384);

    v3 = sub_22C751EBC;
  }

  else
  {
    v3 = sub_22C7515CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C7515CC()
{
  sub_22C3749D8();
  v1 = v0[174];
  v2 = v0[167];
  v0[175] = v0[115];
  v3 = v0[116];
  v4 = v0[117];
  v0[176] = v4;

  v5 = sub_22C5F04F8(v2);
  v0[177] = v5;
  v0[178] = v1;
  v6 = v0[173];
  if (v1)
  {
    v7 = v0[173];

    v8 = sub_22C372434();
    v11 = v0 + 102;
LABEL_3:

    return MEMORY[0x282200920](v8, v9, v10, v11);
  }

  v12 = v5;
  if (!v5)
  {
    v25 = v0[155];
    v26 = v0[173];

    sub_22C903FAC();
    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();
    if (sub_22C37B204(v28))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C37F89C();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v34 = v0[168];
    v35 = v0[155];
    v36 = v0[152];
    v37 = v0[151];

    v38 = sub_22C36BAFC();
    v34(v38);
    sub_22C5F2300();
    v0[181] = swift_allocError();
    *v39 = 0xD000000000000036;
    v39[1] = 0x800000022C934930;
    swift_willThrow();

    v8 = sub_22C372434();
    v11 = v0 + 118;
    goto LABEL_3;
  }

  v13 = v0[170];
  v14 = v0[169];
  v15 = v0[167];
  v16 = v0[147];
  sub_22C90A73C();
  sub_22C36C640(v16, 0, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v12;

  sub_22C8FAAA0(0, 0, v16, &unk_22C9251F0, v17);

  sub_22C3770B0(v16, &qword_27D9BBB48, &qword_22C910F00);
  sub_22C75B4D4(v15, v12, v3, v4, v6, v18, v19, v20, v41, v42, v43, v44, v45, v46, v47, v48, v49, v0, v50, v51);

  v21 = swift_task_alloc();
  v0[179] = v21;
  *v21 = v0;
  v21[1] = sub_22C7518E8;
  v22 = v0[167];
  v23 = v0[136];
  v24 = v0[135];

  return sub_22C7538F8();
}

uint64_t sub_22C7518E8()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 1432);
  v3 = *(v1 + 1408);
  v4 = *v0;
  sub_22C369970();
  *v5 = v4;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C7519E8()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[166];
  v4 = v0[149];
  sub_22C754A9C(v0[129], v4);

  sub_22C74434C(v2, v4, v3, (v0 + 97));
  v0[180] = v1;
  v5 = v0[175];

  if (v1)
  {
    v6 = sub_22C7522C4;
    v7 = v0 + 2;
    v8 = v0 + 115;
    v9 = v0 + 124;
  }

  else
  {
    v6 = sub_22C751AC4;
    v7 = v0 + 2;
    v8 = v0 + 115;
    v9 = v0 + 130;
  }

  return MEMORY[0x282200920](v7, v8, v6, v9);
}

uint64_t sub_22C751AD8()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1328);
  v5 = *(v0 + 1320);
  v15 = *(v0 + 1376);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 1248);
  v21 = *(v0 + 1240);
  v22 = *(v0 + 1232);
  v23 = *(v0 + 1224);
  v24 = *(v0 + 1200);
  v25 = *(v0 + 1192);
  v26 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v27 = *(v0 + 1160);
  v28 = *(v0 + 1152);
  v29 = *(v0 + 1144);
  v30 = *(v0 + 1136);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 984);

  swift_setDeallocating();
  v10 = *(v4 + 16);

  (*(v7 + 8))(v6, v8);
  sub_22C7524B8(v5, "JointResolver.resolve");

  v11 = *(v0 + 776);
  v12 = *(v0 + 792);
  *(v9 + 32) = *(v0 + 808);
  *v9 = v11;
  *(v9 + 16) = v12;

  sub_22C369A24();

  return v13();
}

uint64_t sub_22C7524B8(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  v3 = sub_22C369824(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v7 = sub_22C90634C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C90636C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C90365C();
  v25 = sub_22C90635C();
  sub_22C90638C();
  v43 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v42 = v10;

    sub_22C9063BC();

    v26 = *(v44 + 88);
    v27 = sub_22C36A724();
    if (v28(v27) == *MEMORY[0x277D85B00])
    {
      v29 = 0;
      v30 = 0;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      v32 = *(v44 + 8);
      v33 = sub_22C36A724();
      v34(v33);
      v45 = "%s";
      v30 = 2;
      v29 = 1;
    }

    v35 = v19;
    v36 = sub_22C36FB44();
    v37 = sub_22C370060();
    v47 = v37;
    *v36 = v30;
    *(v36 + 1) = v29;
    *(v36 + 2) = 2080;
    sub_22C90366C();
    v38 = sub_22C90AF7C();
    v40 = sub_22C36F9F4(v38, v39, &v47);

    *(v36 + 4) = v40;
    v41 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v25, v43, v41, a2, v45, v36, 0xCu);
    sub_22C36FF94(v37);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v42 + 8))(v15, v7);
    return (*(v35 + 8))(v24, v16);
  }

  else
  {

    (*(v10 + 8))(v15, v7);
    return (*(v19 + 8))(v24, v16);
  }
}

uint64_t sub_22C7527F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22C9063DC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7528B4, 0, 0);
}

uint64_t sub_22C7528B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA18();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  v23 = v20[5];
  v24 = v20[2];
  sub_22C903FAC();

  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();

  v27 = os_log_type_enabled(v25, v26);
  v29 = v20[4];
  v28 = v20[5];
  v30 = v20[3];
  if (v27)
  {
    v31 = v20[2];
    v32 = sub_22C36FB44();
    v33 = sub_22C370060();
    a9 = v33;
    *v32 = 136315138;
    sub_22C7529F0();
    v36 = sub_22C36F9F4(v34, v35, &a9);

    *(v32 + 4) = v36;
    sub_22C36BE40(&dword_22C366000, v37, v38, "[MODEL_INPUT]:\n%s");
    sub_22C36FF94(v33);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v29 + 8))(v28, v30);
  v39 = v20[5];

  sub_22C369A24();
  sub_22C372034();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

void sub_22C7529F0()
{
  v0 = sub_22C7542E0();
  v1 = v0;
  v2 = 0;
  v4 = v0 + 64;
  v3 = *(v0 + 64);
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  v44 = v0;
  v46 = v8;
  v47 = v0 + 64;
  if ((v6 & v3) != 0)
  {
    do
    {
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v2 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v11);

      v16 = v15;
      v17 = [v16 multiArrayValue];
      v51 = v7;
      if (v17)
      {
        v49 = v17;
        v50 = v16;
        v18 = [v17 shape];
        sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
        v19 = sub_22C90A5EC();

        if (v19 >> 62)
        {
          v20 = sub_22C90B1BC();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v13;
        if (v20)
        {
          sub_22C3B5E2C();
          if (v20 < 0)
          {
            goto LABEL_29;
          }

          v45 = v2;
          v21 = 0;
          v52 = v19 & 0xC000000000000001;
          v22 = v14;
          v23 = v19;
          v24 = v20;
          do
          {
            if (v52)
            {
              v25 = MEMORY[0x2318B8460](v21, v19);
            }

            else
            {
              v25 = *(v19 + 8 * v21 + 32);
            }

            v26 = v25;
            v27 = [v26 description];
            v28 = sub_22C90A11C();
            v30 = v29;

            v31 = *(v9 + 16);
            if (v31 >= *(v9 + 24) >> 1)
            {
              sub_22C3B5E2C();
            }

            ++v21;
            *(v9 + 16) = v31 + 1;
            v32 = v9 + 16 * v31;
            *(v32 + 32) = v28;
            *(v32 + 40) = v30;
            v19 = v23;
          }

          while (v24 != v21);
          v14 = v22;

          v1 = v44;
          v33 = MEMORY[0x277D84F90];
          v2 = v45;
        }

        else
        {

          v33 = v9;
        }

        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v40 = sub_22C90A04C();
        v42 = v41;

        sub_22C90AF5C();

        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v43 = sub_22C7545AC(v49);
        MEMORY[0x2318B7850](v43);

        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v40, v42);

        MEMORY[0x2318B7850](0xA78697274614D20, 0xE800000000000000);
        MEMORY[0x2318B7850](v14, v48);

        sub_22C754678(v49, v33);
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](8224, 0xE200000000000000);

        MEMORY[0x2318B7850](10, 0xE100000000000000);

        v8 = v46;
        v4 = v47;
        v9 = v33;
        v34 = v50;
      }

      else
      {
        v53 = v14;
        v54 = v13;
        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v34 = v16;
        v35 = v16;
        v36 = [v35 description];
        v37 = sub_22C90A11C();
        v39 = v38;

        MEMORY[0x2318B7850](v37, v39);
        v9 = MEMORY[0x277D84F90];

        MEMORY[0x2318B7850](v53, v54);

        MEMORY[0x2318B7850](10, 0xE100000000000000);
      }

      v7 = (v51 - 1) & v51;
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_22C752EBC()
{
  v0 = sub_22C7542E0();
  v1 = v0;
  v2 = 0;
  v4 = v0 + 64;
  v3 = *(v0 + 64);
  v5 = 1 << *(v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  v44 = v0;
  v46 = v8;
  v47 = v0 + 64;
  if ((v6 & v3) != 0)
  {
    do
    {
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v2 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v11);

      v16 = v15;
      v17 = [v16 multiArrayValue];
      v51 = v7;
      if (v17)
      {
        v49 = v17;
        v50 = v16;
        v18 = [v17 shape];
        sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
        v19 = sub_22C90A5EC();

        if (v19 >> 62)
        {
          v20 = sub_22C90B1BC();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v13;
        if (v20)
        {
          sub_22C3B5E2C();
          if (v20 < 0)
          {
            goto LABEL_29;
          }

          v45 = v2;
          v21 = 0;
          v52 = v19 & 0xC000000000000001;
          v22 = v14;
          v23 = v19;
          v24 = v20;
          do
          {
            if (v52)
            {
              v25 = MEMORY[0x2318B8460](v21, v19);
            }

            else
            {
              v25 = *(v19 + 8 * v21 + 32);
            }

            v26 = v25;
            v27 = [v26 description];
            v28 = sub_22C90A11C();
            v30 = v29;

            v31 = *(v9 + 16);
            if (v31 >= *(v9 + 24) >> 1)
            {
              sub_22C3B5E2C();
            }

            ++v21;
            *(v9 + 16) = v31 + 1;
            v32 = v9 + 16 * v31;
            *(v32 + 32) = v28;
            *(v32 + 40) = v30;
            v19 = v23;
          }

          while (v24 != v21);
          v14 = v22;

          v1 = v44;
          v33 = MEMORY[0x277D84F90];
          v2 = v45;
        }

        else
        {

          v33 = v9;
        }

        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v40 = sub_22C90A04C();
        v42 = v41;

        sub_22C90AF5C();

        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v43 = sub_22C7545AC(v49);
        MEMORY[0x2318B7850](v43);

        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v40, v42);

        MEMORY[0x2318B7850](0xA78697274614D20, 0xE800000000000000);
        MEMORY[0x2318B7850](v14, v48);

        sub_22C754678(v49, v33);
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](8224, 0xE200000000000000);

        MEMORY[0x2318B7850](10, 0xE100000000000000);

        v8 = v46;
        v4 = v47;
        v9 = v33;
        v34 = v50;
      }

      else
      {
        v53 = v14;
        v54 = v13;
        MEMORY[0x2318B7850](2112032, 0xE300000000000000);
        v34 = v16;
        v35 = v16;
        v36 = [v35 description];
        v37 = sub_22C90A11C();
        v39 = v38;

        MEMORY[0x2318B7850](v37, v39);
        v9 = MEMORY[0x277D84F90];

        MEMORY[0x2318B7850](v53, v54);

        MEMORY[0x2318B7850](10, 0xE100000000000000);
      }

      v7 = (v51 - 1) & v51;
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_22C753388(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22C7533A8, 0, 0);
}

uint64_t sub_22C7533A8()
{
  sub_22C369980();
  v1 = v0[3];
  v0[4] = *(v0[2] + 16);

  v2 = sub_22C36BA00();

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_22C753414()
{
  v1 = *(v0[4] + 112);
  sub_22C8FE450(v0[3]);
  v2 = v0[3];
  sub_22C73967C();

  v3 = v0[1];
  v4 = sub_22C36BA00();

  return v5(v4);
}

uint64_t sub_22C7534F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C7535E4;

  return v6();
}

uint64_t sub_22C7535E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A3C();
  v9 = v8;
  v10 = *(v8 + 24);
  v11 = *v4;
  sub_22C369970();
  *v12 = v11;

  if (!v3)
  {
    v13 = *(v9 + 16);
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_22C7536FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22C9063DC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C7537BC, 0, 0);
}

uint64_t sub_22C7537BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA18();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  v23 = v20[5];
  v24 = v20[2];
  sub_22C903FAC();

  v25 = sub_22C9063CC();
  v26 = sub_22C90AABC();

  v27 = os_log_type_enabled(v25, v26);
  v29 = v20[4];
  v28 = v20[5];
  v30 = v20[3];
  if (v27)
  {
    v31 = v20[2];
    v32 = sub_22C36FB44();
    v33 = sub_22C370060();
    a9 = v33;
    *v32 = 136315138;
    sub_22C752EBC();
    v36 = sub_22C36F9F4(v34, v35, &a9);

    *(v32 + 4) = v36;
    sub_22C36BE40(&dword_22C366000, v37, v38, "[MODEL_OUTPUT]:\n%s");
    sub_22C36FF94(v33);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v29 + 8))(v28, v30);
  v39 = v20[5];

  sub_22C369A24();
  sub_22C372034();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_22C7538F8()
{
  sub_22C369980();
  v0[10] = v1;
  v0[11] = v2;
  v0[8] = v3;
  v0[9] = v4;
  v0[6] = v5;
  v0[7] = v6;
  v7 = sub_22C9063DC();
  v0[12] = v7;
  sub_22C3699B8(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v0[14] = sub_22C36D0D4();
  v0[15] = swift_task_alloc();
  v11 = sub_22C90363C();
  v0[16] = v11;
  sub_22C3699B8(v11);
  v0[17] = v12;
  v14 = *(v13 + 64) + 15;
  v0[18] = swift_task_alloc();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C753A04()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, *MEMORY[0x277D1EC20], v3);
  v4 = sub_22C90362C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22C753BE0;
    v6 = v0[6];

    return sub_22C753F98();
  }

  else
  {
    v8 = v0[14];
    sub_22C903FAC();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AABC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    if (v11)
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C369A04(&dword_22C366000, v15, v16, "jointResolverCurareLogging feature flag is disabled.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = *(v13 + 8);
    v18 = sub_22C36BAFC();
    v19(v18);
    v20 = v0[18];
    v21 = v0[14];
    v22 = v0[15];

    sub_22C369A24();

    return v23();
  }
}

uint64_t sub_22C753BE0()
{
  sub_22C36FB38();
  v1 = *v0;
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;
  v4 = *(v1 + 152);
  v9 = *v0;
  *(v2 + 160) = v5;

  v6 = swift_task_alloc();
  *(v2 + 168) = v6;
  *v6 = v9;
  v6[1] = sub_22C753D34;
  v7 = *(v1 + 56);

  return sub_22C753F98();
}

uint64_t sub_22C753D34()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = v1;
  v3 = *(v1 + 168);
  v9 = *v0;
  *(v2 + 176) = v4;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C753E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[22];
  v14 = v12[20];
  v41 = v12[15];
  v15 = v12[10];
  v16 = v12[11];
  v18 = v12[8];
  v17 = v12[9];
  sub_22C900F8C();
  v12[2] = v14;
  v12[3] = v13;
  v12[4] = v15;
  v12[5] = v16;
  sub_22C7549F4();
  sub_22C754A48();

  sub_22C900F7C();

  sub_22C903FAC();
  v19 = sub_22C9063CC();
  LOBYTE(v14) = sub_22C90AABC();
  v20 = os_log_type_enabled(v19, v14);
  v21 = v12[15];
  v22 = v12[12];
  v23 = v12[13];
  if (v20)
  {
    sub_22C3720F4();
    *swift_slowAlloc() = 0;
    sub_22C369A04(&dword_22C366000, v24, v25, "successfully logged JointResolverCurareEvent in FS.");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v26 = *(v23 + 8);
  v27 = sub_22C36A724();
  v28(v27);
  v29 = v12[18];
  v30 = v12[14];
  v31 = v12[15];

  sub_22C369A24();
  sub_22C372034();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, a10, a11, a12);
}

void sub_22C753FB8()
{
  v4 = *(v1 + 16);
  v5 = sub_22C7542E0();
  v6 = sub_22C754F90(v5);
  v97 = v15;
  v99 = v16;
  if (v3)
  {
    while (1)
    {
      v17 = v14;
LABEL_6:
      sub_22C754FD0(v6, v7, v8, v9, v10, v11, v12, v13, v91, v94, v97, v99, v101, v104, v107, v109);
      v4 = v4;
      v18 = [v4 multiArrayValue];
      if (v18)
      {
        sub_22C38632C(v18, v19, v20, v21, v22, v23, v24, v25, v92, v95);
        sub_22C754678(v26, MEMORY[0x277D84F90]);
        v103 = v27;
        v105 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_22C37A324();
        sub_22C372CD0(v29, v30);
        if (v32)
        {
          goto LABEL_30;
        }

        v33 = v31;
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C755060();
        if (sub_22C90B15C())
        {
          v4 = v110;
          v34 = sub_22C370018();
          sub_22C36E2BC(v34, v35);
          if ((v33 & 1) != (v36 & 1))
          {
            goto LABEL_26;
          }
        }

        if (v33)
        {

          sub_22C755038(v37, v38, v39, v40, v41, v42, v43, v44, v93, v96, v98, v100, v103, v105, v107, v109, v110);

          goto LABEL_22;
        }

        v60 = v110;
        sub_22C381BA0();
        sub_22C36ED48(v61);
        sub_22C38AA74(v62, v63, v64, v65, v66, v67, v68, v69, v93, v96, v98, v100, v103, v105);

        sub_22C6341D8();
        if (v32)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v45 = v4;
        v4 = [v45 description];
        v106 = sub_22C90A11C();
        v108 = v46;

        swift_isUniquelyReferenced_nonNull_native();
        v47 = sub_22C75500C();
        sub_22C372CD0(v47, v48);
        if (v32)
        {
          goto LABEL_31;
        }

        v50 = v49;
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C755060();
        if (sub_22C90B15C())
        {
          v4 = v110;
          sub_22C36E2BC(v0, v2);
          if ((v50 & 1) != (v51 & 1))
          {
LABEL_26:
            sub_22C378644();

            sub_22C90B54C();
            return;
          }
        }

        if (v50)
        {

          sub_22C37034C(v52, v53, v54, v55, v56, v57, v58, v59, v92, v95, v98, v100, v102, v106, v108, v109, v110);

          goto LABEL_22;
        }

        v60 = v110;
        sub_22C381BA0();
        sub_22C36ED48(v71);
        sub_22C37F4C4(v72, v73, v74, v75, v76, v77, v78, v79, v92, v95, v98, v100, v102, v106, v108);
        sub_22C6341D8();
        if (v32)
        {
          goto LABEL_33;
        }
      }

      *(v60 + 16) = v70;
LABEL_22:
      v14 = v17;
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      sub_22C3805C4(v80, v81, v82, v83, v84, v85, v86, v87, v91, v94);
      sub_22C378644();

      __asm { BRAA            X2, X16 }
    }

    ++v14;
    if (*(v16 + 8 * v17))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_22C75427C()
{
  v1 = *(v0 + 16);

  sub_22C36FF94((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_22C7542E0()
{
  v1 = [v0 featureNames];
  v2 = sub_22C90A8BC();

  sub_22C36E278(0, &qword_28142F9C8, 0x277CBFEF8);
  v3 = sub_22C909F0C();
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(v2 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_22C90A0EC();
    v15 = [v31 featureValueForName_];

    if (v15)
    {
      v30 = v15;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_22C36E2BC(v13, v12);
      v29 = v17;
      if (__OFADD__(v3[2], (v17 & 1) == 0))
      {
        goto LABEL_22;
      }

      v18 = v16;
      sub_22C3A5908(&qword_27D9BFCA0, &unk_22C925188);
      if (sub_22C90B15C())
      {
        v19 = sub_22C36E2BC(v13, v12);
        v21 = v29;
        if ((v29 & 1) != (v20 & 1))
        {
          goto LABEL_24;
        }

        v18 = v19;
      }

      else
      {
        v21 = v29;
      }

      if (v21)
      {
        v22 = v3[7];
        v23 = *(v22 + 8 * v18);
        *(v22 + 8 * v18) = v30;
      }

      else
      {
        sub_22C36ED48(&v3[v18 >> 6]);
        v24 = (v3[6] + 16 * v18);
        *v24 = v13;
        v24[1] = v12;
        v23 = v30;
        *(v3[7] + 8 * v18) = v30;
        v25 = v3[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v3[2] = v27;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v3;
    }

    v6 = *(v2 + 56 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C7545AC(void *a1)
{
  v1 = [a1 dataType];
  if (v1 == 131104)
  {
    return 0x3233746E49;
  }

  if (v1 == 65568)
  {
    return 0x323374616F6C46;
  }

  v2 = 0x6E776F6E6B6E553CLL;
  if (v1 == 65552)
  {
    v2 = 0x363174616F6C46;
  }

  if (v1 == 65600)
  {
    return 0x656C62756F44;
  }

  else
  {
    return v2;
  }
}

void sub_22C754690(void *a1, unint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = [a1 shape];
  sub_22C36E278(0, &qword_28142F978, 0x277CCABB0);
  v6 = sub_22C90A5EC();

  v7 = sub_22C36E2B8(v6);

  v8 = sub_22C36E2B8(a2);
  if (v7 == v8)
  {
    v9 = sub_22C90A5DC();
    v10 = [a1 objectForKeyedSubscript_];

    v11 = [v10 description];
    sub_22C90A11C();

LABEL_25:
    sub_22C36BA00();
    return;
  }

  inited = v8;
  v13 = [a1 shape];
  v14 = sub_22C90A5EC();

  sub_22C633A2C(inited, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  v15 = *(v14 + 8 * inited + 32);
LABEL_5:
  v16 = v15;

  v17 = sub_22C90A90C();

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (!v17)
    {
LABEL_24:
      MEMORY[0x2318B7850](93, 0xE100000000000000);
      goto LABEL_25;
    }

    v18 = 0;
    v19 = a2 >> 62;
    while (1)
    {
      sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C922290;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (v19)
      {
        v20 = sub_22C90B1BC();
      }

      else
      {
        v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v15 = MEMORY[0x2318B8460](inited, v14);
        goto LABEL_5;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v19)
        {
          goto LABEL_18;
        }

        v22 = a2 & 0xFFFFFFFFFFFFFF8;
        v14 = a2;
        if (v21 <= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }
      }

      else if (v19)
      {
LABEL_18:
        sub_22C90B1BC();
        goto LABEL_19;
      }

      v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
      v14 = sub_22C90AF9C();
      v22 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      if (*(v22 + 16) >= *(v22 + 24) >> 1)
      {
        goto LABEL_27;
      }

      ++v18;
      swift_arrayInitWithCopy();

      ++*(v22 + 16);
      v24 = a3(a1, v14);
      v26 = v25;

      MEMORY[0x2318B7850](v24, v26);

      if (v18 < v17)
      {
        MEMORY[0x2318B7850](44, 0xE100000000000000);
      }

      if (v17 == v18)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
}

unint64_t sub_22C7549F4()
{
  result = qword_27D9BFC90;
  if (!qword_27D9BFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC90);
  }

  return result;
}

unint64_t sub_22C754A48()
{
  result = qword_27D9BFC98;
  if (!qword_27D9BFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFC98);
  }

  return result;
}

uint64_t sub_22C754A9C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ModelInputVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C754B00()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v7 = sub_22C38341C(v5);

  return sub_22C7527F4(v7, v8, v9, v10);
}

uint64_t sub_22C754B94()
{
  sub_22C369980();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22C754C24;
  v5 = sub_22C36BA00();

  return sub_22C753388(v5, v6);
}

uint64_t sub_22C754C24()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_22C370018();

  return v7(v6);
}

uint64_t sub_22C754D24()
{
  sub_22C36FB38();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C46BC08;

  return sub_22C7534F8(v2, v4);
}

unint64_t sub_22C754DD0()
{
  result = qword_2814345D0[0];
  if (!qword_2814345D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814345D0);
  }

  return result;
}

uint64_t sub_22C754E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C754E64()
{
  sub_22C36FB38();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v7 = sub_22C38341C(v5);

  return sub_22C7536FC(v7, v8, v9, v10);
}

unint64_t sub_22C754EF8()
{
  result = qword_281431B68[0];
  if (!qword_281431B68[0])
  {
    type metadata accessor for PlanResolutionCachableModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281431B68);
  }

  return result;
}

uint64_t sub_22C754F50()
{
  sub_22C372F94(&unk_22C9251D0);
}

uint64_t sub_22C754F90(uint64_t result)
{
  v1 = -1;
  v2 = -1 << *(result + 32);
  if (-v2 < 64)
  {
    v1 = ~(-1 << -v2);
  }

  v3 = v1 & *(result + 64);
  return result;
}

uint64_t sub_22C754FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = __clz(__rbit64(v17)) | (v16 << 6);
  v20 = (*(a16 + 48) + 16 * v19);
  v22 = *v20;
  v21 = v20[1];
  v23 = *(*(a16 + 56) + 8 * v19);
}

uint64_t sub_22C75500C()
{

  return sub_22C36E2BC(v1, v0);
}

uint64_t sub_22C755038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (*(a17 + 56) + 16 * v17);
  v20 = v19[1];
  *v19 = a13;
  v19[1] = a14;
}

uint64_t sub_22C7550A4()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v44[2] = v4;
  v44[3] = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v44[1] = v8 - v7;
  v46 = sub_22C90634C();
  v9 = sub_22C369824(v46);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v44 - v17;
  v19 = sub_22C90636C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v44 - v28;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v45 = *(v22 + 8);
  v45(v27, v19);
  v30 = sub_22C90635C();
  v31 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v32 = sub_22C36D240();
    v44[0] = v1;
    v33 = v32;
    *v32 = 0;
    v34 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v30, v31, v34, "JointResolverFeaturizer.init", "", v33, 2u);
    v1 = v44[0];
    sub_22C3699EC();
  }

  v35 = v46;
  (*(v11 + 16))(v16, v18, v46);
  v36 = sub_22C9063AC();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_22C90639C();
  (*(v11 + 8))(v18, v35);
  v45(v29, v19);
  sub_22C90337C();
  v40 = sub_22C90336C();
  *(&v48 + 1) = sub_22C90334C();
  v49 = &off_283FBFA68;
  sub_22C36D548(&v47);
  sub_22C90335C();

  v41 = v48;
  *(v1 + 24) = v47;
  *(v1 + 40) = v41;
  *(v1 + 56) = v49;
  type metadata accessor for CandidateSimilarityClient();
  swift_allocObject();
  sub_22C73D3E0();
  *(v1 + 16) = v42;
  sub_22C757108(v39, "JointResolverFeaturizer.init");

  return v1;
}

uint64_t sub_22C755550()
{
  sub_22C369980();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for JointResolution.CandidateInteraction(0);
  v1[21] = v4;
  sub_22C3699B8(v4);
  v1[22] = v5;
  v7 = *(v6 + 64);
  v1[23] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BFCC8, &qword_22C925308);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v1[26] = v11;
  sub_22C3699B8(v11);
  v1[27] = v12;
  v14 = *(v13 + 64);
  v1[28] = sub_22C36D0D4();
  v1[29] = swift_task_alloc();
  v15 = sub_22C9032FC();
  v1[30] = v15;
  sub_22C3699B8(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = sub_22C36D0D4();
  v1[33] = swift_task_alloc();
  v19 = type metadata accessor for JointResolution.DeviceContext();
  v1[34] = v19;
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v22 = type metadata accessor for JointResolution.TupleInteraction(0);
  v1[37] = v22;
  sub_22C3699B8(v22);
  v1[38] = v23;
  v25 = *(v24 + 64);
  v1[39] = sub_22C3699D4();
  v26 = sub_22C90063C();
  v1[40] = v26;
  sub_22C3699B8(v26);
  v1[41] = v27;
  v29 = *(v28 + 64);
  v1[42] = sub_22C3699D4();
  v30 = sub_22C9032EC();
  v1[43] = v30;
  sub_22C3699B8(v30);
  v1[44] = v31;
  v33 = *(v32 + 64);
  v1[45] = sub_22C36D0D4();
  v1[46] = swift_task_alloc();
  v34 = type metadata accessor for JointResolverLocationSignalProvider();
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v37 = sub_22C9032BC();
  v1[49] = v37;
  sub_22C3699B8(v37);
  v1[50] = v38;
  v40 = *(v39 + 64);
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v41 = sub_22C3A5908(&qword_27D9BFCD0, &qword_22C925310);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  v1[54] = sub_22C3699D4();
  v44 = sub_22C90332C();
  v1[55] = v44;
  sub_22C3699B8(v44);
  v1[56] = v45;
  v47 = *(v46 + 64);
  v1[57] = sub_22C3699D4();
  v48 = sub_22C90634C();
  v1[58] = v48;
  sub_22C3699B8(v48);
  v1[59] = v49;
  v51 = *(v50 + 64);
  v1[60] = sub_22C36D0D4();
  v1[61] = swift_task_alloc();
  v52 = sub_22C90636C();
  v1[62] = v52;
  sub_22C3699B8(v52);
  v1[63] = v53;
  v55 = *(v54 + 64);
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v56 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v56, v57, v58);
}

void sub_22C7559B8()
{
  v347 = v0;
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v6 = *(v3 + 8);
  v7 = sub_22C37170C();
  v340 = v8;
  (v8)(v7);
  v9 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v10 = v0[61];
    *sub_22C36D240() = 0;
    v11 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v12, v13, v11, "JointResolverFeaturizer.fetchInteractions", "");
    sub_22C3699EC();
  }

  v14 = v0[65];
  v16 = v0[61];
  v15 = v0[62];
  v18 = v0[59];
  v17 = v0[60];
  v19 = v0[58];
  v20 = v0[20];

  (*(v18 + 16))(v17, v16, v19);
  v21 = sub_22C9063AC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_22C3707B4();
  v312 = sub_22C90639C();
  (*(v18 + 8))(v16, v19);
  v340(v14, v15);
  sub_22C4E719C(v20 + 24, (v0 + 7), &qword_27D9BFCD8, &qword_22C925318);
  if (!v0[10])
  {
    goto LABEL_57;
  }

  v24 = v0[18];
  sub_22C36C730((v0 + 7), (v0 + 2));
  v25 = 0;
  v321 = v24 + 32;
  v323 = *(v24 + 16);
  v319 = MEMORY[0x277D84F90];
  v327 = v0;
LABEL_5:
  v26 = v25;
  while (v26 != v323)
  {
    if (v26 >= v323)
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      return;
    }

    if (__OFADD__(v26, 1))
    {
      goto LABEL_169;
    }

    v325 = v26 + 1;
    v329 = *(v321 + 8 * v26);
    v331 = *(v329 + 16);

    v0 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_10:
    v341 = v27;
    while (v0 != v331)
    {
      if (v0 >= *(v329 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v28 = (v329 + 32 + 40 * v0);
      v30 = *v28;
      v29 = v28[1];
      v32 = v28[2];
      v31 = v28[3];
      v33 = v28[4];
      v0 = (v0 + 1);
      sub_22C5F8D4C();

      v34 = sub_22C909F0C();
      if (v30)
      {
        v35 = 0;
      }

      else
      {
        v35 = v29 == 0xE000000000000000;
      }

      if (!v35 && (sub_22C90B4FC() & 1) == 0 || (!v32 ? (v36 = v31 == 0xE000000000000000) : (v36 = 0), !v36 && (sub_22C90B4FC() & 1) == 0))
      {

LABEL_43:
        swift_bridgeObjectRelease_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = *(v27 + 16);
          sub_22C36D270();
          sub_22C594258();
          v27 = v53;
        }

        v50 = *(v27 + 16);
        v49 = *(v27 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22C36A958(v49);
          sub_22C594258();
          v27 = v54;
        }

        *(v27 + 16) = v50 + 1;
        v51 = (v27 + 40 * v50);
        v51[4] = v30;
        v51[5] = v29;
        v51[6] = v32;
        v51[7] = v31;
        v51[8] = v33;
        goto LABEL_10;
      }

      v336 = v30;
      if (v33 != v34)
      {
        if (*(v33 + 16) != *(v34 + 16))
        {
LABEL_42:

          v30 = v336;
          v27 = v341;
          goto LABEL_43;
        }

        v37 = 0;
        v38 = 1 << *(v33 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & *(v33 + 64);
        v41 = (v38 + 63) >> 6;
        while (v40)
        {
          v42 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          v43 = v42 | (v37 << 6);
LABEL_35:
          v46 = *(*(v33 + 48) + v43) | (*(*(v33 + 56) + 4 * v43) << 32);
LABEL_36:
          if (v46 == 8)
          {
            goto LABEL_41;
          }

          v47 = sub_22C633A1C(v46);
          if ((v48 & 1) == 0 || *(*(v34 + 56) + 4 * v47) != *(&v46 + 1))
          {
            goto LABEL_42;
          }
        }

        while (1)
        {
          v44 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v44 >= v41)
          {
            v40 = 0;
            v46 = 8;
            goto LABEL_36;
          }

          v45 = *(v33 + 64 + 8 * v44);
          ++v37;
          if (v45)
          {
            v40 = (v45 - 1) & v45;
            v43 = __clz(__rbit64(v45)) | (v44 << 6);
            v37 = v44;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_57:
        sub_22C36DD28((v0 + 7), &qword_27D9BFCD8, &qword_22C925318);
        sub_22C5F2300();
        swift_allocError();
        *v61 = 0xD000000000000014;
        v61[1] = 0x800000022C934A90;
        swift_willThrow();
LABEL_58:
        v62 = v0[65];
        v63 = v0[64];
        v64 = v0[60];
        v65 = v0[61];
        v66 = v0[57];
        v68 = v0[53];
        v67 = v0[54];
        v69 = v0[52];
        v304 = v0[51];
        v307 = v0[48];
        v310 = v0[47];
        sub_22C371C50();
        sub_22C757108(v312, "JointResolverFeaturizer.fetchInteractions");

        v70 = v0[1];

        v70();
        return;
      }

LABEL_41:
      swift_bridgeObjectRelease_n();

      v27 = v341;
    }

    if (*(v27 + 16))
    {
      v55 = v319;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v319 + 16);
        sub_22C36D270();
        sub_22C59434C();
        v55 = v59;
      }

      v25 = v325;
      v57 = *(v55 + 16);
      v56 = *(v55 + 24);
      v319 = v55;
      if (v57 >= v56 >> 1)
      {
        sub_22C36A958(v56);
        sub_22C59434C();
        v25 = v325;
        v319 = v60;
      }

      *(v319 + 16) = v57 + 1;
      *(v319 + 8 * v57 + 32) = v27;
      v0 = v327;
      goto LABEL_5;
    }

    v26 = v325;
    v0 = v327;
  }

  v71 = *(v319 + 16);
  v72 = MEMORY[0x277D84F90];
  if (v71)
  {
    v73 = v0[50];
    v345 = MEMORY[0x277D84F90];
    sub_22C3B76DC(0, v71, 0);
    v74 = 0;
    v75 = v345;
    v328 = v71;
    do
    {
      if (v74 >= *(v319 + 16))
      {
        goto LABEL_170;
      }

      v76 = *(v319 + 32 + 8 * v74);
      v77 = *(v76 + 16);
      if (v77)
      {
        v333 = v74;
        v337 = v75;
        *&v346[0] = v72;

        sub_22C3B76FC(0, v77, 0);
        v78 = v72;
        v79 = (v76 + 56);
        do
        {
          v80 = v327[53];
          v81 = *(v79 - 3);
          v82 = *(v79 - 2);
          v83 = *(v79 - 1);
          v84 = *v79;

          sub_22C90328C();
          *&v346[0] = v78;
          v86 = *(v78 + 16);
          v85 = *(v78 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_22C3B76FC(v85 > 1, v86 + 1, 1);
            v78 = *&v346[0];
          }

          v87 = v327[53];
          v88 = v327[49];
          *(v78 + 16) = v86 + 1;
          (*(v73 + 32))(v78 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v86, v87, v88);
          v79 += 5;
          --v77;
        }

        while (v77);

        v74 = v333;
        v75 = v337;
        v72 = MEMORY[0x277D84F90];
        v71 = v328;
      }

      else
      {
        v78 = v72;
      }

      v90 = *(v75 + 16);
      v89 = *(v75 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_22C3B76DC((v89 > 1), v90 + 1, 1);
      }

      ++v74;
      *(v75 + 16) = v90 + 1;
      *(v75 + 8 * v90 + 32) = v78;
    }

    while (v74 != v71);
    v0 = v327;
  }

  v91 = v0[54];
  sub_22C374168(v0 + 2, v0[5]);
  sub_22C90333C();
  v93 = v0[54];
  v92 = v0[55];

  sub_22C36D3E0(v93);
  if (v35)
  {
    v94 = v0[54];
    v95 = v0[28];

    sub_22C36DD28(v94, &qword_27D9BFCD0, &qword_22C925310);
    sub_22C90401C();
    v96 = sub_22C9063CC();
    v97 = sub_22C90AABC();
    if (sub_22C370048(v97))
    {
      v98 = sub_22C36D240();
      *v98 = 0;
      _os_log_impl(&dword_22C366000, v96, v97, "No interactions fetched", v98, 2u);
      sub_22C3699EC();
    }

    v99 = v327;
    v100 = v327[27];
    v101 = v327[28];
    v102 = v327[26];

    (*(v100 + 8))(v101, v102);
    v342 = MEMORY[0x277D84F90];
    v305 = MEMORY[0x277D84F90];
    goto LABEL_165;
  }

LABEL_81:
  v103 = v0[48];
  v104 = v0[44];
  v105 = v0[41];
  v315 = v0[37];
  v317 = v0[38];
  v332 = v0[34];
  v106 = v0[31];
  v107 = v0[19];
  (*(v0[56] + 32))(v0[57], v0[54], v0[55]);
  v0[12] = v107;
  v0[13] = 0;

  v294 = sub_22C3A5908(&qword_27D9BFCE0, &qword_22C925320);
  v301 = sub_22C75A618();
  sub_22C908B7C();
  v108 = sub_22C90330C();
  v109 = 0;
  v334 = *(v108 + 16);
  v338 = v108;
  v313 = v108 + 32;
  v299 = v319 + 32;
  v330 = *MEMORY[0x277D1F2D8];
  v326 = (v105 + 8);
  v280 = v104;
  v322 = (v106 + 88);
  v324 = (v104 + 8);
  LODWORD(v309) = *MEMORY[0x277D1F2B8];
  LODWORD(v306) = *MEMORY[0x277D1F2C8];
  LODWORD(v302) = *MEMORY[0x277D1F2E0];
  HIDWORD(v293) = *MEMORY[0x277D1F2C0];
  HIDWORD(v279) = *MEMORY[0x277D1F2B0];
  HIDWORD(v276) = *MEMORY[0x277D1F2D0];
  LODWORD(v276) = *MEMORY[0x277D1F298];
  HIDWORD(v275) = *MEMORY[0x277D1F2A0];
  LODWORD(v275) = *MEMORY[0x277D1F2A8];
  v274 = (v106 + 8);
  v305 = MEMORY[0x277D84F90];
LABEL_82:
  while (2)
  {
    if (v334 != v109)
    {
      if (v109 >= *(v338 + 16))
      {
        goto LABEL_172;
      }

      if (v109 >= *(v319 + 16))
      {
        v246 = v327[29];

        sub_22C90401C();
        v247 = sub_22C9063CC();
        v248 = sub_22C90AABC();
        if (sub_22C370048(v248))
        {
          v249 = sub_22C36FB44();
          *v249 = 134217984;
          *(v249 + 4) = v109;
          _os_log_impl(&dword_22C366000, v247, v248, "Row index %ld is not present in filteredTupleArray", v249, 0xCu);
          sub_22C3699EC();
        }

        v251 = v327[56];
        v250 = v327[57];
        v252 = v327[55];
        v253 = v327[48];
        v254 = v327[29];
        v255 = v327[26];
        v256 = v327[27];

        (*(v256 + 8))(v254, v255);
        sub_22C5F2300();
        swift_allocError();
        *v257 = 0xD00000000000002FLL;
        v257[1] = 0x800000022C934AB0;
        swift_willThrow();
        sub_22C36B5EC();
        sub_22C75A67C(v253, v258);
        (*(v251 + 8))(v250, v252);
        v0 = v327;
        sub_22C36FF94(v327 + 2);
        goto LABEL_58;
      }

      v110 = *(v313 + 8 * v109);
      v111 = v327[47];
      v112 = v327[48];
      v113 = *(v299 + 8 * v109);
      v327[14] = v327[19];
      v327[15] = 0;

      sub_22C908B7C();
      sub_22C36B5EC();
      sub_22C75A67C(v112, v114);
      sub_22C38BFB4();
      v115 = sub_22C36BA00();
      v118 = sub_22C75A6D4(v115, v116, v117);
      if (!*(v110 + 16))
      {

        ++v109;
        continue;
      }

      sub_22C377660(v118, v119, v120, v121, v122, v123, v124, v125, v273, v274, v275, v276, v277, v279, v280);
      v127 = v110 + v126;
      v287 = v110;
      v289 = *(v128 + 72);
      v295 = *(v128 + 16);
      v297 = v113;
      v291 = v109 + 1;
      v130 = v129 - 1;
      while (1)
      {
        v131 = v327[48];
        v132 = v327[46];
        v134 = v327[42];
        v133 = v327[43];
        v135 = v327[40];
        v136 = v327[36];
        v137 = v327[33];
        v138 = v327[30];
        v343 = v127;
        v295(v132);
        sub_22C9032CC();
        v139 = sub_22C75AD00(v346);
        (*v326)(v134, v135, v139);
        sub_22C9032CC();
        sub_22C75A73C(v136 + *(v332 + 20));
        sub_22C9032DC();
        (*v324)(v132, v133);
        v140 = (*v322)(v137, v138);
        if (v140 == v330)
        {
          break;
        }

        v142 = v305;
        v143 = v297;
        v144 = v130;
        if (v140 == v309)
        {
          v141 = 0;
          goto LABEL_92;
        }

        v109 = v291;
        if (v140 == v306)
        {
          v141 = 2;
        }

        else if (v140 == v302)
        {
          v141 = 4;
        }

        else if (v140 == HIDWORD(v293))
        {
          v141 = 3;
        }

        else if (v140 == HIDWORD(v279))
        {
          v141 = 1;
        }

        else if (v140 == HIDWORD(v276))
        {
          v141 = 6;
        }

        else if (v140 == v276)
        {
          v141 = 7;
        }

        else if (v140 == HIDWORD(v275))
        {
          v141 = 8;
        }

        else if (v140 == v275)
        {
          v141 = 9;
        }

        else
        {
          (*v274)(v327[33], v327[30]);
          v141 = 5;
        }

LABEL_93:
        v145 = v327[39];
        sub_22C36C27C(v327[36]);
        *(v145 + *(v315 + 20)) = v143;
        *(v145 + *(v315 + 24)) = v141;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = *(v142 + 16);
          sub_22C36D270();
          sub_22C5944C8();
          v142 = v160;
        }

        v154 = *(v142 + 16);
        v153 = *(v142 + 24);
        if (v154 >= v153 >> 1)
        {
          sub_22C36A958(v153);
          sub_22C5944C8();
          v142 = v161;
        }

        v155 = v327[39];
        *(v142 + 16) = v154 + 1;
        sub_22C75A75C(v155, v146, v147, v148, v149, v150, v151, v152, v273, v274, v275, v276, v277, v279, v280, v281, v283, v285, v287, v289, v291, v293, v294, v295, v297, v299, v301, v302, v305, v306, v309, v312, v313, v315, v317);
        sub_22C75A6D4(v158, v142 + v156 + *(v157 + 72) * v154, type metadata accessor for JointResolution.TupleInteraction);
        v305 = v142;
        if (!v144)
        {

          goto LABEL_82;
        }

        v130 = v144 - 1;
        v127 = v343 + v289;
      }

      v141 = 5;
      v142 = v305;
      v143 = v297;
      v144 = v130;
LABEL_92:
      v109 = v291;
      goto LABEL_93;
    }

    break;
  }

  v99 = v327;
  v162 = v327[57];
  v163 = v327[50];
  v316 = v327[21];
  v318 = v327[22];

  v164 = sub_22C90331C();
  v165 = 0;
  v167 = v164 + 64;
  v166 = *(v164 + 64);
  v286 = v164;
  v168 = -1;
  v169 = -1 << *(v164 + 32);
  if (-v169 < 64)
  {
    v168 = ~(-1 << -v169);
  }

  v170 = v168 & v166;
  v278 = (63 - v169) >> 6;
  v282 = v163 + 16;
  v296 = (v163 + 32);
  v171 = MEMORY[0x277D84F90];
  v284 = v163;
  v288 = (v163 + 8);
  v290 = v164 + 64;
  if ((v168 & v166) == 0)
  {
LABEL_121:
    while (1)
    {
      v172 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        goto LABEL_171;
      }

      if (v172 >= v278)
      {
        v300 = v165;
        v242 = v99[24];
        sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
        v243 = sub_22C3707B4();
        sub_22C36C640(v243, v244, 1, v245);
        v298 = 0;
        goto LABEL_126;
      }

      v170 = *(v167 + 8 * v172);
      ++v165;
      if (v170)
      {
        v300 = v172;
        goto LABEL_125;
      }
    }
  }

  while (1)
  {
    v300 = v165;
    v172 = v165;
LABEL_125:
    v173 = v99[52];
    v174 = v99[49];
    v175 = v99[24];
    v298 = (v170 - 1) & v170;
    v176 = __clz(__rbit64(v170)) | (v172 << 6);
    (*(v284 + 16))(v173, *(v286 + 48) + *(v284 + 72) * v176, v174);
    v177 = *(*(v286 + 56) + 8 * v176);
    v178 = sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
    v179 = *(v178 + 48);
    (*(v284 + 32))(v175, v173, v174);
    *(v175 + v179) = v177;
    v99 = v327;
    sub_22C36C640(v175, 0, 1, v178);

LABEL_126:
    v180 = v99[25];
    sub_22C4E7208(v99[24], v180, &qword_27D9BFCC8, &qword_22C925308);
    v181 = sub_22C3A5908(&qword_27D9BFCE8, &qword_22C925328);
    sub_22C36D3E0(v180);
    if (v35)
    {
      break;
    }

    v183 = v99[48];
    v182 = v99[49];
    v184 = v99[47];
    v185 = v99[19];
    v186 = *(v99[25] + *(v181 + 48));
    (*v296)(v99[51]);
    v99[16] = v185;
    v99[17] = 0;

    sub_22C908B7C();
    sub_22C36B5EC();
    sub_22C75A67C(v183, v187);
    sub_22C38BFB4();
    v189 = sub_22C75A6D4(v184, v183, v188);
    if (*(v186 + 16))
    {
      v344 = v171;
      sub_22C377660(v189, v190, v191, v192, v193, v194, v195, v196, v273, v274, v275, v276, v278, v279, v280);
      v292 = v186;
      v198 = v186 + v197;
      v314 = *(v199 + 72);
      v320 = *(v199 + 16);
      v339 = v200 - 1;
      while (1)
      {
        v201 = v99[51];
        v202 = v99[48];
        v203 = v99[45];
        v205 = v99[42];
        v204 = v99[43];
        v206 = v99[40];
        v207 = v99[35];
        v208 = v99[32];
        v209 = v99[30];
        v335 = v198;
        v320(v203);
        sub_22C9032CC();
        v210 = sub_22C75AD00(v346);
        (*v326)(v205, v206, v210);
        sub_22C9032CC();
        sub_22C75A73C(v207 + *(v332 + 20));
        v211 = sub_22C90329C();
        v213 = v212;
        v214 = sub_22C9032AC();
        v216 = v215;
        sub_22C5F8D4C();
        v217 = sub_22C909F0C();
        sub_22C9032DC();
        v218 = *v324;
        v219 = sub_22C36BAFC();
        v220(v219);
        v221 = (*v322)(v208, v209);
        if (v221 == v330)
        {
          v222 = 5;
          v223 = v339;
        }

        else
        {
          v223 = v339;
          if (v221 == v309)
          {
            v222 = 0;
          }

          else if (v221 == v306)
          {
            v222 = 2;
          }

          else if (v221 == v302)
          {
            v222 = 4;
          }

          else if (v221 == HIDWORD(v293))
          {
            v222 = 3;
          }

          else if (v221 == HIDWORD(v279))
          {
            v222 = 1;
          }

          else if (v221 == HIDWORD(v276))
          {
            v222 = 6;
          }

          else if (v221 == v276)
          {
            v222 = 7;
          }

          else if (v221 == HIDWORD(v275))
          {
            v222 = 8;
          }

          else if (v221 == v275)
          {
            v222 = 9;
          }

          else
          {
            (*v274)(v327[32], v327[30]);
            v222 = 5;
          }
        }

        v224 = v327[23];
        sub_22C36C27C(v327[35]);
        v225 = (v224 + *(v316 + 20));
        *v225 = v211;
        v225[1] = v213;
        v225[2] = v214;
        v225[3] = v216;
        v225[4] = v217;
        *(v224 + *(v316 + 24)) = v222;
        v171 = v344;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = *(v344 + 16);
          sub_22C36D270();
          sub_22C594400();
          v171 = v240;
        }

        v234 = *(v171 + 16);
        v233 = *(v171 + 24);
        if (v234 >= v233 >> 1)
        {
          sub_22C36A958(v233);
          sub_22C594400();
          v171 = v241;
        }

        v235 = v327[23];
        *(v171 + 16) = v234 + 1;
        sub_22C75A75C(v235, v226, v227, v228, v229, v230, v231, v232, v273, v274, v275, v276, v278, v279, v280, v282, v284, v286, v288, v290, v292, v293, v294, v296, v298, v300, v301, v302, v305, v306, v309, v312, v314, v316, v318);
        sub_22C75A6D4(v238, v171 + v236 + *(v237 + 72) * v234, type metadata accessor for JointResolution.CandidateInteraction);
        if (!v223)
        {
          break;
        }

        v339 = v223 - 1;
        v344 = v171;
        v198 = v335 + v314;
        v99 = v327;
      }

      v99 = v327;
    }

    else
    {
    }

    v167 = v290;
    (*v288)(v99[51], v99[49]);
    v170 = v298;
    v165 = v300;
    if (!v298)
    {
      goto LABEL_121;
    }
  }

  v260 = v99[56];
  v259 = v99[57];
  v261 = v99[55];
  v262 = v99[48];

  sub_22C36B5EC();
  sub_22C75A67C(v262, v263);
  (*(v260 + 8))(v259, v261);
  v342 = v171;
LABEL_165:
  sub_22C36FF94(v99 + 2);
  v264 = v99[65];
  v265 = v99[64];
  v267 = v99[60];
  v266 = v99[61];
  v268 = v99[57];
  v270 = v99[53];
  v269 = v99[54];
  v271 = v99[52];
  v303 = v99[51];
  v308 = v99[48];
  v311 = v99[47];
  sub_22C371C50();
  sub_22C757108(v312, "JointResolverFeaturizer.fetchInteractions");

  v272 = v99[1];

  v272(v342, v305);
}

uint64_t sub_22C757108(uint64_t a1, const char *a2)
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
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v39 + 8))(v18, v10);
    return (*(v32 + 8))(v27, v19);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
    return (*(v22 + 8))(v27, v19);
  }
}

uint64_t sub_22C75744C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C757474()
{
  sub_22C369980();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22C75750C;
  v3 = v0[2];

  return sub_22C73DB2C(v3);
}

uint64_t sub_22C75750C()
{
  sub_22C369980();
  v3 = v2;
  v4 = *(*v1 + 32);
  v8 = *v1;

  sub_22C36D5E0();
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t sub_22C757604()
{
  sub_22C369980();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_22C9063DC();
  v1[23] = v4;
  sub_22C3699B8(v4);
  v1[24] = v5;
  v7 = *(v6 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_22C90063C();
  v1[29] = v8;
  sub_22C3699B8(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = sub_22C36D0D4();
  v1[32] = swift_task_alloc();
  v12 = sub_22C9007DC();
  v1[33] = v12;
  sub_22C3699B8(v12);
  v1[34] = v13;
  v15 = *(v14 + 64);
  v1[35] = sub_22C3699D4();
  v16 = sub_22C9007EC();
  v1[36] = v16;
  sub_22C3699B8(v16);
  v1[37] = v17;
  v19 = *(v18 + 64);
  v1[38] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v23 = sub_22C90634C();
  v1[44] = v23;
  sub_22C3699B8(v23);
  v1[45] = v24;
  v26 = *(v25 + 64);
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  v27 = sub_22C90636C();
  v1[48] = v27;
  sub_22C3699B8(v27);
  v1[49] = v28;
  v30 = *(v29 + 64);
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v31 = sub_22C90363C();
  v1[52] = v31;
  sub_22C3699B8(v31);
  v1[53] = v32;
  v34 = *(v33 + 64);
  v1[54] = sub_22C3699D4();
  v35 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_22C757918()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v2 + 104))(v1, *MEMORY[0x277D1EC30], v3);
  v4 = sub_22C90362C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[55] = v5;
    *v5 = v0;
    v5[1] = sub_22C757B6C;

    return sub_22C758D2C();
  }

  else
  {
    v7 = v0[25];
    sub_22C90401C();
    v8 = sub_22C9063CC();
    v9 = sub_22C90AABC();
    v10 = sub_22C370048(v9);
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];
    if (v10)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v14, v15, "Joint resolver location signal feature is off. Do not fetch location biome events");
      sub_22C3699EC();
    }

    v16 = *(v12 + 8);
    v17 = sub_22C36BAFC();
    v18(v17);
    v19 = v0[54];
    v21 = v0[50];
    v20 = v0[51];
    v23 = v0[46];
    v22 = v0[47];
    v24 = v0[42];
    v25 = v0[43];
    v27 = v0[40];
    v26 = v0[41];
    v28 = v0[38];
    v29 = v0[39];
    sub_22C3874D0();

    sub_22C36D5E0();
    v31 = MEMORY[0x277D84F90];

    return v30(v31);
  }
}

uint64_t sub_22C757B6C()
{
  sub_22C369980();
  v1 = *(*v0 + 440);
  v7 = *v0;
  *(*v0 + 448) = v2;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C757C60()
{
  v113 = v0;
  if (*(v0 + 448) == 1)
  {
    v2 = v0[50];
    v1 = v0[51];
    v3 = v0[48];
    v4 = v0[49];
    v5 = v0[47];
    sub_22C90365C();
    sub_22C90365C();
    sub_22C90635C();
    sub_22C90631C();
    v6 = *(v4 + 8);
    v7 = sub_22C37170C();
    v109 = v8;
    (v8)(v7);
    v9 = sub_22C90635C();
    sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      v10 = v0[47];
      *sub_22C36D240() = 0;
      v11 = sub_22C90632C();
      sub_22C3721A8(&dword_22C366000, v12, v13, v11, "JointResolverFeaturizer.fetchLocationEvents", "");
      sub_22C3699EC();
    }

    v15 = v0[47];
    v14 = v0[48];
    v17 = v0[45];
    v16 = v0[46];
    v18 = v0[44];
    v19 = v0[42];
    v106 = v0[51];
    aBlock = v0[29];
    v20 = v0[20];

    (*(v17 + 16))(v16, v15, v18);
    v21 = sub_22C9063AC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_22C3707B4();
    v105 = sub_22C90639C();
    (*(v17 + 8))(v15, v18);
    v109(v106, v14);
    sub_22C4E719C(v20, v19, &qword_27D9BF2C0, &qword_22C925300);
    v24 = sub_22C370B74(v19, 1, aBlock);
    v26 = v0[42];
    v25 = v0[43];
    if (v24 == 1)
    {
      v27 = v0[37];
      v28 = v0[38];
      v29 = v0[35];
      v31 = v0[33];
      v30 = v0[34];
      v32 = v0[32];
      v33 = v0[30];
      aBlocka = v0[29];
      v110 = v0[36];
      sub_22C9007BC();
      (*(v30 + 104))(v29, *MEMORY[0x277CC9968], v31);
      sub_22C90062C();
      sub_22C90079C();
      (*(v33 + 8))(v32, aBlocka);
      (*(v30 + 8))(v29, v31);
      (*(v27 + 8))(v28, v110);
      sub_22C36D3E0(v26);
      if (!v34)
      {
        sub_22C36DD28(v0[42], &qword_27D9BF2C0, &qword_22C925300);
      }
    }

    else
    {
      v47 = v0[29];
      v48 = *(v0[30] + 32);
      v49 = sub_22C37170C();
      v50(v49);
      sub_22C36C640(v25, 0, 1, v47);
    }

    v51 = v0[29];
    sub_22C4E719C(v0[21], v0[41], &qword_27D9BF2C0, &qword_22C925300);
    v52 = sub_22C3707B4();
    if (sub_22C370B74(v52, v53, v51) == 1)
    {
      v54 = v0[29];
      v55 = v0[31];
      sub_22C90062C();
      v56 = sub_22C3707B4();
      if (sub_22C370B74(v56, v57, v54) != 1)
      {
        sub_22C36DD28(v0[41], &qword_27D9BF2C0, &qword_22C925300);
      }
    }

    else
    {
      (*(v0[30] + 32))(v0[31], v0[41], v0[29]);
    }

    v58 = v0[43];
    v60 = v0[39];
    v59 = v0[40];
    v62 = v0[30];
    v61 = v0[31];
    v63 = v0[28];
    v64 = v0[29];
    v65 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v66 = [v65 Visit];
    swift_unknownObjectRelease();
    (*(v62 + 16))(v59, v61, v64);
    sub_22C36C640(v59, 0, 1, v64);
    sub_22C4E719C(v58, v60, &qword_27D9BF2C0, &qword_22C925300);
    v67 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    v68 = sub_22C7592C4(v59, v60, 300, 0, 1);
    v69 = [v66 publisherWithOptions_];

    v70 = swift_allocObject();
    *(v70 + 16) = MEMORY[0x277D84F90];
    sub_22C90401C();
    v71 = sub_22C9063CC();
    v72 = sub_22C90AABC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = sub_22C36D240();
      *v73 = 0;
      _os_log_impl(&dword_22C366000, v71, v72, "Fetching location events from Location visits biome stream", v73, 2u);
      sub_22C3699EC();
    }

    v75 = v0[27];
    v74 = v0[28];
    v76 = v0[23];
    v77 = v0[24];

    v78 = *(v77 + 8);
    v79 = sub_22C36BAFC();
    v78(v79);
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22C75A738;
    v0[5] = &unk_283FBFAC8;
    v80 = _Block_copy(v0 + 2);
    v0[12] = sub_22C759418;
    v0[13] = v70;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_22C75A738;
    v0[11] = &unk_283FBFAF0;
    v81 = _Block_copy(v0 + 8);
    v82 = v0[13];

    v83 = [v69 sinkWithCompletion:v80 receiveInput:v81];
    _Block_release(v81);
    _Block_release(v80);

    sub_22C90401C();

    v84 = sub_22C9063CC();
    v85 = sub_22C90AABC();
    if (sub_22C370048(v85))
    {
      v86 = sub_22C36FB44();
      *v86 = 134217984;
      swift_beginAccess();
      *(v86 + 4) = *(*(v70 + 16) + 16);

      _os_log_impl(&dword_22C366000, v84, v85, "Fetched %ld biome location events", v86, 0xCu);
      sub_22C3699EC();
    }

    else
    {
    }

    v87 = v0[24] + 8;
    (v78)(v0[27], v0[23]);
    swift_beginAccess();
    v112 = *(v70 + 16);
    swift_bridgeObjectRetain_n();
    sub_22C759420(&v112);
    v88 = v0[43];
    v90 = v0[30];
    v89 = v0[31];
    v91 = v0[29];

    (*(v90 + 8))(v89, v91);
    sub_22C36DD28(v88, &qword_27D9BF2C0, &qword_22C925300);

    v111 = v112;
    sub_22C757108(v105, "JointResolverFeaturizer.fetchLocationEvents");
  }

  else
  {
    v35 = v0[26];
    sub_22C90401C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AABC();
    v38 = sub_22C370048(v37);
    v39 = v0[26];
    v40 = v0[23];
    v41 = v0[24];
    if (v38)
    {
      *sub_22C36D240() = 0;
      sub_22C369A04(&dword_22C366000, v42, v43, "Not authorized to fetch Joint resolver location signal");
      sub_22C3699EC();
    }

    v44 = *(v41 + 8);
    v45 = sub_22C36BAFC();
    v46(v45);
    v111 = MEMORY[0x277D84F90];
  }

  v92 = v0[54];
  v94 = v0[50];
  v93 = v0[51];
  v96 = v0[46];
  v95 = v0[47];
  v97 = v0[42];
  v98 = v0[43];
  v100 = v0[40];
  v99 = v0[41];
  v101 = v0[38];
  v102 = v0[39];
  sub_22C3874D0();

  sub_22C36D5E0();

  return v103(v111);
}

void sub_22C75858C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_22C7585EC(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_22C7585EC(void *a1, uint64_t *a2)
{
  v80 = a2;
  v77 = type metadata accessor for LocationEvent();
  v79 = *(v77 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v72 - v17;
  v19 = sub_22C90063C();
  v84 = *(v19 - 8);
  v20 = *(v84 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v81 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v72 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v82 = &v72 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - v28;
  v30 = [a1 eventBody];
  if (!v30)
  {
    sub_22C36C640(v18, 1, 1, v19);
LABEL_8:
    v35 = v18;
    return sub_22C36DD28(v35, &qword_27D9BF2C0, &qword_22C925300);
  }

  v31 = v30;
  v83 = v2;
  v32 = [v30 entryDate];
  if (v32)
  {
    v33 = v32;
    sub_22C9005FC();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  sub_22C36C640(v16, v34, 1, v19);
  sub_22C4E7208(v16, v18, &qword_27D9BF2C0, &qword_22C925300);
  if (sub_22C370B74(v18, 1, v19) == 1)
  {

    goto LABEL_8;
  }

  v76 = *(v84 + 32);
  v76(v29, v18, v19);
  v37 = [v31 exitDate];
  if (v37)
  {
    v38 = v37;
    sub_22C9005FC();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  sub_22C36C640(v10, v39, 1, v19);
  sub_22C4E7208(v10, v13, &qword_27D9BF2C0, &qword_22C925300);
  if (sub_22C370B74(v13, 1, v19) == 1)
  {
    (*(v84 + 8))(v29, v19);

    v35 = v13;
    return sub_22C36DD28(v35, &qword_27D9BF2C0, &qword_22C925300);
  }

  v40 = v82;
  v76(v82, v13, v19);
  v41 = *(v84 + 16);
  v41(v25, v29, v19);
  v41(v81, v40, v19);
  v42 = [v31 placeInference];
  if (v42 && (v43 = v42, v44 = [v42 mapItem], v43, v44))
  {
    v45 = sub_22C75A5B0(v44, &selRef_name);
    v74 = v46;
    v75 = v45;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v47 = [v31 placeInference];
  if (v47 && (v48 = v47, v49 = [v47 mapItem], v48, v49))
  {
    v50 = sub_22C75A5B0(v49, &selRef_category);
    v72 = v51;
    v73 = v50;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v52 = [v31 location];
  v53 = v52;
  v54 = 0;
  v55 = 0;
  if (v52)
  {
    [v52 latitude];
    v55 = v56;
  }

  v57 = [v31 location];
  v58 = v57;
  if (v57)
  {
    [v57 longitude];
    v54 = v59;
  }

  v60 = v58 == 0;
  v61 = v53 == 0;
  v86 = v61;
  v85 = v60;
  v62 = v78;
  v63 = v76;
  v76(v78, v25, v19);
  v64 = v77;
  v63(v62 + *(v77 + 20), v81, v19);
  v65 = v62 + *(v64 + 24);
  v66 = v74;
  *v65 = v75;
  *(v65 + 8) = v66;
  v67 = v72;
  *(v65 + 16) = v73;
  *(v65 + 24) = v67;
  *(v65 + 32) = v55;
  *(v65 + 40) = v61;
  *(v65 + 41) = *v87;
  *(v65 + 44) = *&v87[3];
  *(v65 + 48) = v54;
  *(v65 + 56) = v60;
  v68 = v80;
  swift_beginAccess();
  sub_22C3D0FF8();
  v69 = *(*v68 + 16);
  sub_22C3D11BC(v69);
  v70 = *v68;
  *(v70 + 16) = v69 + 1;
  sub_22C75A6D4(v62, v70 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v69, type metadata accessor for LocationEvent);
  swift_endAccess();

  v71 = *(v84 + 8);
  v71(v82, v19);
  return (v71)(v29, v19);
}

void sub_22C758CC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22C758D2C()
{
  sub_22C369980();
  v1 = sub_22C9063DC();
  v0[20] = v1;
  sub_22C3699B8(v1);
  v0[21] = v2;
  v4 = *(v3 + 64);
  v0[22] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C758DCC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22C758F04;
  v2 = swift_continuation_init();
  v0[17] = sub_22C3A5908(&qword_27D9BFCC0, &qword_22C9252F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22C759198;
  v0[13] = &unk_283FBFA78;
  v0[14] = v2;
  [v1 currentAuthorizationStyle_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22C758F04()
{
  sub_22C369980();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_22C759084;
  }

  else
  {
    v3 = sub_22C759010;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22C759010()
{
  sub_22C369980();

  v1 = (*(v0 + 144) - 3) < 2;
  v2 = *(v0 + 176);

  sub_22C36D5E0();

  return v3(v1);
}

uint64_t sub_22C759084()
{
  v1 = v0[24];
  v2 = v0[22];
  swift_willThrow();
  sub_22C903FAC();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();
  v5 = sub_22C370048(v4);
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  if (v5)
  {
    v11 = sub_22C36D240();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v3, v4, "Unable to check location access authorization", v11, 2u);
    sub_22C3699EC();
  }

  v12 = *(v9 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  v15 = v0[22];

  sub_22C36D5E0();

  return v16(0);
}

uint64_t sub_22C759198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22C374168((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    v9 = a4;

    return sub_22C8B5B48(v8, v9);
  }

  else
  {
    v11 = *v7;

    return sub_22C8B5BB0(v11, a2, a3);
  }
}

uint64_t sub_22C759224()
{
  v1 = *(v0 + 16);

  sub_22C36DD28(v0 + 24, &qword_27D9BFCD8, &qword_22C925318);

  return swift_deallocClassInstance();
}

id sub_22C7592C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22C90063C();
  v13 = 0;
  if (sub_22C370B74(a1, 1, v12) != 1)
  {
    v13 = sub_22C9005AC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22C370B74(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22C9005AC();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22C759400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C759420(uint64_t *a1)
{
  v2 = *(type metadata accessor for LocationEvent() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C480(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C7594C8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C7594C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocationEvent();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LocationEvent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C759824(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C7595F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C7595F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for LocationEvent();
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v32 = v21;
      v33 = a3;
      v30 = v24;
      v31 = v23;
      do
      {
        sub_22C75A54C(v24, v18);
        sub_22C75A54C(v21, v14);
        v25 = sub_22C9005BC();
        sub_22C75A67C(v14, type metadata accessor for LocationEvent);
        result = sub_22C75A67C(v18, type metadata accessor for LocationEvent);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_22C75A6D4(v24, v11, type metadata accessor for LocationEvent);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C75A6D4(v11, v21, type metadata accessor for LocationEvent);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v33 + 1;
      v21 = v32 + v28;
      v23 = v31 - 1;
      v24 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C759824(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v100 = a1;
  v114 = type metadata accessor for LocationEvent();
  v109 = *(v114 - 8);
  v9 = *(v109 + 64);
  v10 = MEMORY[0x28223BE20](v114);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v97 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v97 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - v16;
  v111 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v91 = v20 + 16;
      v92 = *(v20 + 2);
      for (i = v20; v92 >= 2; v20 = i)
      {
        if (!*v111)
        {
          goto LABEL_139;
        }

        v93 = &v20[16 * v92];
        v94 = *v93;
        v20 = &v91[2 * v92];
        v95 = *(v20 + 1);
        sub_22C75A0D8(*v111 + *(v109 + 72) * *v93, *v111 + *(v109 + 72) * *v20, *v111 + *(v109 + 72) * v95, v5);
        if (v6)
        {
          break;
        }

        if (v95 < v94)
        {
          goto LABEL_127;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_128;
        }

        *v93 = v94;
        *(v93 + 1) = v95;
        v96 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_129;
        }

        v92 = *v91 - 1;
        sub_22C56BFF0(v20 + 16, v96, v20);
        *v91 = v92;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_22C56BFD8(v20);
    goto LABEL_103;
  }

  v99 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v105 = &v97 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v101 = v21;
    if (v19 < v18)
    {
      v22 = *v111;
      v5 = *(v109 + 72);
      v23 = v21;
      v24 = *v111 + v5 * v19;
      v108 = v18;
      sub_22C75A54C(v24, v17);
      v25 = v115;
      sub_22C75A54C(v22 + v5 * v23, v115);
      LODWORD(v107) = sub_22C9005BC();
      sub_22C75A67C(v25, type metadata accessor for LocationEvent);
      sub_22C75A67C(v17, type metadata accessor for LocationEvent);
      v26 = v108;
      v27 = v23 + 2;
      v110 = v5;
      v20 = (v22 + v5 * (v23 + 2));
      while (1)
      {
        v28 = v27;
        if (++v19 >= v26)
        {
          break;
        }

        sub_22C75A54C(v20, v17);
        v5 = v115;
        sub_22C75A54C(v24, v115);
        v29 = sub_22C9005BC() & 1;
        sub_22C75A67C(v5, type metadata accessor for LocationEvent);
        sub_22C75A67C(v17, type metadata accessor for LocationEvent);
        v20 += v110;
        v24 += v110;
        v27 = v28 + 1;
        v26 = v108;
        if ((v107 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v19 = v26;
LABEL_9:
      if (v107)
      {
        v21 = v101;
        if (v19 < v101)
        {
          goto LABEL_133;
        }

        if (v101 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v98 = v6;
        if (v26 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        v31 = v110 * (v30 - 1);
        v32 = v101;
        v33 = v110 * v30;
        v34 = v101 * v110;
        v35 = v19;
        v20 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = *v111;
            if (!*v111)
            {
              goto LABEL_140;
            }

            sub_22C75A6D4(v5 + v34, v104, type metadata accessor for LocationEvent);
            v36 = v34 < v31 || v5 + v34 >= v5 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C75A6D4(v104, v5 + v31, type metadata accessor for LocationEvent);
            v20 = i;
          }

          ++v32;
          v31 -= v110;
          v33 -= v110;
          v34 += v110;
        }

        while (v32 < v35);
        v6 = v98;
      }

      else
      {
        v20 = i;
      }

      v21 = v101;
    }

LABEL_32:
    v37 = v111[1];
    if (v19 < v37)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v99)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v20 + 2);
      sub_22C590218();
      v20 = v89;
    }

    v47 = *(v20 + 2);
    v48 = v47 + 1;
    if (v47 >= *(v20 + 3) >> 1)
    {
      sub_22C590218();
      v20 = v90;
    }

    *(v20 + 2) = v48;
    v49 = v20 + 32;
    v50 = &v20[16 * v47 + 32];
    *v50 = v101;
    *(v50 + 1) = v19;
    v110 = *v100;
    if (!v110)
    {
      goto LABEL_141;
    }

    v51 = v17;
    if (v47)
    {
      i = v20;
      while (1)
      {
        v52 = v48 - 1;
        v53 = &v49[16 * v48 - 16];
        v54 = &v20[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v55 = *(v20 + 4);
          v56 = *(v20 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_69:
          if (v58)
          {
            goto LABEL_118;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_121;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_126;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v48 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v48 < 2)
        {
          goto LABEL_120;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_84:
        if (v73)
        {
          goto LABEL_123;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_125;
        }

        if (v80 < v72)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v52 - 1 >= v48)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v111)
        {
          goto LABEL_138;
        }

        v84 = &v49[16 * v52 - 16];
        v85 = *v84;
        v5 = v52;
        v20 = &v49[16 * v52];
        v86 = *(v20 + 1);
        sub_22C75A0D8(*v111 + *(v109 + 72) * *v84, *v111 + *(v109 + 72) * *v20, *v111 + *(v109 + 72) * v86, v110);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v86 < v85)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v84 = v85;
        *(v84 + 1) = v86;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v48 = v6 - 1;
        sub_22C56BFF0(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v87 = v6 > 2;
        v6 = 0;
        v51 = v105;
        if (!v87)
        {
          goto LABEL_98;
        }
      }

      v59 = &v49[16 * v48];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_116;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_117;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_119;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_130;
        }

        if (v57 < v83)
        {
          v52 = v48 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v111[1];
    v17 = v51;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v38 = v21 + v99;
  if (__OFADD__(v21, v99))
  {
    goto LABEL_134;
  }

  if (v38 >= v37)
  {
    v38 = v111[1];
  }

  if (v38 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v38)
  {
    goto LABEL_48;
  }

  v98 = v6;
  v39 = *v111;
  v40 = *(v109 + 72);
  v5 = *v111 + v40 * (v19 - 1);
  v41 = -v40;
  v42 = v21 - v19;
  v102 = v40;
  v103 = v38;
  v43 = v39 + v19 * v40;
LABEL_41:
  v110 = v19;
  v106 = v43;
  v107 = v42;
  v108 = v5;
  while (1)
  {
    sub_22C75A54C(v43, v17);
    v44 = v115;
    sub_22C75A54C(v5, v115);
    v45 = sub_22C9005BC();
    sub_22C75A67C(v44, type metadata accessor for LocationEvent);
    sub_22C75A67C(v17, type metadata accessor for LocationEvent);
    if ((v45 & 1) == 0)
    {
LABEL_46:
      v19 = v110 + 1;
      v5 = v108 + v102;
      v42 = v107 - 1;
      v43 = v106 + v102;
      if (v110 + 1 == v103)
      {
        v19 = v103;
        v6 = v98;
        v20 = i;
        v21 = v101;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    v46 = v113;
    sub_22C75A6D4(v43, v113, type metadata accessor for LocationEvent);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C75A6D4(v46, v5, type metadata accessor for LocationEvent);
    v5 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_22C75A0D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for LocationEvent();
  v8 = *(*(v56 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v20 = v16 / v15;
  v60 = a1;
  v59 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    sub_22C3D7780(a2, v18 / v15, a4);
    v30 = a4 + v21 * v15;
    v31 = -v15;
    v32 = v30;
    v52 = a1;
    v53 = v31;
LABEL_36:
    v33 = a2 + v31;
    v34 = a3;
    v50 = v32;
    v54 = a2 + v31;
    v55 = a2;
    while (1)
    {
      if (v30 <= a4)
      {
        v60 = v55;
        v58 = v32;
        goto LABEL_58;
      }

      if (v55 <= a1)
      {
        break;
      }

      v51 = v32;
      v35 = a4;
      v36 = v34 + v31;
      v37 = v30 + v31;
      v38 = v30;
      v39 = v34;
      sub_22C75A54C(v30 + v31, v13);
      v40 = v13;
      v41 = v57;
      sub_22C75A54C(v33, v57);
      v42 = sub_22C9005BC();
      v43 = v41;
      v13 = v40;
      sub_22C75A67C(v43, type metadata accessor for LocationEvent);
      sub_22C75A67C(v40, type metadata accessor for LocationEvent);
      if (v42)
      {
        v45 = v39 < v55 || v36 >= v55;
        a4 = v35;
        if (v45)
        {
          v46 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
          a1 = v52;
          a3 = v36;
          a2 = v46;
          v31 = v53;
          v30 = v38;
        }

        else
        {
          v32 = v51;
          v17 = v39 == v55;
          v31 = v53;
          v47 = v54;
          a3 = v36;
          a2 = v54;
          v30 = v38;
          a1 = v52;
          if (!v17)
          {
            v48 = v51;
            swift_arrayInitWithTakeBackToFront();
            v30 = v38;
            a2 = v47;
            v32 = v48;
          }
        }

        goto LABEL_36;
      }

      v44 = v39 < v38 || v36 >= v38;
      a4 = v35;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v36;
        v30 = v37;
        v32 = v37;
        v31 = v53;
        v33 = v54;
        a1 = v52;
      }

      else
      {
        v32 = v37;
        v17 = v38 == v39;
        v34 = v36;
        v30 = v37;
        v31 = v53;
        v33 = v54;
        a1 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v36;
          v30 = v37;
          v32 = v37;
        }
      }
    }

    v60 = v55;
    v58 = v50;
  }

  else
  {
    sub_22C3D7780(a1, v16 / v15, a4);
    v55 = a4 + v20 * v15;
    v58 = v55;
    while (a4 < v55 && a2 < a3)
    {
      v23 = a3;
      sub_22C75A54C(a2, v13);
      v24 = a2;
      v25 = v57;
      sub_22C75A54C(a4, v57);
      v26 = sub_22C9005BC();
      sub_22C75A67C(v25, type metadata accessor for LocationEvent);
      sub_22C75A67C(v13, type metadata accessor for LocationEvent);
      if (v26)
      {
        a2 = v24 + v15;
        v27 = a1 < v24 || a1 >= a2;
        v28 = v24;
        if (v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v24;
          a3 = v23;
        }

        else
        {
          a2 = v24;
          a3 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = a4 + v15;
        a4 += v15;
      }

      a1 += v15;
      v60 = a1;
    }
  }

LABEL_58:
  sub_22C8381FC(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_22C75A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C75A5B0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_22C90A11C();
  }

  return sub_22C37170C();
}

unint64_t sub_22C75A618()
{
  result = qword_28142F958;
  if (!qword_28142F958)
  {
    sub_22C3AC1A0(&qword_27D9BFCE0, &qword_22C925320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F958);
  }

  return result;
}

uint64_t sub_22C75A67C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C75A6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

__n128 sub_22C75A73C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *a1 = *(v1 - 152);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 - 120);
  result = *(v1 - 111);
  *(a1 + 41) = result;
  return result;
}

void sub_22C75A770(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (*(v1 + 40) & 1) != 0 || (*(v1 + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v1 + 32) longitude:*(v1 + 48)];
  }

  if (v2 != 1 && (v4 & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v3 longitude:v5];
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_14:

    return;
  }

  v8 = 0;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    [v7 distanceFromLocation_];
  }
}

uint64_t JointResolverLocationSignal.locationName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JointResolverLocationSignal.locationName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JointResolverLocationSignal.locationType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JointResolverLocationSignal.locationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JointResolverLocationSignal.locationLatitude.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t JointResolverLocationSignal.locationLatitude.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JointResolverLocationSignal.locationLongitude.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t JointResolverLocationSignal.locationLongitude.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t static JointResolverLocationSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v17 = *a1 == *a2 && v3 == v10;
    if (!v17 && (sub_22C90B4FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v18 = v4 == v11 && v5 == v12;
  if (!v18 && (sub_22C90B4FC() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v7)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v15)
    {
      v21 = v16;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  return 1;
}

__n128 sub_22C75AB2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22C75AB48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C75AB9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LocationEvent()
{
  result = qword_281434A08;
  if (!qword_281434A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C75AC84()
{
  result = sub_22C90063C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_22C75AD00@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BFCF0, &qword_22C9253D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = type metadata accessor for LocationEvent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  for (i = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]; ; sub_22C75B03C(i))
  {
    sub_22C3A5908(&qword_27D9BFCF8, &qword_22C9253D8);
    sub_22C908B5C();
    if (sub_22C370B74(v8, 1, v9) == 1)
    {
      sub_22C75AF14(v8);
LABEL_8:
      result = 0.0;
      *a1 = xmmword_22C9114A0;
      a1[1] = 0u;
      a1[2] = 0u;
      *(a1 + 41) = 0u;
      return result;
    }

    sub_22C75AF7C(v8, i);
    if ((sub_22C9005BC() & 1) == 0)
    {
      break;
    }

    sub_22C908B4C();
    sub_22C75AF14(v6);
  }

  v13 = *(v9 + 20);
  if (sub_22C9005CC())
  {
    sub_22C75B03C(i);
    goto LABEL_8;
  }

  v15 = &i[*(v9 + 24)];
  v16 = v15[1];
  v19 = *v15;
  v20 = v16;
  v21[0] = v15[2];
  *(v21 + 9) = *(v15 + 41);
  sub_22C75AFE0(&v19, v18);
  sub_22C75B03C(i);
  v17 = v20;
  *a1 = v19;
  a1[1] = v17;
  a1[2] = v21[0];
  result = *(v21 + 9);
  *(a1 + 41) = *(v21 + 9);
  return result;
}

uint64_t sub_22C75AF14(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFCF0, &qword_22C9253D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C75AF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C75B03C(uint64_t a1)
{
  v2 = type metadata accessor for LocationEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JointResolverLocationSignalProvider()
{
  result = qword_281430318;
  if (!qword_281430318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C75B10C()
{
  sub_22C75B178();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C75B178()
{
  if (!qword_28142FA98)
  {
    sub_22C3AC1A0(&qword_27D9BFCE0, &qword_22C925320);
    sub_22C75A618();
    v0 = sub_22C908B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FA98);
    }
  }
}

uint64_t sub_22C75B1E8()
{
  v0 = sub_22C9063DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22C9061CC();
  sub_22C760A9C();
  return sub_22C90620C();
}

uint64_t sub_22C75B3DC(uint64_t a1, uint64_t a2)
{
  sub_22C75B1E8();
  v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v6 = sub_22C90069C();
  sub_22C36985C(v6);
  v8 = *(v7 + 32);
  v8(v2 + v5, a1, v6);
  v8(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, a2, v6);
  return v2;
}

void sub_22C75B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v103 = v23;
  v104 = v24;
  v102 = v25;
  v101 = v26;
  v100 = v27;
  v28 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C38B638();
  v32 = sub_22C3A5908(&qword_27D9BFD70, &qword_22C9254F8);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C36D5B4();
  v108 = v36;
  v37 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  sub_22C3698F8(v41);
  v42 = sub_22C90531C();
  v43 = sub_22C369824(v42);
  v109 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  v105 = v47;
  v48 = sub_22C904EAC();
  v49 = sub_22C369824(v48);
  v106 = v50;
  v107 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  sub_22C3698F8(v53);
  v110 = sub_22C904E5C();
  v54 = sub_22C369824(v110);
  v96 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  v59 = v58;
  v60 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v60);
  v62 = *(v61 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v63);
  sub_22C38059C();
  v64 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v64);
  v66 = *(v65 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v67);
  sub_22C3717BC();
  v97 = sub_22C904FBC();
  v68 = sub_22C369824(v97);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698A8();
  v74 = v73;
  v75 = v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v75, &v111);
  }

  else
  {
    sub_22C38289C(v75);
  }

  if (v112)
  {
    sub_22C36C730(&v111, v113);
    sub_22C904FAC();
    sub_22C90068C();
    sub_22C90069C();
    sub_22C36BECC();
    sub_22C36C640(v76, v77, v78, v79);
    sub_22C904F9C();
    v80 = sub_22C90625C();
    sub_22C9062CC();
    sub_22C36BECC();
    sub_22C36C640(v81, v82, v83, v80);
    sub_22C904F8C();
    sub_22C76041C(v100, v101, v102, v103, v104);
    v84 = swift_allocBox();
    (*(v96 + 16))(v85, v59, v110);
    *v99 = v84;
    (*(v106 + 104))(v99, *MEMORY[0x277D1FDB8], v107);
    sub_22C90530C();
    (*(v70 + 16))(v98, v74, v97);
    v86 = sub_22C3726A4();
    sub_22C386860(v86, v87, v88, v97);
    sub_22C904C8C();
    (*(v106 + 16))(v108, v99, v107);
    v89 = sub_22C3726A4();
    sub_22C386860(v89, v90, v91, v107);
    sub_22C904F7C();
    sub_22C37A078(&a9);
    sub_22C90621C();
    sub_22C90622C();
    v92 = sub_22C3726A4();
    sub_22C386860(v92, v93, v94, v95);
    sub_22C9052FC();
    sub_22C374168(v113, v113[3]);
    sub_22C9062BC();
    (*(v109 + 8))(v105, v42);
    (*(v106 + 8))(v99, v107);
    (*(v96 + 8))(v59, v110);
    (*(v70 + 8))(v74, v97);
    sub_22C36FF94(v113);
  }

  sub_22C36CC48();
}

void sub_22C75BB08()
{
  sub_22C36BA7C();
  v91 = v2;
  v89 = v3;
  v87 = v4;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C36D5B4();
  v95 = v11;
  v12 = sub_22C3A5908(&qword_27D9BFD70, &qword_22C9254F8);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36D5B4();
  v92 = v16;
  v17 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v17);
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C3717BC();
  v21 = sub_22C90531C();
  v22 = sub_22C369824(v21);
  v93 = v23;
  v94 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v26);
  v88 = sub_22C904EAC();
  v27 = sub_22C369824(v88);
  v90 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  v32 = sub_22C3698F8(v31);
  v96 = v6(v32);
  sub_22C369824(v96);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  v39 = &v84 - v38;
  v40 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v40);
  v42 = *(v41 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  v44 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v44);
  v46 = *(v45 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  sub_22C38059C();
  v48 = sub_22C904FBC();
  v49 = sub_22C369824(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  v55 = v54;
  v56 = v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v56, &v97);
  }

  else
  {
    sub_22C38289C(v56);
  }

  if (v98)
  {
    sub_22C36C730(&v97, v99);
    sub_22C904FAC();
    sub_22C90068C();
    sub_22C90069C();
    sub_22C36BECC();
    sub_22C36C640(v57, v58, v59, v60);
    sub_22C904F9C();
    v61 = sub_22C90625C();
    sub_22C9062CC();
    sub_22C36BECC();
    sub_22C36C640(v62, v63, v64, v61);
    v65 = v55;
    v84 = v55;
    v66 = sub_22C904F8C();
    (v89)(v66);
    v67 = v96;
    v68 = swift_allocBox();
    (*(v34 + 16))(v69, v39, v67);
    v89 = v39;
    v70 = v85;
    *v85 = v68;
    v71 = v90;
    v72 = v88;
    (*(v90 + 104))(v70, *v91, v88);
    v73 = v86;
    sub_22C90530C();
    (*(v51 + 16))(v1, v65, v48);
    sub_22C36BECC();
    sub_22C36C640(v74, v75, v76, v48);
    sub_22C904C8C();
    (*(v71 + 16))(v92, v70, v72);
    v77 = sub_22C3726A4();
    sub_22C386860(v77, v78, v79, v72);
    sub_22C904F7C();
    sub_22C90621C();
    sub_22C90622C();
    v80 = sub_22C3726A4();
    sub_22C386860(v80, v81, v82, v83);
    sub_22C9052FC();
    sub_22C374168(v99, v99[3]);
    sub_22C9062BC();
    (*(v93 + 8))(v73, v94);
    (*(v71 + 8))(v70, v72);
    (*(v34 + 8))(v89, v96);
    (*(v51 + 8))(v84, v48);
    sub_22C36FF94(v99);
  }

  sub_22C36CC48();
}

void sub_22C75C098()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = v82 - v7;
  v9 = sub_22C3A5908(&qword_27D9BFD60, &qword_22C9254E8);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v87 = v13;
  v14 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  v86 = v18;
  v19 = sub_22C90531C();
  v20 = sub_22C369824(v19);
  v88 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  sub_22C38B638();
  v24 = sub_22C904C2C();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v33);
  v35 = *(v34 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  sub_22C37FCFC();
  v37 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v37);
  v39 = *(v38 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  v42 = v82 - v41;
  v43 = sub_22C904FBC();
  v44 = sub_22C369824(v43);
  v84 = v45;
  v85 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C369838();
  v50 = v49 - v48;
  v51 = v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v51, &v90);
  }

  else
  {
    sub_22C38289C(v51);
  }

  if (v91)
  {
    sub_22C36C730(&v90, v92);
    sub_22C904FAC();
    sub_22C90068C();
    v52 = sub_22C90069C();
    v82[0] = v27;
    v53 = v2;
    v54 = v32;
    v55 = v52;
    sub_22C36BECC();
    sub_22C36C640(v56, v57, v58, v55);
    v82[1] = v8;
    v83 = v19;
    sub_22C904F9C();
    v59 = sub_22C90625C();
    v60 = v87;
    v89 = v24;
    sub_22C9062CC();
    v61 = sub_22C389250();
    sub_22C36C640(v61, v62, v63, v59);
    sub_22C904F8C();
    sub_22C904C1C();
    (*(*(v55 - 8) + 16))(v42, v53 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, v55);
    sub_22C36BECC();
    sub_22C36C640(v64, v65, v66, v55);
    v67 = v54;
    sub_22C904C0C();
    sub_22C90530C();
    v69 = v84;
    v68 = v85;
    (*(v84 + 16))(v86, v50, v85);
    sub_22C36BECC();
    sub_22C36C640(v70, v71, v72, v68);
    sub_22C904C8C();
    v73 = v82[0];
    v74 = v89;
    (*(v82[0] + 16))(v60, v67, v89);
    sub_22C36BECC();
    sub_22C36C640(v75, v76, v77, v74);
    sub_22C904C3C();
    sub_22C90621C();
    sub_22C90622C();
    sub_22C36BECC();
    sub_22C36C640(v78, v79, v80, v81);
    sub_22C9052FC();
    sub_22C374168(v92, v92[3]);
    sub_22C9062BC();
    (*(v88 + 8))(v1, v83);
    (*(v73 + 8))(v67, v89);
    (*(v69 + 8))(v50, v68);
    sub_22C36FF94(v92);
  }

  sub_22C36CC48();
}

uint64_t sub_22C75C5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37FCFC();
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v9 = sub_22C90069C();
  sub_22C36985C(v9);
  (*(v10 + 16))(v2, a2 + v8, v9);
  v11 = sub_22C389250();
  sub_22C36C640(v11, v12, v13, v9);
  return sub_22C90623C();
}

void sub_22C75C708(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void *), uint64_t (*a4)(id))
{
  sub_22C904C6C();
  v6 = sub_22C904C5C();
  v7 = a2;
  v8 = (a2)(v6);
  v9 = [v8 shape];

  sub_22C3D3108();
  v10 = sub_22C90A5EC();

  v11 = sub_22C5F2370();
  sub_22C633A2C(v11, v12, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v13 = *(v10 + 32);
  }

  v14 = v13;

  v15 = a3(v14);

  if (v15 < 0)
  {
    __break(1u);
  }

  else if (v15)
  {
    v16 = 0;
    do
    {
      v17 = v7();
      v18 = [v17 objectAtIndexedSubscript_];

      v19 = a4(v18);
      v20 = sub_22C90527C();
      v22 = v21;
      v23 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = *(v23 + 16);
        sub_22C36D270();
        sub_22C594734();
        v23 = v27;
        *v22 = v27;
      }

      v25 = *(v23 + 16);
      if (v25 >= *(v23 + 24) >> 1)
      {
        sub_22C594734();
        v23 = v28;
        *v22 = v28;
      }

      ++v16;
      *(v23 + 16) = v25 + 1;
      *(v23 + 4 * v25 + 32) = v19;
      v20(v30, 0);
    }

    while (v15 != v16);
  }
}

void sub_22C75C98C()
{
  sub_22C36BA7C();
  v59 = v1;
  v60 = v0;
  v3 = v2;
  v57 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22C90625C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  sub_22C904C6C();
  v55 = v8;
  v21 = sub_22C904C5C();
  v56 = v6;
  v58 = v3;
  v22 = (v3)(v21);
  v23 = [v22 shape];

  sub_22C3D3108();
  v24 = sub_22C386D8C();

  v25 = sub_22C5F2370();
  sub_22C633A2C(v25, v26, v24);
  if ((v24 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v27 = *(v24 + 32);
  }

  sub_22C760BF0();
  v28 = v60(v23);

  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v28)
    {
      v31 = 0;
      v51 = v12 + 32;
      v52 = (v12 + 16);
      v50 = v12 + 8;
      v53 = v28;
      v54 = v17;
      do
      {
        v32 = v58(v29, v30);
        v33 = [v32 objectAtIndexedSubscript_];

        v34 = v60(v33);
        MEMORY[0x28223BE20](v35);
        sub_22C369920();
        *(v36 - 16) = v57;
        *(v36 - 8) = v34;
        sub_22C9062CC();
        v37 = v20;
        (*v52)(v17, v20, v9);
        v38 = sub_22C9050AC();
        v40 = v39;
        v41 = *v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = *(v41 + 16);
          sub_22C36D270();
          sub_22C594814();
          v41 = v48;
          *v40 = v48;
        }

        v43 = *(v41 + 16);
        if (v43 >= *(v41 + 24) >> 1)
        {
          sub_22C37AD30();
          sub_22C594814();
          v41 = v49;
          *v40 = v49;
        }

        ++v31;
        *(v41 + 16) = v43 + 1;
        v44 = *(v12 + 80);
        sub_22C36BA94();
        v46 = v41 + v45 + *(v12 + 72) * v43;
        v17 = v54;
        (*(v12 + 32))(v46, v54, v9);
        v38(&v61, 0);
        v20 = v37;
        v29 = (*(v12 + 8))(v37, v9);
      }

      while (v53 != v31);
    }

    sub_22C36CC48();
  }
}

void sub_22C75CCD0()
{
  sub_22C386340();
  sub_22C904C6C();
  sub_22C8FDE04();
  v1 = v0;
  v2 = [v0 shape];

  sub_22C3D3108();
  v3 = sub_22C90A5EC();

  v4 = sub_22C5F2370();
  sub_22C633A2C(v4, v5, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2318B8460](0, v3);
  }

  else
  {
    v6 = *(v3 + 32);
  }

  v7 = v6;

  v8 = sub_22C90A90C();

  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      do
      {
        sub_22C8FDE04();
        v12 = v11;
        v13 = [v11 objectAtIndexedSubscript_];

        [v13 floatValue];
        v15 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v10 + 16);
          sub_22C36D270();
          sub_22C59470C();
          v10 = v19;
        }

        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_22C369AB0(v16);
          sub_22C59470C();
          v10 = v20;
        }

        ++v9;
        *(v10 + 16) = v17 + 1;
        *(v10 + 4 * v17 + 32) = v15;
      }

      while (v8 != v9);
    }

    sub_22C904C5C();
    sub_22C37BF60();
  }
}

void sub_22C75CE68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v179 = a2;
  v166 = a3;
  v4 = sub_22C3A5908(&qword_27D9BFD50, &qword_22C9254D0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  sub_22C3698F8(v8);
  v184 = sub_22C90625C();
  v9 = sub_22C369824(v184);
  v180 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C3698F8(v14);
  v170 = sub_22C90508C();
  v15 = sub_22C369824(v170);
  v167 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C3698F8(v20);
  v161 = sub_22C90511C();
  v21 = sub_22C369824(v161);
  v160 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C3698A8();
  v168 = v25;
  v26 = sub_22C3A5908(&qword_27D9BFD58, &qword_22C9254D8);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  v31 = &v159 - v30;
  v32 = sub_22C904E9C();
  v33 = sub_22C369824(v32);
  v177 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v165 = sub_22C904F6C();
  v42 = sub_22C369824(v165);
  v164 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  v174 = v46;
  v186 = a1;
  sub_22C8FDDF0();
  v48 = v47;
  v49 = &off_278729000;
  inited = [v47 shape];

  sub_22C3D3108();
  v51 = sub_22C90A5EC();

  sub_22C760B24();
  sub_22C633A2C(1, v52, v51);
  v163 = v31;
  if (inited)
  {
    goto LABEL_90;
  }

  v53 = *(v51 + 40);
LABEL_3:
  sub_22C37BB14();

  v54 = sub_22C90A90C();

  sub_22C8FDDF0();
  v56 = v55;
  v57 = [v55 v49[440]];

  v58 = sub_22C90A5EC();
  sub_22C760B24();
  sub_22C633A2C(2, v59, v58);
  if (v57)
  {
    MEMORY[0x2318B8460](2, v58);
  }

  else
  {
    v60 = *(v58 + 48);
  }

  sub_22C37BB14();

  v187 = sub_22C90A90C();

  sub_22C90525C();
  sub_22C37A078(v192);
  sub_22C904C6C();
  sub_22C904C5C();
  v61 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v62 = sub_22C760B78(v61, &v196);
  v188 = xmmword_22C922290;
  *(v62 + 16) = xmmword_22C922290;
  *(v62 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (v54 < 0)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v175 = v54;
  if (v54)
  {
    sub_22C36FE40();
    if ((v63 & 0x8000000000000000) == 0)
    {
      v64 = 0;
      v65 = v62 & 0xFFFFFFFFFFFFFF8;
      sub_22C3768F8(v193);
      v176 = v32;
      v173 = v39;
      v171 = v62 & 0xFFFFFFFFFFFFFF8;
      v172 = v62;
      while (1)
      {
        sub_22C37EFC0();
        inited = swift_initStackObject();
        sub_22C38AAA0(inited);
        *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v66 = *(v65 + 16);

        if (swift_isUniquelyReferenced_nonNull_bridgeObject() && v66 < *(v65 + 24) >> 1)
        {
          v51 = v62;
        }

        else
        {
          v51 = sub_22C90AF9C();
          v65 = v51 & 0xFFFFFFFFFFFFFF8;
        }

        v67 = *(v65 + 16);
        if (v67 >= *(v65 + 24) >> 1)
        {
          goto LABEL_87;
        }

        v178 = v64;
        sub_22C3889A8(v65 + 8 * v67);
        swift_arrayInitWithCopy();

        ++*(v65 + 16);
        sub_22C37A078(v195);
        sub_22C904C6C();
        sub_22C904C5C();
        sub_22C36FE40();
        if (v68)
        {
          break;
        }

LABEL_34:

        sub_22C36BA4C(v191);
        v91 = v173;
        v92 = v176;
        v93(v173, v185, v176);
        v94 = v174;
        v95 = sub_22C904F3C();
        v97 = sub_22C3838BC(v95, v96);
        *v32 = v94;
        if ((v97 & 1) == 0)
        {
          v103 = *(v94 + 16);
          sub_22C36D270();
          sub_22C5949A4();
          sub_22C375FF0(v104);
        }

        v98 = v178;
        v39 = *(v94 + 16);
        v99 = *(v94 + 24);
        v49 = (v39 + 1);
        v62 = v172;
        if (v39 >= v99 >> 1)
        {
          sub_22C369AB0(v99);
          sub_22C37AD30();
          sub_22C5949A4();
          sub_22C375FF0(v105);
        }

        v64 = v98 + 1;
        *(v94 + 16) = v49;
        v100 = sub_22C370374(v193);
        v101(v100, v91, v92);
        v102 = sub_22C372444();
        (v51)(v102);
        (*(v39 + 9))(v185, v92);
        v54 = v175;
        v65 = v171;
        if (v64 == v175)
        {
          goto LABEL_39;
        }
      }

      v39 = 0;
      while (1)
      {
        sub_22C37EFC0();
        inited = swift_initStackObject();
        sub_22C38AAA0(inited);
        *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v32 = v51 >> 62;
        if (v51 >> 62)
        {
          v69 = sub_22C90B1BC();
        }

        else
        {
          v69 = *(v65 + 16);
        }

        v49 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          MEMORY[0x2318B8460](1, v51);
          goto LABEL_3;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v32)
        {
          goto LABEL_26;
        }

        v70 = v65;
        v32 = v51;
        if (v49 > *(v65 + 24) >> 1)
        {
          goto LABEL_25;
        }

LABEL_28:
        v72 = *(v70 + 16);
        if (v72 >= *(v70 + 24) >> 1)
        {
          goto LABEL_81;
        }

        sub_22C3889A8(v70 + 8 * v72);
        swift_arrayInitWithCopy();

        ++*(v70 + 16);
        sub_22C8FDDF0();
        v74 = v73;
        v75 = sub_22C90A5DC();

        v77 = sub_22C38C484(v76, sel_objectForKeyedSubscript_);

        [v77 floatValue];
        v79 = v78;

        v80 = sub_22C904E6C();
        v32 = v81;
        v82 = *v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v32 = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v88 = *(v82 + 16);
          sub_22C36D270();
          sub_22C59470C();
          v82 = v89;
          *v32 = v89;
        }

        v85 = *(v82 + 16);
        v84 = *(v82 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_22C369AB0(v84);
          sub_22C37AD30();
          sub_22C59470C();
          v82 = v90;
          *v32 = v90;
        }

        ++v39;
        *(v82 + 16) = v85 + 1;
        *(v82 + 4 * v85 + 32) = v79;
        v86 = sub_22C372444();
        v80(v86);
        sub_22C36FE40();
        if (v87 == v39)
        {
          goto LABEL_34;
        }
      }

      if (v32)
      {
LABEL_26:
        sub_22C90B1BC();
      }

      else
      {
LABEL_25:
        v71 = *(v65 + 16);
      }

      v32 = sub_22C90AF9C();
      v70 = v32 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_28;
    }

    goto LABEL_93;
  }

LABEL_39:

  v51 = v165;
  (*(v164 + 16))(v163, v174, v165);
  v106 = sub_22C3726A4();
  sub_22C386860(v106, v107, v108, v51);
  sub_22C90523C();
  sub_22C37A078(v190);
  sub_22C904C6C();
  sub_22C904C5C();
  sub_22C37EFC0();
  v32 = swift_allocObject();
  sub_22C38AAA0(v32);
  *(v32 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (!v54)
  {
LABEL_79:

    v153 = v160;
    v154 = v168;
    v155 = v161;
    (*(v160 + 16))(v162, v168, v161);
    sub_22C36BECC();
    sub_22C36C640(v156, v157, v158, v155);
    sub_22C90524C();
    (*(v153 + 8))(v154, v155);
    (*(v164 + 8))(v174, v165);
    return;
  }

  sub_22C36FE40();
  if ((v109 & 0x8000000000000000) == 0)
  {
    inited = 0;
    v110 = v32 & 0xFFFFFFFFFFFFFF8;
    v185 = v180 + 16;
    sub_22C760B30(v180);
    sub_22C3768F8(v189);
    v171 = v32 & 0xFFFFFFFFFFFFFF8;
    v172 = v32;
    while (1)
    {
      if (__OFADD__(inited, 1))
      {
        goto LABEL_88;
      }

      v173 = (inited + 1);
      sub_22C37EFC0();
      v51 = swift_initStackObject();
      sub_22C38AAA0(v51);
      *(v51 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      inited = *(v110 + 16);

      if (swift_isUniquelyReferenced_nonNull_bridgeObject() && inited < *(v110 + 24) >> 1)
      {
        v111 = v32;
      }

      else
      {
        v111 = sub_22C90AF9C();
        v110 = v111 & 0xFFFFFFFFFFFFFF8;
      }

      if (*(v110 + 16) >= *(v110 + 24) >> 1)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      ++*(v110 + 16);
      sub_22C37A078(v194);
      sub_22C904C6C();
      sub_22C904C5C();
      sub_22C36FE40();
      if (v112)
      {
        break;
      }

LABEL_74:

      sub_22C36BA4C(v191);
      v141(v169, v181, v170);
      v142 = v168;
      v143 = sub_22C9050EC();
      v145 = sub_22C3838BC(v143, v144);
      *v32 = v142;
      if ((v145 & 1) == 0)
      {
        v150 = *(v142 + 16);
        sub_22C36D270();
        sub_22C5948DC();
        sub_22C375FF0(v151);
      }

      v110 = v171;
      v146 = v173;
      v39 = *(v142 + 16);
      v147 = *(v142 + 24);
      v49 = (v39 + 1);
      if (v39 >= v147 >> 1)
      {
        sub_22C369AB0(v147);
        sub_22C37AD30();
        sub_22C5948DC();
        sub_22C375FF0(v152);
      }

      v32 = v172;
      *(v142 + 16) = v49;
      sub_22C370374(v189);
      sub_22C386ADC();
      v148();
      v149 = sub_22C372444();
      (v51)(v149);
      (*(v39 + 9))(v181, v142);
      inited = v146;
      if (v146 == v175)
      {
        goto LABEL_79;
      }
    }

    v51 = 0;
    if (v111 >= 0)
    {
      v113 = v110;
    }

    else
    {
      v113 = v111;
    }

    v176 = v113;
    while (1)
    {
      sub_22C37EFC0();
      inited = swift_initStackObject();
      sub_22C38AAA0(inited);
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v32 = v111 >> 62;
      if (v111 >> 62)
      {
        v114 = sub_22C90B1BC();
      }

      else
      {
        v114 = *(v110 + 16);
      }

      v49 = (v114 + 1);
      if (__OFADD__(v114, 1))
      {
        goto LABEL_82;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v32)
        {
          goto LABEL_63;
        }

        v39 = v110;
        v32 = v111;
        if (v49 <= *(v110 + 24) >> 1)
        {
          goto LABEL_65;
        }
      }

      else if (v32)
      {
LABEL_63:
        sub_22C90B1BC();
        goto LABEL_64;
      }

      v115 = *(v110 + 16);
LABEL_64:
      v32 = sub_22C90AF9C();
      v39 = v32 & 0xFFFFFFFFFFFFFF8;
LABEL_65:
      v116 = *(v39 + 16);
      if (v116 >= *(v39 + 24) >> 1)
      {
        goto LABEL_83;
      }

      sub_22C3889A8(v39 + 8 * v116);
      swift_arrayInitWithCopy();

      ++*(v39 + 16);
      sub_22C8FDDF0();
      v118 = v117;
      v49 = sub_22C90A5DC();

      v32 = sub_22C38C484(v119, sel_objectForKeyedSubscript_);

      [v32 floatValue];
      v121 = v120;
      inited = LODWORD(v120);

      if ((inited & 0x7FFFFFFF) > 0x7F7FFFFF)
      {
        goto LABEL_84;
      }

      if (v121 <= -9.2234e18)
      {
        goto LABEL_85;
      }

      if (v121 >= 9.2234e18)
      {
        goto LABEL_86;
      }

      MEMORY[0x28223BE20](v122);
      *(&v159 - 2) = v179;
      *(&v159 - 1) = v123;
      v124 = v182;
      sub_22C386ADC();
      sub_22C9062CC();
      sub_22C36BA4C(v195);
      v125(v183, v124, inited);
      v126 = sub_22C90505C();
      v128 = v127;
      v39 = *v127;
      v129 = swift_isUniquelyReferenced_nonNull_native();
      *v128 = v39;
      if ((v129 & 1) == 0)
      {
        v138 = *(v39 + 16);
        sub_22C36D270();
        sub_22C594814();
        v39 = v139;
        *v128 = v139;
      }

      v131 = *(v39 + 16);
      v130 = *(v39 + 24);
      if (v131 >= v130 >> 1)
      {
        sub_22C369AB0(v130);
        sub_22C594814();
        v39 = v140;
        *v128 = v140;
      }

      ++v51;
      *(v39 + 16) = v131 + 1;
      v32 = v180;
      v132 = *(v180 + 80);
      sub_22C36BA94();
      v134 = v39 + v133 + *(v32 + 72) * v131;
      v135 = v184;
      (*(v32 + 32))(v134, v183, v184);
      v136 = sub_22C372444();
      v126(v136);
      (*(v32 + 8))(v182, v135);
      sub_22C36FE40();
      if (v137 == v51)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_94:
  __break(1u);
}

void sub_22C75DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C386340();
  a21 = v22;
  a22 = v23;
  v108 = v24;
  v114 = sub_22C90625C();
  v25 = sub_22C369824(v114);
  v109 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  sub_22C3698F8(v30);
  v105 = sub_22C90522C();
  v31 = sub_22C369824(v105);
  v106 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v37 = v36 - v35;
  sub_22C904C6C();
  sub_22C904C5C();
  sub_22C8FDE20();
  v39 = v38;
  v40 = &off_278729000;
  v41 = [v38 shape];

  sub_22C3D3108();
  v42 = sub_22C90A5EC();

  v43 = (v42 & 0xC000000000000001);
  v44 = sub_22C5F2370();
  sub_22C633A2C(v44, v45, v42);
  if ((v42 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  v46 = *(v42 + 32);
  while (1)
  {
    sub_22C37BB14();

    v47 = sub_22C90A90C();

    sub_22C8FDE20();
    v49 = v48;
    v50 = [v48 v40[440]];

    v51 = sub_22C90A5EC();
    sub_22C760B24();
    sub_22C633A2C(1, v52, v51);
    if (v50)
    {
      MEMORY[0x2318B8460](1, v51);
    }

    else
    {
      v53 = *(v51 + 40);
    }

    sub_22C37BB14();

    v54 = sub_22C90A90C();

    if (v47 < 0)
    {
      break;
    }

    v104 = v47;
    if (!v47)
    {
LABEL_28:
      sub_22C37BF60();
      return;
    }

    v55 = v54 - 2;
    if (__OFSUB__(v54, 2))
    {
      goto LABEL_34;
    }

    v56 = 0;
    v40 = 0;
    sub_22C760B30(v106);
    v57 = &off_278729000;
    v110 = v54 - 2;
    v111 = v37;
    while (1)
    {
      v58 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      v42 = sub_22C760B78(v58, &a13);
      sub_22C383438(v42, &a15);
      v107 = v56;
      *(v42 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_22C90521C();
      sub_22C9051EC();
      if (v55 >= 1)
      {
        break;
      }

      v84 = 0;
LABEL_24:
      inited = swift_initStackObject();
      sub_22C383438(inited, &a15);
      inited[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) v57[446]];
      v115[0] = v42;

      sub_22C3CE468(inited);
      if (v55 >= 1)
      {
      }

      sub_22C8FDE20();
      v87 = v86;
      v88 = sub_22C90A5DC();

      v37 = sub_22C38C484(v89, sel_objectForKeyedSubscript_);

      [v37 floatValue];
      v90 = sub_22C375AFC();
      MEMORY[0x2318B26D0](v90);
      v91 = swift_initStackObject();
      sub_22C383438(v91, &a15);
      v43 = (v84 + 1);
      if (__OFADD__(v84, 1))
      {
        goto LABEL_30;
      }

      v93 = v92;
      v56 = v107 + 1;
      v57 = &off_278729000;
      *(v92 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v115[0] = v42;
      sub_22C3CE468(v93);
      sub_22C8FDE20();
      v95 = v94;
      v96 = sub_22C90A5DC();

      v97 = [v95 &off_278729AF8];

      [v97 floatValue];
      sub_22C375AFC();
      sub_22C90520C();
      v98 = sub_22C90519C();
      v100 = v99;
      sub_22C3D0FC8();
      v101 = *(*v100 + 16);
      sub_22C3D118C(v101);
      *(*v100 + 16) = v101 + 1;
      sub_22C760B48();
      v102 = *(v106 + 16);
      sub_22C386ADC();
      v103();
      v98(v115, 0);
      (*(v106 + 8))(v111, v100);
      v55 = v110;
      if (v107 + 1 == v104)
      {
        goto LABEL_28;
      }
    }

    v37 = 0;
    v59 = 0;
    while (1)
    {
      v43 = swift_initStackObject();
      sub_22C383438(v43, &a15);
      v43[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v60 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v61 = v42 & 0xFFFFFFFFFFFFFF8, v60 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v61 = sub_22C90AF9C() & 0xFFFFFFFFFFFFFF8;
      }

      v62 = *(v61 + 16);
      if (v62 >= *(v61 + 24) >> 1)
      {
        break;
      }

      sub_22C3889A8(v61 + 8 * v62);
      swift_arrayInitWithCopy();

      ++*(v61 + 16);
      if (v37)
      {
      }

      sub_22C8FDE20();
      v64 = v63;
      v65 = sub_22C90A5DC();

      v67 = sub_22C38C484(v66, sel_objectForKeyedSubscript_);

      v68 = sub_22C90A90C();
      MEMORY[0x28223BE20](v69);
      sub_22C369920();
      *(v70 - 16) = v108;
      *(v70 - 8) = v68;
      sub_22C386ADC();
      sub_22C9062CC();
      sub_22C36BA4C(&v116);
      v71(v113, v112, v68);
      v72 = sub_22C9051DC();
      v74 = v73;
      v75 = *v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v74 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = *(v75 + 16);
        sub_22C36D270();
        sub_22C594814();
        v75 = v82;
        *v74 = v82;
      }

      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_22C369AB0(v77);
        sub_22C377674();
        sub_22C594814();
        v75 = v83;
        *v74 = v83;
      }

      *(v75 + 16) = v78 + 1;
      v79 = *(v109 + 80);
      sub_22C36BA94();
      (*(v109 + 32))(v75 + v80 + *(v109 + 72) * v78, v113, v114);
      v72(v115, 0);
      (*(v109 + 8))(v112, v114);
      ++v59;
      v37 = 1;
      if (v110 == v59)
      {
        v55 = v110;
        v84 = v110;
        v57 = &off_278729000;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    MEMORY[0x2318B8460](0, v42);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C75EA08()
{
  sub_22C760BD8();
  sub_22C8FDEB0();
  v1 = v0;
  v2 = [v0 objectAtIndexedSubscript_];

  v3 = sub_22C90ABEC();
  v4 = sub_22C90ABFC();

  return v4 & 1;
}

void sub_22C75EA88(id *a1@<X0>, void *a2@<X8>)
{
  sub_22C904F1C();
  v40 = a1;
  v6 = [a1[2] shape];
  sub_22C760BD8();
  v7 = sub_22C90A5EC();

  v8 = sub_22C36E2B8(v7);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    sub_22C38BFCC();
    if (v3 < 0)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v9)
      {
        sub_22C760BAC();
      }

      else
      {
        v10 = sub_22C37ED5C();
      }

      v11 = sub_22C3745A8(v10);

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_84;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500();
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v9 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_15:
  sub_22C37B778();
  sub_22C904ECC();
  v14 = [v40[3] shape];
  v15 = sub_22C760B94();

  if (sub_22C36E2B8(v15))
  {
    sub_22C38BFCC();
    if (v3 < 0)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v9)
      {
        sub_22C760BAC();
      }

      else
      {
        v16 = sub_22C37ED5C();
      }

      v17 = sub_22C3745A8(v16);

      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v17))
      {
        goto LABEL_86;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500();
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v9 = MEMORY[0x277D84F90];
        goto LABEL_29;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_29:
  sub_22C37B778();
  sub_22C904EBC();
  v18 = [v40[4] shape];
  v19 = sub_22C760B94();

  if (sub_22C36E2B8(v19))
  {
    sub_22C38BFCC();
    if (v3 < 0)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v9)
      {
        sub_22C760BAC();
      }

      else
      {
        v20 = sub_22C37ED5C();
      }

      v21 = sub_22C3745A8(v20);

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_88;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500();
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v9 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_43:
  sub_22C37B778();
  sub_22C904EEC();
  v22 = [v40[5] shape];
  v23 = sub_22C760B94();

  if (sub_22C36E2B8(v23))
  {
    sub_22C38BFCC();
    if (v3 < 0)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v9)
      {
        sub_22C760BAC();
      }

      else
      {
        v24 = sub_22C37ED5C();
      }

      v25 = sub_22C3745A8(v24);

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (HIDWORD(v25))
      {
        goto LABEL_90;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500();
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v9 = MEMORY[0x277D84F90];
        goto LABEL_57;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_57:
  sub_22C37B778();
  sub_22C904F0C();
  v26 = [v40[6] shape];
  v27 = sub_22C760B94();

  if (sub_22C36E2B8(v27))
  {
    sub_22C38BFCC();
    if (v3 < 0)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v9)
      {
        sub_22C760BAC();
      }

      else
      {
        v28 = sub_22C37ED5C();
      }

      v29 = sub_22C3745A8(v28);

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      if (HIDWORD(v29))
      {
        goto LABEL_92;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500();
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v9 = MEMORY[0x277D84F90];
        goto LABEL_71;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_71:
  sub_22C37B778();
  sub_22C904EFC();
  v30 = [v40[7] shape];
  v31 = sub_22C760B94();

  v32 = sub_22C36E2B8(v31);
  if (!v32)
  {
LABEL_82:

    sub_22C37B778();
    sub_22C904EDC();
    return;
  }

  v33 = v32;
  sub_22C3B7754();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    while (1)
    {
      v35 = (v31 & 0xC000000000000001) != 0 ? MEMORY[0x2318B8460](v34, v31) : *(v31 + 8 * v34 + 32);
      v36 = v35;
      v37 = [v35 integerValue];

      if ((v37 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v37))
      {
        goto LABEL_94;
      }

      v39 = *(v9 + 16);
      v38 = *(v9 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22C369AB0(v38);
        sub_22C3B7754();
      }

      ++v34;
      *(v9 + 16) = v39 + 1;
      *(v9 + 4 * v39 + 32) = v37;
      if (v33 == v34)
      {
        goto LABEL_82;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

LABEL_100:
  __break(1u);
}

uint64_t sub_22C75EFE8(uint64_t a1, uint64_t a2)
{
  v52[0] = a1;
  v52[1] = a2;
  sub_22C3858B4();
  sub_22C90AD9C();
  v6 = sub_22C3813C8();
  sub_22C633A28(v6, 3, v2);
  sub_22C760BC4();

  if (v52 > 0 || v5 < 2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = v4[3];

  v12 = sub_22C862FDC(1uLL, v8, v9);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ((v5 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    sub_22C7608F0(v3, v4, v52, v5);
    sub_22C760BC4();
  }

  if (v5 < 2 || v52 > 0)
  {
    goto LABEL_29;
  }

  v20 = v4[3];
  *v4 = v12;
  v4[1] = v14;
  v4[2] = v16;
  v4[3] = v18;

  sub_22C90629C();
  if ((v4[1] ^ *v4) < 0x4000)
  {
LABEL_30:
    LOBYTE(v30) = 1;
    goto LABEL_18;
  }

  v22 = v4[2];
  v21 = v4[3];
  v23 = sub_22C372CE4();
  v28 = sub_22C76098C(v23, v24, v25, v26, v27);
  if ((v28 & 0x10000000000) != 0)
  {

    sub_22C372CE4();
    sub_22C8A3F68();
    v28 = v29;
  }

  v30 = (v28 & 0x100000000uLL) >> 32;
LABEL_18:
  sub_22C37A350(v30);
  sub_22C90626C();
  if (v5 < 4)
  {
    __break(1u);
    goto LABEL_32;
  }

  if ((v4[5] ^ v4[4]) < 0x4000)
  {
LABEL_32:
    LOBYTE(v40) = 1;
    goto LABEL_23;
  }

  v32 = v4[6];
  v31 = v4[7];
  v33 = sub_22C372CE4();
  v38 = sub_22C76098C(v33, v34, v35, v36, v37);
  if ((v38 & 0x10000000000) != 0)
  {

    sub_22C372CE4();
    sub_22C8A3F68();
    v38 = v39;
  }

  v40 = (v38 & 0x100000000uLL) >> 32;
LABEL_23:
  sub_22C37A350(v40);
  sub_22C90627C();
  if (v5 < 6)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v4[9] ^ v4[8]) < 0x4000)
  {
LABEL_34:
    LOBYTE(v50) = 1;
    goto LABEL_28;
  }

  v42 = v4[10];
  v41 = v4[11];
  v43 = sub_22C760B60();
  v48 = sub_22C76098C(v43, v44, v45, v46, v47);
  if ((v48 & 0x10000000000) != 0)
  {

    sub_22C760B60();
    sub_22C8A3F68();
    v48 = v49;
  }

  v50 = (v48 & 0x100000000uLL) >> 32;
LABEL_28:
  sub_22C37A350(v50);
  sub_22C90628C();
  return swift_unknownObjectRelease();
}

void sub_22C75F264()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9052EC();
  v5 = sub_22C369824(v4);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  sub_22C904C6C();
  v64 = v3;
  sub_22C904C5C();
  v68 = v1;
  v15 = &off_278729000;
  v16 = [*(v1 + 64) shape];
  v67 = sub_22C760BD8();
  v17 = sub_22C90A5EC();

  inited = v17 & 0xC000000000000001;
  v19 = sub_22C5F2370();
  sub_22C633A2C(v19, v20, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  v21 = *(v17 + 32);
  while (1)
  {
    sub_22C37BB14();

    v22 = sub_22C90A90C();

    v23 = [*(v68 + 64) *(v15 + 3520)];
    v24 = sub_22C90A5EC();

    sub_22C760B24();
    sub_22C633A2C(1, v25, v24);
    if (v23)
    {
      MEMORY[0x2318B8460](1, v24);
    }

    else
    {
      v26 = *(v24 + 40);
    }

    sub_22C37BB14();

    v71 = sub_22C90A90C();

    if (v22 < 0)
    {
      break;
    }

    if (!v22)
    {
LABEL_28:
      sub_22C36CC48();
      return;
    }

    if (v71 < 0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v62 = v65 + 32;
    v63 = (v65 + 16);
    v61 = v65 + 8;
    v70 = xmmword_22C922290;
    v60 = v4;
    v59 = v11;
    v58 = v22;
    while (1)
    {
      sub_22C904C6C();
      sub_22C904C5C();
      v69 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      v28 = swift_allocObject();
      *(v28 + 16) = v70;
      v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v66 = v27;
      *(v28 + 32) = [v29 initWithInteger_];
      if (v71)
      {
        break;
      }

LABEL_23:
      (*v63)(v11, v14, v4);
      v44 = sub_22C904C4C();
      v46 = v45;
      v47 = *v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v46 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = *(v47 + 16);
        sub_22C36D270();
        sub_22C594B34();
        v47 = v56;
        *v46 = v56;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_22C369AB0(v49);
        sub_22C377674();
        sub_22C594B34();
        v47 = v57;
        *v46 = v57;
      }

      v51 = v65;
      *(v47 + 16) = v50 + 1;
      v52 = *(v51 + 80);
      sub_22C36BA94();
      v27 = v54;
      (*(v51 + 32))(v47 + v53 + *(v51 + 72) * v50, v11, v4);
      v44(v72, 0);
      (*(v51 + 8))(v14, v4);
      if (v27 == v22)
      {
        goto LABEL_28;
      }
    }

    v30 = v14;
    v31 = 0;
    v14 = (v28 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v70;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v17 = v28 & 0xFFFFFFFFFFFFFF8, v15 = v28, v32 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v15 = sub_22C90AF9C();
        v17 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v33 = *(v17 + 16);
      if (v33 >= *(v17 + 24) >> 1)
      {
        break;
      }

      sub_22C3889A8(v17 + 8 * v33);
      swift_arrayInitWithCopy();

      ++*(v17 + 16);
      v17 = *(v68 + 64);
      inited = sub_22C90A5DC();

      v15 = [v17 objectForKeyedSubscript_];

      v34 = [v15 intValue];
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      v35 = sub_22C9052BC();
      v37 = v36;
      v38 = *v36;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((v39 & 1) == 0)
      {
        v41 = *(v38 + 16);
        sub_22C36D270();
        sub_22C594734();
        v38 = v42;
        *v37 = v42;
      }

      v11 = *(v38 + 16);
      v40 = *(v38 + 24);
      v4 = v11 + 1;
      if (v11 >= v40 >> 1)
      {
        sub_22C369AB0(v40);
        sub_22C594734();
        v38 = v43;
        *v37 = v43;
      }

      ++v31;
      *(v38 + 16) = v4;
      *(v38 + 4 * v11 + 32) = v34;
      v35(v72, 0);
      if (v71 == v31)
      {

        v4 = v60;
        v11 = v59;
        v14 = v30;
        v22 = v58;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    MEMORY[0x2318B8460](0, v17);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22C75F814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C386340();
  a21 = v23;
  a22 = v24;
  v93 = v25;
  v27 = v26;
  v28 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C37FCFC();
  v32 = sub_22C90500C();
  v33 = sub_22C369824(v32);
  v94 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  sub_22C38B638();
  v37 = sub_22C90515C();
  v38 = sub_22C369824(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v45 = (v44 - v43);
  sub_22C904C6C();
  sub_22C904C5C();
  v46 = [*(v27 + 56) shape];
  sub_22C760BD8();
  v47 = sub_22C90A5EC();

  v48 = (v47 & 0xC000000000000001);
  v49 = sub_22C5F2370();
  sub_22C633A2C(v49, v50, v47);
  if ((v47 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2318B8460](0, v47);
  }

  else
  {
    v51 = *(v47 + 32);
  }

  sub_22C37BB14();

  v52 = sub_22C90A90C();

  if (v52 < 0)
  {
    __break(1u);
  }

  else
  {
    v90 = v37;
    if (v52)
    {
      v91 = sub_22C90625C();
      v53 = 0;
      v96 = v27;
      v92 = v52;
      do
      {
        v95 = v53 + 1;
        sub_22C904FFC();
        v54 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
        v55 = sub_22C760B78(v54, &a16);
        sub_22C383438(v55, &a17);
        v55[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        inited = swift_initStackObject();
        sub_22C383438(inited, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:0 initWithPattern:? options:? error:?]);

        sub_22C3CE468(inited);
        v57 = *(v27 + 56);
        v58 = sub_22C90A5DC();

        v59 = [v57 objectForKeyedSubscript_];

        v60 = sub_22C90A90C();
        MEMORY[0x28223BE20](v61);
        sub_22C369920();
        *(v62 - 16) = v93;
        *(v62 - 8) = v60;
        sub_22C9062CC();
        v63 = sub_22C389250();
        sub_22C36C640(v63, v64, v65, v91);
        sub_22C904F8C();
        v66 = swift_initStackObject();
        sub_22C383438(v66, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]);

        sub_22C3CE468(v66);
        v67 = *(v96 + 56);
        v68 = sub_22C90A5DC();

        v69 = [v67 objectForKeyedSubscript_];

        v70 = sub_22C90A90C();
        MEMORY[0x28223BE20](v71);
        sub_22C369920();
        *(v72 - 16) = v93;
        *(v72 - 8) = v70;
        sub_22C9062CC();
        v27 = v96;
        v73 = sub_22C389250();
        sub_22C36C640(v73, v74, v75, v91);
        sub_22C904FDC();
        v76 = swift_initStackObject();
        sub_22C383438(v76, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]);
        sub_22C3CE468(v76);
        v77 = *(v96 + 56);
        sub_22C37BB14();
        v78 = sub_22C90A5DC();

        v80 = sub_22C38C484(v79, sel_objectForKeyedSubscript_);

        sub_22C90A85C();
        v97[0] = 0;
        sub_22C904FEC();
        v81 = sub_22C90512C();
        v83 = v82;
        sub_22C3D0FE0();
        v84 = *(*v83 + 16);
        sub_22C3D11A4(v84);
        *(*v83 + 16) = v84 + 1;
        sub_22C760B48();
        (*(v94 + 16))(v85 + v86 * v84, v22, v32);
        v81(v97, 0);
        (*(v94 + 8))(v22, v32);
        v53 = v95;
      }

      while (v92 != v95);
    }

    sub_22C3A5908(&qword_27D9BFD20, &unk_22C925498);
    v87 = *(v40 + 72);
    v88 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_22C90F800;
    (*(v40 + 32))(v89 + v88, v45, v90);
    sub_22C37BF60();
  }
}

uint64_t sub_22C75FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37FCFC();
  if (*(a2 + 16) && (v10 = sub_22C628CD4(a3), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a2 + 56);
    v14 = sub_22C90069C();
    sub_22C36985C(v14);
    (*(v15 + 16))(v3, v13 + *(v15 + 72) * v12, v14);
    v16 = sub_22C389250();
    v19 = v14;
  }

  else
  {
    v19 = sub_22C90069C();
    v16 = v3;
    v17 = 1;
    v18 = 1;
  }

  sub_22C36C640(v16, v17, v18, v19);
  return sub_22C90623C();
}

void sub_22C760038(uint64_t a1)
{
  v3 = [*(a1 + 88) shape];
  sub_22C3813C8();
  sub_22C3D3108();
  v4 = sub_22C386D8C();

  v5 = (v4 & 0xC000000000000001);
  v6 = sub_22C5F2370();
  sub_22C633A2C(v6, v7, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v8 = *(v4 + 32);
  }

  sub_22C760BF0();
  v9 = sub_22C90A90C();

  if (v9 < 0)
  {
    __break(1u);
  }

  else if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = [*(a1 + 88) objectAtIndexedSubscript_];
      [v11 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v10 + 16);
        sub_22C36D270();
        sub_22C59470C();
        v10 = v16;
      }

      sub_22C381788();
      if (v13)
      {
        sub_22C369AB0(v12);
        sub_22C377674();
        sub_22C59470C();
        v10 = v17;
      }

      sub_22C37FF70();
    }

    while (!v14);
  }
}

void sub_22C760184(uint64_t a1)
{
  v3 = [*(a1 + 112) shape];
  sub_22C3813C8();
  sub_22C3D3108();
  v4 = sub_22C386D8C();

  v5 = (v4 & 0xC000000000000001);
  v6 = sub_22C5F2370();
  sub_22C633A2C(v6, v7, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v8 = *(v4 + 32);
  }

  sub_22C760BF0();
  v9 = sub_22C90A90C();

  if (v9 < 0)
  {
    __break(1u);
  }

  else if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = [*(a1 + 112) objectAtIndexedSubscript_];
      [v11 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v10 + 16);
        sub_22C36D270();
        sub_22C59470C();
        v10 = v16;
      }

      sub_22C381788();
      if (v13)
      {
        sub_22C369AB0(v12);
        sub_22C377674();
        sub_22C59470C();
        v10 = v17;
      }

      sub_22C37FF70();
    }

    while (!v14);
  }
}

void sub_22C7602D0(uint64_t a1)
{
  v3 = [*(a1 + 96) shape];
  sub_22C3813C8();
  sub_22C3D3108();
  v4 = sub_22C386D8C();

  v5 = (v4 & 0xC000000000000001);
  v6 = sub_22C5F2370();
  sub_22C633A2C(v6, v7, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v8 = *(v4 + 32);
  }

  sub_22C760BF0();
  v9 = sub_22C90A90C();

  if (v9 < 0)
  {
    __break(1u);
  }

  else if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = [*(a1 + 96) objectAtIndexedSubscript_];
      [v11 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v10 + 16);
        sub_22C36D270();
        sub_22C59470C();
        v10 = v16;
      }

      sub_22C381788();
      if (v13)
      {
        sub_22C369AB0(v12);
        sub_22C377674();
        sub_22C59470C();
        v10 = v17;
      }

      sub_22C37FF70();
    }

    while (!v14);
  }
}

float sub_22C7606B4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 80) objectAtIndexedSubscript_];
  sub_22C90A85C();
  v4 = v3;

  return v4;
}

uint64_t sub_22C760708()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v2 = sub_22C90069C();
  sub_22C36985C(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, v2);
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C36FF94((v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream));
  }

  return v0;
}

uint64_t sub_22C7607A8()
{
  sub_22C760708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JointResolverTelemetry()
{
  result = qword_281433320;
  if (!qword_281433320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C760854()
{
  result = sub_22C90069C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22C7608F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_22C5979E0();
  if (v4 < a3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();

  sub_22C3E171C(v7, a3);
}

uint64_t sub_22C76098C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_22C90AFCC();
  }

  result = sub_22C8A4C9C(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE4(result) & 1;
    v14 = result | ((BYTE4(result) & 1) << 32);
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_22C760A9C()
{
  result = qword_2814356F0;
  if (!qword_2814356F0)
  {
    sub_22C9061CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814356F0);
  }

  return result;
}

uint64_t sub_22C760B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return swift_allocObject();
}

uint64_t sub_22C760B94()
{

  return sub_22C90A5EC();
}

void sub_22C760BAC()
{

  JUMPOUT(0x2318B8460);
}

unint64_t sub_22C760BD8()
{

  return sub_22C3D3108();
}

uint64_t sub_22C760BF0()
{
}

unint64_t sub_22C760C08(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_22C908C5C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  v73 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v72 = v16;
  sub_22C36BA0C();
  v17 = sub_22C9063DC();
  v78 = sub_22C369824(v17);
  v79 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v23 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v26 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  v29 = v28;
  v77 = sub_22C76256C();
  if (!v30)
  {
    sub_22C903FAC();
    (*(v7 + 16))(v12, a1, v4);
    v44 = sub_22C9063CC();
    v45 = sub_22C90AABC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = sub_22C383050();
      v80 = sub_22C37A180();
      *v46 = 136315394;
      *(v46 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v46 + 12) = 2080;
      v47 = sub_22C908B9C();
      v49 = v48;
      (*(v7 + 8))(v12, v4);
      v50 = sub_22C36F9F4(v47, v49, &v80);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_22C366000, v44, v45, "%s Cannot compute tokenDistance. candidateTitle is nil for candidate: %s", v46, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v7 + 8))(v12, v4);
    }

    sub_22C3828B0();
    v70 = v2;
    goto LABEL_16;
  }

  v31 = v30;
  v32 = sub_22C761498(a1, a2);
  if (!v33)
  {
    sub_22C903FAC();
    v51 = v7;
    (*(v7 + 16))(v73, a1, v4);

    v52 = sub_22C9063CC();
    v53 = sub_22C90AABC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v54 = 136315650;
      *(v54 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v54 + 12) = 2080;
      v55 = sub_22C36F9F4(v77, v31, &v80);

      *(v54 + 14) = v55;
      *(v54 + 22) = 2080;
      sub_22C908B9C();
      v56 = sub_22C37F9E8();
      v57(v56, v4);
      v58 = sub_22C36F9F4(v73, v31, &v80);

      *(v54 + 24) = v58;
      _os_log_impl(&dword_22C366000, v52, v53, "%s Cannot compute tokenDistance.\ncandidateTitle: '%s',but queryString is nil for candidate: %s", v54, 0x20u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v51 + 8))(v73, v4);
    }

    sub_22C3828B0();
    v70 = v23;
LABEL_16:
    v69(v70, v78);
    v38 = 0;
    v43 = 1;
    return v38 | (v43 << 32);
  }

  v34 = v32;
  v35 = v33;
  v76 = sub_22C7632C4();
  if ((v76 & 0x100000000) != 0)
  {
    v74 = v34;
    sub_22C903FAC();
    v59 = v7;
    (*(v7 + 16))(v72, a1, v4);

    v60 = sub_22C9063CC();
    v61 = sub_22C90AABC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v62 = 136315906;
      *(v62 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v62 + 12) = 2080;
      v63 = sub_22C36F9F4(v77, v31, &v80);

      *(v62 + 14) = v63;
      *(v62 + 22) = 2080;
      v64 = sub_22C36F9F4(v74, v35, &v80);

      *(v62 + 24) = v64;
      *(v62 + 32) = 2080;
      sub_22C908B9C();
      v65 = sub_22C37F9E8();
      v66(v65, v4);
      v67 = sub_22C36F9F4(v72, v72, &v80);

      *(v62 + 34) = v67;
      _os_log_impl(&dword_22C366000, v60, v61, "%s Cannot compute tokenDistance.\ncandidateTitle: '%s', queryString: '%s', but  exactMatchScore is nil for candidate: %s", v62, 0x2Au);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C3828B0();
    }

    else
    {

      (*(v59 + 8))(v72, v4);
      sub_22C3828B0();
    }

    v68(v26, v78);
    v43 = 1;
    goto LABEL_20;
  }

  sub_22C903FAC();

  v36 = sub_22C9063CC();
  v37 = sub_22C90AABC();

  if (!os_log_type_enabled(v36, v37))
  {

    (*(v79 + 8))(v29, v78);
    v43 = 0;
LABEL_20:
    v38 = v76;
    return v38 | (v43 << 32);
  }

  v38 = v76;
  v39 = v34;
  v40 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  *v40 = 136315906;
  *(v40 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
  *(v40 + 12) = 2048;
  *(v40 + 14) = *&v76;
  *(v40 + 22) = 2080;
  v41 = sub_22C36F9F4(v39, v35, &v80);

  *(v40 + 24) = v41;
  *(v40 + 32) = 2080;
  v42 = sub_22C36F9F4(v77, v31, &v80);

  *(v40 + 34) = v42;
  _os_log_impl(&dword_22C366000, v36, v37, "%s exactMatchScore: %f for queryString: '%s', candidateTitle: '%s'", v40, 0x2Au);
  swift_arrayDestroy();
  sub_22C3699EC();
  sub_22C3699EC();

  (*(v79 + 8))(v29, v78);
  v43 = 0;
  return v38 | (v43 << 32);
}

char *sub_22C761498(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  v5 = sub_22C369914(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_22C908CEC();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C76160C(a1, a2, v9);
  if (sub_22C370B74(v9, 1, v10) == 1)
  {
    sub_22C3770B0(v9, &qword_27D9BF740, &unk_22C923A40);
    return 0;
  }

  else
  {
    v16 = *(v13 + 32);
    sub_22C37017C();
    v17();
    sub_22C761F14();
    sub_22C385630();
    v18 = *(v13 + 8);
    v19 = sub_22C36A724();
    v20(v19);
  }

  return v9;
}

uint64_t sub_22C76160C@<X0>(void (**a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v122 = a3;
  v137 = sub_22C908C5C();
  v4 = sub_22C369824(v137);
  v132 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v131 = (v9 - v8);
  sub_22C36BA0C();
  v10 = sub_22C9063DC();
  v129 = sub_22C369824(v10);
  v130 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v129);
  sub_22C369838();
  v16 = v15 - v14;
  v135 = sub_22C9089DC();
  v17 = sub_22C369824(v135);
  v123 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v23 = v22 - v21;
  v127 = sub_22C908CEC();
  v24 = sub_22C369824(v127);
  v118 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v119 = v29 - v28;
  v30 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  v31 = sub_22C369914(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v125 = v117 - v34;
  sub_22C36BA0C();
  v35 = sub_22C906ECC();
  v36 = sub_22C369824(v35);
  v120 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v136 = v41 - v40;
  v42 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v43 = sub_22C369914(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = v117 - v46;
  v48 = sub_22C901FAC();
  v49 = sub_22C369824(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22C369ABC();
  v134 = v54 - v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  v133 = v57;
  sub_22C369930();
  v59 = MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v59);
  v61 = v117 - v60;
  v128 = a1;
  sub_22C908B8C();
  v62 = sub_22C901ECC();
  if (sub_22C370B74(v47, 1, v62) == 1)
  {
    v63 = &qword_27D9BF318;
    v64 = &qword_22C9225A0;
    v65 = v47;
LABEL_5:
    sub_22C3770B0(v65, v63, v64);
    sub_22C903FAC();
    v71 = v131;
    v72 = v132;
    v73 = v137;
    (*(v132 + 16))(v131, v128, v137);
    v74 = sub_22C9063CC();
    v75 = v16;
    v76 = sub_22C90AABC();
    if (sub_22C36FBB4(v76))
    {
      v77 = sub_22C383050();
      v78 = sub_22C37A180();
      v79 = v71;
      v80 = v130;
      v138[0] = v78;
      *v77 = 136315394;
      sub_22C36EE00();
      v82 = sub_22C36F9F4(0xD00000000000001ALL, v81, v138);
      sub_22C389260(v82);
      v83 = sub_22C908B9C();
      v84 = v73;
      v86 = v85;
      (*(v72 + 8))(v79, v84);
      v87 = sub_22C36F9F4(v83, v86, v138);

      *(v77 + 14) = v87;
      sub_22C376924(&dword_22C366000, v88, v76, "%s statementId or statementResult is nil for candidate: %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372A84();

      v80[1](v75, v129);
    }

    else
    {

      (*(v72 + 8))(v71, v73);
      v130[1](v75, v129);
    }

    v89 = v122;
    v90 = 1;
    v91 = v127;
    return sub_22C36C640(v89, v90, 1, v91);
  }

  MEMORY[0x2318AF390]();
  (*(*(v62 - 8) + 8))(v47, v62);
  v66 = *(v51 + 32);
  v67 = sub_22C369D14();
  v68(v67);
  v69 = v121;
  v138[0] = v121;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  v70 = v125;
  sub_22C907EBC();
  if (sub_22C370B74(v70, 1, v35) == 1)
  {
    (*(v51 + 8))(v61, v48);
    v63 = &qword_27D9BC0A0;
    v64 = &unk_22C922F30;
    v65 = v70;
    goto LABEL_5;
  }

  v117[0] = v61;
  v132 = v48;
  v92 = *(v120 + 32);
  v117[1] = v35;
  v92(v136, v70, v35);
  v93 = *(v69 + 16);
  v94 = v127;
  v95 = v135;
  v96 = v119;
  v97 = v51;
  if (!v93)
  {
LABEL_16:
    v111 = sub_22C37FF88();
    v112(v111);
    (*(v97 + 8))(v117[0], v132);
    v89 = v122;
    v90 = 1;
    goto LABEL_18;
  }

  v98 = *(sub_22C908A0C() - 8);
  v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v100 = (v123 + 11);
  v101 = *MEMORY[0x277D1E730];
  v129 = v123 + 1;
  v128 = v123 + 12;
  v131 = (v118 + 32);
  v130 = (v97 + 8);
  v123 = (v118 + 8);
  v102 = *(v98 + 72);
  v103 = v69 + v99 + v102 * (v93 - 1);
  v137 = -v102;
  v125 = v100;
  v126 = v97;
  v124 = v101;
  while (1)
  {
    sub_22C9089EC();
    if ((*v100)(v23, v95) != v101)
    {
      (*v129)(v23, v95);
      goto LABEL_15;
    }

    (*v128)(v23, v95);
    v104 = v23;
    v127 = *v131;
    v127(v96, v23, v94);
    v105 = v133;
    sub_22C9068FC();
    v106 = v134;
    sub_22C906DFC();
    v107 = sub_22C901F6C();
    v108 = *v130;
    v109 = v106;
    v110 = v132;
    (*v130)(v109, v132);
    v108(v105, v110);
    if (v107)
    {
      break;
    }

    (*v123)(v96, v94);
    v95 = v135;
    v23 = v104;
    v100 = v125;
    v97 = v126;
    v101 = v124;
LABEL_15:
    v103 += v137;
    if (!--v93)
    {
      goto LABEL_16;
    }
  }

  v113 = sub_22C37FF88();
  v114(v113);
  v108(v117[0], v132);
  v115 = v122;
  v127(v122, v96, v94);
  v89 = v115;
  v90 = 0;
LABEL_18:
  v91 = v94;
  return sub_22C36C640(v89, v90, 1, v91);
}