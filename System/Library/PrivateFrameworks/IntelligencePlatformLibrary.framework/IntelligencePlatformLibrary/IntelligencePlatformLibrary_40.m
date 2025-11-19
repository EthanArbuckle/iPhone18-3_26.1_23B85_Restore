uint64_t ToolKitToolAppDefinition.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  OUTLINED_FUNCTION_231_3();
  v17 = v16[1];
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[5];
  v33 = v16[4];
  v34 = v16[6];
  v21 = v16[7];
  v35 = v16[8];
  v22 = v16[9];
  v23 = v16[10];
  v32 = v16[11];
  v31 = *(v16 + 96);
  OUTLINED_FUNCTION_434();
  if (v17)
  {
    v24 = *v16;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v19)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v20)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_261_0();
  sub_19393C640();
  if (v22)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if ((~v23 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolAppDefinition.Device.hash(into:)();
    OUTLINED_FUNCTION_391();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (a16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v26 = ToolKitToolAppDefinition.Origin.rawValue.getter(v25);
    MEMORY[0x193B18030](v26);
  }

  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_196();

  return sub_1934D11C8(v27, v28);
}

void ToolKitToolContainerDefinition.containerType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  OUTLINED_FUNCTION_5_2(a1);
}

void ToolKitToolContainerDefinition.containerType.setter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  OUTLINED_FUNCTION_124_8(*a1);
}

