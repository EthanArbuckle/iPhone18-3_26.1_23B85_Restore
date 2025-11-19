uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193610510()
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193610568(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936105C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_1936106F8()
{
  result = qword_1EAE3F170;
  if (!qword_1EAE3F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F170);
  }

  return result;
}

unint64_t sub_19361075C()
{
  result = qword_1EAE3F178;
  if (!qword_1EAE3F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F178);
  }

  return result;
}

unint64_t sub_1936107B4()
{
  result = qword_1EAE3F180;
  if (!qword_1EAE3F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F180);
  }

  return result;
}

uint64_t sub_19361087C(uint64_t a1)
{
  OUTLINED_FUNCTION_24_21(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198();
    OUTLINED_FUNCTION_4_0();
    if (!(!v3 & v2))
    {
      sub_193610AA0(319, qword_1ED503A70, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        sub_19349D1FC(319, qword_1ED503AC8);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19349D1FC(319, &qword_1ED508290);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            sub_19349D1FC(319, &qword_1ED5039F0);
            if (v5 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED5039F8);
            if (v6 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, qword_1ED503A10);
            if (v7 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED503A00);
            if (v8 > 0x3F)
            {
              return v4;
            }

            sub_19349D1FC(319, &qword_1ED503A08);
            if (v9 > 0x3F)
            {
              return v4;
            }

            else
            {
              sub_19349D1FC(319, &qword_1EAE3A730);
              OUTLINED_FUNCTION_4_0();
              if (!(!v3 & v2))
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_193610AA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_193610B3C()
{
  sub_19349D1FC(319, &qword_1ED508290);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    OUTLINED_FUNCTION_24_21(v1, &qword_1ED5082C0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_193610AA0(319, qword_1ED504400, MEMORY[0x1E6968FB0]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_193610C4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
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

uint64_t sub_193610C98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_193610D60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 264))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193610DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
    *(result + 248) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193610E3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_193610E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_27_1(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV18PaymentInformationV0I6MethodVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_48_19()
{

  return sub_19393CA30();
}

BOOL OUTLINED_FUNCTION_55_13@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19360B7B8(a3, v3, a1, a2, v4);
}

void *OUTLINED_FUNCTION_59_15(void *a1)
{

  return memcpy(a1, (v1 + 48), 0xB8uLL);
}

void *OUTLINED_FUNCTION_72_11(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_73_16()
{

  return sub_19393C640();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceTrackedOrder.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v29 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_2_44();
  sub_193613CFC(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3F190, &qword_193973030);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static WalletPaymentsCommerceTrackedOrder.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_215();
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_16_23();
    sub_193613C44(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceTrackedOrder.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v3;
  v41 = v2;
  v39 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_1();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v38 - v25;
  if (*sub_1936197C4() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v26, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v15);
    if (!v0)
    {
      OUTLINED_FUNCTION_16_23();
      v31 = v40;
      sub_193613C44(v1, v40, v32);
      v33 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v34 = *(v33 + 20);
      sub_19344E6DC(v31 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v31 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v31 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v31 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v31 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v6;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceTrackedOrder.serialize()()
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F190, &qword_193973030);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_2_44();
  sub_193613CFC(v0, v1, v12);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v13, &qword_1EAE3F190, &qword_193973030);
  sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE3F190, &qword_193973030);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceTrackedOrder.columns.getter()
{
  v154 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_18_26();
  result = OUTLINED_FUNCTION_3_5(v11 | 0x6D754E7200000000, 0xEB00000000726562);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_59_1();
  result = OUTLINED_FUNCTION_3_5(v32, v33);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v53, v54, v55, v56, v0, 12, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v57 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v75 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v75);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_42_5();
  result = OUTLINED_FUNCTION_35_2(v76, v77);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v78 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v87 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v96);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000016, 0x8000000193A29920);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v97 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v106, v107, v108, v109, v110, v111, v112, v113, v114);
  v115 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v115);
  OUTLINED_FUNCTION_18_26();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v116, v117, v118, v119, v0, 4, 0);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v120 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v120, v121, v122, v123, v124, v125, v126, v127, v128);
  v129 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  v138 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v138);
  v139 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_35_2(v139, v140);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v141 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v150 = OUTLINED_FUNCTION_6_4();
  *(v150 + 16) = xmmword_193950B10;
  *(v150 + 32) = sub_19393C850();
  v151 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v152 = OUTLINED_FUNCTION_31_6();
  result = sub_19343D150(v152, v153, 3, 0, v150, 0, 1);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v154;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_193611B14()
{
  OUTLINED_FUNCTION_26();
  v99 = v0;
  v100 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v94 = v10 - v11;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v92 - v13;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v92 - v15;
  v16 = sub_19393BE00();
  v17 = OUTLINED_FUNCTION_0(v16);
  v96 = v18;
  v97 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v92 = (v21 - v22);
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v92 - v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v92 - v32;
  v34 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v35 = OUTLINED_FUNCTION_4_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_1();
  v40 = v39 - v38;
  v41 = v5 == 0x6D754E726564726FLL && v3 == 0xEB00000000726562;
  if (v41 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v42 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 28);
    goto LABEL_7;
  }

  v45 = v5 == 0x746144726564726FLL && v3 == 0xE900000000000065;
  if (v45 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_10_33() & 1) != 0))
  {
    v42 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 32);
    goto LABEL_7;
  }

  v46 = v5 == 0x746E61686372656DLL && v3 == 0xE800000000000000;
  if (v46 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v47 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    sub_193448758(v99 + *(v47 + 36), v33, &qword_1EAE3F1A0, &qword_193973038);
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      sub_193613C44(v33, v40, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
      sub_193494798(v34, &off_1F07D8560, v100);
      sub_193613CA0(v40);
      goto LABEL_62;
    }

    sub_19344E6DC(v33, &qword_1EAE3F1A0, &qword_193973038);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_38();
  v50 = v5 == 0xD000000000000014 && v49 == v3;
  if (v50 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    *&v102[0] = *(v99 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1B0, &qword_193973040);
    goto LABEL_9;
  }

  v51 = v5 == 0x72656D6F74737563 && v3 == 0xE800000000000000;
  if (v51 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v52 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    memcpy(v102, (v99 + *(v52 + 44)), 0x108uLL);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v102) != 1)
    {
      memcpy(v101, v102, sizeof(v101));
      sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Customer, &off_1F07D8580, v100);
      goto LABEL_62;
    }

LABEL_23:
    v48 = v100;
    *v100 = 0u;
    *(v48 + 1) = 0u;
    goto LABEL_62;
  }

  v53 = v5 == 0x746E656D796170 && v3 == 0xE700000000000000;
  if (v53 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v54 = v99 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 48);
    v55 = *(v54 + 32);
    if (v55)
    {
      v56 = *(v54 + 16);
      v102[0] = *v54;
      v102[1] = v56;
      *&v102[2] = v55;
      sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Payment, &off_1F07D85A0, v100);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_38();
  v58 = v5 == 0xD000000000000011 && v57 == v3;
  if (v58 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v59 = *(v99 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 52));
    if (v59 != 2)
    {
      LOBYTE(v102[0]) = v59 & 1;
      goto LABEL_9;
    }

