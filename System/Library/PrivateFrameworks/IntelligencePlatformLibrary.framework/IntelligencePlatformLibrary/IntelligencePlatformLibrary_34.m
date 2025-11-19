void sub_1936C2BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 9);
  v21 = *(v3 + 5);
  v8 = *(v3 + 16);
  v31 = *(v3 + 17);
  v32 = *(v3 + 3);
  v20 = *(v3 + 9);
  v22 = *(v3 + 5);
  v23 = *(v3 + 24);
  v27 = *(v3 + 25);
  v28 = *(v3 + 41);
  v9 = *(v3 + 57);
  v10 = a1 == 1852270963 && a2 == 0xE400000000000000;
  v29 = *(v3 + 57);
  v30 = *(v3 + 73);
  if (v10 || (v19 = *(v3 + 89), (OUTLINED_FUNCTION_91_2() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v13 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v14 = a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074;
  if (v14 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v31 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v15 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v16 = a1 == 0x61737369746E616DLL && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (v19)
    {
      goto LABEL_7;
    }

    v24 = *(v3 + 28);
    v25 = *(v3 + 44);
    *v26 = *(v3 + 60);
    *&v26[13] = *(v3 + 73);
    sub_193494798(&type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa, &off_1F07E1108, a3);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v17 = a1;
    v17[1] = a2;
    v17[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    OUTLINED_FUNCTION_209_0();
    v18 = swift_allocObject();
    v3[2] = v18;
    *(v18 + 41) = v27;
    *(v18 + 89) = v30;
    *(v18 + 73) = v29;
    *(v18 + 16) = v5;
    *(v18 + 24) = v6;
    *(v18 + 25) = v7;
    *(v18 + 26) = v21;
    *(v18 + 28) = v32;
    *(v18 + 32) = v8;
    *(v18 + 33) = v31;
    *(v18 + 34) = v20;
    *(v18 + 36) = v22;
    *(v18 + 40) = v23;
    *(v18 + 57) = v28;
    *(v18 + 105) = v19;
    OUTLINED_FUNCTION_26_0();
  }
}

void sub_1936C2EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 4);
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_134_9();
  v10 = *(v3 + 12);
  v34 = *(v3 + 20);
  v35 = v3[2];
  v32 = *(v3 + 28);
  v33 = v3[4];
  v30 = *(v3 + 36);
  v31 = v3[6];
  v28 = *(v3 + 44);
  v29 = v3[8];
  v26 = *(v3 + 52);
  v27 = v3[10];
  v23 = v3[14];
  v24 = *(v3 + 60);
  v25 = v3[12];
  if (OUTLINED_FUNCTION_12_17())
  {
LABEL_6:
    if (v8)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  v11 = v5 == 12639 && v4 == 0xE200000000000000;
  if (v11 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v12 = v5 == 12895 && v4 == 0xE200000000000000;
  if (v12 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v34)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v13 = v5 == 13151 && v4 == 0xE200000000000000;
  if (v13 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v14 = v5 == 13407 && v4 == 0xE200000000000000;
  if (v14 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v30)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v15 = v5 == 13663 && v4 == 0xE200000000000000;
  if (v15 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v28)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v16 = v5 == 13919 && v4 == 0xE200000000000000;
  if (v16 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v17 = v5 == 14175 && v4 == 0xE200000000000000;
  if (v17 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_73_1(v18, v19);
  *(v20 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal.Mantissa;
  OUTLINED_FUNCTION_323();
  v21 = swift_allocObject();
  *(a3 + 16) = v21;
  *(v21 + 16) = v7;
  *(v21 + 20) = v8;
  *(v21 + 23) = *(v3 + 7);
  *(v21 + 21) = *(v3 + 5);
  *(v21 + 24) = v35;
  v22 = OUTLINED_FUNCTION_250_0(v21);
  *(v22 + 32) = v33;
  *(v22 + 36) = v34;
  *(v22 + 39) = *(v3 + 23);
  *(v22 + 37) = *(v3 + 21);
  *(v22 + 40) = v31;
  *(v22 + 44) = v32;
  *(v22 + 45) = *(v3 + 29);
  *(v22 + 47) = *(v3 + 31);
  *(v22 + 48) = v29;
  *(v22 + 52) = v30;
  *(v22 + 53) = *(v3 + 37);
  *(v22 + 55) = *(v3 + 39);
  *(v22 + 56) = v27;
  *(v22 + 60) = v28;
  *(v22 + 61) = *(v3 + 45);
  *(v22 + 63) = *(v3 + 47);
  *(v22 + 64) = v25;
  *(v22 + 68) = v26;
  *(v22 + 71) = *(v3 + 55);
  *(v22 + 69) = *(v3 + 53);
  *(v22 + 72) = v23;
  *(v22 + 76) = v24;
  OUTLINED_FUNCTION_163_6();
}

void sub_1936C3248()
{
  OUTLINED_FUNCTION_241_1();
  v5 = v4;
  v7 = *v0;
  v6 = v0[1];
  if (v8 != 1953066613 || v3 != 0xE400000000000000)
  {
    OUTLINED_FUNCTION_134_9();
    v10 = v0[2];
    v11 = *(v0 + 24);
    v19 = v0[4];
    v20[0] = *(v0 + 40);
    v12 = *(v0 + 41);
    if ((OUTLINED_FUNCTION_12_17() & 1) == 0)
    {
      v13 = v2 == OUTLINED_FUNCTION_26_28() && v1 == 0xE500000000000000;
      if (v13 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = v2 == 0x6570795474696E75 && v1 == 0xE800000000000000;
        if (!v14 && (OUTLINED_FUNCTION_12_17() & 1) == 0)
        {
          sub_19349AB64();
          v15 = OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_73_1(v15, v16);
          *(v17 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Measurement;
          v18 = swift_allocObject();
          *(v5 + 16) = v18;
          *(v18 + 16) = v7;
          *(v18 + 24) = v6;
          *(v18 + 32) = v10;
          *(v18 + 40) = v11;
          *(v18 + 48) = v19;
          *(v18 + 56) = v20[0];
          *(v18 + 57) = v12;
          OUTLINED_FUNCTION_163_6();

          goto LABEL_15;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_29();
      goto LABEL_15;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C3404()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 == 0x746E756F6D61 && v0 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if ((__dst[2] & 0xFF00) == 0x300)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v31 = *v1;
    *&v32[0] = __dst[2];
    v4 = memcpy(v32 + 8, v1 + 24, 0x42uLL);
    v10 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    v11 = &off_1F07E10F8;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000012 && v16 == v0;
  if (v23 || (v15 = OUTLINED_FUNCTION_49_18(), (v15 & 1) != 0))
  {
    if (!__dst[13])
    {
      goto LABEL_7;
    }

    *(&v31 + 1) = __dst[13];
    OUTLINED_FUNCTION_52_2(v15, MEMORY[0x1E69E6158], v17, v18, v19, v20, v21, v22, __dst[12]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v4 = 0xD000000000000015;
    v25 = v2 == 0xD000000000000015 && v24 == v0;
    if (v25 || (v4 = OUTLINED_FUNCTION_12_17(), (v4 & 1) != 0))
    {
      if (!__dst[19])
      {
        goto LABEL_7;
      }

      v26 = v1[8];
      v31 = v1[7];
      v32[0] = v26;
      *&v32[1] = *(v1 + 18);
      *(&v32[1] + 1) = __dst[19];
      v27 = v1[11];
      v32[2] = v1[10];
      v32[3] = v27;
      v10 = &type metadata for ToolKitToolDisplayRepresentation;
      v11 = &off_1F07E18C8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v4, v10, v11, v5, v6, v7, v8, v9, v31);
      sub_193494798(v12, v13, v14);
      return;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v28 = v2;
    v28[1] = v0;
    v28[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount;
    OUTLINED_FUNCTION_287_0();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_28_3(v29);
    memcpy(v30, __dst, 0xC0uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C35DC(__dst, &v31);
  }
}

void sub_1936C3650()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 == 1701869940 && v0 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v11 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v13 = v2 == 0xD000000000000012 && v12 == v0;
  if (v13 || (v4 = OUTLINED_FUNCTION_49_18(), (v4 & 1) != 0))
  {
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v39 = __dst[2];
    v11 = MEMORY[0x1E69E6158];
LABEL_16:
    OUTLINED_FUNCTION_52_2(v4, v11, v5, v6, v7, v8, v9, v10, v39);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v15 = v2 == 0xD000000000000015 && v14 == v0;
  if (v15 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (!__dst[9])
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_202_1();
    OUTLINED_FUNCTION_52_2(v16, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v17, v18, v19, v20, v21, v39);
    sub_193494798(v22, v23, v24);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v25 = v2;
    v25[1] = v0;
    v25[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod;
    OUTLINED_FUNCTION_136_6();
    v26 = swift_allocObject();
    v27 = OUTLINED_FUNCTION_61_19(v26);
    memcpy(v27, v28, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v37 = OUTLINED_FUNCTION_188_3(v29, v30, v31, v32, v33, v34, v35, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, __dst[0]);
    sub_1936C37E0(v37, v38);
  }
}

void sub_1936C3854()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, 0x6AuLL);
  v3 = v1 == 0x72616D6563616C70 && v0 == 0xE90000000000006BLL;
  if (v3 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v3 & v4))
    {
      OUTLINED_FUNCTION_203_1();
      v12 = MEMORY[0x1E6969080];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v5, v12, v6, v7, v8, v9, v10, v11, v42);
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_34_21();
  v14 = v3 && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    if (!__dst[7])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_52_2(v15, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v16, v17, v18, v19, v20, v42);
    sub_193494798(v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_171_3();
    v25 = v1 == v24 && v0 == 0xE400000000000000;
    if (v25 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
    {
      if ((__dst[13] & 0x100) == 0)
      {
        OUTLINED_FUNCTION_33_4();
        v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark.Type;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v26, v27);
    *(v28 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark;
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_61_19(v29);
    memcpy(v30, v31, 0x6AuLL);
    OUTLINED_FUNCTION_26_0();

    v40 = OUTLINED_FUNCTION_188_3(v32, v33, v34, v35, v36, v37, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, __dst[0]);
    sub_1936C39F0(v40, v41);
  }
}

void sub_1936C3A64()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x6E6F73726570 && v1 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v4 & v6))
    {
      v7 = *__dst;
LABEL_9:
      *&__src[0] = v7;
      *(&__src[0] + 1) = v5;
LABEL_10:
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v9 = v2 == 0xD000000000000015 && v8 == v1;
  if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!*&__dst[56])
    {
      goto LABEL_8;
    }

    v10 = *(v3 + 32);
    __src[0] = *(v3 + 16);
    __src[1] = v10;
    *&__src[2] = *(v3 + 48);
    *(&__src[2] + 1) = *&__dst[56];
    v11 = *(v3 + 80);
    __src[3] = *(v3 + 64);
    __src[4] = v11;
    v12 = &type metadata for ToolKitToolDisplayRepresentation;
    v13 = &off_1F07E18C8;
    goto LABEL_18;
  }

  v14 = v2 == 0x656C646E6168 && v1 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    if (*&__dst[104] == 1)
    {
      goto LABEL_8;
    }

    __src[0] = *&__dst[96];
    *&__src[1] = *&__dst[112];
    WORD4(__src[1]) = *&__dst[120] & 0x1FF;
    __src[2] = *&__dst[128];
    v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle;
    v13 = &off_1F07E1168;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_147_6();
  OUTLINED_FUNCTION_230_2(0x656D616Eu);
  v16 = v4 && v1 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__src, (v3 + 144), 0xC0uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
      goto LABEL_8;
    }

    memcpy(v37, __src, sizeof(v37));
    v12 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
    v13 = &off_1F07E1178;
LABEL_18:
    sub_193494798(v12, v13, v0);
    return;
  }

  v18 = v2 == OUTLINED_FUNCTION_190_1() && v1 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = *&__dst[344];
    if (!*&__dst[344])
    {
      goto LABEL_8;
    }

    v20 = *&__dst[336];
LABEL_40:
    *&__src[0] = v20;
    *(&__src[0] + 1) = v19;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_311(1734438249);
  v21 = v4 && v1 == 0xE500000000000000;
  if (v21 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v4 & v6))
    {
      v7 = *&__dst[352];
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_8_17();
  v23 = v4 && v22 == v1;
  if (v23 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    v19 = *&__dst[376];
    if (!*&__dst[376])
    {
      goto LABEL_8;
    }

    v20 = *&__dst[368];
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_38();
  v25 = v2 == 0xD000000000000010 && v24 == v1;
  if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = *&__dst[392];
    if (!*&__dst[392])
    {
      goto LABEL_8;
    }

    v20 = *&__dst[384];
    goto LABEL_40;
  }

  v27 = v2 == OUTLINED_FUNCTION_89_14() && v1 == v26;
  if (v27 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v19 = *&__dst[408];
    if (!*&__dst[408])
    {
      goto LABEL_8;
    }

    v20 = *&__dst[400];
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_8_17();
  v29 = v4 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    v30 = __dst[416];
    goto LABEL_75;
  }

  v31 = v2 == 1699574633 && v1 == 0xE400000000000000;
  if (v31 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    v30 = __dst[417];
LABEL_75:
    if (v30 != 2)
    {
      LOBYTE(__src[0]) = v30 & 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_19349AB64();
  v32 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v32, v33);
  *(v34 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person;
  v35 = swift_allocObject();
  v36 = OUTLINED_FUNCTION_28_3(v35);
  memcpy(v36, __dst, 0x1A2uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C3E24(__dst, __src);
}

void sub_1936C3E98()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_161_5();
  v3 = OUTLINED_FUNCTION_26_28();
  v6 = *v0;
  v5 = v0[1];
  if (v2 != v3 || v4 != 0xE500000000000000)
  {
    v8 = v4;
    v9 = v0[2];
    v19[0] = *(v0 + 24);
    v10 = *(v0 + 25);
    v11 = v0[4];
    v12 = v0[5];
    v18 = v11;
    if ((OUTLINED_FUNCTION_15_16() & 1) == 0)
    {
      OUTLINED_FUNCTION_171_3();
      v14 = v2 == v13 && v8 == 0xE400000000000000;
      if (v14 || (OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_15_16() & 1) != 0))
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = v2 == 0x6C6562616CLL && v8 == 0xE500000000000000;
        if (!v15 && (OUTLINED_FUNCTION_15_16() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_265_0();
          *v16 = v2;
          v16[1] = v8;
          v16[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.Handle;
          OUTLINED_FUNCTION_133();
          v17 = swift_allocObject();
          *(v1 + 16) = v17;
          *(v17 + 16) = v6;
          *(v17 + 24) = v5;
          *(v17 + 32) = v9;
          *(v17 + 40) = v19[0];
          *(v17 + 41) = v10;
          *(v17 + 48) = v18;
          *(v17 + 56) = v12;
          OUTLINED_FUNCTION_179_4();

          goto LABEL_15;
        }

        if (v12)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C4038()
{
  OUTLINED_FUNCTION_24_20();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x66657250656D616ELL && v0 == 0xEA00000000007869;
  if (v10 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    v11 = __dst[1];
    if (__dst[1])
    {
      v12 = __dst[0];
LABEL_8:
      v36 = v11;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
      sub_1934948FC();
      return;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_117_3();
  v3 = OUTLINED_FUNCTION_268_0();
  v14 = v10 && v0 == v13;
  if (v14 || (v3 = OUTLINED_FUNCTION_33_24(), (v3 & 1) != 0))
  {
    v11 = __dst[3];
    if (__dst[3])
    {
      v12 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_267_0();
  v15 = v10 && v0 == 0xEA0000000000656DLL;
  if (v15 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    v11 = __dst[5];
    if (__dst[5])
    {
      v12 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_266_0();
  v16 = v10 && v0 == 0xEA0000000000656DLL;
  if (v16 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    v11 = __dst[7];
    if (__dst[7])
    {
      v12 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_271_0();
  v17 = v10 && v0 == 0xEA00000000007869;
  if (v17 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    v11 = __dst[9];
    if (__dst[9])
    {
      v12 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  v3 = OUTLINED_FUNCTION_263_0();
  v18 = v10 && v0 == 0xE800000000000000;
  if (v18 || (v3 = OUTLINED_FUNCTION_0_66(), (v3 & 1) != 0))
  {
    v11 = __dst[11];
    if (__dst[11])
    {
      v12 = __dst[10];
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_34_21();
  v20 = v10 && v19 == v0;
  if (v20 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    if (__dst[13] == 1)
    {
LABEL_50:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v36 = __dst[13];
    v21 = memcpy(v37, (v2 + 112), sizeof(v37));
    OUTLINED_FUNCTION_52_2(v21, &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation, &off_1F07E1188, v22, v23, v24, v25, v26, __dst[12]);
    sub_193494798(v27, v28, v29);
  }

  else
  {
    sub_19349AB64();
    v30 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v30, v31);
    *(v32 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
    OUTLINED_FUNCTION_287_0();
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_28_3(v33);
    memcpy(v34, __dst, 0xC0uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C4288(__dst, &v35);
  }
}

void sub_1936C42FC()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x66657250656D616ELL && v0 == 0xEA00000000007869;
  if (v10 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v11 = __dst[0];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v11);
      sub_1934948FC();
      return;
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_117_3();
  v3 = OUTLINED_FUNCTION_268_0();
  v13 = v10 && v0 == v12;
  if (v13 || (v3 = OUTLINED_FUNCTION_33_24(), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v11 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_267_0();
  v14 = v10 && v0 == 0xEA0000000000656DLL;
  if (v14 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v11 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_266_0();
  v15 = v10 && v0 == 0xEA0000000000656DLL;
  if (v15 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    if (__dst[7])
    {
      v11 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_271_0();
  v16 = v10 && v0 == 0xEA00000000007869;
  if (v16 || (v3 = OUTLINED_FUNCTION_23_37(), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v11 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v3 = OUTLINED_FUNCTION_263_0();
  v17 = v10 && v0 == 0xE800000000000000;
  if (v17 || (v3 = OUTLINED_FUNCTION_0_66(), (v3 & 1) != 0))
  {
    if (__dst[11])
    {
      v11 = __dst[10];
      goto LABEL_8;
    }

LABEL_44:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v18, v19);
  *(v20 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation;
  OUTLINED_FUNCTION_209_0();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_28_3(v21);
  memcpy(v22, __dst, 0x60uLL);
  OUTLINED_FUNCTION_26_0();

  v31 = OUTLINED_FUNCTION_109(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, __dst[0]);
  sub_1936C44D4(v31, v32);
}

void sub_1936C4548()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 1701603686 && v0 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v3 & v4))
    {
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_52_2(v5, MEMORY[0x1E6969080], v6, v7, v8, v9, v10, v11, v47);
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_34_21();
  v13 = v3 && v12 == v0;
  if (v13 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    if (!__dst[7])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_205_1();
    OUTLINED_FUNCTION_52_2(v14, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v15, v16, v17, v18, v19, v47);
    sub_193494798(v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_229();
    v30 = v3 && v0 == 0xE300000000000000;
    if (v30 || (v23 = OUTLINED_FUNCTION_37_26(), (v23 & 1) != 0))
    {
      if (__dst[13])
      {
        OUTLINED_FUNCTION_52_2(v23, MEMORY[0x1E69E6158], v24, v25, v26, v27, v28, v29, __dst[12]);
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    sub_19349AB64();
    v31 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v31, v32);
    *(v33 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.File;
    OUTLINED_FUNCTION_136_6();
    v34 = swift_allocObject();
    v35 = OUTLINED_FUNCTION_61_19(v34);
    memcpy(v35, v36, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v45 = OUTLINED_FUNCTION_188_3(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, __dst[0]);
    sub_1936C46CC(v45, v46);
  }
}

void sub_1936C4740()
{
  OUTLINED_FUNCTION_118_10();
  OUTLINED_FUNCTION_276_1(v3, v4, v5, v6, v7, v8, v9, v10, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86);
  OUTLINED_FUNCTION_38();
  v19 = v2 == 0xD000000000000010 && v12 == v0;
  if (v19 || (OUTLINED_FUNCTION_27_0(), v11 = OUTLINED_FUNCTION_85_5(), (v11 & 1) != 0))
  {
    if (v89)
    {
      OUTLINED_FUNCTION_102_14(v11, MEMORY[0x1E69E6158], v13, v14, v15, v16, v17, v18, v87);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_38();
  v21 = v2 == 0xD000000000000015 && v20 == v0;
  if (v21 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    if (v90)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v22, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v23, v24, v25, v26, v27, v51);
      sub_193494798(v28, v29, v30);
      return;
    }

    goto LABEL_15;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v31 = v2;
  v31[1] = v0;
  v31[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.App;
  OUTLINED_FUNCTION_209_0();
  v32 = swift_allocObject();
  *(v1 + 16) = v32;
  OUTLINED_FUNCTION_182_5(v32, v33, v34, v35, v36, v37, v38, v39, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v48 = OUTLINED_FUNCTION_109(v40, v41, v42, v43, v44, v45, v46, v47, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88);
  sub_1936C4880(v48, v49);
}

void sub_1936C48F4()
{
  OUTLINED_FUNCTION_118_10();
  OUTLINED_FUNCTION_7_42();
  v13 = OUTLINED_FUNCTION_276_1(v5, v6, v7, v8, v9, v10, v11, v12, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88);
  v20 = v2 == v3 && v0 == v4;
  if (v20 || (OUTLINED_FUNCTION_154(), v13 = OUTLINED_FUNCTION_85_5(), (v13 & 1) != 0))
  {
    if (v91)
    {
      OUTLINED_FUNCTION_102_14(v13, MEMORY[0x1E69E6158], v14, v15, v16, v17, v18, v19, v89);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v23 = v2 == v22 && v21 == v0;
  if (v23 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    if (v92)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v24, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v25, v26, v27, v28, v29, v53);
      sub_193494798(v30, v31, v32);
      return;
    }

    goto LABEL_15;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v33 = v2;
  v33[1] = v0;
  v33[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Shortcut;
  OUTLINED_FUNCTION_209_0();
  v34 = swift_allocObject();
  *(v1 + 16) = v34;
  OUTLINED_FUNCTION_182_5(v34, v35, v36, v37, v38, v39, v40, v41, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v50 = OUTLINED_FUNCTION_109(v42, v43, v44, v45, v46, v47, v48, v49, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90);
  sub_1936C4AE4(v50, v51);
}

uint64_t objectdestroy_20Tm()
{
  v1 = v0[3];

  if (v0[9])
  {
    v2 = v0[5];

    v3 = v0[6];
    OUTLINED_FUNCTION_130_9();
    if (!v4)
    {
    }

    OUTLINED_FUNCTION_289_0();
    if (!v4)
    {
    }

    OUTLINED_FUNCTION_57_12();
    if (!v4)
    {
    }

    v5 = v0[9];

    OUTLINED_FUNCTION_298_0();
    if (!v4)
    {
      v6 = v0[11];
      OUTLINED_FUNCTION_29_7();
      if (!(!v4 & v8))
      {
        sub_193446A6C(v0[10], v7);
        v9 = v0[13];
      }
    }
  }

  OUTLINED_FUNCTION_209_0();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

void sub_1936C4B58()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_306();
  memcpy(__dst, v2, 0x139uLL);
  v4 = v1 == v3 && v0 == 0xE800000000000000;
  if (!v4 && (OUTLINED_FUNCTION_0_66() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v21 = 0xD000000000000012;
    v22 = v1 == 0xD000000000000012 && v14 == v0;
    if (v22 || (v21 = OUTLINED_FUNCTION_5_5(), (v21 & 1) != 0))
    {
      if (!__dst[11])
      {
        goto LABEL_7;
      }

      v48[0] = __dst[10];
      v48[1] = __dst[11];
      v23 = MEMORY[0x1E69E6158];
    }

    else
    {
      v24 = v1 == 6386277 && v0 == 0xE300000000000000;
      if (v24 || (v21 = OUTLINED_FUNCTION_37_26(), (v21 & 1) != 0))
      {
        if (__dst[13])
        {
          goto LABEL_7;
        }

        v25 = __dst[12];
      }

      else
      {
        v26 = v1 == 1918985593 && v0 == 0xE400000000000000;
        if (v26 || (v21 = OUTLINED_FUNCTION_27_28(), (v21 & 1) != 0))
        {
          if (__dst[15])
          {
            goto LABEL_7;
          }

          v25 = __dst[14];
        }

        else
        {
          v21 = 0x68746E6F6DLL;
          v27 = v1 == 0x68746E6F6DLL && v0 == 0xE500000000000000;
          if (v27 || (v21 = OUTLINED_FUNCTION_1_31(), (v21 & 1) != 0))
          {
            if (__dst[17])
            {
              goto LABEL_7;
            }

            v25 = __dst[16];
          }

          else
          {
            v28 = v1 == 7954788 && v0 == 0xE300000000000000;
            if (v28 || (v21 = OUTLINED_FUNCTION_37_26(), (v21 & 1) != 0))
            {
              if (__dst[19])
              {
                goto LABEL_7;
              }

              v25 = __dst[18];
            }

            else
            {
              v29 = v1 == 1920298856 && v0 == 0xE400000000000000;
              if (v29 || (v21 = OUTLINED_FUNCTION_27_28(), (v21 & 1) != 0))
              {
                if (__dst[21])
                {
                  goto LABEL_7;
                }

                v25 = __dst[20];
              }

              else
              {
                v21 = 0x6574756E696DLL;
                v30 = v1 == 0x6574756E696DLL && v0 == 0xE600000000000000;
                if (v30 || (v21 = OUTLINED_FUNCTION_24_37(), (v21 & 1) != 0))
                {
                  if (__dst[23])
                  {
                    goto LABEL_7;
                  }

                  v25 = __dst[22];
                }

                else
                {
                  v21 = OUTLINED_FUNCTION_120_6();
                  v31 = v1 == v21 && v0 == 0xE600000000000000;
                  if (v31 || (v21 = OUTLINED_FUNCTION_24_37(), (v21 & 1) != 0))
                  {
                    if (__dst[25])
                    {
                      goto LABEL_7;
                    }

                    v25 = __dst[24];
                  }

                  else
                  {
                    v21 = 0x6F6365736F6E616ELL;
                    v32 = v1 == 0x6F6365736F6E616ELL && v0 == 0xEA0000000000646ELL;
                    if (v32 || (v21 = OUTLINED_FUNCTION_23_37(), (v21 & 1) != 0))
                    {
                      if (__dst[27])
                      {
                        goto LABEL_7;
                      }

                      v25 = __dst[26];
                    }

                    else
                    {
                      v33 = OUTLINED_FUNCTION_210_0();
                      v21 = OUTLINED_FUNCTION_227_1(v33);
                      v34 = v4 && v0 == 0xE700000000000000;
                      if (v34 || (v21 = OUTLINED_FUNCTION_34_31(), (v21 & 1) != 0))
                      {
                        if (__dst[29])
                        {
                          goto LABEL_7;
                        }

                        v25 = __dst[28];
                      }

                      else
                      {
                        v21 = OUTLINED_FUNCTION_210_0() | 0x4F79616400000000;
                        v36 = v1 == v21 && v0 == v35;
                        if (v36 || (v21 = OUTLINED_FUNCTION_5_5(), (v21 & 1) != 0))
                        {
                          if (__dst[31])
                          {
                            goto LABEL_7;
                          }

                          v25 = __dst[30];
                        }

                        else
                        {
                          v21 = 0x72657472617571;
                          v37 = v1 == 0x72657472617571 && v0 == 0xE700000000000000;
                          if (v37 || (v21 = OUTLINED_FUNCTION_34_31(), (v21 & 1) != 0))
                          {
                            if (__dst[33])
                            {
                              goto LABEL_7;
                            }

                            v25 = __dst[32];
                          }

                          else
                          {
                            v21 = OUTLINED_FUNCTION_210_0() | 0x6F4D664F00000000;
                            v39 = v1 == v21 && v0 == v38;
                            if (v39 || (v21 = OUTLINED_FUNCTION_5_5(), (v21 & 1) != 0))
                            {
                              if (__dst[35])
                              {
                                goto LABEL_7;
                              }

                              v25 = __dst[34];
                            }

                            else
                            {
                              v21 = OUTLINED_FUNCTION_210_0() | 0x6559664F00000000;
                              v40 = v1 == v21 && v0 == 0xEA00000000007261;
                              if (v40 || (v21 = OUTLINED_FUNCTION_5_5(), (v21 & 1) != 0))
                              {
                                if (__dst[37])
                                {
                                  goto LABEL_7;
                                }

                                v25 = __dst[36];
                              }

                              else
                              {
                                OUTLINED_FUNCTION_39_25();
                                if (!v4 || v41 != v0)
                                {
                                  v21 = OUTLINED_FUNCTION_14_48();
                                  if ((v21 & 1) == 0)
                                  {
                                    sub_19349AB64();
                                    v43 = OUTLINED_FUNCTION_13_9();
                                    OUTLINED_FUNCTION_9_3(v43, v44);
                                    *(v45 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents;
                                    v46 = swift_allocObject();
                                    v47 = OUTLINED_FUNCTION_28_3(v46);
                                    memcpy(v47, __dst, 0x139uLL);
                                    OUTLINED_FUNCTION_26_0();

                                    sub_1936C4FB4(__dst, v48);
                                    return;
                                  }
                                }

                                if (__dst[39])
                                {
                                  goto LABEL_7;
                                }

                                v25 = __dst[38];
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

      v48[0] = v25;
      v23 = MEMORY[0x1E69E7360];
    }

    OUTLINED_FUNCTION_52_2(v21, v23, v15, v16, v17, v18, v19, v20, v48[0]);
    sub_1934948FC();
    return;
  }

  if (__dst[3] == 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_172_5();
  OUTLINED_FUNCTION_52_2(v5, &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar, &off_1F07E11D8, v6, v7, v8, v9, v10, v48[0]);
  sub_193494798(v11, v12, v13);
}

void sub_1936C5028()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, 0x49uLL);
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v13 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v15 = v1 == 0xD000000000000012 && v14 == v0;
  if (v15 || (v6 = OUTLINED_FUNCTION_5_5(), (v6 & 1) != 0))
  {
    if (!__dst[3])
    {
      goto LABEL_7;
    }

    v16 = __dst[2];
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_39_25();
  v18 = v5 && v17 == v0;
  if (v18 || (v6 = OUTLINED_FUNCTION_18_3(), (v6 & 1) != 0))
  {
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v16 = __dst[4];
LABEL_16:
    v39 = v16;
    v13 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v6, v13, v7, v8, v9, v10, v11, v12, v39);
LABEL_18:
    sub_1934948FC();
    return;
  }

  v19 = 0x6565577473726966;
  v20 = v1 == 0x6565577473726966 && v0 == 0xEC0000007961646BLL;
  if (v20 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    if (__dst[7])
    {
      goto LABEL_7;
    }

    v21 = __dst[6];
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_38();
  v19 = 0xD000000000000016;
  v23 = v1 == 0xD000000000000016 && v22 == v0;
  if (v23 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    if (__dst[9])
    {
      goto LABEL_7;
    }

    v21 = __dst[8];
LABEL_33:
    OUTLINED_FUNCTION_52_2(v19, MEMORY[0x1E69E7360], v7, v8, v9, v10, v11, v12, v21);
    goto LABEL_18;
  }

  sub_19349AB64();
  v24 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v24, v25);
  *(v26 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar;
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_28_3(v27);
  memcpy(v28, __dst, 0x49uLL);
  OUTLINED_FUNCTION_26_0();

  v37 = OUTLINED_FUNCTION_270_0(v29, v30, v31, v32, v33, v34, v35, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, __dst[0]);
  sub_1936C521C(v37, v38);
}

void sub_1936C5290()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_306();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v1 == v3 && v0 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    if (__dst[3] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_172_5();
    v11 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents.Calendar;
    v12 = &off_1F07E11D8;
    goto LABEL_9;
  }

  v16 = v1 == 0x636E657571657266 && v0 == 0xE900000000000079;
  if (v16 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    if ((__dst[11] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency;
    goto LABEL_17;
  }

  v5 = OUTLINED_FUNCTION_206_0(0x767265746E69);
  v19 = v4 && v0 == 0xE800000000000000;
  if (v19 || (v5 = OUTLINED_FUNCTION_0_66(), (v5 & 1) != 0))
  {
    if (__dst[13])
    {
      goto LABEL_7;
    }

    v43 = __dst[12];
    v18 = MEMORY[0x1E69E7360];
    goto LABEL_17;
  }

  v20 = v1 == 6581861 && v0 == 0xE300000000000000;
  if (v20 || (v5 = OUTLINED_FUNCTION_37_26(), (v5 & 1) != 0))
  {
    v21 = LODWORD(__dst[17]) | (WORD2(__dst[17]) << 32);
    if ((v21 & 0xFF0000000000) == 0x30000000000)
    {
      goto LABEL_7;
    }

    v43 = __dst[14];
    v44 = __dst[15] & 1;
    v45 = __dst[16];
    v46 = __dst[17];
    v47 = BYTE4(v21) & 1;
    v48 = BYTE5(v21);
    v11 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd;
    v12 = &off_1F07E11F8;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v5, v11, v12, v6, v7, v8, v9, v10, v43);
    sub_193494798(v13, v14, v15);
    return;
  }

  v22 = v1 == 0x676E69686374616DLL && v0 == 0xEE007963696C6F50;
  if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[19] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_34_21();
  v24 = v4 && v23 == v0;
  if (v24 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    if ((__dst[21] & 0x100) != 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v18 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy;
    goto LABEL_17;
  }

  v25 = v1 == 0x7368746E6F6DLL && v0 == 0xE600000000000000;
  if (v25 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    v43 = __dst[22];
    v26 = &unk_1EAE40830;
    v27 = &unk_19397DF38;
LABEL_59:
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    v18 = v5;
LABEL_17:
    OUTLINED_FUNCTION_52_2(v5, v18, v17, v6, v7, v8, v9, v10, v43);
    sub_1934948FC();
    return;
  }

  v28 = v1 == 0x6854664F73796164 && v0 == 0xED00007261655965;
  if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v29 = __dst[23];
LABEL_58:
    v43 = v29;
    v26 = &unk_1EAE40820;
    v27 = &unk_19397DF28;
    goto LABEL_59;
  }

  v30 = v1 == 0x6854664F73796164 && v0 == 0xEE0068746E6F4D65;
  if (v30 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v29 = __dst[24];
    goto LABEL_58;
  }

  v31 = OUTLINED_FUNCTION_210_0();
  OUTLINED_FUNCTION_196_2(v31);
  v32 = v4 && v0 == 0xE500000000000000;
  if (v32 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    v29 = __dst[25];
    goto LABEL_58;
  }

  v33 = v1 == (OUTLINED_FUNCTION_210_0() | 0x7379616400000000) && v0 == 0xE800000000000000;
  if (v33 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v43 = __dst[26];
    v26 = &unk_1EAE40828;
    v27 = &unk_19397DF30;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_196_2(1920298856);
  v34 = v4 && v0 == 0xE500000000000000;
  if (v34 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    v29 = __dst[27];
    goto LABEL_58;
  }

  v35 = v1 == 0x736574756E696DLL && v0 == 0xE700000000000000;
  if (v35 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    v29 = __dst[28];
    goto LABEL_58;
  }

  v36 = v1 == (OUTLINED_FUNCTION_120_6() & 0xFFFFFFFFFFFFLL | 0x73000000000000) && v0 == 0xE700000000000000;
  if (v36 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    v29 = __dst[29];
    goto LABEL_58;
  }

  v37 = v1 == 0x7469736F50746573 && v0 == 0xEC000000736E6F69;
  if (v37 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v29 = __dst[30];
    goto LABEL_58;
  }

  sub_19349AB64();
  v38 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v38, v39);
  *(v40 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule;
  v41 = swift_allocObject();
  v42 = OUTLINED_FUNCTION_28_3(v41);
  memcpy(v42, __dst, 0xF8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C5738(__dst, &v43);
}

void sub_1936C5960()
{
  OUTLINED_FUNCTION_241_1();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  OUTLINED_FUNCTION_38();
  if (v8 != 0xD00000000000001CLL || v9 != v2)
  {
    v11 = v8;
    v20 = *(v0 + 10);
    v19 = v0[2];
    v12 = *(v0 + 24);
    if ((OUTLINED_FUNCTION_91_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v14 = v11 == 0xD00000000000001ALL && v13 == v2;
      if (v14 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
      {
        if (v20 == 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v11 != 0xD000000000000018 || v15 != v2)
        {
          OUTLINED_FUNCTION_20_5(24);
          if ((OUTLINED_FUNCTION_124_3() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_106_0();
            *v17 = v11;
            v17[1] = v2;
            v17[5] = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday;
            OUTLINED_FUNCTION_95();
            v18 = swift_allocObject();
            *(v4 + 16) = v18;
            *(v18 + 16) = v5;
            *(v18 + 24) = v6;
            *(v18 + 25) = v7;
            *(v18 + 26) = v20;
            *(v18 + 32) = v19;
            *(v18 + 40) = v12;
            OUTLINED_FUNCTION_48_4();
            swift_willThrow();

            goto LABEL_9;
          }
        }

        if (v12)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_71_17();
}

void sub_1936C5B2C()
{
  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_119_9();
  v5 = v5 && v4 == 0xE500000000000000;
  if (!v5)
  {
    v6 = v4;
    v7 = *(v0 + 9);
    if ((OUTLINED_FUNCTION_91_2() & 1) == 0)
    {
      v8 = v1 == 0x7061654C7369 && v6 == 0xE600000000000000;
      if (!v8 && (OUTLINED_FUNCTION_91_2() & 1) == 0)
      {
        sub_19349AB64();
        v9 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_219_0(v9, v10);
        *(v11 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth;
        *(v11 + 16) = v2;
        *(v11 + 24) = v3;
        *(v11 + 25) = v7;
        OUTLINED_FUNCTION_23_2(v12, v11);

        goto LABEL_9;
      }

      if (v7 == 2)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_180_5();
}

void sub_1936C5C58()
{
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 12);
  v7 = v2 == 0x7472617473 && v3 == 0xE500000000000000;
  if (v7 || (v8 = v3, v19 = v0[2], v20 = *(v0 + 6), v9 = *(v0 + 28), OUTLINED_FUNCTION_319(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  v10 = v2 == 6581861 && v8 == 0xE300000000000000;
  if (v10 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_193494798(&type metadata for ToolKitToolTimestamp, &off_1F07E0F68, v1);
    return;
  }

  v11 = v2 == OUTLINED_FUNCTION_142_7() && v8 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v18)
    {
      goto LABEL_7;
    }

    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_73_1(v12, v13);
    *(v14 + 40) = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateInterval;
    OUTLINED_FUNCTION_133();
    v15 = swift_allocObject();
    v1[2] = v15;
    *(v15 + 16) = v4;
    *(v15 + 24) = v5;
    v16 = OUTLINED_FUNCTION_250_0(v15);
    *(v16 + 32) = v19;
    *(v16 + 40) = v20;
    *(v16 + 44) = v9;
    *(v16 + 47) = *(v0 + 31);
    *(v16 + 45) = *(v0 + 29);
    *(v16 + 48) = v17;
    *(v16 + 56) = v18;
    OUTLINED_FUNCTION_163_6();
  }
}

void sub_1936C5F90()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_275_1(v3, v4, v5, v6, v7, v8, v9, v10, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], __src[0]);
  v11 = v1 == v2 && v0 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v11)
    {
      v39[0] = v18;
      v19 = &type metadata for ToolKitToolTypeIdentifier;
      v20 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v12, v19, v20, v13, v14, v15, v16, v17, v39[0]);
      sub_193494798(v21, v22, v23);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_117_3();
  v25 = v1 == 0x756C615665736163 && v0 == v24;
  if (v25 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (!__src[2])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_52_2(v26, MEMORY[0x1E69E6158], v27, v28, v29, v30, v31, v32, v39[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_168();
    v35 = v1 == v34 && v33 == v0;
    if (v35 || (OUTLINED_FUNCTION_53_21() & 1) != 0)
    {
      if (__src[8])
      {
        OUTLINED_FUNCTION_168_4();
        v19 = &type metadata for ToolKitToolDisplayRepresentation;
        v20 = &off_1F07E18C8;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v36 = v1;
    v36[1] = v0;
    v36[5] = &type metadata for ToolKitToolTypedValue.EnumerationValue;
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_28_3(v37);
    memcpy(v38, __src, 0x68uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C6124(__src, v39);
  }
}

void sub_1936C6198()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 1701869940 && v0 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v3)
    {
      *&v42[0] = v16;
      v17 = &type metadata for ToolKitToolTypeIdentifier;
      v18 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v10, v17, v18, v11, v12, v13, v14, v15, *&v42[0]);
      sub_193494798(v19, v20, v21);
      return;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v22 = 0x696669746E656469;
  v23 = v1 == 0x696669746E656469 && v0 == 0xEA00000000007265;
  if (v23 || (v22 = OUTLINED_FUNCTION_23_37(), (v22 & 1) != 0))
  {
    if (!__dst[2])
    {
      goto LABEL_8;
    }

    v42[0] = *&__dst[1];
    v24 = MEMORY[0x1E69E6158];
    goto LABEL_17;
  }

  v25 = v1 == (OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v0 == 0xEA00000000007365;
  if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    *&v42[0] = __dst[3];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40838, &qword_19397DF40);
    v17 = v10;
    v18 = &off_1F07BD310;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD000000000000015 && v26 == v0;
  if (v27 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    if (__dst[9])
    {
      v28 = *(v2 + 48);
      v42[0] = *(v2 + 32);
      v42[1] = v28;
      v43 = *(v2 + 64);
      v44 = __dst[9];
      v29 = *(v2 + 96);
      v45 = *(v2 + 80);
      v46 = v29;
      v17 = &type metadata for ToolKitToolDisplayRepresentation;
      v18 = &off_1F07E18C8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_8_17();
  v31 = v3 && v30 == v0;
  if (v31 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!v3 & v33)
    {
      goto LABEL_8;
    }

    v34 = __dst[14];
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_158_2();
  v36 = v1 == 0x4574694B69726973 && v0 == v35;
  if (v36 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_187_3();
    if (!v3 & v33)
    {
      goto LABEL_8;
    }

    v34 = __dst[16];
LABEL_38:
    *&v42[0] = v34;
    *(&v42[0] + 1) = v32;
    v24 = MEMORY[0x1E6969080];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v22, v24, v4, v5, v6, v7, v8, v9, *&v42[0]);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v37 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v37, v38);
  *(v39 + 40) = &type metadata for ToolKitToolTypedValue.EntityValue;
  v40 = swift_allocObject();
  v41 = OUTLINED_FUNCTION_28_3(v40);
  memcpy(v41, __dst, 0x90uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C6424(__dst, v42);
}

void sub_1936C65B8()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v1, sizeof(__dst));
  v5 = v2 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    if (__dst[1])
    {
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_52_2(v6, MEMORY[0x1E69E6158], v7, v8, v9, v10, v11, v12, v49);
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_296_0();
  v14 = v2 == v13 && v0 == 0xE400000000000000;
  if (v14 || (OUTLINED_FUNCTION_148_6(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    OUTLINED_FUNCTION_187_3();
    if (!(!v5 & v22))
    {
      OUTLINED_FUNCTION_52_2(v15, MEMORY[0x1E6969080], v16, v17, v18, v19, v20, v21, __dst[2]);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v25 = v2 == v24 && v23 == v0;
  if (v25 || (OUTLINED_FUNCTION_53_21() & 1) != 0)
  {
    if (!__dst[9])
    {
LABEL_16:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_202_1();
    OUTLINED_FUNCTION_52_2(v26, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v27, v28, v29, v30, v31, v49);
    sub_193494798(v32, v33, v34);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v35 = v2;
    v35[1] = v0;
    v35[5] = &type metadata for ToolKitToolTypedValue.CodableValue;
    OUTLINED_FUNCTION_136_6();
    v36 = swift_allocObject();
    v37 = OUTLINED_FUNCTION_61_19(v36);
    memcpy(v37, v38, 0x70uLL);
    OUTLINED_FUNCTION_26_0();

    v47 = OUTLINED_FUNCTION_188_3(v39, v40, v41, v42, v43, v44, v45, v46, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __dst[0]);
    sub_1936C673C(v47, v48);
  }
}

void sub_1936C67B0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  v7 = v3 == v6 && v4 == 0xE400000000000000;
  if (v7 || (v8 = v4, v9 = v3, v11 = v1[1], v10 = v1[2], OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_124_3() & 1) != 0))
  {
    OUTLINED_FUNCTION_251_0();
    if (!v7)
    {
      v12 = &type metadata for ToolKitToolTypeIdentifier;
      v13 = &off_1F07E0F88;
LABEL_9:
      sub_193494798(v12, v13, a1);
      return;
    }

    goto LABEL_8;
  }

  v14 = v9 == (OUTLINED_FUNCTION_98_13() & 0xFFFF0000FFFFFFFFLL | 0x736500000000) && v8 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40840, &qword_19397DF48);
    OUTLINED_FUNCTION_59_11(v15, v16, v17, v18, v19, v20, v21, v22, v27, v11);
    sub_1934948FC();
  }

  else
  {
    v24 = v9 == OUTLINED_FUNCTION_62_18() && v8 == v23;
    if (v24 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
    {
      if ((~v10 & 0xF000000000000007) != 0)
      {
        v12 = &type metadata for ToolKitToolTypeInstance;
        v13 = &off_1F07E12F8;
        goto LABEL_9;
      }

LABEL_8:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    sub_19349AB64();
    v25 = OUTLINED_FUNCTION_13_9();
    *v26 = v9;
    v26[1] = v8;
    v26[2] = v5;
    v26[3] = v11;
    v26[4] = v10;
    v26[5] = &type metadata for ToolKitToolTypedValue.CollectionValue;
    OUTLINED_FUNCTION_23_2(v25, v26);

    sub_193437C90(v5);

    sub_193437C90(v10);
  }
}

void sub_1936C6954(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  if (v3 == v6 && v4 == 0xE400000000000000)
  {
    goto LABEL_6;
  }

  v8 = v4;
  v9 = v3;
  v11 = *(v1 + 8);
  v10 = *(v1 + 16);
  v12 = *(v1 + 24);
  v21 = *(v1 + 32);
  v13 = *(v1 + 40);
  OUTLINED_FUNCTION_15_10();
  if (OUTLINED_FUNCTION_324())
  {
LABEL_6:
    if ((~v5 & 0xF000000000000007) == 0)
    {
LABEL_7:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    v14 = &type metadata for ToolKitToolTypeIdentifier;
    v15 = &off_1F07E0F88;
    goto LABEL_9;
  }

  v16 = v9 == OUTLINED_FUNCTION_139_9() && v8 == 0xE500000000000000;
  if (v16 || (OUTLINED_FUNCTION_324() & 1) != 0)
  {
    if ((v11 & 0xF000000000000007) == 0xE000000000000007)
    {
      goto LABEL_7;
    }

    v14 = &type metadata for ToolKitToolQuery;
    v15 = &off_1F07E1558;
LABEL_9:
    sub_193494798(v14, v15, a1);
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v20 = v13;
  v18 = v17;
  *v17 = v9;
  v17[1] = v8;
  v17[5] = &type metadata for ToolKitToolTypedValue.QueryValue;
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 16) = v5;
  *(v19 + 24) = v11;
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  *(v19 + 48) = v21;
  *(v19 + 56) = v20;
  OUTLINED_FUNCTION_26_0();

  sub_193437C90(v5);
  sub_1936C6B18(v11);
}

uint64_t sub_1936C6B18(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xE000000000000007)
  {
    return sub_19344BF2C(result);
  }

  return result;
}

void sub_1936C6B48()
{
  OUTLINED_FUNCTION_15_48();
  OUTLINED_FUNCTION_275_1(v3, v4, v5, v6, v7, v8, v9, v10, v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], __src[0]);
  v11 = v1 == v2 && v0 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v11)
    {
      v39[0] = v18;
      v19 = &type metadata for ToolKitToolTypeIdentifier;
      v20 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v12, v19, v20, v13, v14, v15, v16, v17, v39[0]);
      sub_193494798(v21, v22, v23);
      return;
    }

    goto LABEL_8;
  }

  v25 = v1 == OUTLINED_FUNCTION_3_67() && v0 == v24;
  if (v25 || (OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_12_17() & 1) != 0))
  {
    if (!__src[2])
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_52_2(v26, MEMORY[0x1E69E6158], v27, v28, v29, v30, v31, v32, v39[0]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_168();
    v35 = v1 == v34 && v33 == v0;
    if (v35 || (OUTLINED_FUNCTION_53_21() & 1) != 0)
    {
      if (__src[8])
      {
        OUTLINED_FUNCTION_168_4();
        v19 = &type metadata for ToolKitToolDisplayRepresentation;
        v20 = &off_1F07E18C8;
        goto LABEL_9;
      }

LABEL_8:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v36 = v1;
    v36[1] = v0;
    v36[5] = &type metadata for ToolKitToolTypedValue.EntityIdentifierValue;
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_28_3(v37);
    memcpy(v38, __src, 0x68uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C6D94(__src, v39);
  }
}

uint64_t objectdestroy_94Tm()
{
  OUTLINED_FUNCTION_60_18();
  if (!v2)
  {
  }

  v3 = v1[4];

  if (v1[10])
  {
    v4 = v1[6];

    v5 = v1[7];
    OUTLINED_FUNCTION_130_9();
    if (!v2)
    {
    }

    if ((v0 & ~v1[8]) != 0)
    {
    }

    v6 = v1[9];
    OUTLINED_FUNCTION_66_21();
    if (!v2)
    {
    }

    v7 = v1[10];

    if (v1[14] != 1)
    {
      v8 = v1[12];
      OUTLINED_FUNCTION_29_7();
      if (!(!v2 & v10))
      {
        sub_193446A6C(v1[11], v9);
        v11 = v1[14];
      }
    }
  }

  return MEMORY[0x1EEE6BDD0](v1, 120, 7);
}

void sub_1936C6E08(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_171_3();
  v5 = *v1;
  v7 = v3 == v6 && v4 == 0xE400000000000000;
  if (v7 || (v8 = v4, v9 = v3, v11 = v1[1], v10 = v1[2], OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_42_9() & 1) != 0))
  {
    OUTLINED_FUNCTION_251_0();
    if (!v7)
    {
      v12 = &type metadata for ToolKitToolTypeIdentifier;
      v13 = &off_1F07E0F88;
LABEL_9:
      sub_193494798(v12, v13, a1);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_168();
  v16 = v9 == v15 && v14 == v8;
  if (v16 || (OUTLINED_FUNCTION_42_9() & 1) != 0)
  {
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v12 = &type metadata for ToolKitToolTypeInstance;
      v13 = &off_1F07E12F8;
      goto LABEL_9;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v17 = v9 == 0x656761726F7473 && v8 == 0xE700000000000000;
  if (v17 || (OUTLINED_FUNCTION_42_9() & 1) != 0)
  {
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v12 = &type metadata for ToolKitToolTypedValue.DeferredValue.Storage;
      v13 = &off_1F07E12C8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  *v19 = v9;
  v19[1] = v8;
  v19[2] = v5;
  v19[3] = v11;
  v19[4] = v10;
  v19[5] = &type metadata for ToolKitToolTypedValue.DeferredValue;
  OUTLINED_FUNCTION_23_2(v18, v19);

  sub_193437C90(v5);
  sub_193437C90(v11);
  sub_193438D88(v10);
}

id sub_1936C6FC8()
{
  OUTLINED_FUNCTION_47_22();
  v3 = *v0;
  OUTLINED_FUNCTION_22_4();
  v11 = v11 && v5 == v2;
  if (v11 || (OUTLINED_FUNCTION_20_5(19), v4 = OUTLINED_FUNCTION_124_3(), (v4 & 1) != 0))
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v27 = *(v3 + 32);
      OUTLINED_FUNCTION_102_14(v4, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage, &off_1F07E12D8, v6, v7, v8, v9, v10, *(v3 + 16));
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_192_0();
    v23 = v1 == v16 && v2 == v17;
    if (v23 || (v16 = OUTLINED_FUNCTION_91_2(), (v16 & 1) != 0))
    {
      if (v3 < 0)
      {
        v28 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        OUTLINED_FUNCTION_102_14(v16, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage, &off_1F07E12E8, v18, v19, v20, v21, v22, *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v12, v13, v14);
      }
    }
  }

  sub_19349AB64();
  v24 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_219_0(v24, v25);
  OUTLINED_FUNCTION_19_1(v26, &type metadata for ToolKitToolTypedValue.DeferredValue.Storage);
}

void sub_1936C70E4()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_296_0();
  v5 = *v0;
  v4 = v0[1];
  if (v2 != v6 || v3 != 0xE400000000000000)
  {
    v8 = v3;
    v9 = v2;
    v11 = v0[2];
    v10 = v0[3];
    OUTLINED_FUNCTION_148_6();
    if ((OUTLINED_FUNCTION_67() & 1) == 0)
    {
      v13 = v9 == (OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x7974000000000000) && v8 == v12;
      if (!v13 && (OUTLINED_FUNCTION_67() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_126_6();
        *v14 = v9;
        v14[1] = v8;
        v14[5] = &type metadata for ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage;
        OUTLINED_FUNCTION_95();
        v15 = swift_allocObject();
        *(v1 + 16) = v15;
        v15[2] = v5;
        v15[3] = v4;
        v15[4] = v11;
        v15[5] = v10;
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        sub_193450268(v5, v4);

        goto LABEL_16;
      }

      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_26_27();
      goto LABEL_16;
    }
  }

  if (v4 >> 60 != 15)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_131_8();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C75F8()
{
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_26_28();
  OUTLINED_FUNCTION_264();
  v4 = v4 && v3 == 0xE500000000000000;
  if (v4 || (v5 = v3, v6 = *(v0 + 8), (OUTLINED_FUNCTION_117_2() & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_77_2(v7, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v8, v9, v10, v11, v12, v26, v2);
LABEL_9:
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_8;
  }

  v17 = v1 == OUTLINED_FUNCTION_192_0() && v5 == v16;
  if (v17 || (OUTLINED_FUNCTION_117_2() & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_77_2(v18, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v19, v20, v21, v22, v23, v26, v6);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_19349AB64();
  v24 = OUTLINED_FUNCTION_13_9();
  *v25 = v1;
  v25[1] = v5;
  v25[5] = &type metadata for ToolKitToolTypeInstance.Optional;
  v25[2] = v2;
  v25[3] = v6;
  OUTLINED_FUNCTION_23_2(v24, v25);

  sub_193437C90(v2);
  sub_193437C90(v6);
}

void sub_1936C7808()
{
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_264();
  v6 = v6 && v4 == v5;
  if (v6 || (v7 = v4, v8 = *(v0 + 8), OUTLINED_FUNCTION_154(), (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_193494798(&type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_258_0();
    v9 = v6 && v7 == 0xE700000000000000;
    if (v9 || (OUTLINED_FUNCTION_15_16() & 1) != 0)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40850, &qword_19397DF58);
      OUTLINED_FUNCTION_59_11(v10, v11, v12, v13, v14, v15, v16, v17, v20, v8);
      sub_1934948FC();
    }

    else
    {
      sub_19349AB64();
      v18 = OUTLINED_FUNCTION_13_9();
      *v19 = v2;
      v19[1] = v7;
      v19[5] = &type metadata for ToolKitToolTypeInstance.Restricted;
      v19[2] = v3;
      v19[3] = v8;
      OUTLINED_FUNCTION_23_2(v18, v19);

      sub_193437C90(v3);
    }
  }
}

void sub_1936C7940()
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_3_67();
  OUTLINED_FUNCTION_113_10();
  v9 = v9 && v2 == v8;
  if (v9 || (v1 = OUTLINED_FUNCTION_23_37(), (v1 & 1) != 0))
  {
    if ((~v0 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_77_2(v1, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v3, v4, v5, v6, v7, v16, v0);
      sub_193494798(v10, v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_64(v13, v14);
    OUTLINED_FUNCTION_19_1(v15, &type metadata for ToolKitToolTypeInstance.Deferred);

    sub_193437C90(v0);
  }
}

void sub_1936C7A18()
{
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_264();
  v5 = v5 && v4 == 0xE800000000000000;
  if (v5 || (v6 = v4, v7 = *(v0 + 8), (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (v5)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_193494798(&type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_258_0();
    v8 = v5 && v6 == 0xE700000000000000;
    if (v8 || (OUTLINED_FUNCTION_15_16() & 1) != 0)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40850, &qword_19397DF58);
      OUTLINED_FUNCTION_59_11(v9, v10, v11, v12, v13, v14, v15, v16, v19, v7);
      sub_1934948FC();
    }

    else
    {
      sub_19349AB64();
      v17 = OUTLINED_FUNCTION_13_9();
      *v18 = v2;
      v18[1] = v6;
      v18[5] = &type metadata for ToolKitToolTypeInstance.Constrained;
      v18[2] = v3;
      v18[3] = v7;
      OUTLINED_FUNCTION_23_2(v17, v18);

      sub_193437C90(v3);
    }
  }
}

id sub_1936C7B60()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_113_10();
  v5 = v5 && v4 == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      memcpy(v29, __dst, sizeof(v29));
      v6 = &type metadata for ToolKitToolRestrictionContext.InSet;
      v7 = &off_1F07E1368;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_57;
  }

  v8 = v2 == 0x6E65736572706572 && v1 == 0xEF7341656C626174;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_213();
    if (v5)
    {
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = &type metadata for ToolKitToolRestrictionContext.RepresentableAs;
      v7 = &off_1F07E13D8;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_8_17();
  v11 = v5 && v10 == v1;
  if (v11 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    OUTLINED_FUNCTION_215_2();
    if (!v5)
    {
      goto LABEL_57;
    }

LABEL_24:
    OUTLINED_FUNCTION_261();
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_8_17();
  v13 = v5 && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    OUTLINED_FUNCTION_217_1();
    if (!v5)
    {
      goto LABEL_57;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_152_8(0x74786574u);
  v15 = v5 && v1 == v14;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_216_1();
    if (v5)
    {
      v16 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __dst[1] = v16;
      __dst[2] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      LOWORD(__dst[3]) = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v29[0] = __dst[0];
      v29[1] = v16;
      v29[2] = __dst[2];
      LOWORD(v29[3]) = __dst[3];
      v6 = &type metadata for ToolKitToolRestrictionContext.TextTypedWith;
      v7 = &off_1F07E13F8;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_38();
  v18 = v2 == 0xD000000000000018 && v17 == v1;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_308();
    if (v5)
    {
      v19 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOWORD(__dst[1]) = v19;
      v6 = &type metadata for ToolKitToolRestrictionContext.MeasurementExpressibleAs;
      v7 = &off_1F07E13E8;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_38();
  if (v2 != 0xD000000000000010 || v20 != v1)
  {
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || (v0 & 0xE000000000000000) != 0xC000000000000000)
    {
      goto LABEL_57;
    }

LABEL_55:
    OUTLINED_FUNCTION_294_1(v0 & 0x1FFFFFFFFFFFFFFFLL);
    *&__dst[0] = v22;
    BYTE8(__dst[0]) = v23;
    *&__dst[1] = v24;
    BYTE8(__dst[1]) = v25;
    v6 = &type metadata for ToolKitToolRestrictionContext.InInclusiveRange;
    v7 = &off_1F07E13C8;
    return sub_193494798(v6, v7, v3);
  }

  OUTLINED_FUNCTION_214_0();
  if (v5)
  {
    goto LABEL_55;
  }

LABEL_57:
  sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v26, v27);
  OUTLINED_FUNCTION_19_1(v28, &type metadata for ToolKitToolRestrictionContext);
}

void sub_1936C7E64()
{
  OUTLINED_FUNCTION_15_48();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v3 == 0x6974696E69666564 && v1 == 0xEA00000000006E6FLL;
  if (v4 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    memcpy(__src, v2, 0xD8uLL);
    if (sub_1936C8078(__src) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v14, __src, sizeof(v14));
    v5 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet;
    v6 = &off_1F07E1378;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_301();
  v8 = v3 == 0x6574616C706D6574 && v1 == v7;
  if (v8 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (!__dst[27])
    {
      goto LABEL_7;
    }

    __src[0] = __dst[27];
    v9 = v2[15];
    *&__src[1] = v2[14];
    *&__src[3] = v9;
    v10 = v2[17];
    *&__src[5] = v2[16];
    *&__src[7] = v10;
    v5 = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates;
    v6 = &off_1F07E1098;
LABEL_16:
    sub_193494798(v5, v6, v0);
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_32_3();
  *v11 = v3;
  v11[1] = v1;
  v11[5] = &type metadata for ToolKitToolRestrictionContext.InSet;
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_28_3(v12);
  memcpy(v13, __dst, 0x120uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C801C(__dst, __src);
}

uint64_t sub_1936C8078(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1936C80A8()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  OUTLINED_FUNCTION_8_17();
  v11 = v11 && v4 == v0;
  if (!v11)
  {
    v3 = OUTLINED_FUNCTION_18_3();
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v13 = v1 == 0xD000000000000012 && v12 == v0;
      if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        *v60 = *&__dst[16];
        *&v60[8] = *&__dst[24];
        *&v61 = *&__dst[40];

        v20 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.DynamicEnumeration;
        v21 = &off_1F07E1388;
LABEL_16:
        OUTLINED_FUNCTION_52_2(v14, v20, v21, v15, v16, v17, v18, v19, *v60);
        sub_193494798(v22, v23, v24);

LABEL_17:

        return;
      }

      OUTLINED_FUNCTION_38();
      v26 = v1 == 0xD00000000000001DLL && v25 == v0;
      if (v26 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        *v60 = *&__dst[48];
        *&v60[16] = *&__dst[64];
        sub_193438388(*&__dst[48]);

        OUTLINED_FUNCTION_52_2(v27, &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues, &off_1F07E13A8, v28, v29, v30, v31, v32, *v60);
        sub_193494798(v33, v34, v35);
        sub_1934354B4(*v60);
        goto LABEL_17;
      }

      v36 = v1 == 0x726575516B6E696CLL && v0 == 0xE900000000000079;
      if (v36 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
      {
        v37 = *&__dst[112];
        *v60 = *&__dst[72];
        v38 = *&__dst[80];
        v39 = *&__dst[96];
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v3 = 0xD000000000000013;
        v50 = v1 == 0xD000000000000013 && v49 == v0;
        if (v50 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
        {
          *v60 = *&__dst[120];
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_38();
        v52 = v1 == 0xD000000000000014 && v51 == v0;
        if (!v52 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v54 = v1 == 0xD00000000000001BLL && v53 == v0;
          if (!v54 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            sub_19349AB64();
            v55 = OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_9_3(v55, v56);
            *(v57 + 40) = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet;
            v58 = swift_allocObject();
            v59 = OUTLINED_FUNCTION_28_3(v58);
            memcpy(v59, __dst, 0xD8uLL);
            OUTLINED_FUNCTION_26_0();

            sub_1936C8404(__dst, v60);
            return;
          }

          *v60 = *&__dst[184];
          *&v60[8] = *&__dst[192];
          *&v61 = *&__dst[208];

          v20 = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration;
          v21 = &off_1F07E1398;
          goto LABEL_16;
        }

        v37 = *&__dst[176];
        *v60 = *&__dst[136];
        v38 = *&__dst[144];
        v39 = *&__dst[160];
      }

      *&v60[8] = v38;
      v61 = v39;
      v62 = v37;

      OUTLINED_FUNCTION_52_2(v40, &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery, &off_1F07E13B8, v41, v42, v43, v44, v45, *v60);
      sub_193494798(v46, v47, v48);

      goto LABEL_17;
    }
  }

  if (*&__dst[8])
  {
    *v60 = *__dst;
LABEL_8:
    OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, *v60);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_36_4();
}

void sub_1936C86B4()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_39_6();
  v2 = *v0;
  OUTLINED_FUNCTION_22_4();
  v5 = v5 && v4 == v1;
  if (v5 || (v6 = v3, v8 = v0[1], v7 = v0[2], OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_15_16() & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_127_7(v9, &type metadata for ToolKitToolContentItemClassDescriptor, &off_1F07E1408, v10, v11, v12, v13, v14, v2);
      sub_193494798(v15, v16, v17);
      return;
    }

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
  v26 = v6 == v18 && v1 == v19;
  if (v26 || (v18 = OUTLINED_FUNCTION_15_16(), (v18 & 1) != 0))
  {
    if (!v7)
    {
LABEL_8:
      OUTLINED_FUNCTION_29();
      return;
    }

    OUTLINED_FUNCTION_127_7(v18, MEMORY[0x1E69E6158], v20, v21, v22, v23, v24, v25, v8);
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    v27 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_218_2(v27, v28);
    v29[2] = v2;
    v29[3] = v8;
    v29[4] = v7;
    v29[5] = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    OUTLINED_FUNCTION_23_2(v30, v29);

    sub_193438388(v2);
  }
}

void sub_1936C87FC()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  OUTLINED_FUNCTION_315();
  v4 = OUTLINED_FUNCTION_11_41();
  v7 = *v0;
  v6 = v0[1];
  if (v1 != v4 || v3 != v5)
  {
    v9 = v0[2];
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[5];
    v21 = v11;
    if ((OUTLINED_FUNCTION_67() & 1) == 0)
    {
      v14 = v1 == OUTLINED_FUNCTION_173_6() && v3 == v13;
      if (v14 || (OUTLINED_FUNCTION_67() & 1) != 0)
      {
        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_6();
        OUTLINED_FUNCTION_168();
        if (v1 != v16 || v15 != v3)
        {
          OUTLINED_FUNCTION_27_0();
          if ((OUTLINED_FUNCTION_67() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            v19 = v18;
            *v18 = v1;
            v18[1] = v3;
            v18[5] = &type metadata for ToolKitToolRestrictionContext.InSet.ValueSet.LinkQuery;
            OUTLINED_FUNCTION_133();
            v20 = swift_allocObject();
            v19[2] = v20;
            v20[2] = v7;
            v20[3] = v6;
            v20[4] = v9;
            v20[5] = v10;
            v20[6] = v21;
            v20[7] = v12;
            *(v19 + 48) = 1;
            swift_willThrow();

            goto LABEL_22;
          }
        }

        if (v12)
        {
          goto LABEL_7;
        }
      }

LABEL_21:
      OUTLINED_FUNCTION_131_8();
      goto LABEL_22;
    }
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_7:
  OUTLINED_FUNCTION_26_27();
LABEL_22:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C8980()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_119_9();
  v4 = v4 && v3 == 0xEA0000000000646ELL;
  if (!v4)
  {
    v5 = v3;
    v11 = *(v0 + 16);
    v6 = *(v0 + 24);
    OUTLINED_FUNCTION_68_18();
    if ((OUTLINED_FUNCTION_274_1() & 1) == 0)
    {
      OUTLINED_FUNCTION_284_0(0x427265707075);
      if (!v4 || v5 != 0xEA0000000000646ELL)
      {
        OUTLINED_FUNCTION_68_18();
        if ((OUTLINED_FUNCTION_274_1() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_126_6();
          *v8 = v1;
          v8[1] = v5;
          v8[5] = &type metadata for ToolKitToolRestrictionContext.InInclusiveRange;
          OUTLINED_FUNCTION_95();
          v9 = swift_allocObject();
          v10 = OUTLINED_FUNCTION_141_6(v9);
          *(v10 + 32) = v11;
          *(v10 + 40) = v6;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }
      }

      if (v6)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C8BB4()
{
  OUTLINED_FUNCTION_62_3();
  v4 = *v0;
  v3 = v0[1];
  if (v1 != 1953066613 || v2 != 0xE400000000000000)
  {
    v6 = v2;
    v7 = v1;
    v8 = *(v0 + 16);
    v9 = *(v0 + 17);
    if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v11 = v7 == 0xD000000000000013 && v10 == v6;
      if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        if (v8 != 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v13 = v7 == 0xD000000000000017 && v12 == v6;
        if (!v13 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          v14 = OUTLINED_FUNCTION_13_9();
          *v15 = v7;
          *(v15 + 8) = v6;
          *(v15 + 40) = &type metadata for ToolKitToolRestrictionContext.MeasurementExpressibleAs;
          *(v15 + 16) = v4;
          *(v15 + 24) = v3;
          *(v15 + 32) = v8;
          *(v15 + 33) = v9;
          OUTLINED_FUNCTION_23_2(v14, v15);

          goto LABEL_15;
        }

        if (v9 != 2)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_131_8();
      goto LABEL_15;
    }
  }

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_7:
  OUTLINED_FUNCTION_26_27();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C8D2C()
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  OUTLINED_FUNCTION_38();
  if (v3 == 0xD000000000000010 && v5 == v1)
  {
    goto LABEL_6;
  }

  v7 = v0[1];
  v8 = v0[2];
  v29 = *(v0 + 1);
  v30 = v0[16];
  v31 = v0[17];
  v26 = *(v0 + 3);
  v27 = v0[32];
  v28 = v0[33];
  v23 = *(v0 + 5);
  v24 = v0[48];
  v25 = v0[49];
  if (OUTLINED_FUNCTION_12_17())
  {
LABEL_6:
    if (v4 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v10 = v3 == 0xD000000000000012 && v9 == v1;
  if (v10 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v7 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v12 = v3 == 0xD000000000000012 && v11 == v1;
  if (v12 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v8 == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v13 = v3 == 0x6472616F6279656BLL && v1 == 0xEC00000065707954;
  if (v13 || (OUTLINED_FUNCTION_12_17() & 1) != 0)
  {
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v15 = v3 == 0xD000000000000012 && v14 == v1;
  if (v15 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v28)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v17 = v3 == 0xD000000000000012 && v16 == v1;
  if (v17 || (OUTLINED_FUNCTION_49_18() & 1) != 0)
  {
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_73_1(v18, v19);
  *(v20 + 40) = &type metadata for ToolKitToolRestrictionContext.TextTypedWith;
  v21 = swift_allocObject();
  *(v2 + 16) = v21;
  *(v21 + 16) = v4;
  *(v21 + 17) = v7;
  *(v21 + 18) = v8;
  *(v21 + 23) = v0[7];
  *(v21 + 19) = *(v0 + 3);
  *(v21 + 24) = v29;
  *(v21 + 32) = v30;
  *(v21 + 33) = v31;
  *(v21 + 38) = *(v0 + 11);
  *(v21 + 34) = *(v0 + 18);
  *(v21 + 40) = v26;
  *(v21 + 48) = v27;
  *(v21 + 49) = v28;
  v22 = *(v0 + 34);
  *(v21 + 54) = *(v0 + 19);
  *(v21 + 50) = v22;
  *(v21 + 56) = v23;
  *(v21 + 64) = v24;
  *(v21 + 65) = v25;
  OUTLINED_FUNCTION_163_6();
}

id sub_1936C9038()
{
  OUTLINED_FUNCTION_11_5();
  v3 = *v0;
  OUTLINED_FUNCTION_38();
  v12 = v4 == 0xD000000000000017 && v5 == v1;
  if (v12 || (v4 = OUTLINED_FUNCTION_18_3(), (v4 & 1) != 0))
  {
    if (!(v3 >> 62))
    {
      v36 = *(v3 + 24);
      OUTLINED_FUNCTION_53_2(v4, MEMORY[0x1E69E6158], v6, v7, v8, v9, v10, v11, *(v3 + 16));
      return sub_1934948FC();
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_38();
  v15 = v2 == 0xD00000000000001ALL && v14 == v1;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (!v12)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_226_1();
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkEntityContentItemClass;
    v23 = &off_1F07E1418;
LABEL_16:
    OUTLINED_FUNCTION_53_2(v16, v22, v23, v17, v18, v19, v20, v21, v35);
    return sub_193494798(v24, v25, v26);
  }

  OUTLINED_FUNCTION_38();
  v28 = v2 == 0xD000000000000018 && v27 == v1;
  if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_42_10();
    if (!v12)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_226_1();
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkEnumContentItemClass;
    v23 = &off_1F07E1428;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  if (v2 != 0xD00000000000001BLL || v29 != v1)
  {
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_42_10();
    if (!(!v12 & v31))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v3 >> 62 == 3)
  {
LABEL_32:
    OUTLINED_FUNCTION_303((v3 & 0x3FFFFFFFFFFFFFFFLL));
    v22 = &type metadata for ToolKitToolContentItemClassDescriptor.LinkCodableContentItemClass;
    v23 = &off_1F07E1438;
    goto LABEL_16;
  }

LABEL_34:
  sub_19349AB64();
  v32 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v32, v33);
  OUTLINED_FUNCTION_19_1(v34, &type metadata for ToolKitToolContentItemClassDescriptor);
}

void sub_1936C9220()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  OUTLINED_FUNCTION_39_6();
  v4 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_22_4();
  v8 = v8 && v6 == v2;
  if (!v8)
  {
    v9 = v7;
    v10 = v5;
    v11 = v0[2];
    v12 = v0[3];
    v18 = v11;
    OUTLINED_FUNCTION_27_0();
    if ((sub_19393CA30() & 1) == 0)
    {
      if (v10 != OUTLINED_FUNCTION_3_67() || v2 != v13)
      {
        OUTLINED_FUNCTION_154();
        if ((sub_19393CA30() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          v16 = v15;
          *v15 = v10;
          v15[1] = v2;
          v15[5] = v9;
          OUTLINED_FUNCTION_95();
          v17 = swift_allocObject();
          v16[2] = v17;
          v17[2] = v4;
          v17[3] = v3;
          v17[4] = v18;
          v17[5] = v12;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_15;
        }
      }

      if (v12)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_131_8();
      goto LABEL_15;
    }
  }

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_7:
  OUTLINED_FUNCTION_26_27();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936C938C()
{
  OUTLINED_FUNCTION_321();
  v2 = OUTLINED_FUNCTION_3_67();
  v7 = *v0;
  v6 = v0[1];
  v8 = v1 == v2 && v3 == v5;
  if (v8 || (v9 = v4, v10 = v3, OUTLINED_FUNCTION_154(), (sub_19393CA30() & 1) != 0))
  {
    if (v6)
    {
      OUTLINED_FUNCTION_26_27();
    }

    else
    {
      OUTLINED_FUNCTION_131_8();
    }
  }

  else
  {
    sub_19349AB64();
    v11 = OUTLINED_FUNCTION_13_9();
    *v12 = v1;
    v12[1] = v10;
    v12[5] = v9;
    v12[2] = v7;
    v12[3] = v6;
    OUTLINED_FUNCTION_23_2(v11, v12);
  }
}

void sub_1936C9484()
{
  OUTLINED_FUNCTION_2_3();
  v11 = OUTLINED_FUNCTION_201_2(v3, v4, v5, v6, v7, v8, v9, v10, v49, v50, v51, v52, v53, v54, v55, v56, v57, __src[0]);
  v19 = v1 == v2 && v0 == 0xE800000000000000;
  if (v19 || (v11 = OUTLINED_FUNCTION_0_66(), (v11 & 1) != 0))
  {
    if (*&__src[8] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_200_2(v11, v12, v13, v14, v15, v16, v17, v18, v49, v50, v51, v52, v53, v54, v55, v56, v57, *__src, *&__src[8], *&__src[16]);
    v26 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity.Property;
    v27 = &off_1F07E1058;
    goto LABEL_9;
  }

  v31 = v1 == (OUTLINED_FUNCTION_305() | 0x7369726100000000) && v0 == 0xEA00000000006E6FLL;
  if (v31 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v19)
    {
      goto LABEL_7;
    }

    v49 = v32;
    v26 = &type metadata for ToolKitToolComparisonPredicate.Comparison;
    v27 = &off_1F07E1458;
    goto LABEL_9;
  }

  v33 = OUTLINED_FUNCTION_242_1();
  v40 = v19 && v0 == 0xEA00000000006449;
  if (v40 || (v33 = OUTLINED_FUNCTION_23_37(), (v33 & 1) != 0))
  {
    if (!*&__src[56])
    {
      goto LABEL_7;
    }

    v50 = *&__src[56];
    OUTLINED_FUNCTION_52_2(v33, MEMORY[0x1E69E6158], v34, v35, v36, v37, v38, v39, *&__src[48]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_34_21();
    v42 = v19 && v41 == v0;
    if (v42 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
    {
      OUTLINED_FUNCTION_66_21();
      if (v19)
      {
        goto LABEL_7;
      }

      v49 = v43;
      v26 = &type metadata for ToolKitToolContentItemClassDescriptor;
      v27 = &off_1F07E1408;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v20, v26, v27, v21, v22, v23, v24, v25, v49);
      sub_193494798(v28, v29, v30);
      return;
    }

    sub_19349AB64();
    v44 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v44, v45);
    *(v46 + 40) = &type metadata for ToolKitToolComparisonPredicate;
    OUTLINED_FUNCTION_127_3();
    v47 = swift_allocObject();
    v48 = OUTLINED_FUNCTION_28_3(v47);
    memcpy(v48, __src, 0x48uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936C964C(__src, &v49);
  }
}

void sub_1936C9A48()
{
  OUTLINED_FUNCTION_161_5();
  OUTLINED_FUNCTION_264();
  v4 = v4 && v3 == 0xE500000000000000;
  if (v4 || (v5 = v3, v6 = *(v0 + 8), (OUTLINED_FUNCTION_117_2() & 1) != 0))
  {
    OUTLINED_FUNCTION_208_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_77_2(v7, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v8, v9, v10, v11, v12, v25, v2);
LABEL_9:
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_8;
  }

  v16 = v1 == OUTLINED_FUNCTION_120_6() && v5 == 0xE600000000000000;
  if (v16 || (OUTLINED_FUNCTION_117_2() & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_77_2(v17, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v18, v19, v20, v21, v22, v25, v6);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_19349AB64();
  v23 = OUTLINED_FUNCTION_13_9();
  *v24 = v1;
  v24[1] = v5;
  v24[5] = &type metadata for ToolKitToolComparisonPredicate.Comparison.Pair;
  v24[2] = v2;
  v24[3] = v6;
  OUTLINED_FUNCTION_23_2(v23, v24);

  sub_193437C90(v2);
  sub_193437C90(v6);
}

id sub_1936C9B7C()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_113_10();
  v10 = v10 && v4 == 0xE700000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_34_31(), (v3 & 1) != 0))
  {
    if (!(v0 >> 60))
    {
      v11 = *(v0 + 16);
LABEL_15:
      OUTLINED_FUNCTION_77_2(v3, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v5, v6, v7, v8, v9, v49, v11);
      return sub_193494798(v13, v14, v15);
    }

    goto LABEL_29;
  }

  v12 = v2 == OUTLINED_FUNCTION_153_7() && v1 == 0xEA00000000006F54;
  if (!v12 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_273_0();
    v17 = v10 && v1 == 0xE800000000000000;
    if (v17 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
    {
      if (v0 >> 60 != 2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      OUTLINED_FUNCTION_206_0(0x566F4E736168);
      v26 = v10 && v1 == 0xEA00000000006575;
      if (v26 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
      {
        if (v0 >> 60 != 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        OUTLINED_FUNCTION_51_18();
        v31 = v10 && v1 == v30;
        if (v31 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (v0 >> 60 == 4)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_38();
        v33 = v2 == 0xD000000000000014 && v32 == v1;
        if (v33 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (v0 >> 60 == 5)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_111_10();
        v34 = v10 && v1 == 0xE800000000000000;
        if (v34 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
        {
          if (v0 >> 60 == 6)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_38();
        v36 = v2 == 0xD000000000000011 && v35 == v1;
        if (v36 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
        {
          if (v0 >> 60 == 7)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_109_10();
        v37 = v10 && v1 == 0xE800000000000000;
        if (v37 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
        {
          if (v0 >> 60 == 8)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_175_5();
        v39 = v10 && v1 == v38;
        if (v39 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (v0 >> 60 == 9)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_222_1();
        v41 = v10 && v1 == v40;
        if (v41 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (v0 >> 60 == 10)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_259_0();
        v42 = v10 && v1 == 0xE800000000000000;
        if (v42 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
        {
          if (v0 >> 60 == 11)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_197_2();
        v43 = v10 && v1 == 0xEA00000000006575;
        if (v43 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
        {
          if (v0 >> 60 == 12)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_256_0();
        v44 = v10 && v1 == 0xEA00000000006575;
        if (v44 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
        {
          if (v0 >> 60 == 13)
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_227_1(0x6F547369u);
        v45 = v10 && v1 == 0xE700000000000000;
        if (!v45 && (OUTLINED_FUNCTION_34_31() & 1) == 0)
        {
          OUTLINED_FUNCTION_212_1();
          if (v10 && v1 == v46)
          {
            if (v0 >> 60 == 15)
            {
              goto LABEL_14;
            }
          }

          else if (OUTLINED_FUNCTION_5_5())
          {
            OUTLINED_FUNCTION_186_2();
            if (!v10 & v48)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_186_2();
        if (!v10)
        {
          goto LABEL_29;
        }
      }
    }

    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_77_2(v18, &type metadata for ToolKitToolNullValue, v19, v20, v21, v22, v23, v24, v49, v25);
    return sub_1934948FC();
  }

  if (v0 >> 60 == 1)
  {
LABEL_14:
    OUTLINED_FUNCTION_257();
    goto LABEL_15;
  }

LABEL_29:
  sub_19349AB64();
  v27 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v27, v28);
  OUTLINED_FUNCTION_19_1(v29, &type metadata for ToolKitToolComparisonPredicate.Comparison.Template);
}

void sub_1936C9EF0()
{
  OUTLINED_FUNCTION_2_3();
  v11 = OUTLINED_FUNCTION_201_2(v3, v4, v5, v6, v7, v8, v9, v10, v51, v52, v53, v54, v55, v56, v57, v58, v59, __src[0]);
  v19 = v1 == v2 && v0 == 0xE800000000000000;
  if (v19 || (v11 = OUTLINED_FUNCTION_0_66(), (v11 & 1) != 0))
  {
    if (*&__src[8] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_200_2(v11, v12, v13, v14, v15, v16, v17, v18, v51, v52, v53, v54, v55, v56, v57, v58, v59, *__src, *&__src[8], *&__src[16]);
    v26 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity.Property;
    v27 = &off_1F07E1058;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v32 = v1 == 0xD000000000000012 && v31 == v0;
  if (v32 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v19)
    {
      goto LABEL_7;
    }

    v51 = v33;
    v26 = &type metadata for ToolKitToolComparisonPredicate.Comparison.Template;
    v27 = &off_1F07E1478;
    goto LABEL_9;
  }

  v34 = OUTLINED_FUNCTION_242_1();
  v42 = v19 && v0 == v41;
  if (v42 || (v34 = OUTLINED_FUNCTION_23_37(), (v34 & 1) != 0))
  {
    if (!*&__src[56])
    {
      goto LABEL_7;
    }

    v52 = *&__src[56];
    OUTLINED_FUNCTION_52_2(v34, MEMORY[0x1E69E6158], v35, v36, v37, v38, v39, v40, *&__src[48]);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_39_25();
    v44 = v19 && v43 == v0;
    if (v44 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
    {
      OUTLINED_FUNCTION_66_21();
      if (v19)
      {
        goto LABEL_7;
      }

      v51 = v45;
      v26 = &type metadata for ToolKitToolContentItemClassDescriptor;
      v27 = &off_1F07E1408;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v20, v26, v27, v21, v22, v23, v24, v25, v51);
      sub_193494798(v28, v29, v30);
      return;
    }

    sub_19349AB64();
    v46 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v46, v47);
    *(v48 + 40) = &type metadata for ToolKitToolComparisonPredicate.Template;
    OUTLINED_FUNCTION_127_3();
    v49 = swift_allocObject();
    v50 = OUTLINED_FUNCTION_28_3(v49);
    memcpy(v50, __src, 0x48uLL);
    OUTLINED_FUNCTION_26_0();

    sub_1936CA144(__src, &v51);
  }
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v2)
  {

    v3 = v1[5];

    v4 = v1[6];
    OUTLINED_FUNCTION_66_21();
    if (!v2)
    {
    }
  }

  v5 = v1[7];
  OUTLINED_FUNCTION_130_9();
  if (!v2)
  {
  }

  v6 = v1[9];

  if ((v0 & ~v1[10]) != 0)
  {
  }

  OUTLINED_FUNCTION_127_3();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

void sub_1936CA578()
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_113_10();
  v8 = v8 && v2 == 0xE500000000000000;
  if (v8 || (v1 = OUTLINED_FUNCTION_1_31(), (v1 & 1) != 0))
  {
    if ((~v0 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_77_2(v1, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v3, v4, v5, v6, v7, v15, v0);
      sub_193494798(v9, v10, v11);
    }

    else
    {
      OUTLINED_FUNCTION_35();
    }
  }

  else
  {
    sub_19349AB64();
    v12 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_64(v12, v13);
    OUTLINED_FUNCTION_19_1(v14, &type metadata for ToolKitToolValueSearchPredicate.Template);

    sub_193437C90(v0);
  }
}

void sub_1936CA658()
{
  OUTLINED_FUNCTION_46_8();
  v3 = v2;
  OUTLINED_FUNCTION_321();
  v4 = OUTLINED_FUNCTION_4_61();
  v7 = *v0;
  v6 = v0[1];
  v8 = v1 == v4 && v3 == v5;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    OUTLINED_FUNCTION_186_2();
    if (!v8 & v9)
    {
      OUTLINED_FUNCTION_131_8();
    }

    else
    {
      OUTLINED_FUNCTION_26_27();
    }
  }

  else
  {
    sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9();
    *v11 = v1;
    v11[1] = v3;
    v11[5] = &type metadata for ToolKitToolSearchableItemPredicate;
    v11[2] = v7;
    v11[3] = v6;
    OUTLINED_FUNCTION_23_2(v10, v11);

    sub_193450268(v7, v6);
  }

  OUTLINED_FUNCTION_47_12();
}

id sub_1936CA974()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_305();
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v4 == v5;
  if (v6 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    if (!(v0 >> 60))
    {
      memcpy(__dst, (v0 + 16), 0x48uLL);
      memcpy(v30, __dst, sizeof(v30));
      v7 = &type metadata for ToolKitToolComparisonPredicate;
      v8 = &off_1F07E1448;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    v9 = v2 == (OUTLINED_FUNCTION_305() | 0x646E756F00000000) && v1 == 0xE800000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
    {
      if (v0 >> 60 == 1)
      {
        v10 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x19);
        v12 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&__dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        BYTE8(__dst[0]) = v10;
        BYTE9(__dst[0]) = v11;
        *&__dst[1] = v12;
        v7 = &type metadata for ToolKitToolCompoundPredicate;
        v8 = &off_1F07E1498;
        return sub_193494798(v7, v8, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_236_1();
      v15 = v2 == (OUTLINED_FUNCTION_149_7() & 0xFFFFFFFFFFFFLL | 0x6553000000000000) && v1 == v14;
      if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if (v0 >> 60 == 2)
        {
          __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v7 = &type metadata for ToolKitToolStringSearchPredicate;
          v8 = &off_1F07E14A8;
          return sub_193494798(v7, v8, v3);
        }
      }

      else
      {
        OUTLINED_FUNCTION_248_0();
        v16 = v6 && v1 == 0xE800000000000000;
        if (v16 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
        {
          if (v0 >> 60 == 3)
          {
            v17 = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            *&__dst[1] = v17;
            v7 = &type metadata for ToolKitToolIdSearchPredicate;
            v8 = &off_1F07E14C8;
            return sub_193494798(v7, v8, v3);
          }
        }

        else
        {
          v18 = v2 == 7105633 && v1 == 0xE300000000000000;
          if (v18 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
          {
            if (v0 >> 60 == 4)
            {
              v7 = &type metadata for ToolKitToolAllPredicate;
              v8 = &off_1F07E1528;
              return sub_193494798(v7, v8, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_169_6(0x736567677573);
            v20 = v6 && v1 == v19;
            if (v20 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
            {
              if (v0 >> 60 == 5)
              {
                v7 = &type metadata for ToolKitToolSuggestedPredicate;
                v8 = &off_1F07E1548;
                return sub_193494798(v7, v8, v3);
              }
            }

            else
            {
              v22 = v2 == OUTLINED_FUNCTION_4_61() && v1 == v21;
              if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
              {
                if (v0 >> 60 == 6)
                {
                  __dst[0] = *((v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v7 = &type metadata for ToolKitToolSearchableItemPredicate;
                  v8 = &off_1F07E1508;
                  return sub_193494798(v7, v8, v3);
                }
              }

              else
              {
                OUTLINED_FUNCTION_312();
                v23 = v6 && v1 == 0xE500000000000000;
                if (!v23 && (OUTLINED_FUNCTION_1_31() & 1) == 0)
                {
                  if (v2 == (OUTLINED_FUNCTION_98_13() | 0x6165536500000000) && v1 == v24)
                  {
                    if (v0 >> 60 != 8)
                    {
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
                    {
                      goto LABEL_67;
                    }

                    OUTLINED_FUNCTION_211_0();
                    if (!v6)
                    {
                      goto LABEL_67;
                    }
                  }

                  OUTLINED_FUNCTION_257();
                  *&__dst[0] = v26;
                  v7 = &type metadata for ToolKitToolValueSearchPredicate;
                  v8 = &off_1F07E14E8;
                  return sub_193494798(v7, v8, v3);
                }

                if (v0 >> 60 == 7)
                {
                  v7 = &type metadata for ToolKitToolValidPredicate;
                  v8 = &off_1F07E1538;
                  return sub_193494798(v7, v8, v3);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_67:
  sub_19349AB64();
  v27 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v27, v28);
  OUTLINED_FUNCTION_19_1(v29, &type metadata for ToolKitToolQuery.AnyPredicate);
}

void sub_1936CACE4()
{
  OUTLINED_FUNCTION_241_1();
  OUTLINED_FUNCTION_25_16();
  v3 = *v0;
  v4 = *(v0 + 4);
  v5 = v1 == 0x726F6A616DLL && v2 == 0xE500000000000000;
  if (!v5)
  {
    v6 = v2;
    v7 = v0[2];
    v8 = *(v0 + 12);
    v17 = v0[4];
    v18 = *(v0 + 20);
    v16 = *(v0 + 21);
    if ((OUTLINED_FUNCTION_1_31() & 1) == 0)
    {
      OUTLINED_FUNCTION_285_0(1869506925);
      v9 = v5 && v6 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
      {
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_293_1();
        v10 = v5 && v6 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
        {
          if (v18)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v11 = v1 == 0x6163646C69577369 && v6 == 0xEA00000000006472;
          if (!v11 && (OUTLINED_FUNCTION_23_37() & 1) == 0)
          {
            sub_19349AB64();
            v12 = OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_64(v12, v13);
            *(v14 + 40) = &type metadata for ToolKitToolRuntimePlatformVersion;
            *(v14 + 16) = v3;
            *(v14 + 20) = v4;
            *(v14 + 24) = v7;
            *(v14 + 28) = v8;
            *(v14 + 32) = v17;
            *(v14 + 36) = v18;
            *(v14 + 37) = v16;
            OUTLINED_FUNCTION_23_2(v15, v14);

            goto LABEL_9;
          }

          if (v16 == 2)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_71_17();
}

id sub_1936CAEBC()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_113_10();
  v5 = v5 && v4 == 0xE800000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      memcpy(__dst, (v0 + 16), 0x52uLL);
      memcpy(v21, __dst, sizeof(v21));
      v6 = &type metadata for ToolKitToolRuntimeRequirement.AvailabilityAnnotation;
      v7 = &off_1F07E1598;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_34_21();
  v9 = v5 && v8 == v1;
  if (v9 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (v5)
    {
      *&__dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability;
      v7 = &off_1F07E15A8;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_34;
  }

  v11 = v2 == 0x4665727574616566 && v1 == 0xEB0000000067616CLL;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_42_10();
    if (v5)
    {
      v12 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v13 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      __dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      __dst[1] = v13;
      LOBYTE(__dst[2]) = v12;
      v6 = &type metadata for ToolKitToolRuntimeRequirement.FeatureFlag;
      v7 = &off_1F07E15C8;
      return sub_193494798(v6, v7, v3);
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_204_1();
  if (v2 != (OUTLINED_FUNCTION_232() & 0xFFFFFFFFFFFFLL | 0x7453000000000000) || v1 != v14)
  {
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_42_10();
    if (!(!v5 & v16))
    {
      goto LABEL_34;
    }

LABEL_32:
    v17 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    *&__dst[0] = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    BYTE8(__dst[0]) = v17;
    return sub_1934948FC();
  }

  if (v0 >> 62 == 3)
  {
    goto LABEL_32;
  }

LABEL_34:
  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v18, v19);
  OUTLINED_FUNCTION_19_1(v20, &type metadata for ToolKitToolRuntimeRequirement);
}

void sub_1936CB0BC()
{
  OUTLINED_FUNCTION_25_16();
  v3 = OUTLINED_FUNCTION_9_23();
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  if (v1 != v3 || v4 != 0xE800000000000000)
  {
    v9 = v4;
    v37 = *(v0 + 12);
    v38 = *(v0 + 20);
    v10 = *(v0 + 16);
    v11 = *(v0 + 7);
    v27 = *(v0 + 5);
    v28 = *(v0 + 17);
    v33 = *(v0 + 36);
    v34 = *(v0 + 44);
    v36 = *(v0 + 28);
    v35 = *(v0 + 13);
    v29 = *(v0 + 29);
    v30 = *(v0 + 60);
    v31 = *(v0 + 68);
    v32 = *(v0 + 40);
    v12 = *(v0 + 19);
    if ((OUTLINED_FUNCTION_0_66() & 1) == 0)
    {
      v13 = v11 | (v10 << 32);
      OUTLINED_FUNCTION_38();
      v16 = v1 == v15 && v14 == v9;
      if (v16 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
      {
        if ((v13 & 0xFF0000000000) == 0x30000000000)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = v35 | (v36 << 32);
        OUTLINED_FUNCTION_38();
        v20 = v1 == v19 && v18 == v9;
        if (v20 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
        {
          if ((v17 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v21 = v12 | (v32 << 32);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_115_9();
          v24 = v1 == v23 - 1 && v22 == v9;
          if (!v24 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_265_0();
            *v25 = v1;
            v25[1] = v9;
            v25[5] = &type metadata for ToolKitToolRuntimeRequirement.AvailabilityAnnotation;
            v26 = swift_allocObject();
            v2[2] = v26;
            *(v26 + 16) = v5;
            *(v26 + 24) = v6;
            *(v26 + 25) = v7;
            *(v26 + 26) = v27;
            *(v26 + 28) = v37;
            *(v26 + 36) = v38;
            *(v26 + 48) = WORD2(v13);
            *(v26 + 44) = v13;
            *(v26 + 50) = v28;
            *(v26 + 52) = v33;
            *(v26 + 60) = v34;
            *(v26 + 72) = WORD2(v17);
            *(v26 + 68) = v35;
            *(v26 + 74) = v29;
            *(v26 + 76) = v30;
            *(v26 + 84) = v31;
            *(v26 + 96) = WORD2(v21);
            *(v26 + 92) = v21;
            OUTLINED_FUNCTION_179_4();

            return;
          }

          if ((v21 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_7;
          }
        }
      }

      OUTLINED_FUNCTION_234_1();
      OUTLINED_FUNCTION_233_1();
      sub_193494798(&type metadata for ToolKitToolRuntimePlatformVersion, &off_1F07E1578, v2);
      return;
    }
  }

  if (v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_35();
    return;
  }

  sub_1934948FC();
}

id sub_1936CB3E0()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_113_10();
  v4 = v4 && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      v5 = *(v0 + 32);
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_102_14(v6, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt, &off_1F07E15B8, v7, v8, v9, v10, v11, v27);
      return sub_193494798(v12, v13, v14);
    }

    goto LABEL_14;
  }

  v16 = v1 == 0x696C696261706163 && v2 == 0xEA00000000007974;
  if (!v16 && (OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_124_3() & 1) == 0) || (v0 & 0x8000000000000000) == 0)
  {
LABEL_14:
    sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_219_0(v17, v18);
    OUTLINED_FUNCTION_19_1(v19, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability);
  }

  OUTLINED_FUNCTION_90_16(v0 & 0x7FFFFFFFFFFFFFFFLL);
  OUTLINED_FUNCTION_102_14(v20, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType, v21, v22, v23, v24, v25, v26, v27);
  return sub_1934948FC();
}

uint64_t sub_1936CB890()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v11 = v11 && v4 == 0xE400000000000000;
  if (v11 || (v3 = OUTLINED_FUNCTION_91_2(), (v3 & 1) != 0))
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      v18 = *(v0 + 16);
      v19 = *(v0 + 24);
LABEL_8:
      OUTLINED_FUNCTION_102_14(v3, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, v18);
      return sub_1934948FC();
    }
  }

  else
  {
    v14 = v1 == OUTLINED_FUNCTION_11_41() && v2 == v13;
    if (v14 || (OUTLINED_FUNCTION_91_2()) && v0 < 0)
    {
      OUTLINED_FUNCTION_269_0(v0 & 0x7FFFFFFFFFFFFFFFLL);
      goto LABEL_8;
    }
  }

  sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_219_0(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for ToolKitToolToolSummaryString.Component);
}

uint64_t sub_1936CBBF8()
{
  OUTLINED_FUNCTION_162_7();
  v10 = *v0;
  v9 = v0[1];
  v12 = v1 == v11 && v2 == 0xE300000000000000;
  if (v12 || (v13 = v2, v14 = v1, v15 = v0[2], OUTLINED_FUNCTION_88_14(), v1 = OUTLINED_FUNCTION_15_16(), (v1 & 1) != 0))
  {
    OUTLINED_FUNCTION_53_2(v1, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, v10);
    return sub_1934948FC();
  }

  else
  {
    v17 = v14 == OUTLINED_FUNCTION_26_28() && v13 == 0xE500000000000000;
    if (v17 || (OUTLINED_FUNCTION_15_16() & 1) != 0)
    {

      OUTLINED_FUNCTION_53_2(v18, &type metadata for ToolKitToolToolInvocationSignature.ListOfRelations, &off_1F07E1608, v19, v20, v21, v22, v23, v15);
      sub_193494798(v24, v25, v26);
    }

    else
    {
      sub_19349AB64();
      v27 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_218_2(v27, v28);
      v29[2] = v10;
      v29[3] = v9;
      v29[4] = v15;
      v29[5] = &type metadata for ToolKitToolToolInvocationSignature.ValueConstraintsEntry;
      OUTLINED_FUNCTION_23_2(v30, v29);
    }
  }
}

void sub_1936CBD2C()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_315();
  v3 = *v0;
  v4 = v1 == 0x73657361726870 && v2 == 0xE700000000000000;
  if (v4 || (v5 = v2, v7 = v0[1], v6 = v0[2], v8 = v0[3], (OUTLINED_FUNCTION_67() & 1) != 0))
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_7;
  }

  v9 = v1 == 0x6465746365707865 && v5 == 0xEE00746C75736552;
  if (!v9 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    v10 = v1 == 0x657669746167656ELL && v5 == 0xEF73657361726850;
    if (!v10 && (OUTLINED_FUNCTION_67() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_3();
      *v11 = v1;
      v11[1] = v5;
      v11[5] = &type metadata for ToolKitToolSampleInvocationDefinition;
      OUTLINED_FUNCTION_95();
      v12 = swift_allocObject();
      v0[2] = v12;
      v12[2] = v3;
      v12[3] = v7;
      v12[4] = v6;
      v12[5] = v8;
      OUTLINED_FUNCTION_26_0();

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v6)
  {
    OUTLINED_FUNCTION_131_8();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_26_27();
LABEL_8:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936CBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_119_9();
  v15 = v15 && v14 == 0xE500000000000000;
  if (!v15)
  {
    v16 = v14;
    v17 = *(v11 + 16);
    v18 = *(v11 + 24);
    OUTLINED_FUNCTION_319();
    if ((OUTLINED_FUNCTION_91_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_285_0(1869506925);
      v19 = v15 && v16 == 0xE500000000000000;
      if (v19 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
      {
        if (v18)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_293_1();
        v20 = v15 && v16 == 0xE500000000000000;
        if (!v20 && (OUTLINED_FUNCTION_91_2() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_106_0();
          *v21 = v12;
          v21[1] = v16;
          v21[5] = &type metadata for ToolKitToolAssistantSchemaVersion;
          OUTLINED_FUNCTION_133();
          v22 = swift_allocObject();
          v23 = OUTLINED_FUNCTION_141_6(v22);
          *(v23 + 32) = v17;
          *(v23 + 40) = v18;
          *(v23 + 48) = a9;
          *(v23 + 56) = a11;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          goto LABEL_9;
        }

        if (a11)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936CC044()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77);
  v17 = v1 == 1684957547 && v0 == 0xE400000000000000;
  if (v17 || (v10 = OUTLINED_FUNCTION_27_28(), (v10 & 1) != 0))
  {
    if (v80)
    {
      v18 = v78;
LABEL_8:
      OUTLINED_FUNCTION_52_2(v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v15, v16, v18);
      sub_1934948FC();
      return;
    }

    goto LABEL_15;
  }

  v19 = 0x6E6F6973726576;
  v20 = v1 == 0x6E6F6973726576 && v0 == 0xE700000000000000;
  if (v20 || (v19 = OUTLINED_FUNCTION_34_31(), (v19 & 1) != 0))
  {
    if (v82)
    {
LABEL_15:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_52_2(v19, &type metadata for ToolKitToolAssistantSchemaVersion, &off_1F07E1638, v12, v13, v14, v15, v16, v81);
    sub_193494798(v21, v22, v23);
  }

  else
  {
    v10 = 0x6E69616D6F64;
    v24 = v1 == 0x6E69616D6F64 && v0 == 0xE600000000000000;
    if (v24 || (v10 = OUTLINED_FUNCTION_24_37(), (v10 & 1) != 0))
    {
      if (v84)
      {
        v18 = v83;
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    sub_19349AB64();
    v25 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v25, v26);
    *(v27 + 40) = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    OUTLINED_FUNCTION_137_7();
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_28_3(v28);
    OUTLINED_FUNCTION_282_0(v29, v30, v31, v32, v33, v34, v35, v36, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78);
    OUTLINED_FUNCTION_26_0();

    v45 = OUTLINED_FUNCTION_270_0(v37, v38, v39, v40, v41, v42, v43, v44, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79);
    sub_1936CC1E4(v45, v46);
  }
}

void sub_1936CC258()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x696669746E656469 && v0 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v10 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v11 = &off_1F07E1648;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_108_12();
  v22 = v3 && v0 == 0xE400000000000000;
  if (v22 || (OUTLINED_FUNCTION_17_35(), v15 = OUTLINED_FUNCTION_31_3(), (v15 & 1) != 0))
  {
    v23 = __dst[11];
    if (!__dst[11])
    {
      goto LABEL_7;
    }

    v24 = __dst[10];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_84_12();
  v15 = OUTLINED_FUNCTION_43_17();
  v27 = v3 && v0 == v26;
  if (v27 || (v15 = OUTLINED_FUNCTION_5_5(), (v15 & 1) != 0))
  {
    v23 = __dst[13];
    if (!__dst[13])
    {
      goto LABEL_7;
    }

    v24 = __dst[12];
LABEL_17:
    v40[0] = v24;
    v40[1] = v23;
    v25 = MEMORY[0x1E69E6158];
LABEL_18:
    OUTLINED_FUNCTION_52_2(v15, v25, v16, v17, v18, v19, v20, v21, v40[0]);
    sub_1934948FC();
    return;
  }

  v28 = v1 == OUTLINED_FUNCTION_11_41() && v0 == 0xEA00000000007372;
  if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v40[0] = __dst[14];
    v29 = &unk_1EAE40878;
    v30 = &unk_19397DF80;
LABEL_32:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v25 = v15;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v32 = v3 && v31 == v0;
  if (v32 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    v40[0] = __dst[15];
    v29 = &unk_1EAE407F8;
    v30 = &unk_19397DF00;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_107_11();
  v33 = v3 && v0 == 0xEA00000000006570;
  if (v33 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (v3)
    {
      goto LABEL_7;
    }

    v40[0] = v34;
    v10 = &type metadata for ToolKitToolTypeInstance;
    v11 = &off_1F07E12F8;
LABEL_9:
    OUTLINED_FUNCTION_52_2(v4, v10, v11, v5, v6, v7, v8, v9, v40[0]);
    sub_193494798(v12, v13, v14);
    return;
  }

  sub_19349AB64();
  v35 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v35, v36);
  *(v37 + 40) = &type metadata for ToolKitToolAssistantToolSchemaDefinition;
  OUTLINED_FUNCTION_288_0();
  v38 = swift_allocObject();
  v39 = OUTLINED_FUNCTION_28_3(v38);
  memcpy(v39, __dst, 0x88uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936CC494(__dst, v40);
}

id sub_1936CC508()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_85_17();
  OUTLINED_FUNCTION_113_10();
  v3 = v3 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      v11 = OUTLINED_FUNCTION_322(&v35, v4, v5, v6, v7, v8, v9, v10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, __dst[0]);
      v17 = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Entity;
      v18 = &off_1F07E1678;
LABEL_8:
      OUTLINED_FUNCTION_53_2(v11, v17, v18, v12, v13, v14, v15, v16, v35);
      return sub_193494798(v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
    v24 = v3 && v1 == v23;
    if (v24 || (OUTLINED_FUNCTION_5_5()) && v0 < 0)
    {
      memcpy(__dst, ((v0 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      v11 = OUTLINED_FUNCTION_322(&v35, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, __dst[0]);
      v17 = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Enumeration;
      v18 = &off_1F07E1688;
      goto LABEL_8;
    }
  }

  sub_19349AB64();
  v25 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v25, v26);
  OUTLINED_FUNCTION_19_1(v27, &type metadata for ToolKitToolAssistantTypeSchemaDefinition);
}

void sub_1936CC62C()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v2, sizeof(__dst));
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v12 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v13 = &off_1F07E1648;
    goto LABEL_9;
  }

  v17 = v1 == (OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v0 == v4 + 256;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v46 = __dst[10];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40808, &qword_19397DF10);
    OUTLINED_FUNCTION_52_2(v18, v18, v19, v20, v21, v22, v23, v24, v46);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    v33 = v5 && v26 == v0;
    if (v33 || (v25 = OUTLINED_FUNCTION_18_3(), (v25 & 1) != 0))
    {
      if (!__dst[15])
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_247_0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], *&__dst[11]);
      v12 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v13 = &off_1F07E18A8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v12, v13, v7, v8, v9, v10, v11, v46);
      sub_193494798(v14, v15, v16);
      return;
    }

    sub_19349AB64();
    v34 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v34, v35);
    *(v36 + 40) = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Entity;
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_28_3(v37);
    OUTLINED_FUNCTION_322(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0]);
    OUTLINED_FUNCTION_26_0();

    sub_1936CC7C0(__dst, &v46);
  }
}

void sub_1936CC834()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v2, sizeof(__dst));
  v5 = v1 == v3 && v0 == v4;
  if (v5 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    if (__dst[1] == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    OUTLINED_FUNCTION_121_7();
    v12 = &type metadata for ToolKitToolAssistantSchemaIdentifier;
    v13 = &off_1F07E1648;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_196_2(1702060387);
  v17 = v5 && v0 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    v46 = __dst[10];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40810, &qword_19397DF18);
    OUTLINED_FUNCTION_52_2(v18, v18, v19, v20, v21, v22, v23, v24, v46);
    sub_1934948FC();
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    v33 = v5 && v26 == v0;
    if (v33 || (v25 = OUTLINED_FUNCTION_18_3(), (v25 & 1) != 0))
    {
      if (!__dst[15])
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_247_0(v25, v26, v27, v28, v29, v30, v31, v32, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], *&__dst[11]);
      v12 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v13 = &off_1F07E18A8;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v12, v13, v7, v8, v9, v10, v11, v46);
      sub_193494798(v14, v15, v16);
      return;
    }

    sub_19349AB64();
    v34 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_9_3(v34, v35);
    *(v36 + 40) = &type metadata for ToolKitToolAssistantTypeSchemaDefinition.Enumeration;
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_28_3(v37);
    OUTLINED_FUNCTION_322(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0]);
    OUTLINED_FUNCTION_26_0();

    sub_1936CCA34(__dst, &v46);
  }
}

uint64_t objectdestroy_165Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v1)
  {

    v2 = v0[11];
  }

  v3 = v0[12];

  if (v0[17])
  {
    v4 = v0[14];

    v5 = v0[16];

    v6 = v0[17];
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

id sub_1936CCAA8()
{
  OUTLINED_FUNCTION_16_32();
  v5 = v4;
  v6 = *v0;
  v8 = v7 == 7040629 && v3 == 0xE300000000000000;
  if (v8 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v9)
    {
LABEL_7:
      sub_19349AB64();
      v10 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v10, v11);
      *(v12 + 40) = &type metadata for ToolKitToolSystemToolProtocol;
      *(v12 + 16) = v6;
      OUTLINED_FUNCTION_23_2(v13, v12);
    }

    v15 = *(v6 + 16);
    goto LABEL_16;
  }

  v16 = v2 == 0x656C62616F646E75 && v1 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v17 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v18 = v2 == 0x536E6F6973736573 && v1 == 0xEF676E6974726174;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v19 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v21 = v2 == 0xD000000000000010 && v20 == v1;
  if (v21 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v22 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v24 = v2 == 0xD000000000000014 && v23 == v1;
  if (v24 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v25 != 4)
    {
      goto LABEL_7;
    }

    LOBYTE(__dst[0]) = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = &type metadata for ToolKitToolSystemToolProtocol.ConditionallyEnabled;
    v27 = &off_1F07E16A8;
    return sub_193494798(v26, v27, v5);
  }

  OUTLINED_FUNCTION_38();
  v29 = v2 == 0xD000000000000015 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v30 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v32 = v2 == 0xD000000000000013 && v31 == v1;
  if (v32 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v33 != 6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v189 = 0xD000000000000010;
  OUTLINED_FUNCTION_38();
  v35 = v2 == 0xD000000000000011 && v34 == v1;
  if (v35 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v36 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v37 = v2 == 7632227 && v1 == 0xE300000000000000;
  if (v37 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v38 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v39 = v2 == 0x746F725079706F63 && v1 == 0xEC0000006C6F636FLL;
  if (v39 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v40 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_311(1953718640);
  v41 = v8 && v1 == 0xE500000000000000;
  if (v41 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v42 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v43 = v2 == 0x6C65636E6163 && v1 == 0xE600000000000000;
  if (v43 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v44 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v45 = v2 == 0x657A69736572 && v1 == 0xE600000000000000;
  if (v45 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v46 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v47 = v2 == 0x6C6C6F726373 && v1 == 0xE600000000000000;
  if (v47 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v48 != 13)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v49 = v2 == 1868852853 && v1 == 0xE400000000000000;
  if (v49 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v50 != 14)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v51 = v2 == 1836019578 && v1 == 0xE400000000000000;
  if (v51 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v52 != 15)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v53 = v2 == 0x746E4565736F6C63 && v1 == 0xEB00000000797469;
  if (v53 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v54 != 16)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v55 = v2 == 0x6E45657461657263 && v1 == 0xEC00000079746974;
  if (v55 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v56 != 17)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v58 = v2 == 0x7469746E45747563 && v1 == v57 + 20;
  if (v58 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v59 != 18)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v60 = v2 == 0x6E456574656C6564 && v1 == 0xEC00000079746974;
  if (v60 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v61 != 19)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v62 = v2 == 0x746163696C707564 && v1 == 0xEF797469746E4565;
  if (v62 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v63 != 20)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_169_6(0x69726F766166);
  v65 = v8 && v1 == v64;
  if (v65 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v66 != 21)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v67 = v2 == 0x69746E456E65706FLL && v1 == 0xEA00000000007974;
  if (v67 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v68 != 22)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_158_2();
  v70 = v2 == 0x4577656976657270 && v1 == v69;
  if (v70 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v71 != 23)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v72 = v2 == 0x69746E4565766173 && v1 == 0xEA00000000007974;
  if (v72 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v73 != 24)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v75 = v2 == 0xD000000000000014 && v74 == v1;
  if (v75 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v76 != 25)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v79 = v2 == v78 && v1 == v77 + 10;
  if (v79 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v80 != 26)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.PlayVideo;
    v27 = &off_1F07E16B8;
    return sub_193494798(v26, v27, v5);
  }

  v81 = v2 == 0x6174536F69647561 && v1 == 0xED0000676E697472;
  if (v81 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v82 != 27)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v83 = v2 == 0x6365526F69647561 && v1 == 0xEE00676E6964726FLL;
  if (v83 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v84 != 28)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v86 = v2 == 0xD000000000000016 && v85 == v1;
  if (v86 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v87 != 29)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v88 = v2 == 0x7669447472617473 && v1 == 0xE900000000000065;
  if (v88 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v89 != 30)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v90 = v2 == 0x726F577472617473 && v1 == 0xEC00000074756F6BLL;
  if (v90 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v91 != 31)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v92 = v2 == 0x726F576573756170 && v1 == 0xEC00000074756F6BLL;
  if (v92 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v93 != 32)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_299();
  v95 = v2 == 0x6F57656D75736572 && v1 == v94;
  if (v95 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v96 != 33)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v97 = v2 == 0x72614D7265746E65 && v1 == 0xEB0000000070756BLL;
  if (v97 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v98 != 34)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v99 = v2 == 0x6B72614D74697865 && v1 == 0xEA00000000007075;
  if (v99 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v100 != 35)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v102 = v2 == 0xD000000000000012 && v101 == v1;
  if (v102 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v103 != 36)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v105 = v2 == 0xD000000000000013 && v104 == v1;
  if (v105 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v106 != 37)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v107 = v2 == OUTLINED_FUNCTION_50_20() && v1 == 0xE600000000000000;
  if (v107 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v108 != 38)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v110 = v2 == 0xD000000000000016 && v109 == v1;
  if (v110 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v111 != 39)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v113 = v2 == 0xD00000000000001CLL && v112 == v1;
  if (v113 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v114 != 40)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v116 = v2 == 0xD000000000000016 && v115 == v1;
  if (v116 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v117 != 41)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v119 = v2 == 0xD00000000000001CLL && v118 == v1;
  if (v119 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v120 != 42)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.ShowInAppStringSearchResults;
    v27 = &off_1F07E16C8;
    return sub_193494798(v26, v27, v5);
  }

  v121 = v2 == 0x7461705365766F6DLL && v1 == 0xEB000000006C6169;
  if (v121 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v122 != 43)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v124 = v2 == 0xD000000000000014 && v123 == v1;
  if (v124 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v125 != 44)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v126 = v2 == 0x676E697473 && v1 == 0xE500000000000000;
  if (v126 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v127 != 45)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v128 = v2 == 0x656C67676F74 && v1 == 0xE600000000000000;
  if (v128 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v129 != 46)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_84_1();
  v131 = v2 == 0x61436172656D6163 && v1 == v130;
  if (v131 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v132 != 47)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_39_25();
  v134 = v8 && v133 == v1;
  if (v134 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v135 != 48)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v137 = v2 == (OUTLINED_FUNCTION_85_17() & 0xFFFFFFFFFFFFLL | 0x7055000000000000) && v1 == v136;
  if (v137 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v138 != 49)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.EntityUpdating;
    v27 = &off_1F07E16D8;
    return sub_193494798(v26, v27, v5);
  }

  v140 = v2 == (OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x7974000000000000) && v1 == v139;
  if (v140 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v141 != 50)
    {
      goto LABEL_7;
    }

    v142 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x20);
    __dst[0] = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    __dst[1] = v142;
    v26 = &type metadata for ToolKitToolSystemToolProtocol.PropertyUpdater;
    v27 = &off_1F07E16E8;
    return sub_193494798(v26, v27, v5);
  }

  v143 = v2 == 0x6C69614D646E6573 && v1 == 0xE800000000000000;
  if (v143 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v144 != 51)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v146 = v2 == 0xD000000000000014 && v145 == v1;
  if (v146 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v147 != 52)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_299();
  v149 = v2 == 0x4974694B69726973 && v1 == v148;
  if (v149 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v150 != 53)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.SiriKitIntent;
    v27 = &off_1F07E16F8;
    return sub_193494798(v26, v27, v5);
  }

  OUTLINED_FUNCTION_38();
  v152 = v2 == v189 && v151 == v1;
  if (v152 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v153 != 54)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_104_10();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.IntentSideEffect;
    v27 = &off_1F07E1708;
    return sub_193494798(v26, v27, v5);
  }

  OUTLINED_FUNCTION_160_6();
  v155 = v8 && v1 == v154;
  if (v155 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v156 != 55)
    {
      goto LABEL_7;
    }

    memcpy(__dst, ((v6 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(__dst));
    memcpy(v187, __dst, sizeof(v187));
    v26 = &type metadata for ToolKitToolSystemToolProtocol.AssistantSchema;
    v27 = &off_1F07E1718;
    return sub_193494798(v26, v27, v5);
  }

  OUTLINED_FUNCTION_38();
  v158 = v2 == 0xD000000000000012 && v157 == v1;
  if (v158 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v159 != 56)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v161 = v2 == 0xD000000000000014 && v160 == v1;
  if (v161 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v162 != 57)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v164 = v2 == 0xD000000000000012 && v163 == v1;
  if (v164 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v165 != 58)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_117_3();
  v168 = v2 == v167 && v1 == v166 + 15;
  if (v168 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v169 != 59)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_225_1();
    v26 = &type metadata for ToolKitToolSystemToolProtocol.AppIntent;
    v27 = &off_1F07E1728;
    return sub_193494798(v26, v27, v5);
  }

  OUTLINED_FUNCTION_8_17();
  v171 = v8 && v170 == v1;
  if (v171 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_61();
    if (v172 != 60)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

  v173 = v2 == 0x69736568746E7973 && v1 == 0xEF6C6F6F5464657ALL;
  if (!v173 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_39_25();
    v176 = v8 && v175 == v1;
    if (v176 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      OUTLINED_FUNCTION_5_61();
      if (v177 != 62)
      {
        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v179 = v2 == 0xD000000000000014 && v178 == v1;
      if (v179 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
      {
        OUTLINED_FUNCTION_5_61();
        if (v180 != 63)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v182 = v2 == (OUTLINED_FUNCTION_98_13() | 0x7465536500000000) && v1 == v181;
        if (!v182 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          v185 = v2 == (OUTLINED_FUNCTION_85_17() & 0xFFFFFFFFFFFFLL | 0x6547000000000000) && v1 == v184;
          if (!v185 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            goto LABEL_7;
          }

          OUTLINED_FUNCTION_5_61();
          if (v186 != 65)
          {
            goto LABEL_7;
          }

LABEL_15:
          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
          *&__dst[0] = v15;
          return sub_1934948FC();
        }

        OUTLINED_FUNCTION_5_61();
        if (v183 != 64)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_60:
    OUTLINED_FUNCTION_104_10();
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_5_61();
  if (v174 != 61)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_10();
  v26 = &type metadata for ToolKitToolSystemToolProtocol.SynthesizedToolProtocol;
  v27 = &off_1F07E1738;
  return sub_193494798(v26, v27, v5);
}

void sub_1936CDB68()
{
  OUTLINED_FUNCTION_46_8();
  v3 = v2;
  OUTLINED_FUNCTION_57_0();
  v4 = *v0;
  v5 = v1 == 0x5374736973726570 && v3 == 0xEC00000065746174;
  if (v5 || (OUTLINED_FUNCTION_274_1() & 1) != 0)
  {
    if (v4 == 2)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v6 = OUTLINED_FUNCTION_13_9();
    *v7 = v1;
    *(v7 + 8) = v3;
    *(v7 + 40) = &type metadata for ToolKitToolSystemToolProtocol.ConditionallyEnabled;
    *(v7 + 16) = v4;
    OUTLINED_FUNCTION_23_2(v6, v7);
  }

  OUTLINED_FUNCTION_47_12();
}

uint64_t sub_1936CDF94()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v4 = v4 && v3 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      v5 = *(v0 + 16);
      return sub_1934948FC();
    }
  }

  else
  {
    v7 = v1 == 0x6645656469536F6ELL && v2 == 0xEC00000074636566;
    if (!v7 && (OUTLINED_FUNCTION_91_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_204_1();
      if (v1 == 0x6168436574617473 && v2 == v9)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_91_2() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_211_0();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      v14 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      return sub_1934948FC();
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      v8 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      return sub_1934948FC();
    }
  }

LABEL_26:
  sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_219_0(v11, v12);
  OUTLINED_FUNCTION_19_1(v13, &type metadata for ToolKitToolSystemToolProtocol.IntentSideEffect);
}

void sub_1936CE104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *, void *)@<X4>, uint64_t a5@<X8>)
{
  v32 = a4;
  v7 = v5;
  v11 = memcpy(__dst, v7, 0x50uLL);
  v17 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v17 || (OUTLINED_FUNCTION_154(), v11 = sub_19393CA30(), (v11 & 1) != 0))
  {
    if (__dst[1] == 1)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      v26[0] = __dst[0];
      v26[1] = __dst[1];
      v18 = v7[2];
      v27 = v7[1];
      v28 = v18;
      v19 = v7[4];
      v29 = v7[3];
      v30 = v19;
      OUTLINED_FUNCTION_77_2(v11, &type metadata for ToolKitToolAssistantSchemaIdentifier, &off_1F07E1648, v12, v13, v14, v15, v16, v25, __dst[0]);
      sub_193494798(v20, v21, v22);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_265_0();
    *v23 = a1;
    v23[1] = a2;
    v23[5] = a3;
    OUTLINED_FUNCTION_137_7();
    v24 = swift_allocObject();
    *(a5 + 16) = v24;
    memcpy((v24 + 16), __dst, 0x50uLL);
    OUTLINED_FUNCTION_179_4();

    v32(__dst, v26);
  }
}

uint64_t objectdestroy_8Tm()
{
  OUTLINED_FUNCTION_309();
  if (!v1)
  {

    v2 = *(v0 + 88);
  }

  v3 = OUTLINED_FUNCTION_115_10();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1936CE500()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v3, 0x278uLL);
  v4 = v2 == 25705 && v1 == 0xE200000000000000;
  if (!v4)
  {
    OUTLINED_FUNCTION_252_0();
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_108_12();
      v7 = v4 && v1 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_17_35(), (OUTLINED_FUNCTION_31_3() & 1) != 0))
      {
        v5 = *(&__dst[1] + 1);
        if (*(&__dst[1] + 1))
        {
          v6 = *&__dst[1];
          goto LABEL_8;
        }

LABEL_23:
        OUTLINED_FUNCTION_36_4();
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_152_8(0x6C6F6F74u);
      v8 = v4 && v1 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
      {
        if ((BYTE9(__dst[2]) & 1) == 0)
        {
          *v65 = *&__dst[2];
          v65[8] = BYTE8(__dst[2]) & 1;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      v9 = v2 == OUTLINED_FUNCTION_11_41() && v1 == 0xEA00000000007372;
      if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v10 = *&__dst[3];
LABEL_32:
        *v65 = v10;
        v11 = &unk_1EAE40878;
        v12 = &unk_19397DF80;
LABEL_33:
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_107_11();
      v13 = v4 && v1 == 0xEA00000000006570;
      if (v13 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
      {
        OUTLINED_FUNCTION_66_21();
        if (v4)
        {
          goto LABEL_23;
        }

        *v65 = v14;
        v15 = &type metadata for ToolKitToolTypeInstance;
        v16 = &off_1F07E12F8;
LABEL_41:
        sub_193494798(v15, v16, v0);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_38();
      v18 = v2 == 0xD000000000000010 && v17 == v1;
      if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v5 = *(&__dst[4] + 1);
        if (*(&__dst[4] + 1))
        {
          v6 = *&__dst[4];
          goto LABEL_8;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_38();
      v20 = v2 == 0xD000000000000011 && v19 == v1;
      if (v20 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
      {
        if (!*(&__dst[11] + 1))
        {
          goto LABEL_23;
        }

        memcpy(v65, (v3 + 80), sizeof(v65));
        v66 = *(&__dst[11] + 1);
        v15 = &type metadata for ToolKitToolAppDefinition;
        v16 = &off_1F07E1868;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_38();
      v22 = v2 == 0xD000000000000012 && v21 == v1;
      if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v5 = *(&__dst[12] + 1);
        if (*(&__dst[12] + 1))
        {
          v6 = *&__dst[12];
          goto LABEL_8;
        }

        goto LABEL_23;
      }

      v23 = v2 == 0x69726F6765746163 && v1 == 0xEA00000000007365;
      if (v23 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        *v65 = *&__dst[13];
        v11 = &unk_1EAE408A0;
        v12 = &unk_19397DF98;
        goto LABEL_33;
      }

      v25 = v2 == (OUTLINED_FUNCTION_50_20() & 0xFFFFFFFFFFFFLL | 0x654B000000000000) && v1 == v24;
      if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v26 = *(&__dst[13] + 1);
LABEL_75:
        *v65 = v26;
        v11 = &qword_1EAE3ABB0;
        v12 = &qword_193950BB8;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_38();
      v28 = v2 == 0xD000000000000015 && v27 == v1;
      if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if (*(&__dst[14] + 1) == 1)
        {
          goto LABEL_23;
        }

        *v65 = __dst[14];
        *&v65[16] = __dst[15];
        v15 = &type metadata for ToolKitToolToolDefinition.Version1.Deprecation;
        v16 = &off_1F07E1858;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_170_4();
      v30 = v4 && v1 == v29;
      if (v30 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        *v65 = *&__dst[16];
        v11 = &unk_1EAE40800;
        v12 = &unk_19397DF08;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_151_7();
      v31 = v4 && v1 == 0xE500000000000000;
      if (v31 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
      {
        *v65 = *(&__dst[16] + 1);
        v11 = &unk_1EAE40898;
        v12 = &unk_193985590;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_38();
      v33 = v2 == 0xD000000000000014 && v32 == v1;
      if (v33 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if ((BYTE9(__dst[17]) & 1) == 0)
        {
          *v65 = *&__dst[17];
          v65[8] = BYTE8(__dst[17]) & 1;
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_38();
      v35 = v2 == 0xD000000000000011 && v34 == v1;
      if (v35 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
      {
        *v65 = *&__dst[18];
        v11 = &unk_1EAE407F8;
        v12 = &unk_19397DF00;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_41_22();
      v37 = v4 && v1 == v36;
      if (v37 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        *v65 = *(&__dst[18] + 1);
        v11 = &unk_1EAE40890;
        v12 = &unk_19397DF90;
        goto LABEL_33;
      }

      v38 = v2 == 0x63496D6F74737563 && v1 == 0xEA00000000006E6FLL;
      if (v38 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        OUTLINED_FUNCTION_66_21();
        if (v4)
        {
          goto LABEL_23;
        }

        *v65 = v39;
        v15 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon;
        v16 = &off_1F07E1828;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_8_17();
      v41 = v4 && v40 == v1;
      if (v41 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v10 = *(&__dst[19] + 1);
        goto LABEL_32;
      }

      v42 = v2 == 0x6F43656372756F73 && v1 == 0xEF72656E6961746ELL;
      if (v42 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        v43 = *(&__dst[26] + 1);
        if (!*(&__dst[26] + 1))
        {
          goto LABEL_23;
        }

        v44 = (v3 + 320);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v46 = v2 == 0xD000000000000014 && v45 == v1;
        if (!v46 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          v47 = v2 == 0x696C696269736976 && v1 == 0xEF7367616C467974;
          if (v47 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
          {
            *v65 = *&__dst[34];
            v11 = &unk_1EAE40888;
            v12 = &unk_193985670;
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_38();
          v49 = v2 == 0xD000000000000016 && v48 == v1;
          if (v49 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
          {
            v5 = *&__dst[35];
            if (*&__dst[35])
            {
              v6 = *(&__dst[34] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v51 = v2 == 0xD000000000000011 && v50 == v1;
          if (v51 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
          {
            v5 = *&__dst[36];
            if (*&__dst[36])
            {
              v6 = *(&__dst[35] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_43_17();
          v53 = v4 && v1 == v52;
          if (v53 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
          {
            v5 = *&__dst[37];
            if (*&__dst[37])
            {
              v6 = *(&__dst[36] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v55 = v2 == 0xD000000000000013 && v54 == v1;
          if (v55 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
          {
            v5 = *&__dst[38];
            if (*&__dst[38])
            {
              v6 = *(&__dst[37] + 1);
              goto LABEL_8;
            }

            goto LABEL_23;
          }

          OUTLINED_FUNCTION_38();
          v57 = v2 == 0xD00000000000001CLL && v56 == v1;
          if (!v57 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
          {
            OUTLINED_FUNCTION_38();
            v59 = v2 == 0xD00000000000001FLL && v58 == v1;
            if (!v59 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
            {
              sub_19349AB64();
              v60 = OUTLINED_FUNCTION_13_9();
              OUTLINED_FUNCTION_9_3(v60, v61);
              *(v62 + 40) = &type metadata for ToolKitToolToolDefinition.Version1;
              v63 = swift_allocObject();
              v64 = OUTLINED_FUNCTION_28_3(v63);
              memcpy(v64, __dst, 0x278uLL);
              OUTLINED_FUNCTION_26_0();

              sub_19349D51C(__dst, v65);
              goto LABEL_24;
            }

            *v65 = *&__dst[39];
            v11 = &unk_1EAE40880;
            v12 = &unk_19397DF88;
            goto LABEL_33;
          }

          v26 = *(&__dst[38] + 1);
          goto LABEL_75;
        }

        v43 = *(&__dst[33] + 1);
        if (!*(&__dst[33] + 1))
        {
          goto LABEL_23;
        }

        v44 = (v3 + 432);
      }

      memcpy(v65, v44, sizeof(v65));
      v66 = v43;
      v15 = &type metadata for ToolKitToolContainerDefinition;
      v16 = &off_1F07E1888;
      goto LABEL_41;
    }
  }

  v5 = *(&__dst[0] + 1);
  if (!*(&__dst[0] + 1))
  {
    goto LABEL_23;
  }

  v6 = *&__dst[0];
LABEL_8:
  *v65 = v6;
  *&v65[8] = v5;
LABEL_9:
  sub_1934948FC();
LABEL_24:
  OUTLINED_FUNCTION_27();
}

void sub_1936CEC84()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 7955819 && v0 == 0xE300000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_37_26(), (v3 & 1) != 0))
  {
    v11 = *&__dst[8];
    if (*&__dst[8])
    {
      v12 = *__dst;
LABEL_8:
      *&v47 = v12;
      *(&v47 + 1) = v11;
      v13 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v13, v4, v5, v6, v7, v8, v9, v47);
      sub_1934948FC();
      return;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_108_12();
  v14 = v10 && v0 == 0xE400000000000000;
  if (v14 || (OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(), (v3 & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_84_12();
  v3 = OUTLINED_FUNCTION_43_17();
  v16 = v10 && v0 == v15;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = *&__dst[40];
    if (*&__dst[40])
    {
      v12 = *&__dst[32];
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_117_3();
  v18 = v1 == (OUTLINED_FUNCTION_98_13() | 0x7079546500000000) && v0 == v17;
  if (v18 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      *&v47 = v25;
      v26 = &type metadata for ToolKitToolTypeInstance;
      v27 = &off_1F07E12F8;
LABEL_32:
      OUTLINED_FUNCTION_52_2(v19, v26, v27, v20, v21, v22, v23, v24, v47);
      sub_193494798(v28, v29, v30);
      return;
    }

    goto LABEL_31;
  }

  v32 = v1 == OUTLINED_FUNCTION_89_14() && v0 == v31;
  if (v32 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    *&v47 = *&__dst[56];
    v33 = &unk_1EAE408B0;
    v34 = &unk_19397DFA0;
LABEL_39:
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    v13 = v3;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v36 = v10 && v35 == v0;
  if (v36 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    *&v47 = *&__dst[64];
    v33 = &unk_1EAE407F8;
    v34 = &unk_19397DF00;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_151_7();
  v37 = v10 && v0 == 0xE500000000000000;
  if (v37 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    *&v47 = *&__dst[72];
    v33 = &unk_1EAE408A8;
    v34 = &unk_193985830;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_38();
  v19 = v39 + 1;
  v40 = v1 == v39 + 1 && v38 == v0;
  if (v40 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    if (*&__dst[96])
    {
      v47 = *&__dst[80];
      *&v48 = *&__dst[96];
      v26 = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.ToolMetadata;
      v27 = &off_1F07E17F8;
      goto LABEL_32;
    }

LABEL_31:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v19 = 0x4D6E61656C6F6F62;
  v41 = v1 == 0x4D6E61656C6F6F62 && v0 == 0xEF61746164617465;
  if (v41 || (v19 = OUTLINED_FUNCTION_5_5(), (v19 & 1) != 0))
  {
    if (*&__dst[112] != 1)
    {
      v47 = *&__dst[104];
      v48 = *&__dst[120];
      v26 = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.BooleanMetadata;
      v27 = &off_1F07E1808;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  sub_19349AB64();
  v42 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v42, v43);
  *(v44 + 40) = &type metadata for ToolKitToolToolDefinition.Version1.Parameter;
  OUTLINED_FUNCTION_288_0();
  v45 = swift_allocObject();
  v46 = OUTLINED_FUNCTION_28_3(v45);
  memcpy(v46, __dst, 0x88uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936CEFA0(__dst, &v47);
}

void sub_1936CF014()
{
  OUTLINED_FUNCTION_162_7();
  v10 = *v0;
  v9 = v0[1];
  v12 = v1 == v11 && v2 == 0xE300000000000000;
  if (v12 || (v13 = v2, v14 = v1, v15 = v0[2], OUTLINED_FUNCTION_88_14(), v1 = OUTLINED_FUNCTION_44_0(), (v1 & 1) != 0))
  {
    if (v9)
    {
      OUTLINED_FUNCTION_53_2(v1, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, v10);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_35();
    return;
  }

  v16 = v14 == OUTLINED_FUNCTION_89_14() && v13 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_44_0() & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v12)
    {
      OUTLINED_FUNCTION_53_2(v17, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation, &off_1F07E1788, v18, v19, v20, v21, v22, v15);
      sub_193494798(v23, v24, v25);
      return;
    }

    goto LABEL_15;
  }

  sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9();
  *v27 = v14;
  v27[1] = v13;
  v27[2] = v10;
  v27[3] = v9;
  v27[4] = v15;
  v27[5] = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship;
  OUTLINED_FUNCTION_23_2(v26, v27);

  sub_193437C90(v15);
}

id sub_1936CFA1C()
{
  OUTLINED_FUNCTION_16_32();
  v3 = v2;
  OUTLINED_FUNCTION_113_10();
  v5 = v5 && v4 == 0xED00007465737341;
  if (v5 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      v18 = *(v0 + 16);
      v20 = *(v0 + 24);
      return sub_1934948FC();
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_302_0();
  v7 = v5 && v1 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (!v5)
    {
      goto LABEL_26;
    }

    v14 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v8 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon;
    v9 = &off_1F07E1838;
    return sub_193494798(v8, v9, v3);
  }

  OUTLINED_FUNCTION_206_0(0x6E7265747865);
  if (!v5 || v1 != 0xED00007465737341)
  {
    if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_211_0();
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_42_10();
  if (v5)
  {
LABEL_23:
    v19 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v8 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolExternalAsset;
    v9 = &off_1F07E1848;
    return sub_193494798(v8, v9, v3);
  }

LABEL_26:
  sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v11, v12);
  OUTLINED_FUNCTION_19_1(v13, &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon);
}

void sub_1936CFBC0()
{
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_138_6();
  OUTLINED_FUNCTION_245_1();
  v8 = v8 && v1 == 0xE400000000000000;
  if (v8 || (v9 = v1, OUTLINED_FUNCTION_17_35(), v0 = OUTLINED_FUNCTION_31_3(), (v0 & 1) != 0))
  {
    v10 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v11 = v23;
LABEL_8:
      v22[0] = v11;
      v22[1] = v10;
      v12 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_53_2(v0, v12, v2, v3, v4, v5, v6, v7, v22[0]);
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_311(1819898995);
  v13 = v8 && v9 == 0xE500000000000000;
  if (v13 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    if ((BYTE9(v24) & 1) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v12 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle;
      goto LABEL_9;
    }

LABEL_16:
    OUTLINED_FUNCTION_35();
    return;
  }

  v0 = OUTLINED_FUNCTION_284_0(0x726765726F66);
  v14 = v8 && v9 == 0xEA0000000000646ELL;
  if (v14 || (v0 = OUTLINED_FUNCTION_23_37(), (v0 & 1) != 0))
  {
    v10 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      v11 = v25;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v0 = OUTLINED_FUNCTION_284_0(0x72676B636162);
  v15 = v8 && v9 == 0xEA0000000000646ELL;
  if (v15 || (v0 = OUTLINED_FUNCTION_23_37(), (v0 & 1) != 0))
  {
    v10 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v11 = v26;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  sub_19349AB64();
  v16 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v16, v17);
  *(v18 + 40) = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon;
  OUTLINED_FUNCTION_323();
  v19 = swift_allocObject();
  MEMORY[0xEA0000000000647E] = v19;
  v20 = v26;
  v19[3] = v25;
  v19[4] = v20;
  v21 = v24;
  v19[1] = v23;
  v19[2] = v21;
  OUTLINED_FUNCTION_26_0();

  sub_1936CFD60(&v23, v22);
}

uint64_t objectdestroy_2Tm_3(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1936D00A4()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 25705 && v0 == 0xE200000000000000;
  if (v10 || (OUTLINED_FUNCTION_252_0(), v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v11 = __dst[0];
LABEL_8:
      v47 = v11;
      v12 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v12, v4, v5, v6, v7, v8, v9, v47);
      sub_1934948FC();
      return;
    }

    goto LABEL_45;
  }

  OUTLINED_FUNCTION_108_12();
  v13 = v10 && v0 == 0xE400000000000000;
  if (v13 || (OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v11 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = 0x6449656C646E7562;
  v14 = v1 == 0x6449656C646E7562 && v0 == 0xE800000000000000;
  if (v14 || (v3 = OUTLINED_FUNCTION_0_66(), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v11 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = OUTLINED_FUNCTION_140_7();
  v16 = v10 && v0 == v15;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    if (__dst[7])
    {
      v11 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = OUTLINED_FUNCTION_291();
  v17 = v10 && v0 == 0xE600000000000000;
  if (v17 || (v3 = OUTLINED_FUNCTION_24_37(), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v11 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v18 = v1 == OUTLINED_FUNCTION_232() && v0 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      OUTLINED_FUNCTION_52_2(v19, &type metadata for ToolKitToolAppDefinition.Device, &off_1F07E1878, v20, v21, v22, v23, v24, v25);
      sub_193494798(v26, v27, v28);
      return;
    }

    goto LABEL_45;
  }

  OUTLINED_FUNCTION_290_0();
  v29 = v10 && v0 == 0xE600000000000000;
  if (v29 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    if ((__dst[12] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v12 = &type metadata for ToolKitToolAppDefinition.Origin;
      goto LABEL_9;
    }

LABEL_45:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v30 = v1 == OUTLINED_FUNCTION_91_12() && v0 == 0xE800000000000000;
  if (v30 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v47 = __dst[13];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v12 = v3;
    goto LABEL_9;
  }

  sub_19349AB64();
  v31 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v31, v32);
  *(v33 + 40) = &type metadata for ToolKitToolAppDefinition;
  OUTLINED_FUNCTION_136_6();
  v34 = swift_allocObject();
  v35 = OUTLINED_FUNCTION_61_19(v34);
  memcpy(v35, v36, 0x70uLL);
  OUTLINED_FUNCTION_26_0();

  v45 = OUTLINED_FUNCTION_188_3(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, __dst[0]);
  sub_1936D02FC(v45, v46);
}

void sub_1936D0390()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 1701667182 && v0 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v11 = __dst[0];
LABEL_8:
      v48 = v11;
      v12 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v12, v4, v5, v6, v7, v8, v9, v48);
      sub_1934948FC();
      return;
    }

    goto LABEL_30;
  }

  v13 = v1 == 0x656E6961746E6F63 && v0 == 0xEB00000000644972;
  if (v13 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v11 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v3 = OUTLINED_FUNCTION_140_7();
  v15 = v10 && v0 == v14;
  if (v15 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v11 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_84_1();
  v17 = v1 == 0x656E6961746E6F63 && v0 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[7] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v12 = &type metadata for ToolKitToolContainerDefinition.Type;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  v3 = OUTLINED_FUNCTION_291();
  v18 = v10 && v0 == 0xE600000000000000;
  if (v18 || (v3 = OUTLINED_FUNCTION_24_37(), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v11 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v19 = v1 == OUTLINED_FUNCTION_232() && v0 == 0xE600000000000000;
  if (v19 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      OUTLINED_FUNCTION_52_2(v20, &type metadata for ToolKitToolContainerDefinition.Device, &off_1F07E1898, v21, v22, v23, v24, v25, v26);
      sub_193494798(v27, v28, v29);
      return;
    }

LABEL_30:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_290_0();
  v30 = v10 && v0 == 0xE600000000000000;
  if (v30 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    if ((__dst[12] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v12 = &type metadata for ToolKitToolContainerDefinition.Origin;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  v31 = v1 == OUTLINED_FUNCTION_91_12() && v0 == 0xE800000000000000;
  if (v31 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v48 = __dst[13];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v12 = v3;
    goto LABEL_9;
  }

  sub_19349AB64();
  v32 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v32, v33);
  *(v34 + 40) = &type metadata for ToolKitToolContainerDefinition;
  OUTLINED_FUNCTION_136_6();
  v35 = swift_allocObject();
  v36 = OUTLINED_FUNCTION_61_19(v35);
  memcpy(v36, v37, 0x70uLL);
  OUTLINED_FUNCTION_26_0();

  v46 = OUTLINED_FUNCTION_188_3(v38, v39, v40, v41, v42, v43, v44, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, __dst[0]);
  sub_1936D0610(v46, v47);
}

void sub_1936D079C()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_138_6();
  v4 = *v0;
  v3 = v0[1];
  v6 = v1 == v5 && v2 == 0xE400000000000000;
  if (v6 || (v7 = v2, v8 = v1, v10 = v0[2], v9 = v0[3], v11 = v0[4], OUTLINED_FUNCTION_46_18(), (OUTLINED_FUNCTION_27_18() & 1) != 0))
  {
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_14:
    OUTLINED_FUNCTION_131_8();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_299();
  v13 = v8 == 0x46636972656D756ELL && v7 == v12;
  if (!v13 && (OUTLINED_FUNCTION_27_18() & 1) == 0)
  {
    v14 = v8 == OUTLINED_FUNCTION_91_12() && v7 == 0xE800000000000000;
    if (!v14 && (OUTLINED_FUNCTION_27_18() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v16 = v15;
      *v15 = v8;
      v15[1] = v7;
      v15[5] = &type metadata for ToolKitToolTypeDisplayRepresentation;
      OUTLINED_FUNCTION_28_1();
      v17 = swift_allocObject();
      v16[2] = v17;
      v17[2] = v4;
      v17[3] = v3;
      v17[4] = v10;
      v17[5] = v9;
      v17[6] = v11;
      *(v16 + 48) = 1;
      swift_willThrow();

      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_7:
  OUTLINED_FUNCTION_26_27();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_1936D0938()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_315();
  v3 = OUTLINED_FUNCTION_26_28();
  v6 = *v0;
  v5 = v0[1];
  if (v2 != v3 || v4 != 0xE500000000000000)
  {
    v8 = v4;
    v10 = v0[2];
    v9 = v0[3];
    if ((OUTLINED_FUNCTION_67() & 1) == 0)
    {
      OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_168();
      if (v2 != v12 || v11 != v8)
      {
        OUTLINED_FUNCTION_27_0();
        if ((OUTLINED_FUNCTION_67() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_126_6();
          *v14 = v2;
          v14[1] = v8;
          v14[5] = &type metadata for ToolKitToolPluginModelData;
          OUTLINED_FUNCTION_95();
          v15 = swift_allocObject();
          *(v1 + 16) = v15;
          v15[2] = v6;
          v15[3] = v5;
          v15[4] = v10;
          v15[5] = v9;
          OUTLINED_FUNCTION_48_4();
          swift_willThrow();

          sub_193450268(v6, v5);

          goto LABEL_16;
        }
      }

      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_26_27();
      goto LABEL_16;
    }
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_131_8();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

uint64_t objectdestroy_109Tm()
{
  v1 = v0[3];
  OUTLINED_FUNCTION_29_7();
  if (!(!v4 & v3))
  {
    sub_193446A6C(v0[2], v2);
  }

  v5 = v0[5];

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

void sub_1936D0AD0()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v77, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108);
  v17 = v1 == 0x656C746974 && v0 == 0xE500000000000000;
  if (v17 || (v10 = OUTLINED_FUNCTION_1_31(), (v10 & 1) != 0))
  {
    if (v111)
    {
      v79 = v109;
      v18 = MEMORY[0x1E69E6158];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v10, v18, v11, v12, v13, v14, v15, v16, v79);
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  v19 = v1 == 0x656C746974627573 && v0 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v20, &type metadata for ToolKitToolDisplayRepresentation.Subtitle, &off_1F07E1908, v21, v22, v23, v24, v25, v26);
LABEL_17:
      sub_193494798(v27, v28, v29);
      return;
    }

    goto LABEL_16;
  }

  v30 = v1 == 0x74786554746C61 && v0 == 0xE700000000000000;
  if (v30 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v31, &type metadata for ToolKitToolDisplayRepresentation.AltText, &off_1F07E1928, v32, v33, v34, v35, v36, v37);
      goto LABEL_17;
    }

LABEL_16:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_311(1734438249);
  v38 = v17 && v0 == 0xE500000000000000;
  if (v38 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v39, &type metadata for ToolKitToolDisplayRepresentation.Image, &off_1F07E1948, v40, v41, v42, v43, v44, v45);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v46 = v1 == OUTLINED_FUNCTION_91_12() && v0 == 0xE800000000000000;
  if (v46 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v79 = v112;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v18 = v10;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_34_21();
  v54 = v17 && v48 == v0;
  if (v54 || (v47 = OUTLINED_FUNCTION_18_3(), (v47 & 1) != 0))
  {
    if (v114 != 1)
    {
      OUTLINED_FUNCTION_52_2(v47, &type metadata for ToolKitToolPluginModelData, &off_1F07E18B8, v49, v50, v51, v52, v53, v113);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_19349AB64();
  v55 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v55, v56);
  *(v57 + 40) = &type metadata for ToolKitToolDisplayRepresentation;
  OUTLINED_FUNCTION_137_7();
  v58 = swift_allocObject();
  v59 = OUTLINED_FUNCTION_28_3(v58);
  OUTLINED_FUNCTION_282_0(v59, v60, v61, v62, v63, v64, v65, v66, v78, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109);
  OUTLINED_FUNCTION_26_0();

  v75 = OUTLINED_FUNCTION_270_0(v67, v68, v69, v70, v71, v72, v73, v74, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110);
  sub_1936D0D2C(v75, v76);
}

void sub_1936D0DA0()
{
  OUTLINED_FUNCTION_46_8();
  OUTLINED_FUNCTION_296_0();
  v4 = *v0;
  v3 = v0[1];
  v6 = v1 == v5 && v2 == 0xE400000000000000;
  if (v6 || (v7 = v2, v8 = v1, OUTLINED_FUNCTION_148_6(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    OUTLINED_FUNCTION_186_2();
    if (!v6 & v9)
    {
      OUTLINED_FUNCTION_131_8();
    }

    else
    {
      OUTLINED_FUNCTION_26_27();
    }
  }

  else
  {
    sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9();
    *v11 = v8;
    v11[1] = v7;
    v11[5] = &type metadata for ToolKitToolDisplayRepresentation.Storage;
    v11[2] = v4;
    v11[3] = v3;
    OUTLINED_FUNCTION_23_2(v10, v11);

    sub_193450268(v4, v3);
  }

  OUTLINED_FUNCTION_47_12();
}

void sub_1936D0E84()
{
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_171_3();
  OUTLINED_FUNCTION_245_1();
  v2 = v2 && v1 == 0xE400000000000000;
  if (v2 || (v3 = v1, v4 = v0, (OUTLINED_FUNCTION_27_28() & 1) != 0))
  {
    if (BYTE9(v41))
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_53_2(v5, &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum, v6, v7, v8, v9, v10, v11, v39);
      sub_1934948FC();
    }
  }

  else
  {
    v12 = v4 == 2038063468 && v3 == 0xE400000000000000;
    if (v12 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
    {
      v40 = *(&v42 + 1);
      v13 = sub_193450268(v42, *(&v42 + 1));
      OUTLINED_FUNCTION_53_2(v13, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v14, v15, v16, v17, v18, v42);
      sub_193494798(v19, v20, v21);
      sub_19345012C(v39, *(&v42 + 1));
    }

    else
    {
      OUTLINED_FUNCTION_63_14();
      v23 = v2 && v3 == v22;
      if (v23 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
      {
        v40 = *(&v43 + 1);
        sub_1936D1084(v43, *(&v43 + 1), v44, *(&v44 + 1));
        OUTLINED_FUNCTION_53_2(v24, &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.Static, &off_1F07E18F8, v25, v26, v27, v28, v29, v43);
        sub_193494798(v30, v31, v32);
        sub_1936D10D0(v39, *(&v43 + 1), v44, *(&v44 + 1));
      }

      else
      {
        sub_19349AB64();
        v33 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_9_3(v33, v34);
        *(v35 + 40) = &type metadata for ToolKitToolDisplayRepresentation.DisplayValue;
        OUTLINED_FUNCTION_323();
        v36 = swift_allocObject();
        MEMORY[0xE400000000000010] = v36;
        v37 = v44;
        v36[3] = v43;
        v36[4] = v37;
        v38 = v42;
        v36[1] = v41;
        v36[2] = v38;
        OUTLINED_FUNCTION_26_0();

        sub_1936D1028(&v41, &v39);
      }
    }
  }
}

void sub_1936D1084(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_193450688(a3, a4);
  }
}

void sub_1936D10D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_193446A6C(a3, a4);
  }
}

void sub_1936D1134(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_26_28();
  v8 = *v2;
  v7 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = a1 == v5 && v6 == 0xE500000000000000;
  if (v11 || (v12 = v6, (OUTLINED_FUNCTION_42_9() & 1) != 0))
  {
    if (v7)
    {
      sub_193494798(&type metadata for ToolKitToolAny, &off_1F07E0F78, a2);
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v14 = v13;
    *v13 = a1;
    v13[1] = v12;
    v13[5] = &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.Static;
    OUTLINED_FUNCTION_95();
    v15 = swift_allocObject();
    v14[2] = v15;
    v15[2] = v8;
    v15[3] = v7;
    v15[4] = v10;
    v15[5] = v9;
    *(v14 + 48) = 1;
    swift_willThrow();

    sub_1936D1084(v8, v7, v10, v9);
  }
}

id sub_1936D12C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_191_2();
  v12 = v12 && v9 == 0xE400000000000000;
  if (v12 || (v13 = v11, v14 = v10, (OUTLINED_FUNCTION_324() & 1) != 0))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_53_2(v15, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v16, v17, v18, v19, v20, v37);
      return sub_193494798(v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_14();
    v26 = v12 && a2 == v25;
    if (v26 || (OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_324() & 1) != 0))
    {
      if (v5 < 0)
      {
        OUTLINED_FUNCTION_303((v5 & 0x7FFFFFFFFFFFFFFFLL));
        OUTLINED_FUNCTION_53_2(v29, v30, v31, v32, v33, v34, v35, v36, v37);
        v21 = v14;
        v22 = v13;
        return sub_193494798(v21, v22, v23);
      }
    }
  }

  sub_19349AB64();
  v27 = OUTLINED_FUNCTION_13_9();
  *v28 = v6;
  v28[1] = a2;
  v28[5] = a5;
  OUTLINED_FUNCTION_28_25(v27, v28);
}

void sub_1936D140C()
{
  OUTLINED_FUNCTION_321();
  v2 = OUTLINED_FUNCTION_26_28();
  v6 = *v0;
  v5 = v0[1];
  v7 = v1 == v2 && v3 == 0xE500000000000000;
  if (v7 || (v8 = v4, v9 = v3, (sub_19393CA30() & 1) != 0))
  {
    if (v5)
    {
      OUTLINED_FUNCTION_26_27();
    }

    else
    {
      OUTLINED_FUNCTION_131_8();
    }
  }

  else
  {
    sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9();
    *v11 = v1;
    v11[1] = v9;
    v11[5] = v8;
    v11[2] = v6;
    v11[3] = v5;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }
}

id sub_1936D1508()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_91_2() & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_102_14(v4, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v5, v6, v7, v8, v9, v25);
      return sub_193494798(v10, v11, v12);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_63_14();
    v21 = v3 && v1 == v20;
    if (v21 || (OUTLINED_FUNCTION_68_18(), v14 = OUTLINED_FUNCTION_124_3(), (v14 & 1) != 0))
    {
      if (v0 < 0)
      {
        OUTLINED_FUNCTION_102_14(v14, &type metadata for ToolKitToolDisplayRepresentation.Image.Static, &off_1F07E1958, v15, v16, v17, v18, v19, *((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v10, v11, v12);
      }
    }
  }

  sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_219_0(v22, v23);
  OUTLINED_FUNCTION_19_1(v24, &type metadata for ToolKitToolDisplayRepresentation.Image);
}

id sub_1936D1620()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_191_2();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_297();
      v11 = MEMORY[0x1E6969080];
LABEL_8:
      OUTLINED_FUNCTION_53_2(v4, v11, v5, v6, v7, v8, v9, v10, v28);
      return sub_1934948FC();
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_302_0();
  v13 = v3 && v1 == 0xE600000000000000;
  if (!v13 && (OUTLINED_FUNCTION_24_37() & 1) == 0)
  {
    OUTLINED_FUNCTION_144_6();
    if (v3 && v1 == 0xE400000000000000)
    {
      OUTLINED_FUNCTION_42_10();
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((OUTLINED_FUNCTION_27_28() & 1) == 0)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_211_0();
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_269_0(v0 & 0x3FFFFFFFFFFFFFFFLL);
    v11 = MEMORY[0x1E69E6158];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    OUTLINED_FUNCTION_226_1();
    v29 = *(v14 + 48);
    OUTLINED_FUNCTION_53_2(v15, &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol, &off_1F07E1968, v16, v17, v18, v19, v20, v28);
    return sub_193494798(v21, v22, v23);
  }

LABEL_26:
  sub_19349AB64();
  v25 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v25, v26);
  OUTLINED_FUNCTION_19_1(v27, &type metadata for ToolKitToolDisplayRepresentation.Image.Static);
}

void sub_1936D177C()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  OUTLINED_FUNCTION_138_6();
  v5 = *v0;
  v6 = v0[1];
  v8 = v3 == v7 && v4 == 0xE400000000000000;
  if (!v8)
  {
    v9 = v4;
    v10 = v3;
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = v0[5];
    v23 = v13;
    OUTLINED_FUNCTION_46_18();
    if ((OUTLINED_FUNCTION_117_2() & 1) == 0)
    {
      v15 = v10 == 0x6F6C6F43746E6974 && v9 == 0xED00006174614472;
      if (v15 || (OUTLINED_FUNCTION_117_2() & 1) != 0)
      {
        if (v11 >> 60 != 15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_168();
        v18 = v10 == v17 && v16 == v9;
        if (!v18 && (OUTLINED_FUNCTION_117_2() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          v21 = v20;
          *v20 = v10;
          v20[1] = v9;
          v20[5] = &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol;
          OUTLINED_FUNCTION_133();
          v22 = swift_allocObject();
          v21[2] = v22;
          v22[2] = v5;
          v22[3] = v6;
          v22[4] = v12;
          v22[5] = v11;
          v22[6] = v23;
          v22[7] = v14;
          *(v21 + 48) = 1;
          swift_willThrow();

          sub_193450268(v12, v11);
          sub_193450268(v23, v14);
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_186_2();
        if (!(!v8 & v19))
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      *v2 = 0u;
      v2[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1936D1A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19349AB64();
  v6 = OUTLINED_FUNCTION_13_9();
  *v7 = a1;
  v7[1] = a2;
  v7[5] = a3;
  OUTLINED_FUNCTION_23_2(v6, v7);
}

void sub_1936D1B10()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v62, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
  v17 = v1 == 25705 && v0 == 0xE200000000000000;
  if (v17 || (OUTLINED_FUNCTION_252_0(), v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    if (v96)
    {
      v18 = v94;
LABEL_8:
      v64 = v18;
      v19 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v10, v19, v11, v12, v13, v14, v15, v16, v64);
      sub_1934948FC();
      return;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_108_12();
  v20 = v17 && v0 == 0xE400000000000000;
  if (v20 || (OUTLINED_FUNCTION_17_35(), v10 = OUTLINED_FUNCTION_31_3(), (v10 & 1) != 0))
  {
    if (v98)
    {
      v18 = v97;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_84_12();
  v10 = OUTLINED_FUNCTION_43_17();
  v22 = v17 && v0 == v21;
  if (v22 || (v10 = OUTLINED_FUNCTION_5_5(), (v10 & 1) != 0))
  {
    if (v100)
    {
      v18 = v99;
      goto LABEL_8;
    }

LABEL_38:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v23 = v1 == OUTLINED_FUNCTION_11_41() && v0 == 0xEA00000000007372;
  if (v23 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v64 = v101;
    v24 = &unk_1EAE40878;
    v25 = &unk_19397DF80;
LABEL_30:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v19 = v10;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_107_11();
  v26 = v17 && v0 == 0xEA00000000006570;
  if (v26 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v27, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v28, v29, v30, v31, v32, v33);
      sub_193494798(v34, v35, v36);
      return;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_170_4();
  v38 = v17 && v0 == v37;
  if (v38 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v64 = v102;
    v24 = &unk_1EAE40800;
    v25 = &unk_19397DF08;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_151_7();
  v39 = v17 && v0 == 0xE500000000000000;
  if (v39 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    v64 = v103;
    v24 = &unk_1EAE408B8;
    v25 = &unk_193986EB0;
    goto LABEL_30;
  }

  sub_19349AB64();
  v40 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v40, v41);
  *(v42 + 40) = &type metadata for ToolKitToolTriggerDefinition.Version1;
  OUTLINED_FUNCTION_137_7();
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_28_3(v43);
  OUTLINED_FUNCTION_282_0(v44, v45, v46, v47, v48, v49, v50, v51, v63, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
  OUTLINED_FUNCTION_26_0();

  v60 = OUTLINED_FUNCTION_270_0(v52, v53, v54, v55, v56, v57, v58, v59, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
  sub_1936D1D30(v60, v61);
}

void sub_1936D1DC4()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  v5 = memcpy(__dst, v2, 0x6BuLL);
  v12 = v1 == v3 && v0 == v4;
  if (v12 || (v5 = OUTLINED_FUNCTION_23_37(), (v5 & 1) != 0))
  {
    if (__dst[1])
    {
      v13 = __dst[0];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v5, MEMORY[0x1E69E6158], v6, v7, v8, v9, v10, v11, v13);
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v5 = OUTLINED_FUNCTION_174_3();
  v15 = v1 == v5 && v0 == v14;
  if (v15 || (v5 = OUTLINED_FUNCTION_5_5(), (v5 & 1) != 0))
  {
    if (__dst[3])
    {
      v13 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v16 = v1 == 0x746567726174 && v0 == 0xE600000000000000;
  if (v16 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v12)
    {
      OUTLINED_FUNCTION_52_2(v17, &type metadata for ToolKitToolContainerDefinition.Device, &off_1F07E1898, v18, v19, v20, v21, v22, v23);
LABEL_30:
      sub_193494798(v24, v25, v26);
      return;
    }

LABEL_23:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v28 = v1 == OUTLINED_FUNCTION_11_41() && v0 == v27;
  if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v59 = __dst[5];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C0, &qword_19397DFA8);
    OUTLINED_FUNCTION_52_2(v34, v34, &off_1F07BD310, v35, v36, v37, v38, v39, v59);
    goto LABEL_30;
  }

  v40 = 0x736E6F6974706FLL;
  v41 = v1 == 0x736E6F6974706FLL && v0 == 0xE700000000000000;
  if (v41 || (v40 = OUTLINED_FUNCTION_34_31(), (v40 & 1) != 0))
  {
    if (__dst[9] != 1)
    {
      v62 = *(v2 + 64);
      *v65 = *(v2 + 80);
      *&v65[11] = *(v2 + 91);
      OUTLINED_FUNCTION_52_2(v40, &type metadata for ToolKitToolToolInvocationOptions, &off_1F07E19D8, v29, v30, v31, v32, v33, *(v2 + 48));
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  sub_19349AB64();
  v42 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v42, v43);
  *(v44 + 40) = &type metadata for ToolKitToolToolInvocation;
  v45 = swift_allocObject();
  v46 = OUTLINED_FUNCTION_61_19(v45);
  memcpy(v46, v47, 0x6BuLL);
  OUTLINED_FUNCTION_26_0();

  v56 = OUTLINED_FUNCTION_188_3(v48, v49, v50, v51, v52, v53, v54, v55, v58, v60, v61, v63, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, __dst[0]);
  sub_1936D1FF0(v56, v57);
}

void sub_1936D2094()
{
  OUTLINED_FUNCTION_11_5();
  v3 = v0[1];
  v27 = *v0;
  v28 = v3;
  *v29 = v0[2];
  *&v29[11] = *(v0 + 43);
  v4 = v2 == 0x7463617265746E69 && v1 == 0xEF65646F4D6E6F69;
  if (v4 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (BYTE9(v27))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for ToolKitToolToolInvocationOptions.InteractionMode;
    goto LABEL_17;
  }

  v11 = 0x656C61636F6CLL;
  v13 = v2 == 0x656C61636F6CLL && v1 == 0xE600000000000000;
  if (v13 || (v11 = OUTLINED_FUNCTION_24_37(), (v11 & 1) != 0))
  {
    v14 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      goto LABEL_7;
    }

    v15 = v28;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v17 = v4 && v16 == v1;
  if (v17 || (v11 = OUTLINED_FUNCTION_14_48(), (v11 & 1) != 0))
  {
    v14 = *&v29[8];
    if (!*&v29[8])
    {
      goto LABEL_7;
    }

    v15 = *v29;
LABEL_16:
    v26[0] = v15;
    v26[1] = v14;
    v12 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_53_2(v11, v12, v5, v6, v7, v8, v9, v10, v26[0]);
    sub_1934948FC();
    return;
  }

  v18 = v2 == 0x6361667265746E69 && v1 == 0xEE006D6F69644965;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (v29[25])
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for ToolKitToolToolInvocationOptions.InterfaceIdiom;
    goto LABEL_17;
  }

  v11 = OUTLINED_FUNCTION_106_13();
  v20 = v4 && v1 == v19;
  if (v20 || (v11 = OUTLINED_FUNCTION_5_5(), (v11 & 1) != 0))
  {
    if (v29[26] == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v26[0]) = v29[26] & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v21, v22);
  *(v23 + 40) = &type metadata for ToolKitToolToolInvocationOptions;
  v24 = swift_allocObject();
  *(v0 + 2) = v24;
  *(v24 + 59) = *&v29[11];
  v25 = *v29;
  v24[2] = v28;
  v24[3] = v25;
  v24[1] = v27;
  OUTLINED_FUNCTION_26_0();

  sub_1936D230C(&v27, v26);
}

uint64_t objectdestroy_80Tm(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolKitTranscript.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ToolKitTranscript();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1936D254C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE408C8, &qword_19397DFB0);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1936D254C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitTranscript();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static ToolKitTranscript.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE408C8, &qword_19397DFB0);
  sub_19393C260();
  if (!v20)
  {
    sub_1936D26E0(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936D26E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitTranscript();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static ToolKitTranscript.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_1937354EC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v19 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v19 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_1936D26E0(v15, v39);
      v32 = type metadata accessor for ToolKitTranscript();
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t ToolKitTranscript.serialize()()
{
  v2 = type metadata accessor for ToolKitTranscript();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1936D254C(v0, v8);
  sub_1934470C8(v8, v2, v14);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v15, &qword_1EAE408C8, &qword_19397DFB0);
  sub_19393C290();
  OUTLINED_FUNCTION_32_3();
  sub_19344E6DC(v14, &qword_1EAE408C8, &qword_19397DFB0);
  return v1;
}

id static ToolKitTranscript.columns.getter()
{
  v4 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1684632949, 0xE400000000000000, 6, 0, v1, 14, 3);
  if (result)
  {
    *(inited + 32) = result;
    sub_19343D230(inited);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1936D2CD0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8 - 8];
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v4 == 1684632949 && v2 == 0xE400000000000000;
  if (!v19 && (OUTLINED_FUNCTION_124_3() & 1) == 0)
  {
    v22 = v4 == 0x696665446C6F6F74 && v2 == 0xEE006E6F6974696ELL;
    if (v22 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
    {
      v23 = type metadata accessor for ToolKitTranscript();
      memcpy(v33, (v0 + *(v23 + 32)), 0x278uLL);
      if (sub_1936D3298(v33) == 1)
      {
        goto LABEL_8;
      }

      memcpy(v32, v33, sizeof(v32));
      v24 = &type metadata for ToolKitToolToolDefinition.Version1;
      v25 = &off_1F07E1758;
    }

    else
    {
      v27 = v4 == OUTLINED_FUNCTION_11_41() && v2 == v26;
      if (!v27 && (OUTLINED_FUNCTION_124_3() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v29 = v28;
        *v28 = v4;
        v28[1] = v2;
        v28[5] = type metadata accessor for ToolKitTranscript();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29 + 2);
        sub_1936D254C(v0, boxed_opaque_existential_1Tm);
        *(v29 + 48) = 1;
        swift_willThrow();

        goto LABEL_24;
      }

      v33[0] = *(v0 + *(type metadata accessor for ToolKitTranscript() + 36));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408D8, &qword_19397DFB8);
      v25 = &off_1F07BD310;
    }

    sub_193494798(v24, v25, v31);
    goto LABEL_24;
  }

  v20 = type metadata accessor for ToolKitTranscript();
  sub_193458F7C(v0 + *(v20 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    (*(v13 + 32))(v18, v9, v10);
    sub_1934948FC();
    (*(v13 + 8))(v18, v10);
    goto LABEL_24;
  }

  sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_8:
  v21 = v31;
  *v31 = 0u;
  *(v21 + 1) = 0u;
LABEL_24:
  OUTLINED_FUNCTION_27();
}

id sub_1936D300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_57_0();
  v7 = OUTLINED_FUNCTION_26_28();
  v14 = *v3;
  v15 = v4 == v7 && v8 == 0xE500000000000000;
  if (v15 || (v7 = OUTLINED_FUNCTION_0_32(), (v7 & 1) != 0))
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_127_7(v7, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v9, v10, v11, v12, v13, *(v14 + 16));
      return sub_193494798(v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    v26 = 0x636E657265666572;
    v27 = v4 == 0x636E657265666572 && v5 == v25;
    if (v27 || (v26 = OUTLINED_FUNCTION_0_32(), (v26 & 1) != 0))
    {
      if (v14 < 0)
      {
        v32 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v33 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
        OUTLINED_FUNCTION_127_7(v26, &type metadata for ToolKitToolTypedValue.ID, &off_1F07E10D8, v20, v21, v22, v23, v24, *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v16, v17, v18);
      }
    }
  }

  sub_19349AB64();
  v28 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_310(v28, v29);
  *(v30 + 40) = a3;
  OUTLINED_FUNCTION_28_25(v31, v30);
}

void sub_1936D3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_162_7();
  v14 = *v5;
  v15 = v5[1];
  v17 = v6 == v16 && v7 == 0xE300000000000000;
  if (v17 || (v18 = v9, v19 = v8, v20 = v7, v21 = v6, v22 = v5[2], OUTLINED_FUNCTION_88_14(), v6 = OUTLINED_FUNCTION_15_16(), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v14);
    sub_1934948FC();
  }

  else
  {
    v23 = v21 == OUTLINED_FUNCTION_26_28() && v20 == 0xE500000000000000;
    if (v23 || (OUTLINED_FUNCTION_15_16() & 1) != 0)
    {

      OUTLINED_FUNCTION_53_2(v24, v25, v26, v27, v28, v29, v30, v31, v22);
      sub_193494798(v19, v18, v32);
    }

    else
    {
      sub_19349AB64();
      v33 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_218_2(v33, v34);
      v35[2] = v14;
      v35[3] = v15;
      v35[4] = v22;
      v35[5] = a5;
      OUTLINED_FUNCTION_23_2(v36, v35);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1936D3298(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return sub_19393CA30();
}

__n128 OUTLINED_FUNCTION_121_7()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

double OUTLINED_FUNCTION_131_8()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_6(uint64_t result)
{
  *(v1 + 16) = result;
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

void OUTLINED_FUNCTION_155_4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1936CE104(a1, a2, a3, sub_1936CE2A8, a4);
}

void OUTLINED_FUNCTION_156_5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1936CE104(a1, a2, a3, sub_1936C097C, a4);
}

__n128 OUTLINED_FUNCTION_168_4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  result = *(v0 + 72);
  v5 = *(v0 + 88);
  return result;
}

__n128 OUTLINED_FUNCTION_172_5()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = v0[2];
  v5 = v0[3];
  return *(v0 + 57);
}

void *OUTLINED_FUNCTION_182_5(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __src)
{
  v22 = (a1 + 16);

  return memcpy(v22, &__src, 0x60uLL);
}

void *OUTLINED_FUNCTION_201_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, v18, 0x48uLL);
}

__n128 OUTLINED_FUNCTION_202_1()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  result = *(v0 + 80);
  v5 = *(v0 + 96);
  return result;
}

__n128 OUTLINED_FUNCTION_205_1()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  result = *(v0 + 64);
  v5 = *(v0 + 80);
  return result;
}

__n128 OUTLINED_FUNCTION_226_1()
{
  result = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  return result;
}

__n128 OUTLINED_FUNCTION_245_1()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_250_0(uint64_t result)
{
  *(result + 28) = v2;
  *(result + 31) = *(v1 + 15);
  *(result + 29) = *(v1 + 13);
  return result;
}

void *OUTLINED_FUNCTION_275_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char __dst)
{

  return memcpy(&__dst, v22, 0x68uLL);
}

void *OUTLINED_FUNCTION_277_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst)
{

  return memcpy(&__dst, v19, 0x50uLL);
}

void *OUTLINED_FUNCTION_282_0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __src)
{

  return memcpy(a1, &__src, 0x50uLL);
}

void OUTLINED_FUNCTION_286_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
}

void *OUTLINED_FUNCTION_322(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src)
{

  return memcpy(a1, &__src, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_324()
{

  return sub_19393CA30();
}

uint64_t static ToolKitToolTypeIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_64_15(a1, a2);
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v18)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_69_19();
      v50 = *(v4 + 32);
      __dst[0] = *(v4 + 16);
      __dst[1] = v50;
      OUTLINED_FUNCTION_96_14();

      v59 = OUTLINED_FUNCTION_126_7(v51, v52, v53, v54, v55, v56, v57, v58, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      static ToolKitToolTypeIdentifier.Custom.== infix(_:_:)(v59);
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v18)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_34_32();
      LOBYTE(__dst[0]) = v28;
      v63 = v29;

      v38 = OUTLINED_FUNCTION_126_7(v30, v31, v32, v33, v34, v35, v36, v37, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      static ToolKitToolTypeIdentifier.Builtin.== infix(_:_:)(v38, v39);
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v18)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_16_33();
      memcpy(v40, v41, 0xF0uLL);
      memcpy(__dst, (v4 + 16), sizeof(__dst));

      OUTLINED_FUNCTION_126_7(v42, v43, v44, v45, v46, v47, v48, v49, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      static ToolKitToolTypeIdentifier.Attributed.== infix(_:_:)();
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v18)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_69_19();
      __dst[0] = *(v4 + 16);
      OUTLINED_FUNCTION_297();

      v27 = OUTLINED_FUNCTION_126_7(v19, v20, v21, v22, v23, v24, v25, v26, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
      static ToolKitToolTypeIdentifier.Codable.== infix(_:_:)(v27);
LABEL_16:
      OUTLINED_FUNCTION_121();
      goto LABEL_17;
    default:
      if (v3 >> 61)
      {
LABEL_18:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_114_10();
        LOBYTE(__dst[0]) = v6;
        v62 = v7;

        v16 = OUTLINED_FUNCTION_126_7(v8, v9, v10, v11, v12, v13, v14, v15, v62, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __dst[0]);
        static ToolKitToolTypeIdentifier.Primitive.== infix(_:_:)(v16, v17);
        OUTLINED_FUNCTION_121();
LABEL_17:
      }

      return v2 & 1;
  }
}

uint64_t static ToolKitToolTypeIdentifier.Primitive.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a2 >> 59) & 0x1E | (*a2 >> 2) & 1;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 1uLL:
      if (v4 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 2uLL:
      if (v4 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 3uLL:
      if (v4 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 4uLL:
      if (v4 == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 5uLL:
      if (v4 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 6uLL:
      if (v4 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 7uLL:
      if (v4 != 7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 8uLL:
      if (v4 != 8)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 9uLL:
      if (v4 != 9)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xAuLL:
      if (v4 != 10)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xBuLL:
      if (v4 != 11)
      {
        goto LABEL_15;
      }

      LOBYTE(v5) = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v7 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      OUTLINED_FUNCTION_107_12();

      OUTLINED_FUNCTION_148_7();
      goto LABEL_13;
    case 0xCuLL:
      if (v4 != 12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xDuLL:
      if (v4 != 13)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xEuLL:
      if (v4 != 14)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xFuLL:
      if (v4 != 15)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x10uLL:
      if (v4 != 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x11uLL:
      if (v4 != 17)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x12uLL:
      if (v4 != 18)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x13uLL:
      if (v4 != 19)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x14uLL:
      if (v4 != 20)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x15uLL:
      if (v4 != 21)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x16uLL:
      if (v4 != 22)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x17uLL:
      if (v4 != 23)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x18uLL:
      if (v4 != 24)
      {
        goto LABEL_15;
      }

LABEL_11:
      v5 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v8 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      goto LABEL_12;
    default:
      if (v4)
      {
LABEL_15:
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(v2 + 16);
        v6 = *(v3 + 16);

LABEL_12:

        OUTLINED_FUNCTION_149_8();
LABEL_13:
        OUTLINED_FUNCTION_61_0();
      }

      return v5 & 1;
  }
}

BOOL static ToolKitToolTypeIdentifier.Builtin.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_163_7(a1, a2);
  v6 = (v3 >> 59) & 0x1E | (v3 >> 2) & 1;
  switch(v5 & 0xFFFFFFFE | (v4 >> 2) & 1)
  {
    case 1u:
      if (v6 == 1)
      {
        goto LABEL_22;
      }

      return 0;
    case 2u:
      if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_22;
    case 3u:
      if (v6 == 3)
      {
        goto LABEL_22;
      }

      return 0;
    case 4u:
      if (v6 != 4)
      {
        return 0;
      }

      goto LABEL_22;
    case 5u:
      if (v6 != 5)
      {
        return 0;
      }

      goto LABEL_22;
    case 6u:
      if (v6 != 6)
      {
        return 0;
      }

      goto LABEL_22;
    case 7u:
      if (v6 != 7)
      {
        return 0;
      }

      goto LABEL_22;
    case 8u:
      if (v6 != 8)
      {
        return 0;
      }

      goto LABEL_22;
    case 9u:
      if (v6 != 9)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xAu:
      if (v6 != 10)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xBu:
      if (v6 != 11)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xCu:
      if (v6 != 12)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xDu:
      if (v6 != 13)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xEu:
      if (v6 != 14)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xFu:
      if (v6 != 15)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_162_8(v7);
      v13 = v8;
      v14 = v9;

      static ToolKitToolTypeIdentifier.== infix(_:_:)(&v14, &v13);
      OUTLINED_FUNCTION_120_7();
      goto LABEL_20;
    case 0x10u:
      if (v6 != 16)
      {
        return 0;
      }

LABEL_22:
      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_142_8(v10);

      v11 = sub_1936D4500();

      return v11;
    default:
      if (v6)
      {
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_143_5();

        OUTLINED_FUNCTION_13_0();
        v2 = sub_1936D4500();

LABEL_20:
      }

      return v2;
  }
}

uint64_t ToolKitToolTypeIdentifier.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      v2 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v3 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v3;
      sub_1936D4670();
      break;
    case 2:
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936D461C();
      break;
    case 3:
      memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      memcpy(v5, __dst, sizeof(v5));
      sub_1936D45C8();
      break;
    case 4:
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936D4574();
      break;
    default:
      *&__dst[0] = *(v0 + 16);
      sub_1936D46C4();
      break;
  }

  return sub_19393C540();
}

BOOL sub_1936D4500()
{
  sub_1936E31CC();
  sub_19393C680();
  sub_19393C680();
  return v2 == v1;
}

unint64_t sub_1936D4574()
{
  result = qword_1EAE408E0;
  if (!qword_1EAE408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408E0);
  }

  return result;
}

unint64_t sub_1936D45C8()
{
  result = qword_1EAE408E8;
  if (!qword_1EAE408E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408E8);
  }

  return result;
}

unint64_t sub_1936D461C()
{
  result = qword_1EAE408F0;
  if (!qword_1EAE408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408F0);
  }

  return result;
}

unint64_t sub_1936D4670()
{
  result = qword_1EAE408F8;
  if (!qword_1EAE408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408F8);
  }

  return result;
}

unint64_t sub_1936D46C4()
{
  result = qword_1EAE40900;
  if (!qword_1EAE40900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40900);
  }

  return result;
}

BOOL sub_1936D4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  sub_19393C680();
  sub_19393C680();
  return v7 == v6;
}

uint64_t ToolKitToolTypeIdentifier.Primitive.hash(into:)()
{
  OUTLINED_FUNCTION_117_13();
  switch(v1 & 0xFFFFFFFE | (v0 >> 2) & 1)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
      OUTLINED_FUNCTION_49_19();
      goto LABEL_3;
    case 0xBu:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_90_16(v3);
      sub_1936D4880();
      break;
    default:
LABEL_3:
      OUTLINED_FUNCTION_65_18(v0);
      sub_1936D482C();
      break;
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

unint64_t sub_1936D482C()
{
  result = qword_1EAE40908;
  if (!qword_1EAE40908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40908);
  }

  return result;
}

unint64_t sub_1936D4880()
{
  result = qword_1EAE40910;
  if (!qword_1EAE40910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40910);
  }

  return result;
}

uint64_t ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_31_17();
    v168 = sub_1934B0FCC(v162, v163, v164, v165, v166, v167);
    v8 = OUTLINED_FUNCTION_17_2(v168);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v169 = OUTLINED_FUNCTION_39(v19);
    v173 = OUTLINED_FUNCTION_85(v169, v170, v171, v172, &qword_1EAE40E80, &qword_19397F890);
    v15 = OUTLINED_FUNCTION_17_2(v173);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v174, v175, v176, v177, v178, v179);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v31);
    OUTLINED_FUNCTION_31_17();
    v27 = sub_1934B0FCC(v180, v181, v182, v183, v184, v185);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v186 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v186, v187, v188, v189, &qword_1EAE40E80, &qword_19397F890);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v41);
    OUTLINED_FUNCTION_31_17();
    v37 = sub_1934B0FCC(v190, v191, v192, v193, v194, v195);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v196 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE40E80, &qword_19397F890);
    v45 = v42;
  }

  OUTLINED_FUNCTION_47_5(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4(v47, v48);
  OUTLINED_FUNCTION_171_4();
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v53);
    OUTLINED_FUNCTION_31_17();
    v49 = sub_1934B0FCC(v200, v201, v202, v203, v204, v205);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54, v55);
  OUTLINED_FUNCTION_170_5();
  if (!(v20 ^ v21 | v14))
  {
    v206 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_85(v206, v207, v208, v209, &qword_1EAE40E80, &qword_19397F890);
    v59 = v56;
  }

  OUTLINED_FUNCTION_47_5(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61, v62);
  OUTLINED_FUNCTION_169_7();
  if (!(v20 ^ v21 | v14))
  {
    OUTLINED_FUNCTION_39(v67);
    OUTLINED_FUNCTION_31_17();
    v63 = sub_1934B0FCC(v210, v211, v212, v213, v214, v215);
    v66 = v63;
  }

  OUTLINED_FUNCTION_50(v63, v64, v65, v66);
  OUTLINED_FUNCTION_4(v68, v69);
  OUTLINED_FUNCTION_99_3();
  if (!(v20 ^ v21 | v14))
  {
    v216 = OUTLINED_FUNCTION_39(v74);
    v70 = OUTLINED_FUNCTION_85(v216, v217, v218, v219, &qword_1EAE40E80, &qword_19397F890);
    v73 = v70;
  }

  OUTLINED_FUNCTION_47_5(v70, v71, v72, v73);
  OUTLINED_FUNCTION_4(v75, v76);
  if (v0 + 12 > (v81 >> 1))
  {
    OUTLINED_FUNCTION_39(v81);
    OUTLINED_FUNCTION_31_17();
    v77 = sub_1934B0FCC(v220, v221, v222, v223, v224, v225);
    v80 = v77;
  }

  OUTLINED_FUNCTION_50(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82, v83);
  if (v0 + 13 > (v88 >> 1))
  {
    v226 = OUTLINED_FUNCTION_39(v88);
    v84 = OUTLINED_FUNCTION_85(v226, v227, v228, v229, &qword_1EAE40E80, &qword_19397F890);
    v87 = v84;
  }

  OUTLINED_FUNCTION_47_5(v84, v85, v86, v87);
  OUTLINED_FUNCTION_4(v89, v90);
  if (v0 + 14 > (v95 >> 1))
  {
    OUTLINED_FUNCTION_39(v95);
    OUTLINED_FUNCTION_31_17();
    v91 = sub_1934B0FCC(v230, v231, v232, v233, v234, v235);
    v94 = v91;
  }

  OUTLINED_FUNCTION_50(v91, v92, v93, v94);
  OUTLINED_FUNCTION_4(v96, v97);
  if (v0 + 15 > (v102 >> 1))
  {
    v236 = OUTLINED_FUNCTION_39(v102);
    v98 = OUTLINED_FUNCTION_85(v236, v237, v238, v239, &qword_1EAE40E80, &qword_19397F890);
    v101 = v98;
  }

  OUTLINED_FUNCTION_47_5(v98, v99, v100, v101);
  OUTLINED_FUNCTION_4(v103, v104);
  if (v0 + 16 > (v109 >> 1))
  {
    OUTLINED_FUNCTION_39(v109);
    OUTLINED_FUNCTION_31_17();
    v105 = sub_1934B0FCC(v240, v241, v242, v243, v244, v245);
    v108 = v105;
  }

  OUTLINED_FUNCTION_50(v105, v106, v107, v108);
  OUTLINED_FUNCTION_4(v110, v111);
  if (v0 + 17 > (v116 >> 1))
  {
    v246 = OUTLINED_FUNCTION_39(v116);
    v112 = OUTLINED_FUNCTION_85(v246, v247, v248, v249, &qword_1EAE40E80, &qword_19397F890);
    v115 = v112;
  }

  OUTLINED_FUNCTION_47_5(v112, v113, v114, v115);
  OUTLINED_FUNCTION_4(v117, v118);
  if (v0 + 18 > (v123 >> 1))
  {
    OUTLINED_FUNCTION_39(v123);
    OUTLINED_FUNCTION_31_17();
    v119 = sub_1934B0FCC(v250, v251, v252, v253, v254, v255);
    v122 = v119;
  }

  OUTLINED_FUNCTION_50(v119, v120, v121, v122);
  OUTLINED_FUNCTION_4(v124, v125);
  if (v0 + 19 > (v130 >> 1))
  {
    v256 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_85(v256, v257, v258, v259, &qword_1EAE40E80, &qword_19397F890);
    v129 = v126;
  }

  OUTLINED_FUNCTION_47_5(v126, v127, v128, v129);
  OUTLINED_FUNCTION_4(v131, v132);
  if (v0 + 20 > (v137 >> 1))
  {
    OUTLINED_FUNCTION_39(v137);
    OUTLINED_FUNCTION_31_17();
    v133 = sub_1934B0FCC(v260, v261, v262, v263, v264, v265);
    v136 = v133;
  }

  OUTLINED_FUNCTION_50(v133, v134, v135, v136);
  OUTLINED_FUNCTION_4(v138, v139);
  if (v0 + 21 > (v144 >> 1))
  {
    v266 = OUTLINED_FUNCTION_39(v144);
    v140 = OUTLINED_FUNCTION_85(v266, v267, v268, v269, &qword_1EAE40E80, &qword_19397F890);
    v143 = v140;
  }

  OUTLINED_FUNCTION_47_5(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4(v145, v146);
  if (v0 + 22 > (v151 >> 1))
  {
    OUTLINED_FUNCTION_39(v151);
    OUTLINED_FUNCTION_31_17();
    v147 = sub_1934B0FCC(v270, v271, v272, v273, v274, v275);
    v150 = v147;
  }

  OUTLINED_FUNCTION_50(v147, v148, v149, v150);
  OUTLINED_FUNCTION_4(v152, v153);
  if (v0 + 23 > (v158 >> 1))
  {
    v276 = OUTLINED_FUNCTION_39(v158);
    v154 = OUTLINED_FUNCTION_85(v276, v277, v278, v279, &qword_1EAE40E80, &qword_19397F890);
    v157 = v154;
  }

  OUTLINED_FUNCTION_47_5(v154, v155, v156, v157);
  return OUTLINED_FUNCTION_89_3(v159, v160);
}