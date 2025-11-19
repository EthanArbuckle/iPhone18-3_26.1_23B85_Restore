unint64_t sub_193622660()
{
  result = qword_1EAE3F368;
  if (!qword_1EAE3F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F368);
  }

  return result;
}

unint64_t sub_1936226B4()
{
  result = qword_1EAE3F370;
  if (!qword_1EAE3F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F370);
  }

  return result;
}

uint64_t AdAttributionKitConversion.hash(into:)()
{
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v35 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_16_26();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for AdAttributionKitConversion();
  v15 = (v0 + v14[7]);
  v16 = v15[1];
  if (v16)
  {
    OUTLINED_FUNCTION_8_38(v15);
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = v0 + v14[8];
  if (*(v17 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v17;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  v18 = (v0 + v14[9]);
  if (*(v18 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *(v18 + 8);
    v36 = *v18;
    v37 = v19 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193622B08();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_22_28(v14[10]);
  if (v16)
  {
    OUTLINED_FUNCTION_8_38(v20);
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v0 + v14[11]);
  if (*(v21 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v21;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v22 = v0 + v14[12];
  if (*(v22 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v22;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v16);
  }

  OUTLINED_FUNCTION_22_28(v14[13]);
  if (v16)
  {
    OUTLINED_FUNCTION_8_38(v23);
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_22_28(v14[14]);
  if (v16)
  {
    OUTLINED_FUNCTION_8_38(v24);
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_22_28(v14[15]);
  if (v16)
  {
    OUTLINED_FUNCTION_8_38(v25);
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934DE90C(v0 + v14[16], v13);
  OUTLINED_FUNCTION_6_3(v13, 1, v2);
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v27 = v35;
    (*(v35 + 32))(v8, v13, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_27_21();
    (*(v27 + 8))(v8, v2);
  }

  sub_1934DE90C(v0 + v14[17], v1);
  OUTLINED_FUNCTION_6_3(v1, 1, v2);
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v28 = v35;
    (*(v35 + 32))(v8, v1, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_27_21();
    (*(v28 + 8))(v8, v2);
  }

  v29 = (v0 + v14[18]);
  if (*(v29 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v30 = *(v29 + 8);
    v36 = *v29;
    v37 = v30 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193622B5C();
    sub_19393C540();
  }

  v31 = (v0 + v14[19]);
  if (!v31[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v32 = *v31;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

unint64_t sub_193622B08()
{
  result = qword_1EAE3F378;
  if (!qword_1EAE3F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F378);
  }

  return result;
}

unint64_t sub_193622B5C()
{
  result = qword_1EAE3F380;
  if (!qword_1EAE3F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F380);
  }

  return result;
}

void AdAttributionKitConversionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static AdAttributionKitConversionType.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F3A0, &qword_193973F58);
  v4 = OUTLINED_FUNCTION_17_27(v3);
  if (!(!v10 & v9))
  {
    v27 = OUTLINED_FUNCTION_39(v8);
    v31 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE3F3A0, &qword_193973F58);
    v4 = OUTLINED_FUNCTION_17_2(v31);
  }

  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v32 = OUTLINED_FUNCTION_39(v15);
    v34 = sub_1934B0FCC(v32, v1, 1, v33, &qword_1EAE3F3A0, &qword_193973F58);
    v11 = OUTLINED_FUNCTION_17_2(v34);
  }

  OUTLINED_FUNCTION_10_36(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v35 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE3F3A0, &qword_193973F58);
    v21 = v18;
  }

  OUTLINED_FUNCTION_20_27(v18, v19, v20, v21);
  v24 = *(v23 + 3);
  if (v2 + 4 > (v24 >> 1))
  {
    v39 = OUTLINED_FUNCTION_39(v24);
    v23 = sub_1934B0FCC(v39, v2 + 4, 1, v40, &qword_1EAE3F3A0, &qword_193973F58);
  }

  *(v23 + 2) = v2 + 4;
  v25 = &v23[16 * v0];
  *(v25 + 4) = 2;
  v25[40] = 1;
  return v23;
}

uint64_t AdAttributionKitConversionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F6C6E776F646552;
  if (*v0 != 1)
  {
    v1 = 0x656761676E656552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F44;
  }
}

uint64_t AdAttributionKitConversionType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0x64616F6C6E776F44 && v1 == 0xE800000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x6F6C6E776F646552 && v1 == 0xEA00000000006461;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656761676E656552 && v1 == 0xEC000000746E656DLL)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v6 = 2;
    if ((v7 & 1) == 0)
    {
      v6 = 0;
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AdAttributionKitAdInteractionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AdAttributionKitAdInteractionType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static AdAttributionKitAdInteractionType.allCases.getter()
{
  v1 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F398, &qword_193973F50);
  v2 = OUTLINED_FUNCTION_17_27(v1);
  if (!(!v8 & v7))
  {
    v23 = OUTLINED_FUNCTION_39(v6);
    v27 = OUTLINED_FUNCTION_84_2(v23, v24, v25, v26, &qword_1EAE3F398, &qword_193973F50);
    v2 = OUTLINED_FUNCTION_17_2(v27);
  }

  OUTLINED_FUNCTION_15_5(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v28 = OUTLINED_FUNCTION_39(v13);
    v30 = sub_1934B0FCC(v28, v0, 1, v29, &qword_1EAE3F398, &qword_193973F50);
    v9 = OUTLINED_FUNCTION_17_2(v30);
  }

  OUTLINED_FUNCTION_10_36(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v31 = OUTLINED_FUNCTION_39(v20);
    v16 = OUTLINED_FUNCTION_84_2(v31, v32, v33, v34, &qword_1EAE3F398, &qword_193973F50);
    v19 = v16;
  }

  OUTLINED_FUNCTION_20_27(v16, v17, v18, v19);
  return v21;
}

uint64_t AdAttributionKitAdInteractionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6B63696C43;
  }

  else
  {
    result = 2003134806;
  }

  *v0;
  return result;
}

uint64_t AdAttributionKitAdInteractionType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 2003134806 && v1 == 0xE400000000000000;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x6B63696C43 || v1 != 0xE500000000000000)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193623130()
{
  result = qword_1EAE3F388;
  if (!qword_1EAE3F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F388);
  }

  return result;
}

unint64_t sub_193623188()
{
  result = qword_1EAE3F390;
  if (!qword_1EAE3F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F390);
  }

  return result;
}

void sub_1936231DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB5E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v47, xmmword_193952680);
  *v1 = 1;
  *v0 = "conversionID";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v13 = 2;
  *v12 = "advertisedItemID";
  v12[1] = 16;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v16 = 3;
  *v15 = "conversionType";
  v15[1] = 14;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v19 = 4;
  *v18 = "adNetworkID";
  v18[1] = 11;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v22 = 5;
  *v21 = "sourceID";
  v21[1] = 8;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v25 = 6;
  *v24 = "publisherItemID";
  v24[1] = 15;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v28 = 7;
  *v27 = "sourceDomain";
  v27[1] = 12;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v11)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v31 = 8;
  *v30 = "marketplaceID";
  v30[1] = 13;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v11)(v32);
  v33 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v34 = 9;
  *v33 = "storefrontID";
  v33[1] = 12;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v11)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 9 * v5);
  *v37 = 10;
  *v36 = "impressionDate";
  v36[1] = 14;
  v38 = OUTLINED_FUNCTION_41(v36);
  (v11)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v40 = 11;
  *v39 = "conversionDate";
  v39[1] = 14;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v11)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v43 = 12;
  *v42 = "adInteractionType";
  v42[1] = 17;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v11)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v1 + 12 * v5);
  *v46 = 13;
  *v45 = "countryCode";
  *(v45 + 8) = 11;
  *(v45 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19362356C()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 28);
        goto LABEL_21;
      case 2:
        v10 = *(type metadata accessor for AdAttributionKitConversion() + 32);
        goto LABEL_16;
      case 3:
        v9 = v0 + *(type metadata accessor for AdAttributionKitConversion() + 36);
        goto LABEL_11;
      case 4:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 40);
        goto LABEL_21;
      case 5:
        v7 = type metadata accessor for AdAttributionKitConversion();
        OUTLINED_FUNCTION_8_2(*(v7 + 44));
        sub_19393C220();
        goto LABEL_22;
      case 6:
        v10 = *(type metadata accessor for AdAttributionKitConversion() + 48);
LABEL_16:
        OUTLINED_FUNCTION_8_2(v10);
        sub_19393C230();
        goto LABEL_22;
      case 7:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 52);
        goto LABEL_21;
      case 8:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 56);
        goto LABEL_21;
      case 9:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 60);
        goto LABEL_21;
      case 10:
        v8 = *(type metadata accessor for AdAttributionKitConversion() + 64);
        goto LABEL_19;
      case 11:
        v11 = *(type metadata accessor for AdAttributionKitConversion() + 68);
LABEL_19:
        sub_1934976E4();
        goto LABEL_22;
      case 12:
        v6 = v0 + *(type metadata accessor for AdAttributionKitConversion() + 72);
LABEL_11:
        sub_1934982A8();
        goto LABEL_22;
      case 13:
        v5 = *(type metadata accessor for AdAttributionKitConversion() + 76);
LABEL_21:
        OUTLINED_FUNCTION_8_2(v5);
        sub_19393C200();