double ToolKitToolContainerDefinition.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  *(v2 + 41) = v1;
  v2[1] = v1;
  v2[2] = v1;
  *v2 = v1;
  *(v0 + 57) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_19347549C(0xF000000000000007);
  result = -3.10503618e231;
  *(v0 + 80) = xmmword_193980780;
  *(v0 + 96) = 256;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_193730D2C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolContainerDefinition.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730D54@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolContainerDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730E44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolContainerDefinition.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730E6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolContainerDefinition.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolContainerDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_234_3();
  a41 = v42;
  a42 = v44;
  v46 = v45;
  v47 = *(v43 + 8);
  v48 = *(v43 + 16);
  v50 = *(v43 + 24);
  v49 = *(v43 + 32);
  v51 = *(v43 + 40);
  v52 = *(v43 + 48);
  v53 = *(v43 + 56);
  v54 = *(v43 + 57);
  v56 = *(v43 + 64);
  v55 = *(v43 + 72);
  v150 = *(v43 + 80);
  v147 = *(v43 + 88);
  v148 = *(v43 + 96);
  v57 = *(v43 + 97);
  v58 = *(v43 + 104);
  v59 = *(v46 + 8);
  v151 = *(v46 + 16);
  v61 = *(v46 + 24);
  v60 = *(v46 + 32);
  v63 = *(v46 + 40);
  v62 = *(v46 + 48);
  v64 = *(v46 + 56);
  v65 = *(v46 + 57);
  v66 = *(v46 + 64);
  v67 = *(v46 + 72);
  v69 = *(v46 + 80);
  v68 = *(v46 + 88);
  v70 = *(v46 + 96);
  v71 = *(v46 + 97);
  v149 = *(v46 + 104);
  if (v47)
  {
    if (!v59)
    {
      goto LABEL_49;
    }

    v72 = *v43 == *v46 && v47 == v59;
    if (!v72)
    {
      v140 = *(v46 + 48);
      v143 = *(v46 + 80);
      v122 = *(v46 + 96);
      v123 = *(v43 + 97);
      v133 = *(v46 + 72);
      v135 = *(v46 + 64);
      v129 = *(v46 + 40);
      v131 = *(v43 + 64);
      v73 = *(v43 + 104);
      v74 = *(v46 + 88);
      v75 = *(v46 + 97);
      v127 = *(v46 + 32);
      v120 = *(v43 + 72);
      v121 = *(v43 + 32);
      v76 = *(v43 + 48);
      v77 = *(v43 + 56);
      v137 = *(v46 + 57);
      v78 = *(v43 + 57);
      v124 = *(v46 + 56);
      v79 = *(v43 + 40);
      v80 = sub_19393CA30();
      v55 = v120;
      v49 = v121;
      v51 = v79;
      v62 = v140;
      v69 = v143;
      v54 = v78;
      v65 = v137;
      v53 = v77;
      v52 = v76;
      v71 = v75;
      v70 = v122;
      v68 = v74;
      v63 = v129;
      v56 = v131;
      v67 = v133;
      v66 = v135;
      v57 = v123;
      v64 = v124;
      if ((v80 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v59)
  {
    goto LABEL_49;
  }

  if (v50)
  {
    if (!v61)
    {
      goto LABEL_49;
    }

    if (v48 != v151 || v50 != v61)
    {
      v141 = v62;
      v144 = v69;
      v82 = v68;
      v128 = v60;
      v130 = v63;
      v83 = v70;
      v84 = v71;
      v134 = v67;
      v136 = v66;
      v132 = v56;
      v85 = v55;
      v86 = v52;
      v152 = v53;
      v87 = v54;
      v88 = v64;
      v125 = v51;
      v138 = v65;
      v89 = v49;
      v90 = sub_19393CA30();
      v49 = v89;
      v65 = v138;
      v64 = v88;
      v54 = v87;
      v53 = v152;
      v52 = v86;
      v55 = v85;
      v56 = v132;
      v67 = v134;
      v66 = v136;
      v71 = v84;
      v51 = v125;
      v60 = v128;
      v70 = v83;
      v63 = v130;
      v68 = v82;
      v62 = v141;
      v69 = v144;
      if ((v90 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v61)
  {
    goto LABEL_49;
  }

  if (v51)
  {
    if (!v63)
    {
      goto LABEL_49;
    }

    if (v49 != v60 || v51 != v63)
    {
      v142 = v62;
      v145 = v69;
      v92 = v68;
      v93 = v70;
      v94 = v71;
      v95 = v55;
      v96 = v52;
      v153 = v53;
      v139 = v65;
      v97 = v54;
      v126 = v64;
      v98 = sub_19393CA30();
      v64 = v126;
      v54 = v97;
      v65 = v139;
      v53 = v153;
      v52 = v96;
      v55 = v95;
      v71 = v94;
      v70 = v93;
      v68 = v92;
      v62 = v142;
      v69 = v145;
      if ((v98 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v63)
  {
    goto LABEL_49;
  }

  if (v54)
  {
    if ((v65 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v65)
    {
      goto LABEL_49;
    }

    a28 = v52;
    a29 = v53 & 1;
    a26 = v62;
    a27 = v64 & 1;
    v99 = v68;
    v100 = v70;
    v101 = v71;
    v102 = v55;
    v146 = v69;
    v103 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    v104 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    v55 = v102;
    v71 = v101;
    v70 = v100;
    v68 = v99;
    v72 = v103 == v104;
    v69 = v146;
    if (!v72)
    {
      goto LABEL_49;
    }
  }

  if (v55)
  {
    if (!v67)
    {
      goto LABEL_49;
    }

    if (v56 != v66 || v55 != v67)
    {
      v106 = v68;
      v107 = v70;
      v108 = v71;
      v109 = sub_19393CA30();
      v71 = v108;
      v70 = v107;
      v68 = v106;
      if ((v109 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v67)
  {
    goto LABEL_49;
  }

  if ((~v150 & 0xF000000000000007) == 0)
  {
    v154 = v71;
    v110 = v70;
    v111 = v68;
    v112 = v57;
    OUTLINED_FUNCTION_390(v150);
    if ((~v69 & 0xF000000000000007) == 0)
    {
      v113 = sub_19347549C(v150);
      v114 = v154;
      goto LABEL_51;
    }

LABEL_48:
    sub_19347549C(v150);
    sub_19347549C(v69);
    goto LABEL_49;
  }

  a28 = v150;
  if ((~v69 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_390(v150);
    sub_193438D88(v150);

    goto LABEL_48;
  }

  a26 = v69;
  v112 = v57;
  v111 = v68;
  v110 = v70;
  v114 = v71;
  OUTLINED_FUNCTION_390(v150);
  sub_193438D88(v150);
  v115 = static ToolKitToolContainerDefinition.Device.== infix(_:_:)(&a28, &a26);

  v113 = sub_19347549C(v150);
  if ((v115 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v112)
  {
    if (v114)
    {
      goto LABEL_56;
    }

LABEL_49:
    OUTLINED_FUNCTION_160_8();
    return;
  }

  if (v114)
  {
    goto LABEL_49;
  }

  a28 = v147;
  a29 = v148 & 1;
  a26 = v111;
  a27 = v110 & 1;
  v116 = ToolKitToolContainerDefinition.Origin.rawValue.getter(v113);
  if (v116 != ToolKitToolContainerDefinition.Origin.rawValue.getter(v116))
  {
    goto LABEL_49;
  }

LABEL_56:
  OUTLINED_FUNCTION_160_8();

  sub_19344FC94(v117, v118);
}

uint64_t ToolKitToolContainerDefinition.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  OUTLINED_FUNCTION_231_3();
  v18 = v17;
  v20 = v16[1];
  v19 = v16[2];
  v21 = v16[3];
  v22 = v16[5];
  v36 = v16[6];
  v35 = *(v16 + 56);
  v23 = *(v16 + 57);
  v24 = v16[9];
  v39 = v16[4];
  v40 = v16[8];
  v25 = v16[10];
  v38 = v16[11];
  v37 = *(v16 + 96);
  OUTLINED_FUNCTION_434();
  if (v20)
  {
    v26 = *v16;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v21)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_262_0();
      sub_19393C640();
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v22)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v27 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    MEMORY[0x193B18030](v27);
    if (v24)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_104_0();
  if (v24)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  OUTLINED_FUNCTION_251_0();
  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolContainerDefinition.Device.hash(into:)(v18);
    OUTLINED_FUNCTION_391();
  }

  if (a16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v30 = ToolKitToolContainerDefinition.Origin.rawValue.getter(v29);
    MEMORY[0x193B18030](v30);
  }

  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_196();

  return sub_1934D11C8(v31, v32);
}

uint64_t sub_193731604()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_1937316C0()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeDisplayRepresentation.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ToolKitToolTypeDisplayRepresentation.init()(IntelligencePlatformLibrary::ToolKitToolTypeDisplayRepresentation *__return_ptr retstr)
{
  retstr->name = 0u;
  retstr->numericFormat = 0u;
  retstr->synonyms._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v7 = a2[4];
  if (a1[1])
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
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
    if (v8)
    {
      if (v2 == v6 && v4 == v8)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_284();
      if (sub_19393CA30())
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:
  v13 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v13, v14);
}

uint64_t ToolKitToolTypeDisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  if (v0[1])
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_175();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  OUTLINED_FUNCTION_236();

  return sub_1934D11C8(v5, v6);
}

uint64_t sub_1937319B4()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypeDisplayRepresentation.hash(into:)();
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO019ContentItemPropertyI0V2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_117();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v7 = *v5;
  v6 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  OUTLINED_FUNCTION_295_2();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_296_1();
    if (!(!v13 & v12))
    {
      OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_333();
      v18 = MEMORY[0x193B172A0]();
      v19 = OUTLINED_FUNCTION_82();
      sub_19345012C(v19, v20);
      v21 = OUTLINED_FUNCTION_107_5();
      sub_19345012C(v21, v22);
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_8:
    v14 = OUTLINED_FUNCTION_16_34();
    sub_19345012C(v14, v15);
    v16 = OUTLINED_FUNCTION_82();
    sub_19345012C(v16, v17);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_296_1();
  if (!(!v13 & v12))
  {
    goto LABEL_8;
  }

  v10 = OUTLINED_FUNCTION_16_34();
  sub_19345012C(v10, v11);
LABEL_11:
  if (v3 && v8 && (v4 != v9 || v3 != v8))
  {
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_9:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO019ContentItemPropertyI0V4hash4intoys6HasherVz_tF_0()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1] >> 60 != 15)
  {
    v4 = *v0;
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_32_4();
    sub_19393BD50();
    if (v2)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_302();
  if (!v2)
  {
    return OUTLINED_FUNCTION_302();
  }

LABEL_3:
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t ToolKitToolDisplayRepresentation.subtitle.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_339(a1);
  result = sub_19347549C(v3);
  *(v2 + 16) = v1;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.altText.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_19347549C(*(v1 + 24));
  *(v1 + 24) = v2;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.image.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_416(a1);
  result = sub_19347549C(v3);
  *(v2 + 32) = v1;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.snippetPluginModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_193737A20(v2, v3, v4, v5);
}

__n128 ToolKitToolDisplayRepresentation.snippetPluginModel.setter(uint64_t a1)
{
  sub_193710010(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_19347549C(v3);
  sub_19347549C(0xF000000000000007);
  v1[1] = vdupq_n_s64(v2);
  sub_19347549C(0xF000000000000007);
  v4 = MEMORY[0x1E69E7CC0];
  v1[2].i64[0] = v2;
  v1[2].i64[1] = v4;
  result = sub_193710010(0, 0, 0, 1);
  v1[3].i64[0] = 0;
  v1[3].i64[1] = 0;
  v1[4].i64[0] = 0;
  v1[4].i64[1] = 1;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.Storage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return OUTLINED_FUNCTION_11_42();
}

double ToolKitToolDisplayRepresentation.Storage.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  result = 0.0;
  *v0 = xmmword_193950B20;
  return result;
}

uint64_t sub_193731EF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (a1[1] >> 60 == 15)
  {
    OUTLINED_FUNCTION_282_2();
    if (!(!v6 & v5))
    {
      goto LABEL_7;
    }

    v7 = OUTLINED_FUNCTION_7_14();
    sub_19345012C(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_282_2();
    if (!v6 & v5)
    {
LABEL_7:
      v9 = OUTLINED_FUNCTION_7_14();
      sub_19345012C(v9, v10);
      v11 = OUTLINED_FUNCTION_175_0();
      sub_19345012C(v11, v12);
      return 0;
    }

    OUTLINED_FUNCTION_7_14();
    OUTLINED_FUNCTION_46_14();
    v14 = MEMORY[0x193B172A0]();
    v15 = OUTLINED_FUNCTION_175_0();
    sub_19345012C(v15, v16);
    v17 = OUTLINED_FUNCTION_13_5();
    sub_19345012C(v17, v18);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_193731F94()
{
  if (v0[1] >> 60 == 15)
  {
    return sub_19393CAD0();
  }

  v2 = *v0;
  sub_19393CAD0();
  OUTLINED_FUNCTION_115_0();

  return sub_19393BD50();
}

uint64_t sub_193732014()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_310_0();
  if (v3)
  {
    sub_19393CAD0();
  }

  else
  {
    v4 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
    sub_19393BD50();
  }

  return sub_19393CB00();
}

uint64_t sub_193732080()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  OUTLINED_FUNCTION_310_0();
  if (v3)
  {
    sub_19393CAD0();
  }

  else
  {
    v4 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
    sub_19393BD50();
  }

  return sub_19393CB00();
}

uint64_t ToolKitToolDisplayRepresentation.DisplayValue.lazy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_193450268(v2, v3);
}

uint64_t ToolKitToolDisplayRepresentation.DisplayValue.lazy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.DisplayValue.staticType.setter(uint64_t a1)
{
  sub_1936D10D0(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return result;
}

double ToolKitToolDisplayRepresentation.DisplayValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = xmmword_193950B20;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

double ToolKitToolDisplayRepresentation.DisplayValue.Static.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_169_3();
  sub_1936D10D0(v2, v3, v4, v5);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_193732220@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193732248@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.allCases.getter();
  *a1 = result;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.DisplayValue.Static.value.setter(uint64_t a1)
{
  sub_1936D10D0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

void static ToolKitToolDisplayRepresentation.DisplayValue.Static.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  if (!v2)
  {
    v31 = *v0;
    OUTLINED_FUNCTION_69_1();
    sub_1936D1084(v32, v33, v34, v35);
    if (!v5)
    {
      OUTLINED_FUNCTION_284();
      sub_1936D1084(v62, v63, v64, v65);
      OUTLINED_FUNCTION_69_1();
      sub_1936D10D0(v66, v67, v68, v69);
      goto LABEL_15;
    }

    v36 = OUTLINED_FUNCTION_51_20();
    sub_1936D1084(v36, v37, v38, v39);
    goto LABEL_12;
  }

  if (!v5)
  {
    v40 = OUTLINED_FUNCTION_8_6();
    sub_1936D1084(v40, v41, v42, v43);
    OUTLINED_FUNCTION_284();
    sub_1936D1084(v44, v45, v46, v47);
    v48 = OUTLINED_FUNCTION_8_6();
    sub_1936D1084(v48, v49, v50, v51);

    v52 = OUTLINED_FUNCTION_13_5();
    sub_193446A6C(v52, v53);
LABEL_12:
    v54 = OUTLINED_FUNCTION_8_6();
    sub_1936D10D0(v54, v55, v56, v57);
    v58 = OUTLINED_FUNCTION_51_20();
LABEL_13:
    sub_1936D10D0(v58, v59, v60, v61);
    goto LABEL_15;
  }

  if (*v0 != *v1 || v2 != v5)
  {
    OUTLINED_FUNCTION_115_0();
    if ((sub_19393CA30() & 1) == 0)
    {
      v70 = OUTLINED_FUNCTION_8_6();
      sub_1936D1084(v70, v71, v72, v73);
      v74 = OUTLINED_FUNCTION_51_20();
      sub_1936D1084(v74, v75, v76, v77);
      v78 = OUTLINED_FUNCTION_8_6();
      sub_1936D1084(v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_51_20();
      sub_1936D10D0(v82, v83, v84, v85);

      v86 = OUTLINED_FUNCTION_13_5();
      sub_193446A6C(v86, v87);
      v58 = OUTLINED_FUNCTION_8_6();
      goto LABEL_13;
    }
  }

  v9 = OUTLINED_FUNCTION_8_6();
  sub_1936D1084(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_51_20();
  sub_1936D1084(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_8_6();
  sub_1936D1084(v17, v18, v19, v20);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_284();
  MEMORY[0x193B172A0]();
  v21 = OUTLINED_FUNCTION_51_20();
  sub_1936D10D0(v21, v22, v23, v24);

  v25 = OUTLINED_FUNCTION_13_5();
  sub_193446A6C(v25, v26);
  v27 = OUTLINED_FUNCTION_8_6();
  sub_1936D10D0(v27, v28, v29, v30);
LABEL_15:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolDisplayRepresentation.DisplayValue.Static.hash(into:)()
{
  v1 = v0[1];
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = *v0;
    sub_19393CAD0();

    v5 = OUTLINED_FUNCTION_55();
    sub_193450688(v5, v6);
    sub_19393C640();
    sub_19393BD50();

    sub_1936D10D0(v4, v1, v3, v2);
  }

  else
  {
    sub_19393CAD0();
  }
}

uint64_t sub_193732658()
{
  v12 = *v0;
  v13 = v0[1];
  v1 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  ToolKitToolDisplayRepresentation.DisplayValue.Static.hash(into:)();
  return sub_19393CB00();
}

void static ToolKitToolDisplayRepresentation.DisplayValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_273_1();
  a31 = v32;
  a32 = v35;
  v37 = *(v33 + 16);
  v36 = *(v33 + 24);
  v38 = *(v33 + 32);
  v39 = *(v33 + 40);
  v40 = *(v33 + 48);
  v41 = *(v33 + 56);
  v42 = *(v34 + 9);
  v43 = *(v34 + 16);
  v44 = *(v34 + 24);
  v46 = *(v34 + 32);
  v45 = *(v34 + 40);
  v47 = *(v34 + 48);
  v48 = *(v34 + 56);
  if (*(v33 + 9))
  {
    v77 = *(v34 + 56);
    v79 = *(v34 + 48);
    v81 = *(v34 + 40);
    if ((*(v34 + 9) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v34 + 9))
    {
      goto LABEL_9;
    }

    v78 = *(v34 + 56);
    v80 = *(v34 + 48);
    v82 = *(v34 + 40);
    v49 = OUTLINED_FUNCTION_178_0(v33, v34);
    a17 = v50;
    LOBYTE(a18) = v51 & 1;
    v52 = v41;
    v53 = v40;
    v54 = v39;
    v55 = v38;
    v56 = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter(v49);
    v57 = v56 == ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter(v56);
    v38 = v55;
    v39 = v54;
    v40 = v53;
    v41 = v52;
    if (!v57)
    {
      goto LABEL_9;
    }
  }

  a17 = v37;
  a18 = v36;
  sub_193450268(v37, v36);
  v58 = OUTLINED_FUNCTION_115_0();
  sub_193450268(v58, v59);
  v60 = static ToolKitToolDisplayRepresentation.Storage.== infix(_:_:)(&a17);
  v61 = OUTLINED_FUNCTION_115_0();
  sub_19345012C(v61, v62);
  sub_19345012C(v37, v36);
  if (v60)
  {
    a17 = v38;
    a18 = v39;
    a19 = v40;
    a20 = v41;
    OUTLINED_FUNCTION_146();
    sub_1936D1084(v63, v64, v65, v41);
    OUTLINED_FUNCTION_9_12();
    sub_1936D1084(v66, v67, v68, v69);
    static ToolKitToolDisplayRepresentation.DisplayValue.Static.== infix(_:_:)();
    OUTLINED_FUNCTION_9_12();
    sub_1936D10D0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_146();
    sub_1936D10D0(v74, v75, v76, v41);
  }

LABEL_9:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolDisplayRepresentation.DisplayValue.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v11 = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter(v10);
    MEMORY[0x193B18030](v11);
  }

  if (v2 >> 60 != 15)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_196_4();
    sub_19393BD50();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_114();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();

  v12 = OUTLINED_FUNCTION_32_4();
  sub_193450688(v12, v13);
  OUTLINED_FUNCTION_58_19();
  sub_19393C640();
  OUTLINED_FUNCTION_10_0();
  sub_19393BD50();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_114();

  sub_1936D10D0(v14, v15, v16, v17);
}

uint64_t sub_193732930()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19373298C()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_454(a1);
  v3 = v2[1];
  if (v4)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_155(v1, v2);
      v7 = v7 && v5 == v6;
      if (v7 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV4hash4intoys6HasherVz_tF_0()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();
  OUTLINED_FUNCTION_115_0();

  return sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193732B80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  if (v2)
  {
    v3 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.tintColorData.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return OUTLINED_FUNCTION_11_42();
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.configurationData.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.Image.Static.Symbol.init()@<Q0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  OUTLINED_FUNCTION_300_1();
  *(v1 + 16) = xmmword_193950B20;
  OUTLINED_FUNCTION_300_1();
  result = xmmword_193950B20;
  *(v1 + 32) = xmmword_193950B20;
  return result;
}

void static ToolKitToolDisplayRepresentation.Image.Static.Symbol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v1[1];
  v7 = v1[2];
  v9 = v1[3];
  v8 = v1[4];
  v10 = v1[5];
  if (!v0[1])
  {
    if (v6)
    {
      goto LABEL_27;
    }

LABEL_10:
    OUTLINED_FUNCTION_295_2();
    if (!v13 & v16)
    {
      OUTLINED_FUNCTION_296_1();
      if (!v13 & v16)
      {
        v14 = OUTLINED_FUNCTION_16_34();
        sub_19345012C(v14, v15);
LABEL_19:
        if (v5 >> 60 == 15)
        {
          OUTLINED_FUNCTION_282_2();
          if (!v13 & v16)
          {
            v27 = OUTLINED_FUNCTION_7_14();
            sub_19345012C(v27, v28);
            goto LABEL_27;
          }
        }

        else
        {
          OUTLINED_FUNCTION_282_2();
          if (!(!v13 & v16))
          {
            OUTLINED_FUNCTION_7_14();
            OUTLINED_FUNCTION_46_14();
            MEMORY[0x193B172A0]();
            v31 = OUTLINED_FUNCTION_175_0();
            sub_19345012C(v31, v32);
            v33 = OUTLINED_FUNCTION_13_5();
            sub_19345012C(v33, v34);
            goto LABEL_27;
          }
        }

        v29 = OUTLINED_FUNCTION_7_14();
        sub_19345012C(v29, v30);
        v20 = OUTLINED_FUNCTION_175_0();
LABEL_26:
        sub_19345012C(v20, v21);
        goto LABEL_27;
      }
    }

    else
    {
      OUTLINED_FUNCTION_296_1();
      if (!(!v17 & v16))
      {
        OUTLINED_FUNCTION_16_34();
        OUTLINED_FUNCTION_333();
        v22 = MEMORY[0x193B172A0]();
        v23 = OUTLINED_FUNCTION_82();
        sub_19345012C(v23, v24);
        v25 = OUTLINED_FUNCTION_107_5();
        sub_19345012C(v25, v26);
        if ((v22 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }
    }

    v18 = OUTLINED_FUNCTION_16_34();
    sub_19345012C(v18, v19);
    v20 = OUTLINED_FUNCTION_82();
    goto LABEL_26;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_155(v0, v1);
    v13 = v13 && v11 == v12;
    if (v13 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolDisplayRepresentation.Image.Static.Symbol.hash(into:)()
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
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 >> 60 != 15)
  {
    sub_19393BD50();
  }

  if (v4 >> 60 == 15)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_236();

    sub_19393BD50();
  }
}

uint64_t sub_193733050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_159_6();
  v18 = *(v4 + 32);
  v6 = sub_19393CAB0();
  v14 = OUTLINED_FUNCTION_149_5(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  a4(v14);
  return sub_19393CB00();
}

BOOL static ToolKitToolDisplayRepresentation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v112 = a1[6];
  v113 = a1[7];
  v114 = a1[8];
  v115 = a1[9];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v10 = a2[6];
  v12 = a2[8];
  v111 = a2[7];
  v13 = a2[9];
  if (a1[1])
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1, a2);
    v16 = v16 && v14 == v15;
    if (!v16)
    {
      OUTLINED_FUNCTION_411();
      v12 = v17;
      sub_19393CA30();
      OUTLINED_FUNCTION_408();
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_8();
  if (v16)
  {
    OUTLINED_FUNCTION_411();
    v108 = v22;
    v109 = v21;
    v12 = v23 & ~v7;
    sub_193438D88(v2);
    sub_193438D88(v7);
    if (v12)
    {
LABEL_16:
      sub_19347549C(v2);
      v24 = v7;
LABEL_32:
      sub_19347549C(v24);
      return 0;
    }

    sub_19347549C(v2);
    OUTLINED_FUNCTION_408();
  }

  else
  {
    if ((v19 & ~v7) == 0)
    {
      sub_193438D88(v2);
      sub_193438D88(v7);
      sub_193438D88(v2);

      goto LABEL_16;
    }

    v110 = v20;
    sub_193438D88(v2);
    sub_193438D88(v7);
    v25 = sub_193438D88(v2);
    v33 = OUTLINED_FUNCTION_402(v25, v26, v27, v28, v29, v30, v31, v32, v106, v107, v110, v111, v112, v113, v114, v115, v7, v116, v117, v118, v2);
    v35 = static ToolKitToolDisplayRepresentation.Subtitle.== infix(_:_:)(v33, v34);
    OUTLINED_FUNCTION_391();

    sub_19347549C(v2);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_179_5();
  if (v16)
  {
    v38 = v37;
    v39 = v36 & ~v8;
    sub_193438D88(v3);
    sub_193438D88(v8);
    if (v39)
    {
LABEL_24:
      sub_19347549C(v3);
      v24 = v8;
      goto LABEL_32;
    }

    sub_19347549C(v3);
LABEL_26:
    if ((~v4 & 0xF000000000000007) != 0)
    {
      if ((~v9 & 0xF000000000000007) != 0)
      {
        v51 = v38;
        sub_193438D88(v4);
        sub_193438D88(v9);
        v54 = sub_193438D88(v4);
        v62 = OUTLINED_FUNCTION_402(v54, v55, v56, v57, v58, v59, v60, v61, v106, v108, v109, v111, v112, v113, v114, v115, v9, v116, v117, v118, v4);
        v64 = static ToolKitToolDisplayRepresentation.Image.== infix(_:_:)(v62, v63);
        OUTLINED_FUNCTION_391();

        sub_19347549C(v4);
        if ((v64 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_36;
      }

      sub_193438D88(v4);
      sub_193438D88(v9);
      sub_193438D88(v4);
    }

    else
    {
      sub_193438D88(v4);
      sub_193438D88(v9);
      if ((~v9 & 0xF000000000000007) == 0)
      {
        v51 = v38;
        sub_19347549C(v4);
LABEL_36:
        if (sub_19344FC94(v5, v11))
        {
          if (v115 == 1)
          {
            sub_193737A20(v112, v113, v114, 1);
            if (v51 == 1)
            {
              v52 = 1;
              sub_193737A20(v109, v111, v12, 1);
              sub_193710010(v112, v113, v114, 1);
              return v52;
            }

            OUTLINED_FUNCTION_253_2();
            sub_193737A20(v72, v73, v74, v75);
          }

          else
          {
            if (v51 != 1)
            {
              v80 = v109;
              v81 = v111;
              v82 = OUTLINED_FUNCTION_208();
              v84 = v114;
              v83 = v115;
              sub_193737A20(v82, v85, v114, v115);
              OUTLINED_FUNCTION_253_2();
              sub_193737A20(v86, v87, v88, v89);
              v90 = OUTLINED_FUNCTION_208();
              v92 = sub_193737A20(v90, v91, v114, v115);
              v100 = OUTLINED_FUNCTION_402(v92, v93, v94, v95, v96, v97, v98, v99, v106, v108, v109, v111, v112, v113, v114, v115, v109, v111, v12, v51, v112);
              v101 = v83;
              LOBYTE(v83) = static ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.== infix(_:_:)(v100);
              sub_19345012C(v80, v81);

              v102 = OUTLINED_FUNCTION_208();
              sub_19345012C(v102, v103);

              v104 = OUTLINED_FUNCTION_208();
              sub_193710010(v104, v105, v84, v101);
              return (v83 & 1) != 0;
            }

            v65 = OUTLINED_FUNCTION_24_1();
            sub_193737A20(v65, v66, v114, v115);
            sub_193737A20(v109, v111, v12, 1);
            OUTLINED_FUNCTION_10_0();
            sub_193737A20(v67, v68, v69, v115);
            v70 = OUTLINED_FUNCTION_24_1();
            sub_19345012C(v70, v71);
          }

          sub_193710010(v112, v113, v114, v115);
          OUTLINED_FUNCTION_253_2();
          sub_193710010(v76, v77, v78, v79);
        }

        return 0;
      }
    }

    sub_19347549C(v4);
    v24 = v9;
    goto LABEL_32;
  }

  if ((v36 & ~v8) == 0)
  {
    sub_193438D88(v3);
    sub_193438D88(v8);
    sub_193438D88(v3);

    goto LABEL_24;
  }

  v38 = v37;
  sub_193438D88(v3);
  sub_193438D88(v8);
  v40 = sub_193438D88(v3);
  v48 = OUTLINED_FUNCTION_402(v40, v41, v42, v43, v44, v45, v46, v47, v106, v108, v109, v111, v112, v113, v114, v115, v8, v116, v117, v118, v3);
  v50 = static ToolKitToolDisplayRepresentation.AltText.== infix(_:_:)(v48, v49);
  OUTLINED_FUNCTION_391();

  sub_19347549C(v3);
  if (v50)
  {
    goto LABEL_26;
  }

  return 0;
}

void ToolKitToolDisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v12 = v0[8];
  v6 = v0[9];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_145_9();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_148_8();
  if (v8)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.Subtitle.hash(into:)();
  }

  OUTLINED_FUNCTION_251_0();
  if (v8)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.AltText.hash(into:)();
  }

  if ((~v3 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.Image.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v9 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v9, v10);
  if (v6 == 1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v5 >> 60 != 15)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393BD50();
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_20:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_107();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_16:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_259_1();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t ToolKitToolCoercionDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_430(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1937337F8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193733820@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolCoercionDefinition.CoercionDirection.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static ToolKitToolCoercionDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_414(a1, a2);
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    v8 = OUTLINED_FUNCTION_9_16(v4, v5);
    v9 = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter(v8);
    if (v9 != ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter(v9))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_147_8();
  if (!v11)
  {
    v24 = v2;
    if ((v10 & ~v3) == 0)
    {
      sub_193437C90(v2);
      OUTLINED_FUNCTION_94_14(v3);
      goto LABEL_12;
    }

    v23 = v3;
    OUTLINED_FUNCTION_258_2();
    sub_193437C90(v2);
    v14 = static ToolKitToolTypeInstance.== infix(_:_:)(&v24, &v23);
    v15 = v14;
    OUTLINED_FUNCTION_126_9(v14, v16, v17, v18, v19, v20, v21, v22, v23);

    sub_193444060(v2);
    return (v15 & 1) != 0;
  }

  v12 = v10 & ~v3;
  OUTLINED_FUNCTION_258_2();
  if (!v12)
  {
    sub_193444060(v2);
    return 1;
  }

LABEL_12:
  sub_193444060(v2);
  sub_193444060(v3);
  return 0;
}

uint64_t ToolKitToolCoercionDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolCoercionDefinition.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_193733AF8()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolCoercionDefinition.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTriggerDefinition.Version1.id.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.description.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 56));
  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.requirements.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.init()@<X0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = MEMORY[0x1E69E7CC0];
  result = sub_193444060(0xF000000000000007);
  v1[7] = 0xF000000000000007;
  v1[8] = v2;
  v1[9] = v2;
  return result;
}

uint64_t sub_193733E0C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTriggerDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193733E34@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTriggerDefinition.Version1.Flag.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTriggerDefinition.Version1.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_329_0();
  a27 = v28;
  a28 = v31;
  v32 = v29[2];
  v34 = v29[3];
  v33 = v29[4];
  v35 = v29[5];
  v36 = v29[6];
  v37 = v29[7];
  v38 = v29[8];
  v39 = v29[9];
  v40 = v30[1];
  v41 = v30[2];
  v43 = v30[3];
  v42 = v30[4];
  v45 = v30[5];
  v44 = v30[6];
  v47 = v30[7];
  v46 = v30[8];
  v48 = v30[9];
  if (!v29[1])
  {
    if (v40)
    {
      goto LABEL_39;
    }

LABEL_10:
    if (v34)
    {
      if (!v43)
      {
        goto LABEL_39;
      }

      if (v32 != v41 || v34 != v43)
      {
        OUTLINED_FUNCTION_10_0();
        v84 = v60;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v69 = sub_19393CA30();
        v42 = v68;
        v45 = v84;
        v33 = v66;
        v35 = v64;
        v44 = v62;
        if ((v69 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (v43)
    {
      goto LABEL_39;
    }

    if (v35)
    {
      if (!v45)
      {
        goto LABEL_39;
      }

      if (v33 != v42 || v35 != v45)
      {
        v71 = v44;
        v72 = sub_19393CA30();
        v44 = v71;
        if ((v72 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (v45)
    {
      goto LABEL_39;
    }

    if ((sub_193713748(v36, v44) & 1) == 0)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_252_2();
    if (v51)
    {
      v74 = v73 & ~v47;
      sub_193437C90(v37);
      sub_193437C90(v47);
      if (v74)
      {
LABEL_35:
        sub_193444060(v37);
        sub_193444060(v47);
        goto LABEL_39;
      }

      sub_193444060(v37);
    }

    else
    {
      a16 = v37;
      if ((v73 & ~v47) == 0)
      {
        sub_193437C90(v37);
        OUTLINED_FUNCTION_446(v47);

        goto LABEL_35;
      }

      a15 = v47;
      sub_193437C90(v37);
      OUTLINED_FUNCTION_446(v47);
      v75 = static ToolKitToolTypeInstance.== infix(_:_:)(&a16, &a15);

      sub_193444060(v37);
      if ((v75 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (sub_193713908(v38, v46))
    {
      v76 = OUTLINED_FUNCTION_2_14();
      sub_193714598(v76, v77, v78, v79);
    }

    goto LABEL_39;
  }

  if (v40)
  {
    OUTLINED_FUNCTION_155(v29, v30);
    v51 = v51 && v49 == v50;
    if (v51)
    {
      goto LABEL_10;
    }

    v82 = v47;
    v83 = v36;
    v80 = v38;
    v81 = v46;
    v52 = v44;
    v53 = v35;
    v54 = v33;
    v55 = v45;
    v56 = v42;
    v57 = v32;
    v58 = sub_19393CA30();
    v32 = v57;
    v42 = v56;
    v45 = v55;
    v33 = v54;
    v35 = v53;
    v44 = v52;
    v38 = v80;
    v46 = v81;
    v47 = v82;
    v36 = v83;
    if (v58)
    {
      goto LABEL_10;
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolTriggerDefinition.Version1.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[8];
  v13 = v0[9];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_262_0();
  sub_19393C640();
  if (v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  v8 = OUTLINED_FUNCTION_125();
  sub_193736770(v8, v9);
  OUTLINED_FUNCTION_251_0();
  if (v10)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolTypeInstance.hash(into:)();
  }

  v11 = OUTLINED_FUNCTION_186_3();
  sub_193736658(v11, v12);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_19373429C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_1937342F8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolToolInvocation.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolInvocation.toolIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolInvocation.target.setter(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_416(a1);
  result = sub_19347549C(v3);
  *(v2 + 32) = v1;
  return result;
}

uint64_t ToolKitToolToolInvocation.parameterValues.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitToolToolInvocation.options.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v8[0] = v1[5];
  v3 = v8[0];
  *(v8 + 11) = *(v1 + 91);
  v4 = *(v8 + 11);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 43) = v4;
  return sub_193448804(v7, &v6, &qword_1EAE41B20, &qword_193980828);
}

__n128 ToolKitToolToolInvocation.options.setter(uint64_t a1)
{
  v3 = v1[4];
  v6[0] = v1[3];
  v6[1] = v3;
  v7[0] = v1[5];
  *(v7 + 11) = *(v1 + 91);
  sub_19344E6DC(v6, &qword_1EAE41B20, &qword_193980828);
  v4 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v4;
  v1[5] = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 91) = result;
  return result;
}

uint64_t ToolKitToolToolInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  sub_19347549C(0xF000000000000007);
  *(a1 + 32) = 0xF000000000000007;
  *(a1 + 40) = sub_19393C510();
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v5[0] = *(a1 + 80);
  *(v5 + 11) = *(a1 + 91);
  result = sub_19344E6DC(v4, &qword_1EAE41B20, &qword_193980828);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  return result;
}

void static ToolKitToolToolInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = *(v3 + 4);
  v71 = *(v3 + 3);
  v72 = v10;
  v73[0] = *(v3 + 5);
  *(v73 + 11) = *(v3 + 91);
  v11 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v16 = v1[4];
  v15 = v1[5];
  *(v76 + 11) = *(v1 + 91);
  v17 = *(v1 + 5);
  v75 = *(v1 + 4);
  v76[0] = v17;
  v74 = *(v1 + 3);
  if (!v5)
  {
    if (v12)
    {
      goto LABEL_35;
    }

LABEL_10:
    if (v8)
    {
      if (!v13)
      {
        goto LABEL_35;
      }

      if (v6 != v14 || v8 != v13)
      {
        OUTLINED_FUNCTION_32_4();
        OUTLINED_FUNCTION_333();
        if ((sub_19393CA30() & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_147_8();
    if (v18)
    {
      v21 = v20 & ~v16;
      sub_193438D88(v7);
      sub_193438D88(v16);
      if (v21)
      {
LABEL_25:
        sub_19347549C(v7);
        sub_19347549C(v16);
        goto LABEL_35;
      }

      sub_19347549C(v7);
    }

    else
    {
      *&v60 = v7;
      if ((v20 & ~v16) == 0)
      {
        sub_193438D88(v7);
        OUTLINED_FUNCTION_390(v16);

        goto LABEL_25;
      }

      *&v57 = v16;
      sub_193438D88(v7);
      OUTLINED_FUNCTION_390(v16);
      v22 = static ToolKitToolContainerDefinition.Device.== infix(_:_:)(&v60, &v57);

      sub_19347549C(v7);
      if ((v22 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v23 = OUTLINED_FUNCTION_225();
    if ((sub_1937213EC(v23, v24) & 1) == 0)
    {
      goto LABEL_35;
    }

    v69 = v71;
    v25 = *(&v72 + 1);
    v70 = v72;
    v26 = *(&v75 + 1);
    *&v67[21] = v75;
    v68[0] = v73[0];
    *(v68 + 11) = *(v73 + 11);
    *&v67[5] = v74;
    *(v66 + 11) = *(v76 + 11);
    v66[0] = v76[0];
    if (*(&v72 + 1) == 1)
    {
      if (*(&v75 + 1) == 1)
      {
        v60 = v71;
        *&v61 = v72;
        *(&v61 + 1) = 1;
        *v62 = v73[0];
        *&v62[11] = *(v73 + 11);
        OUTLINED_FUNCTION_27_7(&v71, &v57);
        OUTLINED_FUNCTION_27_7(&v74, &v57);
LABEL_37:
        OUTLINED_FUNCTION_188_4();
        sub_19344E6DC(v47, v48, v49);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v39, v40, v41, v42);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v43, v44, v45, v46);
    }

    else
    {
      v60 = v71;
      v61 = v72;
      *v62 = v73[0];
      *&v62[11] = *(v73 + 11);
      v57 = v71;
      v58 = v72;
      v59[0] = *v62;
      *(v59 + 11) = *(v73 + 11);
      if (*(&v75 + 1) != 1)
      {
        v54 = v74;
        v56[0] = v76[0];
        *(v56 + 11) = *(v76 + 11);
        v55 = v75;
        OUTLINED_FUNCTION_27_7(&v71, v52);
        OUTLINED_FUNCTION_27_7(&v74, v52);
        OUTLINED_FUNCTION_27_7(&v60, v52);
        static ToolKitToolToolInvocationOptions.== infix(_:_:)();
        v50[0] = v54;
        v50[1] = v55;
        v51[0] = v56[0];
        *(v51 + 11) = *(v56 + 11);
        sub_193737A64(v50);
        v52[0] = v57;
        v52[1] = v58;
        v53[0] = v59[0];
        *(v53 + 11) = *(v59 + 11);
        sub_193737A64(v52);
        v54 = v69;
        *&v55 = v70;
        *(&v55 + 1) = v25;
        v56[0] = v68[0];
        *(v56 + 11) = *(v68 + 11);
        goto LABEL_37;
      }

      v54 = v60;
      v55 = v61;
      v56[0] = *v62;
      *(v56 + 11) = *&v62[11];
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v27, v28, v29, v30);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v31, v32, v33, v34);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v35, v36, v37, v38);
      sub_193737A64(&v54);
    }

    v60 = v69;
    *&v61 = v70;
    *(&v61 + 1) = v25;
    *v62 = v68[0];
    *&v62[11] = *(v68 + 11);
    *v63 = *v67;
    *&v63[13] = *&v67[13];
    v64 = v26;
    v65[0] = v66[0];
    *(v65 + 11) = *(v66 + 11);
    sub_19344E6DC(&v60, &qword_1EAE41B28, &unk_193980830);
    goto LABEL_35;
  }

  if (v12)
  {
    v18 = v4 == v11 && v5 == v12;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

uint64_t ToolKitToolToolInvocation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolToolInvocation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193734D6C()
{
  sub_19393CAB0();
  ToolKitToolToolInvocation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t ToolKitToolToolInvocationOptions.locale.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolInvocationOptions.requestIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void ToolKitToolToolInvocationOptions.interfaceIdiom.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  OUTLINED_FUNCTION_5_2(a1);
}

void ToolKitToolToolInvocationOptions.interfaceIdiom.setter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  OUTLINED_FUNCTION_124_8(*a1);
}

double ToolKitToolToolInvocationOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 513;
  return result;
}

uint64_t sub_193734F4C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193734F74@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolInvocationOptions.InteractionMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735064@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19373508C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolInvocationOptions.InterfaceIdiom.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolToolInvocationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_273_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v33 = *(v0 + 48);
  v34 = *(v0 + 56);
  v6 = *(v0 + 57);
  v36 = *(v0 + 58);
  v7 = *(v1 + 9);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 48);
  v32 = *(v1 + 56);
  v13 = *(v1 + 57);
  v35 = *(v1 + 58);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_28;
    }

    v14 = *v0;
    v15 = *(v0 + 8);
    v30 = *(v0 + 40);
    v16 = *v1;
    OUTLINED_FUNCTION_250_1(v0, v1);
    v17 = v11;
    v19 = v18;
    v31 = v5;
    v20 = v13;
    v21 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    v22 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    v10 = v19;
    v11 = v17;
    v23 = v21 == v22;
    v13 = v20;
    v4 = v30;
    v5 = v31;
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  if (!v3)
  {
    if (v8)
    {
      goto LABEL_28;
    }

LABEL_16:
    if (v4)
    {
      if (!v10)
      {
        goto LABEL_28;
      }

      v29 = v5 == v11 && v4 == v10;
      if (!v29 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v10)
    {
      goto LABEL_28;
    }

    if ((v6 & 1) == 0 && (v13 & 1) == 0)
    {
      ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
      ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
    }

    goto LABEL_28;
  }

  if (v8)
  {
    v23 = v2 == v9 && v3 == v8;
    if (v23)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_177_5();
    v25 = v24;
    v27 = v26;
    v28 = sub_19393CA30();
    v10 = v25;
    v4 = v27;
    if (v28)
    {
      goto LABEL_16;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolToolInvocationOptions.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_148_2();
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v8 = *(v0 + 58);
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(v0 + 58);
    v10 = v0[6];
    v11 = *(v0 + 8);
    v12 = *v0;
    OUTLINED_FUNCTION_103_0();
    v8 = v15;
    OUTLINED_FUNCTION_177_1();
    v13 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    MEMORY[0x193B18030](v13);
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_104_0();
      if (v7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_125();
  sub_19393C640();
  if (v7)
  {
LABEL_5:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_10;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v14 = ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
  MEMORY[0x193B18030](v14);
LABEL_10:
  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolToolInvocationOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolToolInvocationOptions.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937354A8()
{
  sub_19393CAB0();
  ToolKitToolToolInvocationOptions.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitTranscript.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t ToolKitTranscript.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t ToolKitTranscript.uuid.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 28), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t ToolKitTranscript.toolDefinition.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for ToolKitTranscript() + 32);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x278uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE408D0, &qword_193980840);
}

void *ToolKitTranscript.toolDefinition.setter()
{
  v2 = *(OUTLINED_FUNCTION_306_0() + 32);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE408D0, &qword_193980840);
  return memcpy((v1 + v2), v0, 0x278uLL);
}

uint64_t ToolKitTranscript.parameterValues.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitTranscript() + 36));
}

uint64_t ToolKitTranscript.parameterValues.setter()
{
  v2 = *(OUTLINED_FUNCTION_306_0() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_193735954(void (*a1)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a1(&v3);
  return sub_19393CB00();
}

uint64_t sub_1937359C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

void *sub_193735A0C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = a1(&v4);
  a2[2] = v4;
  return result;
}

uint64_t sub_193735A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = OUTLINED_FUNCTION_13_20(a1);
  v7 = *(v6 + 16);
  v8 = v5[2];
  v9 = v4 == *v5 && *(v6 + 8) == v5[1];
  if (v9 || (v10 = 0, (sub_19393CA30() & 1) != 0))
  {

    v19 = OUTLINED_FUNCTION_143_7(v11, v12, v13, v14, v15, v16, v17, v18, v8, v7);
    v10 = a3(v19);

    OUTLINED_FUNCTION_417(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30);
  }

  return v10 & 1;
}

uint64_t sub_193735AE8()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_19393C640();
  v5 = OUTLINED_FUNCTION_264_0();
  return v0(v5);
}

uint64_t sub_193735B34(void (*a1)(char *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_175();
  v6 = sub_19393C640();
  v14 = OUTLINED_FUNCTION_298_1(v6, v7, v8, v9, v10, v11, v12, v13, v5, v16);
  a1(v14);
  return sub_19393CB00();
}

uint64_t sub_193735C04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_19393CAB0();
  OUTLINED_FUNCTION_175();
  v9 = sub_19393C640();
  v17 = OUTLINED_FUNCTION_298_1(v9, v10, v11, v12, v13, v14, v15, v16, v8, v19);
  a4(v17);
  return sub_19393CB00();
}

uint64_t ToolKitTranscript.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitTranscript.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193735CD8()
{
  sub_19393CAB0();
  ToolKitTranscript.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193735D24@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolNullValue.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193735D4C@<X0>(char **a1@<X8>)
{
  result = static ToolKitToolNullValue.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_193735D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1936D4500();
}

uint64_t sub_193735DA0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimePlatform.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735DC8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimePlatform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735EB0(const void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v22 = v2;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(v2 + 56) + 8 * v13);

      if (!v15)
      {
        break;
      }

      memcpy(__dst, a1, sizeof(__dst));
      sub_19393C640();

      MEMORY[0x193B18030](*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v10;
        v20 = a1;

        v21 = 32;
        do
        {
          v23 = *(v17 + v21);

          ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();

          v21 += 8;
          --v18;
        }

        while (v18);

        a1 = v20;
        v10 = v19;
        v2 = v22;
      }

      v7 &= v7 - 1;

      result = sub_19393CB00();
      v10 ^= result;
      if (!v7)
      {
        goto LABEL_4;
      }
    }

LABEL_15:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_15;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_193736068(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = v17;
      memcpy(v18, a1, sizeof(v18));
      sub_19393C640();

      ToolKitToolTypedValueResolvable.hash(into:)();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
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

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1937361C8(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = v17;
      memcpy(v18, a1, sizeof(v18));
      sub_19393C640();

      ToolKitToolTypedValue.hash(into:)();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
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

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_193736328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;

      ToolKitToolToolSummaryString.Component.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937363A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193B18030](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v14, v6, sizeof(v14));
      memcpy(__dst, v6, sizeof(__dst));
      sub_1936D0610(v14, v15);
      ToolKitToolContainerDefinition.hash(into:)(a1, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], SHIDWORD(v14[6]));
      memcpy(v15, __dst, sizeof(v15));
      result = sub_193713244(v15);
      v6 += 112;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_193736454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;

      ToolKitToolSystemToolProtocol.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937364D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v20 = v3;
  if (v3)
  {
    v5 = 0;
    v19 = a2 + 32;
    do
    {
      v6 = (v19 + 32 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      MEMORY[0x193B18030](*(*v6 + 16));
      v11 = *(v7 + 16);
      if (v11)
      {

        v12 = (v7 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;

          sub_19393C640();

          v12 += 2;
          --v11;
        }

        while (v11);
        if (!v9)
        {
LABEL_9:
          sub_19393CAD0();
          goto LABEL_10;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_10:
      MEMORY[0x193B18030](*(v10 + 16));
      v15 = *(v10 + 16);
      if (v15)
      {
        v16 = (v10 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          sub_19393C640();

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      ++v5;
    }

    while (v5 != v20);
  }

  return result;
}

uint64_t sub_193736658(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;

      ToolKitToolRuntimeRequirement.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937366D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    v6 = (a2 + 40);
    do
    {
      v7 = *v6;
      v6 += 2;
      if (v7)
      {
        v8 = *(v5 - 1);
        sub_19393CAD0();

        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      v5 = v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736770(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1936CEFA0(__dst, v7);
      ToolKitToolToolDefinition.Version1.Parameter.hash(into:)();
      memcpy(v7, __src, sizeof(v7));
      result = sub_193740704(v7);
      v5 += 136;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736820(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 1))
      {
        v7 = *(v5 - 2);
        sub_19393CAD0();

        sub_193437C90(v6);
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
        sub_193437C90(v6);
      }

      sub_19393CAD0();
      if ((~v6 & 0xF000000000000007) != 0)
      {

        ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();

        sub_193444060(v6);
      }

      else
      {

        result = sub_193444060(v6);
      }

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v7 = *v5;
      if (*(v5 - 3))
      {
        v9 = *(v5 - 4);
        sub_19393CAD0();

        sub_193437C90(v7);
        sub_19393C640();
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();

        sub_193437C90(v7);
        if (!v8)
        {
LABEL_7:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_8:
      sub_19393CAD0();
      if ((~v7 & 0xF000000000000007) != 0)
      {

        ToolKitToolTypeInstance.hash(into:)();

        sub_193444060(v7);
      }

      else
      {

        result = sub_193444060(v7);
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v18 = v3;
  if (v3)
  {
    v5 = 0;
    v17 = a2 + 32;
    while (1)
    {
      memcpy(__dst, (v17 + 96 * v5), 0x60uLL);
      if (__dst[1])
      {
        sub_19393CAD0();
        sub_1936C15F8(__dst, v19);
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
        sub_1936C15F8(__dst, v19);
      }

      v6 = __dst[7];
      if (!__dst[7])
      {
        break;
      }

      v7 = __dst[3];
      v9 = __dst[4];
      v8 = __dst[5];
      v10 = __dst[6];
      v16 = __dst[9];
      v11 = __dst[11];
      sub_19393CAD0();
      sub_19393CAD0();
      if (v7)
      {
        sub_19393C640();
      }

      if ((~v9 & 0xF000000000000007) != 0)
      {
        v19[0] = v9;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.Subtitle.hash(into:)();
      }

      else
      {
        sub_19393CAD0();
      }

      if ((~v8 & 0xF000000000000007) != 0)
      {
        v19[0] = v8;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.AltText.hash(into:)();
      }

      else
      {
        sub_19393CAD0();
      }

      if ((~v10 & 0xF000000000000007) != 0)
      {
        v19[0] = v10;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.Image.hash(into:)();
      }

      else
      {
        sub_19393CAD0();
      }

      MEMORY[0x193B18030](*(v6 + 16));
      v12 = *(v6 + 16);
      if (v12)
      {
        v13 = (v6 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;

          sub_19393C640();

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      if (v11 == 1)
      {
        break;
      }

      sub_19393CAD0();
      if (v16 >> 60 == 15)
      {
        sub_19393CAD0();
        if (!v11)
        {
          break;
        }
      }

      else
      {
        sub_19393CAD0();
        sub_19393BD50();
        if (!v11)
        {
          break;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_27:
      result = sub_193740794(__dst);
      if (++v5 == v18)
      {
        return result;
      }
    }

    sub_19393CAD0();
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_193736DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 7) == 1)
      {
        sub_19393CAD0();
        sub_193437C90(v6);
      }

      else
      {
        v7 = *(v5 - 8);
        v8 = *(v5 - 2);
        sub_19393CAD0();
        v9 = sub_193437C90(v6);
        v10 = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter(v9);
        MEMORY[0x193B18030](v10);
      }

      sub_19393CAD0();
      if ((~v6 & 0xF000000000000007) != 0)
      {
        sub_193437C90(v6);
        ToolKitToolTypeInstance.hash(into:)();
      }

      result = sub_193444060(v6);
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_193736ED4()
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_325(v3, v4);
  if (v1)
  {
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      v8 = v0();
      MEMORY[0x193B18030](v8);
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_351_1();
}

uint64_t sub_193736F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;

      ToolKitToolSystemTypeProtocol.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937372A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 14);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 15) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v9 = *(v5 - 16);
        v10 = *(v5 - 3);
        v11 = sub_19393CAD0();
        v12 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter(v11);
        MEMORY[0x193B18030](v12);
      }

      if (v6 != 2)
      {
        sub_19393CAD0();
      }

      sub_19393CAD0();
      if (v8)
      {
        result = sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        result = MEMORY[0x193B18060](v7);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937373C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 41);
    do
    {
      v6 = *v5;
      if (*(v5 - 1) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v7 = *(v5 - 9);
        sub_19393CAD0();
        MEMORY[0x193B18060](v7);
      }

      if (v6 != 2)
      {
        sub_19393CAD0();
      }

      v5 += 16;
      result = sub_19393CAD0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193737464()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v2 = *v0;
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 56);
  v8 = v0[9];
  v11 = v0[6];
  v12 = v0[8];
  v9 = *(v0 + 57);
  sub_19393CAD0();
  if (v1)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v9)
    {
LABEL_13:
      sub_19393CAD0();
      if (v8)
      {
        goto LABEL_14;
      }

      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v9)
    {
      goto LABEL_13;
    }
  }

  sub_19393CAD0();
  if (v3)
  {
    sub_19393CAD0();
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_19393CAD0();
    MEMORY[0x193B18060](v4);
    if ((v6 & 1) == 0)
    {
LABEL_8:
      sub_19393CAD0();
      MEMORY[0x193B18060](v5);
      if (v7)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  sub_19393CAD0();
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_19393CAD0();
  MEMORY[0x193B18060](v11);
  if (!v8)
  {
    return sub_19393CAD0();
  }

LABEL_14:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_1937375FC(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_193437C90(result);
  }

  return result;
}

uint64_t sub_193737648(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_193737690(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1937377A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {

    sub_193437C90(a5);
  }
}

void sub_1937377F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {

    sub_193444060(a5);
  }
}

uint64_t sub_193737848()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_19393CAD0();
  if (v1)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v4)
    {
LABEL_4:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_7;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  sub_19393CAD0();
LABEL_7:
  if ((~v5 & 0xF000000000000007) == 0)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  ToolKitToolTypeInstance.hash(into:)();
}

uint64_t sub_1937379AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_193737A20(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_193450268(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ToolKitTranscript()
{
  result = qword_1ED50CAC0;
  if (!qword_1ED50CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_193737AE4()
{
  result = qword_1EAE41B30;
  if (!qword_1EAE41B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B30);
  }

  return result;
}

unint64_t sub_193737B3C()
{
  result = qword_1EAE41B38;
  if (!qword_1EAE41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B38);
  }

  return result;
}

unint64_t sub_193737BC4()
{
  result = qword_1EAE41B50;
  if (!qword_1EAE41B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B50);
  }

  return result;
}

unint64_t sub_193737C1C()
{
  result = qword_1EAE41B58;
  if (!qword_1EAE41B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B58);
  }

  return result;
}

unint64_t sub_193737C74()
{
  result = qword_1EAE41B60;
  if (!qword_1EAE41B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B60);
  }

  return result;
}

unint64_t sub_193737CCC()
{
  result = qword_1EAE41B68;
  if (!qword_1EAE41B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B68);
  }

  return result;
}

unint64_t sub_193737D24()
{
  result = qword_1EAE41B70;
  if (!qword_1EAE41B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B70);
  }

  return result;
}

unint64_t sub_193737D7C()
{
  result = qword_1EAE41B78;
  if (!qword_1EAE41B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B78);
  }

  return result;
}

unint64_t sub_193737DD4()
{
  result = qword_1EAE41B80;
  if (!qword_1EAE41B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B80);
  }

  return result;
}

unint64_t sub_193737E2C()
{
  result = qword_1EAE41B88;
  if (!qword_1EAE41B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B88);
  }

  return result;
}

unint64_t sub_193737E84()
{
  result = qword_1EAE41B90;
  if (!qword_1EAE41B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B90);
  }

  return result;
}

unint64_t sub_193737EDC()
{
  result = qword_1EAE41B98;
  if (!qword_1EAE41B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B98);
  }

  return result;
}

unint64_t sub_193737F34()
{
  result = qword_1EAE41BA0;
  if (!qword_1EAE41BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BA0);
  }

  return result;
}

unint64_t sub_193737FBC()
{
  result = qword_1EAE41BB0;
  if (!qword_1EAE41BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BB0);
  }

  return result;
}

unint64_t sub_193738014()
{
  result = qword_1EAE41BB8;
  if (!qword_1EAE41BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BB8);
  }

  return result;
}

unint64_t sub_19373806C()
{
  result = qword_1EAE41BC0;
  if (!qword_1EAE41BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BC0);
  }

  return result;
}

unint64_t sub_1937380F4()
{
  result = qword_1EAE41BD8;
  if (!qword_1EAE41BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BD8);
  }

  return result;
}

unint64_t sub_19373814C()
{
  result = qword_1EAE41BE0;
  if (!qword_1EAE41BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BE0);
  }

  return result;
}

unint64_t sub_1937381A4()
{
  result = qword_1EAE41BE8;
  if (!qword_1EAE41BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BE8);
  }

  return result;
}

unint64_t sub_1937381FC()
{
  result = qword_1EAE41BF0;
  if (!qword_1EAE41BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BF0);
  }

  return result;
}

unint64_t sub_193738254()
{
  result = qword_1EAE41BF8;
  if (!qword_1EAE41BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BF8);
  }

  return result;
}

unint64_t sub_1937382AC()
{
  result = qword_1EAE41C00;
  if (!qword_1EAE41C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C00);
  }

  return result;
}

unint64_t sub_193738304()
{
  result = qword_1EAE41C08;
  if (!qword_1EAE41C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C08);
  }

  return result;
}

unint64_t sub_19373835C()
{
  result = qword_1EAE41C10;
  if (!qword_1EAE41C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C10);
  }

  return result;
}

unint64_t sub_1937383B4()
{
  result = qword_1EAE41C18;
  if (!qword_1EAE41C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C18);
  }

  return result;
}

unint64_t sub_19373840C()
{
  result = qword_1EAE41C20;
  if (!qword_1EAE41C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C20);
  }

  return result;
}

unint64_t sub_193738494()
{
  result = qword_1EAE41C38;
  if (!qword_1EAE41C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C38);
  }

  return result;
}

unint64_t sub_1937384EC()
{
  result = qword_1EAE41C40;
  if (!qword_1EAE41C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C40);
  }

  return result;
}

unint64_t sub_193738544()
{
  result = qword_1EAE41C48;
  if (!qword_1EAE41C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C48);
  }

  return result;
}

