uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19372009C()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.hash(into:)(v1);
  return sub_19393CB00();
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.start.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 12);
  OUTLINED_FUNCTION_117_14(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.start.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.end.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  OUTLINED_FUNCTION_117_14(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.duration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.duration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  OUTLINED_FUNCTION_123_2();
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(a2 + 12))
    {
      return result;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return result;
    }
  }

  if (v5)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }

LABEL_19:
    if (v7)
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == *(a2 + 32))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 28) & 1) == 0 && v3 == *(a2 + 16) && v4 == *(a2 + 24))
  {
    goto LABEL_19;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 28);
  v4 = v0[4];
  v5 = *(v0 + 40);
  if (*(v0 + 12) == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_19393CAD0();
    goto LABEL_11;
  }

  v7 = *(v0 + 2);
  v8 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v8);
  sub_19393CAE0();
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  sub_19393CAE0();
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x193B18060](v6);
LABEL_11:
  OUTLINED_FUNCTION_236();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateInterval.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193720374()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.PrimitiveValue.DateInterval.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolTypedValue.PrimitiveValue.Duration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.Duration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 24);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Duration.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
LABEL_3:
      sub_19393CAD0();
      return MEMORY[0x193B18060](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

void ToolKitToolTypedValue.PrimitiveValue.Duration.hashValue.getter()
{
  OUTLINED_FUNCTION_460();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    v5 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v5);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v6);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_459();
}

void sub_193720584()
{
  OUTLINED_FUNCTION_460();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    v5 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v5);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v6 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v6);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_459();
}

uint64_t ToolKitToolTypedValue.EnumerationValue.caseValue.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void *ToolKitToolTypedValue.EnumerationValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 24), 0x50uLL);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 24));
}

uint64_t ToolKitToolTypedValue.EntityValue.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_368_1(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 32));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.EntityValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_368_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 32));
}

uint64_t ToolKitToolTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.EntityValue.hydratedAppEntity.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.siriKitEntity.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.EntityValue.siriKitEntity.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 128), *(v1 + 136));
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

__n128 ToolKitToolTypedValue.EntityValue.init()@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 120) = xmmword_193980760;
  *(a1 + 136) = 0xF000000000000000;
  v3 = OUTLINED_FUNCTION_114_12();
  sub_193444060(v3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v1;
  *(a1 + 24) = sub_19393C510();
  memset(v5, 0, sizeof(v5));
  sub_19344E6DC(v5, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
  OUTLINED_FUNCTION_300_1();
  *(a1 + 112) = xmmword_193950B20;
  OUTLINED_FUNCTION_300_1();
  result = xmmword_193950B20;
  *(a1 + 128) = xmmword_193950B20;
  return result;
}

uint64_t sub_193720B50(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v6 || (v7 = 0, (sub_19393CA30() & 1) != 0))
  {

    v16 = OUTLINED_FUNCTION_143_7(v8, v9, v10, v11, v12, v13, v14, v15, v5, v4);
    v18 = static ToolKitToolTypedValue.== infix(_:_:)(v16, v17);
    v7 = v18;
    OUTLINED_FUNCTION_126_9(v18, v19, v20, v21, v22, v23, v24, v25, v35);

    OUTLINED_FUNCTION_98_15(v26, v27, v28, v29, v30, v31, v32, v33, v36, v37);
  }

  return v7 & 1;
}

void static ToolKitToolTypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v109 = v2[1];
  v5 = v2[3];
  v111 = v2[2];
  memcpy(v131, v2 + 4, sizeof(v131));
  v6 = v3[14];
  v7 = v3[15];
  v106 = v3[16];
  v107 = v3[17];
  v8 = *v1;
  v108 = v1[1];
  v9 = v1[3];
  v110 = v1[2];
  memcpy(v132, v1 + 4, sizeof(v132));
  v10 = v1[14];
  v11 = v1[15];
  v12 = v1[16];
  v13 = v1[17];
  OUTLINED_FUNCTION_147_8();
  if (v18)
  {
    v15 = v13;
    v16 = v14 & ~v8;
    sub_193437C90(v4);
    sub_193437C90(v8);
    if (v16)
    {
LABEL_7:
      sub_193444060(v4);
      sub_193444060(v8);
      goto LABEL_8;
    }

    sub_193444060(v4);
    v13 = v15;
  }

  else
  {
    *&__src[0] = v4;
    if ((v14 & ~v8) == 0)
    {
      sub_193437C90(v4);
      OUTLINED_FUNCTION_94_14(v8);
      goto LABEL_7;
    }

    __dst[0] = v8;
    sub_193437C90(v4);
    sub_193437C90(v8);
    sub_193437C90(v4);
    v17 = static ToolKitToolTypeIdentifier.== infix(_:_:)(__src, __dst);

    sub_193444060(v4);
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!v111)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_19:
    v19 = OUTLINED_FUNCTION_225();
    if ((sub_193721574(v19, v20) & 1) == 0)
    {
      goto LABEL_8;
    }

    v21 = v6;
    v128 = OUTLINED_FUNCTION_283_1();
    v129 = v22;
    v23 = *(&v131[2] + 1);
    v130 = *&v131[2];
    v24 = *(&v132[2] + 1);
    v125 = *&v132[2];
    v126 = v131[3];
    v127 = v131[4];
    v123 = OUTLINED_FUNCTION_399();
    v124 = v25;
    v121 = v132[3];
    v122 = v132[4];
    if (v23)
    {
      __src[0] = OUTLINED_FUNCTION_283_1();
      __src[1] = v26;
      *&__src[2] = *&v131[2];
      *(&__src[2] + 1) = v23;
      v28 = *(v27 + 64);
      __src[3] = *(v27 + 48);
      __src[4] = v28;
      memcpy(__dst, __src, sizeof(__dst));
      if (v24)
      {
        v114[0] = OUTLINED_FUNCTION_399();
        v114[1] = v29;
        v31 = *(v30 + 64);
        v114[3] = *(v30 + 48);
        v114[4] = v31;
        *&v114[2] = *&v132[2];
        *(&v114[2] + 1) = v24;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v32, v33, v34, v35);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v36, v37, v38, v39);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v40, v41, v42, v43);
        v44 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(__dst, v114);
        memcpy(v112, v114, sizeof(v112));
        sub_1937375CC(v112);
        memcpy(v113, __dst, sizeof(v113));
        sub_1937375CC(v113);
        v114[0] = v128;
        v114[1] = v129;
        *&v114[2] = v130;
        *(&v114[2] + 1) = v23;
        v114[3] = v126;
        v114[4] = v127;
        OUTLINED_FUNCTION_247_2(v114);
        if (!v44)
        {
          goto LABEL_8;
        }