LABEL_22:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193623764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_16_4(v8[7]);
  if (v10)
  {
    v11 = *v9;
    OUTLINED_FUNCTION_2_7();
    v5 = v4;
  }

  if (!v5)
  {
    v12 = (v3 + v8[8]);
    if ((v12[1] & 1) != 0 || (v13 = *v12, OUTLINED_FUNCTION_15_11(), sub_19393C3E0(), (v5 = v4) == 0))
    {
      v14 = v3 + v8[9];
      if ((*(v14 + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(v14), v4 = v5, sub_193447324(v35, 3, a2, &type metadata for AdAttributionKitConversionType, a3, &off_1F07D9020), !v5))
      {
        OUTLINED_FUNCTION_16_4(v8[10]);
        if (!v16 || (v17 = *v15, OUTLINED_FUNCTION_2_7(), !v4))
        {
          v18 = (v3 + v8[11]);
          if ((v18[1] & 1) != 0 || (v19 = *v18, OUTLINED_FUNCTION_15_11(), sub_19393C3D0(), !v4))
          {
            v20 = (v3 + v8[12]);
            if ((v20[1] & 1) != 0 || (v21 = *v20, OUTLINED_FUNCTION_15_11(), sub_19393C3E0(), !v4))
            {
              OUTLINED_FUNCTION_16_4(v8[13]);
              if (!v23 || (v24 = *v22, OUTLINED_FUNCTION_2_7(), !v4))
              {
                OUTLINED_FUNCTION_16_4(v8[14]);
                if (!v26 || (v27 = *v25, OUTLINED_FUNCTION_2_7(), !v4))
                {
                  OUTLINED_FUNCTION_16_4(v8[15]);
                  if (!v29 || (v30 = *v28, OUTLINED_FUNCTION_2_7(), !v4))
                  {
                    OUTLINED_FUNCTION_79();
                    sub_19362399C();
                    if (!v4)
                    {
                      OUTLINED_FUNCTION_79();
                      sub_193623AD8();
                      v31 = v3 + v8[18];
                      if ((*(v31 + 9) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_147(v31);
                        sub_193447324(v35, 12, a2, &type metadata for AdAttributionKitAdInteractionType, a3, &off_1F07D9048);
                      }

                      OUTLINED_FUNCTION_16_4(v8[19]);
                      if (v33)
                      {
                        v34 = *v32;
                        OUTLINED_FUNCTION_2_7();
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

uint64_t sub_19362399C()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_13_7();
  v7 = OUTLINED_FUNCTION_76(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_10_37();
  sub_1934DE90C(v3 + *(v10 + 64), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v12 = OUTLINED_FUNCTION_7_16();
  v13(v12);
  OUTLINED_FUNCTION_3_24(v1, 10);
  v14 = OUTLINED_FUNCTION_12_15();
  return v15(v14);
}

uint64_t sub_193623AD8()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OUTLINED_FUNCTION_13_7();
  v7 = OUTLINED_FUNCTION_76(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = OUTLINED_FUNCTION_10_37();
  sub_1934DE90C(v3 + *(v10 + 68), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v12 = OUTLINED_FUNCTION_7_16();
  v13(v12);
  OUTLINED_FUNCTION_3_24(v1, 11);
  v14 = OUTLINED_FUNCTION_12_15();
  return v15(v14);
}

uint64_t sub_193623C14()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3F3A8;

  return v0;
}

void sub_193623CB0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB600);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "AdAttributionKitConversionTypeUnknown";
  *(v0 + 8) = 37;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 1;
  *v13 = "Download";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v16 = 2;
  *v15 = "Redownload";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 3;
  *v17 = "Reengagement";
  *(v17 + 8) = 12;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193623EBC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB618);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBB0;
  v7 = (v6 + v5);
  v8 = v6 + v5 + dword_1EAEAB650;
  *v7 = 0;
  *v8 = "AdAttributionKitAdInteractionTypeUnknown";
  *(v8 + 8) = 40;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 1;
  *v13 = "View";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v16 = 2;
  *v15 = "Click";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AdAttributionKitConversion.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for AdAttributionKitConversion()
{
  result = qword_1ED50DF20;
  if (!qword_1ED50DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitConversion.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t AdAttributionKitConversion.conversionID.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.conversionID.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.advertisedItemID.getter()
{
  v1 = (v0 + *(type metadata accessor for AdAttributionKitConversion() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void AdAttributionKitConversion.conversionType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_37_0(*(v0 + 36));
}

uint64_t AdAttributionKitConversion.adNetworkID.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.adNetworkID.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.sourceID.setter()
{
  result = OUTLINED_FUNCTION_7_30();
  v3 = v1 + *(result + 44);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t AdAttributionKitConversion.publisherItemID.getter()
{
  v1 = (v0 + *(type metadata accessor for AdAttributionKitConversion() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AdAttributionKitConversion.sourceDomain.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.sourceDomain.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.marketplaceID.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.marketplaceID.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.storefrontID.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.storefrontID.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.impressionDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 64));
}

uint64_t AdAttributionKitConversion.conversionDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 68));
}

void AdAttributionKitConversion.adInteractionType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_37_0(*(v0 + 72));
}

uint64_t AdAttributionKitConversion.countryCode.getter()
{
  v0 = type metadata accessor for AdAttributionKitConversion();
  OUTLINED_FUNCTION_4_4(*(v0 + 76));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.countryCode.setter()
{
  v3 = OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201(*(v3 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitConversion.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193624AF8()
{
  sub_19393CAB0();
  AdAttributionKitConversion.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193624B38()
{
  result = qword_1EAE3F3B8;
  if (!qword_1EAE3F3B8)
  {
    type metadata accessor for AdAttributionKitConversion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3B8);
  }

  return result;
}

uint64_t sub_193624B9C@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitConversionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193624BF4@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitConversionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193624D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193624E68@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitAdInteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624EC0@<X0>(uint64_t *a1@<X8>)
{
  result = static AdAttributionKitAdInteractionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624FE4()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED508070);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_19349D1FC(319, &qword_1ED506760);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, qword_1ED506E98);
    if (v10 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED502E98);
      v1 = v11;
      if (v12 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitPurchase.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AdAttributionKitPurchase();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_193625398(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3F3E0, &qword_1939742D0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3F3E0, &qword_1939742D0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_193625398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitPurchase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AdAttributionKitPurchase.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3F3E0, &qword_1939742D0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19362553C(v10, a1);
  }

  return result;
}

uint64_t sub_19362553C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitPurchase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AdAttributionKitPurchase.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1936284F4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_19362553C(v14, v40);
      v33 = type metadata accessor for AdAttributionKitPurchase();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AdAttributionKitPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitPurchase();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193625398(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3F3E0, &qword_1939742D0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3F3E0, &qword_1939742D0);
  return v15;
}

id static AdAttributionKitPurchase.columns.getter()
{
  v208 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v2 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v12, v13, v14, v15, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_24(result);
  v17 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v26[2].n128_u64[0] = sub_19393C850();
  v35 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v36 = OUTLINED_FUNCTION_21_4();
  result = OUTLINED_FUNCTION_15_12(v36, 0xEC00000044496E6FLL);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_24(result);
  v37 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v46[2].n128_u64[0] = sub_19393C850();
  v55 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_28();
  OUTLINED_FUNCTION_19_31();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v56, v57, v58, v59, v46, 3, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_24(result);
  v60 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v69 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v69, v70, v71, v72, v73, v74, v75, v76, v77);
  v69[2].n128_u64[0] = sub_19393C850();
  v78 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v79 = OUTLINED_FUNCTION_23_12();
  result = OUTLINED_FUNCTION_15_12(v79, 0xEC0000004449746ELL);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_12_24(result);
  v80 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v98);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v99, v100, v101, v102, inited, 4, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v103 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v103, v104, v105, v106, v107, v108, v109, v110, v111);
  v112 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v121 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v121);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v122, v123, v124, v125, inited, 4, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v126 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v135 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v135, v136, v137, v138, v139, v140, v141, v142, v143);
  v144 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v144);
  v145 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v145, 0xEC00000065746144, 3, 0, inited, 0, 2);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v146 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v146, v147, v148, v149, v150, v151, v152, v153, v154);
  v155 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v155, v156, v157, v158, v159, v160, v161, v162, v163);
  v164 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v164);
  v165 = OUTLINED_FUNCTION_22_29();
  result = OUTLINED_FUNCTION_3_5(v165, 0xEC00000065646F43);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v166 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v166, v167, v168, v169, v170, v171, v172, v173, v174);
  v175 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v175, v176, v177, v178, v179, v180, v181, v182, v183);
  v184 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v184);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000028, 0x8000000193A29F70);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v185 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v185, v186, v187, v188, v189, v190, v191, v192, v193);
  v194 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v194, v195, v196, v197, v198, v199, v200, v201, v202);
  v194[2].n128_u64[0] = sub_19393C850();
  v203 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v204, v205, v206, v207, v194, 3, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v208;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_193625E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v58 = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = a1 == 0xD000000000000010 && 0x8000000193A29DA0 == a2;
  if (v20 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v22 = v3 + result[7];
    if (*(v22 + 8))
    {
LABEL_7:
      v23 = v58;
      *v58 = 0u;
      v23[1] = 0u;
      return result;
    }

    v59 = *v22;
    return sub_1934948FC();
  }

  v57 = v4;
  v24 = a1 == OUTLINED_FUNCTION_21_4() && a2 == 0xEC00000044496E6FLL;
  if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v25 = result[8];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_19_31();
  v29 = a1 == OUTLINED_FUNCTION_20_28() && a2 == v28;
  if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v30 = result[9];
    goto LABEL_24;
  }

  v33 = a1 == OUTLINED_FUNCTION_23_12() && a2 == 0xEC0000004449746ELL;
  if (v33 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v34 = (v3 + result[10]);
    v35 = v34[1];
    if (!v35)
    {
      goto LABEL_7;
    }

    v59 = *v34;
    v60 = v35;
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_187_1();
  v38 = a1 == v37 + 1 && v36 == a2;
  if (v38 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v39 = v3 + result[11];
    if (*(v39 + 9))
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_187_1();
  v42 = a1 == v41 + 17 && v40 == a2;
  if (v42 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v39 = v3 + result[12];
    if (*(v39 + 9))
    {
      goto LABEL_7;
    }

LABEL_40:
    OUTLINED_FUNCTION_43_1(v39);
    return sub_1934948FC();
  }

  v44 = a1 == OUTLINED_FUNCTION_24_4() && a2 == v43;
  if (v44 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v45 = type metadata accessor for AdAttributionKitPurchase();
    sub_1934DE90C(v3 + *(v45 + 52), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      result = sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_7;
    }

    (*(v14 + 32))(v19, v10, v11);
    sub_1934948FC();
    return (*(v14 + 8))(v19, v11);
  }

  v47 = a1 == OUTLINED_FUNCTION_22_29() && a2 == v46;
  if (v47 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v25 = result[14];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_187_1();
  v50 = a1 == v49 + 24 && v48 == a2;
  if (v50 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v25 = result[15];
LABEL_15:
    v26 = (v3 + v25);
    v27 = *(v3 + v25 + 8);
    if (v27)
    {
      v59 = *v26;
      v60 = v27;
      return sub_1934948FC();
    }

LABEL_25:
    v32 = v58;
    *v58 = 0u;
    v32[1] = 0u;
    return result;
  }

  OUTLINED_FUNCTION_187_1();
  v53 = a1 == v52 && v51 == a2;
  if (v53 || (OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    result = type metadata accessor for AdAttributionKitPurchase();
    v30 = result[16];
LABEL_24:
    v31 = (v3 + v30);
    if ((v31[1] & 1) == 0)
    {
      v59 = *v31;
      return sub_1934948FC();
    }

    goto LABEL_25;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v55 = v54;
  *v54 = a1;
  v54[1] = a2;
  v54[5] = type metadata accessor for AdAttributionKitPurchase();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v55 + 2);
  sub_193625398(v3, boxed_opaque_existential_1Tm);
  *(v55 + 48) = 1;
  swift_willThrow();
}

uint64_t AdAttributionKitPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitPurchase();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v16 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v15 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v7);
  v8 = v2[13];
  sub_19349C79C();
  v14 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = a1 + v2[16];
  j__OUTLINED_FUNCTION_8_11();
  *a1 = *sub_1936284F4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v16 = 0;
  v16[8] = 1;
  *v15 = 0;
  v15[1] = 0;
  *v13 = 0;
  v13[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v11);

  *v14 = 0;
  v14[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

BOOL static AdAttributionKitPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v7 = sub_19393BE00();
  v8 = OUTLINED_FUNCTION_23_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_27();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_32_2(v19[7]);
  if (v21)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v22)
    {
      return 0;
    }
  }

  v23 = v19[8];
  OUTLINED_FUNCTION_3();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v25);
    v29 = v29 && v27 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2(v19[9]);
  if (v31)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v32)
    {
      return 0;
    }
  }

  v33 = v19[10];
  OUTLINED_FUNCTION_3();
  if (v36)
  {
    if (!v34)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v35);
    v39 = v29 && v37 == v38;
    if (!v39 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3(v19[11]);
  if (v41)
  {
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v44)
    {
      return 0;
    }

    v73 = v42;
    v74 = v43 & 1;
    sub_193626A04();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3(v19[12]);
  if (v46)
  {
    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v49)
    {
      return 0;
    }

    v73 = v47;
    v74 = v48 & 1;
    sub_1936269B0();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v50 = v19[13];
  v51 = *(v17 + 48);
  sub_1934DE90C(a1 + v50, v4);
  sub_1934DE90C(a2 + v50, v4 + v51);
  OUTLINED_FUNCTION_13_25(v4);
  if (v29)
  {
    OUTLINED_FUNCTION_13_25(v4 + v51);
    if (v29)
    {
      sub_193442B60(v4, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_48;
    }

LABEL_45:
    sub_193442B60(v4, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v4, v16);
  OUTLINED_FUNCTION_13_25(v4 + v51);
  if (v52)
  {
    (*(v10 + 8))(v16, v2);
    goto LABEL_45;
  }

  (*(v10 + 32))(v3, v4 + v51, v2);
  sub_1934DF3E8(&qword_1EAE3A848);
  v54 = sub_19393C550();
  v55 = *(v10 + 8);
  v55(v3, v2);
  v55(v16, v2);
  sub_193442B60(v4, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v56 = v19[14];
  OUTLINED_FUNCTION_3();
  if (v59)
  {
    if (!v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v58);
    v62 = v29 && v60 == v61;
    if (!v62 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v63 = v19[15];
  OUTLINED_FUNCTION_3();
  if (v66)
  {
    if (!v64)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v65);
    v69 = v29 && v67 == v68;
    if (!v69 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2(v19[16]);
  if (v71)
  {
    return v70 != 0;
  }

  OUTLINED_FUNCTION_31_0();
  return (v72 & 1) == 0;
}

unint64_t sub_1936269B0()
{
  result = qword_1EAE3F3F0;
  if (!qword_1EAE3F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3F0);
  }

  return result;
}

unint64_t sub_193626A04()
{
  result = qword_1EAE3F3F8;
  if (!qword_1EAE3F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3F8);
  }

  return result;
}

uint64_t AdAttributionKitPurchase.hash(into:)()
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_23_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_27();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = OUTLINED_FUNCTION_30_16();
  v13 = (v0 + v12[7]);
  if (*(v13 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = *v13;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v14);
  }

  v15 = (v0 + v12[8]);
  if (v15[1])
  {
    v16 = *v15;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = (v0 + v12[9]);
  if (*(v17 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *v17;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v18);
  }

  v19 = (v0 + v12[10]);
  if (v19[1])
  {
    v20 = *v19;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = v0 + v12[11];
  if (*(v21 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_33(v21);
    sub_193626D94();
    sub_19393C540();
  }

  v22 = v0 + v12[12];
  if (*(v22 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_33(v22);
    sub_193626DE8();
    sub_19393C540();
  }

  sub_1934DE90C(v0 + v12[13], v3);
  OUTLINED_FUNCTION_13_25(v3);
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v7 + 32))(v2, v3, v1);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v7 + 8))(v2, v1);
  }

  v24 = (v0 + v12[14]);
  if (v24[1])
  {
    v25 = *v24;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v26 = (v0 + v12[15]);
  if (v26[1])
  {
    v27 = *v26;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v28 = (v0 + v12[16]);
  if (*(v28 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v30 = *v28;
  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v30);
}

unint64_t sub_193626D94()
{
  result = qword_1EAE3F400;
  if (!qword_1EAE3F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F400);
  }

  return result;
}

unint64_t sub_193626DE8()
{
  result = qword_1EAE3F408;
  if (!qword_1EAE3F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F408);
  }

  return result;
}

uint64_t AdAttributionKitInAppPurchaseType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static AdAttributionKitInAppPurchaseType.allCases.getter()
{
  v1 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F428, &qword_1939743E0);
  v2 = OUTLINED_FUNCTION_16_0(v1);
  if (!(!v8 & v7))
  {
    v33 = OUTLINED_FUNCTION_39(v6);
    v37 = OUTLINED_FUNCTION_84_2(v33, v34, v35, v36, &qword_1EAE3F428, &qword_1939743E0);
    v2 = OUTLINED_FUNCTION_17_2(v37);
  }

  OUTLINED_FUNCTION_13_6(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v38 = OUTLINED_FUNCTION_39(v13);
    v42 = OUTLINED_FUNCTION_85(v38, v39, v40, v41, &qword_1EAE3F428, &qword_1939743E0);
    v9 = OUTLINED_FUNCTION_17_2(v42);
  }

  OUTLINED_FUNCTION_8_5(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v43 = OUTLINED_FUNCTION_39(v20);
    v16 = sub_1934B0FCC(v43, v0, 1, v44, &qword_1EAE3F428, &qword_1939743E0);
    v19 = v16;
  }

  OUTLINED_FUNCTION_9_7(v16, v17, v18, v19);
  if (!(v14 ^ v15 | v8))
  {
    v45 = OUTLINED_FUNCTION_39(v25);
    v21 = OUTLINED_FUNCTION_84_2(v45, v46, v47, v48, &qword_1EAE3F428, &qword_1939743E0);
    v24 = v21;
  }

  OUTLINED_FUNCTION_3_7(v21, v22, v23, v24);
  if (!(v14 ^ v15 | v8))
  {
    v49 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_85(v49, v50, v51, v52, &qword_1EAE3F428, &qword_1939743E0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_20_29(v26, v27, v28, v29);
  return v31;
}

unint64_t AdAttributionKitInAppPurchaseType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x62616D75736E6F43;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_23();
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void AdAttributionKitInAppPurchaseType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x62616D75736E6F43 ? (v4 = v0 == 0xEA0000000000656CLL) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_24_23() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v8 = v1 == 0xD000000000000018 && 0x8000000193A29FE0 == v0;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else if (v1 == 0xD000000000000017 && 0x8000000193A29FC0 == v0)
      {

        v5 = 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_0_9();

        v5 = 3;
        if ((v10 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t AdAttributionKitInAppPurchaseSubscriptionDuration.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *static AdAttributionKitInAppPurchaseSubscriptionDuration.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F420, &qword_1939743D8);
  v4 = OUTLINED_FUNCTION_16_0(v3);
  if (!(!v10 & v9))
  {
    v40 = OUTLINED_FUNCTION_39(v8);
    v44 = OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE3F420, &qword_1939743D8);
    v4 = OUTLINED_FUNCTION_17_2(v44);
  }

  OUTLINED_FUNCTION_13_6(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v45 = OUTLINED_FUNCTION_39(v15);
    v49 = OUTLINED_FUNCTION_85(v45, v46, v47, v48, &qword_1EAE3F420, &qword_1939743D8);
    v11 = OUTLINED_FUNCTION_17_2(v49);
  }

  OUTLINED_FUNCTION_8_5(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v50 = OUTLINED_FUNCTION_39(v22);
    v18 = sub_1934B0FCC(v50, v1, 1, v51, &qword_1EAE3F420, &qword_1939743D8);
    v21 = v18;
  }

  OUTLINED_FUNCTION_9_7(v18, v19, v20, v21);
  if (!(v16 ^ v17 | v10))
  {
    v52 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_84_2(v52, v53, v54, v55, &qword_1EAE3F420, &qword_1939743D8);
    v26 = v23;
  }

  OUTLINED_FUNCTION_3_7(v23, v24, v25, v26);
  if (!(v16 ^ v17 | v10))
  {
    v56 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_85(v56, v57, v58, v59, &qword_1EAE3F420, &qword_1939743D8);
    v31 = v28;
  }

  OUTLINED_FUNCTION_20_29(v28, v29, v30, v31);
  v34 = *(v33 + 3);
  v35 = v2 + 6;
  if (v2 + 6 > (v34 >> 1))
  {
    v60 = OUTLINED_FUNCTION_39(v34);
    v33 = OUTLINED_FUNCTION_84_2(v60, v61, v62, v63, &qword_1EAE3F420, &qword_1939743D8);
  }

  *(v33 + 2) = v35;
  v36 = &v33[16 * v0];
  *(v36 + 4) = 4;
  v36[40] = v1;
  v37 = *(v33 + 3);
  if (v2 + 7 > (v37 >> 1))
  {
    v64 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE3F420, &qword_1939743D8);
  }

  *(v33 + 2) = v2 + 7;
  v38 = &v33[16 * v35];
  *(v38 + 4) = 5;
  v38[40] = v1;
  return v33;
}

uint64_t AdAttributionKitInAppPurchaseSubscriptionDuration.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6B656557656E4FLL;
  switch(*v0)
  {
    case 1:
      result = 0x68746E6F4D656E4FLL;
      break;
    case 2:
      v2 = 1299150676;
      goto LABEL_7;
    case 3:
      result = OUTLINED_FUNCTION_25_25();
      break;
    case 4:
      v2 = 1299736915;
LABEL_7:
      result = v2 | 0x68746E6F00000000;
      break;
    case 5:
      result = 0x72616559656E4FLL;
      break;
    default:
      return result;
  }

  return result;
}

void AdAttributionKitInAppPurchaseSubscriptionDuration.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6B656557656E4FLL ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_19_32(0x4D656E4Fu);
    v6 = v3 && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_19_32(0x4D6F7754u);
      v7 = v3 && v0 == 0xE900000000000073;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_25_25() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_19_32(0x4D786953u);
          v10 = v3 && v0 == 0xE900000000000073;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else if (v1 == 0x72616559656E4FLL && v0 == 0xE700000000000000)
          {

            v5 = 5;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_0_9();

            v5 = 5;
            if ((v12 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_193627660()
{
  result = qword_1EAE3F410;
  if (!qword_1EAE3F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F410);
  }

  return result;
}

unint64_t sub_1936276B8()
{
  result = qword_1EAE3F418;
  if (!qword_1EAE3F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F418);
  }

  return result;
}

void sub_193627728()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB630);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v36, xmmword_193952660);
  *v1 = 1;
  *v0 = "advertisedItemID";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  *v10 = "conversionID";
  v10[1] = 12;
  v12 = OUTLINED_FUNCTION_56_0(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_25(v13, "amountCharged");
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v17 = 4;
  *v16 = "storefrontID";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_56_0(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_25(v19, "inAppPurchaseType");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_25(v22, "inAppPurchaseSubscriptionDuration");
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  *v25 = "purchaseDate";
  v25[1] = 12;
  v27 = OUTLINED_FUNCTION_56_0(v25);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v1 + 7 * v5);
  *v29 = 8;
  *v28 = "currencyCode";
  v28[1] = 12;
  v30 = OUTLINED_FUNCTION_56_0(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(&v1[v5]);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_25(v31, "inAppPurchaseSubscriptionISO8601Duration");
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 9 * v5);
  *v35 = 10;
  *v34 = "amountChargedUSD";
  *(v34 + 8) = 16;
  *(v34 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193627A0C()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = type metadata accessor for AdAttributionKitPurchase();
        OUTLINED_FUNCTION_8_2(*(v5 + 28));
        sub_19393C230();
        goto LABEL_18;
      case 2:
        v8 = *(type metadata accessor for AdAttributionKitPurchase() + 32);
        goto LABEL_17;
      case 3:
        v7 = *(type metadata accessor for AdAttributionKitPurchase() + 36);
        goto LABEL_9;
      case 4:
        v8 = *(type metadata accessor for AdAttributionKitPurchase() + 40);
        goto LABEL_17;
      case 5:
        v6 = v0 + *(type metadata accessor for AdAttributionKitPurchase() + 44);
        goto LABEL_14;
      case 6:
        v9 = v0 + *(type metadata accessor for AdAttributionKitPurchase() + 48);
LABEL_14:
        sub_1934982A8();
        goto LABEL_18;
      case 7:
        v10 = *(type metadata accessor for AdAttributionKitPurchase() + 52);
        sub_1934976E4();
        goto LABEL_18;
      case 8:
        v8 = *(type metadata accessor for AdAttributionKitPurchase() + 56);
        goto LABEL_17;
      case 9:
        v8 = *(type metadata accessor for AdAttributionKitPurchase() + 60);
LABEL_17:
        OUTLINED_FUNCTION_8_2(v8);
        sub_19393C200();
        goto LABEL_18;
      case 10:
        v7 = *(type metadata accessor for AdAttributionKitPurchase() + 64);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v7);
        sub_19393C190();
LABEL_18:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193627BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for AdAttributionKitPurchase();
  v9 = v3 + v8[7];
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;
    OUTLINED_FUNCTION_15_11();
    sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4(v8[8]);
    if (!v12 || (v13 = *v11, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
    {
      v14 = v3 + v8[9];
      if ((*(v14 + 8) & 1) != 0 || (v15 = *v14, OUTLINED_FUNCTION_15_11(), sub_19393C360(), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4(v8[10]);
        if (!v17 || (v18 = *v16, OUTLINED_FUNCTION_2_7(), (v5 = v4) == 0))
        {
          v19 = v3 + v8[11];
          if ((*(v19 + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(v19), sub_193447324(v29, 5, a2, &type metadata for AdAttributionKitInAppPurchaseType, a3, &off_1F07D9260), !v5))
          {
            v20 = v3 + v8[12];
            if ((*(v20 + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(v20), sub_193447324(v29, 6, a2, &type metadata for AdAttributionKitInAppPurchaseSubscriptionDuration, a3, &off_1F07D9288), !v5))
            {
              sub_193627DCC(v3);
              if (!v5)
              {
                OUTLINED_FUNCTION_16_4(v8[14]);
                if (v22)
                {
                  v23 = *v21;
                  OUTLINED_FUNCTION_2_7();
                }

                OUTLINED_FUNCTION_16_4(v8[15]);
                if (v25)
                {
                  v26 = *v24;
                  OUTLINED_FUNCTION_2_7();
                }

                v27 = v3 + v8[16];
                if ((*(v27 + 8) & 1) == 0)
                {
                  v28 = *v27;
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C360();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193627DCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdAttributionKitPurchase();
  sub_1934DE90C(a1 + *(v11 + 52), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 7, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_193627F88()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3F430;

  return v0;
}

void sub_193628024()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB648);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "AdAttributionKitInAppPurchaseTypeUnknown";
  *(v0 + 8) = 40;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  v13 = OUTLINED_FUNCTION_25(v11, "Consumable");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_25(v14, "NonConsumable");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_25(v17, "AutoRenewingSubscription");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v21 = 4;
  *v20 = "NonRenewingSubscription";
  *(v20 + 8) = 23;
  *(v20 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193628244()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB660);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_193952700;
  v5 = v4 + v0 + dword_1EAEAB698;
  *(v4 + v0) = 0;
  *v5 = "AdAttributionKitInAppPurchaseSubscriptionDurationUnknown";
  *(v5 + 8) = 56;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 1;
  *v10 = "OneWeek";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v13 = 2;
  *v12 = "OneMonth";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_3_1(v4 + v0 + 3 * v3);
  *v15 = 3;
  *v14 = "TwoMonths";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v16 = OUTLINED_FUNCTION_3_1(v4 + v0 + 4 * v3);
  *v17 = 4;
  *v16 = "ThreeMonths";
  *(v16 + 8) = 11;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  *v19 = 5;
  *v18 = "SixMonths";
  *(v18 + 8) = 9;
  *(v18 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v20 = (v4 + v0 + 6 * v3);
  v21 = v20 + dword_1EAEAB698;
  *v20 = 6;
  *v21 = "OneYear";
  *(v21 + 1) = 7;
  v21[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AdAttributionKitPurchase.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitPurchase();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitPurchase()
{
  result = qword_1ED50DF30;
  if (!qword_1ED50DF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitPurchase.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitPurchase();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitPurchase.conversionID.getter()
{
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.conversionID.setter()
{
  v3 = OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.storefrontID.getter()
{
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.storefrontID.setter()
{
  v3 = OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void AdAttributionKitPurchase.inAppPurchaseType.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_37_0(*(v0 + 44));
}

void AdAttributionKitPurchase.inAppPurchaseSubscriptionDuration.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_37_0(*(v0 + 48));
}

uint64_t AdAttributionKitPurchase.purchaseDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitPurchase();
  return sub_19344865C(v1 + *(v2 + 52), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitPurchase.currencyCode.getter()
{
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.currencyCode.setter()
{
  v3 = OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.inAppPurchaseSubscriptionISO8601Duration.getter()
{
  v0 = type metadata accessor for AdAttributionKitPurchase();
  OUTLINED_FUNCTION_4_4(*(v0 + 60));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.inAppPurchaseSubscriptionISO8601Duration.setter()
{
  v3 = OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitPurchase.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193628D34()
{
  sub_19393CAB0();
  AdAttributionKitPurchase.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193628D74()
{
  result = qword_1EAE3F440;
  if (!qword_1EAE3F440)
  {
    type metadata accessor for AdAttributionKitPurchase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F440);
  }

  return result;
}

uint64_t sub_193628DD8@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitInAppPurchaseType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193628E30@<X0>(uint64_t *a1@<X8>)
{
  result = static AdAttributionKitInAppPurchaseType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193628E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193628F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936290A4@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitInAppPurchaseSubscriptionDuration.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936290FC@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitInAppPurchaseSubscriptionDuration.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193629220()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_19349D1FC(319, &qword_1ED506678);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_19349D1FC(319, &qword_1ED506758);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, qword_1ED504950);
    if (v11 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_193629400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511058);
  v5 = __swift_project_value_buffer(v4, qword_1ED511058);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.PlanResolutionTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_19362962C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193629670(void (*a1)(void))
{
  result = sub_19362962C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936296A0(uint64_t a1)
{
  result = sub_1936296C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936296C8()
{
  result = qword_1ED5068A0;
  if (!qword_1ED5068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068A0);
  }

  return result;
}

_BYTE *_s23PlanResolutionTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowPlanResolutionTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_19393C090();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v8 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_5_42();
  sub_19362B864(v0, v14, v19);
  sub_1934470C8(v14, v8, v1);
  sub_19393C080();
  sub_193629994();
  sub_19393C250();
  v20 = *(v5 + 8);
  v21 = OUTLINED_FUNCTION_245();
  v22(v21);
  sub_19344E6DC(v1, &qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_27();
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

unint64_t sub_193629994()
{
  result = qword_1EAE3F478;
  if (!qword_1EAE3F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3F470, &qword_193974808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F478);
  }

  return result;
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.event(from:)()
{
  v1 = sub_19393C070();
  v2 = OUTLINED_FUNCTION_47(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_220();

  sub_19393C060();
  sub_193629994();
  result = sub_19393C260();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_51();
    v10 = OUTLINED_FUNCTION_245();
    return sub_19362B504(v10, v11, v12);
  }

  return result;
}

void static IntelligenceFlowPlanResolutionTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  if (*sub_193630BD4() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v20, v23, v12);
    v24 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v24, v25);
    sub_193629994();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v15 + 8))(v23, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_9_51();
      v27 = v36;
      sub_19362B504(v11, v36, v28);
      v29 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v27 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v31);
      (*(v32 + 16))(v27 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v27 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v27 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v27 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.serialize()()
{
  v3 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F470, &qword_193974808);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_5_42();
  sub_19362B864(v0, v1, v11);
  sub_1934470C8(v1, v3, v2);
  sub_193629994();
  sub_19393C290();
  sub_19344E6DC(v2, &qword_1EAE3F470, &qword_193974808);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193629F60()
{
  OUTLINED_FUNCTION_26();
  v97 = v2;
  v98 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v91 - v11;
  v92 = type metadata accessor for MonotonicTimestamp();
  v12 = OUTLINED_FUNCTION_4_1(v92);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v91 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v91 - v21;
  v95 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  v22 = OUTLINED_FUNCTION_4_1(v95);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v94 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  v33 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v34 = OUTLINED_FUNCTION_4_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_1();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_59_3();
  v44 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v48 = v6 == v47 && v4 == v46;
  if (v48 || (sub_19393CA30() & 1) != 0)
  {
    v49 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
    v50 = OUTLINED_FUNCTION_35_3(*(v49 + 28));
    sub_193448758(v50, v1, v51, v52);
    OUTLINED_FUNCTION_6_3(v1, 1, v44);
    if (!v48)
    {
      sub_19362B504(v1, 0x74654D746E657665, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
      OUTLINED_FUNCTION_245();
      sub_193494798(v57, v58, v59);
      v60 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata;
      v61 = 0x74654D746E657665;
LABEL_10:
      sub_19344A6E0(v61, v60);
      goto LABEL_11;
    }

    v53 = &qword_1EAE3F480;
    v54 = &qword_193974810;
    v55 = v1;
    goto LABEL_9;
  }

  v62 = v6 == 0x4374736575716572 && v4 == 0xEE00747865746E6FLL;
  if (!v62 && (OUTLINED_FUNCTION_10_17() & 1) == 0)
  {
    v67 = v6 == 0x6F436C6C6143726ALL && v4 == 0xED0000747865746ELL;
    if (v67 || (OUTLINED_FUNCTION_10_17() & 1) != 0)
    {
      v68 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
      v69 = OUTLINED_FUNCTION_35_3(*(v68 + 36));
      v70 = v96;
      sub_193448758(v69, v96, v71, v72);
      v73 = v95;
      OUTLINED_FUNCTION_6_3(v70, 1, v95);
      if (!v48)
      {
        v77 = v70;
        v78 = v94;
        sub_19362B504(v77, v94, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
        sub_193494798(v73, &off_1F07D9580, v97);
        v79 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext;
LABEL_29:
        sub_19344A6E0(v78, v79);
        goto LABEL_11;
      }

      v74 = &qword_1EAE3F490;
      v75 = &qword_193974818;
    }

    else
    {
      v80 = v6 == 0xD000000000000012 && 0x8000000193A17A30 == v4;
      if (!v80 && (OUTLINED_FUNCTION_10_17() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v88 = v87;
        *v87 = v6;
        v87[1] = v4;
        v87[5] = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v88 + 2);
        OUTLINED_FUNCTION_5_42();
        sub_19362B864(v98, v89, v90);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      v81 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
      v82 = OUTLINED_FUNCTION_35_3(*(v81 + 40));
      v70 = v93;
      sub_193448758(v82, v93, v83, v84);
      v85 = v92;
      OUTLINED_FUNCTION_6_3(v70, 1, v92);
      if (!v48)
      {
        v86 = v70;
        v78 = v91;
        sub_19362B504(v86, v91, type metadata accessor for MonotonicTimestamp);
        sub_193494798(v85, &off_1F07BD958, v97);
        v79 = type metadata accessor for MonotonicTimestamp;
        goto LABEL_29;
      }

      v74 = &qword_1EAE3B498;
      v75 = &unk_193959120;
    }

    sub_19344E6DC(v70, v74, v75);
    v76 = v97;
    *v97 = 0u;
    *(v76 + 1) = 0u;
    goto LABEL_11;
  }

  v63 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v64 = OUTLINED_FUNCTION_35_3(*(v63 + 32));
  sub_193448758(v64, v32, v65, v66);
  OUTLINED_FUNCTION_6_3(v32, 1, v33);
  if (!v48)
  {
    sub_19362B504(v32, v39, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
    sub_193494798(v33, &off_1F07D9570, v97);
    OUTLINED_FUNCTION_3_45();
    v61 = v39;
    goto LABEL_10;
  }

  v53 = &qword_1EAE3F488;
  v54 = &qword_193974B60;
  v55 = v32;
LABEL_9:
  sub_19344E6DC(v55, v53, v54);
  v56 = v97;
  *v97 = 0u;
  *(v56 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_27();
}

void sub_19362A5DC()
{
  OUTLINED_FUNCTION_26();
  v46 = v1;
  v47 = v0;
  v3 = v2;
  v5 = v4;
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for AIML.UUID();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v27 = v5 == 0x7365757165526669 && v3 == 0xEB00000000644974;
  if (v27 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    sub_193448758(v47, v16, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v16, 1, v17);
    if (!v27)
    {
      OUTLINED_FUNCTION_2_48();
      sub_19362B504(v16, v26, v30);
      sub_193494798(v17, &off_1F07C3F90, v45);
      OUTLINED_FUNCTION_1_51();
      v32 = v26;
LABEL_11:
      sub_19344A6E0(v32, v31);
      goto LABEL_12;
    }

    v28 = v16;
  }

  else
  {
    v33 = v5 == 0x64496E617073 && v3 == 0xE600000000000000;
    if (v33 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v34 = (v47 + *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20));
      if ((v34[1] & 1) == 0)
      {
        v48 = *v34;
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v35 = v5 == 1682535024 && v3 == 0xE400000000000000;
    if (!v35 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v42 = v41;
      *v41 = v5;
      v41[1] = v3;
      v41[5] = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v42 + 2);
      sub_19362B864(v47, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_12;
    }

    v36 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
    v37 = OUTLINED_FUNCTION_35_3(*(v36 + 24));
    sub_193448758(v37, v13, v38, v39);
    OUTLINED_FUNCTION_6_3(v13, 1, v17);
    if (!v27)
    {
      OUTLINED_FUNCTION_2_48();
      sub_19362B504(v13, v23, v40);
      sub_193494798(v17, &off_1F07C3F90, v45);
      OUTLINED_FUNCTION_1_51();
      v32 = v23;
      goto LABEL_11;
    }

    v28 = v13;
  }

  sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  v29 = v45;
  *v45 = 0u;
  *(v29 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_19362A948()
{
  OUTLINED_FUNCTION_87_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_0();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v15 = v4 == 0xD000000000000015 && v14 == v2;
  if (v15 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 4))
    {
LABEL_7:
      *v1 = 0u;
      *(v1 + 16) = 0u;
      return;
    }

    v30 = *v0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v17 = v4 == 0xD000000000000011 && v16 == v2;
  if (v17 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 12))
    {
      goto LABEL_7;
    }

    v31 = *(v0 + 8);
    goto LABEL_9;
  }

  v18 = v4 == 0x6E656D6574617473 && v2 == 0xEB00000000644974;
  if (v18 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 20))
    {
      goto LABEL_7;
    }

    v32 = *(v0 + 16);
LABEL_9:
    sub_1934948FC();
    return;
  }

  v19 = v4 == 0x6C6379436E616C70 && v2 == 0xEB00000000644965;
  if (v19 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v20 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
    sub_193448758(v0 + *(v20 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v10);
    if (v15)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_48();
    sub_19362B504(v3, v5, v21);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v22, v23, v24);
    OUTLINED_FUNCTION_1_51();
    sub_19344A6E0(v5, v25);
  }

  else
  {
    sub_19349AB64();
    v26 = OUTLINED_FUNCTION_13_9();
    v28 = OUTLINED_FUNCTION_75_2(v26, v27);
    *(v1 + 40) = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v28);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
    sub_19362B864(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
    *(v1 + 48) = 1;
    swift_willThrow();
  }
}

void sub_19362AC4C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_40_14();
  v6 = v6 && v5 == 0xE600000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    if (v2)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v8 = a1;
    v8[1] = v7;
    OUTLINED_FUNCTION_16_8(v8, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed);
  }
}

void sub_19362AD50(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_40_14();
  v6 = v6 && v5 == 0xE800000000000000;
  if (v6 || (v7 = v5, (sub_19393CA30() & 1) != 0))
  {
    if (v2)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v8 = a1;
    v8[1] = v7;
    OUTLINED_FUNCTION_16_8(v8, &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted);
  }
}

uint64_t sub_19362AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x737473697865;
  v8 = *v4;
  v9 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8 == 2)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 40) = a3;
    *(v12 + 16) = v8;
    *(v12 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_19362AF90()
{
  OUTLINED_FUNCTION_26();
  v76 = v1;
  v77 = v0;
  v3 = v2;
  v5 = v4;
  v75 = v6;
  v74 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  v7 = OUTLINED_FUNCTION_4_1(v74);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v23 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  v29 = v27 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v74 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v74 - v34;
  OUTLINED_FUNCTION_38();
  v37 = v5 == 0xD000000000000010 && v36 == v3;
  if (!v37 && (sub_19393CA30() & 1) == 0)
  {
    v52 = v5 == 0x6465646E65 && v3 == 0xE500000000000000;
    if (v52 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_55();
      v53 = v77;
      sub_19362B864(v77, v33, v54);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_19349AB64();
        v56 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_11_27(v56, v57);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v53, v58, v59);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_3_45();
        v44 = v33;
        goto LABEL_8;
      }

      if (*v33 == 3)
      {
LABEL_19:
        v55 = v75;
        *v75 = 0u;
        *(v55 + 1) = 0u;
        goto LABEL_31;
      }

      v64 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestEnded;
      v65 = &off_1F07D9520;
    }

    else
    {
      v60 = v5 == 0x64656C696166 && v3 == 0xE600000000000000;
      if (!v60 && (sub_19393CA30() & 1) == 0)
      {
        sub_19349AB64();
        v70 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_11_27(v70, v71);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v77, v72, v73);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_31;
      }

      OUTLINED_FUNCTION_0_55();
      v61 = v77;
      sub_19362B864(v77, v29, v62);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_19349AB64();
        v66 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_11_27(v66, v67);
        OUTLINED_FUNCTION_0_55();
        sub_19362B864(v61, v68, v69);
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_3_45();
        v44 = v29;
        goto LABEL_8;
      }

      if (*(v29 + 10))
      {
        goto LABEL_19;
      }

      v63 = *(v29 + 8);
      v78 = *v29;
      v79 = v63 & 0x1FF;
      v64 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed;
      v65 = &off_1F07D9530;
    }

    sub_193494798(v64, v65, v75);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_55();
  v38 = v77;
  sub_19362B864(v77, v35, v39);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_19362B494(v35, v22);
    v45 = OUTLINED_FUNCTION_245();
    sub_193448758(v45, v46, v47, v48);
    v49 = v74;
    OUTLINED_FUNCTION_6_3(v19, 1, v74);
    if (!v37)
    {
      sub_19362B504(v19, v12, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_193494798(v49, &off_1F07D9510, v75);
      sub_19344A6E0(v12, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_19344E6DC(v22, &qword_1EAE3F498, &qword_193974820);
      goto LABEL_31;
    }

    sub_19344E6DC(v22, &qword_1EAE3F498, &qword_193974820);
    v50 = OUTLINED_FUNCTION_13_0();
    sub_19344E6DC(v50, v51, &qword_193974820);
    goto LABEL_19;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  *v40 = v5;
  v40[1] = v3;
  v40[5] = v23;
  __swift_allocate_boxed_opaque_existential_1Tm(v40 + 2);
  OUTLINED_FUNCTION_0_55();
  sub_19362B864(v38, v41, v42);
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();

  OUTLINED_FUNCTION_3_45();
  v44 = v35;
LABEL_8:
  sub_19344A6E0(v44, v43);
LABEL_31:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19362B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19362B504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void sub_19362B578()
{
  OUTLINED_FUNCTION_87_11();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_0();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v15 = v4 == 0xD000000000000010 && v14 == v2;
  if (v15 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 10))
    {
LABEL_7:
      *v1 = 0u;
      *(v1 + 16) = 0u;
      return;
    }

    v31 = *v0;
    v32 = *(v0 + 8) & 0x1FF;
    v16 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted;
    v17 = &off_1F07D9540;
    goto LABEL_9;
  }

  v18 = v4 == 0x6465646E65 && v2 == 0xE500000000000000;
  if (v18 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 11) == 3)
    {
      goto LABEL_7;
    }

    v16 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallEnded;
    v17 = &off_1F07D9550;
    goto LABEL_9;
  }

  v19 = v4 == 0x64656C696166 && v2 == 0xE600000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    if (*(v0 + 12) == 3)
    {
      goto LABEL_7;
    }

    v16 = &type metadata for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallFailed;
    v17 = &off_1F07D9560;
LABEL_9:
    sub_193494798(v16, v17, v1);
    return;
  }

  v20 = v4 == 0x64496563617274 && v2 == 0xE700000000000000;
  if (v20 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v21 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
    sub_193448758(v0 + *(v21 + 28), v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v3, 1, v10);
    if (v15)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_2_48();
    sub_19362B504(v3, v5, v22);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v23, v24, v25);
    OUTLINED_FUNCTION_1_51();
    sub_19344A6E0(v5, v26);
  }

  else
  {
    sub_19349AB64();
    v27 = OUTLINED_FUNCTION_13_9();
    v29 = OUTLINED_FUNCTION_75_2(v27, v28);
    *(v1 + 40) = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v29);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
    sub_19362B864(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
    *(v1 + 48) = 1;
    swift_willThrow();
  }
}

uint64_t sub_19362B864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193630D78();
  v6 = v2[8];
  sub_193630E60();
  v7 = v2[9];
  sub_193630F74();
  v8 = v2[10];
  sub_19344BA58();
  *a1 = *sub_193630BD4();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3F480, &qword_193974810);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_19344E6DC(a1 + v6, &qword_1EAE3F488, &qword_193974B60);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  sub_19344E6DC(a1 + v7, &qword_1EAE3F490, &qword_193974818);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_19344E6DC(a1 + v8, &qword_1EAE3B498, &unk_193959120);
  type metadata accessor for MonotonicTimestamp();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v108 = type metadata accessor for MonotonicTimestamp();
  v4 = OUTLINED_FUNCTION_4_1(v108);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v103 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v104 = v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1(v106);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v107 = v16;
  v113 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  v17 = OUTLINED_FUNCTION_4_1(v113);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_289();
  v105 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  v109 = v25;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4A0, &qword_193974900);
  OUTLINED_FUNCTION_4_1(v111);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_53_1();
  v112 = v29;
  v116 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v30 = OUTLINED_FUNCTION_4_1(v116);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_289();
  v110 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_1();
  v114 = v38;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4A8, &qword_193974908);
  OUTLINED_FUNCTION_4_1(v115);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_105_8();
  v42 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v43 = OUTLINED_FUNCTION_4_1(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_1();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v102 - v53;
  v55 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4B0, &qword_193974910) - 8);
  v56 = *(*v55 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v102 - v58;
  v117 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v118 = a1;
  v60 = *(v117 + 28);
  v61 = v55[14];
  sub_1934486F8(a1 + v60, v59, &qword_1EAE3F480, &qword_193974810);
  v62 = v119 + v60;
  v63 = v119;
  sub_1934486F8(v62, &v59[v61], &qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_31(v59);
  if (v64)
  {
    OUTLINED_FUNCTION_31(&v59[v61]);
    if (v64)
    {
      sub_19344E6DC(v59, &qword_1EAE3F480, &qword_193974810);
      goto LABEL_11;
    }

LABEL_9:
    v65 = &qword_1EAE3F4B0;
    v66 = &qword_193974910;
    v67 = v59;
LABEL_40:
    sub_19344E6DC(v67, v65, v66);
    return 0;
  }

  sub_1934486F8(v59, v54, &qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_31(&v59[v61]);
  if (v64)
  {
    sub_19344A738(v54, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
    goto LABEL_9;
  }

  sub_19362E170(&v59[v61], v48, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  OUTLINED_FUNCTION_13_26();
  sub_19344A924(v68, v69);
  v70 = sub_19393C550();
  sub_19344A738(v48, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  sub_19344A738(v54, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  sub_19344E6DC(v59, &qword_1EAE3F480, &qword_193974810);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v72 = v117;
  v71 = v118;
  v73 = *(v117 + 32);
  v74 = *(v115 + 48);
  OUTLINED_FUNCTION_25_6(v118 + v73, v2);
  OUTLINED_FUNCTION_25_6(v63 + v73, v2 + v74);
  v75 = v116;
  OUTLINED_FUNCTION_6_3(v2, 1, v116);
  if (v64)
  {
    OUTLINED_FUNCTION_31(v2 + v74);
    if (v64)
    {
      sub_19344E6DC(v2, &qword_1EAE3F488, &qword_193974B60);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v76 = v114;
  sub_1934486F8(v2, v114, &qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_31(v2 + v74);
  if (v77)
  {
    OUTLINED_FUNCTION_11_28();
    sub_19344A738(v76, v78);
LABEL_19:
    v65 = &qword_1EAE3F4A8;
    v66 = &qword_193974908;
    v67 = v2;
    goto LABEL_40;
  }

  sub_19362E170(v2 + v74, v110, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
  OUTLINED_FUNCTION_10_38();
  sub_19344A924(v79, v80);
  OUTLINED_FUNCTION_175_0();
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v76, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
  sub_19344E6DC(v2, &qword_1EAE3F488, &qword_193974B60);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v81 = *(v72 + 36);
  v82 = v112;
  v83 = *(v111 + 48);
  OUTLINED_FUNCTION_25_6(v71 + v81, v112);
  OUTLINED_FUNCTION_25_6(v63 + v81, v82 + v83);
  v84 = v113;
  OUTLINED_FUNCTION_6_3(v82, 1, v113);
  if (v64)
  {
    OUTLINED_FUNCTION_31(v82 + v83);
    if (v64)
    {
      sub_19344E6DC(v82, &qword_1EAE3F490, &qword_193974818);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v85 = v109;
  sub_1934486F8(v82, v109, &qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_31(v82 + v83);
  if (v86)
  {
    sub_19344A738(v85, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
LABEL_29:
    v65 = &qword_1EAE3F4A0;
    v66 = &qword_193974900;
    v67 = v82;
    goto LABEL_40;
  }

  sub_19362E170(v82 + v83, v105, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  OUTLINED_FUNCTION_15_34();
  sub_19344A924(v87, v88);
  OUTLINED_FUNCTION_175_0();
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v85, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  sub_19344E6DC(v82, &qword_1EAE3F490, &qword_193974818);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v89 = *(v72 + 40);
  v90 = *(v106 + 48);
  v91 = v71 + v89;
  v92 = v107;
  OUTLINED_FUNCTION_25_6(v91, v107);
  v93 = v63 + v89;
  v94 = v92;
  OUTLINED_FUNCTION_25_6(v93, v92 + v90);
  v95 = v108;
  OUTLINED_FUNCTION_6_3(v92, 1, v108);
  if (v64)
  {
    OUTLINED_FUNCTION_31(v92 + v90);
    if (v64)
    {
      sub_19344E6DC(v92, &qword_1EAE3B498, &unk_193959120);
      return 1;
    }

    goto LABEL_39;
  }

  v96 = v92;
  v97 = v104;
  sub_1934486F8(v96, v104, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v94 + v90);
  if (v98)
  {
    sub_19344A738(v97, type metadata accessor for MonotonicTimestamp);
LABEL_39:
    v65 = &qword_1EAE3B958;
    v66 = &qword_193957B50;
    v67 = v94;
    goto LABEL_40;
  }

  sub_19362E170(v94 + v90, v103, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_14_29();
  sub_19344A924(v100, v101);
  sub_19393C550();
  OUTLINED_FUNCTION_33_17();
  sub_19344A738(v97, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v94, &qword_1EAE3B498, &unk_193959120);
  return (v95 & 1) != 0;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.hash(into:)(uint64_t a1)
{
  v69 = a1;
  v72 = type metadata accessor for MonotonicTimestamp();
  v3 = OUTLINED_FUNCTION_4_1(v72);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v67 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v71 = v11;
  v70 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  v12 = OUTLINED_FUNCTION_4_1(v70);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_289();
  v66 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  v68 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v22 = OUTLINED_FUNCTION_4_1(v68);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_289();
  v65 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_105_8();
  v30 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_1();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F480, &qword_193974810);
  OUTLINED_FUNCTION_47(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v65 - v41;
  v43 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  v44 = v43[7];
  OUTLINED_FUNCTION_2_0();
  sub_1934486F8(v45, v46, v47, &qword_193974810);
  OUTLINED_FUNCTION_6_3(v42, 1, v30);
  if (v48)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v42, v36, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
    sub_19393CAD0();
    OUTLINED_FUNCTION_13_26();
    sub_19344A924(v49, v50);
    sub_19393C540();
    sub_19344A738(v36, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  }

  sub_1934486F8(v1 + v43[8], v2, &qword_1EAE3F488, &qword_193974B60);
  OUTLINED_FUNCTION_6_3(v2, 1, v68);
  v51 = v70;
  if (v48)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v2, v65, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext);
    sub_19393CAD0();
    OUTLINED_FUNCTION_10_38();
    sub_19344A924(v52, v53);
    sub_19393C540();
    v54 = OUTLINED_FUNCTION_175_0();
    sub_19344A738(v54, v55);
  }

  v56 = v72;
  sub_1934486F8(v1 + v43[9], v21, &qword_1EAE3F490, &qword_193974818);
  OUTLINED_FUNCTION_6_3(v21, 1, v51);
  if (v48)
  {
    sub_19393CAD0();
  }

  else
  {
    v57 = v66;
    sub_19362E170(v21, v66, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
    sub_19393CAD0();
    OUTLINED_FUNCTION_15_34();
    sub_19344A924(v58, v59);
    sub_19393C540();
    sub_19344A738(v57, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  }

  v60 = v71;
  sub_1934486F8(v1 + v43[10], v71, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v60, 1, v56);
  if (v48)
  {
    return sub_19393CAD0();
  }

  v61 = v67;
  sub_19362E170(v60, v67, type metadata accessor for MonotonicTimestamp);
  sub_19393CAD0();
  OUTLINED_FUNCTION_14_29();
  sub_19344A924(v62, v63);
  sub_19393C540();
  return sub_19344A738(v61, type metadata accessor for MonotonicTimestamp);
}

void IntelligenceFlowPlanResolutionTelemetry.PRFatalError.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 0;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 1;
      break;
    case 8:
      v2 = 2;
      break;
    case 9:
      v2 = 3;
      break;
    case 10:
      v2 = 4;
      break;
    case 11:
      v2 = 5;
      break;
    case 12:
      v2 = 6;
      break;
    case 14:
      v2 = 7;
      break;
    case 15:
      v2 = 8;
      break;
    case 16:
      v2 = 9;
      break;
    case 17:
      v2 = 10;
      break;
    case 18:
      v2 = 11;
      break;
    case 19:
      v2 = 12;
      break;
    case 20:
      v2 = 13;
      break;
    case 21:
      v2 = 14;
      break;
    case 22:
      v2 = 15;
      break;
    case 23:
      v2 = 16;
      break;
    case 24:
      v2 = 17;
      break;
    case 25:
      v2 = 18;
      break;
    default:
      v2 = a2;
      break;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939749F0[result];
  }

  return result;
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRFatalError.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F540, &qword_1939749E8);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v124 = OUTLINED_FUNCTION_39(v4);
    v128 = OUTLINED_FUNCTION_84_2(v124, v125, v126, v127, &qword_1EAE3F540, &qword_1939749E8);
    v0 = OUTLINED_FUNCTION_17_2(v128);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v129 = OUTLINED_FUNCTION_39(v4);
    v133 = OUTLINED_FUNCTION_85(v129, v130, v131, v132, &qword_1EAE3F540, &qword_1939749E8);
    v0 = OUTLINED_FUNCTION_17_2(v133);
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v134 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v134, v5 + 3, 1, v135, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v136 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v136, v137, v138, v139, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v140 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v140, v141, v142, v143, &qword_1EAE3F540, &qword_1939749E8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16, v17);
  if ((v5 + 6) > (v22 >> 1))
  {
    v144 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v144, v145, v146, v147, &qword_1EAE3F540, &qword_1939749E8);
    v21 = v18;
  }

  OUTLINED_FUNCTION_50(v18, v19, v20, v21);
  OUTLINED_FUNCTION_4(v23, v24);
  if ((v5 + 7) > (v29 >> 1))
  {
    v148 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_85(v148, v149, v150, v151, &qword_1EAE3F540, &qword_1939749E8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_47_5(v25, v26, v27, v28);
  OUTLINED_FUNCTION_4(v30, v31);
  if ((v5 + 8) > (v36 >> 1))
  {
    v152 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_84_2(v152, v153, v154, v155, &qword_1EAE3F540, &qword_1939749E8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_50(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37, v38);
  if ((v5 + 9) > (v43 >> 1))
  {
    v156 = OUTLINED_FUNCTION_39(v43);
    v39 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE3F540, &qword_1939749E8);
    v42 = v39;
  }

  OUTLINED_FUNCTION_47_5(v39, v40, v41, v42);
  OUTLINED_FUNCTION_4(v44, v45);
  if ((v5 + 10) > (v50 >> 1))
  {
    v160 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE3F540, &qword_1939749E8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_50(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51, v52);
  if ((v5 + 11) > (v57 >> 1))
  {
    v164 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE3F540, &qword_1939749E8);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58, v59);
  if ((v5 + 12) > (v64 >> 1))
  {
    v168 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_84_2(v168, v169, v170, v171, &qword_1EAE3F540, &qword_1939749E8);
    v63 = v60;
  }

  OUTLINED_FUNCTION_50(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4(v65, v66);
  if ((v5 + 13) > (v71 >> 1))
  {
    v172 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE3F540, &qword_1939749E8);
    v70 = v67;
  }

  OUTLINED_FUNCTION_47_5(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72, v73);
  if ((v5 + 14) > (v78 >> 1))
  {
    v176 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE3F540, &qword_1939749E8);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79, v80);
  if ((v5 + 15) > (v85 >> 1))
  {
    v180 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE3F540, &qword_1939749E8);
    v84 = v81;
  }

  OUTLINED_FUNCTION_47_5(v81, v82, v83, v84);
  OUTLINED_FUNCTION_4(v86, v87);
  if ((v5 + 16) > (v92 >> 1))
  {
    v184 = OUTLINED_FUNCTION_39(v92);
    v88 = OUTLINED_FUNCTION_84_2(v184, v185, v186, v187, &qword_1EAE3F540, &qword_1939749E8);
    v91 = v88;
  }

  OUTLINED_FUNCTION_50(v88, v89, v90, v91);
  OUTLINED_FUNCTION_4(v93, v94);
  if ((v5 + 17) > (v99 >> 1))
  {
    v188 = OUTLINED_FUNCTION_39(v99);
    v95 = OUTLINED_FUNCTION_85(v188, v189, v190, v191, &qword_1EAE3F540, &qword_1939749E8);
    v98 = v95;
  }

  OUTLINED_FUNCTION_47_5(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100, v101);
  if ((v5 + 18) > (v106 >> 1))
  {
    v192 = OUTLINED_FUNCTION_39(v106);
    v102 = OUTLINED_FUNCTION_84_2(v192, v193, v194, v195, &qword_1EAE3F540, &qword_1939749E8);
    v105 = v102;
  }

  OUTLINED_FUNCTION_50(v102, v103, v104, v105);
  OUTLINED_FUNCTION_4(v107, v108);
  if ((v5 + 19) > (v113 >> 1))
  {
    v196 = OUTLINED_FUNCTION_39(v113);
    v109 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE3F540, &qword_1939749E8);
    v112 = v109;
  }

  OUTLINED_FUNCTION_47_5(v109, v110, v111, v112);
  OUTLINED_FUNCTION_4(v114, v115);
  if ((v5 + 20) > (v120 >> 1))
  {
    v200 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v200, v201, v202, v203, &qword_1EAE3F540, &qword_1939749E8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_50(v116, v117, v118, v119);
  *(v121 + 32) = 18;
  *(v121 + 40) = 1;
  return v122;
}

unint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x46746F4E6C6F6F54;
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_187_1();
      result = v4 | 6;
      break;
    case 2:
      return result;
    case 3:
    case 0x10:
    case 0x11:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = OUTLINED_FUNCTION_35_22();
      break;
    case 6:
      result = OUTLINED_FUNCTION_30_17();
      break;
    case 7:
    case 0xCLL:
    case 0x12:
      OUTLINED_FUNCTION_187_1();
      result = v6 | 3;
      break;
    case 8:
      result = OUTLINED_FUNCTION_29_19();
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xALL:
      OUTLINED_FUNCTION_187_1();
      result = v7 | 0xC;
      break;
    case 0xBLL:
      OUTLINED_FUNCTION_187_1();
      result = v3 | 4;
      break;
    case 0xDLL:
      OUTLINED_FUNCTION_187_1();
      result = v5 | 2;
      break;
    case 0xELL:
      OUTLINED_FUNCTION_187_1();
      result = v2 | 1;
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_31_26();
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRFatalError.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_60();
  v9 = v4 && v8 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0xD000000000000016 && 0x8000000193A2A2F0 == v1;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  v11 = v2 == 0x46746F4E6C6F6F54 && v1 == 0xEC000000646E756FLL;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v12 = v2 == 0xD000000000000015 && 0x8000000193A2A2D0 == v1;
    if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v7 = 1;
      v6 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v14 = v4 && v13 == v1;
      if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v7 = 1;
        v6 = 4;
      }

      else
      {
        v16 = v2 == OUTLINED_FUNCTION_35_22() && v1 == v15;
        if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v7 = 1;
          v6 = 5;
        }

        else
        {
          v18 = v2 == OUTLINED_FUNCTION_30_17() && v1 == v17;
          if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v7 = 1;
            v6 = 6;
          }

          else
          {
            OUTLINED_FUNCTION_187_1();
            v21 = v2 == v20 + 3 && v19 == v1;
            if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v7 = 1;
              v6 = 7;
            }

            else
            {
              v23 = v2 == OUTLINED_FUNCTION_29_19() && v1 == v22;
              if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v7 = 1;
                v6 = 8;
              }

              else
              {
                OUTLINED_FUNCTION_187_1();
                v26 = v2 == v25 && v24 == v1;
                if (v26 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v7 = 1;
                  v6 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_187_1();
                  v29 = v2 == v28 + 12 && v27 == v1;
                  if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v7 = 1;
                    v6 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_187_1();
                    v32 = v2 == v31 + 4 && v30 == v1;
                    if (v32 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v7 = 1;
                      v6 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_60();
                      v34 = v4 && v33 == v1;
                      if (v34 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9() & 1) != 0))
                      {

                        v7 = 1;
                        v6 = 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_187_1();
                        v37 = v2 == v36 + 2 && v35 == v1;
                        if (v37 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          v7 = 1;
                          v6 = 13;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_187_1();
                          v40 = v2 == v39 + 1 && v38 == v1;
                          if (v40 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            v7 = 1;
                            v6 = 14;
                          }

                          else
                          {
                            v42 = v2 == OUTLINED_FUNCTION_31_26() && v1 == v41;
                            if (v42 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              v7 = 1;
                              v6 = 15;
                            }

                            else
                            {
                              v43 = v2 == 0xD000000000000015 && 0x8000000193A2A1B0 == v1;
                              if (v43 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9() & 1) != 0))
                              {

                                v7 = 1;
                                v6 = 16;
                              }

                              else
                              {
                                v44 = v2 == 0xD000000000000015 && 0x8000000193A2A190 == v1;
                                if (v44 || (OUTLINED_FUNCTION_39_6(), (OUTLINED_FUNCTION_0_9() & 1) != 0))
                                {

                                  v7 = 1;
                                  v6 = 17;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_60();
                                  if (v4 && v45 == v1)
                                  {

                                    v7 = 1;
                                    v6 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_39_6();
                                    v7 = OUTLINED_FUNCTION_0_9();

                                    v6 = 18;
                                    if ((v7 & 1) == 0)
                                    {
                                      v6 = 0;
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

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F538, &qword_1939749E0);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v13 = OUTLINED_FUNCTION_39(v4);
    v17 = OUTLINED_FUNCTION_84_2(v13, v14, v15, v16, &qword_1EAE3F538, &qword_1939749E0);
    v0 = OUTLINED_FUNCTION_17_2(v17);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  if (v6 < (v5 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v4);
    v22 = OUTLINED_FUNCTION_85(v18, v19, v20, v21, &qword_1EAE3F538, &qword_1939749E0);
    v0 = OUTLINED_FUNCTION_17_2(v22);
  }

  *(v3 + 16) = v5 + 2;
  v9 = v3 + 16 * v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v23 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v23, v24, v25, v26, &qword_1EAE3F538, &qword_1939749E0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_50(v0, v1, v2, v3);
  *(v10 + 32) = 1;
  *(v10 + 40) = 1;
  return v11;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6F7365526C6F6F54;
  }

  *v0;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 0x6F7365526C6F6F54 && v1 == 0xEE006E6F6974756CLL;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_39_6();
      if (v2 != v9 || 0x8000000193A2A270 != v1)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

uint64_t static IntelligenceFlowPlanResolutionTelemetry.PRRequestContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v75 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  v4 = OUTLINED_FUNCTION_4_1(v75);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v73 = v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4E8, &qword_193974918);
  OUTLINED_FUNCTION_4_1(v74);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_105_8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  v23 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F4F0, &qword_193974920);
  OUTLINED_FUNCTION_47(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v72 - v38;
  v40 = &v72 + *(v37 + 56) - v38;
  sub_19362E064(v76, &v72 - v38);
  sub_19362E064(v77, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_19362E064(v39, v30);
      v42 = *v30;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = *v40;
        if (v42 == 3)
        {
          v44 = v43 == 3;
LABEL_26:
          OUTLINED_FUNCTION_11_28();
          sub_19344A738(v39, v57);
          return v44 & 1;
        }

        LOBYTE(v80) = v42;
        if (v43 != 3)
        {
          LOBYTE(v78) = v43;
          sub_19362E11C();
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_19362E064(v39, v2);
      v47 = *v2;
      v48 = *(v2 + 8);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v49 = *(v2 + 10);
        v44 = v40[10];
        if (v49)
        {
          goto LABEL_26;
        }

        v50 = *v40;
        v51 = *(v40 + 4);
        v80 = v47;
        v81 = v48;
        v82 = 0;
        if ((v44 & 1) == 0)
        {
          v78 = v50;
          v79 = v51 & 0x1FF;
          sub_19362E0C8();
LABEL_20:
          v44 = sub_19393C550();
          goto LABEL_26;
        }

LABEL_25:
        v44 = 0;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v76 = v20;
    v77 = v22;
    v45 = v74;
    v46 = v75;
    sub_19362E064(v39, v32);
    if (!swift_getEnumCaseMultiPayload())
    {
      v52 = v77;
      sub_19362B494(v32, v77);
      v53 = v40;
      v54 = v76;
      sub_19362B494(v53, v76);
      v55 = *(v45 + 48);
      sub_1934486F8(v52, v3, &qword_1EAE3F498, &qword_193974820);
      sub_1934486F8(v54, v3 + v55, &qword_1EAE3F498, &qword_193974820);
      OUTLINED_FUNCTION_6_3(v3, 1, v46);
      if (v56)
      {
        OUTLINED_FUNCTION_47_7(v54);
        OUTLINED_FUNCTION_47_7(v52);
        OUTLINED_FUNCTION_6_3(v3 + v55, 1, v46);
        if (v56)
        {
          sub_19344E6DC(v3, &qword_1EAE3F498, &qword_193974820);
          v44 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1934486F8(v3, v17, &qword_1EAE3F498, &qword_193974820);
        OUTLINED_FUNCTION_6_3(v3 + v55, 1, v46);
        if (!v56)
        {
          sub_19362E170(v3 + v55, v73, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
          OUTLINED_FUNCTION_9_52();
          sub_19344A924(v59, v60);
          v44 = sub_19393C550();
          v61 = OUTLINED_FUNCTION_175_0();
          sub_19344A738(v61, v62);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v63, v64, v65);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v66, v67, v68);
          sub_19344A738(v17, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
          OUTLINED_FUNCTION_2_0();
          sub_19344E6DC(v69, v70, v71);
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_47_7(v76);
        OUTLINED_FUNCTION_47_7(v77);
        sub_19344A738(v17, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      }

      sub_19344E6DC(v3, &qword_1EAE3F4E8, &qword_193974918);
      goto LABEL_25;
    }

    sub_19344E6DC(v32, &qword_1EAE3F498, &qword_193974820);
  }

  sub_19344E6DC(v39, &qword_1EAE3F4F0, &qword_193974920);
  v44 = 0;
  return v44 & 1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestContext.hash(into:)()
{
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28[-v13];
  v15 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v21 = v20 - v19;
  sub_19362E064(v0, v20 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v21 != 3)
      {
        v28[15] = *v21;
        sub_19393CAD0();
        sub_19362E224();
        return sub_19393C540();
      }
    }

    else if (*(v21 + 10) != 1)
    {
      v27 = *(v21 + 8);
      v29 = *v21;
      v30 = v27 & 0x1FF;
      sub_19393CAD0();
      sub_19362E1D0();
      return sub_19393C540();
    }

    return sub_19393CAD0();
  }

  sub_19362B494(v21, v14);
  sub_1934486F8(v14, v0, &qword_1EAE3F498, &qword_193974820);
  OUTLINED_FUNCTION_6_3(v0, 1, v1);
  if (v23)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19362E170(v0, v7, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
    sub_19393CAD0();
    OUTLINED_FUNCTION_9_52();
    sub_19344A924(v25, v26);
    sub_19393C540();
    sub_19344A738(v7, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
  }

  return sub_19344E6DC(v14, &qword_1EAE3F498, &qword_193974820);
}

uint64_t sub_19362E064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19362E0C8()
{
  result = qword_1EAE3F4F8;
  if (!qword_1EAE3F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F4F8);
  }

  return result;
}

unint64_t sub_19362E11C()
{
  result = qword_1EAE3F500;
  if (!qword_1EAE3F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F500);
  }

  return result;
}

uint64_t sub_19362E170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_19362E1D0()
{
  result = qword_1EAE3F510;
  if (!qword_1EAE3F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F510);
  }

  return result;
}

unint64_t sub_19362E224()
{
  result = qword_1EAE3F518;
  if (!qword_1EAE3F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F518);
  }

  return result;
}

unint64_t sub_19362E27C()
{
  result = qword_1EAE3F528;
  if (!qword_1EAE3F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F528);
  }

  return result;
}

unint64_t sub_19362E2D4()
{
  result = qword_1EAE3F530;
  if (!qword_1EAE3F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F530);
  }

  return result;
}

void sub_19362E328()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB678);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  *v0 = "eventMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_52();
  *v11 = 10;
  v12 = OUTLINED_FUNCTION_0_0(v10, "requestContext");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 12;
  *v13 = "jrCallContext";
  v13[1] = 13;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v17 = 1001;
  v18 = OUTLINED_FUNCTION_0_0(v16, "monotonicTimestamp");
  (v9)(v18);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362E4C8()
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
      case 1001:
        v6 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0) + 40);
        type metadata accessor for MonotonicTimestamp();
        OUTLINED_FUNCTION_42_4();
LABEL_12:
        sub_193498018();
        break;
      case 10:
        v4 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0) + 32);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
      case 12:
        v5 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0) + 36);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
      case 1:
        v3 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0) + 28);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19362E5D4()
{
  OUTLINED_FUNCTION_46_5();
  sub_19362E634();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_19362E754();
    OUTLINED_FUNCTION_46_5();
    sub_19362E864();
    OUTLINED_FUNCTION_46_5();
    sub_19362E984();
  }
}

void sub_19362E634()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_18();
  v15 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v15 + 28));
  OUTLINED_FUNCTION_20_10();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3F480, &qword_193974810);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17();
    sub_193630B4C(v1, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E754()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_18();
  v15 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v15 + 32));
  OUTLINED_FUNCTION_20_10();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3F488, &qword_193974B60);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_4_44();
    sub_193630B4C(v1, v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E864()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_18();
  v15 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v15 + 36));
  OUTLINED_FUNCTION_20_10();
  if (v16)
  {
    sub_19344E6DC(v0, &qword_1EAE3F490, &qword_193974818);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17();
    sub_193630B4C(v1, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362E984()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = type metadata accessor for MonotonicTimestamp();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_18();
  v14 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(0);
  OUTLINED_FUNCTION_39_1(*(v14 + 40));
  OUTLINED_FUNCTION_20_10();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    OUTLINED_FUNCTION_34_25();
    OUTLINED_FUNCTION_17();
    sub_193630B4C(v1, type metadata accessor for MonotonicTimestamp);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362EB08()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAB690);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_193961690;
  v7 = v68 + v6;
  *(v68 + v6) = 0;
  OUTLINED_FUNCTION_63("PRFatalErrorUnknown");
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_52();
  *v13 = 1;
  *v12 = "PRFatalErrorMissingStatement";
  v12[1] = 28;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_46_10();
  *v16 = v0;
  v17 = OUTLINED_FUNCTION_0_0(v15, "PRFatalErrorMissingTranscriptEvent");
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v19 = 8;
  v20 = OUTLINED_FUNCTION_0_0(v18, "PRFatalErrorToolNotFound");
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v7 + 4 * v4);
  *v22 = 9;
  v23 = OUTLINED_FUNCTION_0_0(v21, "PRFatalErrorToolParameterNotFound");
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v25 = 10;
  *v24 = "PRFatalErrorEnumCaseNotFound";
  v24[1] = 28;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v7 + 6 * v4);
  *v28 = 11;
  v29 = OUTLINED_FUNCTION_0_0(v27, "PRFatalErrorNotIterable");
  (v11)(v29);
  v30 = OUTLINED_FUNCTION_45_2(7 * v4);
  *v31 = 12;
  v32 = OUTLINED_FUNCTION_0_0(v30, "PRFatalErrorEvaluatorFailed");
  (v11)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v7 + 8 * v4);
  *v34 = 14;
  v35 = OUTLINED_FUNCTION_0_0(v33, "PRFatalErrorInvalidParameterSet");
  (v11)(v35);
  v36 = OUTLINED_FUNCTION_45_2(9 * v4);
  *v37 = 15;
  v38 = OUTLINED_FUNCTION_0_0(v36, "PRFatalErrorValueNotFound");
  (v11)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v7 + 10 * v4);
  *v40 = 16;
  *v39 = "PRFatalErrorActionResolution";
  v39[1] = 28;
  v41 = OUTLINED_FUNCTION_1_3(v39);
  (v11)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v7 + 11 * v4);
  *v43 = 17;
  v44 = OUTLINED_FUNCTION_0_0(v42, "PRFatalErrorSystemPromptResolutionFailed");
  (v11)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v7 + 12 * v4);
  *v46 = 18;
  v47 = OUTLINED_FUNCTION_0_0(v45, "PRFatalErrorInvalidToolParameter");
  (v11)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v7 + 13 * v4);
  *v49 = 19;
  *v48 = "PRFatalErrorUnableToConvertType";
  v48[1] = 31;
  v50 = OUTLINED_FUNCTION_1_3(v48);
  (v11)(v50);
  v51 = OUTLINED_FUNCTION_3_1(v7 + 14 * v4);
  *v52 = 20;
  v53 = OUTLINED_FUNCTION_0_0(v51, "PRFatalErrorSearchNotSupported");
  (v11)(v53);
  v54 = OUTLINED_FUNCTION_45_2(15 * v4);
  *v55 = 21;
  v56 = OUTLINED_FUNCTION_0_0(v54, "PRFatalErrorInvalidExpression");
  (v11)(v56);
  v57 = OUTLINED_FUNCTION_3_1(v7 + 16 * v4);
  *v58 = 22;
  v59 = OUTLINED_FUNCTION_0_0(v57, "PRFatalErrorMissingContext");
  (v11)(v59);
  v60 = OUTLINED_FUNCTION_45_2(17 * v4);
  *v61 = 23;
  *v60 = "PRFatalErrorInvalidParameterValue";
  v60[1] = 33;
  v62 = OUTLINED_FUNCTION_1_3(v60);
  (v11)(v62);
  v63 = OUTLINED_FUNCTION_3_1(v7 + 18 * v4);
  *v64 = 24;
  *v63 = "PRFatalErrorParameterTypeMismatch";
  v63[1] = 33;
  v65 = OUTLINED_FUNCTION_1_3(v63);
  (v11)(v65);
  v66 = OUTLINED_FUNCTION_3_1(v7 + 19 * v4);
  *v67 = 25;
  *v66 = "PRFatalErrorNoQueryForParameter";
  *(v66 + 8) = 31;
  *(v66 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19362EFEC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB6A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "PRJointResolverCallTypeUnknown";
  *(v0 + 8) = 30;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 1;
  *v11 = "PRJointResolverCallTypeToolResolution";
  v11[1] = 37;
  v13 = OUTLINED_FUNCTION_70(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = 2;
  *v14 = "PRJointResolverCallTypeActionResolution";
  *(v14 + 8) = 39;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F194()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB6C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "ifRequestId";
  *(v0 + 8) = 11;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 4;
  *v11 = "spanId";
  v11[1] = 6;
  v13 = OUTLINED_FUNCTION_70(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = 5;
  *v14 = "prId";
  v14[1] = 4;
  v16 = OUTLINED_FUNCTION_70(v14);
  (v10)(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F310()
{
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
      case 5:
        v4 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 24);
        type metadata accessor for AIML.UUID();
LABEL_10:
        OUTLINED_FUNCTION_37_8();
        break;
      case 4:
        v3 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20);
        sub_19393C230();
        break;
      case 1:
        type metadata accessor for AIML.UUID();
        goto LABEL_10;
    }
  }
}

void sub_19362F3DC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_19362F46C();
  if (!v1)
  {
    v2 = (v0 + *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20));
    if ((v2[1] & 1) == 0)
    {
      v3 = *v2;
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19362F56C();
  }
}

void sub_19362F46C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_247();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_18();
  sub_1934486F8(v2, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_20_10();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v1, v16);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362F56C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_247();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = type metadata accessor for AIML.UUID();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_18();
  v14 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  OUTLINED_FUNCTION_39_1(*(v14 + 24));
  OUTLINED_FUNCTION_20_10();
  if (v15)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_30_18();
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v1, v16);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19362F6CC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB6D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("originTaskStatementId");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_52();
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_0_0(v10, "actionStatementId");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 3;
  *v13 = "statementId";
  v13[1] = 11;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v17 = 4;
  *v16 = "planCycleId";
  *(v16 + 8) = 11;
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19362F864()
{
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
      case 2:
      case 3:
        sub_19393C220();
        break;
      case 4:
        v3 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0) + 28);
        type metadata accessor for AIML.UUID();
        OUTLINED_FUNCTION_37_8();
        break;
      default:
        continue;
    }
  }
}