unint64_t sub_19373859C()
{
  result = qword_1EAE41C50;
  if (!qword_1EAE41C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C50);
  }

  return result;
}

unint64_t sub_1937385F4()
{
  result = qword_1EAE41C58;
  if (!qword_1EAE41C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C58);
  }

  return result;
}

unint64_t sub_19373867C()
{
  result = qword_1EAE41C70;
  if (!qword_1EAE41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C70);
  }

  return result;
}

unint64_t sub_1937386D4()
{
  result = qword_1EAE41C78;
  if (!qword_1EAE41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C78);
  }

  return result;
}

unint64_t sub_19373875C()
{
  result = qword_1EAE41C90;
  if (!qword_1EAE41C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C90);
  }

  return result;
}

unint64_t sub_1937387B4()
{
  result = qword_1EAE41C98;
  if (!qword_1EAE41C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C98);
  }

  return result;
}

unint64_t sub_19373883C()
{
  result = qword_1EAE41CB0;
  if (!qword_1EAE41CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CB0);
  }

  return result;
}

unint64_t sub_193738894()
{
  result = qword_1EAE41CB8;
  if (!qword_1EAE41CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CB8);
  }

  return result;
}

unint64_t sub_1937388EC()
{
  result = qword_1EAE41CC0;
  if (!qword_1EAE41CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CC0);
  }

  return result;
}