LABEL_61:
    v65 = v100;
    *v100 = 0u;
    *(v65 + 1) = 0u;
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_42_5();
  v61 = v5 == 0x647055726564726FLL && v3 == v60;
  if (v61 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
  {
    v62 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
    v63 = v98;
    sub_193448758(v99 + *(v62 + 56), v98, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_45_20(v63);
    if (!v41)
    {
      v67 = v96;
      v66 = v97;
      (*(v96 + 32))(v27, v98, v97);
      sub_1934948FC();
      (*(v67 + 8))(v27, v66);
      goto LABEL_62;
    }

    v64 = v98;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_38();
  v69 = v5 == 0xD000000000000016 && v68 == v3;
  if (!v69 && (OUTLINED_FUNCTION_10_33() & 1) == 0)
  {
    v70 = v5 == 0x617453726564726FLL && v3 == 0xEB00000000737574;
    if (v70 || (OUTLINED_FUNCTION_10_33() & 1) != 0)
    {
      v71 = v99 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 64);
      if ((*(v71 + 9) & 1) == 0)
      {
        v72 = *(v71 + 8);
        *&v102[0] = *v71;
        BYTE8(v102[0]) = v72 & 1;
        goto LABEL_9;
      }

      goto LABEL_61;
    }

    OUTLINED_FUNCTION_38();
    v74 = v5 == 0xD000000000000015 && v73 == v3;
    if (v74 || (OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_10_33() & 1) != 0))
    {
      v75 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v76 = v95;
      sub_193448758(v99 + *(v75 + 68), v95, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_45_20(v76);
      if (!v41)
      {
        v77 = v95;
        v78 = v96;
        v79 = *(v96 + 32);
        v80 = v93;
LABEL_84:
        v79(v80, v77, v97);
        OUTLINED_FUNCTION_215();
        sub_1934948FC();
        v81 = *(v78 + 8);
        v82 = OUTLINED_FUNCTION_215();
        v83(v82);
        goto LABEL_62;
      }

      v64 = v95;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      if (v5 != 0xD000000000000015 || v84 != v3)
      {
        OUTLINED_FUNCTION_31_6();
        if ((OUTLINED_FUNCTION_10_33() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v89 = v88;
          *v88 = v5;
          v88[1] = v3;
          v88[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v89 + 2);
          OUTLINED_FUNCTION_2_44();
          sub_193613CFC(v99, v90, v91);
          *(v89 + 48) = 1;
          swift_willThrow();

          goto LABEL_62;
        }
      }

      v86 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
      v87 = v94;
      sub_193448758(v99 + *(v86 + 72), v94, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_45_20(v87);
      if (!v41)
      {
        v78 = v96;
        v79 = *(v96 + 32);
        v80 = v92;
        v77 = v94;
        goto LABEL_84;
      }

      v64 = v94;
    }

LABEL_60:
    sub_19344E6DC(v64, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_61;
  }

  v42 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 60);
LABEL_7:
  v43 = (v99 + v42);
  v44 = *(v99 + v42 + 8);
  if (!v44)
  {
    goto LABEL_61;
  }

  *&v102[0] = *v43;
  *(&v102[0] + 1) = v44;
LABEL_9:
  sub_1934948FC();
LABEL_62:
  OUTLINED_FUNCTION_27();
}

void sub_1936123A4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v74 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = sub_19393BE00();
  v17 = OUTLINED_FUNCTION_0(v16);
  v72 = v18;
  v73 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - v25;
  v27 = v4 == 0x737574617473 && v2 == 0xE600000000000000;
  if (v27 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    if (*(v0 + 9))
    {
      goto LABEL_7;
    }

    v29 = *(v0 + 8);
    v76[0] = *v0;
    LOBYTE(v76[1]) = v29 & 1;
LABEL_17:
    sub_1934948FC();
    goto LABEL_18;
  }

  v30 = v4 == 0x676E696B63617274 && v2 == 0xEE007265626D754ELL;
  if (v30 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 24);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 16);
    goto LABEL_16;
  }

  v33 = v4 == 0x4E72656972726163 && v2 == 0xEB00000000656D61;
  if (v33 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 40);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 32);
    goto LABEL_16;
  }

  v34 = v4 == 0x676E697070696873 && v2 == 0xEE00646F6874654DLL;
  if (v34 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 56);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 48);
    goto LABEL_16;
  }

  v35 = v4 == 0x676E697070696873 && v2 == 0xEC00000065746144;
  if (v35 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 72);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 64);
    goto LABEL_16;
  }

  v36 = v4 == 0x676E697070696873 && v2 == 0xEC000000656D6954;
  if (v36 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 88);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 80);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v39 = v38 | 2;
  v40 = v4 == (v38 | 2) && v37 == v2;
  if (v40 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 104);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 96);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v42 = v4 == v39 && v41 == v2;
  if (v42 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 120);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 112);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_25();
  v45 = v4 == v44 && v43 == v2;
  if (v45 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 136);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 128);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_25();
  v48 = v4 == v47 && v46 == v2;
  if (v48 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 152);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 144);
    goto LABEL_16;
  }

  v49 = v4 == 0x79726576696C6564 && v2 == 0xEC00000065746144;
  if (v49 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
  {
    v31 = *(v0 + 168);
    if (!v31)
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 160);
    goto LABEL_16;
  }

  v50 = v4 == 0x79726576696C6564 && v2 == 0xEC000000656D6954;
  if (!v50 && (OUTLINED_FUNCTION_9_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_25();
    v53 = v4 == v52 - 7 && v51 == v2;
    if (v53 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
    {
      memcpy(v76, (v0 + 192), 0x108uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v76) != 1)
      {
        memcpy(v75, v76, sizeof(v75));
        sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient, &off_1F07D8570, v74);
        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_25();
      v56 = v4 == v55 - 1 && v54 == v2;
      if (v56 || (OUTLINED_FUNCTION_9_1() & 1) != 0)
      {
        v57 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        sub_193448758(v0 + *(v57 + 68), v15, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v15, 1, v73) != 1)
        {
          v59 = v72;
          (*(v72 + 32))(v26, v15, v73);
          OUTLINED_FUNCTION_215();
          sub_1934948FC();
          v60 = *(v59 + 8);
          v61 = OUTLINED_FUNCTION_215();
          v62(v61);
          goto LABEL_18;
        }

        v58 = v15;
      }

      else
      {
        OUTLINED_FUNCTION_8_25();
        v65 = v4 == v64 - 3 && v63 == v2;
        if (!v65 && (OUTLINED_FUNCTION_9_1() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v70 = v69;
          *v69 = v4;
          v69[1] = v2;
          v69[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v70 + 2);
          sub_193613CFC(v0, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
          *(v70 + 48) = 1;
          swift_willThrow();

          goto LABEL_18;
        }

        v66 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        sub_193448758(v0 + *(v66 + 72), v12, &qword_1EAE3A9E8, &qword_19394F800);
        if (__swift_getEnumTagSinglePayload(v12, 1, v73) != 1)
        {
          v68 = v72;
          v67 = v73;
          (*(v72 + 32))(v23, v12, v73);
          sub_1934948FC();
          (*(v68 + 8))(v23, v67);
          goto LABEL_18;
        }

        v58 = v12;
      }

      sub_19344E6DC(v58, &qword_1EAE3A9E8, &qword_19394F800);
    }

    goto LABEL_7;
  }

  v31 = *(v0 + 184);
  if (v31)
  {
    v32 = *(v0 + 176);
LABEL_16:
    v76[0] = v32;
    v76[1] = v31;
    goto LABEL_17;
  }

LABEL_7:
  v28 = v74;
  *v74 = 0u;
  *(v28 + 1) = 0u;
LABEL_18:
  OUTLINED_FUNCTION_27();
}

void sub_193612AAC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v29 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v20 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (v3[1])
    {
      v21 = *v3;
LABEL_8:
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v22 = a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL;
  if (v22 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (v3[3])
    {
      v23 = v3[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v24 = a1 == 0xD000000000000015 && 0x8000000193A299C0 == a2;
  if (v24 || (OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    v25 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
    sub_193448758(v3 + *(v25 + 24), v4, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v4, 1, v12) == 1)
    {
      sub_19344E6DC(v4, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_23:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    (*(v29 + 32))(v19, v4, v12);
    sub_1934948FC();
    (*(v29 + 8))(v19, v12);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v27 = v26;
    *v26 = a1;
    v26[1] = a2;
    v26[5] = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27 + 2);
    sub_193613CFC(v3, boxed_opaque_existential_1Tm, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
    *(v27 + 48) = 1;
    swift_willThrow();
  }
}

void sub_193612DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_25(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v13 = v10 == v12 && v9 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[1];
    if (__src[1])
    {
      v15 = __src[0];
LABEL_8:
      __dst[0] = v15;
      __dst[1] = v14;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_22_25();
  v17 = v13 && v9 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[3];
    if (__src[3])
    {
      v15 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_13_19();
  v19 = v13 && v9 == v18;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[5];
    if (__src[5])
    {
      v15 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v20 = v10 == 0x73736572646461 && v9 == 0xE700000000000000;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__dst, (v11 + 48), 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v31, __dst, sizeof(v31));
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Address, &off_1F07D8590, v8);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v22 = v13 && v9 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
    {
      v14 = __src[30];
      if (__src[30])
      {
        v15 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_15_13();
    v24 = v13 && v9 == v23;
    if (v24 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      v14 = __src[32];
      if (__src[32])
      {
        v15 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v25, v26);
    *(v27 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient;
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_28_3(v28);
    memcpy(v29, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613D58(__src, __dst);
  }
}

void sub_193612FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_25(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v13 = v10 == v12 && v9 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[1];
    if (__src[1])
    {
      v15 = __src[0];
LABEL_8:
      __dst[0] = v15;
      __dst[1] = v14;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_22_25();
  v17 = v13 && v9 == v16;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[3];
    if (__src[3])
    {
      v15 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_13_19();
  v19 = v13 && v9 == v18;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v14 = __src[5];
    if (__src[5])
    {
      v15 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v20 = v10 == 0x41676E696C6C6962 && v9 == 0xEE00737365726464;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__dst, (v11 + 48), 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v31, __dst, sizeof(v31));
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Address, &off_1F07D8590, v8);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v22 = v13 && v9 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
    {
      v14 = __src[30];
      if (__src[30])
      {
        v15 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_15_13();
    v24 = v13 && v9 == v23;
    if (v24 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      v14 = __src[32];
      if (__src[32])
      {
        v15 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v25, v26);
    *(v27 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Customer;
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_28_3(v28);
    memcpy(v29, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613DB4(__src, __dst);
  }
}

void sub_19361320C()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x746565727473 && v0 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[1];
    if (__dst[1])
    {
      v5 = __dst[0];
LABEL_8:
      v24[0] = v5;
      v24[1] = v4;
LABEL_9:
      sub_1934948FC();
      return;
    }

    goto LABEL_86;
  }

  v6 = v1 == 2037672291 && v0 == 0xE400000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[3];
    if (__dst[3])
    {
      v5 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v7 = v1 == 0x6574617473 && v0 == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[5];
    if (__dst[5])
    {
      v5 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v8 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[7];
    if (__dst[7])
    {
      v5 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v9 = v1 == 0x7972746E756F63 && v0 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[9];
    if (__dst[9])
    {
      v5 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v10 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
  if (v10 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v24[0] = __dst[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_9;
  }

  v11 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[12];
    if (__dst[12])
    {
      v5 = __dst[11];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v12 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[14];
    if (__dst[14])
    {
      v5 = __dst[13];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_38();
  v14 = v1 == 0xD000000000000012 && v13 == v0;
  if (v14 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[16];
    if (__dst[16])
    {
      v5 = __dst[15];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_38();
  v16 = v1 == 0xD000000000000015 && v15 == v0;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[18];
    if (__dst[18])
    {
      v5 = __dst[17];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v17 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
  if (v17 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[20];
    if (__dst[20])
    {
      v5 = __dst[19];
      goto LABEL_8;
    }

    goto LABEL_86;
  }

  v18 = v1 == 0x6572646441776172 && v0 == 0xEA00000000007373;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[22];
    if (__dst[22])
    {
      v5 = __dst[21];
      goto LABEL_8;
    }

LABEL_86:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  v19 = swift_allocError();
  OUTLINED_FUNCTION_9_3(v19, v20);
  *(v21 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Address;
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_28_3(v22);
  memcpy(v23, __dst, 0xB8uLL);
  OUTLINED_FUNCTION_26_0();

  sub_193613E10(__dst, v24);
}

uint64_t sub_1936135E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6F6D416C61746F74;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x6F6D416C61746F74 && a2 == 0xEB00000000746E75;
  if (v10 || (v12 = v3[2], v11 = v3[3], v13 = v3[4], result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v14 = a1 == 0xD000000000000014 && 0x8000000193A299E0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v15 = a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69;
  if (v15 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1B8, &qword_193973048);
    return sub_1934948FC();
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceTrackedOrder.Payment;
  v18 = swift_allocObject();
  v17[2] = v18;
  v18[2] = v9;
  v18[3] = v8;
  v18[4] = v12;
  v18[5] = v11;
  v18[6] = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

void sub_1936137E0()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x746E756F6D61 && v1 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v5 = *&__dst[8];
    if (*&__dst[8])
    {
      v6 = *__dst;
LABEL_8:
      v15 = v6;
      v16 = v5;
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v7 = v2 == 0x65727275436F7369 && v1 == 0xEF65646F4379636ELL;
  if (v7 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v5 = *&__dst[24];
    if (*&__dst[24])
    {
      v6 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v8 = v2 == 0x4D746E656D796170 && v1 == 0xED0000646F687465;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (*&__dst[40] == 1)
    {
LABEL_22:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v15 = *&__dst[32];
    v16 = *&__dst[40];
    v17 = *&__dst[48];
    v18 = __dst[64];
    sub_193494798(&type metadata for WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod, &off_1F07D85C0, v0);
  }

  else
  {
    v9 = v2 == 0xD000000000000014 && 0x8000000193A29A00 == v1;
    if (v9 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      v5 = *&__dst[80];
      if (*&__dst[80])
      {
        v6 = *&__dst[72];
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v10, v11);
    *(v12 + 40) = &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction;
    v13 = swift_allocObject();
    v14 = OUTLINED_FUNCTION_28_3(v13);
    memcpy(v14, __dst, 0x58uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193613E6C(__dst, &v15);
  }
}

uint64_t sub_193613A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x4E79616C70736964;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v10 || (v12 = v3[2], v11 = v3[3], v13 = *(v3 + 32), result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x72756F467473616CLL;
  v14 = a1 == 0x72756F467473616CLL && a2 == 0xEE00737469676944;
  if (v14 || (result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x50656C7070417369;
  v15 = a1 == 0x50656C7070417369 && a2 == 0xEA00000000007961;
  if (v15 || (result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
  {
    if (v13 != 2)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod;
  v18 = swift_allocObject();
  v17[2] = v18;
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *(v18 + 32) = v12;
  *(v18 + 40) = v11;
  *(v18 + 48) = v13;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_193613BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_193613C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193613CA0(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193613CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t WalletPaymentsCommerceTrackedOrder.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19361FBBC(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[9];
  sub_193619AC8();
  v8 = v2[11];
  sub_193610F78(a1 + v8);
  v9 = (a1 + v2[12]);
  sub_19344B5D8(v9);
  v15 = v2[13];
  OUTLINED_FUNCTION_7_9();
  v13 = v2[14];
  sub_19344B814();
  v17 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = a1 + v2[16];
  OUTLINED_FUNCTION_131(v16);
  v14 = v2[17];
  sub_19344B814();
  v18 = v2[18];
  sub_19344B814();
  *a1 = *sub_1936197C4();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_19344E6DC(a1 + v7, &qword_1EAE3F1A0, &qword_193973038);
  v11 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v11);
  *(a1 + v2[10]) = MEMORY[0x1E69E7CC0];
  sub_193463B08(__src);
  memcpy(__dst, a1 + v8, 0x108uLL);
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  memcpy(a1 + v8, __src, 0x108uLL);
  sub_193613BF4(*v9, v9[1], v9[2], v9[3], v9[4]);
  v9[4] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(a1 + v15) = 2;
  sub_19344E6DC(a1 + v13, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_26();

  *v17 = 0;
  v17[1] = 0;
  *v16 = 0;
  *(v16 + 8) = 256;
  sub_19344E6DC(a1 + v14, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_23_26();
  sub_19344E6DC(a1 + v18, &qword_1EAE3A9E8, &qword_19394F800);
  return OUTLINED_FUNCTION_23_26();
}

BOOL static WalletPaymentsCommerceTrackedOrder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v215 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v210 = v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  v211 = &v205 - v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  v214 = &v205 - v20;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v21 = OUTLINED_FUNCTION_4_1(v217);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_8();
  v212 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  v213 = &v205 - v26;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v27);
  v216 = &v205 - v28;
  v29 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  v37 = OUTLINED_FUNCTION_47(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v205 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1C0, &qword_193973118);
  v43 = OUTLINED_FUNCTION_4_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v205 - v46;
  v48 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v49 = v48[7];
  v218 = a1;
  v219 = a2;
  v50 = *(a2 + v49 + 8);
  if (*(a1 + v49 + 8))
  {
    if (!v50)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((a1 + v49));
    v53 = v53 && v51 == v52;
    if (!v53)
    {
      v54 = v48;
      v55 = sub_19393CA30();
      v48 = v54;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v56 = v48[8];
  v57 = v218;
  v58 = *(v219 + v56 + 8);
  if (*(v218 + v56 + 8))
  {
    if (!v58)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((v218 + v56));
    if (!v53 || v59 != v60)
    {
      v62 = v48;
      v63 = sub_19393CA30();
      v48 = v62;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v207 = v11;
  v208 = v4;
  v209 = v48;
  v64 = v48[9];
  v65 = *(v42 + 48);
  sub_1934486F8(v57 + v64, v47, &qword_1EAE3F1A0, &qword_193973038);
  v66 = v219;
  sub_1934486F8(v219 + v64, &v47[v65], &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_31(v47);
  if (v53)
  {
    OUTLINED_FUNCTION_31(&v47[v65]);
    if (v53)
    {
      sub_19344E6DC(v47, &qword_1EAE3F1A0, &qword_193973038);
      goto LABEL_31;
    }

LABEL_27:
    v69 = &qword_1EAE3F1C0;
    v70 = &qword_193973118;
LABEL_28:
    v71 = v47;
LABEL_29:
    sub_19344E6DC(v71, v69, v70);
    return 0;
  }

  sub_1934486F8(v47, v41, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_31(&v47[v65]);
  if (v67)
  {
    OUTLINED_FUNCTION_10_34();
    sub_19361673C(v41, v68);
    goto LABEL_27;
  }

  sub_193616384(&v47[v65], v35);
  OUTLINED_FUNCTION_9_48();
  sub_1936166F4(v72, v73);
  v74 = sub_19393C550();
  sub_19361673C(v35, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19361673C(v41, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  sub_19344E6DC(v47, &qword_1EAE3F1A0, &qword_193973038);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v75 = v209;
  v76 = v218;
  if ((sub_193616004(*(v218 + v209[10]), *(v66 + v209[10])) & 1) == 0)
  {
    return 0;
  }

  v77 = v75[11];
  memcpy(v227, (v76 + v77), sizeof(v227));
  v78 = v75[11];
  memcpy(v228, (v66 + v78), sizeof(v228));
  memcpy(v226, (v76 + v77), 0x108uLL);
  memcpy(&v226[33], (v66 + v78), 0x108uLL);
  memcpy(v229, (v76 + v77), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v229) == 1)
  {
    memcpy(v224, &v226[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v224) == 1)
    {
      OUTLINED_FUNCTION_45_21(v225);
      OUTLINED_FUNCTION_15_4(v227, v223);
      OUTLINED_FUNCTION_15_4(v228, v223);
      sub_19344E6DC(v225, &qword_1EAE3F1A8, &qword_1939732B0);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_15_4(v227, v225);
    OUTLINED_FUNCTION_15_4(v228, v225);
LABEL_38:
    memcpy(v224, v226, sizeof(v224));
    v69 = &unk_1EAE3F1C8;
    v70 = &unk_193973120;
    v71 = v224;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_45_21(v225);
  OUTLINED_FUNCTION_45_21(v223);
  memcpy(v224, &v226[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v224) == 1)
  {
    memcpy(v222, v223, sizeof(v222));
    OUTLINED_FUNCTION_15_4(v227, v221);
    OUTLINED_FUNCTION_15_4(v228, v221);
    OUTLINED_FUNCTION_15_4(v225, v221);
    sub_1936162DC(v222);
    goto LABEL_38;
  }

  memcpy(v222, &v226[33], sizeof(v222));
  OUTLINED_FUNCTION_36_19(v227);
  OUTLINED_FUNCTION_36_19(v228);
  OUTLINED_FUNCTION_36_19(v225);
  sub_193616330();
  v79 = sub_19393C550();
  memcpy(v220, v222, sizeof(v220));
  sub_1936162DC(v220);
  memcpy(v221, v223, sizeof(v221));
  sub_1936162DC(v221);
  OUTLINED_FUNCTION_45_21(v222);
  sub_19344E6DC(v222, &qword_1EAE3F1A8, &qword_1939732B0);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v80 = v209[12];
  v81 = *(v218 + v80);
  v82 = *(v218 + v80 + 8);
  v83 = *(v218 + v80 + 16);
  v84 = *(v218 + v80 + 24);
  v85 = *(v218 + v80 + 32);
  v86 = (v219 + v80);
  v88 = *v86;
  v87 = v86[1];
  v90 = v86[2];
  v89 = v86[3];
  v91 = v86[4];
  if (!v85)
  {
    v206 = v86[1];
    v106 = OUTLINED_FUNCTION_2_45();
    sub_1936161E4(v106, v107, v108, v109, 0);
    if (!v91)
    {
      v138 = OUTLINED_FUNCTION_4_43();
      sub_1936161E4(v138, v139, v140, v141, 0);
      v142 = OUTLINED_FUNCTION_2_45();
      sub_193613BF4(v142, v143, v144, v145, 0);
      goto LABEL_50;
    }

    v110 = OUTLINED_FUNCTION_4_43();
    sub_1936161E4(v110, v111, v112, v113, v91);
LABEL_47:
    OUTLINED_FUNCTION_1_49();
    sub_193613BF4(v128, v129, v130, v131, v132);
    v133 = OUTLINED_FUNCTION_4_43();
    sub_193613BF4(v133, v134, v135, v136, v91);
    return 0;
  }

  v226[0] = v81;
  v226[1] = v82;
  v226[2] = v83;
  v226[3] = v84;
  v226[4] = v85;
  if (!v91)
  {
    v206 = v87;
    OUTLINED_FUNCTION_1_49();
    sub_1936161E4(v114, v115, v116, v117, v118);
    v119 = OUTLINED_FUNCTION_4_43();
    sub_1936161E4(v119, v120, v121, v122, 0);
    OUTLINED_FUNCTION_1_49();
    sub_1936161E4(v123, v124, v125, v126, v127);

    goto LABEL_47;
  }

  v224[0] = v88;
  v224[1] = v87;
  v224[2] = v90;
  v224[3] = v89;
  v224[4] = v91;
  v205 = v81;
  OUTLINED_FUNCTION_1_49();
  sub_1936161E4(v92, v93, v94, v95, v96);
  v97 = OUTLINED_FUNCTION_115_0();
  sub_1936161E4(v97, v98, v90, v89, v91);
  v99 = v205;
  OUTLINED_FUNCTION_1_49();
  sub_1936161E4(v100, v101, v102, v103, v104);
  sub_193616288();
  v105 = sub_19393C550();

  sub_193613BF4(v99, v82, v83, v84, v85);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v146 = v209[13];
  v147 = *(v218 + v146);
  v148 = *(v219 + v146);
  if (v147 == 2)
  {
    if (v148 != 2)
    {
      return 0;
    }
  }

  else if (v148 == 2 || ((v147 ^ v148) & 1) != 0)
  {
    return 0;
  }

  v149 = v209[14];
  v150 = *(v217 + 48);
  v47 = v216;
  OUTLINED_FUNCTION_15_4(v218 + v149, v216);
  OUTLINED_FUNCTION_15_4(v219 + v149, &v47[v150]);
  v151 = v208;
  OUTLINED_FUNCTION_6_3(v47, 1, v208);
  if (v53)
  {
    OUTLINED_FUNCTION_6_3(&v47[v150], 1, v151);
    if (v53)
    {
      sub_19344E6DC(v47, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v152 = v214;
  sub_1934486F8(v47, v214, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v47[v150], 1, v151);
  if (v153)
  {
    (*(v215 + 8))(v152, v151);
LABEL_63:
    v69 = &qword_1EAE3B968;
    v70 = &qword_193972430;
    goto LABEL_28;
  }

  v154 = v215;
  v155 = v207;
  (*(v215 + 32))(v207, &v47[v150], v151);
  OUTLINED_FUNCTION_0_53();
  sub_1936166F4(v156, v157);
  v158 = sub_19393C550();
  v159 = *(v154 + 8);
  v159(v155, v151);
  v159(v152, v151);
  sub_19344E6DC(v47, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v158 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v160 = v209;
  v161 = v209[15];
  v162 = v219;
  v163 = *(v219 + v161 + 8);
  if (*(v218 + v161 + 8))
  {
    if (!v163)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((v218 + v161));
    if (!v53 || v164 != v165)
    {
      v167 = sub_19393CA30();
      v160 = v209;
      if ((v167 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v163)
  {
    return 0;
  }

  v168 = v160[16];
  v169 = v218 + v168;
  v170 = *(v218 + v168 + 9);
  v171 = (v162 + v168);
  v172 = *(v162 + v168 + 9);
  if (v170)
  {
    if ((v172 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v173 = *v171;
    v174 = *(v171 + 8);
    v175 = *(v169 + 8);
    v226[0] = *v169;
    LOWORD(v226[1]) = v175;
    if (v172)
    {
      return 0;
    }

    v224[0] = v173;
    LOBYTE(v224[1]) = v174 & 1;
    sub_193616234();
    v176 = sub_19393C550();
    v160 = v209;
    if ((v176 & 1) == 0)
    {
      return 0;
    }
  }

  v177 = v160[17];
  v178 = *(v217 + 48);
  v179 = v213;
  OUTLINED_FUNCTION_15_4(v218 + v177, v213);
  OUTLINED_FUNCTION_15_4(v162 + v177, v179 + v178);
  OUTLINED_FUNCTION_6_3(v179, 1, v208);
  if (v53)
  {
    OUTLINED_FUNCTION_31(v179 + v178);
    if (v53)
    {
      sub_19344E6DC(v179, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_89;
    }

    goto LABEL_87;
  }

  sub_1934486F8(v179, v211, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v179 + v178);
  if (v180)
  {
    (*(v215 + 8))(v211, v208);
    v179 = v213;
LABEL_87:
    v69 = &qword_1EAE3B968;
    v70 = &qword_193972430;
    v71 = v179;
    goto LABEL_29;
  }

  v181 = v215;
  v182 = v213;
  v184 = v207;
  v183 = v208;
  (*(v215 + 32))(v207, v213 + v178, v208);
  OUTLINED_FUNCTION_0_53();
  sub_1936166F4(v185, v186);
  v187 = v211;
  v188 = sub_19393C550();
  v189 = *(v181 + 8);
  v189(v184, v183);
  v189(v187, v183);
  sub_19344E6DC(v182, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v188 & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  v190 = v209[18];
  v191 = *(v217 + 48);
  v192 = v212;
  OUTLINED_FUNCTION_15_4(v218 + v190, v212);
  OUTLINED_FUNCTION_15_4(v219 + v190, v192 + v191);
  OUTLINED_FUNCTION_6_3(v192, 1, v208);
  if (!v53)
  {
    v193 = v212;
    sub_1934486F8(v212, v210, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_6_3(v193 + v191, 1, v208);
    if (!v194)
    {
      v195 = v215;
      v196 = v212;
      v197 = v212 + v191;
      v199 = v207;
      v198 = v208;
      (*(v215 + 32))(v207, v197, v208);
      OUTLINED_FUNCTION_0_53();
      sub_1936166F4(v200, v201);
      v202 = v210;
      v203 = sub_19393C550();
      v204 = *(v195 + 8);
      v204(v199, v198);
      v204(v202, v198);
      sub_19344E6DC(v196, &qword_1EAE3A9E8, &qword_19394F800);
      return (v203 & 1) != 0;
    }

    (*(v215 + 8))(v210, v208);
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_6_3(v212 + v191, 1, v208);
  if (!v53)
  {
LABEL_97:
    v69 = &qword_1EAE3B968;
    v70 = &qword_193972430;
    v71 = v212;
    goto LABEL_29;
  }

  sub_19344E6DC(v212, &qword_1EAE3A9E8, &qword_19394F800);
  return 1;
}

uint64_t WalletPaymentsCommerceTrackedOrder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v77 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v77);
  *&v76 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v75 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v74 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v72 - v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v72 - v18;
  v19 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  v27 = OUTLINED_FUNCTION_47(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v72 - v30;
  v32 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v33 = (v1 + v32[7]);
  if (v33[1])
  {
    v34 = *v33;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v35 = (v1 + v32[8]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v37 = v75;
  sub_1934486F8(v1 + v32[9], v31, &qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_6_3(v31, 1, v19);
  if (v38)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193616384(v31, v25);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_9_48();
    sub_1936166F4(v39, v40);
    sub_19393C540();
    OUTLINED_FUNCTION_10_34();
    sub_19361673C(v25, v41);
  }

  v42 = v76;
  sub_1936163E8(a1, *(v1 + v32[10]));
  v43 = v32[11];
  memcpy(v81, (v2 + v43), sizeof(v81));
  memcpy(v82, (v2 + v43), 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v82) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v78, v81, sizeof(v78));
    OUTLINED_FUNCTION_94();
    memcpy(v79, v81, sizeof(v79));
    sub_193613DB4(v79, v80);
    sub_1936164E4();
    sub_19393C540();
    memcpy(v80, v78, sizeof(v80));
    sub_1936162DC(v80);
  }

  v44 = v2 + v32[12];
  v45 = *(v44 + 32);
  if (v45)
  {
    v46 = *(v44 + 24);
    v80[0] = *v44;
    v76 = *(v44 + 8);
    *&v80[1] = v76;
    v80[3] = v46;
    v80[4] = v45;
    OUTLINED_FUNCTION_94();
    sub_193616538();

    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v47 = v77;
  if (*(v2 + v32[13]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v48 = v72;
  sub_1934486F8(v2 + v32[14], v72, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v48, 1, v47);
  if (v38)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_8_36();
    v50(v49);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_53();
    sub_1936166F4(v51, v52);
    OUTLINED_FUNCTION_22_26();
    v53 = OUTLINED_FUNCTION_41_18();
    v54(v53);
  }

  v55 = (v2 + v32[15]);
  if (v55[1])
  {
    v56 = *v55;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_115_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v57 = v2 + v32[16];
  if (*(v57 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v58 = *(v57 + 8);
    v80[0] = *v57;
    LOBYTE(v80[1]) = v58 & 1;
    OUTLINED_FUNCTION_94();
    sub_19361658C();
    sub_19393C540();
  }

  v59 = v73;
  sub_1934486F8(v2 + v32[17], v73, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v59, 1, v47);
  if (v38)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v60 = OUTLINED_FUNCTION_8_36();
    v61(v60);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_53();
    sub_1936166F4(v62, v63);
    OUTLINED_FUNCTION_22_26();
    v64 = OUTLINED_FUNCTION_41_18();
    v65(v64);
  }

  v66 = v74;
  sub_1934486F8(v2 + v32[18], v74, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v66, 1, v47);
  if (v38)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v67 = OUTLINED_FUNCTION_8_36();
  v68(v67);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_0_53();
  sub_1936166F4(v69, v70);
  OUTLINED_FUNCTION_22_26();
  return (*(v42 + 8))(v37, v47);
}

uint64_t WalletPaymentsCommerceTrackedOrder.OrderStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static WalletPaymentsCommerceTrackedOrder.OrderStatus.allCases.getter()
{
  v1 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F228, &qword_1939731E8);
  v2 = OUTLINED_FUNCTION_16_0(v1);
  if (!(!v8 & v7))
  {
    v34 = OUTLINED_FUNCTION_39(v6);
    v38 = OUTLINED_FUNCTION_84_2(v34, v35, v36, v37, &qword_1EAE3F228, &qword_1939731E8);
    v2 = OUTLINED_FUNCTION_17_2(v38);
  }

  OUTLINED_FUNCTION_13_6(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v39 = OUTLINED_FUNCTION_39(v13);
    v43 = OUTLINED_FUNCTION_85(v39, v40, v41, v42, &qword_1EAE3F228, &qword_1939731E8);
    v9 = OUTLINED_FUNCTION_17_2(v43);
  }

  OUTLINED_FUNCTION_8_5(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v44 = OUTLINED_FUNCTION_39(v20);
    v16 = sub_1934B0FCC(v44, v0, 1, v45, &qword_1EAE3F228, &qword_1939731E8);
    v19 = v16;
  }

  OUTLINED_FUNCTION_9_7(v16, v17, v18, v19);
  if (!(v14 ^ v15 | v8))
  {
    v46 = OUTLINED_FUNCTION_39(v25);
    v21 = OUTLINED_FUNCTION_84_2(v46, v47, v48, v49, &qword_1EAE3F228, &qword_1939731E8);
    v24 = v21;
  }

  OUTLINED_FUNCTION_3_7(v21, v22, v23, v24);
  if (!(v14 ^ v15 | v8))
  {
    v50 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_85(v50, v51, v52, v53, &qword_1EAE3F228, &qword_1939731E8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_47_5(v26, v27, v28, v29);
  *(v31 + 32) = 3;
  *(v31 + 40) = v0;
  return v32;
}

uint64_t WalletPaymentsCommerceTrackedOrder.OrderStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1852141647;
  switch(*v0)
  {
    case 1:
      result = 0x69737365636F7250;
      break;
    case 2:
      result = 0x656C6C65636E6143;
      break;
    case 3:
      result = 0x6575737349;
      break;
    default:
      return result;
  }

  return result;
}

void WalletPaymentsCommerceTrackedOrder.OrderStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 1852141647 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_19_29();
    v7 = v3 && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_32_22();
      v9 = v3 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_44_19();
        if (v3 && v0 == 0xE500000000000000)
        {

          v5 = 3;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_0_9();

          v5 = 3;
          if ((v11 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F220, &qword_1939731E0);
  v4 = OUTLINED_FUNCTION_16_0(v3);
  if (!(!v10 & v9))
  {
    v57 = OUTLINED_FUNCTION_39(v8);
    v61 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE3F220, &qword_1939731E0);
    v4 = OUTLINED_FUNCTION_17_2(v61);
  }

  OUTLINED_FUNCTION_13_6(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v62 = OUTLINED_FUNCTION_39(v15);
    v66 = OUTLINED_FUNCTION_85(v62, v63, v64, v65, &qword_1EAE3F220, &qword_1939731E0);
    v11 = OUTLINED_FUNCTION_17_2(v66);
  }

  OUTLINED_FUNCTION_8_5(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v67 = OUTLINED_FUNCTION_39(v22);
    v18 = sub_1934B0FCC(v67, v1, 1, v68, &qword_1EAE3F220, &qword_1939731E0);
    v21 = v18;
  }

  OUTLINED_FUNCTION_9_7(v18, v19, v20, v21);
  if (!(v16 ^ v17 | v10))
  {
    v69 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_84_2(v69, v70, v71, v72, &qword_1EAE3F220, &qword_1939731E0);
    v26 = v23;
  }

  OUTLINED_FUNCTION_3_7(v23, v24, v25, v26);
  if (!(v16 ^ v17 | v10))
  {
    v73 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_85(v73, v74, v75, v76, &qword_1EAE3F220, &qword_1939731E0);
    v31 = v28;
  }

  OUTLINED_FUNCTION_47_5(v28, v29, v30, v31);
  OUTLINED_FUNCTION_4(v33, v34);
  if (v2 + 6 > (v36 >> 1))
  {
    v77 = OUTLINED_FUNCTION_39(v36);
    v35 = OUTLINED_FUNCTION_84_2(v77, v78, v79, v80, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v35 + 2) = v2 + 6;
  OUTLINED_FUNCTION_4(v35, &v35[16 * v0]);
  if (v2 + 7 > (v41 >> 1))
  {
    v81 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_85(v81, v82, v83, v84, &qword_1EAE3F220, &qword_1939731E0);
    v40 = v37;
  }

  OUTLINED_FUNCTION_47_5(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v2 + 8 > (v45 >> 1))
  {
    v85 = OUTLINED_FUNCTION_39(v45);
    v44 = OUTLINED_FUNCTION_84_2(v85, v86, v87, v88, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v44 + 2) = v2 + 8;
  OUTLINED_FUNCTION_4(v44, &v44[16 * v2 + 112]);
  if (v2 + 9 > (v50 >> 1))
  {
    v89 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE3F220, &qword_1939731E0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_47_5(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51, v52);
  if (v2 + 10 > (v54 >> 1))
  {
    v93 = OUTLINED_FUNCTION_39(v54);
    v53 = OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE3F220, &qword_1939731E0);
  }

  *(v53 + 2) = v2 + 10;
  v55 = &v53[16 * v2 + 144];
  *(v55 + 4) = 8;
  v55[40] = 1;
  return v53;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x64657070696853;
  switch(*v0)
  {
    case 1:
      result = 0x7961576568546E4FLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_37_19();
      break;
    case 3:
      result = 0x65726576696C6544;
      break;
    case 4:
      result = 0x656C6C65636E6143;
      break;
    case 5:
      result = 0x6575737349;
      break;
    case 6:
      result = OUTLINED_FUNCTION_36_1();
      break;
    case 7:
      result = 0x705564656B636950;
      break;
    case 8:
      result = 0x69737365636F7250;
      break;
    default:
      return result;
  }

  return result;
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x64657070696853 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x7961576568546E4FLL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_37_19() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v9 = v1 == 0x65726576696C6544 && v0 == 0xE900000000000064;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_32_22();
          v10 = v3 && v0 == 0xE900000000000064;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_44_19();
            v11 = v3 && v0 == 0xE500000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else
            {
              v13 = v1 == OUTLINED_FUNCTION_36_1() && v0 == v12;
              if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v5 = 6;
              }

              else
              {
                v14 = v1 == 0x705564656B636950 && v0 == 0xE800000000000000;
                if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_19_29();
                  if (v3 && v0 == v15)
                  {

                    v5 = 8;
                  }

                  else
                  {
                    v17 = OUTLINED_FUNCTION_0_9();

                    v5 = 8;
                    if ((v17 & 1) == 0)
                    {
                      v5 = 0;
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

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_193616004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_193616690(v14, v11);
        sub_193616690(v15, v8);
        sub_1936166F4(&qword_1EAE3F238, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        v17 = sub_19393C550();
        sub_19361673C(v8, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        sub_19361673C(v11, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1936161E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_193616234()
{
  result = qword_1EAE3F1D0;
  if (!qword_1EAE3F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1D0);
  }

  return result;
}

unint64_t sub_193616288()
{
  result = qword_1EAE3F1D8;
  if (!qword_1EAE3F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1D8);
  }

  return result;
}

unint64_t sub_193616330()
{
  result = qword_1EAE3F1E0;
  if (!qword_1EAE3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1E0);
  }

  return result;
}

uint64_t sub_193616384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936163E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1936166F4(&qword_1EAE3F230, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1936164E4()
{
  result = qword_1EAE3F1F8;
  if (!qword_1EAE3F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1F8);
  }

  return result;
}

unint64_t sub_193616538()
{
  result = qword_1EAE3F200;
  if (!qword_1EAE3F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F200);
  }

  return result;
}

unint64_t sub_19361658C()
{
  result = qword_1EAE3F208;
  if (!qword_1EAE3F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F208);
  }

  return result;
}

unint64_t sub_1936165E4()
{
  result = qword_1EAE3F210;
  if (!qword_1EAE3F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F210);
  }

  return result;
}

unint64_t sub_19361663C()
{
  result = qword_1EAE3F218;
  if (!qword_1EAE3F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F218);
  }

  return result;
}

uint64_t sub_193616690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936166F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19361673C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 384, v2, v3);
}

void sub_1936167C8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v6, xmmword_1939526C0);
  *v1 = 1;
  *v0 = "orderNumber";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "orderDate");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v14 = "merchant";
  *(v14 + 1) = 8;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v10)(v15);
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v16);
  v18 = OUTLINED_FUNCTION_5_4(v17, "shippingFulfillments");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  *v19 = "customer";
  v19[1] = 8;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  *v22 = "payment";
  v22[1] = 7;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_5_4(v25, "isTrackedInWallet");
  (v10)(v27);
  OUTLINED_FUNCTION_44(7 * v5);
  OUTLINED_FUNCTION_121_1(v28);
  v30 = OUTLINED_FUNCTION_5_4(v29, "orderUpdateDate");
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "trackedOrderIdentifier");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  *v34 = "orderStatus";
  v34[1] = 11;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v38 = 11;
  *v37 = "earliestEmailDateSent";
  v37[1] = 21;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v10)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v41 = 12;
  *v40 = "orderStatusUpdateDate";
  *(v40 + 8) = 21;
  *(v40 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193616AE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 28);
        goto LABEL_19;
      case 2:
        v12 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 32);
        goto LABEL_19;
      case 3:
        v8 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 36);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_14;
      case 4:
        v9 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 40);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        v10 = OUTLINED_FUNCTION_42_4();
        sub_193498238(v10);
        continue;
      case 5:
        v6 = v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 44);
        goto LABEL_14;
      case 6:
        v13 = v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 48);
LABEL_14:
        sub_193498018();
        continue;
      case 7:
        v14 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 52);
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        continue;
      case 8:
        v11 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 56);
        goto LABEL_17;
      case 9:
        v16 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 60);
LABEL_19:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 10:
        v7 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 64);
        OUTLINED_FUNCTION_54_14();
        sub_1934982A8();
        continue;
      case 11:
        v15 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 68);
        goto LABEL_17;
      case 12:
        v5 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 72);
LABEL_17:
        OUTLINED_FUNCTION_28_18();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193616CC4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v4 = (v0 + v3[7]);
  if (v4[1])
  {
    v5 = *v4;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    v6 = (v0 + v3[8]);
    if (!v6[1] || (v7 = *v6, OUTLINED_FUNCTION_2_7(), !v1))
    {
      v8 = OUTLINED_FUNCTION_79();
      sub_193616F54(v8, v9, v10, v11, v12, v13, v14, v15, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10]);
      if (!v1)
      {
        if (*(*(v0 + v3[10]) + 16))
        {
          type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
          OUTLINED_FUNCTION_78_1();
          sub_193451CFC(v16, v17, v18, v19, v20, v21);
        }

        memcpy(__dst, (v0 + v3[11]), 0x108uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
        {
          memcpy(v36, __dst, sizeof(v36));
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }

        v22 = v0 + v3[12];
        v23 = *(v22 + 32);
        if (v23)
        {
          v24 = *(v22 + 16);
          __dst[0] = *v22;
          __dst[1] = v24;
          *&__dst[2] = v23;
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }

        if (*(v0 + v3[13]) != 2)
        {
          sub_19393C2E0();
        }

        OUTLINED_FUNCTION_79();
        sub_1936170AC();
        v25 = (v0 + v3[15]);
        if (v25[1])
        {
          v26 = *v25;
          OUTLINED_FUNCTION_2_7();
        }

        v27 = v0 + v3[16];
        if ((*(v27 + 9) & 1) == 0)
        {
          v28 = *(v27 + 8);
          *&__dst[0] = *v27;
          BYTE8(__dst[0]) = v28 & 1;
          OUTLINED_FUNCTION_78_1();
          sub_193447324(v29, v30, v31, v32, v33, v34);
        }

        OUTLINED_FUNCTION_79();
        sub_193617BE4();
        OUTLINED_FUNCTION_79();
        sub_193617D2C();
      }
    }
  }
}

void sub_193616F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v36 = OUTLINED_FUNCTION_15_9();
  v37 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v36);
  sub_1934486F8(v25 + *(v37 + 36), v31, &qword_1EAE3F1A0, &qword_193973038);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_19344E6DC(v31, &qword_1EAE3F1A0, &qword_193973038);
  }

  else
  {
    sub_193616384(v31, v20);
    sub_193447600();
    sub_193613CA0(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936170AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_9();
  v9 = sub_19393BE00();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_80_15(*(v16 + 56));
  v17 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v17, v18, v9) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_243();
    v20(v19);
    OUTLINED_FUNCTION_231(v15, 8);
    v21 = OUTLINED_FUNCTION_78();
    v22(v21);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19361725C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "Open";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  *v14 = "Processing";
  v14[1] = 10;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v17 = "Cancelled";
  *(v17 + 1) = 9;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 4;
  *v19 = "Issue";
  *(v19 + 8) = 5;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193617470()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB510);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v49 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v49, xmmword_193952670);
  *v1 = 1;
  *v0 = "status";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_29_1();
  *v10 = "trackingNumber";
  v10[1] = 14;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v11);
  v12 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v12 = "carrierName";
  *(v12 + 1) = 11;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  (v9)(v13);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  OUTLINED_FUNCTION_34_8(v14);
  *v15 = "shippingMethod";
  v15[1] = 14;
  v16 = OUTLINED_FUNCTION_1_3(v15);
  (v9)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v18 = 5;
  *v17 = "shippingDate";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v9)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v21 = 6;
  *v20 = "shippingTime";
  v20[1] = 12;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v9)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v24 = 7;
  *v23 = "estimatedDeliveryStartDate";
  v23[1] = 26;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v9)(v25);
  OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  OUTLINED_FUNCTION_121_1(v26);
  *v27 = "estimatedDeliveryStartTime";
  v27[1] = 26;
  v28 = OUTLINED_FUNCTION_1_3(v27);
  (v9)(v28);
  v29 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v30 = 9;
  *v29 = "estimatedDeliveryEndDate";
  v29[1] = 24;
  v31 = OUTLINED_FUNCTION_1_3(v29);
  (v9)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v1 + 9 * v5);
  *v33 = 10;
  *v32 = "estimatedDeliveryEndTime";
  v32[1] = 24;
  v34 = OUTLINED_FUNCTION_1_3(v32);
  (v9)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v36 = 11;
  *v35 = "deliveryDate";
  v35[1] = 12;
  v37 = OUTLINED_FUNCTION_1_3(v35);
  (v9)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v39 = 12;
  *v38 = "deliveryTime";
  v38[1] = 12;
  v40 = OUTLINED_FUNCTION_1_3(v38);
  (v9)(v40);
  v41 = OUTLINED_FUNCTION_3_1(v1 + 12 * v5);
  *v42 = 13;
  *v41 = "shippingRecipient";
  v41[1] = 17;
  v43 = OUTLINED_FUNCTION_1_3(v41);
  (v9)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 13 * v5);
  *v45 = 14;
  *v44 = "fulfillmentCreationDate";
  v44[1] = 23;
  v46 = OUTLINED_FUNCTION_1_3(v44);
  (v9)(v46);
  v47 = OUTLINED_FUNCTION_3_1(v1 + 14 * v5);
  *v48 = 15;
  *v47 = "fulfillmentUpdateDate";
  *(v47 + 8) = 21;
  *(v47 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193617838()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 13:
        OUTLINED_FUNCTION_54_14();
        sub_193498018();
        break;
      case 14:
        v4 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) + 68);
        goto LABEL_9;
      case 15:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) + 72);
LABEL_9:
        OUTLINED_FUNCTION_28_18();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193617980()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  if ((*(v0 + 9) & 1) == 0)
  {
    v3 = *(v0 + 8);
    __dst[0] = *v0;
    LOBYTE(__dst[1]) = v3 & 1;
    OUTLINED_FUNCTION_78_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
    v2 = v1;
  }

  if (!v2)
  {
    if (!*(v0 + 24) || (v10 = *(v0 + 16), OUTLINED_FUNCTION_2_7(), !v1))
    {
      if (!*(v0 + 40) || (v11 = *(v0 + 32), OUTLINED_FUNCTION_2_7(), !v1))
      {
        if (!*(v0 + 56) || (v12 = *(v0 + 48), OUTLINED_FUNCTION_2_7(), !v1))
        {
          if (!*(v0 + 72) || (v13 = *(v0 + 64), OUTLINED_FUNCTION_2_7(), !v1))
          {
            if (!*(v0 + 88) || (v14 = *(v0 + 80), OUTLINED_FUNCTION_2_7(), !v1))
            {
              if (!*(v0 + 104) || (v15 = *(v0 + 96), OUTLINED_FUNCTION_2_7(), !v1))
              {
                if (!*(v0 + 120) || (v16 = *(v0 + 112), OUTLINED_FUNCTION_2_7(), !v1))
                {
                  if (!*(v0 + 136) || (v17 = *(v0 + 128), OUTLINED_FUNCTION_2_7(), !v1))
                  {
                    if (!*(v0 + 152) || (v18 = *(v0 + 144), OUTLINED_FUNCTION_2_7(), !v1))
                    {
                      if (!*(v0 + 168) || (v19 = *(v0 + 160), OUTLINED_FUNCTION_2_7(), !v1))
                      {
                        if (!*(v0 + 184) || (v20 = *(v0 + 176), OUTLINED_FUNCTION_2_7(), !v1))
                        {
                          memcpy(__dst, (v0 + 192), sizeof(__dst));
                          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v21, __dst, sizeof(v21)), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
                          {
                            OUTLINED_FUNCTION_79();
                            sub_193617BE4();
                            if (!v1)
                            {
                              OUTLINED_FUNCTION_79();
                              sub_193617D2C();
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

void sub_193617BE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_19(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_9();
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v1(0);
  OUTLINED_FUNCTION_79_14(*(v16 + 68));
  v17 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v17, v18, v12) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_50_16();
    v20(v19);
    OUTLINED_FUNCTION_40_19();
    v21 = OUTLINED_FUNCTION_77_13();
    v22(v21);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193617D2C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_19(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_9();
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v1(0);
  OUTLINED_FUNCTION_79_14(*(v16 + 72));
  v17 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v17, v18, v12) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_50_16();
    v20(v19);
    OUTLINED_FUNCTION_40_19();
    v21 = OUTLINED_FUNCTION_77_13();
    v22(v21);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193617ED8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB528);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v6, xmmword_193952660);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "Shipped";
  v11[1] = 7;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_5_4(v14, "OnTheWay");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  v18 = OUTLINED_FUNCTION_5_4(v17, "OutForDelivery");
  (v10)(v18);
  OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  OUTLINED_FUNCTION_34_8(v19);
  *v20 = "Delivered";
  v20[1] = 9;
  v21 = OUTLINED_FUNCTION_41(v20);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 5;
  *v22 = "Cancelled";
  v22[1] = 9;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  v25 = (v1 + 6 * v5);
  v26 = (v25 + dword_1EAEAB560);
  *v25 = 6;
  *v26 = "Issue";
  v26[1] = 5;
  v27 = OUTLINED_FUNCTION_41(v26);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 7;
  *v28 = "ReadyForPickup";
  v28[1] = 14;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v10)(v30);
  OUTLINED_FUNCTION_3_1(&v1[v5]);
  OUTLINED_FUNCTION_121_1(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "PickedUp");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 9;
  *v34 = "Processing";
  *(v34 + 8) = 10;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936181C4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB540);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("displayName");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "domainName");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "displayNameUpdateDate");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193618318()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0) + 24);
      OUTLINED_FUNCTION_28_18();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936183A4()
{
  OUTLINED_FUNCTION_75_3();
  if (v0[1])
  {
    v2 = *v0;
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v0[3])
    {
      v3 = v0[2];
      OUTLINED_FUNCTION_181();
    }

    sub_193618414();
  }
}

void sub_193618414()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_9();
  v9 = sub_19393BE00();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_80_15(*(v16 + 24));
  v17 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v17, v18, v9) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_243();
    v20(v19);
    OUTLINED_FUNCTION_231(v15, 3);
    v21 = OUTLINED_FUNCTION_78();
    v22(v21);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193618658(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19393C420();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v7 = *(*v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1939526E0;
  v9 = a2 + v8;
  v10 = a2 + v8 + v6[14];
  *(a2 + v8) = 1;
  *v10 = "fullName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 104);
  v14(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_61_14(&v9[v7]);
  *v16 = 2;
  *v15 = "phoneNumber";
  v15[1] = 11;
  v17 = OUTLINED_FUNCTION_28_17(v15);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_61_14(&v9[2 * v7]);
  *v19 = 3;
  *v18 = "emailAddress";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_28_17(v18);
  (v14)(v20);
  v21 = v6[14];
  v22 = &v9[3 * v7];
  *v22 = 4;
  v23 = &v22[v21];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = OUTLINED_FUNCTION_28_17(&v22[v21]);
  (v14)(v24);
  v25 = OUTLINED_FUNCTION_61_14(&v9[4 * v7]);
  *v26 = 5;
  *v25 = "givenName";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_28_17(v25);
  (v14)(v27);
  v28 = OUTLINED_FUNCTION_61_14(&v9[5 * v7]);
  *v29 = 6;
  *v28 = "familyName";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  (v14)();
  return sub_19393C410();
}

void sub_1936188D4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193618990()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[5];
  v11 = v0[29];
  v14 = v0[30];
  v9 = v0[31];
  v10 = v0[32];
  if (v3)
  {
    v8 = *v0;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v6 || (OUTLINED_FUNCTION_2_7(), !v1))
    {
      if (!v7 || (OUTLINED_FUNCTION_2_7(), !v1))
      {
        memcpy(__dst, v0 + 6, 0xB8uLL);
        if (sub_1934754E0(__dst) == 1 || (memcpy(v12, __dst, sizeof(v12)), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
        {
          if (!v14 || (OUTLINED_FUNCTION_2_7(), !v1))
          {
            if (v10)
            {
              OUTLINED_FUNCTION_2_7();
            }
          }
        }
      }
    }
  }
}

void sub_193618B18()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB588);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v6, xmmword_1939526C0);
  *v1 = 1;
  *v0 = "street";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "city";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v14 = "state";
  *(v14 + 1) = 5;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v5);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "postalCode");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  *v19 = "country";
  v19[1] = 7;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 7;
  *v22 = "addressLines";
  v22[1] = 12;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  OUTLINED_FUNCTION_121_1(v25);
  v27 = OUTLINED_FUNCTION_5_4(v26, "locality");
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 9;
  *v28 = "subLocality";
  v28[1] = 11;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v32 = 10;
  v33 = OUTLINED_FUNCTION_5_4(v31, "administrativeArea");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 11;
  v36 = OUTLINED_FUNCTION_5_4(v34, "subAdministrativeArea");
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v38 = 12;
  *v37 = "countryCode";
  v37[1] = 11;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v10)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v41 = 13;
  *v40 = "rawAddress";
  *(v40 + 8) = 10;
  *(v40 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193618E30()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }
}

void sub_193618F50()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB5A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("totalAmount");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "totalIsoCurrencyCode");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "transactions");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936190A4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498238(v3);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_193619134()
{
  OUTLINED_FUNCTION_75_3();
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  if (v3[1])
  {
    v7 = *v3;
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }

    if (*(v5 + 16))
    {
      sub_193451CFC(v5, 3, v2, &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction, v0, &off_1F07D8770);
    }
  }
}

void sub_193619230()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB5B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "amount";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "isoCurrencyCode";
  v11[1] = 15;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v13 = "paymentMethod";
  *(v13 + 1) = 13;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v10)(v14);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  OUTLINED_FUNCTION_34_8(v15);
  *v16 = "transactionIdenifier";
  *(v16 + 8) = 20;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936193E0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_19361948C()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[10];
  v10 = v0[9];
  if (v0[1])
  {
    v7 = *v0;
    OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v5 != 1)
    {
      v8 = *(v0 + 3);
      v9 = *(v0 + 64);
      sub_193447600();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_1936195D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB5D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("displayName");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "lastFourDigits");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "isApplePay");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void OUTLINED_FUNCTION_41_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 104) = a3;
  *(v6 - 96) = a6;
  *(v6 - 72) = a4;
  *(v6 - 88) = a2;
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193619AC8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3F1A0, &qword_193973038, *(v1 + 36));
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3F1A0, &qword_193973038, *(v1 + 36));
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 40));
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.customer.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x108uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3F1A8, &qword_1939732B0);
}

void *WalletPaymentsCommerceTrackedOrder.customer.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  return memcpy((v1 + v3), v0, 0x108uLL);
}

uint64_t WalletPaymentsCommerceTrackedOrder.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.payment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;

  return sub_1936161E4(v4, v5, v6, v7, v8);
}

__n128 WalletPaymentsCommerceTrackedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 48));
  sub_193613BF4(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.payment.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.isTrackedInWallet.setter(char a1)
{
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.isTrackedInWallet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 56));
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 56));
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 60));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v6 = v1 + *(result + 64);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.earliestEmailDateSent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatusUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19361A250@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTrackedOrder.OrderStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19361A278@<X0>(uint64_t *a1@<X8>)
{
  result = static WalletPaymentsCommerceTrackedOrder.OrderStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19361A2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19361A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.carrierName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingMethod.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingDate.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingTime.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartDate.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartTime.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndDate.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndTime.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryDate.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryTime.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x108uLL);
  memcpy(a1, (v1 + 192), 0x108uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2D0, &unk_1939732B8);
}

void *WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  memcpy(v4, (v1 + 192), 0x108uLL);
  sub_19344E6DC(v4, &qword_1EAE3F2D0, &unk_1939732B8);
  return memcpy((v1 + 192), a1, 0x108uLL);
}

uint64_t sub_19361AB84()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 68));
}

uint64_t sub_19361AC00()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 68));
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.fulfillmentCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19361AC98()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 72));
}