LABEL_29:
        OUTLINED_FUNCTION_340_0();
        if (!v18 & v76)
        {
          if (v11 >> 60 != 15)
          {
LABEL_34:
            v79 = OUTLINED_FUNCTION_158_4();
            sub_19345012C(v79, v80);
            v81 = v10;
            v82 = v11;
            goto LABEL_41;
          }

          v77 = OUTLINED_FUNCTION_158_4();
          sub_19345012C(v77, v78);
        }

        else
        {
          if (v11 >> 60 == 15)
          {
            goto LABEL_34;
          }

          v83 = OUTLINED_FUNCTION_158_4();
          v84 = MEMORY[0x193B172A0](v83);
          sub_19345012C(v10, v11);
          sub_19345012C(v21, v7);
          if ((v84 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        if (v107 >> 60 == 15)
        {
          if (v13 >> 60 == 15)
          {
            v85 = OUTLINED_FUNCTION_13_0();
            sub_193450268(v85, v86);
            v87 = OUTLINED_FUNCTION_165_1();
            sub_193450268(v87, v88);
            v89 = OUTLINED_FUNCTION_13_0();
            sub_19345012C(v89, v90);
            goto LABEL_8;
          }
        }

        else if (v13 >> 60 != 15)
        {
          v97 = OUTLINED_FUNCTION_127();
          sub_193450268(v97, v98);
          v99 = OUTLINED_FUNCTION_165_1();
          sub_193450268(v99, v100);
          v101 = OUTLINED_FUNCTION_127();
          MEMORY[0x193B172A0](v101);
          v102 = OUTLINED_FUNCTION_165_1();
          sub_19345012C(v102, v103);
          v104 = OUTLINED_FUNCTION_127();
          sub_19345012C(v104, v105);
          goto LABEL_8;
        }

        v91 = OUTLINED_FUNCTION_13_0();
        sub_193450268(v91, v92);
        v93 = OUTLINED_FUNCTION_165_1();
        sub_193450268(v93, v94);
        v95 = OUTLINED_FUNCTION_13_0();
        sub_19345012C(v95, v96);
        v81 = OUTLINED_FUNCTION_165_1();
LABEL_41:
        sub_19345012C(v81, v82);
        goto LABEL_8;
      }

      memcpy(v114, __src, sizeof(v114));
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v53, v54, v55, v56);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v57, v58, v59, v60);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v61, v62, v63, v64);
      sub_1937375CC(v114);
    }

    else
    {
      if (!v24)
      {
        __src[0] = OUTLINED_FUNCTION_283_1();
        __src[1] = v65;
        __src[2] = *&v131[2];
        v67 = *(v66 + 64);
        __src[3] = *(v66 + 48);
        __src[4] = v67;
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v68, v69, v70, v71);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v72, v73, v74, v75);
        OUTLINED_FUNCTION_247_2(__src);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v45, v46, v47, v48);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v49, v50, v51, v52);
    }

    __src[0] = v128;
    __src[1] = v129;
    *&__src[2] = v130;
    *(&__src[2] + 1) = v23;
    __src[3] = v126;
    __src[4] = v127;
    __src[5] = v123;
    __src[6] = v124;
    v117 = v125;
    v118 = v24;
    v119 = v121;
    v120 = v122;
    sub_19344E6DC(__src, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_8;
  }

  if (v110)
  {
    v18 = v109 == v108 && v111 == v110;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1937211C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v17 = sub_193485250(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(v2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_30:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v25 = v2;

      v23 = 4;
      while ((v23 - 4) < *(v20 + 16))
      {
        v27 = *(v20 + 8 * v23);
        if ((v23 - 4) >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v26 = *(v16 + 8 * v23);

        v24 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(&v27, &v26);

        if ((v24 & 1) == 0)
        {

          goto LABEL_30;
        }

        ++v23;
        if (!--v21)
        {

          v2 = v25;
          goto LABEL_26;
        }
      }

      goto LABEL_33;
    }

LABEL_26:
    ;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1937213EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_193485250(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = static ToolKitToolTypedValueResolvable.== infix(_:_:)(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_193721574(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_193485250(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = static ToolKitToolTypedValue.== infix(_:_:)(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ToolKitToolTypedValue.EntityValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[9];
  v6 = v0[15];
  v7 = v0[17];
  v17 = v0[14];
  v18 = v0[16];
  OUTLINED_FUNCTION_148_8();
  if (!v8)
  {
    __dst[0] = v1;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_114_0();
    sub_19393C640();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_6:
  OUTLINED_FUNCTION_104_0();
LABEL_7:
  v9 = OUTLINED_FUNCTION_262_0();
  sub_1937361C8(v9, v10);
  if (v5)
  {
    v11 = *(v0 + 3);
    __src[0] = *(v0 + 2);
    __src[1] = v11;
    v12 = v0[8];
    v13 = *(v0 + 6);
    __src[3] = *(v0 + 5);
    __src[4] = v13;
    *&__src[2] = v12;
    *(&__src[2] + 1) = v5;
    OUTLINED_FUNCTION_103_0();
    v14 = *(v0 + 3);
    v20[0] = *(v0 + 2);
    v20[1] = v14;
    v21 = v0[8];
    v22 = v5;
    v15 = *(v0 + 6);
    v23 = *(v0 + 5);
    v24 = v15;
    sub_1936D0D2C(v20, __dst);
    OUTLINED_FUNCTION_425();
    ToolKitToolDisplayRepresentation.hash(into:)();
    memcpy(__dst, __src, 0x50uLL);
    sub_1937375CC(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v6 >> 60 == 15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_345_0();
    sub_19393BD50();
  }

  if (v7 >> 60 == 15)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  return sub_19393BD50();
}

uint64_t ToolKitToolTypedValue.EntityValue.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolTypedValue.EntityValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937218B0()
{
  sub_19393CAB0();
  ToolKitToolTypedValue.EntityValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.CodableValue.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.CodableValue.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.CodableValue.data.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1937219E0()
{
  OUTLINED_FUNCTION_153_9();
  v2 = OUTLINED_FUNCTION_368_1(v1);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 32));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void *ToolKitToolTypedValue.CodableValue.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_108_13();
  OUTLINED_FUNCTION_368_1(v1);
  sub_19344E6DC(&v3, &qword_1EAE41AB8, &qword_1939807B8);
  return OUTLINED_FUNCTION_276_3((v0 + 32));
}

void ToolKitToolTypedValue.CodableValue.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  OUTLINED_FUNCTION_300_1();
  *(v1 + 16) = xmmword_193950B20;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v2, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_139_10(0);
}

void static ToolKitToolTypedValue.CodableValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  memcpy(v185, (v0 + 32), sizeof(v185));
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  OUTLINED_FUNCTION_368_1(v186);
  if (!v4)
  {
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_10:
    OUTLINED_FUNCTION_282_2();
    if (!v11 & v14)
    {
      OUTLINED_FUNCTION_295_2();
      if (!v11 & v14)
      {
        v12 = OUTLINED_FUNCTION_18_41();
        sub_19345012C(v12, v13);
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_295_2();
      if (!(!v15 & v14))
      {
        OUTLINED_FUNCTION_18_41();
        OUTLINED_FUNCTION_284();
        v20 = MEMORY[0x193B172A0]();
        v21 = OUTLINED_FUNCTION_107_5();
        sub_19345012C(v21, v22);
        v23 = OUTLINED_FUNCTION_175_0();
        sub_19345012C(v23, v24);
        if ((v20 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_19:
        v25 = v185[5];
        v26 = v187;
        if (v185[5])
        {
          OUTLINED_FUNCTION_307_0();
          v36 = OUTLINED_FUNCTION_183_3(v27, v28, v29, v30, v31, v32, v33, v34, *(v0 + 80), *(v0 + 96), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__src, *&__src[8], v156, *(&v156 + 1), v157, v158, v159[0], v159[1], v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0], v172, v173, v174, v35, v25, v177, v178);
          if (v26)
          {
            v44 = *(v1 + 3);
            *__src = *(v1 + 2);
            v156 = v44;
            v45 = v1[8];
            v46 = *(v1 + 6);
            *v159 = *(v1 + 5);
            v160 = v46;
            v157 = v45;
            OUTLINED_FUNCTION_202_3(v185, v37, v38, v39, v40, v41, v42, v43, v135, v136, v137);
            OUTLINED_FUNCTION_202_3(v186, v47, v48, v49, v50, v51, v52, v53, v135, v136, v137);
            v61 = OUTLINED_FUNCTION_202_3(v171, v54, v55, v56, v57, v58, v59, v60, v135, v136, v137);
            v69 = OUTLINED_FUNCTION_410(v61, v62, v63, v64, v65, v66, v67, v68, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__src, *&__src[8], v156, *(&v156 + 1), v157, v26, v159[0], v159[1], v160, *(&v160 + 1), v161);
            v71 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v69, v70);
            OUTLINED_FUNCTION_297_2(v71, v72, v73, v74, v75, v76, v77, v78, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __src[0]);
            v79 = sub_1937375CC(&v135);
            OUTLINED_FUNCTION_290_1(v79, v80, v81, v82, v83, v84, v85, v86, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__src, *&__src[8], v156, *(&v156 + 1), v157, v158, v159[0], v159[1], v160, *(&v160 + 1), v161);
            sub_1937375CC(&v145);
            v87 = *(v0 + 48);
            *__src = *(v0 + 32);
            v156 = v87;
            v157 = *(v0 + 64);
            v158 = v25;
            v88 = *(v0 + 80);
            v89 = *(v0 + 96);
            OUTLINED_FUNCTION_409();
            OUTLINED_FUNCTION_188_4();
            sub_19344E6DC(v90, v91, v92);
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_285_2(v36, v37, v38, v39, v40, v41, v42, v43, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, __src[0], *&__src[8], v156, *(&v156 + 1), v157, v158, v159[0], v159[1], v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v101, v102, v103, v104);
          OUTLINED_FUNCTION_9_12();
          v109 = sub_193448804(v105, v106, v107, v108);
          OUTLINED_FUNCTION_225_3(v109, v110, v111, v112, v113, v114, v115, v116, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, *__src, *&__src[8], v156, *(&v156 + 1), v157, v158, v159[0], v159[1], v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v117, v118, v119, v120);
          sub_1937375CC(__src);
        }

        else
        {
          if (!v187)
          {
            OUTLINED_FUNCTION_307_0();
            v175 = v125;
            v176 = 0;
            v126 = *(v0 + 96);
            v177 = *(v0 + 80);
            v178 = v126;
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v127, v128, v129, v130);
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v131, v132, v133, v134);
            OUTLINED_FUNCTION_247_2(v171);
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_9_12();
          sub_193448804(v93, v94, v95, v96);
          OUTLINED_FUNCTION_9_12();
          sub_193448804(v97, v98, v99, v100);
        }

        OUTLINED_FUNCTION_307_0();
        v175 = v121;
        v176 = v25;
        v122 = *(v0 + 96);
        v177 = *(v0 + 80);
        v178 = v122;
        v123 = *(v1 + 3);
        v179 = *(v1 + 2);
        v180 = v123;
        v181 = v1[8];
        v182 = v26;
        v124 = *(v1 + 6);
        v183 = *(v1 + 5);
        v184 = v124;
        sub_19344E6DC(v171, &qword_1EAE41AC0, &qword_1939807C0);
        goto LABEL_26;
      }
    }

    v16 = OUTLINED_FUNCTION_18_41();
    sub_19345012C(v16, v17);
    v18 = OUTLINED_FUNCTION_107_5();
    sub_19345012C(v18, v19);
    goto LABEL_26;
  }

  if (v7)
  {
    v11 = v3 == v8 && v4 == v7;
    if (v11)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_165_1();
    if (sub_19393CA30())
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolTypedValue.CollectionValue.values.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.typeInstance.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_339(a1);
  result = sub_193444060(v3);
  *(v2 + 16) = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  v3 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  v0[1] = v3;
  result = sub_193444060(0xF000000000000007);
  v0[2] = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.CollectionValue.hashValue.getter()
{
  OUTLINED_FUNCTION_337_0();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolTypedValue.CollectionValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937221FC()
{
  OUTLINED_FUNCTION_337_0();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolTypedValue.CollectionValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.QueryValue.query.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 40);
  return sub_1936C6B18(v2);
}

__n128 ToolKitToolTypedValue.QueryValue.query.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  sub_1936EAC3C(*(v1 + 8));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

double ToolKitToolTypedValue.QueryValue.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193444060(0xF000000000000007);
  sub_1936EAC3C(0xE000000000000007);
  result = -3.10503618e231;
  *a1 = xmmword_193980770;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return result;
}

BOOL static ToolKitToolTypedValue.QueryValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  OUTLINED_FUNCTION_252_2();
  if (!v17)
  {
    v57 = v3;
    if ((v14 & ~v9) == 0)
    {
      sub_193437C90(v3);
      OUTLINED_FUNCTION_446(v9);

      goto LABEL_7;
    }

    v50 = v16;
    v51 = v15;
    v52 = v9;
    sub_193437C90(v3);
    OUTLINED_FUNCTION_446(v9);
    v26 = static ToolKitToolTypeIdentifier.== infix(_:_:)(&v57, &v52);

    sub_193444060(v3);
    if ((v26 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    if ((v2 & 0xF000000000000007) == 0xE000000000000007)
    {
      v27 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v27);
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_423();
      sub_1936C6B18(v28);
      if ((v8 & 0xF000000000000007) == 0xE000000000000007)
      {
        v29 = OUTLINED_FUNCTION_10_54();
        sub_1936EAC3C(v29);
        return 1;
      }
    }

    else
    {
      v57 = v2;
      v58 = v5;
      v59 = v4;
      v60 = v6;
      LOBYTE(v61) = v7;
      if ((v8 & 0xF000000000000007) != 0xE000000000000007)
      {
        v52 = v8;
        v53 = v50;
        LOWORD(v54) = v51 & 0x1FF;
        v55 = v12;
        LOBYTE(v56) = v13 & 1;
        v36 = OUTLINED_FUNCTION_10_54();
        sub_1936C6B18(v36);
        OUTLINED_FUNCTION_423();
        sub_1936C6B18(v37);
        v38 = OUTLINED_FUNCTION_10_54();
        sub_1936C6B18(v38);
        static ToolKitToolQuery.== infix(_:_:)(&v57, &v52, v39, v40, v41, v42, v43, v44, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        v46 = v45;
        sub_193444048(v8);
        sub_193444048(v2);
        v47 = OUTLINED_FUNCTION_10_54();
        sub_1936EAC3C(v47);
        return (v46 & 1) != 0;
      }

      v30 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v30);
      OUTLINED_FUNCTION_196_4();
      OUTLINED_FUNCTION_423();
      sub_1936C6B18(v31);
      v32 = OUTLINED_FUNCTION_10_54();
      sub_1936C6B18(v32);
      sub_193444048(v2);
    }

    v33 = OUTLINED_FUNCTION_10_54();
    sub_1936EAC3C(v33);
    OUTLINED_FUNCTION_196_4();
    OUTLINED_FUNCTION_423();
    sub_1936EAC3C(v34);
    return 0;
  }

  v50 = v16;
  v51 = v15;
  v49 = v2;
  v18 = v8;
  v19 = v5;
  v20 = v4;
  v21 = v6;
  v22 = v7;
  v23 = v12;
  v24 = v13;
  v25 = v14 & ~v9;
  sub_193437C90(v3);
  sub_193437C90(v9);
  if (!v25)
  {
    sub_193444060(v3);
    v13 = v24;
    v12 = v23;
    v7 = v22;
    v6 = v21;
    v4 = v20;
    v5 = v19;
    v8 = v18;
    v2 = v49;
    goto LABEL_9;
  }

LABEL_7:
  sub_193444060(v3);
  sub_193444060(v9);
  return 0;
}

uint64_t ToolKitToolTypedValue.QueryValue.hash(into:)()
{
  v1 = *v0;
  v7 = *(v0 + 1);
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_179_5();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_425();
    ToolKitToolTypeIdentifier.hash(into:)();
  }

  if ((v7 & 0xF000000000000007) == 0xE000000000000007)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_19344BF2C(v7);
  OUTLINED_FUNCTION_425();
  ToolKitToolQuery.hash(into:)();

  return sub_193444048(v7);
}

uint64_t ToolKitToolTypedValue.QueryValue.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_159_6();
  v3 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  ToolKitToolTypedValue.QueryValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19372272C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_159_6();
  v3 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  ToolKitToolTypedValue.QueryValue.hash(into:)();
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V21displayRepresentationAA0ded7DisplayJ0VSgvg_0()
{
  OUTLINED_FUNCTION_153_9();
  v2 = memcpy(v1, (v0 + 24), 0x50uLL);
  v3 = OUTLINED_FUNCTION_330_0(v2, (v0 + 24));
  return OUTLINED_FUNCTION_278_3(v3, v4, &qword_1EAE41AB8, &qword_1939807B8, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0VAEycfC_0()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = v1;
  OUTLINED_FUNCTION_64_17();
  sub_19344E6DC(&v4, &qword_1EAE41AB8, &qword_1939807B8);
  OUTLINED_FUNCTION_315_0(0);
  *(v0 + 72) = v3;
  *(v0 + 88) = v3;
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_237();
  v1 = v0;
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  memcpy(v172, v2 + 3, sizeof(v172));
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  memcpy(v173, v1 + 3, sizeof(v173));
  OUTLINED_FUNCTION_179_5();
  if (v20)
  {
    v10 = v9 & ~v7;
    OUTLINED_FUNCTION_348(v4);
    if (v10)
    {
LABEL_7:
      sub_193444060(v4);
      sub_193444060(v7);
      goto LABEL_8;
    }

    v11 = sub_193444060(v4);
  }

  else
  {
    *v150 = v4;
    if ((v9 & ~v7) == 0)
    {
      OUTLINED_FUNCTION_95_14();

      goto LABEL_7;
    }

    *__src = v7;
    OUTLINED_FUNCTION_95_14();
    v19 = static ToolKitToolTypeIdentifier.== infix(_:_:)(v150, __src);

    v11 = sub_193444060(v4);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (!v5)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_19:
    v169 = v172[0];
    v170 = v172[1];
    v21 = *(&v172[2] + 1);
    v171 = *&v172[2];
    v22 = *(&v173[2] + 1);
    v166 = *&v173[2];
    v167 = v172[3];
    v168 = v172[4];
    v164 = v173[0];
    v165 = v173[1];
    v162 = v173[3];
    v163 = v173[4];
    if (*(&v172[2] + 1))
    {
      v23 = OUTLINED_FUNCTION_183_3(v11, v12, v13, v14, v15, v16, v17, v18, v172[3], v172[4], v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *v134, *&v134[8], v135, *(&v135 + 1), v136, v137, v138[0], v138[1], v139, *(&v139 + 1), __src[0], v141, v142, v143, v144, v145, v146, v147, v148, v149, v172[0], *(&v172[0] + 1), *&v172[1], *(&v172[1] + 1), *&v172[2], *(&v172[2] + 1), v154, v155);
      if (v22)
      {
        *v134 = v173[0];
        v135 = v173[1];
        *v138 = v173[3];
        v139 = v173[4];
        v136 = *&v173[2];
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v31, v32, v33, v34);
        OUTLINED_FUNCTION_75_0();
        v39 = sub_193448804(v35, v36, v37, v38);
        OUTLINED_FUNCTION_225_3(v39, v40, v41, v42, v43, v44, v45, v46, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *v134, *&v134[8], v135, *(&v135 + 1), v136, v22, v138[0], v138[1], v139, *(&v139 + 1), *__src, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
        OUTLINED_FUNCTION_75_0();
        v51 = sub_193448804(v47, v48, v49, v50);
        v59 = OUTLINED_FUNCTION_410(v51, v52, v53, v54, v55, v56, v57, v58, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *v134, *&v134[8], v135, *(&v135 + 1), v136, v137, v138[0], v138[1], v139, *(&v139 + 1), __src[0]);
        v61 = static ToolKitToolDisplayRepresentation.== infix(_:_:)(v59, v60);
        OUTLINED_FUNCTION_297_2(v61, v62, v63, v64, v65, v66, v67, v68, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
        v69 = sub_1937375CC(&v114);
        OUTLINED_FUNCTION_290_1(v69, v70, v71, v72, v73, v74, v75, v76, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *v134, *&v134[8], v135, *(&v135 + 1), v136, v137, v138[0], v138[1], v139, *(&v139 + 1), __src[0]);
        sub_1937375CC(&v124);
        *v134 = v169;
        v135 = v170;
        v136 = v171;
        v137 = v21;
        OUTLINED_FUNCTION_409();
        OUTLINED_FUNCTION_247_2(v77);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_285_2(v23, v24, v25, v26, v27, v28, v29, v30, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0], *&v134[8], v135, *(&v135 + 1), v136, v137, v138[0], v138[1], v139, *(&v139 + 1), *__src, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v86, v87, v88, v89);
      OUTLINED_FUNCTION_75_0();
      v94 = sub_193448804(v90, v91, v92, v93);
      OUTLINED_FUNCTION_225_3(v94, v95, v96, v97, v98, v99, v100, v101, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, *v134, *&v134[8], v135, *(&v135 + 1), v136, v137, v138[0], v138[1], v139, *(&v139 + 1), *__src, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150[0]);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v102, v103, v104, v105);
      sub_1937375CC(v134);
    }

    else
    {
      if (!*(&v173[2] + 1))
      {
        *v150 = v172[0];
        v151 = v172[1];
        v152 = *&v172[2];
        v153 = 0;
        v154 = v172[3];
        v155 = v172[4];
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v106, v107, v108, v109);
        OUTLINED_FUNCTION_75_0();
        sub_193448804(v110, v111, v112, v113);
        OUTLINED_FUNCTION_247_2(v150);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v78, v79, v80, v81);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v82, v83, v84, v85);
    }

    *v150 = v169;
    v151 = v170;
    v152 = v171;
    v153 = v21;
    v154 = v167;
    v155 = v168;
    v156 = v164;
    v157 = v165;
    v158 = v166;
    v159 = v22;
    v160 = v162;
    v161 = v163;
    sub_19344E6DC(v150, &qword_1EAE41AC0, &qword_1939807C0);
    goto LABEL_8;
  }

  if (v8)
  {
    v20 = v3 == v6 && v5 == v8;
    if (v20)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_13_0();
    v11 = OUTLINED_FUNCTION_5_5();
    if (v11)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_236();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO011EnumerationG0V4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_168_5();
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[8];
  OUTLINED_FUNCTION_252_2();
  if (v6)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v27[0] = v3;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeIdentifier.hash(into:)();

    if (!v4)
    {
LABEL_7:
      OUTLINED_FUNCTION_104_0();
      if (!v5)
      {
        return OUTLINED_FUNCTION_104_0();
      }

LABEL_5:
      v20 = *(v1 + 24);
      v21 = *(v1 + 40);
      v7 = *(v1 + 56);
      v8 = *(v1 + 72);
      v9 = *(v1 + 88);
      OUTLINED_FUNCTION_182_6();
      v10 = *(v1 + 40);
      v22[0] = *(v1 + 24);
      v22[1] = v10;
      v23 = *(v1 + 56);
      v24 = v5;
      v11 = *(v1 + 88);
      v25 = *(v1 + 72);
      v26 = v11;
      sub_1936D0D2C(v22, v27);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolDisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_316_1(v27, v12, v13, v14, v15, v16, v17, v18, v20);
      return sub_1937375CC(v27);
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v5)
  {
    goto LABEL_5;
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t sub_193722CDC()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_193722D34()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypedValue.DeferredValue.expectedTypeInstance.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.storage.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_339(a1);
  result = sub_19347549C(v3);
  *(v2 + 16) = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  sub_193444060(0xF000000000000007);
  *v0 = vdupq_n_s64(v1);
  result = sub_19347549C(0xF000000000000007);
  v0[1].i64[0] = v1;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.propertyKey.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  result = 0.0;
  *v0 = xmmword_193950B20;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.actionIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTypedValue.DeferredValue.hashValue.getter()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.DeferredValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_1937233F0()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolTypedValue.DeferredValue.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeInstance.Optional.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 8));
  *(v1 + 8) = v2;
  return result;
}

int64x2_t ToolKitToolTypeInstance.Optional.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  sub_193444060(v2);
  sub_193444060(0xF000000000000007);
  result = vdupq_n_s64(v1);
  *v0 = result;
  return result;
}

uint64_t ToolKitToolTypeInstance.Union.items.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t sub_193723668()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_119();
  v10 = OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_193737244(v10);
  return sub_19393CB00();
}

uint64_t sub_1937236CC()
{
  v1 = *v0;
  v2 = sub_19393CAB0();
  v10 = OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_193737244(v10);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeInstance.Restricted.context.setter()
{
  result = OUTLINED_FUNCTION_458();
  *(v1 + 8) = v0;
  return result;
}

uint64_t ToolKitToolTypeInstance.Restricted.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_193444060(v2);
  v4 = MEMORY[0x1E69E7CC0];
  *v0 = v1;
  v0[1] = v4;
  return result;
}

uint64_t ToolKitToolTypeInstance.Deferred.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_193444060(v2);
  *v0 = v1;
  return result;
}

uint64_t sub_193723B88(uint64_t (*a1)(char *))
{
  v4 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_251_0();
  if (v5)
  {
    v23 = OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    v14 = OUTLINED_FUNCTION_298_1(v6, v7, v8, v9, v10, v11, v12, v13, v4, v34);
    v15 = a1(v14);
    OUTLINED_FUNCTION_126_9(v15, v16, v17, v18, v19, v20, v21, v22, v33);
  }

  v30 = OUTLINED_FUNCTION_99(v23, v24, ToolKitToolRestrictionContext.hash(into:), v25, v26, v27, v28, v29, v32, v34);
  sub_193737244(v30);
  return sub_19393CB00();
}

uint64_t sub_193723C38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v18 = *v4;
  v19 = v4[1];
  v6 = sub_19393CAB0();
  v14 = OUTLINED_FUNCTION_432(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  a4(v14);
  return sub_19393CB00();
}

uint64_t sub_193723CCC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.PersonReachableAs.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723CF4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.PersonReachableAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723DE4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.DateExpressibleAs.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193723E0C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.DateExpressibleAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.definition.getter()
{
  OUTLINED_FUNCTION_324_0(v4);
  v0 = OUTLINED_FUNCTION_13_0();
  memcpy(v0, v1, 0xD8uLL);
  return sub_193448804(v4, v3, &qword_1EAE41B00, &qword_193980808);
}

void *ToolKitToolRestrictionContext.InSet.definition.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0xD8uLL);
  sub_19344E6DC(&v5, &qword_1EAE41B00, &qword_193980808);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0xD8uLL);
}

uint64_t ToolKitToolRestrictionContext.InSet.templates.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 216), sizeof(__dst));
  memcpy(a1, (v1 + 216), 0x48uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE41AC8, &qword_1939807C8);
}

void *ToolKitToolRestrictionContext.InSet.templates.setter(const void *a1)
{
  memcpy(__dst, (v1 + 216), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41AC8, &qword_1939807C8);
  return memcpy((v1 + 216), a1, 0x48uLL);
}

double ToolKitToolRestrictionContext.InSet.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193737768(v3);
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41B00, &qword_193980808);
  memcpy(a1, v3, 0xD8uLL);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  sub_19344E6DC(v5, &qword_1EAE41AC8, &qword_1939807C8);
  result = 0.0;
  *(a1 + 216) = 0u;
  a1 += 216;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.bundleIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumeration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumeration.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 16) = v2;
  sub_193438388(v3);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 64);
  sub_1934354B4(*(v1 + 48));

  result = v5;
  *(v1 + 48) = v5;
  *(v1 + 64) = v2;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.linkQuery.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7].n128_i64[0];
  *a1 = v1[4].n128_u64[1];
  OUTLINED_FUNCTION_374_0(v2, a1, v1[5], v1[6]);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.linkQuery.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 112);

  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.standaloneLinkQuery.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.standaloneLinkQuery.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.linkQueryOnParameter.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[11].n128_i64[0];
  *a1 = v1[8].n128_u64[1];
  OUTLINED_FUNCTION_374_0(v2, a1, v1[9], v1[10]);
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.linkQueryOnParameter.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 144);
  v6 = *(v1 + 160);
  v7 = *(v1 + 176);

  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumerationOnTrigger.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *a1 = *(v1 + 184);
  *(a1 + 8) = *(v1 + 192);
  *(a1 + 24) = v2;
}

__n128 ToolKitToolRestrictionContext.InSet.ValueSet.dynamicEnumerationOnTrigger.setter(uint64_t a1)
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 208);

  result = *a1;
  *(v1 + 200) = *(a1 + 16);
  *(v1 + 184) = result;
  return result;
}

double ToolKitToolRestrictionContext.InSet.ValueSet.init()@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_1934354B4(v3);
  *(v1 + 48) = v2;
  result = 0.0;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init()()
{
  v2 = OUTLINED_FUNCTION_53_23();
  result = sub_1934354B4(v2);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = v1;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*v1);
  *v1 = v2;
  return result;
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.propertyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hash(into:)()
{
  OUTLINED_FUNCTION_389();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_148_8();
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_8:
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_351_1();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_203_3();

    OUTLINED_FUNCTION_161();
    ToolKitToolContentItemClassDescriptor.hash(into:)();

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_58_19();
  OUTLINED_FUNCTION_351_1();

  sub_19393C640();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_251_0();
  if (v4)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v5, v6, v7, v8, v9, v10, v11, v12, v2, v23);
    ToolKitToolContentItemClassDescriptor.hash(into:)();
  }

  if (v3)
  {
    v13 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193724A38()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.queryIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_237();
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v1[1];
  v7 = v1[2];
  v9 = v1[3];
  v8 = v1[4];
  v10 = v1[5];
  if (v0[1])
  {
    if (!v6)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_155(v0, v1);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v6)
  {
    goto LABEL_26;
  }

  if (v4)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    if (v2 != v7 || v4 != v9)
    {
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_333();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (v5 && v10 && (v3 != v8 || v5 != v10))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_26:
  OUTLINED_FUNCTION_236();
}

void ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_185();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
    return;
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_236();

  sub_19393C640();
}

