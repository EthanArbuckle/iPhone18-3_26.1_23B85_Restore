uint64_t sub_1934763E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  return result;
}

void *sub_193476418(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_19393C860();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  __swift_storeEnumTagSinglePayload(v2 + *(v5 + 120), 1, 1, v6);
  OUTLINED_FUNCTION_4_10();
  *(v2 + *(v15 + 128)) = 0;
  OUTLINED_FUNCTION_4_10();
  *(v2 + *(v16 + 136)) = 0;
  v2[2] = a1;
  (*(*(v6 - 8) + 32))(v14, a2, v6);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
  OUTLINED_FUNCTION_4_10();
  v18 = *(v17 + 120);
  OUTLINED_FUNCTION_7_5();
  (*(v9 + 40))(v2 + v18, v14, v7);
  swift_endAccess();
  return v2;
}

uint64_t sub_1934765BC()
{
  v1 = *v0;

  OUTLINED_FUNCTION_4_10();
  v3 = *(v2 + 120);
  v4 = v1[11];
  v5 = sub_19393C860();
  OUTLINED_FUNCTION_8_8(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

uint64_t sub_1934766B4(char a1)
{
  sub_19393CAB0();
  MEMORY[0x193B18030](a1 & 1);
  return sub_19393CB00();
}

uint64_t sub_193476718()
{
  v1 = *v0;
  sub_19393CAB0();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

unint64_t sub_19347676C()
{
  result = qword_1EAE3A9D8;
  if (!qword_1EAE3A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9D8);
  }

  return result;
}

uint64_t sub_1934767C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_193476810(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_193476850(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1934768B0(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = sub_19393C860();
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

uint64_t getEnumTagSinglePayload for ControlFlow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlFlow(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_193476B08()
{
  sub_19393CAB0();
  MEMORY[0x193B18030](0);
  return sub_19393CB00();
}

uint64_t sub_193476B54()
{
  sub_19393CAB0();
  sub_193476AE0();
  return sub_19393CB00();
}

uint64_t sub_193476BA0()
{
  OUTLINED_FUNCTION_4_10();
  v2 = *(v1 + 88);
  v3 = sub_19393C860();
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_storeEnumTagSinglePayload(&v14 - v9, 1, 1, v2);
  OUTLINED_FUNCTION_4_10();
  v12 = *(v11 + 120);
  OUTLINED_FUNCTION_7_5();
  (*(v5 + 40))(v0 + v12, v10, v3);
  return swift_endAccess();
}

uint64_t sub_193476CA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_19393C860();
  v6 = OUTLINED_FUNCTION_0(v5);
  v32 = v7;
  v33 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = *(v3 + 128);
  OUTLINED_FUNCTION_7_5();
  v34 = v20;
  v21 = *&v1[v20];
  sub_19393C4C0();
  if ((sub_19393C4B0() & 1) == 0)
  {
    sub_19393C4C0();
    v22 = sub_19393C4B0();
    v23 = sub_19393C4C0();
    if ((v22 & 1) == 0)
    {
      result = sub_19393C4B0();
      if (result)
      {
        goto LABEL_7;
      }

      if ((v21 | a1) < 0)
      {
        goto LABEL_22;
      }

      v23 = v21 + a1;
      if (__OFADD__(v21, a1))
      {
LABEL_7:
        v23 = sub_19393C4C0();
      }

      else if (v23 < 0)
      {
        goto LABEL_23;
      }
    }

    *&v1[v34] = v23;
  }

  result = swift_endAccess();
  if ((v1[*(*v1 + 136)] & 1) == 0)
  {
    v25 = *(*v1 + 120);
    swift_beginAccess();
    v26 = *(v32 + 16);
    v27 = (v14 + 32);
    v28 = (v14 + 8);
    do
    {
      v26(v12, &v1[v25], v33);
      if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
      {
        return (*(v32 + 8))(v12, v33);
      }

      (*v27)(v19, v12, v4);
      v29 = *&v1[v34];
      sub_19393C4C0();
      result = sub_19393C4B0();
      if ((result & 1) == 0)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (!v29)
        {
          return (*v28)(v19, v4);
        }
      }

      v30 = MEMORY[0x193B18350]();
      sub_193476FBC(v1, v19, &v35);
      objc_autoreleasePoolPop(v30);
      LOBYTE(v30) = v35;
      result = (*v28)(v19, v4);
    }

    while ((v30 & 1) != 0);
  }

  return result;
}

void sub_193476FBC(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v77 = a2;
  v78 = a3;
  *&v76 = *a1;
  v4 = *(v76 + 80);
  v5 = sub_19393C860();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = sub_19393C450();
  v21 = OUTLINED_FUNCTION_0(v20);
  v74 = v22;
  v75 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  v33 = a1[2];
  if (!v33)
  {
    sub_19393C440();
    v48 = sub_19393C430();
    v49 = sub_19393C800();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_193432000, v48, v49, "No enumerator", v50, 2u);
      OUTLINED_FUNCTION_6_5();
    }

    (*(v74 + 8))(v32, v75);
    v51 = *(v76 + 104);
    v79 = v4;
    v76 = *(v76 + 88);
    v80 = v76;
    v81 = v51;
    type metadata accessor for _Publisher._Subscription.SubscriberError();
    swift_getWitnessTable();
    v52 = swift_allocError();
    v79 = v52;
    sub_19393C480();

    goto LABEL_11;
  }

  v34 = v33;
  v35 = [v34 nextEvent];
  if (!v35)
  {
    v79 = 0;
    v53 = *(v76 + 88);
    v54 = *(v76 + 104);
    sub_19393C480();

LABEL_11:
    v55 = 0;
LABEL_37:
    *v78 = v55;
    return;
  }

  v73 = v34;
  v36 = v35;
  v37 = [v35 eventBody];
  if (!v37)
  {
    sub_19393C440();
    v56 = v36;
    v57 = sub_19393C430();
    v58 = sub_19393C800();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v36;
      v61 = v56;
      _os_log_impl(&dword_193432000, v57, v58, "Failed to get event body %@", v59, 0xCu);
      sub_193477ACC(v60, &qword_1EAE3A9E0, &qword_193950B70);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6_5();
    }

    else
    {
      v61 = v57;
      v57 = v56;
    }

    (*(v74 + 8))(v27, v75);
    goto LABEL_36;
  }

  v38 = v37;
  v39 = *((*MEMORY[0x1E69E7D40] & *v37) + 0xB8);
  v72 = v36;
  v40 = v36;
  v41 = v38;
  v39(v40);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    (*(v7 + 8))(v12, v5);
    sub_19393C440();
    v42 = v41;
    v43 = sub_19393C430();
    v44 = sub_19393C800();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v41;
      v42 = v42;
      _os_log_impl(&dword_193432000, v43, v44, "Failed to unwrap %@", v45, 0xCu);
      sub_193477ACC(v46, &qword_1EAE3A9E0, &qword_193950B70);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6_5();
      v47 = v72;
    }

    else
    {
      v47 = v43;
      v43 = v72;
    }

    (*(v74 + 8))(v30, v75);
    goto LABEL_36;
  }

  v75 = v41;
  (*(v14 + 32))(v19, v12, v4);
  v62 = *(*a1 + 128);
  OUTLINED_FUNCTION_7_5();
  v63 = *(a1 + v62);
  sub_19393C4C0();
  if ((sub_19393C4B0() & 1) == 0)
  {
    sub_19393C4C0();
    if (sub_19393C4B0())
    {
      v64 = sub_19393C4C0();
LABEL_25:
      *(a1 + v62) = v64;
      goto LABEL_26;
    }

    if (v63 < 0)
    {
      __break(1u);
    }

    else if (v63)
    {
      v64 = v63 - 1;
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_26:
  swift_endAccess();
  v65 = *(*a1 + 136);
  *(a1 + v65) = 1;
  v66 = *(v76 + 88);
  v67 = *(v76 + 104);
  v68 = sub_19393C4A0();
  OUTLINED_FUNCTION_7_5();
  v69 = *(a1 + v62);
  sub_19393C4C0();
  if (sub_19393C4B0())
  {
LABEL_35:
    swift_endAccess();

    (*(v14 + 8))(v19, v4);
    *(a1 + v65) = 0;
LABEL_36:
    v55 = 1;
    goto LABEL_37;
  }

  sub_19393C4C0();
  v70 = sub_19393C4B0();
  v71 = sub_19393C4C0();
  if (v70)
  {
LABEL_34:
    *(a1 + v62) = v71;
    goto LABEL_35;
  }

  if (sub_19393C4B0())
  {
LABEL_32:
    v71 = sub_19393C4C0();
    goto LABEL_34;
  }

  if ((v69 | v68) < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v71 = v69 + v68;
  if (__OFADD__(v69, v68))
  {
    goto LABEL_32;
  }

  if ((v71 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_41:
  __break(1u);
}

id sub_1934777F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v14 = sub_19393C570();

  if (a6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v16 = [v8 initWithStream:v14 permission:a3 config:a4 includeTombstones:a5 & 1 eventDataClass:ObjCClassFromMetadata useCase:a7];

  return v16;
}

id sub_1934778A0(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v4 = [v2 initWithStreamDatastore:a1 bookmarkEnumerator:a2 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_19393BCF0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

id sub_193477978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  if (a5)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v16 = [v8 initWithStreamDatastore:a1 startTime:a2 endTime:a3 maxEvents:a4 lastN:ObjCClassFromMetadata options:a6 dataType:a7];

  return v16;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_193477A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_193477ACC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

_BYTE *sub_193477B28(_BYTE *result, int a2, int a3)
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

uint64_t sub_193477BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_2_1();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v11 = OUTLINED_FUNCTION_2_1();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = sub_193477D10;
  v11[5] = v10;
  v15[4] = sub_193477D34;
  v15[5] = v11;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_1();
  v15[2] = v12;
  v15[3] = &block_descriptor;
  v13 = _Block_copy(v15);

  [a3 deleteEventsPassingTest_];
  _Block_release(v13);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_193477D10(void *a1, _BYTE *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_193477F1C(a1, a2, *(v2 + 32)) & 1;
}

uint64_t sub_193477D34()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t sub_193477D60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_193477DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_19393C570();
  v13 = OUTLINED_FUNCTION_2_1();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a3;
  v13[5] = a4;
  v14 = OUTLINED_FUNCTION_2_1();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = sub_193478838;
  v14[5] = v13;
  v18[4] = sub_19347883C;
  v18[5] = v14;
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_1();
  v18[2] = v15;
  v18[3] = &block_descriptor_13;
  v16 = _Block_copy(v18);

  [a5 deleteWithPolicy:v12 eventsPassingTest:v16];

  _Block_release(v16);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_193477F1C(void *a1, _BYTE *a2, uint64_t (*a3)(char *, char *))
{
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_19393C860();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - v14;
  if (!a1 || (v16 = [a1 eventBody]) == 0)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v17 = v16;
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0xB8))(a1);

  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
LABEL_8:
    (*(v7 + 8))(v11, v6);
    v18 = 1;
    return v18 & 1;
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  v21 = 0;
  v18 = a3(v15, &v21);
  if (v21 == 1)
  {
    *v20 = 1;
  }

  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return v18 & 1;
}

id sub_193478198(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 16);
  swift_checkMetadataState();
  v6(v26);
  if (!v26[3])
  {
    sub_1934783D4(v26);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA08, &qword_193951470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E698F118]);
  v10 = sub_1934784FC(0, v7, v8, v9, 0.0, 0, 0xE000000000000000, 0, 0xF000000000000000, 1, v25, 0, 0, 1);
  v11 = *(a4 + 8);
  v12 = sub_19393BE80();
  v14 = v13;
  v15 = type metadata accessor for EventWrapper();
  v16 = objc_allocWithZone(MEMORY[0x1E698F160]);
  v17 = sub_193478614(v12, v14, v15, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA10, &qword_19394F900);
  v18 = v10;
  v19 = v17;
  v20 = sub_19347843C(v10, v23, v24, 0, 0, v17, 0);
  v21 = [a2 deleteStoreEvent_];

  return v21;
}

uint64_t sub_1934783D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA00, &unk_19394F8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1934784FC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v22 = sub_19393C570();

  if (a9 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_19393BD20();
    sub_19345012C(a8, a9);
  }

  v29[0] = a1;
  *&v29[1] = a3;
  *&v29[2] = a4;
  v29[3] = a2;
  LODWORD(v26) = a14;
  v24 = [v14 initWithHeader:v29 storePath:v22 data:v23 framePtr:a10 offset:a11 nextOffset:a12 timestamp:a5 datastoreVersion:a13 state:v26];

  return v24;
}

id sub_193478614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_19393C570();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_19393C570();

LABEL_6:
  v11 = [v6 initWithStreamId:v9 eventType:swift_getObjCClassFromMetadata() remoteStreamName:v10 pruningPolicy:a6];

  return v11;
}

uint64_t sub_19347871C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_193478770(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  if (!a3)
  {
    v14 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    ObjCClassFromMetadata = 0;
    goto LABEL_6;
  }

  v14 = sub_19393C570();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
LABEL_6:
  v16 = [v8 initWithFrame:a1 segmentName:v14 error:a4 eventCategory:a5 metadata:a6 dataType:ObjCClassFromMetadata];

  return v16;
}

uint64_t static Library.legacyViewNameToDatabaseResourceIdentifier.getter()
{
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_87();
  v0 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v0, v1, 0xD000000000000016, v2);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_87();
  v3 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v3, v4, 0xD000000000000012, v5);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_87();
  v6 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v6, v7, v8, v9);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1934852C8(0xD000000000000014, 0x80000001939E1B70, 0xD000000000000013, 0x80000001939E1B50);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_51_1();
  v10 = OUTLINED_FUNCTION_15_17();
  sub_1934852C8(v10, v11, 0xD000000000000011, v12);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_51_1();
  v13 = OUTLINED_FUNCTION_15_17();
  sub_1934852C8(v13, v14, v15, v16);
  OUTLINED_FUNCTION_84();
  v17 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v17, v18, 0xD000000000000013, v19);
  OUTLINED_FUNCTION_84();
  v20 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v20, v21, 0xD000000000000012, v22);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v23 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v23, v24, v25, v26);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_1();
  v27 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v27, v28, v29, 0xE500000000000000);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v30, v31, 0xD000000000000012, v32);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v33, v34, v35, v36);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v37, v38, v39, v40);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v41, v42, v43, v44);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v45, v46, v47, v48);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v49 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v49, v50, v51, v52);
  OUTLINED_FUNCTION_84();
  v53 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v53, v54, 0xD000000000000016, v55);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v56 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v56, v57, v58, 0xE800000000000000);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(0xD00000000000001ALL, v59, v60, v61);
  OUTLINED_FUNCTION_84();
  v62 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v62, v63, 0xD000000000000011, v64);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v65 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v65, v66, v67, 0xE600000000000000);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v68 = OUTLINED_FUNCTION_29_5();
  sub_1934852C8(v68, v69, v70, v71);
  OUTLINED_FUNCTION_84();
  v72 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v72, v73, 0xD000000000000010, v74);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v75, v76, v77, v78);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v79, v80, v81, v82);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_67_3();
  sub_1934852C8(v83, v84, 0xD00000000000001ALL, v85);
  OUTLINED_FUNCTION_84();
  v86 = OUTLINED_FUNCTION_11_8();
  sub_1934852C8(v86, v87, 0xD000000000000012, v88);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  v89 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v89, v90, v91, 0xE800000000000000);
  OUTLINED_FUNCTION_84();
  v92 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v92, v93, 0xD000000000000011, v94);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_51_1();
  sub_1934852C8(0xD00000000000001FLL, 0x80000001939E1E00, 0xD000000000000018, 0x80000001939E18B0);
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_51_1();
  sub_1934852C8(0xD00000000000001FLL, 0x80000001939E1E00, 0x724F74656C6C6157, 0xEB00000000726564);
  OUTLINED_FUNCTION_92();
  v95 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v95, v96, 0xD000000000000010, v97);
  OUTLINED_FUNCTION_92();
  v98 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v98, v99, 0xD000000000000012, v100);
  OUTLINED_FUNCTION_92();
  v101 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v101, v102, 0xD000000000000016, v103);
  OUTLINED_FUNCTION_92();
  v104 = OUTLINED_FUNCTION_32_7();
  sub_1934852C8(v104, 0x80000001939E1E00, 0xD000000000000023, 0x80000001939E18B0);
  OUTLINED_FUNCTION_92();
  v105 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v105, v106, 0xD000000000000011, v107);
  OUTLINED_FUNCTION_92();
  v108 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v108, v109, 0xD000000000000018, v110);
  OUTLINED_FUNCTION_92();
  v111 = OUTLINED_FUNCTION_10_5();
  sub_1934852C8(v111, v112, 0xD000000000000013, v113);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_87();
  sub_1934852C8(0xD00000000000001BLL, 0x80000001939E1C10, 0xD00000000000001FLL, v123 | 0x8000000000000000);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_87();
  v114 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v114, v115, v116, v117);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_87();
  v118 = OUTLINED_FUNCTION_55_5();
  sub_1934852C8(v118, v119, v120, v121);
  return v123;
}

uint64_t static Library.databaseResourceIdentifier(legacyViewName:)()
{
  OUTLINED_FUNCTION_91_0();
  static Library.legacyViewNameToDatabaseResourceIdentifier.getter();
  v2 = OUTLINED_FUNCTION_61_0();
  v3 = sub_193478F8C(v2, v0, v1);

  return v3;
}

