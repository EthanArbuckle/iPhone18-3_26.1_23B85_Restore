void *sub_25BB38238(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
  }

  return result;
}

uint64_t TransposedConv2D.$bias.getter()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *v0 = result;
  *(v0 + 8) = v5;
  return result;
}

uint64_t TransposedConv2D.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 128);
  if (*(v1 + 16))
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v5 = *(*(v0 + 16) + 32);
      v4 = (~v5 & 0xF000000000000007) != 0 && v5 < 0;
    }

    else
    {
      v4 = v3 >> 63;
    }
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_89_1(v4, v1);
}

uint64_t TransposedConv2D.kernelSize.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t TransposedConv2D.stride.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t TransposedConv2D.padding.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t TransposedConv2D.dilation.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t TransposedConv2D.outputPadding.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_25BB38378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_80_1(a1);
  v53 = v16;
  v54 = v17;
  v57 = v19;
  v58 = *v18;
  v20 = *(v18 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  *(OUTLINED_FUNCTION_68() + 16) = 0;
  OUTLINED_FUNCTION_22_5();
  if (v22)
  {
    goto LABEL_32;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  v56 = a3;
  v23 = OUTLINED_FUNCTION_11_13(v21 & 0x7FFFFFFFFFFFFFFFLL);
  if (!(!v22 & v25))
  {
    goto LABEL_36;
  }

  if (a10 != -1)
  {
    v26 = *(v23 + 40);
    if (a10)
    {
      v26 = *(v23 + 40) % a10;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_2_17();
      goto LABEL_40;
    }
  }

  v52 = v24;
  if (v58)
  {
    v27 = *(v58 + 32);
    OUTLINED_FUNCTION_48_3();
    if (v22)
    {
      goto LABEL_32;
    }

    if ((v28 & 0x8000000000000000) == 0)
    {
LABEL_33:
      OUTLINED_FUNCTION_0_19();
      goto LABEL_34;
    }

    v29 = v28 & 0x7FFFFFFFFFFFFFFFLL;
    v30 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    OUTLINED_FUNCTION_23_6();
    if (!v22)
    {
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_106_1();
LABEL_40:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_35;
    }

    if ((v31 * a10) >> 64 != (v31 * a10) >> 63)
    {
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v22)
    {
LABEL_26:
      OUTLINED_FUNCTION_79_1();
      sub_25BAB3020(v42);
      sub_25BCB70FC();
      MEMORY[0x25F876C90](a7 + 13, 0x800000025BCDB540);
      v43 = OUTLINED_FUNCTION_91_1(*(v29 + 16));
      v44 = MEMORY[0x25F876F80](v43, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v44);

      v45 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v45, 0xE500000000000000);
      OUTLINED_FUNCTION_22_5();
      if (!v22)
      {
        if (v46 < 0)
        {
          v47 = OUTLINED_FUNCTION_11_13(v46 & 0x7FFFFFFFFFFFFFFFLL);
          if (!(!v22 & v25))
          {
            goto LABEL_36;
          }

          if ((*(v47 + 40) * a10) >> 64 == (*(v47 + 40) * a10) >> 63)
          {
            v48 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v48);

            OUTLINED_FUNCTION_83_1();
            goto LABEL_40;
          }

          __break(1u);
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_34:
        OUTLINED_FUNCTION_7_0();
        goto LABEL_35;
      }

LABEL_32:
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_3();
LABEL_35:
      sub_25BCB74CC();
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_31_3();
      sub_25BCB617C();
      goto LABEL_38;
    }

    v32 = v20;
    v33 = (v20 >> 8) & 1;

    v51 = v58;
  }

  else
  {
    OUTLINED_FUNCTION_25_6();
    swift_allocObject();
    OUTLINED_FUNCTION_92_2();
    v51 = sub_25BB1AB60(0);
    v32 = 0;
    LOBYTE(v33) = 1;
  }

  OUTLINED_FUNCTION_22_5();
  if (v22)
  {
    goto LABEL_32;
  }

  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_46_2(v34);
  v36 = *(v35 + 152);
  v37 = v36[2];
  if (v37 <= 1)
  {
    goto LABEL_36;
  }

  v50 = a4;
  if (v37 == 2)
  {
    goto LABEL_36;
  }

  v38 = v36[6];
  v49 = v36[5];
  sub_25BCB617C();

  if (v36[2] <= 3uLL)
  {
    OUTLINED_FUNCTION_31_3();
LABEL_38:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v39 = v32 & 1;
  v40 = v36[7];

  *a7 = v10;
  *(a7 + 8) = v54;
  *(a7 + 9) = v53;
  *(a7 + 16) = v51;
  *(a7 + 24) = v39;
  *(a7 + 25) = v33;
  *(a7 + 26) = v58 != 0;
  *(a7 + 32) = v49;
  *(a7 + 40) = v38;
  *(a7 + 48) = v40;
  *(a7 + 56) = a2;
  *(a7 + 64) = v56;
  *(a7 + 72) = v50;
  *(a7 + 80) = a5;
  *(a7 + 88) = a8;
  *(a7 + 96) = a9;
  *(a7 + 104) = a10;
  *(a7 + 112) = a6;
  *(a7 + 120) = v57;
  *(a7 + 128) = v52;
  return result;
}

void *TransposedConv2D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6)
{
  v7 = *a1;
  v9 = *a2;
  v10 = v7;
  TransposedConv2D.init(weight:bias:stride:padding:outputPadding:dilation:groupCount:)(&v10, &v9, 0, 0, __src, a3, a4, a6);
  return memcpy(a5, __src, 0x88uLL);
}

void *TransposedConv2D.init(weight:bias:stride:padding:outputPadding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  v14 = OUTLINED_FUNCTION_68();
  *(v14 + 16) = 0;
  __src[16] = v14;
  v15 = OUTLINED_FUNCTION_18_9(*(v12 + 16));
  if (!(!v17 & v16))
  {
    goto LABEL_21;
  }

  if (a8 != -1)
  {
    v18 = *(v15 + 40);
    if (a8)
    {
      v18 = *(v15 + 40) % a8;
    }

    if (v18)
    {
      OUTLINED_FUNCTION_28_5();
      goto LABEL_28;
    }
  }

  if (v13)
  {
    v19 = *(v13 + 16);
    OUTLINED_FUNCTION_23_6();
    if (!v17)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
LABEL_29:
      OUTLINED_FUNCTION_69_1();
      __break(1u);
      goto LABEL_30;
    }

    if ((v20 * a8) >> 64 != (v20 * a8) >> 63)
    {
      __break(1u);
LABEL_18:
      v45 = 0;
      v46 = 0xE000000000000000;

      sub_25BCB70FC();
      v36 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v36);
      v37 = OUTLINED_FUNCTION_91_1(*(v13 + 16));
      v38 = MEMORY[0x25F876F80](v37, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v38);

      v39 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v39, 0xE500000000000000);
      v40 = OUTLINED_FUNCTION_43(*(v12 + 16));
      if (!v41)
      {
LABEL_30:
        OUTLINED_FUNCTION_64_2();
        goto LABEL_24;
      }

      v42 = *(v40 + 32);
      if ((v42 * a8) >> 64 != (v42 * a8) >> 63)
      {
        __break(1u);
        goto LABEL_21;
      }

      v45 = v42 * a8;
      v43 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v43);

      OUTLINED_FUNCTION_83_1();
LABEL_28:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  __dst = a5;
  v21 = a4;
  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_96_1(v22, v23, v24, v25, v26, v27, v28, v29);

  v45 = v13;
  OptionalParameter.init(wrappedValue:)(&v45);
  v30 = OUTLINED_FUNCTION_81_1();
  if (v31 <= 1)
  {
LABEL_21:
    v47 = 0;
    v45 = 1;
LABEL_23:
    v46 = 0;
    OUTLINED_FUNCTION_27_5();
LABEL_24:
    OUTLINED_FUNCTION_107_2();
    sub_25BCB617C();
    goto LABEL_26;
  }

  __src[4] = *(v30 + 40);
  if (v31 == 2)
  {
    v47 = 0;
    v45 = 2;
    goto LABEL_23;
  }

  v32 = *(v30 + 48);

  v33 = *(v8 + 152);
  sub_25BCB617C();

  if (*(v33 + 16) <= 3uLL)
  {
    v46 = 0;
    v47 = 0;
    v45 = 3;
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_107_2();
LABEL_26:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v34 = *(v33 + 56);

  __src[5] = v32;
  __src[6] = v34;
  OUTLINED_FUNCTION_112_1();
  __src[11] = a6;
  __src[12] = a7;
  __src[13] = a8;
  __src[14] = a3;
  __src[15] = v21;
  return memcpy(__dst, __src, 0x88uLL);
}

uint64_t TransposedConv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  v19 = OUTLINED_FUNCTION_68();
  *(v19 + 16) = 0;
  if (a1 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_15:
    result = OUTLINED_FUNCTION_69_1();
    __break(1u);
    return result;
  }

  v20 = v19;
  if (a11 != -1 && (!a11 || a1 % a11) || ((v28 = a8, a2 >= 1) ? (v21 = a3 < 1) : (v21 = 1), v21))
  {
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  v23 = sub_25BB1AB04(v22);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  if (a13)
  {
    v24 = sub_25BB1AB04(a13);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_66();
  }

  v25 = v24;

  *a9 = v23;
  *(a9 + 8) = 256;
  *(a9 + 16) = v25;
  *(a9 + 24) = 256;
  *(a9 + 26) = a13 != 0;
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = v28;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  *(a9 + 128) = v20;
  return result;
}

void TransposedConv2D.init(filterCount:kernelSize:stride:padding:outputPadding:dilation:groupCount:weightInitializer:biasInitializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_120();
  v32 = v31;
  v34 = v33;
  v51 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v46 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_2(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4798, &qword_25BCBEB38);
  v47 = OUTLINED_FUNCTION_68();
  *(v47 + 16) = 0;
  *(v30 + 128) = v47;
  if (v45 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_15:
    OUTLINED_FUNCTION_69_1();
    __break(1u);
    return;
  }

  if (a28 != -1 && (!a28 || v45 % a28) || (v43 >= 1 ? (v48 = v41 <= 0) : (v48 = 1), v48))
  {
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_15;
  }

  *(v30 + 32) = v45;
  *(v30 + 40) = v43;
  *(v30 + 48) = v41;
  *(v30 + 56) = v39;
  *(v30 + 64) = v37;
  *(v30 + 72) = v51;
  *(v30 + 80) = v34;
  *(v30 + 88) = a26;
  *(v30 + 96) = a27;
  *(v30 + 104) = a28;
  *(v30 + 112) = v32;
  *(v30 + 120) = a25;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();

  v50 = sub_25BB1AB04(v49);
  OUTLINED_FUNCTION_58_2(v50);
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  if (a30)
  {
    sub_25BB1AB04(a30);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_57_1();
  *(v30 + 26) = a30 != 0;
  OUTLINED_FUNCTION_85_1();
}

uint64_t TransposedConv2D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v18 & v3))
  {
LABEL_17:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_54_2();
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 104);
  v8 = *(v7 + 40);
  v9 = v8;
  if (v6)
  {
    if (v6 == -1)
    {
      goto LABEL_7;
    }

    v9 = v8 % v6;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBDF80;
  *(v10 + 32) = v8;
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v4 == 0x8000000000000000 && v6 == -1;
  if (v18)
  {
    goto LABEL_16;
  }

  *(v10 + 40) = v4 / v6;
  OUTLINED_FUNCTION_118_1(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23);
  sub_25BB1ABC8(v24);

  if (v2)
  {
    OUTLINED_FUNCTION_1_2();
    v20 = swift_allocObject();
    v24[0] = OUTLINED_FUNCTION_74_1(v20, xmmword_25BCBAE50);

    sub_25BB1ABC8(v24);
  }

  return result;
}

uint64_t sub_25BB392FC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BB39358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB392FC();
  *a2 = result;
  return result;
}

uint64_t sub_25BB39388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB39348();
  *a1 = result;
  return result;
}

uint64_t sub_25BB393B0(uint64_t a1)
{
  v2 = sub_25BB39ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB393EC(uint64_t a1)
{
  v2 = sub_25BB39ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TransposedConv2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB47A0, &qword_25BCBEB40);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB39ADC();
  OUTLINED_FUNCTION_44_2();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_12_8();
    v13 = OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_8();
    v12 = OUTLINED_FUNCTION_110_1();
    v16 = 4;
    OUTLINED_FUNCTION_12_8();
    v11 = OUTLINED_FUNCTION_110_1();
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v14[0]) = v7;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    v8 = OUTLINED_FUNCTION_34_4();
    sub_25BB38378(&v15, v13.n128_i64[0], v13.n128_i64[1], v12.n128_i64[0], v12.n128_i64[1], 0, v14, v11.n128_i64[0], v11.n128_i64[1], v8);
    v9 = OUTLINED_FUNCTION_24_5();
    v10(v9);
    memcpy(v2, v14, 0x88uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void TransposedConv2D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB47B0, &qword_25BCBEB48);
  OUTLINED_FUNCTION_2(v12);
  v24 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_4();
  sub_25BB39ADC();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_121_0();

  OUTLINED_FUNCTION_19_6();
  sub_25BCB779C();
  if (v10)
  {

    v17 = *(v24 + 8);
    v18 = OUTLINED_FUNCTION_102_1();
    v19(v18);
  }

  else
  {
    OUTLINED_FUNCTION_119_1();
    if (a10)
    {
    }

    else
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_52_2(v20);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_101_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_51(&qword_27FBB4770);
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_70_2(5);
    sub_25BCB778C();
    v21 = *(v11 + 8);
    v22 = OUTLINED_FUNCTION_102_1();
    v23(v22);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB398E8()
{
  result = qword_28154C258;
  if (!qword_28154C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C258);
  }

  return result;
}

unint64_t sub_25BB3993C()
{
  result = qword_28154BED0;
  if (!qword_28154BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BED0);
  }

  return result;
}

unint64_t sub_25BB39990()
{
  result = qword_28154BED8;
  if (!qword_28154BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BED8);
  }

  return result;
}

unint64_t sub_25BB399E4()
{
  result = qword_27FBB4750;
  if (!qword_27FBB4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4750);
  }

  return result;
}

uint64_t sub_25BB39A38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4758, &qword_25BCBEB10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BB39A88()
{
  result = qword_27FBB4788;
  if (!qword_27FBB4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4788);
  }

  return result;
}

unint64_t sub_25BB39ADC()
{
  result = qword_27FBB47A8;
  if (!qword_27FBB47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47A8);
  }

  return result;
}

uint64_t sub_25BB39B4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_25BB39B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB39BF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_25BB39C34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25BB39C9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25BB39CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MILOpset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB39E00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB39EE0()
{
  result = qword_27FBB47B8;
  if (!qword_27FBB47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47B8);
  }

  return result;
}

unint64_t sub_25BB39F38()
{
  result = qword_27FBB47C0;
  if (!qword_27FBB47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47C0);
  }

  return result;
}

unint64_t sub_25BB39F90()
{
  result = qword_27FBB47C8;
  if (!qword_27FBB47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47C8);
  }

  return result;
}

unint64_t sub_25BB39FE8()
{
  result = qword_27FBB47D0;
  if (!qword_27FBB47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47D0);
  }

  return result;
}

unint64_t sub_25BB3A040()
{
  result = qword_27FBB47D8;
  if (!qword_27FBB47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47D8);
  }

  return result;
}

unint64_t sub_25BB3A098()
{
  result = qword_27FBB47E0;
  if (!qword_27FBB47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47E0);
  }

  return result;
}

unint64_t sub_25BB3A0F0()
{
  result = qword_27FBB47E8;
  if (!qword_27FBB47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47E8);
  }

  return result;
}

unint64_t sub_25BB3A148()
{
  result = qword_27FBB47F0;
  if (!qword_27FBB47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47F0);
  }

  return result;
}

unint64_t sub_25BB3A1A0()
{
  result = qword_27FBB47F8;
  if (!qword_27FBB47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB47F8);
  }

  return result;
}

unint64_t sub_25BB3A1F8()
{
  result = qword_27FBB4800;
  if (!qword_27FBB4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4800);
  }

  return result;
}

unint64_t sub_25BB3A250()
{
  result = qword_28154C248;
  if (!qword_28154C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C248);
  }

  return result;
}

unint64_t sub_25BB3A2A8()
{
  result = qword_28154C250;
  if (!qword_28154C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C250);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_25BAB6D38(va, 0x100000000);
}

uint64_t OUTLINED_FUNCTION_96_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_25BAB6D38(va, 0x100000000);
}

__n128 OUTLINED_FUNCTION_101_1()
{
  result = *(v0 - 160);
  *(v0 - 96) = result;
  *(v0 - 65) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_119_1()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 124);
  v4 = *(v0 - 120);
  v5 = *(v0 - 136);
  v7 = *(v0 - 104);
  v6 = *(v0 - 96);
}

uint64_t OUTLINED_FUNCTION_120_1()
{
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return sub_25BCB7B6C();
}

uint64_t (*sub_25BB3A46C())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C420(v3, v4, v5);
  return sub_25BB3D704;
}

uint64_t (*sub_25BB3A4C8())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C4B8(v3, v4, v5);
  return sub_25BB3D704;
}

uint64_t (*sub_25BB3A524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_25BB3C550(v8, a2, a3, a4);
  return sub_25BB3A5A0;
}

uint64_t (*sub_25BB3A5A4())()
{
  v1 = OUTLINED_FUNCTION_4_17();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_3_14(v2);
  *(v0 + 32) = sub_25BB3C5FC(v3, v4, v5);
  return sub_25BB3D704;
}