void static ToolKitToolRestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_454(v0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 88);
  v9 = *(v1 + 104);
  v10 = *(v1 + 120);
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v13 = *(v1 + 152);
  v14 = *(v1 + 168);
  v15 = *(v1 + 184);
  v16 = *(v1 + 200);
  v17 = *(v2 + 16);
  v18 = *(v2 + 32);
  v19 = *(v2 + 48);
  v20 = *(v2 + 64);
  v21 = *(v2 + 72);
  v22 = *(v2 + 88);
  v23 = *(v2 + 104);
  v24 = *(v2 + 120);
  v25 = *(v2 + 128);
  v26 = *(v2 + 136);
  v27 = *(v2 + 152);
  v28 = *(v2 + 168);
  v29 = *(v2 + 184);
  v30 = *(v2 + 200);
  if (v31)
  {
    if (!*(v2 + 8))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_181_7();
    OUTLINED_FUNCTION_155(v32, v33);
    v36 = v36 && v34 == v35;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_181_7();
    if (v37)
    {
      goto LABEL_20;
    }
  }

  v38 = OUTLINED_FUNCTION_338_0();
  if (static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v38))
  {
    sub_193438388(v45);

    sub_193438388(v46);

    v39 = OUTLINED_FUNCTION_338_0();
    v40 = static ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)(v39);
    sub_1934354B4(v46);

    sub_1934354B4(v45);

    if (v40)
    {
      OUTLINED_FUNCTION_338_0();
      static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)();
      if (v41)
      {
        v42 = v10 == v24 && v11 == v25;
        if (v42 || (OUTLINED_FUNCTION_13_0(), OUTLINED_FUNCTION_9_12(), (sub_19393CA30() & 1) != 0))
        {
          OUTLINED_FUNCTION_338_0();
          static ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)();
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_338_0();
            static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v44);
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)()
{
  OUTLINED_FUNCTION_234_3();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  v21 = v0[5];
  v12 = v0[4];
  v13 = v0[7];
  v22 = v0[8];
  v23 = v0[10];
  v14 = v0[9];
  v15 = v0[11];
  v16 = v0[13];
  v24 = v0[12];
  v25 = v0[14];
  v26 = v0[16];
  v27 = v0[15];
  v17 = v0[17];
  v28 = v0[18];
  v4 = v0[19];
  v5 = v0[22];
  v18 = v0[21];
  v6 = v0[24];
  v19 = v0[23];
  v7 = v0[25];
  v8 = v0[26];
  v20 = v0[20];
  if (v0[1])
  {
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_188_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v2)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_102_4();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v21)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_345_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_179_5();
  if (v10)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolContentItemClassDescriptor.hash(into:)();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
    if (v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v23)
    {
LABEL_15:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_259_1();
      sub_19393C640();
      if (v24)
      {
        goto LABEL_16;
      }

LABEL_20:
      OUTLINED_FUNCTION_104_0();
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_16:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_263_1();
  sub_19393C640();
  if (v25)
  {
LABEL_17:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    goto LABEL_22;
  }

LABEL_21:
  OUTLINED_FUNCTION_104_0();
LABEL_22:
  sub_19393C640();
  if (v28)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    if (v20)
    {
LABEL_24:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v20)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_27:
  if (v5)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_34:
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
      goto LABEL_30;
    }

LABEL_35:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_160_8();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v6)
  {
    goto LABEL_34;
  }

LABEL_29:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_30:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_438();
  OUTLINED_FUNCTION_160_8();

  sub_19393C640();
}

uint64_t ToolKitToolRestrictionContext.InSet.ValueSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725254()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolRestrictionContext.InSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_321_1(v133);
  memcpy(__dst, (v0 + 216), sizeof(__dst));
  OUTLINED_FUNCTION_324_0(v135);
  memcpy(v136, (v1 + 216), sizeof(v136));
  OUTLINED_FUNCTION_321_1(__src);
  OUTLINED_FUNCTION_324_0(&__src[13] + 8);
  OUTLINED_FUNCTION_321_1(v137);
  if (sub_1936C8078(v137) == 1)
  {
    OUTLINED_FUNCTION_324_0(v130);
    if (sub_1936C8078(v130) == 1)
    {
      OUTLINED_FUNCTION_321_1(v131);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v2, v3, v4, v5);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v6, v7, v8, v9);
      OUTLINED_FUNCTION_247_2(v131);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v26, v27, v28, v29);
LABEL_7:
    memcpy(v130, __src, sizeof(v130));
    v30 = &unk_1EAE41B08;
    v31 = &unk_193980810;
    v32 = v130;
LABEL_16:
    sub_19344E6DC(v32, v30, v31);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_321_1(v131);
  OUTLINED_FUNCTION_324_0(v130);
  if (sub_1936C8078(v130) == 1)
  {
    OUTLINED_FUNCTION_321_1(v129);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v10, v11, v12, v13);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v14, v15, v16, v17);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v18, v19, v20, v21);
    sub_193737770(v129);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_12();
  sub_193448804(v33, v34, v35, v36);
  OUTLINED_FUNCTION_9_12();
  sub_193448804(v37, v38, v39, v40);
  OUTLINED_FUNCTION_9_12();
  sub_193448804(v41, v42, v43, v44);
  OUTLINED_FUNCTION_13_0();
  static ToolKitToolRestrictionContext.InSet.ValueSet.== infix(_:_:)();
  v46 = v45;
  OUTLINED_FUNCTION_324_0(&v101);
  sub_193737770(&v101);
  OUTLINED_FUNCTION_321_1(v124);
  sub_193737770(v124);
  OUTLINED_FUNCTION_321_1(v129);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v47, v48, v49);
  if ((v46 & 1) == 0)
  {
LABEL_17:
    v71 = 0;
    return v71 & 1;
  }

LABEL_9:
  v50 = __dst[0];
  v101 = *&__dst[1];
  v102 = *&__dst[3];
  v103 = *&__dst[5];
  v104 = *&__dst[7];
  v51 = v136[0];
  v125 = *&v136[1];
  v126 = *&v136[3];
  v127 = *&v136[5];
  v128 = *&v136[7];
  if (!__dst[0])
  {
    if (!v136[0])
    {
      *&__src[0] = 0;
      *(__src + 8) = *&__dst[1];
      *(&__src[1] + 8) = *&__dst[3];
      OUTLINED_FUNCTION_435(__dst);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v93, v94, v95, v96);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v97, v98, v99, v100);
      OUTLINED_FUNCTION_247_2(__src);
      v71 = 1;
      return v71 & 1;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v72, v73, v74, v75);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v76, v77, v78, v79);
    goto LABEL_15;
  }

  *&__src[0] = __dst[0];
  *(__src + 8) = *&__dst[1];
  *(&__src[1] + 8) = *&__dst[3];
  OUTLINED_FUNCTION_435(__dst);
  memcpy(v130, __src, 0x48uLL);
  if (!v51)
  {
    memcpy(v131, __src, 0x48uLL);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v80, v81, v82, v83);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v84, v85, v86, v87);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v88, v89, v90, v91);
    sub_193737618(v131);
LABEL_15:
    *(__src + 8) = v101;
    *(&__src[1] + 8) = v102;
    *(&__src[2] + 8) = v103;
    *(&__src[3] + 8) = v104;
    *&__src[0] = v50;
    *(&__src[4] + 1) = v51;
    __src[5] = v125;
    __src[6] = v126;
    __src[7] = v127;
    __src[8] = v128;
    v30 = &unk_1EAE41AD0;
    v31 = &unk_1939807D0;
    v32 = __src;
    goto LABEL_16;
  }

  *&v131[1] = *&v136[1];
  *&v131[3] = *&v136[3];
  *&v131[5] = *&v136[5];
  *&v131[7] = *&v136[7];
  v131[0] = v51;
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v52, v53, v54, v55);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v56, v57, v58, v59);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v60, v61, v62, v63);
  static ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(v130, v131, v64, v65, v66, v67, v68, v69, v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6]);
  v71 = v70;
  memcpy(v124, v131, 0x48uLL);
  sub_193737618(v124);
  memcpy(v129, v130, 0x48uLL);
  sub_193737618(v129);
  v131[0] = v50;
  *&v131[1] = v101;
  *&v131[3] = v102;
  *&v131[5] = v103;
  *&v131[7] = v104;
  OUTLINED_FUNCTION_247_2(v131);
  return v71 & 1;
}

uint64_t ToolKitToolRestrictionContext.InSet.hash(into:)()
{
  OUTLINED_FUNCTION_168_5();
  v2 = *(v0 + 216);
  OUTLINED_FUNCTION_324_0(v11);
  if (sub_1936C8078(v11) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
LABEL_3:
      v3 = v1[15];
      *&v8[1] = v1[14];
      *&v8[3] = v3;
      v4 = v1[17];
      *&v8[5] = v1[16];
      *&v8[7] = v4;
      v8[0] = v2;
      OUTLINED_FUNCTION_103_0();
      v9[0] = v2;
      v5 = v1[15];
      *&v9[1] = v1[14];
      *&v9[3] = v5;
      v6 = v1[17];
      *&v9[5] = v1[16];
      *&v9[7] = v6;
      sub_1936C1BDC(v9, __dst);
      OUTLINED_FUNCTION_39_20();
      ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.hash(into:)();
      memcpy(__dst, v8, 0x48uLL);
      return sub_193737618(__dst);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    memcpy(v9, v1, sizeof(v9));
    sub_1936C8404(v9, __dst);
    ToolKitToolRestrictionContext.InSet.ValueSet.hash(into:)();
    memcpy(__dst, v1, sizeof(__dst));
    sub_193737770(__dst);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t ToolKitToolRestrictionContext.InSet.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.InSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937258A8()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.InSet.hash(into:)();
  return sub_19393CB00();
}

uint64_t static ToolKitToolRestrictionContext.InInclusiveRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
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

uint64_t ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) != 1)
  {
    v5 = *v0;
    sub_19393CAD0();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193B18060](v6);
    if (!v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x193B18060](v3);
}

uint64_t ToolKitToolRestrictionContext.InInclusiveRange.hashValue.getter()
{
  OUTLINED_FUNCTION_180_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_93_11(v3);
  v4 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725A58()
{
  OUTLINED_FUNCTION_180_7();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_93_11(v3);
  v4 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  ToolKitToolRestrictionContext.InInclusiveRange.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725AF4(void (*a1)(char *))
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_62_0(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a1(v12);
  return sub_19393CB00();
}

uint64_t sub_193725B58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_19393CAB0();
  v15 = OUTLINED_FUNCTION_62_0(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_19393CB00();
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.unit.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolRestrictionContext::MeasurementExpressibleAs __swiftcall ToolKitToolRestrictionContext.MeasurementExpressibleAs.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 514;
  return result;
}

uint64_t static ToolKitToolRestrictionContext.MeasurementExpressibleAs.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_454(a1);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 17);
  if (v8)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v1, v2);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

LABEL_15:
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v3) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v0[1])
  {
    v3 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_225();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRestrictionContext.MeasurementExpressibleAs.hashValue.getter()
{
  v12 = *v0;
  v13 = *(v0 + 8);
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193725E2C()
{
  v12 = *v0;
  v13 = *(v0 + 8);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolRestrictionContext.MeasurementExpressibleAs.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolRestrictionContext.TextTypedWith.keyboardType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  OUTLINED_FUNCTION_5_2(a1);
}

void ToolKitToolRestrictionContext.TextTypedWith.autocorrectionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.autocorrectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return result;
}

void ToolKitToolRestrictionContext.TextTypedWith.capitalizationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.capitalizationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  *(v1 + 49) = v3;
  return result;
}

void ToolKitToolRestrictionContext.TextTypedWith.init()(uint64_t a1@<X8>)
{
  *a1 = 514;
  *(a1 + 2) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  *(a1 + 40) = 0;
  *(a1 + 48) = 256;
  OUTLINED_FUNCTION_123_2();
}

