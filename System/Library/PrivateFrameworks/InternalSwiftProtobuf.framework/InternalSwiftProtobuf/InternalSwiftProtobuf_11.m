void sub_1AC500018()
{
  OUTLINED_FUNCTION_27_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_57_3(v3);
    if (v4)
    {
      OUTLINED_FUNCTION_11_14(v3);
      sub_1AC509980();
      v3 = *(v0 + 40);
    }
  }

  if (v3 == v2 || *v3 != 91)
  {
    v11 = OUTLINED_FUNCTION_5_24();
    sub_1AC4FF4F4(v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v3);
    sub_1AC509980();
    v5 = *(v0 + 40);
    if (v5 == v2 || *v5 != 93)
    {
      while (1)
      {
        v6 = OUTLINED_FUNCTION_5_24();
        sub_1AC4FF4F4(v6, v7, v8, v9, v10);
        if (v1 || (sub_1AC507970() & 1) != 0)
        {
          break;
        }

        sub_1AC50AB78(0x2Cu);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_14(v5);
      sub_1AC509980();
    }
  }
}

void sub_1AC500100()
{
  OUTLINED_FUNCTION_60();
  v4 = v0;
  v5 = v0[3];
  if (!v5)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_5;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v4[4];
  v10 = __swift_project_boxed_opaque_existential_1(v4, v5);
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13);
  (*(v9 + 8))(&v18, v8, v7, v6, v5, v9);
  (*(v11 + 8))(v15, v5);
  if (!*(&v19 + 1))
  {
LABEL_5:
    sub_1AC50071C(&v18, &qword_1EB5581F8, &unk_1AC520DD0);
    goto LABEL_6;
  }

  sub_1AC465B44(&v18, v21);
  v16 = sub_1AC48DCB4(&v18, v6);
  sub_1AC5002CC(v17, v4, v21);
  (v16)(&v18, 0);
  __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC5002CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC4C9AEC(a1, v15);
  v7 = v16;
  result = sub_1AC50071C(v15, &qword_1EB558200, &unk_1AC520780);
  if (!v7)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v15, a2, &type metadata for TextFormatDecoder, &off_1F211BCA0, v11, v12);
    if (v3)
    {
      return result;
    }

    sub_1AC4E2B84(v15, a1);
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  result = (*(v10 + 40))(a2, &type metadata for TextFormatDecoder, &off_1F211BCA0, v9, v10);
  if (!v3)
  {
LABEL_7:
    sub_1AC4C9AEC(a1, v15);
    v13 = v16;
    result = sub_1AC50071C(v15, &qword_1EB558200, &unk_1AC520780);
    if (!v13)
    {
      sub_1AC477954();
      OUTLINED_FUNCTION_11();
      return OUTLINED_FUNCTION_59(v14, 10);
    }
  }

  return result;
}

uint64_t sub_1AC500668(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1AC5006A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC50071C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unsigned __int8 *OUTLINED_FUNCTION_59_2()
{

  return sub_1AC4FBDF0(v0, v2, v1);
}

uint64_t TextFormatDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50093C()
{
  v2 = *v0;
  sub_1AC51F468();
  TextFormatDecodingError.hash(into:)();
  return sub_1AC51F4C8();
}

unint64_t sub_1AC500988()
{
  result = qword_1EB559D10;
  if (!qword_1EB559D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextFormatDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

InternalSwiftProtobuf::TextFormatDecodingOptions __swiftcall TextFormatDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for TextFormatDecodingOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for TextFormatDecodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC500BF8()
{
  result = sub_1AC51F098();
  *(result + 16) = 2;
  *(result + 32) = 8224;
  qword_1ED6E4140 = result;
  return result;
}

uint64_t sub_1AC500C3C()
{
  v0 = sub_1AC51EE28();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);

  sub_1AC51EE18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  sub_1AC45A8C0();
  v2 = sub_1AC51EE08();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1AC500D14(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *(v3 + 8);

  sub_1AC466118(v7);

  sub_1AC45AC98(a1, &a1[a2]);
}

void sub_1AC500D74(uint64_t a1, unint64_t a2)
{
  v6 = v2[1];

  sub_1AC466118(v7);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  *(v8 + v3 + 32) = 91;
  *v2 = v8;

  sub_1AC45FA3C(a1, a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  *(v9 + 32) = 93;
  *v2 = v10;
}

void sub_1AC500DF8(unint64_t a1)
{
  if (a1 >= 0x3E8)
  {
    sub_1AC500DF8(a1 / 0x3E8);
  }

  else if (a1 < 0x64)
  {
    if (a1 < 0xA)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_7_18(v1 + 1);
  OUTLINED_FUNCTION_17_15(v2 + v1);
LABEL_7:
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_7_18(v1 + 1);
  OUTLINED_FUNCTION_17_15(v3 + v1);
LABEL_8:
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15_13(v4);
}

char *sub_1AC500EC4()
{
  v1 = *(*(v0 + 8) + 16);
  result = (v1 - 2);
  if (v1 < 2)
  {
    __break(1u);
  }

  else
  {
    sub_1AC506BDC(result, v1);
    v3 = *(v0 + 8);

    sub_1AC466118(v4);

    return sub_1AC45FD18("}\n");
  }

  return result;
}

void sub_1AC500F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC469654(a2, a3, v6);
  if (v7 == 255)
  {
    v5 = (*(a3 + 40))(a2, a3);
    sub_1AC5010D0(v5);
  }

  else
  {
    sub_1AC45AC98(v6[0], v6[1]);
    sub_1AC501ACC(v6);
  }
}

char *sub_1AC500FBC(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v2 = sub_1AC51F1A8();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "nan";
    }

    else if (a1 >= 0.0)
    {
      v1 = "inf";
    }

    else
    {
      v1 = "-inf";
    }

    return sub_1AC45FD18(v1);
  }
}

char *sub_1AC501044(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    v2 = sub_1AC51F188();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v1 = "nan";
    }

    else if (a1 >= 0.0)
    {
      v1 = "inf";
    }

    else
    {
      v1 = "-inf";
    }

    return sub_1AC45FD18(v1);
  }
}

void sub_1AC5010D0(unint64_t a1)
{
  v3 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_7_18(v2 + 1);
    *(v4 + v2 + 32) = 45;
    *v1 = v4;
    v3 = -v3;
  }

  sub_1AC500DF8(v3);
}

void sub_1AC501134(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = __OFSUB__(a2, 1);
    v3 = a2 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1AC501134(a1 >> 4, v3);
      sub_1AC45A774();
      OUTLINED_FUNCTION_11_10();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_15_13(v4);
    }
  }

  else
  {

    sub_1AC45FD18("0x");
  }
}

void sub_1AC5011C8(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  OUTLINED_FUNCTION_15_13(v6 + v3);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_85:
    sub_1AC45A774();
    OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_2_15();
    OUTLINED_FUNCTION_15_13(v63);
    return;
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  v10 = 0;
  v65 = a1;
  while (2)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_1AC51F2C8();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = v9;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v11 = sub_1AC51F308();
      }

      v12 = *(v11 + v10);
      if (*(v11 + v10) < 0)
      {
        OUTLINED_FUNCTION_12_17();
        switch(v14)
        {
          case 1:
            goto LABEL_48;
          case 2:
            goto LABEL_60;
          case 3:
            goto LABEL_61;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v67[0] = a1;
    v67[1] = v8;
    v12 = *(v67 + v10);
    if ((*(v67 + v10) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_12_17();
    switch(v26)
    {
      case 1:
LABEL_48:
        v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
        v16 = 2;
        break;
      case 2:
LABEL_60:
        v12 = ((v12 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
        break;
      case 3:
LABEL_61:
        v12 = ((v12 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    switch(v12)
    {
      case 8u:
        v17 = "\\b";
        goto LABEL_44;
      case 9u:
        v17 = "\\t";
        goto LABEL_44;
      case 0xAu:
        v17 = "\\n";
        goto LABEL_44;
      case 0xBu:
        v17 = "\\v";
        goto LABEL_44;
      case 0xCu:
        v17 = "\\f";
        goto LABEL_44;
      case 0xDu:
        v17 = "\\r";
        goto LABEL_44;
      default:
        if (v12 == 34)
        {
          v17 = "\\"";
          goto LABEL_44;
        }

        if (v12 == 92)
        {
          v17 = "\\\";
LABEL_44:
          sub_1AC45FD18(v17);
LABEL_45:
          v10 += v16;
          if (v10 >= v7)
          {

            goto LABEL_85;
          }

          continue;
        }

        v18 = v12 >> 6;
        if (v12 < 0x20 || v12 == 127)
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v43;
          }

          OUTLINED_FUNCTION_18_11();
          if (!(!v30 & v29))
          {
            OUTLINED_FUNCTION_43(v27);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v44);
          }

          *(v9 + 16) = v18;
          *(v9 + v8 + 32) = 92;
          v31 = v8 + 2;
          if (v28 < v8 + 2)
          {
            OUTLINED_FUNCTION_57_0(v27);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v45);
          }

          *(v9 + 16) = v31;
          *(v9 + v18 + 32) = v18 | 0x30;
          v32 = v8 + 3;
          if (v28 < v8 + 3)
          {
            OUTLINED_FUNCTION_43(v27);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v46);
          }

          *(v9 + 16) = v32;
          *(v9 + v31 + 32) = (v12 >> 3) & 7 | 0x30;
          if (v28 < v8 + 4)
          {
            OUTLINED_FUNCTION_57_0(v27);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            v9 = v47;
          }

          *(v9 + 16) = v8 + 4;
          *(v9 + v32 + 32) = v12 & 7 | 0x30;
          *v2 = v9;
          a1 = v65;
          goto LABEL_84;
        }

        if (v12 <= 0x7F)
        {
          OUTLINED_FUNCTION_11_15();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v48;
          }

          v35 = *(v9 + 16);
          v34 = *(v9 + 24);
          if (v35 >= v34 >> 1)
          {
            OUTLINED_FUNCTION_43(v34);
            sub_1AC45A78C();
            v9 = v49;
          }

          *(v9 + 16) = v35 + 1;
          *(v9 + v35 + 32) = v12;
LABEL_83:
          *v2 = v9;
LABEL_84:
          v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v8 = a2 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_45;
        }

        v64 = v12 & 0x3F | 0x80;
        if (v12 <= 0x7FF)
        {
          v36 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = *(v36 + 16);
            sub_1AC45A78C();
            v36 = v51;
          }

          v38 = *(v36 + 16);
          v37 = *(v36 + 24);
          v39 = v37 >> 1;
          v40 = v38 + 1;
          if (v37 >> 1 <= v38)
          {
            OUTLINED_FUNCTION_8_14(v37);
            sub_1AC45A78C();
            v36 = v52;
            v37 = *(v52 + 24);
            v39 = v37 >> 1;
          }

          *(v36 + 16) = v40;
          *(v36 + v38 + 32) = v18 | 0xC0;
          if (v39 < (v38 + 2))
          {
            OUTLINED_FUNCTION_57_0(v37);
            sub_1AC45A78C();
            v36 = v53;
          }

          *(v36 + 16) = v38 + 2;
          *(v36 + v40 + 32) = v64;
          *v2 = v36;
          goto LABEL_84;
        }

        v66 = (v12 >> 6) & 0x3F | 0xFFFFFF80;
        if (!HIWORD(v12))
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v54;
          }

          OUTLINED_FUNCTION_18_11();
          if (!(!v30 & v29))
          {
            OUTLINED_FUNCTION_43(v41);
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v55);
          }

          *(v9 + 16) = v18;
          *(v9 + v8 + 32) = (v12 >> 12) | 0xE0;
          v24 = v8 + 2;
          if (v42 < v8 + 2)
          {
            OUTLINED_FUNCTION_57_0(v41);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v56);
          }

          *(v9 + 16) = v24;
          *(v9 + v18 + 32) = v66;
          v25 = v8 + 3;
          if (v42 < v8 + 3)
          {
            OUTLINED_FUNCTION_43(v41);
            sub_1AC45A78C();
            v9 = v57;
          }

          goto LABEL_82;
        }

        if ((((v12 >> 18) + 240) & 0x100) == 0)
        {
          OUTLINED_FUNCTION_11_15();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_41();
            sub_1AC45A78C();
            v9 = v58;
          }

          v20 = *(v9 + 16);
          v19 = *(v9 + 24);
          v21 = v19 >> 1;
          v22 = v20 + 1;
          if (v19 >> 1 <= v20)
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v59);
          }

          *(v9 + 16) = v22;
          *(v9 + v20 + 32) = (v12 >> 18) - 16;
          v23 = v20 + 2;
          if (v21 < (v20 + 2))
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v60);
          }

          *(v9 + 16) = v23;
          *(v9 + v22 + 32) = (v12 >> 12) & 0x3F | 0x80;
          v24 = v20 + 3;
          if (v21 < (v20 + 3))
          {
            OUTLINED_FUNCTION_57_0(v19);
            OUTLINED_FUNCTION_5_25();
            sub_1AC45A78C();
            OUTLINED_FUNCTION_3_29(v61);
          }

          *(v9 + 16) = v24;
          *(v9 + v23 + 32) = v66;
          v25 = v20 + 4;
          if (v21 < v25)
          {
            OUTLINED_FUNCTION_43(v19);
            sub_1AC45A78C();
            v9 = v62;
          }

          a1 = v65;
LABEL_82:
          *(v9 + 16) = v25;
          *(v9 + v24 + 32) = v64;
          goto LABEL_83;
        }

        __break(1u);
        return;
    }
  }
}

void sub_1AC50182C(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_7_18(v3 + 1);
  OUTLINED_FUNCTION_17_15(v6 + v3);
  sub_1AC501E68(a1, a2, v2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_15(v7);
}

void sub_1AC5018A0(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = a1;
    v5 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      while (1)
      {
        v8 = *v4++;
        v7 = v8;
        switch(v8)
        {
          case 8u:
            v9 = "\\b";
            goto LABEL_26;
          case 9u:
            v9 = "\\t";
            goto LABEL_26;
          case 0xAu:
            v9 = "\\n";
            goto LABEL_26;
          case 0xBu:
            v9 = "\\v";
            goto LABEL_26;
          case 0xCu:
            v9 = "\\f";
            goto LABEL_26;
          case 0xDu:
            v9 = "\\r";
            goto LABEL_26;
          default:
            if (v7 == 34)
            {
              v9 = "\\"";
              goto LABEL_26;
            }

            if (v7 == 92)
            {
              v9 = "\\\";
LABEL_26:
              sub_1AC45FD18(v9);
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_11_15();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a3 = v3;
            if (v7 - 127 >= 0xFFFFFFA1)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_41();
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v27);
              }

              v21 = *(v3 + 16);
              v20 = *(v3 + 24);
              if (v21 >= v20 >> 1)
              {
                OUTLINED_FUNCTION_43(v20);
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v28);
              }

              *(v3 + 16) = v21 + 1;
              *(v3 + v21 + 32) = v7;
            }

            else
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_41();
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v22);
              }

              v12 = *(v3 + 16);
              v11 = *(v3 + 24);
              if (v12 >= v11 >> 1)
              {
                OUTLINED_FUNCTION_43(v11);
                sub_1AC45A78C();
                OUTLINED_FUNCTION_16_12(v23);
              }

              *(v3 + 16) = v12 + 1;
              *(v3 + v12 + 32) = 92;
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v14);
                sub_1AC45A78C();
                v13 = v24;
                *a3 = v24;
              }

              OUTLINED_FUNCTION_10_13(v13, (v7 >> 6) | 0x30);
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v17);
                sub_1AC45A78C();
                v16 = v25;
                *a3 = v25;
              }

              OUTLINED_FUNCTION_10_13(v16, (v7 >> 3) & 7 | 0x30);
              OUTLINED_FUNCTION_8_19();
              if (v15)
              {
                OUTLINED_FUNCTION_8_14(v19);
                sub_1AC45A78C();
                v18 = v26;
                *a3 = v26;
              }

              OUTLINED_FUNCTION_10_13(v18, v7 & 7 | 0x30);
            }

LABEL_27:
            if (!--v5)
            {
              return;
            }

            break;
        }
      }
    }
  }
}

uint64_t sub_1AC501ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559790, "6V");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC501B34(uint64_t *a1, int a2)
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

uint64_t sub_1AC501B74(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TextFormatEncodingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC501CE4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1AC501D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AC501DE0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_1AC502478(a3);
  OUTLINED_FUNCTION_23_13(": ");
  a4(a1, a2);
  sub_1AC45A774();
  v8 = *(*v4 + 16);
  sub_1AC45A85C(v8);
  v9 = *v4;
  *(v9 + 16) = v8 + 1;
  OUTLINED_FUNCTION_13_8(v9 + v8);
}

void sub_1AC501E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v7;
      goto LABEL_7;
    case 2uLL:
      v4 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v4;
LABEL_7:
      sub_1AC506A94(a1, v6, v5, a3);
      break;
    case 3uLL:
      sub_1AC506934(0, 0, a3);
      break;
    default:
      v9 = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      sub_1AC5018A0(&v9, &v9 + BYTE6(a2), a3);
      break;
  }

  v8 = *MEMORY[0x1E69E9840];
}

__n128 sub_1AC501FA4@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559D20, &qword_1AC52ACC8);
  if (swift_dynamicCast())
  {
    sub_1AC458DF0(v14, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    swift_getDynamicType();
    (*(v19 + 8))(v16);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    v12 = v16[1];
    v13 = v16[0];
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
    sub_1AC4575D8(v14, &qword_1EB559D28, &unk_1AC52ACD0);
    v12 = 0u;
  }

  sub_1AC47782C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v6 = *(&v18 + 1);
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v7 + 16))(v14, v6, v7);
    v8 = *&v14[0];
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1AC4575D8(&v17, &qword_1EB5597A0, &qword_1AC528E18);
    v8 = 0;
  }

  sub_1AC458E14(0);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1AC51ED58();

  __swift_destroy_boxed_opaque_existential_1(a1);
  *a3 = v9;
  *(a3 + 8) = v9;
  result = v13;
  *(a3 + 16) = v13;
  *(a3 + 32) = v12;
  *(a3 + 48) = v10;
  *(a3 + 56) = v8;
  *(a3 + 64) = v5;
  return result;
}

uint64_t sub_1AC5021D4()
{
  result = sub_1AC51ED58();
  qword_1EB557A90 = result;
  return result;
}

uint64_t sub_1AC502214(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  v34 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    if (*(v5 + 16))
    {
      v8 = sub_1AC45AA38(a1);
      if (v9)
      {
        sub_1AC45AC98(*(*(v5 + 56) + 80 * v8 + 40), *(*(v5 + 56) + 80 * v8 + 48));
        return v34;
      }
    }
  }

  v10 = sub_1AC4CFA9C(v3, v7);
  if ((v11 & 0x100) == 0)
  {
    if (v11)
    {
      __break(1u);
    }

    else if (v10)
    {
      sub_1AC45FD18(v10);
      return v34;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v6)
  {
LABEL_18:
    v31[0] = v3;
    sub_1AC506D88();
    v21 = sub_1AC51F278();
    sub_1AC45FA3C(v21, v22);
    return v34;
  }

  sub_1AC4CFA38(v3, v6, v31);
  v12 = v32;
  if (!v32)
  {
    sub_1AC4575D8(v31, &qword_1EB558200, &unk_1AC520780);
    goto LABEL_18;
  }

  v13 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v13 + 24))(v28, v12, v13);
  v14 = v29;
  v15 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v3 = (*(v15 + 16))(v14, v15);
  v6 = v16;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1AC45A78C();
  v18 = v17;
  v7 = *(v17 + 16);
  v5 = v7 + 1;
  if (v7 >= *(v17 + 24) >> 1)
  {
LABEL_22:
    sub_1AC45A78C();
    v18 = v24;
  }

  *(v18 + 16) = v5;
  *(v18 + v7 + 32) = 91;
  v34 = v18;
  sub_1AC45FA3C(v3, v6);
  v19 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = *(v19 + 16);
    sub_1AC45A78C();
    v19 = v26;
  }

  v20 = *(v19 + 16);
  if (v20 >= *(v19 + 24) >> 1)
  {
    sub_1AC45A78C();
    v19 = v27;
  }

  *(v19 + 16) = v20 + 1;
  *(v19 + v20 + 32) = 93;
  return v19;
}