void sub_25BB3A600(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25BB3A64C(SEL *a1)
{
  OUTLINED_FUNCTION_22_6();
  v4 = *(v1 + 24);
  v5 = *(v4 + 64);
  v22 = v4 + 64;
  v23 = v4;
  OUTLINED_FUNCTION_0_20(v4);
  v8 = v7 & v6;
  v21 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = 0;
  while (2)
  {
    if (v8)
    {
      v24 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = OUTLINED_FUNCTION_11_14(v14 | (v11 << 6), v21, v22, v23);
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();

      v16 = 0;
      v17 = 0;
      while (v15 != v16)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x25F8779B0](v16, v2);
          v18 = result;
        }

        else
        {
          if (v16 >= *(v2 + 16))
          {
            goto LABEL_23;
          }

          v18 = *(v2 + 8 * v16 + 32);
        }

        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v19 = [*(v18 + 16) *a1];

        ++v16;
        v20 = __OFADD__(v17, v19);
        v17 += v19;
        if (v20)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_15_8();

      v20 = __OFADD__(v24, v17);
      v12 = v24 + v17;
      if (!v20)
      {
        continue;
      }

      __break(1u);
LABEL_21:

      return v12;
    }

    else
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v21)
        {
          goto LABEL_21;
        }

        v8 = *(v22 + 8 * v13);
        ++v11;
        if (v8)
        {
          v24 = v12;
          v11 = v13;
          goto LABEL_8;
        }
      }

LABEL_25:
      __break(1u);
    }

    return result;
  }
}

uint64_t sub_25BB3A7F0()
{
  OUTLINED_FUNCTION_22_6();
  v2 = *(v0 + 24);
  v3 = *(v2 + 64);
  v21 = v2 + 64;
  v22 = v2;
  OUTLINED_FUNCTION_0_20(v2);
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  while (2)
  {
    if (v6)
    {
      v23 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = OUTLINED_FUNCTION_11_14(v13 | (v10 << 6), v20, v21, v22);
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();

      v15 = 0;
      v16 = 0;
      while (v14 != v15)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x25F8779B0](v15, v1);
        }

        else
        {
          if (v15 >= *(v1 + 16))
          {
            goto LABEL_23;
          }

          v17 = *(v1 + 8 * v15 + 32);
        }

        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v18 = sub_25BCB198C();

        ++v15;
        v19 = __OFADD__(v16, v18);
        v16 += v18;
        if (v19)
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_15_8();

      v11 = v23 + v16;
      if (!__OFADD__(v23, v16))
      {
        continue;
      }

      __break(1u);
LABEL_21:

      return v11;
    }

    else
    {
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
          goto LABEL_21;
        }

        v6 = *(v21 + 8 * v12);
        ++v10;
        if (v6)
        {
          v23 = v11;
          v10 = v12;
          goto LABEL_8;
        }
      }

LABEL_25:
      __break(1u);
    }

    return result;
  }
}

uint64_t sub_25BB3A984()
{
  if (*(v0 + 41))
  {
    v1 = MEMORY[0x25F879240]();
    v2 = v1 < 1;
    if (v1 >= 1)
    {
      result = v1 - 0x10000000;
    }

    else
    {
      result = 0;
    }

    *(v0 + 32) = result;
    v4 = v2;
    *(v0 + 40) = v4;
    *(v0 + 41) = 0;
  }

  else
  {
    result = *(v0 + 32);
    v5 = *(v0 + 40) & 1;
  }

  return result;
}

uint64_t sub_25BB3A9D4()
{
  if (*(v0 + 57))
  {
    v1 = MEMORY[0x25F879240]();
    v2 = v1 < 1;
    result = v1 & ~(v1 >> 63);
    *(v0 + 48) = result;
    v4 = v2;
    *(v0 + 56) = v4;
    *(v0 + 57) = 0;
  }

  else
  {
    result = *(v0 + 48);
    v5 = *(v0 + 56) & 1;
  }

  return result;
}

uint64_t sub_25BB3AA1C(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 256;
  *(v1 + 48) = 0;
  *(v1 + 56) = 256;
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4818, &qword_25BCBF510);
  sub_25BB3D5C8();
  *(v1 + 24) = sub_25BCB614C();
  return v1;
}

uint64_t sub_25BB3AA90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_25BB3AAB8()
{
  sub_25BB3AA90();

  return swift_deallocClassInstance();
}

void *sub_25BB3AB10(NSUInteger a1, char a2)
{
  v3 = v2;
  v5 = NSRoundUpToMultipleOfPageSize(a1);
  v6 = *(v3 + 16);
  if (v5 >= [v6 maxBufferLength])
  {
LABEL_101:
    OUTLINED_FUNCTION_13_8();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_9_9();
    v139 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](v5 + 10, 0x800000025BCDB6F0);
    v139 = [v6 maxBufferLength];
    v109 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v109);

    MEMORY[0x25F876C90](3039330, 0xE300000000000000);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_2_18();
    goto LABEL_105;
  }

  v131 = v5;
  v7 = sub_25BCB18F0(v5, [v6 hasUnifiedMemory]);
  v5 = v7;
  v133 = v8;
  v128 = a2;
  if ((a2 & 0xFE) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  v132 = v7;
  v134 = v9;
  if (v7 > 0x800000)
  {
    v10 = sub_25BB3A984();
    if ((v11 & 1) == 0 && [v6 currentAllocatedSize] >= v10)
    {
      v115 = v6;
      swift_beginAccess();
      v12 = *(v3 + 24);
      v14 = *(v12 + 64);
      v13 = v12 + 64;
      v15 = OUTLINED_FUNCTION_0_20(*(v3 + 24));
      v121 = v17 & v16;
      v118 = v15;
      v119 = (v18 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v19 = 0;
      v117 = v13;
      while (1)
      {
        v20 = v121;
        if (!v121)
        {
          break;
        }

LABEL_14:
        v120 = v19;
        v121 = (v20 - 1) & v20;
        v22 = *(v118 + 48) + 24 * (__clz(__rbit64(v20)) | (v19 << 6));
        v6 = *v22;
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        OUTLINED_FUNCTION_20_5();
        v25 = *(v3 + 24);
        if (*(v25 + 16) && (v26 = sub_25BAFEF78(v6, v23, v24), (v27 & 1) != 0))
        {
          v28 = (*(v25 + 56) + 24 * v26);
          v29 = *v28;
          v30 = v28[2];
          swift_endAccess();
          v31 = MEMORY[0x277D84F90];
          v136 = MEMORY[0x277D84F90];
          v32 = sub_25BA9BEA0(v29);
          v126 = v6;
          HIDWORD(v114) = v23;
          v130 = v29;
          v116 = v30;
          if (v32)
          {
            v33 = v32;
            if (v32 < 1)
            {
              goto LABEL_100;
            }

            v34 = v29;
            v35 = v29 & 0xC000000000000001;
            swift_retain_n();

            v36 = 0;
            v37 = MEMORY[0x277D84F90];
            do
            {
              if (v35)
              {
                v38 = MEMORY[0x25F8779B0](v36, v34);
              }

              else
              {
                v38 = *(v34 + 8 * v36 + 32);
              }

              if ([*(v38 + 16) usedSize] || !sub_25BCB19DC())
              {

                MEMORY[0x25F876F40](v39);
                if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_25BCB67AC();
                }

                sub_25BCB680C();

                v37 = v136;
              }

              else
              {
              }

              ++v36;
              v34 = v130;
            }

            while (v33 != v36);

            v31 = MEMORY[0x277D84F90];
            v6 = v126;
          }

          else
          {

            v37 = v31;
          }

          v139 = v31;
          v127 = sub_25BA9BEA0(v37);
          v40 = 0;
          v124 = v37 + 32;
          v125 = v37 & 0xC000000000000001;
          v9 = v134;
          v41 = v37;
          v122 = v37;
          v123 = v3;
          while (v40 != v127)
          {
            v5 = v37 & 0xC000000000000001;
            sub_25BAB4D78(v40, v125 == 0, v41);
            if (v125)
            {
              MEMORY[0x25F8779B0](v40, v41);
            }

            else
            {
              v42 = *(v124 + 8 * v40);
            }

            v43 = __OFADD__(v40++, 1);
            if (v43)
            {
              goto LABEL_94;
            }

            sub_25BCB723C();
            v6 = v139[2];
            sub_25BCB728C();
            sub_25BCB729C();
            sub_25BCB725C();
            v44 = v139;
            v45 = v139[2];
            v5 = v45 - 1;
            v46 = sub_25BC16CFC(v45 - 1, v139);
            v47 = v45 - 2;
            while (v5 >= 1)
            {
              if (v47 < -1)
              {
                __break(1u);
LABEL_90:
                __break(1u);
LABEL_91:
                __break(1u);
LABEL_92:
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              v6 = v47 / 2;
              if (v47 / 2 >= v44[2])
              {
                goto LABEL_90;
              }

              v48 = v44[v6 + 4];
              v49 = sub_25BCB198C();
              if (sub_25BCB198C() >= v49)
              {
                break;
              }

              if (v6 >= v44[2])
              {
                goto LABEL_91;
              }

              v50 = v44[v6 + 4];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = sub_25BC1B13C(v44);
                v139 = v44;
              }

              if (v5 >= v44[2])
              {
                goto LABEL_92;
              }

              v51 = &v44[v5];
              v52 = *(v51 + 4);
              *(v51 + 4) = v50;

              sub_25BCB725C();
              v47 = v6 - 1;
              v44 = v139;
              v5 = v6;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_25BC1B13C(v44);
              v139 = v44;
            }

            v6 = v126;
            if (v5 < 0)
            {
              goto LABEL_95;
            }

            if (v5 >= v44[2])
            {
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }

            v53 = &v44[v5];
            v54 = *(v53 + 4);
            *(v53 + 4) = v46;

            sub_25BCB725C();

            v41 = v37;
            v3 = v123;
            v5 = v132;
            v9 = v134;
          }

          v6 = v139;
          OUTLINED_FUNCTION_5_16();
          v55 = *(v3 + 24);
          swift_isUniquelyReferenced_nonNull_native();
          v135 = *(v3 + 24);
          sub_25BC19ED8();
          *(v3 + 24) = v135;
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v13 = v117;
        v19 = v120;
      }

      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_93;
        }

        if (v21 >= v119)
        {
          break;
        }

        v20 = *(v13 + 8 * v21);
        ++v19;
        if (v20)
        {
          v19 = v21;
          goto LABEL_14;
        }
      }

      v6 = v115;
    }
  }

  v56 = v6;
  [v6 heapBufferSizeAndAlignWithLength:v131 options:sub_25BC9DF1C(v9)];
  v58 = v57;
  OUTLINED_FUNCTION_20_5();
  v59 = *(v3 + 24);
  v60 = OUTLINED_FUNCTION_1_18();
  v63 = sub_25BB3EF0C(v60, v61, v9, v62);
  if (!v63)
  {
    swift_endAccess();
LABEL_61:
    v65 = v134;
    goto LABEL_62;
  }

  v64 = v63;
  swift_endAccess();
  v6 = sub_25BB3BEAC(v64);

  v65 = v134;
  if (!v6)
  {
    goto LABEL_62;
  }

  if ([*(v6 + 16) maxAvailableSizeWithAlignment_] < v131)
  {

    goto LABEL_62;
  }

  swift_beginAccess();
  v95 = sub_25BB3A524(&v139, v5, v133 & 1, v134);
  if (!*v96)
  {
    (v95)(&v139, 0);
    swift_endAccess();

    v5 = v132;
    goto LABEL_61;
  }

  v70 = sub_25BB3B7E8();
  (v95)(&v139, 0);
  swift_endAccess();

  v5 = v132;
  v65 = v134;
  if (v70)
  {
    if ((v128 & 0xFE) != 0)
    {
      v97 = 48;
    }

    else
    {
      v97 = 0;
    }

    v56 = [*(v70 + 16) newBufferWithLength:a1 options:v97];
    OUTLINED_FUNCTION_5_16();
    v98 = *(v3 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v138 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v99 = OUTLINED_FUNCTION_1_18();
    v101 = sub_25BAFEF78(v99, v100, v134);
    OUTLINED_FUNCTION_19_7(v101, v102);
    if (!v43)
    {
      v79 = v103;
      v105 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
      v88 = v138;
      if (OUTLINED_FUNCTION_21_6())
      {
        v106 = OUTLINED_FUNCTION_1_18();
        v108 = sub_25BAFEF78(v106, v107, v134);
        if ((v105 & 1) != (v81 & 1))
        {
LABEL_103:
          sub_25BCB795C();
          __break(1u);
          goto LABEL_104;
        }

        v79 = v108;
      }

      *(v3 + 24) = v138;
      if (v105)
      {
        goto LABEL_76;
      }

      v92 = MEMORY[0x277D84F90];
      goto LABEL_75;
    }

    goto LABEL_99;
  }

LABEL_62:
  v66 = sub_25BB3A9D4();
  if ((v67 & 1) == 0)
  {
    v6 = v66;
    v68 = sub_25BB3A64C(&selRef_size);
    if (__OFADD__(v68, v5))
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (v68 + v5 >= v6)
    {
LABEL_104:
      OUTLINED_FUNCTION_13_8();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_9_9();
      v139 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](v5 + 10, 0x800000025BCDB6F0);
      v139 = [v56 maxBufferLength];
      v112 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v112);

      MEMORY[0x25F876C90](3039330, 0xE300000000000000);
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_2_18();
LABEL_105:
      sub_25BA97890();
    }
  }

  v69 = [objc_allocWithZone(MEMORY[0x277CD6E48]) init];
  [v69 setType_];
  [v69 setCpuCacheMode_];
  [v69 setStorageMode_];
  [v69 setHazardTrackingMode_];
  [v69 setSize_];
  v6 = [v56 newHeapWithDescriptor_];

  if (!v6)
  {
    OUTLINED_FUNCTION_13_8();
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000027, 0x800000025BCDB7D0);
    v139 = sub_25BB3A64C(&selRef_size);
    v110 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v110);

    MEMORY[0x25F876C90](0x7720666F202C6062, 0xEE00602068636968);
    v139 = sub_25BB3A64C(&selRef_usedSize);
    v111 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v111);

    MEMORY[0x25F876C90](0xD00000000000002FLL, 0x800000025BCDB800);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_2_18();
    goto LABEL_105;
  }

  type metadata accessor for MPSHeap();
  v70 = swift_allocObject();
  *(v70 + 16) = v6;
  if ((v128 & 0xFE) != 0)
  {
    v71 = 48;
  }

  else
  {
    v71 = 0;
  }

  v56 = [v6 newBufferWithLength:a1 options:v71];
  OUTLINED_FUNCTION_5_16();
  v72 = *(v3 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v137 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  v73 = OUTLINED_FUNCTION_1_18();
  v75 = sub_25BAFEF78(v73, v74, v65);
  OUTLINED_FUNCTION_19_7(v75, v76);
  if (v43)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v79 = v77;
  v80 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  v88 = v137;
  if ((OUTLINED_FUNCTION_21_6() & 1) == 0)
  {
    goto LABEL_73;
  }

  v89 = OUTLINED_FUNCTION_1_18();
  v91 = sub_25BAFEF78(v89, v90, v134);
  if ((v80 & 1) != (v81 & 1))
  {
    goto LABEL_103;
  }

  v79 = v91;
LABEL_73:
  *(v3 + 24) = v137;
  if ((v80 & 1) == 0)
  {
    v92 = MEMORY[0x277D84F90];
LABEL_75:
    sub_25BC1ADB8(v79, v5, v133 & 1, v134, v92, sub_25BB3D6FC, 0, v88);
  }

LABEL_76:
  v93 = *(v88 + 56) + 24 * v79;
  sub_25BC16AE8(v70, v81, v82, v83, v84, v85, v86, v87, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  swift_endAccess();

  return v56;
}

uint64_t sub_25BB3B7E8()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
    sub_25BB3BF28();
    return v7;
  }

  if (!v1)
  {
    return v1;
  }

  v1 = sub_25BC16CFC(0, *v0);
  sub_25BB3BF28();
  v3 = v2;
  v4 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v4;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C(v4);
    v4 = result;
    *v0 = result;
  }

  if (*(v4 + 16))
  {
    v6 = *(v4 + 32);
    *(v4 + 32) = v3;

    sub_25BCB725C();
    sub_25BB3C00C(0, *(*v0 + 16));
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB3B8E4()
{
  strcpy(v37, "MPSAllocator");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  sub_25BCB70FC();

  result = swift_beginAccess();
  v2 = 0;
  v3 = 0;
  v4 = *(v0 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + 24 * (v10 | (v9 << 6))) + 16);
    v12 = __OFADD__(v3, v11);
    v3 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:
      sub_25BCB77FC();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A64C(&selRef_size);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A64C(&selRef_usedSize);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      sub_25BCB70FC();

      sub_25BB3A7F0();
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_23_7();

      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_12_9();

      MEMORY[0x25F876C90](0x7370616548090ALL, 0xE700000000000000);
      v13 = *(v0 + 24);
      v15 = *(v13 + 64);
      v14 = v13 + 64;
      v16 = OUTLINED_FUNCTION_0_20(v13);
      v19 = v18 & v17;
      v21 = (v20 + 63) >> 6;
      v35 = v16;
      result = sub_25BCB617C();
      v22 = 0;
      if (!v19)
      {
        goto LABEL_15;
      }

      do
      {
        v23 = v22;
LABEL_19:
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = 3 * (v24 | (v23 << 6));
        v26 = (*(v35 + 48) + 8 * v25);
        v27 = *v26;
        v28 = v26[2];
        v29 = (*(v35 + 56) + 8 * v25);
        v30 = *v29;
        v31 = v29[2];

        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDB680);
        v32 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v32);

        MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDB6A0);
        v33 = sub_25BC9DFF4(v28);
        MEMORY[0x25F876C90](v33);

        MEMORY[0x25F876C90](96, 0xE100000000000000);
        MEMORY[0x25F876C90](0, 0xE000000000000000);

        MEMORY[0x25F876C90](30752, 0xE200000000000000);
        v36 = *(v30 + 16);
        v34 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v34);

        MEMORY[0x25F876C90](592138, 0xE300000000000000);
      }

      while (v19);