uint64_t sub_19372600C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726034@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726124@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372614C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372623C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193726264@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolRestrictionContext.TextTypedWith.== infix(_:_:)()
{
  OUTLINED_FUNCTION_329_0();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  v6 = v0[32];
  v7 = v0[33];
  v8 = *(v0 + 5);
  v9 = v0[48];
  v10 = v0[49];
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[16];
  v15 = *(v1 + 3);
  v16 = v1[32];
  v17 = v1[33];
  v18 = *(v1 + 5);
  v19 = v1[48];
  v20 = v1[49];
  if (v2 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v11 == 2 || ((v11 ^ v2) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v3 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v12 == 2 || ((v12 ^ v3) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v13 == 2 || ((v13 ^ v4) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v0[17])
  {
    if ((v1[17] & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v1[17])
    {
      goto LABEL_29;
    }

    v25 = *(v0 + 1);
    v26 = v0[16] & 1;
    v23 = *(v0 + 5);
    v24 = *(v1 + 1);
    OUTLINED_FUNCTION_331_0();
    v22 = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter();
    if (v22 != ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter())
    {
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_331_0();
    v21 = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
    if (v21 != ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter())
    {
      goto LABEL_29;
    }
  }

  if ((v10 & 1) == 0 && (v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_331_0();
    ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
    ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  }

LABEL_29:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolRestrictionContext.TextTypedWith.hash(into:)()
{
  OUTLINED_FUNCTION_195();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v6 = *(v0 + 33);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v7 = *(v0 + 49);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_12:
    OUTLINED_FUNCTION_104_0();
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_14;
  }

  v10 = OUTLINED_FUNCTION_103_0();
  v11 = ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.rawValue.getter(v10);
  MEMORY[0x193B18030](v11);
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_312_0();
  v8 = ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.rawValue.getter();
  MEMORY[0x193B18030](v8);
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_312_0();
  v9 = ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.rawValue.getter();
  MEMORY[0x193B18030](v9);
LABEL_14:
  OUTLINED_FUNCTION_194();
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRestrictionContext.TextTypedWith.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937266DC()
{
  sub_19393CAB0();
  ToolKitToolRestrictionContext.TextTypedWith.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolComparisonPredicate.comparison.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444048(*(v1 + 40));
  *(v1 + 40) = v2;
  return result;
}

uint64_t ToolKitToolComparisonPredicate.rawGroupId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolComparisonPredicate.contentItemClass.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*(v1 + 64));
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_193726C90(void (*a1)(char *))
{
  v15 = *v1;
  v3 = OUTLINED_FUNCTION_119();
  v11 = OUTLINED_FUNCTION_432(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  a1(v11);
  return sub_19393CB00();
}

uint64_t sub_193726CF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v18 = *v4;
  v6 = sub_19393CAB0();
  v14 = OUTLINED_FUNCTION_432(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  a4(v14);
  return sub_19393CB00();
}

void sub_193726DC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1937377A0(v2, v3, v4, v5, v6);
}

__n128 sub_193726DE4(uint64_t a1)
{
  OUTLINED_FUNCTION_346_0(a1);
  sub_1937377F4(*v2, v2[1], v2[2], v2[3], v2[4]);
  result = *v1;
  v5 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 1) = v5;
  v2[4] = v3;
  return result;
}

uint64_t sub_193726EA8@<X0>(void (*a1)(unint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_107_13();
  sub_1937377F4(v4, v5, v6, v7, 0);
  *a2 = xmmword_1939526A0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  a1(0xF000000000000007);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0xF000000000000007;
  result = sub_1934354B4(0xF000000000000007);
  *(a2 + 64) = 0xF000000000000007;
  return result;
}

uint64_t sub_193726F88()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_193726FE4()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

void sub_193727068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t *, unint64_t *), uint64_t a14, uint64_t a15, void (*a16)(uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v44;
  v45 = v43[1];
  v47 = v43[2];
  v46 = v43[3];
  v48 = v43[4];
  v126 = v49;
  v127 = v43[5];
  v50 = v43[6];
  v51 = v43[7];
  v52 = v43[8];
  v54 = *v53;
  v55 = v53[1];
  v57 = v53[2];
  v56 = v53[3];
  v58 = v53[4];
  v125 = v53[5];
  v60 = v53[6];
  v59 = v53[7];
  v61 = v53[8];
  if (v45 == 1)
  {
    OUTLINED_FUNCTION_413();
    OUTLINED_FUNCTION_173();
    OUTLINED_FUNCTION_69_1();
    sub_1937377A0(v62, v63, v64, v65, v48);
    if (v55 == 1)
    {
      OUTLINED_FUNCTION_46_14();
      sub_1937377A0(v66, v67, v68, v69, v58);
      OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_69_1();
      sub_1937377F4(v70, v71, v72, v73, v48);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46_14();
    sub_1937377A0(v88, v89, v90, v91, v58);
LABEL_7:
    v92 = OUTLINED_FUNCTION_29_27();
    sub_1937377F4(v92, v93, v94, v95, v96);
    OUTLINED_FUNCTION_46_14();
    sub_1937377F4(v97, v98, v99, v100, v58);
    goto LABEL_15;
  }

  a25 = *v43;
  a26 = v45;
  a27 = v47;
  a28 = v46;
  a29 = v48;
  if (v55 == 1)
  {
    v74 = OUTLINED_FUNCTION_29_27();
    sub_1937377A0(v74, v75, v76, v77, v78);
    OUTLINED_FUNCTION_46_14();
    sub_1937377A0(v79, v80, v81, v82, v58);
    v83 = OUTLINED_FUNCTION_29_27();
    sub_1937377A0(v83, v84, v85, v86, v87);

    sub_193444060(v48);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_413();
  a20 = v54;
  a21 = v55;
  a22 = v57;
  a23 = v56;
  a24 = v58;
  v101 = OUTLINED_FUNCTION_29_27();
  sub_1937377A0(v101, v102, v103, v104, v105);
  OUTLINED_FUNCTION_46_14();
  sub_1937377A0(v106, v107, v108, v109, v58);
  v110 = OUTLINED_FUNCTION_29_27();
  sub_1937377A0(v110, v111, v112, v113, v114);
  v115 = static ToolKitToolTypeDefinition.Version1.Entity.Property.== infix(_:_:)(&a25, &a20);

  sub_193444060(v58);

  sub_193444060(v48);
  v116 = OUTLINED_FUNCTION_29_27();
  sub_1937377F4(v116, v117, v118, v119, v120);
  if ((v115 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((~v127 & 0xF000000000000007) != 0)
  {
    a25 = v127;
    v121 = v125;
    if ((~v125 & 0xF000000000000007) != 0)
    {
      a20 = v125;
      v126(v127);
      v126(v125);
      v126(v127);
      v122 = a13(&a25, &a20);

      a16(v127);
      if ((v122 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    v126(v127);
    v126(v125);
    v126(v127);

LABEL_14:
    a16(v127);
    a16(v121);
    goto LABEL_15;
  }

  v121 = v125;
  v126(v127);
  v126(v125);
  if ((~v125 & 0xF000000000000007) != 0)
  {
    goto LABEL_14;
  }

  a16(v127);
LABEL_17:
  if (a15)
  {
    if (a14)
    {
      v123 = a10 == a9 && a15 == a14;
      if (v123 || (sub_19393CA30() & 1) != 0)
      {
LABEL_26:
        if ((~a12 & 0xF000000000000007) != 0)
        {
          a25 = a12;
          v124 = a11;
          if ((~a11 & 0xF000000000000007) != 0)
          {
            a20 = a11;
            sub_193438388(a12);
            sub_193438388(a11);
            sub_193438388(a12);
            static ToolKitToolContentItemClassDescriptor.== infix(_:_:)(&a25, &a20);

            sub_1934354B4(a12);
            goto LABEL_15;
          }

          sub_193438388(a12);
          sub_193438388(a11);
          sub_193438388(a12);
        }

        else
        {
          v124 = a11;
          sub_193438388(a12);
          sub_193438388(a11);
          if ((~a11 & 0xF000000000000007) == 0)
          {
            sub_1934354B4(a12);
            goto LABEL_15;
          }
        }

        sub_1934354B4(a12);
        sub_1934354B4(v124);
      }
    }
  }

  else if (!a14)
  {
    goto LABEL_26;
  }

LABEL_15:
  OUTLINED_FUNCTION_160_8();
}

uint64_t sub_193727454(uint64_t a1, void (*a2)(uint64_t))
{
  v11 = *v2;
  v12 = v2[1];
  v4 = *(v2 + 5);
  v13 = *(v2 + 4);
  v5 = *(v2 + 6);
  v6 = *(v2 + 7);
  v7 = *(v2 + 8);
  sub_193737848();
  OUTLINED_FUNCTION_252_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_103_0();

    v9 = OUTLINED_FUNCTION_161();
    a2(v9);

    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_58_19();
    sub_19393C640();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_6:
  OUTLINED_FUNCTION_104_0();
LABEL_7:
  OUTLINED_FUNCTION_380();
  if (v8)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  OUTLINED_FUNCTION_161();
  ToolKitToolContentItemClassDescriptor.hash(into:)();
}

uint64_t ToolKitToolCompoundPredicate.operands.setter()
{
  result = OUTLINED_FUNCTION_457();
  *(v1 + 16) = v0;
  return result;
}

void ToolKitToolCompoundPredicate.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  OUTLINED_FUNCTION_365_1(a1);
}

uint64_t sub_193727628@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193727650@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolCompoundPredicate.OperatorType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static ToolKitToolCompoundPredicate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_414(a1, a2);
  if (v5)
  {
    if ((v4 & 1) == 0)
    {
LABEL_7:
      v8 = 0;
      return v8 & 1;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v6 = OUTLINED_FUNCTION_9_16(v2, v3);
    v7 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter(v6);
    if (v7 != ToolKitToolCompoundPredicate.OperatorType.rawValue.getter(v7))
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_187();
  sub_193714770();
  return v8 & 1;
}

void ToolKitToolCompoundPredicate.hash(into:)()
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v6 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter(v5);
    MEMORY[0x193B18030](v6);
  }

  OUTLINED_FUNCTION_165_8();
  v7 = OUTLINED_FUNCTION_187();
  sub_193736FC4(v7, v8);
  OUTLINED_FUNCTION_351_1();
}

uint64_t ToolKitToolCompoundPredicate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  sub_19393CAB0();
  if (v3 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v5 = sub_19393CAD0();
    v6 = ToolKitToolCompoundPredicate.OperatorType.rawValue.getter(v5);
    MEMORY[0x193B18030](v6);
  }

  OUTLINED_FUNCTION_165_8();
  sub_193736FC4(v8, v4);
  return sub_19393CB00();
}

uint64_t sub_193727954()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolCompoundPredicate.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolIdSearchPredicate.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolIdSearchPredicate __swiftcall ToolKitToolIdSearchPredicate.init()()
{
  *v0 = 0;
  v0[1] = 0;
  OUTLINED_FUNCTION_365_1(v0);
  result.identifiers._rawValue = v3;
  result.identifier.value._object = v2;
  result.identifier.value._countAndFlagsBits = v1;
  return result;
}

BOOL _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_147_8();
  if (!v6)
  {
    OUTLINED_FUNCTION_287_2();
    if (!v6)
    {
      v9 = OUTLINED_FUNCTION_44_22();
      v17 = OUTLINED_FUNCTION_143_7(v9, v10, v11, v12, v13, v14, v15, v16, v3, v38);
      v19 = static ToolKitToolTypeInstance.== infix(_:_:)(v17, v18);
      v20 = v19;
      OUTLINED_FUNCTION_126_9(v19, v21, v22, v23, v24, v25, v26, v27, v36);

      OUTLINED_FUNCTION_98_15(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39);

      sub_193444060(v2);
      return (v20 & 1) != 0;
    }

    OUTLINED_FUNCTION_44_22();

LABEL_8:
    v7 = OUTLINED_FUNCTION_267_2();
    sub_193444060(v7);
    return 0;
  }

  v5 = v4 & ~v3;
  OUTLINED_FUNCTION_120_8();
  if (v5)
  {
    goto LABEL_8;
  }

  sub_193444060(v2);
  return 1;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_179_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  OUTLINED_FUNCTION_161();
  v4 = ToolKitToolTypeInstance.hash(into:)();
  OUTLINED_FUNCTION_98_15(v4, v5, v6, v7, v8, v9, v10, v11, v12, v1);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD12TypeInstanceO8DeferredV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_147_8();
  if (v2)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v3, v4, v5, v6, v7, v8, v9, v10, v1, v21);
    v11 = ToolKitToolTypeInstance.hash(into:)();
    OUTLINED_FUNCTION_126_9(v11, v12, v13, v14, v15, v16, v17, v18, v20);
  }

  return sub_19393CB00();
}

uint64_t sub_193727C80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

uint64_t static ToolKitToolValueSearchPredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_49_21();
  return sub_1937148A0() & 1;
}

uint64_t ToolKitToolQuery.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444048(*v1);
  *v1 = v2;
  return result;
}

void ToolKitToolQuery.sort.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolQuery.limit.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ToolKitToolQuery.limit.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

double ToolKitToolQuery.init()@<D0>(uint64_t a1@<X8>)
{
  sub_193444048(0xF000000000000007);
  result = -3.10503618e231;
  *a1 = xmmword_193980780;
  *(a1 + 16) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_193727EF0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolQuery.SortOrder.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193727F18@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolQuery.SortOrder.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolQuery.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_195();
  a25 = v26;
  a26 = v27;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 17);
  v33 = *(v28 + 24);
  v34 = *(v28 + 32);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  v39 = *(v35 + 17);
  v40 = *(v35 + 24);
  v41 = *(v35 + 32);
  OUTLINED_FUNCTION_147_8();
  if (v45)
  {
    v50 = v44;
    v51 = v43;
    v46 = v42 & ~v36;
    sub_19344BF2C(v29);
    sub_19344BF2C(v36);
    if (v46)
    {
LABEL_7:
      sub_193444048(v29);
      sub_193444048(v36);
      goto LABEL_8;
    }

    v47 = sub_193444048(v29);
  }

  else
  {
    a13 = v29;
    if ((v42 & ~v36) == 0)
    {
      sub_19344BF2C(v29);
      sub_19344BF2C(v36);
      sub_19344BF2C(v29);

      goto LABEL_7;
    }

    v50 = v44;
    v51 = v43;
    a11 = v36;
    sub_19344BF2C(v29);
    sub_19344BF2C(v36);
    sub_19344BF2C(v29);
    v48 = static ToolKitToolQuery.AnyPredicate.== infix(_:_:)(&a13, &a11);

    v47 = sub_193444048(v29);
    if ((v48 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((v51 & 1) == 0 && (v50 & 1) == 0)
  {
    a13 = v30;
    a14 = v31 & 1;
    a11 = v37;
    a12 = v38 & 1;
    v49 = ToolKitToolQuery.SortOrder.rawValue.getter(v47);
    ToolKitToolQuery.SortOrder.rawValue.getter(v49);
  }

LABEL_8:
  OUTLINED_FUNCTION_194();
}

void ToolKitToolQuery.hash(into:)()
{
  OUTLINED_FUNCTION_272_2();
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = v0[3];
  v5 = *(v0 + 32);
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  v8 = *v0;
  OUTLINED_FUNCTION_103_0();

  OUTLINED_FUNCTION_39_20();
  ToolKitToolQuery.AnyPredicate.hash(into:)();

  if (v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v7 = ToolKitToolQuery.SortOrder.rawValue.getter(v6);
  MEMORY[0x193B18030](v7);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v4);
LABEL_8:
  OUTLINED_FUNCTION_92_7();
}

uint64_t ToolKitToolQuery.hashValue.getter()
{
  OUTLINED_FUNCTION_163_8();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolQuery.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728308()
{
  OUTLINED_FUNCTION_163_8();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolQuery.hash(into:)();
  return sub_19393CB00();
}

void ToolKitToolRuntimePlatformVersion.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 513;
}

uint64_t static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v7 = *(a2 + 21);
  if ((*(a1 + 4) & 1) == 0)
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }

LABEL_8:
    if (v3)
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (v2 == *(a2 + 8))
      {
        v9 = *(a2 + 12);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!*(a2 + 20))
      {
        return 0;
      }
    }

    else
    {
      if (v4 == *(a2 + 16))
      {
        v10 = *(a2 + 20);
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 4))
  {
    goto LABEL_8;
  }

  return 0;
}

void ToolKitToolRuntimePlatformVersion.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 12);
  v3 = v0[4];
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v6 = *v0;
  sub_19393CAD0();
  sub_19393CAE0();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v4)
  {
LABEL_4:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_8;
  }

LABEL_7:
  sub_19393CAD0();
LABEL_8:
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_236();
}

uint64_t ToolKitToolRuntimePlatformVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_136_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolRuntimePlatformVersion.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937285F8()
{
  OUTLINED_FUNCTION_136_9();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  ToolKitToolRuntimePlatformVersion.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728644@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimeRequirement.DeviceState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372866C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimeRequirement.DeviceState.allCases.getter();
  *a1 = result;
  return result;
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.introducingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 28);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_119_10(a1, *(v1 + 12));
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.introducingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 12) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 28) = v2;
  return result;
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.deprecatingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 52);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_119_10(a1, *(v1 + 36));
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.deprecatingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 36) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 52) = v2;
  return result;
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.obsoletingVersion.getter(__n128 *a1@<X8>)
{
  v2 = *(v1 + 76);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_119_10(a1, *(v1 + 60));
}

__n128 ToolKitToolRuntimeRequirement.AvailabilityAnnotation.obsoletingVersion.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u16[2];
  result = *a1;
  *(v1 + 60) = *a1;
  *(v1 + 80) = v3;
  *(v1 + 76) = v2;
  return result;
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 768;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 768;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 768;
  OUTLINED_FUNCTION_123_2();
}

void static ToolKitToolRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_327();
  v2 = *(v0 + 12);
  v3 = *(v0 + 32);
  v4 = *(v0 + 28);
  v5 = *(v0 + 36);
  v6 = *(v0 + 56);
  v7 = *(v0 + 52);
  v8 = *(v0 + 60);
  v39 = *(v0 + 80);
  v9 = *(v0 + 76);
  v10 = *(v1 + 9);
  v11 = *(v1 + 12);
  v12 = *(v1 + 20);
  v13 = *(v1 + 32);
  v14 = *(v1 + 28);
  v15 = *(v1 + 36);
  v16 = *(v1 + 44);
  v17 = *(v1 + 56);
  v18 = *(v1 + 52);
  v19 = *(v1 + 60);
  v38 = *(v1 + 68);
  v40 = *(v1 + 80);
  v41 = *(v1 + 76);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_23;
    }

    v20 = OUTLINED_FUNCTION_178_0(v0, v1);
    v37 = ToolKitToolRuntimePlatform.rawValue.getter(v20);
    if (v37 != ToolKitToolRuntimePlatform.rawValue.getter(v37))
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (v23)
  {
    if ((v21 & 0xFF0000000000) != v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_135_9();
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = OUTLINED_FUNCTION_77_15(v24);
    if ((static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v25, v26) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (v23)
  {
    if ((v27 & 0xFF0000000000) != v28)
    {
      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_135_9();
    if (v29)
    {
      goto LABEL_23;
    }

    v31 = OUTLINED_FUNCTION_77_15(v30);
    if ((static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v31, v32) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_313_1();
  if (!v23)
  {
    OUTLINED_FUNCTION_135_9();
    if (!v33)
    {
      v35 = OUTLINED_FUNCTION_77_15(v34);
      static ToolKitToolRuntimePlatformVersion.== infix(_:_:)(v35, v36);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_232_4();
}

void ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)()
{
  OUTLINED_FUNCTION_329_0();
  OUTLINED_FUNCTION_148_2();
  v20 = *(v0 + 12);
  v21 = *(v0 + 20);
  v1 = *(v0 + 7) | (*(v0 + 16) << 32);
  v2 = *(v0 + 36);
  v3 = *(v0 + 44);
  v4 = *(v0 + 28);
  v5 = *(v0 + 13);
  v6 = *(v0 + 60);
  v7 = *(v0 + 68);
  v8 = *(v0 + 40);
  v22 = *(v0 + 19);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *(v0 + 44);
    v19 = *(v0 + 36);
    v10 = *(v0 + 60);
    v11 = *(v0 + 68);
    v12 = *(v0 + 8);
    v13 = *v0;
    v14 = OUTLINED_FUNCTION_103_0();
    v15 = ToolKitToolRuntimePlatform.rawValue.getter(v14);
    MEMORY[0x193B18030](v15);
  }

  v16 = v5 | (v4 << 32);
  if ((v1 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  v17 = v22 | (v8 << 32);
  if ((v16 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  if ((v17 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_334_0();
    ToolKitToolRuntimePlatformVersion.hash(into:)();
  }

  OUTLINED_FUNCTION_328();
}

uint64_t ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728CF8()
{
  sub_19393CAB0();
  ToolKitToolRuntimeRequirement.AvailabilityAnnotation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193728D44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193728D6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.key.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolRuntimeRequirement::DeviceCapability::MobileGestalt __swiftcall ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return result;
}

uint64_t static ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_454(a1);
  v3 = *(v1 + 16);
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v1, v2);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_225();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    v4 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v3 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19372908C()
{
  v12 = *v0;
  v13 = *(v0 + 16);
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.feature.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall ToolKitToolRuntimeRequirement.FeatureFlag.init()(IntelligencePlatformLibrary::ToolKitToolRuntimeRequirement::FeatureFlag *__return_ptr retstr)
{
  retstr->domain = 0u;
  retstr->feature = 0u;
  retstr->value.value = 2;
}

uint64_t static ToolKitToolRuntimeRequirement.FeatureFlag.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_436(a1);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  if (v10)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v2, v3);
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    if (v1 != v7 || v4 != v8)
    {
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    if (v5 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || ((v9 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  if (v0[1])
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_13_5();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolRuntimeRequirement.FeatureFlag.hashValue.getter()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_159_6();
  v2 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_149_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193729404()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_159_6();
  v2 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  ToolKitToolRuntimeRequirement.FeatureFlag.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolToolSummaryString.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;

      OUTLINED_FUNCTION_161();
      v6 = ToolKitToolToolSummaryString.Component.hash(into:)();
      OUTLINED_FUNCTION_417(v6, v7, v8, v9, v10, v11, v12, v13, v14, v5);

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ToolKitToolToolInvocationSignature.visibleParameterKeys.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolToolInvocationSignature __swiftcall ToolKitToolToolInvocationSignature.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v2;
  v3 = sub_19393C510();
  v1[2] = v3;
  result.valueConstraints._rawValue = v5;
  result.invisibleParameterKeys._rawValue = v4;
  result.visibleParameterKeys._rawValue = v3;
  return result;
}

uint64_t static ToolKitToolToolInvocationSignature.ListOfRelations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_162_9();
  return sub_1937148A0(v4, v5, v6) & 1;
}

void sub_19372970C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_365_1(a1);
}

uint64_t sub_193729720(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v6 || (v7 = 0, (sub_19393CA30() & 1) != 0))
  {

    OUTLINED_FUNCTION_162_9();
    v8 = OUTLINED_FUNCTION_13_5();
    v7 = sub_1937148A0(v8, v9, v10);
  }

  return v7 & 1;
}

uint64_t sub_1937297A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v4 = OUTLINED_FUNCTION_13_0();
  return sub_193737244(v4);
}

uint64_t sub_1937297DC()
{
  OUTLINED_FUNCTION_210_1();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v16 = OUTLINED_FUNCTION_62_0(v8, v9, v10, v11, v12, v13, v14, v15, v19, v21);
  sub_193737244(v16);
  return sub_19393CB00();
}

uint64_t sub_193729838()
{
  OUTLINED_FUNCTION_210_1();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_38_30(v0, v1, v2, v3, v4, v5, v6, v7, v18, v20);
  sub_19393C640();
  OUTLINED_FUNCTION_47_24();
  v16 = OUTLINED_FUNCTION_62_0(v8, v9, v10, v11, v12, v13, v14, v15, v19, v21);
  sub_193737244(v16);
  return sub_19393CB00();
}

uint64_t static ToolKitToolToolInvocationSignature.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19344FC94(v7, v8) & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_115_0();
  if ((sub_19344FC94(v9, v10) & 1) == 0)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_13_0();

  return sub_1937211C8(v11, v12);
}

uint64_t ToolKitToolToolInvocationSignature.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1934D11C8(a1, v2);
  v5 = OUTLINED_FUNCTION_187();
  sub_1934D11C8(v5, v6);
  v7 = OUTLINED_FUNCTION_13_0();

  return sub_193735EB0(v7, v8);
}

uint64_t ToolKitToolToolInvocationSignature.hashValue.getter()
{
  OUTLINED_FUNCTION_210_1();
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24[0]);
  sub_1934D11C8(v9, v10);
  v11 = sub_1934D11C8(v24, v0);
  v19 = OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  sub_193735EB0(v19, v20);
  return sub_19393CB00();
}

uint64_t sub_1937299B8()
{
  OUTLINED_FUNCTION_210_1();
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_99(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24[0]);
  sub_1934D11C8(v9, v10);
  v11 = sub_1934D11C8(v24, v0);
  v19 = OUTLINED_FUNCTION_62_0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24[0]);
  sub_193735EB0(v19, v20);
  return sub_19393CB00();
}

uint64_t ToolKitToolSampleInvocationDefinition.phrases.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

uint64_t ToolKitToolSampleInvocationDefinition.expectedResult.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolSampleInvocationDefinition.negativePhrases.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolSampleInvocationDefinition __swiftcall ToolKitToolSampleInvocationDefinition.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = v1;
  return result;
}

uint64_t static ToolKitToolSampleInvocationDefinition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19344FC94(v9, v10) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      if (v2 == v6 && v4 == v8)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_284();
      if (sub_19393CA30())
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_9:
  v12 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v12, v13);
}

uint64_t ToolKitToolSampleInvocationDefinition.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1934D11C8(a1, *v1);
  if (v5)
  {
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_302();
  }

  return sub_1934D11C8(a1, v4);
}

uint64_t sub_193729CC4()
{
  v13 = *v0;
  v14 = *(v0 + 1);
  v15 = v0[3];
  v1 = sub_19393CAB0();
  v9 = OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  ToolKitToolSampleInvocationDefinition.hash(into:)(v9);
  return sub_19393CB00();
}

void ToolKitToolAssistantSchemaVersion.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t static ToolKitToolAssistantSchemaVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v6 = *(a2 + 40);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ToolKitToolAssistantSchemaVersion.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v6 = *v0;
  sub_19393CAD0();
  MEMORY[0x193B18060](v6);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19393CAD0();
  MEMORY[0x193B18060](v1);
  if (!v4)
  {
LABEL_4:
    sub_19393CAD0();
    return MEMORY[0x193B18060](v3);
  }

  return sub_19393CAD0();
}