void sub_1AC502478(unint64_t a1)
{
  v2 = v1;
  if (v1[2] && (v4 = v1[3], *(v4 + 16)) && (v5 = sub_1AC45AA38(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 80 * v5;
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    v10 = v2[1];

    sub_1AC466118(v11);

    sub_1AC45AC98(v8, v9);
  }

  else
  {
    v12 = sub_1AC4CFA9C(a1, v2[6]);
    if ((v14 & 0x100) != 0)
    {
      v15 = v2[7];
      if (v15)
      {
        sub_1AC4CFA38(a1, v15, v35);
        v16 = v36;
        if (v36)
        {
          v17 = v37;
          __swift_project_boxed_opaque_existential_1(v35, v36);
          OUTLINED_FUNCTION_5();
          v19 = v18;
          v21 = *(v20 + 64);
          MEMORY[0x1EEE9AC00](v22);
          v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v19 + 16))(v24);
          sub_1AC4575D8(v35, &qword_1EB558200, &unk_1AC520780);
          (*(v17 + 24))(v32, v16, v17);
          (*(v19 + 8))(v24, v16);
          v25 = v33;
          v26 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v27 = (*(v26 + 16))(v25, v26);
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_1AC500D74(v27, v29);

          return;
        }

        sub_1AC4575D8(v35, &qword_1EB558200, &unk_1AC520780);
      }

      v30 = v2[1];

      sub_1AC466118(v31);
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        sub_1AC500DF8(a1);
      }
    }

    else
    {

      sub_1AC500D14(v12, v13, v14);
    }
  }
}

uint64_t sub_1AC5026FC(uint64_t result, unint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    switch(a2 >> 62)
    {
      case 1uLL:
        v3 = result >> 32;
        if (result >> 32 >= result)
        {
          result = result;
          v4 = v3;
          goto LABEL_7;
        }

        __break(1u);
        break;
      case 2uLL:
        v5 = *(result + 24);
        result = *(result + 16);
        v4 = v5;
LABEL_7:
        result = sub_1AC506B38(result, v4);
        break;
      case 3uLL:
        return result;
      default:
        result = sub_1AC5069A0(result, a2 & 0xFFFFFFFFFFFFFFLL);
        break;
    }
  }

  return result;
}

unsigned int *sub_1AC502788(unsigned int *result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 1)
    {
      v3 = 0;
      memset(v2, 0, sizeof(v2));
      v5 = 1;
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      v8 = 1;
      v12 = xmmword_1AC5205D0;
      v13 = xmmword_1AC5205D0;
      v4[0] = result;
      v4[1] = (a2 - result);
      v4[2] = result;
      v4[3] = 0;
      sub_1AC450538(v2, v6 + 8);
      v9 = 100;
      v10 = 1;
      v11 = 100;
      sub_1AC502848(v4, 10);
      return sub_1AC45466C(v4);
    }
  }

  return result;
}

uint64_t sub_1AC502848(unsigned int **a1, uint64_t a2)
{
  v4 = v2;
  v159 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7CC0];
  v115 = a2 - 1;
  while (1)
  {
    v7 = a1[1];
    a1[2] = *a1;
    a1[3] = 0;
    if (v7 < 1)
    {
      goto LABEL_93;
    }

    v8 = sub_1AC453530();
    if (v3)
    {
      goto LABEL_93;
    }

    if (v8 >= 0xFFFFFFFF)
    {
      break;
    }

    v9 = v8 >> 3;
    switch(v8 & 7)
    {
      case 0uLL:
        *(a1 + 33) = 0;
        a1[5] = v9;
        v10 = v4[1];

        sub_1AC466118(v11);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(": ");
        v12 = sub_1AC453530();
        *(a1 + 32) = 1;
        sub_1AC500DF8(v12);
        goto LABEL_32;
      case 1uLL:
        *(a1 + 33) = 1;
        a1[5] = v9;
        v17 = v4[1];

        sub_1AC466118(v18);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(": ");
        v19 = a1[1];
        if (v19 <= 7)
        {
          goto LABEL_94;
        }

        v20 = **a1;
        *a1 += 2;
        a1[1] = (v19 - 8);
        *(a1 + 32) = 1;
        v21 = 16;
        goto LABEL_31;
      case 2uLL:
        *(a1 + 33) = 2;
        a1[5] = v9;
        v22 = v4[1];

        sub_1AC466118(v23);
        sub_1AC500DF8(v9);
        v24 = sub_1AC453530();
        if (v24 >= 0x7FFFFFFF)
        {
          goto LABEL_91;
        }

        v25 = a1[1];
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
        }

        v26 = v25 >= v24;
        v27 = (v25 - v24);
        if (!v26)
        {
LABEL_94:
          sub_1AC48D31C();
          swift_allocError();
          v99 = 1;
          goto LABEL_92;
        }

        break;
      case 3uLL:
        *(a1 + 33) = 3;
        a1[5] = v9;
        v13 = v4[1];

        sub_1AC466118(v14);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(" {\n");
        if (qword_1ED6E4138 != -1)
        {
          swift_once();
        }

        sub_1AC466118(v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v6 + 16);
          sub_1AC48F508();
          v6 = v88;
        }

        v16 = *(v6 + 16);
        if (v16 >= *(v6 + 24) >> 1)
        {
          sub_1AC48F508();
          v6 = v89;
        }

        *(v6 + 16) = v16 + 1;
        *(v6 + 8 * v16 + 32) = v9;
        continue;
      case 4uLL:
        *(a1 + 33) = 4;
        a1[5] = v9;
        if (!*(v6 + 16))
        {
          goto LABEL_27;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC488FDC(v6);
          v6 = v97;
        }

        v35 = *(v6 + 16);
        if (!v35)
        {
          goto LABEL_96;
        }

        *(v6 + 16) = v35 - 1;
LABEL_27:
        v36 = *(v4[1] + 16);
        if (v36 < 2)
        {
          goto LABEL_97;
        }

        sub_1AC506BDC(v36 - 2, v36);
        v37 = v4[1];

        sub_1AC466118(v38);
        sub_1AC45FD18("}\n");
        continue;
      case 5uLL:
        *(a1 + 33) = 5;
        a1[5] = v9;
        v39 = v4[1];

        sub_1AC466118(v40);
        sub_1AC500DF8(v9);
        sub_1AC45FD18(": ");
        v41 = a1[1];
        if (v41 <= 3)
        {
          goto LABEL_94;
        }

        v20 = *(*a1)++;
        a1[1] = (v41 - 4);
        *(a1 + 32) = 1;
        v21 = 8;
LABEL_31:
        sub_1AC501134(v20, v21);
LABEL_32:
        v42 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = *(v42 + 16);
          sub_1AC45A78C();
          v42 = v86;
        }

        v43 = *(v42 + 16);
        if (v43 >= *(v42 + 24) >> 1)
        {
          sub_1AC45A78C();
          v42 = v84;
        }

        *(v42 + 16) = v43 + 1;
        *(v42 + v43 + 32) = 10;
        *v4 = v42;
        continue;
      default:
        goto LABEL_91;
    }

    *a1 = (*a1 + v24);
    a1[1] = v27;
    v28 = MEMORY[0x1AC5B4090]();
    *(a1 + 32) = 1;
    v30 = v29 >> 62;
    v31 = v28;
    v32 = v29;
    v33 = BYTE6(v29);
    switch(v29 >> 62)
    {
      case 1uLL:
        LODWORD(v34) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_98;
        }

        v34 = v34;
LABEL_40:
        if (v34 < 1 || a2 < 1)
        {
          goto LABEL_80;
        }

        if (v30 == 2)
        {
          v60 = *(v28 + 16);
          v111 = *(v28 + 24);

          v61 = sub_1AC51EB78();
          if (v61)
          {
            v62 = sub_1AC51EBA8();
            if (__OFSUB__(v60, v62))
            {
              goto LABEL_102;
            }

            v61 += v60 - v62;
          }

          v46 = __OFSUB__(v111, v60);
          v63 = v111 - v60;
          if (v46)
          {
            goto LABEL_101;
          }

          v64 = sub_1AC51EB98();
          if (v64 >= v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = v64;
          }

          if (v61 && v65 >= 1)
          {
            sub_1AC4530E8(a1, &v129);
            v112 = v139;
            v108 = v140;
            sub_1AC450324(&v134 + 8, v124);
            v148 = 1;
            v149 = 0u;
            v150 = 0u;
            v151 = 0u;
            v152 = 0;
            v153 = 1;
            v157 = xmmword_1AC5205D0;
            v158 = xmmword_1AC5205D0;
            v144 = v61;
            v145 = v65;
            v146 = v61;
            v147 = 0;
            sub_1AC450538(v124, &v149 + 8);
            v154 = v112;
            v155 = v108;
            v66 = v141;
            sub_1AC45466C(&v129);
            v156 = v66;
            do
            {
              sub_1AC450760();
            }

            while ((v68 & 1) == 0);
            v69 = v67;
            v105 = MEMORY[0x1AC5B40B0](v31, v32);
            sub_1AC4530E8(a1, v124);
            v113 = v126;
            v109 = v127;
            sub_1AC450324(v125, v123);
            v133 = 1;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = v69;
            v138 = 1;
            v142 = xmmword_1AC5205D0;
            v143 = xmmword_1AC5205D0;
            v129 = v61;
            v130 = v105;
            v131 = v61;
            v132 = 0;
LABEL_74:
            sub_1AC450538(v123, &v134 + 8);
            v139 = v113;
            v59 = v109;
LABEL_75:
            v140 = v59;
            v76 = v128;
            sub_1AC45466C(v124);
            v141 = v76;
            sub_1AC45FE50(" {\n", 3, 2);
            if (qword_1ED6E4138 != -1)
            {
              swift_once();
            }

            sub_1AC466118(v77);
            sub_1AC502848(&v129, v115);
            sub_1AC500EC4();
            sub_1AC45466C(&v129);
            sub_1AC45466C(&v144);
            sub_1AC4513F8(v31, v32);
            sub_1AC4513F8(v31, v32);
            continue;
          }

          goto LABEL_79;
        }

        if (v30 == 1)
        {
          v48 = v28 >> 32;
          if (v28 >> 32 < v28)
          {
            goto LABEL_100;
          }

          v110 = v28;
          v49 = v28;

          v50 = sub_1AC51EB78();
          if (v50)
          {
            v51 = sub_1AC51EBA8();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_103;
            }

            v50 += v49 - v51;
          }

          v52 = v48 - v49;
          v53 = sub_1AC51EB98();
          if (v53 >= v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v53;
          }

          if (v50)
          {
            v31 = v110;
            if (v54 >= 1)
            {
              sub_1AC4530E8(a1, &v129);
              v106 = v139;
              v103 = v140;
              sub_1AC450324(&v134 + 8, v124);
              v148 = 1;
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v152 = 0;
              v153 = 1;
              v157 = xmmword_1AC5205D0;
              v158 = xmmword_1AC5205D0;
              v144 = v50;
              v145 = v54;
              v146 = v50;
              v147 = 0;
              sub_1AC450538(v124, &v149 + 8);
              v154 = v106;
              v155 = v103;
              v55 = v141;
              sub_1AC45466C(&v129);
              v156 = v55;
              do
              {
                sub_1AC450760();
              }

              while ((v57 & 1) == 0);
              v58 = v56;
              v102 = MEMORY[0x1AC5B40B0](v110, v32);
              sub_1AC4530E8(a1, v124);
              v107 = v126;
              v104 = v127;
              sub_1AC450324(v125, v123);
              v133 = 1;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = v58;
              v138 = 1;
              v142 = xmmword_1AC5205D0;
              v143 = xmmword_1AC5205D0;
              v129 = v50;
              v130 = v102;
              v131 = v50;
              v132 = 0;
              sub_1AC450538(v123, &v134 + 8);
              v139 = v107;
              v59 = v104;
              goto LABEL_75;
            }
          }

          else
          {
            v31 = v110;
          }

LABEL_79:
          sub_1AC4513F8(v31, v32);
          goto LABEL_80;
        }

        v117 = v28;
        v118 = v29;
        v119 = BYTE2(v29);
        v120 = BYTE3(v29);
        v121 = BYTE4(v29);
        v122 = BYTE5(v29);
        if (BYTE6(v29))
        {
          sub_1AC4530E8(a1, &v129);
          v114 = v139;
          v70 = v140;
          sub_1AC450324(&v134 + 8, v124);
          v148 = 1;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          v152 = 0;
          v153 = 1;
          v157 = xmmword_1AC5205D0;
          v158 = xmmword_1AC5205D0;
          v144 = &v117;
          v145 = v33;
          v146 = &v117;
          v147 = 0;
          sub_1AC450538(v124, &v149 + 8);
          v154 = v114;
          v155 = v70;
          v71 = v141;
          sub_1AC45466C(&v129);
          v156 = v71;
          do
          {
            sub_1AC450760();
          }

          while ((v73 & 1) == 0);
          v74 = v72;
          v75 = MEMORY[0x1AC5B40B0](v31, v32);
          sub_1AC4530E8(a1, v124);
          v113 = v126;
          v109 = v127;
          sub_1AC450324(v125, v123);
          v133 = 1;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v137 = v74;
          v138 = 1;
          v142 = xmmword_1AC5205D0;
          v143 = xmmword_1AC5205D0;
          v129 = &v117;
          v130 = v75;
          v131 = &v117;
          v132 = 0;
          goto LABEL_74;
        }

LABEL_80:
        sub_1AC45FD18(": ");
        v78 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = *(v78 + 16);
          sub_1AC45A78C();
          v78 = v91;
        }

        v79 = *(v78 + 16);
        if (v79 >= *(v78 + 24) >> 1)
        {
          sub_1AC45A78C();
          v78 = v92;
        }

        *(v78 + 16) = v79 + 1;
        *(v78 + v79 + 32) = 34;
        *v4 = v78;
        sub_1AC501E68(v31, v32, v4);
        v80 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = *(v80 + 16);
          sub_1AC45A78C();
          v80 = v94;
        }

        v81 = *(v80 + 16);
        v82 = v81 + 1;
        if (v81 >= *(v80 + 24) >> 1)
        {
          sub_1AC45A78C();
          v80 = v95;
        }

        *(v80 + 16) = v82;
        *(v80 + v81 + 32) = 34;
        *v4 = v80;
        v83 = v81 + 2;
        if (v83 > *(v80 + 24) >> 1)
        {
          sub_1AC45A78C();
          v80 = v96;
        }

        *(v80 + 16) = v83;
        *(v80 + v82 + 32) = 10;
        sub_1AC4513F8(v31, v32);
        *v4 = v80;
        break;
      case 2uLL:
        v45 = *(v28 + 16);
        v44 = *(v28 + 24);
        v46 = __OFSUB__(v44, v45);
        v34 = v44 - v45;
        if (!v46)
        {
          goto LABEL_40;
        }

        goto LABEL_99;
      case 3uLL:
        goto LABEL_80;
      default:
        v34 = BYTE6(v29);
        goto LABEL_40;
    }
  }

LABEL_91:
  sub_1AC48D31C();
  swift_allocError();
  v99 = 3;
LABEL_92:
  *v98 = v99;
  swift_willThrow();