void sub_19362F934()
{
  OUTLINED_FUNCTION_50_13();
  if ((v1[1] & 1) == 0)
  {
    v2 = *v1;
    sub_19393C3D0();
  }

  if (!v0)
  {
    if ((v1[3] & 1) == 0)
    {
      v3 = v1[2];
      sub_19393C3D0();
    }

    if ((v1[5] & 1) == 0)
    {
      v4 = v1[4];
      sub_19393C3D0();
    }

    OUTLINED_FUNCTION_47_21();
    sub_19363090C();
  }
}

uint64_t sub_19362FA54()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 101)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

uint64_t sub_19362FAB0()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_61_16();
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_19362FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 9) & 1) == 0)
  {
    v6 = *(v5 + 8);
    v8 = *v5;
    v9 = v6 & 1;
    return sub_193447324(&v8, 1, a2, a4, a3, a5);
  }

  return result;
}

uint64_t sub_19362FD00()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_61_16();
    return sub_19393C2E0();
  }

  return result;
}

uint64_t sub_19362FDB4()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C0F0();
    }
  }

  return result;
}

uint64_t sub_19362FE44@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_19362FEA4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB768);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "startedOrChanged";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_52();
  *v12 = 2;
  *v11 = "ended";
  v11[1] = 5;
  v13 = OUTLINED_FUNCTION_70(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_46_10();
  *v15 = 3;
  *v14 = "failed";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193630024()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  while (1)
  {
    v8 = OUTLINED_FUNCTION_124();
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 3:
        v16 = 0;
        v17 = 0;
        v18 = 1;
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v13);
        v14 = v17;
        v15 = v18;
        *v1 = v16;
        *(v1 + 8) = v14;
        *(v1 + 10) = v15;
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v12);
        *v1 = 3;
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 1:
        v10 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
        sub_193498018();
        OUTLINED_FUNCTION_4_44();
        sub_193630B4C(v1, v11);
        sub_19362B494(v7, v1);
        type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193630244()
{
  OUTLINED_FUNCTION_26();
  v30[0] = v1;
  v30[1] = v0;
  v2 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F498, &qword_193974820);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  v18 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(0);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v24 = v23 - v22;
  v25 = OUTLINED_FUNCTION_247();
  sub_19362E064(v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v24 != 3)
      {
        goto LABEL_9;
      }
    }

    else if ((*(v24 + 10) & 1) == 0)
    {
      v29 = *(v24 + 8);
      v30[2] = *v24;
      v31 = v29 & 0x1FF;
LABEL_9:
      sub_193447600();
    }
  }

  else
  {
    sub_19362B494(v24, v17);
    sub_1934486F8(v17, v15, &qword_1EAE3F498, &qword_193974820);
    if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
    {
      sub_19344E6DC(v17, &qword_1EAE3F498, &qword_193974820);
      v28 = v15;
    }

    else
    {
      sub_193630AEC(v15, v8, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      sub_193447600();
      sub_193630B4C(v8, type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted);
      v28 = v17;
    }

    sub_19344E6DC(v28, &qword_1EAE3F498, &qword_193974820);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193630558()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB780);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_11_3(v5, xmmword_19394FBC0);
  OUTLINED_FUNCTION_63("startedOrChanged");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_52();
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_0_0(v10, "ended");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_46_10();
  *v14 = 3;
  *v13 = "failed";
  v13[1] = 6;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v4);
  *v17 = 6;
  *v16 = "traceId";
  *(v16 + 8) = 7;
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936306F0()
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
      case 2:
      case 3:
        goto LABEL_6;
      case 6:
        v3 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0) + 28);
        type metadata accessor for AIML.UUID();