void ToolKitToolAssistantSchemaVersion.hashValue.getter()
{
  OUTLINED_FUNCTION_51_15();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v7 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v7);
  }

  sub_19393CAD0();
  if (!v6)
  {
    v8 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v8);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

void sub_193729F9C()
{
  OUTLINED_FUNCTION_51_15();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2 != 1)
  {
    MEMORY[0x193B18060](v1);
  }

  sub_19393CAD0();
  if (!v4)
  {
    v7 = OUTLINED_FUNCTION_264_0();
    MEMORY[0x193B18060](v7);
  }

  sub_19393CAD0();
  if (!v6)
  {
    v8 = OUTLINED_FUNCTION_161();
    MEMORY[0x193B18060](v8);
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

__n128 ToolKitToolAssistantSchemaIdentifier.version.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

void ToolKitToolAssistantSchemaIdentifier.version.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  OUTLINED_FUNCTION_124_8(v2);
}

uint64_t ToolKitToolAssistantSchemaIdentifier.domain.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double ToolKitToolAssistantSchemaIdentifier.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 57) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

void static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, __int128 a23, __int128 a24, uint64_t a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  OUTLINED_FUNCTION_234_3();
  a40 = v41;
  a41 = v42;
  v44 = OUTLINED_FUNCTION_454(v43);
  v46 = *(v44 + 16);
  v47 = *(v44 + 32);
  v48 = *(v44 + 48);
  v49 = *(v44 + 56);
  v50 = *(v44 + 57);
  v51 = *(v44 + 64);
  v52 = *(v44 + 72);
  v53 = *(v45 + 8);
  v54 = *(v45 + 16);
  v55 = *(v45 + 24);
  v56 = *(v45 + 32);
  v58 = *(v45 + 40);
  v57 = *(v45 + 48);
  v59 = *(v45 + 56);
  v60 = *(v45 + 57);
  v62 = *(v45 + 64);
  v61 = *(v45 + 72);
  if (v63)
  {
    if (!v53)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_155(v44, v45);
    v66 = v66 && v64 == v65;
    if (!v66)
    {
      v78 = v61;
      v79 = v62;
      v76 = v54;
      v77 = v52;
      v67 = v51;
      v68 = v59;
      v69 = v55;
      v74 = v47;
      v75 = v46;
      v70 = sub_19393CA30();
      v47 = v74;
      v46 = v75;
      LOBYTE(v55) = v69;
      v59 = v68;
      v51 = v67;
      v54 = v76;
      v52 = v77;
      v61 = v78;
      v62 = v79;
      if ((v70 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v53)
  {
    goto LABEL_22;
  }

  if (v50)
  {
    if ((v60 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    a23 = v46;
    a24 = v47;
    a25 = v48;
    a26 = v49;
    a27 = 0;
    if (v60)
    {
      goto LABEL_22;
    }

    a17 = v54;
    a18 = v55 & 1;
    a19 = v56;
    a20 = v58 & 1;
    a21 = v57;
    a22 = v59 & 1;
    v71 = v51;
    v72 = static ToolKitToolAssistantSchemaVersion.== infix(_:_:)(&a23, &a17);
    v51 = v71;
    if ((v72 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v52 && v61 && (v51 != v62 || v52 != v61))
  {
    OUTLINED_FUNCTION_444();
  }

LABEL_22:
  OUTLINED_FUNCTION_160_8();
}

void ToolKitToolAssistantSchemaIdentifier.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v8 = v0[9];
  v11 = v4;
  v12 = v0[8];
  if (v0[1])
  {
    v9 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_14();
    sub_19393C640();
    if (v7)
    {
LABEL_12:
      sub_19393CAD0();
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_9:
      sub_19393CAD0();
      OUTLINED_FUNCTION_114();
      return;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v7)
    {
      goto LABEL_12;
    }
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393CAD0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_19393CAD0();
    MEMORY[0x193B18060](v1);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      sub_19393CAD0();
      MEMORY[0x193B18060](v3);
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  sub_19393CAD0();
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_19393CAD0();
  MEMORY[0x193B18060](v11);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_19393CAD0();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolAssistantToolSchemaDefinition.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AA8, &qword_1939807A8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.description.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.description.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 128));
  *(v1 + 128) = v2;
  return result;
}

uint64_t ToolKitToolAssistantToolSchemaDefinition.init()@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v4 = OUTLINED_FUNCTION_208_1(a2, xmmword_1939526A0);
  *(a1 + 64) = v4;
  OUTLINED_FUNCTION_276_3(v8);
  sub_19344E6DC(v8, &qword_1EAE41AA8, &qword_1939807A8);
  *a1 = xmmword_1939526A0;
  *(a1 + 16) = 0u;
  OUTLINED_FUNCTION_139_10(0);
  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  *(a1 + 120) = v5;
  v6 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v6);
  *(a1 + 128) = v2;
  return result;
}

void static ToolKitToolAssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  OUTLINED_FUNCTION_440(v3);
  v4 = *(v0 + 88);
  v142 = *(v0 + 80);
  v147 = *(v0 + 104);
  v132 = *(v0 + 96);
  v137 = *(v0 + 112);
  v127 = *(v0 + 120);
  v5 = *(v0 + 128);
  memcpy(v162, v2, 0x50uLL);
  v6 = v2[5].n128_u64[0];
  v7 = v2[5].n128_u64[1];
  v8 = v2[6].n128_u64[0];
  v9 = v160;
  v10 = v161;
  v11 = v162[0];
  v12 = v162[1];
  if (v161 == 1)
  {
    if (v162[1] == 1)
    {
      v103 = v2[6].n128_i64[0];
      v109 = v2[7].n128_i64[0];
      v116 = v5;
      v121 = v2[6].n128_i64[1];
      v91 = v2[8].n128_i64[0];
      v97 = v2[7].n128_i64[1];
      *v156 = v160;
      v157 = 1;
      OUTLINED_FUNCTION_4_62();
      OUTLINED_FUNCTION_449(&v160, v155);
      OUTLINED_FUNCTION_449(v162, v155);
      sub_19344E6DC(v156, &qword_1EAE41AA8, &qword_1939807A8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_0();
    sub_193448804(v39, v40, v41, v42);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v43, v44, v45, v46);
LABEL_7:
    *v156 = v9;
    v157 = v10;
    OUTLINED_FUNCTION_4_62();
    v158 = v11;
    v159 = v12;
    OUTLINED_FUNCTION_431(v2[1], v2[2]);
    OUTLINED_FUNCTION_429(v2[3], v2[4]);
    sub_19344E6DC(v156, &qword_1EAE41AB0, &qword_1939807B0);
    goto LABEL_8;
  }

  v104 = v2[6].n128_i64[0];
  v110 = v2[7].n128_i64[0];
  v122 = v2[6].n128_i64[1];
  v92 = v2[8].n128_i64[0];
  v98 = v2[7].n128_i64[1];
  v157 = v161;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_452(v155, v13, v14, v15, v16, v17, v18, v19, v92, v98, v104, v110, v115, v122, v127, v132, v137, v142, v147, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v153[0], v153[1], v153[2], v153[3], v153[4], v153[5], v153[6], v153[7], v153[8], v153[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v155[0], v155[1], v155[2], v155[3], v155[4], v155[5], v155[6], v155[7], v155[8], v155[9], v160);
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_452(__src, v20, v21, v22, v23, v24, v25, v26, v93, v99, v105, v111, v117, v123, v128, v133, v138, v143, v148, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v153[0], v153[1], v153[2], v153[3], v153[4], v153[5], v153[6], v153[7], v153[8], v153[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v155[0], v155[1], v155[2], v155[3], v155[4], v155[5], v155[6], v155[7], v155[8], v155[9], v156[0]);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v27, v28, v29, v30);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v31, v32, v33, v34);
    OUTLINED_FUNCTION_75_0();
    sub_193448804(v35, v36, v37, v38);
    sub_193731678(__src);
    goto LABEL_7;
  }

  v47 = v2[1];
  v48 = v2[2];
  OUTLINED_FUNCTION_105_15();
  v49 = v2[3];
  v50 = v2[4];
  OUTLINED_FUNCTION_104_12();
  static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v155, __src, v51, v52, v53, v54, v55, v56, v93, v99, v105, v111, v5, v123, v128, v133, v138, v143, v148, __dst[0], __dst[1], __dst[2], *&__dst[3], *&__dst[5], __dst[7], __dst[8], SBYTE1(__dst[8]), __dst[9], v153[0], v153[1], v153[2], v153[3], v153[4], v153[5], v153[6], v153[7], v153[8], v153[9], v11, v12, __src[2]);
  v58 = v57;
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_367_1(&v160, v59, v60, v61, v62, v63, v64, v65, v94, v100, v106, v112, v118, v124, v129, v134, v139, v144, v149, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v153[0]);
  OUTLINED_FUNCTION_367_1(v162, v66, v67, v68, v69, v70, v71, v72, v95, v101, v107, v113, v119, v125, v130, v135, v140, v145, v150, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v153[0]);
  OUTLINED_FUNCTION_367_1(v156, v73, v74, v75, v76, v77, v78, v79, v96, v102, v108, v114, v120, v126, v131, v136, v141, v146, v151, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v153[0]);
  sub_193731678(__dst);
  memcpy(v153, v155, sizeof(v153));
  sub_193731678(v153);
  __src[0] = v9;
  __src[1] = v10;
  v80 = *(v0 + 16);
  v81 = *(v0 + 32);
  OUTLINED_FUNCTION_105_15();
  v82 = *(v0 + 48);
  v83 = *(v0 + 64);
  OUTLINED_FUNCTION_104_12();
  sub_19344E6DC(__src, &qword_1EAE41AA8, &qword_1939807A8);
  if ((v58 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4)
  {
    v84 = v116;
    if (!v7)
    {
      goto LABEL_8;
    }

    v85 = v142 == v6 && v4 == v7;
    if (!v85 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v84 = v116;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v147)
  {
    if (!v121)
    {
      goto LABEL_8;
    }

    v86 = v132 == v103 && v147 == v121;
    if (!v86 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v121)
  {
    goto LABEL_8;
  }

  if (sub_193713748(v137, v109) & 1) != 0 && (sub_1937139C8(v127, v97))
  {
    OUTLINED_FUNCTION_147_8();
    if (!v85)
    {
      *v156 = v84;
      v89 = v91;
      if ((v87 & ~v91) != 0)
      {
        v155[0] = v91;
        OUTLINED_FUNCTION_258_2();
        sub_193437C90(v84);
        static ToolKitToolTypeInstance.== infix(_:_:)(v156, v155);

        sub_193444060(v84);
        goto LABEL_8;
      }

      sub_193437C90(v84);
      OUTLINED_FUNCTION_94_14(v91);
      v88 = v84;
      goto LABEL_36;
    }

    v88 = v84;
    v89 = v91;
    v90 = v87 & ~v91;
    sub_193437C90(v88);
    sub_193437C90(v91);
    if (v90)
    {
LABEL_36:
      sub_193444060(v88);
      sub_193444060(v89);
      goto LABEL_8;
    }

    sub_193444060(v88);
  }

LABEL_8:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolAssistantTypeSchemaDefinition.Enumeration.identifier.getter()
{
  OUTLINED_FUNCTION_142_10();
  memcpy(v0, v1, 0x50uLL);
  v2 = OUTLINED_FUNCTION_13_0();
  v4 = memcpy(v2, v3, 0x50uLL);
  return OUTLINED_FUNCTION_278_3(v4, v5, &qword_1EAE41AA8, &qword_1939807A8, v6, v7, v8, v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

void *ToolKitToolAssistantTypeSchemaDefinition.Enumeration.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19344E6DC(&v5, &qword_1EAE41AA8, &qword_1939807A8);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

uint64_t ToolKitToolAssistantTypeSchemaDefinition.Enumeration.cases.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

__n128 sub_19372ADF8(uint64_t a1)
{
  OUTLINED_FUNCTION_346_0(a1);
  sub_193613BF4(v2[11], v2[12], v2[13], v2[14], v2[15]);
  result = *v1;
  *(v2 + 13) = *(v1 + 16);
  *(v2 + 11) = result;
  v2[15] = v3;
  return result;
}

double sub_19372AE5C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&v3 = OUTLINED_FUNCTION_208_1(a2, xmmword_1939526A0);
  *(a1 + 64) = v3;
  OUTLINED_FUNCTION_276_3(v11);
  sub_19344E6DC(v11, &qword_1EAE41AA8, &qword_1939807A8);
  *&v5 = OUTLINED_FUNCTION_208_1(v4, xmmword_1939526A0);
  *(a1 + 64) = v5;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_169_3();
  sub_193613BF4(v6, v7, v8, v9, 0);
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_19372AF04()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_440(v5);
  v6 = *(v0 + 80);
  v125 = *(v0 + 88);
  v127 = *(v0 + 96);
  v129 = *(v0 + 104);
  v7 = *(v0 + 112);
  v123 = *(v0 + 120);
  OUTLINED_FUNCTION_268_1(&v144);
  v9 = v4[5].n128_u64[0];
  v8 = v4[5].n128_u64[1];
  v11 = v142;
  v10 = v143;
  v13 = v144;
  v12 = v145;
  if (v143 != 1)
  {
    v109 = v4[5].n128_i64[1];
    v112 = v4[6].n128_i64[1];
    v115 = v4[7].n128_i64[1];
    v118 = v4[6].n128_i64[0];
    v121 = v4[7].n128_i64[0];
    v136 = v143;
    OUTLINED_FUNCTION_4_62();
    OUTLINED_FUNCTION_452(v134, v22, v23, v24, v25, v26, v27, v28, v103, v105, v109, v112, v115, v118, v121, v123, v125, v127, v129, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v142);
    if (v12 != 1)
    {
      v36 = v4[1];
      v37 = v4[2];
      OUTLINED_FUNCTION_105_15();
      v38 = v4[3];
      v39 = v4[4];
      OUTLINED_FUNCTION_104_12();
      static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v134, __src, v40, v41, v42, v43, v44, v45, v104, v7, v110, v113, v116, v119, v122, v124, v126, v128, v130, __dst[0], __dst[1], __dst[2], *&__dst[3], *&__dst[5], __dst[7], __dst[8], SBYTE1(__dst[8]), __dst[9], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v13, v12, __src[2]);
      v47 = v46;
      memcpy(__dst, __src, sizeof(__dst));
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v48, v49, v50, v51);
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v52, v53, v54, v55);
      OUTLINED_FUNCTION_95_3();
      sub_193448804(v56, v57, v58, v59);
      sub_193731678(__dst);
      memcpy(v132, v134, sizeof(v132));
      sub_193731678(v132);
      __src[0] = v11;
      __src[1] = v10;
      v60 = *(v0 + 16);
      v61 = *(v0 + 32);
      OUTLINED_FUNCTION_105_15();
      v62 = *(v0 + 48);
      v63 = *(v0 + 64);
      OUTLINED_FUNCTION_104_12();
      sub_19344E6DC(__src, &qword_1EAE41AA8, &qword_1939807A8);
      if ((v47 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_452(__src, v29, v30, v31, v32, v33, v34, v35, v104, v107, v110, v113, v116, v119, v122, v124, v126, v128, v130, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], v134[0], v134[1], v134[2], v134[3], v134[4], v134[5], v134[6], v134[7], v134[8], v134[9], v135[0]);
    OUTLINED_FUNCTION_294(&v142, v132);
    OUTLINED_FUNCTION_294(&v144, v132);
    OUTLINED_FUNCTION_294(v135, v132);
    sub_193731678(__src);
LABEL_7:
    *v135 = v11;
    v136 = v10;
    OUTLINED_FUNCTION_4_62();
    v140 = v13;
    v141 = v12;
    OUTLINED_FUNCTION_431(v4[1], v4[2]);
    OUTLINED_FUNCTION_429(v4[3], v4[4]);
    sub_19344E6DC(v135, &qword_1EAE41AB0, &qword_1939807B0);
    goto LABEL_17;
  }

  if (v145 != 1)
  {
    OUTLINED_FUNCTION_294(&v142, v135);
    OUTLINED_FUNCTION_294(&v144, v135);
    goto LABEL_7;
  }

  v108 = v4[5].n128_i64[1];
  v111 = v4[6].n128_i64[1];
  v114 = v4[7].n128_i64[1];
  v117 = v4[6].n128_i64[0];
  v120 = v4[7].n128_i64[0];
  v106 = v7;
  *v135 = v142;
  v136 = 1;
  OUTLINED_FUNCTION_4_62();
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v14, v15, v16, v17);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v18, v19, v20, v21);
  OUTLINED_FUNCTION_247_2(v135);
LABEL_9:
  if (v2(v6, v9))
  {
    if (v123)
    {
      *v135 = v125;
      v136 = v127;
      v137 = v129;
      v138 = v106;
      v139 = v123;
      if (v114)
      {
        v134[0] = v108;
        v134[1] = v117;
        v134[2] = v111;
        v134[3] = v120;
        v134[4] = v114;
        static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(v135, v134);
        v64 = OUTLINED_FUNCTION_12_39();
        sub_1936161E4(v64, v65, v66, v67, v123);
        v68 = OUTLINED_FUNCTION_165_1();
        sub_1936161E4(v68, v69, v111, v120, v114);
        v70 = OUTLINED_FUNCTION_12_39();
        sub_1936161E4(v70, v71, v72, v73, v123);

        v74 = OUTLINED_FUNCTION_12_39();
        sub_193613BF4(v74, v75, v76, v77, v123);
        goto LABEL_17;
      }

      v85 = OUTLINED_FUNCTION_40_26();
      v80 = 0;
      sub_1936161E4(v85, v86, v87, v106, v123);
      v81 = v120;
      OUTLINED_FUNCTION_177_5();
      sub_1936161E4(v88, v89, v90, v120, 0);
      v91 = OUTLINED_FUNCTION_40_26();
      sub_1936161E4(v91, v92, v93, v106, v123);
    }

    else
    {
      v78 = OUTLINED_FUNCTION_55();
      sub_1936161E4(v78, v79, v129, v106, 0);
      v80 = v114;
      if (!v114)
      {
        sub_1936161E4(v108, v117, v111, v120, 0);
        v100 = OUTLINED_FUNCTION_40_26();
        sub_193613BF4(v100, v101, v102, v106, 0);
        goto LABEL_17;
      }

      v81 = v120;
      OUTLINED_FUNCTION_177_5();
      sub_1936161E4(v82, v83, v84, v120, v114);
    }

    v94 = OUTLINED_FUNCTION_40_26();
    sub_193613BF4(v94, v95, v96, v106, v123);
    OUTLINED_FUNCTION_177_5();
    sub_193613BF4(v97, v98, v99, v81, v80);
  }

LABEL_17:
  OUTLINED_FUNCTION_116();
}

void sub_19372B348()
{
  OUTLINED_FUNCTION_231_3();
  v2 = v1;
  OUTLINED_FUNCTION_59_19();
  memcpy(v3, v4, 0x50uLL);
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[14];
  v9 = v0[15];
  OUTLINED_FUNCTION_39_20();
  sub_193737464();
  v11 = OUTLINED_FUNCTION_114_0();
  v2(v11);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_196();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_104_0();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_146();
  sub_19393C640();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
LABEL_8:
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_196();

  sub_1934D11C8(v12, v13);
}

uint64_t sub_19372B424()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372B480()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

BOOL static ToolKitToolSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t ToolKitToolSystemToolProtocol.ConditionallyEnabled.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t ToolKitToolSystemToolProtocol.ConditionallyEnabled.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

void *ToolKitToolSystemToolProtocol.AssistantSchema.identifier.setter()
{
  OUTLINED_FUNCTION_59_19();
  memcpy(v0, v1, 0x50uLL);
  sub_19373797C(&v5);
  v2 = OUTLINED_FUNCTION_13_5();
  return memcpy(v2, v3, 0x50uLL);
}

double sub_19372B7A4(double (*a1)(_BYTE *), double a2)
{
  OUTLINED_FUNCTION_424(a2, xmmword_1939526A0);
  OUTLINED_FUNCTION_268_1(v5);
  v3 = a1(v5);
  return OUTLINED_FUNCTION_424(v3, xmmword_1939526A0);
}

void _s27IntelligencePlatformLibrary07ToolKitD18SystemTypeProtocolO15AssistantSchemaV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_276_3(&v151);
  OUTLINED_FUNCTION_268_1(&v153);
  v2 = v151;
  v3 = v152;
  v5 = v153;
  v4 = v154;
  if (v152 == 1)
  {
    if (v154 == 1)
    {
      *__src = v151;
      v138 = 1;
      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_294(&v151, &v127);
      OUTLINED_FUNCTION_294(&v153, &v127);
      OUTLINED_FUNCTION_15_1();
LABEL_9:
      sub_19344E6DC(v6, v7, v8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_12();
    sub_193448804(v45, v46, v47, v48);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v49, v50, v51, v52);
  }

  else
  {
    *__src = v151;
    OUTLINED_FUNCTION_280_1();
    v17 = OUTLINED_FUNCTION_183_3(v9, v10, v11, v12, v13, v14, v15, v16, *(v0 + 48), *(v0 + 64), v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, *v120, v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0], v3, v139, v140, v141, v142, v143, v144);
    if (v4 != 1)
    {
      v55 = OUTLINED_FUNCTION_410(v17, v18, v19, v20, v21, v22, v23, v24, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v5, v4, v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], v127);
      static ToolKitToolAssistantSchemaIdentifier.== infix(_:_:)(v55, v56, v57, v58, v59, v60, v61, v62, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, SBYTE1(v119), *v120, v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127, v128, v129, v130);
      OUTLINED_FUNCTION_297_2(v63, v64, v65, v66, v67, v68, v69, v70, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120[0]);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v71, v72, v73, v74);
      OUTLINED_FUNCTION_9_12();
      v79 = sub_193448804(v75, v76, v77, v78);
      OUTLINED_FUNCTION_225_3(v79, v80, v81, v82, v83, v84, v85, v86, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, *v120, v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
      OUTLINED_FUNCTION_9_12();
      sub_193448804(v87, v88, v89, v90);
      v91 = sub_193731678(&v102);
      OUTLINED_FUNCTION_290_1(v91, v92, v93, v94, v95, v96, v97, v98, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, *v120, v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127);
      sub_193731678(&v112);
      *v120 = v2;
      v121 = v3;
      v99 = *(v0 + 32);
      *v122 = *(v0 + 16);
      v123 = v99;
      v100 = *(v0 + 48);
      v101 = *(v0 + 64);
      OUTLINED_FUNCTION_409();
      OUTLINED_FUNCTION_175();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_285_2(v17, v18, v19, v20, v21, v22, v23, v24, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120[0], v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v25, v26, v27, v28);
    OUTLINED_FUNCTION_9_12();
    v33 = sub_193448804(v29, v30, v31, v32);
    OUTLINED_FUNCTION_225_3(v33, v34, v35, v36, v37, v38, v39, v40, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, *v120, v121, v122[0], v122[1], v123, *(&v123 + 1), v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
    OUTLINED_FUNCTION_9_12();
    sub_193448804(v41, v42, v43, v44);
    sub_193731678(v120);
  }

  *__src = v2;
  v138 = v3;
  OUTLINED_FUNCTION_193_2();
  v145 = v5;
  v146 = v4;
  v53 = *(v1 + 2);
  v147 = *(v1 + 1);
  v148 = v53;
  v54 = *(v1 + 4);
  v149 = *(v1 + 3);
  v150 = v54;
  sub_19344E6DC(__src, &qword_1EAE41AB0, &qword_1939807B0);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD18SystemTypeProtocolO15AssistantSchemaV9hashValueSivg_0()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_193737464();
  return sub_19393CB00();
}

uint64_t sub_19372BA48()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_433(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_193737464();
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD18RestrictionContextO15RepresentableAsV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_127();
      sub_19393C640();

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.id.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void ToolKitToolToolDefinition.Version1.toolType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolToolDefinition.Version1.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 56));
  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.outputResultName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sourceApplication.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 80), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 80));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41B10, &qword_193980818, v5);
}