LABEL_93:

  v101 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC5034DC(unint64_t a1, float a2)
{
  sub_1AC502478(a1);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC500FBC(a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC503530(unint64_t a1, double a2)
{
  sub_1AC502478(a1);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC501044(a2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5035B4(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  a3(a1);
  sub_1AC45A774();
  v6 = *(*v3 + 16);
  sub_1AC45A85C(v6);
  v7 = *v3;
  *(v7 + 16) = v6 + 1;
  OUTLINED_FUNCTION_13_8(v7 + v6);
}

void sub_1AC503634(char a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  if (a1)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  if (a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  sub_1AC45FE50(v3, v4, 2);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5036A4()
{
  OUTLINED_FUNCTION_26_10();
  v3 = v2;
  sub_1AC502478(v4);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC500F28(v3, v1, v0);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1AC503704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v60 = a1;
  OUTLINED_FUNCTION_5();
  v54 = v7;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v48 - v13;
  sub_1AC502478(v14);
  v15 = v4[2];
  v16 = v4[3];
  v17 = v4[4];
  v18 = v4[5];
  v19 = v4[6];
  v20 = v4[7];
  v55 = a3;
  v21 = dynamic_cast_existential_1_conditional(a3);
  v58 = v16;
  v59 = v15;
  v57 = v17;
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    v25 = *(v22 + 8);
    sub_1AC506CBC(v15);

    v25(&v61, v23, v24);
    v50 = v62;
    v52 = v61;
  }

  else
  {
    sub_1AC506CBC(v15);

    v52 = 0u;
    v50 = 0u;
  }

  v26 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v26);
  v27 = v50;
  *(v5 + 16) = v52;
  *(v5 + 32) = v27;
  v28 = sub_1AC51ED58();
  *&v52 = v19;

  *(v5 + 48) = v28;
  v29 = v55;
  v30 = *(v54 + 16);
  v31 = v60;
  v30(v51, v60, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v32 = *(&v62 + 1);
    v33 = v63;
    __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    v34 = v32;
    v31 = v60;
    (*(v33 + 16))(&v64, v34, v33);
    v35 = v64;
    __swift_destroy_boxed_opaque_existential_1(&v61);
  }

  else
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_1AC4575D8(&v61, &qword_1EB5597A0, &qword_1AC528E18);
    v35 = 0;
  }

  v36 = v58;
  v37 = *(v5 + 56);

  *(v5 + 56) = v35;
  sub_1AC45FE50(" {\n", 3, 2);
  if (qword_1ED6E4138 != -1)
  {
    OUTLINED_FUNCTION_5_26();
    swift_once();
  }

  sub_1AC466118(v38);
  v30(v53, v31, v29);
  if (swift_dynamicCast())
  {
    v39 = v61;
    sub_1AC475F40(v5);
    v40 = v56;
    sub_1AC493748(v5, v39, *(&v39 + 1));
    if (!v40)
    {
      sub_1AC4513F8(v39, *(&v39 + 1));

LABEL_13:
      v42 = v57;
      v43 = v52;
      sub_1AC500EC4();
      v44 = *(v5 + 56);

      *(v5 + 56) = v20;
      v45 = *(v5 + 48);

      *(v5 + 48) = v43;
      v46 = OUTLINED_FUNCTION_40_6();
      result = sub_1AC458E14(v46);
      *(v5 + 16) = v59;
      *(v5 + 24) = v36;
      *(v5 + 32) = v42;
      *(v5 + 40) = v18;
      return result;
    }

    OUTLINED_FUNCTION_27_7();
  }

  else
  {
    v41 = v56;
    (*(v49 + 72))(v5, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v29);
    if (!v41)
    {
      goto LABEL_13;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AC503B58()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v34);
  OUTLINED_FUNCTION_22_12(v25);
  sub_1AC4EF50C(v34, v35);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25[0], v26, v27, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v35[0]);
  sub_1AC4EF568(v35);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = (v3 + 32);
    do
    {
      v14 = *v13;

      sub_1AC466118(v15);

      sub_1AC466118(v16);
      sub_1AC45FD18(": ");
      if ((~LODWORD(v14) & 0x7F800000) != 0)
      {
        v18 = sub_1AC51F1A8();
        v19 = v0;
        sub_1AC45FA3C(v18, v20);
      }

      else
      {
        if ((LODWORD(v14) & 0x7FFFFF) != 0)
        {
          v17 = "nan";
        }

        else if (v14 >= 0.0)
        {
          v17 = "inf";
        }

        else
        {
          v17 = "-inf";
        }

        v19 = v0;
        sub_1AC45FD18(v17);
      }

      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v21;
      }

      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      OUTLINED_FUNCTION_39_5();
      ++v13;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC503CE0()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v34);
  OUTLINED_FUNCTION_22_12(v25);
  sub_1AC4EF50C(v34, v35);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25[0], v26, v27, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v35[0]);
  sub_1AC4EF568(v35);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = (v3 + 32);
    do
    {
      v14 = *v13;

      sub_1AC466118(v15);

      sub_1AC466118(v16);
      sub_1AC45FD18(": ");
      if ((~*&v14 & 0x7FF0000000000000) != 0)
      {
        v18 = sub_1AC51F188();
        v19 = v0;
        sub_1AC45FA3C(v18, v20);
      }

      else
      {
        if ((*&v14 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v17 = "nan";
        }

        else if (v14 >= 0.0)
        {
          v17 = "inf";
        }

        else
        {
          v17 = "-inf";
        }

        v19 = v0;
        sub_1AC45FD18(v17);
      }

      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v21;
      }

      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_19();
      }

      OUTLINED_FUNCTION_39_5();
      ++v13;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC50446C()
{
  OUTLINED_FUNCTION_14_14();
  v3 = v2;
  OUTLINED_FUNCTION_22_12(v47);
  OUTLINED_FUNCTION_22_12(v38);
  sub_1AC4EF50C(v47, v48);
  v4 = sub_1AC502214(v1);
  OUTLINED_FUNCTION_35_6(v4, v5, v6, v7, v8, v9, v10, v11, v37, v4, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v47[3], v47[4], v47[5], v47[6], v47[7], v47[8], v48[0]);
  sub_1AC4EF568(v48);
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = (v3 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = OUTLINED_FUNCTION_22_0();
      sub_1AC4578F4(v16, v17);

      v19 = v0;
      sub_1AC466118(v18);

      sub_1AC466118(v20);
      sub_1AC45FD18(": ");
      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v31;
      }

      v21 = v19[2];
      if (v21 >= v19[3] >> 1)
      {
        OUTLINED_FUNCTION_6_23();
        v19 = v32;
      }

      v19[2] = v21 + 1;
      OUTLINED_FUNCTION_22(v19 + v21);
      v22 = OUTLINED_FUNCTION_22_0();
      v23 = v49;
      sub_1AC501E68(v22, v24, v0);
      v49 = v23;
      if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_30();
        v19 = v33;
      }

      v25 = v19[2];
      v26 = v19[3] >> 1;
      v27 = v25 + 1;
      if (v26 <= v25)
      {
        sub_1AC45A78C();
        v19 = v34;
        v26 = v34[3] >> 1;
      }

      v19[2] = v27;
      *(v19 + v25 + 32) = 34;
      v28 = v25 + 2;
      if (v26 < v28)
      {
        OUTLINED_FUNCTION_6_23();
        v19 = v35;
      }

      v13 += 2;
      v29 = OUTLINED_FUNCTION_22_0();
      sub_1AC4513F8(v29, v30);
      v19[2] = v28;
      OUTLINED_FUNCTION_22(v19 + v27);
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC50463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  OUTLINED_FUNCTION_5();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v29 = v14;
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_22_12(v33);
  OUTLINED_FUNCTION_22_12(v32);
  sub_1AC4EF50C(v33, v34);
  v16 = sub_1AC502214(a2);
  OUTLINED_FUNCTION_47_5(v16, &v36);
  sub_1AC4EF568(v34);
  OUTLINED_FUNCTION_53();
  v17 = sub_1AC51F038();
  v32[0] = v17;
  OUTLINED_FUNCTION_53();
  if (v17 == sub_1AC51F0B8())
  {
  }

  v30 = (v10 + 16);
  while (1)
  {
    OUTLINED_FUNCTION_53();
    v19 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_46_6();
    if ((v19 & 1) == 0)
    {
      break;
    }

    (*(v10 + 16))(v15, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, a3);
LABEL_6:
    OUTLINED_FUNCTION_41_4();
    sub_1AC51F0F8();
    v20 = *(v5 + 8);

    v22 = v5;
    sub_1AC466118(v21);

    sub_1AC466118(v23);
    sub_1AC45FD18(": ");
    sub_1AC500F28(v15, a3, v31);
    if ((OUTLINED_FUNCTION_24_10() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_30();
      v22 = v26;
    }

    v24 = *(v22 + 16);
    if (v24 >= *(v22 + 24) >> 1)
    {
      sub_1AC45A78C();
      v22 = v27;
    }

    (*(v10 + 8))(v15, a3);
    *(v22 + 16) = v24 + 1;
    OUTLINED_FUNCTION_22(v22 + v24);
    OUTLINED_FUNCTION_53();
    v25 = sub_1AC51F0B8();
    v17 = v32[0];
    if (v32[0] == v25)
    {
    }
  }

  OUTLINED_FUNCTION_41_4();
  result = sub_1AC51F2F8();
  if (v29 == 8)
  {
    v35 = result;
    (*v30)(v15, &v35, a3);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC504908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v75 = a4;
  OUTLINED_FUNCTION_5();
  v79 = v10;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v68 - v17;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v68 - v19;
  OUTLINED_FUNCTION_22_12(v86);
  v20 = v87;
  memcpy(__dst, v6, sizeof(__dst));
  sub_1AC4EF50C(v86, v88);
  v73 = v20;

  v21 = sub_1AC502214(a2);
  OUTLINED_FUNCTION_47_5(v21, v89);
  sub_1AC4EF568(v88);
  v22 = v6[2];
  v23 = v6[3];
  v24 = v6[4];
  v72 = v6[5];
  v71 = v6[7];
  v25 = dynamic_cast_existential_1_conditional(a3);
  v80 = v23;
  v81 = v24;
  v70 = v22;
  if (v25)
  {
    v27 = v25;
    v28 = v26;
    *&v83 = *(v26 + 8);
    sub_1AC506CBC(v22);

    (v83)(__dst, v27, v28);
    v76 = *&__dst[16];
    v29 = *__dst;
    v30 = &v90;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_22_0();
    sub_1AC506CBC(v31);

    v29 = 0uLL;
    v83 = 0u;
    v30 = v88;
  }

  *(v30 - 16) = v29;
  v32 = v6[3];
  v33 = v6[4];
  v34 = v6[5];
  sub_1AC458E14(v6[2]);
  v35 = v76;
  *(v6 + 1) = v83;
  *(v6 + 2) = v35;
  v36 = sub_1AC51ED58();

  v6[6] = v36;
  v91 = a1;
  sub_1AC51F108();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v37 = *&__dst[24];
    v38 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v38 + 16))(&v84, v37, v38);
    v39 = v84;
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memset(__dst, 0, 40);
    sub_1AC4575D8(__dst, &qword_1EB5597A0, &qword_1AC528E18);
    v39 = 0;
  }

  v40 = v80;
  v41 = v81;
  v42 = v6[7];

  v6[7] = v39;
  OUTLINED_FUNCTION_53();
  v43 = sub_1AC51F038();
  v91 = v43;
  OUTLINED_FUNCTION_53();
  if (v43 == sub_1AC51F0B8())
  {
LABEL_8:

    v44 = v6[7];

    v6[7] = v71;
    v45 = v6[6];

    v6[6] = v73;
    v46 = v6[3];
    v47 = v6[4];
    v48 = v6[5];
    result = sub_1AC458E14(v6[2]);
    v6[2] = v70;
    v6[3] = v40;
    v50 = v72;
    v6[4] = v41;
    v6[5] = v50;
  }

  else
  {
    *&v83 = v79 + 16;
    *&v76 = v79 + 32;
    v74 = v75 + 72;
    v51 = (v79 + 8);
    while (1)
    {
      OUTLINED_FUNCTION_53();
      v52 = sub_1AC51F0A8();
      OUTLINED_FUNCTION_46_6();
      if (v52)
      {
        v53 = a1 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v43;
        v54 = *(v79 + 16);
        v55 = v77;
        v54(v77, v53, a3);
      }

      else
      {
        OUTLINED_FUNCTION_41_4();
        v66 = sub_1AC51F2F8();
        if (v69 != 8)
        {
          goto LABEL_24;
        }

        *__dst = v66;
        v54 = *v83;
        v67 = v77;
        (*v83)(v77, __dst, a3);
        v55 = v67;
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_41_4();
      sub_1AC51F0F8();
      v56 = v82;
      (*v76)(v82, v55, a3);

      sub_1AC466118(v57);

      sub_1AC466118(v58);
      sub_1AC45FE50(" {\n", 3, 2);
      if (qword_1ED6E4138 != -1)
      {
        OUTLINED_FUNCTION_5_26();
        swift_once();
      }

      sub_1AC466118(v59);
      v54(v78, v56, a3);
      if (swift_dynamicCast())
      {
        v60 = *__dst;
        v61 = *&__dst[8];
        sub_1AC475F40(v6);
        sub_1AC493748(v6, v60, v61);
        if (v5)
        {
          goto LABEL_25;
        }

        sub_1AC4513F8(v60, v61);

        v56 = v82;
      }

      else
      {
        (*(v75 + 72))(v6, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a3);
        if (v5)
        {
          goto LABEL_26;
        }
      }

      v41 = v81;
      v62 = *(v6[1] + 16);
      if (v62 < 2)
      {
        break;
      }

      sub_1AC506BDC(v62 - 2, v62);
      v63 = v6[1];

      sub_1AC466118(v64);
      OUTLINED_FUNCTION_23_13("}\n");
      (*v51)(v56, a3);
      OUTLINED_FUNCTION_53();
      v65 = sub_1AC51F0B8();
      v43 = v91;
      v40 = v80;
      if (v91 == v65)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_27_7();
LABEL_26:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC505088(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t *), uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a4;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v28 - v13;
  sub_1AC502478(v14);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC45A774();
  v15 = *(*v5 + 16);
  sub_1AC45A85C(v15);
  v16 = *v5;
  *(v16 + 16) = v15 + 1;
  *(v16 + v15 + 32) = 91;
  v33 = v5;
  *v5 = v16;
  v17 = sub_1AC51F038();
  v35 = v17;
  if (v17 == sub_1AC51F0B8())
  {
LABEL_2:
    v18 = v33;
    sub_1AC45A774();
    v19 = *(*v18 + 16);
    sub_1AC45A85C(v19);
    v20 = *v18;
    *(v20 + 16) = v19 + 1;
    *(v20 + v19 + 32) = 93;
    *v18 = v20;
    sub_1AC45A774();
    v21 = *(*v18 + 16);
    result = sub_1AC45A85C(v21);
    v23 = *v18;
    *(v23 + 16) = v21 + 1;
    *(v23 + v21 + 32) = 10;
    *v18 = v23;
    return result;
  }

  v29 = (v8 + 16);
  v24 = 1;
  while (1)
  {
    v25 = sub_1AC51F0A8();
    sub_1AC51F048();
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = v30;
    (*(v8 + 16))(v30, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, a5);
LABEL_6:
    sub_1AC51F0F8();
    (*(v8 + 32))(v12, v26, a5);
    if ((v24 & 1) == 0)
    {
      sub_1AC45FD18(", ");
    }

    v31(v12, v33);
    (*(v8 + 8))(v12, a5);
    v27 = sub_1AC51F0B8();
    v24 = 0;
    v17 = v35;
    if (v35 == v27)
    {
      goto LABEL_2;
    }
  }

  result = sub_1AC51F2F8();
  if (v28 == 8)
  {
    v34 = result;
    v26 = v30;
    (*v29)(v30, &v34, a5);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1AC5053A4(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(v2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v6 = *v3;
      if ((v5 & 1) == 0)
      {
        sub_1AC45FD18(", ");
      }

      if ((~LODWORD(v6) & 0x7F800000) != 0)
      {
        v8 = sub_1AC51F1A8();
        sub_1AC45FA3C(v8, v9);
      }

      else
      {
        if ((LODWORD(v6) & 0x7FFFFF) != 0)
        {
          v7 = "nan";
        }

        else if (v6 >= 0.0)
        {
          v7 = "inf";
        }

        else
        {
          v7 = "-inf";
        }

        sub_1AC45FD18(v7);
      }

      v5 = 0;
      ++v3;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v10);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5054C0(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v4 = *(v2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v6 = *v3;
      if ((v5 & 1) == 0)
      {
        sub_1AC45FD18(", ");
      }

      if ((~*&v6 & 0x7FF0000000000000) != 0)
      {
        v8 = sub_1AC51F188();
        sub_1AC45FA3C(v8, v9);
      }

      else
      {
        if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v7 = "nan";
        }

        else if (v6 >= 0.0)
        {
          v7 = "inf";
        }

        else
        {
          v7 = "-inf";
        }

        sub_1AC45FD18(v7);
      }

      v5 = 0;
      ++v3;
      --v4;
    }

    while (v4);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v10);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC5055DC(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505680(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      sub_1AC500DF8(v6);
      v5 = 0;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505724(uint64_t a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v5 = *(a1 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v8 = *v3++;
      v7 = v8;
      if ((v6 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if ((v7 & 0x80000000) != 0)
      {
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_34_7();
          v9 = v13;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        OUTLINED_FUNCTION_42_5();
        if (v12)
        {
          sub_1AC45A78C();
        }

        OUTLINED_FUNCTION_29_7();
      }

      sub_1AC500DF8(v7);
      v6 = 0;
      --v5;
    }

    while (v5);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v14);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC505838(uint64_t a1, unint64_t a2)
{
  sub_1AC502478(a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v5 = *(a1 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_43_5();
    do
    {
      v8 = *v3++;
      v7 = v8;
      if ((v6 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_34_7();
          v9 = v13;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        OUTLINED_FUNCTION_42_5();
        if (v12)
        {
          sub_1AC45A78C();
        }

        OUTLINED_FUNCTION_29_7();
      }

      sub_1AC500DF8(v7);
      v6 = 0;
      --v5;
    }

    while (v5);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v14);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

void sub_1AC50594C(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_20_13(a1, a2);
  OUTLINED_FUNCTION_23_13(": ");
  sub_1AC45A774();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_31();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = 1;
    do
    {
      v6 = *v4;
      if ((v5 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_6();
      }

      if (v6)
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      sub_1AC45FD18(v7);
      v5 = 0;
      ++v4;
      --v3;
    }

    while (v3);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_8(v8);
  sub_1AC45A774();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1AC505A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return sub_1AC505088(a1, a2, sub_1AC506D5C, v5, a3);
}

uint64_t sub_1AC505A58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v11 = a8;
  v82 = a6;
  v81 = a5;
  v94 = a4;
  v92 = a3;
  v80 = a2;
  v75 = *(a8 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v95 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[0] = *(v17 - 8);
  v18 = *(v69[0] + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = sub_1AC51F228();
  v83 = *(v90 - 8);
  v22 = *(v83 + 64);
  v23 = MEMORY[0x1EEE9AC00](v90);
  v91 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = v69 - v25;
  v26 = v9[2];
  v27 = v9[3];
  v28 = v9[4];
  v29 = v9[5];
  v30 = v9[6];
  v31 = v9[7];
  v101 = a1;
  v96 = a7;
  v97 = v11;
  v98 = a9;
  v99 = v92;
  v32 = v30;
  v100 = v94;
  v87 = v27;
  v88 = v26;
  v85 = v29;
  v86 = v28;
  sub_1AC506CBC(v26);
  sub_1AC51ED88();
  v94 = v32;

  v89 = v31;

  swift_getWitnessTable();
  v33 = v93;
  v34 = sub_1AC51F028();
  v93 = v33;
  v35 = sub_1AC51F038();
  v69[1] = TupleTypeMetadata2 - 8;
  v102 = v35;
  v83 += 32;
  v78 = (v69[0] + 32);
  v77 = (v75 + 32);
  v79 = v9 + 2;
  v92 = v9 + 1;
  v74 = (v75 + 8);
  v75 = v69[0] + 8;
  v73 = TupleTypeMetadata2;
  v72 = a7;
  v71 = v20;
  v70 = v11;
  for (i = v34; ; v34 = i)
  {
    v36 = sub_1AC51F0B8();
    v37 = v102;
    if (v102 == v36)
    {
      v38 = v91;
      v39 = v91;
      v40 = 1;
    }

    else
    {
      v41 = sub_1AC51F0A8();
      sub_1AC51F048();
      v38 = v91;
      if (v41)
      {
        (*(*(TupleTypeMetadata2 - 8) + 16))(v91, v34 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v37, TupleTypeMetadata2);
      }

      else
      {
        result = sub_1AC51F2F8();
        v68 = *(TupleTypeMetadata2 - 8);
        if (*(v68 + 64) != 8)
        {
          goto LABEL_20;
        }

        v101 = result;
        (*(v68 + 16))(v38, &v101, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v39 = v38;
      v40 = 0;
    }

    __swift_storeEnumTagSinglePayload(v39, v40, 1, TupleTypeMetadata2);
    v42 = v84;
    (*v83)(v84, v38, v90);
    if (__swift_getEnumTagSinglePayload(v42, 1, TupleTypeMetadata2) == 1)
    {
      sub_1AC458E14(v88);
    }

    v43 = *(TupleTypeMetadata2 + 48);
    (*v78)(v20, v42, a7);
    (*v77)(v95, v42 + v43, v11);
    sub_1AC502478(v80);
    sub_1AC45FD18(" {\n");
    if (qword_1ED6E4138 != -1)
    {
      swift_once();
    }

    sub_1AC466118(v44);
    v45 = v10[3];
    v46 = v10[4];
    v47 = v10[5];
    sub_1AC458E14(v10[2]);
    v48 = v79;
    *v79 = 0u;
    v48[1] = 0u;
    if (qword_1EB557A88 != -1)
    {
      swift_once();
    }

    v49 = qword_1EB557A90;

    v10[6] = v49;
    v50 = v10[7];

    v10[7] = 0;
    v51 = v93;
    v81(v10, v20, v95);
    if (v51)
    {

      sub_1AC458E14(v88);

      (*v74)(v95, v11);
      return (*v75)(v20, a7);
    }

    v93 = 0;
    v52 = v94;
    v53 = v10[7];
    v54 = v89;

    v10[7] = v54;
    v55 = v10[6];

    v10[6] = v52;
    v56 = v10[2];
    v57 = v10[3];
    v59 = v10[4];
    v58 = v10[5];
    v61 = v87;
    v60 = v88;
    v63 = v85;
    v62 = v86;
    sub_1AC506CBC(v88);
    sub_1AC458E14(v56);
    v10[2] = v60;
    v10[3] = v61;
    v10[4] = v62;
    v10[5] = v63;
    v64 = *(v10[1] + 16);
    result = v64 - 2;
    if (v64 < 2)
    {
      break;
    }

    sub_1AC506BDC(result, v64);
    v66 = v10[1];

    sub_1AC466118(v67);
    sub_1AC45FD18("}\n");
    v11 = v70;
    (*v74)(v95, v70);
    v20 = v71;
    a7 = v72;
    (*v75)(v71, v72);
    TupleTypeMetadata2 = v73;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AC506288(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_29_0();
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(a6 + 8);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_1AC505A58(a1, a2, sub_1AC492B38, v17, sub_1AC506D3C, v16, AssociatedTypeWitness, v13, AssociatedConformanceWitness);
}

uint64_t sub_1AC5063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a5);
  }

  return result;
}

uint64_t sub_1AC506458()
{
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_29_0();
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_53();
  return sub_1AC505A58(v4, v5, v6, v7, v8, v9, AssociatedTypeWitness, v0, v11);
}

void sub_1AC506520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v6)
  {
    sub_1AC5036A4();
  }
}

uint64_t sub_1AC5065B4()
{
  OUTLINED_FUNCTION_26_10();
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = OUTLINED_FUNCTION_48_0();
  v4 = OUTLINED_FUNCTION_53();
  return sub_1AC505A58(v4, v5, v6, v7, v8, v9, AssociatedTypeWitness, v0, v11);
}

uint64_t sub_1AC506690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, a4);
  if (!v7)
  {
    return sub_1AC503704(a3, 2, a5, a7);
  }

  return result;
}

void sub_1AC506934(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = WORD2(a2);
  v5 = a2;
  sub_1AC5018A0(&v4, &v4 + BYTE6(a2), a3);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AC5069A0(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = result;
  v5 = WORD2(a2);
  v4 = a2;
  if (BYTE6(a2))
  {
    memset(v6, 0, sizeof(v6));
    v9 = 1;
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    v12 = 1;
    v16 = xmmword_1AC5205D0;
    v17 = xmmword_1AC5205D0;
    v7 = 0;
    v8[0] = &v3;
    v8[1] = BYTE6(a2);
    v8[2] = &v3;
    v8[3] = 0;
    sub_1AC450538(v6, v10 + 8);
    v13 = 100;
    v14 = 1;
    v15 = 100;
    sub_1AC502848(v8, 10);
    result = sub_1AC45466C(v8);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC506A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1AC51EB78();
  if (v7)
  {
    v8 = sub_1AC51EBA8();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AC5018A0(v7, v14, a4);
}

unsigned int *sub_1AC506B38(uint64_t a1, uint64_t a2)
{
  result = sub_1AC51EB78();
  v5 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 = (v5 + a1 - result);
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1AC51EB98();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v5 + v9;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1AC502788(v5, v11);
}

uint64_t sub_1AC506BDC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AC45AE04(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_1AC48F51C((v8 + 32 + a2), v9 - a2, (v8 + 32 + v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1AC506CBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AC506D88()
{
  result = qword_1EB559D18;
  if (!qword_1EB559D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D18);
  }

  return result;
}

uint64_t sub_1AC506DDC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  sub_1AC500D74(a2, a3);
  sub_1AC45FE50(" {\n", 3, 2);
  if (qword_1ED6E4138 != -1)
  {
    OUTLINED_FUNCTION_5_26();
    swift_once();
  }

  sub_1AC466118(v12);
  v13 = a4[2];
  v14 = a4[3];
  v15 = a4[4];
  v16 = a4[5];
  v17 = a4[6];
  v18 = a4[7];
  __swift_project_boxed_opaque_existential_1(v47, v48);
  DynamicType = swift_getDynamicType();
  v20 = dynamic_cast_existential_1_conditional(DynamicType);
  v41 = v13;
  if (v20)
  {
    v22 = v20;
    v23 = v21;
    v24 = *(v21 + 8);
    sub_1AC506CBC(v13);

    v24(&v44, v22, v23);
    v39 = v45;
    v40 = v44;
  }

  else
  {
    sub_1AC506CBC(v13);

    v39 = 0u;
    v40 = 0u;
  }

  v25 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v25);
  *(a4 + 1) = v40;
  *(a4 + 2) = v39;
  v26 = sub_1AC51ED58();

  a4[6] = v26;
  sub_1AC47782C(v47, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (swift_dynamicCast())
  {
    v27 = *(&v45 + 1);
    v28 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    (*(v28 + 16))(&v42, v27, v28);
    v29 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_1AC4575D8(&v44, &qword_1EB5597A0, &qword_1AC528E18);
    v29 = 0;
  }

  v30 = a4[7];

  a4[7] = v29;
  sub_1AC47782C(v47, &v44);
  if (swift_dynamicCast())
  {
    v32 = v43[0];
    v31 = v43[1];
    sub_1AC475F40(a4);
    sub_1AC493748(a4, v32, v31);
    sub_1AC4513F8(v32, v31);
  }

  else
  {
    v33 = v48;
    v34 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v34 + 72))(a4, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v33, v34);
  }

  v35 = a4[7];

  a4[7] = v18;
  v36 = a4[6];

  a4[6] = v17;
  v37 = OUTLINED_FUNCTION_40_6();
  sub_1AC458E14(v37);
  a4[2] = v41;
  a4[3] = v14;
  a4[4] = v15;
  a4[5] = v16;
  sub_1AC500EC4();
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

void sub_1AC507264()
{
  v1 = *(v0 + 80);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    return;
  }

  *(v0 + 80) = v3;
  if (v3 < 0)
  {
    v7 = 11;
LABEL_9:
    sub_1AC477954();
    OUTLINED_FUNCTION_11();
    *v8 = v7;
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_6_24();
  if (v5 || (v6 = *v4, *(v0 + 40) = v4 + 1, sub_1AC509980(), v6 != 123) && v6 != 60)
  {
    v7 = 0;
    goto LABEL_9;
  }
}

uint64_t sub_1AC50730C()
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 91)
  {
    return 0;
  }

  else
  {
    return sub_1AC50A578();
  }
}

void sub_1AC507364()
{
  OUTLINED_FUNCTION_6_24();
  if (!v1)
  {
    v2 = *v0;
    if (v2 == 59 || v2 == 44)
    {
      OUTLINED_FUNCTION_11_14(v0);
      sub_1AC509980();
    }
  }
}

uint64_t sub_1AC5073AC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v7 = v5;
  v8 = v4;
  v9 = *(a1 + 8);
  v61 = *(a1 + 16);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  while (1)
  {
    while (v10 != v11)
    {
      OUTLINED_FUNCTION_17(v10);
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (!v13)
      {
        ++v10;
        goto LABEL_6;
      }

      if (v14 != 35)
      {
        break;
      }

      ++v10;
      while (v10 != v11)
      {
        OUTLINED_FUNCTION_10_0(v10);
        if (v13 || v15 == 13)
        {
          goto LABEL_6;
        }
      }

      v10 = v11;
LABEL_6:
      *(v8 + 40) = v10;
    }

    if (v10 == v11)
    {
      break;
    }

    v16 = *v10;
    if (((v16 & 0xDF) - 91) >= 0xE6u)
    {
      v27 = v10;
      do
      {
        v28 = *v27;
        if ((v28 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v28 != 95 && (v28 - 48) > 9)
        {
          break;
        }

        *(v8 + 40) = ++v27;
      }

      while (v27 != v11);
      for (i = v27; i != v11; *(v8 + 40) = i)
      {
        v31 = *i;
        if (v31 > 0x23)
        {
          break;
        }

        if (((1 << v31) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v31 != 35)
          {
            break;
          }

          ++i;
          while (i != v11)
          {
            v33 = *i++;
            v32 = v33;
            if (v33 == 10 || v32 == 13)
            {
              goto LABEL_32;
            }
          }

          i = v11;
        }

LABEL_32:
        ;
      }

      v59[0] = v10;
      v59[1] = v27;
      v59[2] = "";
      v59[3] = 0;
      v60 = 258;
      if (*(v61 + 16))
      {
        v34 = sub_1AC4599C0(v59);
        if (v35)
        {
          return *(*(v61 + 56) + 8 * v34);
        }
      }

LABEL_56:
      if ((*(v8 + 72) & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_57;
    }

    if (v16 != 91)
    {
      if ((v16 - 58) < 0xF7u)
      {
        if ((a4 & 0x100) == 0 && v16 == a4)
        {
          sub_1AC50812C();
          return 0;
        }

        goto LABEL_105;
      }

      v6 = v16 - 48;
      v36 = v10 + 1;
      v37 = 1;
      while (v36 != v11)
      {
        v38 = *v36;
        if ((v38 - 58) < 0xFFFFFFF6)
        {
          goto LABEL_54;
        }

        v6 = v38 + 10 * v6 - 48;
        ++v36;
        if (++v37 >= 10)
        {
          *(v8 + 40) = v10 + 10;
          goto LABEL_105;
        }
      }

      v36 = v11;
LABEL_54:
      *(v8 + 40) = v36;
      sub_1AC509980();
      if (*(v9 + 16))
      {
        sub_1AC45AA38(v6);
        if (v39)
        {
          return v6;
        }
      }

      goto LABEL_56;
    }

    v17 = v9;
    v18 = sub_1AC50A578();
    if (v7)
    {
      return v6;
    }

    v20 = v19;
    if (*(v8 + 24))
    {
      v21 = v18;
      sub_1AC47782C(v8, v56);
      v23 = v57;
      v22 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v24 = *(v22 + 16);
      v25 = v22;
      v7 = 0;
      v6 = v24(a2, a3, v21, v20, v23, v25);
      LOBYTE(v21) = v26;

      __swift_destroy_boxed_opaque_existential_1(v56);
      if ((v21 & 1) == 0)
      {
        return v6;
      }
    }

    else
    {
    }

    v9 = v17;
    if ((*(v8 + 73) & 1) == 0)
    {
LABEL_108:
      sub_1AC477954();
      OUTLINED_FUNCTION_11();
      *v51 = 7;
      goto LABEL_109;
    }

LABEL_57:
    for (j = *(v8 + 40); j != v11; *(v8 + 40) = j)
    {
      OUTLINED_FUNCTION_17(j);
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (v13)
      {
        if (v41 != 35)
        {
          break;
        }

        ++j;
        while (j != v11)
        {
          OUTLINED_FUNCTION_10_0(j);
          if (v13 || v42 == 13)
          {
            goto LABEL_62;
          }
        }

        j = v11;
      }

      else
      {
        ++j;
      }

LABEL_62:
      ;
    }

    if (j == v11 || *j != 58)
    {
      goto LABEL_87;
    }

LABEL_72:
    ++j;
LABEL_73:
    while (1)
    {
      *(v8 + 40) = j;
      if (j == v11)
      {
        break;
      }

      OUTLINED_FUNCTION_17(j);
      if (!v13 & v12)
      {
        break;
      }

      OUTLINED_FUNCTION_11_16();
      if (!v13)
      {
        goto LABEL_72;
      }

      if (v43 != 35)
      {
        break;
      }

      ++j;
      while (j != v11)
      {
        OUTLINED_FUNCTION_10_0(j);
        if (v13 || v44 == 13)
        {
          goto LABEL_73;
        }
      }

      j = v11;
    }

    if (j == v11)
    {
      goto LABEL_105;
    }

    v45 = *j;
    if (v45 == 123 || v45 == 60)
    {
LABEL_87:
      v46 = v7;
      sub_1AC50A8AC();
      goto LABEL_88;
    }

    v46 = v7;
    sub_1AC50A674(1);
LABEL_88:
    v7 = v46;
    if (v46)
    {
      return v6;
    }

    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    if (v10 != v11)
    {
      v47 = *v10;
      if (v47 == 59 || v47 == 44)
      {
LABEL_92:
        ++v10;
LABEL_93:
        while (1)
        {
          *(v8 + 40) = v10;
          if (v10 == v11)
          {
            break;
          }

          OUTLINED_FUNCTION_17(v10);
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_11_16();
          if (!v13)
          {
            goto LABEL_92;
          }

          if (v48 != 35)
          {
            break;
          }

          ++v10;
          while (v10 != v11)
          {
            OUTLINED_FUNCTION_10_0(v10);
            if (v13 || v49 == 13)
            {
              goto LABEL_93;
            }
          }

          v10 = v11;
        }
      }
    }
  }

  if ((a4 & 0x100) != 0)
  {
    return 0;
  }

LABEL_105:
  sub_1AC477954();
  OUTLINED_FUNCTION_11();
  *v50 = 0;
LABEL_109:
  swift_willThrow();
  return v6;
}

uint64_t sub_1AC5078C0()
{
  result = sub_1AC50A208();
  if (v1)
  {
    result = sub_1AC50A480();
    if ((result & 1) == 0)
    {
      result = sub_1AC50A4D4();
      if ((result & 0x100000000) != 0)
      {
        sub_1AC477954();
        v2 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_15(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_1AC507934()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 91)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC507970()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 93)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC5079AC()
{
  result = sub_1AC50A208();
  if (v1)
  {
    result = sub_1AC50A480();
    if ((result & 1) == 0)
    {
      result = sub_1AC50A4D4();
      if ((result & 0x100000000) != 0)
      {
        sub_1AC477954();
        v2 = OUTLINED_FUNCTION_11();
        return OUTLINED_FUNCTION_15(v2, v3);
      }
    }
  }

  return result;
}

unint64_t sub_1AC507A20()
{
  v2 = *(v0 + 40);
  if (v2 == *(v0 + 48))
  {
    goto LABEL_10;
  }

  if (*v2 != 45)
  {
    result = sub_1AC507AC8();
    if (v1 || (result & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_10:
    sub_1AC477954();
    v7 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_15(v7, v8);
  }

  OUTLINED_FUNCTION_12_18();
  if (v3 == v4 || *v3 - 58 <= 0xFFFFFFF5)
  {
    goto LABEL_10;
  }

  result = sub_1AC507AC8();
  if (!v1)
  {
    v6 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      return -result;
    }

    result = 0x8000000000000000;
    if (v6 != 0x8000000000000000)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t sub_1AC507AC8()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v3 == v2)
  {
LABEL_14:
    sub_1AC477954();
    v10 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15(v10, v11);
    return v1;
  }

  v4 = v3 + 1;
  v5 = *v3;
  *(v0 + 40) = v3 + 1;
  if (v5 != 48)
  {
    if ((v5 - 58) >= 0xF7u)
    {
      v1 = (v5 - 48);
      v12 = 0x1999999999999999;
      while (v4 != v2 && (*v4 - 58) > 0xF5u)
      {
        if (v1 > v12 || __CFADD__((*v4 - 48), 10 * v1))
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_18();
        v1 = v14 + v13;
        if (__CFADD__(v14, v13))
        {
          __break(1u);
          return 0;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  if (v4 != v2)
  {
    if (*v4 == 120)
    {
      v6 = (v3 + 2);
      *(v0 + 40) = v3 + 2;
      if (v3 + 2 == v2)
      {
        v1 = 0;
      }

      else
      {
        v1 = 0;
        do
        {
          v7 = *v6;
          if ((*v6 - 58) <= 0xF5u && (v7 - 103) <= 0xF9u && (v7 - 71) <= 0xF9u)
          {
            break;
          }

          if (v1 >> 60)
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_12_18();
          v1 = 16 * v1 + v8;
        }

        while (v6 != v9);
      }
    }

    else
    {
      v1 = 0;
      while (v4 != v2 && (*v4 - 56) > 0xF7u)
      {
        if (v1 >> 61)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_18();
        v1 = v15 | (8 * v1);
      }
    }

LABEL_30:
    sub_1AC509980();
    return v1;
  }

  return 0;
}

uint64_t sub_1AC507C74()
{
  sub_1AC509980();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v2 == v3)
  {
    goto LABEL_23;
  }

  v6 = *v2;
  v4 = v2 + 1;
  v5 = v6;
  *(v0 + 40) = v4;
  if (v6 == 48)
  {
    goto LABEL_11;
  }

  if (v5 != 116)
  {
    if (v5 == 70)
    {
LABEL_9:
      if (v4 != v3)
      {
        sub_1AC50A394(&unk_1F2127730);
        v4 = *(v0 + 40);
      }

LABEL_11:
      v1 = 0;
      goto LABEL_15;
    }

    if (v5 != 84)
    {
      if (v5 != 102)
      {
        if (v5 != 49)
        {
LABEL_23:
          sub_1AC477954();
          v9 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_5_0(v9, v10);
          return v1 & 1;
        }

        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  if (v4 != v3)
  {
    sub_1AC50A394(&unk_1F2127758);
    v4 = *(v0 + 40);
  }

LABEL_14:
  v1 = 1;
LABEL_15:
  if (v4 != v3)
  {
    v7 = *v4;
    v8 = v7 > 0x3E || ((1 << v7) & 0x4800100900002600) == 0;
    if (v8 && v7 != 125 && v7 != 93)
    {
      goto LABEL_23;
    }

    sub_1AC509980();
  }

  return v1 & 1;
}

uint64_t sub_1AC507D8C()
{
  sub_1AC509980();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v1 != v2 && ((v3 = *v1, v3 == 39) || v3 == 34) && (OUTLINED_FUNCTION_9_19(v1), v5 = sub_1AC50A11C(v4), v6))
  {
    v15 = v5;
    for (i = *(v0 + 40); i != v2; i = *(v0 + 40))
    {
      v8 = *i;
      if (v8 != 34 && v8 != 39)
      {
        break;
      }

      OUTLINED_FUNCTION_9_19(i);
      v10 = sub_1AC50A11C(v9);
      if (!v11)
      {

        goto LABEL_12;
      }

      MEMORY[0x1AC5B4340](v10);
    }

    return v15;
  }

  else
  {
LABEL_12:
    sub_1AC477954();
    v13 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_5_0(v13, v14);
  }
}

void sub_1AC507E80()
{
  v2 = v0;
  sub_1AC509980();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v3 != v4 && ((v5 = *v3, v5 == 34) || v5 == 39))
  {
    OUTLINED_FUNCTION_9_19(v3);
    v27 = 0;
    sub_1AC509AA4(v5, &v27);
    if (!v1)
    {
      v7 = v6;
      if (v27 != 1)
      {
        v11 = *(v2 + 40);
        v28 = MEMORY[0x1AC5B4090](v11, v6);
        v29 = v12;
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
        }

        goto LABEL_12;
      }

      v28 = MEMORY[0x1AC5B40A0](v6);
      v29 = v8;
      sub_1AC476FE4(&v28, v2, v5);
      while (1)
      {
        sub_1AC509980();
        v17 = *(v2 + 40);
        if (v17 == v4)
        {
          break;
        }

        v18 = *v17;
        if (v18 != 39 && v18 != 34)
        {
          break;
        }

        OUTLINED_FUNCTION_9_19(v17);
        v26 = 0;
        sub_1AC509AA4(v18, &v26);
        v20 = v19;
        if (v26 == 1)
        {
          v24 = MEMORY[0x1AC5B40A0](v19);
          v25 = v14;
          sub_1AC476FE4(&v24, v2, v18);
          v15 = v24;
          v16 = v25;
          sub_1AC51EC98();
          sub_1AC4513F8(v15, v16);
        }

        else
        {
          v11 = *(v2 + 40);
          v21 = MEMORY[0x1AC5B4090](v11, v19);
          v23 = v22;
          sub_1AC51EC98();
          sub_1AC4513F8(v21, v23);
          v13 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            return;
          }

LABEL_12:
          *(v2 + 40) = v11 + v13;
        }
      }
    }
  }

  else
  {
    sub_1AC477954();
    v9 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0(v9, v10);
  }
}

unsigned __int8 *sub_1AC508078()
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v1)
  {
    sub_1AC477954();
    v3 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_5_0(v3, v4);
  }

  else if ((*v0 & 0xDFu) - 91 >= 0xFFFFFFE6)
  {
    return sub_1AC5099F8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC5080F0()
{
  OUTLINED_FUNCTION_6_24();
  if (v1 || *v0 != 58)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v0);
  sub_1AC509980();
  return 1;
}

uint64_t sub_1AC50812C()
{
  OUTLINED_FUNCTION_6_24();
  if (v3 || *v2 != v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_14(v2);
  sub_1AC509980();
  v4 = *(v0 + 80);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 80) = v6;
    if (*(v0 + 64) >= v6)
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_2_26();
  result = sub_1AC51F388();
  __break(1u);
  return result;
}

uint64_t sub_1AC5081B8(char a1)
{
  sub_1AC509980();
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 == 91)
  {
    if (a1)
    {
      result = sub_1AC50A578();
      if (!v2)
      {
        MEMORY[0x1AC5B4340](result);

        MEMORY[0x1AC5B4340](93, 0xE100000000000000);
        return 91;
      }

      return result;
    }

    sub_1AC477954();
    OUTLINED_FUNCTION_11();
    *v10 = 7;
    return swift_willThrow();
  }

  if ((v6 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
  {
    return sub_1AC509A74();
  }

  if ((v6 - 58) < 0xFFFFFFF7)
  {
LABEL_14:
    sub_1AC477954();
    OUTLINED_FUNCTION_11();
    *v9 = 0;
    return swift_willThrow();
  }

  v8 = 1;
  while (&v5[v8] != v4)
  {
    if (v5[v8] - 58 < 0xFFFFFFF6)
    {
      v4 = &v5[v8];
      break;
    }

    if (++v8 >= 10)
    {
      *(v1 + 40) = v5 + 10;
      goto LABEL_14;
    }
  }

  *(v1 + 40) = v4;
  v11 = v4 - v5;
  sub_1AC509980();
  result = sub_1AC456544(v5, v11);
  if (!v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC50832C(char a1)
{
  v1 = (a1 - 58);
  v2 = (a1 - 71);
  v3 = (a1 - 103);
  v4 = a1 - 87;
  v6 = v3 >= 0xFA;
  v5 = v3 < 0xFA;
  if (!v6)
  {
    v4 = 0;
  }

  v6 = v2 >= 0xFA;
  if (v2 >= 0xFA)
  {
    v7 = a1 - 55;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v5 = 0;
  }

  v8 = v1 >= 0xF6;
  if (v1 >= 0xF6)
  {
    v9 = a1 - 48;
  }

  else
  {
    v9 = v7;
  }

  v10 = !v8 && v5;
  return v9 | (v10 << 8);
}

unint64_t sub_1AC508388(char a1)
{
  if ((a1 - 58) > 0xF5u)
  {
    v3 = -48;
LABEL_8:
    v2 = 0;
    v1 = (v3 + a1);
    return v1 | (v2 << 32);
  }

  if ((a1 - 71) > 0xF9u)
  {
    v3 = -55;
    goto LABEL_8;
  }

  if ((a1 - 103) >= 0xFAu)
  {
    v3 = -87;
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v1 | (v2 << 32);
}

unint64_t sub_1AC5083FC(unint64_t a1, unint64_t a2)
{
  v131 = a1;
  v132 = a2;
  v4 = 15;
  v133 = 15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v127 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v128 = a2 & 0xFFFFFFFFFFFFFFLL;

  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v4 >> 14)
    {
      v124 = sub_1AC456544(v9 + 32, *(v9 + 16));

      return v124;
    }

    result = v4;
    if ((v4 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v4, a1, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v5)
    {
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      return result;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v129 = a1;
      v130 = v128;
      v12 = *(&v129 + v11);
    }

    else
    {
      result = v127;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      v12 = *(result + v11);
    }

    if ((v4 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v4, a1, a2);
      v4 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v13 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v5 <= v4 >> 16)
    {
      goto LABEL_238;
    }

    v13 = sub_1AC51EF58();
LABEL_24:
    v133 = v13;
    if (v12 != 92)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v18;
      }

      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v19;
      }

      *(v9 + 16) = v15 + 1;
      *(v9 + v15 + 32) = v12;
      goto LABEL_174;
    }

    if (v6 == v13 >> 14)
    {
      goto LABEL_235;
    }

    result = v13;
    if ((v13 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v13, a1, a2);
    }

    v14 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_239;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC51EF88();
      LOBYTE(v14) = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v129 = a1;
      v130 = v128;
      LOBYTE(v14) = *(&v129 + v14);
    }

    else
    {
      result = v127;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1AC51F308();
      }

      LOBYTE(v14) = *(result + v14);
    }

    if ((v13 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v13, a1, a2);
      v13 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_43:
        v16 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_47;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_43;
    }

    if (v5 <= v13 >> 16)
    {
      goto LABEL_240;
    }

    v16 = sub_1AC51EF58();
LABEL_47:
    v133 = v16;
    if ((v14 - 56) < 0xF8u)
    {
      break;
    }

    v24 = v14 - 48;
    if (v6 == v16 >> 14)
    {
      goto LABEL_169;
    }

    result = v16;
    if ((v16 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v16, a1, a2);
    }

    v25 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_241;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v27 = sub_1AC51EF88();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v129 = a1;
      v130 = v128;
      v27 = *(&v129 + v25);
    }

    else
    {
      v26 = v127;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v26 = sub_1AC51F308();
      }

      v27 = *(v26 + v25);
    }

    result = v16;
    if ((v16 & 0xC) == v8)
    {
      result = sub_1AC488FF0(v16, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_166:
        if (v5 <= result >> 16)
        {
          goto LABEL_242;
        }

        v42 = sub_1AC51EF58();
        goto LABEL_168;
      }
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_166;
    }

    v42 = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_168:
    if ((v27 - 56) < 0xF8u)
    {
LABEL_169:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v66;
      }

      v6 = 4 * v5;
      v58 = *(v9 + 16);
      if (v58 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v67;
      }

      *(v9 + 16) = v58 + 1;
      *(v9 + v58 + 32) = v24;

      v131 = a1;
      v132 = a2;
      v133 = v16;
      goto LABEL_174;
    }

    v126 = v27 - 48;
    v6 = 4 * v5;
    if (4 * v5 != v42 >> 14)
    {
      result = v42;
      if ((v42 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v42, a1, a2);
      }

      v59 = result >> 16;
      if (result >> 16 >= v5)
      {
        goto LABEL_243;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v61 = sub_1AC51EF88();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v129 = a1;
        v130 = v128;
        v61 = *(&v129 + v59);
      }

      else
      {
        v60 = v127;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v60 = sub_1AC51F308();
        }

        v61 = *(v60 + v59);
      }

      result = v42;
      if ((v42 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v42, a1, a2);
      }

      v6 = 4 * v5;
      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v5 <= result >> 16)
        {
          goto LABEL_246;
        }

        v62 = sub_1AC51EF58();
      }

      else
      {
        v62 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      }

      v133 = v62;
      if ((v61 - 56) >= 0xF8u)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v107;
        }

        v64 = *(v9 + 16);
        if (v64 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v108;
        }

        *(v9 + 16) = v64 + 1;
        *(v9 + v64 + 32) = v61 + ((8 * v126) | (v14 << 6)) - 48;
        goto LABEL_203;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = *(v9 + 16);
      sub_1AC45A78C();
      v9 = v72;
    }

    v63 = *(v9 + 16);
    if (v63 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v73;
    }

    *(v9 + 16) = v63 + 1;
    *(v9 + v63 + 32) = v126 | (8 * v24);

    v131 = a1;
    v132 = a2;
    v133 = v42;
LABEL_174:
    v4 = v133;
  }

  v20 = v14 - 34;
  if (v20 > 0x3F)
  {
    goto LABEL_49;
  }

  if (((1 << (v14 - 34)) & 0x400000020000021) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v9 + 16);
      sub_1AC45A78C();
      v9 = v69;
    }

    v28 = *(v9 + 16);
    v29 = v28 + 1;
    if (v28 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v70;
    }

LABEL_69:
    *(v9 + 16) = v29;
    *(v9 + v28 + 32) = v14;
    goto LABEL_174;
  }

  if (v20 == 51)
  {
LABEL_85:
    v32 = sub_1AC5094D0(&v131);
    if ((v32 & 0x100000000) != 0)
    {
      goto LABEL_235;
    }

    v33 = v32;
    if (v14 == 85)
    {
      result = sub_1AC5094D0(&v131);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_235;
      }

      v34 = __CFADD__(result, v33 << 16);
      v33 = result + (v33 << 16);
      if (v34)
      {
        goto LABEL_245;
      }
    }

    if (v33 > 0x7F)
    {
      v35 = v33 & 0x3F | 0x80;
      if (v33 <= 0x7FF)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v110;
        }

        v50 = *(v9 + 16);
        v51 = *(v9 + 24) >> 1;
        v40 = v50 + 1;
        if (v51 <= v50)
        {
          sub_1AC45A78C();
          v9 = v111;
          v51 = *(v111 + 24) >> 1;
        }

        *(v9 + 16) = v40;
        *(v9 + v50 + 32) = (v33 >> 6) | 0xC0;
        v41 = v50 + 2;
        if (v51 < (v50 + 2))
        {
          sub_1AC45A78C();
          v9 = v112;
        }

        goto LABEL_150;
      }

      v125 = (v33 >> 6) & 0x3F | 0xFFFFFF80;
      if (HIWORD(v33))
      {
        if (v33 >= 0x110000)
        {
          goto LABEL_235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v119;
        }

        v36 = *(v9 + 16);
        v37 = *(v9 + 24) >> 1;
        v38 = v36 + 1;
        if (v37 <= v36)
        {
          sub_1AC45A78C();
          v9 = v120;
          v37 = *(v120 + 24) >> 1;
        }

        *(v9 + 16) = v38;
        *(v9 + v36 + 32) = (v33 >> 18) | 0xF0;
        v39 = v36 + 2;
        if (v37 < (v36 + 2))
        {
          sub_1AC45A78C();
          v9 = v121;
          v37 = *(v121 + 24) >> 1;
        }

        *(v9 + 16) = v39;
        *(v9 + v38 + 32) = (v33 >> 12) & 0x3F | 0x80;
        v40 = v36 + 3;
        if (v37 < (v36 + 3))
        {
          sub_1AC45A78C();
          v9 = v122;
          v37 = *(v122 + 24) >> 1;
        }

        *(v9 + 16) = v40;
        *(v9 + v39 + 32) = v125;
        v41 = v36 + 4;
        if (v37 < (v36 + 4))
        {
          sub_1AC45A78C();
          v9 = v123;
        }

LABEL_150:
        *(v9 + 16) = v41;
        v52 = v9 + v40;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v114;
        }

        v54 = *(v9 + 16);
        v55 = *(v9 + 24) >> 1;
        v56 = v54 + 1;
        if (v55 <= v54)
        {
          sub_1AC45A78C();
          v9 = v115;
          v55 = *(v115 + 24) >> 1;
        }

        *(v9 + 16) = v56;
        *(v9 + v54 + 32) = (v33 >> 12) | 0xE0;
        v57 = v54 + 2;
        if (v55 < (v54 + 2))
        {
          sub_1AC45A78C();
          v9 = v116;
          v55 = *(v116 + 24) >> 1;
        }

        *(v9 + 16) = v57;
        *(v9 + v56 + 32) = v125;
        if (v55 < (v54 + 3))
        {
          sub_1AC45A78C();
          v9 = v117;
        }

        *(v9 + 16) = v54 + 3;
        v52 = v9 + v57;
      }

      *(v52 + 32) = v35;
LABEL_203:
      v6 = 4 * v5;
      goto LABEL_174;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = *(v9 + 16);
      sub_1AC45A78C();
      v9 = v101;
    }

    v49 = *(v9 + 16);
    if (v49 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v102;
    }

    *(v9 + 16) = v49 + 1;
    *(v9 + v49 + 32) = v33;
    goto LABEL_174;
  }

  if (v20 == 63)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = *(v9 + 16);
      sub_1AC45A78C();
      v9 = v87;
    }

    v30 = *(v9 + 16);
    if (v30 >= *(v9 + 24) >> 1)
    {
      sub_1AC45A78C();
      v9 = v88;
    }

    *(v9 + 16) = v30 + 1;
    v22 = v9 + v30;
    v23 = 7;
LABEL_137:
    *(v22 + 32) = v23;
    goto LABEL_174;
  }

LABEL_49:
  switch(v14)
  {
    case 'n':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v78;
      }

      v21 = *(v9 + 16);
      if (v21 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v79;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + v21;
      v23 = 10;
      goto LABEL_137;
    case 'o':
    case 'p':
    case 'q':
    case 's':
    case 'w':
      goto LABEL_235;
    case 'r':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v75;
      }

      v45 = *(v9 + 16);
      if (v45 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v76;
      }

      *(v9 + 16) = v45 + 1;
      v22 = v9 + v45;
      v23 = 13;
      goto LABEL_137;
    case 't':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v81;
      }

      v46 = *(v9 + 16);
      if (v46 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v82;
      }

      *(v9 + 16) = v46 + 1;
      v22 = v9 + v46;
      v23 = 9;
      goto LABEL_137;
    case 'u':
      goto LABEL_85;
    case 'v':
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = *(v9 + 16);
        sub_1AC45A78C();
        v9 = v84;
      }

      v47 = *(v9 + 16);
      if (v47 >= *(v9 + 24) >> 1)
      {
        sub_1AC45A78C();
        v9 = v85;
      }

      *(v9 + 16) = v47 + 1;
      v22 = v9 + v47;
      v23 = 11;
      goto LABEL_137;
    case 'x':
      if (v6 == v16 >> 14)
      {
        goto LABEL_235;
      }

      result = v16;
      if ((v16 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v16, a1, a2);
      }

      v43 = result >> 16;
      if (result >> 16 >= v5)
      {
        goto LABEL_244;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1AC51EF88();
        v44 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v129 = a1;
        v130 = v128;
        v44 = *(&v129 + v43);
      }

      else
      {
        result = v127;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1AC51F308();
        }

        v44 = *(result + v43);
      }

      if ((v16 & 0xC) == v8)
      {
        result = sub_1AC488FF0(v16, a1, a2);
        v16 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_154:
          v53 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_207;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_154;
      }

      if (v5 <= v16 >> 16)
      {
        goto LABEL_247;
      }

      v53 = sub_1AC51EF58();