unint64_t sub_193738944()
{
  result = qword_1EAE41CC8;
  if (!qword_1EAE41CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CC8);
  }

  return result;
}

unint64_t sub_19373899C()
{
  result = qword_1EAE41CD0;
  if (!qword_1EAE41CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CD0);
  }

  return result;
}

unint64_t sub_1937389F4()
{
  result = qword_1EAE41CD8;
  if (!qword_1EAE41CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CD8);
  }

  return result;
}

unint64_t sub_193738A4C()
{
  result = qword_1EAE41CE0;
  if (!qword_1EAE41CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CE0);
  }

  return result;
}

unint64_t sub_193738AA4()
{
  result = qword_1EAE41CE8;
  if (!qword_1EAE41CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CE8);
  }

  return result;
}

unint64_t sub_193738B2C()
{
  result = qword_1EAE41D00;
  if (!qword_1EAE41D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D00);
  }

  return result;
}

unint64_t sub_193738B84()
{
  result = qword_1EAE41D08;
  if (!qword_1EAE41D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D08);
  }

  return result;
}

unint64_t sub_193738BDC()
{
  result = qword_1EAE41D10;
  if (!qword_1EAE41D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D10);
  }

  return result;
}

unint64_t sub_193738C64()
{
  result = qword_1EAE41D28;
  if (!qword_1EAE41D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D28);
  }

  return result;
}