LABEL_15:
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_23;
        }

        if (v23 >= v21)
        {

          return v37[0];
        }

        v19 = *(v14 + 8 * v23);
        ++v22;
        if (v19)
        {
          v22 = v23;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25BB3BDF4(uint64_t a1)
{
  result = sub_25BB3D31C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_17_9();
  if (v7)
  {
    return 2;
  }

  else
  {
    return sub_25BB3D35C(v5, v6, 0, a1) & 1;
  }
}

uint64_t sub_25BB3BE50(uint64_t a1)
{
  result = sub_25BB3D31C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_17_9();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_25BB3D3AC(v5, v6, 0, a1);
  }
}

uint64_t sub_25BB3BEAC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
}

uint64_t sub_25BB3BEDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_25BB3BF28()
{
  OUTLINED_FUNCTION_10_9();
  if (v2)
  {
    v4 = v1;
    if (!v0())
    {
      OUTLINED_FUNCTION_10_9();

      v4(v3 - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB3BF8C(void *a1@<X8>)
{
  OUTLINED_FUNCTION_10_9();
  if (v2)
  {
    sub_25BB30EC4(__src);
    if (__src[0])
    {
      memcpy(a1, __src, 0xECuLL);
    }

    else
    {
      sub_25BAA6F5C(__src, &qword_27FBB4828, &qword_25BCBF518);
      OUTLINED_FUNCTION_10_9();
      sub_25BB309AC(v3 - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25BB3C00C(unint64_t result, uint64_t a2)
{
  v3 = v2;
  for (i = result; (i + 0x4000000000000000) >= 0; i = v6)
  {
    if (__OFADD__(2 * i, 2))
    {
      goto LABEL_15;
    }

    v6 = i;
    if (((2 * i) | 1) < a2)
    {
      v8 = v3[1];
      v7 = v3[2];
      v9 = *v3;
      v14 = sub_25BC16CFC((2 * i) | 1, *v3);
      v13 = sub_25BC16CFC(i, v9);
      LOBYTE(v7) = v8(&v14, &v13);

      if (v7)
      {
        v6 = (2 * i) | 1;
      }

      else
      {
        v6 = i;
      }
    }

    if ((2 * i + 2) < a2)
    {
      v11 = v3[1];
      v10 = v3[2];
      v12 = *v3;
      v14 = sub_25BC16CFC(2 * i + 2, *v3);
      v13 = sub_25BC16CFC(v6, v12);
      LOBYTE(v10) = v11(&v14, &v13);

      if (v10)
      {
        v6 = 2 * i + 2;
      }
    }

    if (v6 == i)
    {
      return result;
    }

    result = sub_25BB3C1E4(i, v6);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_25BB3C170(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = TensorShape.subscript.getter(a1);
    v5 = TensorShape.subscript.getter(a2);
    TensorShape.subscript.setter(v5, a1);

    TensorShape.subscript.setter(v4, a2);
  }
}

unint64_t sub_25BB3C1E4(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * result);
  v8 = *(v4 + 32 + 8 * a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C(v4);
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  v9 = v4 + 8 * v3;
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  sub_25BCB725C();
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C(v11);
    v11 = result;
    *v2 = result;
  }

  if (*(v11 + 16) <= a2)
  {
    goto LABEL_18;
  }

  v12 = v11 + 8 * a2;
  v13 = *(v12 + 32);
  *(v12 + 32) = v7;

  return sub_25BCB725C();
}

void sub_25BB3C310(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > a1)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + 8 * a1);
          v6 = *(v4 + 32 + 8 * a2);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        sub_25BBF14FC(v4);
        v4 = v12;
LABEL_6:
        if (*(v4 + 16) <= a1)
        {
          __break(1u);
        }

        else
        {
          v9 = v4 + 32;
          v10 = *(v4 + 32 + 8 * a1);
          *(v4 + 32 + 8 * a1) = v6;

          if (*(v4 + 16) > v2)
          {
            v11 = *(v9 + 8 * v2);
            *(v9 + 8 * v2) = v5;

            *v3 = v4;
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_12;
  }
}

BOOL sub_25BB3C3F4(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void (*sub_25BB3C420(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_25BB3D2C0(v7);
  v7[9] = sub_25BB3C6F4(v7 + 4, a2, a3);
  return sub_25BB3D708;
}

void (*sub_25BB3C4B8(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_25BB3D2C0(v7);
  v7[9] = sub_25BB3C980(v7 + 4, a2, a3);
  return sub_25BB3D708;
}

uint64_t (*sub_25BB3C550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v9 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v9;
  v10 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_25BB3D2E8(v9);
  v9[9] = sub_25BB3CE40(v9 + 4, a2, a3, a4);
  return sub_25BB3C5F8;
}

void (*sub_25BB3C5FC(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_25BB3D2C0(v7);
  v7[9] = sub_25BB3D088(v7 + 4, a2, a3);
  return sub_25BB3D708;
}

void sub_25BB3C694(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25BB3C6F4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = sub_25BCB5DDC();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4840, &qword_25BCBEAA0) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v4;
  v16 = sub_25BA9266C(a2, a3);
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4848, &qword_25BCBF528);
  if (sub_25BCB745C())
  {
    v20 = *v4;
    v21 = sub_25BA9266C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v18 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    (*(v11 + 32))(v14, *(*v4 + 56) + *(v11 + 72) * v18, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v9);
  return sub_25BB3C958;
}

void (*sub_25BB3C980(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = sub_25BCB5CDC();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB4830, &qword_25BCBF520) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v4;
  v16 = sub_25BA9266C(a2, a3);
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC0, &qword_25BCBBE10);
  if (sub_25BCB745C())
  {
    v20 = *v4;
    v21 = sub_25BA9266C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v18 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    (*(v11 + 32))(v14, *(*v4 + 56) + *(v11 + 72) * v18, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v23, 1, v9);
  return sub_25BB3CBE4;
}

void sub_25BB3CC0C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = v8[3];
  if (a2)
  {
    v11 = v8[8];
    sub_25BAA486C(v9, v11, a3, a4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v10);
    v13 = *(v8 + 96);
    v14 = v8[8];
    if (EnumTagSinglePayload != 1)
    {
      v15 = v8[2];
      v16 = *(v8[4] + 32);
      v16(v8[6], v14, v8[3]);
      v17 = *v15;
      v18 = v8[11];
      v19 = v8[6];
      if ((v13 & 1) == 0)
      {
LABEL_4:
        v20 = v8[5];
        v21 = v8[1];
        v32 = *v8;
        v16(v20, v19, v8[3]);
        a5(v18, v32, v21, v20, v17);
        sub_25BCB617C();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = v8[9];
    sub_25BAA486C(v9, v22, a3, a4);
    v23 = __swift_getEnumTagSinglePayload(v22, 1, v10);
    v13 = *(v8 + 96);
    v14 = v8[9];
    if (v23 != 1)
    {
      v25 = v8[2];
      v16 = *(v8[4] + 32);
      v16(v8[7], v14, v8[3]);
      v17 = *v25;
      v18 = v8[11];
      v19 = v8[7];
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v16(*(v17 + 56) + *(v8[4] + 72) * v18, v19, v8[3]);
      goto LABEL_10;
    }
  }

  sub_25BAA6F5C(v14, a3, a4);
  if (v13)
  {
    v24 = v8[3];
    sub_25BB3D61C(*(*v8[2] + 48) + 16 * v8[11]);
    sub_25BCB747C();
  }

LABEL_10:
  v26 = v8[9];
  v27 = v8[10];
  v29 = v8[7];
  v28 = v8[8];
  v31 = v8[5];
  v30 = v8[6];
  sub_25BAA6F5C(v27, a3, a4);
  free(v27);
  free(v26);
  free(v28);
  free(v29);
  free(v30);
  free(v31);

  free(v8);
}

void (*sub_25BB3CE40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v10;
  v10[4] = a4;
  v10[5] = v4;
  *(v10 + 56) = a3;
  v10[3] = a2;
  v11 = *v4;
  v12 = sub_25BAFEF78(a2, a3, a4);
  *(v10 + 57) = v13 & 1;
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  if (sub_25BCB745C())
  {
    v16 = *v5;
    v17 = sub_25BAFEF78(a2, a3 & 1, a4);
    if ((v15 & 1) == (v18 & 1))
    {
      v14 = v17;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  v10[6] = v14;
  if (v15)
  {
    v19 = *(*v5 + 56) + 24 * v14;
    v20 = *v19;
    v21 = *(v19 + 16);
  }

  else
  {
    v21 = 0;
    v20 = 0uLL;
  }

  *v10 = v20;
  v10[2] = v21;
  return sub_25BB3CFA4;
}

void sub_25BB3CFA4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 57);
  if (v2)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      OUTLINED_FUNCTION_18_10(v6, *(v7 + 56));
    }

    else
    {
      sub_25BC1ADB8(v6, v1[3], *(v1 + 56), v1[4], v2, v3, v4, v7);
    }
  }

  else if (*(*a1 + 57))
  {
    v8 = v1[6];
    v9 = *v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4818, &qword_25BCBF510);
    sub_25BB3D5C8();
    OUTLINED_FUNCTION_16_5();
    sub_25BCB747C();
  }

  v10 = OUTLINED_FUNCTION_14_12();
  sub_25BB3D548(v10);
  v11 = OUTLINED_FUNCTION_16_5();
  sub_25BB3D588(v11);

  free(v1);
}

void (*sub_25BB3D088(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  *(v8 + 4) = a3;
  *(v8 + 5) = v3;
  *(v8 + 3) = a2;
  v9 = *v3;
  v10 = sub_25BA9266C(a2, a3);
  v8[56] = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
  if (sub_25BCB745C())
  {
    v14 = *v4;
    v15 = sub_25BA9266C(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 6) = v12;
  if (v13)
  {
    v17 = *(*v4 + 56) + 24 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
  }

  *v8 = v18;
  *(v8 + 8) = v19;
  return sub_25BB3D1DC;
}

void sub_25BB3D1DC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 56);
  if (v3)
  {
    v6 = v1[6];
    v7 = *v1[5];
    if (v5)
    {
      OUTLINED_FUNCTION_18_10(v6, *(v7 + 56));
    }

    else
    {
      sub_25BC1AFB8(v6, v1[3], v1[4], v2, v3, v4, v7);
      sub_25BCB617C();
    }
  }

  else if ((*a1)[7])
  {
    sub_25BB3D61C(*(*v1[5] + 48) + 16 * v1[6]);
    OUTLINED_FUNCTION_16_5();
    sub_25BCB747C();
  }

  v8 = OUTLINED_FUNCTION_14_12();
  sub_25BB3D670(v8, v9);
  v10 = OUTLINED_FUNCTION_16_5();
  sub_25BB3D6B4(v10, v11);

  free(v1);
}

uint64_t (*sub_25BB3D2C0(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25BB3D6F8;
}

uint64_t (*sub_25BB3D2E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25BB3D310;
}

uint64_t sub_25BB3D31C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_25BCB703C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_25BB3D35C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25BB3D3AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];
    sub_25BCB617C();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25BB3D428(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_25BAB2550((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    sub_25BCB725C();
    return v9;
  }

  return result;
}

uint64_t sub_25BB3D4A8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_25BC1B13C(v1);
    v1 = result;
    *v0 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    sub_25BCB725C();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_25BB3D548(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BB3D588(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25BB3D5C8()
{
  result = qword_27FBB4820;
  if (!qword_27FBB4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4820);
  }

  return result;
}

uint64_t sub_25BB3D670(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_25BCB617C();

    return sub_25BCB617C();
  }

  return result;
}

uint64_t sub_25BB3D6B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_25BB3D70C(char a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:0];

  return v2;
}

id sub_25BB3D780(unsigned __int8 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:9];

  return v2;
}

id sub_25BB3D7F4(unsigned __int16 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:10];

  return v2;
}

id sub_25BB3D8B0(char a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:5];

  return v2;
}

id sub_25BB3D924(__int16 a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:6];

  return v2;
}

id sub_25BB3D998(uint64_t a1, SEL *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a2];
  v5 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v4 dataType:a3];

  return v5;
}

id sub_25BB3DA38(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v4 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v3 dataType:a2];

  return v4;
}

id sub_25BB3DAC8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v1 dataType:7];

  return v2;
}

id sub_25BB3DB3C(__n128 _Q0)
{
  __asm { FCVT            S8, H0 }

  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v7) = _S8;
  v8 = [v6 initWithFloat_];
  v9 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v8 dataType:2];

  return v9;
}

id sub_25BB3DBB8(float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v4 dataType:3];

  return v5;
}

id sub_25BB3DC34()
{
  sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  sub_25BCB617C();
  return sub_25BB3DC94();
}

id sub_25BB3DC94()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_25BCB633C();

  v2 = [v0 initWithStringScalar_];

  return v2;
}

id sub_25BB3DD08()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25BB3DC34();
}

id sub_25BB3DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = OUTLINED_FUNCTION_5();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BCB681C();
  *(v5 + 32) = sub_25BCB6A6C();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB73BC();
  v7 = sub_25BB3DD10(v6, a2, a3);
  v8 = objc_allocWithZone(SNNMILDataValue);
  return sub_25BB3EA78(v5, v6, v7);
}

id sub_25BB3DE3C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = OUTLINED_FUNCTION_5();
  *(v2 + 16) = xmmword_25BCBB6D0;
  v3 = *(v1 + 16);
  *(v2 + 32) = sub_25BCB6A6C();
  v4 = sub_25BAF99E8(v1);
  v5 = objc_allocWithZone(SNNMILDataValue);
  return sub_25BB3EA78(v2, v4, 7);
}

uint64_t sub_25BB3DF08(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v4 = *(a2 + 64);
  v5 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v4(&v8, sub_25BB3E7FC, v7, v5, a1, a2);
  return v8;
}

id sub_25BB3DFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BAF99E8(*(a3 + 16));
  if (a1)
  {
    v5 = result;
    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC0300();
    return sub_25BBC052C(v5, a1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BB3E02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BAF99E8(*(a3 + 24));
  if (a1)
  {
    v5 = result;
    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC15E8();
    return sub_25BBC052C(v5, a1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB3E0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  (*(a3 + 16))(&v11, a2, a3);
  result = sub_25BAF99E8(v11);
  if (a1)
  {
    v9 = result;

    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v10 = sub_25BB3DEC4(a2, a3);
    result = sub_25BBC052C(v9, a1, v10);
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB3E2B4()
{

  sub_25BAA4554(0);
  BaseAddress = IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = *(v0 + 24);
  v3 = sub_25BCB617C();
  result = sub_25BAF99E8(v3);
  if (BaseAddress)
  {
    v5 = result;

    sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC15E8();
    v7 = sub_25BBC052C(v5, BaseAddress, v6);
    sub_25BAA46FC(0);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BB3E3A0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) == 1)
  {
    v2 = sub_25BCB58EC();
    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
    v6 = sub_25BCB617C();
    v7 = sub_25BAF99E8(v6);

    v8 = sub_25BBC046C();
    v9 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_offset);
    v10 = sub_25BCB7AEC();
    v11 = objc_allocWithZone(SNNMILBlobValue);
    return sub_25BB3EB28(v2, v4, v7, v8, v10);
  }

  else
  {

    return sub_25BB9AA18(v13, v0);
  }
}

id sub_25BB3E4C0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:7];
      goto LABEL_10;
    case 2:
      _H0 = *v0;
      __asm { FCVT            S8, H0 }

      v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v20) = _S8;
      v21 = [v19 initWithFloat_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:2];
      goto LABEL_10;
    case 3:
      v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v24) = v2;
      v21 = [v23 initWithFloat_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:3];
      goto LABEL_10;
    case 4:
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      sub_25BCB617C();
      return sub_25BB3DC94();
    case 5:
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v3 = OUTLINED_FUNCTION_5();
      *(v3 + 16) = xmmword_25BCBB6D0;
      v4 = *(v2 + 16);
      *(v3 + 32) = sub_25BCB6A6C();
      v5 = sub_25BAF99E8(v2);
      objc_allocWithZone(SNNMILDataValue);
      v6 = v3;
      v7 = v5;
      v8 = 7;
      goto LABEL_5;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v10 = OUTLINED_FUNCTION_5();
      *(v10 + 16) = xmmword_25BCBB6D0;
      v11 = *(v2 + 16);
      *(v10 + 32) = sub_25BCB6A6C();
      v12 = sub_25BAF9F20(v2);
      objc_allocWithZone(SNNMILDataValue);
      v6 = v10;
      v7 = v12;
      v8 = 3;
LABEL_5:
      result = sub_25BB3EA78(v6, v7, v8);
      break;
    case 8:
      v30 = *v0;
      v31 = *(v0 + 8);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4860, &unk_25BCBF6D0);
      if (swift_dynamicCast())
      {
        v26 = *(&v33 + 1);
        v27 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        v28 = (*(v27 + 16))(v26, v27);
        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_25BB3ECB0(&v32);
        ObjectType = swift_getObjectType();
        v28 = sub_25BB3DF08(ObjectType, v1);
      }

      result = v28;
      break;
    default:
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v22 = [objc_allocWithZone(SNNMILDataValue) initWithScalar:v21 dataType:0];
LABEL_10:
      v25 = v22;

      result = v25;
      break;
  }

  return result;
}