LABEL_207:
      v95 = sub_1AC50832C(v44);
      if ((v95 & 0x100) == 0)
      {
        LOBYTE(v14) = v95;
        if (v6 == v53 >> 14)
        {
          goto LABEL_228;
        }

        result = v53;
        if ((v53 & 0xC) == v8)
        {
          result = sub_1AC488FF0(v53, a1, a2);
        }

        v96 = result >> 16;
        if (result >> 16 >= v5)
        {
          goto LABEL_248;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v98 = sub_1AC51EF88();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v129 = a1;
          v130 = v128;
          v98 = *(&v129 + v96);
        }

        else
        {
          v97 = v127;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v97 = sub_1AC51F308();
          }

          v98 = *(v97 + v96);
        }

        result = v53;
        if ((v53 & 0xC) == v8)
        {
          result = sub_1AC488FF0(v53, a1, a2);
        }

        v6 = 4 * v5;
        if ((a2 & 0x1000000000000000) != 0)
        {
          if (v5 <= result >> 16)
          {
            goto LABEL_249;
          }

          v99 = sub_1AC51EF58();
        }

        else
        {
          v99 = (result & 0xFFFFFFFFFFFF0000) + 65540;
        }

        v133 = v99;
        result = sub_1AC50832C(v98);
        if ((result & 0x100) != 0)
        {
LABEL_228:
          v131 = a1;
          v132 = a2;
          v133 = v53;
        }

        else
        {
          LOWORD(v14) = 16 * (v14 & 0xF) + result;
          if ((v14 & 0x100) != 0)
          {
            goto LABEL_250;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v104;
        }

        v28 = *(v9 + 16);
        v29 = v28 + 1;
        if (v28 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v105;
        }

        goto LABEL_69;
      }

