uint64_t sub_1DA339934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a4;
  v8 = sub_1DA34BFB0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v66 = v57 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v16;
  v70 = a1;
  v69 = v61;
  v64 = (v13 + 8);
  v65 = (v13 + 16);
  v21 = v18 / v16;
  v57[1] = v4;
  if (v20 >= v18 / v16)
  {
    v62 = a1;
    sub_1DA2FC8E8(a2, v18 / v16, v61);
    v34 = v61;
    v35 = v61 + v21 * v16;
    v36 = -v16;
    v37 = v35;
    v59 = -v16;
LABEL_37:
    v63 = a2 + v36;
    v38 = a3;
    v57[0] = v37;
    v60 = a2;
    while (1)
    {
      if (v35 <= v34)
      {
        v70 = a2;
        v68 = v37;
        goto LABEL_59;
      }

      if (a2 <= v62)
      {
        break;
      }

      v58 = v37;
      v39 = v38 + v36;
      v40 = v35 + v36;
      v41 = v66;
      v42 = *v65;
      v43 = v35;
      (*v65)(v66, v35 + v36, v8);
      v44 = v67;
      v42(v67, v63, v8);
      sub_1DA34BD60();
      v46 = v45;
      sub_1DA34BD60();
      v48 = v47;
      v49 = *v64;
      (*v64)(v44, v8);
      v49(v41, v8);
      if (v48 < v46)
      {
        v53 = v38 < v60 || v39 >= v60;
        a3 = v38 + v36;
        if (v53)
        {
          v54 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v54;
          v37 = v58;
          v36 = v59;
          v34 = v61;
          v35 = v43;
        }

        else
        {
          v55 = v58;
          v36 = v59;
          v37 = v58;
          v56 = v63;
          v34 = v61;
          v35 = v43;
          a2 = v63;
          if (v38 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
            v35 = v43;
            v34 = v61;
            a2 = v56;
            v37 = v55;
          }
        }

        goto LABEL_37;
      }

      v50 = v38 < v43 || v39 >= v43;
      v51 = v38 + v36;
      v52 = v60;
      if (v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 += v36;
        v35 = v40;
        v37 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v52;
      }

      else
      {
        v37 = v40;
        v17 = v43 == v38;
        v38 += v36;
        v35 = v40;
        v34 = v61;
        v36 = v59;
        a2 = v60;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v61;
          v38 = v51;
          v35 = v40;
          v37 = v40;
        }
      }
    }

    v70 = a2;
    v68 = v57[0];
  }

  else
  {
    v63 = a3;
    sub_1DA2FC8E8(a1, (a2 - a1) / v16, v61);
    v22 = v61;
    v62 = v61 + v20 * v16;
    v68 = v62;
    v23 = v67;
    while (v22 < v62 && a2 < v63)
    {
      v25 = v66;
      v26 = *v65;
      (*v65)(v66, a2, v8);
      v26(v23, v22, v8);
      sub_1DA34BD60();
      v28 = v27;
      sub_1DA34BD60();
      v30 = v29;
      v31 = *v64;
      (*v64)(v23, v8);
      v31(v25, v8);
      if (v30 >= v28)
      {
        if (a1 < v22 || a1 >= v22 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = v22 + v16;
        v22 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v70 = a1;
    }
  }

LABEL_59:
  sub_1DA339E60(&v70, &v69, &v68);
  return 1;
}

uint64_t sub_1DA339E60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1DA34BFB0();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DA339F40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF8, &qword_1DA34EF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DA33A040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA33A0F0(const void *a1, void *a2)
{
  v24[3] = &unk_1F55E2B20;
  v24[4] = &off_1F55E2B48;
  OUTLINED_FUNCTION_117();
  v4 = swift_allocObject();
  v24[0] = v4;
  memcpy((v4 + 16), a1, 0x52uLL);
  sub_1DA33A954(a1, __dst);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    memcpy(__dst, (v4 + 16), 0x52uLL);
    v5 = sub_1DA33A9B0(__dst);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109040);
    sub_1DA2EEF28(v24, v23);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v11 = *v10;
      v12 = v10[1];

      __swift_destroy_boxed_opaque_existential_1(v23);
      v13 = sub_1DA300D78(v11, v12, &v22);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      sub_1DA306F34();
      v14 = sub_1DA34CAB0();
      v16 = sub_1DA300D78(v14, v15, &v22);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Sending analytics event %s with payload %s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v17 = __dst[0];
    v18 = __dst[1];
    v19 = a2[5];
    v20 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v19);
    (*(v20 + 8))(v17, v18, v5, v19, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DA33A394(const void *a1, void *a2)
{
  v25[3] = &type metadata for ContentViewedEvent;
  v25[4] = &off_1F55E0C90;
  v4 = swift_allocObject();
  v25[0] = v4;
  memcpy((v4 + 16), a1, 0x8AuLL);
  sub_1DA33AAE4(a1, __dst);
  if (static DeviceExpertPreferences.shouldSendAnalytics.getter())
  {
    memcpy(__dst, (v4 + 16), 0x8AuLL);
    v5 = sub_1DA33AB40(__dst);
    if (qword_1EE109038 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109040);
    sub_1DA2EEF28(v25, v24);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CDB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315394;
      v11 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v12 = *v11;
      v13 = v11[1];

      __swift_destroy_boxed_opaque_existential_1(v24);
      v14 = sub_1DA300D78(v12, v13, &v23);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      sub_1DA306F34();
      v15 = sub_1DA34CAB0();
      v17 = sub_1DA300D78(v15, v16, &v23);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1DA2E0000, v7, v8, "Sending analytics event %s with payload %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74B3A0](v10, -1, -1);
      MEMORY[0x1DA74B3A0](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    v18 = __dst[0];
    v19 = __dst[1];
    v20 = a2[5];
    v21 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v20);
    (*(v21 + 8))(v18, v19, v5, v20, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t dispatch thunk of DeviceExpertTellMeGeneratedFlow.execute()()
{
  OUTLINED_FUNCTION_59();
  v3 = v2;
  v4 = *(*v0 + 296);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DA2E8A9C;

  return v9(v3);
}

uint64_t sub_1DA33A904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DA33A9B0(uint64_t a1)
{
  v2 = sub_1DA33FFC8();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v5, 0x5F6E6F6973736573, 0xEA00000000006469);
  return v2;
}

unint64_t sub_1DA33AA2C()
{
  result = qword_1EE109020;
  if (!qword_1EE109020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA6108, &unk_1DA352D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109020);
  }

  return result;
}

unint64_t sub_1DA33AA90()
{
  result = qword_1EE109540;
  if (!qword_1EE109540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109540);
  }

  return result;
}

void *sub_1DA33AB40(void *__src)
{
  v2 = __src[2];
  v3 = __src[3];
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DA33AAE4(__src, v8);
  v4 = sub_1DA306964();
  memcpy(v8, __dst, 0x8AuLL);
  sub_1DA33A650(v8);
  v5 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v5, 0x5F6E6F6973736573, 0xEA00000000006469);
  return v4;
}

uint64_t sub_1DA33AC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DA33AC64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DA33ACBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DA33AD04()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DA323DD0;

  return sub_1DA3116F0();
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  result = v0[128];
  v2 = v0[125];
  v3 = v0[122];
  v4 = v0[119];
  v5 = v0[116];
  v6 = v0[115];
  v7 = v0[114];
  v8 = v0[111];
  v9 = v0[110];
  v10 = v0[109];
  v11 = v0[108];
  v12 = v0[106];
  return result;
}

void OUTLINED_FUNCTION_5_14()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v22 = *(v0 + 1128);
  v3 = *(v0 + 156);
  v18 = *(v0 + 1096);
  v19 = *(v0 + 1104);
  v24 = *(v0 + 1120);
  v25 = *(v0 + 1064);
  v26 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v20 = *(v0 + 1032);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);
  *(v1 - 176) = *(v0 + 904);
  *(v1 - 168) = v6;
  v9 = *(v0 + 896);
  v10 = *(v0 + 872);
  *(v1 - 184) = *(v0 + 848);
  v29 = *(v0 + 832);
  v27 = *(v0 + 816);
  v28 = *(v0 + 824);
  v23 = *(v0 + 768);
  v11 = *(v0 + 584);
  v12 = *(v0 + 576);
  v17 = *(v0 + 568);
  v13 = *(v0 + 560);
  v21 = *(v0 + 552);
  v14 = v10 + v3;
  v15 = *(v14 + 16);
  *(v1 - 144) = *v14;
  *(v1 - 128) = v15;
  *(v1 - 112) = *(v14 + 32);
  *(v1 - 96) = *(v14 + 48);

  return sub_1DA2EFB04();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[100];
  v11 = v0[99];
  v12 = v0[98];
  v13 = v0[97];
  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[92];
  v19 = v0[90];
  v20 = v0[89];
  v21 = v0[88];
  v22 = v0[85];
  v3 = v0[80];
  *(v1 - 184) = v0[82];
  *(v1 - 176) = v3;
  v4 = v0[76];
  *(v1 - 168) = v0[77];
  *(v1 - 160) = v4;
  *(v1 - 152) = v0[73];
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  v2 = v0[106];
  *(v1 - 176) = v0[115];
  *(v1 - 168) = v2;
  v3 = v0[97];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[87];
  v7 = v0[86];
  result = v0[85];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[80];
  v12 = v0[79];
  v17 = v0[78];
  v18 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  *(v1 - 184) = v0[74];
  v15 = v0[70];
  v16 = *(v9 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_8@<X0>(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 + 16) = 0xD00000000000001BLL;
  *(v18 + 24) = (a2 - 32) | 0x8000000000000000;
  *(v18 + 32) = v17;
  *(v18 + 40) = v21;
  *(v18 + 48) = a17;
  *(v18 + 56) = a16;
  *(v18 + 64) = a15;
  *(v18 + 72) = a14;
  *(v18 + 80) = a11 & 1;
  *(v18 + 81) = a13;
  *(v18 + 88) = a5;
  *(v18 + 96) = v19;
  *(v18 + 120) = a3;
  *(v18 + 136) = *(v22 - 112);
  *(v18 + 152) = *(v22 - 96);
  *(v18 + 153) = a1 & 1;
  v24 = *(v20 + 248);

  return sub_1DA33A394((v18 + 16), v24);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{
  *(a1 + 8) = sub_1DA3324B0;
  v2 = *(v1 + 920);
  return *(v1 + 848);
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return MEMORY[0x1EEE39070](v1 - 144, &unk_1DA352C28, v0);
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 920);
  v5 = *(v0 + 560);
  v6 = *(v0 + 872) + *(v0 + 156);
  v7 = v5[7];
  v8 = v5[8];
  v9 = v5[24];

  return type metadata accessor for SnippetModelProvider();
}

void OUTLINED_FUNCTION_30_6()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_1DA34CC80();
}