LABEL_6:
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193630808()
{
  OUTLINED_FUNCTION_50_13();
  if ((*(v1 + 10) & 1) == 0)
  {
    v2 = *v1;
    v3 = v1[1] & 0x1FF;
    sub_193447600();
  }

  if (!v0)
  {
    if (*(v1 + 11) != 3)
    {
      v4 = *(v1 + 11);
      sub_193447600();
    }

    if (*(v1 + 12) != 3)
    {
      v5 = *(v1 + 12);
      sub_193447600();
    }

    OUTLINED_FUNCTION_47_21();
    sub_19363090C();
  }
}

void sub_19363090C()
{
  OUTLINED_FUNCTION_26();
  v21[0] = v1;
  v21[1] = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v3(0);
  sub_1934486F8(v5 + *(v19 + 28), v11, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19344E6DC(v11, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_193630AEC(v11, v18, type metadata accessor for AIML.UUID);
    sub_193447600();
    OUTLINED_FUNCTION_11_29();
    sub_193630B4C(v18, v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193630AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193630B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 20);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630D78()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.eventMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630E60()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F488, &qword_193974B60, *(v1 + 32));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 32);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.requestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193630F74()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3F490, &qword_193974818, *(v1 + 36));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 36);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.jrCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 40));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19363114C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanResolutionTelemetry.PRFatalError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193631174@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowPlanResolutionTelemetry.PRFatalError.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936311D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_1936312E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936313F4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19363141C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.spanId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.spanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.spanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BCA0, &unk_19395C320, *(v1 + 24));
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0) + 24);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.prId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v6 = *(v5 + 24);
  v7 = v0 + *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_19344E6DC(v0 + v6, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_26_18();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v52 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v51 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v51 - v26;
  v28 = *(v25 + 48);
  sub_1934487B4(v1, &v51 - v26, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v0, &v27[v28], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v27);
  if (v29)
  {
    OUTLINED_FUNCTION_31(&v27[v28]);
    if (v29)
    {
      sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_13;
    }

LABEL_9:
    v30 = v27;
LABEL_10:
    sub_19344E6DC(v30, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  sub_1934487B4(v27, v16, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v27[v28]);
  if (v29)
  {
    sub_1934F8A10(v16);
    goto LABEL_9;
  }

  v32 = &v27[v28];
  v33 = v52;
  sub_19355A5F8(v32, v52);
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v34, v35);
  v36 = sub_19393C550();
  sub_1934F8A10(v33);
  sub_1934F8A10(v16);
  sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v37 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v38 = *(v37 + 20);
  v39 = (v1 + v38);
  v40 = *(v1 + v38 + 8);
  v41 = (v0 + v38);
  v42 = *(v0 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = *(v37 + 24);
  v44 = *(v17 + 48);
  sub_1934487B4(v1 + v43, v23, &qword_1EAE3BCA0, &unk_19395C320);
  sub_1934487B4(v0 + v43, v23 + v44, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v23);
  if (!v29)
  {
    v45 = v51;
    sub_1934487B4(v23, v51, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v23 + v44);
    if (!v46)
    {
      v47 = v52;
      sub_19355A5F8(v23 + v44, v52);
      OUTLINED_FUNCTION_0_56();
      sub_193631D9C(v48, v49);
      v50 = OUTLINED_FUNCTION_139();
      sub_1934F8A10(v47);
      sub_1934F8A10(v45);
      sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
      return (v50 & 1) != 0;
    }

    sub_1934F8A10(v45);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_31(v23 + v44);
  if (!v29)
  {
LABEL_27:
    v30 = v23;
    goto LABEL_10;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
  return 1;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata.hash(into:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  OUTLINED_FUNCTION_52_1(v2, &v26 - v15);
  OUTLINED_FUNCTION_5_9(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v16, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_56();
    sub_193631D9C(v18, v19);
    OUTLINED_FUNCTION_33();
    sub_1934F8A10(v1);
  }

  v20 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRClientEventMetadata(0);
  v21 = v2 + *(v20 + 20);
  if (*(v21 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v22);
  }

  sub_1934487B4(v2 + *(v20 + 24), v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v13);
  if (v17)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v13, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v23, v24);
  OUTLINED_FUNCTION_33();
  return sub_1934F8A10(v1);
}

uint64_t sub_193631D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.originTaskStatementId.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.actionStatementId.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.statementId.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.planCycleId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(v1) + 28);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0;
  *(v0 + 4) = 1;
  *(v0 + 8) = 0;
  *(v0 + 12) = 1;
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  sub_19344E6DC(v0 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_26_18();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_150();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = *(v1 + 4);
  if (*(v2 + 4))
  {
    if (!*(v1 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = *(v1 + 12);
  if (*(v2 + 12))
  {
    if (!*(v1 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(v1 + 20);
  if (*(v2 + 20))
  {
    if (!*(v1 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 16) != *(v1 + 16))
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0) + 28);
  v24 = *(v14 + 48);
  OUTLINED_FUNCTION_52_1(v2 + v23, v19);
  OUTLINED_FUNCTION_52_1(v1 + v23, &v19[v24]);
  OUTLINED_FUNCTION_31(v19);
  if (v25)
  {
    OUTLINED_FUNCTION_31(&v19[v24]);
    if (v25)
    {
      sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
      return 1;
    }

LABEL_27:
    sub_19344E6DC(v19, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  sub_1934487B4(v19, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v19[v24]);
  if (v25)
  {
    sub_1934F8A10(v0);
    goto LABEL_27;
  }

  sub_19355A5F8(&v19[v24], v9);
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v27, v28);
  v29 = OUTLINED_FUNCTION_139();
  sub_1934F8A10(v9);
  sub_1934F8A10(v0);
  sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
  return (v29 & 1) != 0;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted.hash(into:)()
{
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v14 = *v0;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  if (*(v0 + 12) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v15 = v0[2];
    sub_19393CAD0();
    sub_19393CAE0();
  }

  if (*(v0 + 20) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v16 = v0[4];
    sub_19393CAD0();
    sub_19393CAE0();
  }

  v17 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRRequestStarted(0);
  sub_1934487B4(v0 + *(v17 + 28), v13, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    return sub_19393CAD0();
  }

  sub_19355A5F8(v13, v7);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v19, v20);
  sub_19393C540();
  return sub_1934F8A10(v7);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRRequestEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRRequestFailed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

BOOL sub_19363270C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a2 + 9);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v10 = *a1;
    v11 = a1[1] & 1;
    v8 = *a2;
    v9 = a2[1] & 1;
    v6 = (a3)(a1, a2, a3, a4);
    return v6 == a3();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t sub_1936327C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(v2 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v5 = *(v2 + 8);
  v6 = *v2;
  v7 = OUTLINED_FUNCTION_103_0();
  v8 = a2(v7);
  return MEMORY[0x193B18030](v8);
}

uint64_t sub_19363285C(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v3 = a1();
    MEMORY[0x193B18030](v3);
  }

  return sub_19393CB00();
}

uint64_t sub_193632900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_190();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_180();
    v6 = a4();
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

void IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.startedOrChanged.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.startedOrChanged.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 11) = 771;
  v2 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0) + 28);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
  *(a1 + 11) = 771;
  sub_19344E6DC(a1 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

BOOL static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_26_18();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_150();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = *(v1 + 10);
  if (*(v2 + 10))
  {
    if ((*(v1 + 10) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *v1;
    v24 = *(v1 + 8);
    v25 = *(v2 + 8);
    v39 = *v2;
    v40 = v25;
    v41 = 0;
    if (v22)
    {
      return 0;
    }

    v37 = v23;
    v38 = v24 & 0x1FF;
    if (!static IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallStarted.== infix(_:_:)(&v39, &v37, v18, v19))
    {
      return 0;
    }
  }

  v26 = *(v2 + 11);
  v27 = *(v1 + 11);
  if (v26 == 3)
  {
    if (v27 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v27 == 3)
    {
      return 0;
    }

    if (v26 == 2)
    {
      if (v27 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
      {
        return result;
      }
    }
  }

  v28 = *(v2 + 12);
  v29 = *(v1 + 12);
  if (v28 == 3)
  {
    if (v29 != 3)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v29 == 3)
  {
    return 0;
  }

  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  result = 0;
  if (v29 != 2 && ((v29 ^ v28) & 1) == 0)
  {
LABEL_10:
    v30 = *(type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0) + 28);
    v31 = *(v14 + 48);
    OUTLINED_FUNCTION_52_1(v2 + v30, v21);
    OUTLINED_FUNCTION_52_1(v1 + v30, &v21[v31]);
    OUTLINED_FUNCTION_31(v21);
    if (v33)
    {
      OUTLINED_FUNCTION_31(&v21[v31]);
      if (v33)
      {
        sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
        return 1;
      }
    }

    else
    {
      sub_1934487B4(v21, v0, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(&v21[v31]);
      if (!v33)
      {
        sub_19355A5F8(&v21[v31], v9);
        OUTLINED_FUNCTION_0_56();
        sub_193631D9C(v34, v35);
        v36 = OUTLINED_FUNCTION_139();
        sub_1934F8A10(v9);
        sub_1934F8A10(v0);
        sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
        return (v36 & 1) != 0;
      }

      sub_1934F8A10(v0);
    }

    sub_19344E6DC(v21, &qword_1EAE3BD08, &qword_1939595A0);
    return 0;
  }

  return result;
}

uint64_t IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext.hash(into:)()
{
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  if (*(v0 + 10) == 1 || (v12 = *v0, v13 = *(v0 + 4), OUTLINED_FUNCTION_103_0(), (v13 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v22 = v12;
    v23 = v13 & 1;
    v14 = IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallType.rawValue.getter();
    MEMORY[0x193B18030](v14);
  }

  v15 = *(v0 + 11);
  if (v15 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v15 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v16 = *(v0 + 12);
  if (v16 != 3)
  {
    OUTLINED_FUNCTION_103_0();
    if (v16 != 2)
    {
      OUTLINED_FUNCTION_103_0();
    }
  }

  sub_19393CAD0();
  v17 = type metadata accessor for IntelligenceFlowPlanResolutionTelemetry.PRJointResolverCallContext(0);
  sub_1934487B4(v0 + *(v17 + 28), v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_9(v11);
  if (v18)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v11, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_56();
  sub_193631D9C(v19, v20);
  OUTLINED_FUNCTION_33();
  return sub_1934F8A10(v1);
}

uint64_t sub_193633140(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1936331A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

unint64_t sub_193633220()
{
  result = qword_1EAE3F5F8;
  if (!qword_1EAE3F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F5F8);
  }

  return result;
}

unint64_t sub_1936332A8()
{
  result = qword_1EAE3F610;
  if (!qword_1EAE3F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F610);
  }

  return result;
}

unint64_t sub_193633398()
{
  result = qword_1EAE3F618;
  if (!qword_1EAE3F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F618);
  }

  return result;
}

unint64_t sub_1936333F0()
{
  result = qword_1EAE3F620;
  if (!qword_1EAE3F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F620);
  }

  return result;
}

unint64_t sub_193633448()
{
  result = qword_1EAE3F628;
  if (!qword_1EAE3F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F628);
  }

  return result;
}

void sub_1936335A0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_24(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_24_24(v2, qword_1ED505150);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_24_24(v4, qword_1ED505288);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_24_24(v6, qword_1ED5050B8);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_24_24(v8, &qword_1ED507A78);
            if (v10 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_10_1();
            }
          }
        }
      }
    }
  }
}

void sub_1936336EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_193633788(uint64_t a1)
{
  OUTLINED_FUNCTION_4_45(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_193633854()
{
  sub_19349D1FC(319, qword_1ED506E98);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_4_45(v0, qword_1ED507908);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t _s27IntelligencePlatformLibrary39IntelligenceFlowPlanResolutionTelemetryV14PRRequestEndedVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s27IntelligencePlatformLibrary39IntelligenceFlowPlanResolutionTelemetryV14PRRequestEndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_193633AB0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_24(a1, qword_1ED5051E0);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED5069B0);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED5069A8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        OUTLINED_FUNCTION_10_1();
      }
    }
  }
}

void sub_193633B90()
{
  sub_19349D1FC(319, &qword_1ED506998);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED5050F0);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED5069A0);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_4_45(v2, qword_1ED507908);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