unint64_t sub_193738CEC()
{
  result = qword_1EAE41D40;
  if (!qword_1EAE41D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D40);
  }

  return result;
}

unint64_t sub_193738D74()
{
  result = qword_1EAE41D58;
  if (!qword_1EAE41D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D58);
  }

  return result;
}

unint64_t sub_193738DFC()
{
  result = qword_1EAE41D70;
  if (!qword_1EAE41D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D70);
  }

  return result;
}

unint64_t sub_193738E54()
{
  result = qword_1EAE41D78;
  if (!qword_1EAE41D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D78);
  }

  return result;
}

unint64_t sub_193738EAC()
{
  result = qword_1EAE41D80;
  if (!qword_1EAE41D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D80);
  }

  return result;
}

unint64_t sub_193738F04()
{
  result = qword_1EAE41D88;
  if (!qword_1EAE41D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D88);
  }

  return result;
}

unint64_t sub_193738F5C()
{
  result = qword_1EAE41D90;
  if (!qword_1EAE41D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D90);
  }

  return result;
}

unint64_t sub_193738FB4()
{
  result = qword_1EAE41D98;
  if (!qword_1EAE41D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D98);
  }

  return result;
}

unint64_t sub_19373900C()
{
  result = qword_1EAE41DA0;
  if (!qword_1EAE41DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DA0);
  }

  return result;
}