LABEL_235:

      return 0;
    default:
      if (v14 == 98)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v93;
        }

        v48 = *(v9 + 16);
        if (v48 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v94;
        }

        *(v9 + 16) = v48 + 1;
        v22 = v9 + v48;
        v23 = 8;
      }

      else
      {
        if (v14 != 102)
        {
          goto LABEL_235;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = *(v9 + 16);
          sub_1AC45A78C();
          v9 = v90;
        }

        v31 = *(v9 + 16);
        if (v31 >= *(v9 + 24) >> 1)
        {
          sub_1AC45A78C();
          v9 = v91;
        }

        *(v9 + 16) = v31 + 1;
        v22 = v9 + v31;
        v23 = 12;
      }

      goto LABEL_137;
  }
}

unint64_t sub_1AC5094D0(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 4 * v3;
  v5 = a1[2];
  if (4 * v3 == v5 >> 14)
  {
LABEL_5:
    v6 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  v10 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = a1[2] & 0xC;
  v12 = 4 << v10;
  v13 = a1[2];
  if (v11 == 4 << v10)
  {
    v13 = sub_1AC488FF0(v5, v1, v2);
  }

  v14 = v13 >> 16;
  if (v13 >> 16 >= v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
LABEL_22:
    v14 = sub_1AC51EF88();
    goto LABEL_18;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v35 = v1;
    v36 = v2 & 0xFFFFFFFFFFFFFFLL;
    v14 = *(&v35 + v14);
    goto LABEL_18;
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    goto LABEL_43;
  }

  for (i = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = sub_1AC51F308())
  {
    v14 = *(i + v14);
LABEL_18:
    if (v11 == v12)
    {
      v5 = sub_1AC488FF0(v5, v1, v2);
      if ((v2 & 0x1000000000000000) == 0)
      {
LABEL_20:
        v11 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_26;
      }
    }

    else if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    if (v3 <= v5 >> 16)
    {
      __break(1u);
LABEL_41:
      v17 = sub_1AC488FF0(v11, v1, v2);
      goto LABEL_29;
    }

    v11 = sub_1AC51EF58();
LABEL_26:
    a1[2] = v11;
    v16 = sub_1AC508388(v14);
    v6 = 0;
    v7 = 1;
    if ((v16 & 0x100000000) != 0 || v11 >> 14 == v4)
    {
      goto LABEL_6;
    }

    v5 = v16;
    v14 = v11 & 0xC;
    v17 = v11;
    if (v14 == v12)
    {
      goto LABEL_41;
    }

LABEL_29:
    v18 = v17 >> 16;
    if (v17 >> 16 < v3)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v20 = sub_1AC51EF88();
  }

  else if ((v2 & 0x2000000000000000) != 0)
  {
    v35 = v1;
    v36 = v2 & 0xFFFFFFFFFFFFFFLL;
    v20 = *(&v35 + v18);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v19 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v19 = sub_1AC51F308();
    }

    v20 = *(v19 + v18);
  }

  if (v14 == v12)
  {
    v11 = sub_1AC488FF0(v11, v1, v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_39:
    v14 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_47:
    a1[2] = v14;
    v21 = sub_1AC508388(v20);
    v6 = 0;
    v7 = 1;
    if ((v21 & 0x100000000) == 0)
    {
      v34 = v21;
      if (v14 >> 14 != v4)
      {
        v20 = v14 & 0xC;
        v22 = v14;
        if (v20 == v12)
        {
          goto LABEL_62;
        }

        goto LABEL_50;
      }
    }
  }

  else
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_45:
    if (v3 > v11 >> 16)
    {
      v14 = sub_1AC51EF58();
      goto LABEL_47;
    }

    __break(1u);
LABEL_62:
    v22 = sub_1AC488FF0(v14, v1, v2);
LABEL_50:
    v23 = v22 >> 16;
    if (v22 >> 16 >= v3)
    {
      __break(1u);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v23 = sub_1AC51EF88();
      }

      else if ((v2 & 0x2000000000000000) != 0)
      {
        v35 = v1;
        v36 = v2 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v35 + v23);
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v24 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v24 = sub_1AC51F308();
        }

        v23 = *(v24 + v23);
      }

      if (v20 != v12)
      {
        if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_60;
        }

LABEL_65:
        if (v3 > v14 >> 16)
        {
          v20 = sub_1AC51EF58();
          goto LABEL_67;
        }

        __break(1u);
LABEL_83:
        v26 = sub_1AC488FF0(v20, v1, v2);
LABEL_70:
        v27 = v26 >> 16;
        if (v26 >> 16 >= v3)
        {
          __break(1u);
          goto LABEL_85;
        }

        if ((v2 & 0x1000000000000000) != 0)
        {
          v27 = sub_1AC51EF88();
          goto LABEL_78;
        }

        if ((v2 & 0x2000000000000000) != 0)
        {
          v35 = v1;
          v36 = v2 & 0xFFFFFFFFFFFFFFLL;
          v27 = *(&v35 + v27);
          goto LABEL_78;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          goto LABEL_98;
        }

        v28 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        while (2)
        {
          LOBYTE(v27) = *(v28 + v27);
LABEL_78:
          if (v23 != v12)
          {
            if ((v2 & 0x1000000000000000) == 0)
            {
              goto LABEL_80;
            }

LABEL_86:
            if (v3 > v20 >> 16)
            {
              v29 = sub_1AC51EF58();
              goto LABEL_88;
            }

            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_85:
          v20 = sub_1AC488FF0(v20, v1, v2);
          if ((v2 & 0x1000000000000000) != 0)
          {
            goto LABEL_86;
          }

LABEL_80:
          v29 = (v20 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_88:
          a1[2] = v29;
          v30 = sub_1AC508388(v27);
          if ((v30 & 0x100000000) != 0)
          {
            goto LABEL_5;
          }

          v31 = (v5 << 12) + (v34 << 8);
          if (__CFADD__(v5 << 12, v34 << 8))
          {
            goto LABEL_95;
          }

          v32 = __CFADD__(v31, 16 * v14);
          v33 = v31 + 16 * v14;
          if (v32)
          {
LABEL_96:
            __break(1u);
          }

          else
          {
            v32 = __CFADD__(v33, v30);
            v6 = v33 + v30;
            if (!v32)
            {
              v7 = 0;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_98:
          v28 = sub_1AC51F308();
          continue;
        }
      }
    }

    v14 = sub_1AC488FF0(v14, v1, v2);
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_60:
    v20 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_67:
    a1[2] = v20;
    v25 = sub_1AC508388(v23);
    v6 = 0;
    v7 = 1;
    if ((v25 & 0x100000000) == 0 && v20 >> 14 != v4)
    {
      LODWORD(v14) = v25;
      v23 = v20 & 0xC;
      v26 = v20;
      if (v23 == v12)
      {
        goto LABEL_83;
      }

      goto LABEL_70;
    }
  }

LABEL_6:
  LOBYTE(v35) = v7;
  return v6 | (v7 << 32);
}

