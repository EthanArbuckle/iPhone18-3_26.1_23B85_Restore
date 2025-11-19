void sub_193766B84()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 28);
        type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
        goto LABEL_11;
      case 2:
        v7 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v7 + 32));
        goto LABEL_11;
      case 3:
        v5 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v5 + 36));
        goto LABEL_11;
      case 4:
        v6 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v6 + 40));
        goto LABEL_11;
      case 5:
        v4 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v4 + 44));
        goto LABEL_11;
      case 6:
        v8 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v8 + 48));
        goto LABEL_11;
      case 7:
        v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
        OUTLINED_FUNCTION_160(*(v9 + 52));
LABEL_11:
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193766D58()
{
  OUTLINED_FUNCTION_87_7();
  sub_193766F9C(v1);
  if (!v0)
  {
    v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v3 = v1 + v2[8];
    v4 = *(v3 + 32);
    if (v4)
    {
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      __dst[0] = *v3;
      *&__dst[1] = v6;
      DWORD2(__dst[1]) = v5;
      BYTE12(__dst[1]) = BYTE4(v5) & 1;
      *&__dst[2] = v4;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    v7 = (v1 + v2[9]);
    v8 = v7[9];
    if (v8 != 1)
    {
      memcpy(__dst, v7, 0x48uLL);
      *(&__dst[4] + 1) = v8;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_43_20(v2[10]);
    if (!v11)
    {
      __dst[0] = *v9;
      *&__dst[1] = v10;
      memcpy(&__dst[1] + 8, v9 + 24, 0x50uLL);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_43_20(v2[11]);
    if (!v11)
    {
      OUTLINED_FUNCTION_37_27(v12);
      *(&__dst[3] + 8) = *(v13 + 56);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v1 + v2[12]), sizeof(__dst));
    if (sub_193762AA4(__dst) != 1)
    {
      memcpy(v16, __dst, sizeof(v16));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_43_20(v2[13]);
    if (!v11)
    {
      OUTLINED_FUNCTION_37_27(v14);
      *(&__dst[3] + 5) = *(v15 + 53);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

uint64_t sub_193766F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  sub_19375F0BC(a1 + *(v12 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_193760D5C(v5);
  }

  sub_19375F934(v5, v11);
  sub_193447600();
  return sub_19375F18C(v11);
}

void sub_193767158()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD700);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_4_2(v7, xmmword_19394FBE0);
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_65();
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v14 = 2;
  *v13 = "name";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1937672B8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
    }
  }

  return result;
}

void sub_193767320()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  if ((v0[1] & 1) == 0)
  {
    v4 = *v0;
    OUTLINED_FUNCTION_95_3();
    sub_19393C350();
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_45_25();
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_1937673F0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD718);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v6, xmmword_19394FBB0);
  *v0 = "assetType";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  v11 = OUTLINED_FUNCTION_65();
  v10(v11);
  v12 = OUTLINED_FUNCTION_29_1();
  v13 = OUTLINED_FUNCTION_48(v12, "assetSpecifier");
  v10(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_48(v14, "assetVersion");
  v10(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193767550()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1937675BC()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  if (v1[1])
  {
    v6 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

uint64_t sub_1937676AC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD730);
  __swift_project_value_buffer(v0, qword_1EAEAD730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "assetSetIdentifier";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 104))(v5, v6);
  return sub_19393C410();
}

uint64_t sub_193767864(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19394FBE0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = 2;
  v17();
  return sub_19393C410();
}

void sub_193767A18()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193767A98()
{
  OUTLINED_FUNCTION_89_11();
  v8 = v0[2];
  v9 = v0[3];
  if (v0[1] != 1)
  {
    v10 = v0[1];
    OUTLINED_FUNCTION_85_3(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, v5, &off_1F07EE8C0, v6, v7, *v0);
    sub_193447600();
  }

  if (!v1)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_45_25();
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193767B7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD760);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_35_32("metadata");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "numJobsTriggered");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "assetSets");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193767CD0()
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
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498238(v3);
        break;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        sub_193498018();
        break;
    }
  }
}

void sub_193767D84()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 6);
  v3 = *(v0 + 28);
  v4 = *(v0 + 4);
  if (*(v0 + 2) != 1)
  {
    v5 = *v0;
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v6, v7, v8, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v9, &off_1F07EE860, v10, v11, v18);
    sub_193447600();
  }

  if (!v1)
  {
    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (*(v4 + 16))
    {
      OUTLINED_FUNCTION_106();
      sub_193451CFC(v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_193767EB0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD778);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("metadata");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  *v11 = "assetSet";
  v11[1] = 8;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v14 = "configuredCount";
  *(v14 + 1) = 15;
  v15 = OUTLINED_FUNCTION_41(v14);
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "requestedCount");
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v19 = 5;
  *v18 = "fromPallasCount";
  v18[1] = 15;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "clientDomainName";
  *(v21 + 8) = 16;
  *(v21 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937680B0()
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
        OUTLINED_FUNCTION_62();
        goto LABEL_8;
      case 2:
        OUTLINED_FUNCTION_89_2();
LABEL_8:
        sub_193498018();
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193768194()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  v4 = *(v1 + 10);
  v5 = *(v1 + 44);
  v6 = *(v1 + 12);
  v7 = *(v1 + 52);
  v9 = *(v1 + 14);
  v10 = *(v1 + 60);
  v8 = *(v1 + 8);
  v12 = *(v1 + 9);
  if (*(v1 + 2) != 1)
  {
    v11 = *v1;
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }

  if (!v0)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (v12)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193768344()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD790);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_35_32("metadata");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "assetSelector");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "downloadResult");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193768498()
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
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_89_2();
LABEL_9:
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_147_0();
        goto LABEL_9;
    }
  }
}

void sub_19376855C()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 12);
  if (*(v0 + 2) != 1)
  {
    v11 = *v0;
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v12, v13, v14, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v15, &off_1F07EE860, v16, v17, v18);
    sub_193447600();
  }

  if (!v1)
  {
    if (v9 != 1)
    {
      v20 = *(v0 + 40);
      v22 = *(v0 + 56);
      OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v5, &off_1F07EE890, v6, v7, v8);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v10 != 1)
    {
      v19 = *(v0 + 72);
      v21 = *(v0 + 11);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

void sub_1937686B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_193952660);
  OUTLINED_FUNCTION_83_0("cellularAccessRequest");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_5_4(v11, "cellularAccessResponse");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "constrainedNetworkAccessRequest");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "constrainedNetworkAccessResponse");
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_5_4(v18, "expensiveNetworkAccessRequest");
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_5_4(v21, "expensiveNetworkAccessResponse");
  (v10)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v0 + 6 * v5);
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_5_4(v24, "isMAAutoAsset");
  (v10)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v5);
  *v28 = 8;
  v29 = OUTLINED_FUNCTION_5_4(v27, "isDiscretionary");
  (v10)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v0 + 8 * v5);
  *v31 = 9;
  v32 = OUTLINED_FUNCTION_5_4(v30, "isUserPriority");
  (v10)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v5);
  *v34 = 10;
  *v33 = "resultName";
  *(v33 + 8) = 10;
  *(v33 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193768958()
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
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193768A1C()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v12 = *(v1 + 6);
  v11 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v7 = *(v1 + 7);
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v0)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    v8 = (v7 << 56) | (v12 << 48) | (v3 << 16) | (v2 << 8) | (v4 << 24) | (v5 << 32) | (v6 << 40);
    if ((v8 & 0xFF000000000000) != 0x2000000000000)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (HIBYTE(v8) != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193768C64()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }
}

void sub_193768CF4()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  if (*(v0 + 2) != 1)
  {
    v10 = *v0;
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v11, v12, v13, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v14, &off_1F07EE860, v15, v16, v17);
    sub_193447600();
  }

  if (!v1 && v9 != 1)
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 56);
    OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v5, &off_1F07EE890, v6, v7, v8);
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }
}

void sub_193768DFC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "metadata";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_29_1();
  *v11 = "assetSelector";
  v11[1] = 13;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  *v13 = "type";
  *(v13 + 1) = 4;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v10)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v16 = 4;
  *v15 = "secureOperationMetadata";
  *(v15 + 8) = 23;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193768FAC()
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
        sub_193498018();
        break;
      case 3:
        OUTLINED_FUNCTION_147_0();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1937690B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v12 = *(v1 + 81);
  v13 = *(v1 + 12);
  v25 = *(v1 + 11);
  if (v9 != 1)
  {
    v14 = *v1;
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v2 = v0;
  }

  if (!v2)
  {
    if (v11 == 1 || (v15 = *(v1 + 56), v24[0] = *(v1 + 40), v24[1] = v15, OUTLINED_FUNCTION_182_0(v3, v4, v5, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v6, &off_1F07EE890, v7, v8, v10), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
    {
      if ((v12 & 1) != 0 || (v22 = *(v1 + 9), v23 = *(v1 + 80), OUTLINED_FUNCTION_78_1(), sub_193447324(v16, v17, v18, v19, v20, v21), !v0))
      {
        if (v13 != 1)
        {
          memcpy(v24, v1 + 104, 0x48uLL);
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }
      }
    }
  }
}

void sub_19376927C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v6, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "OperationTypeUnknown";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "OperationTypePersonalization";
  v11[1] = 28;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 2;
  *v14 = "OperationTypeGraft";
  v14[1] = 18;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v1 + 3 * v5));
  *v17 = "OperationTypeExclave";
  *(v17 + 1) = 20;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_13((v1 + 4 * v5));
  *v19 = "OperationTypeMount";
  *(v19 + 1) = 18;
  v19[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193769488()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD808);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("clientName");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  *v11 = "fromLocation";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "success");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_13((v0 + 3 * v5));
  v17 = OUTLINED_FUNCTION_5_4(v16, "failureReason");
  (v10)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v19 = 5;
  *v18 = "secureReason";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v10)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "result";
  *(v21 + 8) = 6;
  *(v21 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193769680()
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
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_193769724()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v1[2];
  v3 = v1[3];
  v4 = *(v1 + 32);
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[8];
  v11 = v1[7];
  v9 = v1[9];
  v10 = v1[10];
  if (v1[1])
  {
    v8 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_45_25();
      OUTLINED_FUNCTION_181();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_19376987C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD820);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v5, xmmword_19394FBB0);
  OUTLINED_FUNCTION_35_32("metadata");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_65();
  v9(v10);
  v11 = OUTLINED_FUNCTION_29_1();
  v12 = OUTLINED_FUNCTION_48(v11, "atomicInstance");
  v9(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v14 = OUTLINED_FUNCTION_48(v13, "assetCount");
  v9(v14);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937699D0()
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
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
LABEL_9:
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_9;
    }
  }
}

void sub_193769A7C()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 6);
  v9 = *(v0 + 14);
  v10 = *(v0 + 60);
  if (*(v0 + 2) != 1)
  {
    v11 = *v0;
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v12, v13, v14, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v15, &off_1F07EE860, v16, v17, v18);
    sub_193447600();
  }

  if (!v1)
  {
    if (v8 != 1)
    {
      v19 = *(v0 + 5);
      OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance, v5, &off_1F07EE8F0, v6, v7, *(v0 + 3));
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }
  }
}

uint64_t AppleIntelligenceReportingMobileAssetLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingMobileAssetLog()
{
  result = qword_1ED50CA60;
  if (!qword_1ED50CA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;

  return sub_193765860(v3, v4, v5, v6, v7);
}

__n128 AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 32));
  sub_193762564(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

double sub_193769F30@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 36)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x50uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42648, &unk_193993740);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(v5, (v0 + *(v1 + 36)), sizeof(v5));
  sub_193442B60(v5, &qword_1EAE42648, &unk_193993740);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x50uLL);
}

void sub_19376A05C(uint64_t a1@<X8>)
{
  *&v1 = OUTLINED_FUNCTION_95_16(a1);
  *(v2 + 56) = v1;
  *(v2 + 72) = v1;
  *(v2 + 88) = v1;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 40)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x68uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42650, &qword_193993498);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(__dst, (v0 + *(v1 + 40)), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE42650, &qword_193993498);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x68uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 44)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x48uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42658, &unk_193993750);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(__dst, (v0 + *(v1 + 44)), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE42658, &unk_193993750);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x48uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 48)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0xB0uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42660, &qword_1939934A0);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(v5, (v0 + *(v1 + 48)), sizeof(v5));
  sub_193442B60(v5, &qword_1EAE42660, &qword_1939934A0);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0xB0uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 52));
  *&v9[13] = *(v2 + 45);
  v3 = *&v9[13];
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  *v9 = v2[2];
  v5 = *v9;
  *v0 = v8[0];
  v0[1] = v4;
  v0[2] = v5;
  *(v0 + 45) = v3;
  return sub_19344865C(v8, &v7, &qword_1EAE42668, &qword_193993760);
}

__n128 AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_65_21() + 52));
  *&v7[13] = *(v2 + 45);
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  *v7 = v2[2];
  sub_193442B60(v6, &qword_1EAE42668, &qword_193993760);
  v4 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v4;
  v2[2] = *(v0 + 32);
  result = *(v0 + 45);
  *(v2 + 45) = result;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
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
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 8) && v6 == v7;
    return v9 || (sub_19393CA30() & 1) != 0;
  }

  return !v7;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  if (*(v0 + 4) != 1)
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393CAE0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2 != 1)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376A7E4()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 2);
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetType.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.init()(IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSelector *__return_ptr retstr)
{
  retstr->assetSpecifier = 0u;
  retstr->assetVersion = 0u;
  retstr->assetType = 0u;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_19393CAD0();
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

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_11_47();
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v6)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376AC5C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSet __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.assetSetIdentifier.value._object = v2;
  result.assetSetIdentifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.hash(into:)()
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

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193456418(v1, 1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if (v3 != 1)
  {
    if (v6 == 1)
    {
      v11 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v11, v12);
      v13 = OUTLINED_FUNCTION_242();
      sub_19350CB08(v13, v14);
      v15 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v15, v16);

LABEL_7:
      v19 = OUTLINED_FUNCTION_13_0();
      sub_193456418(v19, v20);
      v21 = OUTLINED_FUNCTION_165_1();
LABEL_21:
      sub_193456418(v21, v22);
      goto LABEL_22;
    }

    if (v3)
    {
      if (v6)
      {
        v23 = *v0;
        if (v2 != *v1 || v3 != v6)
        {
          v25 = sub_19393CA30();
          v26 = OUTLINED_FUNCTION_13_0();
          sub_19350CB08(v26, v27);
          v28 = OUTLINED_FUNCTION_165_1();
          sub_19350CB08(v28, v29);
          v30 = OUTLINED_FUNCTION_13_0();
          sub_19350CB08(v30, v31);
          v32 = OUTLINED_FUNCTION_165_1();
          sub_193456418(v32, v33);
          if (v25)
          {
            goto LABEL_25;
          }

LABEL_20:

          v21 = OUTLINED_FUNCTION_13_0();
          goto LABEL_21;
        }

        sub_19350CB08(v23, v3);
        v45 = OUTLINED_FUNCTION_13_0();
        sub_19350CB08(v45, v46);
        v47 = OUTLINED_FUNCTION_13_0();
        sub_19350CB08(v47, v48);
        v37 = OUTLINED_FUNCTION_13_0();
LABEL_24:
        sub_193456418(v37, v38);
LABEL_25:

        goto LABEL_26;
      }

      v39 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v39, v40);
      v34 = v3;
    }

    else
    {
      sub_19350CB08(*v0, 0);
      v34 = 0;
      if (!v6)
      {
        v35 = OUTLINED_FUNCTION_82_15();
        sub_19350CB08(v35, v36);
        sub_19350CB08(v2, 0);
        v37 = OUTLINED_FUNCTION_82_15();
        goto LABEL_24;
      }
    }

    v41 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v41, v42);
    sub_19350CB08(v2, v34);
    v43 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v43, v44);
    goto LABEL_20;
  }

  sub_19350CB08(*v0, 1);
  if (v6 != 1)
  {
    v17 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v17, v18);
    goto LABEL_7;
  }

  v9 = OUTLINED_FUNCTION_242();
  sub_19350CB08(v9, v10);