uint64_t sub_19361ACF4()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 72));
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.fulfillmentUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  sub_193463B08(v28);
  memcpy((a1 + 192), v28, 0x108uLL);
  v2 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  v3 = *(v2 + 68);
  sub_19393BE00();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = *(v2 + 72);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *a1 = 0;
  *(a1 + 8) = 256;
  bzero((a1 + 16), 0xB0uLL);
  memcpy(__dst, (a1 + 192), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2D0, &unk_1939732B8);
  memcpy((a1 + 192), v28, 0x108uLL);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v13, v14, v15);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v20, v21, v22);
  OUTLINED_FUNCTION_26_1();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_19361AEA4@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19361AECC@<X0>(char **a1@<X8>)
{
  result = static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.allCases.getter();
  *a1 = result;
  return result;
}

void static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v104[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v104[-v31];
  v33 = *(v1 + 9);
  if (*(v3 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_134;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_134;
    }

    v34 = *(v3 + 8);
    v35 = *v1;
    v36 = *(v1 + 8);
    v118[0] = *v3;
    LOBYTE(v118[1]) = v34 & 1;
    v116[0] = v35;
    LOBYTE(v116[1]) = v36 & 1;
    v111 = v3;
    v37 = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter(v30);
    v110 = v32;
    v40 = v37 == WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter(v37);
    v32 = v110;
    v3 = v111;
    if (!v40)
    {
      goto LABEL_134;
    }
  }

  v38 = *(v3 + 24);
  v39 = v1[3];
  if (!v38)
  {
    if (v39)
    {
      goto LABEL_134;
    }

LABEL_16:
    v41 = *(v3 + 40);
    v42 = v1[5];
    if (v41)
    {
      if (!v42)
      {
        goto LABEL_134;
      }

      v43 = *(v3 + 32) == v1[4] && v41 == v42;
      if (!v43 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v42)
    {
      goto LABEL_134;
    }

    v44 = *(v3 + 56);
    v45 = v1[7];
    if (v44)
    {
      if (!v45)
      {
        goto LABEL_134;
      }

      v46 = *(v3 + 48) == v1[6] && v44 == v45;
      if (!v46 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v45)
    {
      goto LABEL_134;
    }

    v47 = *(v3 + 72);
    v48 = v1[9];
    if (v47)
    {
      if (!v48)
      {
        goto LABEL_134;
      }

      v49 = *(v3 + 64) == v1[8] && v47 == v48;
      if (!v49 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v48)
    {
      goto LABEL_134;
    }

    v50 = *(v3 + 88);
    v51 = v1[11];
    if (v50)
    {
      if (!v51)
      {
        goto LABEL_134;
      }

      v52 = *(v3 + 80) == v1[10] && v50 == v51;
      if (!v52 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v51)
    {
      goto LABEL_134;
    }

    v53 = *(v3 + 104);
    v54 = v1[13];
    if (v53)
    {
      if (!v54)
      {
        goto LABEL_134;
      }

      v55 = *(v3 + 96) == v1[12] && v53 == v54;
      if (!v55 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v54)
    {
      goto LABEL_134;
    }

    v56 = *(v3 + 120);
    v57 = v1[15];
    if (v56)
    {
      if (!v57)
      {
        goto LABEL_134;
      }

      v58 = *(v3 + 112) == v1[14] && v56 == v57;
      if (!v58 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v57)
    {
      goto LABEL_134;
    }

    v59 = *(v3 + 136);
    v60 = v1[17];
    if (v59)
    {
      if (!v60)
      {
        goto LABEL_134;
      }

      v61 = *(v3 + 128) == v1[16] && v59 == v60;
      if (!v61 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v60)
    {
      goto LABEL_134;
    }

    v62 = *(v3 + 152);
    v63 = v1[19];
    if (v62)
    {
      if (!v63)
      {
        goto LABEL_134;
      }

      v64 = *(v3 + 144) == v1[18] && v62 == v63;
      if (!v64 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v63)
    {
      goto LABEL_134;
    }

    v65 = *(v3 + 168);
    v66 = v1[21];
    if (v65)
    {
      if (!v66)
      {
        goto LABEL_134;
      }

      v67 = *(v3 + 160) == v1[20] && v65 == v66;
      if (!v67 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v66)
    {
      goto LABEL_134;
    }

    v109 = v28;
    v110 = v22;
    v106 = v12;
    v107 = v19;
    v108 = v7;
    v111 = v4;
    v68 = v3;
    v69 = *(v3 + 184);
    v70 = v1;
    v71 = v1[23];
    if (v69)
    {
      if (!v71)
      {
        goto LABEL_134;
      }

      v72 = *(v3 + 176) == v1[22] && v69 == v71;
      if (!v72 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v71)
    {
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_56_14(v119);
    memcpy(v120, v1 + 24, sizeof(v120));
    OUTLINED_FUNCTION_56_14(v118);
    memcpy(&v118[33], v1 + 24, 0x108uLL);
    OUTLINED_FUNCTION_56_14(v121);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v121) == 1)
    {
      memcpy(v116, &v118[33], 0x108uLL);
      if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v116) == 1)
      {
        OUTLINED_FUNCTION_55_14(v117);
        sub_193448804(v119, v115, &qword_1EAE3F2D0, &unk_1939732B8);
        sub_193448804(v120, v115, &qword_1EAE3F2D0, &unk_1939732B8);
        sub_19344E6DC(v117, &qword_1EAE3F2D0, &unk_1939732B8);
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_27_7(v119, v117);
      OUTLINED_FUNCTION_27_7(v120, v117);
    }

    else
    {
      OUTLINED_FUNCTION_55_14(v117);
      memcpy(v116, &v118[33], 0x108uLL);
      if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v116) != 1)
      {
        OUTLINED_FUNCTION_47_20(v119);
        OUTLINED_FUNCTION_47_20(v120);
        OUTLINED_FUNCTION_47_20(v117);
        v76 = static WalletPaymentsCommerceTrackedOrder.ShippingRecipient.== infix(_:_:)(v118, &v118[33]);
        memcpy(v113, &v118[33], sizeof(v113));
        sub_19361B978(v113);
        OUTLINED_FUNCTION_55_14(v114);
        sub_19361B978(v114);
        OUTLINED_FUNCTION_55_14(v115);
        sub_19344E6DC(v115, &qword_1EAE3F2D0, &unk_1939732B8);
        if ((v76 & 1) == 0)
        {
          goto LABEL_134;
        }

LABEL_114:
        v77 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        v78 = *(v77 + 68);
        v79 = *(v110 + 12);
        sub_193448804(v3 + v78, v32, &qword_1EAE3A9E8, &qword_19394F800);
        sub_193448804(v70 + v78, &v32[v79], &qword_1EAE3A9E8, &qword_19394F800);
        v80 = v32;
        OUTLINED_FUNCTION_13_23(v32);
        if (v40)
        {
          OUTLINED_FUNCTION_13_23(&v32[v79]);
          if (v40)
          {
            sub_19344E6DC(v32, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_124:
            v90 = *(v77 + 72);
            v91 = v109;
            v92 = *(v110 + 12);
            OUTLINED_FUNCTION_27_7(v68 + v90, v109);
            OUTLINED_FUNCTION_27_7(v70 + v90, v91 + v92);
            OUTLINED_FUNCTION_13_23(v91);
            if (v40)
            {
              OUTLINED_FUNCTION_13_23(v109 + v92);
              if (v40)
              {
                sub_19344E6DC(v109, &qword_1EAE3A9E8, &qword_19394F800);
                goto LABEL_134;
              }
            }

            else
            {
              v93 = v109;
              sub_193448804(v109, v107, &qword_1EAE3A9E8, &qword_19394F800);
              OUTLINED_FUNCTION_13_23(v93 + v92);
              if (!v94)
              {
                v95 = v108;
                v96 = v109;
                v97 = v109 + v92;
                v98 = v106;
                v99 = v111;
                (*(v108 + 32))(v106, v97, v111);
                OUTLINED_FUNCTION_0_54();
                sub_19361C84C(v100, v101);
                v102 = v107;
                sub_19393C550();
                v103 = *(v95 + 8);
                v103(v98, v99);
                v103(v102, v99);
                sub_19344E6DC(v96, &qword_1EAE3A9E8, &qword_19394F800);
                goto LABEL_134;
              }

              (*(v108 + 8))(v107, v111);
            }

            v73 = &qword_1EAE3B968;
            v74 = &qword_193972430;
            v75 = v109;
LABEL_133:
            sub_19344E6DC(v75, v73, v74);
            goto LABEL_134;
          }
        }

        else
        {
          sub_193448804(v32, v112, &qword_1EAE3A9E8, &qword_19394F800);
          OUTLINED_FUNCTION_13_23(&v32[v79]);
          if (!v81)
          {
            v82 = v108;
            v83 = &v32[v79];
            v84 = v106;
            v85 = v111;
            (*(v108 + 32))(v106, v83, v111);
            OUTLINED_FUNCTION_0_54();
            sub_19361C84C(v86, v87);
            v88 = v112;
            v105 = sub_19393C550();
            v89 = *(v82 + 8);
            v89(v84, v85);
            v89(v88, v85);
            sub_19344E6DC(v80, &qword_1EAE3A9E8, &qword_19394F800);
            if ((v105 & 1) == 0)
            {
              goto LABEL_134;
            }

            goto LABEL_124;
          }

          (*(v108 + 8))(v112, v111);
        }

        v73 = &qword_1EAE3B968;
        v74 = &qword_193972430;
        v75 = v32;
        goto LABEL_133;
      }

      OUTLINED_FUNCTION_55_14(v115);
      OUTLINED_FUNCTION_27_7(v119, v114);
      OUTLINED_FUNCTION_27_7(v120, v114);
      OUTLINED_FUNCTION_27_7(v117, v114);
      sub_19361B978(v115);
    }

    memcpy(v116, v118, sizeof(v116));
    v73 = &unk_1EAE3F2D8;
    v74 = &unk_1939732C8;
    v75 = v116;
    goto LABEL_133;
  }

  if (v39)
  {
    v40 = *(v3 + 16) == v1[2] && v38 == v39;
    if (v40 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_134:
  OUTLINED_FUNCTION_116();
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v3);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44[-v19 - 8];
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v21 = *(v0 + 8);
    v22 = *v0;
    v23 = OUTLINED_FUNCTION_94();
    v47 = v22;
    v48 = v21 & 1;
    v24 = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter(v23);
    MEMORY[0x193B18030](v24);
  }

  if (v0[3])
  {
    v25 = v0[2];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[5])
  {
    v26 = v0[4];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[7])
  {
    v27 = v0[6];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[9])
  {
    v28 = v0[8];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[11])
  {
    v29 = v0[10];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[13])
  {
    v30 = v0[12];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[15])
  {
    v31 = v0[14];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[17])
  {
    v32 = v0[16];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[19])
  {
    v33 = v0[18];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[21])
  {
    v34 = v0[20];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[23])
  {
    v35 = v0[22];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_56_14(v46);
  OUTLINED_FUNCTION_56_14(&v47);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(&v47) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    memcpy(v44, v46, sizeof(v44));
    sub_193613D58(v44, v45);
    WalletPaymentsCommerceTrackedOrder.ShippingRecipient.hash(into:)(v2);
    memcpy(v45, v46, sizeof(v45));
    sub_19361B978(v45);
  }

  v36 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  sub_193448804(v0 + *(v36 + 68), v20, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v20, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v37 = v43;
    (*(v43 + 32))(v10, v20, v3);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_54();
    sub_19361C84C(v38, v39);
    OUTLINED_FUNCTION_66_18();
    (*(v37 + 8))(v10, v3);
  }

  sub_193448804(v0 + *(v36 + 72), v17, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v40 = v43;
    (*(v43 + 32))(v10, v17, v3);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_54();
    sub_19361C84C(v41, v42);
    OUTLINED_FUNCTION_66_18();
    (*(v40 + 8))(v10, v3);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v1) + 24);
  sub_19393BE00();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void static WalletPaymentsCommerceTrackedOrder.Merchant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v25 = v3[1];
  v26 = v1[1];
  if (!v25)
  {
    if (v26)
    {
      goto LABEL_28;
    }

LABEL_10:
    v28 = v3[3];
    v29 = v1[3];
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_28;
      }

      v30 = v3[2] == v1[2] && v28 == v29;
      if (!v30 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v29)
    {
      goto LABEL_28;
    }

    v40 = v7;
    v31 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0) + 24);
    v32 = *(v19 + 48);
    sub_193448804(v3 + v31, v24, &qword_1EAE3A9E8, &qword_19394F800);
    sub_193448804(v1 + v31, &v24[v32], &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_31(v24);
    if (v27)
    {
      OUTLINED_FUNCTION_31(&v24[v32]);
      if (v27)
      {
        sub_19344E6DC(v24, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_28;
      }
    }

    else
    {
      sub_193448804(v24, v18, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_31(&v24[v32]);
      if (!v33)
      {
        v34 = v40;
        (*(v40 + 32))(v12, &v24[v32], v4);
        OUTLINED_FUNCTION_0_54();
        sub_19361C84C(v35, v36);
        sub_19393C550();
        v37 = *(v34 + 8);
        v38 = OUTLINED_FUNCTION_13_0();
        v37(v38);
        (v37)(v18, v4);
        sub_19344E6DC(v24, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_28;
      }

      (*(v40 + 8))(v18, v4);
    }

    sub_19344E6DC(v24, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_28;
  }

  if (v26)
  {
    v27 = *v3 == *v1 && v25 == v26;
    if (v27 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.hash(into:)()
{
  v1 = sub_19393BE00();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  if (v0[1])
  {
    v16 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v0[3])
  {
    v17 = v0[2];
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
  }

  else
  {
    sub_19393CAD0();
  }

  v18 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  sub_193448804(v0 + *(v18 + 24), v15, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v9, v15, v1);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_54();
  sub_19361C84C(v20, v21);
  sub_19393C540();
  return (*(v4 + 8))(v9, v1);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.fullName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.emailAddress.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *WalletPaymentsCommerceTrackedOrder.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2E0, &qword_1939732D0);
  return memcpy((v1 + 48), a1, 0xB8uLL);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.givenName.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.familyName.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 256);

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t sub_19361C84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV7addressAC7AddressVSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0xB8uLL);
  memcpy(a1, (v1 + 48), 0xB8uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2E0, &qword_1939732D0);
}

double _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientVAEycfC_0@<D0>(_OWORD *a1@<X8>)
{
  sub_19360E4F0(v3);
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2E0, &qword_1939732D0);
  memcpy(a1 + 3, v3, 0xB8uLL);
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

void _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v34 = v2[4];
  v35 = v2[2];
  v37 = v2[5];
  OUTLINED_FUNCTION_43_4(v45);
  v7 = v3[29];
  v30 = v3[31];
  v31 = v3[32];
  v32 = v3[30];
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v33 = v1[4];
  v36 = v1[5];
  OUTLINED_FUNCTION_59_15(v46);
  v13 = v1[29];
  v12 = v1[30];
  v15 = v1[31];
  v14 = v1[32];
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_35;
    }

    if (v4 != v9 || v5 != v8)
    {
      v28 = v7;
      v29 = v1[32];
      v17 = v1[31];
      v18 = v1[29];
      v19 = v1[30];
      v20 = sub_19393CA30();
      v13 = v18;
      v7 = v28;
      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    if (v35 != v10 || v6 != v11)
    {
      v9 = v13;
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_35;
  }

  if (v37)
  {
    if (!v36)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_45_3();
    v24 = v34 == v33 && v22 == v23;
    if (!v24 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_3();
    if (v36)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_43_4(__src);
  OUTLINED_FUNCTION_59_15(&__src[184]);
  OUTLINED_FUNCTION_43_4(v44);
  if (sub_1934754E0(v44) != 1)
  {
    OUTLINED_FUNCTION_43_4(v42);
    OUTLINED_FUNCTION_59_15(__dst);
    if (sub_1934754E0(__dst) != 1)
    {
      v25 = static WalletPaymentsCommerceTrackedOrder.Address.== infix(_:_:)(v3 + 6, v1 + 6);
      OUTLINED_FUNCTION_59_15(v38);
      OUTLINED_FUNCTION_27_7(v45, v40);
      OUTLINED_FUNCTION_27_7(v46, v40);
      OUTLINED_FUNCTION_27_7(v42, v40);
      sub_19361C894(v38);
      OUTLINED_FUNCTION_43_4(v39);
      sub_19361C894(v39);
      OUTLINED_FUNCTION_43_4(v40);
      sub_19344E6DC(v40, &qword_1EAE3F2E0, &qword_1939732D0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_43_4(v40);
    OUTLINED_FUNCTION_79_1(v45, v39);
    OUTLINED_FUNCTION_79_1(v46, v39);
    OUTLINED_FUNCTION_79_1(v42, v39);
    sub_19361C894(v40);
LABEL_34:
    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3F2E8, &qword_1939732D8);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_15(__dst);
  if (sub_1934754E0(__dst) != 1)
  {
    OUTLINED_FUNCTION_79_1(v45, v42);
    OUTLINED_FUNCTION_79_1(v46, v42);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_43_4(v42);
  OUTLINED_FUNCTION_79_1(v45, v40);
  OUTLINED_FUNCTION_79_1(v46, v40);
  sub_19344E6DC(v42, &qword_1EAE3F2E0, &qword_1939732D0);
LABEL_37:
  if (v32)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v26 = v6 == v11 && v32 == v10;
    if (!v26 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v31 && v9 && (v30 != v7 || v31 != v9))
  {
    sub_19393CA30();
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v7 = v0[30];
  v10 = v0[29];
  v8 = v0[32];
  v11 = v0[31];
  if (v0[1])
  {
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v6)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  memcpy(__dst, v0 + 6, 0xB8uLL);
  if (sub_1934754E0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103_0();
  memcpy(v12, v0 + 6, sizeof(v12));
  sub_193613E10(v12, v13);
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v2);
  memcpy(v13, v0 + 6, sizeof(v13));
  sub_19361C894(v13);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
LABEL_15:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19361CF98(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19361CFF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.state.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.state.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.postalCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.country.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.addressLines.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.locality.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subLocality.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.administrativeArea.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subAdministrativeArea.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.countryCode.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.rawAddress.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.rawAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Address *__return_ptr retstr)
{
  retstr->postalCode = 0u;
  retstr->country = 0u;
  retstr->city = 0u;
  retstr->state = 0u;
  retstr->street = 0u;
  retstr->addressLines._rawValue = MEMORY[0x1E69E7CC0];
  retstr->locality = 0u;
  retstr->subLocality = 0u;
  retstr->administrativeArea = 0u;
  retstr->subAdministrativeArea = 0u;
  retstr->countryCode = 0u;
  retstr->rawAddress = 0u;
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Address.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v110 = a1[2];
  v4 = a1[3];
  v106 = a1[4];
  v113 = a1[5];
  v102 = a1[6];
  v108 = a1[7];
  v100 = a1[8];
  v5 = a1[9];
  v6 = a1[10];
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[14];
  v12 = a1[15];
  v11 = a1[16];
  v13 = a1[17];
  v14 = a1[18];
  v95 = a1[19];
  v97 = a1[20];
  v15 = a1[21];
  v16 = a1[22];
  v17 = a2[1];
  v109 = a2[2];
  v18 = a2[3];
  v105 = a2[4];
  v111 = a2[5];
  v115 = a2[6];
  v107 = a2[7];
  v99 = a2[8];
  v103 = a2[9];
  v101 = a2[10];
  v20 = a2[11];
  v19 = a2[12];
  v21 = a2[13];
  v22 = a2[14];
  v23 = a2[15];
  v24 = a2[16];
  v26 = a2[17];
  v25 = a2[18];
  v96 = a2[19];
  v27 = a2[21];
  v98 = a2[20];
  v28 = a2[22];
  if (v3)
  {
    if (!v17)
    {
      return 0;
    }

    v104 = a1[9];
    if (*a1 != *a2 || v3 != v17)
    {
      v84 = a1[11];
      v86 = a2[14];
      v74 = a2[17];
      v75 = a2[22];
      v76 = a2[21];
      v77 = a2[16];
      v30 = a1[22];
      v31 = a1[21];
      v32 = a1[17];
      v78 = a1[16];
      v79 = a2[13];
      v33 = a1[18];
      v88 = a1[14];
      v90 = a2[15];
      v81 = a1[13];
      v73 = a1[15];
      v34 = a2[18];
      v35 = a1[12];
      v36 = a2[12];
      v37 = sub_19393CA30();
      v19 = v36;
      v8 = v35;
      v7 = v84;
      v25 = v34;
      v12 = v73;
      v26 = v74;
      v21 = v79;
      v9 = v81;
      v22 = v86;
      v10 = v88;
      v23 = v90;
      v14 = v33;
      v13 = v32;
      v24 = v77;
      v11 = v78;
      v15 = v31;
      v16 = v30;
      v28 = v75;
      v27 = v76;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v104 = a1[9];
    if (v17)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    if (v110 != v109 || v4 != v18)
    {
      v39 = v15;
      v91 = v23;
      OUTLINED_FUNCTION_19_13();
      v27 = v40;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v6 = v41;
      v23 = v91;
      v15 = v39;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v113)
  {
    v43 = v104;
    v44 = v115;
    if (!v111)
    {
      return 0;
    }

    if (v106 != v105 || v113 != v111)
    {
      v46 = v15;
      v92 = v23;
      OUTLINED_FUNCTION_19_13();
      v27 = v47;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v6 = v48;
      v23 = v92;
      v15 = v46;
      v44 = v115;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v43 = v104;
    v44 = v115;
    if (v111)
    {
      return 0;
    }
  }

  if (v108)
  {
    if (!v107)
    {
      return 0;
    }

    if (v102 != v44 || v108 != v107)
    {
      v51 = v15;
      v93 = v23;
      OUTLINED_FUNCTION_19_13();
      v27 = v52;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v6 = v53;
      v23 = v93;
      v15 = v51;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v107)
  {
    return 0;
  }

  if (v43)
  {
    if (!v103)
    {
      return 0;
    }

    v83 = v20;
    v85 = v7;
    v55 = v19;
    v56 = v8;
    v80 = v21;
    v82 = v9;
    v87 = v22;
    v89 = v10;
    v94 = v23;
    v114 = v14;
    v116 = v25;
    v57 = v13;
    v112 = v15;
    v58 = v100 == v99 && v43 == v103;
    if (!v58 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v83 = v20;
    v85 = v7;
    v55 = v19;
    v56 = v8;
    v80 = v21;
    v82 = v9;
    v87 = v22;
    v89 = v10;
    v94 = v23;
    v114 = v14;
    v116 = v25;
    v57 = v13;
    v112 = v15;
    if (v103)
    {
      return 0;
    }
  }

  if (sub_19344FC94(v6, v101))
  {
    if (v56)
    {
      v59 = v114;
      v60 = v116;
      if (!v55)
      {
        return 0;
      }

      v61 = v57;
      if (v85 != v83 || v56 != v55)
      {
        OUTLINED_FUNCTION_48_19();
        OUTLINED_FUNCTION_41_3();
        if ((v63 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v61 = v57;
      v59 = v114;
      v60 = v116;
      if (v55)
      {
        return 0;
      }
    }

    if (v89)
    {
      v64 = v94;
      if (!v87)
      {
        return 0;
      }

      if (v82 != v80 || v89 != v87)
      {
        OUTLINED_FUNCTION_48_19();
        OUTLINED_FUNCTION_41_3();
        v64 = v94;
        if ((v66 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v64 = v94;
      if (v87)
      {
        return 0;
      }
    }

    if (v11)
    {
      if (!v24)
      {
        return 0;
      }

      if (v12 != v64 || v11 != v24)
      {
        OUTLINED_FUNCTION_48_19();
        OUTLINED_FUNCTION_41_3();
        if ((v68 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v24)
    {
      return 0;
    }

    if (v59)
    {
      if (!v60)
      {
        return 0;
      }

      v69 = v61 == v26 && v59 == v60;
      if (!v69 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v60)
    {
      return 0;
    }

    if (v97)
    {
      if (!v98)
      {
        return 0;
      }

      v70 = v95 == v96 && v97 == v98;
      if (!v70 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v98)
    {
      return 0;
    }

    if (v16)
    {
      if (v28)
      {
        v71 = v112 == v27 && v16 == v28;
        if (v71 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_19361DB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 88)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_193613E6C(__dst, v7);
      sub_193613E6C(v11, v7);
      v5 = static WalletPaymentsCommerceTrackedOrder.Transaction.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_19361FB78(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_19361FB78(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  v13 = v2[4];
  v14 = v2[6];
  v22 = v2[7];
  v23 = v2[9];
  v15 = v2[8];
  v16 = v2[11];
  v7 = v2[12];
  v8 = v2[14];
  v17 = v2[13];
  v18 = v2[15];
  v24 = v2[10];
  v25 = v2[16];
  v19 = v2[17];
  v9 = v2[18];
  v20 = v2[19];
  v26 = v2[20];
  v21 = v2[21];
  v10 = v2[22];
  if (v2[1])
  {
    v11 = *v2;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v6)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v22)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v23)
  {
    sub_19393C640();
  }

  sub_1934D11C8(a1, v24);
  if (v7)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v8)
    {
LABEL_14:
      sub_19393CAD0();
      sub_19393C640();
      if (v25)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  sub_19393CAD0();
  if (v25)
  {
LABEL_15:
    sub_19393CAD0();
    sub_19393C640();
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_19393CAD0();
  if (v9)
  {
LABEL_16:
    sub_19393CAD0();
    sub_19393C640();
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_19393CAD0();
    if (v10)
    {
      goto LABEL_18;
    }

    return sub_19393CAD0();
  }

LABEL_24:
  sub_19393CAD0();
  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_17:
  sub_19393CAD0();
  sub_19393C640();
  if (!v10)
  {
    return sub_19393CAD0();
  }

LABEL_18:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19361DF38()
{
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.totalIsoCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.transactions.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Payment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Payment *__return_ptr retstr)
{
  retstr->totalAmount = 0u;
  retstr->totalIsoCurrencyCode = 0u;
  retstr->transactions._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Payment.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v10)
    {
      v12 = v4 == v8 && v6 == v10;
      if (v12 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_17:
  v13 = OUTLINED_FUNCTION_13_0();

  return sub_19361DB3C(v13, v14);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  if (v1[1])
  {
    v6 = *v1;
    sub_19393CAD0();
    sub_19393C640();
    if (v5)
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
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:

  return sub_19361EF28(a1, v4);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19361EF28(v7, v5);
  return sub_19393CB00();
}

uint64_t sub_19361E300()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Payment.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.amount.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.isoCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.paymentMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 64);
  return sub_1934D1694(v2, v3);
}

__n128 WalletPaymentsCommerceTrackedOrder.Transaction.paymentMethod.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  sub_1934D16DC(*(v1 + 32), *(v1 + 40));
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v8;
  *(v1 + 64) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.transactionIdenifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.transactionIdenifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Transaction.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Transaction *__return_ptr retstr)
{
  retstr->amount = 0u;
  retstr->isoCurrencyCode = 0u;
  sub_1934D16DC(0, 1);
  retstr->paymentMethod.value.displayName = xmmword_1939526A0;
  retstr->paymentMethod.value.lastFourDigits.value._countAndFlagsBits = 0;
  retstr->paymentMethod.value.lastFourDigits.value._object = 0;
  retstr->paymentMethod.value.isApplePay.value = 0;
  *&retstr->paymentMethod.is_nil = 0;
  retstr->transactionIdenifier.value._countAndFlagsBits = 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Transaction::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName = 0u;
  retstr->lastFourDigits = 0u;
  retstr->isApplePay.value = 2;
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v4 != v8 || v5 != v9)
    {
      OUTLINED_FUNCTION_13_0();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)()
{
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

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hashValue.getter()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19361E894()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)();
  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Transaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v22 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v3)
  {
    if (!v13)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v66 = *(a1 + 80);
      v68 = *(a1 + 40);
      v63 = *(a1 + 72);
      v64 = *(a1 + 56);
      v61 = *(a1 + 48);
      v62 = *(a1 + 32);
      v71 = *(a1 + 64);
      v74 = *(a2 + 64);
      v24 = *(a2 + 56);
      v25 = *(a2 + 80);
      v26 = *(a2 + 72);
      v27 = *(a2 + 40);
      v28 = *(a2 + 48);
      v29 = *(a2 + 32);
      v30 = *(a1 + 16);
      v31 = sub_19393CA30();
      v4 = v30;
      v15 = v29;
      v18 = v28;
      v20 = v74;
      v17 = v27;
      v22 = v26;
      v21 = v25;
      v19 = v24;
      v10 = v71;
      v7 = v61;
      v6 = v62;
      v12 = v63;
      v9 = v64;
      v11 = v66;
      v8 = v68;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v16)
    {
      v72 = v10;
      v75 = v20;
      v33 = v19;
      v34 = v21;
      v67 = v18;
      v69 = v22;
      v35 = v17;
      v36 = v15;
      v37 = sub_19393CA30();
      v15 = v36;
      v18 = v67;
      v22 = v69;
      v20 = v75;
      v17 = v35;
      v21 = v34;
      v19 = v33;
      v10 = v72;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v8 != 1)
  {
    v78[0] = v6;
    v78[1] = v8;
    v78[2] = v7;
    v78[3] = v9;
    v79 = v10;
    if (v17 != 1)
    {
      v70 = v22;
      v73 = v21;
      v76[0] = v15;
      v76[1] = v17;
      v76[2] = v18;
      v76[3] = v19;
      v77 = v20;
      v52 = v17;
      v53 = v15;
      v65 = static WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.== infix(_:_:)(v78, v76);
      v54 = OUTLINED_FUNCTION_5_39();
      sub_1934D1694(v54, v55);
      sub_1934D1694(v53, v52);
      v56 = OUTLINED_FUNCTION_5_39();
      sub_1934D1694(v56, v57);

      v58 = OUTLINED_FUNCTION_5_39();
      sub_1934D16DC(v58, v59);
      if ((v65 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    v45 = 1;
    v46 = v15;
    sub_1934D1694(v6, v8);
    sub_1934D1694(v46, 1);
    v47 = OUTLINED_FUNCTION_5_39();
    sub_1934D1694(v47, v48);

LABEL_25:
    v49 = OUTLINED_FUNCTION_5_39();
    sub_1934D16DC(v49, v50);
    sub_1934D16DC(v46, v45);
    return 0;
  }

  v38 = v15;
  v70 = v22;
  v73 = v21;
  v39 = OUTLINED_FUNCTION_60_16();
  v41 = v40;
  sub_1934D1694(v39, v42);
  if (v41 != 1)
  {
    v46 = v38;
    v45 = v41;
    sub_1934D1694(v38, v41);
    goto LABEL_25;
  }

  sub_1934D1694(v38, 1);
  v43 = OUTLINED_FUNCTION_60_16();
  sub_1934D16DC(v43, v44);
LABEL_29:
  if (v11)
  {
    if (v73)
    {
      v60 = v12 == v70 && v11 == v73;
      if (v60 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v73)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  v8 = v0[10];
  v11 = v0[9];
  if (v0[1])
  {
    v9 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
LABEL_3:
      sub_19393CAD0();
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
  if (v5 == 1)
  {
    goto LABEL_15;
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
    if (v6)
    {
LABEL_9:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_12;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v6)
    {
      goto LABEL_9;
    }
  }

  sub_19393CAD0();
LABEL_12:
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

LABEL_15:
  sub_19393CAD0();
  if (!v8)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19361EE20()
{
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19361EE7C(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19361EEDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19361EF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v7 = v5[1];
      v9 = v5[2];
      v10 = v5[4];
      v11 = *(v5 + 40);
      v12 = v5[7];
      v18 = v5[6];
      v20 = v9;
      v19 = v7;
      if (*(v5 - 2))
      {
        v17 = *(v5 - 3);
        sub_19393CAD0();

        v13 = v7;
        v14 = v11;
        sub_1934D1694(v13, v9);
        v15 = v12;

        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();

        v16 = v7;
        v14 = v11;
        sub_1934D1694(v16, v9);
        v15 = v12;
      }

      sub_19393CAD0();
      if (v8)
      {
        sub_19393C640();
      }

      if (v20 == 1)
      {
        goto LABEL_16;
      }

      sub_19393CAD0();
      if (v20)
      {
        sub_19393CAD0();
        sub_19393C640();
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_19393CAD0();
        if (v10)
        {
LABEL_11:
          sub_19393CAD0();
          sub_19393C640();
          goto LABEL_14;
        }
      }

      sub_19393CAD0();
LABEL_14:
      if (v14 != 2)
      {
        sub_19393CAD0();
      }

LABEL_16:
      sub_19393CAD0();
      sub_19393CAD0();
      if (v15)
      {
        sub_19393C640();
      }

      sub_1934D16DC(v19, v20);

      v5 += 11;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19361F208()
{
  result = qword_1EAE3F310;
  if (!qword_1EAE3F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F310);
  }

  return result;
}

unint64_t sub_19361F2F0()
{
  result = qword_1EAE3F318;
  if (!qword_1EAE3F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F318);
  }

  return result;
}

unint64_t sub_19361F34C()
{
  result = qword_1EAE3F320;
  if (!qword_1EAE3F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F320);
  }

  return result;
}

unint64_t sub_19361F3A8()
{
  result = qword_1EAE3F328;
  if (!qword_1EAE3F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F328);
  }

  return result;
}

unint64_t sub_19361F400()
{
  result = qword_1EAE3F330;
  if (!qword_1EAE3F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F330);
  }

  return result;
}

uint64_t sub_19361F4C4()
{
  OUTLINED_FUNCTION_2_46();
  sub_19361F704(319, v0, v1, MEMORY[0x1E69E6720]);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    sub_19349D198();
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_19361F704(319, &qword_1ED5037A0, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant, MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v5;
    }

    sub_19361F704(319, &qword_1ED5034D8, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
    if (v10 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED5037A8);
    if (v11 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, qword_1ED5037B0);
    if (v12 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698);
    if (v13 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1EAE3F340);
    if (v14 > 0x3F)
    {
      return v5;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

void sub_19361F704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_19361F7A0()
{
  sub_19349D1FC(319, &qword_1ED503870);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED503878);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_46();
        sub_19361F704(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19361F8F4()
{
  sub_19349D1FC(319, &qword_1ED508290);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_46();
    sub_19361F704(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19361F9E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_19361FA28(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV11TransactionV13PaymentMethodVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19361FAAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19361FAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_55_14(void *a1)
{

  return memcpy(a1, (v1 + 1648), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_66_18()
{

  return sub_19393C540();
}

_BYTE *_s19AggregatedReportingOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s16AdAttributionKitOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19361FDBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510F98);
  v5 = __swift_project_value_buffer(v4, qword_1ED510F98);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.Conversion.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_28 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510F98);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F348, &qword_193973D50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD000000000000019, 0x8000000193A29D00, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.Conversion.attribute(_:)(void (*a1)(void))
{
  result = sub_1936201D8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193620214(void (*a1)(void))
{
  result = sub_1936201D8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19362027C(uint64_t a1)
{
  result = sub_1936202A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936202A4()
{
  result = qword_1ED506890;
  if (!qword_1ED506890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506890);
  }

  return result;
}

_BYTE *_s10ConversionOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936203C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510FF8);
  v5 = __swift_project_value_buffer(v4, qword_1ED510FF8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.Purchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:3888000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_29 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510FF8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F350, &qword_193973DD0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD000000000000019, 0x8000000193A29D00, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.Purchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936207E8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193620824(void (*a1)(void))
{
  result = sub_1936207E8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19362088C(uint64_t a1)
{
  result = sub_1936208B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936208B4()
{
  result = qword_1ED506880;
  if (!qword_1ED506880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506880);
  }

  return result;
}

_BYTE *_s8PurchaseOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitConversion.json()()
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
  v10 = type metadata accessor for AdAttributionKitConversion();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193620B80(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3F358, &qword_193973E48);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193620B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitConversion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitConversion.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3F358, &qword_193973E48);
  sub_19393C260();
  if (!v20)
  {
    sub_193620D14(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193620D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitConversion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitConversion.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v40 = v2;
  v41 = v1;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  if (*sub_1936240AC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v25 = *(v19 + 16);
    v26 = OUTLINED_FUNCTION_24_1();
    v27(v26);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v28, v29, v30);
    sub_19393C280();
    (*(v19 + 8))(v24, v16);
    if (!v0)
    {
      v32 = v40;
      sub_193620D14(v15, v40);
      v33 = type metadata accessor for AdAttributionKitConversion();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = v5;
    *(v31 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitConversion.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitConversion();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_24_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_193620B80(v0, v7);
  sub_1934470C8(v7, v1, v15);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3F358, &qword_193973E48);
  v17 = sub_19393C290();
  sub_19344E6DC(v15, &qword_1EAE3F358, &qword_193973E48);
  return v17;
}

id static AdAttributionKitConversion.columns.getter()
{
  v271 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  OUTLINED_FUNCTION_2_47(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v12 = OUTLINED_FUNCTION_24_1();
  result = OUTLINED_FUNCTION_5_40(v12, v13);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_37(result);
  v15 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_2_47(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v33);
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v34, v35, v36, v37, v38, 5, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_37(result);
  v39 = swift_initStackObject();
  v47 = OUTLINED_FUNCTION_1_50(v39, v40, v41, v42, v43, v44, v45, v46, xmmword_193950B10);
  OUTLINED_FUNCTION_2_47(v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v56 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v56);
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v57, v58, v59, v60, v61, 4, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_37(result);
  v62 = swift_initStackObject();
  v70 = OUTLINED_FUNCTION_1_50(v62, v63, v64, v65, v66, v67, v68, v69, v262);
  OUTLINED_FUNCTION_2_47(v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v79 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v79);
  v80 = OUTLINED_FUNCTION_20_26();
  result = OUTLINED_FUNCTION_5_40(v80, 0xEB0000000044496BLL);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8_37(result);
  v81 = swift_initStackObject();
  v89 = OUTLINED_FUNCTION_1_50(v81, v82, v83, v84, v85, v86, v87, v88, v263);
  OUTLINED_FUNCTION_2_47(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v98);
  OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v99, v100, v101, v102, v103, 4, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_37(result);
  v104 = swift_initStackObject();
  v112 = OUTLINED_FUNCTION_1_50(v104, v105, v106, v107, v108, v109, v110, v111, v264);
  OUTLINED_FUNCTION_2_47(v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v121 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v121);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_27_20();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v122, v123, v124, v125, v126, 5, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8_37(result);
  v127 = swift_initStackObject();
  v135 = OUTLINED_FUNCTION_1_50(v127, v128, v129, v130, v131, v132, v133, v134, v265);
  OUTLINED_FUNCTION_2_47(v135, v136, v137, v138, v139, v140, v141, v142, v143);
  v144 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v144);
  v145 = OUTLINED_FUNCTION_10_35();
  result = OUTLINED_FUNCTION_5_40(v145 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000, 0xEC0000006E69616DLL);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_37(result);
  v146 = swift_initStackObject();
  v154 = OUTLINED_FUNCTION_1_50(v146, v147, v148, v149, v150, v151, v152, v153, v266);
  OUTLINED_FUNCTION_2_47(v154, v155, v156, v157, v158, v159, v160, v161, v162);
  v163 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v163);
  OUTLINED_FUNCTION_26_17();
  OUTLINED_FUNCTION_25_24();
  result = OUTLINED_FUNCTION_5_40(v164, v165);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_8_37(result);
  v166 = swift_initStackObject();
  v174 = OUTLINED_FUNCTION_1_50(v166, v167, v168, v169, v170, v171, v172, v173, v267);
  OUTLINED_FUNCTION_2_47(v174, v175, v176, v177, v178, v179, v180, v181, v182);
  v183 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v183);
  v184 = OUTLINED_FUNCTION_23_12();
  result = OUTLINED_FUNCTION_5_40(v184, 0xEC0000004449746ELL);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_8_37(result);
  v185 = swift_initStackObject();
  v193 = OUTLINED_FUNCTION_1_50(v185, v186, v187, v188, v189, v190, v191, v192, v268);
  OUTLINED_FUNCTION_2_47(v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v202 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v202);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v203, v204, v205, v206, v207, 0, 2);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_8_37(result);
  v208 = swift_initStackObject();
  v216 = OUTLINED_FUNCTION_1_50(v208, v209, v210, v211, v212, v213, v214, v215, v269);
  OUTLINED_FUNCTION_2_47(v216, v217, v218, v219, v220, v221, v222, v223, v224);
  v225 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v225);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v226, v227, v228, v229, v230, 0, 2);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_8_37(result);
  v231 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v231, v232, v233, v234, v235, v236, v237, v238, v239);
  v240 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v240, v241, v242, v243, v244, v245, v246, v247, v248);
  v240[2].n128_u64[0] = sub_19393C850();
  v249 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A29DC0, 0, 0, v240, 4, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v231[2].n128_u64[0] = result;
  sub_19343D230(v231);
  v250 = swift_initStackObject();
  v251 = OUTLINED_FUNCTION_22_15(v250, v270);
  OUTLINED_FUNCTION_2_13(v251, v252, v253, v254, v255, v256, v257, v258, v259);
  v251[2].n128_u64[0] = sub_19393C850();
  v260 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v261 = OUTLINED_FUNCTION_16_25();
  result = sub_19343D150(v261, 0xEB0000000065646FLL, 2, 0, v251, 13, 0);
  if (result)
  {
    v250[2].n128_u64[0] = result;
    sub_19343D230(v250);
    return v271;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_193621730()
{
  OUTLINED_FUNCTION_26();
  v65 = v0;
  v66 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = sub_19393BE00();
  v15 = OUTLINED_FUNCTION_0(v14);
  v64 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  v25 = v5 == 0x69737265766E6F63 && v3 == 0xEC00000044496E6FLL;
  if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitConversion() + 28);
    goto LABEL_7;
  }

  v29 = v5 == 0xD000000000000010 && 0x8000000193A29DA0 == v3;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v30 = *(type metadata accessor for AdAttributionKitConversion() + 32);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_22_27();
  v34 = v5 == 0x69737265766E6F63 && v3 == v33;
  if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v35 = type metadata accessor for AdAttributionKitConversion();
    OUTLINED_FUNCTION_18_27(*(v35 + 36));
    if (*(v36 + 9))
    {
      goto LABEL_17;
    }

LABEL_26:
    OUTLINED_FUNCTION_41_2(v36);
    goto LABEL_9;
  }

  v38 = v5 == OUTLINED_FUNCTION_20_26() && v3 == v37;
  if (v38 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitConversion() + 40);
    goto LABEL_7;
  }

  v39 = v5 == (OUTLINED_FUNCTION_10_35() & 0xFFFFFFFFFFFFLL | 0x4449000000000000) && v3 == 0xE800000000000000;
  if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v40 = type metadata accessor for AdAttributionKitConversion();
    OUTLINED_FUNCTION_18_27(*(v40 + 44));
    if ((*(v41 + 4) & 1) == 0)
    {
      LODWORD(v67) = *v41;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_27_20();
  v43 = v5 == OUTLINED_FUNCTION_17_26() && v3 == v42;
  if (v43 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v30 = *(type metadata accessor for AdAttributionKitConversion() + 48);
LABEL_16:
    OUTLINED_FUNCTION_18_27(v30);
    if ((v31[1] & 1) == 0)
    {
      v67 = *v31;
      goto LABEL_9;
    }

LABEL_17:
    v32 = v66;
    *v66 = 0u;
    v32[1] = 0u;
    goto LABEL_18;
  }

  v45 = v5 == (OUTLINED_FUNCTION_10_35() & 0xFFFFFFFFFFFFLL | 0x6F44000000000000) && v3 == v44;
  if (v45 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitConversion() + 52);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_24();
  v47 = v5 == OUTLINED_FUNCTION_26_17() && v3 == v46;
  if (v47 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitConversion() + 56);
    goto LABEL_7;
  }

  v48 = v5 == OUTLINED_FUNCTION_23_12() && v3 == 0xEC0000004449746ELL;
  if (v48 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitConversion() + 60);
    goto LABEL_7;
  }

  v49 = v5 == OUTLINED_FUNCTION_21_26() && v3 == 0xEE00657461446E6FLL;
  if (v49 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v50 = type metadata accessor for AdAttributionKitConversion();
    sub_1934DE90C(v65 + *(v50 + 64), v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v52 = v64;
      (*(v64 + 32))(v24, v13, v14);
      sub_1934948FC();
      (*(v52 + 8))(v24, v14);
      goto LABEL_18;
    }

    v51 = v13;
    goto LABEL_71;
  }

  v53 = v5 == 0x69737265766E6F63 && v3 == 0xEE00657461446E6FLL;
  if (v53 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v54 = type metadata accessor for AdAttributionKitConversion();
    sub_1934DE90C(v65 + *(v54 + 68), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
    {
      v55 = v64;
      (*(v64 + 32))(v21, v10, v14);
      sub_1934948FC();
      (*(v55 + 8))(v21, v14);
      goto LABEL_18;
    }

    v51 = v10;
LABEL_71:
    sub_19344E6DC(v51, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_17;
  }

  v56 = v5 == 0xD000000000000011 && 0x8000000193A29DC0 == v3;
  if (v56 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v57 = type metadata accessor for AdAttributionKitConversion();
    OUTLINED_FUNCTION_18_27(*(v57 + 72));
    if (*(v36 + 9))
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v59 = v5 == OUTLINED_FUNCTION_16_25() && v3 == v58;
  if (!v59 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    sub_19349AB64();
    swift_allocError();
    v61 = v60;
    *v60 = v5;
    v60[1] = v3;
    v60[5] = type metadata accessor for AdAttributionKitConversion();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v61 + 2);
    sub_193620B80(v65, boxed_opaque_existential_1Tm);
    *(v61 + 48) = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v26 = *(type metadata accessor for AdAttributionKitConversion() + 76);
LABEL_7:
  v27 = (v65 + v26);
  v28 = *(v65 + v26 + 8);
  if (!v28)
  {
    goto LABEL_17;
  }

  v67 = *v27;
  v68 = v28;
LABEL_9:
  sub_1934948FC();
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitConversion.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitConversion();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v18 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = a1 + v2[8];
  j__OUTLINED_FUNCTION_8_11();
  v5 = a1 + v2[9];
  OUTLINED_FUNCTION_131(v5);
  v16 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = a1 + v2[11];
  sub_1934E3F94();
  v13 = a1 + v2[12];
  j__OUTLINED_FUNCTION_8_11();
  v12 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[16];
  sub_1934E0648();
  v8 = v2[17];
  sub_19349C79C();
  v9 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v9);
  v14 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936240AC();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_18_28(a1 + v3);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v18 = 0;
  v18[1] = 0;
  *v17 = 0;
  v17[8] = 1;
  *v5 = 0;
  *(v5 + 8) = 256;
  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[4] = 1;
  *v13 = 0;
  v13[8] = 1;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_193442B60(a1 + v7, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_18_28(a1 + v7);
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_18_28(a1 + v8);

  *v9 = 0;
  *(v9 + 8) = 256;
  *v14 = 0;
  v14[1] = 0;
  return result;
}

BOOL static AdAttributionKitConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_19393BE00();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v104[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v104[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v104[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_26();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104[-v22];
  v24 = type metadata accessor for AdAttributionKitConversion();
  v25 = v24[7];
  OUTLINED_FUNCTION_3();
  if (v28)
  {
    if (!v26)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v27);
    v31 = v31 && v29 == v30;
    if (!v31 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2(v24[8]);
  if (v33)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v34)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v24[9]);
  if (v36)
  {
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v39)
    {
      return 0;
    }

    v109 = v37;
    v110 = v38 & 1;
    sub_1936226B4();
    v107 = v8;
    v40 = sub_19393C550();
    v8 = v107;
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  v41 = v24[10];
  OUTLINED_FUNCTION_3();
  if (v44)
  {
    if (!v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v43);
    v47 = v31 && v45 == v46;
    if (!v47 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v48 = v24[11];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2(v24[12]);
  if (v54)
  {
    if (!v53)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v55)
    {
      return 0;
    }
  }

  v56 = v24[13];
  OUTLINED_FUNCTION_3();
  if (v59)
  {
    if (!v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v58);
    v62 = v31 && v60 == v61;
    if (!v62 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v63 = v24[14];
  OUTLINED_FUNCTION_3();
  if (v66)
  {
    if (!v64)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v65);
    v69 = v31 && v67 == v68;
    if (!v69 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v70 = v24[15];
  OUTLINED_FUNCTION_3();
  if (v73)
  {
    if (!v71)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v72);
    v76 = v31 && v74 == v75;
    if (!v76 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v77 = v24[16];
  v106 = v5;
  v107 = v77;
  v78 = *(v19 + 48);
  sub_1934DE90C(&v77[a1], v23);
  v79 = &v107[a2];
  v107 = v78;
  v80 = &v78[v23];
  v81 = v106;
  sub_1934DE90C(v79, v80);
  OUTLINED_FUNCTION_6_3(v23, 1, v81);
  if (v31)
  {
    OUTLINED_FUNCTION_6_3(&v107[v23], 1, v81);
    if (v31)
    {
      sub_193442B60(v23, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_75;
    }

LABEL_73:
    v83 = v23;
LABEL_84:
    sub_193442B60(v83, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v23, v18);
  OUTLINED_FUNCTION_6_3(&v107[v23], 1, v81);
  if (v82)
  {
    (*(v8 + 1))(v18, v81);
    goto LABEL_73;
  }

  (*(v8 + 4))(v108, &v107[v23], v81);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v105 = sub_19393C550();
  v107 = *(v8 + 1);
  (v107)(v108, v106);
  (v107)(v18, v106);
  sub_193442B60(v23, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  v84 = v24[17];
  v85 = *(v19 + 48);
  sub_1934DE90C(a1 + v84, v2);
  sub_1934DE90C(a2 + v84, v2 + v85);
  v86 = v106;
  OUTLINED_FUNCTION_6_3(v2, 1, v106);
  if (v31)
  {
    OUTLINED_FUNCTION_6_3(v2 + v85, 1, v86);
    if (v31)
    {
      sub_193442B60(v2, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  sub_1934DE90C(v2, v16);
  OUTLINED_FUNCTION_6_3(v2 + v85, 1, v86);
  if (v87)
  {
    (*(v8 + 1))(v16, v86);
LABEL_83:
    v83 = v2;
    goto LABEL_84;
  }

  v89 = v108;
  (*(v8 + 4))(v108, v2 + v85, v86);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v90 = sub_19393C550();
  v91 = *(v8 + 1);
  v91(v89, v86);
  v91(v16, v86);
  sub_193442B60(v2, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  OUTLINED_FUNCTION_25_3(v24[18]);
  if (v93)
  {
    if ((v92 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v96)
    {
      return 0;
    }

    v109 = v94;
    v110 = v95 & 1;
    sub_193622660();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v97 = v24[19];
  OUTLINED_FUNCTION_3();
  if (!v100)
  {
    return !v98;
  }

  if (!v98)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v99);
  v103 = v31 && v101 == v102;
  return v103 || (sub_19393CA30() & 1) != 0;
}