void *ToolKitToolToolDefinition.Version1.sourceApplication.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 80), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41B10, &qword_193980818);
  return OUTLINED_FUNCTION_395((v0 + 80));
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionSummary.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionSummary.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.deprecationDefinition.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1934D1694(v2, v3);
}

__n128 ToolKitToolToolDefinition.Version1.deprecationDefinition.setter(uint64_t a1)
{
  v3 = v1[30];
  v4 = v1[31];
  sub_1934D16DC(v1[28], v1[29]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 14) = *a1;
  *(v1 + 15) = v6;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.requirements.setter(uint64_t a1)
{
  v3 = *(v1 + 256);

  *(v1 + 256) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 264);

  *(v1 + 264) = a1;
  return result;
}

void ToolKitToolToolDefinition.Version1.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 281);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolToolDefinition.Version1.authenticationPolicy.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 272) = *result;
  *(v1 + 280) = v2;
  *(v1 + 281) = v3;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 288);

  *(v1 + 288) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.customIcon.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1934354B4(*(v1 + 304));
  *(v1 + 304) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 312);

  *(v1 + 312) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.sourceContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 320), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 320));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolToolDefinition.Version1.sourceContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 320), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 320));
}

uint64_t ToolKitToolToolDefinition.Version1.attributionContainer.getter()
{
  OUTLINED_FUNCTION_342();
  v2 = memcpy(v1, (v0 + 432), 0x70uLL);
  v3 = OUTLINED_FUNCTION_455(v2, (v0 + 432));
  return OUTLINED_FUNCTION_394(v3, v4, &qword_1EAE41A98, &qword_193980798, v5);
}

void *ToolKitToolToolDefinition.Version1.attributionContainer.setter()
{
  OUTLINED_FUNCTION_108_13();
  memcpy(v1, (v0 + 432), 0x70uLL);
  sub_19344E6DC(&v3, &qword_1EAE41A98, &qword_193980798);
  return OUTLINED_FUNCTION_395((v0 + 432));
}

uint64_t ToolKitToolToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 544);

  *(v1 + 544) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionAttribution.getter()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 560);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionAttribution.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 560);

  *(v1 + 552) = v2;
  *(v1 + 560) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionResult.getter()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 576);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionResult.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 576);

  *(v1 + 568) = v2;
  *(v1 + 576) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionNote.getter()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 592);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionNote.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 592);

  *(v1 + 584) = v2;
  *(v1 + 592) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionRequires.getter()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 608);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ToolKitToolToolDefinition.Version1.descriptionRequires.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 608);

  *(v1 + 600) = v2;
  *(v1 + 608) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.backingLinkActionIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 616);

  *(v1 + 616) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.additionalAttributionContainers.setter(uint64_t a1)
{
  v3 = *(v1 + 624);

  *(v1 + 624) = a1;
  return result;
}

double ToolKitToolToolDefinition.Version1.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0xF000000000000007;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 80) = 0u;
  v2 = (a1 + 80);
  *(a1 + 224) = xmmword_1939526A0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 256;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 304) = 0xF000000000000007;
  v3 = (a1 + 552);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 25) = 0u;
  bzero((a1 + 320), 0xE0uLL);
  *(a1 + 41) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  sub_193444060(0xF000000000000007);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0xF000000000000007;
  memcpy(__dst, v2, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE41B10, &qword_193980818);
  *v2 = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = v4;
  *(a1 + 216) = v4;
  v5 = *(a1 + 240);
  v6 = *(a1 + 248);
  sub_1934D16DC(*(a1 + 224), *(a1 + 232));
  *(a1 + 224) = xmmword_1939526A0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v4;
  *(a1 + 264) = v4;
  *(a1 + 272) = 0;
  *(a1 + 280) = 256;
  *(a1 + 288) = v4;
  *(a1 + 296) = v4;
  sub_1934354B4(*(a1 + 304));
  *(a1 + 304) = 0xF000000000000007;
  *(a1 + 312) = v4;
  memcpy(v15, (a1 + 320), sizeof(v15));
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v7, v8, v9);
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  memcpy(v16, (a1 + 432), sizeof(v16));
  OUTLINED_FUNCTION_188_4();
  sub_19344E6DC(v10, v11, v12);
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = v4;
  *v3 = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = v4;
  *(a1 + 624) = v4;
  return result;
}

uint64_t sub_19372C874@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C89C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.ToolType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C98C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372C9B4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.Flag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CAA4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.VisibilityFlag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CACC@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.VisibilityFlag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CBBC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372CBE4@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.AuthenticationPolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.key.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.description.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.valueType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 48));
  *(v1 + 48) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.parentToolMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1937379AC(v2, v3, v4);
}

__n128 ToolKitToolToolDefinition.Version1.Parameter.parentToolMetadata.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_19344B604(v1[10], v1[11], v1[12]);
  result = v4;
  *(v1 + 5) = v4;
  v1[12] = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.BOOLeanMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1934D1694(v2, v3);
}

__n128 ToolKitToolToolDefinition.Version1.Parameter.BOOLeanMetadata.setter(uint64_t a1)
{
  v3 = v1[15];
  v4 = v1[16];
  sub_1934D16DC(v1[13], v1[14]);
  result = *a1;
  *(v1 + 15) = *(a1 + 16);
  *(v1 + 13) = result;
  return result;
}

double ToolKitToolToolDefinition.Version1.Parameter.init()@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_193444060(v3);
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v4;
  sub_19344B604(0, 0, 0);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v5 = OUTLINED_FUNCTION_107_13();
  sub_1934D16DC(v5, v6);
  result = 0.0;
  *(v1 + 104) = xmmword_1939526A0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

uint64_t sub_19372D0A8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372D0D0@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v1 + 16) = v2;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter()
{
  OUTLINED_FUNCTION_301_1();

  *v1 = v0;
  return result;
}

IntelligencePlatformLibrary::ToolKitToolToolDefinition::Version1::Parameter::Relationship::Relation::GreaterThan __swiftcall ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.init()()
{
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 2;
  return result;
}

BOOL _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV2eeoiySbAM_AMtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  OUTLINED_FUNCTION_49_21();
  v7 = OUTLINED_FUNCTION_102_8(v6);
  if ((sub_1937148A0(v7, v8, v9) & 1) == 0)
  {
    return 0;
  }

  if (v3 != 2)
  {
    return v5 != 2 && ((v5 ^ v3) & 1) == 0;
  }

  return v5 == 2;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_48_21();
  sub_193737244(v3);
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitdD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationO11GreaterThanV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_48_21();
  v11 = OUTLINED_FUNCTION_99(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  sub_193737244(v11);
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19372D49C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_180_7();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_432(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

BOOL static ToolKitToolToolDefinition.Version1.Parameter.Relationship.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_436(a1);
  v4 = v3[1];
  v5 = v3[2];
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v2, v3);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_147_8();
  if (!v9)
  {
    OUTLINED_FUNCTION_287_2();
    if (!v12)
    {
      v15 = OUTLINED_FUNCTION_44_22();
      v23 = OUTLINED_FUNCTION_143_7(v15, v16, v17, v18, v19, v20, v21, v22, v5, v44);
      v25 = static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(v23, v24);
      v26 = v25;
      OUTLINED_FUNCTION_126_9(v25, v27, v28, v29, v30, v31, v32, v33, v42);

      OUTLINED_FUNCTION_98_15(v34, v35, v36, v37, v38, v39, v40, v41, v43, v45);

      sub_193444060(v1);
      return (v26 & 1) != 0;
    }

    OUTLINED_FUNCTION_44_22();

LABEL_17:
    v13 = OUTLINED_FUNCTION_267_2();
    sub_193444060(v13);
    return 0;
  }

  v11 = v10 & ~v5;
  OUTLINED_FUNCTION_120_8();
  if (v11)
  {
    goto LABEL_17;
  }

  sub_193444060(v1);
  return 1;
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    v4 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v4, v5, v6, v7, v8, v9, v10, v11, v30, v32);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  OUTLINED_FUNCTION_251_0();
  if (v12)
  {
    OUTLINED_FUNCTION_456();
  }

  else
  {
    OUTLINED_FUNCTION_123();

    OUTLINED_FUNCTION_298_1(v13, v14, v15, v16, v17, v18, v19, v20, v3, v32);
    v21 = ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();
    OUTLINED_FUNCTION_126_9(v21, v22, v23, v24, v25, v26, v27, v28, v31);
  }

  return sub_19393CB00();
}

uint64_t sub_19372D7EC()
{
  OUTLINED_FUNCTION_62_20();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  ToolKitToolToolDefinition.Version1.Parameter.Relationship.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_436(a1);
  v3 = v2[1];
  v4 = v2[2];
  if (v5)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_155(v1, v2);
      v8 = v8 && v6 == v7;
      if (v8 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v3)
  {
    return 0;
  }

LABEL_8:
  v9 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v9, v10);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v3 = v1[2];
  if (v1[1])
  {
    v4 = *v1;
    sub_19393CAD0();
    OUTLINED_FUNCTION_1_55();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_1934D11C8(a1, v3);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD17IdSearchPredicateV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_175();
    v4 = sub_19393C640();
  }

  else
  {
    v4 = sub_19393CAD0();
  }

  v12 = OUTLINED_FUNCTION_99(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_1934D11C8(v12, v13);
  return sub_19393CB00();
}

uint64_t sub_19372D9BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_19393CAB0();
  if (v2)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_175();
    v4 = sub_19393C640();
  }

  else
  {
    v4 = sub_19393CAD0();
  }

  v12 = OUTLINED_FUNCTION_99(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_1934D11C8(v12, v13);
  return sub_19393CB00();
}