LABEL_26:
  v49 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v49, v50);
  if (v5 && v7 && (v4 != v8 || v5 != v7))
  {
    OUTLINED_FUNCTION_115_0();
    sub_19393CA30();
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  if (v2 == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    v5 = *v0;
    sub_19393CAD0();
    sub_19393CAD0();
    if (v2)
    {

      OUTLINED_FUNCTION_11_47();
      sub_19393C640();
      v6 = OUTLINED_FUNCTION_24_1();
    }

    else
    {
      v6 = v5;
      v7 = 0;
    }

    sub_193456418(v6, v7);
    if (!v3)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v2)
    {

      OUTLINED_FUNCTION_2_0();
      sub_19393C640();
      v5 = OUTLINED_FUNCTION_24_1();
    }

    else
    {
      v5 = v1;
      v6 = 0;
    }

    sub_193456418(v5, v6);
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376B320()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.numJobsTriggered.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.assetSets.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.init()@<X0>(void *a1@<X8>)
{
  result = OUTLINED_FUNCTION_13_52(a1);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 28) = v2;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  return result;
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 28);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  if (v4 == 1)
  {
    v81 = *(a1 + 6);
    v82 = *(a2 + 32);
    v10 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v10, v11, 1);
    if (v7 == 1)
    {
      v12 = OUTLINED_FUNCTION_24_1();
      sub_1935F2318(v12, v13, 1);
      goto LABEL_4;
    }

    v25 = OUTLINED_FUNCTION_25_34();
    sub_1935F2318(v25, v26, v27);
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v17 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_24_1();
    sub_1935F2318(v20, v21, 1);
    v22 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v22, v23, v24);

LABEL_10:
    v28 = OUTLINED_FUNCTION_22_9();
    sub_193456F74(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_25_34();
LABEL_34:
    sub_193456F74(v31, v32, v33);
LABEL_35:
    OUTLINED_FUNCTION_107();
    return;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v6 & 0x100000000) != 0 || v3 != v6)
  {
    goto LABEL_31;
  }

  if (!v4)
  {
    v81 = *(a1 + 6);
    v84 = *(a2 + 32);
    v80 = a1[4];
    v64 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v64, v65, 0);
    v55 = 0;
    if (v7)
    {
      goto LABEL_32;
    }

    v66 = OUTLINED_FUNCTION_24_1();
    sub_1935F2318(v66, v67, 0);
    v68 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v68, v69, 0);
    v70 = OUTLINED_FUNCTION_24_1();
    v72 = 0;
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_31:
    v52 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v52, v53, v54);
    v55 = v4;
LABEL_32:
    v56 = OUTLINED_FUNCTION_25_34();
    sub_1935F2318(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v59, v60, v55);
    v61 = OUTLINED_FUNCTION_25_34();
    sub_193456F74(v61, v62, v63);
    goto LABEL_33;
  }

  v81 = *(a1 + 6);
  v83 = *(a2 + 32);
  v79 = a1[4];
  if (v2 == *(a2 + 8) && v4 == v7)
  {
    v73 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v73, v74, v75);
    sub_1935F2318(v6, v2, v4);
    v76 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v76, v77, v78);
    v70 = v6;
    v71 = v2;
    v72 = v4;
LABEL_39:
    sub_193456F74(v70, v71, v72);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_13_0();
  v39 = sub_19393CA30();
  v40 = OUTLINED_FUNCTION_22_9();
  sub_1935F2318(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_25_34();
  sub_1935F2318(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_22_9();
  sub_1935F2318(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_25_34();
  sub_193456F74(v49, v50, v51);
  if ((v39 & 1) == 0)
  {
LABEL_33:

    v31 = OUTLINED_FUNCTION_22_9();
    goto LABEL_34;
  }

LABEL_40:

LABEL_4:
  v14 = OUTLINED_FUNCTION_22_9();
  sub_193456F74(v14, v15, v16);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v81 == v8)
    {
      v34 = v9;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_107();

  sub_193713858(v35, v36);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 28);
  v5 = v1[4];
  if (v2 == 1)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v6 = v1[1];
  sub_19393CAD0();
  if ((v7 & 0x100000000) == 0)
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393C640();
  if ((v4 & 1) == 0)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_9;
  }

LABEL_8:
  sub_19393CAD0();
LABEL_9:

  return sub_1937366D4(v0, v5);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hashValue.getter()
{
  OUTLINED_FUNCTION_47_26();
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376B800()
{
  OUTLINED_FUNCTION_47_26();
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.assetSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.configuredCount.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.requestedCount.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.clientDomainName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.clientDomainName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.init()@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  sub_193456418(0, 1);
  *&result = 1;
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = 0;
  *(v1 + 52) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  return result;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 10);
  v8 = *(a1 + 44);
  v9 = *(a1 + 12);
  v10 = *(a1 + 52);
  v11 = *(a1 + 14);
  v12 = *(a1 + 60);
  v13 = a1[8];
  v14 = a1[9];
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 44);
  v22 = *(a2 + 48);
  v23 = *(a2 + 52);
  v24 = *(a2 + 56);
  v25 = *(a2 + 60);
  v27 = *(a2 + 64);
  v26 = *(a2 + 72);
  if (v5 == 1)
  {
    v155 = *(a2 + 40);
    v156 = v7;
    v157 = *(a2 + 44);
    v158 = *(a2 + 48);
    v159 = *(a2 + 52);
    v160 = v8;
    v161 = *(a2 + 56);
    v162 = *(a2 + 60);
    OUTLINED_FUNCTION_37_28();
    v28 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v28, v29, 1);
    if (v17 == 1)
    {
      v30 = OUTLINED_FUNCTION_109_6();
      sub_1935F2318(v30, v31, 1);
      goto LABEL_4;
    }

    v45 = OUTLINED_FUNCTION_24_41();
    sub_1935F2318(v45, v46, v47);
    goto LABEL_10;
  }

  if (v17 == 1)
  {
    v37 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_109_6();
    sub_1935F2318(v40, v41, 1);
    v42 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v42, v43, v44);

LABEL_10:
    v48 = OUTLINED_FUNCTION_17_39();
    sub_193456F74(v48, v49, v50);
    v51 = OUTLINED_FUNCTION_24_41();
LABEL_29:
    sub_193456F74(v51, v52, v53);
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v15 & 0x100000000) != 0 || v2 != v15)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    v155 = *(a2 + 40);
    v156 = v7;
    v157 = *(a2 + 44);
    v158 = *(a2 + 48);
    v159 = *(a2 + 52);
    v160 = v8;
    v161 = *(a2 + 56);
    v162 = *(a2 + 60);
    OUTLINED_FUNCTION_37_28();
    v151 = v4;
    v102 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v102, v103, 0);
    v77 = 0;
    if (v17)
    {
      goto LABEL_27;
    }

    v104 = OUTLINED_FUNCTION_109_6();
    sub_1935F2318(v104, v105, 0);
    v106 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v106, v107, 0);
    v108 = OUTLINED_FUNCTION_109_6();
    v110 = 0;
    goto LABEL_45;
  }

  if (!v17)
  {
LABEL_26:
    v74 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v74, v75, v76);
    v77 = v5;
LABEL_27:
    v78 = OUTLINED_FUNCTION_24_41();
    sub_1935F2318(v78, v79, v80);
    v81 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v81, v82, v77);
    v83 = OUTLINED_FUNCTION_24_41();
    sub_193456F74(v83, v84, v85);
    goto LABEL_28;
  }

  v155 = *(a2 + 40);
  v156 = v7;
  v157 = *(a2 + 44);
  v158 = *(a2 + 48);
  v159 = *(a2 + 52);
  v160 = v8;
  v161 = *(a2 + 56);
  v162 = *(a2 + 60);
  OUTLINED_FUNCTION_37_28();
  v151 = v4;
  if (v3 == v16 && v5 == v17)
  {
    v115 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v115, v116, v117);
    sub_1935F2318(v15, v3, v5);
    v118 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v118, v119, v120);
    v108 = v15;
    v109 = v3;
    v110 = v5;
LABEL_45:
    sub_193456F74(v108, v109, v110);
    goto LABEL_46;
  }

  v61 = sub_19393CA30();
  v62 = OUTLINED_FUNCTION_17_39();
  sub_1935F2318(v62, v63, v64);
  v65 = OUTLINED_FUNCTION_24_41();
  sub_1935F2318(v65, v66, v67);
  v68 = OUTLINED_FUNCTION_17_39();
  sub_1935F2318(v68, v69, v70);
  v71 = OUTLINED_FUNCTION_24_41();
  sub_193456F74(v71, v72, v73);
  if ((v61 & 1) == 0)
  {
LABEL_28:

    v51 = OUTLINED_FUNCTION_17_39();
    goto LABEL_29;
  }

LABEL_46:

  v4 = v151;
LABEL_4:
  v32 = OUTLINED_FUNCTION_17_39();
  sub_193456F74(v32, v33, v34);
  if (v6 == 1)
  {
    sub_19350CB08(v4, 1);
    if (v19 == 1)
    {
      v35 = OUTLINED_FUNCTION_242();
      sub_19350CB08(v35, v36);
      goto LABEL_54;
    }

    v86 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v86, v87);
    goto LABEL_31;
  }

  if (v19 == 1)
  {
    v54 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v54, v55);
    v56 = OUTLINED_FUNCTION_242();
    sub_19350CB08(v56, v57);
    v58 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v58, v59);

LABEL_31:
    v88 = OUTLINED_FUNCTION_13_0();
    sub_193456418(v88, v89);
    v90 = OUTLINED_FUNCTION_165_1();
LABEL_50:
    sub_193456418(v90, v91);
    return 0;
  }

  if (!v6)
  {
    sub_19350CB08(v4, 0);
    if (!v19)
    {
      v111 = OUTLINED_FUNCTION_82_15();
      sub_19350CB08(v111, v112);
      sub_19350CB08(v4, 0);
      v113 = OUTLINED_FUNCTION_82_15();
      sub_193456418(v113, v114);
      goto LABEL_53;
    }

LABEL_48:
    v123 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v123, v124);
    v125 = OUTLINED_FUNCTION_23_10();
    sub_19350CB08(v125, v126);
    v127 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v127, v128);
    goto LABEL_49;
  }

  if (!v19)
  {
    v121 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v121, v122);
    goto LABEL_48;
  }

  if (v4 != v18 || v6 != v19)
  {
    v93 = sub_19393CA30();
    v94 = OUTLINED_FUNCTION_127();
    sub_19350CB08(v94, v95);
    v96 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v96, v97);
    v98 = OUTLINED_FUNCTION_127();
    sub_19350CB08(v98, v99);
    v100 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v100, v101);
    if (v93)
    {
      goto LABEL_53;
    }

LABEL_49:

    v90 = OUTLINED_FUNCTION_127();
    goto LABEL_50;
  }

  sub_19350CB08(v4, v6);
  v130 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v130, v131);
  v132 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v132, v133);
  v134 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v134, v135);
LABEL_53:

LABEL_54:
  v136 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v136, v137);
  if (v160)
  {
    v138 = v167;
    v140 = v165;
    v139 = v166;
    v142 = v163;
    v141 = v164;
    v144 = v161;
    v143 = v162;
    v146 = v158;
    v145 = v159;
    if (!v157)
    {
      return 0;
    }
  }

  else
  {
    v147 = v157;
    v146 = v158;
    if (v156 != v155)
    {
      v147 = 1;
    }

    v138 = v167;
    v140 = v165;
    v139 = v166;
    v142 = v163;
    v141 = v164;
    v144 = v161;
    v143 = v162;
    v145 = v159;
    if (v147)
    {
      return 0;
    }
  }

  if (v142)
  {
    if (!v145)
    {
      return 0;
    }
  }

  else
  {
    if (v141 == v146)
    {
      v148 = v145;
    }

    else
    {
      v148 = 1;
    }

    if (v148)
    {
      return 0;
    }
  }

  if (v140)
  {
    if (!v143)
    {
      return 0;
    }
  }

  else
  {
    if (v139 == v144)
    {
      v149 = v143;
    }

    else
    {
      v149 = 1;
    }

    if (v149)
    {
      return 0;
    }
  }

  if (v138)
  {
    if (v154)
    {
      v150 = v153 == v152 && v138 == v154;
      if (v150 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v154;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 44);
  v17 = *(v0 + 10);
  v18 = *(v0 + 52);
  v5 = *(v0 + 60);
  v6 = v0[9];
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v16 = *(v0 + 12);
    v7 = v0[9];
    v8 = *(v0 + 60);
    v9 = *(v0 + 14);
    v10 = v0[8];
    v11 = *v0;
    v15 = v0[1];
    sub_19393CAD0();
    sub_19393CAD0();
    if ((v11 & 0x100000000) == 0)
    {
      sub_19393CAE0();
    }

    sub_19393CAD0();
    if (v2)
    {
      sub_19393C640();
    }

    v5 = v8;
    v6 = v7;
  }

  if (v3 == 1)
  {
    sub_19393CAD0();
    if ((v4 & 1) == 0)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_16;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v3)
    {

      sub_19393C640();
      v12 = OUTLINED_FUNCTION_165_1();
    }

    else
    {
      v12 = OUTLINED_FUNCTION_82_15();
    }

    sub_193456418(v12, v13);
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_19393CAD0();
LABEL_16:
  if (v18)
  {
    sub_19393CAD0();
    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_23:
    sub_19393CAD0();
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

  sub_19393CAD0();
  sub_19393CAE0();
  if (v5)
  {
    goto LABEL_23;
  }

LABEL_18:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_19:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376C138()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.assetSelector.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_60_21(a1);
  OUTLINED_FUNCTION_53_24();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.downloadResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19376F35C(v2, v3, v4, v5);
}

__n128 AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.downloadResult.setter(uint64_t a1)
{
  sub_19345FF00(v1[9], v1[10], v1[11], v1[12]);
  result = *a1;
  *(v1 + 11) = *(a1 + 16);
  *(v1 + 9) = result;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  OUTLINED_FUNCTION_44_24();
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  OUTLINED_FUNCTION_76_16();
  v3 = OUTLINED_FUNCTION_93_12();
  result = sub_19345FF00(v3, v4, v5, v6);
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = v2;
  return result;
}

IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetJobState::DownloadResult __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.init()()
{
  *v0 = 0x202020202020202;
  *(v0 + 8) = 2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v22 = a2[7];
  v23 = a2[8];
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  if (v4 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v15 == 2 || ((v15 ^ v4) & 1) != 0)
    {
      return v26;
    }
  }

  if (v5 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v16 == 2 || ((v16 ^ v5) & 1) != 0)
    {
      return v26;
    }
  }

  if (v6 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v17 == 2 || ((v17 ^ v6) & 1) != 0)
    {
      return v26;
    }
  }

  if (v7 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v18 == 2 || ((v18 ^ v7) & 1) != 0)
    {
      return v26;
    }
  }

  if (v8 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v19 == 2 || ((v19 ^ v8) & 1) != 0)
    {
      return v26;
    }
  }

  if (v9 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v20 == 2 || ((v20 ^ v9) & 1) != 0)
    {
      return v26;
    }
  }

  if (v10 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v21 == 2 || ((v21 ^ v10) & 1) != 0)
    {
      return v26;
    }
  }

  if (v11 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v22 == 2 || ((v22 ^ v11) & 1) != 0)
    {
      return v26;
    }
  }

  if (v12 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v23 == 2 || ((v23 ^ v12) & 1) != 0)
    {
      return v26;
    }
  }

  if (v14)
  {
    if (!v25)
    {
      return 0;
    }

    v27 = v13 == v24 && v14 == v25;
    if (!v27 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  return 1;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v11 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  v10 = *(v0 + 16);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();

    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();
  }
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376C8C8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[6];
  v176 = a1[5];
  v177 = a1[7];
  v8 = a1[9];
  v178 = a1[8];
  v9 = a1[10];
  v10 = a1[11];
  v11 = a1[12];
  v13 = *a2;
  v12 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v19 = a2[6];
  v18 = a2[7];
  v21 = a2[8];
  v20 = a2[9];
  v23 = a2[10];
  v22 = a2[11];
  v24 = a2[12];
  if (v4 == 1)
  {
    v175 = *(a2 + 3);
    v171 = a2[5];
    v172 = a2[7];
    v173 = a2[6];
    v174 = a2[8];
    OUTLINED_FUNCTION_52_20();
    v25 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v25, v26, 1);
    if (v15 == 1)
    {
      v27 = OUTLINED_FUNCTION_48_22();
      sub_1935F2318(v27, v28, 1);
      goto LABEL_4;
    }

    v44 = OUTLINED_FUNCTION_23_41();
    sub_1935F2318(v44, v45, v46);
    goto LABEL_10;
  }

  if (v15 == 1)
  {
    v36 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_48_22();
    sub_1935F2318(v39, v40, 1);
    v41 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v41, v42, v43);