unint64_t sub_193739064()
{
  result = qword_1EAE41DA8;
  if (!qword_1EAE41DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DA8);
  }

  return result;
}

unint64_t sub_1937390BC()
{
  result = qword_1EAE41DB0;
  if (!qword_1EAE41DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DB0);
  }

  return result;
}

unint64_t sub_193739114()
{
  result = qword_1EAE41DB8;
  if (!qword_1EAE41DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DB8);
  }

  return result;
}

unint64_t sub_19373916C()
{
  result = qword_1EAE41DC0;
  if (!qword_1EAE41DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DC0);
  }

  return result;
}

unint64_t sub_1937391C4()
{
  result = qword_1EAE41DC8;
  if (!qword_1EAE41DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DC8);
  }

  return result;
}

unint64_t sub_19373921C()
{
  result = qword_1EAE41DD0;
  if (!qword_1EAE41DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DD0);
  }

  return result;
}

unint64_t sub_193739274()
{
  result = qword_1EAE41DD8;
  if (!qword_1EAE41DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DD8);
  }

  return result;
}

unint64_t sub_1937392CC()
{
  result = qword_1EAE41DE0;
  if (!qword_1EAE41DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DE0);
  }

  return result;
}

unint64_t sub_193739324()
{
  result = qword_1EAE41DE8;
  if (!qword_1EAE41DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DE8);
  }

  return result;
}

unint64_t sub_19373937C()
{
  result = qword_1EAE41DF0;
  if (!qword_1EAE41DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DF0);
  }

  return result;
}

unint64_t sub_1937393D4()
{
  result = qword_1EAE41DF8;
  if (!qword_1EAE41DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DF8);
  }

  return result;
}

unint64_t sub_19373942C()
{
  result = qword_1EAE41E00;
  if (!qword_1EAE41E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E00);
  }

  return result;
}

unint64_t sub_193739488()
{
  result = qword_1EAE41E08;
  if (!qword_1EAE41E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E08);
  }

  return result;
}

unint64_t sub_1937394E0()
{
  result = qword_1EAE41E10;
  if (!qword_1EAE41E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E10);
  }

  return result;
}

unint64_t sub_193739538()
{
  result = qword_1EAE41E18;
  if (!qword_1EAE41E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E18);
  }

  return result;
}

unint64_t sub_193739590()
{
  result = qword_1EAE41E20;
  if (!qword_1EAE41E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E20);
  }

  return result;
}

unint64_t sub_1937395E8()
{
  result = qword_1EAE41E28;
  if (!qword_1EAE41E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E28);
  }

  return result;
}

unint64_t sub_193739640()
{
  result = qword_1EAE41E30;
  if (!qword_1EAE41E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E30);
  }

  return result;
}

unint64_t sub_1937396C8()
{
  result = qword_1EAE41E48;
  if (!qword_1EAE41E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E48);
  }

  return result;
}

unint64_t sub_193739750()
{
  result = qword_1EAE41E60;
  if (!qword_1EAE41E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E60);
  }

  return result;
}