uint64_t sub_25BB3E81C(uint64_t a1, uint64_t a2)
{

  v6 = sub_25BC76C08();
  [v6 lock];

  v7 = *(v2 + 40);
  if (v7 < 0)
  {
    v10 = *(v2 + 32);
    v9 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_25BC76F00();
    v9 = v8;
  }

  [*(v2 + 48) unlock];

  ObjectType = swift_getObjectType();
  MEMORY[0x28223BE20](ObjectType);
  v15[2] = a1;
  v15[3] = a2;
  v12 = *(v9 + 64);
  v13 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v12(&v16, sub_25BB3EC4C, v15, v13, ObjectType, v9);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_25BB3E97C(uint64_t a1, uint64_t a2)
{
  sub_25BC2B4B4();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 64);
  v9 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
  v8(&v11, a1, a2, v9, ObjectType, v6);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v11;
}

void *sub_25BB3EA40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr))
{
  result = a3(&v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

id sub_25BB3EA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v5 = sub_25BCB672C();

  v6 = sub_25BCB672C();

  v7 = [v3 initWithShape:v5 scalars:v6 dataType:a3];

  return v7;
}

id sub_25BB3EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v9 = sub_25BCB672C();

  v10 = [v5 initWithFilename:v8 shape:v9 dataType:a4 offset:a5];

  return v10;
}

id sub_25BB3EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_25BB3DFA8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *sub_25BB3EC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr)@<X2>, void *a4@<X8>)
{
  result = sub_25BB3EA40(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

id sub_25BB3EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_25BB3E02C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_25BB3ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4868, &unk_25BCC88C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB3ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_25BA9266C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_15(v3);
    v6 = *v5;
    v7 = v5[1];
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BB3ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25BA9266C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void *sub_25BB3EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25BA9266C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_25BB3EE04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_25BAFEEB0(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15(v2);
  v5 = *v4;
  v6 = v4[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_25BB3EE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25BA9266C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_25BCB5DDC();
    OUTLINED_FUNCTION_9_3(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_25BCB5DDC();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_25BB3EF0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v4 = sub_25BAFEF78(a1, a2 & 1, a3), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_16_12(v4);
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

double sub_25BB3EF70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_25BAFEFFC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_25BB2BA90(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25BB3EFD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v4 = sub_25BAFF060(a1, a2, a3), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_15(v4);
    v7 = *v6;
    v8 = v6[1];
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BB3F020(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_25BAFEEB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_25BB3F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_25BA9266C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_16_12(v3);
    sub_25BCB617C();
    sub_25BCB617C();
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t Tensor.placed(on:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = Tensor.scalarType.getter();
  v8 = sub_25BBABD24(v6, v7);
  if (v8 != 2)
  {
    sub_25BC87800(a1, v8 & 1);
  }

  *a2 = v5;

  return Tensor.place(on:)(a1);
}

uint64_t Tensor.scalarCount.getter()
{
  v1 = *(*(*v0 + 16) + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void Tensor.isScalar.getter()
{
  if (*(*(*(*v0 + 16) + 152) + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v2)
      {
        break;
      }

      if (v1 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t Tensor.scalars<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BCB783C();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *v3;
  v16 = *(a3 + 32);
  v31 = a1;
  v17 = OUTLINED_FUNCTION_23_0();
  v16(v17);
  Tensor.scalarType.getter();
  v19 = (*(v18 + 32))(&v33);
  v20 = *(v15 + 16);
  if (v32 == v33)
  {
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_20_6();
    *(v21 - 16) = v15;
    v22 = sub_25BCB68CC();

    sub_25BAA4214(sub_25BB41738, v32, v22);

    return v15;
  }

  else
  {
    OUTLINED_FUNCTION_10();
    swift_retain_n();
    v24 = sub_25BA928B4();
    [v24 lock];

    OUTLINED_FUNCTION_6_19();
    sub_25BA92920(v25, v26, v27, v28);
    [*(v20 + 224) unlock];

    swift_unknownObjectRelease();
    v29 = OUTLINED_FUNCTION_23_0();
    v16(v29);
    (*(v9 + 104))(v14, *MEMORY[0x277D84660], v6);
    Tensor.cast(to:roundingRule:)();
    (*(v9 + 8))(v14, v6);
    OUTLINED_FUNCTION_21_7();
    v23 = Tensor.scalars<A>(as:)();
  }

  return v23;
}

uint64_t sub_25BB3F4D8(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_25BAA6EB0();

  return v2;
}

uint64_t Tensor.place(on:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_25BAA51C8(*(*v1 + 16) + 168, v29);
  if (v30)
  {
    if (sub_25BAD1FB0(v32, *(a1 + 40)))
    {
      v5 = v30;
      v6 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v7 = (*(v6 + 24))(a1, v5, v6);
      result = sub_25BABF0A8(v29);
      if (v7)
      {
        return result;
      }
    }

    else
    {
      sub_25BABF0A8(v29);
    }
  }

  else
  {
    sub_25BAA6FBC(v29, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  v9 = *(v4 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v10 = sub_25BA928B4();
  [v10 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v11, v12, v13, v14);
  [*(v9 + 224) unlock];

  v16 = v29[0];
  v15 = v29[1];
  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v17 = qword_281557400;
  v18 = *(v4 + 16);
  v28 = *(v18 + 152);
  v27 = *(v18 + 160);
  sub_25BABEF40(a1, v29);
  swift_unknownObjectRetain();
  sub_25BCB617C();
  sub_25BC72A84(&v28, &v27, v29, v17, v16, v15);
  v20 = v19;
  sub_25BAA6FBC(v29, &qword_27FBB6730, &qword_25BCBC4B0);

  v21 = type metadata accessor for TensorRepresentation();
  sub_25BABEF40(a1, v29);
  ObjectType = swift_getObjectType();
  v23 = swift_unknownObjectRetain();
  LOBYTE(v28) = 1;
  v24 = sub_25BC5FAD0(v23, v29, 0x100000000uLL, v21, ObjectType, v20);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  sub_25BAA6EB0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v26 = *v2;

  *v2 = v25;
  return result;
}

void sub_25BB3F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v13 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v13);

  v14 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v14, v15, v16, v17);
  if (v12)
  {
    [v10[28] unlock];
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v18 v19];

    swift_getObjectType();
    v20 = *(a10 + 56);
    v21 = OUTLINED_FUNCTION_5_17();
    v22(v21);
    OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3F8A8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = v2;

  v6 = sub_25BA928B4();
  [v6 lock];

  v7 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v7, v8, v9, v10);
  [*(v4 + 224) unlock];

  if (v3)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = sub_25BA928B4();
    [v11 lock];

    ObjectType = swift_getObjectType();
    v13 = *(v16 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
    v13(&v15, a1, v17, v14, ObjectType, v16);
    [*(v4 + 224) unlock];
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v13 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v13);

  v14 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v14, v15, v16, v17);
  [v10[28] unlock];

  if (v12)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v18 v19];

    swift_getObjectType();
    v20 = *(a10 + 56);
    v21 = OUTLINED_FUNCTION_5_17();
    v22(v21);
    [v10[28] unlock];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v13 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v13);

  v14 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v14, v15, v16, v17);
  if (v12)
  {
    [v10[28] unlock];

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v18 v19];

    swift_getObjectType();
    v20 = *(a10 + 56);
    v21 = OUTLINED_FUNCTION_5_17();
    v22(v21);
    OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

uint64_t Tensor.resolve(descriptor:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*v1 + 16);
  sub_25BCB617C();
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v5 = sub_25BA928B4();
  [v5 lock];

  OUTLINED_FUNCTION_21_7();
  sub_25BA92920(v6, v7, v8, v9);
  [*(v4 + 224) unlock];

  return swift_unknownObjectRelease();
}

void TensorScalar.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(*(*(*a1 + 16) + 152) + 16))
  {
    goto LABEL_6;
  }

  do
  {
    OUTLINED_FUNCTION_0();
    if (!v8)
    {
      __break(1u);
      return;
    }
  }

  while (v6 != 1);
  if (v7 != 1)
  {

    v9 = 1;
  }

  else
  {
LABEL_6:
    Tensor.scalar<A>(as:)(a2, a2, a3);

    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(a4, v9, 1, a2);
}

uint64_t sub_25BB3FD94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v5 = *(*(a2 + 16) + 152);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 1;
    v9 = *(v5 + 16);
    while (1)
    {
      v10 = *v7++;
      v11 = v8 * v10;
      if ((v8 * v10) >> 64 != (v8 * v10) >> 63)
      {
        break;
      }

      v8 = v11;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 1;
LABEL_8:
    if ((*(*(a3 - 8) + 72) * v11) >> 64 != (*(*(a3 - 8) + 72) * v11) >> 63)
    {
      goto LABEL_16;
    }

    if (!v6)
    {
LABEL_13:
      sub_25BCB631C();
      sub_25BCB632C();
      swift_getWitnessTable();
      result = sub_25BCB68DC();
      *a4 = result;
      return result;
    }

    v12 = (v5 + 32);
    v13 = 1;
    while (1)
    {
      v14 = *v12++;
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      v13 = v15;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t Tensor.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 16);

  v6 = OUTLINED_FUNCTION_5_17();
  sub_25BAA4214(v6, v7, a3);
}

uint64_t Tensor.withUnsafeMutableBytes<A>(_:)()
{
  v2 = v0;
  v3 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    v23 = *(v5 + 16);

    OUTLINED_FUNCTION_21_7();
    sub_25BC5F0C8(v24, v25, v26);
  }

  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v7 = sub_25BA928B4();
  [v7 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v8, v9, v10, v11);
  if (!v1)
  {
    [*(v6 + 224) unlock];
    OUTLINED_FUNCTION_10();

    v13 = v28[0];
    v12 = v28[1];
    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v14 = qword_281557400;
    v15 = *(v5 + 16);
    v30 = *(v15 + 152);
    v29 = *(v15 + 160);
    sub_25BAA51C8(v15 + 168, v28);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v30, &v29, v28, v14, v13, v12);
    v17 = v16;
    sub_25BAA6FBC(v28, &qword_27FBB6730, &qword_25BCBC4B0);

    v18 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(*(v5 + 16) + 168, v28);
    ObjectType = swift_getObjectType();
    v20 = swift_unknownObjectRetain();
    LOBYTE(v30) = 1;
    v21 = sub_25BC5FAD0(v20, v28, 0x100000000uLL, v18, ObjectType, v17);
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v5 = swift_allocObject();
    *(v5 + 16) = v21;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v22 = *v2;

    *v2 = v5;
    goto LABEL_6;
  }

  [*(v6 + 224) unlock];

  __break(1u);
  return result;
}

uint64_t ContiguousArray<A>.resolve(descriptor:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v10 = a1[1];
  v11 = *a1;
  v12 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);

  v4 = 0;
  while (v3 != v4)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_15;
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_18;
    }

    v5 = *(*(v2 + 8 * v4 + 32) + 16);
    swift_retain_n();

    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v6 v7];

    swift_beginAccess();
    sub_25BA9323C((v5 + 5), v13);
    if (v15 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v14);
LABEL_9:
      [v5[28] unlock];

      ++v4;
    }

    else
    {
      if (v15 == 2)
      {
        sub_25BA9778C(v13);
        goto LABEL_9;
      }

      sub_25BA9778C(v13);
      [v5[28] unlock];

      MEMORY[0x25F876F40](v8);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      OUTLINED_FUNCTION_5_17();
      sub_25BCB680C();
      v12 = v16;
      ++v4;
    }
  }

  v2 = v12;
  if (!sub_25BA9AC54(v12))
  {
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13[0] = v11;
  v13[1] = v10;
  sub_25BACEFC8(v2, v13);
}

uint64_t Tensor.customMirror.getter()
{
  v1 = sub_25BCB7A8C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v22 = *v0;
  v14 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE70;
  *(v15 + 32) = 0x6570616873;
  *(v15 + 40) = 0xE500000000000000;
  *(v15 + 72) = &type metadata for TensorShape;
  *(v15 + 48) = *(*(v14 + 16) + 152);
  *(v15 + 80) = 0x795472616C616373;
  *(v15 + 88) = 0xEA00000000006570;
  v21 = v14;
  v16 = Tensor.scalarType.getter();
  *(v15 + 120) = swift_getMetatypeMetadata();
  *(v15 + 96) = v16;
  v17 = *MEMORY[0x277D84C10];
  v18 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_9_3(v18);
  (*(v19 + 104))(v13, v17, v18);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
  (*(v4 + 104))(v9, *MEMORY[0x277D84C38], v1);

  sub_25BCB617C();
  return sub_25BCB7ADC();
}

uint64_t sub_25BB40608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x795472616C616373 && a2 == 0xEA00000000006570;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000025BCDB9D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

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

unint64_t sub_25BB40780(char a1)
{
  result = 0x6570616873;
  switch(a1)
  {
    case 1:
      result = 0x795472616C616373;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BB40804@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BADEF2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB40830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BB40778(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_25BB40864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB40608(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25BB408AC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BADEF2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB408D4(uint64_t a1)
{
  v2 = sub_25BB41758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB40910(uint64_t a1)
{
  v2 = sub_25BB41758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB4094C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_25BCB741C();
  __swift_allocate_value_buffer(v4, qword_28154C1C8);
  v5 = __swift_project_value_buffer(v4, qword_28154C1C8);
  sub_25BCB73FC();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB40A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_25BCB741C();
  __swift_allocate_value_buffer(v4, qword_27FBB4870);
  v5 = __swift_project_value_buffer(v4, qword_27FBB4870);
  sub_25BCB73FC();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4890, &qword_25BCBF758);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v31 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB41758();
  sub_25BCB7B6C();
  v36[0] = *(*(v12 + 16) + 152);
  LOBYTE(v33) = 0;
  sub_25BB417AC();
  sub_25BCB617C();
  sub_25BCB779C();
  if (!v2)
  {

    v36[0] = v12;
    Tensor.scalarType.getter();
    (*(v14 + 32))(&v33);
    LOBYTE(v31) = 1;
    sub_25BB41800();
    sub_25BCB779C();
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_25BCB7B5C();
    if (qword_28154C1E0 != -1)
    {
      swift_once();
    }

    v17 = sub_25BCB741C();
    v18 = __swift_project_value_buffer(v17, qword_28154C1C8);
    sub_25BB3EF70(v18, v16, &v31);

    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48A0, &qword_25BCBF770);
      if (swift_dynamicCast())
      {
        if (*(&v34 + 1))
        {
          sub_25BA97060(&v33, v36);
          v19 = v37;
          v20 = v38;
          __swift_project_boxed_opaque_existential_1(v36, v37);
          *&v33 = v12;
          v21 = sub_25BCB771C();
          (*(v20 + 8))(&v33, v21, v19, v20);

          LOBYTE(v33) = 3;
          sub_25BCB775C();

          __swift_destroy_boxed_opaque_existential_1(v36);
          return (*(v7 + 8))(v11, v4);
        }
      }

      else
      {
        v35 = 0;
        v33 = 0u;
        v34 = 0u;
      }
    }

    else
    {
      sub_25BAA6FBC(&v31, &qword_27FBB40F8, &qword_25BCBF760);
      v33 = 0u;
      v34 = 0u;
      v35 = 0;
    }

    v22 = sub_25BAA6FBC(&v33, &qword_27FBB4898, &qword_25BCBF768);
    MEMORY[0x28223BE20](v22);
    *(&v31 - 2) = v11;
    v23 = *(v12 + 16);

    sub_25BAA82DC(sub_25BB41854, (&v31 - 2), v24, v25, v26, v27, v28, v29, v31, *(&v31 + 1));

    return (*(v7 + 8))(v11, v4);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_25BB40F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BCB59BC();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CC92A8]);
    v10 = MEMORY[0x25F876200](a1, a2 - a1, v9);
    v12 = v11;
    v13[0] = v10;
    v13[1] = v11;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4890, &qword_25BCBF758);
    sub_25BB41DB0();
    sub_25BCB779C();
    return sub_25BB0D160(v10, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Tensor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48A8, &qword_25BCBF778);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB41758();
  sub_25BCB7B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25BB41870();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB76AC();
  v12 = v48;
  sub_25BB418C4();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB76AC();
  v13 = v48;
  LOBYTE(v54[0]) = 2;
  sub_25BB41918();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB765C();
  if (*(&v48 + 1) >> 60 != 15)
  {
    *&v52 = v48;
    LOBYTE(v57) = v48;
    OUTLINED_FUNCTION_19_1();
    Tensor.init(shape:data:scalarType:on:)(&v52, v26, v27, &v57, &v48, v54);
    v28 = OUTLINED_FUNCTION_4_18();
    v29(v28);
    v30 = v54[0];
    goto LABEL_15;
  }

  LOBYTE(v48) = 3;
  v43 = sub_25BCB766C();
  v44 = v13;
  v45 = a1[4];
  v46 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_25BCB7B1C();
  if (qword_27FBB3388 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v17 = sub_25BCB741C();
    v18 = __swift_project_value_buffer(v17, qword_27FBB4870);
    sub_25BB3EF70(v18, v16, &v52);

    if (!v53)
    {

      sub_25BAA6FBC(&v52, &qword_27FBB40F8, &qword_25BCBF760);
      v48 = 0u;
      v49 = 0u;
      v50 = 0;
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48C0, &qword_25BCBF790);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
LABEL_18:

LABEL_19:
      sub_25BAA6FBC(&v48, &qword_27FBB48B0, &unk_25BCBF780);
      v31 = sub_25BCB71BC();
      swift_allocError();
      v33 = v32;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130) + 48);
      *v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48C0, &qword_25BCBF790);
      sub_25BCB763C();
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD0000000000000CALL, 0x800000025BCDB880);
      v34 = sub_25BCB740C();
      MEMORY[0x25F876C90](v34);

      MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDB950);
      sub_25BCB71AC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      swift_willThrow();
      v10 = OUTLINED_FUNCTION_4_18();
      v11(v10);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (!*(&v49 + 1))
    {
      goto LABEL_18;
    }

    sub_25BA97060(&v48, v54);
    v16 = v55;
    v19 = v56;
    result = __swift_project_boxed_opaque_existential_1(v54, v55);
    v20 = *(v12 + 16);
    if (!v20)
    {
      break;
    }

    v21 = (v12 + 32);
    v22 = 1;
    v23 = v44;
    while (1)
    {
      v24 = *v21++;
      v25 = v22 * v24;
      if ((v22 * v24) >> 64 != (v22 * v24) >> 63)
      {
        break;
      }

      v22 = v25;
      if (!--v20)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v25 = 1;
  v23 = v44;
LABEL_21:
  v42 = v19;
  if ((v23 - 1) > 0xA)
  {
    v35 = 1;
  }

  else
  {
    v35 = qword_25BCBFA28[(v23 - 1)];
  }

  v36 = v35 * v25;
  if ((v35 * v25) >> 64 == (v35 * v25) >> 63)
  {
    sub_25BCB763C();
    v37 = (*(v42 + 8))(v43, v46, v36);
    v39 = v38;

    v57 = v12;
    v51 = v44;
    OUTLINED_FUNCTION_19_1();
    Tensor.init(shape:data:scalarType:on:)(&v57, v37, v39, &v51, &v48, &v52);
    v40 = OUTLINED_FUNCTION_4_18();
    v41(v40);
    v30 = v52;
    __swift_destroy_boxed_opaque_existential_1(v54);
LABEL_15:
    *a2 = v30;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25BB41758()
{
  result = qword_28154C1F8;
  if (!qword_28154C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1F8);
  }

  return result;
}

unint64_t sub_25BB417AC()
{
  result = qword_28154FF70;
  if (!qword_28154FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154FF70);
  }

  return result;
}