LABEL_10:
    v47 = OUTLINED_FUNCTION_15_51();
    sub_193456F74(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_23_41();
LABEL_29:
    sub_193456F74(v50, v51, v52);
    goto LABEL_30;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v13 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v13 & 0x100000000) != 0 || v2 != v13)
  {
    goto LABEL_26;
  }

  if (!v4)
  {
    v175 = *(a2 + 3);
    v171 = a2[5];
    v172 = a2[7];
    v173 = a2[6];
    v174 = a2[8];
    OUTLINED_FUNCTION_52_20();
    v165 = v10;
    v132 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v132, v133, 0);
    v76 = 0;
    if (v15)
    {
      goto LABEL_27;
    }

    v134 = OUTLINED_FUNCTION_48_22();
    sub_1935F2318(v134, v135, 0);
    v136 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v136, v137, 0);
    v138 = OUTLINED_FUNCTION_48_22();
    v140 = 0;
    goto LABEL_47;
  }

  if (!v15)
  {
LABEL_26:
    v73 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v73, v74, v75);
    v76 = v4;
LABEL_27:
    v77 = OUTLINED_FUNCTION_23_41();
    sub_1935F2318(v77, v78, v79);
    v80 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v80, v81, v76);
    v82 = OUTLINED_FUNCTION_23_41();
    sub_193456F74(v82, v83, v84);
    goto LABEL_28;
  }

  v175 = *(a2 + 3);
  v171 = a2[5];
  v172 = a2[7];
  v173 = a2[6];
  v174 = a2[8];
  OUTLINED_FUNCTION_52_20();
  v165 = v10;
  if (v3 == v12 && v4 == v15)
  {
    v156 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v156, v157, v158);
    sub_1935F2318(v13, v3, v4);
    v159 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v159, v160, v161);
    v138 = v13;
    v139 = v3;
    v140 = v4;
LABEL_47:
    sub_193456F74(v138, v139, v140);
    goto LABEL_48;
  }

  v60 = sub_19393CA30();
  v61 = OUTLINED_FUNCTION_15_51();
  sub_1935F2318(v61, v62, v63);
  v64 = OUTLINED_FUNCTION_23_41();
  sub_1935F2318(v64, v65, v66);
  v67 = OUTLINED_FUNCTION_15_51();
  sub_1935F2318(v67, v68, v69);
  v70 = OUTLINED_FUNCTION_23_41();
  sub_193456F74(v70, v71, v72);
  if ((v60 & 1) == 0)
  {
LABEL_28:

    v50 = OUTLINED_FUNCTION_15_51();
    goto LABEL_29;
  }

LABEL_48:

  v10 = v165;
LABEL_4:
  v29 = OUTLINED_FUNCTION_15_51();
  sub_193456F74(v29, v30, v31);
  if (v6 != 1)
  {
    *&v183 = v5;
    *(&v183 + 1) = v6;
    *&v184 = v176;
    *(&v184 + 1) = v7;
    v185 = v177;
    v186 = v178;
    if (*(&v175 + 1) != 1)
    {
      v163 = v6;
      v179 = v175;
      *&v180 = v171;
      *(&v180 + 1) = v173;
      v165 = v10;
      v181 = v172;
      v182 = v174;
      HIDWORD(v164) = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(&v183, &v179);
      OUTLINED_FUNCTION_9_69();
      sub_193641A34(v93, v94);
      sub_193641A34(v175, *(&v175 + 1));
      OUTLINED_FUNCTION_9_69();
      sub_193641A34(v95, v96);

      OUTLINED_FUNCTION_9_69();
      sub_193640C90(v97, v98);
      if ((v164 & 0x100000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193641A34(v53, v54);
    OUTLINED_FUNCTION_75_19();
    sub_193641A34(v55, v56);
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193641A34(v57, v58);

LABEL_33:
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193640C90(v89, v90);
    OUTLINED_FUNCTION_75_19();
    sub_193640C90(v91, v92);
    goto LABEL_30;
  }

  v32 = OUTLINED_FUNCTION_242();
  sub_193641A34(v32, v33);
  if (*(&v175 + 1) != 1)
  {
    OUTLINED_FUNCTION_75_19();
    sub_193641A34(v87, v88);
    goto LABEL_33;
  }

  sub_193641A34(v175, 1);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_9_69();
  sub_193640C90(v34, v35);
LABEL_35:
  if (v169 == 1)
  {
    v99 = OUTLINED_FUNCTION_19_49();
    v102 = sub_19376F35C(v99, v100, v101, 1);
    v110 = v166;
    if (v166 == 1)
    {
      v85 = 1;
      sub_19376F35C(v167, *(&v167 + 1), v168, 1);
      v111 = OUTLINED_FUNCTION_19_49();
      v114 = 1;
LABEL_45:
      sub_19345FF00(v111, v112, v113, v114);
      return v85 & 1;
    }

    v141 = OUTLINED_FUNCTION_81_11(v102, v103, v104, v105, v106, v107, v108, v109, v162, v163, v164, v165, v166, v167);
    sub_19376F35C(v141, v142, v143, v110);
  }

  else
  {
    v183 = v170;
    *&v184 = v10;
    *(&v184 + 1) = v169;
    v110 = v166;
    if (v166 != 1)
    {
      v187 = v167;
      *&v188 = v168;
      *(&v188 + 1) = v166;
      v85 = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(&v183, &v187);
      v189[0] = v187;
      v189[1] = v188;
      v150 = OUTLINED_FUNCTION_19_49();
      sub_19376F35C(v150, v151, v152, v169);
      sub_19376F35C(v167, *(&v167 + 1), v168, v166);
      v153 = OUTLINED_FUNCTION_19_49();
      sub_19376F35C(v153, v154, v155, v169);
      sub_19376F370(v189);
      v179 = v183;
      v180 = v184;
      sub_19376F370(&v179);
      v111 = OUTLINED_FUNCTION_19_49();
      v114 = v169;
      goto LABEL_45;
    }

    v179 = v183;
    v180 = v184;
    v115 = OUTLINED_FUNCTION_19_49();
    v118 = sub_19376F35C(v115, v116, v117, v169);
    v126 = OUTLINED_FUNCTION_81_11(v118, v119, v120, v121, v122, v123, v124, v125, v162, v163, v164, v165, 1, v167);
    sub_19376F35C(v126, v127, v128, 1);
    v129 = OUTLINED_FUNCTION_19_49();
    sub_19376F35C(v129, v130, v131, v169);
    sub_19376F370(&v179);
  }

  v144 = OUTLINED_FUNCTION_19_49();
  sub_19345FF00(v144, v145, v146, v169);
  v147 = OUTLINED_FUNCTION_78_17();
  sub_19345FF00(v147, v148, v149, v110);
LABEL_30:
  v85 = 0;
  return v85 & 1;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v20 = v1;
  v21 = v0[5];
  v4 = v0[6];
  v19 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[12];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = v0[12];
    v10 = v0[11];
    v11 = v0[10];
    v12 = v0[9];
    v13 = *v0;
    v17 = v0[1];
    OUTLINED_FUNCTION_103_0();
    if ((v13 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
    }

    v5 = v12;
    if (v2)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v7 = v11;
    v8 = v10;
    v9 = v18;
  }

  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();

    sub_19393C640();
    if (v4)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    v14 = v20;
    v15 = v3;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_104_0();

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_15:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  v14 = v20;
  v15 = v3;
LABEL_19:
  sub_193640C90(v14, v15);
LABEL_20:
  if (v9 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  *&v22 = v5;
  *(&v22 + 1) = v7;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  OUTLINED_FUNCTION_103_0();
  v24[0] = v5;
  v24[1] = v7;
  v24[2] = v8;
  v24[3] = v9;
  sub_193763B40(v24, v25);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  v25[0] = v22;
  v25[1] = v23;
  return sub_19376F370(v25);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376D0B8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.assetSelector.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_60_21(a1);
  OUTLINED_FUNCTION_53_24();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.init()@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  OUTLINED_FUNCTION_44_24();
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  return OUTLINED_FUNCTION_76_16();
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v104 = a1[3];
  v105 = a1[8];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[8];
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_77_17();
    v18 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v18, v19, 1);
    if (v12 == 1)
    {
      v20 = OUTLINED_FUNCTION_28_28();
      sub_1935F2318(v20, v21, 1);
      goto LABEL_4;
    }

    v34 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v34, v35, v36);
    goto LABEL_10;
  }

  if (v12 == 1)
  {
    v30 = OUTLINED_FUNCTION_4_69();
    sub_1935F2318(v30, v10, 1);
    v31 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v31, v32, v33);

LABEL_10:
    v37 = OUTLINED_FUNCTION_5_64();
    sub_193456F74(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_11_47();
LABEL_29:
    sub_193456F74(v40, v41, v42);
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v9 & 0x100000000) != 0 || v2 != v9)
  {
    goto LABEL_26;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_77_17();
    v96 = v8;
    v84 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v84, v85, 0);
    v60 = 0;
    if (v12)
    {
      goto LABEL_27;
    }

    v86 = OUTLINED_FUNCTION_28_28();
    sub_1935F2318(v86, v87, 0);
    v88 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v88, v89, 0);
    v90 = OUTLINED_FUNCTION_28_28();
    v92 = 0;
    goto LABEL_39;
  }

  if (!v12)
  {
LABEL_26:
    v57 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v57, v58, v59);
    v60 = v4;
LABEL_27:
    v61 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v64, v65, v60);
    v66 = OUTLINED_FUNCTION_11_47();
    sub_193456F74(v66, v67, v68);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_77_17();
  v96 = v8;
  if (v3 == v10 && v4 == v12)
  {
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
    sub_1935F2318(v93, v94, v95);
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
LABEL_39:
    sub_193456F74(v90, v91, v92);
    goto LABEL_40;
  }

  v50 = OUTLINED_FUNCTION_83_21();
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_1935F2318(v51, v52, v53);
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_193456F74(v54, v55, v56);
  if ((v50 & 1) == 0)
  {
LABEL_28:

    v40 = OUTLINED_FUNCTION_5_64();
    goto LABEL_29;
  }

LABEL_40:

  v8 = v96;
LABEL_4:
  v22 = OUTLINED_FUNCTION_5_64();
  sub_193456F74(v22, v23, v24);
  if (v6 != 1)
  {
    v107[0] = v104;
    v107[1] = v6;
    v107[2] = v5;
    v107[3] = v7;
    v107[4] = v8;
    v107[5] = v105;
    if (v103 != 1)
    {
      v106[0] = v102;
      v106[1] = v103;
      v106[2] = v98;
      v106[3] = v100;
      v106[4] = v99;
      v106[5] = v101;
      v97 = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(v107, v106);
      v76 = OUTLINED_FUNCTION_2_73();
      sub_193641A34(v76, v77);
      v78 = OUTLINED_FUNCTION_208();
      sub_193641A34(v78, v79);
      v80 = OUTLINED_FUNCTION_2_73();
      sub_193641A34(v80, v81);

      v82 = OUTLINED_FUNCTION_2_73();
      sub_193640C90(v82, v83);
      return (v97 & 1) != 0;
    }

    v43 = OUTLINED_FUNCTION_2_73();
    sub_193641A34(v43, v44);
    OUTLINED_FUNCTION_73_17();
    sub_193641A34(v45, v46);
    v47 = OUTLINED_FUNCTION_2_73();
    sub_193641A34(v47, v48);

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_47();
  sub_193641A34(v25, v26);
  if (v103 != 1)
  {
    OUTLINED_FUNCTION_73_17();
    sub_193641A34(v70, v71);
LABEL_33:
    v72 = OUTLINED_FUNCTION_2_73();
    sub_193640C90(v72, v73);
    OUTLINED_FUNCTION_75_19();
    sub_193640C90(v74, v75);
    return 0;
  }

  v27 = 1;
  sub_193641A34(v102, 1);
  OUTLINED_FUNCTION_7_47();
  sub_193640C90(v28, v29);
  return v27;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  if (v2 != 1)
  {
    v9 = *v0;
    v8 = v0[1];
    sub_19393CAD0();
    if ((v9 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if (v2)
      {
LABEL_4:
        sub_19393CAD0();
        sub_19393C640();
        goto LABEL_7;
      }
    }
  }

  sub_19393CAD0();
LABEL_7:
  if (v4 == 1)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_116();
    return;
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393CAD0();

    sub_19393C640();
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_19393CAD0();
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_78_17();
    goto LABEL_16;
  }

  sub_19393CAD0();

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_19393CAD0();
  OUTLINED_FUNCTION_28_28();
  sub_19393C640();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_19393CAD0();
  sub_19393C640();
  OUTLINED_FUNCTION_78_17();
LABEL_16:
  OUTLINED_FUNCTION_116();

  sub_193640C90(v10, v11);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376D714()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.assetSelector.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_60_21(a1);
  OUTLINED_FUNCTION_53_24();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  *(v1 + 81) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.secureOperationMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  memcpy(a1, (v1 + 88), 0x58uLL);
  return sub_19344865C(__dst, &v4, &qword_1EAE427E0, &qword_193993768);
}