void sub_1AC509980()
{
  v2 = *(v0 + 40);
  for (i = *(v0 + 48); v2 != i; *(v0 + 40) = v2)
  {
    v3 = *v2;
    if (v3 > 0x23)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) != 0)
    {
      ++v2;
    }

    else
    {
      if (v3 != 35)
      {
        return;
      }

      ++v2;
      while (v2 != i)
      {
        v5 = *v2++;
        v4 = v5;
        if (v5 == 10 || v4 == 13)
        {
          goto LABEL_5;
        }
      }

      v2 = i;
    }

LABEL_5:
    ;
  }
}

unsigned __int8 *sub_1AC5099F8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v2 != v1)
  {
    v3 = *(v0 + 40);
    do
    {
      v4 = *v3;
      if ((v4 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v4 != 95 && (v4 - 48) > 9)
      {
        break;
      }

      *(v0 + 40) = ++v3;
    }

    while (v3 != v1);
  }

  sub_1AC509980();
  return v2;
}

uint64_t sub_1AC509A74()
{
  result = sub_1AC5099F8();
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = sub_1AC456544(result, v1 - result);
  if (!v2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1AC509AA4(unsigned __int8 a1, _BYTE *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a1;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = 1;
  v9 = 0x400000020000021;
  v10 = 2760739;
  v11 = v6;
  do
  {
    while (1)
    {
      if (v11 == v7)
      {
        goto LABEL_75;
      }

      v12 = v11;
      v14 = *v11++;
      v13 = v14;
      *(v2 + 40) = v11;
      if (v14 == v5)
      {
        goto LABEL_73;
      }

      if (v13 != 92)
      {
        break;
      }

      v4 = 1;
      if (v11 != v7)
      {
        v17 = v12[1];
        v18 = v12 + 2;
        *(v2 + 40) = v12 + 2;
        if (v17 - 56 >= 0xFFFFFFF8)
        {
          if (v18 != v7 && *v18 - 56 >= 0xFFFFFFF8)
          {
            *(v2 + 40) = v12 + 3;
            if (v12 + 3 != v7 && v12[3] - 56 >= 0xFFFFFFF8)
            {
              if (v17 > 0x33)
              {
                goto LABEL_74;
              }

              *(v2 + 40) = v12 + 4;
            }
          }

          OUTLINED_FUNCTION_8_20();
          if (v16)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v17 - 97 > 0x17)
          {
            goto LABEL_39;
          }

          if (((v8 << (v17 - 97)) & v10) != 0)
          {
LABEL_41:
            OUTLINED_FUNCTION_8_20();
            if (v16)
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v17 == 117)
            {
              v23 = 4;
              goto LABEL_47;
            }

            if (v17 == 120)
            {
              if (v18 == v7)
              {
                goto LABEL_74;
              }

              v19 = *v18;
              if ((v19 - 58) <= 0xF5u)
              {
                v4 = 1;
                v20 = v19 - 65;
                if (v20 > 0x25 || ((v8 << v20) & 0x3F0000003FLL) == 0)
                {
                  goto LABEL_75;
                }
              }

              *(v2 + 40) = v12 + 3;
              if (v12 + 3 != v7)
              {
                if ((v12[3] - 58) > 0xF5u || (v21 = v12[3] - 65, v21 <= 0x25) && ((v8 << v21) & 0x3F0000003FLL) != 0)
                {
                  *(v2 + 40) = v12 + 4;
                }
              }

              OUTLINED_FUNCTION_8_20();
              if (v16)
              {
                goto LABEL_78;
              }
            }

            else
            {
LABEL_39:
              v4 = 1;
              v22 = v17 - 34;
              if (v22 > 0x3A)
              {
                goto LABEL_75;
              }

              if (((v8 << (v17 - 34)) & v9) != 0)
              {
                goto LABEL_41;
              }

              if (v22 != 51)
              {
                goto LABEL_75;
              }

              v23 = 8;
LABEL_47:
              if (v7 - v18 < v23)
              {
                goto LABEL_74;
              }

              v24 = 0;
              v25 = v18;
              v26 = v23;
              do
              {
                v28 = *v25++;
                v27 = v28;
                if ((v28 - 58) > 0xF5u)
                {
                  v29 = -48;
                }

                else if ((v27 - 71) > 0xF9u)
                {
                  v29 = -55;
                }

                else
                {
                  if ((v27 - 103) < 0xFAu)
                  {
                    goto LABEL_74;
                  }

                  v29 = -87;
                }

                v24 = 16 * v24 + (v27 + v29);
                --v26;
              }

              while (v26);
              v11 = &v18[v23];
              *(v2 + 40) = v11;
              if (v24 <= 0x7F)
              {
                OUTLINED_FUNCTION_8_20();
                if (v16)
                {
                  goto LABEL_79;
                }
              }

              else if (v24 <= 0x7FF)
              {
                v4 = 1;
                v16 = __OFADD__(v3, 2);
                v3 += 2;
                if (v16)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                if (v24 - 57344 > 0xFFFFF7FF)
                {
                  goto LABEL_74;
                }

                v30 = HIWORD(v24);
                if (v30)
                {
                  if (v30 > 0x10)
                  {
LABEL_74:
                    v4 = 1;
LABEL_75:
                    *a2 = v4 & 1;
                    sub_1AC477954();
                    OUTLINED_FUNCTION_11();
                    *v31 = 0;
                    swift_willThrow();
                    return;
                  }

                  v4 = 1;
                  v16 = __OFADD__(v3, 4);
                  v3 += 4;
                  if (v16)
                  {
                    goto LABEL_81;
                  }
                }

                else
                {
                  v4 = 1;
                  v16 = __OFADD__(v3, 3);
                  v3 += 3;
                  if (v16)
                  {
                    __break(1u);
LABEL_73:
                    *a2 = v4 & 1;
                    *(v2 + 40) = v6;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v13 == 10 || v13 == 13)
    {
      goto LABEL_75;
    }

    v16 = __OFADD__(v3++, 1);
  }

  while (!v16);
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

_BYTE *sub_1AC509DE0(_BYTE *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!result || a2 - result < 1)
  {
    return result;
  }

  v4 = a4;
  v5 = *(a3 + 40);
  v6 = *v5;
  if (v6 == a4)
  {
LABEL_4:
    *(a3 + 40) = v5 + 1;
    return result;
  }

  while (2)
  {
    *(a3 + 40) = v5 + 1;
    if (v6 != 92)
    {
      goto LABEL_53;
    }

    v7 = v5[1];
    v8 = (v5 + 2);
    *(a3 + 40) = v5 + 2;
    if ((v7 - 56) >= 0xF8u)
    {
      LOBYTE(v6) = v7 - 48;
      v10 = *v8;
      if ((*v8 - 56) >= 0xF8u)
      {
        *(a3 + 40) = v5 + 3;
        v11 = v10 - 48;
        v12 = v5[3];
        if ((v12 - 56) >= 0xF8u)
        {
          *(a3 + 40) = v5 + 4;
          LOBYTE(v6) = v12 + ((8 * v11) | (v7 << 6)) - 48;
        }

        else
        {
          LOBYTE(v6) = v11 | (8 * v6);
        }
      }

LABEL_53:
      *result = v6;
LABEL_54:
      v20 = 1;
      goto LABEL_55;
    }

    v9 = 4;
    switch(v7)
    {
      case 'n':
        *result = 10;
        goto LABEL_54;
      case 'o':
      case 'p':
      case 'q':
      case 's':
      case 'w':
        goto LABEL_32;
      case 'r':
        *result = 13;
        goto LABEL_54;
      case 't':
        *result = 9;
        goto LABEL_54;
      case 'u':
        goto LABEL_18;
      case 'v':
        *result = 11;
        goto LABEL_54;
      case 'x':
        v21 = *v8;
        if ((*v8 - 58) > 0xF5u)
        {
          v22 = -48;
        }

        else if ((v21 - 71) > 0xF9u)
        {
          v22 = -55;
        }

        else
        {
          if ((v21 - 103) < 0xFAu)
          {
            goto LABEL_59;
          }

          v22 = -87;
        }

        LOBYTE(v6) = v21 + v22;
        *(a3 + 40) = v5 + 3;
        v23 = v5[3];
        if ((v23 - 58) > 0xF5u)
        {
          v24 = -48;
        }

        else if ((v23 - 71) > 0xF9u)
        {
          v24 = -55;
        }

        else
        {
          if ((v23 - 103) < 0xFAu)
          {
            goto LABEL_53;
          }

          v24 = -87;
        }

        LOBYTE(v6) = v23 + v24 + 16 * v6;
        *(a3 + 40) = v5 + 4;
        goto LABEL_53;
      default:
        switch(v7)
        {
          case 'f':
            *result = 12;
            goto LABEL_54;
          case 'a':
            *result = 7;
            goto LABEL_54;
          case 'b':
            *result = 8;
            goto LABEL_54;
        }

        if (v7 != 85)
        {
LABEL_32:
          *result = v7;
          goto LABEL_54;
        }

        v9 = 8;
LABEL_18:
        v6 = 0;
        v13 = (v5 + 2);
        v14 = v9;
        do
        {
          v16 = *v13++;
          v15 = v16;
          if ((v16 - 58) > 0xF5u)
          {
            v17 = -48;
          }

          else if ((v15 - 71) > 0xF9u)
          {
            v17 = -55;
          }

          else
          {
            if ((v15 - 103) < 0xFAu)
            {
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v17 = -87;
          }

          v6 = 16 * v6 + (v15 + v17);
          --v14;
        }

        while (v14);
        *(a3 + 40) = &v8[v9];
        if (v6 <= 0x7F)
        {
          goto LABEL_53;
        }

        v18 = v6 & 0x3F | 0x80;
        if (v6 <= 0x7FF)
        {
          *result = (v6 >> 6) | 0xC0;
          result[1] = v18;
          v20 = 2;
LABEL_55:
          result += v20;
          v5 = *(a3 + 40);
          v6 = *v5;
          if (v6 == v4)
          {
            goto LABEL_4;
          }

          continue;
        }

        v19 = (v6 >> 6) & 0x3F | 0x80;
        if (!HIWORD(v6))
        {
          *result = (v6 >> 12) | 0xE0;
          result[1] = v19;
          result[2] = v18;
          v20 = 3;
          goto LABEL_55;
        }

        if (HIWORD(v6) <= 0x10u)
        {
          *result = (v6 >> 18) | 0xF0;
          result[1] = (v6 >> 12) & 0x3F | 0x80;
          result[2] = v19;
          result[3] = v18;
          v20 = 4;
          goto LABEL_55;
        }

LABEL_60:
        __break(1u);
        return result;
    }
  }
}

unint64_t sub_1AC50A11C(unsigned __int8 a1)
{
  v2 = 0;
  v3 = a1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v4;
LABEL_2:
  v7 = &v6[-v4];
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *v6;
    if (v8 == v3)
    {
      break;
    }

    *(v1 + 40) = ++v6;
    if (v8 == 10 || v8 == 13)
    {
      return 0;
    }

    ++v7;
    if (v8 == 92)
    {
      if (v6 != v5)
      {
        *(v1 + 40) = ++v6;
        v2 = 1;
        goto LABEL_2;
      }

      return 0;
    }
  }

  v10 = sub_1AC456544(v4, v7);
  v13 = v12;
  *(v1 + 40) = v6 + 1;
  sub_1AC509980();
  if (v13 != 0 && (v2 & 1) != 0)
  {
    v10 = sub_1AC5083FC(v10, v13);
  }

  return v10;
}

uint64_t sub_1AC50A208()
{
  v1 = v0[5];
  v2 = v0[6];
  if (v1 != v2)
  {
    v3 = v0;
    v4 = *v1;
    v5 = v0[5];
    if (v4 == 45)
    {
      v5 = v1 + 1;
      v0[5] = v1 + 1;
      if (v1 + 1 == v2)
      {
        goto LABEL_16;
      }

      v4 = *v5;
    }

    if (v4 == 46)
    {
      v0[5] = ++v5;
      if (v5 == v2 || *v5 - 58 <= 0xFFFFFFF5)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (v4 == 48)
    {
      v0[5] = ++v5;
      if (v5 != v2 && *v5 - 58 >= 0xFFFFFFF6)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (v5 == v2)
      {
LABEL_22:
        v7 = v2;
        goto LABEL_23;
      }

LABEL_17:
      v7 = v5;
      while (1)
      {
        v8 = *v7;
        if ((v8 - 58) <= 0xFFFFFFF5)
        {
          v9 = v8 - 43;
          if (v9 > 0x3B)
          {
            goto LABEL_23;
          }

          if (((1 << v9) & 0x40000000400000DLL) == 0)
          {
            break;
          }
        }

        v0[5] = ++v7;
        ++v5;
        if (v7 == v2)
        {
          goto LABEL_22;
        }
      }

      if (((1 << v9) & 0x800000008000000) != 0)
      {
        v13 = v0[7];
        sub_1AC45D17C(v1, v5);
        v6 = v14;
        v3[5] = v7 + 1;
        goto LABEL_24;
      }

LABEL_23:
      v10 = v0[7];
      sub_1AC45D17C(v1, v7);
      v6 = v11;
LABEL_24:
      sub_1AC509980();
      return v6;
    }

    if ((v4 - 58) > 0xFFFFFFF6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = 0;
    v0[5] = v1;
    return v6;
  }

  return 0;
}

uint64_t sub_1AC50A394(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(result + 16);
  v4 = (result + 32);
  v5 = v2;
  if (v3)
  {
    while (v5 != *(v1 + 48) && *v5 == *v4)
    {
      *(v1 + 40) = ++v5;
      ++v4;
      if (!--v3)
      {
        return result;
      }
    }

    *(v1 + 40) = v2;
  }

  return result;
}

uint64_t sub_1AC50A3E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v2;
  if (v3)
  {
    while (v5 != *(v1 + 48))
    {
      v6 = *v5;
      if ((v6 - 91) >= 0xFFFFFFE6)
      {
        v6 |= 0x20u;
      }

      if (v6 != *v4)
      {
        break;
      }

      *(v1 + 40) = ++v5;
      ++v4;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_11;
  }

LABEL_7:
  if (v5 == *(v1 + 48))
  {
    return 1;
  }

  if ((*v5 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    sub_1AC509980();
    return 1;
  }

LABEL_11:
  result = 0;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1AC50A480()
{
  v1 = *(v0 + 40);
  if (v1 != *(v0 + 48) && *v1 == 45)
  {
    *(v0 + 40) = v1 + 1;
  }

  v2 = sub_1AC50A3E4(&unk_1F2126E20);
  if ((v2 & 1) == 0)
  {
    *(v0 + 40) = v1;
  }

  return v2 & 1;
}

unint64_t sub_1AC50A4D4()
{
  v1 = *(v0 + 40);
  if (v1 == *(v0 + 48))
  {
    v4 = 0;
LABEL_11:
    v3 = 1;
    return v4 | (v3 << 32);
  }

  v2 = *v1;
  if (v2 == 45)
  {
    *(v0 + 40) = v1 + 1;
  }

  if ((sub_1AC50A3E4(&unk_1F2126E48) & 1) == 0 && (sub_1AC50A3E4(&unk_1F2126E70) & 1) == 0)
  {
    v4 = 0;
    *(v0 + 40) = v1;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 2139095040;
  if (v2 == 45)
  {
    v4 = 4286578688;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_1AC50A578()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = (v3 + 1);
  *(v0 + 40) = v3 + 1;
  if ((v3 + 1) == v2 || (*v4 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    goto LABEL_17;
  }

  for (i = (v3 + 2); ; ++i)
  {
    *(v0 + 40) = i;
    if (i == v2)
    {
      break;
    }

    v6 = *i;
    v7 = (v6 - 58) > 0xFFFFFFF5 || (v6 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
    if (!v7 && (v6 - 46) >= 2 && v6 != 95)
    {
      if (v6 != 93)
      {
        goto LABEL_17;
      }

      break;
    }
  }

  if (i == v2 || *i != 93 || (v8 = sub_1AC456544(v4, i - v4), !v9))
  {
LABEL_17:
    sub_1AC477954();
    v10 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0(v10, v11);
  }

  else
  {
    v1 = v8;
    *(v0 + 40) = i + 1;
    sub_1AC509980();
  }

  return v1;
}

void sub_1AC50A674(char a1)
{
  v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v4;
  if (v5 == 39 || v5 == 34)
  {
    sub_1AC507E80();
    if (!v2)
    {
      sub_1AC4513F8(v6, v7);
    }

    return;
  }

  v8 = *(v1 + 48);
  if (v5 != 91 || v4 == v8)
  {
    sub_1AC508078();
    if (v2)
    {
      return;
    }

    if ((v10 & 1) == 0)
    {
LABEL_19:
      sub_1AC509980();
      return;
    }

    if (sub_1AC50AB10())
    {
      if (v5 == 45)
      {
        sub_1AC507A20();
      }

      else
      {
        sub_1AC507AC8();
      }
    }

    else
    {
      sub_1AC5079AC();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v4);
    sub_1AC509980();
    if ((a1 & 1) == 0 || (v12 = *(v1 + 40), v12 == v8))
    {
LABEL_54:
      sub_1AC477954();
      v22 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_0(v22, v23);
      return;
    }

    v13 = *v12;
    if (v13 == 93)
    {
LABEL_18:
      *(v1 + 40) = v12 + 1;
      goto LABEL_19;
    }

    while (1)
    {
      if (v13 == 60 || v13 == 123)
      {
        v14 = v3;
        sub_1AC50A8AC();
      }

      else
      {
        v14 = v3;
        sub_1AC50A674(0);
      }

      v3 = v14;
      if (v14)
      {
        break;
      }

      v12 = *(v1 + 40);
      v15 = *(v1 + 48);
      if (v12 != v15)
      {
        v16 = *v12;
        if (v16 == 93)
        {
          goto LABEL_18;
        }

        while (v16 <= 0x23)
        {
          if (((1 << v16) & 0x100002600) != 0)
          {
            ++v12;
          }

          else
          {
            if (v16 != 35)
            {
              break;
            }

            ++v12;
            while (v12 != v15)
            {
              v18 = *v12++;
              v17 = v18;
              if (v18 == 10 || v17 == 13)
              {
                goto LABEL_30;
              }
            }

            v12 = v15;
          }

LABEL_30:
          *(v1 + 40) = v12;
          if (v12 == v15)
          {
            break;
          }

          v16 = *v12;
        }
      }

      if (v12 == v15 || *v12 != 44)
      {
        goto LABEL_54;
      }

LABEL_41:
      ++v12;
LABEL_42:
      while (1)
      {
        *(v1 + 40) = v12;
        if (v12 == v15)
        {
          break;
        }

        v19 = *v12;
        if (v19 > 0x23)
        {
          break;
        }

        if (((1 << v19) & 0x100002600) != 0)
        {
          goto LABEL_41;
        }

        if (v19 != 35)
        {
          break;
        }

        ++v12;
        while (v12 != v15)
        {
          v21 = *v12++;
          v20 = v21;
          if (v21 == 10 || v20 == 13)
          {
            goto LABEL_42;
          }
        }

        v12 = v15;
      }

      if (v12 == v15)
      {
        goto LABEL_54;
      }

      v13 = *v12;
    }
  }
}

void sub_1AC50A8AC()
{
  sub_1AC507264();
  if (!v1)
  {
    v3 = v2;
    v4 = v0[5];
    v5 = v0[6];
    while (1)
    {
      if (v4 == v5)
      {
LABEL_57:
        sub_1AC477954();
        v20 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_5_0(v20, v21);
        return;
      }

      if (*v4 == v3)
      {
        OUTLINED_FUNCTION_11_14(v4);
        sub_1AC509980();
        v22 = v0[10];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          __break(1u);
        }

        else
        {
          v0[10] = v24;
          if (v0[8] >= v24)
          {
            return;
          }
        }

        OUTLINED_FUNCTION_10_15();
        OUTLINED_FUNCTION_2_26();
        sub_1AC51F388();
        __break(1u);
        return;
      }

      sub_1AC5081B8(1);
      if (!v6)
      {
        goto LABEL_57;
      }

      for (i = v0[5]; i != v5; v0[5] = i)
      {
        OUTLINED_FUNCTION_17(i);
        if (!v12 & v10)
        {
          break;
        }

        if (((1 << v9) & 0x100002600) != 0)
        {
          ++i;
        }

        else
        {
          if (v9 != 35)
          {
            break;
          }

          ++i;
          while (i != v5)
          {
            OUTLINED_FUNCTION_10_0(i);
            v12 = v12 || v11 == 13;
            if (v12)
            {
              goto LABEL_11;
            }
          }

          i = v5;
        }

LABEL_11:
        ;
      }

      if (i == v5 || *i != 58)
      {
        break;
      }

LABEL_24:
      ++i;
LABEL_25:
      while (1)
      {
        v0[5] = i;
        if (i == v5)
        {
          break;
        }

        OUTLINED_FUNCTION_17(i);
        if (!v12 & v10)
        {
          break;
        }

        if (((1 << v13) & 0x100002600) != 0)
        {
          goto LABEL_24;
        }

        if (v13 != 35)
        {
          break;
        }

        ++i;
        while (i != v5)
        {
          OUTLINED_FUNCTION_10_0(i);
          if (v12 || v14 == 13)
          {
            goto LABEL_25;
          }
        }

        i = v5;
      }

      if (i == v5)
      {
        goto LABEL_57;
      }

      v16 = *i;
      if (v16 == 60 || v16 == 123)
      {
        break;
      }

      sub_1AC50A674(1);
LABEL_42:
      v4 = v0[5];
      v5 = v0[6];
      if (v4 != v5)
      {
        v17 = *v4;
        if (v17 == 59 || v17 == 44)
        {
LABEL_45:
          ++v4;
LABEL_46:
          while (1)
          {
            v0[5] = v4;
            if (v4 == v5)
            {
              break;
            }

            OUTLINED_FUNCTION_17(v4);
            if (!v12 & v10)
            {
              break;
            }

            if (((1 << v18) & 0x100002600) != 0)
            {
              goto LABEL_45;
            }

            if (v18 != 35)
            {
              break;
            }

            ++v4;
            while (v4 != v5)
            {
              OUTLINED_FUNCTION_10_0(v4);
              if (v12 || v19 == 13)
              {
                goto LABEL_46;
              }
            }

            v4 = v5;
          }
        }
      }
    }

    sub_1AC50A8AC(v7);
    goto LABEL_42;
  }
}

BOOL sub_1AC50AB10()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  if (v2 == 45)
  {
    if (++v1 == *(v0 + 48))
    {
      return 0;
    }

    v2 = *v1;
  }

  if (v2 != 48)
  {
    return 0;
  }

  v3 = v1 + 1;
  if (v3 == *(v0 + 48))
  {
    return 1;
  }

  v4 = *v3;
  return v4 == 120 || (v4 & 0xF8) == 48;
}

void sub_1AC50AB78(unsigned __int8 a1)
{
  sub_1AC509980();
  OUTLINED_FUNCTION_6_24();
  if (v3 || *v2 != a1)
  {
    sub_1AC477954();
    v4 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5_0(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_11_14(v2);
    sub_1AC509980();
  }
}

uint64_t sub_1AC50ABE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1AC50AC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
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

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1AC4578F4(v2, v3);
}

uint64_t Google_Protobuf_Timestamp.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_Timestamp._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED6E33D8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ED6E33E8;
  v3 = qword_1ED6E33F0;
  v4 = unk_1ED6E33F8;
  *a1 = qword_1ED6E33E0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1AC50AE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    MEMORY[0x1AC5B48A0](1);
    result = MEMORY[0x1AC5B48D0](a2);
  }

  if (a3)
  {
    MEMORY[0x1AC5B48A0](2);
    result = MEMORY[0x1AC5B48D0](a3);
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4;
      v11 = a4 >> 32;
      goto LABEL_10;
    case 2uLL:
      v10 = *(a4 + 16);
      v11 = *(a4 + 24);
LABEL_10:
      if (v10 != v11)
      {
        goto LABEL_11;
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return result;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      return sub_1AC51EC58();
  }
}

uint64_t static Google_Protobuf_Timestamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1AC4578F4(v7, v6);
  sub_1AC4578F4(v5, v4);
  v8 = MEMORY[0x1AC5B4070](v7, v6, v5, v4);
  sub_1AC4513F8(v5, v4);
  sub_1AC4513F8(v7, v6);
  return v8 & 1;
}

uint64_t Google_Protobuf_Timestamp.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC50AE10(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B050()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC50AE10(__dst, v1, v2, v4, v3);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC50B0E4(uint64_t a1)
{
  result = sub_1AC50B10C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC50B10C()
{
  result = qword_1ED6E4290;
  if (!qword_1ED6E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4290);
  }

  return result;
}

unint64_t sub_1AC50B160(uint64_t a1)
{
  *(a1 + 8) = sub_1AC4D50A4();
  result = sub_1AC50B190();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC50B190()
{
  result = qword_1EB559D30;
  if (!qword_1EB559D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D30);
  }

  return result;
}

unint64_t sub_1AC50B1E8()
{
  result = qword_1EB559D38;
  if (!qword_1EB559D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559D38);
  }

  return result;
}

uint64_t sub_1AC50B23C()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B27C()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B2B8()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B2F8()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0 + 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B338()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B378()
{
  OUTLINED_FUNCTION_56_3();
  MEMORY[0x1AC5B48A0](v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B3B4(uint64_t a1, char a2)
{
  sub_1AC51F468();
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1AC5B48A0](v4);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B404(uint64_t a1)
{
  sub_1AC51F468();
  sub_1AC471208(v3, a1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B454()
{
  sub_1AC51F468();
  sub_1AC51F488();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B4D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1AC5B48A0](v3);
}

uint64_t sub_1AC50B564()
{
  sub_1AC51F468();
  sub_1AC51F488();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B5A8()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B5E8(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  sub_1AC471208(v4, a2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B634(uint64_t a1, uint64_t a2)
{
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](a2);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B678()
{
  OUTLINED_FUNCTION_84_2();
  MEMORY[0x1AC5B48A0](v0 & 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B6B4()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B6F4()
{
  OUTLINED_FUNCTION_84_2();
  MEMORY[0x1AC5B48A0](v0 + 1);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B734()
{
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_87_1(v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B774()
{
  OUTLINED_FUNCTION_84_2();
  MEMORY[0x1AC5B48A0](v0);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC50B7B0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AC51F468();
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1AC5B48A0](v5);
  return sub_1AC51F4C8();
}

void sub_1AC50B7FC()
{
  OUTLINED_FUNCTION_60();
  v295 = v2;
  v3 = v1;
  v6 = OUTLINED_FUNCTION_37_6(v4, v5);
  MEMORY[0x1AC5B48A0](v6);
  v304 = *(v0 + 16);
  if (v304)
  {
    v7 = v0 + 32;
    v8 = 0;
    v275 = v3;
    v301 = v7;
    while (2)
    {
      v9 = v7 + 48 * v8;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      OUTLINED_FUNCTION_83_2(v314);
      v16 = v13;
      v317 = v13;
      if ((~v12 & 0x3000000000000000) == 0 && v13 == 255)
      {
        v17 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v21, v22);
LABEL_165:
        ++v8;
        switch(v15 >> 62)
        {
          case 1uLL:
            v240 = v14;
            v241 = v14 >> 32;
            goto LABEL_170;
          case 2uLL:
            v240 = *(v14 + 16);
            v241 = *(v14 + 24);
LABEL_170:
            if (v240 != v241)
            {
              goto LABEL_171;
            }

            goto LABEL_172;
          case 3uLL:
            goto LABEL_172;
          default:
            if ((v15 & 0xFF000000000000) == 0)
            {
              goto LABEL_172;
            }

LABEL_171:
            sub_1AC51EC58();
LABEL_172:
            v242 = OUTLINED_FUNCTION_9_17();
            sub_1AC4854E8(v242, v243, v244, v317);
            v245 = OUTLINED_FUNCTION_40_7();
            v247 = sub_1AC4513F8(v245, v246);
            OUTLINED_FUNCTION_77_1(v247, v314);
            if (v8 == v304)
            {
              goto LABEL_173;
            }

            continue;
        }
      }

      break;
    }

    v23 = v11;
    switch((v12 >> 60) & 3 | (4 * (v16 & 1u)))
    {
      case 1uLL:
        v203 = OUTLINED_FUNCTION_9_17();
        v205 = v204;
        sub_1AC48541C(v203, v206, v207, v204);
        v208 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v208, v209);
        v210 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v210, v211, v212, v205);
        MEMORY[0x1AC5B48A0](2);
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v213 = v10;
        }

        else
        {
          v213 = 0;
        }

        MEMORY[0x1AC5B48D0](v213);
        goto LABEL_141;
      case 2uLL:
        v187 = v16;
        MEMORY[0x1AC5B48A0](3);
        v188 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v188, v189, v190, v187);
        v191 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v191, v192);
        OUTLINED_FUNCTION_28_8();
        sub_1AC51EEB8();
        goto LABEL_141;
      case 3uLL:
        v193 = OUTLINED_FUNCTION_9_17();
        v195 = v194;
        sub_1AC48541C(v193, v196, v197, v194);
        v198 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v198, v199);
        v200 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v200, v201, v202, v195);
        MEMORY[0x1AC5B48A0](4);
        sub_1AC51F488();
        goto LABEL_141;
      case 4uLL:
        v292 = v12 >> 62;
        v284 = v11 >> 32;
        MEMORY[0x1AC5B48A0](5);
        memcpy(__dst, v314, sizeof(__dst));
        if (!*(v10 + 16))
        {
          v225 = OUTLINED_FUNCTION_9_17();
          sub_1AC48541C(v225, v226, v227, v317);
          v228 = OUTLINED_FUNCTION_40_7();
          sub_1AC4578F4(v228, v229);
          v230 = OUTLINED_FUNCTION_9_17();
          sub_1AC48541C(v230, v231, v232, v317);
          goto LABEL_157;
        }

        v285 = v11;
        v293 = v8;
        MEMORY[0x1AC5B48A0](1);
        v35 = *(v10 + 64);
        v291 = v10 + 64;
        v36 = *(v10 + 32);
        OUTLINED_FUNCTION_73_1();
        v39 = v38 & v37;
        v40 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v40, v41, v42, v317);
        v43 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v43, v44);
        v45 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v45, v46, v47, v317);
        v48 = (v8 + 63) >> 6;

        v49 = 0;
        v50 = 0;
        v286 = v48;
        v287 = v11;
        v299 = v10;
        v288 = v12;
        v289 = v15;
        v290 = v14;
LABEL_13:
        v300 = v49;
        if (v39)
        {
          goto LABEL_19;
        }

        v8 = v293;
        while (1)
        {
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v51 >= v48)
          {
            goto LABEL_156;
          }

          v39 = *(v291 + 8 * v51);
          ++v50;
          if (v39)
          {
            v50 = v51;
LABEL_19:
            v52 = *(v299 + 56);
            v53 = (*(v299 + 48) + 16 * (__clz(__rbit64(v39)) | (v50 << 6)));
            v54 = *v53;
            v55 = v53[1];
            OUTLINED_FUNCTION_96_2();
            v57 = *v56;
            v58 = *(v56 + 8);
            v59 = *(v56 + 16);
            v60 = *(v56 + 24);
            v62 = *(v56 + 32);
            v61 = *(v56 + 40);

            v302 = v58;
            v303 = v57;
            v63 = OUTLINED_FUNCTION_60_3();
            v64 = v59;
            v316 = v60;
            sub_1AC48541C(v63, v65, v59, v60);
            v296 = v61;
            v297 = v62;
            sub_1AC4578F4(v62, v61);
            if (!v55)
            {
              v8 = v293;
              v15 = v289;
              v14 = v290;
              v11 = v287;
              v12 = v288;
LABEL_156:

              MEMORY[0x1AC5B48A0](v300);
              v23 = v285;
LABEL_157:
              v7 = v301;
              switch(v292)
              {
                case 1:
                  v235 = v284;
                  goto LABEL_162;
                case 2:
                  v23 = *(v11 + 16);
                  v235 = *(v11 + 24);
LABEL_162:
                  if (v23 != v235)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_164;
                case 3:
                  goto LABEL_164;
                default:
                  if ((v12 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_163;
              }
            }

            memcpy(__src, __dst, sizeof(__src));
            OUTLINED_FUNCTION_38_7();
            sub_1AC51EEB8();

            memcpy(v311, __src, sizeof(v311));
            v14 = v290;
            v11 = v287;
            v298 = v59;
            if ((~v59 & 0x3000000000000000) != 0 || v60 != 255)
            {
              v12 = v288;
              v15 = v289;
              switch((v64 >> 60) & 3 | (4 * (v316 & 1u)))
              {
                case 1uLL:
                  v165 = OUTLINED_FUNCTION_70_2();
                  sub_1AC4854E8(v165, v166, v167, v168);
                  MEMORY[0x1AC5B48A0](2);
                  if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v169 = v57;
                  }

                  else
                  {
                    v169 = 0;
                  }

                  MEMORY[0x1AC5B48D0](v169);
                  goto LABEL_102;
                case 2uLL:
                  MEMORY[0x1AC5B48A0](3);
                  OUTLINED_FUNCTION_27_8();
                  sub_1AC51EEB8();
                  goto LABEL_102;
                case 3uLL:
                  v161 = OUTLINED_FUNCTION_70_2();
                  sub_1AC4854E8(v161, v162, v163, v164);
                  MEMORY[0x1AC5B48A0](4);
                  sub_1AC51F488();
                  goto LABEL_102;
                case 4uLL:
                  v271 = v64 >> 62;
                  v267 = v302 >> 32;
                  v268 = v302;
                  MEMORY[0x1AC5B48A0](5);
                  memcpy(v310, v311, sizeof(v310));
                  if (*(v57 + 16))
                  {
                    MEMORY[0x1AC5B48A0](1);
                    v74 = *(v57 + 64);
                    v270 = v57 + 64;
                    v75 = *(v57 + 32);
                    OUTLINED_FUNCTION_73_1();
                    v281 = v77 & v76;
                    sub_1AC48541C(v57, v302, v298, v316);
                    v78 = (v57 + 63) >> 6;

                    v79 = 0;
                    v80 = 0;
                    v269 = (v303 + 63) >> 6;
                    while (1)
                    {
                      v81 = v281;
                      v276 = v79;
                      if (!v281)
                      {
                        do
                        {
                          v82 = v80 + 1;
                          if (__OFADD__(v80, 1))
                          {
                            goto LABEL_175;
                          }

                          if (v82 >= v78)
                          {
                            goto LABEL_125;
                          }

                          v81 = *(v270 + 8 * v82);
                          ++v80;
                        }

                        while (!v81);
                        v80 = v82;
                      }

                      v282 = v81;
                      v83 = *(v303 + 56);
                      v84 = (*(v303 + 48) + 16 * (__clz(__rbit64(v81)) | (v80 << 6)));
                      v85 = v84[1];
                      v272 = v80;
                      v273 = *v84;
                      OUTLINED_FUNCTION_96_2();
                      v87 = *v86;
                      v88 = *(v86 + 8);
                      v89 = *(v86 + 16);
                      v90 = *(v86 + 24);
                      v279 = *(v86 + 32);
                      v283 = *(v86 + 40);

                      v280 = v87;
                      v278 = v88;
                      HIDWORD(v274) = v90;
                      sub_1AC48541C(v87, v88, v89, v90);
                      sub_1AC4578F4(v279, v283);
                      if (!v85)
                      {
                        break;
                      }

                      memcpy(v309, v310, sizeof(v309));
                      sub_1AC51EEB8();

                      v91 = memcpy(v308, v309, sizeof(v308));
                      v97 = v89;
                      v98 = (~v89 & 0x3000000000000000) == 0;
                      v15 = v289;
                      v14 = v290;
                      v277 = v97;
                      if (!v98 || v90 != 255)
                      {
                        switch((v97 >> 60) & 3 | (4 * (v90 & 1u)))
                        {
                          case 1uLL:
                            v135 = OUTLINED_FUNCTION_55_3(v91, v278, v97, v92, v93, v94, v95, v96, v248, v249, v251, v253, v254, v255, v257, v258, v259, v260, v261, v262, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v97, v278, v279, v87);
                            sub_1AC4854E8(v135, v136, v137, v138);
                            MEMORY[0x1AC5B48A0](2);
                            if ((v280 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v139 = v280;
                            }

                            else
                            {
                              v139 = 0;
                            }

                            MEMORY[0x1AC5B48D0](v139);
                            goto LABEL_64;
                          case 2uLL:
                            MEMORY[0x1AC5B48A0](3);
                            v14 = v290;
                            sub_1AC51EEB8();
                            goto LABEL_64;
                          case 3uLL:
                            v131 = OUTLINED_FUNCTION_55_3(v91, v278, v97, v92, v93, v94, v95, v96, v248, v249, v251, v253, v254, v255, v257, v258, v259, v260, v261, v262, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v97, v278, v279, v87);
                            sub_1AC4854E8(v131, v132, v133, v134);
                            MEMORY[0x1AC5B48A0](4);
                            sub_1AC51F488();
                            goto LABEL_64;
                          case 4uLL:
                            v256 = v97 >> 62;
                            v250 = v278 >> 32;
                            v252 = v278;
                            MEMORY[0x1AC5B48A0](5);
                            memcpy(v307, v308, sizeof(v307));
                            if (*(v87 + 16))
                            {
                              MEMORY[0x1AC5B48A0](1);
                              v254 = v87 + 64;
                              v105 = 1 << *(v87 + 32);
                              if (v105 < 64)
                              {
                                v106 = ~(-1 << v105);
                              }

                              else
                              {
                                v106 = -1;
                              }

                              v107 = v90;
                              v108 = v106 & *(v87 + 64);
                              sub_1AC48541C(v87, v278, v277, v107);
                              v109 = (v105 + 63) >> 6;

                              v111 = 0;
                              v112 = 0;
                              v253 = v109;
                              while (1)
                              {
                                v263 = v111;
                                if (!v108)
                                {
                                  do
                                  {
                                    v113 = v112 + 1;
                                    if (__OFADD__(v112, 1))
                                    {
                                      goto LABEL_176;
                                    }

                                    if (v113 >= v109)
                                    {
                                      goto LABEL_87;
                                    }

                                    v108 = *(v254 + 8 * v113);
                                    ++v112;
                                  }

                                  while (!v108);
                                  v112 = v113;
                                }

                                v260 = v112;
                                v261 = v108;
                                v114 = *(v110 + 56);
                                v115 = (*(v110 + 48) + 16 * (__clz(__rbit64(v108)) | (v112 << 6)));
                                v116 = v115[1];
                                v259 = *v115;
                                OUTLINED_FUNCTION_96_2();
                                v119 = *v117;
                                v118 = *(v117 + 8);
                                v273 = *(v117 + 16);
                                v120 = *(v117 + 24);
                                v262 = *(v117 + 32);
                                v265 = *(v117 + 40);
                                v266 = v121;

                                v257 = v118;
                                v258 = v119;
                                v122 = OUTLINED_FUNCTION_29_8();
                                sub_1AC48541C(v122, v123, v273, v120);
                                sub_1AC4578F4(v262, v265);
                                if (!v266)
                                {
                                  break;
                                }

                                v315[0] = v119;
                                v315[1] = v118;
                                v315[2] = v273;
                                v315[3] = v120;
                                v315[4] = v262;
                                v315[5] = v265;
                                memcpy(v306, v307, sizeof(v306));
                                sub_1AC51EEB8();

                                memcpy(v305, v306, sizeof(v305));
                                sub_1AC4F7938(v305);
                                if (v295)
                                {
                                  MEMORY[0x1AC5B4BA0](v295);
                                }

                                v108 = (v261 - 1) & v261;
                                sub_1AC4DD16C(v315);
                                OUTLINED_FUNCTION_104_2(v306, v124, v125, v126, v127, v128, v129, v130, v248, v250, v252, v253, v254, v256, v257, v119, v259, v260, v261, v262, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, 0, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305[0]);
                                v111 = sub_1AC51F4C8() ^ v264;
                                v110 = v280;
                                v109 = v253;
                                v112 = v260;
                              }

LABEL_87:
                              LOBYTE(v90) = BYTE4(v274);

                              v144 = MEMORY[0x1AC5B48A0](v263);
                            }

                            else
                            {
                              sub_1AC485440(v87, v278, v277, v90 & 1);
                            }

                            v140 = v282;
                            v152 = v278;
                            switch(v256)
                            {
                              case 1:
                                v156 = v250;
                                v155 = v252;
                                goto LABEL_93;
                              case 2:
                                v155 = *(v278 + 16);
                                v156 = *(v278 + 24);
LABEL_93:
                                if (v155 != v156)
                                {
                                  goto LABEL_94;
                                }

                                goto LABEL_95;
                              case 3:
                                goto LABEL_95;
                              default:
                                if ((v277 & 0xFF000000000000) != 0)
                                {
                                  goto LABEL_94;
                                }

                                goto LABEL_95;
                            }

                          case 5uLL:
                            v256 = v97 >> 62;
                            v250 = v278 >> 32;
                            v252 = v278;
                            MEMORY[0x1AC5B48A0](6);
                            memcpy(v307, v308, sizeof(v307));
                            v143 = *(v87 + 16);
                            sub_1AC485440(v87, v278, v277, v90 & 1);
                            if (v143)
                            {
                              v151 = v295;
                              v144 = sub_1AC50B7FC(v280, 1);
                              v14 = v290;
                              if (v295)
                              {
                                v144 = MEMORY[0x1AC5B4BA0](v295);
                                v295 = 0;
                                v140 = v282;
                                v152 = v278;
                                goto LABEL_95;
                              }

                              v140 = v282;
                            }

                            else
                            {
                              v151 = v295;
                              v140 = v282;
                              v14 = v290;
                            }

                            v295 = v151;
                            v152 = v278;
                            switch(v256)
                            {
                              case 1:
                                v154 = v278 >> 32;
                                v153 = v278;
                                goto LABEL_85;
                              case 2:
                                v153 = *(v278 + 16);
                                v154 = *(v278 + 24);
LABEL_85:
                                if (v153 != v154)
                                {
                                  goto LABEL_94;
                                }

                                break;
                              case 3:
                                break;
                              default:
                                if ((v277 & 0xFF000000000000) == 0)
                                {
                                  break;
                                }

LABEL_94:
                                v144 = sub_1AC51EC58();
                                v152 = v278;
                                break;
                            }

LABEL_95:
                            v157 = OUTLINED_FUNCTION_55_3(v144, v152, v145, v146, v147, v148, v149, v150, v248, v250, v252, v253, v254, v256, v257, v258, v259, v260, v261, v262, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280);
                            sub_1AC4854E8(v157, v158, v159, v160);
                            memcpy(v308, v307, sizeof(v308));
                            v97 = v277;
                            goto LABEL_66;
                          default:
                            v99 = OUTLINED_FUNCTION_55_3(v91, v278, v97, v92, v93, v94, v95, v96, v248, v249, v251, v253, v254, v255, v257, v258, v259, v260, v261, v262, v263, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v97, v278, v279, v87);
                            v101 = v100;
                            sub_1AC4854E8(v99, v100, v102, v103);
                            MEMORY[0x1AC5B48A0](1);
                            v98 = (v101 & 1) == 0;
                            v14 = v290;
                            if (v98)
                            {
                              v104 = v280;
                            }

                            else
                            {
                              v104 = 0;
                            }

                            MEMORY[0x1AC5B48A0](v104);
LABEL_64:
                            v97 = v277;
                            break;
                        }
                      }

                      v140 = v282;
LABEL_66:
                      v281 = (v140 - 1) & v140;
                      switch(v283 >> 62)
                      {
                        case 1uLL:
                          v141 = v279;
                          v142 = v279 >> 32;
                          goto LABEL_71;
                        case 2uLL:
                          v141 = *(v279 + 16);
                          v142 = *(v279 + 24);
LABEL_71:
                          if (v141 != v142)
                          {
                            goto LABEL_72;
                          }

                          goto LABEL_73;
                        case 3uLL:
                          goto LABEL_73;
                        default:
                          if ((v283 & 0xFF000000000000) == 0)
                          {
                            goto LABEL_73;
                          }

LABEL_72:
                          sub_1AC51EC58();
                          v97 = v277;
LABEL_73:
                          sub_1AC4854E8(v280, v278, v97, v90);
                          sub_1AC4513F8(v279, v283);
                          memcpy(v309, v308, sizeof(v309));
                          v79 = sub_1AC51F4C8() ^ v276;
                          v78 = v269;
                          v80 = v272;
                          break;
                      }
                    }

                    v15 = v289;
                    v14 = v290;
LABEL_125:

                    MEMORY[0x1AC5B48A0](v276);
                  }

                  else
                  {
                    v179 = OUTLINED_FUNCTION_93_2();
                    sub_1AC485440(v179, v180, v298, v181);
                  }

                  v67 = v296;
                  v66 = v297;
                  v182 = v302;
                  switch(v271)
                  {
                    case 1:
                      v186 = v267;
                      v185 = v268;
                      goto LABEL_131;
                    case 2:
                      v185 = *(v302 + 16);
                      v186 = *(v302 + 24);
LABEL_131:
                      if (v185 != v186)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                    case 3:
                      goto LABEL_134;
                    default:
                      if ((v298 & 0xFF000000000000) != 0)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                  }

                case 5uLL:
                  MEMORY[0x1AC5B48A0](6);
                  memcpy(v310, v311, sizeof(v310));
                  v174 = *(v57 + 16);
                  v175 = OUTLINED_FUNCTION_93_2();
                  sub_1AC485440(v175, v176, v64, v177);
                  if (v174)
                  {
                    v178 = v295;
                    sub_1AC50B7FC(v303, 1);
                    if (v295)
                    {
                      MEMORY[0x1AC5B4BA0](v295);
                      v295 = 0;
                      v67 = v296;
                      v66 = v297;
                      goto LABEL_133;
                    }

                    v67 = v296;
                    v66 = v297;
                  }

                  else
                  {
                    v178 = v295;
                    v67 = v296;
                    v66 = v297;
                  }

                  v295 = v178;
                  v182 = v302;
                  switch(v64 >> 62)
                  {
                    case 1uLL:
                      v184 = v302 >> 32;
                      v183 = v302;
                      goto LABEL_122;
                    case 2uLL:
                      v183 = *(v302 + 16);
                      v184 = *(v302 + 24);
LABEL_122:
                      if (v183 != v184)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_134;
                    case 3uLL:
                      goto LABEL_134;
                    default:
                      if ((v298 & 0xFF000000000000) == 0)
                      {
                        goto LABEL_134;
                      }

LABEL_132:
                      sub_1AC51EC58();
                      break;
                  }

LABEL_133:
                  v182 = v302;
LABEL_134:
                  sub_1AC4854E8(v303, v182, v298, v316);
                  memcpy(v311, v310, sizeof(v311));
                  goto LABEL_103;
                default:
                  v68 = OUTLINED_FUNCTION_70_2();
                  v70 = v69;
                  sub_1AC4854E8(v68, v69, v71, v72);
                  MEMORY[0x1AC5B48A0](1);
                  if (v70)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v57;
                  }

                  MEMORY[0x1AC5B48A0](v73);
LABEL_102:
                  v67 = v296;
                  v66 = v297;
                  goto LABEL_103;
              }
            }

            v67 = v296;
            v66 = v297;
            v12 = v288;
            v15 = v289;
LABEL_103:
            v39 &= v39 - 1;
            switch(v67 >> 62)
            {
              case 1uLL:
                v170 = v66;
                v171 = v66 >> 32;
                goto LABEL_108;
              case 2uLL:
                v170 = *(v66 + 16);
                v171 = *(v66 + 24);
LABEL_108:
                if (v170 != v171)
                {
                  goto LABEL_109;
                }

                goto LABEL_110;
              case 3uLL:
                goto LABEL_110;
              default:
                if ((v67 & 0xFF000000000000) == 0)
                {
                  goto LABEL_110;
                }

LABEL_109:
                OUTLINED_FUNCTION_38_7();
                sub_1AC51EC58();
LABEL_110:
                sub_1AC4854E8(v303, v302, v298, v316);
                v172 = OUTLINED_FUNCTION_44();
                sub_1AC4513F8(v172, v173);
                memcpy(__src, v311, sizeof(__src));
                v49 = sub_1AC51F4C8() ^ v300;
                v48 = v286;
                break;
            }

            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        return;
      case 5uLL:
        v294 = v8;
        v214 = v16;
        MEMORY[0x1AC5B48A0](6);
        memcpy(__dst, v314, sizeof(__dst));
        v215 = *(v10 + 16);
        v216 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v216, v217, v218, v214);
        v219 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v219, v220);
        v221 = OUTLINED_FUNCTION_9_17();
        sub_1AC48541C(v221, v222, v223, v214);
        if (v215)
        {
          v224 = v295;
          sub_1AC50B7FC(v10, 1);
          if (v295)
          {
            MEMORY[0x1AC5B4BA0](v295);
            v295 = 0;
            v8 = v294;
            v7 = v301;
LABEL_164:
            v236 = OUTLINED_FUNCTION_9_17();
            sub_1AC4854E8(v236, v237, v238, v239);
            memcpy(v314, __dst, sizeof(v314));
            goto LABEL_165;
          }

          v8 = v294;
        }

        else
        {
          v8 = v294;
          v224 = v295;
        }

        v7 = v301;
        v295 = v224;
        v233 = v11;
        switch(v12 >> 62)
        {
          case 1uLL:
            v234 = v11 >> 32;
            goto LABEL_153;
          case 2uLL:
            v233 = *(v11 + 16);
            v234 = *(v11 + 24);
LABEL_153:
            if (v233 != v234)
            {
              goto LABEL_163;
            }

            goto LABEL_164;
          case 3uLL:
            goto LABEL_164;
          default:
            if ((v12 & 0xFF000000000000) == 0)
            {
              goto LABEL_164;
            }

LABEL_163:
            sub_1AC51EC58();
            break;
        }

        goto LABEL_164;
      default:
        v24 = OUTLINED_FUNCTION_9_17();
        v26 = v25;
        sub_1AC48541C(v24, v27, v28, v25);
        v29 = OUTLINED_FUNCTION_40_7();
        sub_1AC4578F4(v29, v30);
        v31 = OUTLINED_FUNCTION_9_17();
        sub_1AC4854E8(v31, v32, v33, v26);
        MEMORY[0x1AC5B48A0](1);
        if (v11)
        {
          v34 = 0;
        }

        else
        {
          v34 = v10;
        }

        MEMORY[0x1AC5B48A0](v34);
LABEL_141:
        v7 = v301;
        goto LABEL_165;
    }
  }

LABEL_173:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC50C78C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_37_6(a1, a2);
  result = MEMORY[0x1AC5B48A0](v4);
  v6 = *(v2 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_64_2(__src);
    v39 = v6 - 1;
    v7 = (v2 + 80);
    while (1)
    {
      v8 = *(v7 - 6);
      v9 = *(v7 - 5);
      v10 = *(v7 - 4);
      v11 = *(v7 - 3);
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v14 = *v7;
      memcpy(__dst, __src, sizeof(__dst));
      v15 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v15 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        MEMORY[0x1AC5B48A0](1);

        sub_1AC4578F4(v10, v11);
        v16 = OUTLINED_FUNCTION_41_5();
        sub_1AC4852EC(v16, v17, v14);
        sub_1AC51EEB8();
      }

      else
      {

        sub_1AC4578F4(v10, v11);
        v18 = OUTLINED_FUNCTION_41_5();
        sub_1AC4852EC(v18, v19, v14);
      }

      v20 = v39;
      if (v14)
      {
        MEMORY[0x1AC5B48A0](2);
        v21 = OUTLINED_FUNCTION_41_5();
        sub_1AC4578F4(v21, v22);

        sub_1AC476370();
        v23 = OUTLINED_FUNCTION_41_5();
        sub_1AC48532C(v23, v24, v14);
      }

      v7 += 7;
      switch(v11 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_15;
        case 2uLL:
          v25 = *(v10 + 16);
          v26 = *(v10 + 24);
LABEL_15:
          if (v25 != v26)
          {
            goto LABEL_16;
          }

          goto LABEL_17;
        case 3uLL:
          goto LABEL_17;
        default:
          if ((v11 & 0xFF000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_1AC51EC58();
LABEL_17:

          sub_1AC4513F8(v10, v11);
          v27 = OUTLINED_FUNCTION_41_5();
          v29 = sub_1AC48532C(v27, v28, v14);
          if (!v20)
          {
            return OUTLINED_FUNCTION_86_2(v29, __dst, v30, v31, v32, v33, v34, v35, v36, v3);
          }

          memcpy(__src, __dst, 0x48uLL);
          v39 = v20 - 1;
          break;
      }
    }
  }

  return result;
}

void *sub_1AC50C974(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  result = MEMORY[0x1AC5B48A0](a2);
  v8 = *(a1 + 16);
  if (v8)
  {
    memcpy(__dst, v5, sizeof(__dst));
    v9 = (a1 + 32);
    for (i = v8 - 1; ; --i)
    {
      memcpy(v14, v9, sizeof(v14));
      memcpy(__src, __dst, sizeof(__src));
      sub_1AC48536C(v14, &v11);
      sub_1AC512FD4();
      if (v4)
      {
        MEMORY[0x1AC5B4BA0](v4);
        v4 = 0;
      }

      sub_1AC4853C8(v14);
      if (!i)
      {
        break;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v9 += 128;
    }

    return memcpy(v5, __src, 0x48uLL);
  }

  return result;
}

void *sub_1AC50CA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MEMORY[0x1AC5B48A0](a2);
  v30 = *(a1 + 16);
  if (v30)
  {
    memcpy(__dst, v2, sizeof(__dst));
    v6 = 0;
    v29 = a1 + 32;
    while (1)
    {
      v7 = (v29 + 48 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 4);
      v12 = v7[3];
      v11 = v7[4];
      v13 = v7[5];
      memcpy(__src, __dst, sizeof(__src));
      v14 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v14 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        break;
      }

      sub_1AC4578F4(v11, v13);
      if (v10)
      {
        goto LABEL_7;
      }

LABEL_8:
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_27;
      }

      v31 = v13;
      v32 = v11;
      v33 = v6;
      MEMORY[0x1AC5B48A0](3);
      memcpy(v35, __src, sizeof(v35));
      v38 = v15 - 1;
      v16 = (v12 + 80);
      while (2)
      {
        v18 = *(v16 - 6);
        v17 = *(v16 - 5);
        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v22 = *(v16 - 2);
        v21 = *(v16 - 1);
        v23 = *v16;
        memcpy(v34, v35, sizeof(v34));
        v24 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v24 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          MEMORY[0x1AC5B48A0](1);

          sub_1AC4578F4(v20, v19);
          sub_1AC4852EC(v22, v21, v23);
          sub_1AC51EEB8();
          if (!v23)
          {
            goto LABEL_15;
          }

LABEL_14:
          MEMORY[0x1AC5B48A0](2);
          sub_1AC4578F4(v22, v21);

          sub_1AC476370();
          sub_1AC48532C(v22, v21, v23);
          goto LABEL_15;
        }

        sub_1AC4578F4(v20, v19);
        sub_1AC4852EC(v22, v21, v23);
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_15:
        v16 += 7;
        switch(v19 >> 62)
        {
          case 1uLL:
            v25 = v20;
            v26 = v20 >> 32;
            goto LABEL_22;
          case 2uLL:
            v25 = *(v20 + 16);
            v26 = *(v20 + 24);
LABEL_22:
            if (v25 != v26)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          case 3uLL:
            goto LABEL_24;
          default:
            if ((v19 & 0xFF000000000000) == 0)
            {
              goto LABEL_24;
            }

LABEL_23:
            sub_1AC51EC58();
LABEL_24:

            sub_1AC4513F8(v20, v19);
            sub_1AC48532C(v22, v21, v23);
            if (v38)
            {
              memcpy(v35, v34, sizeof(v35));
              --v38;
              continue;
            }

            memcpy(__src, v34, sizeof(__src));
            v3 = v2;
            v6 = v33;
            v13 = v31;
            v11 = v32;
LABEL_27:
            ++v6;
            switch(v13 >> 62)
            {
              case 1uLL:
                v27 = v11;
                v28 = v11 >> 32;
                goto LABEL_34;
              case 2uLL:
                v27 = *(v11 + 16);
                v28 = *(v11 + 24);
LABEL_34:
                if (v27 != v28)
                {
                  goto LABEL_35;
                }

                goto LABEL_36;
              case 3uLL:
                goto LABEL_36;
              default:
                if ((v13 & 0xFF000000000000) == 0)
                {
                  goto LABEL_36;
                }

LABEL_35:
                sub_1AC51EC58();
LABEL_36:

                sub_1AC4513F8(v11, v13);
                if (v6 == v30)
                {
                  return memcpy(v3, __src, 0x48uLL);
                }

                memcpy(__dst, __src, sizeof(__dst));
                break;
            }

            break;
        }

        break;
      }
    }

    MEMORY[0x1AC5B48A0](1);

    sub_1AC4578F4(v11, v13);
    sub_1AC51EEB8();
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](v10);
    goto LABEL_8;
  }

  return result;
}

void sub_1AC50CE2C()
{
  OUTLINED_FUNCTION_76_2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v50 = v1;
    __dst = v0;
    v4 = OUTLINED_FUNCTION_64_2(v49);
    v12 = v3 - 1;
    v13 = (v2 + 72);
    while (1)
    {
      v15 = *(v13 - 5);
      v14 = *(v13 - 4);
      v17 = *(v13 - 3);
      v16 = *(v13 - 2);
      v18 = *(v13 - 1);
      v19 = *v13;
      v20 = OUTLINED_FUNCTION_17_17(v4, v5, v6, v7, v8, v9, v10, v11, v44, __dst, v48[0]);
      memcpy(v20, v21, v22);
      v23 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v23 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        MEMORY[0x1AC5B48A0](1);

        v24 = OUTLINED_FUNCTION_100();
        sub_1AC4578F4(v24, v25);
        sub_1AC51EEB8();
      }

      else
      {

        v26 = OUTLINED_FUNCTION_100();
        sub_1AC4578F4(v26, v27);
      }

      v28 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v28 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51EEB8();
      }

      v13 += 6;
      switch(v19 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_97_1();
          goto LABEL_17;
        case 2uLL:
          v29 = *(v18 + 16);
          v30 = *(v18 + 24);
LABEL_17:
          if (v29 != v30)
          {
            goto LABEL_18;
          }

          goto LABEL_19;
        case 3uLL:
          goto LABEL_19;
        default:
          if ((v19 & 0xFF000000000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          OUTLINED_FUNCTION_175();
          sub_1AC51EC58();
LABEL_19:

          v31 = OUTLINED_FUNCTION_100();
          v33 = sub_1AC4513F8(v31, v32);
          if (!v12)
          {
            OUTLINED_FUNCTION_86_2(v33, v48, v35, v36, v37, v38, v39, v40, v45, __dsta);
            return;
          }

          v41 = OUTLINED_FUNCTION_18_13(v33, v34, v35, v36, v37, v38, v39, v40, v45, __dsta, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v49[0]);
          v4 = memcpy(v41, v42, v43);
          --v12;
          break;
      }
    }
  }
}