void static ToolKitToolToolDefinition.Version1.Parameter.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_271_1();
  a49 = v50;
  a50 = v52;
  v54 = v53;
  v55 = v51[1];
  v211 = v51[2];
  v57 = v51[3];
  v56 = v51[4];
  v59 = v51[5];
  v58 = v51[6];
  v60 = v51[7];
  v61 = v51[8];
  v63 = v51[9];
  v62 = v51[10];
  v64 = v51[11];
  v65 = v51[12];
  v66 = v51[13];
  v67 = v51[14];
  v207 = v51[15];
  v68 = v51[16];
  v69 = v54[1];
  v70 = v54[3];
  v208 = v54[4];
  v209 = v54[2];
  v71 = v54[6];
  v214 = v54[5];
  v73 = v54[7];
  v72 = v54[8];
  v74 = v54[9];
  v75 = v54[10];
  v76 = v54[11];
  v77 = v54[12];
  v79 = v54[13];
  v78 = v54[14];
  v80 = v54[15];
  v206 = v54[16];
  if (!v55)
  {
    v205 = v51[4];
    if (v69)
    {
      goto LABEL_56;
    }

LABEL_10:
    if (v57)
    {
      if (!v70)
      {
        goto LABEL_56;
      }

      if (v211 != v209 || v57 != v70)
      {
        v190 = v63;
        v194 = v74;
        v186 = v68;
        v91 = v64;
        v212 = v62;
        v177 = v77;
        v180 = v66;
        v182 = v76;
        v92 = v65;
        v93 = v75;
        v94 = v58;
        v198 = v72;
        v202 = v61;
        v95 = sub_19393CA30();
        v74 = v194;
        v72 = v198;
        v61 = v202;
        v58 = v94;
        v68 = v186;
        v63 = v190;
        v75 = v93;
        v65 = v92;
        v76 = v182;
        v77 = v177;
        v66 = v180;
        v62 = v212;
        v64 = v91;
        if ((v95 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v70)
    {
      goto LABEL_56;
    }

    if (v59)
    {
      if (!v214)
      {
        goto LABEL_56;
      }

      if (v205 != v208 || v59 != v214)
      {
        v191 = v63;
        v195 = v74;
        v187 = v68;
        v97 = v64;
        v98 = v62;
        v178 = v77;
        v181 = v66;
        v183 = v76;
        v99 = v65;
        v100 = v75;
        v101 = v58;
        v199 = v72;
        v203 = v61;
        v102 = sub_19393CA30();
        v74 = v195;
        v72 = v199;
        v61 = v203;
        v58 = v101;
        v68 = v187;
        v63 = v191;
        v75 = v100;
        v65 = v99;
        v76 = v183;
        v77 = v178;
        v66 = v181;
        v62 = v98;
        v64 = v97;
        if ((v102 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v214)
    {
      goto LABEL_56;
    }

    if ((~v58 & 0xF000000000000007) != 0)
    {
      a34 = v58;
      if ((~v71 & 0xF000000000000007) != 0)
      {
        v196 = v74;
        v200 = v72;
        v204 = v61;
        v188 = v68;
        v192 = v63;
        v213 = v62;
        v215 = v75;
        v210 = v65;
        v172 = v79;
        v174 = v80;
        v103 = v64;
        v170 = v67;
        a30 = v71;
        v105 = v58;
        sub_193437C90(v58);
        OUTLINED_FUNCTION_258_2();
        v106 = static ToolKitToolTypeInstance.== infix(_:_:)(&a34, &a30);

        sub_193444060(v105);
        if ((v106 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_35:
        v107 = OUTLINED_FUNCTION_208();
        if ((sub_193713D4C(v107, v108) & 1) == 0 || (sub_1937139C8(v204, v200) & 1) == 0 || (sub_193714598(v192, v196, ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.rawValue.getter, v109) & 1) == 0)
        {
          goto LABEL_56;
        }

        if (v210)
        {
          if (v77)
          {
            if (v103)
            {
              if (!v76 || (v213 == v215 ? (v110 = v103 == v76) : (v110 = 0), !v110 && (sub_19393CA30() & 1) == 0))
              {
                v111 = v103;
LABEL_54:
                sub_1937379AC(v213, v111, v210);
                OUTLINED_FUNCTION_146();
                sub_1937379AC(v127, v128, v129);
                sub_1937379AC(v213, v111, v210);
                OUTLINED_FUNCTION_146();
                sub_19344B604(v130, v131, v132);

                OUTLINED_FUNCTION_194_3();
                goto LABEL_55;
              }
            }

            else if (v76)
            {
              v111 = 0;
              goto LABEL_54;
            }

            v133 = OUTLINED_FUNCTION_82();
            v135 = sub_19344FC94(v133, v134);
            v136 = OUTLINED_FUNCTION_145_9();
            sub_1937379AC(v136, v137, v138);
            OUTLINED_FUNCTION_146();
            sub_1937379AC(v139, v140, v141);
            v142 = OUTLINED_FUNCTION_145_9();
            sub_1937379AC(v142, v143, v144);
            OUTLINED_FUNCTION_146();
            sub_19344B604(v145, v146, v147);

            v148 = OUTLINED_FUNCTION_145_9();
            sub_19344B604(v148, v149, v150);
            if ((v135 & 1) == 0)
            {
              goto LABEL_56;
            }

LABEL_60:
            if (v170 == 1)
            {
              v151 = v78;
              sub_1934D1694(v66, 1);
              v152 = v172;
              if (v78 == 1)
              {
                v153 = OUTLINED_FUNCTION_37_7();
                sub_1934D1694(v153, v154);
                sub_1934D16DC(v66, 1);
                goto LABEL_56;
              }

              sub_1934D1694(v172, v78);
            }

            else
            {
              a34 = v66;
              a35 = v170;
              a36 = v207;
              a37 = v188;
              v152 = v172;
              if (v78 != 1)
              {
                a30 = v172;
                a31 = v78;
                a32 = v174;
                a33 = v206;
                static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(&a34);
                OUTLINED_FUNCTION_253_2();
                sub_1934D1694(v161, v162);
                OUTLINED_FUNCTION_333();
                sub_1934D1694(v163, v164);
                OUTLINED_FUNCTION_10_0();
                sub_1934D1694(v165, v166);

                OUTLINED_FUNCTION_10_0();
                sub_1934D16DC(v167, v168);
                goto LABEL_56;
              }

              v151 = 1;
              sub_1934D1694(v66, v170);
              v155 = OUTLINED_FUNCTION_37_7();
              sub_1934D1694(v155, v156);
              v157 = OUTLINED_FUNCTION_1_55();
              sub_1934D1694(v157, v158);
            }

            v159 = OUTLINED_FUNCTION_24_1();
            sub_1934D16DC(v159, v160);
            sub_1934D16DC(v152, v151);
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_194_3();
          sub_1937379AC(v115, v116, v117);
          sub_1937379AC(v215, v76, 0);
          OUTLINED_FUNCTION_194_3();
          sub_1937379AC(v118, v119, v120);
        }

        else
        {
          sub_1937379AC(v213, v103, 0);
          if (!v77)
          {
            sub_1937379AC(v215, v76, 0);
            sub_19344B604(v213, v103, 0);
            goto LABEL_60;
          }

          OUTLINED_FUNCTION_146();
          sub_1937379AC(v112, v113, v114);
        }

        OUTLINED_FUNCTION_194_3();
        sub_19344B604(v121, v122, v123);
        OUTLINED_FUNCTION_146();
LABEL_55:
        sub_19344B604(v124, v125, v126);
        goto LABEL_56;
      }

      v104 = v58;
      sub_193437C90(v58);
      OUTLINED_FUNCTION_161_7(v71);
    }

    else
    {
      v196 = v74;
      v200 = v72;
      v204 = v61;
      v188 = v68;
      v192 = v63;
      v213 = v62;
      v215 = v75;
      v210 = v65;
      v172 = v79;
      v174 = v80;
      v103 = v64;
      v170 = v67;
      v104 = v58;
      sub_193437C90(v58);
      sub_193437C90(v71);
      if ((~v71 & 0xF000000000000007) == 0)
      {
        sub_193444060(v104);
        goto LABEL_35;
      }
    }

    sub_193444060(v104);
    sub_193444060(v71);
    goto LABEL_56;
  }

  if (v69)
  {
    v205 = v51[4];
    if (*v51 == *v54 && v55 == v69)
    {
      goto LABEL_10;
    }

    v189 = v51[9];
    v193 = v54[9];
    v171 = v54[13];
    v173 = v54[15];
    v184 = v54[14];
    v169 = v51[14];
    v176 = v54[12];
    v179 = v51[13];
    v185 = v51[16];
    v82 = v51[11];
    v83 = v51[10];
    v84 = v51[12];
    v85 = v54[10];
    v86 = v51[6];
    v197 = v54[8];
    v201 = v51[8];
    v175 = v54[6];
    v87 = v51[7];
    v88 = v54[7];
    v89 = sub_19393CA30();
    v74 = v193;
    v72 = v197;
    v61 = v201;
    v58 = v86;
    v68 = v185;
    v63 = v189;
    v75 = v85;
    v65 = v84;
    v71 = v175;
    v77 = v176;
    v62 = v83;
    v64 = v82;
    v67 = v169;
    v79 = v171;
    v66 = v179;
    v78 = v184;
    v80 = v173;
    if (v89)
    {
      goto LABEL_10;
    }
  }

LABEL_56:
  OUTLINED_FUNCTION_269_2();
}

void ToolKitToolToolDefinition.Version1.Parameter.hash(into:)()
{
  OUTLINED_FUNCTION_231_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  v19 = v0[4];
  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[9];
  v5 = v0[12];
  v17 = v0[13];
  v23 = v0[11];
  v24 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v18 = v0[10];
  if (v0[1])
  {
    v8 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_97_10();
  sub_19393C640();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  OUTLINED_FUNCTION_380();
  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeInstance.hash(into:)();
  }

  v10 = OUTLINED_FUNCTION_261_0();
  sub_193736820(v10, v11);
  v12 = OUTLINED_FUNCTION_439();
  sub_1937364D0(v12, v13);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  if (v5)
  {
    OUTLINED_FUNCTION_103_0();
    if (v23)
    {
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_259_1();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v14 = OUTLINED_FUNCTION_114_0();
    sub_1934D11C8(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v24 == 1)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_103_0();
  if (!v24)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_20;
    }

LABEL_24:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_196();
    return;
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_345_0();
  sub_19393C640();
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_20:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t sub_19372E36C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372E3C8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19372E434@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19372E45C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

double ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void static ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_329_0();
  v42 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 25);
  v13 = *(v1 + 32);
  v12 = *(v1 + 40);
  v14 = *(v1 + 48);
  v15 = *(v1 + 56);
  if (*(v0 + 8))
  {
    if (!v8)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_155(v0, v1);
    v18 = v18 && v16 == v17;
    if (!v18)
    {
      v40 = v14;
      v41 = v5;
      v39 = v15;
      v19 = v7;
      v20 = v6;
      v21 = v4;
      v22 = v12;
      v23 = v13;
      v24 = sub_19393CA30();
      v13 = v23;
      v12 = v22;
      v4 = v21;
      v6 = v20;
      v7 = v19;
      v15 = v39;
      v14 = v40;
      v5 = v41;
      if ((v24 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_331_0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
    v34 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
    v13 = v32;
    v12 = v30;
    v4 = v28;
    v6 = v26;
    if (v33 != v34)
    {
      goto LABEL_31;
    }
  }

  if (v5)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    if (v4 != v13 || v5 != v12)
    {
      v36 = v6;
      v37 = sub_19393CA30();
      v6 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_31;
  }

  if (v7 && v15 && (v6 != v14 || v7 != v15))
  {
    OUTLINED_FUNCTION_146();
    sub_19393CA30();
  }

LABEL_31:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[7];
  v10 = v0[6];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_262_0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_104_0();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      OUTLINED_FUNCTION_104_0();
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_107();
      return;
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v9 = ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.rawValue.getter();
  MEMORY[0x193B18030](v9);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_10_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_186_3();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO022ActionParameterDefaultgI0V2eeoiySbAI_AItFZ_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_436(a1);
  v4 = v2[3];
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  if (v8)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(v2, v3);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      if (v1 == v6 && v4 == v7)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO022ActionParameterDefaultgI0V4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    OUTLINED_FUNCTION_302();
    if (v2)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_302();
  }

  v3 = *v0;
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_32_4();
  sub_19393C640();
  if (!v2)
  {
    return OUTLINED_FUNCTION_302();
  }

LABEL_3:
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

void static ToolKitToolToolDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v246 = v2[2];
  v250 = v2[3];
  v241 = v2[4];
  v240 = *(v2 + 40);
  LODWORD(v249) = *(v2 + 41);
  v243 = v2[6];
  v237 = v2[7];
  v233 = v2[8];
  v235 = v2[9];
  memcpy(__dst, v2 + 10, sizeof(__dst));
  v225 = v3[24];
  v227 = v3[26];
  v223 = v3[27];
  v251 = v3[28];
  v229 = v3[25];
  v230 = v3[30];
  v231 = v3[31];
  v216 = v3[32];
  v217 = v3[29];
  v214 = v3[33];
  v209 = v3[34];
  HIDWORD(v208) = *(v3 + 280);
  HIDWORD(v212) = *(v3 + 281);
  v211 = v3[36];
  v204 = v3[37];
  v6 = v3[38];
  v202 = v3[39];
  memcpy(v267, v3 + 40, sizeof(v267));
  memcpy(v268, v3 + 54, sizeof(v268));
  v190 = v3[68];
  v191 = v3[70];
  v192 = v3[69];
  v193 = v3[72];
  v194 = v3[71];
  v195 = v3[74];
  v196 = v3[73];
  v197 = v3[76];
  v198 = v3[75];
  v199 = v3[77];
  v200 = v3[78];
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v245 = *(v1 + 16);
  v239 = *(v1 + 32);
  v238 = *(v1 + 40);
  v247 = *(v1 + 41);
  v242 = *(v1 + 48);
  v236 = *(v1 + 56);
  v232 = *(v1 + 64);
  v234 = *(v1 + 72);
  memcpy(__src, (v1 + 80), sizeof(__src));
  v224 = *(v1 + 192);
  v228 = *(v1 + 200);
  v226 = *(v1 + 208);
  v221 = *(v1 + 232);
  v222 = *(v1 + 216);
  v218 = *(v1 + 224);
  v219 = *(v1 + 240);
  v220 = *(v1 + 248);
  v215 = *(v1 + 256);
  v213 = *(v1 + 264);
  v207 = *(v1 + 272);
  HIDWORD(v206) = *(v1 + 280);
  LODWORD(v212) = *(v1 + 281);
  v210 = *(v1 + 288);
  v203 = *(v1 + 296);
  v205 = *(v1 + 304);
  v201 = *(v1 + 312);
  memcpy(v270, (v1 + 320), sizeof(v270));
  memcpy(v271, (v1 + 432), sizeof(v271));
  v10 = *(v1 + 544);
  v11 = *(v1 + 552);
  v12 = *(v1 + 560);
  v13 = *(v1 + 568);
  v14 = *(v1 + 576);
  v15 = *(v1 + 584);
  v16 = *(v1 + 600);
  v17 = *(v1 + 624);
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_32;
    }

LABEL_10:
    if (v250)
    {
      v22 = v251;
      if (!v9)
      {
        goto LABEL_32;
      }

      if (v246 != v245 || v250 != v9)
      {
        v8 = v16;
        v187 = v10;
        v1 = v12;
        v9 = v17;
        v22 = v251;
        if ((sub_19393CA30() & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v22 = v251;
      if (v9)
      {
        goto LABEL_32;
      }
    }

    if (v249)
    {
      OUTLINED_FUNCTION_251_1();
      if ((v247 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v247)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_251_1();
      *v260 = v241;
      v260[8] = v240 & 1;
      *v256 = v239;
      LOBYTE(v257) = v238 & 1;
      v24 = v12;
      v25 = v13;
      v26 = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
      v22 = v251;
      v18 = v26 == ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter();
      v13 = v25;
      v12 = v24;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    if ((sub_193713748(v243, v242) & 1) == 0)
    {
      goto LABEL_32;
    }

    if ((~v237 & 0xF000000000000007) != 0)
    {
      *v260 = v237;
      v27 = v236;
      if ((~v236 & 0xF000000000000007) != 0)
      {
        v248 = v13;
        *v256 = v236;
        OUTLINED_FUNCTION_446(v237);
        sub_193437C90(v237);
        v28 = static ToolKitToolTypeInstance.== infix(_:_:)(v260, v256);

        sub_193444060(v237);
        if ((v28 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v235)
        {
          if (!v234)
          {
            goto LABEL_32;
          }

          v29 = v233 == v232 && v235 == v234;
          if (!v29 && (sub_19393CA30() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v234)
        {
          goto LABEL_32;
        }

        memcpy(v265, __dst, sizeof(v265));
        v30 = __dst[13];
        memcpy(v264, __src, sizeof(v264));
        v31 = __src[13];
        if (__dst[13])
        {
          memcpy(v260, __dst, sizeof(v260));
          v261 = __dst[13];
          OUTLINED_FUNCTION_358_1(v256);
          if (v31)
          {
            memcpy(v254, __src, sizeof(v254));
            v255 = v31;
            OUTLINED_FUNCTION_420();
            sub_193448804(v32, v33, v34, v35);
            OUTLINED_FUNCTION_420();
            sub_193448804(v36, v37, v38, v39);
            OUTLINED_FUNCTION_332_0();
            OUTLINED_FUNCTION_420();
            sub_193448804(v40, v41, v42, v43);
            static ToolKitToolAppDefinition.== infix(_:_:)(v256, v254, v44, v45, v46, v47, v48, v49, v180, v181, v183, v185, v186, v187, v6, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
            v51 = v50;
            OUTLINED_FUNCTION_356_1();
            sub_1937379F0(v252);
            OUTLINED_FUNCTION_355_1();
            sub_1937379F0(v253);
            OUTLINED_FUNCTION_357_0();
            v255 = v30;
            sub_19344E6DC(v254, &qword_1EAE41B10, &qword_193980818);
            if ((v51 & 1) == 0)
            {
              goto LABEL_32;
            }

LABEL_53:
            if (v229)
            {
              v64 = v230;
              v65 = v231;
              if (!v228)
              {
                goto LABEL_32;
              }

              v66 = v225 == v224 && v229 == v228;
              if (!v66 && (sub_19393CA30() & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v64 = v230;
              v65 = v231;
              if (v228)
              {
                goto LABEL_32;
              }
            }

            if ((sub_193713858(v227, v226) & 1) == 0 || (sub_19344FC94(v223, v222) & 1) == 0)
            {
              goto LABEL_32;
            }

            v188 = v10;
            v244 = v8;
            v182 = v9;
            v184 = v12;
            if (v217 == 1)
            {
              OUTLINED_FUNCTION_173();
              OUTLINED_FUNCTION_75_0();
              sub_1934D1694(v67, v68);
              if (v221 == 1)
              {
                sub_1934D1694(v218, 1);
                OUTLINED_FUNCTION_173();
                OUTLINED_FUNCTION_75_0();
                sub_1934D16DC(v69, v70);
                goto LABEL_72;
              }

              sub_1934D1694(v218, v221);
            }

            else
            {
              *v260 = v22;
              *&v260[8] = v217;
              *&v260[16] = v64;
              *&v260[24] = v65;
              if (v221 != 1)
              {
                *v256 = v218;
                v257 = v221;
                v258 = v219;
                v259 = v220;
                v79 = static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v260);
                v80 = OUTLINED_FUNCTION_61_21();
                sub_1934D1694(v80, v81);
                OUTLINED_FUNCTION_146();
                sub_1934D1694(v82, v83);
                v84 = OUTLINED_FUNCTION_61_21();
                sub_1934D1694(v84, v85);

                v86 = OUTLINED_FUNCTION_61_21();
                sub_1934D16DC(v86, v87);
                if ((v79 & 1) == 0)
                {
                  goto LABEL_32;
                }

LABEL_72:
                if ((sub_193713908(v216, v215) & 1) == 0 || (sub_193714598(v214, v213, ToolKitToolToolDefinition.Version1.Flag.rawValue.getter, v88) & 1) == 0)
                {
                  goto LABEL_32;
                }

                if ((v212 & 0x100000000) != 0)
                {
                  if ((v212 & 1) == 0)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  if (v212)
                  {
                    goto LABEL_32;
                  }

                  *v260 = v209;
                  v260[8] = BYTE4(v208) & 1;
                  *v256 = v207;
                  LOBYTE(v257) = BYTE4(v206) & 1;
                  v89 = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter();
                  if (v89 != ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter())
                  {
                    goto LABEL_32;
                  }
                }

                if ((sub_1937139C8(v211, v210) & 1) == 0 || !sub_193713B7C(v204, v203))
                {
                  goto LABEL_32;
                }

                if ((~v189 & 0xF000000000000007) != 0)
                {
                  *v260 = v189;
                  if ((~v205 & 0xF000000000000007) != 0)
                  {
                    *v256 = v205;
                    sub_193438388(v189);
                    sub_193438388(v205);
                    sub_193438388(v189);
                    v90 = static ToolKitToolToolDefinition.Version1.ToolIcon.== infix(_:_:)(v260, v256);

                    sub_1934354B4(v189);
                    if ((v90 & 1) == 0)
                    {
                      goto LABEL_32;
                    }

LABEL_88:
                    if ((sub_193713748(v202, v201) & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    memcpy(v265, v267, sizeof(v265));
                    v91 = v267[13];
                    memcpy(v264, v270, sizeof(v264));
                    v92 = v270[13];
                    if (v267[13])
                    {
                      memcpy(v260, v267, sizeof(v260));
                      v261 = v267[13];
                      OUTLINED_FUNCTION_358_1(v256);
                      if (!v92)
                      {
LABEL_103:
                        OUTLINED_FUNCTION_358_1(v254);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v156, v157, v158, v159);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v160, v161, v162, v163);
                        OUTLINED_FUNCTION_332_0();
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v164, v165, v166, v167);
                        sub_193713244(v254);
                        goto LABEL_104;
                      }

                      memcpy(v254, v270, sizeof(v254));
                      v255 = v92;
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v93, v94, v95, v96);
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v97, v98, v99, v100);
                      OUTLINED_FUNCTION_332_0();
                      OUTLINED_FUNCTION_9_12();
                      sub_193448804(v101, v102, v103, v104);
                      static ToolKitToolContainerDefinition.== infix(_:_:)(v256, v254, v105, v106, v107, v108, v109, v110, v180, v9, v12, v185, v186, v10, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
                      v112 = v111;
                      OUTLINED_FUNCTION_356_1();
                      sub_193713244(v252);
                      OUTLINED_FUNCTION_355_1();
                      sub_193713244(v253);
                      OUTLINED_FUNCTION_357_0();
                      v255 = v91;
                      OUTLINED_FUNCTION_175();
                      sub_19344E6DC(v113, v114, v115);
                      if ((v112 & 1) == 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    else
                    {
                      if (v270[13])
                      {
                        goto LABEL_102;
                      }

                      memcpy(v260, v267, sizeof(v260));
                      v261 = 0;
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v116, v117, v118, v119);
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v120, v121, v122, v123);
                      OUTLINED_FUNCTION_247_2(v260);
                    }

                    memcpy(v265, v268, sizeof(v265));
                    v91 = v268[13];
                    memcpy(v264, v271, sizeof(v264));
                    v92 = v271[13];
                    if (v268[13])
                    {
                      memcpy(v260, v268, sizeof(v260));
                      v261 = v268[13];
                      OUTLINED_FUNCTION_358_1(v256);
                      if (v92)
                      {
                        memcpy(v254, v271, sizeof(v254));
                        v255 = v92;
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v124, v125, v126, v127);
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v128, v129, v130, v131);
                        OUTLINED_FUNCTION_332_0();
                        OUTLINED_FUNCTION_9_12();
                        sub_193448804(v132, v133, v134, v135);
                        static ToolKitToolContainerDefinition.== infix(_:_:)(v256, v254, v136, v137, v138, v139, v140, v141, v180, v182, v184, v185, v186, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
                        v143 = v142;
                        OUTLINED_FUNCTION_356_1();
                        sub_193713244(v252);
                        OUTLINED_FUNCTION_355_1();
                        sub_193713244(v253);
                        OUTLINED_FUNCTION_357_0();
                        v255 = v91;
                        OUTLINED_FUNCTION_175();
                        sub_19344E6DC(v144, v145, v146);
                        if ((v143 & 1) == 0)
                        {
                          goto LABEL_32;
                        }

LABEL_106:
                        if ((sub_193714598(v190, v188, ToolKitToolToolDefinition.Version1.VisibilityFlag.rawValue.getter, v147) & 1) == 0)
                        {
                          goto LABEL_32;
                        }

                        if (v191)
                        {
                          if (!v184)
                          {
                            goto LABEL_32;
                          }

                          v176 = v192 == v1 && v191 == v184;
                          if (!v176 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v184)
                        {
                          goto LABEL_32;
                        }

                        if (v193)
                        {
                          if (!v245)
                          {
                            goto LABEL_32;
                          }

                          v177 = v194 == v248 && v193 == v245;
                          if (!v177 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v245)
                        {
                          goto LABEL_32;
                        }

                        if (v195)
                        {
                          if (!v246)
                          {
                            goto LABEL_32;
                          }

                          v178 = v196 == v244 && v195 == v246;
                          if (!v178 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v246)
                        {
                          goto LABEL_32;
                        }

                        if (v197)
                        {
                          if (!v250)
                          {
                            goto LABEL_32;
                          }

                          v179 = v198 == v249 && v197 == v250;
                          if (!v179 && (sub_19393CA30() & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v250)
                        {
                          goto LABEL_32;
                        }

                        if (sub_19344FC94(v199, v186))
                        {
                          sub_193713C3C(v200, v182);
                        }

                        goto LABEL_32;
                      }

                      goto LABEL_103;
                    }

                    if (!v271[13])
                    {
                      memcpy(v260, v268, sizeof(v260));
                      v261 = 0;
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v168, v169, v170, v171);
                      OUTLINED_FUNCTION_75_0();
                      sub_193448804(v172, v173, v174, v175);
                      OUTLINED_FUNCTION_247_2(v260);
                      goto LABEL_106;
                    }

LABEL_102:
                    OUTLINED_FUNCTION_9_12();
                    sub_193448804(v148, v149, v150, v151);
                    OUTLINED_FUNCTION_9_12();
                    sub_193448804(v152, v153, v154, v155);
LABEL_104:
                    memcpy(v260, v265, sizeof(v260));
                    v261 = v91;
                    memcpy(v262, v264, sizeof(v262));
                    v263 = v92;
                    v54 = &qword_1EAE41AA0;
                    v55 = &qword_1939807A0;
                    goto LABEL_51;
                  }

                  sub_193438388(v189);
                  sub_193438388(v205);
                  sub_193438388(v189);
                }

                else
                {
                  sub_193438388(v189);
                  sub_193438388(v205);
                  if ((~v205 & 0xF000000000000007) == 0)
                  {
                    sub_1934354B4(v189);
                    goto LABEL_88;
                  }
                }

                sub_1934354B4(v189);
                sub_1934354B4(v205);
                goto LABEL_32;
              }

              v71 = OUTLINED_FUNCTION_61_21();
              sub_1934D1694(v71, v72);
              sub_1934D1694(v218, 1);
              v73 = OUTLINED_FUNCTION_61_21();
              sub_1934D1694(v73, v74);
            }

            OUTLINED_FUNCTION_75_0();
            sub_1934D16DC(v75, v76);
            OUTLINED_FUNCTION_46_14();
            sub_1934D16DC(v77, v78);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_358_1(v254);
          OUTLINED_FUNCTION_393(__dst, v253);
          OUTLINED_FUNCTION_393(__src, v253);
          v52 = OUTLINED_FUNCTION_332_0();
          OUTLINED_FUNCTION_393(v52, v53);
          sub_1937379F0(v254);
        }

        else
        {
          if (!__src[13])
          {
            v189 = v6;
            memcpy(v260, __dst, sizeof(v260));
            v261 = 0;
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v56, v57, v58, v59);
            OUTLINED_FUNCTION_75_0();
            sub_193448804(v60, v61, v62, v63);
            OUTLINED_FUNCTION_247_2(v260);
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_393(__dst, v260);
          OUTLINED_FUNCTION_393(__src, v260);
        }

        memcpy(v260, v265, sizeof(v260));
        v261 = v30;
        memcpy(v262, v264, sizeof(v262));
        v263 = v31;
        v54 = &unk_1EAE41B18;
        v55 = &unk_193980820;
LABEL_51:
        sub_19344E6DC(v260, v54, v55);
        goto LABEL_32;
      }

      sub_193437C90(v237);
      OUTLINED_FUNCTION_161_7(v236);
    }

    else
    {
      v248 = v13;
      v27 = v236;
      OUTLINED_FUNCTION_446(v237);
      if ((~v236 & 0xF000000000000007) == 0)
      {
        sub_193444060(v237);
        goto LABEL_34;
      }
    }

    sub_193444060(v237);
    sub_193444060(v27);
    goto LABEL_32;
  }

  if (v7)
  {
    v18 = v4 == v8 && v5 == v7;
    if (v18)
    {
      goto LABEL_10;
    }

    v185 = *(v1 + 552);
    v186 = *(v1 + 616);
    v19 = *(v1 + 600);
    v8 = *(v1 + 608);
    v187 = *(v1 + 544);
    v20 = *(v1 + 624);
    v1 = *(v1 + 592);
    v21 = sub_19393CA30();
    v17 = v20;
    v10 = v187;
    v16 = v19;
    if (v21)
    {
      goto LABEL_10;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolToolDefinition.Version1.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[3];
  v84 = v0[4];
  HIDWORD(v80) = *(v0 + 40);
  HIDWORD(v103) = *(v0 + 41);
  v6 = v0[7];
  v104 = v0[6];
  v96 = v0[2];
  v97 = v0[8];
  v98 = v0[24];
  v106 = v0[23];
  v107 = v0[25];
  v108 = v0[26];
  v109 = v0[27];
  v110 = v0[9];
  v126 = v0[29];
  v72 = v0[28];
  v76 = v0[30];
  v112 = v0[31];
  v113 = v0[32];
  v114 = v0[33];
  v92 = v0[34];
  HIDWORD(v88) = *(v0 + 280);
  HIDWORD(v115) = *(v0 + 281);
  v116 = v0[36];
  v117 = v0[37];
  v7 = v0[38];
  v119 = v0[39];
  memcpy(__dst, v0 + 40, sizeof(__dst));
  v120 = v0[53];
  memcpy(v134, v0 + 54, sizeof(v134));
  v8 = v0[67];
  v118 = v0[70];
  v99 = v0[69];
  v100 = v0[71];
  v9 = v0[72];
  v10 = v0[73];
  v101 = v10;
  v102 = v0[75];
  v121 = v0[68];
  v122 = v0[76];
  v123 = v0[74];
  v124 = v0[77];
  v125 = v0[78];
  if (v4)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v105 = v7;
  if (v5)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_344();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v11 = v110;
  if (HIDWORD(v103))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_103_0();
    *v131 = v84;
    v132 = BYTE4(v80) & 1;
    v13 = ToolKitToolToolDefinition.Version1.ToolType.rawValue.getter(v12);
    MEMORY[0x193B18030](v13);
  }

  v111 = v8;
  sub_193736770(v2, v104);
  OUTLINED_FUNCTION_380();
  v14 = v118;
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *v131 = v6;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolTypeInstance.hash(into:)();
  }

  v16 = v122;
  v17 = v123;
  v18 = v112;
  v19 = v107;
  if (v11)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v106)
  {
    memcpy(v127, v0 + 10, sizeof(v127));
    v128 = v106;
    sub_19393CAD0();
    memcpy(v129, v0 + 10, sizeof(v129));
    v130 = v106;
    sub_1936D02FC(v129, v131);
    v27 = ToolKitToolAppDefinition.hash(into:)(v2, v20, v21, v22, v23, v24, v25, v26, v68, v72, v76, v80, v84, v88, v92, SHIDWORD(v92));
    OUTLINED_FUNCTION_373_1(v27, v28, v29, v30, v31, v32, v33, v34, v69, v73, v77, v81, v85, v89, v93, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    sub_1937379F0(v131);
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v19)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_438();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1937366D4(v2, v108);
  sub_1934D11C8(v2, v109);
  if (v126 == 1)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_103_0();
  if (v126)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!v18)
  {
LABEL_28:
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_259_1();
    sub_19393C640();
  }

  sub_193736658(v2, v113);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  v35 = v111;
  if ((v115 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_103_0();
    *v131 = v92;
    v132 = BYTE4(v88) & 1;
    v37 = ToolKitToolToolDefinition.Version1.AuthenticationPolicy.rawValue.getter(v36);
    MEMORY[0x193B18030](v37);
  }

  sub_1937364D0(v2, v116);
  sub_193736454(v2, v117);
  OUTLINED_FUNCTION_251_0();
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *v131 = v105;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolToolDefinition.Version1.ToolIcon.hash(into:)();
  }

  sub_193736770(v2, v119);
  if (v120)
  {
    memcpy(v127, __dst, sizeof(v127));
    v128 = v120;
    OUTLINED_FUNCTION_103_0();
    memcpy(v129, __dst, sizeof(v129));
    v130 = v120;
    sub_1936D0610(v129, v131);
    v45 = ToolKitToolContainerDefinition.hash(into:)(v2, v38, v39, v40, v41, v42, v43, v44, v68, v72, v76, v80, v84, v88, v92, SHIDWORD(v92));
    OUTLINED_FUNCTION_373_1(v45, v46, v47, v48, v49, v50, v51, v52, v70, v74, v78, v82, v86, v90, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    sub_193713244(v131);
    if (v35)
    {
LABEL_37:
      OUTLINED_FUNCTION_448(v127);
      v128 = v35;
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_448(v129);
      v130 = v35;
      sub_1936D0610(v129, v131);
      v60 = ToolKitToolContainerDefinition.hash(into:)(v2, v53, v54, v55, v56, v57, v58, v59, v68, v72, v76, v80, v84, v88, v92, SHIDWORD(v92));
      OUTLINED_FUNCTION_373_1(v60, v61, v62, v63, v64, v65, v66, v67, v71, v75, v79, v83, v87, v91, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
      sub_193713244(v131);
      goto LABEL_40;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v111)
    {
      goto LABEL_37;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_40:
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  if (v14)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v9)
    {
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v9)
    {
LABEL_42:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v17)
      {
        goto LABEL_43;
      }

LABEL_47:
      OUTLINED_FUNCTION_104_0();
      if (v16)
      {
        goto LABEL_44;
      }

LABEL_48:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v17)
  {
    goto LABEL_47;
  }

LABEL_43:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_44:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
LABEL_49:
  sub_1934D11C8(v2, v124);
  sub_1937363A4(v2, v125);
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolToolDefinition.Version1.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolToolDefinition.Version1.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937300CC()
{
  sub_19393CAB0();
  ToolKitToolToolDefinition.Version1.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolAppDefinition.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_19347549C(*(v1 + 80));
  *(v1 + 80) = v2;
  return result;
}

void ToolKitToolAppDefinition.origin.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 97);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ToolKitToolAppDefinition.origin.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  *(v1 + 97) = v3;
  return result;
}

uint64_t ToolKitToolAppDefinition.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

double ToolKitToolAppDefinition.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[3] = v1;
  v2[4] = v1;
  v2[1] = v1;
  v2[2] = v1;
  *v2 = v1;
  sub_19347549C(0xF000000000000007);
  result = -3.10503618e231;
  *(v0 + 80) = xmmword_193980780;
  *(v0 + 96) = 256;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1937303DC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolAppDefinition.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730404@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolAppDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolAppDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v44;
  v46 = v45;
  v47 = *(v43 + 8);
  v145 = *(v43 + 16);
  v49 = *(v43 + 24);
  v48 = *(v43 + 32);
  v51 = *(v43 + 40);
  v50 = *(v43 + 48);
  v52 = *(v43 + 56);
  v53 = *(v43 + 64);
  v54 = *(v43 + 72);
  v55 = *(v43 + 80);
  v56 = *(v43 + 88);
  v57 = *(v43 + 96);
  v58 = *(v43 + 97);
  v59 = *(v43 + 104);
  v60 = *(v46 + 8);
  v142 = *(v46 + 16);
  v61 = *(v46 + 24);
  v62 = *(v46 + 32);
  v64 = *(v46 + 40);
  v63 = *(v46 + 48);
  v66 = *(v46 + 56);
  v65 = *(v46 + 64);
  v67 = *(v46 + 72);
  v68 = *(v46 + 80);
  v69 = *(v46 + 88);
  v70 = *(v46 + 97);
  v71 = *(v46 + 104);
  if (v47)
  {
    if (!v60)
    {
      goto LABEL_53;
    }

    v72 = *v43 == *v46 && v47 == v60;
    if (!v72)
    {
      v135 = *(v46 + 64);
      v139 = *(v43 + 104);
      v128 = *(v43 + 88);
      v130 = *(v43 + 80);
      v126 = *(v43 + 40);
      v127 = *(v46 + 104);
      v133 = *(v46 + 48);
      v73 = *(v43 + 96);
      v74 = *(v43 + 97);
      v124 = *(v46 + 40);
      v125 = *(v43 + 32);
      v75 = *(v46 + 88);
      v140 = *(v46 + 80);
      v123 = *(v46 + 96);
      v76 = *(v46 + 97);
      v121 = *(v43 + 72);
      v122 = *(v46 + 72);
      v77 = *(v43 + 64);
      v78 = *(v43 + 56);
      v120 = *(v43 + 48);
      v79 = *(v46 + 56);
      v80 = sub_19393CA30();
      v66 = v79;
      v50 = v120;
      v54 = v121;
      v52 = v78;
      v67 = v122;
      v53 = v77;
      v64 = v124;
      v48 = v125;
      v51 = v126;
      v63 = v133;
      v65 = v135;
      v56 = v128;
      v55 = v130;
      if ((v80 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v60)
  {
    goto LABEL_53;
  }

  if (v49)
  {
    if (!v61)
    {
      goto LABEL_53;
    }

    if (v145 != v142 || v49 != v61)
    {
      v136 = v65;
      v141 = v68;
      v143 = v66;
      v129 = v56;
      v131 = v55;
      v82 = v54;
      v83 = v53;
      v84 = v67;
      v146 = v52;
      v85 = v50;
      v86 = sub_19393CA30();
      v66 = v143;
      v52 = v146;
      v50 = v85;
      v67 = v84;
      v53 = v83;
      v54 = v82;
      v65 = v136;
      v68 = v141;
      v56 = v129;
      v55 = v131;
      if ((v86 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v61)
  {
    goto LABEL_53;
  }

  if (v51)
  {
    if (!v64)
    {
      goto LABEL_53;
    }

    if (v48 != v62 || v51 != v64)
    {
      v137 = v65;
      v144 = v53;
      v88 = v54;
      v134 = v63;
      v89 = v67;
      v147 = v52;
      v90 = v50;
      v91 = v66;
      v92 = sub_19393CA30();
      v66 = v91;
      v50 = v90;
      v53 = v144;
      v52 = v147;
      v67 = v89;
      v63 = v134;
      v65 = v137;
      v54 = v88;
      if ((v92 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v64)
  {
    goto LABEL_53;
  }

  if (v52)
  {
    if (!v66)
    {
      goto LABEL_53;
    }

    if (v50 != v63 || v52 != v66)
    {
      v138 = v65;
      v132 = v55;
      v94 = v54;
      v63 = v53;
      v95 = v67;
      v96 = sub_19393CA30();
      v65 = v138;
      v67 = v95;
      v53 = v63;
      v54 = v94;
      v55 = v132;
      if ((v96 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v66)
  {
    goto LABEL_53;
  }

  if (!v54)
  {
    if (!v67)
    {
      goto LABEL_46;
    }

LABEL_53:
    OUTLINED_FUNCTION_160_8();
    return;
  }

  if (!v67)
  {
    goto LABEL_53;
  }

  if (v53 != v65 || v54 != v67)
  {
    OUTLINED_FUNCTION_322_0();
    v55 = v63;
    if ((sub_19393CA30() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_147_8();
  if (v72)
  {
    v148 = v103;
    v104 = v102;
    v105 = v101;
    v106 = v100;
    v107 = v99;
    v108 = v56;
    v109 = v55;
    v110 = v98 & ~v68;
    sub_193438D88(v109);
    sub_193438D88(v68);
    if (v110)
    {
LABEL_52:
      sub_19347549C(v109);
      sub_19347549C(v68);
      goto LABEL_53;
    }

    v111 = sub_19347549C(v109);
    v112 = v108;
    v113 = v148;
  }

  else
  {
    a28 = v55;
    if ((v98 & ~v68) == 0)
    {
      sub_193438D88(v55);
      OUTLINED_FUNCTION_390(v68);

      v109 = v55;
      goto LABEL_52;
    }

    a26 = v68;
    v107 = v99;
    v106 = v100;
    v105 = v101;
    v104 = v102;
    v113 = v103;
    sub_193438D88(v55);
    OUTLINED_FUNCTION_390(v68);
    v112 = v56;
    v114 = v55;
    v115 = static ToolKitToolAppDefinition.Device.== infix(_:_:)(&a28, &a26);

    v111 = sub_19347549C(v114);
    if ((v115 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (v106)
  {
    if ((v113 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (v113)
    {
      goto LABEL_53;
    }

    a28 = v112;
    a29 = v107 & 1;
    a26 = v105;
    a27 = v104 & 1;
    v116 = ToolKitToolAppDefinition.Origin.rawValue.getter(v111);
    if (v116 != ToolKitToolAppDefinition.Origin.rawValue.getter(v116))
    {
      goto LABEL_53;
    }
  }

  OUTLINED_FUNCTION_160_8();

  sub_19344FC94(v117, v118);
}