void *AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.secureOperationMetadata.setter(const void *a1)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE427E0, &qword_193993768);
  return memcpy((v1 + 88), a1, 0x58uLL);
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 88) = xmmword_1939526A0;
  v2 = (a1 + 88);
  OUTLINED_FUNCTION_72_13();
  sub_193456F74(0, 0, 1);
  *a1 = 0;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_44_24();
  *(a1 + 16) = xmmword_193961910;
  *(a1 + 32) = 1;
  *&v3 = OUTLINED_FUNCTION_76_16();
  *(a1 + 65) = v3;
  *(a1 + 81) = 1;
  memcpy(__dst, (a1 + 88), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE427E0, &qword_193993768);
  *v2 = xmmword_1939526A0;
  return OUTLINED_FUNCTION_72_13();
}

uint64_t sub_19376D9DC@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19376DA04@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19376DA2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19376DA38();
}

uint64_t sub_19376DA38()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19376DA94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19376DAA0();
}

uint64_t sub_19376DAE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_19376DAF0();
}

uint64_t sub_19376DAF0()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_19376DB48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_19376DB64();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.clientName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.clientName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.fromLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.fromLocation.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.failureReason.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.failureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.secureReason.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.secureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.result.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.result.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.init()(IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSecureState::Metadata *__return_ptr retstr)
{
  retstr->clientName = 0u;
  retstr->fromLocation = 0u;
  retstr->success.value = 2;
  retstr->failureReason = 0u;
  retstr->secureReason = 0u;
  retstr->result = 0u;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
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
      v54 = *(a1 + 64);
      v56 = *(a2 + 64);
      v51 = *(a2 + 72);
      v52 = *(a1 + 56);
      v49 = *(a1 + 80);
      v50 = *(a2 + 80);
      v24 = *(a1 + 72);
      v25 = *(a2 + 56);
      v26 = *(a1 + 48);
      v27 = *(a1 + 40);
      v28 = *(a2 + 48);
      v29 = *(a2 + 40);
      v58 = *(a1 + 32);
      v30 = *(a2 + 32);
      v48 = *(a1 + 16);
      v31 = sub_19393CA30();
      v16 = v30;
      v6 = v58;
      v18 = v29;
      v17 = v28;
      v8 = v27;
      v7 = v26;
      v19 = v25;
      v11 = v24;
      v4 = v48;
      v12 = v49;
      v21 = v50;
      v22 = v51;
      v9 = v52;
      v10 = v54;
      v20 = v56;
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
    if (!v15)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v15)
    {
      v53 = v7;
      v55 = v11;
      v33 = v19;
      v34 = v8;
      v57 = v17;
      v35 = v18;
      v59 = v6;
      v36 = v16;
      v37 = sub_19393CA30();
      v16 = v36;
      v6 = v59;
      v18 = v35;
      v11 = v55;
      v17 = v57;
      v8 = v34;
      v7 = v53;
      v19 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_24;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v6) & 1) == 0)
  {
LABEL_24:
    if (v7)
    {
      if (!v17)
      {
        return 0;
      }

      if (v8 != v18 || v7 != v17)
      {
        v40 = v9;
        v41 = v11;
        v42 = v19;
        v43 = sub_19393CA30();
        v19 = v42;
        v11 = v41;
        v9 = v40;
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v17)
    {
      return 0;
    }

    if (v10)
    {
      if (!v20)
      {
        return 0;
      }

      if (v9 != v19 || v10 != v20)
      {
        v45 = v11;
        v46 = sub_19393CA30();
        v11 = v45;
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v20)
    {
      return 0;
    }

    if (v12)
    {
      if (!v21)
      {
        return 0;
      }

      v47 = v11 == v22 && v12 == v21;
      return v47 || (sub_19393CA30() & 1) != 0;
    }

    return !v21;
  }

  return result;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[10];
  v11 = v0[9];
  if (v0[1])
  {
    v9 = *v0;
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

  sub_19393CAD0();
  if (v5)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_19393CAD0();
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();
    return;
  }

  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_19393CAD0();
  sub_19393C640();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_11:
  sub_19393CAD0();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376E268()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  return sub_19393CB00();
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v216 = v2[4];
  v222 = v2[5];
  v228 = v2[3];
  v234 = v2[6];
  v198 = v2[7];
  v6 = v2[8];
  v174 = v2[9];
  HIDWORD(v168) = *(v2 + 80);
  LODWORD(v186) = *(v2 + 81);
  memcpy(__dst, v2 + 11, sizeof(__dst));
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v192 = v1[3];
  v10 = v1[5];
  v240 = v1[6];
  v204 = v1[7];
  v210 = v1[4];
  v11 = v1[8];
  v162 = v1[9];
  HIDWORD(v156) = *(v1 + 80);
  HIDWORD(v180) = *(v1 + 81);
  memcpy(v255, v1 + 11, 0x58uLL);
  if (v5 == 1)
  {
    v12 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v12, v13, 1);
    if (v9 == 1)
    {
      v14 = OUTLINED_FUNCTION_28_28();
      sub_1935F2318(v14, v15, 1);
      goto LABEL_4;
    }

    v27 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v27, v28, v29);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v23 = OUTLINED_FUNCTION_4_69();
    sub_1935F2318(v23, v8, 1);
    v24 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v24, v25, v26);

LABEL_10:
    v30 = OUTLINED_FUNCTION_5_64();
    sub_193456F74(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_11_47();
LABEL_29:
    sub_193456F74(v33, v34, v35);
    goto LABEL_30;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v7 & 0x100000000) != 0 || v3 != v7)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    v90 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v90, v91, 0);
    v53 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    v92 = OUTLINED_FUNCTION_28_28();
    sub_1935F2318(v92, v93, 0);
    v94 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v94, v95, 0);
    v96 = OUTLINED_FUNCTION_28_28();
    v98 = 0;
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_26:
    v50 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v50, v51, v52);
    v53 = v5;
LABEL_27:
    v54 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v57, v58, v53);
    v59 = OUTLINED_FUNCTION_11_47();
    sub_193456F74(v59, v60, v61);
    goto LABEL_28;
  }

  if (v4 == v8 && v5 == v9)
  {
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
    sub_1935F2318(v99, v100, v101);
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
LABEL_45:
    sub_193456F74(v96, v97, v98);
    goto LABEL_46;
  }

  v43 = OUTLINED_FUNCTION_83_21();
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_1935F2318(v44, v45, v46);
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_193456F74(v47, v48, v49);
  if ((v43 & 1) == 0)
  {
LABEL_28:

    v33 = OUTLINED_FUNCTION_5_64();
    goto LABEL_29;
  }

LABEL_46:

LABEL_4:
  v16 = OUTLINED_FUNCTION_5_64();
  sub_193456F74(v16, v17, v18);
  if (v216 == 1)
  {
    OUTLINED_FUNCTION_10_58();
    sub_193641A34(v19, v20);
    if (v210 == 1)
    {
      sub_193641A34(v192, 1);
      OUTLINED_FUNCTION_10_58();
      sub_193640C90(v21, v22);
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_208();
    OUTLINED_FUNCTION_94_16();
    sub_193641A34(v62, v63);
LABEL_32:
    v64 = OUTLINED_FUNCTION_6_57();
    sub_193640C90(v64, v65);
    v66 = OUTLINED_FUNCTION_208();
    sub_193640C90(v66, v67);
    goto LABEL_30;
  }

  __src[0] = v228;
  __src[1] = v216;
  __src[2] = v222;
  __src[3] = v234;
  __src[4] = v198;
  __src[5] = v6;
  v150 = v10;
  if (v210 == 1)
  {
    v36 = OUTLINED_FUNCTION_6_57();
    sub_193641A34(v36, v37);
    OUTLINED_FUNCTION_94_16();
    sub_193641A34(v38, v39);
    v40 = OUTLINED_FUNCTION_6_57();
    sub_193641A34(v40, v41);

    goto LABEL_32;
  }

  v249[0] = v192;
  v249[1] = v210;
  v249[2] = v10;
  v249[3] = v240;
  v249[4] = v204;
  v249[5] = v11;
  HIDWORD(v144) = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(__src, v249);
  v68 = OUTLINED_FUNCTION_6_57();
  sub_193641A34(v68, v69);
  v70 = OUTLINED_FUNCTION_208();
  sub_193641A34(v70, v71);
  v72 = OUTLINED_FUNCTION_6_57();
  sub_193641A34(v72, v73);

  v74 = OUTLINED_FUNCTION_6_57();
  sub_193640C90(v74, v75);
  if ((v144 & 0x100000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_34:
  if (v186)
  {
    if ((v180 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v180 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    __src[0] = v174;
    LOBYTE(__src[1]) = BYTE4(v168) & 1;
    v249[0] = v162;
    LOBYTE(v249[1]) = BYTE4(v156) & 1;
    v76 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
    if (v76 != AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter())
    {
      goto LABEL_30;
    }
  }

  v77 = __dst[0];
  v78 = __dst[1];
  memcpy(v253, &__dst[2], sizeof(v253));
  v80 = v255[0];
  v79 = v255[1];
  v81 = memcpy(v252, &v255[2], sizeof(v252));
  if (__dst[1] == 1)
  {
    if (v255[1] == 1)
    {
      __src[0] = __dst[0];
      __src[1] = 1;
      OUTLINED_FUNCTION_97_11(v81, v82, v83, v84, v85, v86, v87, v88, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0], v247[1], v247[2], v247[3], v247[4], v247[5], v247[6], v247[7], v247[8], v247[9], v247[10], v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9], v248[10], v249[0], v249[1], v249[2], v249[3], v249[4]);
      sub_19344865C(__dst, v249, &qword_1EAE427E0, &qword_193993768);
      sub_19344865C(v255, v249, &qword_1EAE427E0, &qword_193993768);
      v89 = __src;
LABEL_52:
      sub_193442B60(v89, &qword_1EAE427E0, &qword_193993768);
      goto LABEL_30;
    }

    sub_19344865C(__dst, __src, &qword_1EAE427E0, &qword_193993768);
    sub_19344865C(v255, __src, &qword_1EAE427E0, &qword_193993768);
  }

  else
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_97_11(v81, v82, v83, v84, v85, v86, v87, v88, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0], v247[1], v247[2], v247[3], v247[4], v247[5], v247[6], v247[7], v247[8], v247[9], v247[10], v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9], v248[10], v249[0], v249[1], v249[2], v249[3], v249[4]);
    memcpy(v249, __src, sizeof(v249));
    if (v79 != 1)
    {
      memcpy(&v248[2], &v255[2], 0x48uLL);
      v248[0] = v80;
      v248[1] = v79;
      static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(v249, v248);
      memcpy(v246, v248, sizeof(v246));
      OUTLINED_FUNCTION_84_15(__dst, v123, v124, v125, v126, v127, v128, v129, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
      OUTLINED_FUNCTION_84_15(v255, v130, v131, v132, v133, v134, v135, v136, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
      OUTLINED_FUNCTION_84_15(__src, v137, v138, v139, v140, v141, v142, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
      sub_19376F3A0(v246);
      memcpy(v247, v249, sizeof(v247));
      sub_19376F3A0(v247);
      v248[0] = v77;
      v248[1] = v78;
      memcpy(&v248[2], v253, 0x48uLL);
      v89 = v248;
      goto LABEL_52;
    }

    memcpy(v248, __src, sizeof(v248));
    OUTLINED_FUNCTION_85_19(__dst, v102, v103, v104, v105, v106, v107, v108, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
    OUTLINED_FUNCTION_85_19(v255, v109, v110, v111, v112, v113, v114, v115, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
    OUTLINED_FUNCTION_85_19(__src, v116, v117, v118, v119, v120, v121, v122, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0]);
    sub_19376F3A0(v248);
  }

  __src[0] = v77;
  __src[1] = v78;
  memcpy(&__src[2], v253, 0x48uLL);
  __src[11] = v80;
  __src[12] = v79;
  memcpy(v251, v252, sizeof(v251));
  sub_193442B60(__src, &qword_1EAE427E8, &qword_193993770);
LABEL_30:
  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v19 = v1;
  v20 = v0[5];
  v4 = v0[6];
  v17 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v18 = *(v0 + 80);
  v21 = *(v0 + 81);
  v7 = v0[11];
  v8 = v0[12];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = v0[9];
    v9 = v0[12];
    v10 = *v0;
    v15 = v0[1];
    OUTLINED_FUNCTION_103_0();
    if ((v10 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
    }

    v8 = v9;
    if (v2)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v5 = v16;
  }

  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v3)
  {
    OUTLINED_FUNCTION_103_0();

    sub_19393C640();
    if (v4)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    v11 = v19;
    v12 = v3;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_104_0();

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_15:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  v11 = v19;
  v12 = v3;
LABEL_19:
  sub_193640C90(v11, v12);
LABEL_20:
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v5;
    LOBYTE(__dst[1]) = v18 & 1;
    v13 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
    MEMORY[0x193B18030](v13);
  }

  if (v8 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(&__src[2], v0 + 13, 0x48uLL);
  __src[0] = v7;
  __src[1] = v8;
  OUTLINED_FUNCTION_103_0();
  v23[0] = v7;
  v23[1] = v8;
  memcpy(v24, v0 + 13, sizeof(v24));
  sub_1937642B8(v23, __dst);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  memcpy(__dst, __src, 0x58uLL);
  return sub_19376F3A0(__dst);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376EBB0()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19376F3D0(v2, v3, v4, v5);
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.setter()
{
  sub_19376F414(v0[3], v0[4], v0[5], v0[6]);
  *&result = OUTLINED_FUNCTION_53_24().n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_93_12();
  result = sub_19376F414(v3, v4, v5, v6);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  return result;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 14);
  v10 = *(a1 + 60);
  v12 = *a2;
  v11 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = *(a2 + 14);
  v19 = *(a2 + 60);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_62_21();
    v20 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v20, v21, 1);
    if (v14 == 1)
    {
      v22 = OUTLINED_FUNCTION_166();
      sub_1935F2318(v22, v23, 1);
      goto LABEL_4;
    }

    v50 = OUTLINED_FUNCTION_26_30();
    sub_1935F2318(v50, v51, v52);
    goto LABEL_10;
  }

  if (v14 == 1)
  {
    v42 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_166();
    sub_1935F2318(v45, v46, 1);
    v47 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v47, v48, v49);

LABEL_10:
    v53 = OUTLINED_FUNCTION_14_53();
    sub_193456F74(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_26_30();
LABEL_29:
    sub_193456F74(v56, v57, v58);
    return 0;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v12 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v12 & 0x100000000) != 0 || v3 != v12)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_62_21();
    v145 = v7;
    v127 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v127, v128, 0);
    v95 = 0;
    if (v14)
    {
      goto LABEL_27;
    }

    v129 = OUTLINED_FUNCTION_166();
    sub_1935F2318(v129, v130, 0);
    v131 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v131, v132, 0);
    v133 = OUTLINED_FUNCTION_166();
    v135 = 0;
    goto LABEL_44;
  }

  if (!v14)
  {
LABEL_26:
    v92 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v92, v93, v94);
    v95 = v5;