void OUTLINED_FUNCTION_35_2()
{
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[99];
  v9 = v0[98];
  v10 = v0[97];
  v11 = v0[96];
  v12 = v0[95];
  v13 = v0[94];
  v14 = v0[93];
  v15 = v0[92];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[85];
  v20 = v0[82];
  v1 = v0[80];
  v2 = v0[77];
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return sub_1DA34D160();
}

void *OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  *(v2 - 152) = a1;
  v3 = v1[13];
  result = __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v5 = *(v3 + 8);
  return result;
}

void *OUTLINED_FUNCTION_47_0()
{
  v1 = v0[23];
  result = __swift_project_boxed_opaque_existential_1(v0 + 19, v0[22]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1)
{
  *(a1 + 8) = sub_1DA3321A8;
  v2 = v1[115];
  result = v1[108];
  v4 = v1[70];
  return result;
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1, unint64_t a2)
{

  return sub_1DA32FC48((v3 + 160), v2, a1, a2, 1);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1DA34CC80();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_1DA34CC80();
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[146];
  return v0[145];
}

__n128 OUTLINED_FUNCTION_79_0@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = result;
  v6 = *(v2 + 241);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v0 + 48);

  return type metadata accessor for FlowContext();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);

  return sub_1DA34C1E0();
}

void *OUTLINED_FUNCTION_93()
{

  return sub_1DA2E8B7C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_1DA3070C4(v1, v0, v2, 3);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_1DA34CB30();
}

void OUTLINED_FUNCTION_101()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 560);
  *(v0 + 156) = *(*(v0 + 856) + 20);
}

uint64_t OUTLINED_FUNCTION_103(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{
  v2 = sub_1DA2E5B48((v1 + 288), a1 + 16);

  return MEMORY[0x1EEE39BB8](v2);
}

uint64_t OUTLINED_FUNCTION_108()
{
  v3 = *(v0 + 104);
  result = v1;
  v5 = *(v2 - 184);
  return result;
}

id OUTLINED_FUNCTION_113(float a1)
{
  *v2 = a1;

  return v1;
}

void OUTLINED_FUNCTION_114()
{

  JUMPOUT(0x1DA74A6E0);
}

void OUTLINED_FUNCTION_118()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[109];
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_1DA34CCB0();
}

uint64_t OUTLINED_FUNCTION_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return FlowContext.init(sessionId:clusterId:rewriteSummary:)(a1, a2, v5, v6, a5);
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _OWORD *a23)
{
  *a23 = *(v23 + 176);

  return sub_1DA33A6A4(a23);
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _OWORD *a22)
{
  *a22 = *(v22 + 160);

  return sub_1DA33A6A4(a22);
}

uint64_t OUTLINED_FUNCTION_129()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_130()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{

  return sub_1DA33AC04(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_132()
{
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1)
{
  *(v1 + 1120) = a1;
}

uint64_t OUTLINED_FUNCTION_134()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  *(v1 - 160) = a1;

  return swift_allocObject();
}

void OUTLINED_FUNCTION_136()
{

  JUMPOUT(0x1DA74A6E0);
}

uint64_t OUTLINED_FUNCTION_137(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 1152);
  v4 = *(v2 + 680);
  return v2 + 248;
}

uint64_t sub_1DA33BA48(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x4C6465726564726FLL;
      break;
    case 2:
      result = 0x65726564726F6E75;
      break;
    case 3:
      result = 0x65676173736170;
      break;
    case 4:
      result = 0x726F4D6E7261656CLL;
      break;
    case 5:
      result = 7367028;
      break;
    case 6:
      result = 0x73656C62756F7274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA33BB2C(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1DA33BB5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA33BB2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA33BB88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA33BB3C(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA33BC94()
{
  result = qword_1ECBA6110;
  if (!qword_1ECBA6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6110);
  }

  return result;
}

uint64_t sub_1DA33BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1DA34BFB0();
  v4[7] = v5;
  OUTLINED_FUNCTION_0_12(v5);
  v4[8] = v6;
  v8 = *(v7 + 64);
  v4[9] = OUTLINED_FUNCTION_76();
  v9 = sub_1DA34C6E0();
  v4[10] = v9;
  OUTLINED_FUNCTION_0_12(v9);
  v4[11] = v10;
  v12 = *(v11 + 64);
  v4[12] = OUTLINED_FUNCTION_76();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6118, &qword_1DA352EE0) - 8) + 64);
  v4[13] = OUTLINED_FUNCTION_76();
  v14 = sub_1DA34B940();
  v4[14] = v14;
  OUTLINED_FUNCTION_0_12(v14);
  v4[15] = v15;
  v17 = *(v16 + 64);
  v4[16] = OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6DFA0](sub_1DA33BEA0, 0, 0);
}

uint64_t sub_1DA33BEA0()
{
  v52 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DA34B910();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DA2E7E4C(v0[13], &qword_1ECBA6118, &qword_1DA352EE0);
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = v0[5];
    v6 = sub_1DA34C8E0();
    __swift_project_value_buffer(v6, qword_1EE109060);

    v7 = sub_1DA34C8C0();
    v8 = sub_1DA34CD90();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[4];
      v9 = v0[5];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DA300D78(v10, v9, v51);
      _os_log_impl(&dword_1DA2E0000, v7, v8, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() could not parse UUID from %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

LABEL_17:
    OUTLINED_FUNCTION_5_15();

    v47 = v0[1];

    return v47();
  }

  v13 = v0[3];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  v14 = *(sub_1DA34BC00() + 16);

  if (!v14)
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];
    v20 = v0[5];
    v21 = v0[3];
    v22 = sub_1DA34C8E0();
    __swift_project_value_buffer(v22, qword_1EE109060);
    (*(v18 + 16))(v17, v21, v19);

    v23 = sub_1DA34C8C0();
    v24 = sub_1DA34CD90();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[15];
    v50 = v0[16];
    v27 = v0[14];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];
    if (v25)
    {
      v49 = v0[14];
      v31 = v0[4];
      v32 = v0[5];
      v33 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_1DA300D78(v31, v32, v51);
      *(v33 + 12) = 2080;
      v34 = sub_1DA34BF40();
      v36 = v35;
      (*(v29 + 8))(v28, v30);
      v37 = sub_1DA300D78(v34, v36, v51);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1DA2E0000, v23, v24, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() - No suggestions to donate for requestId: %s, query: %s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      (*(v26 + 8))(v50, v49);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      (*(v26 + 8))(v50, v27);
    }

    goto LABEL_17;
  }

  v15 = v0[3];
  v0[2] = MEMORY[0x1E69E7CC0];
  v16 = sub_1DA34BC00();
  sub_1DA33CD4C(v16, v0 + 2);

  sub_1DA34C6B0();
  v0[17] = sub_1DA34C6A0();
  v39 = v0[11];
  v38 = v0[12];
  v40 = v0[10];
  v41 = v0[2];
  v0[18] = v41;
  *v38 = v41;
  v42 = *MEMORY[0x1E69D2CA0];
  (*(v39 + 104))();
  v43 = *(MEMORY[0x1E69D2C90] + 4);

  v44 = swift_task_alloc();
  v0[19] = v44;
  *v44 = v0;
  v44[1] = sub_1DA33C4CC;
  v45 = v0[16];
  v46 = v0[12];

  return MEMORY[0x1EEE403E8](v45, v46);
}