unint64_t sub_1937397B8()
{
  result = qword_1EAE41E68;
  if (!qword_1EAE41E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E68);
  }

  return result;
}

unint64_t sub_193739810()
{
  result = qword_1EAE41E70;
  if (!qword_1EAE41E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E70);
  }

  return result;
}

unint64_t sub_193739868()
{
  result = qword_1EAE41E78;
  if (!qword_1EAE41E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E78);
  }

  return result;
}

unint64_t sub_1937398C0()
{
  result = qword_1EAE41E80;
  if (!qword_1EAE41E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E80);
  }

  return result;
}

unint64_t sub_193739918()
{
  result = qword_1EAE41E88;
  if (!qword_1EAE41E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E88);
  }

  return result;
}

unint64_t sub_1937399A0()
{
  result = qword_1EAE41EA0;
  if (!qword_1EAE41EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EA0);
  }

  return result;
}

unint64_t sub_193739A28()
{
  result = qword_1EAE41EB8;
  if (!qword_1EAE41EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EB8);
  }

  return result;
}

unint64_t sub_193739AB0()
{
  result = qword_1EAE41ED0;
  if (!qword_1EAE41ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41ED0);
  }

  return result;
}

unint64_t sub_193739B08()
{
  result = qword_1EAE41ED8;
  if (!qword_1EAE41ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41ED8);
  }

  return result;
}

unint64_t sub_193739B60()
{
  result = qword_1EAE41EE0;
  if (!qword_1EAE41EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EE0);
  }

  return result;
}

unint64_t sub_193739BB8()
{
  result = qword_1EAE41EE8;
  if (!qword_1EAE41EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EE8);
  }

  return result;
}

unint64_t sub_193739C10()
{
  result = qword_1EAE41EF0;
  if (!qword_1EAE41EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EF0);
  }

  return result;
}

unint64_t sub_193739C68()
{
  result = qword_1EAE41EF8;
  if (!qword_1EAE41EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EF8);
  }

  return result;
}

unint64_t sub_193739CC0()
{
  result = qword_1EAE41F00;
  if (!qword_1EAE41F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F00);
  }

  return result;
}

unint64_t sub_193739D18()
{
  result = qword_1EAE41F08;
  if (!qword_1EAE41F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F08);
  }

  return result;
}

unint64_t sub_193739D70()
{
  result = qword_1EAE41F10;
  if (!qword_1EAE41F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F10);
  }

  return result;
}

unint64_t sub_193739DC8()
{
  result = qword_1EAE41F18;
  if (!qword_1EAE41F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F18);
  }

  return result;
}

unint64_t sub_193739E20()
{
  result = qword_1EAE41F20;
  if (!qword_1EAE41F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F20);
  }

  return result;
}

unint64_t sub_193739E78()
{
  result = qword_1EAE41F28;
  if (!qword_1EAE41F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F28);
  }

  return result;
}

unint64_t sub_193739F00()
{
  result = qword_1EAE41F40;
  if (!qword_1EAE41F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F40);
  }

  return result;
}

unint64_t sub_193739F58()
{
  result = qword_1EAE41F48;
  if (!qword_1EAE41F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F48);
  }

  return result;
}

unint64_t sub_193739FB0()
{
  result = qword_1EAE41F50;
  if (!qword_1EAE41F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F50);
  }

  return result;
}

unint64_t sub_19373A008()
{
  result = qword_1EAE41F58;
  if (!qword_1EAE41F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F58);
  }

  return result;
}

unint64_t sub_19373A060()
{
  result = qword_1EAE41F60;
  if (!qword_1EAE41F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F60);
  }

  return result;
}

unint64_t sub_19373A0B8()
{
  result = qword_1EAE41F68;
  if (!qword_1EAE41F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F68);
  }

  return result;
}

unint64_t sub_19373A110()
{
  result = qword_1EAE41F70;
  if (!qword_1EAE41F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F70);
  }

  return result;
}

unint64_t sub_19373A168()
{
  result = qword_1EAE41F78;
  if (!qword_1EAE41F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F78);
  }

  return result;
}

unint64_t sub_19373A1C0()
{
  result = qword_1EAE41F80;
  if (!qword_1EAE41F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F80);
  }

  return result;
}

unint64_t sub_19373A218()
{
  result = qword_1EAE41F88;
  if (!qword_1EAE41F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F88);
  }

  return result;
}

unint64_t sub_19373A270()
{
  result = qword_1EAE41F90;
  if (!qword_1EAE41F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F90);
  }

  return result;
}

unint64_t sub_19373A2C8()
{
  result = qword_1EAE41F98;
  if (!qword_1EAE41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F98);
  }

  return result;
}

unint64_t sub_19373A320()
{
  result = qword_1EAE41FA0;
  if (!qword_1EAE41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FA0);
  }

  return result;
}

unint64_t sub_19373A3A8()
{
  result = qword_1EAE41FB8;
  if (!qword_1EAE41FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FB8);
  }

  return result;
}

unint64_t sub_19373A400()
{
  result = qword_1EAE41FC0;
  if (!qword_1EAE41FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FC0);
  }

  return result;
}

unint64_t sub_19373A458()
{
  result = qword_1EAE41FC8;
  if (!qword_1EAE41FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FC8);
  }

  return result;
}

unint64_t sub_19373A4B0()
{
  result = qword_1EAE41FD0;
  if (!qword_1EAE41FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FD0);
  }

  return result;
}

unint64_t sub_19373A538()
{
  result = qword_1EAE41FE8;
  if (!qword_1EAE41FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FE8);
  }

  return result;
}

unint64_t sub_19373A590()
{
  result = qword_1EAE41FF0;
  if (!qword_1EAE41FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FF0);
  }

  return result;
}

unint64_t sub_19373A618()
{
  result = qword_1EAE42008;
  if (!qword_1EAE42008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42008);
  }

  return result;
}

unint64_t sub_19373A670()
{
  result = qword_1EAE42010;
  if (!qword_1EAE42010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42010);
  }

  return result;
}

unint64_t sub_19373A6C8()
{
  result = qword_1EAE42018;
  if (!qword_1EAE42018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42018);
  }

  return result;
}

unint64_t sub_19373A720()
{
  result = qword_1EAE42020;
  if (!qword_1EAE42020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42020);
  }

  return result;
}

unint64_t sub_19373A778()
{
  result = qword_1EAE42028;
  if (!qword_1EAE42028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42028);
  }

  return result;
}

unint64_t sub_19373A7D0()
{
  result = qword_1EAE42030;
  if (!qword_1EAE42030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42030);
  }

  return result;
}

unint64_t sub_19373A828()
{
  result = qword_1EAE42038;
  if (!qword_1EAE42038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42038);
  }

  return result;
}

unint64_t sub_19373A884()
{
  result = qword_1EAE42040;
  if (!qword_1EAE42040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42040);
  }

  return result;
}

unint64_t sub_19373A8DC()
{
  result = qword_1EAE42048;
  if (!qword_1EAE42048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42048);
  }

  return result;
}

unint64_t sub_19373A934()
{
  result = qword_1EAE42050;
  if (!qword_1EAE42050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42050);
  }

  return result;
}

unint64_t sub_19373A98C()
{
  result = qword_1EAE42058;
  if (!qword_1EAE42058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42058);
  }

  return result;
}

unint64_t sub_19373A9E4()
{
  result = qword_1EAE42060;
  if (!qword_1EAE42060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42060);
  }

  return result;
}

unint64_t sub_19373AA3C()
{
  result = qword_1EAE42068;
  if (!qword_1EAE42068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42068);
  }

  return result;
}

unint64_t sub_19373AA94()
{
  result = qword_1EAE42070;
  if (!qword_1EAE42070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42070);
  }

  return result;
}

unint64_t sub_19373AAEC()
{
  result = qword_1EAE42078;
  if (!qword_1EAE42078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42078);
  }

  return result;
}

unint64_t sub_19373AB44()
{
  result = qword_1EAE42080;
  if (!qword_1EAE42080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42080);
  }

  return result;
}

unint64_t sub_19373AB9C()
{
  result = qword_1EAE42088;
  if (!qword_1EAE42088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42088);
  }

  return result;
}

unint64_t sub_19373ABF4()
{
  result = qword_1EAE42090;
  if (!qword_1EAE42090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42090);
  }

  return result;
}

unint64_t sub_19373AC4C()
{
  result = qword_1EAE42098;
  if (!qword_1EAE42098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42098);
  }

  return result;
}

unint64_t sub_19373ACA4()
{
  result = qword_1EAE420A0;
  if (!qword_1EAE420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420A0);
  }

  return result;
}

unint64_t sub_19373ACFC()
{
  result = qword_1EAE420A8;
  if (!qword_1EAE420A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420A8);
  }

  return result;
}

unint64_t sub_19373AD54()
{
  result = qword_1EAE420B0;
  if (!qword_1EAE420B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420B0);
  }

  return result;
}

unint64_t sub_19373ADAC()
{
  result = qword_1EAE420B8;
  if (!qword_1EAE420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420B8);
  }

  return result;
}

unint64_t sub_19373AE04()
{
  result = qword_1EAE420C0;
  if (!qword_1EAE420C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420C0);
  }

  return result;
}

unint64_t sub_19373AE5C()
{
  result = qword_1EAE420C8;
  if (!qword_1EAE420C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420C8);
  }

  return result;
}

unint64_t sub_19373AEB4()
{
  result = qword_1EAE420D0;
  if (!qword_1EAE420D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420D0);
  }

  return result;
}

unint64_t sub_19373AF0C()
{
  result = qword_1EAE420D8;
  if (!qword_1EAE420D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420D8);
  }

  return result;
}

unint64_t sub_19373AF94()
{
  result = qword_1EAE420F0;
  if (!qword_1EAE420F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420F0);
  }

  return result;
}

unint64_t sub_19373B01C()
{
  result = qword_1EAE42100;
  if (!qword_1EAE42100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42100);
  }

  return result;
}

unint64_t sub_19373B0A4()
{
  result = qword_1EAE42110;
  if (!qword_1EAE42110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42110);
  }

  return result;
}

unint64_t sub_19373B12C()
{
  result = qword_1EAE42128;
  if (!qword_1EAE42128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42128);
  }

  return result;
}

unint64_t sub_19373B1B4()
{
  result = qword_1EAE42138;
  if (!qword_1EAE42138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42138);
  }

  return result;
}

unint64_t sub_19373B20C()
{
  result = qword_1EAE42140;
  if (!qword_1EAE42140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42140);
  }

  return result;
}

unint64_t sub_19373B264()
{
  result = qword_1EAE42148;
  if (!qword_1EAE42148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42148);
  }

  return result;
}

unint64_t sub_19373B2BC()
{
  result = qword_1EAE42150;
  if (!qword_1EAE42150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42150);
  }

  return result;
}

unint64_t sub_19373B314()
{
  result = qword_1EAE42158;
  if (!qword_1EAE42158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42158);
  }

  return result;
}

unint64_t sub_19373B36C()
{
  result = qword_1EAE42160;
  if (!qword_1EAE42160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42160);
  }

  return result;
}

unint64_t sub_19373B3C4()
{
  result = qword_1EAE42168;
  if (!qword_1EAE42168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42168);
  }

  return result;
}

unint64_t sub_19373B41C()
{
  result = qword_1EAE42170;
  if (!qword_1EAE42170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42170);
  }

  return result;
}

unint64_t sub_19373B474()
{
  result = qword_1EAE42178;
  if (!qword_1EAE42178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42178);
  }

  return result;
}

unint64_t sub_19373B4CC()
{
  result = qword_1EAE42180;
  if (!qword_1EAE42180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42180);
  }

  return result;
}