uint64_t sub_193633CE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5110B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5110B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.PromptAnalytics.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_31 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5110B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F638, &qword_193975450);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.PromptAnalytics.attribute(_:)(void (*a1)(void))
{
  result = sub_1936340F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363413C(void (*a1)(void))
{
  result = sub_1936340F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19363416C(uint64_t a1)
{
  result = sub_193634194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193634194()
{
  result = qword_1ED506E50;
  if (!qword_1ED506E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506E50);
  }

  return result;
}

_BYTE *_s15PromptAnalyticsOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesPromptAnalytics.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19363449C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3F640, &qword_1939754C8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3F640, &qword_1939754C8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19363449C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptAnalytics.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3F640, &qword_1939754C8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193634640(v10, a1);
  }

  return result;
}

uint64_t sub_193634640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptAnalytics.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_193636E40() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_193634640(v14, v40);
      v33 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesPromptAnalytics.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F640, &qword_1939754C8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19363449C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3F640, &qword_1939754C8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3F640, &qword_1939754C8);
  return v15;
}

id static GenerativeExperiencesPromptAnalytics.columns.getter()
{
  v170 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x6D617473656D6974, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  v30 = OUTLINED_FUNCTION_105();
  result = OUTLINED_FUNCTION_3_5(v30, 0xEA00000000007265);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v31 = swift_initStackObject();
  v39 = OUTLINED_FUNCTION_2_4(v31, v32, v33, v34, v35, v36, v37, v38, v163);
  OUTLINED_FUNCTION_5_10(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v48);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v49 = swift_initStackObject();
  v57 = OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v164);
  OUTLINED_FUNCTION_5_10(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v66);
  v67 = OUTLINED_FUNCTION_14_19();
  result = OUTLINED_FUNCTION_3_5(v67, 0xE800000000000000);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v68 = swift_initStackObject();
  v76 = OUTLINED_FUNCTION_2_4(v68, v69, v70, v71, v72, v73, v74, v75, v165);
  OUTLINED_FUNCTION_5_10(v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v85);
  v86 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v86 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000, 0xE500000000000000);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v87 = swift_initStackObject();
  v95 = OUTLINED_FUNCTION_2_4(v87, v88, v89, v90, v91, v92, v93, v94, v166);
  OUTLINED_FUNCTION_5_10(v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v104);
  v105 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v105 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v106 = swift_initStackObject();
  v114 = OUTLINED_FUNCTION_2_4(v106, v107, v108, v109, v110, v111, v112, v113, v167);
  OUTLINED_FUNCTION_5_10(v114, v115, v116, v117, v118, v119, v120, v121, v122);
  v123 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v123);
  v124 = OUTLINED_FUNCTION_17_10();
  result = OUTLINED_FUNCTION_3_5(v124, 0xE700000000000000);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v125 = swift_initStackObject();
  v133 = OUTLINED_FUNCTION_2_4(v125, v126, v127, v128, v129, v130, v131, v132, v168);
  OUTLINED_FUNCTION_5_10(v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v142 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v142);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v143, v144, v145, v146, v0, 2, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v169;
  v147 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v156 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v156);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000010, 0x8000000193A17C10);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  *(swift_initStackObject() + 16) = v169;
  v157 = OUTLINED_FUNCTION_6_4();
  *(v157 + 16) = v169;
  *(v157 + 32) = sub_19393C850();
  v158 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v159, v160, v161, v162, v157, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v170;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_193634F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v43 = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v24 = a1 == OUTLINED_FUNCTION_105() && a2 == v23;
    if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
      v25 = result[8];
    }

    else
    {
      v28 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
        v25 = result[9];
      }

      else
      {
        v29 = a1 == OUTLINED_FUNCTION_14_19() && a2 == 0xE800000000000000;
        if (v29 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
          v25 = result[10];
        }

        else
        {
          v30 = a1 == (OUTLINED_FUNCTION_12_3() & 0xFFFF0000FFFFFFFFLL | 0x6C00000000) && a2 == 0xE500000000000000;
          if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
          {
            result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
            v25 = result[11];
          }

          else
          {
            v32 = a1 == (OUTLINED_FUNCTION_12_3() | 0x7265566C00000000) && a2 == v31;
            if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
            {
              result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
              v25 = result[12];
            }

            else
            {
              v33 = a1 == OUTLINED_FUNCTION_17_10() && a2 == 0xE700000000000000;
              if (!v33 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
              {
                v34 = a1 == OUTLINED_FUNCTION_16_10() && a2 == 0xE900000000000065;
                if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                {
                  result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
                  v35 = v3 + result[14];
                  if (*(v35 + 4))
                  {
                    goto LABEL_8;
                  }

                  LODWORD(v44) = *v35;
                }

                else
                {
                  v36 = a1 == 0xD000000000000010 && 0x8000000193A17C10 == a2;
                  if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                  {
                    result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
                    v25 = result[15];
                    goto LABEL_16;
                  }

                  v37 = a1 == 0xD000000000000014 && 0x8000000193A17C30 == a2;
                  if (!v37 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
                  {
                    sub_19349AB64();
                    OUTLINED_FUNCTION_11();
                    swift_allocError();
                    v41 = v40;
                    *v40 = a1;
                    v40[1] = a2;
                    v40[5] = type metadata accessor for GenerativeExperiencesPromptAnalytics();
                    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v41 + 2);
                    sub_19363449C(v3, boxed_opaque_existential_1Tm);
                    *(v41 + 48) = 1;
                    swift_willThrow();
                  }

                  v38 = v3 + *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 64);
                  v39 = *v38;
                  LOBYTE(v38) = *(v38 + 8);
                  v44 = v39;
                  LOBYTE(v45) = v38;
                }

                return sub_1934948FC();
              }

              result = type metadata accessor for GenerativeExperiencesPromptAnalytics();
              v25 = result[13];
            }
          }
        }
      }
    }