unint64_t sub_25BB41800()
{
  result = qword_2815501C0;
  if (!qword_2815501C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501C0);
  }

  return result;
}

unint64_t sub_25BB41870()
{
  result = qword_28154FF68;
  if (!qword_28154FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154FF68);
  }

  return result;
}

unint64_t sub_25BB418C4()
{
  result = qword_2815501B8;
  if (!qword_2815501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501B8);
  }

  return result;
}

unint64_t sub_25BB41918()
{
  result = qword_281550338;
  if (!qword_281550338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550338);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Tensor(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Tensor(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Tensor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Tensor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB41C48()
{
  result = qword_27FBB48C8;
  if (!qword_27FBB48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48C8);
  }

  return result;
}

unint64_t sub_25BB41CA0()
{
  result = qword_28154C1E8;
  if (!qword_28154C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1E8);
  }

  return result;
}

unint64_t sub_25BB41CF8()
{
  result = qword_28154C1F0;
  if (!qword_28154C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1F0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_25BB41DB0()
{
  result = qword_281550340;
  if (!qword_281550340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550340);
  }

  return result;
}

uint64_t sub_25BB41E04(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  v8 = sub_25BB3EE04(v7, a1);
  if (!v8)
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v21 = xmmword_25BCBFA80;
    *(v21 + 16) = 0x4000;
    swift_willThrow();
    return v3;
  }

  v10 = v8;
  v11 = v9;
  ObjectType = swift_getObjectType();
  MEMORY[0x28223BE20](ObjectType);
  v23[2] = v10;
  v23[3] = v11;
  v13 = *(v11 + 56);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  v13(&v24, sub_25BB42814, v23, v14, ObjectType, v11);
  v15 = v24;
  v25 = *(v4 + 144);
  v16 = sub_25BC8FACC();
  sub_25BB4216C(v16, v4, v15, v16, v17, &v24);

  v18 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  v19 = *(v18 + 16);
  swift_retain_n();
  v20 = sub_25BA928B4();
  [v20 lock];

  sub_25BA92920(v19, 0, 0, &v24);
  if (!v2)
  {
    [*(v19 + 224) unlock];

    *(v3 + 32) = v24;
    swift_unknownObjectRelease();

    return v3;
  }

  [*(v19 + 224) unlock];

  __break(1u);
  return result;
}

void *sub_25BB42048@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = *(a3 + 8);
  v9(v12, ObjectType, a3);
  if (LOBYTE(v12[0]) != 2)
  {
    v9(v12, ObjectType, a3);
    v12[0] = 0xD00000000000002CLL;
    v12[1] = 0x800000025BCDBAB0;
    v13 = 9;
    sub_25BA97890();
  }

  if (a1)
  {
    v10 = (a2 - a1) / 4;
  }

  else
  {
    v10 = 0;
  }

  result = sub_25BC54B84(a1, v10);
  *a4 = result;
  return result;
}

uint64_t sub_25BB4216C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a1;
  v34 = a5;
  v31 = a3;
  v32 = a6;
  v8 = sub_25BCB6E8C();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  sub_25BAC27B0(a2 + 56, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a4);
    (*(v29 + 8))(v15, v30);
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, a4);
  v23 = *(v16 + 32);
  v23(v22, v15, a4);
  sub_25BAC27B0(a2 + 96, &v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a4);
    (*(v29 + 8))(v12, v30);
    (*(v16 + 8))(v22, a4);
LABEL_6:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v36 = v37;
    MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCDB9F0);
    swift_getMetatypeMetadata();
    v27 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v27);

    MEMORY[0x25F876C90](0x6020646E612027, 0xE700000000000000);
    sub_25BAC27B0(a2 + 56, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v28 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v28);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    v37 = v36;
    v41 = 9;
    sub_25BCB617C();
    sub_25BA97890();
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, a4);
  v23(v20, v12, a4);
  v30 = &v29;
  *&v36 = *(a2 + 136);
  *&v37 = v31;
  MEMORY[0x28223BE20](v36);
  v24 = v34;
  *(&v29 - 6) = a4;
  *(&v29 - 5) = v24;
  *(&v29 - 4) = a2;
  *(&v29 - 3) = v22;
  *(&v29 - 2) = v20;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  sub_25BCB68CC();
  sub_25BB42854();
  swift_getWitnessTable();
  v35 = sub_25BCB665C();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  swift_getWitnessTable();
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  v25 = *(v16 + 8);
  v25(v20, a4);
  return (v25)(v22, a4);
}

unsigned int *sub_25BB4268C@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, unsigned int **a4@<X8>)
{
  v5 = *(a2 + 48);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *result;
    v20 = 0;
    v21 = v5;
    MEMORY[0x28223BE20](result);
    v16[2] = v8;
    v16[3] = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v14 = sub_25BB42928();
    result = sub_25BAB2B20(sub_25BB428B8, v16, v13, a3, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
    *a4 = result;
  }

  return result;
}

unint64_t sub_25BB42794(uint64_t a1)
{
  result = sub_25BB427BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB427BC()
{
  result = qword_28154F488;
  if (!qword_28154F488)
  {
    type metadata accessor for OneHotOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F488);
  }

  return result;
}

unsigned int *sub_25BB42830@<X0>(unsigned int *a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  return sub_25BB4268C(a1, v2[4], v2[2], a2);
}

unint64_t sub_25BB42854()
{
  result = qword_27FBB48E0;
  if (!qword_27FBB48E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48D0, &qword_25BCBFA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48E0);
  }

  return result;
}

uint64_t sub_25BB428B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == *(v2 + 32))
  {
    v3 = (v2 + 40);
  }

  else
  {
    v3 = (v2 + 48);
  }

  return (*(*(*(v2 + 16) - 8) + 16))(a2, *v3);
}

unint64_t sub_25BB42928()
{
  result = qword_27FBB48F0;
  if (!qword_27FBB48F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48F0);
  }

  return result;
}

unint64_t sub_25BB429B4()
{
  result = qword_28154BE60;
  if (!qword_28154BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE60);
  }

  return result;
}

uint64_t sub_25BB42A08(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_50();
  v145 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_11();
  v142 = v8;
  OUTLINED_FUNCTION_6_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v126 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v139 = v13;
  OUTLINED_FUNCTION_7();
  v141 = sub_25BCB54EC();
  v14 = OUTLINED_FUNCTION_2(v141);
  v140 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_50();
  v144 = v18;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_11();
  v148 = v20;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v149 = v22;
  OUTLINED_FUNCTION_7();
  v23 = sub_25BCB520C();
  v24 = OUTLINED_FUNCTION_2(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_50();
  v137 = v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v151 = v31;
  OUTLINED_FUNCTION_7();
  v32 = sub_25BCB512C();
  v33 = OUTLINED_FUNCTION_2(v32);
  v147 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v150 = (&v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v1 + 40);
  v39 = sub_25BAC4018();
  v40 = sub_25BB3EE04(v39, a1);
  if (!v40)
  {
    goto LABEL_23;
  }

  v42 = v40;
  v43 = v41;
  v44 = *(v2 + 48);
  v45 = sub_25BAC4018();
  v46 = sub_25BB3EE04(v45, a1);
  v136 = v47;
  v146 = v46;
  if (!v46)
  {
    swift_unknownObjectRelease();
LABEL_23:
    v78 = 0x800000025BCDBAE0;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v79 = 0xD000000000000015;
    v79[1] = 0x800000025BCDBAE0;
    OUTLINED_FUNCTION_13_9(v79, 0x4000);
    return v78;
  }

  v135 = v12;
  *v150 = 0;
  v48 = *MEMORY[0x277D82E48];
  (*(v147 + 104))();
  v49 = *(v2 + 152);
  v143 = v26;
  v52 = *(v26 + 104);
  v51 = v26 + 104;
  v50 = v52;
  v53 = MEMORY[0x277D82E88];
  v54 = *(v2 + 160);
  if ((v54 & 1) == 0)
  {
    v53 = MEMORY[0x277D82E80];
  }

  if (v54 == 2)
  {
    v53 = MEMORY[0x277D82E90];
  }

  v55 = *v53;
  v132 = v51;
  v131 = v50;
  v50(v151, v55, v23);
  v56 = *(v2 + 120);
  ObjectType = swift_getObjectType();
  v58 = *(v43 + 8);
  sub_25BCB617C();
  v152 = ObjectType;
  (v58)(v153, ObjectType, v43);
  if (LOBYTE(v153[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v59))
  {
    v119 = v150;
    sub_25BBF4C44();
    v78 = v122;
    v124 = v123;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v125 = v78;
    v125[1] = v124;
    OUTLINED_FUNCTION_13_9(v125, 24576);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v143 + 8))(v151, v23);
  }

  else
  {
    v133 = v56;
    v130 = v32;
    v134 = v23;
    v60 = v152;
    v61 = OUTLINED_FUNCTION_16_5();
    v58(v61);
    v62 = LOBYTE(v153[0]);
    v63 = *(v43 + 16);
    v64 = OUTLINED_FUNCTION_16_5();
    v63(v64);
    v160 = v153[0];
    v128 = TensorShape.subscript.getter(v49);

    v65 = OUTLINED_FUNCTION_16_5();
    v67 = sub_25BC5D23C(v65, v66);
    v129 = v62;
    if (v67 >= 2)
    {
      v68 = OUTLINED_FUNCTION_16_5();
      v70 = sub_25BC5D23C(v68, v69);
      if (v70 < 0)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        v153[1] = 0;
        v153[2] = 0;
        v153[0] = v60;
        v154 = -1;
        v156 = 0;
        v157 = 0;
        v155 = v71;
        v158 = -1;
        v159 = 4;
        OUTLINED_FUNCTION_11_5();
      }

      v72 = v70;
      if (v70)
      {
        v60 = 0;
        v73 = 1;
        while (1)
        {
          if (v49 != v60)
          {
            (v63)(&v160, v152, v43);
            v71 = *(v160 + 16);
            if (v60 >= v71)
            {
              goto LABEL_42;
            }

            v74 = *(v160 + 8 * v60 + 32);

            v71 = v73 * v74;
            if ((v73 * v74) >> 64 != (v73 * v74) >> 63)
            {
              __break(1u);
              goto LABEL_41;
            }

            v73 *= v74;
          }

          if (v72 == ++v60)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v73 = 1;
LABEL_20:
    v75 = OUTLINED_FUNCTION_16_5();
    if (sub_25BC5D23C(v75, v76) < 2)
    {
      v80 = OUTLINED_FUNCTION_16_5();
      v63(v80);
      v77 = v153[0];
      if (!*(v153[0] + 16))
      {

        v77 = &unk_286D43BA8;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v77 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_18_12(v77, xmmword_25BCBAE70);
    }

    v81 = v136;
    sub_25BBF5F44(v77, 0);

    v82 = swift_getObjectType();
    if (sub_25BC5D23C(v82, v81) < 2)
    {
      (*(v81 + 16))(v153, v82, v81);
      if (!*(v153[0] + 16))
      {
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v83 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_18_12(v83, xmmword_25BCBAE70);
    }

    v84 = v134;
    v85 = v140;
    v86 = v137;
    OUTLINED_FUNCTION_5_0();

    v131(v86, *MEMORY[0x277D82E90], v84);
    v87 = sub_25BCB51FC();
    v88 = *(v143 + 8);
    v143 += 8;
    v140 = v88;
    (v88)(v86, v84);
    v127 = v42;
    v126 = v43;
    if (v87)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_25BCBAE50;
      *(v89 + 32) = v73;
      v90 = v141;
      v91 = v144;
    }

    else
    {
      v90 = v141;
      v91 = v144;
      if (!*(MEMORY[0x277D84F90] + 16))
      {
      }
    }

    OUTLINED_FUNCTION_5_0();

    type metadata accessor for NativeTensorStorage();
    v153[0] = v133;
    LOBYTE(v160) = v129;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    v92 = v138;
    sub_25BBC0130(v93, v94, v95);
    v137 = v96;
    v141 = v92;
    v97 = v85[2];
    v97(v139, v149, v90);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v90);
    v101 = v135;
    v97(v135, v148, v90);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v90);
    v97(v142, v91, v90);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v90);
    v108 = v145;
    v109 = __swift_storeEnumTagSinglePayload(v145, 1, 1, v90);
    v110 = v137;
    v138 = &v126;
    v111 = MEMORY[0x28223BE20](v109);
    v112 = v151;
    *(&v126 - 4) = v150;
    *(&v126 - 3) = v112;
    *(&v126 - 2) = v73;
    MEMORY[0x28223BE20](v111);
    v113 = v136;
    *(&v126 - 12) = v146;
    *(&v126 - 11) = v113;
    *(&v126 - 10) = v101;
    *(&v126 - 9) = v110;
    v115 = v114;
    *(&v126 - 8) = &off_286D4DBE0;
    *(&v126 - 7) = v114;
    *(&v126 - 6) = 0;
    *(&v126 - 5) = 0;
    *(&v126 - 4) = v108;
    *(&v126 - 3) = sub_25BB45574;
    *(&v126 - 2) = v116;

    v78 = v127;
    v117 = v141;
    sub_25BC675C0(sub_25BB45594, (&v126 - 14), MEMORY[0x277D84F78] + 8, &v161);
    if (!v117)
    {

      OUTLINED_FUNCTION_23_8();
      v121 = OUTLINED_FUNCTION_22_7();
      (v78)(v121);
      (v78)(v148, v90);
      (v78)(v149, v90);
      sub_25BB0EA20(v145);
      sub_25BB0EA20(v115);
      sub_25BB0EA20(v135);
      (v140)(v112, v134);
      (*(v147 + 8))(v150, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v78 = OUTLINED_FUNCTION_31();
      *(v78 + 16) = xmmword_25BCBAE50;
      *(v78 + 32) = v110;
      *(v78 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v78;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_23_8();
    v118 = OUTLINED_FUNCTION_22_7();
    (v78)(v118);
    (v78)(v148, v90);
    (v78)(v149, v90);
    sub_25BB0EA20(v145);
    sub_25BB0EA20(v115);
    sub_25BB0EA20(v135);
    v32 = v130;
    v119 = v150;
    (v140)(v151, v134);
  }

  (*(v147 + 8))(v119, v32);
  return v78;
}

uint64_t sub_25BB43628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_50();
  v179 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_11();
  v180 = v8;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_11();
  v185 = v10;
  OUTLINED_FUNCTION_6_1();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v160 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v184 = v15;
  OUTLINED_FUNCTION_7();
  v186 = sub_25BCB54EC();
  v16 = OUTLINED_FUNCTION_2(v186);
  v188 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50();
  v181 = v20;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_11();
  v191 = v22;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_11();
  v192 = v24;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v194 = v26;
  OUTLINED_FUNCTION_7();
  v27 = sub_25BCB520C();
  v28 = OUTLINED_FUNCTION_2(v27);
  v193 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50();
  v187 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v195 = v34;
  OUTLINED_FUNCTION_7();
  v35 = sub_25BCB512C();
  v36 = OUTLINED_FUNCTION_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_50();
  v182 = v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_1();
  v189 = v43;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v44 = *(v1 + 152);
  v45 = sub_25BAC4018();
  v46 = sub_25BB3EE04(v45, a1);
  if (!v46)
  {
    goto LABEL_23;
  }

  v173 = v47;
  v183 = v46;
  v175 = v14;
  v177 = v38;
  v48 = *(v2 + 40);
  v49 = sub_25BAC4018();
  v197 = sub_25BB3EE04(v49, a1);
  if (!v197)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v83 = 0xD00000000000001ALL;
    v83[1] = 0x800000025BCDBB00;
    OUTLINED_FUNCTION_13_9(v83, 0x4000);
    return v2;
  }

  v51 = v50;
  v52 = *(v2 + 48);
  v53 = sub_25BAC4018();
  v54 = sub_25BB3EE04(v53, a1);
  v172 = v55;
  v176 = v54;
  if (!v54)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  *v189 = 0;
  v57 = v177 + 104;
  v56 = *(v177 + 104);
  v166 = *MEMORY[0x277D82E48];
  v165 = v56;
  v56();
  v58 = *(v2 + 136);
  v59 = *(v193 + 104);
  v60 = MEMORY[0x277D82E88];
  v61 = *(v2 + 144);
  if ((v61 & 1) == 0)
  {
    v60 = MEMORY[0x277D82E80];
  }

  if (v61 == 2)
  {
    v60 = MEMORY[0x277D82E90];
  }

  v62 = *v60;
  v163 = *(v193 + 104);
  v164 = v193 + 104;
  v59(v195, v62, v27);
  v63 = v197;
  ObjectType = swift_getObjectType();
  v65 = *(v51 + 8);
  v196 = ObjectType;
  v170 = v65;
  v171 = v51 + 8;
  (v65)(v198, ObjectType, v51);
  if (LOBYTE(v198[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v66))
  {
    v155 = v189;
    sub_25BBF4C44();
    v157 = v156;
    v2 = v158;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v159 = v157;
    v159[1] = v2;
    OUTLINED_FUNCTION_13_9(v159, 24576);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v193 + 8))(v195, v27);
    OUTLINED_FUNCTION_20_7();
    v149 = v155;
    v150 = v35;
    goto LABEL_45;
  }

  v162 = v57;
  v168 = v35;
  v67 = OUTLINED_FUNCTION_21_8();
  v170(v67);
  v161 = LOBYTE(v198[0]);
  v68 = *(v51 + 16);
  v69 = OUTLINED_FUNCTION_21_8();
  v169 = v70;
  v190 = v71;
  (v71)(v69);
  v205 = v198[0];
  v72 = TensorShape.subscript.getter(v58);

  v73 = OUTLINED_FUNCTION_21_8();
  v75 = sub_25BC5D23C(v73, v74);
  v174 = v27;
  if (v75 < 2)
  {
    v81 = 1;
  }

  else
  {
    v76 = OUTLINED_FUNCTION_21_8();
    v78 = sub_25BC5D23C(v76, v77);
    if (v78 < 0)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      v198[1] = 0;
      v198[2] = 0;
      v198[0] = v63;
      v199 = -1;
      v201 = 0;
      v202 = 0;
      v200 = v79;
      v203 = -1;
      v204 = 4;
      OUTLINED_FUNCTION_11_5();
    }

    v80 = v78;
    if (v78)
    {
      v63 = 0;
      v81 = 1;
      while (1)
      {
        if (v58 != v63)
        {
          v190(&v205, v196, v51);
          v79 = *(v205 + 16);
          if (v63 >= v79)
          {
            goto LABEL_48;
          }

          v82 = *(v205 + 8 * v63 + 32);

          v79 = v81 * v82;
          if ((v81 * v82) >> 64 != (v81 * v82) >> 63)
          {
            __break(1u);
            goto LABEL_47;
          }

          v81 *= v82;
        }

        if (v80 == ++v63)
        {
          goto LABEL_27;
        }
      }
    }

    v81 = 1;
  }