uint64_t sub_193478F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_193485250(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_193478FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_193485250(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_19393C040();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_19393C040();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t static Library.view(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA18, &qword_19394F9A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v22[2] = a1;
  v22[3] = a2;
  v22[0] = 46;
  v22[1] = 0xE100000000000000;
  v8 = sub_19393BE70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_19348541C();
  sub_19393C870();
  v10 = v9;
  sub_193442B60(v7, &qword_1EAE3AA18, &qword_19394F9A0);
  if (v10)
  {
    result = static Library.databaseResources.getter();
    v12 = result;
    v13 = (result + 40);
    v14 = -*(result + 16);
    v15 = -1;
    while (1)
    {
      if (v14 + v15 == -1)
      {

        return 0;
      }

      if (++v15 >= *(v12 + 16))
      {
        break;
      }

      v16 = v13 + 2;
      v17 = *v13;
      v18 = *(v13 - 1);
      result = sub_19393BF50();
      v13 = v16;
      if (result)
      {
        v19 = result;

        return v19;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = sub_19393C660();
    MEMORY[0x193B17BA0](v20);

    static Library.lookupDatabaseResource(identifier:)();
    v19 = v21;

    if (v19)
    {
      return sub_19393BF50();
    }

    return v19;
  }

  return result;
}

uint64_t static Library.view(legacyViewName:)(uint64_t a1, uint64_t a2)
{
  result = static Library.databaseResources.getter();
  if (*(result + 16))
  {
    v5 = 0;
    v6 = result + 32;
    v22 = result;
    v19 = result + 32;
    v20 = *(result + 16);
    while (2)
    {
      if (v5 >= *(result + 16))
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v21 = v5 + 1;
      v7 = (v6 + 16 * v5);
      v8 = v7[1];
      v9 = *v7;
      result = sub_19393BF60();
      v10 = result;
      v11 = (result + 40);
      v12 = -*(result + 16);
      v13 = -1;
      while (v12 + v13 != -1)
      {
        if (++v13 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v14 = *(v11 - 1);
        v15 = *v11;
        if (sub_19393BFD0() == a1 && v16 == a2)
        {

          goto LABEL_16;
        }

        v11 += 2;
        v18 = sub_19393CA30();

        if (v18)
        {

LABEL_16:

          return v14;
        }
      }

      v5 = v21;
      result = v22;
      v6 = v19;
      if (v21 != v20)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t static Library.dataArtifacts.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static Library.databaseResources.getter();
  v3 = result;
  v32 = *(result + 16);
  if (v32)
  {
    v29 = a1;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = result;
    v31 = result + 32;
    while (v4 < *(v3 + 16))
    {
      v6 = (v31 + 16 * v4);
      v7 = v6[1];
      v8 = *v6;
      v9 = sub_19393BF60();
      v10 = *(v9 + 16);
      if (v10)
      {
        v33 = v5;
        v34 = MEMORY[0x1E69E7CC0];
        result = sub_193485970(0, v10, 0);
        v11 = 0;
        v12 = v34;
        v13 = (v9 + 40);
        while (v11 < *(v9 + 16))
        {
          v15 = *(v13 - 1);
          v14 = *v13;
          v17 = *(v34 + 16);
          v16 = *(v34 + 24);
          if (v17 >= v16 >> 1)
          {
            v20 = OUTLINED_FUNCTION_39(v16);
            result = sub_193485970(v20, v17 + 1, 1);
          }

          ++v11;
          v18 = *(v14 + 8);
          *(v34 + 16) = v17 + 1;
          v19 = v34 + 16 * v17;
          *(v19 + 32) = v15;
          *(v19 + 40) = v18;
          v13 += 2;
          if (v10 == v11)
          {

            v5 = v33;
            v3 = v30;
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_12:
      v21 = *(v12 + 16);
      v22 = *(v5 + 16);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_31;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v23 > *(v5 + 24) >> 1)
      {
        if (v22 <= v23)
        {
          v24 = v22 + v21;
        }

        else
        {
          v24 = v22;
        }

        result = sub_193433AE4(result, v24, 1, v5, &qword_1EAE3AAB8, &qword_19394FAA0);
        v5 = result;
      }

      if (*(v12 + 16))
      {
        v25 = *(v5 + 16);
        if ((*(v5 + 24) >> 1) - v25 < v21)
        {
          goto LABEL_33;
        }

        memcpy((v5 + 16 * v25 + 32), (v12 + 32), 16 * v21);

        if (v21)
        {
          v26 = *(v5 + 16);
          v27 = __OFADD__(v26, v21);
          v28 = v26 + v21;
          if (v27)
          {
            goto LABEL_34;
          }

          *(v5 + 16) = v28;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_32;
        }
      }

      if (++v4 == v32)
      {

        a1 = v29;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_28:
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA20, &qword_19394F9A8);
    result = sub_19344A3FC(&qword_1EAE3AA28, &qword_1EAE3AA20, &qword_19394F9A8);
    a1[4] = result;
    *a1 = v5;
  }

  return result;
}

uint64_t static Library.dataArtifact(for:)()
{
  OUTLINED_FUNCTION_91_0();
  static Library.dataArtifacts.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_19393C670();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v1;
}

void static Library.orderedDataflows.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v20;
  a20 = v21;
  v22 = sub_19393C040();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49();
  v357 = v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_49();
  v356 = v34;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_49();
  v355 = v37;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49();
  v353 = v42;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_49();
  v352 = v53;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_49();
  v351 = v55;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_49();
  v350 = v57;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_49();
  v349 = v59;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_49();
  v348 = v61;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_49();
  v361 = v68;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_49();
  v360 = v70;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_49();
  v347 = v74;
  OUTLINED_FUNCTION_47_3();
  v76 = MEMORY[0x1EEE9AC00](v75);
  v77 = MEMORY[0x1EEE9AC00](v76);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v79 = MEMORY[0x1EEE9AC00](v78);
  v81 = v346 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v83 = (v346 - v82);
  v84 = MEMORY[0x1E69E7CC0];
  v363 = "WalletPaymentsCommerce.Internal";
  v364 = "e08350c210f494ba";
  v354 = 0xD000000000000016;
  OUTLINED_FUNCTION_9_19();
  v365 = v85;
  sub_19393C020();
  v86 = OUTLINED_FUNCTION_95_0();
  v89 = sub_193484E8C(v86, v87, v88, v84);
  v91 = *(v89 + 16);
  v90 = *(v89 + 24);
  if (v91 >= v90 >> 1)
  {
    v293 = OUTLINED_FUNCTION_39(v90);
    v89 = sub_193484E8C(v293, v91 + 1, 1, v89);
  }

  *(v89 + 16) = v91 + 1;
  v92 = v25 + 32;
  v93 = *(v25 + 32);
  v366 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v367 = v93;
  v94 = *(v25 + 72);
  v362 = v92;
  v93(v89 + v366 + v94 * v91, v83, v22);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_1_13();
  v359 = v95;
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v96);
  }

  v98 = OUTLINED_FUNCTION_8_9();
  v367(v98, v81, v22);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v99);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v108(v100, v101, v102, v103, v104, v105, v106, v107);
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_71_2();
  v344 = MEMORY[0x1E69E7CC0];
  v345 = MEMORY[0x1E69E7CC0];
  v343 = v109;
  v342 = v110;
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v111);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_56_2();
  v120(v112, v113, v114, v115, v116, v117, v118, v119, 0xD0000000000008DELL, v342, 0xD000000000000061, v343, 0xD00000000000008ELL, 0x80000001939E4C50, v344, v345);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_1_13();
  v358 = v121;
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v122);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v123();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v124);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v125();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v126);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_56_2();
  v127();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v128);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v129();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v130);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v131();
  OUTLINED_FUNCTION_66_5();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v132);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v141(v133, v134, v135, v136, v137, v138, v139, v140);
  OUTLINED_FUNCTION_66_5();
  v340 = MEMORY[0x1E69E7CC0];
  v341 = MEMORY[0x1E69E7CC0];
  v339 = v142;
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  v346[17] = 0xD000000000000013;
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v143);
  }

  OUTLINED_FUNCTION_19_14();
  v347 = v94;
  v361 = v22;
  OUTLINED_FUNCTION_59_7();
  v152(v144, v145, v146, v147, v148, v149, v150, v151, 0xD0000000000024CBLL, v339, 0, 0xE000000000000000, 0, 0xE000000000000000, v340, v341);
  OUTLINED_FUNCTION_44_3();
  v153 = sub_19358747C();
  v154 = [OUTLINED_FUNCTION_90_2(v153) createTableSQL];
  v155 = sub_19393C580();
  v157 = v156;

  v158 = [*v83 createViewSQL];
  v159 = sub_19393C580();
  v161 = v160;

  OUTLINED_FUNCTION_83_2();
  v163 = v162 - 28;
  v337 = MEMORY[0x1E69E7CC0];
  v338 = MEMORY[0x1E69E7CC0];
  v360 = "74-4a2b-823d-1c5c95e77bdc}";
  v336 = v162 + 1056;
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_85_0(&v357);
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v164);
  }

  *(v89 + 16) = v158;
  v367(v89 + v366 + v91 * v347, v155, v361);
  OUTLINED_FUNCTION_44_3();
  v165 = sub_193587518();
  v166 = [OUTLINED_FUNCTION_90_2(v165) createTableSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_105_2();
  v167 = [*v158 createViewSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_85_0(&v358);
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v168);
  }

  *(v89 + 16) = v167;
  v169 = OUTLINED_FUNCTION_43_5(v366);
  v170(v169);
  OUTLINED_FUNCTION_44_3();
  v171 = sub_1935875FC();
  v172 = [OUTLINED_FUNCTION_90_2(v171) createTableSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_105_2();
  v173 = [*v167 createViewSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_85_0(&v359);
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v174);
  }

  *(v89 + 16) = v173;
  v175 = OUTLINED_FUNCTION_43_5(v366);
  v176(v175);
  OUTLINED_FUNCTION_44_3();
  v177 = sub_1934EF048();
  v178 = [OUTLINED_FUNCTION_90_2(v177) createTableSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_105_2();
  v179 = [*v173 createViewSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_85_0(&v360);
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v180);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v181();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v182);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v183();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v184);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v185();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v186);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v195(v187, v188, v189, v190, v191, v192, v193, v194);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v196);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v197();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v198);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v199();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v200);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v209(v201, v202, v203, v204, v205, v206, v207, v208);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v210);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v211();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v212);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_73_2();
  v213();
  OUTLINED_FUNCTION_44_3();
  v214 = sub_1934E5D3C();
  v215 = [OUTLINED_FUNCTION_90_2(v214) createTableSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_105_2();
  v216 = [*v179 createViewSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_108_5(&v364);
  v352 = v217;
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_75_4();
  if (v97)
  {
    v294 = OUTLINED_FUNCTION_17_4(v218);
    v89 = sub_193484E8C(v294, v295, v296, v89);
  }

  v219 = OUTLINED_FUNCTION_86_1();
  v220(v219);
  OUTLINED_FUNCTION_44_3();
  v221 = sub_1934E5EBC();
  v222 = [*v221 createTableSQL];
  v223 = sub_19393C580();
  v225 = v224;

  v226 = [*v221 createViewSQL];
  v227 = sub_19393C580();
  v229 = v228;

  OUTLINED_FUNCTION_83_2();
  v334 = MEMORY[0x1E69E7CC0];
  v335 = MEMORY[0x1E69E7CC0];
  v333 = v230 + 873;
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_108_5(&v365);
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_75_4();
  if (v97)
  {
    v297 = OUTLINED_FUNCTION_17_4(v231);
    v89 = sub_193484E8C(v297, v298, v299, v89);
  }

  v232 = OUTLINED_FUNCTION_86_1();
  v233(v232);
  OUTLINED_FUNCTION_44_3();
  v234 = sub_1934E5DD8();
  v235 = [OUTLINED_FUNCTION_90_2(v234) createTableSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_105_2();
  v236 = [*v229 createViewSQL];
  sub_19393C580();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_58_2();
  sub_19393C020();
  OUTLINED_FUNCTION_76_1();
  if (v97)
  {
    v300 = OUTLINED_FUNCTION_4_11(v237);
    v89 = sub_193484E8C(v300, v301, v302, v89);
  }

  *(v89 + 16) = v163;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v238();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_42_11();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_76_1();
  if (v97)
  {
    v303 = OUTLINED_FUNCTION_4_11(v239);
    v89 = sub_193484E8C(v303, v304, v305, v89);
  }

  *(v89 + 16) = v163;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v240();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_0_2();
  v242 = *(v89 + 16);
  v241 = *(v89 + 24);
  v243 = v242 + 1;
  if (v242 >= v241 >> 1)
  {
    v306 = OUTLINED_FUNCTION_4_11(v241);
    v89 = sub_193484E8C(v306, v307, v308, v89);
  }

  *(v89 + 16) = v243;
  OUTLINED_FUNCTION_43_5(v366);
  OUTLINED_FUNCTION_59_7();
  v244();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_108_5(&a9);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_76_1();
  if (v97)
  {
    v309 = OUTLINED_FUNCTION_4_11(v245);
    v89 = sub_193484E8C(v309, v310, v311, v89);
  }

  *(v89 + 16) = v243;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v246();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_0_2();
  v248 = *(v89 + 16);
  v247 = *(v89 + 24);
  v249 = v248 + 1;
  if (v248 >= v247 >> 1)
  {
    v312 = OUTLINED_FUNCTION_17_4(v247);
    v89 = sub_193484E8C(v312, v313, v314, v89);
  }

  *(v89 + 16) = v249;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v250();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_108_5(&a11);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_75_4();
  if (v97)
  {
    v315 = OUTLINED_FUNCTION_17_4(v251);
    v89 = sub_193484E8C(v315, v316, v317, v89);
  }

  *(v89 + 16) = v249;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v260(v252, v253, v254, v255, v256, v257, v258, v259);
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_74_0();
  if (v97)
  {
    v318 = OUTLINED_FUNCTION_3_11(v261);
    v89 = sub_193484E8C(v318, v319, v320, v89);
  }

  *(v89 + 16) = v248;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v262();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_85_0(&a13);
  OUTLINED_FUNCTION_0_2();
  v264 = *(v89 + 16);
  v263 = *(v89 + 24);
  v265 = v264 + 1;
  if (v264 >= v263 >> 1)
  {
    v321 = OUTLINED_FUNCTION_3_11(v263);
    v89 = sub_193484E8C(v321, v322, v323, v89);
  }

  *(v89 + 16) = v265;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_56_2();
  v266();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_74_0();
  if (v97)
  {
    v324 = OUTLINED_FUNCTION_3_11(v267);
    v89 = sub_193484E8C(v324, v325, v326, v89);
  }

  *(v89 + 16) = v265;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v276(v268, v269, v270, v271, v272, v273, v274, v275);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_85_0(&a14);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v277);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_56_2();
  v278();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_0_2();
  v279 = *(v89 + 24);
  if (*(v89 + 16) >= v279 >> 1)
  {
    v89 = OUTLINED_FUNCTION_16_7(v279);
  }

  OUTLINED_FUNCTION_19_14();
  OUTLINED_FUNCTION_59_7();
  v280();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_0_2();
  v282 = *(v89 + 16);
  v281 = *(v89 + 24);
  v283 = v282 + 1;
  if (v282 >= v281 >> 1)
  {
    v327 = OUTLINED_FUNCTION_3_11(v281);
    v89 = sub_193484E8C(v327, v328, v329, v89);
  }

  *(v89 + 16) = v283;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v284();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_74_0();
  if (v97)
  {
    v330 = OUTLINED_FUNCTION_3_11(v285);
    v89 = sub_193484E8C(v330, v331, v332, v89);
  }

  *(v89 + 16) = v283;
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_59_7();
  v286();
  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_9_19();
  sub_19393C020();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    v89 = OUTLINED_FUNCTION_16_7(v287);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v288();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_0_2();
  v289 = *(v89 + 24);
  if (*(v89 + 16) >= v289 >> 1)
  {
    OUTLINED_FUNCTION_16_7(v289);
  }

  OUTLINED_FUNCTION_19_14();
  OUTLINED_FUNCTION_56_2();
  v290();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_8();
  if (v97)
  {
    OUTLINED_FUNCTION_16_7(v291);
  }

  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_59_7();
  v292();
  OUTLINED_FUNCTION_116();
}

void sub_19347B874()
{
  OUTLINED_FUNCTION_117();
  v0 = sub_19393C040();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  isUniquelyReferenced_nonNull_native = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v49 - v10;
  static Library.orderedDataflows.getter(v9, v12, v13, v14, v15, v16, v17, v18, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v20 = v19;
  v21 = sub_19393C510();
  v58 = *(v20 + 16);
  if (v58)
  {
    v22 = 0;
    v57 = v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v55 = isUniquelyReferenced_nonNull_native;
    v56 = v3 + 16;
    v52 = v3;
    v53 = v3 + 8;
    v49 = v3 + 40;
    v50 = v3 + 32;
    v54 = v11;
    v51 = v20;
    while (v22 < *(v20 + 16))
    {
      v59 = *(v3 + 72);
      v23 = *(v3 + 16);
      v23(v11, v57 + v59 * v22, v0);
      v24 = sub_19393C030();
      v26 = v25;
      v27 = v11;
      v11 = v0;
      v23(isUniquelyReferenced_nonNull_native, v27, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v21;
      v28 = sub_193485250(v24, v26);
      if (__OFADD__(v21[2], (v29 & 1) == 0))
      {
        goto LABEL_15;
      }

      v30 = v28;
      v0 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA30, &qword_19394F9B0);
      if (sub_19393C980())
      {
        v31 = sub_193485250(v24, v26);
        if ((v0 & 1) != (v32 & 1))
        {
          goto LABEL_17;
        }

        v30 = v31;
      }

      if (v0)
      {

        v21 = v60;
        v33 = v60[7];
        OUTLINED_FUNCTION_98_0();
        v36(v34, v35);
        v37 = OUTLINED_FUNCTION_109_1();
        v38(v37);
      }

      else
      {
        v21 = v60;
        v60[(v30 >> 6) + 8] |= 1 << v30;
        v39 = (v21[6] + 16 * v30);
        *v39 = v24;
        v39[1] = v26;
        v40 = v21[7];
        OUTLINED_FUNCTION_98_0();
        v43(v41, v42);
        v44 = OUTLINED_FUNCTION_109_1();
        v45(v44);
        v46 = v21[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_16;
        }

        v21[2] = v48;
      }

      ++v22;
      v20 = v51;
      v3 = v52;
      if (v58 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_19393CA50();
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_116();
  }
}

uint64_t static Library.lookupDataflow(name:)()
{
  OUTLINED_FUNCTION_91_0();
  v3 = v2;
  sub_19347B874();
  sub_193478FE4(v1, v0, v4, v3);
}

uint64_t static Library.streamResources.getter()
{
  v0 = sub_193485A50();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  sub_193485470(&type metadata for Library.Streams.App.LanguageConsumption, v0, 0xD000000000000017, 0x8000000193A0A1C0);
  sub_193485AA4();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_106_2(v1, v2, v3, v4);
  sub_193485AF8();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_57_2();
  sub_193485470(v5, v6, v7, v8);
  sub_193485B4C();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_57_2();
  sub_193485470(v9, v10, 0xD00000000000001CLL, v11);
  sub_193485BA0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v12, v13, v14, v15);
  sub_193485BF4();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v16, v17, v18, v19);
  sub_193485C48();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v20, v21, v22, v23);
  sub_193485C9C();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v24, v25, v26, v27);
  sub_193485CF0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v28, v29, v30, v31);
  sub_1934426D4();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v32, v33, v34, v35);
  sub_19343FD54();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v36, v37, v38, v39);
  sub_193441388();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v40, v41, v42, v43);
  sub_19343FEAC();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v44, v45, v46, v47);
  sub_193442904();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v48, v49, v50, v51);
  sub_1934417C0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v52, v53, v54, v55);
  sub_1934419F0();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v56, v57, v58, v59);
  sub_193441590();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v60, v61, v62, v63);
  sub_193485D44();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v64, v65, v66, v67);
  sub_193485D98();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v68, v69, v70, v71);
  sub_193485DEC();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_106_2(v72, v73, v74, v75);
  sub_193485E40();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_106_2(v76, v77, v78, v79);
  sub_193485E94();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_57_2();
  sub_193485470(v80, v81, v82, v83);
  sub_193485EE8();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v84, v85, v86, v87);
  sub_193485F3C();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v88, v89, v90, v91);
  sub_193485F90();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v92, v93, v94, v95);
  sub_193485FE4();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v96, v97, v98, v99);
  sub_193486038();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_22_8();
  sub_193485470(v100, v101, 0xD000000000000017, v102);
  sub_19348608C();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v103, v104, v105, v106);
  sub_1934860E0();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v107, v108, v109, v110);
  sub_193486134();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v111, v112, v113, v114);
  sub_193486188();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v115, v116, v117, v118);
  sub_1934861DC();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v119, v120, v121, v122);
  sub_193486230();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v123, v124, v125, v126);
  sub_193486284();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v127, v128, v129, v130);
  sub_1934862D8();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v131, v132, v133, v134);
  sub_19348632C();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v135, v136, v137, v138);
  sub_193486380();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v139, v140, v141, v142);
  sub_1934863D4();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v143, v144, v145, v146);
  sub_193442194();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v147, v148, v149, v150);
  sub_193451118();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v151, v152, v153, v154);
  sub_193486428();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v155, v156, v157, v158);
  sub_19348647C();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v159, v160, v161, v162);
  sub_1934864D0();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v163, v164, v165, v166);
  sub_193486524();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v167, v168, v169, v170);
  sub_193486578();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();
  sub_193485470(v171, v172, 0xD00000000000001CLL, v173);
  sub_1934865CC();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v174, v175, v176, v177);
  sub_193486620();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v178, v179, v180, v181);
  sub_193486674();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v182, v183, v184, v185);
  sub_1934866C8();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v186, v187, v188, v189);
  sub_19348671C();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_106_2(v190, v191, v192, v193);
  sub_193486770();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v194, v195, v196, v197);
  sub_1934867C4();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v198, v199, v200, v201);
  sub_193486818();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v202, v203, v204, v205);
  sub_19348686C();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_106_2(v206, v207, v208, v209);
  sub_1934868C0();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v210, v211, v212, v213);
  sub_193486914();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v214, v215, v216, v217);
  sub_193486968();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v218, v219, v220, v221);
  sub_1934869BC();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v222, v223, v224, v225);
  sub_193486A10();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v226, v227, v228, v229);
  sub_193486A64();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v230, v231, v232, v233);
  sub_193486AB8();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v234, v235, v236, v237);
  sub_193486B0C();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v238, v239, v240, v241);
  sub_193486B60();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v242, v243, v244, v245);
  sub_193486BB4();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v246, v247, v248, v249);
  sub_193486C08();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v250, v251, v252, v253);
  sub_193486C5C();
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_23_13();
  sub_193485470(v254, v255, v256, v257);
  return v259;
}