LABEL_16:
    v26 = (v3 + v25);
    v27 = *(v3 + v25 + 8);
    if (!v27)
    {
      goto LABEL_8;
    }

    v44 = *v26;
    v45 = v27;
    return sub_1934948FC();
  }

  v20 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  sub_1934DE90C(v3 + *(v20 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_8:
    v22 = v43;
    *v43 = 0u;
    v22[1] = 0u;
    return result;
  }

  (*(v13 + 32))(v18, v9, v10);
  sub_1934948FC();
  return (*(v13 + 8))(v18, v10);
}

uint64_t GenerativeExperiencesPromptAnalytics.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_1934E0648();
  v16 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[14];
  sub_1934E3F94();
  v7 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193636E40();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[1] = 0;

  *v14 = 0;
  v14[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  *v7 = 0;
  v7[1] = 0;
  v10 = a1 + v2[16];
  *v10 = 0;
  v10[8] = 0;
  return result;
}

uint64_t static GenerativeExperiencesPromptAnalytics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  v22 = v21[7];
  v23 = *(v17 + 56);
  sub_1934DE90C(a1 + v22, v20);
  sub_1934DE90C(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_31(v20);
  if (!v24)
  {
    sub_1934DE90C(v20, v15);
    OUTLINED_FUNCTION_31(&v20[v23]);
    if (!v24)
    {
      (*(v7 + 32))(v11, &v20[v23], v4);
      sub_1934DF3E8(&qword_1EAE3A848);
      v27 = sub_19393C550();
      v28 = *(v7 + 8);
      v28(v11, v4);
      v28(v15, v4);
      sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v15, v4);
LABEL_9:
    sub_193442B60(v20, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(&v20[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_193442B60(v20, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_13:
  v29 = v21[8];
  OUTLINED_FUNCTION_3();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v31);
    v35 = v24 && v33 == v34;
    if (!v35 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  v36 = v21[9];
  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (!v37)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v24 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v37)
  {
    goto LABEL_10;
  }

  v43 = v21[10];
  OUTLINED_FUNCTION_3();
  if (v46)
  {
    if (!v44)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v45);
    v49 = v24 && v47 == v48;
    if (!v49 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v44)
  {
    goto LABEL_10;
  }

  v50 = v21[11];
  OUTLINED_FUNCTION_3();
  if (v53)
  {
    if (!v51)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v52);
    v56 = v24 && v54 == v55;
    if (!v56 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v51)
  {
    goto LABEL_10;
  }

  v57 = v21[12];
  OUTLINED_FUNCTION_3();
  if (v60)
  {
    if (!v58)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v59);
    v63 = v24 && v61 == v62;
    if (!v63 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v58)
  {
    goto LABEL_10;
  }

  v64 = v21[13];
  OUTLINED_FUNCTION_3();
  if (v67)
  {
    if (!v65)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v66);
    v70 = v24 && v68 == v69;
    if (!v70 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v65)
  {
    goto LABEL_10;
  }

  v71 = v21[14];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 4);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 4);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_10;
    }
  }

  v76 = v21[15];
  OUTLINED_FUNCTION_3();
  if (v79)
  {
    if (v77)
    {
      OUTLINED_FUNCTION_5(v78);
      v82 = v24 && v80 == v81;
      if (v82 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_82;
      }
    }
  }

  else if (!v77)
  {
LABEL_82:
    v83 = v21[16];
    v84 = *(a1 + v83 + 8);
    v89 = *(a1 + v83);
    v90 = v84;
    v85 = (a2 + v83);
    v86 = *v85;
    LOBYTE(v85) = *(v85 + 8);
    v87 = v86;
    v88 = v85;
    sub_193635A54();
    v25 = sub_19393C550();
    return v25 & 1;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_193635A54()
{
  result = qword_1EAE3F650;
  if (!qword_1EAE3F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F650);
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
  sub_1934DE90C(v1 + v14[7], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v2);
    sub_19393CAD0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v5 + 8))(v9, v2);
  }

  OUTLINED_FUNCTION_5_0(v14[8]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v15);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[9]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v16);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[10]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v17);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[11]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v18);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[12]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v19);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[13]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v20);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v21 = (v1 + v14[14]);
  if (*(v21 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v21;
    sub_19393CAD0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0(v14[15]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v22);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v23 = (v1 + v14[16]);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  v26 = v24;
  v27 = v23;
  sub_193635D84();
  return sub_19393C540();
}

unint64_t sub_193635D84()
{
  result = qword_1EAE3F658;
  if (!qword_1EAE3F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F658);
  }

  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 4)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 3;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_193975580[result];
  }

  return result;
}