LABEL_27:
  v85 = v196;
  if (sub_25BC5D23C(v196, v51) < 2)
  {
    v190(v198, v85, v51);
    if (!*(v198[0] + 16))
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v86 = OUTLINED_FUNCTION_31();
    *(v86 + 16) = xmmword_25BCBAE70;
    *(v86 + 32) = v81;
    *(v86 + 40) = v72;
  }

  OUTLINED_FUNCTION_5_0();

  v87 = swift_getObjectType();
  v88 = v172;
  if (sub_25BC5D23C(v87, v172) < 2)
  {
    (*(v88 + 16))(v198, v87, v88);
    if (!*(v198[0] + 16))
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v89 = OUTLINED_FUNCTION_31();
    *(v89 + 16) = xmmword_25BCBAE70;
    *(v89 + 32) = v81;
    *(v89 + 40) = v72;
  }

  v90 = v188;
  v91 = v191;
  v92 = MEMORY[0x277D82E90];
  OUTLINED_FUNCTION_5_0();

  v93 = *v92;
  v94 = v187;
  v95 = v174;
  v163(v187, v93, v174);
  v96 = sub_25BCB51FC();
  v163 = *(v193 + 8);
  v164 = v193 + 8;
  (v163)(v94, v95);
  v167 = v51;
  if (v96)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_25BCBAE50;
    *(v97 + 32) = v81;
    v98 = v186;
  }

  else
  {
    v98 = v186;
    if (!*(MEMORY[0x277D84F90] + 16))
    {
    }
  }

  OUTLINED_FUNCTION_5_0();

  v160 = sub_25BCB554C();
  v99 = v161;
  LOBYTE(v198[0]) = v161;
  sub_25BBF4F40();
  v100 = *(v90 + 16);
  v101 = v181;
  v100(v181, v194, v98);
  sub_25BCB6D8C();
  LOBYTE(v198[0]) = v99;
  sub_25BBF4F40();
  v100(v101, v91, v98);
  sub_25BCB6D8C();
  v102 = v182;
  *v182 = 0;
  v103 = v168;
  (v165)(v102, v166, v168);
  v2 = v98;
  v104 = v174;
  (*(v193 + 16))(v187, v195, v174);
  sub_25BCB6E0C();
  OUTLINED_FUNCTION_17_10();
  sub_25BCB6D6C();
  v193 = sub_25BCB553C();
  if (!v193)
  {
    v141 = v189;
    sub_25BBF4C44();
    v143 = v142;
    v145 = v144;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v146 = v143;
    v146[1] = v145;
    OUTLINED_FUNCTION_13_9(v146, 0x8000);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v147 = *(v188 + 8);
    v147(v191, v2);
    v147(v192, v2);
    v147(v194, v2);
    (v163)(v195, v104);
    OUTLINED_FUNCTION_20_7();
    v149 = v141;
    v150 = v103;
LABEL_45:
    v148(v149, v150);
    return v2;
  }

  v187 = type metadata accessor for NativeTensorStorage();
  v105 = v196;
  v106 = v167;
  v190(v198, v196, v167);
  (v170)(&v205, v105, v106);
  OUTLINED_FUNCTION_17_10();
  v107 = v178;
  sub_25BBC0130(v108, v109, v110);
  v190 = v111;
  v187 = v107;
  v112 = v194;
  v100(v184, v194, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v2);
  v100(v175, v192, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v2);
  v119 = v185;
  v100(v185, v191, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v2);
  v123 = v180;
  v100(v180, v112, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v2);
  v127 = v179;
  v128 = __swift_storeEnumTagSinglePayload(v179, 1, 1, v2);
  v182 = &v160;
  v129 = MEMORY[0x28223BE20](v128);
  *(&v160 - 2) = v193;
  *(&v160 - 1) = v81;
  v2 = v123;
  v130 = v190;
  MEMORY[0x28223BE20](v129);
  v132 = v172;
  v131 = v173;
  *(&v160 - 14) = v176;
  *(&v160 - 13) = v132;
  v133 = v183;
  *(&v160 - 12) = v134;
  *(&v160 - 11) = v133;
  *(&v160 - 10) = v131;
  *(&v160 - 9) = v119;
  *(&v160 - 8) = v130;
  *(&v160 - 7) = &off_286D4DBE0;
  *(&v160 - 6) = v123;
  *(&v160 - 5) = 0;
  *(&v160 - 4) = 0;
  *(&v160 - 3) = v127;
  *(&v160 - 2) = sub_25BB45700;
  *(&v160 - 1) = v135;

  v136 = v184;
  v137 = v187;
  sub_25BC675C0(sub_25BB4571C, (&v160 - 16), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v137)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BB0EA20(v136);
    v138 = *(v188 + 8);
    v139 = v186;
    v138(v191, v186);
    v138(v192, v139);
    v138(v194, v139);
    (v163)(v195, v174);
    OUTLINED_FUNCTION_20_7();
    v140(v189, v168);
    sub_25BB0EA20(v127);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v185);
    sub_25BB0EA20(v175);
  }

  else
  {

    sub_25BB0EA20(v136);
    v151 = v2;
    v152 = *(v188 + 8);
    v153 = v186;
    v152(v191, v186);
    v152(v192, v153);
    v152(v194, v153);
    (v163)(v195, v174);
    OUTLINED_FUNCTION_20_7();
    v154(v189, v168);
    sub_25BB0EA20(v127);
    sub_25BB0EA20(v151);
    sub_25BB0EA20(v185);
    sub_25BB0EA20(v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v2 = OUTLINED_FUNCTION_31();
    *(v2 + 16) = xmmword_25BCBAE50;
    *(v2 + 32) = v190;
    *(v2 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_25BB44498(uint64_t a1)
{
  result = sub_25BB4569C(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB444F0(uint64_t a1)
{
  result = sub_25BB4569C(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB44548(uint64_t a1, uint64_t a2, void *a3, const void *a4, size_t a5, const void *a6, int64_t a7)
{
  v50 = a7;
  v61 = a6;
  v53 = a4;
  v55 = a2;
  out = a3;
  v57 = a1;
  v8 = sub_25BCB54EC();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB520C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BCB512C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB554C();
  v21 = *(v17 + 16);
  v54 = a5;
  v22 = v16;
  v23 = out;
  v21(v20, a5, v22);
  v24 = v57;
  (*(v12 + 16))(v15, v61, v11);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB553C())
  {
    v25 = *(v24 + 136);
    if (!v25 || (v26 = *(v55 + 136)) == 0 || !v23[17])
    {
      v28 = sub_25BCB547C();
      sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098]);
      swift_allocError();
      v30 = v29;
      v31 = MEMORY[0x277D83090];
LABEL_8:
      (*(*(v28 - 8) + 104))(v30, *v31, v28);
      swift_willThrow();
    }

    out = v23[17];
    v61 = v26;
    memcpy(v59, v53, 0xB1uLL);
    if (sub_25BB456E4(v59) == 1)
    {
      v54 = 0;
      v27 = v49;
    }

    else
    {
      memcpy(v60, v59, sizeof(v60));
      v27 = v49;
      sub_25BCB6D7C();
      v38 = sub_25BCB54AC();
      v39 = v52;
      v40 = *(v51 + 8);
      v40(v27, v52);
      if (v38 == 1)
      {
        v54 = 1;
      }

      else
      {
        sub_25BCB6D7C();
        v41 = sub_25BBF66C4();
        result = (v40)(v27, v39);
        v54 = v50 * v41;
        if ((v50 * v41) >> 64 != (v50 * v41) >> 63)
        {
          __break(1u);
          return result;
        }
      }
    }

    v49 = sub_25BCB548C();
    sub_25BCB6D7C();
    v42 = sub_25BCB549C();
    v43 = v52;
    v44 = *(v51 + 8);
    v44(v27, v52);
    sub_25BCB6D7C();
    v45 = sub_25BCB549C();
    v44(v27, v43);
    memcpy(v58, v53, 0xB1uLL);
    if (sub_25BB456E4(v58) == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = v58[17];
    }

    if (BNNSLossFilterApplyBatch(v49, v50, v25, v42, v61, v45, v46, v54, out, 0, 0))
    {
      v28 = sub_25BCB547C();
      sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098]);
      swift_allocError();
      v30 = v47;
      v31 = MEMORY[0x277D83080];
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF4C44();
    v34 = v33;
    v36 = v35;
    sub_25BB0E2EC();
    swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB44AC4(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, size_t a7)
{
  v35 = a5;
  v36 = a7;
  v39[23] = *MEMORY[0x277D85DE8];
  v11 = sub_25BCB54EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 136) || (v16 = *(a2 + 136)) == 0)
  {
    v23 = sub_25BCB547C();
    sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098]);
    swift_allocError();
    v25 = v27;
    v26 = MEMORY[0x277D83090];
    goto LABEL_9;
  }

  v31 = *(a1 + 136);
  v34 = v16;
  memcpy(&out_delta, a3, sizeof(out_delta));
  memcpy(&v37, a4, sizeof(v37));
  v33 = sub_25BCB548C();
  sub_25BCB6D7C();
  v32 = sub_25BCB549C();
  v17 = *(v12 + 8);
  v17(v15, v11);
  sub_25BCB6D7C();
  v30 = sub_25BCB549C();
  v17(v15, v11);
  sub_25BCB6D7C();
  v29 = sub_25BCB549C();
  v17(v15, v11);
  memcpy(v39, v35, 0xB1uLL);
  v18 = sub_25BB456E4(v39);
  v19 = v18 != 1;
  if (v18 == 1)
  {
    weights = 0;
  }

  else
  {
    weights = v39[17];
  }

  sub_25BCB6D7C();
  v21 = sub_25BCB549C();
  v17(v15, v11);
  result = BNNSLossFilterApplyBackwardBatch(v33, v36, v31, v32, &v37, v30, v34, v29, weights, v19, &out_delta, v21);
  if (result)
  {
    v23 = sub_25BCB547C();
    sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098]);
    swift_allocError();
    v25 = v24;
    v26 = MEMORY[0x277D83080];
LABEL_9:
    (*(*(v23 - 8) + 104))(v25, *v26, v23);
    result = swift_willThrow();
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BB44E2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_20(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], __src[0]);
  sub_25BB45694(__src);
  memcpy(v10, __src, 0xB1uLL);
  return v8(v10);
}

uint64_t sub_25BB44E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_10();
  v16 = v15;
  v18 = v17;
  swift_getObjectType();
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = v16;
  return sub_25BC675C0(sub_25BB455C8, v20, MEMORY[0x277D84F78] + 8, v18);
}

uint64_t sub_25BB44F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a1;
  return sub_25BC675C0(sub_25BB455F4, v15, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BB45010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v14[2] = sub_25BB45610;
    v14[3] = v15;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45678, v14, MEMORY[0x277D84F78] + 8, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v16);
    memcpy(v17, v16, 0xB1uLL);
    return a3(a5, a6, a1, v17);
  }
}

uint64_t sub_25BB45178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_10();
  v17 = v16;
  v19 = v18;
  swift_getObjectType();
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = v17;
  return sub_25BC675C0(sub_25BB4575C, v21, MEMORY[0x277D84F78] + 8, v19);
}

uint64_t sub_25BB45254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, __int128 a8, uint64_t a9)
{
  swift_getObjectType();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a1;
  return sub_25BC675C0(sub_25BB45794, v16, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BB45330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8)
{
  swift_getObjectType();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a1;
  return sub_25BC675C0(sub_25BB457C8, v15, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BB45404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v15 = a7;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a8;
  v16[7] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v14[2] = sub_25BB457F0;
    v14[3] = v16;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v14, MEMORY[0x277D84F78] + 8, v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v17);
    memcpy(v18, v17, 0xB1uLL);
    return a3(a5, a6, a8, a1, v18);
  }
}