uint64_t sub_1DA33C4CC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1DA33C748;
  }

  else
  {
    v7 = sub_1DA33C660;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA33C660()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_1DA34BC00();
  v6 = sub_1DA34BFA0();
  sub_1DA33CE0C(v5, 1, v4, v2, v6, v7);

  v8 = v0[18];
  v9 = OUTLINED_FUNCTION_2_19();
  v10(v9);

  OUTLINED_FUNCTION_5_15();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DA33C748()
{
  v1 = v0[20];
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = v1;
  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DA2E0000, v4, v5, "DeviceExpertTellMeGeneratedFlow#donateSirSuggestions() failed with error: %@", v6, 0xCu);
    sub_1DA2E7E4C(v7, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v13 = v0[4];

  sub_1DA34BC00();
  sub_1DA34BFA0();
  v14 = OUTLINED_FUNCTION_1_23();
  sub_1DA33CE0C(v14, v15, v16, v17, v18, v19);

  v20 = v0[2];
  v21 = OUTLINED_FUNCTION_2_19();
  v22(v21);

  OUTLINED_FUNCTION_5_15();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1DA33C928(uint64_t a1, uint64_t *a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6128, qword_1DA352EE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = (&v31 - v5);
  v6 = sub_1DA34C6D0();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA34BB70();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v36 = a1;
  sub_1DA34BB40();
  v17 = v10[13];
  v17(v14, *MEMORY[0x1E69BCD10], v9);
  sub_1DA33D31C();
  sub_1DA34CC40();
  sub_1DA34CC40();
  v18 = v10[1];
  v18(v14, v9);
  v18(v16, v9);
  if (v38 == v37)
  {
    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v19 = sub_1DA34C6F0();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v19);
    v20 = v32;
    sub_1DA34C6C0();
    v21 = v20;
  }

  else
  {
    sub_1DA34BB40();
    v17(v14, *MEMORY[0x1E69BCD08], v9);
    sub_1DA34CC40();
    sub_1DA34CC40();
    v18(v14, v9);
    result = (v18)(v16, v9);
    if (v38 != v37)
    {
      return result;
    }

    _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v23 = sub_1DA34BB50();
    v24 = v31;
    *v31 = v23;
    v24[1] = v25;
    v26 = *MEMORY[0x1E69D31A0];
    v27 = sub_1DA34C6F0();
    (*(*(v27 - 8) + 104))(v24, v26, v27);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
    v21 = v32;
    sub_1DA34C6C0();
  }

  v28 = v35;
  sub_1DA2FBE80();
  v29 = *(*v28 + 16);
  sub_1DA2FBF3C(v29);
  v30 = *v28;
  *(v30 + 16) = v29 + 1;
  return (*(v33 + 32))(v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, v21, v34);
}

uint64_t sub_1DA33CD4C(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_1DA34BB60() - 8);
    result = sub_1DA33C928(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

uint64_t sub_1DA33CE0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v8 = sub_1DA34BB70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = sub_1DA34BB60();
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v51 = v24;
    v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v50 = *(v23 + 56);
    v49 = *MEMORY[0x1E69BCD10];
    v26 = (v9 + 104);
    v48 = (v9 + 8);
    v38 = *MEMORY[0x1E69BCD08];
    v40 = 0x80000001DA3569F0;
    v39 = a2 & 1;
    v52 = v23;
    v47 = (v23 - 8);
    v55 = v13;
    v54 = v15;
    v41 = v8;
    v53 = v16;
    while (1)
    {
      v59 = v22;
      v58 = v25;
      v51(v21);
      sub_1DA34BB40();
      v27 = *v26;
      (*v26)(v13, v49, v8);
      sub_1DA33D31C();
      sub_1DA34CC40();
      sub_1DA34CC40();
      v28 = v21;
      v29 = *v48;
      (*v48)(v13, v8);
      v29(v15, v8);
      v57 = __src[0];
      v56 = v61;
      if (__src[0] == v61)
      {
        break;
      }

      sub_1DA34BB40();
      v27(v13, v38, v8);
      sub_1DA34CC40();
      sub_1DA34CC40();
      v29(v13, v8);
      v29(v15, v8);
      v21 = v28;
      if (__src[0] == v61)
      {
        v30 = sub_1DA34BB50();
        v32 = v35;
        v33 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        goto LABEL_7;
      }

LABEL_8:
      result = (*v47)(v21, v53);
      v25 = v58 + v50;
      v22 = v59 - 1;
      v13 = v55;
      v15 = v54;
      if (v59 == 1)
      {
        return result;
      }
    }

    v30 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
    v32 = v31;
    v33 = 0;
    v34 = 0;
    v21 = v28;
LABEL_7:
    __src[0] = 0xD00000000000001DLL;
    __src[1] = v40;
    __src[2] = v42;
    __src[3] = v43;
    __src[4] = v44;
    __src[5] = v45;
    __src[6] = v30;
    __src[7] = v32;
    __src[8] = v33;
    __src[9] = v34;
    LOBYTE(__src[10]) = v57 == v56;
    BYTE1(__src[10]) = v39;
    memcpy(__dst, __src, 0x52uLL);
    v36 = *(v46 + 248);

    sub_1DA33A0F0(__dst, v36);
    sub_1DA33D374(__src);
    v8 = v41;
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1DA33D31C()
{
  result = qword_1ECBA6120;
  if (!qword_1ECBA6120)
  {
    sub_1DA34BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  result = v0[16];
  v2 = v0[14];
  v3 = *(v0[15] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[9];
}

uint64_t sub_1DA33D478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DA33D5A0;

  return v11(a1, a2, a3);
}

uint64_t sub_1DA33D5A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TPSTip.bodyContentOrText.getter()
{
  v1 = sub_1DA33DF78(v0);
  if (v1)
  {
    v2 = sub_1DA33DCBC(v1);

    if (!v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DA34DC80;
      *(v2 + 32) = sub_1DA34CAC0();
    }

    return v2;
  }

  else
  {
    sub_1DA33DFE4(v0);
    if (v4)
    {
      v5 = sub_1DA34CB30();
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_opt_self() textContentWithText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
    v7 = sub_1DA34CC70();

    v8 = sub_1DA33DA5C(v7);

    return v8;
  }
}

uint64_t sub_1DA33D7D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = [v1 fullContentAssets];
  v11 = [v2 language];
  v12 = sub_1DA34CB40();
  v14 = v13;

  v15 = [v2 assetFileInfoManager];
  v16 = objc_allocWithZone(MEMORY[0x1E69DA3C0]);
  v17 = sub_1DA33DEF0(v10, v12, v14, 0, v15);
  v18 = [v2 fullContentAssets];
  v19 = [v2 language];
  v20 = sub_1DA34CB40();
  v22 = v21;

  v23 = [v2 assetFileInfoManager];
  v24 = objc_allocWithZone(MEMORY[0x1E69DA3C0]);
  v25 = sub_1DA33DEF0(v18, v20, v22, 1, v23);
  v26 = v17;
  sub_1DA33DDFC(v17, 2, v9);

  v27 = v25;
  sub_1DA33DDFC(v25, 2, v7);

  LODWORD(v18) = [objc_opt_self() isPhoneUI];
  if (v18)
  {
    v28 = 1.28033473;
  }

  else
  {
    v28 = 0.842975207;
  }

  v29 = v33;
  sub_1DA33E048(v9, v33);
  v30 = type metadata accessor for TipSnippetModel.AssetConfiguration(0);
  result = sub_1DA33E048(v7, v29 + *(v30 + 20));
  *(v29 + *(v30 + 24)) = v28;
  return result;
}

uint64_t sub_1DA33DA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DA3481F4(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA3481F4((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DA33DB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DA348A6C(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA348A6C((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DA33DCBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DA3481F4(0, v2, 0);
  v3 = (a1 + 32);
  v4 = v10;
  if (v2)
  {
    while (1)
    {
      v9 = *v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DA3481F4((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v8;
      ++v3;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1DA33DDFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 assetPathFromAssetConfiguration:v7 type:a2];
    if (v8)
    {
      v9 = v8;
      sub_1DA34CB40();

      sub_1DA34B8B0();
    }
  }

  v11 = sub_1DA34B8C0();

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v11);
}

id sub_1DA33DEF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DA34CB30();

  v10 = [v5 initWithAssets:a1 language:v9 userInterfaceStyle:a4 assetFileInfoManager:a5];

  return v10;
}

uint64_t sub_1DA33DF78(void *a1)
{
  v1 = [a1 bodyContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
  v3 = sub_1DA34CC70();

  return v3;
}

uint64_t sub_1DA33DFE4(void *a1)
{
  v1 = [a1 bodyText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA34CB40();

  return v3;
}

uint64_t sub_1DA33E048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA33E0CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DA33E10C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA33E164(uint64_t a1)
{
  *(a1 + 8) = sub_1DA33E194();
  result = sub_1DA33AA90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA33E194()
{
  result = qword_1ECBA6130;
  if (!qword_1ECBA6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6130);
  }

  return result;
}

uint64_t sub_1DA33E1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v110 = a2;
  v3 = sub_1DA34BA70();
  v127 = OUTLINED_FUNCTION_0(v3);
  v128 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_1_4();
  v126 = v8 - v7;
  v120 = sub_1DA34BC60();
  v9 = OUTLINED_FUNCTION_0(v120);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v119 = v15 - v14;
  v115 = sub_1DA34BD00();
  v16 = OUTLINED_FUNCTION_0(v115);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v114 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v105 - v28;
  v30 = sub_1DA34BA40();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_4();
  v38 = v37 - v36;
  v109 = sub_1DA34BF40();
  v108 = v39;
  v107 = sub_1DA34BD10();
  v106 = v40;
  v41 = sub_1DA34BAF0();
  v42 = *(v41 + 16);
  v111 = a1;
  if (v42)
  {
    v44 = *(v33 + 16);
    v43 = v33 + 16;
    v125 = v44;
    v45 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    v105[1] = v41;
    v46 = v41 + v45;
    v124 = *(v43 + 56);
    LODWORD(v123) = *MEMORY[0x1E69BCCC0];
    v118 = *MEMORY[0x1E69BCCC8];
    v112 = (v18 + 8);
    v113 = (v18 + 32);
    v116 = (v11 + 8);
    v117 = (v11 + 32);
    v129 = MEMORY[0x1E69E7CC0];
    v121 = v43;
    v122 = v27;
    while (1)
    {
      v125(v38, v46, v30);
      sub_1DA34BA30();
      v47 = sub_1DA34BA20();
      if (__swift_getEnumTagSinglePayload(v29, 1, v47) == 1)
      {
        v48 = OUTLINED_FUNCTION_9_8();
        v49(v48);
      }

      else
      {
        sub_1DA33F8E8(v29, v27);
        v50 = *(v47 - 8);
        v51 = v50[11];
        v52 = OUTLINED_FUNCTION_12_9();
        v54 = v53(v52);
        if (v54 == v123)
        {
          v55 = v50[12];
          v56 = OUTLINED_FUNCTION_12_9();
          v57(v56);
          v59 = v119;
          v58 = v120;
          (*v117)(v119, v27, v120);
          v60 = sub_1DA34BB50();
          v62 = v61;
          v63 = v116;
LABEL_10:
          (*v63)(v59, v58);
          v68 = OUTLINED_FUNCTION_9_8();
          v69(v68);
          sub_1DA33F880(v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DA2FC190(0, *(v129 + 2) + 1, 1, v129);
            v129 = v79;
          }

          v71 = *(v129 + 2);
          v70 = *(v129 + 3);
          if (v71 >= v70 >> 1)
          {
            sub_1DA2FC190(v70 > 1, v71 + 1, 1, v129);
            v129 = v80;
          }

          v72 = v129;
          *(v129 + 2) = v71 + 1;
          v73 = &v72[16 * v71];
          *(v73 + 4) = v60;
          *(v73 + 5) = v62;
          v27 = v122;
          goto LABEL_15;
        }

        if (v54 == v118)
        {
          v64 = v50[12];
          v65 = OUTLINED_FUNCTION_12_9();
          v66(v65);
          v59 = v114;
          v58 = v115;
          (*v113)(v114, v27, v115);
          v60 = sub_1DA34BC40();
          v62 = v67;
          v63 = v112;
          goto LABEL_10;
        }

        v74 = OUTLINED_FUNCTION_9_8();
        v75(v74);
        v76 = v50[1];
        v77 = OUTLINED_FUNCTION_12_9();
        v78(v77);
      }

      sub_1DA33F880(v29);
LABEL_15:
      v46 += v124;
      if (!--v42)
      {

        a1 = v111;
        goto LABEL_19;
      }
    }
  }

  v129 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v81 = sub_1DA34BA80();
  v82 = *(v81 + 16);
  if (v82)
  {
    v130 = MEMORY[0x1E69E7CC0];
    sub_1DA348AAC(0, v82, 0);
    v83 = v130;
    v84 = *(v128 + 16);
    v85 = *(v128 + 80);
    v123 = v81;
    v86 = v81 + ((v85 + 32) & ~v85);
    v124 = *(v128 + 72);
    v125 = v84;
    v128 += 16;
    v87 = (v128 - 8);
    do
    {
      v89 = v126;
      v88 = v127;
      v125(v126, v86, v127);
      v90 = _s19DeviceExpertIntents6ActionV5labelSSvg_0();
      v92 = v91;
      v93 = sub_1DA34BA50();
      (*v87)(v89, v88);
      v130 = v83;
      v95 = *(v83 + 16);
      v94 = *(v83 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_1DA348AAC(v94 > 1, v95 + 1, 1);
        v83 = v130;
      }

      *(v83 + 16) = v95 + 1;
      v96 = (v83 + 24 * v95);
      v96[4] = v90;
      v96[5] = v92;
      v96[6] = v93;
      v86 += v124;
      --v82;
    }

    while (v82);
    v97 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_0_5(v97);
    (*(v98 + 8))(v111);
  }

  else
  {

    v100 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_0_5(v100);
    result = (*(v101 + 8))(a1);
    v83 = MEMORY[0x1E69E7CC0];
  }

  v102 = v110;
  v103 = v108;
  *v110 = v109;
  v102[1] = v103;
  v104 = v106;
  v102[2] = v107;
  v102[3] = v104;
  v102[4] = v129;
  v102[5] = v83;
  return result;
}

uint64_t sub_1DA33E928()
{
  v0 = sub_1DA34CFF0();

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

uint64_t sub_1DA33E980(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x656D616E5F676174;
  }
}

uint64_t sub_1DA33E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (!v8 && (sub_1DA34D160() & 1) == 0)
  {
    return 0;
  }

  return sub_1DA2FB8DC(a3, a6);
}

uint64_t sub_1DA33EA20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6148, &qword_1DA3530F0);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F64C();
  sub_1DA34D250();
  v18 = 0;
  sub_1DA34D0F0();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_2_20(&qword_1EE109008);
    sub_1DA34D120();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1DA33EBC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6138, &unk_1DA3530E0);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F64C();
  sub_1DA34D240();
  if (!v1)
  {
    v7 = sub_1DA34D060();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_3_16(&qword_1ECBA6140);
    sub_1DA34D090();
    v9 = OUTLINED_FUNCTION_8_8();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1DA33EDB0()
{
  v0 = sub_1DA34CFF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DA33EDFC(char a1)
{
  result = 0x6E6F697473657571;
  switch(a1)
  {
    case 1:
      result = 0x64695F616E71;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x5F747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA33EEAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA33E928();
  *a2 = result;
  return result;
}

uint64_t sub_1DA33EEDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA33E980(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA33EF10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA33E928();
  *a1 = result;
  return result;
}

uint64_t sub_1DA33EF38(uint64_t a1)
{
  v2 = sub_1DA33F64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA33EF74(uint64_t a1)
{
  v2 = sub_1DA33F64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA33EFB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA33EBC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DA33F040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA33EDB0();
  *a2 = result;
  return result;
}

unint64_t sub_1DA33F070@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA33EDFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA33F0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA33EDB0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA33F0D8(uint64_t a1)
{
  v2 = sub_1DA33F70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA33F114(uint64_t a1)
{
  v2 = sub_1DA33F70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA33F150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6168, &unk_1DA353108);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F70C();
  sub_1DA34D250();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v20) = 0;
  OUTLINED_FUNCTION_15_10();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_15_10();
    v20 = v3[4];
    HIBYTE(v19) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
    OUTLINED_FUNCTION_2_20(&qword_1EE109008);
    OUTLINED_FUNCTION_6_14();
    v20 = v3[5];
    HIBYTE(v19) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F8, qword_1DA352C40);
    sub_1DA33F7B4(&qword_1EE109010, sub_1DA33F82C);
    OUTLINED_FUNCTION_6_14();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DA33F334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6150, &unk_1DA3530F8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA33F70C();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = OUTLINED_FUNCTION_14_8();
  v19 = v11;
  LOBYTE(v20) = 1;
  v12 = OUTLINED_FUNCTION_14_8();
  v18 = v13;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  OUTLINED_FUNCTION_3_16(&qword_1ECBA6140);
  OUTLINED_FUNCTION_5_16();
  sub_1DA34D090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA60F8, qword_1DA352C40);
  sub_1DA33F7B4(&qword_1ECBA6158, sub_1DA33F760);
  OUTLINED_FUNCTION_5_16();
  sub_1DA34D090();
  v14 = OUTLINED_FUNCTION_1_24();
  v15(v14);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v19;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v20;
  return result;
}

double sub_1DA33F5F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DA33F334(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1DA33F64C()
{
  result = qword_1EE109558;
  if (!qword_1EE109558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109558);
  }

  return result;
}

uint64_t sub_1DA33F6A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A78, qword_1DA34EA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA33F70C()
{
  result = qword_1EE109570;
  if (!qword_1EE109570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109570);
  }

  return result;
}

unint64_t sub_1DA33F760()
{
  result = qword_1ECBA6160;
  if (!qword_1ECBA6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6160);
  }

  return result;
}

uint64_t sub_1DA33F7B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA60F8, qword_1DA352C40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA33F82C()
{
  result = qword_1EE109548;
  if (!qword_1EE109548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109548);
  }

  return result;
}

uint64_t sub_1DA33F880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA33F8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5818, &unk_1DA352560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DA33F958(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA33FA30(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA33FB0C()
{
  result = qword_1ECBA6170;
  if (!qword_1ECBA6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6170);
  }

  return result;
}

unint64_t sub_1DA33FB64()
{
  result = qword_1ECBA6178;
  if (!qword_1ECBA6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6178);
  }

  return result;
}

unint64_t sub_1DA33FBBC()
{
  result = qword_1EE109578[0];
  if (!qword_1EE109578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109578);
  }

  return result;
}

unint64_t sub_1DA33FC14()
{
  result = qword_1EE109568;
  if (!qword_1EE109568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109568);
  }

  return result;
}

unint64_t sub_1DA33FC6C()
{
  result = qword_1EE109560;
  if (!qword_1EE109560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109560);
  }

  return result;
}

unint64_t sub_1DA33FCC4()
{
  result = qword_1EE109550;
  if (!qword_1EE109550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109550);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_20(unint64_t *a1)
{

  return sub_1DA33F6A0(a1);
}

uint64_t OUTLINED_FUNCTION_3_16(unint64_t *a1)
{

  return sub_1DA33F6A0(a1);
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return sub_1DA34D060();
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return sub_1DA34D0F0();
}

unint64_t sub_1DA33FE38(char a1)
{
  result = 0x5F72657473756C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E5F746E65746E69;
      break;
    case 3:
      result = 0x6C616E676973;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA33FEDC()
{
  sub_1DA2EEFDC();

  v0 = 5;
  v1 = &unk_1F55DFEC0;
  do
  {
    v4 = *(v1 - 1);
    v5 = *v1;
    v2 = sub_1DA34CE70();

    v1 += 2;
    --v0;
  }

  while (v0);
  return v2;
}

uint64_t sub_1DA33FFC8()
{
  sub_1DA306F34();
  sub_1DA34CAC0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_22();
  sub_1DA30F908(v3, 0x5F72657473756C63, 0xEA00000000006469);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (*(v0 + 80))
  {
    v6 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    v7 = 0x6C616E676973;
    v8 = v6;
    v9 = 0xE600000000000000;
  }

  else
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    sub_1DA30F908(v12, 0xD000000000000010, 0x80000001DA3552D0);
    sub_1DA33FEDC();
    v13 = sub_1DA34CB30();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_22();
    v7 = 0x6E5F746E65746E69;
    v9 = 0xEB00000000656D61;
    v8 = v13;
  }

  sub_1DA30F908(v8, v7, v9);
  v14 = *(v0 + 81);
  v15 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_22();
  sub_1DA30F908(v15, 0xD000000000000010, 0x80000001DA356A10);
  return v17;
}

uint64_t sub_1DA340198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 82))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DA3401D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA340250(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA340290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA340330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v56 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_1();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_8(v17, v18, v19, v20, v21, v22, v23, v24, v52);
  v25 = sub_1DA34BED0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  sub_1DA34B980();
  v33 = *(v28 + 8);
  v33(v32, v25);
  Array<A>.asTextRuns()();
  v52 = v34;

  v54 = a1;
  sub_1DA34BEE0();
  sub_1DA34BE80();
  v33(v32, v25);
  Array<A>.asTextRuns()();
  v36 = v35;

  sub_1DA34B9C0();
  Array<A>.asTextRuns()();
  v38 = v37;

  v39 = v53;
  sub_1DA32B41C(v56, v53);
  v40 = type metadata accessor for SummarizedAnswerSnippetModel();
  v41 = v40[7];
  v42 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v42);
  sub_1DA32B41C(v16, v12);
  sub_1DA34C0D0();
  sub_1DA32B48C(v16);
  v57 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v43 = v40[5];
  v57 = v36;
  OUTLINED_FUNCTION_20_7();
  v44 = v40[6];
  v57 = v38;
  OUTLINED_FUNCTION_20_7();
  v45 = v39;
  sub_1DA32B41C(v39, v16);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12(v46);
  (*(v47 + 8))(a4 + v41);
  sub_1DA32B41C(v16, v12);
  sub_1DA34C0D0();
  sub_1DA32B48C(v16);
  v48 = v40[8];
  v57 = v55;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  sub_1DA32B48C(v56);
  v49 = sub_1DA34BFB0();
  OUTLINED_FUNCTION_12(v49);
  (*(v50 + 8))(v54);
  return sub_1DA32B48C(v45);
}