void static Library.lookupStreamResource(identifier:)()
{
  OUTLINED_FUNCTION_115();
  v1 = v0;
  OUTLINED_FUNCTION_38();
  v4 = v2 == 0xD000000000000017 && v3 == v1;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_37_2() & 1) != 0))
  {
    sub_193485A50();
  }

  else
  {
    OUTLINED_FUNCTION_34();
    v7 = v4 && v6 == v1;
    if (v7 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
    {
      sub_193485AA4();
    }

    else
    {
      OUTLINED_FUNCTION_78_2();
      v9 = v4 && v1 == v8;
      if (v9 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
      {
        sub_193485AF8();
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v11 = v5 == 0xD00000000000001CLL && v10 == v1;
        if (v11 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          sub_193485B4C();
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v13 = v5 == 0xD000000000000025 && v12 == v1;
          if (v13 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
          {
            sub_193485BA0();
          }

          else
          {
            OUTLINED_FUNCTION_30_5();
            v15 = v4 && v14 == v1;
            if (v15 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
            {
              sub_193485BF4();
            }

            else
            {
              OUTLINED_FUNCTION_30_5();
              v17 = v4 && v16 == v1;
              if (v17 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
              {
                sub_193485C48();
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v19 = v5 == 0xD000000000000020 && v18 == v1;
                if (v19 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  sub_193485C9C();
                }

                else
                {
                  OUTLINED_FUNCTION_30_5();
                  v21 = v4 && v20 == v1;
                  if (v21 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    sub_193485CF0();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v23 = v5 == 0xD000000000000022 && v22 == v1;
                    if (v23 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                    {
                      sub_1934426D4();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_14_12();
                      v25 = v4 && v24 == v1;
                      if (v25 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                      {
                        sub_19343FD54();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v27 = v5 == 0xD000000000000023 && v26 == v1;
                        if (v27 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                        {
                          sub_193441388();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v29 = v5 == 0xD000000000000027 && v28 == v1;
                          if (v29 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                          {
                            sub_19343FEAC();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            v31 = v5 == 0xD000000000000028 && v30 == v1;
                            if (v31 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                            {
                              sub_193442904();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_30_5();
                              v33 = v4 && v32 == v1;
                              if (v33 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                              {
                                sub_1934417C0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v35 = v5 == 0xD000000000000029 && v34 == v1;
                                if (v35 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                {
                                  sub_1934419F0();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_33_1();
                                  v37 = v4 && v36 == v1;
                                  if (v37 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                  {
                                    sub_193441590();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    v39 = v5 == 0xD000000000000024 && v38 == v1;
                                    if (v39 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                    {
                                      sub_193485D44();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      v41 = v5 == 0xD00000000000001ALL && v40 == v1;
                                      if (v41 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                      {
                                        sub_193485D98();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_34();
                                        v43 = v4 && v42 == v1;
                                        if (v43 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                                        {
                                          sub_193485DEC();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_34();
                                          v45 = v4 && v44 == v1;
                                          if (v45 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                                          {
                                            sub_193485E40();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_77_4();
                                            v47 = v4 && v1 == v46;
                                            if (v47 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                            {
                                              sub_193485E94();
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_38();
                                              v49 = v5 == 0xD00000000000002FLL && v48 == v1;
                                              if (v49 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                              {
                                                sub_193485EE8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38();
                                                v51 = v5 == 0xD000000000000026 && v50 == v1;
                                                if (v51 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                {
                                                  sub_193485F3C();
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_38();
                                                  v53 = v5 == 0xD00000000000002DLL && v52 == v1;
                                                  if (v53 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                  {
                                                    sub_193485F90();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38();
                                                    v55 = v5 == 0xD000000000000026 && v54 == v1;
                                                    if (v55 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                    {
                                                      sub_193485FE4();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38();
                                                      v57 = v5 == 0xD000000000000017 && v56 == v1;
                                                      if (v57 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                      {
                                                        sub_193486038();
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_38();
                                                        v59 = v5 == 0xD000000000000012 && v58 == v1;
                                                        if (v59 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                        {
                                                          sub_19348608C();
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_35_5();
                                                          v61 = v4 && v60 == v1;
                                                          if (v61 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                          {
                                                            sub_1934860E0();
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38();
                                                            v63 = v5 == 0xD00000000000003ELL && v62 == v1;
                                                            if (v63 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                            {
                                                              sub_193486134();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_36_6();
                                                              v65 = v4 && v64 == v1;
                                                              if (v65 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                              {
                                                                sub_193486188();
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_38();
                                                                v67 = v5 == 0xD00000000000003BLL && v66 == v1;
                                                                if (v67 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                {
                                                                  sub_1934861DC();
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38();
                                                                  v69 = v5 == 0xD00000000000002CLL && v68 == v1;
                                                                  if (v69 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                  {
                                                                    sub_193486230();
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v71 = v5 == 0xD00000000000002BLL && v70 == v1;
                                                                    if (v71 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                    {
                                                                      sub_193486284();
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_38();
                                                                      v73 = v5 == 0xD000000000000014 && v72 == v1;
                                                                      if (v73 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                      {
                                                                        sub_1934862D8();
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_38();
                                                                        v75 = v5 == 0xD00000000000003ALL && v74 == v1;
                                                                        if (v75 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                        {
                                                                          sub_19348632C();
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_38();
                                                                          v77 = v5 == 0xD00000000000003CLL && v76 == v1;
                                                                          if (v77 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                          {
                                                                            sub_193486380();
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_35_5();
                                                                            v79 = v4 && v78 == v1;
                                                                            if (v79 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                            {
                                                                              sub_1934863D4();
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_38();
                                                                              v81 = v5 == 0xD000000000000034 && v80 == v1;
                                                                              if (v81 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                              {
                                                                                sub_193442194();
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_38();
                                                                                v83 = v5 == 0xD00000000000003ALL && v82 == v1;
                                                                                if (v83 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                {
                                                                                  sub_193451118();
                                                                                }

                                                                                else
                                                                                {
                                                                                  OUTLINED_FUNCTION_38();
                                                                                  v85 = v5 == 0xD000000000000026 && v84 == v1;
                                                                                  if (v85 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                  {
                                                                                    sub_193486428();
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_38();
                                                                                    v87 = v5 == 0xD00000000000002ALL && v86 == v1;
                                                                                    if (v87 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                    {
                                                                                      sub_19348647C();
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_33_1();
                                                                                      v89 = v4 && v88 == v1;
                                                                                      if (v89 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                      {
                                                                                        sub_1934864D0();
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_27_8();
                                                                                        v91 = v4 && v90 == v1;
                                                                                        if (v91 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                        {
                                                                                          sub_193486524();
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_38();
                                                                                          v93 = v5 == 0xD00000000000001CLL && v92 == v1;
                                                                                          if (v93 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                          {
                                                                                            sub_193486578();
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_38();
                                                                                            v95 = v5 == 0xD000000000000019 && v94 == v1;
                                                                                            if (v95 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                            {
                                                                                              sub_1934865CC();
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_33_1();
                                                                                              v97 = v4 && v96 == v1;
                                                                                              if (v97 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                              {
                                                                                                sub_193486620();
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_14_12();
                                                                                                v99 = v4 && v98 == v1;
                                                                                                if (v99 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                {
                                                                                                  sub_193486674();
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                  v101 = v5 == 0xD000000000000021 && v100 == v1;
                                                                                                  if (v101 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                  {
                                                                                                    sub_1934866C8();
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_34();
                                                                                                    v103 = v4 && v102 == v1;
                                                                                                    if (v103 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                                                                                                    {
                                                                                                      sub_19348671C();
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                      v105 = v5 == 0xD00000000000001DLL && v104 == v1;
                                                                                                      if (v105 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                      {
                                                                                                        sub_193486770();
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                        v107 = v5 == 0xD000000000000021 && v106 == v1;
                                                                                                        if (v107 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                        {
                                                                                                          sub_1934867C4();
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_33_1();
                                                                                                          v109 = v4 && v108 == v1;
                                                                                                          if (v109 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                          {
                                                                                                            sub_193486818();
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_34();
                                                                                                            v111 = v4 && v110 == v1;
                                                                                                            if (v111 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                                                                                                            {
                                                                                                              sub_19348686C();
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_33_1();
                                                                                                              v113 = v4 && v112 == v1;
                                                                                                              if (v113 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                              {
                                                                                                                sub_1934868C0();
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_27_8();
                                                                                                                v115 = v4 && v114 == v1;
                                                                                                                if (v115 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                {
                                                                                                                  sub_193486914();
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_36_6();
                                                                                                                  v117 = v4 && v116 == v1;
                                                                                                                  if (v117 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                  {
                                                                                                                    sub_193486968();
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_30_5();
                                                                                                                    v119 = v4 && v118 == v1;
                                                                                                                    if (v119 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                    {
                                                                                                                      sub_1934869BC();
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_27_8();
                                                                                                                      v121 = v4 && v120 == v1;
                                                                                                                      if (v121 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                      {
                                                                                                                        sub_193486A10();
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                                        v123 = v5 == 0xD00000000000002ALL && v122 == v1;
                                                                                                                        if (v123 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                        {
                                                                                                                          sub_193486A64();
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                          v125 = v5 == 0xD000000000000018 && v124 == v1;
                                                                                                                          if (v125 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                          {
                                                                                                                            sub_193486AB8();
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                            v127 = v5 == 0xD000000000000039 && v126 == v1;
                                                                                                                            if (v127 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                            {
                                                                                                                              sub_193486B0C();
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                                              v129 = v5 == 0xD000000000000038 && v128 == v1;
                                                                                                                              if (v129 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                              {
                                                                                                                                sub_193486B60();
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                                v131 = v5 == 0xD000000000000039 && v130 == v1;
                                                                                                                                if (v131 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                                {
                                                                                                                                  sub_193486BB4();
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                                                  v133 = v5 == 0xD000000000000042 && v132 == v1;
                                                                                                                                  if (v133 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                                  {
                                                                                                                                    sub_193486C08();
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_27_8();
                                                                                                                                    v135 = v4 && v134 == v1;
                                                                                                                                    if (v135 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                                                                                                                                    {
                                                                                                                                      sub_193486C5C();
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

  OUTLINED_FUNCTION_114();
}

uint64_t static Library.sqlViewToBiomeStreamMapping.getter()
{
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v0, v1, v2);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v3, 0xD000000000000012, v4);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v5, v6, v7);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v8, v9, v10);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v11, 0xD000000000000011, v12);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v13, 0xD000000000000010, v14);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v15, v16, v17);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v18, 0xD000000000000012, v19);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_69_5();
  sub_1934855B0(&unk_1F07BC3A0, 0x4D79616C50726143, 0xEE00776569567461);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v20, v21, v22);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v23, v24, v25);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v26, v27, v28);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v29, v30, v31);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_69_5();
  sub_1934855B0(&unk_1F07BC490, 0x6C6C61437473614CLL, 0xEF7765695674614DLL);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v32, v33, v34);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v35, v36, v37);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_53_0();
  sub_1934855B0(v38, 0xD000000000000011, v39);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_69_5();
  sub_1934855B0(&unk_1F07BC550, 0x614D6E6967756C50, 0xED00007765695674);
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_69_5();
  sub_1934855B0(&unk_1F07BC580, 0xD000000000000010, 0xD000000000000011);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v40, v41, v42);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v43, v44, v45);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v46, v47, v48);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_72_1();
  sub_1934855B0(v49, 0xD000000000000012, v50);
  return v52;
}

uint64_t static Library.biomeStreams.getter()
{
  v0 = sub_193485A50();
  v1 = sub_19343CF40(&type metadata for Library.Streams.App.LanguageConsumption, v0);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_69_5();
  sub_1934856EC(v1, 0xD000000000000017, 0x8000000193A0A1C0);
  v2 = sub_193485AA4();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Availability, v2);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_50_3();
  v3 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_104_3(v3, v4, v5);
  v6 = sub_193485AF8();
  sub_19343CF40(&type metadata for Library.Streams.Device.Metadata, v6);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_50_3();
  sub_1934856EC("9-5c69-43eb-b6e3-05b8da77b8d6}", 0x4D2E656369766544, 0xEF61746164617465);
  v7 = sub_193485B4C();
  sub_19343CF40(&type metadata for Library.Streams.DeviceExpert.Troubleshooting, v7);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_50_3();
  v8 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v8, 0xD00000000000001CLL, v9);
  v10 = sub_193485BA0();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.FailureTracking, v10);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v11 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v11, v12, v13);
  v14 = sub_193485BF4();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.GuardrailResult, v14);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v15 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v15, v16, v17);
  v18 = sub_193485C48();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.PromptAnalytics, v18);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v19 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v19, v20, v21);
  v22 = sub_193485C9C();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.PromptTags, v22);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v23 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v23, v24, v25);
  v26 = sub_193485CF0();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.TransparencyLog, v26);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v27 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v27, v28, v29);
  v30 = sub_1934426D4();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.ExecutorTelemetry, v30);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v31 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v31, v32, v33);
  v34 = sub_19343FD54();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.Experimentation, v34);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v35 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v35, v36, v37);
  v38 = sub_193441388();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.IFRequestTelemetry, v38);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v39 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v39, v40, v41);
  v42 = sub_19343FEAC();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.JointResolverTelemetry, v42);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v43 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v43, v44, v45);
  v46 = sub_193442904();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.PlanGenerationTelemetry, v46);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v47 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v47, v48, v49);
  v50 = sub_1934417C0();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.PlanResolutionTelemetry, v50);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v51 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v51, v52, v53);
  v54 = sub_1934419F0();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.QueryDecorationTelemetry, v54);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v55 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v55, v56, v57);
  v58 = sub_193441590();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.ResponseGeneration, v58);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v59 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v59, v60, v61);
  v62 = sub_193485D44();
  sub_19343CF40(&type metadata for Library.Streams.IntelligenceFlow.SearchToolTelemetry, v62);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v63 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v63, v64, v65);
  sub_19343CD4C();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_69_5();
  v66 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v66, v67, v68);
  v69 = sub_193485DEC();
  sub_19343CF40(&type metadata for Library.Streams.LLMCache.CacheManagerTelemetry, v69);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v70 = OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_104_3(v70, v71, v72);
  v73 = sub_193485E40();
  sub_19343CF40(&type metadata for Library.Streams.PrivateCloudCompute.RequestLog, v73);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v74 = OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_104_3(v74, v75, v76);
  v77 = sub_193485E94();
  sub_19343CF40(&type metadata for Library.Streams.Sage.Transcript, v77);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  sub_1934856EC(".Transcript.Datastream", 0x6172542E65676153, 0xEF7470697263736ELL);
  v78 = sub_193485EE8();
  sub_19343CF40(&type metadata for Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow, v78);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v79 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v79, v80, v81);
  v82 = sub_193485F3C();
  sub_19343CF40(&type metadata for Library.Streams.SensitiveContentAnalysis.MediaAnalysis, v82);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v83 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v83, v84, v85);
  v86 = sub_193485F90();
  sub_19343CF40(&type metadata for Library.Streams.SensitiveContentAnalysis.ResourcesInteraction, v86);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v87 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v87, v88, v89);
  v90 = sub_193485FE4();
  sub_19343CF40(&type metadata for Library.Streams.SensitiveContentAnalysis.UIInteraction, v90);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_63_3();
  v91 = OUTLINED_FUNCTION_25_8();
  sub_1934856EC(v91, v92, v93);
  sub_1934E6C64();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_69_5();
  v94 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v94, 0xD000000000000017, v95);
  v96 = sub_19348608C();
  sub_19343CF40(&type metadata for Library.Streams.ToolKit.Transcript, v96);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v97 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v97, v98, v99);
  v100 = sub_1934860E0();
  sub_19343CF40(&type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion, v100);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v101 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v101, v102, v103);
  v104 = sub_193486134();
  sub_19343CF40(&type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase, v104);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v105 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v105, v106, v107);
  v108 = sub_193486188();
  sub_19343CF40(&type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.Purchase, v108);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v109 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v109, v110, v111);
  v112 = sub_1934861DC();
  sub_19343CF40(&type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase, v112);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v113 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v113, v114, v115);
  v116 = sub_193486230();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails, v116);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v117 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v117, v118, v119);
  v120 = sub_193486284();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.SafetyOverrides, v120);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v121 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v121, v122, v123);
  v124 = sub_1934862D8();
  sub_19343CF40(&type metadata for Library.Streams.Device.Wireless.WiFi, v124);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v125 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v125, v126, v127);
  v128 = sub_19348632C();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason, v128);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v129 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v129, v130, v131);
  v132 = sub_193486380();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction, v132);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v133 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v133, v134, v135);
  v136 = sub_1934863D4();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust, v136);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v137 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v137, v138, v139);
  v140 = sub_193442194();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation, v140);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v141 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v141, v142, v143);
  v144 = sub_193451118();
  sub_19343CF40(&type metadata for Library.Streams.GenerativeModels.GenerativeFunctions.SystemInstrumentation, v144);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v145 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v145, v146, v147);
  sub_19358810C();
  OUTLINED_FUNCTION_61_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_69_5();
  v148 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v148, v149, v150);
  v151 = sub_19348647C();
  sub_19343CF40(&type metadata for Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent, v151);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v152 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v152, v153, v154);
  v155 = sub_1934864D0();
  sub_19343CF40(&type metadata for Library.Streams.ModelCatalog.Subscriptions.Decisions, v155);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v156 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v156, v157, v158);
  v159 = sub_193486524();
  sub_19343CF40(&type metadata for Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests, v159);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v160 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v160, v161, v162);
  v163 = sub_193486578();
  sub_19343CF40(&type metadata for Library.Streams.Moments.Events.Notifications, v163);
  OUTLINED_FUNCTION_65_2();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68();
  v164 = OUTLINED_FUNCTION_24_7();
  sub_1934856EC(v164, 0xD00000000000001CLL, v165);
  v166 = sub_1934865CC();
  sub_19343CF40(&type metadata for Library.Streams.Shortcuts.UseModel.Safety, v166);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v167 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v167, v168, v169);
  v170 = sub_193486620();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Deletions.Document, v170);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v171 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v171, v172, v173);
  v174 = sub_193486674();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Contact, v174);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v175 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v175, v176, v177);
  v178 = sub_1934866C8();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Document, v178);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v179 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v179, v180, v181);
  v182 = sub_19348671C();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Event, v182);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v183 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_104_3(v183, v184, v185);
  v186 = sub_193486770();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Link, v186);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v187 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v187, v188, v189);
  v190 = sub_1934867C4();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Location, v190);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v191 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v191, v192, v193);
  v194 = sub_193486818();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.NamedEntity, v194);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v195 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v195, v196, v197);
  v198 = sub_19348686C();
  sub_19343CF40(&type metadata for Library.Streams.TextUnderstanding.Output.Topic, v198);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v199 = OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_104_3(v199, v200, v201);
  v202 = sub_1934868C0();
  sub_19343CF40(&type metadata for Library.Streams.TrustKit.Decisioning.TKModelMessages, v202);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v203 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v203, v204, v205);
  v206 = sub_193486914();
  sub_19343CF40(&type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder, v206);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v207 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v207, v208, v209);
  v210 = sub_193486968();
  sub_19343CF40(&type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder, v210);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v211 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v211, v212, v213);
  v214 = sub_1934869BC();
  sub_19343CF40(&type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail, v214);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v215 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v215, v216, v217);
  v218 = sub_193486A10();
  sub_19343CF40(&type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder, v218);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v219 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v219, v220, v221);
  v222 = sub_193486A64();
  sub_19343CF40(&type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction, v222);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v223 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v223, v224, v225);
  v226 = sub_193486AB8();
  sub_19343CF40(&type metadata for Library.Streams.Zeolite.Ledger.Embedding, v226);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v227 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v227, v228, v229);
  v230 = sub_193486B0C();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.Availability, v230);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v231 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v231, v232, v233);
  v234 = sub_193486B60();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.MobileAsset, v234);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v235 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v235, v236, v237);
  v238 = sub_193486BB4();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog, v238);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v239 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v239, v240, v241);
  v242 = sub_193486C08();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework, v242);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v243 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v243, v244, v245);
  v246 = sub_193486C5C();
  sub_19343CF40(&type metadata for Library.Streams.AppleIntelligence.Reporting.Invocation.Step, v246);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_50_3();
  v247 = OUTLINED_FUNCTION_21_5();
  sub_1934856EC(v247, v248, v249);
  return v251;
}

void static Library.streamBases.getter()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_95_0();
  v6 = sub_193484F78(v2, v3, v4, v5);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v7 >> 1 <= v8)
  {
    v149 = OUTLINED_FUNCTION_3_11(v7);
    v6 = sub_193484F78(v149, v150, v151, v6);
    v152 = *(v6 + 3) >> 1;
  }

  OUTLINED_FUNCTION_66_5();
  *(v6 + 2) = v8 + 1;
  v10 = &v6[16 * v8];
  *(v10 + 4) = 0xD000000000000017;
  *(v10 + 5) = v11;
  v12 = v8 + 2;
  if (v13 < (v8 + 2))
  {
    v153 = OUTLINED_FUNCTION_17_4(v9);
    v6 = sub_193484F78(v153, v154, v155, v6);
  }

  OUTLINED_FUNCTION_40_0();
  *(v6 + 2) = v12;
  OUTLINED_FUNCTION_99_0(v14);
  if ((v8 + 3) > (v15 >> 1))
  {
    v156 = OUTLINED_FUNCTION_4_11(v15);
    v6 = sub_193484F78(v156, v157, v158, v6);
  }

  *(v6 + 2) = v8 + 3;
  v16 = &v6[16 * v12];
  *(v16 + 4) = 0x4D2E656369766544;
  *(v16 + 5) = 0xEF61746164617465;
  v17 = *(v6 + 3);
  if ((v8 + 4) > (v17 >> 1))
  {
    v159 = OUTLINED_FUNCTION_3_11(v17);
    v6 = sub_193484F78(v159, v160, v161, v6);
  }

  OUTLINED_FUNCTION_7_6();
  *(v19 + 32) = 0xD00000000000001CLL;
  *(v19 + 40) = v18;
  v20 = *(v6 + 3);
  if ((v8 + 5) > (v20 >> 1))
  {
    v162 = OUTLINED_FUNCTION_4_11(v20);
    v6 = sub_193484F78(v162, v163, v164, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_110_1(v21);
  if ((v8 + 6) > (v22 >> 1))
  {
    v165 = OUTLINED_FUNCTION_17_4(v22);
    v6 = sub_193484F78(v165, v166, v167, v6);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_2();
  OUTLINED_FUNCTION_110_1(v23);
  if ((v8 + 7) > (v24 >> 1))
  {
    v168 = OUTLINED_FUNCTION_3_11(v24);
    v6 = sub_193484F78(v168, v169, v170, v6);
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_45_6(v25);
  if ((v8 + 8) > (v26 >> 1))
  {
    v171 = OUTLINED_FUNCTION_4_11(v26);
    v6 = sub_193484F78(v171, v172, v173, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v27);
  if ((v8 + 9) > (v28 >> 1))
  {
    v174 = OUTLINED_FUNCTION_3_11(v28);
    v6 = sub_193484F78(v174, v175, v176, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v29);
  if ((v8 + 10) > (v30 >> 1))
  {
    v177 = OUTLINED_FUNCTION_4_11(v30);
    v6 = sub_193484F78(v177, v178, v179, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v31);
  if ((v8 + 11) > (v32 >> 1))
  {
    v180 = OUTLINED_FUNCTION_3_11(v32);
    v6 = sub_193484F78(v180, v181, v182, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v33);
  if ((v8 + 12) > (v34 >> 1))
  {
    v183 = OUTLINED_FUNCTION_4_11(v34);
    v6 = sub_193484F78(v183, v184, v185, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v35);
  if ((v8 + 13) > (v36 >> 1))
  {
    v186 = OUTLINED_FUNCTION_3_11(v36);
    v6 = sub_193484F78(v186, v187, v188, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v37);
  if ((v8 + 14) > (v38 >> 1))
  {
    v189 = OUTLINED_FUNCTION_4_11(v38);
    v6 = sub_193484F78(v189, v190, v191, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_110_1(v39);
  if ((v8 + 15) > (v40 >> 1))
  {
    v192 = OUTLINED_FUNCTION_17_4(v40);
    v6 = sub_193484F78(v192, v193, v194, v6);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_2();
  OUTLINED_FUNCTION_110_1(v41);
  if ((v8 + 16) > (v42 >> 1))
  {
    v195 = OUTLINED_FUNCTION_3_11(v42);
    v6 = sub_193484F78(v195, v196, v197, v6);
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_45_6(v43);
  if ((v8 + 17) > (v44 >> 1))
  {
    v198 = OUTLINED_FUNCTION_4_11(v44);
    v6 = sub_193484F78(v198, v199, v200, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v45);
  if ((v8 + 18) > (v46 >> 1))
  {
    v201 = OUTLINED_FUNCTION_3_11(v46);
    v6 = sub_193484F78(v201, v202, v203, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v47);
  if ((v8 + 19) > (v48 >> 1))
  {
    v204 = OUTLINED_FUNCTION_4_11(v48);
    v6 = sub_193484F78(v204, v205, v206, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v49);
  if ((v8 + 20) > (v50 >> 1))
  {
    v207 = OUTLINED_FUNCTION_3_11(v50);
    v6 = sub_193484F78(v207, v208, v209, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_99_0(v51);
  v53 = v8 + 21;
  if ((v8 + 21) > (v52 >> 1))
  {
    v210 = OUTLINED_FUNCTION_17_4(v52);
    v6 = sub_193484F78(v210, v211, v212, v6);
  }

  OUTLINED_FUNCTION_40_0();
  *(v6 + 2) = v53;
  OUTLINED_FUNCTION_99_0(v54);
  if ((v8 + 22) > (v55 >> 1))
  {
    v213 = OUTLINED_FUNCTION_4_11(v55);
    v6 = sub_193484F78(v213, v214, v215, v6);
  }

  *(v6 + 2) = v8 + 22;
  v56 = &v6[16 * v53];
  *(v56 + 4) = 0x6172542E65676153;
  *(v56 + 5) = 0xEF7470697263736ELL;
  v57 = *(v6 + 3);
  if ((v8 + 23) > (v57 >> 1))
  {
    v216 = OUTLINED_FUNCTION_3_11(v57);
    v6 = sub_193484F78(v216, v217, v218, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v58);
  if ((v8 + 24) > (v59 >> 1))
  {
    v219 = OUTLINED_FUNCTION_4_11(v59);
    v6 = sub_193484F78(v219, v220, v221, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v60);
  if ((v8 + 25) > (v61 >> 1))
  {
    v222 = OUTLINED_FUNCTION_3_11(v61);
    v6 = sub_193484F78(v222, v223, v224, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v62);
  if ((v8 + 26) > (v63 >> 1))
  {
    v225 = OUTLINED_FUNCTION_4_11(v63);
    v6 = sub_193484F78(v225, v226, v227, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v64);
  if ((v8 + 27) > (v65 >> 1))
  {
    v228 = OUTLINED_FUNCTION_17_4(v65);
    v6 = sub_193484F78(v228, v229, v230, v6);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_2();
  *(v67 + 32) = 0xD000000000000017;
  *(v67 + 40) = v66;
  v68 = *(v6 + 3);
  if ((v8 + 28) > (v68 >> 1))
  {
    v231 = OUTLINED_FUNCTION_3_11(v68);
    v6 = sub_193484F78(v231, v232, v233, v6);
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_45_6(v69);
  if ((v8 + 29) > (v70 >> 1))
  {
    v234 = OUTLINED_FUNCTION_4_11(v70);
    v6 = sub_193484F78(v234, v235, v236, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v71);
  if ((v8 + 30) > (v72 >> 1))
  {
    v237 = OUTLINED_FUNCTION_3_11(v72);
    v6 = sub_193484F78(v237, v238, v239, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v73);
  if ((v8 + 31) > (v74 >> 1))
  {
    v240 = OUTLINED_FUNCTION_4_11(v74);
    v6 = sub_193484F78(v240, v241, v242, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v75);
  if ((v8 + 32) > (v76 >> 1))
  {
    v243 = OUTLINED_FUNCTION_3_11(v76);
    v6 = sub_193484F78(v243, v244, v245, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v77);
  if ((v8 + 33) > (v78 >> 1))
  {
    v246 = OUTLINED_FUNCTION_4_11(v78);
    v6 = sub_193484F78(v246, v247, v248, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v79);
  if ((v8 + 34) > (v80 >> 1))
  {
    v249 = OUTLINED_FUNCTION_3_11(v80);
    v6 = sub_193484F78(v249, v250, v251, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v81);
  if ((v8 + 35) > (v82 >> 1))
  {
    v252 = OUTLINED_FUNCTION_4_11(v82);
    v6 = sub_193484F78(v252, v253, v254, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v83);
  if ((v8 + 36) > (v84 >> 1))
  {
    v255 = OUTLINED_FUNCTION_3_11(v84);
    v6 = sub_193484F78(v255, v256, v257, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v85);
  if ((v8 + 37) > (v86 >> 1))
  {
    v258 = OUTLINED_FUNCTION_4_11(v86);
    v6 = sub_193484F78(v258, v259, v260, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v87);
  if ((v8 + 38) > (v88 >> 1))
  {
    v261 = OUTLINED_FUNCTION_3_11(v88);
    v6 = sub_193484F78(v261, v262, v263, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v89);
  if ((v8 + 39) > (v90 >> 1))
  {
    v264 = OUTLINED_FUNCTION_4_11(v90);
    v6 = sub_193484F78(v264, v265, v266, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v91);
  if ((v8 + 40) > (v92 >> 1))
  {
    v267 = OUTLINED_FUNCTION_3_11(v92);
    v6 = sub_193484F78(v267, v268, v269, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v93);
  if ((v8 + 41) > (v94 >> 1))
  {
    v270 = OUTLINED_FUNCTION_4_11(v94);
    v6 = sub_193484F78(v270, v271, v272, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v95);
  if ((v8 + 42) > (v96 >> 1))
  {
    v273 = OUTLINED_FUNCTION_3_11(v96);
    v6 = sub_193484F78(v273, v274, v275, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v97);
  if ((v8 + 43) > (v98 >> 1))
  {
    v276 = OUTLINED_FUNCTION_4_11(v98);
    v6 = sub_193484F78(v276, v277, v278, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v99);
  if ((v8 + 44) > (v100 >> 1))
  {
    v279 = OUTLINED_FUNCTION_3_11(v100);
    v6 = sub_193484F78(v279, v280, v281, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v101);
  if ((v8 + 45) > (v102 >> 1))
  {
    v282 = OUTLINED_FUNCTION_4_11(v102);
    v6 = sub_193484F78(v282, v283, v284, v6);
  }

  OUTLINED_FUNCTION_5_12();
  *(v104 + 32) = 0xD00000000000001CLL;
  *(v104 + 40) = v103;
  v105 = *(v6 + 3);
  if ((v8 + 46) > (v105 >> 1))
  {
    v285 = OUTLINED_FUNCTION_3_11(v105);
    v6 = sub_193484F78(v285, v286, v287, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v106);
  if ((v8 + 47) > (v107 >> 1))
  {
    v288 = OUTLINED_FUNCTION_4_11(v107);
    v6 = sub_193484F78(v288, v289, v290, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v108);
  if ((v8 + 48) > (v109 >> 1))
  {
    v291 = OUTLINED_FUNCTION_3_11(v109);
    v6 = sub_193484F78(v291, v292, v293, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v110);
  if ((v8 + 49) > (v111 >> 1))
  {
    v294 = OUTLINED_FUNCTION_4_11(v111);
    v6 = sub_193484F78(v294, v295, v296, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v112);
  if ((v8 + 50) > (v113 >> 1))
  {
    v297 = OUTLINED_FUNCTION_17_4(v113);
    v6 = sub_193484F78(v297, v298, v299, v6);
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_111_2();
  OUTLINED_FUNCTION_99_0(v114);
  if ((v8 + 51) > (v115 >> 1))
  {
    v300 = OUTLINED_FUNCTION_3_11(v115);
    v6 = sub_193484F78(v300, v301, v302, v6);
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_45_6(v116);
  if ((v8 + 52) > (v117 >> 1))
  {
    v303 = OUTLINED_FUNCTION_4_11(v117);
    v6 = sub_193484F78(v303, v304, v305, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v118);
  if ((v8 + 53) > (v119 >> 1))
  {
    v306 = OUTLINED_FUNCTION_3_11(v119);
    v6 = sub_193484F78(v306, v307, v308, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v120);
  if ((v8 + 54) > (v121 >> 1))
  {
    v309 = OUTLINED_FUNCTION_4_11(v121);
    v6 = sub_193484F78(v309, v310, v311, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_99_0(v122);
  if ((v8 + 55) > (v123 >> 1))
  {
    v312 = OUTLINED_FUNCTION_3_11(v123);
    v6 = sub_193484F78(v312, v313, v314, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v124);
  if ((v8 + 56) > (v125 >> 1))
  {
    v315 = OUTLINED_FUNCTION_4_11(v125);
    v6 = sub_193484F78(v315, v316, v317, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v126);
  if ((v8 + 57) > (v127 >> 1))
  {
    v318 = OUTLINED_FUNCTION_3_11(v127);
    v6 = sub_193484F78(v318, v319, v320, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v128);
  if ((v8 + 58) > (v129 >> 1))
  {
    v321 = OUTLINED_FUNCTION_4_11(v129);
    v6 = sub_193484F78(v321, v322, v323, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v130);
  if ((v8 + 59) > (v131 >> 1))
  {
    v324 = OUTLINED_FUNCTION_3_11(v131);
    v6 = sub_193484F78(v324, v325, v326, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v132);
  if ((v8 + 60) > (v133 >> 1))
  {
    v327 = OUTLINED_FUNCTION_4_11(v133);
    v6 = sub_193484F78(v327, v328, v329, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v134);
  if ((v8 + 61) > (v135 >> 1))
  {
    v330 = OUTLINED_FUNCTION_3_11(v135);
    v6 = sub_193484F78(v330, v331, v332, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v136);
  if ((v8 + 62) > (v137 >> 1))
  {
    v333 = OUTLINED_FUNCTION_4_11(v137);
    v6 = sub_193484F78(v333, v334, v335, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v138);
  if ((v8 + 63) > (v139 >> 1))
  {
    v336 = OUTLINED_FUNCTION_3_11(v139);
    v6 = sub_193484F78(v336, v337, v338, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v140);
  if ((v8 + 64) > (v141 >> 1))
  {
    v339 = OUTLINED_FUNCTION_4_11(v141);
    v6 = sub_193484F78(v339, v340, v341, v6);
  }

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_45_6(v142);
  if ((v8 + 65) > (v143 >> 1))
  {
    v342 = OUTLINED_FUNCTION_3_11(v143);
    v6 = sub_193484F78(v342, v343, v344, v6);
  }

  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_45_6(v144);
  if ((v8 + 66) > (v145 >> 1))
  {
    v345 = OUTLINED_FUNCTION_4_11(v145);
    v6 = sub_193484F78(v345, v346, v347, v6);
  }

  OUTLINED_FUNCTION_5_12();
  *(v147 + 32) = 0xD00000000000002BLL;
  *(v147 + 40) = v146;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA78, &qword_19394F9B8);
  v1[4] = sub_19344A3FC(&qword_1EAE3AA80, &qword_1EAE3AA78, &qword_19394F9B8);
  v148 = swift_allocObject();
  *v1 = v148;
  v148[2] = v6;
  v148[3] = sub_193486CB0;
  v148[4] = 0;
  v148[5] = sub_193486DF8;
  v148[6] = 0;
  v148[7] = sub_193486E00;
  v148[8] = 0;
  OUTLINED_FUNCTION_116();
}

void static Library.streamIdentifier(legacyStreamName:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_91_0();
  v2 = v1 == 0x654D656369766544 && v0 == 0xEE00617461646174;
  if (!v2 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v4 = v1 == 0xD000000000000012 && v3 == v0;
    if (v4 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_38();
    v6 = v1 == 0xD00000000000001DLL && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_38();
    v8 = v1 == 0xD000000000000016 && v7 == v0;
    if (v8 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_38();
    v10 = v1 == 0xD000000000000011 && v9 == v0;
    if (v10 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
    {
      goto LABEL_11;
    }

    v11 = v1 == 0x6D72616C41 && v0 == 0xE500000000000000;
    if (!v11 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
    {
      v12 = v1 == 0x697472417377654ELL && v0 == 0xEF77656956656C63;
      if (v12 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
      {
        goto LABEL_11;
      }

      v13 = v1 == 0x7975426F546B7341 && v0 == 0xE800000000000000;
      if (!v13 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
      {
        v14 = v1 == 0x6867696C6B636142 && v0 == 0xE900000000000074;
        if (v14 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        v15 = v1 == 0x6765746143494F50 && v0 == 0xEB0000000079726FLL;
        if (v15 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_38();
        v17 = v1 == 0xD000000000000015 && v16 == v0;
        if (v17 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        v18 = v1 == 0x79616C50726143 && v0 == 0xE700000000000000;
        if (v18 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        v19 = v1 == 0x746E6F43656D6147 && v0 == 0xEE0072656C6C6F72;
        if (v19 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_30_5();
        v21 = v2 && v20 == v0;
        if (v21 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
        {
          goto LABEL_11;
        }

        if (v1 == (OUTLINED_FUNCTION_112_1() | 0x7463694400000000) && v0 == 0xED00006E6F697461)
        {
          OUTLINED_FUNCTION_94_0();
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_37_2();
        OUTLINED_FUNCTION_94_0();
        if ((v23 & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v25 = v1 == 0xD000000000000018 && v24 == v0;
          if (v25 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_94_0();
          v26 = v1 == (OUTLINED_FUNCTION_112_1() | 0x6365784500000000) && v0 == 0xED00006E6F697475;
          if (!v26 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_6();
            v28 = v2 && v27 == v0;
            if (v28 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
            {
              goto LABEL_11;
            }

            OUTLINED_FUNCTION_38();
            v30 = v1 == 0xD000000000000014 && v29 == v0;
            if (v30 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
            {
              goto LABEL_11;
            }

            OUTLINED_FUNCTION_38();
            v32 = v1 == 0xD000000000000017 && v31 == v0;
            if (v32 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
            {
              goto LABEL_11;
            }

            v33 = v1 == 0x6465727265666E49 && v0 == 0xEC00000065646F4DLL;
            if (v33 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
            {
              goto LABEL_11;
            }

            v34 = v1 == 0x636E75614C707041 && v0 == 0xE900000000000068;
            if (!v34 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
            {
              v35 = v1 == 0x4C70696C43707041 && v0 == 0xED000068636E7561;
              if (v35 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
              {
                goto LABEL_11;
              }

              OUTLINED_FUNCTION_35_5();
              v37 = v2 && v36 == v0;
              if (v37 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
              {
                goto LABEL_11;
              }

              v38 = v1 == 0x6E65746E49707041 && v0 == 0xE900000000000074;
              if (!v38 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
              {
                OUTLINED_FUNCTION_35_5();
                v40 = v2 && v39 == v0;
                if (v40 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_38();
                v42 = v1 == 0xD00000000000001ELL && v41 == v0;
                if (v42 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_38();
                v44 = v1 == 0xD000000000000023 && v43 == v0;
                if (v44 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_14_12();
                v46 = v2 && v45 == v0;
                if (v46 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v47 = v1 == 0x746E6F436C69614DLL && v0 == 0xEB00000000746E65;
                if (v47 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_38();
                v49 = v1 == 0xD000000000000022 && v48 == v0;
                if (v49 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v50 = v1 == 0x736567617373654DLL && v0 == 0xEF746E65746E6F43;
                if (v50 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_14_12();
                v52 = v2 && v51 == v0;
                if (v52 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v53 = v1 == 0x6E6F437365746F4ELL && v0 == 0xEC000000746E6574;
                if (v53 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v54 = v1 == 0x6979616C50776F4ELL && v0 == 0xEA0000000000676ELL;
                if (v54 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v55 = v1 == 0x6150697261666153 && v0 == 0xEE00776569566567;
                if (v55 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_38();
                v57 = v1 == 0xD000000000000016 && v56 == v0;
                if (v57 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                OUTLINED_FUNCTION_30_5();
                v59 = v2 && v58 == v0;
                if (v59 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v60 = v1 == (OUTLINED_FUNCTION_112_1() | 0x7265755100000000) && v0 == 0xE900000000000079;
                if (v60 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                {
                  goto LABEL_11;
                }

                v61 = v1 == 0x7373654D64616552 && v0 == 0xEB00000000656761;
                if (!v61 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
                {
                  v62 = v1 == 0x65526E6565726353 && v0 == 0xEF676E6964726F63;
                  if (v62 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_35_5();
                  v64 = v2 && v63 == v0;
                  if (v64 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  v65 = v1 == 0x6E6552616964654DLL && v0 == 0xED00006465726564;
                  if (v65 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_30_5();
                  v67 = v2 && v66 == v0;
                  if (v67 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_38();
                  v69 = v1 == 0xD000000000000019 && v68 == v0;
                  if (v69 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_14_12();
                  v71 = v2 && v70 == v0;
                  if (v71 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_38();
                  v73 = v1 == 0xD00000000000001CLL && v72 == v0;
                  if (v73 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  OUTLINED_FUNCTION_35_5();
                  v75 = v2 && v74 == v0;
                  if (v75 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  v76 = v1 == 0x6E6C7566646E694DLL && v0 == 0xEB00000000737365;
                  if (v76 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  v77 = v1 == 0x69546C6F6F686353 && v0 == 0xEA0000000000656DLL;
                  if (v77 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                  {
                    goto LABEL_11;
                  }

                  v78 = v1 == 0x68536E6565726353 && v0 == 0xED0000676E697261;
                  if (!v78 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
                  {
                    v79 = v1 == 0x646F4D7065656C53 && v0 == 0xE900000000000065;
                    if (v79 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                    {
                      goto LABEL_11;
                    }

                    v80 = v1 == 0x746544646E756F53 && v0 == 0xEE006E6F69746365;
                    if (v80 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                    {
                      goto LABEL_11;
                    }

                    OUTLINED_FUNCTION_35_5();
                    v82 = v2 && v81 == v0;
                    if (v82 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
                    {
                      goto LABEL_11;
                    }

                    OUTLINED_FUNCTION_14_12();
                    v84 = v2 && v83 == v0;
                    if (v84 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                    {
                      goto LABEL_11;
                    }

                    OUTLINED_FUNCTION_38();
                    v86 = v1 == 0xD000000000000015 && v85 == v0;
                    if (v86 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
                    {
                      goto LABEL_11;
                    }

                    v87 = v1 == (OUTLINED_FUNCTION_112_1() & 0xFFFF0000FFFFFFFFLL | 0x495500000000) && v0 == 0xE600000000000000;
                    if (!v87 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
                    {
                      v88 = v1 == 0x6163696669746F4ELL && v0 == 0xEC0000006E6F6974;
                      if (v88 || (OUTLINED_FUNCTION_37_2() & 1) != 0 || (v1 == 0x6850736F746F6850 ? (v89 = v0 == 0xEF776569566F746FLL) : (v89 = 0), v89 || (OUTLINED_FUNCTION_37_2() & 1) != 0))
                      {
LABEL_11:
                        OUTLINED_FUNCTION_62_7();
                        goto LABEL_12;
                      }

                      v90 = v1 == 0x6567617355626557 && v0 == 0xE800000000000000;
                      if (!v90 && (OUTLINED_FUNCTION_37_2() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_35_5();
                        if (!v2 || v91 != v0)
                        {
                          OUTLINED_FUNCTION_26_2();
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

LABEL_12:
  OUTLINED_FUNCTION_114();
}

unint64_t static Library.streamIdentifier(uuidString:)()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v830 - v4;
  sub_19393BE10();
  v6 = sub_19393BE60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_193442B60(v5, &qword_1EAE3AA88, &qword_19394F9C0);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_12();
  v10 = v10 && v9 == v0;
  if (v10 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_44_3();
    return 0xD000000000000017;
  }

  OUTLINED_FUNCTION_14_12();
  v13 = v10 && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_44_3();
    return 0xD00000000000001ELL;
  }

  v8 = 0x4D2E656369766544;
  OUTLINED_FUNCTION_14_12();
  v15 = v10 && v14 == v0;
  if (!v15 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
  {
    OUTLINED_FUNCTION_14_12();
    v17 = v10 && v16 == v0;
    if (v17 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_14_12();
    v19 = v10 && v18 == v0;
    if (v19 || (OUTLINED_FUNCTION_13_2() & 1) != 0 || ((OUTLINED_FUNCTION_14_12(), v10) ? (v21 = v20 == v0) : (v21 = 0), v21 || (OUTLINED_FUNCTION_13_2() & 1) != 0 || ((OUTLINED_FUNCTION_14_12(), v10) ? (v23 = v22 == v0) : (v23 = 0), v23 || (OUTLINED_FUNCTION_13_2() & 1) != 0)))
    {
LABEL_32:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000025;
    }

    OUTLINED_FUNCTION_14_12();
    v25 = v10 && v24 == v0;
    if (v25 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_50:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000020;
    }

    OUTLINED_FUNCTION_14_12();
    v27 = v10 && v26 == v0;
    if (v27 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_14_12();
    v29 = v10 && v28 == v0;
    if (v29 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_62:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000022;
    }

    OUTLINED_FUNCTION_14_12();
    v31 = v10 && v30 == v0;
    if (v31 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_14_12();
    v33 = v10 && v32 == v0;
    if (v33 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_74:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000023;
    }

    OUTLINED_FUNCTION_14_12();
    v35 = v10 && v34 == v0;
    if (v35 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_80:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000027;
    }

    OUTLINED_FUNCTION_14_12();
    v37 = v10 && v36 == v0;
    if (v37 || (OUTLINED_FUNCTION_13_2() & 1) != 0 || ((OUTLINED_FUNCTION_14_12(), v10) ? (v39 = v38 == v0) : (v39 = 0), v39 || (OUTLINED_FUNCTION_13_2() & 1) != 0))
    {
LABEL_92:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000028;
    }

    OUTLINED_FUNCTION_14_12();
    v41 = v10 && v40 == v0;
    if (v41 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_2234:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000029;
    }

    OUTLINED_FUNCTION_14_12();
    v43 = v10 && v42 == v0;
    if (v43 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_14_12();
    v45 = v10 && v44 == v0;
    if (v45 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_1633:
      OUTLINED_FUNCTION_44_3();
      return 0xD000000000000024;
    }

    OUTLINED_FUNCTION_14_12();
    v47 = v10 && v46 == v0;
    if (v47 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
LABEL_116:
      OUTLINED_FUNCTION_44_3();
      return 0xD00000000000001ALL;
    }

    OUTLINED_FUNCTION_14_12();
    v49 = v10 && v48 == v0;
    if (v49 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_14_12();
    v51 = v10 && v50 == v0;
    if (v51 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
    {
      goto LABEL_15;
    }

    v8 = 0x6172542E65676153;
    OUTLINED_FUNCTION_14_12();
    v53 = v10 && v52 == v0;
    if (!v53 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_14_12();
      v55 = v10 && v54 == v0;
      if (v55 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2396;
      }

      OUTLINED_FUNCTION_14_12();
      v57 = v10 && v56 == v0;
      if (v57 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_1449:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000026;
      }

      OUTLINED_FUNCTION_14_12();
      v59 = v10 && v58 == v0;
      if (v59 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_151:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000002DLL;
      }

      OUTLINED_FUNCTION_14_12();
      v61 = v10 && v60 == v0;
      if (v61 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1449;
      }

      OUTLINED_FUNCTION_14_12();
      v63 = v10 && v62 == v0;
      if (v63 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_14_12();
      v65 = v10 && v64 == v0;
      if (v65 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2378:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000012;
      }

      OUTLINED_FUNCTION_14_12();
      v67 = v10 && v66 == v0;
      if (v67 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2396:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000002FLL;
      }

      OUTLINED_FUNCTION_14_12();
      v69 = v10 && v68 == v0;
      if (v69 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000003ELL;
      }

      OUTLINED_FUNCTION_14_12();
      v71 = v10 && v70 == v0;
      if (v71 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_151;
      }

      OUTLINED_FUNCTION_14_12();
      v73 = v10 && v72 == v0;
      if (v73 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_229:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000003BLL;
      }

      OUTLINED_FUNCTION_14_12();
      v75 = v10 && v74 == v0;
      if (v75 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2288:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000002CLL;
      }

      OUTLINED_FUNCTION_14_12();
      v77 = v10 && v76 == v0;
      if (v77 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2270:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000002BLL;
      }

      OUTLINED_FUNCTION_14_12();
      v79 = v10 && v78 == v0;
      if (v79 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2169:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000014;
      }

      OUTLINED_FUNCTION_14_12();
      v81 = v10 && v80 == v0;
      if (v81 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_241:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000003ALL;
      }

      OUTLINED_FUNCTION_14_12();
      v83 = v10 && v82 == v0;
      if (v83 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000003CLL;
      }

      OUTLINED_FUNCTION_14_12();
      v85 = v10 && v84 == v0;
      if (v85 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_229;
      }

      OUTLINED_FUNCTION_14_12();
      v87 = v10 && v86 == v0;
      if (v87 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_528:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000034;
      }

      OUTLINED_FUNCTION_14_12();
      v89 = v10 && v88 == v0;
      if (v89 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_241;
      }

      OUTLINED_FUNCTION_14_12();
      v91 = v10 && v90 == v0;
      if (v91 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1449;
      }

      OUTLINED_FUNCTION_14_12();
      v93 = v10 && v92 == v0;
      if (v93 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2402:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000002ALL;
      }

      OUTLINED_FUNCTION_14_12();
      v95 = v10 && v94 == v0;
      if (v95 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1633;
      }

      OUTLINED_FUNCTION_14_12();
      v97 = v10 && v96 == v0;
      if (v97 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2270;
      }

      OUTLINED_FUNCTION_14_12();
      v99 = v10 && v98 == v0;
      if (v99 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_26:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000001CLL;
      }

      OUTLINED_FUNCTION_14_12();
      v101 = v10 && v100 == v0;
      if (v101 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2312:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000021;
      }

      OUTLINED_FUNCTION_14_12();
      v103 = v10 && v102 == v0;
      if (v103 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2372:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000019;
      }

      OUTLINED_FUNCTION_14_12();
      v105 = v10 && v104 == v0;
      if (v105 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1633;
      }

      OUTLINED_FUNCTION_14_12();
      v107 = v10 && v106 == v0;
      if (v107 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_14_12();
      v109 = v10 && v108 == v0;
      if (v109 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2312;
      }

      OUTLINED_FUNCTION_14_12();
      v111 = v10 && v110 == v0;
      if (v111 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_14_12();
      v113 = v10 && v112 == v0;
      if (v113 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2140:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000001DLL;
      }

      OUTLINED_FUNCTION_14_12();
      v115 = v10 && v114 == v0;
      if (v115 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2312;
      }

      OUTLINED_FUNCTION_14_12();
      v117 = v10 && v116 == v0;
      if (v117 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1633;
      }

      OUTLINED_FUNCTION_14_12();
      v119 = v10 && v118 == v0;
      if (v119 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_14_12();
      v121 = v10 && v120 == v0;
      if (v121 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_1633;
      }

      OUTLINED_FUNCTION_14_12();
      v123 = v10 && v122 == v0;
      if (v123 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2270;
      }

      OUTLINED_FUNCTION_14_12();
      v125 = v10 && v124 == v0;
      if (v125 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_151;
      }

      OUTLINED_FUNCTION_14_12();
      v127 = v10 && v126 == v0;
      if (v127 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2234;
      }

      OUTLINED_FUNCTION_14_12();
      v129 = v10 && v128 == v0;
      if (v129 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2270;
      }

      OUTLINED_FUNCTION_14_12();
      v131 = v10 && v130 == v0;
      if (v131 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2402;
      }

      OUTLINED_FUNCTION_14_12();
      v133 = v10 && v132 == v0;
      if (v133 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2038:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000018;
      }

      OUTLINED_FUNCTION_14_12();
      v135 = v10 && v134 == v0;
      if (v135 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_391;
      }

      OUTLINED_FUNCTION_14_12();
      v137 = v10 && v136 == v0;
      if (v137 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000038;
      }

      OUTLINED_FUNCTION_14_12();
      v139 = v10 && v138 == v0;
      if (v139 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_391:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000039;
      }

      OUTLINED_FUNCTION_14_12();
      v141 = v10 && v140 == v0;
      if (v141 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000042;
      }

      OUTLINED_FUNCTION_14_12();
      v143 = v10 && v142 == v0;
      if (v143 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2270;
      }

      OUTLINED_FUNCTION_14_12();
      v145 = v10 && v144 == v0;
      if (v145 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2187:
        OUTLINED_FUNCTION_44_3();
        return 0xD00000000000001BLL;
      }

      OUTLINED_FUNCTION_14_12();
      v147 = v10 && v146 == v0;
      if (v147 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_14_12();
      v149 = v10 && v148 == v0;
      if (v149 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
LABEL_2354:
        OUTLINED_FUNCTION_44_3();
        return 0xD000000000000016;
      }

      OUTLINED_FUNCTION_14_12();
      v151 = v10 && v150 == v0;
      if (v151 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2038;
      }

      OUTLINED_FUNCTION_14_12();
      v153 = v10 && v152 == v0;
      if (v153 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_14_12();
      v155 = v10 && v154 == v0;
      if (v155 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_14_12();
      v157 = v10 && v156 == v0;
      if (v157 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2372;
      }

      OUTLINED_FUNCTION_14_12();
      v159 = v10 && v158 == v0;
      if (v159 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_14_12();
      v161 = v10 && v160 == v0;
      if (v161 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_14_12();
      v163 = v10 && v162 == v0;
      if (v163 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_14_12();
      v165 = v10 && v164 == v0;
      if (v165 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2038;
      }

      OUTLINED_FUNCTION_14_12();
      v167 = v10 && v166 == v0;
      if (v167 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
      {
        goto LABEL_2378;
      }

      v8 = 0x7974697669746341;
      OUTLINED_FUNCTION_14_12();
      v169 = v10 && v168 == v0;
      if (!v169 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_14_12();
        v171 = v10 && v170 == v0;
        if (v171 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_2312;
        }

        OUTLINED_FUNCTION_14_12();
        v173 = v10 && v172 == v0;
        if (v173 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_14_12();
        v175 = v10 && v174 == v0;
        if (v175 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_74;
        }

        OUTLINED_FUNCTION_14_12();
        v177 = v10 && v176 == v0;
        if (v177 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_2288;
        }

        OUTLINED_FUNCTION_14_12();
        v179 = v10 && v178 == v0;
        if (v179 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_2140;
        }

        OUTLINED_FUNCTION_14_12();
        v181 = v10 && v180 == v0;
        if (v181 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_2270;
        }

        OUTLINED_FUNCTION_14_12();
        v183 = v10 && v182 == v0;
        if (v183 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_151;
        }

        OUTLINED_FUNCTION_14_12();
        v185 = v10 && v184 == v0;
        if (v185 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_528;
        }

        OUTLINED_FUNCTION_14_12();
        v187 = v10 && v186 == v0;
        if (v187 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_1633;
        }

        OUTLINED_FUNCTION_14_12();
        v189 = v10 && v188 == v0;
        if (v189 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_2402;
        }

        OUTLINED_FUNCTION_14_12();
        v191 = v10 && v190 == v0;
        if (v191 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_74;
        }

        OUTLINED_FUNCTION_14_12();
        v193 = v10 && v192 == v0;
        if (v193 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
        {
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_81();
        v8 = 0x6974634169746341;
        OUTLINED_FUNCTION_14_12();
        v195 = v10 && v194 == v0;
        if (!v195 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_12();
          v197 = v10 && v196 == v0;
          if (v197 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
          {
            goto LABEL_1921;
          }

          OUTLINED_FUNCTION_14_12();
          v199 = v10 && v198 == v0;
          if (v199 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
          {
LABEL_2128:
            OUTLINED_FUNCTION_44_3();
            return 0xD000000000000015;
          }

          OUTLINED_FUNCTION_14_12();
          v201 = v10 && v200 == v0;
          if (v201 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
          {
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_14_12();
          v203 = v10 && v202 == v0;
          if (v203 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
          {
LABEL_2348:
            OUTLINED_FUNCTION_44_3();
            return 0xD000000000000013;
          }

          OUTLINED_FUNCTION_81();
          v8 = 0x6F466E4969746341;
          OUTLINED_FUNCTION_14_12();
          v205 = v10 && v204 == v0;
          if (!v205 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
          {
            OUTLINED_FUNCTION_81();
            v8 = 0x74736E4969746341;
            OUTLINED_FUNCTION_14_12();
            v207 = v10 && v206 == v0;
            if (!v207 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
            {
              OUTLINED_FUNCTION_14_12();
              v209 = v10 && v208 == v0;
              if (v209 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
              {
                goto LABEL_1921;
              }

              OUTLINED_FUNCTION_81();
              v8 = 0x65746E4969746341;
              v211 = v1 == 0xD000000000000024 && ((v210 - 32) | 0x8000000000000000) == v0;
              if (!v211 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
              {
                OUTLINED_FUNCTION_14_12();
                v213 = v10 && v212 == v0;
                if (v213 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                {
                  goto LABEL_1633;
                }

                OUTLINED_FUNCTION_14_12();
                v215 = v10 && v214 == v0;
                if (v215 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                {
                  goto LABEL_2354;
                }

                OUTLINED_FUNCTION_14_12();
                v217 = v10 && v216 == v0;
                if (v217 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                {
                  goto LABEL_2169;
                }

                OUTLINED_FUNCTION_81();
                v8 = 0x6964654D69746341;
                OUTLINED_FUNCTION_14_12();
                v219 = v10 && v218 == v0;
                if (!v219 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                {
                  OUTLINED_FUNCTION_81();
                  v8 = 0x756E654D69746341;
                  OUTLINED_FUNCTION_14_12();
                  v221 = v10 && v220 == v0;
                  if (!v221 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_14_12();
                    v223 = v10 && v222 == v0;
                    if (v223 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                    {
                      goto LABEL_2128;
                    }

                    OUTLINED_FUNCTION_14_12();
                    v225 = v10 && v224 == v0;
                    if (v225 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                    {
                      goto LABEL_2378;
                    }

                    OUTLINED_FUNCTION_81();
                    v8 = 0x5562655769746341;
                    OUTLINED_FUNCTION_14_12();
                    v227 = v10 && v226 == v0;
                    if (!v227 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_14_12();
                      v229 = v10 && v228 == v0;
                      if (v229 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                      {
                        goto LABEL_2378;
                      }

                      OUTLINED_FUNCTION_14_12();
                      v231 = v10 && v230 == v0;
                      if (v231 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                      {
                        goto LABEL_2140;
                      }

                      v8 = 0x6F522E6F69647541;
                      OUTLINED_FUNCTION_14_12();
                      v233 = v10 && v232 == v0;
                      if (!v233 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_14_12();
                        v235 = v10 && v234 == v0;
                        if (v235 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_1633;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v237 = v10 && v236 == v0;
                        if (v237 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_15;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v239 = v10 && v238 == v0;
                        if (v239 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_15;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v241 = v10 && v240 == v0;
                        if (v241 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_2348;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v243 = v10 && v242 == v0;
                        if (v243 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_116;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v245 = v10 && v244 == v0;
                        if (v245 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_2140;
                        }

                        OUTLINED_FUNCTION_14_12();
                        v247 = v10 && v246 == v0;
                        if (v247 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                        {
                          goto LABEL_2282;
                        }

                        v8 = 0x6C412E6B636F6C43;
                        OUTLINED_FUNCTION_14_12();
                        v249 = v10 && v248 == v0;
                        if (!v249 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                        {
                          OUTLINED_FUNCTION_14_12();
                          v251 = v10 && v250 == v0;
                          if (v251 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                          {
                            goto LABEL_2288;
                          }

                          OUTLINED_FUNCTION_14_12();
                          v253 = v10 && v252 == v0;
                          if (v253 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                          {
                            goto LABEL_62;
                          }

                          OUTLINED_FUNCTION_14_12();
                          v255 = v10 && v254 == v0;
                          if (v255 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                          {
                            goto LABEL_2354;
                          }

                          OUTLINED_FUNCTION_14_12();
                          v257 = v10 && v256 == v0;
                          if (v257 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                          {
                            goto LABEL_1449;
                          }

                          OUTLINED_FUNCTION_14_12();
                          v259 = v10 && v258 == v0;
                          if (v259 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                          {
                            goto LABEL_1986;
                          }

                          v8 = 0x53747865746E6F43;
                          OUTLINED_FUNCTION_14_12();
                          v261 = v10 && v260 == v0;
                          if (!v261 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                          {
                            OUTLINED_FUNCTION_14_12();
                            v263 = v10 && v262 == v0;
                            if (v263 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2140;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v265 = v10 && v264 == v0;
                            if (v265 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2234;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v267 = v10 && v266 == v0;
                            if (v267 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_1633;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v269 = v10 && v268 == v0;
                            if (v269 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_80;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v271 = v10 && v270 == v0;
                            if (v271 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_1449;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v273 = v10 && v272 == v0;
                            if (v273 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_32;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v275 = v10 && v274 == v0;
                            if (v275 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_8;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v277 = v10 && v276 == v0;
                            if (v277 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_116;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v279 = v10 && v278 == v0;
                            if (v279 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2187;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v281 = v10 && v280 == v0;
                            if (v281 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2378;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v283 = v10 && v282 == v0;
                            if (v283 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_92;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v285 = v10 && v284 == v0;
                            if (v285 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_15;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v287 = v10 && v286 == v0;
                            if (v287 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2140;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v289 = v10 && v288 == v0;
                            if (v289 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_8;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v291 = v10 && v290 == v0;
                            if (v291 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2372;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v293 = v10 && v292 == v0;
                            if (v293 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2038;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v295 = v10 && v294 == v0;
                            if (v295 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_74;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v297 = v10 && v296 == v0;
                            if (v297 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2372;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v299 = v10 && v298 == v0;
                            if (v299 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_8;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v301 = v10 && v300 == v0;
                            if (v301 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_80;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v303 = v10 && v302 == v0;
                            if (v303 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2348;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v305 = v10 && v304 == v0;
                            if (v305 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
LABEL_1986:
                              OUTLINED_FUNCTION_44_3();
                              return 0xD00000000000001FLL;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v307 = v10 && v306 == v0;
                            if (v307 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2372;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v309 = v10 && v308 == v0;
                            if (v309 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_8;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v311 = v10 && v310 == v0;
                            if (v311 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2372;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v313 = v10 && v312 == v0;
                            if (v313 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2354;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v315 = v10 && v314 == v0;
                            if (v315 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_2348;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v317 = v10 && v316 == v0;
                            if (v317 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
LABEL_2282:
                              OUTLINED_FUNCTION_44_3();
                              return 0xD000000000000011;
                            }

                            OUTLINED_FUNCTION_14_12();
                            v319 = v10 && v318 == v0;
                            if (v319 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                            {
                              goto LABEL_62;
                            }

                            v8 = 0x542E656369766544;
                            OUTLINED_FUNCTION_14_12();
                            v321 = v10 && v320 == v0;
                            if (!v321 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                            {
                              OUTLINED_FUNCTION_14_12();
                              v323 = v10 && v322 == v0;
                              if (v323 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_26;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v325 = v10 && v324 == v0;
                              if (v325 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_74;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v327 = v10 && v326 == v0;
                              if (v327 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2372;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v329 = v10 && v328 == v0;
                              if (v329 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_1633;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v331 = v10 && v330 == v0;
                              if (v331 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_32;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v333 = v10 && v332 == v0;
                              if (v333 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_32;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v335 = v10 && v334 == v0;
                              if (v335 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_50;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v337 = v10 && v336 == v0;
                              if (v337 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2402;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v339 = v10 && v338 == v0;
                              if (v339 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_74;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v341 = v10 && v340 == v0;
                              if (v341 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_32;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v343 = v10 && v342 == v0;
                              if (v343 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_74;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v345 = v10 && v344 == v0;
                              if (v345 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_74;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v347 = v10 && v346 == v0;
                              if (v347 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2354;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v349 = v10 && v348 == v0;
                              if (v349 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_50;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v351 = v10 && v350 == v0;
                              if (v351 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_1449;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v353 = v10 && v352 == v0;
                              if (v353 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2282;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v355 = v10 && v354 == v0;
                              if (v355 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2378;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v357 = v10 && v356 == v0;
                              if (v357 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_8;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v359 = v10 && v358 == v0;
                              if (v359 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
                                goto LABEL_2128;
                              }

                              OUTLINED_FUNCTION_14_12();
                              v361 = v10 && v360 == v0;
                              if (v361 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                              {
LABEL_1921:
                                OUTLINED_FUNCTION_44_3();
                                return 0xD000000000000010;
                              }

                              v8 = 0x412E796C696D6146;
                              OUTLINED_FUNCTION_14_12();
                              v363 = v10 && v362 == v0;
                              if (!v363 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                              {
                                OUTLINED_FUNCTION_14_12();
                                v365 = v10 && v364 == v0;
                                if (v365 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_26;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v367 = v10 && v366 == v0;
                                if (v367 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2372;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v369 = v10 && v368 == v0;
                                if (v369 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2187;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v371 = v10 && v370 == v0;
                                if (v371 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_80;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v373 = v10 && v372 == v0;
                                if (v373 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_62;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v375 = v10 && v374 == v0;
                                if (v375 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2312;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v377 = v10 && v376 == v0;
                                if (v377 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2354;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v379 = v10 && v378 == v0;
                                if (v379 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2128;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v381 = v10 && v380 == v0;
                                if (v381 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2372;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v383 = v10 && v382 == v0;
                                if (v383 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_26;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v385 = v10 && v384 == v0;
                                if (v385 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2140;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v387 = v10 && v386 == v0;
                                if (v387 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2038;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v389 = v10 && v388 == v0;
                                if (v389 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_26;
                                }

                                OUTLINED_FUNCTION_14_12();
                                v391 = v10 && v390 == v0;
                                if (v391 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                {
                                  goto LABEL_2187;
                                }

                                v8 = 0x572E68746C616548;
                                OUTLINED_FUNCTION_14_12();
                                v393 = v10 && v392 == v0;
                                if (!v393 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                {
                                  OUTLINED_FUNCTION_14_12();
                                  v395 = v10 && v394 == v0;
                                  if (v395 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1986;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v397 = v10 && v396 == v0;
                                  if (v397 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2038;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v399 = v10 && v398 == v0;
                                  if (v399 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1633;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v401 = v10 && v400 == v0;
                                  if (v401 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1633;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v403 = v10 && v402 == v0;
                                  if (v403 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_8;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v405 = v10 && v404 == v0;
                                  if (v405 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2348;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v407 = v10 && v406 == v0;
                                  if (v407 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_80;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v409 = v10 && v408 == v0;
                                  if (v409 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_92;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v411 = v10 && v410 == v0;
                                  if (v411 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
LABEL_2300:
                                    OUTLINED_FUNCTION_44_3();
                                    return 0xD000000000000032;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v413 = v10 && v412 == v0;
                                  if (v413 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v415 = v10 && v414 == v0;
                                  if (v415 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v417 = v10 && v416 == v0;
                                  if (v417 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v419 = v10 && v418 == v0;
                                  if (v419 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_8;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v421 = v10 && v420 == v0;
                                  if (v421 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2187;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v423 = v10 && v422 == v0;
                                  if (v423 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2372;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v425 = v10 && v424 == v0;
                                  if (v425 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2372;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v427 = v10 && v426 == v0;
                                  if (v427 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_50;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v429 = v10 && v428 == v0;
                                  if (v429 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_32;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v431 = v10 && v430 == v0;
                                  if (v431 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v433 = v10 && v432 == v0;
                                  if (v433 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_80;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v435 = v10 && v434 == v0;
                                  if (v435 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v437 = v10 && v436 == v0;
                                  if (v437 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v439 = v10 && v438 == v0;
                                  if (v439 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2187;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v441 = v10 && v440 == v0;
                                  if (v441 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_26;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v443 = v10 && v442 == v0;
                                  if (v443 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1986;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v445 = v10 && v444 == v0;
                                  if (v445 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2140;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v447 = v10 && v446 == v0;
                                  if (v447 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2270;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v449 = v10 && v448 == v0;
                                  if (v449 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v451 = v10 && v450 == v0;
                                  if (v451 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1986;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v453 = v10 && v452 == v0;
                                  if (v453 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_116;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v455 = v10 && v454 == v0;
                                  if (v455 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_74;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v457 = v10 && v456 == v0;
                                  if (v457 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_1986;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v459 = v10 && v458 == v0;
                                  if (v459 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2187;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v461 = v10 && v460 == v0;
                                  if (v461 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2312;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v463 = v10 && v462 == v0;
                                  if (v463 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2282;
                                  }

                                  OUTLINED_FUNCTION_14_12();
                                  v465 = v10 && v464 == v0;
                                  if (v465 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                  {
                                    goto LABEL_2372;
                                  }

                                  v8 = 0x6E6F697461636F4CLL;
                                  OUTLINED_FUNCTION_14_12();
                                  v467 = v10 && v466 == v0;
                                  if (!v467 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                  {
                                    OUTLINED_FUNCTION_14_12();
                                    v469 = v10 && v468 == v0;
                                    if (v469 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                    {
                                      goto LABEL_2348;
                                    }

                                    OUTLINED_FUNCTION_14_12();
                                    v471 = v10 && v470 == v0;
                                    if (v471 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                    {
                                      goto LABEL_2312;
                                    }

                                    OUTLINED_FUNCTION_14_12();
                                    v473 = v10 && v472 == v0;
                                    if (v473 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                    {
                                      goto LABEL_2234;
                                    }

                                    OUTLINED_FUNCTION_14_12();
                                    v475 = v10 && v474 == v0;
                                    if (v475 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                    {
                                      goto LABEL_1633;
                                    }

                                    OUTLINED_FUNCTION_14_12();
                                    v477 = v10 && v476 == v0;
                                    if (v477 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                    {
                                      goto LABEL_2128;
                                    }

                                    v8 = 0x76614E2E7370614DLL;
                                    OUTLINED_FUNCTION_14_12();
                                    v479 = v10 && v478 == v0;
                                    if (!v479 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                    {
                                      OUTLINED_FUNCTION_14_12();
                                      v481 = v10 && v480 == v0;
                                      if (v481 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                      {
                                        goto LABEL_2354;
                                      }

                                      OUTLINED_FUNCTION_14_12();
                                      v483 = v10 && v482 == v0;
                                      if (v483 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                      {
                                        goto LABEL_2402;
                                      }

                                      OUTLINED_FUNCTION_14_12();
                                      v485 = v10 && v484 == v0;
                                      if (v485 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                      {
                                        goto LABEL_2128;
                                      }

                                      OUTLINED_FUNCTION_14_12();
                                      v487 = v10 && v486 == v0;
                                      if (v487 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                      {
                                        goto LABEL_1921;
                                      }

                                      v8 = 0x6F522E616964654DLL;
                                      OUTLINED_FUNCTION_14_12();
                                      v489 = v10 && v488 == v0;
                                      if (!v489 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                      {
                                        OUTLINED_FUNCTION_14_12();
                                        v491 = v10 && v490 == v0;
                                        if (v491 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_2169;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v493 = v10 && v492 == v0;
                                        if (v493 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_26;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v495 = v10 && v494 == v0;
                                        if (v495 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_1633;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v497 = v10 && v496 == v0;
                                        if (v497 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_1449;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v499 = v10 && v498 == v0;
                                        if (v499 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_32;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v501 = v10 && v500 == v0;
                                        if (v501 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_2234;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v503 = v10 && v502 == v0;
                                        if (v503 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_2312;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v505 = v10 && v504 == v0;
                                        if (v505 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_74;
                                        }

                                        OUTLINED_FUNCTION_14_12();
                                        v507 = v10 && v506 == v0;
                                        if (v507 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                        {
                                          goto LABEL_8;
                                        }

                                        v8 = 0x736567617373654DLL;
                                        OUTLINED_FUNCTION_14_12();
                                        v509 = v10 && v508 == v0;
                                        if (!v509 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                        {
                                          OUTLINED_FUNCTION_14_12();
                                          v511 = v10 && v510 == v0;
                                          if (v511 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2128;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v513 = v10 && v512 == v0;
                                          if (v513 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_1986;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v515 = v10 && v514 == v0;
                                          if (v515 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2348;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v517 = v10 && v516 == v0;
                                          if (v517 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2270;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v519 = v10 && v518 == v0;
                                          if (v519 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_74;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v521 = v10 && v520 == v0;
                                          if (v521 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2038;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v523 = v10 && v522 == v0;
                                          if (v523 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_92;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v525 = v10 && v524 == v0;
                                          if (v525 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2270;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v527 = v10 && v526 == v0;
                                          if (v527 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_50;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v529 = v10 && v528 == v0;
                                          if (v529 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2270;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v531 = v10 && v530 == v0;
                                          if (v531 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_151;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v533 = v10 && v532 == v0;
                                          if (v533 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_74;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v535 = v10 && v534 == v0;
                                          if (v535 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_2372;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v537 = v10 && v536 == v0;
                                          if (v537 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_15;
                                          }

                                          OUTLINED_FUNCTION_14_12();
                                          v539 = v10 && v538 == v0;
                                          if (v539 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                          {
                                            goto LABEL_8;
                                          }

                                          v8 = 0x412E6E6F69746F4DLL;
                                          OUTLINED_FUNCTION_14_12();
                                          v541 = v10 && v540 == v0;
                                          if (!v541 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                          {
                                            OUTLINED_FUNCTION_14_12();
                                            v543 = v10 && v542 == v0;
                                            if (v543 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_50;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v545 = v10 && v544 == v0;
                                            if (v545 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_2378;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v547 = v10 && v546 == v0;
                                            if (v547 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_116;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v549 = v10 && v548 == v0;
                                            if (v549 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_32;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v551 = v10 && v550 == v0;
                                            if (v551 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_2270;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v553 = v10 && v552 == v0;
                                            if (v553 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_74;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v555 = v10 && v554 == v0;
                                            if (v555 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_15;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v557 = v10 && v556 == v0;
                                            if (v557 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_2372;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v559 = v10 && v558 == v0;
                                            if (v559 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_1633;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v561 = v10 && v560 == v0;
                                            if (v561 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_50;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v563 = v10 && v562 == v0;
                                            if (v563 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_2187;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v565 = v10 && v564 == v0;
                                            if (v565 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_2282;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v567 = v10 && v566 == v0;
                                            if (v567 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_74;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v569 = v10 && v568 == v0;
                                            if (v569 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_62;
                                            }

                                            OUTLINED_FUNCTION_14_12();
                                            v571 = v10 && v570 == v0;
                                            if (v571 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                            {
                                              goto LABEL_32;
                                            }

                                            OUTLINED_FUNCTION_41_4();
                                            v8 = 0x442E6E6F69746F4DLL;
                                            OUTLINED_FUNCTION_14_12();
                                            v573 = v10 && v572 == v0;
                                            if (!v573 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                            {
                                              OUTLINED_FUNCTION_41_4();
                                              v8 = 0x452E6E6F69746F4DLL;
                                              OUTLINED_FUNCTION_14_12();
                                              v575 = v10 && v574 == v0;
                                              if (!v575 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                              {
                                                OUTLINED_FUNCTION_14_12();
                                                v577 = v10 && v576 == v0;
                                                if (v577 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                {
                                                  goto LABEL_2282;
                                                }

                                                OUTLINED_FUNCTION_41_4();
                                                v8 = 0x462E6E6F69746F4DLL;
                                                OUTLINED_FUNCTION_14_12();
                                                v579 = v10 && v578 == v0;
                                                if (!v579 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                {
                                                  OUTLINED_FUNCTION_41_4();
                                                  v8 = 0x4C2E6E6F69746F4DLL;
                                                  OUTLINED_FUNCTION_38();
                                                  v581 = v1 == 0xD000000000000024 && v580 == v0;
                                                  if (!v581 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                  {
                                                    OUTLINED_FUNCTION_41_4();
                                                    v8 = 0x4D2E6E6F69746F4DLL;
                                                    OUTLINED_FUNCTION_14_12();
                                                    v583 = v10 && v582 == v0;
                                                    if (!v583 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                    {
                                                      OUTLINED_FUNCTION_14_12();
                                                      v585 = v10 && v584 == v0;
                                                      if (v585 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2140;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v587 = v10 && v586 == v0;
                                                      if (v587 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2038;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v589 = v10 && v588 == v0;
                                                      if (v589 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2187;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v591 = v10 && v590 == v0;
                                                      if (v591 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_26;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v593 = v10 && v592 == v0;
                                                      if (v593 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2354;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v595 = v10 && v594 == v0;
                                                      if (v595 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2354;
                                                      }

                                                      OUTLINED_FUNCTION_14_12();
                                                      v597 = v10 && v596 == v0;
                                                      if (v597 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                      {
                                                        goto LABEL_2128;
                                                      }

                                                      OUTLINED_FUNCTION_41_4();
                                                      v8 = 0x502E6E6F69746F4DLL;
                                                      OUTLINED_FUNCTION_14_12();
                                                      v599 = v10 && v598 == v0;
                                                      if (!v599 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                      {
                                                        OUTLINED_FUNCTION_41_4();
                                                        v8 = 0x532E6E6F69746F4DLL;
                                                        OUTLINED_FUNCTION_14_12();
                                                        v601 = v10 && v600 == v0;
                                                        if (!v601 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                        {
                                                          OUTLINED_FUNCTION_14_12();
                                                          v603 = v10 && v602 == v0;
                                                          if (!v603 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                          {
                                                            OUTLINED_FUNCTION_14_12();
                                                            v605 = v10 && v604 == v0;
                                                            if (!v605 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                            {
                                                              OUTLINED_FUNCTION_14_12();
                                                              v607 = v10 && v606 == v0;
                                                              if (v607 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                              {
                                                                goto LABEL_2169;
                                                              }

                                                              v8 = 0x7469617274726F50;
                                                              OUTLINED_FUNCTION_14_12();
                                                              v609 = v10 && v608 == v0;
                                                              if (!v609 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                              {
                                                                OUTLINED_FUNCTION_14_12();
                                                                v611 = v10 && v610 == v0;
                                                                if (!v611 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                {
                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v613 = v10 && v612 == v0;
                                                                  if (v613 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2038;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v615 = v10 && v614 == v0;
                                                                  if (v615 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_26;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v617 = v10 && v616 == v0;
                                                                  if (v617 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_50;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v619 = v10 && v618 == v0;
                                                                  if (v619 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2372;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v621 = v10 && v620 == v0;
                                                                  if (v621 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2312;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v623 = v10 && v622 == v0;
                                                                  if (v623 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_1449;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v625 = v10 && v624 == v0;
                                                                  if (v625 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_50;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v627 = v10 && v626 == v0;
                                                                  if (v627 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    OUTLINED_FUNCTION_44_3();
                                                                    return 0xD000000000000033;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v629 = v10 && v628 == v0;
                                                                  if (v629 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_1986;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v631 = v10 && v630 == v0;
                                                                  if (v631 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2140;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v633 = v10 && v632 == v0;
                                                                  if (v633 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_74;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v635 = v10 && v634 == v0;
                                                                  if (v635 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_15;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v637 = v10 && v636 == v0;
                                                                  if (v637 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2312;
                                                                  }

                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v639 = v10 && v638 == v0;
                                                                  if (v639 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                  {
                                                                    goto LABEL_2270;
                                                                  }

                                                                  v8 = 0x412E697261666153;
                                                                  OUTLINED_FUNCTION_14_12();
                                                                  v641 = v10 && v640 == v0;
                                                                  if (!v641 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                  {
                                                                    OUTLINED_FUNCTION_14_12();
                                                                    v643 = v10 && v642 == v0;
                                                                    if (v643 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                    {
                                                                      goto LABEL_2372;
                                                                    }

                                                                    OUTLINED_FUNCTION_14_12();
                                                                    v645 = v10 && v644 == v0;
                                                                    if (v645 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                    {
                                                                      goto LABEL_2354;
                                                                    }

                                                                    OUTLINED_FUNCTION_14_12();
                                                                    v647 = v10 && v646 == v0;
                                                                    if (v647 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                    {
                                                                      goto LABEL_2378;
                                                                    }

                                                                    v8 = 0x502E697261666153;
                                                                    OUTLINED_FUNCTION_14_12();
                                                                    v649 = v10 && v648 == v0;
                                                                    if (!v649 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                    {
                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v651 = v10 && v650 == v0;
                                                                      if (v651 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                      {
                                                                        goto LABEL_2372;
                                                                      }

                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v653 = v10 && v652 == v0;
                                                                      if (v653 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                      {
                                                                        goto LABEL_2187;
                                                                      }

                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v655 = v10 && v654 == v0;
                                                                      if (v655 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                      {
                                                                        goto LABEL_2378;
                                                                      }

                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v657 = v10 && v656 == v0;
                                                                      if (v657 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                      {
                                                                        goto LABEL_2378;
                                                                      }

                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v659 = v10 && v658 == v0;
                                                                      if (v659 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                      {
                                                                        goto LABEL_1921;
                                                                      }

                                                                      v8 = 0x532E6E6565726353;
                                                                      OUTLINED_FUNCTION_14_12();
                                                                      v661 = v10 && v660 == v0;
                                                                      if (!v661 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                      {
                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v663 = v10 && v662 == v0;
                                                                        if (v663 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2348;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v665 = v10 && v664 == v0;
                                                                        if (v665 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_15;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v667 = v10 && v666 == v0;
                                                                        if (v667 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2348;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v669 = v10 && v668 == v0;
                                                                        if (v669 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_15;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v671 = v10 && v670 == v0;
                                                                        if (v671 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_62;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v673 = v10 && v672 == v0;
                                                                        if (v673 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2270;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v675 = v10 && v674 == v0;
                                                                        if (v675 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_92;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v677 = v10 && v676 == v0;
                                                                        if (v677 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_62;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v679 = v10 && v678 == v0;
                                                                        if (v679 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_8;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v681 = v10 && v680 == v0;
                                                                        if (v681 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_1986;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v683 = v10 && v682 == v0;
                                                                        if (v683 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2140;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v685 = v10 && v684 == v0;
                                                                        if (v685 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_50;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v687 = v10 && v686 == v0;
                                                                        if (v687 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2187;
                                                                        }

                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v689 = v10 && v688 == v0;
                                                                        if (v689 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                        {
                                                                          goto LABEL_2187;
                                                                        }

                                                                        OUTLINED_FUNCTION_96_4();
                                                                        v8 = 0x6369442E65726353;
                                                                        OUTLINED_FUNCTION_14_12();
                                                                        v691 = v10 && v690 == v0;
                                                                        if (!v691 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                        {
                                                                          OUTLINED_FUNCTION_96_4();
                                                                          v8 = 0x6578452E65726353;
                                                                          OUTLINED_FUNCTION_14_12();
                                                                          v693 = v10 && v692 == v0;
                                                                          if (!v693 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                          {
                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v695 = v10 && v694 == v0;
                                                                            if (v695 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_1449;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v697 = v10 && v696 == v0;
                                                                            if (v697 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2128;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v699 = v10 && v698 == v0;
                                                                            if (v699 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2038;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v701 = v10 && v700 == v0;
                                                                            if (v701 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2288;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v703 = v10 && v702 == v0;
                                                                            if (v703 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2402;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v705 = v10 && v704 == v0;
                                                                            if (v705 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_80;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v707 = v10 && v706 == v0;
                                                                            if (v707 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_116;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v709 = v10 && v708 == v0;
                                                                            if (v709 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2372;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v711 = v10 && v710 == v0;
                                                                            if (v711 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2294;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v713 = v10 && v712 == v0;
                                                                            if (v713 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_92;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v715 = v10 && v714 == v0;
                                                                            if (v715 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2312;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v717 = v10 && v716 == v0;
                                                                            if (v717 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_15;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v719 = v10 && v718 == v0;
                                                                            if (v719 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2348;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v721 = v10 && v720 == v0;
                                                                            if (v721 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_74;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v723 = v10 && v722 == v0;
                                                                            if (v723 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2187;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v725 = v10 && v724 == v0;
                                                                            if (v725 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_116;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v727 = v10 && v726 == v0;
                                                                            if (v727 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_116;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v729 = v10 && v728 == v0;
                                                                            if (v729 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2128;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v731 = v10 && v730 == v0;
                                                                            if (v731 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2312;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v733 = v10 && v732 == v0;
                                                                            if (v733 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2140;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v735 = v10 && v734 == v0;
                                                                            if (v735 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_8;
                                                                            }

                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v737 = v10 && v736 == v0;
                                                                            if (v737 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                            {
                                                                              goto LABEL_2187;
                                                                            }

                                                                            v8 = 0x7265532E69726953;
                                                                            OUTLINED_FUNCTION_14_12();
                                                                            v739 = v10 && v738 == v0;
                                                                            if (!v739 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                            {
                                                                              OUTLINED_FUNCTION_14_12();
                                                                              v741 = v10 && v740 == v0;
                                                                              if (v741 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                              {
                                                                                goto LABEL_2354;
                                                                              }

                                                                              OUTLINED_FUNCTION_14_12();
                                                                              v743 = v10 && v742 == v0;
                                                                              if (v743 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                              {
                                                                                goto LABEL_2169;
                                                                              }

                                                                              v8 = 0x49552E69726953;
                                                                              OUTLINED_FUNCTION_14_12();
                                                                              v745 = v10 && v744 == v0;
                                                                              if (!v745 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                              {
                                                                                OUTLINED_FUNCTION_14_12();
                                                                                v747 = v10 && v746 == v0;
                                                                                if (v747 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                {
                                                                                  goto LABEL_2288;
                                                                                }

                                                                                OUTLINED_FUNCTION_14_12();
                                                                                v749 = v10 && v748 == v0;
                                                                                if (v749 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                {
                                                                                  goto LABEL_2187;
                                                                                }

                                                                                OUTLINED_FUNCTION_14_12();
                                                                                v751 = v10 && v750 == v0;
                                                                                if (v751 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                {
                                                                                  goto LABEL_2348;
                                                                                }

                                                                                v8 = 0x65532E7065656C53;
                                                                                OUTLINED_FUNCTION_14_12();
                                                                                v753 = v10 && v752 == v0;
                                                                                if (!v753 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                                {
                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v755 = v10 && v754 == v0;
                                                                                  if (v755 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_74;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v757 = v10 && v756 == v0;
                                                                                  if (v757 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_50;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v759 = v10 && v758 == v0;
                                                                                  if (v759 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2312;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v761 = v10 && v760 == v0;
                                                                                  if (v761 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_26;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v763 = v10 && v762 == v0;
                                                                                  if (v763 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2288;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v765 = v10 && v764 == v0;
                                                                                  if (v765 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2234;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v767 = v10 && v766 == v0;
                                                                                  if (v767 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_80;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v769 = v10 && v768 == v0;
                                                                                  if (v769 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_151;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v771 = v10 && v770 == v0;
                                                                                  if (v771 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_15;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v773 = v10 && v772 == v0;
                                                                                  if (v773 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_32;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v775 = v10 && v774 == v0;
                                                                                  if (v775 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2288;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v777 = v10 && v776 == v0;
                                                                                  if (v777 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2270;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v779 = v10 && v778 == v0;
                                                                                  if (v779 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_116;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v781 = v10 && v780 == v0;
                                                                                  if (v781 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2282;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v783 = v10 && v782 == v0;
                                                                                  if (v783 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2288;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v785 = v10 && v784 == v0;
                                                                                  if (v785 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
LABEL_2294:
                                                                                    OUTLINED_FUNCTION_44_3();
                                                                                    return 0xD000000000000035;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v787 = v10 && v786 == v0;
                                                                                  if (v787 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2300;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v789 = v10 && v788 == v0;
                                                                                  if (v789 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_1449;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v791 = v10 && v790 == v0;
                                                                                  if (v791 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2312;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v793 = v10 && v792 == v0;
                                                                                  if (v793 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_1449;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v795 = v10 && v794 == v0;
                                                                                  if (v795 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2378;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v797 = v10 && v796 == v0;
                                                                                  if (v797 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2354;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v799 = v10 && v798 == v0;
                                                                                  if (v799 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_62;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v801 = v10 && v800 == v0;
                                                                                  if (v801 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2354;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v803 = v10 && v802 == v0;
                                                                                  if (v803 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2348;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v805 = v10 && v804 == v0;
                                                                                  if (v805 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2354;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v807 = v10 && v806 == v0;
                                                                                  if (v807 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_80;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v809 = v10 && v808 == v0;
                                                                                  if (v809 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_32;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v811 = v10 && v810 == v0;
                                                                                  if (v811 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2372;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v813 = v10 && v812 == v0;
                                                                                  if (v813 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2378;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v815 = v10 && v814 == v0;
                                                                                  if (v815 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_44_3();
                                                                                    return 0xD00000000000003FLL;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v817 = v10 && v816 == v0;
                                                                                  if (v817 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_44_3();
                                                                                    return 0xD000000000000041;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v819 = v10 && v818 == v0;
                                                                                  if (v819 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2396;
                                                                                  }

                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v821 = v10 && v820 == v0;
                                                                                  if (v821 || (OUTLINED_FUNCTION_13_2() & 1) != 0)
                                                                                  {
                                                                                    goto LABEL_2402;
                                                                                  }

                                                                                  v8 = 0x654E2E6863746157;
                                                                                  OUTLINED_FUNCTION_14_12();
                                                                                  v823 = v10 && v822 == v0;
                                                                                  if (!v823 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                                  {
                                                                                    v8 = 0x2E73746567646957;
                                                                                    OUTLINED_FUNCTION_14_12();
                                                                                    v825 = v10 && v824 == v0;
                                                                                    if (!v825 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                                    {
                                                                                      OUTLINED_FUNCTION_14_12();
                                                                                      v827 = v10 && v826 == v0;
                                                                                      if (!v827 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                                      {
                                                                                        OUTLINED_FUNCTION_14_12();
                                                                                        v829 = v10 && v828 == v0;
                                                                                        if (!v829 && (OUTLINED_FUNCTION_13_2() & 1) == 0)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_62;
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

  return v8;
}

unint64_t sub_193484E38()
{
  result = qword_1ED502908;
  if (!qword_1ED502908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502908);
  }

  return result;
}

size_t sub_193484E8C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_193485080(v8, v7);
  v10 = *(sub_19393C040() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_19348517C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_193484F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_193485080(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAB0, &qword_19394FA98);
  v4 = *(sub_19393C040() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19348517C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_19393C040(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_19393C040();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_193485250(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_19393CAB0();
  sub_19393C640();
  v6 = sub_19393CB00();

  return sub_1934858BC(a1, a2, v6);
}

uint64_t sub_1934852C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_193485250(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAC0, &qword_19394FAA8);
  if ((sub_19393C980() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_193485250(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_19393CA50();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_193485828(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_19348541C()
{
  result = qword_1EAE3A710;
  if (!qword_1EAE3A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A710);
  }

  return result;
}

uint64_t sub_193485470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_193485250(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAA8, &qword_19394FA90);
  result = sub_19393C980();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v5;
  result = sub_193485250(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_19393CA50();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_193485828(v13, a3, a4, a1, a2, v18);
  }

  return result;
}

uint64_t sub_1934855B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_193485250(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAA0, &qword_19394FA88);
  if ((sub_19393C980() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_193485250(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_19393CA50();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_193485874(v11, a2, a3, a1, v16);
  }
}

void sub_1934856EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_193485250(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA98, &qword_19394FA80);
  if ((sub_19393C980() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_193485250(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_19393CA50();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_193485874(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_193485828(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_193485874(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1934858BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_193485970(char *a1, int64_t a2, char a3)
{
  result = sub_193486CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1934859D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v4 = a1[1];
  if (sub_19393BE90() == v2 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19393CA30();
  }

  return v8 & 1;
}

unint64_t sub_193485A50()
{
  result = qword_1EAE3A7C8;
  if (!qword_1EAE3A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7C8);
  }

  return result;
}

unint64_t sub_193485AA4()
{
  result = qword_1ED5073D0[0];
  if (!qword_1ED5073D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5073D0);
  }

  return result;
}

unint64_t sub_193485AF8()
{
  result = qword_1ED506E38;
  if (!qword_1ED506E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E38);
  }

  return result;
}

unint64_t sub_193485B4C()
{
  result = qword_1EAE3A7D8;
  if (!qword_1EAE3A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7D8);
  }

  return result;
}

unint64_t sub_193485BA0()
{
  result = qword_1ED5048C8;
  if (!qword_1ED5048C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048C8);
  }

  return result;
}

unint64_t sub_193485BF4()
{
  result = qword_1EAE3AA38;
  if (!qword_1EAE3AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA38);
  }

  return result;
}

unint64_t sub_193485C48()
{
  result = qword_1ED506878;
  if (!qword_1ED506878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506878);
  }

  return result;
}

unint64_t sub_193485C9C()
{
  result = qword_1ED5048D8;
  if (!qword_1ED5048D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048D8);
  }

  return result;
}

unint64_t sub_193485CF0()
{
  result = qword_1ED506870;
  if (!qword_1ED506870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506870);
  }

  return result;
}

unint64_t sub_193485D44()
{
  result = qword_1ED5068B8;
  if (!qword_1ED5068B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068B8);
  }

  return result;
}

unint64_t sub_193485D98()
{
  result = qword_1EAE3A988;
  if (!qword_1EAE3A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A988);
  }

  return result;
}

unint64_t sub_193485DEC()
{
  result = qword_1ED507AE0;
  if (!qword_1ED507AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507AE0);
  }

  return result;
}

unint64_t sub_193485E40()
{
  result = qword_1ED506E58;
  if (!qword_1ED506E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E58);
  }

  return result;
}

unint64_t sub_193485E94()
{
  result = qword_1ED506868;
  if (!qword_1ED506868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506868);
  }

  return result;
}

unint64_t sub_193485EE8()
{
  result = qword_1EAE3A938;
  if (!qword_1EAE3A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A938);
  }

  return result;
}

unint64_t sub_193485F3C()
{
  result = qword_1EAE3AA40;
  if (!qword_1EAE3AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA40);
  }

  return result;
}

unint64_t sub_193485F90()
{
  result = qword_1EAE3A928;
  if (!qword_1EAE3A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A928);
  }

  return result;
}

unint64_t sub_193485FE4()
{
  result = qword_1EAE3AA48;
  if (!qword_1EAE3AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA48);
  }

  return result;
}

unint64_t sub_193486038()
{
  result = qword_1EAE3AA50;
  if (!qword_1EAE3AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA50);
  }

  return result;
}

unint64_t sub_19348608C()
{
  result = qword_1ED503D00;
  if (!qword_1ED503D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D00);
  }

  return result;
}

unint64_t sub_1934860E0()
{
  result = qword_1ED506888;
  if (!qword_1ED506888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506888);
  }

  return result;
}

unint64_t sub_193486134()
{
  result = qword_1ED5030F0;
  if (!qword_1ED5030F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5030F0);
  }

  return result;
}

unint64_t sub_193486188()
{
  result = qword_1ED504EC8[0];
  if (!qword_1ED504EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED504EC8);
  }

  return result;
}

unint64_t sub_1934861DC()
{
  result = qword_1ED503100;
  if (!qword_1ED503100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503100);
  }

  return result;
}

unint64_t sub_193486230()
{
  result = qword_1ED502898;
  if (!qword_1ED502898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502898);
  }

  return result;
}

unint64_t sub_193486284()
{
  result = qword_1EAE3A9C0;
  if (!qword_1EAE3A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A9C0);
  }

  return result;
}

unint64_t sub_1934862D8()
{
  result = qword_1ED5048B0;
  if (!qword_1ED5048B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048B0);
  }

  return result;
}

unint64_t sub_19348632C()
{
  result = qword_1EAE3AA58;
  if (!qword_1EAE3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA58);
  }

  return result;
}

unint64_t sub_193486380()
{
  result = qword_1ED5048C0;
  if (!qword_1ED5048C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048C0);
  }

  return result;
}

unint64_t sub_1934863D4()
{
  result = qword_1EAE3AA60;
  if (!qword_1EAE3AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA60);
  }

  return result;
}

unint64_t sub_193486428()
{
  result = qword_1EAE3A948;
  if (!qword_1EAE3A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A948);
  }

  return result;
}

unint64_t sub_19348647C()
{
  result = qword_1EAE3AA68;
  if (!qword_1EAE3AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA68);
  }

  return result;
}

unint64_t sub_1934864D0()
{
  result = qword_1ED506E60;
  if (!qword_1ED506E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E60);
  }

  return result;
}

unint64_t sub_193486524()
{
  result = qword_1ED504610;
  if (!qword_1ED504610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504610);
  }

  return result;
}

unint64_t sub_193486578()
{
  result = qword_1EAE3AA70;
  if (!qword_1EAE3AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3AA70);
  }

  return result;
}

unint64_t sub_1934865CC()
{
  result = qword_1EAE3A978;
  if (!qword_1EAE3A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A978);
  }

  return result;
}

unint64_t sub_193486620()
{
  result = qword_1ED5043A8;
  if (!qword_1ED5043A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043A8);
  }

  return result;
}

unint64_t sub_193486674()
{
  result = qword_1ED5043C8;
  if (!qword_1ED5043C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043C8);
  }

  return result;
}

unint64_t sub_1934866C8()
{
  result = qword_1ED5043B8;
  if (!qword_1ED5043B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043B8);
  }

  return result;
}

unint64_t sub_19348671C()
{
  result = qword_1ED5043E0;
  if (!qword_1ED5043E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043E0);
  }

  return result;
}

unint64_t sub_193486770()
{
  result = qword_1ED5031F0;
  if (!qword_1ED5031F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5031F0);
  }

  return result;
}

unint64_t sub_1934867C4()
{
  result = qword_1ED504338;
  if (!qword_1ED504338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504338);
  }

  return result;
}

unint64_t sub_193486818()
{
  result = qword_1ED504348;
  if (!qword_1ED504348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504348);
  }

  return result;
}

unint64_t sub_19348686C()
{
  result = qword_1ED504340;
  if (!qword_1ED504340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504340);
  }

  return result;
}

unint64_t sub_1934868C0()
{
  result = qword_1ED502FA8;
  if (!qword_1ED502FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502FA8);
  }

  return result;
}

unint64_t sub_193486914()
{
  result = qword_1ED503D20;
  if (!qword_1ED503D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D20);
  }

  return result;
}

unint64_t sub_193486968()
{
  result = qword_1ED503B28;
  if (!qword_1ED503B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B28);
  }

  return result;
}

unint64_t sub_1934869BC()
{
  result = qword_1ED503B38;
  if (!qword_1ED503B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B38);
  }

  return result;
}

unint64_t sub_193486A10()
{
  result = qword_1ED503B30;
  if (!qword_1ED503B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B30);
  }

  return result;
}

unint64_t sub_193486A64()
{
  result = qword_1ED503D30;
  if (!qword_1ED503D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D30);
  }

  return result;
}

unint64_t sub_193486AB8()
{
  result = qword_1ED507AF0;
  if (!qword_1ED507AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507AF0);
  }

  return result;
}

unint64_t sub_193486B0C()
{
  result = qword_1ED503210;
  if (!qword_1ED503210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503210);
  }

  return result;
}

unint64_t sub_193486B60()
{
  result = qword_1ED503218[0];
  if (!qword_1ED503218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED503218);
  }

  return result;
}

unint64_t sub_193486BB4()
{
  result = qword_1ED503208;
  if (!qword_1ED503208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503208);
  }

  return result;
}

unint64_t sub_193486C08()
{
  result = qword_1EAE3A990;
  if (!qword_1EAE3A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A990);
  }

  return result;
}

unint64_t sub_193486C5C()
{
  result = qword_1ED503B60;
  if (!qword_1ED503B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B60);
  }

  return result;
}

void sub_193486CB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  static Library.biomeStream(for:)();
  *a2 = v5;
}

char *sub_193486CE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAB8, &qword_19394FAA0);
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

id sub_193486DEC(id result)
{
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_193486E00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_193486DEC(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Library(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_9_2();
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

_BYTE *storeEnumTagSinglePayload for Library(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_86_1()
{
  *(v3 + 16) = v2;
  v5 = *(v4 - 96);
  result = v3 + *(v4 - 104) + v1 * v0;
  v7 = *(v4 - 144);
  v8 = *(v4 - 136);
  return result;
}

char *OUTLINED_FUNCTION_101_1(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_193433AE4(a1, v7, 1, v6, a5, a6);
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_110_1(uint64_t a1@<X8>)
{
  *(v1 + 32) = v3;
  *(v1 + 40) = a1;
  v4 = *(v2 + 24);
}

uint64_t sub_193487184(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_19344FABC(__dst, &v3);
  return GenerativeFunctionsInstrumentationEvent.identifierSet.setter(__src);
}

uint64_t GenerativeFunctionsInstrumentationEvent.identifierSet.setter(const void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a1, sizeof(__dst));
  v11 = __dst;
  static Buildable.with(_:)(sub_193487D18, v4, &protocol witness table for GenerativeFunctionsInstrumentationEvent.Identifiers, v7);
  sub_1934500D8(__dst);
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  return sub_193487D44(v7, v2 + *(v8 + 28));
}

uint64_t sub_1934872C8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v91 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v88 - v11;
  v13 = sub_19393BE60();
  v93 = *(v13 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88 - v19;
  v21 = (a2 + *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(0) + 28));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v24 = OUTLINED_FUNCTION_2_1();
    *(v24 + 16) = xmmword_19394FAC0;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    v25 = *a1;

    *a1 = v24;
  }

  if (v21[3])
  {
    v26 = v21[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v27 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_12(v27, xmmword_19394FAC0);
    v28 = a1[1];

    a1[1] = v27;
  }

  if (v21[5])
  {
    v29 = v21[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v30 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_12(v30, xmmword_19394FAC0);
    v31 = a1[2];

    a1[2] = v30;
  }

  if (v21[7])
  {
    v32 = v21[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v33 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_12(v33, xmmword_19394FAC0);
    v34 = a1[3];

    a1[3] = v33;
  }

  if (v21[9])
  {
    v35 = v21[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v36 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_12(v36, xmmword_19394FAC0);
    v37 = a1[4];

    a1[4] = v36;
  }

  v38 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  sub_193458F7C(v21 + v38[9], v12);
  OUTLINED_FUNCTION_5_9(v12);
  v92 = v8;
  if (v39)
  {
    sub_193458FEC(v12);
  }

  else
  {
    v41 = v93 + 32;
    v40 = *(v93 + 32);
    v40(v20, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAE0, &qword_19394FAE0);
    v42 = *(v41 + 40);
    v43 = (*(v41 + 48) + 32) & ~*(v41 + 48);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_19394FAC0;
    v40((v44 + v43), v20, v13);
    v45 = a1[5];

    a1[5] = v44;
  }

  v46 = v21 + v38[10];
  v47 = v91;
  if ((v46[8] & 1) == 0)
  {
    v48 = *v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAD8, &qword_19394FAD8);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_19394FAC0;
    *(v49 + 32) = v48;
    v50 = a1[6];

    a1[6] = v49;
  }

  v51 = (v21 + v38[11]);
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v54 = OUTLINED_FUNCTION_2_1();
    *(v54 + 16) = xmmword_19394FAC0;
    *(v54 + 32) = v53;
    *(v54 + 40) = v52;
    v55 = a1[7];

    a1[7] = v54;
  }

  v56 = (v21 + v38[12]);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v59 = OUTLINED_FUNCTION_2_1();
    *(v59 + 16) = xmmword_19394FAC0;
    *(v59 + 32) = v58;
    *(v59 + 40) = v57;
    v60 = a1[8];

    a1[8] = v59;
  }

  v61 = (v21 + v38[14]);
  v62 = v61[1];
  if (v62)
  {
    v63 = v61[2];
    v64 = v61[3];
    v65 = *v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAD0, &qword_19394FAD0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_19394FAC0;
    *(v66 + 32) = v65;
    *(v66 + 40) = v62;
    *(v66 + 48) = v63;
    *(v66 + 56) = v64;
    v67 = a1[9];

    a1[9] = v66;
  }

  sub_193458F7C(v21 + v38[15], v47);
  OUTLINED_FUNCTION_5_9(v47);
  if (v39)
  {
    sub_193458FEC(v47);
    v71 = &off_19394F000;
  }

  else
  {
    v68 = v93;
    v69 = v89;
    (*(v93 + 32))(v89, v47, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v70 = OUTLINED_FUNCTION_2_1();
    v71 = &off_19394F000;
    *(v70 + 16) = xmmword_19394FAC0;
    *(v70 + 32) = sub_19393BE20();
    *(v70 + 40) = v72;
    (*(v68 + 8))(v69, v13);
    v73 = a1[10];

    a1[10] = v70;
  }

  v74 = v92;
  sub_193458F7C(v21 + v38[16], v92);
  OUTLINED_FUNCTION_5_9(v74);
  if (v39)
  {
    result = sub_193458FEC(v74);
  }

  else
  {
    v75 = v93;
    v76 = v90;
    (*(v93 + 32))(v90, v74, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v77 = OUTLINED_FUNCTION_2_1();
    v78 = v71;
    v79 = v77;
    *(v77 + 16) = *(v78 + 172);
    *(v77 + 32) = sub_19393BE20();
    *(v79 + 40) = v80;
    (*(v75 + 8))(v76, v13);
    v81 = a1[11];

    a1[11] = v79;
  }

  v83 = (v21 + v38[18]);
  v84 = v83[1];
  if (v84)
  {
    v85 = *v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA90, &qword_193950F60);
    v86 = OUTLINED_FUNCTION_2_1();
    *(v86 + 16) = xmmword_19394FAC0;
    *(v86 + 32) = v85;
    *(v86 + 40) = v84;
    v87 = a1[12];

    a1[12] = v86;
  }

  return result;
}

uint64_t sub_1934879FC(void *a1, uint64_t *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v56 - v8;
  if (*(*a2 + 16))
  {
    OUTLINED_FUNCTION_3_12(*a2);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
  }

  v10 = a1[1];

  *a1 = v3;
  a1[1] = v2;
  v11 = a2[1];
  if (*(v11 + 16))
  {
    OUTLINED_FUNCTION_3_12(v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
  }

  v12 = a1[3];

  a1[2] = v3;
  a1[3] = v2;
  v13 = a2[2];
  if (*(v13 + 16))
  {
    OUTLINED_FUNCTION_3_12(v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
  }

  v14 = a1[5];

  a1[4] = v3;
  a1[5] = v2;
  v15 = a2[3];
  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_3_12(v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
  }

  v16 = a1[7];

  a1[6] = v3;
  a1[7] = v2;
  v17 = a2[4];
  if (*(v17 + 16))
  {
    OUTLINED_FUNCTION_3_12(v17);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
  }

  v18 = a1[9];

  a1[8] = v3;
  a1[9] = v2;
  v19 = a2[5];
  v20 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v21 = v20[9];
  sub_193458FEC(a1 + v21);
  sub_193487DA8(v19, a1 + v21);
  v22 = a2[6];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
  }

  else
  {
    v24 = 0;
  }

  v25 = a1 + v20[10];
  *v25 = v24;
  v25[8] = v23 == 0;
  v26 = a2[7];
  if (v26[2])
  {
    v28 = v26[4];
    v27 = v26[5];
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v29 = (a1 + v20[11]);
  v30 = v29[1];

  *v29 = v28;
  v29[1] = v27;
  v31 = a2[8];
  if (v31[2])
  {
    v33 = v31[4];
    v32 = v31[5];
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v34 = (a1 + v20[12]);
  v35 = v34[1];

  *v34 = v33;
  v34[1] = v32;
  v36 = a2[9];
  if (v36[2])
  {
    v38 = v36[4];
    v37 = v36[5];
    v40 = v36[6];
    v39 = v36[7];
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v40 = 0;
    v39 = 0;
  }

  v41 = (a1 + v20[14]);
  v42 = v41[2];
  v43 = v41[3];
  sub_193442C40(*v41, v41[1]);
  *v41 = v38;
  v41[1] = v37;
  v41[2] = v40;
  v41[3] = v39;
  v44 = a2[10];
  if (v44[2])
  {
    v45 = v44[4];
    v46 = v44[5];

    sub_19393BE10();

    sub_19345461C(v9, a1 + v20[15]);
  }

  v47 = a2[11];
  if (v47[2])
  {
    v48 = v47[4];
    v49 = v47[5];

    sub_19393BE10();

    sub_19345461C(v9, a1 + v20[16]);
  }

  v50 = a2[12];
  if (v50[2])
  {
    v52 = v50[4];
    v51 = v50[5];
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v53 = (a1 + v20[18]);
  v54 = v53[1];

  *v53 = v52;
  v53[1] = v51;
  return result;
}