uint64_t sub_25BB4569C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BB456E4(uint64_t a1)
{
  if (*(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB45840(uint64_t a1)
{
  v3 = v1;
  v5 = sub_25BCB564C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v1 + 40);
  v9 = sub_25BAC4018();
  v10 = sub_25BB3EE04(v9, a1);
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  v55 = v2;
  v14 = *(v3 + 48);
  v15 = sub_25BAC4018();
  v16 = sub_25BB3EE04(v15, a1);
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v32 = sub_25BC7C674();
    v23 = v33;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v34 = v32;
    v34[1] = v23;
    OUTLINED_FUNCTION_13_9(v34, 0x4000);
    return v23;
  }

  v18 = v17;
  v53 = v6;
  v56 = v16;
  ObjectType = swift_getObjectType();
  v20 = *(v13 + 8);
  v54 = ObjectType;
  v20((&v59 + 4), ObjectType, v13);
  if (BYTE4(v59) != 12 || *(v3 + 64) != 12)
  {
    v23 = sub_25BC7C674();
    v30 = v29;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v31 = v23;
    v31[1] = v30;
    OUTLINED_FUNCTION_13_9(v31, 24576);
    swift_unknownObjectRelease();
LABEL_9:
    swift_unknownObjectRelease();
    return v23;
  }

  v20((&v59 + 3), v54, v13);
  v51 = BYTE3(v59);
  v21 = swift_getObjectType();
  v49 = *(v18 + 8);
  v50 = v21;
  v52 = v18;
  v22 = (v49)((&v59 + 2));
  if (v51 != BYTE2(v59))
  {
    v36 = sub_25BC7C674();
    v38 = v37;
    v20((&v59 + 1), v54, v13);
    v39 = BYTE1(v59);
    v49(&v59, v50, v52);
    v23 = v39 | (v59 << 8) | 0xA000u;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v40 = v36;
    *(v40 + 8) = v38;
    *(v40 + 16) = v23;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v22);
  v23 = (&v48 - 8);
  *(&v48 - 6) = v12;
  *(&v48 - 5) = v13;
  v24 = v56;
  v25 = v52;
  *(&v48 - 4) = v56;
  *(&v48 - 3) = v25;
  *(&v48 - 2) = v3;
  sub_25BCB563C();
  v26 = v55;
  v55 = sub_25BCB562C();
  v27 = OUTLINED_FUNCTION_2_20();
  v28(v27);
  if (v26)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = *(v3 + 56);
    v42 = *(v3 + 64);
    type metadata accessor for NativeTensorStorage();
    v57 = v41;
    v58 = v42;
    sub_25BCB617C();
    sub_25BBC0130(&v57, &v58, 0);
    v44 = v43;
    v45 = MEMORY[0x28223BE20](v43);
    v46 = v52;
    *(&v48 - 6) = v24;
    *(&v48 - 5) = v46;
    *(&v48 - 4) = v45;
    *(&v48 - 3) = v12;
    v47 = v55;
    *(&v48 - 2) = v13;
    *(&v48 - 1) = v47;
    (*(v13 + 64))(sub_25BB480BC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25BCBAE50;
    *(v23 + 32) = v44;
    *(v23 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_25BB45CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v39[1] = a4;
  v40 = a5;
  v7 = sub_25BCB56AC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4918, &qword_25BCBFB30);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v41 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = v39 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v39[0] = v39 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v39 - v20;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v47, ObjectType, a3);
  v23 = *MEMORY[0x277D831D8];
  v24 = v8[13];
  v24(v11, v23, v7);
  v43 = v21;
  sub_25BCB578C();

  v25 = v8[1];
  v25(v11, v7);
  v26 = swift_getObjectType();
  (*(v40 + 16))(&v47, v26);
  v27 = v23;
  v28 = v39[0];
  v24(v11, v27, v7);
  sub_25BCB578C();

  v25(v11, v7);
  if (*(v42 + 130))
  {
    v29 = v41;
    v30 = v43;
    if (*(v42 + 130) == 1)
    {
      sub_25BCB56FC();
    }

    else
    {
      sub_25BCB570C();
    }
  }

  else
  {
    v29 = v41;
    v30 = v43;
    sub_25BCB56EC();
  }

  v32 = v45;
  v31 = v46;
  v33 = v44;
  v34 = *(v45 + 32);
  v34(v44, v29, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25BCBAE50;
  *(v35 + 56) = v31;
  *(v35 + 64) = sub_25BB48114();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
  v34(boxed_opaque_existential_0, v33, v31);
  v37 = *(v32 + 8);
  v37(v28, v31);
  v37(v30, v31);
  return v35;
}

uint64_t sub_25BB46100@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D831D8];
  v3 = sub_25BCB56AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BB46174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a8;
  return (*(a4 + 64))(sub_25BB480E0, v18, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB46280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE90;
  v50[0] = *(a3 + 16);
  sub_25BCB617C();
  v14 = sub_25BC6FC68();
  v16 = sub_25BBFCCC8(1, v14);
  v18 = v17;
  v20 = v19;
  v47 = v13;
  if (v19)
  {
    v46 = v15;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (__OFSUB__(v20 >> 1, v18))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v22 != (v20 >> 1) - v18)
    {
      goto LABEL_29;
    }

    v23 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v13 = v47;
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  while (1)
  {
    sub_25BABA62C(v16, v15, v18, v20);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    sub_25BCB6C0C();
    memcpy((v13 + 32), __src, 0xA0uLL);
    ObjectType = swift_getObjectType();
    v25 = *(a7 + 16);
    v25(v50, ObjectType, a7);
    v25(v49, ObjectType, a7);
    v51 = v49[0];
    v26 = sub_25BC6FC68();

    v27 = sub_25BBFCCC8(1, v26);
    v16 = v28;
    v30 = v29;
    v20 = v31;
    if (v31)
    {
      v18 = sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      a7 = *(v32 + 16);

      if (__OFSUB__(v20 >> 1, v30))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (a7 == (v20 >> 1) - v30)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_25BABA62C(v27, v16, v30, v20);
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    sub_25BCB6C0C();
    memcpy((v47 + 192), v49, 0xA0uLL);
    v34 = swift_getObjectType();
    v35 = *(a11 + 16);
    v35(&v51, v34, a11);
    v18 = v51;
    v35(v50, v34, a11);
    v36 = sub_25BC6FC68();

    v37 = sub_25BBFCCC8(1, v36);
    v16 = v38;
    v40 = v39;
    v20 = v41;
    if ((v41 & 1) == 0)
    {
      goto LABEL_18;
    }

    a7 = sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x277D84F90];
    }

    v43 = *(v42 + 16);

    if (!__OFSUB__(v20 >> 1, v40))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_unknownObjectRelease();
    v13 = v47;
    v15 = v46;
  }

  if (v43 != (v20 >> 1) - v40)
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_25BABA62C(v37, v16, v40, v20);
    goto LABEL_24;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v44)
  {
    goto LABEL_25;
  }

LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  sub_25BCB6C0C();
  memcpy((v47 + 352), v50, 0xA0uLL);
  v51 = v47;
  sub_25BCB579C();
}

uint64_t sub_25BB46778(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  v8 = sub_25BB3EE04(v7, a1);
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v12 = *(v4 + 48);
  v13 = sub_25BAC4018();
  v14 = sub_25BB3EE04(v13, a1);
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v33 = sub_25BAD5B28();
    v35 = v34;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v36 = v33;
    v36[1] = v35;
    OUTLINED_FUNCTION_13_9(v36, 0x4000);
    return v3;
  }

  v16 = v14;
  if (*(v4 + 64) != 12)
  {
    goto LABEL_14;
  }

  v17 = v15;
  ObjectType = swift_getObjectType();
  v51 = *(v11 + 8);
  v52 = ObjectType;
  v51((&v53 + 5), ObjectType, v11);
  v19 = BYTE5(v53);
  v20 = swift_getObjectType();
  v50 = v11;
  v21 = *(v17 + 8);
  v21((&v53 + 4), v20, v17);
  if (v19 != BYTE4(v53))
  {
    v37 = sub_25BAD5B28();
    v49 = v38;
    v51((&v53 + 3), v52, v50);
    v39 = BYTE3(v53);
    v3 = v16;
    v21((&v53 + 2), v20, v17);
    v40 = v39 | (BYTE2(v53) << 8) | 0xA000;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v41 = v37;
    *(v41 + 8) = v49;
    *(v41 + 16) = v40;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_15:
    swift_unknownObjectRelease();
    return v3;
  }

  v48 = v17;
  v3 = v51;
  v51((&v53 + 1), v52, v50);
  v22 = sub_25BC8FACC();
  v23 = dynamic_cast_existential_3_conditional(v22);
  if (v23)
  {
    v27 = v23;
    v28 = v26;
    v29 = v24;
    v30 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    v31 = sub_25BB46B50(v10, v50, v16, v48, v27, v27, v29, v30, v28);
    goto LABEL_12;
  }

  v51(&v53, v52, v50);
  v42 = sub_25BC8FACC();
  if (!dynamic_cast_existential_2_conditional(v42))
  {
LABEL_14:
    v43 = sub_25BAD5B28();
    v45 = v44;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v46 = v43;
    v46[1] = v45;
    OUTLINED_FUNCTION_13_9(v46, 24576);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  v31 = sub_25BB46DDC(v10, v50, v16, v17);
LABEL_12:
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 16) = 0;
  }

  else
  {
    *(v3 + 32) = v31;
    *(v3 + 40) = v32;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_25BB46B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a3;
  v42 = sub_25BCB564C();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v42);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a6;
  v36 = a7;
  v43 = a6;
  v44 = a7;
  v37 = a8;
  v45 = a8;
  v46 = a9;
  v19 = a2;
  v20 = v39;
  v21 = v40;
  v34 = a9;
  v47 = a1;
  v48 = v19;
  v49 = v39;
  v50 = a4;
  v38 = a4;
  v51 = v40;
  sub_25BCB563C();
  v22 = v41;
  v23 = sub_25BCB562C();
  if (v22)
  {
    (*(v15 + 8))(v18, v42);
  }

  else
  {
    v24 = v23;
    (*(v15 + 8))(v18, v42);
    v25 = *(v21 + 56);
    v26 = *(v21 + 64);
    type metadata accessor for NativeTensorStorage();
    v53 = v25;
    v52[0] = v26;
    sub_25BCB617C();
    sub_25BBC0130(&v53, v52, 0);
    a7 = v27;
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v29 = v36;
    *(&v33 - 10) = v35;
    *(&v33 - 9) = v29;
    v30 = v34;
    *(&v33 - 8) = v37;
    *(&v33 - 7) = v30;
    v31 = v38;
    *(&v33 - 6) = v20;
    *(&v33 - 5) = v31;
    *(&v33 - 4) = a7;
    *(&v33 - 3) = a1;
    *(&v33 - 2) = v19;
    *(&v33 - 1) = v24;
    (*(v19 + 64))(sub_25BB4826C);
  }

  return a7;
}

uint64_t sub_25BB46DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v53 - v11;
  MEMORY[0x28223BE20](v10);
  v56 = v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v53 - v16;
  v53[0] = sub_25BCB54EC();
  v55 = *(v53[0] - 8);
  v18 = *(v55 + 64);
  v19 = MEMORY[0x28223BE20](v53[0]);
  v60 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v64 = v53 - v22;
  MEMORY[0x28223BE20](v21);
  v65 = v53 - v23;
  ObjectType = swift_getObjectType();
  v25 = *(a2 + 16);
  v25(&v67, ObjectType, a2);
  v26 = *(v67 + 16);

  v59 = v12;
  v57 = a1;
  v53[1] = a2;
  v53[2] = ObjectType;
  if (v26)
  {
    v25(&v67, ObjectType, a2);
  }

  v27 = sub_25BCB50AC();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  sub_25BCB54FC();
  v28 = swift_getObjectType();
  v29 = v62;
  v30 = *(v62 + 16);
  v30(&v67, v28, v62);
  v31 = *(v67 + 16);

  if (v31)
  {
    v30(&v67, v28, v29);
  }

  v32 = v55;
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  sub_25BCB54FC();
  v34 = v59;
  v33 = v60;
  v35 = v56;
  if (*(*(v63 + 56) + 16))
  {
    v36 = *(v63 + 56);
    sub_25BCB617C();
  }

  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  sub_25BCB54FC();
  type metadata accessor for NativeTensorStorage();
  v37 = v63;
  v67 = *(v63 + 56);
  v66 = *(v63 + 64);
  sub_25BCB617C();
  v38 = v54;
  sub_25BBC0130(&v67, &v66, 0);
  v54 = v39;
  v55 = v38;
  v40 = *(v32 + 16);
  v41 = v53[0];
  v40(v35, v65, v53[0]);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v41);
  v40(v34, v64, v41);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v41);
  v42 = v58;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v46 = v54;
  v40(v58, v43, v41);
  v47 = __swift_storeEnumTagSinglePayload(v42, 0, 1, v41);
  MEMORY[0x28223BE20](v47);
  v48 = v62;
  v53[-8] = v61;
  v53[-7] = v48;
  v53[-6] = v44;
  v53[-5] = v46;
  v53[-4] = &off_286D4DBE0;
  v53[-3] = v42;
  v53[-2] = sub_25BB482C8;
  v53[-1] = v37;

  v49 = v55;
  sub_25BC675C0(sub_25BB0ED08, &v53[-10], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v49)
  {

    sub_25BB0EA20(v45);
    v50 = *(v32 + 8);
    v50(v60, v41);
    v50(v64, v41);
    v50(v65, v41);
  }

  else
  {

    sub_25BB0EA20(v45);
    v51 = *(v32 + 8);
    v51(v60, v41);
    v51(v64, v41);
    v51(v65, v41);
  }

  sub_25BB0EA20(v42);
  sub_25BB0EA20(v44);
  return v46;
}

uint64_t sub_25BB47434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a5;
  v53 = a6;
  v51 = a4;
  v42 = a10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4918, &qword_25BCBFB30);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v42 - v15;
  v50 = sub_25BCB56AC();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v50);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25BCB577C();
  v44 = *(v20 - 8);
  v45 = v20;
  v21 = *(v44 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - v25;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v55, ObjectType, a3);
  sub_25BB46100(v19);
  v54 = v26;
  sub_25BCB578C();

  v28 = *(v16 + 8);
  v49 = v16 + 8;
  v29 = v50;
  v28(v19, v50);
  v30 = swift_getObjectType();
  (*(v52 + 16))(&v55, v30);
  sub_25BB46100(v19);
  sub_25BCB578C();

  v28(v19, v29);
  switch(*(v53 + 130))
  {
    case 1:
      v31 = v43;
      v32 = v24;
      sub_25BCB571C();
      break;
    case 2:
      v31 = v43;
      v32 = v24;
      sub_25BCB574C();
      break;
    case 3:
      v31 = v43;
      v32 = v24;
      sub_25BCB572C();
      break;
    case 4:
      v31 = v43;
      v32 = v24;
      sub_25BCB575C();
      break;
    case 5:
      v31 = v43;
      v32 = v24;
      sub_25BCB576C();
      break;
    default:
      v31 = v43;
      v32 = v24;
      sub_25BCB573C();
      break;
  }

  v33 = v48;
  v35 = v45;
  v34 = v46;
  v36 = v44;
  v37 = *(v47 + 32);
  v37(v46, v31, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25BCBAE50;
  *(v38 + 56) = v33;
  *(v38 + 64) = sub_25BB48114();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v38 + 32));
  v37(boxed_opaque_existential_0, v34, v33);
  v40 = *(v36 + 8);
  v40(v32, v35);
  v40(v54, v35);
  return v38;
}