char *static GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.allCases.getter()
{
  v0 = sub_193636154(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v13, v2 + 1, 1, v14);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v15, v2 + 2, 1, v16);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_193636154(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_193636154(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 2019650113;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563697665446E4FLL;
  }
}

uint64_t GenerativeExperiencesPromptAnalytics.ExecutionEnvironment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6563697665446E4FLL && a2 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0xD000000000000013 && 0x8000000193A17C50 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 2019650113 && a2 == 0xE400000000000000)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_193636154(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F668, &qword_193975578);
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
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_193636254()
{
  result = qword_1EAE3F660;
  if (!qword_1EAE3F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F660);
  }

  return result;
}

uint64_t sub_1936362A8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB798);
  __swift_project_value_buffer(v0, qword_1EAEAB798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_193952660;
  v7 = v6 + v5;
  v8 = v6 + v5 + dword_1EAEAB7D0;
  *(v6 + v5) = 1;
  *v8 = "timestamp";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v7 + v3);
  *v14 = 2;
  *v13 = "identifier";
  v13[1] = 10;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v7 + 2 * v3);
  *v17 = 3;
  *v16 = "prompt";
  v16[1] = 6;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v7 + 3 * v3);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_5_4(v19, "response");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v7 + 4 * v3);
  *v23 = 5;
  v24 = OUTLINED_FUNCTION_5_4(v22, "model");
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v7 + 5 * v3);
  *v26 = 6;
  v27 = OUTLINED_FUNCTION_5_4(v25, "modelVersion");
  (v12)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v7 + 6 * v3);
  *v29 = 7;
  v30 = OUTLINED_FUNCTION_5_4(v28, "useCase");
  (v12)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v7 + 7 * v3);
  *v32 = 8;
  *v31 = "errorCode";
  v31[1] = 9;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v12)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v7 + 8 * v3);
  *v35 = 9;
  v36 = OUTLINED_FUNCTION_5_4(v34, "clientIdentifier");
  (v12)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v7 + 9 * v3);
  *v38 = 10;
  *v37 = "executionEnvironment";
  *(v37 + 8) = 20;
  *(v37 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

void sub_1936365C0()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 28);
        sub_1934976E4();
        goto LABEL_16;
      case 2:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 32);
        goto LABEL_15;
      case 3:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 36);
        goto LABEL_15;
      case 4:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 40);
        goto LABEL_15;
      case 5:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 44);
        goto LABEL_15;
      case 6:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 48);
        goto LABEL_15;
      case 7:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 52);
        goto LABEL_15;
      case 8:
        v8 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
        OUTLINED_FUNCTION_8_2(*(v8 + 56));
        sub_19393C170();
        goto LABEL_16;
      case 9:
        v6 = *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 60);