LABEL_27:
    v96 = OUTLINED_FUNCTION_26_30();
    sub_1935F2318(v96, v97, v98);
    v99 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v99, v100, v95);
    v101 = OUTLINED_FUNCTION_26_30();
    sub_193456F74(v101, v102, v103);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_62_21();
  v145 = v7;
  if (v2 == v11 && v5 == v14)
  {
    v136 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v136, v137, v138);
    v139 = OUTLINED_FUNCTION_165_1();
    sub_1935F2318(v139, v140, v5);
    v141 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v141, v142, v143);
    v133 = OUTLINED_FUNCTION_165_1();
    v135 = v5;
LABEL_44:
    sub_193456F74(v133, v134, v135);
    goto LABEL_45;
  }

  v79 = sub_19393CA30();
  v80 = OUTLINED_FUNCTION_14_53();
  sub_1935F2318(v80, v81, v82);
  v83 = OUTLINED_FUNCTION_26_30();
  sub_1935F2318(v83, v84, v85);
  v86 = OUTLINED_FUNCTION_14_53();
  sub_1935F2318(v86, v87, v88);
  v89 = OUTLINED_FUNCTION_26_30();
  sub_193456F74(v89, v90, v91);
  if ((v79 & 1) == 0)
  {
LABEL_28:

    v56 = OUTLINED_FUNCTION_14_53();
    goto LABEL_29;
  }

LABEL_45:

LABEL_4:
  v24 = OUTLINED_FUNCTION_14_53();
  sub_193456F74(v24, v25, v26);
  if (v8 == 1)
  {
    v27 = OUTLINED_FUNCTION_20_44();
    v30 = sub_19376F3D0(v27, v28, v29, 1);
    v38 = v150;
    if (v150 == 1)
    {
      sub_19376F3D0(v149, v151, v148, 1);
      v39 = OUTLINED_FUNCTION_20_44();
      sub_19376F414(v39, v40, v41, 1);
      goto LABEL_34;
    }

    v105 = OUTLINED_FUNCTION_80_17(v30, v31, v32, v33, v34, v35, v36, v37, v144, v145, v146, v147, v148, v149);
    sub_19376F3D0(v105, v106, v107, v150);
LABEL_32:
    v108 = OUTLINED_FUNCTION_20_44();
    sub_19376F414(v108, v109, v110, v8);
    v111 = OUTLINED_FUNCTION_182();
    sub_19376F414(v111, v112, v2, v38);
    return 0;
  }

  if (v150 == 1)
  {
    v59 = OUTLINED_FUNCTION_20_44();
    v38 = 1;
    v62 = sub_19376F3D0(v59, v60, v61, v8);
    v70 = OUTLINED_FUNCTION_80_17(v62, v63, v64, v65, v66, v67, v68, v69, v144, v145, v146, v147, v148, v149);
    sub_19376F3D0(v70, v71, v72, 1);
    v73 = OUTLINED_FUNCTION_20_44();
    sub_19376F3D0(v73, v74, v75, v8);
    v76 = OUTLINED_FUNCTION_127();
    sub_193456418(v76, v77);

    goto LABEL_32;
  }

  v113 = OUTLINED_FUNCTION_20_44();
  sub_19376F3D0(v113, v114, v115, v8);
  sub_19376F3D0(v149, v151, v148, v150);
  v116 = OUTLINED_FUNCTION_20_44();
  sub_19376F3D0(v116, v117, v118, v8);
  static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.== infix(_:_:)();
  v120 = v119;
  sub_193456418(v149, v151);

  v121 = OUTLINED_FUNCTION_127();
  sub_193456418(v121, v122);

  v123 = OUTLINED_FUNCTION_20_44();
  sub_19376F414(v123, v124, v125, v8);
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((v147 & 0x100000000) == 0)
  {
    v126 = v147;
    if (HIDWORD(v146) != v146)
    {
      v126 = 1;
    }

    return (v126 & 1) == 0;
  }

  return (v147 & 1) != 0;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(v1 + 14);
  v8 = *(v1 + 60);
  if (v3 != 1)
  {
    v10 = *v1;
    v9 = v1[1];
    sub_19393CAD0();
    if ((v10 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if (v3)
      {
LABEL_4:
        sub_19393CAD0();
        sub_19393C640();
        goto LABEL_7;
      }
    }
  }

  sub_19393CAD0();
LABEL_7:
  sub_19376F264(v0, v2, v4, v5, v6);
  sub_19393CAD0();
  if ((v8 & 1) == 0)
  {
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F1A4()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F224()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (a3 == 1)
  {
    sub_19393CAD0();
    if (!a5)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (a3)
    {

      sub_19393C640();
      v9 = a2;
      v10 = a3;
    }

    else
    {
      v9 = a2;
      v10 = 0;
    }

    sub_193456418(v9, v10);
    if (!a5)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19376F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_19376F3D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_19350CB08(result, a2);
  }

  return result;
}

uint64_t sub_19376F414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

unint64_t sub_19376F45C()
{
  result = qword_1EAE427F0;
  if (!qword_1EAE427F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE427F0);
  }

  return result;
}

unint64_t sub_19376F4B4()
{
  result = qword_1EAE3A820;
  if (!qword_1EAE3A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A820);
  }

  return result;
}

unint64_t sub_19376F50C()
{
  result = qword_1EAE3A828;
  if (!qword_1EAE3A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A828);
  }

  return result;
}

unint64_t sub_19376F564()
{
  result = qword_1EAE3A830;
  if (!qword_1EAE3A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A830);
  }

  return result;
}

unint64_t sub_19376F5C4()
{
  result = qword_1EAE427F8;
  if (!qword_1EAE427F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE427F8);
  }

  return result;
}

unint64_t sub_19376F624()
{
  result = qword_1EAE42800;
  if (!qword_1EAE42800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE42808, &qword_193993BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42800);
  }

  return result;
}

unint64_t sub_19376F68C()
{
  result = qword_1EAE42810;
  if (!qword_1EAE42810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42810);
  }

  return result;
}

unint64_t sub_19376F6E4()
{
  result = qword_1EAE42818;
  if (!qword_1EAE42818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42818);
  }

  return result;
}

unint64_t sub_19376F744()
{
  result = qword_1EAE42820;
  if (!qword_1EAE42820)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42820);
  }

  return result;
}

void sub_19376F7C4()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED503B88);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5034B8);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED5034B0);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1ED503B78);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED503B80);
                if (v7 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED5034C0);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_19376FA0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 72);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_19376FA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_19376FAD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 104))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FB18(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t sub_19376FB98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 72))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FBE0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t sub_19376FC50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 176))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FC98(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_19376FD58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 61))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FDA0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_21(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];

  return sub_193640C90(v5, v6);
}

uint64_t OUTLINED_FUNCTION_65_21()
{

  return type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
}

double OUTLINED_FUNCTION_72_13()
{
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void *OUTLINED_FUNCTION_97_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a72, (v72 + 16), 0x48uLL);
}

uint64_t sub_19376FF38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512178);
  v5 = __swift_project_value_buffer(v4, qword_1ED512178);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_63 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512178);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42828, &qword_193994580);
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

unint64_t static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog.attribute(_:)(void (*a1)(void))
{
  result = sub_193770348(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193770390(void (*a1)(void))
{
  result = sub_193770348(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937703C0(uint64_t a1)
{
  result = sub_1937703E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937703E8()
{
  result = qword_1ED503B48;
  if (!qword_1ED503B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B48);
  }

  return result;
}

_BYTE *_s12ModelCatalogOwst_0(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingModelCatalogLog.json()()
{
  v1 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  sub_1937706D0(v0, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  sub_193770734();
  v23 = sub_19393C250();
  v25 = v24;
  (*(v4 + 8))(v9, v1);
  sub_19344E6DC(v22, &qword_1EAE42830, &qword_1939945F8);
  v26 = v23;
  v27 = v25;
  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

uint64_t sub_1937706D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193770734()
{
  result = qword_1EAE3A870;
  if (!qword_1EAE3A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE42830, &qword_1939945F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A870);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  sub_193770734();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_74();
    return sub_193770FDC(v10, a1, v12);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_6();
  v14 = sub_19393C0C0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  if (*sub_193772DF0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v17 + 16))(v22, v24, v14);
    sub_193450688(a1, a2);
    sub_193770734();
    v25 = v42;
    sub_19393C280();
    if (v25)
    {
      return (*(v17 + 8))(v24, v14);
    }

    else
    {
      (*(v17 + 8))(v24, v14);
      OUTLINED_FUNCTION_2_74();
      v28 = v37;
      sub_193770FDC(v6, v37, v29);
      v30 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v32);
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceReportingModelCatalogLog.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1937706D0(v0, v7);
  sub_1934470C8(v7, v1, v13);
  sub_193770734();
  v14 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE42830, &qword_1939945F8);
  return v14;
}

int *sub_193770D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  v11 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v18 || (sub_19393CA30() & 1) != 0)
  {
    v19 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
    sub_19375F0BC(v3 + *(v19 + 28), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE425B0, &qword_193993040);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_193770FDC(v4, v17, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
    sub_193494798(v11, &off_1F07EDD08, a3);
    return sub_19375F18C(v17);
  }

  else
  {
    v21 = a1 == 0xD000000000000022 && 0x8000000193A35A60 == a2;
    if (v21 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      v22 = (v3 + result[8]);
      if (v22[5] == 1)
      {
        goto LABEL_8;
      }

      v23 = v22[3];
      v24 = v22[1];
      v28 = *v22;
      v29 = v22[2];
      v30 = v22[4];
      v31 = v22[5];
      return sub_193494798(&type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState, &off_1F07EF438, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v26 = v25;
      *v25 = a1;
      v25[1] = a2;
      v25[5] = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26 + 2);
      sub_1937706D0(v3, boxed_opaque_existential_1Tm);
      *(v26 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_193770FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193771054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x72656767697274;
  v7 = v3[1];
  v17 = *v3;
  v18 = v7;
  v19 = v3[2];
  v8 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (BYTE9(v17))
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    *&v16 = v17;
    BYTE8(v16) = BYTE8(v17) & 1;
    return sub_1934948FC();
  }

  result = 0x6E6F69746361;
  v10 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (BYTE9(v18))
    {
      goto LABEL_7;
    }

    *&v16 = v18;
    BYTE8(v16) = BYTE8(v18) & 1;
    return sub_1934948FC();
  }

  result = 0x6564496863746162;
  v11 = a1 == 0x6564496863746162 && a2 == 0xEF7265696669746ELL;
  if (v11 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (!*(&v19 + 1))
    {
      goto LABEL_7;
    }

    v16 = v19;
    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v13 = v12;
  *v12 = a1;
  v12[1] = a2;
  v12[5] = &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState;
  v14 = swift_allocObject();
  v13[2] = v14;
  v15 = v19;
  v14[2] = v18;
  v14[3] = v15;
  v14[1] = v17;
  *(v13 + 48) = 1;
  swift_willThrow();

  return sub_193771238(&v17, &v16);
}

double AppleIntelligenceReportingModelCatalogLog.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193760F9C();
  v6 = (a1 + v2[8]);
  sub_193773088(v6);
  *a1 = *sub_193772DF0();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE425B0, &qword_193993040);
  v8 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  sub_193528CDC(*v6, v6[1], v6[2], v6[3], v6[4], v6[5]);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[4] = 0;
  v6[5] = 1;
  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B8, &qword_1939930B0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v93 - v17;
  v19 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v20 = *(v19 + 28);
  v21 = *(v15 + 56);
  sub_19375F0BC(a1 + v20, v18);
  sub_19375F0BC(a2 + v20, &v18[v21]);
  OUTLINED_FUNCTION_31(v18);
  if (!v22)
  {
    sub_19375F0BC(v18, v13);
    OUTLINED_FUNCTION_31(&v18[v21]);
    if (!v22)
    {
      sub_19375F934(&v18[v21], v9);
      sub_19375FB68(&qword_1EAE42570);
      v23 = sub_19393C550();
      sub_19375F18C(v9);
      sub_19375F18C(v13);
      sub_19344E6DC(v18, &qword_1EAE425B0, &qword_193993040);
      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_19375F18C(v13);
LABEL_9:
    sub_19344E6DC(v18, &qword_1EAE425B8, &qword_1939930B0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_31(&v18[v21]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v18, &qword_1EAE425B0, &qword_193993040);
LABEL_11:
  v24 = *(v19 + 32);
  v25 = (a1 + v24);
  v26 = *(a1 + v24);
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = v25[4];
  v31 = v25[5];
  v32 = (a2 + v24);
  v34 = *v32;
  v33 = v32[1];
  v36 = v32[2];
  v35 = v32[3];
  v37 = v32[5];
  v96 = v32[4];
  if (v31 == 1)
  {
    v94 = 1;
    v38 = OUTLINED_FUNCTION_1_73();
    v40 = v39;
    sub_193771838(v38, v41, v42, v43, v39, 1);
    if (v37 == 1)
    {
      OUTLINED_FUNCTION_0_97();
      sub_193771838(v44, v45, v46, v47, v48, 1);
      v49 = OUTLINED_FUNCTION_1_73();
      v53 = v40;
      v54 = 1;
LABEL_21:
      sub_193528CDC(v49, v50, v51, v52, v53, v54);
      return v37 & 1;
    }

    v95 = v34;
    OUTLINED_FUNCTION_0_97();
    sub_193771838(v71, v72, v73, v74, v75, v37);
    v58 = v94;
  }

  else
  {
    v102 = v26;
    v103 = v27;
    v104 = v28;
    v105 = v29;
    v106 = v30;
    v107 = v31;
    if (v37 != 1)
    {
      *&v97 = v34;
      *(&v97 + 1) = v33;
      *&v98 = v36;
      *(&v98 + 1) = v35;
      v86 = v96;
      *&v99 = v96;
      *(&v99 + 1) = v37;
      v93[2] = v26;
      v93[1] = v27;
      sub_193771838(v26, v27, v28, v29, v30, v31);
      sub_193771838(v34, v33, v36, v35, v86, v37);
      OUTLINED_FUNCTION_10_59();
      sub_193771838(v87, v88, v89, v90, v91, v92);
      sub_1937718A0();
      LOBYTE(v37) = sub_19393C550();
      v100[0] = v97;
      v100[1] = v98;
      v100[2] = v99;
      sub_19377184C(v100);
      OUTLINED_FUNCTION_12_47();
      sub_19377184C(v101);
      OUTLINED_FUNCTION_10_59();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_12_47();
    v95 = v34;
    v55 = OUTLINED_FUNCTION_1_73();
    v40 = v56;
    v58 = v57;
    sub_193771838(v55, v59, v60, v61, v56, v57);
    OUTLINED_FUNCTION_0_97();
    sub_193771838(v62, v63, v64, v65, v66, 1);
    v67 = OUTLINED_FUNCTION_1_73();
    sub_193771838(v67, v68, v69, v70, v40, v58);
    sub_19377184C(v101);
  }

  v76 = OUTLINED_FUNCTION_1_73();
  sub_193528CDC(v76, v77, v78, v79, v40, v58);
  OUTLINED_FUNCTION_0_97();
  sub_193528CDC(v80, v81, v82, v83, v84, v37);
LABEL_18:
  LOBYTE(v37) = 0;
  return v37 & 1;
}

uint64_t sub_193771838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

unint64_t sub_1937718A0()
{
  result = qword_1EAE42838;
  if (!qword_1EAE42838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42838);
  }

  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  sub_19375F0BC(v1 + *(v12 + 28), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19375F934(v11, v7);
    sub_19393CAD0();
    sub_19375FB68(&qword_1EAE425C8);
    sub_19393C540();
    sub_19375F18C(v7);
  }

  v13 = (v1 + *(v12 + 32));
  v14 = v13[5];
  if (v14 == 1)
  {
    return sub_19393CAD0();
  }

  v17 = v13[3];
  v16 = v13[4];
  v19 = v13[1];
  v18 = v13[2];
  *&v21 = *v13;
  v20 = v21;
  *(&v21 + 1) = v19;
  *&v22 = v18;
  *(&v22 + 1) = v17;
  *&v23 = v16;
  *(&v23 + 1) = v14;
  sub_19393CAD0();
  v24[0] = v20;
  v24[1] = v19;
  v24[2] = v18;
  v24[3] = v17;
  v24[4] = v16;
  v24[5] = v14;
  sub_193771238(v24, v25);
  sub_193771AF4();
  sub_19393C540();
  v25[0] = v21;
  v25[1] = v22;
  v25[2] = v23;
  return sub_19377184C(v25);
}

unint64_t sub_193771AF4()
{
  result = qword_1EAE42840;
  if (!qword_1EAE42840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42840);
  }

  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

char *static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.allCases.getter()
{
  v3 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42860, &qword_193994718);
  v4 = OUTLINED_FUNCTION_17_27(v3);
  if (!(!v10 & v9))
  {
    v27 = OUTLINED_FUNCTION_39(v8);
    v31 = OUTLINED_FUNCTION_84_2(v27, v28, v29, v30, &qword_1EAE42860, &qword_193994718);
    v4 = OUTLINED_FUNCTION_17_2(v31);
  }

  OUTLINED_FUNCTION_15_5(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v32 = OUTLINED_FUNCTION_39(v15);
    v34 = sub_1934B0FCC(v32, v1, 1, v33, &qword_1EAE42860, &qword_193994718);
    v11 = OUTLINED_FUNCTION_17_2(v34);
  }

  OUTLINED_FUNCTION_10_36(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v35 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v35, v36, v37, v38, &qword_1EAE42860, &qword_193994718);
    v21 = v18;
  }

  OUTLINED_FUNCTION_20_27(v18, v19, v20, v21);
  v24 = *(v23 + 3);
  if (v2 + 4 > (v24 >> 1))
  {
    v39 = OUTLINED_FUNCTION_39(v24);
    v23 = sub_1934B0FCC(v39, v2 + 4, 1, v40, &qword_1EAE42860, &qword_193994718);
  }

  *(v23 + 2) = v2 + 4;
  v25 = &v23[16 * v0];
  *(v25 + 4) = 2;
  v25[40] = 1;
  return v23;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6C616E7265746E49;
  if (*v0 != 1)
  {
    v1 = 0x656C756465686353;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 0xD000000000000012 && 0x8000000193A35A90 == v1;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x6C616E7265746E49 && v1 == 0xEC0000006C6F6F54;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656C756465686353 && v1 == 0xE900000000000064)
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

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter()
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

uint64_t static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.allCases.getter()
{
  v1 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42858, &qword_193994710);
  v2 = OUTLINED_FUNCTION_17_27(v1);
  if (!(!v8 & v7))
  {
    v23 = OUTLINED_FUNCTION_39(v6);
    v27 = OUTLINED_FUNCTION_84_2(v23, v24, v25, v26, &qword_1EAE42858, &qword_193994710);
    v2 = OUTLINED_FUNCTION_17_2(v27);
  }

  OUTLINED_FUNCTION_15_5(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v28 = OUTLINED_FUNCTION_39(v13);
    v30 = sub_1934B0FCC(v28, v0, 1, v29, &qword_1EAE42858, &qword_193994710);
    v9 = OUTLINED_FUNCTION_17_2(v30);
  }

  OUTLINED_FUNCTION_10_36(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v31 = OUTLINED_FUNCTION_39(v20);
    v16 = OUTLINED_FUNCTION_84_2(v31, v32, v33, v34, &qword_1EAE42858, &qword_193994710);
    v19 = v16;
  }

  OUTLINED_FUNCTION_20_27(v16, v17, v18, v19);
  return v21;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x7263736275736E55;
  }

  else
  {
    result = 0x6269726373627553;
  }

  *v0;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.init(_:)()
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
    v8 = v2 == 0x6269726373627553 && v1 == 0xE900000000000065;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x7263736275736E55 || v1 != 0xEB00000000656269)
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

unint64_t sub_1937720FC()
{
  result = qword_1EAE42848;
  if (!qword_1EAE42848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42848);
  }

  return result;
}

unint64_t sub_193772154()
{
  result = qword_1EAE42850;
  if (!qword_1EAE42850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42850);
  }

  return result;
}

void sub_1937721A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD838);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_34_5(v8, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("event");
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_10_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_48(v13, "modelCatalogSubscriptionEventState");
  (v12)(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772308()
{
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v5 = v0 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32);
LABEL_7:
      sub_193498018();
    }

    else if (v2 == 1)
    {
      v4 = *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 28);
      type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
      goto LABEL_7;
    }
  }
}