unint64_t sub_19373B524()
{
  result = qword_1EAE42188;
  if (!qword_1EAE42188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42188);
  }

  return result;
}

unint64_t sub_19373B57C()
{
  result = qword_1EAE42190;
  if (!qword_1EAE42190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42190);
  }

  return result;
}

unint64_t sub_19373B5D4()
{
  result = qword_1EAE42198;
  if (!qword_1EAE42198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42198);
  }

  return result;
}

unint64_t sub_19373B65C()
{
  result = qword_1EAE421B0;
  if (!qword_1EAE421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421B0);
  }

  return result;
}

unint64_t sub_19373B6B4()
{
  result = qword_1EAE421B8;
  if (!qword_1EAE421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421B8);
  }

  return result;
}

unint64_t sub_19373B70C()
{
  result = qword_1EAE421C0;
  if (!qword_1EAE421C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421C0);
  }

  return result;
}

unint64_t sub_19373B764()
{
  result = qword_1EAE421C8;
  if (!qword_1EAE421C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421C8);
  }

  return result;
}

unint64_t sub_19373B7BC()
{
  result = qword_1EAE421D0;
  if (!qword_1EAE421D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421D0);
  }

  return result;
}

unint64_t sub_19373B818()
{
  result = qword_1EAE421D8;
  if (!qword_1EAE421D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421D8);
  }

  return result;
}

unint64_t sub_19373B8A0()
{
  result = qword_1EAE421F0;
  if (!qword_1EAE421F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421F0);
  }

  return result;
}

unint64_t sub_19373B8F8()
{
  result = qword_1EAE421F8;
  if (!qword_1EAE421F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421F8);
  }

  return result;
}

unint64_t sub_19373B950()
{
  result = qword_1EAE42200;
  if (!qword_1EAE42200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42200);
  }

  return result;
}

unint64_t sub_19373B9D8()
{
  result = qword_1EAE42218;
  if (!qword_1EAE42218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42218);
  }

  return result;
}

unint64_t sub_19373BA60()
{
  result = qword_1EAE42230;
  if (!qword_1EAE42230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42230);
  }

  return result;
}

unint64_t sub_19373BAB8()
{
  result = qword_1EAE42238;
  if (!qword_1EAE42238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42238);
  }

  return result;
}

unint64_t sub_19373BB10()
{
  result = qword_1EAE42240;
  if (!qword_1EAE42240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42240);
  }

  return result;
}

unint64_t sub_19373BB68()
{
  result = qword_1EAE42248;
  if (!qword_1EAE42248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42248);
  }

  return result;
}

unint64_t sub_19373BBC0()
{
  result = qword_1EAE42250;
  if (!qword_1EAE42250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42250);
  }

  return result;
}

unint64_t sub_19373BC4C()
{
  result = qword_1EAE42268;
  if (!qword_1EAE42268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42268);
  }

  return result;
}

unint64_t sub_19373BCA8()
{
  result = qword_1EAE42270;
  if (!qword_1EAE42270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42270);
  }

  return result;
}

unint64_t sub_19373BD00()
{
  result = qword_1EAE42278;
  if (!qword_1EAE42278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42278);
  }

  return result;
}

unint64_t sub_19373BD58()
{
  result = qword_1EAE42280;
  if (!qword_1EAE42280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42280);
  }

  return result;
}

unint64_t sub_19373BDB0()
{
  result = qword_1EAE42288;
  if (!qword_1EAE42288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42288);
  }

  return result;
}

unint64_t sub_19373BE08()
{
  result = qword_1EAE42290;
  if (!qword_1EAE42290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42290);
  }

  return result;
}

unint64_t sub_19373BE60()
{
  result = qword_1EAE42298;
  if (!qword_1EAE42298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42298);
  }

  return result;
}

unint64_t sub_19373BEB8()
{
  result = qword_1EAE422A0;
  if (!qword_1EAE422A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422A0);
  }

  return result;
}

unint64_t sub_19373BF10()
{
  result = qword_1EAE422A8;
  if (!qword_1EAE422A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422A8);
  }

  return result;
}

unint64_t sub_19373BF68()
{
  result = qword_1EAE422B0;
  if (!qword_1EAE422B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422B0);
  }

  return result;
}

unint64_t sub_19373BFF0()
{
  result = qword_1EAE422C8;
  if (!qword_1EAE422C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422C8);
  }

  return result;
}

unint64_t sub_19373C048()
{
  result = qword_1EAE422D0;
  if (!qword_1EAE422D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422D0);
  }

  return result;
}

unint64_t sub_19373C0D0()
{
  result = qword_1EAE422E0;
  if (!qword_1EAE422E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422E0);
  }

  return result;
}

unint64_t sub_19373C128()
{
  result = qword_1EAE422E8;
  if (!qword_1EAE422E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422E8);
  }

  return result;
}

unint64_t sub_19373C180()
{
  result = qword_1EAE422F0;
  if (!qword_1EAE422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422F0);
  }

  return result;
}

unint64_t sub_19373C1DC()
{
  result = qword_1EAE422F8;
  if (!qword_1EAE422F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422F8);
  }

  return result;
}

unint64_t sub_19373C234()
{
  result = qword_1EAE42300;
  if (!qword_1EAE42300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42300);
  }

  return result;
}

unint64_t sub_19373C2BC()
{
  result = qword_1EAE42318;
  if (!qword_1EAE42318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42318);
  }

  return result;
}

unint64_t sub_19373C344()
{
  result = qword_1EAE42330;
  if (!qword_1EAE42330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42330);
  }

  return result;
}

unint64_t sub_19373C39C()
{
  result = qword_1EAE42338;
  if (!qword_1EAE42338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42338);
  }

  return result;
}

unint64_t sub_19373C3F8()
{
  result = qword_1EAE42340;
  if (!qword_1EAE42340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42340);
  }

  return result;
}

unint64_t sub_19373C450()
{
  result = qword_1EAE42348;
  if (!qword_1EAE42348)
  {
    type metadata accessor for ToolKitTranscript();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42348);
  }

  return result;
}

unint64_t sub_19373C4DC()
{
  result = qword_1EAE42360;
  if (!qword_1EAE42360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42360);
  }

  return result;
}

unint64_t sub_19373C564()
{
  result = qword_1EAE42378;
  if (!qword_1EAE42378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42378);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolTimestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitToolTimestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19373C63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_370_0(result);
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373C68C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x68 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 103);
    }

    OUTLINED_FUNCTION_265_1(a1);
    if (v3 >= 0x67)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C6D4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x67)
  {
    *result = a2 - 104;
    if (a3 >= 0x68)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x68)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C748(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x70 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 111);
    }

    OUTLINED_FUNCTION_265_1(a1);
    if (v3 >= 0x6F)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C790(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C7EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 240))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 104);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373C838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373C8C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x6F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 110);
    }

    OUTLINED_FUNCTION_265_1(a1);
    if (v3 >= 0x6E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C90C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6E)
  {
    *result = a2 - 111;
    if (a3 >= 0x6F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C9AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 123);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x7B)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD25TypeDisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373CA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 96))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373CA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD12TypeInstanceOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19373CB34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void sub_19373CB7C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_461(a1, a2);
    if (v4)
    {
      *(v3 + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_41_0(a1, a2);
    }
  }
}

uint64_t sub_19373CBD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 88))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373CC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 88) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 88) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD21DisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD20ValueSearchPredicateV8TemplateVSg(void *a1)
{
  v1 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v1 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD14TypeDefinitionV8Version1O5QueryV18PredicateTemplatesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373CD28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 72))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_19373CD64(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 7) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373CDD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373CE18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void sub_19373CE94(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_461(a1, a2);
    if (v4)
    {
      *(v3 + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = a2;
    }
  }
}

uint64_t sub_19373CEF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x69 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 104);
    }

    OUTLINED_FUNCTION_265_1(a1);
    if (v3 >= 0x68)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373CF3C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373CFC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 90))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *(a1 + 17);
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy61_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19373D0AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 61))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19373D0C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 61) = v3;
  return result;
}

uint64_t sub_19373D114(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D15C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D1C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 104);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D290(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D2DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 106))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 56);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *(result + 104) = 0;
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D430(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 418))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 56);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

void sub_19373D47C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 408) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    v3 = OUTLINED_FUNCTION_23_38(a1, 0);
    *(v3 + 392) = v4;
    *(v3 + 416) = 0;
    *(v3 + 376) = v4;
    OUTLINED_FUNCTION_350(v4);
    *v5 = v6;
    if (v7 >= 0x7FFFFFFF)
    {
      *(v5 + 418) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 418) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_115_11(a1, a2);
    }
  }
}

uint64_t sub_19373D544(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 56);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D6DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D7A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 313))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 88);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *(result + 312) = 0;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_19373D898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373D8E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 248))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 176);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373D990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_19373DA4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 30))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *(a1 + 29);
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373DA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 30) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 30) = 0;
    }

    if (a2)
    {
      *(result + 29) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373DAF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *(a1 + 10);
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373DB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *(a1 + 9);
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t storeEnumTagSinglePayload for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373DC70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 144))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373DCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373DD2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373DD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD5QueryV12AnyPredicateOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x77)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD5QueryVSg(void *a1)
{
  v1 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v1 >= 0x77)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19373DE34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 41))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 122);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x7B)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373DE88(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 40) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373DEF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 16);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373DF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373DFB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = *(a1 + 16);
    v4 = (v3 >> 57) & 0x38 | v3 & 7;
    v5 = 126 - (((v3 >> 57) >> 6) | (2 * v4));
    if (!v4)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

uint64_t sub_19373E008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, (((a2 ^ 0x7F) << 6) | ((a2 ^ 0x7F) >> 1) | ((((a2 ^ 0x7F) << 6) | ((a2 ^ 0x7F) >> 1)) << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_19373E0C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373E118(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    result[1] = 0;
    if (a3 >= 0x79)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373E1B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373E1F0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E234(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 121);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD26ContentItemClassDescriptorOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD18RestrictionContextO5InSetV05ValueI0VSg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373E2FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 288))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 128);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373E348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t sub_19373E3DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 216))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 128);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373E418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373E4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E534(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373E57C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E5D8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[50])
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *a1;
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

_BYTE *sub_19373E624(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 5) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[50] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[50] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 119);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = 126 - v3;
    if (!v5)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

unint64_t *sub_19373E760(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    result[1] = 0;
    if (a3 >= 0x78)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373E7BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x71 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 112);
    }

    v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v3 >= 0x70)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373E804(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x70)
  {
    *result = a2 - 113;
    if (a3 >= 0x71)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x71)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373E85C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 56);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19373E8AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E990(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3(a1);
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373E9E4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373EA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0x77 && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 118);
  }

  v3 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 < 0x77)
  {
    return OUTLINED_FUNCTION_46_4(v5);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

unint64_t *sub_19373EADC(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    result[2] = 0;
    result[3] = 0;
    *(result + 32) = 0;
    *result = a2 - 119;
    result[1] = 0;
    if (a3 >= 0x77)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373EB4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 119);
    }

    v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v3 >= 0x77)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373EB90(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolRuntimePlatformVersion(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 22))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    v3 = *(a1 + 21);
    OUTLINED_FUNCTION_112_9();
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t storeEnumTagSinglePayload for ToolKitToolRuntimePlatformVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 21) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373ECCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFD && *(a1 + 82))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 252);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2 ? ((v3 + 2147483646) & 0x7FFFFFFF) - 1 : -2;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373ED2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_19373EDB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373EE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373EE5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373EED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_205_2(result);
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373EF38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373EF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_370_0(result);
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}