LABEL_15:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C200();
LABEL_16:
        v2 = 0;
        break;
      case 10:
        sub_1934982A8();
        v7 = v0 + *(type metadata accessor for GenerativeExperiencesPromptAnalytics() + 64);
        *v7 = 0;
        *(v7 + 8) = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936367A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1936369B0(v3);
  if (!v4)
  {
    v8 = type metadata accessor for GenerativeExperiencesPromptAnalytics();
    OUTLINED_FUNCTION_5_20(v8[8]);
    if (v10)
    {
      v11 = *v9;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[9]);
    if (v13)
    {
      v14 = *v12;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[10]);
    if (v16)
    {
      v17 = *v15;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[11]);
    if (v19)
    {
      v20 = *v18;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[12]);
    if (v22)
    {
      v23 = *v21;
      OUTLINED_FUNCTION_2_10();
    }

    OUTLINED_FUNCTION_5_20(v8[13]);
    if (v25)
    {
      v26 = *v24;
      OUTLINED_FUNCTION_2_10();
    }

    v27 = (v3 + v8[14]);
    if ((v27[1] & 1) == 0)
    {
      v28 = *v27;
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20(v8[15]);
    if (v30)
    {
      v31 = *v29;
      OUTLINED_FUNCTION_2_10();
    }

    v32 = v3 + v8[16];
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *v32;
    v36 = v34;
    sub_193635A54();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      v35 = v33;
      v36 = v34;
      return sub_193447324(&v35, 10, a2, &type metadata for GenerativeExperiencesPromptAnalytics.ExecutionEnvironment, a3, &off_1F07D9D80);
    }
  }

  return result;
}