void sub_1937723FC()
{
  sub_1937724E0(v0);
  if (!v1)
  {
    v2 = (v0 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32));
    if (v2[5] != 1)
    {
      v3 = v2[3];
      v4 = v2[1];
      v5 = *v2;
      v6 = v2[2];
      v7 = v2[4];
      sub_193447600();
    }
  }
}

uint64_t sub_1937724E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  sub_19375F0BC(a1 + *(v12 + 28), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_193760D5C(v5);
  }

  sub_19375F934(v5, v11);
  sub_193447600();
  return sub_19375F18C(v11);
}

void sub_19377269C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD850);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("trigger");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  *v11 = "action";
  *(v11 + 8) = 6;
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = 3;
  v15 = OUTLINED_FUNCTION_48(v13, "batchIdentifier");
  (v10)(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772818()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_19393C200();
    }

    else if (v1 == 2 || v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1937728F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 25);
  v8 = v3[4];
  v9 = v3[5];
  if ((*(v3 + 9) & 1) == 0)
  {
    v11 = *v3;
    v12 = *(v3 + 8);
    result = sub_193447324(&v11, 1, a2, &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger, a3, &off_1F07EF4A8);
  }

  if (!v4)
  {
    if ((v7 & 1) == 0)
    {
      v11 = v3[2];
      v12 = *(v3 + 24);
      result = sub_193447324(&v11, 2, a2, &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction, a3, &off_1F07EF4D0);
    }

    if (v9)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

void sub_193772A44()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD868);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19394FBC0;
  v7 = v6 + v5 + dword_1EAEAD8A0;
  *(v6 + v5) = 0;
  *v7 = "TriggerUnknown";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  v11(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5 + v3);
  *v13 = 1;
  v14 = OUTLINED_FUNCTION_25(v12, "TriggerAvailabilityChange");
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v6 + v5 + 2 * v3);
  *v16 = 2;
  v17 = OUTLINED_FUNCTION_25(v15, "TriggerInternalTool");
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + v5 + 3 * v3);
  *v19 = 3;
  *v18 = "TriggerScheduled";
  *(v18 + 8) = 16;
  *(v18 + 16) = 2;
  (v11)();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772C4C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD880);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SubscriptionActionUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = 1;
  *v11 = "SubscriptionActionSubscribe";
  *(v11 + 8) = 27;
  *(v11 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_48(v13, "SubscriptionActionUnsubscribe");
  (v10)(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingModelCatalogLog()
{
  result = qword_1ED50CA50;
  if (!qword_1ED50CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingModelCatalogLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

double sub_193773088@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;

  return sub_193771838(v3, v4, v5, v6, v7, v8);
}

__n128 AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32));
  sub_193528CDC(*v5, v5[1], v5[2], v5[3], v5[4], v5[5]);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v7;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.trigger.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.trigger.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.batchIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.batchIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_1937732C4@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937732EC@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193773348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193773428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193773534@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377355C@<X0>(uint64_t *a1@<X8>)
{
  result = static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 9);
  v8 = a2[2];
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v12 = a2[4];
  v11 = a2[5];
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v22 = a1[4];
    v23 = a1[5];
    v26 = *a1;
    v27 = a1[1] & 1;
    v24 = *a2;
    v25 = a2[1] & 1;
    v13 = a2[5];
    v14 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
    v15 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
    v11 = v13;
    v5 = v22;
    v6 = v23;
    if (v14 != v15)
    {
      return 0;
    }
  }

  if (v4)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      return 0;
    }

    v16 = v5;
    v17 = v11;
    v18 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
    v19 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
    v11 = v17;
    v5 = v16;
    if (v18 != v19)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v20 = v5 == v12 && v6 == v11;
    return v20 || (sub_19393CA30() & 1) != 0;
  }

  return !v11;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = v0[5];
  if (*(v0 + 9) == 1)
  {
    sub_19393CAD0();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  v8 = *(v0 + 8);
  v9 = *v0;
  sub_19393CAD0();
  v10 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
  MEMORY[0x193B18030](v10);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  v6 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
  MEMORY[0x193B18030](v6);
  if (!v5)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19377390C()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193773994()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193773A04()
{
  result = qword_1EAE42898;
  if (!qword_1EAE42898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42898);
  }

  return result;
}

unint64_t sub_193773A8C()
{
  result = qword_1EAE428B0;
  if (!qword_1EAE428B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428B0);
  }

  return result;
}

unint64_t sub_193773AE8()
{
  result = qword_1EAE428B8;
  if (!qword_1EAE428B8)
  {
    type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428B8);
  }

  return result;
}

void sub_193773B6C()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_193773C68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193773C68()
{
  if (!qword_1ED503B70)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED503B70);
    }
  }
}

uint64_t sub_193773CB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      OUTLINED_FUNCTION_71();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s10InvocationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193773E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5121D8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5121D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.Invocation.Step.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:104857600 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_64 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5121D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C0, &qword_193994B20);
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