uint64_t sub_25BB47920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a5;
  v26 = a1;
  v27 = a2;
  v28 = a6;
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v32 = a8;
  return (*(a4 + 64))(sub_25BB48298, v21, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

void *sub_25BB47A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE90;
  v18 = a2 - a1;
  if (!a1)
  {
    v18 = 0;
  }

  v64 = v18;
  v65 = v17;
  v68[0] = *(a3 + 16);
  sub_25BCB617C();
  v19 = sub_25BC6FC68();
  v20 = sub_25BBFCCC8(1, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v63 = a4;
  if (v25)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
    }

    v28 = *(v27 + 16);

    if (__OFSUB__(v26 >> 1, v24))
    {
      goto LABEL_42;
    }

    if (v28 != (v26 >> 1) - v24)
    {
      goto LABEL_43;
    }

    v29 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    a4 = v63;
    v26 = v64;
    if (v29)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  while (1)
  {
    sub_25BABA62C(v20, v22, v24, v26);
    v26 = v64;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v20 = a13;
    sub_25BCB6C0C();
    result = memcpy((v65 + 32), __src, 0xA0uLL);
    v64 = a13;
    if (a4)
    {
      v31 = *(*(a13 - 8) + 72);
      if (!v31)
      {
        __break(1u);
        goto LABEL_41;
      }

      if (a5 - a4 == 0x8000000000000000 && v31 == -1)
      {
        __break(1u);
        goto LABEL_49;
      }
    }

    ObjectType = swift_getObjectType();
    v22 = *(a7 + 16);
    v22(v68, ObjectType, a7);
    v22(v67, ObjectType, a7);
    v69 = v67[0];
    v34 = sub_25BC6FC68();

    v20 = sub_25BBFCCC8(1, v34);
    v36 = v35;
    v38 = v37;
    v24 = v39;
    if (v39)
    {
      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v41 = swift_dynamicCastClass();
      if (!v41)
      {
        swift_unknownObjectRelease();
        v41 = MEMORY[0x277D84F90];
      }

      v42 = *(v41 + 16);

      if (__OFSUB__(v24 >> 1, v38))
      {
        __break(1u);
      }

      else if (v42 == (v24 >> 1) - v38)
      {
        v43 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v40 = a13;
        if (v43)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    sub_25BABA62C(v20, v36, v38, v24);
    v40 = a13;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    sub_25BCB6C0C();
    result = memcpy((v65 + 192), v67, 0xA0uLL);
    if (!a8)
    {
      goto LABEL_31;
    }

    v44 = *(v40 - 8);
    v26 = v40 - 8;
    v45 = *(v44 + 72);
    if (v45)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    a4 = v63;
  }

  if (a9 - a8 != 0x8000000000000000 || v45 != -1)
  {
LABEL_31:
    v47 = swift_getObjectType();
    v48 = *(a11 + 16);
    v48(&v69, v47, a11);
    v48(v68, v47, a11);
    v49 = sub_25BC6FC68();

    v50 = sub_25BBFCCC8(1, v49);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    if ((v55 & 1) == 0)
    {
      goto LABEL_32;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v57 = swift_dynamicCastClass();
    if (!v57)
    {
      swift_unknownObjectRelease();
      v57 = MEMORY[0x277D84F90];
    }

    v58 = *(v57 + 16);

    if (__OFSUB__(v56 >> 1, v54))
    {
      __break(1u);
    }

    else if (v58 == (v56 >> 1) - v54)
    {
      v59 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v59)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    swift_unknownObjectRelease();
LABEL_32:
    sub_25BABA62C(v50, v52, v54, v56);
LABEL_38:
    swift_unknownObjectRelease();
LABEL_39:
    sub_25BCB6C0C();
    memcpy((v65 + 352), v68, 0xA0uLL);
    v69 = v65;
    sub_25BCB579C();
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_25BB47FD0(uint64_t a1)
{
  result = sub_25BB48058(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB48014(uint64_t a1)
{
  result = sub_25BB48058(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB48058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BB48114()
{
  result = qword_27FBB4928;
  if (!qword_27FBB4928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4918, &qword_25BCBFB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4928);
  }

  return result;
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t KeyTensorPairsRepresentable.tensors.getter(uint64_t a1, uint64_t a2)
{
  v9[9] = (*(a2 + 32))();
  v9[6] = a1;
  v9[7] = a2;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25BAB2B20(sub_25BB485D0, v9, v4, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_25BB48420(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v4 + 16))(&v14 - v9, a1, TupleTypeMetadata2);
  v11 = *(TupleTypeMetadata2 + 48);
  v12 = *&v10[v11];
  (*(*(AssociatedTypeWitness - 8) + 32))(v8, v10, AssociatedTypeWitness);
  *&v8[v11] = v12;
  swift_getAtKeyPath();
  return (*(v4 + 8))(v8, TupleTypeMetadata2);
}

uint64_t sub_25BB485D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25BB48420(a1);
}

uint64_t Tensor.init(_:computeDevice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_25BB48640, 0, 0);
}

uint64_t sub_25BB48640()
{
  v1 = v0[4];
  sub_25BCB5F9C();
  v2 = sub_25BB58164();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[4];
    v7 = v0[5];
    v8 = sub_25BCB5FCC();
    v0[6] = v8;
    v9 = swift_task_alloc();
    v0[7] = v9;
    v9[2] = v8;
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v7;
    v10 = *(MEMORY[0x277CBFD98] + 4);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_25BB487C4;
    v12 = v0[4];

    return MEMORY[0x2821118D8](v0 + 2, sub_25BB48C00, v9, &type metadata for Tensor);
  }

  else
  {
    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[3];
    v16 = sub_25BCB5FDC();
    OUTLINED_FUNCTION_6_4(v16);
    (*(v17 + 8))(v13);
    sub_25BA9C2C8(v14);
    *v15 = 0;
    v18 = v0[1];

    return v18();
  }
}

void sub_25BB487C4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[4];
    v7 = sub_25BCB5FDC();
    OUTLINED_FUNCTION_6_4(v7);
    (*(v8 + 8))(v6);

    MEMORY[0x2822009F8](sub_25BB48938, 0, 0);
  }
}

uint64_t sub_25BB48938()
{
  v1 = *(v0 + 40);
  **(v0 + 24) = *(v0 + 16);
  sub_25BA9C2C8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25BB489A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v16 = *(a5 + 32);
  sub_25BCB617C();
  v16(&v34, a4, a5);
  v17 = v34;
  sub_25BAA51C8(a6, v33);
  sub_25BAA51C8(v33, &v27);
  if (*(&v28 + 1))
  {
    v31[0] = v27;
    v31[1] = v28;
    v31[2] = v29;
    v32 = v30;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v26);

    sub_25BAA51C8(v26, v31);
    sub_25BAA4AF4(v26);
    if (*(&v28 + 1))
    {
      sub_25BA9C2C8(&v27);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v26[0] = a3;
  LOBYTE(v27) = v17;
  sub_25BC732C4(v26, &v27, v31, qword_281557400, a1, a2);
  if (v8)
  {

    sub_25BA9C2C8(v31);
    sub_25BA9C2C8(v33);

    __break(1u);
  }

  else
  {
    v19 = v18;

    sub_25BAA51C8(v31, v26);
    type metadata accessor for TensorRepresentation();
    v20 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v22 = swift_unknownObjectRetain();
    LOBYTE(v27) = 1;
    v23 = sub_25BAA5BB4(v22, v26, 0x100000000, v20, ObjectType, v19);
    type metadata accessor for TensorHandle();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v31);
    result = sub_25BA9C2C8(v33);
    *a7 = v24;
  }

  return result;
}

void *sub_25BB48C20(void *result, int a2, void *__src, uint64_t a4)
{
  if (result)
  {
    if (__src)
    {
      return memmove(result, __src, a4 - __src);
    }
  }

  return result;
}

uint64_t MLTensor.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  Tensor.scalarType.getter();
  if (sub_25BB58194())
  {
    v4 = *(*(v3 + 16) + 152);
    sub_25BCB617C();
    sub_25BCB5FBC();

    v5 = 0;
  }

  else
  {

    v5 = 1;
  }

  v6 = sub_25BCB5FDC();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t sub_25BB48D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = a1;
  v11[3] = a2;
  v3 = *(a3 + 16);

  sub_25BAA82DC(sub_25BB48D88, v11, v4, v5, v6, v7, v8, v9, v11[0], v11[1]);
}

void *sub_25BB48D88(void *__src, uint64_t a2)
{
  result = *(v2 + 16);
  if (result)
  {
    if (__src)
    {
      return memmove(result, __src, a2 - __src);
    }
  }

  return result;
}

uint64_t sub_25BB48DD0()
{
  sub_25BCB625C();
}

uint64_t sub_25BB48E54()
{
  OUTLINED_FUNCTION_8_15();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_7_15();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB48EE8()
{
  OUTLINED_FUNCTION_13_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_15();
      break;
    case 2:
      OUTLINED_FUNCTION_7_15();
      break;
    case 3:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB48F60()
{
  OUTLINED_FUNCTION_15_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_15();
      break;
    case 2:
      OUTLINED_FUNCTION_7_15();
      break;
    case 3:
      OUTLINED_FUNCTION_4_19();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_11_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49014()
{
  sub_25BCB625C();
}

uint64_t sub_25BB490E8()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49184(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49224()
{
  sub_25BCB625C();
}

uint64_t sub_25BB492DC()
{
  sub_25BCB625C();
}

uint64_t sub_25BB4932C()
{
  sub_25BCB625C();
}

uint64_t sub_25BB493AC()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49494()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49594(uint64_t a1, char a2)
{
  sub_25BABE12C(a2);
  sub_25BCB625C();
}

uint64_t sub_25BB495E8()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49644()
{
  sub_25BCB625C();
}

uint64_t sub_25BB496D0()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49758()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49810(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_13_10();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB498D4(uint64_t a1, unsigned __int8 a2)
{
  v2 = 12;
  switch(a2 >> 6)
  {
    case 1:
      v2 = (a2 & 0x3F) + 4;
      break;
    case 2:
      v2 = (a2 & 0x3F) + 8;
      break;
    case 3:
      return MEMORY[0x25F878200](v2);
    default:
      v2 = a2;
      break;
  }

  return MEMORY[0x25F878200](v2);
}

uint64_t sub_25BB4996C(uint64_t a1, char a2)
{
  v2 = qword_25BCBFD68[a2];
  sub_25BCB625C();
}

uint64_t sub_25BB499AC()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49A38()
{
  OUTLINED_FUNCTION_8_15();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_7_15();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_11_16();
      break;
    case 4:
      OUTLINED_FUNCTION_15_10();
      break;
    case 5:
      OUTLINED_FUNCTION_4_19();
      break;
    case 6:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49AEC()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49B44()
{
  sub_25BCB625C();
}

uint64_t sub_25BB49CB0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    if (*(v0 + 88))
    {
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_25BB49D04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBAE40;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v46 = v2;
  if (*(v1 + 64))
  {

    v6 = MEMORY[0x25F876F40](v5);
    OUTLINED_FUNCTION_0_22(v6, v7, v8, v9, v10, v11, v12, v13, v44, v2);
    if (v14)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v46;
  }

  else
  {
  }

  if (*(v1 + 72))
  {
    v15 = *(v1 + 72);

    v17 = MEMORY[0x25F876F40](v16);
    OUTLINED_FUNCTION_0_22(v17, v18, v19, v20, v21, v22, v23, v24, v44, v46);
    if (v14)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v46;
  }

  if (sub_25BB49CB0())
  {

    v26 = MEMORY[0x25F876F40](v25);
    OUTLINED_FUNCTION_0_22(v26, v27, v28, v29, v30, v31, v32, v33, v44, v46);
    if (v14)
    {
      OUTLINED_FUNCTION_1_20();
    }

    sub_25BCB680C();

    v35 = MEMORY[0x25F876F40](v34);
    OUTLINED_FUNCTION_0_22(v35, v36, v37, v38, v39, v40, v41, v42, v45, v47);
    if (v14)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v48;
  }

  return v2;
}

uint64_t sub_25BB49E68()
{
  if (v0[21])
  {
    v1 = v0[21];
  }

  else
  {
    v1 = (*(*v0 + 392))();
    v2 = v0[21];
    v0[21] = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB49EEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, _OWORD *a11)
{
  *(v11 + 104) = 0u;
  *(v11 + 40) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 145) = 0u;
  *(v11 + 161) = 1;
  *(v11 + 168) = 0;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 64) = a6;
  *(v11 + 72) = a7;
  if (a8)
  {
    v12 = *(v11 + 88);
    *(v11 + 80) = a8;
    *(v11 + 88) = a9;
  }

  *(v11 + 96) = a10 & 1;
  v13 = a11[1];
  *(v11 + 104) = *a11;
  *(v11 + 120) = v13;
  *(v11 + 136) = a11[2];
  *(v11 + 146) = *(a11 + 42);
  return v11;
}

uint64_t sub_25BB49FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25BAC4018();
  v7 = v2[6];
  if (v6 == sub_25BAC4018())
  {
    v15 = v3[6];
    v3[6] = a2;
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = v3[7];
    if (sub_25BAC4018() == v8)
    {
      v16 = v3[7];
      v3[7] = a2;
    }

    else if (v3[8] && (v10 = *(a1 + 16), sub_25BAC4018() == v10))
    {
      v17 = v3[8];
      v3[8] = a2;
    }

    else if (v3[9] && (v11 = *(a1 + 16), sub_25BAC4018() == v11))
    {
      v18 = v3[9];
      v3[9] = a2;
    }

    else if (v3[10] && (v12 = *(a1 + 16), sub_25BAC4018() == v12))
    {
      v19 = v3[10];
      v3[10] = a2;
    }

    else
    {
      if (!v3[11])
      {
        return 0;
      }

      v13 = *(a1 + 16);
      if (sub_25BAC4018() != v13)
      {
        return 0;
      }

      v20 = v3[11];
      v3[11] = a2;
    }
  }

  return 1;
}

void *sub_25BB4A11C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[21];

  return v0;
}

uint64_t sub_25BB4A174()
{
  sub_25BB4A11C();

  return swift_deallocClassInstance();
}

__n128 sub_25BB4A220@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 136);
  result = *(v1 + 146);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BB4A26C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 40);
  return result;
}

uint64_t sub_25BB4A2B4(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t (*sub_25BB4A2F8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25BB4A34C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BB4A398()
{
  (*(*v0 + 168))();
  sub_25BCB625C();

  v1 = v0[96];
  sub_25BCB79EC();
  swift_beginAccess();
  return MEMORY[0x25F878200](v0[40]);
}

uint64_t sub_25BB4A554()
{
  v1 = v0[23];
  sub_25BA9D148(v0[22]);
  v2 = v0[24];
}

uint64_t *sub_25BB4A584()
{
  sub_25BB4A11C();
  v1 = v0[23];
  sub_25BA9D148(v0[22]);
  v2 = v0[24];

  return v0;
}

uint64_t sub_25BB4A5B0()
{
  sub_25BB4A584();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB4A620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBFBC0;
  v3 = v0[23];
  v4 = v0[24];
  *(v2 + 32) = v0[22];
  *(v2 + 40) = v4;
  v6 = v0[6];
  v5 = v0[7];
  *(v2 + 48) = v3;
  *(v2 + 56) = v6;
  *(v2 + 64) = v5;
  v48 = v2;
  if (v1[8])
  {

    v8 = MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_0_22(v8, v9, v10, v11, v12, v13, v14, v15, v46, v2);
    if (v16)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v48;
  }

  else
  {
  }

  if (v1[9])
  {
    v17 = v1[9];

    v19 = MEMORY[0x25F876F40](v18);
    OUTLINED_FUNCTION_0_22(v19, v20, v21, v22, v23, v24, v25, v26, v46, v48);
    if (v16)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v48;
  }

  if (sub_25BB49CB0())
  {

    v28 = MEMORY[0x25F876F40](v27);
    OUTLINED_FUNCTION_0_22(v28, v29, v30, v31, v32, v33, v34, v35, v46, v48);
    if (v16)
    {
      OUTLINED_FUNCTION_1_20();
    }

    sub_25BCB680C();

    v37 = MEMORY[0x25F876F40](v36);
    OUTLINED_FUNCTION_0_22(v37, v38, v39, v40, v41, v42, v43, v44, v47, v49);
    if (v16)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
    v2 = v50;
  }

  return v2;
}

uint64_t sub_25BB4AB24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((sub_25BB49FF4(a1, a2) & 1) == 0)
  {
    v7 = (v2 + 176);
    v6 = *(v2 + 176);
    v8 = sub_25BAC4018();
    if (v8 != sub_25BAC4018())
    {
      v7 = (v3 + 184);
      v9 = *(v3 + 184);
      if (sub_25BAC4018() != *(a1 + 16))
      {
        v11 = *(v3 + 192);
        v10 = (v3 + 192);
        if (sub_25BAC4018() != *(a1 + 16))
        {
          return 0;
        }

        v7 = v10;
      }
    }

    v13 = *v7;
    *v7 = a2;
  }

  return 1;
}

uint64_t sub_25BB4ABD8()
{
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];
}

void *sub_25BB4AC10()
{
  sub_25BB4A11C();
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];

  return v0;
}

uint64_t sub_25BB4AC44()
{
  sub_25BB4AC10();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB4AC9C(uint64_t a1)
{
  result = sub_25BB4AD4C(&qword_27FBB4930, type metadata accessor for LSTMLayerGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4ACF4(uint64_t a1)
{
  result = sub_25BB4AD4C(qword_27FBB4940, type metadata accessor for BaseLSTMLayerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4AD4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB4ADA8()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 3;
  }

  return 2;
}

uint64_t sub_25BB4ADD4()
{
  result = sub_25BB49CB0();
  if (result)
  {
    sub_25BB4AE24(result);
    v2 = 2;
    if (*(v0 + 64))
    {
      v2 = 3;
    }

    if (*(v0 + 72))
    {
      return v2 + 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_25BB4AE24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BB4AE88()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_3_0();
  }

  return *(v0 + 32);
}

uint64_t sub_25BB4AED4()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 <= 2)
  {
    OUTLINED_FUNCTION_2_21();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0();
  }

  return *(v0 + 48);
}

uint64_t sub_25BB4AF2C()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 <= 1)
  {
    OUTLINED_FUNCTION_2_21();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0();
  }

  return *(v0 + 40);
}

uint64_t sub_25BB4AF84()
{
  v0 = sub_25BB49D04();
  v1 = sub_25BB4ADD4();
  if (v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v1;
  sub_25BAB4D78(v1, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8779B0](v3, v0);
  }

  else
  {
    v4 = *(v0 + 8 * v3 + 32);
  }

  v5 = *(v4 + 152);
  sub_25BCB617C();

  if (*(v5 + 16) <= 1uLL)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_3_0();
  }

  v6 = *(v5 + 40);

  return v6;
}

uint64_t sub_25BB4B058()
{
  v1 = *(*(v0 + 56) + 152);
  if (!*(v1 + 16))
  {
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_3_0();
  }

  return *(v1 + 32) / 4;
}

uint64_t sub_25BB4B0CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB4B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25BB4B120(*v4, a2, a3, *(a1 + 16));
  *a4 = result;
  return result;
}

uint64_t sub_25BB4B194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE3AC4(*v1);
  *a1 = result;
  return result;
}

void (*sub_25BB4B1C0(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_25BB4B284(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_25BB4B23C;
}

void sub_25BB4B23C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25BB4B284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v6 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  sub_25BCB733C();
  return sub_25BB4B344;
}

void sub_25BB4B344(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_25BB4B394()
{
  swift_getWitnessTable();

  return sub_25BCB6A9C();
}

uint64_t sub_25BB4B400(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_25BCB732C();
  swift_getWitnessTable();
  return sub_25BCB6B6C() & 1;
}

uint64_t sub_25BB4B46C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_25BCB72AC();
}

uint64_t sub_25BB4B488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_25BB4B128(*a1, *v5, a3, a4, *(a2 + 16));
  *a5 = result;
  return result;
}

uint64_t sub_25BB4B4C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25BB4B128(*a1, *v4, a3, a4, *(a2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_25BB4B4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 16) = v4;
  v6 = *(a1 + 16);
  v7 = v5;

  v10 = sub_25BB4B120(v7, v8, v9, v6);

  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_25BB4B56C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25BB4B5C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t sub_25BB4B61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_25BB4B614(*a1, *v5, a3, a4, *(a2 + 16));
  *a5 = result;
  return result;
}

uint64_t sub_25BB4B654(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25BB4B614(*a1, *v4, a3, a4, *(a2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_25BB4B68C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *v4;
  v9 = *(a3 + 16);
  result = sub_25BB4B140();
  *a4 = result;
  *(a4 + 8) = v11 & 1;
  return result;
}

uint64_t sub_25BB4B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25BCB72AC();
  if (v13 != sub_25BCB72AC())
  {
    return 0;
  }

  result = sub_25BCB72AC();
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    for (i = 0; ; ++i)
    {
      v17 = v15 == i;
      if (v15 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      v19 = i;
      result = sub_25BB4B7C8(&v19, a1, a2, a3, a4, a5, a6, a7);
      if ((result & 1) == 0)
      {
        return v17;
      }
    }

    return v17;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25BB4B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  v17 = *v14;
  sub_25BCB733C();
  sub_25BCB733C();
  v18 = sub_25BCB630C();
  v19 = *(v9 + 8);
  v19(v13, a8);
  v19(v16, a8);
  return v18 & 1;
}

uint64_t sub_25BB4B938()
{
  sub_25BCB732C();

  swift_getWitnessTable();
  sub_25BCB666C();
}

uint64_t sub_25BB4B9DC()
{
  sub_25BCB79CC();
  sub_25BB4B938();
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4BA3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_25BB4B9DC();
}

uint64_t sub_25BB4BA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  return sub_25BB4B938();
}

uint64_t sub_25BB4BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25BCB79CC();
  v6 = *v3;
  v7 = *(a2 + 16);
  sub_25BB4B938();
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4BABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BCB7A8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v14 = *MEMORY[0x277D84BF8];
  v15 = sub_25BCB7A7C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  type metadata accessor for Heap();
  swift_getWitnessTable();
  sub_25BB4BC8C(v9);
  swift_retain_n();
  swift_retain_n();
  return sub_25BCB7ABC();
}