uint64_t SummarizedAnswerSnippetModel.body.getter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t type metadata accessor for SummarizedAnswerSnippetModel()
{
  result = qword_1EE10A450;
  if (!qword_1EE10A450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummarizedAnswerSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA340768(uint64_t *a1)
{
  v1 = *a1;

  return SummarizedAnswerSnippetModel.title.setter();
}

uint64_t (*SummarizedAnswerSnippetModel.title.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t sub_1DA340848(uint64_t *a1)
{
  v1 = *a1;

  return SummarizedAnswerSnippetModel.body.setter();
}

uint64_t SummarizedAnswerSnippetModel.body.setter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*SummarizedAnswerSnippetModel.body.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_10(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.disclaimer.getter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA34097C(uint64_t *a1)
{
  v1 = *a1;

  return SummarizedAnswerSnippetModel.disclaimer.setter();
}

uint64_t SummarizedAnswerSnippetModel.disclaimer.setter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*SummarizedAnswerSnippetModel.disclaimer.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_10(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.attributionModel.getter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA340AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1DA32B41C(a1, &v7 - v4);
  return SummarizedAnswerSnippetModel.attributionModel.setter(v5);
}

uint64_t SummarizedAnswerSnippetModel.attributionModel.setter(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt") - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DA32B41C(a1, &v7 - v4);
  v5 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  sub_1DA34C100();
  return sub_1DA32B48C(a1);
}

uint64_t (*SummarizedAnswerSnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_10(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t SummarizedAnswerSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA340CB4(uint64_t *a1)
{
  v1 = *a1;

  return SummarizedAnswerSnippetModel.context.setter();
}

uint64_t SummarizedAnswerSnippetModel.context.setter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*SummarizedAnswerSnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_7_10(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_4_17();
  *(v0 + 32) = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SummarizedAnswerSnippetModel.init(title:body:disclaimer:attributionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v21 = type metadata accessor for SummarizedAnswerSnippetModel();
  v22 = v21[7];
  v23 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v23);
  sub_1DA32B41C(v20, v17);
  sub_1DA34C0D0();
  sub_1DA32B48C(v20);
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v24 = v21[5];
  v31 = a2;
  OUTLINED_FUNCTION_20_7();
  v25 = v21[6];
  v31 = a3;
  OUTLINED_FUNCTION_20_7();
  sub_1DA32B41C(a4, v20);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12(v26);
  (*(v27 + 8))(a6 + v22);
  sub_1DA32B41C(v20, v17);
  sub_1DA34C0D0();
  sub_1DA32B48C(v20);
  v28 = v21[8];
  v31 = v30;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA32B48C(a4);
}

BOOL SummarizedAnswerSnippetModel.hasTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v0 = *(v2 + 16);

  return v0 != 0;
}

BOOL SummarizedAnswerSnippetModel.hasDisclaimer.getter()
{
  v0 = *(type metadata accessor for SummarizedAnswerSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  v1 = *(v3 + 16);

  return v1 != 0;
}

uint64_t SummarizedAnswerSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DA34DA00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v1 + 56) = v2;
  *(v1 + 64) = &protocol witness table for [A];
  *(v1 + 32) = v5;
  v3 = v0 + *(type metadata accessor for SummarizedAnswerSnippetModel() + 20);
  sub_1DA34C0F0();
  *(v1 + 96) = v2;
  *(v1 + 104) = &protocol witness table for [A];
  *(v1 + 72) = v5;
  return v1;
}

uint64_t sub_1DA341150(uint64_t (*a1)())
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v4 = a1();

  if (v4 & 1) != 0 || (v5 = type metadata accessor for SummarizedAnswerSnippetModel(), v6 = v1 + *(v5 + 20), sub_1DA34C0F0(), v7 = a1(), , (v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = v3 + *(v5 + 24);
    sub_1DA34C0F0();
    v8 = a1();
  }

  return v8 & 1;
}

uint64_t sub_1DA341248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036625250 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA34D160();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DA3413F4(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0x6D69616C63736964;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA341494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA341248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3414BC(uint64_t a1)
{
  v2 = sub_1DA341768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3414F8(uint64_t a1)
{
  v2 = sub_1DA341768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizedAnswerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6180, &qword_1DA3535E0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA341768();
  sub_1DA34D250();
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA342158(v12);
  OUTLINED_FUNCTION_5_17();
  if (!v1)
  {
    v13 = type metadata accessor for SummarizedAnswerSnippetModel();
    v14 = v13[5];
    v25 = 1;
    OUTLINED_FUNCTION_5_17();
    v15 = v13[6];
    v24 = 2;
    OUTLINED_FUNCTION_5_17();
    v16 = v13[7];
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA341844(v17);
    OUTLINED_FUNCTION_4_8();
    v18 = v13[8];
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA3419A4(v19);
    OUTLINED_FUNCTION_4_8();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1DA341768()
{
  result = qword_1ECBA6188;
  if (!qword_1ECBA6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6188);
  }

  return result;
}

unint64_t sub_1DA3417BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA342380(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA341844(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA34191C(&unk_1EE10A850);
    sub_1DA34191C(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA34191C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA342380(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3419A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA342380(&unk_1EE10AC10);
    sub_1DA342380(&unk_1EE10AC18);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SummarizedAnswerSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0(v85);
  v82 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v84 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v94 = v10;
  v95 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v86 = v78 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v15 = OUTLINED_FUNCTION_0(v90);
  v87 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_1();
  v89 = (v19 - v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v78 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_8(v25, v26, v27, v28, v29, v30, v31, v32, v78[0]);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6190, &qword_1DA3535E8);
  OUTLINED_FUNCTION_0(v91);
  v88 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v38 = OUTLINED_FUNCTION_12(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3_1();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v78 - v45;
  v47 = type metadata accessor for SummarizedAnswerSnippetModel();
  v48 = OUTLINED_FUNCTION_12(v47);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = v78 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v51 + 28);
  v55 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v55);
  sub_1DA32B41C(v46, v43);
  v96 = v54;
  sub_1DA34C0D0();
  sub_1DA32B48C(v46);
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA341768();
  v57 = v93;
  sub_1DA34D240();
  if (v57)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v94 + 8))(&v53[v96], v95);
  }

  else
  {
    v58 = v24;
    v93 = v53;
    v59 = v89;
    v80 = v47;
    v81 = a1;
    v101 = 0;
    OUTLINED_FUNCTION_2_4();
    sub_1DA342158(v60);
    v61 = v90;
    OUTLINED_FUNCTION_10_12();
    v62 = *(v87 + 32);
    v63 = v92;
    v92 = (v87 + 32);
    v79 = v62;
    v62(v93, v63, v61);
    v100 = 1;
    OUTLINED_FUNCTION_10_12();
    v64 = v61;
    v65 = v80;
    v79(&v93[*(v80 + 20)], v58, v64);
    v99 = 2;
    v78[1] = 0;
    sub_1DA34D090();
    v67 = v94;
    v66 = v95;
    v79(&v93[*(v65 + 24)], v59, v90);
    v98 = 3;
    OUTLINED_FUNCTION_2_4();
    sub_1DA341844(v68);
    v69 = v86;
    sub_1DA34D090();
    (*(v67 + 40))(&v93[v96], v69, v66);
    v97 = 4;
    OUTLINED_FUNCTION_2_4();
    sub_1DA3419A4(v70);
    v71 = v84;
    v72 = v85;
    sub_1DA34D090();
    v73 = OUTLINED_FUNCTION_9_9();
    v74(v73);
    v75 = v71;
    v76 = v93;
    (*(v82 + 32))(&v93[*(v80 + 32)], v75, v72);
    sub_1DA342230(v76, v83);
    __swift_destroy_boxed_opaque_existential_1(v81);
    return sub_1DA342294(v76);
  }
}

unint64_t sub_1DA342158(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA3417BC(&unk_1EE109F68);
    sub_1DA3417BC(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA342230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizedAnswerSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA342294(uint64_t a1)
{
  v2 = type metadata accessor for SummarizedAnswerSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA342380(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA342454()
{
  sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
  if (v0 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
    if (v1 <= 0x3F)
    {
      sub_1DA2F33D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SummarizedAnswerSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA342608()
{
  result = qword_1ECBA6198;
  if (!qword_1ECBA6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6198);
  }

  return result;
}

unint64_t sub_1DA342660()
{
  result = qword_1ECBA61A0;
  if (!qword_1ECBA61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61A0);
  }

  return result;
}

unint64_t sub_1DA3426B8()
{
  result = qword_1ECBA61A8;
  if (!qword_1ECBA61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SummarizedAnswerSnippetModel();
}

uint64_t OUTLINED_FUNCTION_9_9()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_1DA34C0D0();
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64);
  v6[9] = OUTLINED_FUNCTION_76();
  v9 = OUTLINED_FUNCTION_6_15();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64);
  v6[12] = OUTLINED_FUNCTION_76();
  v12 = *(*(sub_1DA34CE20() - 8) + 64);
  v6[13] = OUTLINED_FUNCTION_76();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64);
  v6[15] = OUTLINED_FUNCTION_76();
  v15 = OUTLINED_FUNCTION_6_15();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64);
  v6[18] = OUTLINED_FUNCTION_76();

  return MEMORY[0x1EEE6DFA0](sub_1DA34297C, 0, 0);
}

uint64_t sub_1DA34297C()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1DA34CC90();
  (*(v3 + 16))(v2, v4, v7);
  sub_1DA34CC30();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DA34CE30();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = OUTLINED_FUNCTION_2_21();
    v15(v14);
    v16 = v0[2];

    v17 = OUTLINED_FUNCTION_5_18();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_4_19();
    v20(v19);
    OUTLINED_FUNCTION_0_23();
    v25 = v21;
    v22 = *(v8 + 4);
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v17 = OUTLINED_FUNCTION_1_25(v23);
    v18 = v25;
  }

  return v18(v17);
}

uint64_t sub_1DA342B60()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1DA342E48;
  }

  else
  {
    v5 = sub_1DA342C7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA342C7C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1DA34CCD0();
  sub_1DA34CCC0();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DA34CE30();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v12 = OUTLINED_FUNCTION_2_21();
    v13(v12);
    v14 = v0[2];

    v15 = OUTLINED_FUNCTION_5_18();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_4_19();
    v18(v17);
    OUTLINED_FUNCTION_0_23();
    v23 = v19;
    v20 = *(v6 + 4);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v15 = OUTLINED_FUNCTION_1_25();
    v16 = v23;
  }

  return v16(v15);
}

uint64_t sub_1DA342E48()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t OUTLINED_FUNCTION_1_25(uint64_t a1)
{
  *(a1 + 8) = sub_1DA342B60;
  v2 = v1[12];
  result = v1[9];
  v4 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_21()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_4_19()
{
  result = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[3];
  v5 = *(v0[11] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t LearnMoreSnippetModel.init(result:context:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA34BED0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA34BEE0();
  sub_1DA34BE80();
  (*(v7 + 8))(v11, v4);
  Array<A>.asTextRuns()();
  v13 = v12;

  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v14 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
  v18 = a2;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  v15 = sub_1DA34BFB0();
  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t LearnMoreSnippetModel.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA3431A8(uint64_t *a1)
{
  v1 = *a1;

  return LearnMoreSnippetModel.body.setter();
}

uint64_t (*LearnMoreSnippetModel.body.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F25B0;
}

uint64_t LearnMoreSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA3432E0(uint64_t *a1)
{
  v1 = *a1;

  return LearnMoreSnippetModel.context.setter();
}

uint64_t LearnMoreSnippetModel.context.setter()
{
  v0 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*LearnMoreSnippetModel.context.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t LearnMoreSnippetModel.init(body:context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v0 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t type metadata accessor for LearnMoreSnippetModel()
{
  result = qword_1EE10A7E8;
  if (!qword_1EE10A7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LearnMoreSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA34DC80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_1DA343558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  sub_1DA3462B8();
  v1 = v0;

  return v1 & 1;
}

uint64_t sub_1DA3435B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA34D160();

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

uint64_t sub_1DA34367C(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_1DA3436B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3435B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3436DC(uint64_t a1)
{
  v2 = sub_1DA3438F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA343718(uint64_t a1)
{
  v2 = sub_1DA3438F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LearnMoreSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA61B0, &qword_1DA353820);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3438F4();
  sub_1DA34D250();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_1_6();
  sub_1DA343E2C(v12);
  OUTLINED_FUNCTION_6_1();
  if (!v1)
  {
    v13 = *(type metadata accessor for LearnMoreSnippetModel() + 20);
    v16[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA3439E0(v14);
    OUTLINED_FUNCTION_6_1();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1DA3438F4()
{
  result = qword_1ECBA61B8;
  if (!qword_1ECBA61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61B8);
  }

  return result;
}

unint64_t sub_1DA343948(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA344060(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3439E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA344060(&unk_1EE10AC10);
    sub_1DA344060(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LearnMoreSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0(v40);
  v37 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0(v44);
  v39 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA61C0, &qword_1DA353828);
  v16 = OUTLINED_FUNCTION_0(v15);
  v42 = v17;
  v43 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v20);
  v21 = type metadata accessor for LearnMoreSnippetModel();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3438F4();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v21;
  v36 = v24;
  v27 = v39;
  v26 = v40;
  v46 = 0;
  OUTLINED_FUNCTION_2_4();
  sub_1DA343E2C(v28);
  v29 = v41;
  sub_1DA34D090();
  (*(v27 + 32))(v36, v29, v44);
  v45 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA3439E0(v30);
  sub_1DA34D090();
  v31 = OUTLINED_FUNCTION_5_1();
  v32(v31);
  v33 = v36;
  (*(v37 + 32))(&v36[*(v35 + 20)], v9, v26);
  sub_1DA343F10(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA343F74(v33);
}

unint64_t sub_1DA343E2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA343948(&unk_1EE109F68);
    sub_1DA343948(&unk_1EE109F70);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA343F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA343F74(uint64_t a1)
{
  v2 = type metadata accessor for LearnMoreSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA344060(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA344104()
{
  sub_1DA344188();
  if (v0 <= 0x3F)
  {
    sub_1DA2F33D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA344188()
{
  if (!qword_1EE10AC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    v0 = sub_1DA34C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10AC50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LearnMoreSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3442CC()
{
  result = qword_1ECBA61C8;
  if (!qword_1ECBA61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61C8);
  }

  return result;
}

unint64_t sub_1DA344324()
{
  result = qword_1ECBA61D0;
  if (!qword_1ECBA61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61D0);
  }

  return result;
}

unint64_t sub_1DA34437C()
{
  result = qword_1ECBA61D8;
  if (!qword_1ECBA61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61D8);
  }

  return result;
}

id static BiomeEventSender.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE109948 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE109950;
  *a1 = qword_1EE109950;

  return v2;
}

uint64_t DeviceExpertDiscoverabilityEvent.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

void sub_1DA3444EC(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v3 = [v2 Signals];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  *a1 = v4;
}

void BiomeEventSender.send(_:)()
{
  v1 = *v0;
  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = sub_1DA34C8C0();
  v4 = sub_1DA34CD90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1DA300D78(0xD00000000000001BLL, 0x80000001DA356A30, &v9);
    _os_log_impl(&dword_1DA2E0000, v3, v4, "Donating %s event to discoverabilitySignal", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA74B3A0](v6, -1, -1);
    MEMORY[0x1DA74B3A0](v5, -1, -1);
  }

  else
  {
  }

  v7 = objc_allocWithZone(MEMORY[0x1E698EBC0]);
  v8 = sub_1DA344754(0xD00000000000001BLL, 0x80000001DA356A30, 0, 0, 0, 0, 0, 0xF000000000000000);
  [v1 sendEvent_];
}

id sub_1DA344754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_1DA34CB30();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1DA34CB30();

  if (a6)
  {
LABEL_4:
    v15 = sub_1DA34CB30();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1DA34B8D0();
    sub_1DA300C94(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

unint64_t sub_1DA34487C()
{
  result = qword_1ECBA61E0;
  if (!qword_1ECBA61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA61E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertDiscoverabilityEvent(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA34499C(uint64_t *a1, int a2)
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

uint64_t sub_1DA3449DC(uint64_t result, int a2, int a3)
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

void sub_1DA344C7C()
{
  OUTLINED_FUNCTION_34_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v29 = v11;
  v12 = sub_1DA34C770();
  v13 = OUTLINED_FUNCTION_15_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v6(0);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v33 = v10;
  v34 = v8;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v24 = OUTLINED_FUNCTION_26_6();
  sub_1DA2F3A4C(v24, v25);
  sub_1DA34C760();
  sub_1DA34834C(v4, v2);
  sub_1DA34C790();
  v26 = OUTLINED_FUNCTION_26_6();
  sub_1DA2E62C4(v26, v27);
  if (!v0)
  {
    (*(v18 + 32))(v29, v23, v16);
  }

  OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1DA34508C(void (*a1)(void))
{
  a1(0);
  v1 = OUTLINED_FUNCTION_26_6();
  sub_1DA34834C(v1, v2);
  return sub_1DA34C780();
}

void sub_1DA3450FC()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4();
  if (!v1)
  {
    sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_35_3();
    v11 = OUTLINED_FUNCTION_10_13();
    v12(v11);
    v13 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

void sub_1DA3452A8()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action.URLConfiguration(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4();
  if (!v1)
  {
    sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_35_3();
    v11 = OUTLINED_FUNCTION_10_13();
    v12(v11);
    v13 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

void sub_1DA345454()
{
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4 = type metadata accessor for Action.AppIntentConfiguration(v3);
  v5 = OUTLINED_FUNCTION_15_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  OUTLINED_FUNCTION_2();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_4();
  if (!v1)
  {
    sub_1DA2F3F64();
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_20_8();
    OUTLINED_FUNCTION_35_3();
    v11 = OUTLINED_FUNCTION_10_13();
    v12(v11);
    v13 = OUTLINED_FUNCTION_26_6();
    sub_1DA3488BC(v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_33_3();
}

uint64_t sub_1DA345600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TextRun(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v14 = v17;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v9 + 8))(v12, v8);
    sub_1DA3488BC(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TextRun.Color(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v14 = v17;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v9 + 8))(v12, v8);
    sub_1DA3488BC(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TextRun.TextConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v14 = v17;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v9 + 8))(v12, v8);
    sub_1DA3488BC(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA345CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TextRun.SymbolConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5970, &qword_1DA34E460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2F3F10();
  sub_1DA34D240();
  if (!v2)
  {
    v14 = v17;
    sub_1DA2F3F64();
    sub_1DA34D090();
    sub_1DA344C7C();
    (*(v9 + 8))(v12, v8);
    sub_1DA3488BC(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DA346064()
{
  OUTLINED_FUNCTION_34_2();
  v22 = v2;
  v23 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5978, qword_1DA34E468);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  v19 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DA2F3F10();
  sub_1DA34D250();
  v8(0);
  sub_1DA34834C(v6, v4);
  v20 = sub_1DA34C780();
  if (!v1)
  {
    v24 = v20;
    v25 = v21;
    sub_1DA2F4138();
    sub_1DA34D120();
    sub_1DA2E62C4(v24, v25);
  }

  (*(v13 + 8))(v18, v11);
  OUTLINED_FUNCTION_33_3();
}

uint64_t TextRun.init(_:_:_:)()
{
  sub_1DA34BA10();
  sub_1DA34834C(&qword_1EE10ACC8, MEMORY[0x1E69BCCB0]);
  sub_1DA34C7B0();
}

void sub_1DA3462B8()
{
  OUTLINED_FUNCTION_33_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v3 = OUTLINED_FUNCTION_15_3(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - v9;
  v11 = type metadata accessor for TextRun.Value(0);
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = type metadata accessor for TextRun(0);
  v19 = OUTLINED_FUNCTION_0_12(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v26 = v25 - v24;
  v27 = 0;
  v59 = v1;
  v28 = *(v1 + 16);
  v58 = *MEMORY[0x1E69BCC98];
  v57 = *MEMORY[0x1E69BCCA0];
  while (1)
  {
    v29 = v27;
    if (v28 == v27)
    {
LABEL_9:
      OUTLINED_FUNCTION_32_1();
      return;
    }

    v30 = *(v21 + 80);
    OUTLINED_FUNCTION_25_1();
    sub_1DA348918(v59 + v31 + *(v21 + 72) * v29, v26);
    sub_1DA34BA00();
    v32 = sub_1DA34B9D0();
    if (__swift_getEnumTagSinglePayload(v10, 1, v32) == 1)
    {
      goto LABEL_11;
    }

    v33 = OUTLINED_FUNCTION_28_7();
    sub_1DA31A11C(v33, v34);
    OUTLINED_FUNCTION_2();
    v36 = v35;
    v38 = *(v37 + 88);
    v39 = OUTLINED_FUNCTION_32_3();
    v41 = v40(v39);
    if (v41 != v58)
    {
      break;
    }

    v42 = *(v36 + 96);
    v43 = OUTLINED_FUNCTION_32_3();
    v44(v43);
    v45 = sub_1DA34BBF0();
    v47 = v45;
LABEL_8:
    OUTLINED_FUNCTION_12_10(v45, v46, v47);
    (*(v51 + 32))(v17, v8);
    swift_storeEnumTagMultiPayload();
    sub_1DA3482E4(v10);
    OUTLINED_FUNCTION_0_24();
    sub_1DA34897C(v26, v52);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DA34897C(v17, type metadata accessor for TextRun.Value);
    v27 = v29 + 1;
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_9;
    }
  }

  if (v41 == v57)
  {
    v48 = *(v36 + 96);
    v49 = OUTLINED_FUNCTION_32_3();
    v50(v49);
    v45 = sub_1DA34BCC0();
    v47 = v45;
    goto LABEL_8;
  }

  v54 = *(v36 + 8);
  v55 = OUTLINED_FUNCTION_32_3();
  v56(v55);
LABEL_11:
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_16();
  __break(1u);
}

void Array<A>.asTextRuns()()
{
  OUTLINED_FUNCTION_33_1();
  v1 = v0;
  v2 = type metadata accessor for TextRun(0);
  v3 = OUTLINED_FUNCTION_0_12(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DA34826C();
    v19 = sub_1DA34BA10();
    v12 = *(v19 - 8);
    v13 = *(v12 + 16);
    v14 = v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    do
    {
      v13(v10, v14, v19);
      v16 = *(v20 + 16);
      if (v16 >= *(v20 + 24) >> 1)
      {
        sub_1DA34826C();
      }

      *(v20 + 16) = v16 + 1;
      v17 = *(v5 + 80);
      OUTLINED_FUNCTION_25_1();
      sub_1DA3488BC(v10, v20 + v18 + *(v5 + 72) * v16);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_32_1();
}

uint64_t Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerStep.asTextRuns()()
{
  sub_1DA34B980();
  Array<A>.asTextRuns()();
  v1 = v0;

  return v1;
}

BOOL sub_1DA3467C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;

    sub_1DA3462B8();
    v7 = v6;
  }

  while ((v7 & 1) == 0);
  return v3 != 0;
}

void sub_1DA34682C()
{
  OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_15_11();
  v5 = type metadata accessor for TextRun.SymbolConfiguration(v4);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v70 = v10 - v9;
  v11 = type metadata accessor for TextRun.TextConfiguration(0);
  v12 = OUTLINED_FUNCTION_15_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v19 = OUTLINED_FUNCTION_15_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68[-v23];
  v25 = type metadata accessor for TextRun.Value(0);
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = OUTLINED_FUNCTION_36_1();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v68[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *(v0 + 16);
  if (v34)
  {
    OUTLINED_FUNCTION_43_1(v31);
    v71 = *(v35 + 72);
    v72 = *MEMORY[0x1E69BCC98];
    v69 = *MEMORY[0x1E69BCCA0];
    while (1)
    {
      sub_1DA348918(v3, v33);
      sub_1DA34BA00();
      sub_1DA34B9D0();
      OUTLINED_FUNCTION_27_6(v24);
      if (v36)
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_26_6();
      sub_1DA31A11C(v37, v38);
      OUTLINED_FUNCTION_2();
      v40 = v39;
      v42 = *(v41 + 88);
      v43 = OUTLINED_FUNCTION_5_6();
      v45 = v44(v43);
      if (v45 == v72)
      {
        v46 = *(v40 + 96);
        v47 = OUTLINED_FUNCTION_5_6();
        v48(v47);
        sub_1DA34BBF0();
        OUTLINED_FUNCTION_40_1();
      }

      else
      {
        if (v45 != v69)
        {
          v65 = *(v40 + 8);
          v66 = OUTLINED_FUNCTION_5_6();
          v67(v66);
          break;
        }

        v52 = *(v40 + 96);
        v53 = OUTLINED_FUNCTION_5_6();
        v54(v53);
        sub_1DA34BCC0();
        OUTLINED_FUNCTION_39_1();
      }

      OUTLINED_FUNCTION_12_10(v49, v50, v51);
      (*(v55 + 32))(v2, v1);
      OUTLINED_FUNCTION_42_1();
      swift_storeEnumTagMultiPayload();
      sub_1DA3482E4(v24);
      OUTLINED_FUNCTION_42_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = OUTLINED_FUNCTION_3_17();
        v57 = v70;
        sub_1DA3488BC(v56, v70);
        v58 = v57;
        _s19DeviceExpertIntents7TextRunV19SymbolConfigurationV11highlightedSbvg_0();
        OUTLINED_FUNCTION_18_8();
        v60 = v59;
        v61 = v57;
      }

      else
      {
        v62 = OUTLINED_FUNCTION_2_22();
        sub_1DA3488BC(v62, v17);
        v58 = v17;
        _s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0();
        OUTLINED_FUNCTION_17_9();
        v60 = v63;
        v61 = v17;
      }

      sub_1DA34897C(v61, v60);
      OUTLINED_FUNCTION_0_24();
      sub_1DA34897C(v33, v64);
      if ((v58 & 1) == 0)
      {
        v3 += v71;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_6_16();
    __break(1u);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_32_1();
  }
}

void sub_1DA346BDC()
{
  OUTLINED_FUNCTION_33_1();
  v5 = OUTLINED_FUNCTION_15_11();
  v6 = type metadata accessor for TextRun.SymbolConfiguration(v5);
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v76 = v11 - v10;
  v12 = type metadata accessor for TextRun.TextConfiguration(0);
  v13 = OUTLINED_FUNCTION_15_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v75 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v19 = OUTLINED_FUNCTION_15_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for TextRun.Value(0);
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = OUTLINED_FUNCTION_36_1();
  v30 = OUTLINED_FUNCTION_0_12(v29);
  v79 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_3();
  v34 = 0;
  v35 = *(v0 + 16);
  v36 = v0 + 32;
  v77 = *MEMORY[0x1E69BCC98];
  v74 = *MEMORY[0x1E69BCCA0];
  v73 = v35;
  v70 = v0 + 32;
  do
  {
LABEL_2:
    v37 = v34;
    if (v34 == v35)
    {
LABEL_18:
      OUTLINED_FUNCTION_32_1();
      return;
    }

    v38 = *(v36 + 8 * v34++);
    v39 = *(v38 + 16);
  }

  while (!v39);
  v71 = v34;
  v72 = v37;
  v40 = *(v79 + 80);
  OUTLINED_FUNCTION_25_1();
  v78 = v38 + v41;

  v42 = 0;
  while (v42 < *(v38 + 16))
  {
    sub_1DA348918(v78 + *(v79 + 72) * v42, v4);
    sub_1DA34BA00();
    sub_1DA34B9D0();
    OUTLINED_FUNCTION_27_6(v24);
    if (v43)
    {
      goto LABEL_21;
    }

    v44 = OUTLINED_FUNCTION_26_6();
    sub_1DA31A11C(v44, v45);
    OUTLINED_FUNCTION_2();
    v1 = v46;
    v48 = *(v47 + 88);
    v49 = OUTLINED_FUNCTION_5_6();
    v51 = v50(v49);
    if (v51 == v77)
    {
      v52 = *(v1 + 96);
      v53 = OUTLINED_FUNCTION_5_6();
      v54(v53);
      sub_1DA34BBF0();
      OUTLINED_FUNCTION_40_1();
    }

    else
    {
      if (v51 != v74)
      {
        goto LABEL_20;
      }

      v58 = *(v1 + 96);
      v59 = OUTLINED_FUNCTION_5_6();
      v60(v59);
      sub_1DA34BCC0();
      OUTLINED_FUNCTION_39_1();
    }

    OUTLINED_FUNCTION_12_10(v55, v56, v57);
    (*(v61 + 32))(v3, v2);
    OUTLINED_FUNCTION_42_1();
    swift_storeEnumTagMultiPayload();
    sub_1DA3482E4(v24);
    OUTLINED_FUNCTION_42_1();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = OUTLINED_FUNCTION_3_17();
      v1 = v76;
      sub_1DA3488BC(v62, v76);
      v63 = v1;
      _s19DeviceExpertIntents7TextRunV19SymbolConfigurationV11highlightedSbvg_0();
      OUTLINED_FUNCTION_18_8();
    }

    else
    {
      v65 = OUTLINED_FUNCTION_2_22();
      v1 = v75;
      sub_1DA3488BC(v65, v75);
      v63 = v1;
      _s19DeviceExpertIntents7TextRunV0D13ConfigurationV11highlightedSbvg_0();
      OUTLINED_FUNCTION_17_9();
    }

    sub_1DA34897C(v1, v64);
    OUTLINED_FUNCTION_0_24();
    sub_1DA34897C(v4, v66);
    if (v63)
    {

      goto LABEL_18;
    }

    if (v39 == ++v42)
    {

      v35 = v73;
      v36 = v70;
      v34 = v71;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  v67 = *(v1 + 8);
  v68 = OUTLINED_FUNCTION_5_6();
  v69(v68);
LABEL_21:
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_6_16();
  __break(1u);
}

void sub_1DA346FE8()
{
  OUTLINED_FUNCTION_33_1();
  v4 = OUTLINED_FUNCTION_15_11();
  v5 = type metadata accessor for TextRun.SymbolConfiguration(v4);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v68 = v10 - v9;
  v11 = type metadata accessor for TextRun.TextConfiguration(0);
  v12 = OUTLINED_FUNCTION_15_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v67 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v18 = OUTLINED_FUNCTION_15_3(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v65[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v65[-v24];
  v72 = type metadata accessor for TextRun.Value(0);
  v26 = OUTLINED_FUNCTION_12(v72);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v29 = OUTLINED_FUNCTION_36_1();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v65[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *(v0 + 16);
  if (v34)
  {
    OUTLINED_FUNCTION_43_1(v31);
    v71 = *(v35 + 72);
    v70 = *MEMORY[0x1E69BCC98];
    v66 = *MEMORY[0x1E69BCCA0];
    v73 = v25;
    v69 = v23;
    while (1)
    {
      sub_1DA348918(v3, v33);
      sub_1DA34BA00();
      sub_1DA34B9D0();
      OUTLINED_FUNCTION_27_6(v25);
      if (v36)
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_32_3();
      sub_1DA31A11C(v37, v38);
      OUTLINED_FUNCTION_2();
      v40 = v39;
      v42 = *(v41 + 88);
      v43 = OUTLINED_FUNCTION_41_1();
      v45 = v44(v43);
      if (v45 == v70)
      {
        v46 = *(v40 + 96);
        v47 = OUTLINED_FUNCTION_41_1();
        v48(v47);
        sub_1DA34BBF0();
        OUTLINED_FUNCTION_40_1();
      }

      else
      {
        if (v45 != v66)
        {
          v62 = *(v40 + 8);
          v63 = OUTLINED_FUNCTION_41_1();
          v64(v63);
          break;
        }

        v52 = *(v40 + 96);
        v53 = OUTLINED_FUNCTION_41_1();
        v54(v53);
        sub_1DA34BCC0();
        OUTLINED_FUNCTION_39_1();
      }

      OUTLINED_FUNCTION_12_10(v49, v50, v51);
      (*(v55 + 32))(v2, v23);
      v56 = v72;
      swift_storeEnumTagMultiPayload();
      sub_1DA3482E4(v73);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = OUTLINED_FUNCTION_3_17();
        v58 = v68;
        sub_1DA3488BC(v57, v68);
        _s19DeviceExpertIntents6ActionV22AppIntentConfigurationV8bundleIDSSvg_0();
        OUTLINED_FUNCTION_45_0();
        MEMORY[0x1DA74A690](v56, v1);

        v59 = type metadata accessor for TextRun.SymbolConfiguration;
      }

      else
      {
        v60 = OUTLINED_FUNCTION_2_22();
        v58 = v67;
        sub_1DA3488BC(v60, v67);
        _s19DeviceExpertIntents6ActionV5labelSSvg_0();
        OUTLINED_FUNCTION_45_0();
        MEMORY[0x1DA74A690](v56, v1);

        v59 = type metadata accessor for TextRun.TextConfiguration;
      }

      sub_1DA34897C(v58, v59);
      OUTLINED_FUNCTION_0_24();
      sub_1DA34897C(v33, v61);
      v3 += v71;
      --v34;
      v23 = v69;
      v25 = v73;
      if (!v34)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_6_16();
    __break(1u);
  }

  else
  {
LABEL_12:
    OUTLINED_FUNCTION_32_1();
  }
}

uint64_t sub_1DA34746C()
{
  v0 = sub_1DA34BBF0();
  v1 = OUTLINED_FUNCTION_12(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_3();
  sub_1DA34834C(&qword_1EE109F18, MEMORY[0x1E69BCD28]);
  sub_1DA34C7B0();
  return sub_1DA34B9F0();
}

uint64_t sub_1DA34759C()
{
  v0 = sub_1DA34BD50();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);

  sub_1DA34BBC0();
  sub_1DA34834C(&qword_1ECBA6200, MEMORY[0x1E69BCD50]);
  sub_1DA34C7B0();
  sub_1DA34BBE0();
  return sub_1DA34BBA0();
}

uint64_t sub_1DA3476D8(uint64_t a1, char a2)
{
  v3 = sub_1DA34BF80();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = MEMORY[0x1E69BCDA8];
  if ((a2 & 1) == 0)
  {
    v7 = MEMORY[0x1E69BCDB0];
  }

  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *v7);
  return sub_1DA34BD40();
}

uint64_t TextRun.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  v4 = OUTLINED_FUNCTION_15_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  sub_1DA34BA00();
  sub_1DA34B9D0();
  OUTLINED_FUNCTION_27_6(v9);
  if (!v10)
  {
    sub_1DA31A11C(v9, v1);
    OUTLINED_FUNCTION_2();
    v12 = v11;
    v14 = *(v13 + 88);
    v15 = OUTLINED_FUNCTION_5_6();
    v17 = v16(v15);
    if (v17 == *MEMORY[0x1E69BCC98])
    {
      v18 = *(v12 + 96);
      v19 = OUTLINED_FUNCTION_5_6();
      v20(v19);
      sub_1DA34BBF0();
      OUTLINED_FUNCTION_40_1();
LABEL_6:
      OUTLINED_FUNCTION_12_10(v21, v22, v23);
      (*(v27 + 32))(a1, v1);
      type metadata accessor for TextRun.Value(0);
      swift_storeEnumTagMultiPayload();
      return sub_1DA3482E4(v9);
    }

    if (v17 == *MEMORY[0x1E69BCCA0])
    {
      v24 = *(v12 + 96);
      v25 = OUTLINED_FUNCTION_5_6();
      v26(v25);
      sub_1DA34BCC0();
      OUTLINED_FUNCTION_39_1();
      goto LABEL_6;
    }

    v29 = *(v12 + 8);
    v30 = OUTLINED_FUNCTION_5_6();
    v31(v30);
  }

  OUTLINED_FUNCTION_8_9();
  result = OUTLINED_FUNCTION_6_16();
  __break(1u);
  return result;
}

uint64_t sub_1DA347B78@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t TextRun.Color.name.getter@<X0>(BOOL *a1@<X8>)
{
  sub_1DA34BF80();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  sub_1DA34BD30();
  v7 = *(v3 + 88);
  v8 = OUTLINED_FUNCTION_28_7();
  result = v9(v8);
  v11 = result;
  v12 = *MEMORY[0x1E69BCDB0];
  if (result != *MEMORY[0x1E69BCDB0])
  {
    v13 = *(v3 + 8);
    v14 = OUTLINED_FUNCTION_28_7();
    result = v15(v14);
  }

  *a1 = v11 == v12;
  return result;
}

uint64_t sub_1DA347D20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v2, v3);

  return sub_1DA34CAD0();
}

uint64_t sub_1DA347DDC(void (*a1)(void))
{
  sub_1DA34D210();
  a1(0);
  v2 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v2, v3);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA347F2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1DA34D210();
  a4(0);
  v5 = OUTLINED_FUNCTION_28_7();
  sub_1DA34834C(v5, v6);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA348068@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t TextRun.Color.Name.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

void *sub_1DA3481F4(void *a1, int64_t a2, char a3)
{
  result = sub_1DA348ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA348214()
{
  v1 = *v0;
  sub_1DA348BDC();
  *v0 = v2;
}

void sub_1DA34826C()
{
  v1 = *v0;
  sub_1DA348BDC();
  *v0 = v2;
}

uint64_t sub_1DA3482E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5F80, &qword_1DA3520A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA34834C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA348568()
{
  result = qword_1ECBA6218;
  if (!qword_1ECBA6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6218);
  }

  return result;
}

uint64_t sub_1DA3485FC()
{
  result = type metadata accessor for TextRun.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TextRun.SymbolConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA348770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextRun.Color.Name(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA3488BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_15_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1DA348918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextRun(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA34897C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_1DA3489D4(void *a1, int64_t a2, char a3)
{
  result = sub_1DA348D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DA3489F4()
{
  v1 = *v0;
  sub_1DA348BDC();
  *v0 = v2;
}

uint64_t sub_1DA348A4C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DA348E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348A6C(void *a1, int64_t a2, char a3)
{
  result = sub_1DA348F98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA348A8C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DA3490E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA348AAC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DA3491DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA348ACC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A00, &qword_1DA34E630);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5900, &qword_1DA34E640);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DA348BDC()
{
  OUTLINED_FUNCTION_33_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_0_12(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_25_1();
  if (v10)
  {
    v5(v8 + v25, v14, v21 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_32_1();
}

void *sub_1DA348D88(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6238, &qword_1DA353F38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA348E98(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1DA2FC8C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DA348F98(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6248, &qword_1DA353F50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2FD4E4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A70, &qword_1DA34E9F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3490E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6230, &qword_1DA353F30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DA2E30C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3491DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6220, &qword_1DA353F20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DA2FC900((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3492E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  return sub_1DA34759C();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_1DA34CFC0();
}

uint64_t OUTLINED_FUNCTION_14_9@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return sub_1DA34D090();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_1DA34D240();
}

unint64_t OUTLINED_FUNCTION_29_8()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1DA2F3F10();
}

void OUTLINED_FUNCTION_35_3()
{

  sub_1DA344C7C();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return type metadata accessor for TextRun(0);
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t SelectableContentItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](v1);
  return sub_1DA34D230();
}

uint64_t sub_1DA349980(DeviceExpertIntents::SelectableContentItemStyle itemStyle, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return Array.selectableContent(itemStyle:)(itemStyle).value._countAndFlagsBits;
}

unint64_t sub_1DA349994()
{
  result = qword_1ECBA6250;
  if (!qword_1ECBA6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6250);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectableContentItemStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AttributeScopes.DeviceExpertIntentAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA34B6B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static AttributeScopes.DeviceExpertIntentAttributes.AttributionGroupKey.name.getter()
{
  swift_beginAccess();
  v0 = qword_1ECBA6258;

  return v0;
}

uint64_t static AttributeScopes.DeviceExpertIntentAttributes.AttributionGroupKey.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1ECBA6258 = a1;
  off_1ECBA6260 = a2;
}

uint64_t sub_1DA349CA4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECBA6260;
  *a1 = qword_1ECBA6258;
  a1[1] = v2;
}

uint64_t sub_1DA349CF4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1ECBA6258 = v2;
  off_1ECBA6260 = v1;
}

unint64_t sub_1DA349E1C()
{
  result = qword_1EE10A8C8;
  if (!qword_1EE10A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8C8);
  }

  return result;
}

uint64_t type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes()
{
  result = qword_1EE10AD48;
  if (!qword_1EE10AD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA349F3C()
{
  sub_1DA2FFE00(&qword_1EE10AD90);

  return sub_1DA34B690();
}

uint64_t sub_1DA349FA4()
{
  sub_1DA2FFE00(&qword_1EE10AD90);

  return sub_1DA34B690();
}

uint64_t sub_1DA34A034()
{
  result = sub_1DA34B6B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s28DeviceExpertIntentAttributesV19AttributionGroupKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA34A15C()
{
  result = qword_1EE10A8D0;
  if (!qword_1EE10A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8D0);
  }

  return result;
}

unint64_t sub_1DA34A1B0()
{
  result = qword_1EE109958[0];
  if (!qword_1EE109958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE109958);
  }

  return result;
}

__n128 FlowContext.__allocating_init(sessionId:clusterId:rewriteSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_18();
  v10 = swift_allocObject();
  *(v10 + 97) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v11;
  result = *(a5 + 32);
  *(v10 + 80) = result;
  *(v10 + 96) = *(a5 + 48);
  return result;
}

double sub_1DA34A274()
{
  if (qword_1EE109470 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlowContext();
  v0 = swift_allocObject();
  *(v0 + 97) = 0;
  *(v0 + 16) = 0x6E776F6E6B6E75;
  *(v0 + 24) = 0xE700000000000000;
  *(v0 + 32) = 0x6E776F6E6B6E75;
  *(v0 + 40) = 0xE700000000000000;
  v1 = xmmword_1EE109488;
  *(v0 + 48) = xmmword_1EE109478;
  *(v0 + 64) = v1;
  result = *&xmmword_1EE109498;
  *(v0 + 80) = xmmword_1EE109498;
  *(v0 + 96) = byte_1EE1094A8;
  qword_1ECBA6268 = v0;
  return result;
}

uint64_t static FlowContext.unknown.getter()
{
  if (qword_1ECBA57B0 != -1)
  {
    swift_once();
  }
}

uint64_t FlowContext.init(sessionId:clusterId:rewriteSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 97) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v6 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a5 + 32);
  *(v5 + 96) = *(a5 + 48);
  return v5;
}

uint64_t sub_1DA34A398()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DA34A3E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_26();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1DA34A46C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1DA34A4B4()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DA34A4FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_26();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double sub_1DA34A588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DA34A5D8(v6);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 sub_1DA34A5D8@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 96);
  return result;
}

__n128 sub_1DA34A628(uint64_t a1)
{
  OUTLINED_FUNCTION_1_26();
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  *(v1 + 96) = *(a1 + 48);
  return result;
}

uint64_t sub_1DA34A6B4()
{
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  return *(v0 + 97);
}

uint64_t sub_1DA34A6E4(char a1)
{
  result = OUTLINED_FUNCTION_1_26();
  *(v1 + 97) = a1;
  return result;
}

uint64_t sub_1DA34A75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4972657473756C63 && a2 == 0xE900000000000064;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5365746972776572 && a2 == 0xEE007972616D6D75;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6867696C68676968 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

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

uint64_t sub_1DA34A8C8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x4972657473756C63;
      break;
    case 2:
      result = 0x5365746972776572;
      break;
    case 3:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA34A960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA34A75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA34A988(uint64_t a1)
{
  v2 = sub_1DA34AC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA34A9C4(uint64_t a1)
{
  v2 = sub_1DA34AC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlowContext.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t FlowContext.__deallocating_deinit()
{
  FlowContext.deinit();
  OUTLINED_FUNCTION_3_18();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA34AA54(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6270, &qword_1DA354210);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA34AC78();
  sub_1DA34D250();
  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  LOBYTE(v22) = 0;

  OUTLINED_FUNCTION_4_20();
  if (v13)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_25();
  swift_beginAccess();
  v15 = *(v2 + 32);
  v16 = *(v2 + 40);
  v26 = 1;

  OUTLINED_FUNCTION_4_20();
  if (v15)
  {
LABEL_3:
    (*(v7 + 8))(v11, v4);
  }

  else
  {

    OUTLINED_FUNCTION_0_25();
    swift_beginAccess();
    v18 = *(v2 + 64);
    v22 = *(v2 + 48);
    v23 = v18;
    v24 = *(v2 + 80);
    v25 = *(v2 + 96);
    v21 = 2;
    sub_1DA34ACCC();
    OUTLINED_FUNCTION_6_17();
    sub_1DA34D120();
    OUTLINED_FUNCTION_0_25();
    swift_beginAccess();
    v19 = *(v2 + 97);
    v21 = 3;
    OUTLINED_FUNCTION_6_17();
    sub_1DA34D100();
    return (*(v7 + 8))(v11, v4);
  }
}

unint64_t sub_1DA34AC78()
{
  result = qword_1EE10AC30;
  if (!qword_1EE10AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC30);
  }

  return result;
}

unint64_t sub_1DA34ACCC()
{
  result = qword_1EE10A730;
  if (!qword_1EE10A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A730);
  }

  return result;
}

uint64_t FlowContext.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_18();
  v2 = swift_allocObject();
  FlowContext.init(from:)(a1);
  return v2;
}

uint64_t FlowContext.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA6278, &qword_1DA354218);
  v5 = OUTLINED_FUNCTION_0(v16);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  *(v1 + 97) = 0;
  v8 = (v1 + 97);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA34AC78();
  sub_1DA34D240();
  if (v2)
  {
    type metadata accessor for FlowContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1DA34D060();
    *(v1 + 24) = v10;
    LOBYTE(v17) = 1;
    *(v1 + 32) = sub_1DA34D060();
    *(v1 + 40) = v11;
    sub_1DA34B050();
    sub_1DA34D090();
    *(v1 + 48) = v17;
    *(v1 + 64) = v18;
    *(v1 + 80) = v19;
    *(v1 + 96) = v20;
    v13 = sub_1DA34D070();
    v14 = OUTLINED_FUNCTION_7_11();
    v15(v14, v16);
    swift_beginAccess();
    *v8 = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DA34B050()
{
  result = qword_1EE109428;
  if (!qword_1EE109428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109428);
  }

  return result;
}

uint64_t sub_1DA34B0A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FlowContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA34B410()
{
  result = qword_1ECBA6280;
  if (!qword_1ECBA6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA6280);
  }

  return result;
}

unint64_t sub_1DA34B468()
{
  result = qword_1EE10AC20;
  if (!qword_1EE10AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC20);
  }

  return result;
}

unint64_t sub_1DA34B4C0()
{
  result = qword_1EE10AC28;
  if (!qword_1EE10AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AC28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_1DA34D0F0();
}