unint64_t static Library.Streams.AppleIntelligence.Reporting.Invocation.Step.attribute(_:)(void (*a1)(void))
{
  result = sub_193774210(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193774258(void (*a1)(void))
{
  result = sub_193774210(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193774288(uint64_t a1)
{
  result = sub_1937742B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937742B0()
{
  result = qword_1ED503EC8;
  if (!qword_1ED503EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503EC8);
  }

  return result;
}

_BYTE *_s4StepOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingInvocationStep.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_19345227C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE428C8, &qword_193994B90);
  sub_19393C250();
  (*(v3 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

void static AppleIntelligenceReportingInvocationStep.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE428C8, &qword_193994B90);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_11_48();
    sub_193775B80(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static AppleIntelligenceReportingInvocationStep.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v41 = v2;
  v42 = v1;
  v40 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  if (*sub_19344B5E8() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    (*(v18 + 16))(v24, v27, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v28, v29, v30);
    sub_19393C280();
    (*(v18 + 8))(v27, v16);
    if (!v0)
    {
      OUTLINED_FUNCTION_11_48();
      v32 = v41;
      sub_193775B80(v15, v41, v33);
      v34 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
      v35 = *(v34 + 20);
      sub_19344E6DC(v32 + v35, &qword_1EAE3A9E8, &qword_19394F800);
      v36 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v36);
      (*(v37 + 16))(v32 + v35, v40, v36);
      __swift_storeEnumTagSinglePayload(v32 + v35, 0, 1, v36);
      v38 = *(v34 + 24);
      sub_19344E6DC(v32 + v38, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v42, v32 + v38);
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

id static AppleIntelligenceReportingInvocationStep.columns.getter()
{
  v242 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x6574737973627573, 0xE90000000000006DLL);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  OUTLINED_FUNCTION_32_31();
  OUTLINED_FUNCTION_31_36();
  result = OUTLINED_FUNCTION_3_5(v30, v31);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v234);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v49 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v49);
  v50 = OUTLINED_FUNCTION_29_28();
  result = OUTLINED_FUNCTION_10_11(v50, 0xEC00000044496E6FLL);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v51 = swift_initStackObject();
  v59 = OUTLINED_FUNCTION_2_4(v51, v52, v53, v54, v55, v56, v57, v58, v235);
  OUTLINED_FUNCTION_5_10(v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v68 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v68);
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_25_35();
  result = OUTLINED_FUNCTION_10_11(v69, v70);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v71 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v89);
  result = OUTLINED_FUNCTION_10_11(0xD000000000000015, 0x8000000193A35C60);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v90 = swift_initStackObject();
  v98 = OUTLINED_FUNCTION_2_4(v90, v91, v92, v93, v94, v95, v96, v97, v236);
  OUTLINED_FUNCTION_5_10(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v107);
  v108 = OUTLINED_FUNCTION_34_34();
  result = OUTLINED_FUNCTION_10_11(v108, 0xE900000000000044);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v237);
  OUTLINED_FUNCTION_5_10(v117, v118, v119, v120, v121, v122, v123, v124, v125);
  v126 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v126);
  v127 = OUTLINED_FUNCTION_33_27();
  result = sub_19343D150(v127, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v128 = swift_initStackObject();
  v136 = OUTLINED_FUNCTION_2_4(v128, v129, v130, v131, v132, v133, v134, v135, v238);
  OUTLINED_FUNCTION_5_10(v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v145 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v145);
  result = sub_19343D150(1701869940, 0xE400000000000000, 0, 0, v0, 4, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v146 = swift_initStackObject();
  v154 = OUTLINED_FUNCTION_2_4(v146, v147, v148, v149, v150, v151, v152, v153, v239);
  OUTLINED_FUNCTION_5_10(v154, v155, v156, v157, v158, v159, v160, v161, v162);
  v163 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v163);
  OUTLINED_FUNCTION_30_26();
  OUTLINED_FUNCTION_28_29();
  result = OUTLINED_FUNCTION_3_5(v164, v165);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v166 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v166, v167, v168, v169, v170, v171, v172, v173, v174);
  v175 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v175, v176, v177, v178, v179, v180, v181, v182, v183);
  v184 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v184);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A35C80);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v185 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v185, v186, v187, v188, v189, v190, v191, v192, v193);
  v194 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v194, v195, v196, v197, v198, v199, v200, v201, v202);
  v203 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v203);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000012, 0x8000000193A35CA0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v204 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v204, v205, v206, v207, v208, v209, v210, v211, v212);
  v213 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v213, v214, v215, v216, v217, v218, v219, v220, v221);
  v222 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v222);
  result = OUTLINED_FUNCTION_3_5(0xD00000000000001BLL, 0x8000000193A14620);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v223 = swift_initStackObject();
  v231 = OUTLINED_FUNCTION_2_4(v223, v224, v225, v226, v227, v228, v229, v230, v240);
  *(v231 + 16) = v241;
  *(v231 + 32) = sub_19393C850();
  v232 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v233 = OUTLINED_FUNCTION_24_42();
  result = sub_19343D150(v233, 0xEB00000000444972, 6, 0, v231, 14, 3);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v242;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_193774EC4()
{
  OUTLINED_FUNCTION_26();
  v188 = v0;
  v189 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v174 - v10;
  v177 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  v11 = OUTLINED_FUNCTION_4_1(v177);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v176 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v174 - v20;
  v182 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v180 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v179 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v28 = OUTLINED_FUNCTION_47(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v175 = v31 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v183 = &v174 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v174 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v174 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v174 - v42;
  v185 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v184 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6();
  v174 = v48 - v49;
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v174 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v174 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v174 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v174 - v61;
  v186 = v5;
  v187 = v3;
  v63 = v5 == v60 && v3 == 0xE90000000000006DLL;
  if (v63 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_36();
  OUTLINED_FUNCTION_32_31();
  OUTLINED_FUNCTION_10_60();
  v69 = v63 && v68 == v67;
  if (v69 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 32);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_28();
  OUTLINED_FUNCTION_10_60();
  v72 = v63 && v71 == v70;
  if (v72 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v73 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    v74 = OUTLINED_FUNCTION_14_54(*(v73 + 36));
    sub_193448758(v74, v43, v75, v76);
    OUTLINED_FUNCTION_21_42(v43);
    if (!v63)
    {
      v81 = v184;
      (*(v184 + 32))(v62, v43, v53);
      sub_1934948FC();
      (*(v81 + 8))(v62, v53);
      goto LABEL_26;
    }

    v77 = &qword_1EAE3AA88;
    v78 = &qword_19394F9C0;
    v79 = v43;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_25_35();
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_10_60();
  v84 = v63 && v83 == v82;
  if (v84 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v85 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    v86 = OUTLINED_FUNCTION_14_54(*(v85 + 40));
    sub_193448758(v86, v41, v87, v88);
    OUTLINED_FUNCTION_21_42(v41);
    if (!v63)
    {
      v89 = v184;
      (*(v184 + 32))(v59, v41, v53);
      sub_1934948FC();
      (*(v89 + 8))(v59, v53);
      goto LABEL_26;
    }

    v77 = &qword_1EAE3AA88;
    v78 = &qword_19394F9C0;
    v79 = v41;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_10_60();
  v92 = v63 && v90 == v91;
  if (v92 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v93 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    v94 = OUTLINED_FUNCTION_14_54(*(v93 + 44));
    sub_193448758(v94, v38, v95, v96);
    OUTLINED_FUNCTION_21_42(v38);
    if (!v63)
    {
      v97 = v184;
      (*(v184 + 32))(v56, v38, v53);
      sub_1934948FC();
      (*(v97 + 8))(v56, v53);
      goto LABEL_26;
    }

    v77 = &qword_1EAE3AA88;
    v78 = &qword_19394F9C0;
    v79 = v38;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_10_60();
  v99 = v63 && v98 == 0xE900000000000044;
  if (v99 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v100 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    v101 = OUTLINED_FUNCTION_14_54(*(v100 + 48));
    v102 = v183;
    sub_193448758(v101, v183, v103, v104);
    v105 = v185;
    if (__swift_getEnumTagSinglePayload(v102, 1, v185) != 1)
    {
      v106 = v184;
      (*(v184 + 32))(v53, v102, v105);
      OUTLINED_FUNCTION_13_0();
      sub_1934948FC();
      v107 = *(v106 + 8);
      v108 = OUTLINED_FUNCTION_13_0();
      v109(v108);
      goto LABEL_26;
    }

    v77 = &qword_1EAE3AA88;
    v78 = &qword_19394F9C0;
    v79 = v102;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_33_27();
  OUTLINED_FUNCTION_10_60();
  v112 = v63 && v111 == v110;
  if (v112 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v113 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    v114 = OUTLINED_FUNCTION_14_54(*(v113 + 52));
    v115 = v181;
    sub_193448758(v114, v181, v116, v117);
    v118 = v182;
    if (__swift_getEnumTagSinglePayload(v115, 1, v182) != 1)
    {
      v120 = v179;
      v119 = v180;
      (*(v180 + 32))(v179, v115, v118);
      sub_1934948FC();
      (*(v119 + 8))(v120);
      goto LABEL_26;
    }

    v77 = &qword_1EAE3A9E8;
    v78 = &qword_19394F800;
    v79 = v115;
    goto LABEL_24;
  }

  v121 = v186 == 1701869940 && v187 == 0xE400000000000000;
  if (v121 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v122 = v188 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 56);
    if ((*(v122 + 9) & 1) == 0)
    {
      v123 = *(v122 + 8);
      *&v190 = *v122;
      BYTE8(v190) = v123 & 1;
      goto LABEL_9;
    }

LABEL_25:
    v80 = v189;
    *v189 = 0u;
    *(v80 + 1) = 0u;
    goto LABEL_26;
  }

  v124 = v186 == 0x73726F727265 && v187 == 0xE600000000000000;
  if (v124 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v125 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    OUTLINED_FUNCTION_19_50(*(v125 + 60));
    v126 = &unk_1EAE424C0;
    v127 = &unk_193992828;
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(v126, v127);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_60();
  v129 = v63 && v128 == 0xE600000000000000;
  if (v129 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v130 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
    OUTLINED_FUNCTION_19_50(*(v130 + 64));
    v126 = &unk_1EAE428E0;
    v127 = &unk_193994BA8;
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_28_29();
  OUTLINED_FUNCTION_30_26();
  OUTLINED_FUNCTION_10_60();
  v133 = v63 && v132 == v131;
  if (v133 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
  {
    v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 68);
  }

  else
  {
    OUTLINED_FUNCTION_10_60();
    v136 = v63 && v135 == v134;
    if (v136 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
    {
      v137 = (v188 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 72));
      v138 = *(v137 + 2);
      if (v138)
      {
        v190 = *v137;
        v191 = v138;
        v192 = *(v137 + 24);
        v193 = *(v137 + 40);
        v194 = *(v137 + 7);
        sub_193494798(&type metadata for AppleIntelligenceReportingUseCase, &off_1F07EDCC8, v189);
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_38();
    v140 = v186 == 0xD000000000000012 && v139 == v187;
    if (v140 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
    {
      v141 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
      OUTLINED_FUNCTION_19_50(*(v141 + 76));
      v126 = &unk_1EAE428D8;
      v127 = &unk_193994BA0;
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_60();
    v144 = v63 && v142 == v143;
    if (v144 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
    {
      v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 80);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v146 = v186 == 0xD000000000000012 && v145 == v187;
      if (v146 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
      {
        v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 84);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_10_60();
        v149 = v63 && v147 == v148;
        if (!v149 && (OUTLINED_FUNCTION_15_52() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_42();
          OUTLINED_FUNCTION_10_60();
          v152 = v63 && v151 == v150;
          if (v152 || (OUTLINED_FUNCTION_15_52() & 1) != 0)
          {
            v153 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
            v154 = OUTLINED_FUNCTION_14_54(*(v153 + 92));
            v155 = v175;
            sub_193448758(v154, v175, v156, v157);
            if (__swift_getEnumTagSinglePayload(v155, 1, v185) != 1)
            {
              v159 = v184;
              v158 = v185;
              v160 = v174;
              (*(v184 + 32))(v174, v175, v185);
              sub_1934948FC();
              (*(v159 + 8))(v160, v158);
              goto LABEL_26;
            }

            v77 = &qword_1EAE3AA88;
            v78 = &qword_19394F9C0;
            v79 = v175;
          }

          else
          {
            OUTLINED_FUNCTION_10_60();
            v163 = v63 && v162 == v161;
            if (!v163 && (OUTLINED_FUNCTION_15_52() & 1) == 0)
            {
              sub_19349AB64();
              swift_allocError();
              v171 = v170;
              v172 = v187;
              *v170 = v186;
              v170[1] = v172;
              v170[5] = type metadata accessor for AppleIntelligenceReportingInvocationStep();
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v171 + 2);
              sub_19345227C(v188, boxed_opaque_existential_1Tm);
              *(v171 + 48) = 1;
              swift_willThrow();

              goto LABEL_26;
            }

            v164 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
            v165 = OUTLINED_FUNCTION_14_54(*(v164 + 96));
            v166 = v178;
            sub_193448758(v165, v178, v167, v168);
            if (__swift_getEnumTagSinglePayload(v166, 1, v177) != 1)
            {
              v169 = v176;
              sub_193775B80(v178, v176, type metadata accessor for AppleIntelligenceReportingSpanContext);
              sub_193494798(v177, &off_1F07EDD28, v189);
              sub_193775BDC(v169);
              goto LABEL_26;
            }

            v77 = &qword_1EAE428D0;
            v78 = &qword_193994B98;
            v79 = v178;
          }

LABEL_24:
          sub_19344E6DC(v79, v77, v78);
          goto LABEL_25;
        }

        v64 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 88);
      }
    }
  }

LABEL_7:
  v65 = (v188 + v64);
  v66 = *(v188 + v64 + 8);
  if (!v66)
  {
    goto LABEL_25;
  }

  *&v190 = *v65;
  *(&v190 + 1) = v66;
LABEL_9:
  sub_1934948FC();
LABEL_26:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193775B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193775BDC(uint64_t a1)
{
  v2 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static AppleIntelligenceReportingInvocationStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v228 - v14;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428E8, &qword_193994BF8);
  OUTLINED_FUNCTION_4_1(v234);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v228 - v19;
  v242 = sub_19393BE00();
  v21 = OUTLINED_FUNCTION_0(v242);
  v239 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_289();
  v237 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v238 = v30;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1(v240);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_53_1();
  v241 = v34;
  v251 = sub_19393BE60();
  v35 = OUTLINED_FUNCTION_0(v251);
  v249 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_289();
  v248 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v41 = OUTLINED_FUNCTION_47(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15_8();
  v235 = v44;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_49();
  v243 = v46;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_49();
  v245 = v48;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_49();
  v247 = v50;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v228 - v52;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v54 = OUTLINED_FUNCTION_4_1(v250);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_15_8();
  v236 = v57;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_49();
  v244 = v59;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_49();
  v246 = v61;
  OUTLINED_FUNCTION_47_3();
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = &v228 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v228 - v66;
  v68 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v69 = v68[7];
  v252 = a1;
  v253 = a2;
  v70 = *(a2 + v69 + 8);
  if (*(a1 + v69 + 8))
  {
    if (!v70)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((a1 + v69));
    v73 = v73 && v71 == v72;
    if (!v73)
    {
      v74 = v68;
      v75 = sub_19393CA30();
      v68 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v70)
  {
    return 0;
  }

  v76 = v68[8];
  v77 = v252;
  v78 = *(v253 + v76 + 8);
  if (*(v252 + v76 + 8))
  {
    if (!v78)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((v252 + v76));
    if (!v73 || v79 != v80)
    {
      v82 = v68;
      v83 = sub_19393CA30();
      v68 = v82;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v78)
  {
    return 0;
  }

  v229 = v9;
  v230 = v15;
  v231 = v4;
  v232 = v20;
  v233 = v68;
  v84 = v68[9];
  v85 = *(v250 + 48);
  sub_1934486F8(v77 + v84, v67, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v253 + v84, &v67[v85], &qword_1EAE3AA88, &qword_19394F9C0);
  v86 = v251;
  OUTLINED_FUNCTION_6_3(v67, 1, v251);
  if (v73)
  {
    OUTLINED_FUNCTION_3_22(&v67[v85]);
    if (!v73)
    {
      goto LABEL_27;
    }

    sub_19344E6DC(v67, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    sub_1934486F8(v67, v53, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_3_22(&v67[v85]);
    if (v87)
    {
LABEL_26:
      OUTLINED_FUNCTION_29_29();
      v88(v53, v86);
LABEL_27:
      v89 = &qword_1EAE3B4E8;
      v90 = &unk_193952CF0;
      v91 = v67;
LABEL_38:
      sub_19344E6DC(v91, v89, v90);
      return 0;
    }

    v93 = v248;
    v92 = v249;
    OUTLINED_FUNCTION_28_30();
    v94(v93, &v67[v85], v86);
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v95, v96);
    v97 = OUTLINED_FUNCTION_32_32();
    v98 = *(v92 + 8);
    v98(v93, v251);
    v98(v53, v251);
    v86 = v251;
    sub_19344E6DC(v67, &qword_1EAE3AA88, &qword_19394F9C0);
    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  v99 = v233[10];
  v100 = *(v250 + 48);
  sub_1934486F8(v77 + v99, v65, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v253 + v99, &v65[v100], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v65);
  if (v73)
  {
    OUTLINED_FUNCTION_3_22(&v65[v100]);
    if (v73)
    {
      sub_19344E6DC(v65, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_42;
    }

LABEL_37:
    v89 = &qword_1EAE3B4E8;
    v90 = &unk_193952CF0;
    v91 = v65;
    goto LABEL_38;
  }

  v101 = v247;
  sub_1934486F8(v65, v247, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v65[v100]);
  if (v102)
  {
    OUTLINED_FUNCTION_29_29();
    v103(v101, v86);
    goto LABEL_37;
  }

  v106 = v248;
  v105 = v249;
  OUTLINED_FUNCTION_28_30();
  v107(v106, &v65[v100], v86);
  OUTLINED_FUNCTION_0_99();
  sub_193777DF0(v108, v109);
  v110 = OUTLINED_FUNCTION_32_32();
  v111 = *(v105 + 8);
  v111(v106, v86);
  v111(v101, v86);
  sub_19344E6DC(v65, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v110 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v112 = v233[11];
  v113 = *(v250 + 48);
  v67 = v246;
  OUTLINED_FUNCTION_15_4(v77 + v112, v246);
  OUTLINED_FUNCTION_15_4(v253 + v112, &v67[v113]);
  OUTLINED_FUNCTION_3_22(v67);
  if (v73)
  {
    OUTLINED_FUNCTION_3_22(&v67[v113]);
    if (v73)
    {
      sub_19344E6DC(v67, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_49;
    }

    goto LABEL_27;
  }

  v53 = v245;
  sub_1934486F8(v67, v245, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v67[v113]);
  if (v114)
  {
    goto LABEL_26;
  }

  v116 = v248;
  v115 = v249;
  (*(v249 + 32))(v248, &v67[v113], v86);
  OUTLINED_FUNCTION_0_99();
  sub_193777DF0(v117, v118);
  v119 = OUTLINED_FUNCTION_32_32();
  v120 = *(v115 + 8);
  v120(v116, v86);
  v120(v53, v86);
  sub_19344E6DC(v67, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v119 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v121 = v77;
  v122 = *(v250 + 48);
  v123 = v244;
  OUTLINED_FUNCTION_15_4(v121 + v233[12], v244);
  v124 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v124, v123 + v122);
  OUTLINED_FUNCTION_3_22(v123);
  if (v73)
  {
    OUTLINED_FUNCTION_3_22(v123 + v122);
    if (v73)
    {
      sub_19344E6DC(v123, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_59;
    }

LABEL_57:
    v89 = &qword_1EAE3B4E8;
    v90 = &unk_193952CF0;
LABEL_68:
    v91 = v123;
    goto LABEL_38;
  }

  v125 = v243;
  sub_1934486F8(v123, v243, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v123 + v122);
  if (v126)
  {
    OUTLINED_FUNCTION_29_29();
    v127(v125, v86);
    goto LABEL_57;
  }

  v129 = v248;
  v128 = v249;
  (*(v249 + 32))(v248, v123 + v122, v86);
  OUTLINED_FUNCTION_0_99();
  sub_193777DF0(v130, v131);
  v132 = OUTLINED_FUNCTION_32_32();
  v133 = *(v128 + 8);
  v133(v129, v86);
  v133(v125, v86);
  sub_19344E6DC(v123, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_59:
  v123 = v241;
  v134 = *(v240 + 48);
  OUTLINED_FUNCTION_15_4(v252 + v233[13], v241);
  v135 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v135, v123 + v134);
  v136 = v242;
  OUTLINED_FUNCTION_6_3(v123, 1, v242);
  if (v73)
  {
    OUTLINED_FUNCTION_6_3(v123 + v134, 1, v136);
    if (v73)
    {
      sub_19344E6DC(v123, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v137 = v238;
  sub_1934486F8(v123, v238, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v123 + v134, 1, v136);
  if (v138)
  {
    (*(v239 + 8))(v137, v136);
LABEL_67:
    v89 = &qword_1EAE3B968;
    v90 = &qword_193972430;
    goto LABEL_68;
  }

  v139 = v239;
  v140 = v123 + v134;
  v141 = v237;
  (*(v239 + 32))(v237, v140, v136);
  OUTLINED_FUNCTION_12_48();
  sub_193777DF0(v142, v143);
  v144 = sub_19393C550();
  v145 = *(v139 + 8);
  v145(v141, v136);
  v145(v137, v136);
  sub_19344E6DC(v123, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v144 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  v146 = v233;
  v147 = v233[14];
  v148 = v252;
  v149 = v252 + v147;
  v150 = *(v252 + v147 + 9);
  v151 = (v253 + v147);
  v152 = *(v253 + v147 + 9);
  if (v150)
  {
    if ((v152 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v153 = *v151;
    v154 = *(v151 + 8);
    v155 = *(v149 + 8);
    *&v262 = *v149;
    WORD4(v262) = v155;
    if (v152)
    {
      return 0;
    }

    *&v280 = v153;
    BYTE8(v280) = v154 & 1;
    sub_19375DFB4();
    v156 = sub_19393C550();
    v146 = v233;
    if ((v156 & 1) == 0)
    {
      return 0;
    }
  }

  v157 = v146;
  if ((sub_19375A3C8(*(v148 + v146[15]), *(v253 + v146[15])) & 1) == 0 || (sub_1937778B4(*(v148 + v157[16]), *(v253 + v157[16])) & 1) == 0)
  {
    return 0;
  }

  v158 = v157[17];
  v159 = *(v253 + v158 + 8);
  if (*(v148 + v158 + 8))
  {
    if (!v159)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((v148 + v158));
    v162 = v73 && v160 == v161;
    if (!v162 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  v163 = v233[18];
  v164 = (v252 + v163);
  v165 = *(v252 + v163 + 16);
  v276 = *(v252 + v163);
  v277 = v165;
  v166 = *(v252 + v163 + 48);
  v278 = *(v252 + v163 + 32);
  v279 = v166;
  v167 = (v253 + v163);
  v168 = v167[1];
  v280 = *v167;
  v281 = v168;
  v169 = v167[3];
  v282 = v167[2];
  v283 = v169;
  v275 = v276;
  v170 = v277;
  v171 = *(v164 + 40);
  v272 = *(v164 + 24);
  v273 = v171;
  v274 = *(v164 + 7);
  v271 = v280;
  v172 = v281;
  v173 = *(v167 + 40);
  v268 = *(v167 + 24);
  v269 = v173;
  v270 = *(v167 + 7);
  if (!v277)
  {
    if (!v281)
    {
      v262 = *v164;
      *(v263 + 8) = *(v164 + 24);
      *(&v263[1] + 8) = *(v164 + 40);
      v176 = *(v164 + 7);
      *&v263[0] = 0;
      *(&v263[2] + 1) = v176;
      OUTLINED_FUNCTION_15_4(&v276, &v258);
      OUTLINED_FUNCTION_15_4(&v280, &v258);
      sub_19344E6DC(&v262, &qword_1EAE42550, &qword_193992990);
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_15_4(&v276, &v262);
    OUTLINED_FUNCTION_15_4(&v280, &v262);
    goto LABEL_93;
  }

  v262 = *v164;
  *(v263 + 8) = *(v164 + 24);
  *(&v263[1] + 8) = *(v164 + 40);
  v174 = *(v164 + 7);
  *&v263[0] = v277;
  *(&v263[2] + 1) = v174;
  v258 = v262;
  v259 = v263[0];
  v260 = v263[1];
  v261 = v263[2];
  if (!v281)
  {
    v256 = v262;
    v257[0] = v263[0];
    v257[1] = v263[1];
    v257[2] = v263[2];
    OUTLINED_FUNCTION_15_4(&v276, v255);
    OUTLINED_FUNCTION_15_4(&v280, v255);
    OUTLINED_FUNCTION_15_4(&v262, v255);
    sub_19375DCC0(&v256);
LABEL_93:
    v262 = v275;
    *(v263 + 8) = v272;
    *(&v263[1] + 8) = v273;
    v263[3] = v271;
    v266 = v269;
    *&v263[0] = v170;
    *(&v263[2] + 1) = v274;
    v264 = v172;
    v267 = v270;
    v265 = v268;
    v89 = &unk_1EAE42558;
    v90 = &unk_193992998;
    v91 = &v262;
    goto LABEL_38;
  }

  v256 = *v167;
  *(v257 + 8) = *(v167 + 24);
  *(&v257[1] + 8) = *(v167 + 40);
  *(&v257[2] + 1) = *(v167 + 7);
  *&v257[0] = v281;
  OUTLINED_FUNCTION_26_32(&v276);
  OUTLINED_FUNCTION_26_32(&v280);
  OUTLINED_FUNCTION_26_32(&v262);
  sub_19375DD6C();
  v175 = sub_19393C550();
  v254[0] = v256;
  v254[1] = v257[0];
  v254[2] = v257[1];
  v254[3] = v257[2];
  sub_19375DCC0(v254);
  v255[0] = v258;
  v255[1] = v259;
  v255[2] = v260;
  v255[3] = v261;
  sub_19375DCC0(v255);
  v256 = v275;
  *(v257 + 8) = v272;
  *(&v257[1] + 8) = v273;
  *&v257[0] = v170;
  *(&v257[2] + 1) = v274;
  sub_19344E6DC(&v256, &qword_1EAE42550, &qword_193992990);
  if ((v175 & 1) == 0)
  {
    return 0;
  }

LABEL_95:
  if ((sub_193777A00(*(v252 + v233[19]), *(v253 + v233[19])) & 1) == 0)
  {
    return 0;
  }

  v177 = v233[20];
  OUTLINED_FUNCTION_8_55();
  if (v180)
  {
    if (!v178)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v179);
    v183 = v73 && v181 == v182;
    if (!v183 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v178)
  {
    return 0;
  }

  v184 = v233[21];
  OUTLINED_FUNCTION_8_55();
  if (v187)
  {
    if (!v185)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v186);
    v190 = v73 && v188 == v189;
    if (!v190 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v185)
  {
    return 0;
  }

  v191 = v233[22];
  OUTLINED_FUNCTION_8_55();
  if (v194)
  {
    if (!v192)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v193);
    v197 = v73 && v195 == v196;
    if (!v197 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v192)
  {
    return 0;
  }

  v198 = *(v250 + 48);
  v199 = v236;
  OUTLINED_FUNCTION_15_4(v252 + v233[23], v236);
  v200 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v200, v199 + v198);
  OUTLINED_FUNCTION_6_3(v199, 1, v251);
  if (v73)
  {
    OUTLINED_FUNCTION_6_3(v236 + v198, 1, v251);
    if (v73)
    {
      sub_19344E6DC(v236, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  v201 = v236;
  sub_1934486F8(v236, v235, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v201 + v198, 1, v251);
  if (v202)
  {
    OUTLINED_FUNCTION_29_29();
    v203(v235, v251);
LABEL_131:
    v89 = &qword_1EAE3B4E8;
    v90 = &unk_193952CF0;
    v91 = v236;
    goto LABEL_38;
  }

  v205 = v248;
  v204 = v249;
  OUTLINED_FUNCTION_28_30();
  v206 = v236;
  v207 = v236 + v198;
  v208 = v251;
  v209(v205, v207, v251);
  OUTLINED_FUNCTION_0_99();
  sub_193777DF0(v210, v211);
  v212 = v235;
  v213 = sub_19393C550();
  v214 = *(v204 + 8);
  v214(v205, v208);
  v214(v212, v208);
  sub_19344E6DC(v206, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v213 & 1) == 0)
  {
    return 0;
  }

LABEL_133:
  v215 = *(v234 + 48);
  v216 = v232;
  OUTLINED_FUNCTION_15_4(v252 + v233[24], v232);
  v217 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v217, v216 + v215);
  OUTLINED_FUNCTION_6_3(v216, 1, v231);
  if (v73)
  {
    OUTLINED_FUNCTION_6_3(v232 + v215, 1, v231);
    if (v73)
    {
      sub_19344E6DC(v232, &qword_1EAE428D0, &qword_193994B98);
      return 1;
    }

    goto LABEL_141;
  }

  v218 = v232;
  sub_1934486F8(v232, v230, &qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_6_3(v218 + v215, 1, v231);
  if (v219)
  {
    OUTLINED_FUNCTION_13_53();
    sub_193777E38(v230, v220);
LABEL_141:
    v89 = &qword_1EAE428E8;
    v90 = &qword_193994BF8;
    v91 = v232;
    goto LABEL_38;
  }

  v221 = v232;
  v222 = v232 + v215;
  v223 = v229;
  sub_193777B14(v222, v229);
  OUTLINED_FUNCTION_11_49();
  sub_193777DF0(v224, v225);
  v226 = v230;
  v227 = sub_19393C550();
  sub_193777E38(v223, type metadata accessor for AppleIntelligenceReportingSpanContext);
  sub_193777E38(v226, type metadata accessor for AppleIntelligenceReportingSpanContext);
  sub_19344E6DC(v221, &qword_1EAE428D0, &qword_193994B98);
  return (v227 & 1) != 0;
}

uint64_t AppleIntelligenceReportingInvocationStep.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v119 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  v4 = OUTLINED_FUNCTION_4_1(v119);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v111 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v118 = v12;
  v115 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v115);
  v110 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v109 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v114 = v22;
  v23 = sub_19393BE60();
  v24 = OUTLINED_FUNCTION_0(v23);
  v117 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_289();
  v120 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v30 = OUTLINED_FUNCTION_47(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_8();
  v116 = v33;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49();
  v113 = v35;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_49();
  v112 = v37;
  OUTLINED_FUNCTION_47_3();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v109 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v109 - v42;
  v44 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v45 = (v1 + v44[7]);
  if (v45[1])
  {
    OUTLINED_FUNCTION_16_37(v45);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v46 = (v1 + v44[8]);
  if (v46[1])
  {
    OUTLINED_FUNCTION_16_37(v46);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v47 = v117;
  sub_1934486F8(v1 + v44[9], v43, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v43, 1, v23);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
    v49 = v120;
  }

  else
  {
    v49 = v120;
    (*(v47 + 32))();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v50, v51);
    OUTLINED_FUNCTION_7_48();
    v52 = OUTLINED_FUNCTION_5_65();
    v53(v52);
  }

  sub_1934486F8(v1 + v44[10], v41, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v41, 1, v23);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v47 + 32))(v49, v41, v23);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v54, v55);
    OUTLINED_FUNCTION_7_48();
    v56 = OUTLINED_FUNCTION_5_65();
    v57(v56);
  }

  v58 = v115;
  sub_1934486F8(v1 + v44[11], v112, &qword_1EAE3AA88, &qword_19394F9C0);
  v59 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v59, v60, v23);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v61 = OUTLINED_FUNCTION_9_70();
    v62(v61);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v63, v64);
    OUTLINED_FUNCTION_7_48();
    v65 = OUTLINED_FUNCTION_5_65();
    v66(v65);
  }

  sub_1934486F8(v1 + v44[12], v113, &qword_1EAE3AA88, &qword_19394F9C0);
  v67 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v67, v68, v23);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v69 = OUTLINED_FUNCTION_9_70();
    v70(v69);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v71, v72);
    OUTLINED_FUNCTION_7_48();
    v73 = OUTLINED_FUNCTION_5_65();
    v74(v73);
  }

  v75 = v114;
  sub_1934486F8(v2 + v44[13], v114, &qword_1EAE3A9E8, &qword_19394F800);
  v76 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v76, v77, v58);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v78 = v110;
    OUTLINED_FUNCTION_28_30();
    v79 = v47;
    v80 = v109;
    v81(v109, v75, v58);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_12_48();
    sub_193777DF0(v82, v83);
    sub_19393C540();
    v84 = v80;
    v47 = v79;
    v49 = v120;
    (*(v78 + 8))(v84, v58);
  }

  v85 = v2 + v44[14];
  if (*(v85 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v86 = *(v85 + 8);
    *&v128[0] = *v85;
    BYTE8(v128[0]) = v86 & 1;
    OUTLINED_FUNCTION_94();
    sub_193777B78();
    sub_19393C540();
  }

  sub_19375D790(a1, *(v2 + v44[15]));
  sub_193777C88(a1, *(v2 + v44[16]));
  OUTLINED_FUNCTION_31_37(v44[17]);
  if (v58)
  {
    OUTLINED_FUNCTION_16_37(v87);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v88 = (v2 + v44[18]);
  v132 = *v88;
  v89 = *(v88 + 2);
  v90 = *(v88 + 40);
  v129 = *(v88 + 24);
  v130 = v90;
  v131 = *(v88 + 7);
  if (v89)
  {
    v121 = *v88;
    *(v122 + 8) = *(v88 + 24);
    *(&v122[1] + 8) = *(v88 + 40);
    *(&v122[2] + 1) = *(v88 + 7);
    *&v122[0] = v89;
    OUTLINED_FUNCTION_94();
    v123 = v132;
    v124 = v89;
    v125 = v129;
    v126 = v130;
    v127 = v131;
    sub_1937568B8(&v123, v128);
    sub_193777D48();
    sub_19393C540();
    v128[0] = v121;
    v128[1] = v122[0];
    v128[2] = v122[1];
    v128[3] = v122[2];
    sub_19375DCC0(v128);
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193777BCC(a1, *(v2 + v44[19]));
  OUTLINED_FUNCTION_31_37(v44[20]);
  if (v89)
  {
    OUTLINED_FUNCTION_16_37(v91);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_37(v44[21]);
  if (v89)
  {
    OUTLINED_FUNCTION_16_37(v92);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_37(v44[22]);
  if (v89)
  {
    OUTLINED_FUNCTION_16_37(v93);
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v94 = v119;
  sub_1934486F8(v2 + v44[23], v116, &qword_1EAE3AA88, &qword_19394F9C0);
  v95 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v95, v96, v23);
  if (v48)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v97 = OUTLINED_FUNCTION_9_70();
    v98(v97);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    sub_193777DF0(v99, v100);
    OUTLINED_FUNCTION_7_48();
    (*(v47 + 8))(v49, v23);
  }

  v101 = v118;
  sub_1934486F8(v2 + v44[24], v118, &qword_1EAE428D0, &qword_193994B98);
  v102 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v102, v103, v94);
  if (v48)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v104 = v111;
  sub_193777B14(v101, v111);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_11_49();
  sub_193777DF0(v105, v106);
  sub_19393C540();
  OUTLINED_FUNCTION_13_53();
  return sub_193777E38(v104, v107);
}