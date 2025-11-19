uint64_t sub_19364A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
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
        sub_19364ABF8(v14, v11, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364ABF8(v15, v8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364AC58(&qword_1EAE3F928, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        v17 = sub_19393C550();
        sub_19364ACA0(v8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
        sub_19364ACA0(v11, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment);
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

uint64_t sub_19364AB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 16);
  result = MEMORY[0x193B18030](v9);
  if (v9)
  {
    v11 = *(a3(0) - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_19364AC58(a4, a5);
    do
    {
      result = sub_19393C540();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_19364ABF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19364AC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19364ACA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_19364ACF8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB900);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1939526C0;
  v6 = v43 + v0 + dword_1EAEAB938;
  *(v43 + v0) = 1;
  *v6 = "orderTypeIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v43 + v0 + v5);
  *v12 = 2;
  *v11 = "orderIdentifier";
  v11[1] = 15;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v43 + v0 + 2 * v5);
  *v15 = 3;
  *v14 = "orderNumber";
  v14[1] = 11;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v43 + v0 + 3 * v5);
  *v18 = 4;
  *v17 = "orderEmails";
  v17[1] = 11;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v43 + v0 + 4 * v5);
  *v21 = 5;
  *v20 = "orderDate";
  v20[1] = 9;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v43 + v0 + 5 * v5);
  *v24 = 6;
  *v23 = "merchant";
  v23[1] = 8;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v10)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v43 + v0 + 6 * v5);
  *v27 = 7;
  *v26 = "shippingFulfillments";
  v26[1] = 20;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v10)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v43 + v0 + 7 * v5);
  *v30 = 8;
  *v29 = "customer";
  v29[1] = 8;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v10)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v43 + v0 + 8 * v5);
  *v33 = 9;
  *v32 = "payment";
  v32[1] = 7;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v10)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v43 + v0 + 9 * v5);
  *v36 = 10;
  *v35 = "isTrackedInWallet";
  v35[1] = 17;
  v37 = OUTLINED_FUNCTION_41(v35);
  (v10)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v43 + v0 + 10 * v5);
  *v39 = 11;
  *v38 = "orderUpdateDate";
  v38[1] = 15;
  v40 = OUTLINED_FUNCTION_41(v38);
  (v10)(v40);
  v41 = OUTLINED_FUNCTION_3_1(v43 + v0 + 11 * v5);
  *v42 = 12;
  *v41 = "trackedOrderIdentifier";
  *(v41 + 8) = 22;
  *(v41 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364B064()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 28);
        goto LABEL_13;
      case 2:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 32);
        goto LABEL_13;
      case 3:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 36);
        goto LABEL_13;
      case 4:
        v6 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 40);
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v7 = OUTLINED_FUNCTION_36_3();
        goto LABEL_16;
      case 5:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 44);
        goto LABEL_13;
      case 6:
        v9 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 48);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
        OUTLINED_FUNCTION_36_3();
        goto LABEL_19;
      case 7:
        v10 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 52);
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
        v7 = OUTLINED_FUNCTION_36_3();
LABEL_16:
        sub_193498238(v7);
        goto LABEL_20;
      case 8:
        v8 = v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 56);
        goto LABEL_19;
      case 9:
        v12 = v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 60);
LABEL_19:
        sub_193498018();
        goto LABEL_20;
      case 10:
        v5 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
        OUTLINED_FUNCTION_8_2(*(v5 + 64));
        sub_19393C0F0();
        goto LABEL_20;
      case 11:
        v11 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 68);
        sub_1934976E4();
        goto LABEL_20;
      case 12:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 72);
LABEL_13:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C200();
LABEL_20:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19364B260()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  v3 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_16_4(v3[7]);
  if (v5)
  {
    v6 = *v4;
    OUTLINED_FUNCTION_2_7();
    v2 = v0;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_16_4(v3[8]);
    if (!v8 || (v9 = *v7, OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
    {
      OUTLINED_FUNCTION_16_4(v3[9]);
      if (!v11 || (v12 = *v10, OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
      {
        if (!*(*(v1 + v3[10]) + 16) || (type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0), OUTLINED_FUNCTION_78_1(), sub_193451CFC(v13, v14, v15, v16, v17, v18), (v2 = v0) == 0))
        {
          OUTLINED_FUNCTION_16_4(v3[11]);
          if (!v20 || (v21 = *v19, OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
          {
            OUTLINED_FUNCTION_11_1();
            sub_19364B4C8();
            if (!v2)
            {
              if (*(*(v1 + v3[13]) + 16))
              {
                type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
                OUTLINED_FUNCTION_78_1();
                sub_193451CFC(v22, v23, v24, v25, v26, v27);
              }

              memcpy(__dst, (v1 + v3[14]), 0x108uLL);
              if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
              {
                memcpy(v34, __dst, sizeof(v34));
                OUTLINED_FUNCTION_78_1();
                sub_193447600();
              }

              v28 = v1 + v3[15];
              v29 = *(v28 + 32);
              if (v29)
              {
                v30 = *(v28 + 16);
                __dst[0] = *v28;
                __dst[1] = v30;
                *&__dst[2] = v29;
                OUTLINED_FUNCTION_78_1();
                sub_193447600();
              }

              if (*(v1 + v3[16]) != 2)
              {
                sub_19393C2E0();
              }

              OUTLINED_FUNCTION_11_1();
              sub_19364B604();
              OUTLINED_FUNCTION_16_4(v3[18]);
              if (v32)
              {
                v33 = *v31;
                OUTLINED_FUNCTION_2_7();
              }
            }
          }
        }
      }
    }
  }
}

void sub_19364B4C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v3, v4);
  v5 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_8();
  v10 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v9);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = OUTLINED_FUNCTION_15_9();
  v15 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v14);
  sub_193448758(v2 + *(v15 + 48), v0, &qword_1EAE3F1A0, &qword_193973038);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3F1A0, &qword_193973038);
  }

  else
  {
    sub_19364C798(v0, v1, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
    OUTLINED_FUNCTION_12_12();
    sub_19364C7F4(v1, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364B604()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_42_7(*(v17 + 68));
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_243();
    v19(v18);
    OUTLINED_FUNCTION_231(v16, 11);
    v20 = OUTLINED_FUNCTION_78();
    v21(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364B7AC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB918);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v8, xmmword_19394FBC0);
  *v0 = "emailMetadata";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  *v13 = "emailType";
  v13[1] = 9;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v17 = 3;
  *v16 = "spotlightUniqueIdentifier";
  v16[1] = 25;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v20 = 4;
  *v19 = "spotlightDomainIdentifier";
  *(v19 + 8) = 25;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364B97C()
{
  OUTLINED_FUNCTION_53_4();
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
        type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        sub_193498018();
        goto LABEL_10;
      case 2:
        v4 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 20);
        sub_1934982A8();
        goto LABEL_10;
      case 3:
        v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 24);
        goto LABEL_8;
      case 4:
        v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0) + 28);
LABEL_8:
        OUTLINED_FUNCTION_8_2(v3);
        sub_19393C200();
LABEL_10:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19364BA98()
{
  OUTLINED_FUNCTION_87_7();
  OUTLINED_FUNCTION_11_1();
  sub_19364BB7C();
  if (!v0)
  {
    v2 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
    v3 = (v1 + v2[5]);
    if ((*(v3 + 9) & 1) == 0)
    {
      v16 = *v3;
      v17 = v3[1] & 1;
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v4, v5, v6, v7, v8, v9);
    }

    OUTLINED_FUNCTION_16_4(v2[6]);
    if (v11)
    {
      v12 = *v10;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v2[7]);
    if (v14)
    {
      v15 = *v13;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_19364BB7C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8();
  v9 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v8);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  sub_193448758(v1, v0, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3EF88, &qword_193972100);
  }

  else
  {
    sub_19364C798(v0, v15, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
    OUTLINED_FUNCTION_12_12();
    sub_19364C7F4(v15, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19364BD18()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB930);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v60, xmmword_193969E40);
  *v0 = "fulfillmentIdentifier";
  *(v0 + 8) = 21;
  *(v0 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v13 = 2;
  *v12 = "status";
  v12[1] = 6;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v16 = 3;
  *v15 = "trackingNumber";
  v15[1] = 14;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v19 = 4;
  *v18 = "carrierName";
  v18[1] = 11;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v22 = 5;
  *v21 = "carrierIdentifier";
  v21[1] = 17;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v1 + 5 * v7);
  *v25 = 6;
  *v24 = "shippingMethod";
  v24[1] = 14;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v1 + 6 * v7);
  *v28 = 7;
  *v27 = "shippingDate";
  v27[1] = 12;
  v29 = OUTLINED_FUNCTION_1_3(v27);
  (v11)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v1 + 7 * v7);
  *v31 = 8;
  *v30 = "shippingTime";
  v30[1] = 12;
  v32 = OUTLINED_FUNCTION_1_3(v30);
  (v11)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v1 + 8 * v7);
  *v34 = 9;
  *v33 = "estimatedDeliveryStartDate";
  v33[1] = 26;
  v35 = OUTLINED_FUNCTION_1_3(v33);
  (v11)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v1 + 9 * v7);
  *v37 = 10;
  *v36 = "estimatedDeliveryStartTime";
  v36[1] = 26;
  v38 = OUTLINED_FUNCTION_1_3(v36);
  (v11)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v1 + 10 * v7);
  *v40 = 11;
  *v39 = "estimatedDeliveryEndDate";
  v39[1] = 24;
  v41 = OUTLINED_FUNCTION_1_3(v39);
  (v11)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v1 + 11 * v7);
  *v43 = 12;
  *v42 = "estimatedDeliveryEndTime";
  v42[1] = 24;
  v44 = OUTLINED_FUNCTION_1_3(v42);
  (v11)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v1 + 12 * v7);
  *v46 = 13;
  *v45 = "deliveryDate";
  v45[1] = v47;
  v48 = OUTLINED_FUNCTION_1_3(v45);
  (v11)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 13 * v7);
  *v50 = 14;
  *v49 = "deliveryTime";
  v49[1] = 12;
  v51 = OUTLINED_FUNCTION_1_3(v49);
  (v11)(v51);
  v52 = OUTLINED_FUNCTION_3_1(v1 + 14 * v7);
  *v53 = 15;
  *v52 = "shippingRecipient";
  v52[1] = 17;
  v54 = OUTLINED_FUNCTION_1_3(v52);
  (v11)(v54);
  v55 = OUTLINED_FUNCTION_3_1(v1 + 15 * v7);
  *v56 = 16;
  *v55 = "fulfillmentCreationDate";
  v55[1] = 23;
  v57 = OUTLINED_FUNCTION_1_3(v55);
  (v11)(v57);
  v58 = OUTLINED_FUNCTION_3_1(v1 + 16 * v7);
  *v59 = 17;
  *v58 = "shippingEmails";
  *(v58 + 8) = 14;
  *(v58 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19364C164()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status;
  v4 = &off_1F07D8658;
  v5 = &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient;
  while (1)
  {
    v6 = sub_19393C0E0();
    if (v2 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
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
      case 13:
      case 14:
        sub_19393C200();
        goto LABEL_10;
      case 2:
        sub_1934982A8();
        goto LABEL_10;
      case 15:
        sub_193498018();
        goto LABEL_10;
      case 16:
        v13 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 76);
        sub_1934976E4();
        goto LABEL_10;
      case 17:
        v8 = v5;
        v9 = v4;
        v10 = v3;
        v11 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80);
        type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
        v12 = v0 + v11;
        v3 = v10;
        v4 = v9;
        v5 = v8;
        sub_193498238(v12);
LABEL_10:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19364C350()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  if (v1[1])
  {
    v3 = *v1;
    OUTLINED_FUNCTION_2_7();
    v2 = v0;
  }

  if (!v2)
  {
    if ((*(v1 + 25) & 1) != 0 || (v4 = *(v1 + 24), __dst[0] = v1[2], LOBYTE(__dst[1]) = v4 & 1, OUTLINED_FUNCTION_78_1(), sub_193447324(v5, v6, v7, v8, v9, v10), (v2 = v0) == 0))
    {
      if (!v1[5] || (v11 = v1[4], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
      {
        if (!v1[7] || (v12 = v1[6], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
        {
          if (!v1[9] || (v13 = v1[8], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
          {
            if (!v1[11] || (v14 = v1[10], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
            {
              if (!v1[13] || (v15 = v1[12], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
              {
                if (!v1[15] || (v16 = v1[14], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                {
                  if (!v1[17] || (v17 = v1[16], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                  {
                    if (!v1[19] || (v18 = v1[18], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                    {
                      if (!v1[21] || (v19 = v1[20], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                      {
                        if (!v1[23] || (v20 = v1[22], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                        {
                          if (!v1[25] || (v21 = v1[24], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                          {
                            if (!v1[27] || (v22 = v1[26], OUTLINED_FUNCTION_2_7(), (v2 = v0) == 0))
                            {
                              memcpy(__dst, v1 + 28, sizeof(__dst));
                              if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v29, __dst, sizeof(v29)), OUTLINED_FUNCTION_78_1(), sub_193447600(), (v2 = v0) == 0))
                              {
                                OUTLINED_FUNCTION_11_1();
                                sub_19364C5F0();
                                if (!v2)
                                {
                                  if (*(*(v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80)) + 16))
                                  {
                                    type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
                                    OUTLINED_FUNCTION_78_1();
                                    sub_193451CFC(v23, v24, v25, v26, v27, v28);
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

void sub_19364C5F0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  OUTLINED_FUNCTION_42_7(*(v17 + 76));
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_243();
    v19(v18);
    OUTLINED_FUNCTION_231(v16, 16);
    v20 = OUTLINED_FUNCTION_78();
    v21(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19364C798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_19364C7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t WalletPaymentsCommerceExtractedOrder.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceExtractedOrder.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderTypeIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 40));
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderEmails.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364CD00()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  v1 = OUTLINED_FUNCTION_28_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3F1A0, &qword_193973038, *(v1 + 48));
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3F1A0, &qword_193973038, *(v1 + 48));
}

uint64_t WalletPaymentsCommerceExtractedOrder.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 52));
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.shippingFulfillments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.customer.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 56);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x108uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3F1A8, &qword_1939732B0);
}

void *WalletPaymentsCommerceExtractedOrder.customer.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 56);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  return memcpy((v1 + v3), v0, 0x108uLL);
}

uint64_t WalletPaymentsCommerceExtractedOrder.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.payment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v2) + 60));
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

__n128 WalletPaymentsCommerceExtractedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(0) + 60));
  sub_193613BF4(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.payment.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.isTrackedInWallet.setter(char a1)
{
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.isTrackedInWallet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 68));
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 68));
}

uint64_t WalletPaymentsCommerceExtractedOrder.orderUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 72));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.trackedOrderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.emailType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 24));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightUniqueIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19364D4D4(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19364D524()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.spotlightDomainIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v7 = v0 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = (v0 + v6[6]);
  v9 = (v0 + v6[7]);
  sub_19344E6DC(v0, &qword_1EAE3EF88, &qword_193972100);
  v10 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t static WalletPaymentsCommerceExtractedOrder.ExtractedEmail.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EFB0, &unk_193976980);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = *(v20 + 56);
  sub_193448804(v1, &v50 - v21, &qword_1EAE3EF88, &qword_193972100);
  sub_193448804(v0, &v22[v23], &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(v22);
  if (!v24)
  {
    sub_193448804(v22, v15, &qword_1EAE3EF88, &qword_193972100);
    OUTLINED_FUNCTION_31(&v22[v23]);
    if (!v24)
    {
      sub_193605C0C(&v22[v23], v9);
      OUTLINED_FUNCTION_14_35();
      sub_19364DB90(v26, v27);
      v28 = sub_19393C550();
      sub_19364FEC8();
      sub_19364FEC8();
      sub_19344E6DC(v22, &qword_1EAE3EF88, &qword_193972100);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_11_33();
    sub_19364FEC8();
LABEL_9:
    sub_19344E6DC(v22, &qword_1EAE3EFB0, &unk_193976980);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v22[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v22, &qword_1EAE3EF88, &qword_193972100);
LABEL_13:
  v29 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v30 = v29[5];
  v31 = (v1 + v30);
  v32 = *(v1 + v30 + 9);
  v33 = (v0 + v30);
  v34 = *(v0 + v30 + 9);
  if (v32)
  {
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = *v33;
    v36 = *(v33 + 8);
    v37 = *(v31 + 8);
    v52 = *v31;
    v53 = v37;
    if (v34)
    {
      return 0;
    }

    v50 = v35;
    v51 = v36 & 1;
    sub_193605BB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v29[6];
  OUTLINED_FUNCTION_3();
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    v43 = *v41 == *v42 && v39 == v40;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v44 = v29[7];
  OUTLINED_FUNCTION_3();
  if (v45)
  {
    if (v46)
    {
      v49 = *v47 == *v48 && v45 == v46;
      if (v49 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v46)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ExtractedEmail.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_193448804(v1, &v26 - v14, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_193605C0C(v15, v9);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_14_35();
    sub_19364DB90(v16, v17);
    sub_19393C540();
    OUTLINED_FUNCTION_11_33();
    sub_19364FEC8();
  }

  v18 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v19 = v1 + v18[5];
  if (*(v19 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = *(v19 + 8);
    v26 = *v19;
    v27 = v20 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193606214();
    sub_19393C540();
  }

  v21 = (v1 + v18[6]);
  if (v21[1])
  {
    v22 = *v21;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v23 = (v1 + v18[7]);
  if (!v23[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v24 = *v23;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_19364DB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.trackingNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.carrierIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingMethod.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingDate.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingTime.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartDate.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartTime.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndDate.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndTime.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryDate.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryTime.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 224), 0x108uLL);
  memcpy(a1, (v1 + 224), 0x108uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2D0, &unk_1939732B8);
}

void *WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  memcpy(v4, (v1 + 224), 0x108uLL);
  sub_19344E6DC(v4, &qword_1EAE3F2D0, &unk_1939732B8);
  return memcpy((v1 + 224), a1, 0x108uLL);
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 76));
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 76));
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.fulfillmentCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0) + 76);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0) + 80));
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v2) + 80);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.shippingEmails.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(v0) + 80);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  sub_193463B08(v5);
  memcpy((a1 + 224), v5, 0x108uLL);
  v2 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  v3 = *(v2 + 76);
  sub_19393BE00();
  OUTLINED_FUNCTION_35_23();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  bzero((a1 + 32), 0xC0uLL);
  memcpy(__dst, (a1 + 224), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2D0, &unk_1939732B8);
  memcpy((a1 + 224), v5, 0x108uLL);
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  result = OUTLINED_FUNCTION_35_23();
  *(a1 + *(v2 + 80)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_19393BE00();
  v6 = OUTLINED_FUNCTION_23_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v101 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v101 - v24;
  v26 = *(a1 + 8);
  v27 = *(a2 + 8);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_141;
    }

    v28 = *a1 == *a2 && v26 == v27;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v27)
  {
    goto LABEL_141;
  }

  v29 = *(a2 + 25);
  if (*(a1 + 25))
  {
    if ((*(a2 + 25) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else
  {
    v30 = *(a2 + 16);
    v31 = *(a2 + 24);
    v32 = *(a1 + 24);
    v110[0] = *(a1 + 16);
    LOWORD(v110[1]) = v32;
    if (v29)
    {
      goto LABEL_141;
    }

    v108[0] = v30;
    LOBYTE(v108[1]) = v31 & 1;
    sub_19361F208();
    if ((sub_19393C550() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  v33 = *(a1 + 40);
  v34 = *(a2 + 40);
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_141;
    }

    v35 = *(a1 + 32) == *(a2 + 32) && v33 == v34;
    if (!v35 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v34)
  {
    goto LABEL_141;
  }

  v36 = *(a1 + 56);
  v37 = *(a2 + 56);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_141;
    }

    v38 = *(a1 + 48) == *(a2 + 48) && v36 == v37;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v37)
  {
    goto LABEL_141;
  }

  v39 = *(a1 + 72);
  v40 = *(a2 + 72);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_141;
    }

    v41 = *(a1 + 64) == *(a2 + 64) && v39 == v40;
    if (!v41 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v40)
  {
    goto LABEL_141;
  }

  v42 = *(a1 + 88);
  v43 = *(a2 + 88);
  if (v42)
  {
    if (!v43)
    {
      goto LABEL_141;
    }

    v44 = *(a1 + 80) == *(a2 + 80) && v42 == v43;
    if (!v44 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v43)
  {
    goto LABEL_141;
  }

  v45 = *(a1 + 104);
  v46 = *(a2 + 104);
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_141;
    }

    v47 = *(a1 + 96) == *(a2 + 96) && v45 == v46;
    if (!v47 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v46)
  {
    goto LABEL_141;
  }

  v48 = *(a1 + 120);
  v49 = *(a2 + 120);
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_141;
    }

    v50 = *(a1 + 112) == *(a2 + 112) && v48 == v49;
    if (!v50 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v49)
  {
    goto LABEL_141;
  }

  v51 = *(a1 + 136);
  v52 = *(a2 + 136);
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_141;
    }

    v53 = *(a1 + 128) == *(a2 + 128) && v51 == v52;
    if (!v53 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v52)
  {
    goto LABEL_141;
  }

  v54 = *(a1 + 152);
  v55 = *(a2 + 152);
  if (v54)
  {
    if (!v55)
    {
      goto LABEL_141;
    }

    v56 = *(a1 + 144) == *(a2 + 144) && v54 == v55;
    if (!v56 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v55)
  {
    goto LABEL_141;
  }

  v57 = *(a1 + 168);
  v58 = *(a2 + 168);
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_141;
    }

    v59 = *(a1 + 160) == *(a2 + 160) && v57 == v58;
    if (!v59 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v58)
  {
    goto LABEL_141;
  }

  v60 = *(a1 + 184);
  v61 = *(a2 + 184);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_141;
    }

    v62 = *(a1 + 176) == *(a2 + 176) && v60 == v61;
    if (!v62 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v61)
  {
    goto LABEL_141;
  }

  v63 = *(a1 + 200);
  v64 = *(a2 + 200);
  if (v63)
  {
    if (!v64)
    {
      goto LABEL_141;
    }

    v65 = *(a1 + 192) == *(a2 + 192) && v63 == v64;
    if (!v65 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v64)
  {
    goto LABEL_141;
  }

  v66 = *(a1 + 216);
  v67 = *(a2 + 216);
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_141;
    }

    v68 = *(a1 + 208) == *(a2 + 208) && v66 == v67;
    if (!v68 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  else if (v67)
  {
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_31_28(v111);
  memcpy(v112, (a2 + 224), sizeof(v112));
  OUTLINED_FUNCTION_31_28(v110);
  memcpy(&v110[33], (a2 + 224), 0x108uLL);
  OUTLINED_FUNCTION_31_28(v113);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v113) == 1)
  {
    memcpy(v108, &v110[33], 0x108uLL);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v108) == 1)
    {
      OUTLINED_FUNCTION_36_21(v109);
      sub_193448804(v111, v107, &qword_1EAE3F2D0, &unk_1939732B8);
      sub_193448804(v112, v107, &qword_1EAE3F2D0, &unk_1939732B8);
      sub_19344E6DC(v109, &qword_1EAE3F2D0, &unk_1939732B8);
LABEL_131:
      v102 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
      v92 = *(v20 + 48);
      v93 = *(v102 + 76);
      sub_193448804(a1 + v93, v25, &qword_1EAE3A9E8, &qword_19394F800);
      v103 = v92;
      sub_193448804(a2 + v93, &v25[v92], &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_13_25(v25);
      if (v28)
      {
        OUTLINED_FUNCTION_13_25(&v25[v103]);
        if (v28)
        {
          sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
          goto LABEL_144;
        }
      }

      else
      {
        sub_193448804(v25, v19, &qword_1EAE3A9E8, &qword_19394F800);
        OUTLINED_FUNCTION_13_25(&v25[v103]);
        if (!v94)
        {
          (*(v8 + 32))(v13, &v25[v103], v2);
          OUTLINED_FUNCTION_10_42();
          sub_19364DB90(v97, v98);
          v99 = sub_19393C550();
          v100 = *(v8 + 8);
          v100(v13, v2);
          v100(v19, v2);
          sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
          if ((v99 & 1) == 0)
          {
            goto LABEL_141;
          }

LABEL_144:
          v95 = sub_19364A6F4(*(a1 + *(v102 + 80)), *(a2 + *(v102 + 80)));
          return v95 & 1;
        }

        (*(v8 + 8))(v19, v2);
      }

      v78 = &qword_1EAE3B968;
      v79 = &qword_193972430;
      v80 = v25;
      goto LABEL_140;
    }

    sub_193448804(v111, v109, &qword_1EAE3F2D0, &unk_1939732B8);
    sub_193448804(v112, v109, &qword_1EAE3F2D0, &unk_1939732B8);
LABEL_129:
    memcpy(v108, v110, sizeof(v108));
    v78 = &unk_1EAE3F2D8;
    v79 = &unk_1939732C8;
    v80 = v108;
LABEL_140:
    sub_19344E6DC(v80, v78, v79);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_36_21(v109);
  OUTLINED_FUNCTION_36_21(v107);
  memcpy(v108, &v110[33], 0x108uLL);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v108) == 1)
  {
    memcpy(v106, v107, sizeof(v106));
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v69, v70, v71, &unk_1939732B8);
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v72, v73, v74, &unk_1939732B8);
    OUTLINED_FUNCTION_23_28();
    sub_193448804(v75, v76, v77, &unk_1939732B8);
    sub_19361B978(v106);
    goto LABEL_129;
  }

  memcpy(v106, &v110[33], sizeof(v106));
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v81, v82, v83, v84);
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v85, v86, v87, &unk_1939732B8);
  OUTLINED_FUNCTION_23_28();
  sub_193448804(v88, v89, v90, &unk_1939732B8);
  sub_19361F2F0();
  v91 = sub_19393C550();
  memcpy(v104, v106, sizeof(v104));
  sub_19361B978(v104);
  memcpy(v105, v107, sizeof(v105));
  sub_19361B978(v105);
  OUTLINED_FUNCTION_36_21(v106);
  sub_19344E6DC(v106, &qword_1EAE3F2D0, &unk_1939732B8);
  if (v91)
  {
    goto LABEL_131;
  }

LABEL_141:
  v95 = 0;
  return v95 & 1;
}

uint64_t WalletPaymentsCommerceExtractedOrder.ShippingFulfillment.hash(into:)(uint64_t a1)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_23_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38[-v17];
  if (v1[1])
  {
    v19 = *v1;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + 25) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v20 = *(v1 + 24);
    v42 = v1[2];
    v43 = v20 & 1;
    OUTLINED_FUNCTION_94();
    sub_19364F2F0();
    sub_19393C540();
  }

  if (v1[5])
  {
    v21 = v1[4];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[7])
  {
    v22 = v1[6];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[9])
  {
    v23 = v1[8];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[11])
  {
    v24 = v1[10];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[13])
  {
    v25 = v1[12];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[15])
  {
    v26 = v1[14];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[17])
  {
    v27 = v1[16];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[19])
  {
    v28 = v1[18];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[21])
  {
    v29 = v1[20];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[23])
  {
    v30 = v1[22];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[25])
  {
    v31 = v1[24];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v1[27])
  {
    v32 = v1[26];
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_6_44();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_28(v41);
  OUTLINED_FUNCTION_31_28(&v42);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(&v42) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v38, v41, sizeof(v38));
    OUTLINED_FUNCTION_94();
    memcpy(v39, v41, sizeof(v39));
    sub_193613D58(v39, v40);
    sub_19364F344();
    sub_19393C540();
    memcpy(v40, v38, sizeof(v40));
    sub_19361B978(v40);
  }

  v33 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment(0);
  sub_193448804(v1 + *(v33 + 76), v18, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v18);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v7 + 32))(v12, v18, v2);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_10_42();
    sub_19364DB90(v35, v36);
    sub_19393C540();
    (*(v7 + 8))(v12, v2);
  }

  return sub_19364F49C(a1, *(v1 + *(v33 + 80)));
}

unint64_t sub_19364F2F0()
{
  result = qword_1EAE3F968;
  if (!qword_1EAE3F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F968);
  }

  return result;
}

unint64_t sub_19364F344()
{
  result = qword_1EAE3F970;
  if (!qword_1EAE3F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F970);
  }

  return result;
}

uint64_t sub_19364F3EC(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19364F454(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19364F49C(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v3 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x193B18030](v14);
  if (v14)
  {
    v16 = &v13[v9[5]];
    v24 = &v13[v9[6]];
    v17 = &v13[v9[7]];
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    do
    {
      sub_19364FE64(v18, v13);
      sub_193448804(v13, v8, &qword_1EAE3EF88, &qword_193972100);
      if (__swift_getEnumTagSinglePayload(v8, 1, v25) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_193605C0C(v8, v22);
        sub_19393CAD0();
        sub_19364DB90(&qword_1EAE3F018, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata);
        sub_19393C540();
        sub_19364FEC8();
      }

      if (v16[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v19 = v16[8];
        v26 = *v16;
        v27 = v19 & 1;
        sub_19393CAD0();
        sub_193606214();
        sub_19393C540();
      }

      if (*(v24 + 1))
      {
        v20 = *v24;
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (*(v17 + 1))
      {
        v21 = *v17;
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      result = sub_19364FEC8();
      v18 += v23;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_19364F90C()
{
  OUTLINED_FUNCTION_13_32();
  sub_19364FB58(319, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v4 & v3))
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

    OUTLINED_FUNCTION_12_28();
    sub_19364FB58(319, v9, v10, MEMORY[0x1E69E62F8]);
    if (v11 > 0x3F)
    {
      return v5;
    }

    sub_19364FB58(319, &qword_1ED5037A0, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant, MEMORY[0x1E69E6720]);
    if (v12 > 0x3F)
    {
      return v5;
    }

    sub_19364FB58(319, &qword_1ED5034C8, type metadata accessor for WalletPaymentsCommerceExtractedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
    if (v13 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED5037A8);
    if (v14 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, qword_1ED5037B0);
    if (v15 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698);
    if (v16 > 0x3F)
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

  return v0;
}

void sub_19364FB58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_19364FBE4()
{
  sub_19364FB58(319, qword_1ED503A70, type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED503AC8);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19364FCF0()
{
  sub_19349D1FC(319, &qword_1ED508290);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D1FC(319, &qword_1ED503870);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED503878);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_13_32();
        sub_19364FB58(319, v5, v6, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          OUTLINED_FUNCTION_12_28();
          sub_19364FB58(319, v7, v8, MEMORY[0x1E69E62F8]);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_19364FE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceExtractedOrder.ExtractedEmail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19364FEC8()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *OUTLINED_FUNCTION_36_21(void *a1)
{

  return memcpy(a1, (v1 + 1872), 0x108uLL);
}

_BYTE *_s22GeneratedImageFeaturesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193650000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511238);
  v5 = __swift_project_value_buffer(v4, qword_1ED511238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_35 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511238);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F980, &qword_193976C58);
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

unint64_t static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction.attribute(_:)(void (*a1)(void))
{
  result = sub_193650410(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193650458(void (*a1)(void))
{
  result = sub_193650410(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193650488(uint64_t a1)
{
  result = sub_1936504B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936504B0()
{
  result = qword_1ED504EC0;
  if (!qword_1ED504EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED504EC0);
  }

  return result;
}

_BYTE *_s15UserInteractionOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GeneratedImageUserInteraction.json()()
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
  v10 = type metadata accessor for GeneratedImageUserInteraction();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1936507A8(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3F988, &qword_193976CD0);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1936507A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageUserInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GeneratedImageUserInteraction.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3F988, &qword_193976CD0);
  sub_19393C260();
  if (!v20)
  {
    sub_19365093C(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19365093C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageUserInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GeneratedImageUserInteraction.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
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
  if (*sub_193655284() == v5)
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
      sub_19365093C(v15, v39);
      v32 = type metadata accessor for GeneratedImageUserInteraction();
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
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageUserInteraction.serialize()()
{
  v1 = type metadata accessor for GeneratedImageUserInteraction();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F988, &qword_193976CD0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936507A8(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3F988, &qword_193976CD0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3F988, &qword_193976CD0);
  return v15;
}

id static GeneratedImageUserInteraction.columns.getter()
{
  v321 = MEMORY[0x1E69E7CC0];
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
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v29);
  result = OUTLINED_FUNCTION_3_5(0x74706D6F7270, 0xE600000000000000);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v30 = swift_initStackObject();
  v38 = OUTLINED_FUNCTION_2_4(v30, v31, v32, v33, v34, v35, v36, v37, v309);
  OUTLINED_FUNCTION_5_10(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  v47 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v47);
  OUTLINED_FUNCTION_23_29();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v48, v49, v50, v51, v52, 2, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v310);
  OUTLINED_FUNCTION_5_10(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v70);
  v71 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v71, 0xEA00000000007265, 6, 0, v0, 14, 3);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v311);
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v89);
  result = OUTLINED_FUNCTION_3_5(0x6369706F74, 0xE500000000000000);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v90 = swift_initStackObject();
  v98 = OUTLINED_FUNCTION_2_4(v90, v91, v92, v93, v94, v95, v96, v97, v312);
  OUTLINED_FUNCTION_5_10(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v107);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v108, v109, v110, v111, v112, 2, 0);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v113 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v122 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v122, v123, v124, v125, v126, v127, v128, v129, v130);
  v131 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v131);
  v132 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v132, v133);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v134 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v143 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v152);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v153 = swift_initStackObject();
  v161 = OUTLINED_FUNCTION_2_4(v153, v154, v155, v156, v157, v158, v159, v160, v313);
  OUTLINED_FUNCTION_5_10(v161, v162, v163, v164, v165, v166, v167, v168, v169);
  v170 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v170);
  OUTLINED_FUNCTION_25_27();
  OUTLINED_FUNCTION_24_27();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v171, v172, v173, v174, v175, 4, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v176 = swift_initStackObject();
  v184 = OUTLINED_FUNCTION_2_4(v176, v177, v178, v179, v180, v181, v182, v183, v314);
  OUTLINED_FUNCTION_5_10(v184, v185, v186, v187, v188, v189, v190, v191, v192);
  v193 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v193);
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v194, v195, v196, v197, v198, 4, 0);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_2(result);
  v199 = swift_initStackObject();
  v207 = OUTLINED_FUNCTION_2_4(v199, v200, v201, v202, v203, v204, v205, v206, v315);
  OUTLINED_FUNCTION_5_10(v207, v208, v209, v210, v211, v212, v213, v214, v215);
  v216 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v216);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_12_29();
  result = sub_19343D150(v217, v218, v219, v220, v221, 4, 0);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_7_2(result);
  v222 = swift_initStackObject();
  v230 = OUTLINED_FUNCTION_2_4(v222, v223, v224, v225, v226, v227, v228, v229, v316);
  OUTLINED_FUNCTION_5_10(v230, v231, v232, v233, v234, v235, v236, v237, v238);
  v239 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v239);
  result = OUTLINED_FUNCTION_3_5(0x656C797473, 0xE500000000000000);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_2(result);
  v240 = swift_initStackObject();
  v248 = OUTLINED_FUNCTION_2_4(v240, v241, v242, v243, v244, v245, v246, v247, v317);
  OUTLINED_FUNCTION_5_10(v248, v249, v250, v251, v252, v253, v254, v255, v256);
  v257 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v257);
  result = OUTLINED_FUNCTION_3_5(1919508840, 0xE400000000000000);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_7_2(result);
  v258 = swift_initStackObject();
  v266 = OUTLINED_FUNCTION_2_4(v258, v259, v260, v261, v262, v263, v264, v265, v318);
  OUTLINED_FUNCTION_5_10(v266, v267, v268, v269, v270, v271, v272, v273, v274);
  v275 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v275);
  v276 = OUTLINED_FUNCTION_19_38();
  result = OUTLINED_FUNCTION_3_5(v276, 0xEA00000000007269);
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_7_2(result);
  v277 = swift_initStackObject();
  v285 = OUTLINED_FUNCTION_2_4(v277, v278, v279, v280, v281, v282, v283, v284, v319);
  OUTLINED_FUNCTION_5_10(v285, v286, v287, v288, v289, v290, v291, v292, v293);
  v294 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v294);
  v295 = OUTLINED_FUNCTION_18_30();
  result = OUTLINED_FUNCTION_3_5(v295, 0xEB00000000736569);
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_2(result);
  v296 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v296, v297, v298, v299, v300, v301, v302, v303, v304);
  v305 = OUTLINED_FUNCTION_6_4();
  *(v305 + 16) = v320;
  *(v305 + 32) = sub_19393C850();
  v306 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v307 = OUTLINED_FUNCTION_31_6();
  result = sub_19343D150(v307, v308, 2, 0, v305, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v321;
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1936513F4()
{
  OUTLINED_FUNCTION_26();
  v77 = v0;
  v78 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_0(v10);
  v74 = v12;
  v75 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  v22 = sub_19393BE00();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v30 = v29 - v28;
  v76 = v5;
  v31 = v5 == 0x6D617473656D6974 && v3 == 0xE900000000000070;
  if (v31 || (OUTLINED_FUNCTION_14_36() & 1) != 0)
  {
    v32 = type metadata accessor for GeneratedImageUserInteraction();
    sub_1934486F8(v77 + *(v32 + 28), v21, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      (*(v25 + 32))(v30, v21, v22);
      sub_1934948FC();
      (*(v25 + 8))(v30, v22);
      goto LABEL_20;
    }

    v33 = &qword_1EAE3A9E8;
    v34 = &qword_19394F800;
    v35 = v21;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_16_2();
  v37 = v31 && v3 == 0xE600000000000000;
  if (v37 || (OUTLINED_FUNCTION_14_36() & 1) != 0)
  {
    v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 32);
LABEL_17:
    v39 = (v77 + v38);
    v40 = *(v77 + v38 + 8);
    if (!v40)
    {
      goto LABEL_9;
    }

    v79 = *v39;
    v80 = v40;
LABEL_19:
    sub_1934948FC();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_29();
  OUTLINED_FUNCTION_16_2();
  v42 = v31 && v3 == v41;
  if (v42 || (OUTLINED_FUNCTION_14_36() & 1) != 0)
  {
    v43 = *(type metadata accessor for GeneratedImageUserInteraction() + 36);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_16_2();
  v45 = v31 && v3 == 0xEA00000000007265;
  if (!v45 && (OUTLINED_FUNCTION_14_36() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2();
    v49 = v31 && v3 == 0xE500000000000000;
    if (v49 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
    {
      v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 44);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_16_2();
    v50 = v31 && v3 == 0xE500000000000000;
    if (!v50 && (OUTLINED_FUNCTION_11_34() & 1) == 0)
    {
      OUTLINED_FUNCTION_21_30();
      v52 = v31 && v51 == v3;
      if (v52 || (OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_14_36() & 1) != 0))
      {
        v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 52);
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        v54 = v31 && v53 == v3;
        if (v54 || (OUTLINED_FUNCTION_14_36() & 1) != 0)
        {
          v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 56);
        }

        else
        {
          OUTLINED_FUNCTION_24_27();
          OUTLINED_FUNCTION_25_27();
          OUTLINED_FUNCTION_16_2();
          v56 = v31 && v3 == v55;
          if (v56 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
          {
            v57 = type metadata accessor for GeneratedImageUserInteraction();
            OUTLINED_FUNCTION_6_45(*(v57 + 60));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_16_2();
          v58 = v31 && v3 == 0xE600000000000000;
          if (v58 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
          {
            v59 = type metadata accessor for GeneratedImageUserInteraction();
            OUTLINED_FUNCTION_6_45(*(v59 + 64));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_22_6();
          OUTLINED_FUNCTION_16_2();
          v60 = v31 && v3 == 0xE700000000000000;
          if (v60 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
          {
            v61 = type metadata accessor for GeneratedImageUserInteraction();
            OUTLINED_FUNCTION_6_45(*(v61 + 68));
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_16_2();
          v62 = v31 && v3 == 0xE500000000000000;
          if (v62 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
          {
            v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 72);
          }

          else
          {
            v63 = v76 == 1919508840 && v3 == 0xE400000000000000;
            if (v63 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
            {
              v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 76);
            }

            else
            {
              OUTLINED_FUNCTION_19_38();
              OUTLINED_FUNCTION_16_2();
              v65 = v31 && v3 == v64;
              if (v65 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
              {
                v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 80);
              }

              else
              {
                OUTLINED_FUNCTION_18_30();
                OUTLINED_FUNCTION_16_2();
                v67 = v31 && v3 == v66;
                if (v67 || (OUTLINED_FUNCTION_11_34() & 1) != 0)
                {
                  v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 84);
                }

                else
                {
                  OUTLINED_FUNCTION_21_30();
                  if (!v31 || v68 != v3)
                  {
                    OUTLINED_FUNCTION_31_6();
                    if ((OUTLINED_FUNCTION_11_34() & 1) == 0)
                    {
                      sub_19349AB64();
                      swift_allocError();
                      v71 = v70;
                      *v70 = v76;
                      v70[1] = v3;
                      v70[5] = type metadata accessor for GeneratedImageUserInteraction();
                      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v71 + 2);
                      sub_1936507A8(v77, boxed_opaque_existential_1Tm);
                      *(v71 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_20;
                    }
                  }

                  v38 = *(type metadata accessor for GeneratedImageUserInteraction() + 88);
                }
              }
            }
          }
        }
      }

      goto LABEL_17;
    }

    v43 = *(type metadata accessor for GeneratedImageUserInteraction() + 48);
LABEL_27:
    v44 = v77 + v43;
    if (*(v44 + 4))
    {
      goto LABEL_9;
    }

    LODWORD(v79) = *v44;
    goto LABEL_19;
  }

  v46 = type metadata accessor for GeneratedImageUserInteraction();
  sub_1934486F8(v77 + *(v46 + 40), v9, &qword_1EAE3AA88, &qword_19394F9C0);
  v47 = v75;
  if (__swift_getEnumTagSinglePayload(v9, 1, v75) != 1)
  {
    v48 = v74;
    (*(v74 + 32))(v17, v9, v47);
    sub_1934948FC();
    (*(v48 + 8))(v17, v47);
    goto LABEL_20;
  }

  v33 = &qword_1EAE3AA88;
  v34 = &qword_19394F9C0;
  v35 = v9;
LABEL_8:
  sub_19344E6DC(v35, v33, v34);
LABEL_9:
  v36 = v78;
  *v78 = 0u;
  v36[1] = 0u;
LABEL_20:
  OUTLINED_FUNCTION_27();
}

void GeneratedImageUserInteraction.init()(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GeneratedImageUserInteraction();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v10 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  sub_1934E3F94();
  v7 = v2[10];
  sub_19344B7DC();
  v16 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = a1 + v2[12];
  sub_193656664();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[22]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193655284();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v10 = 0;
  v10[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v9);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[4] = 1;
  *v14 = 0;
  v14[1] = 0;

  *v13 = 0;
  v13[1] = 0;

  OUTLINED_FUNCTION_32_24(v2[15]);
  OUTLINED_FUNCTION_32_24(v2[16]);
  OUTLINED_FUNCTION_32_24(v2[17]);
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
}

uint64_t static GeneratedImageUserInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v138 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v138);
  v135 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v133 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v132 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v136);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v132 - v18;
  v19 = sub_19393BE00();
  v20 = OUTLINED_FUNCTION_0(v19);
  v141 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v132 - v31;
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v132 - v36;
  v139 = type metadata accessor for GeneratedImageUserInteraction();
  v140 = a1;
  v38 = v139[7];
  v39 = v33[14];
  sub_1934486F8(a1 + v38, v37, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v38, &v37[v39], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v37, 1, v19);
  if (v40)
  {
    OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
    if (v40)
    {
      sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_14;
    }

LABEL_9:
    v41 = &qword_1EAE3B968;
    v42 = &qword_193972430;
    v43 = v37;
LABEL_10:
    sub_19344E6DC(v43, v41, v42);
    return 0;
  }

  sub_1934486F8(v37, v32, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
  if (v40)
  {
    (*(v141 + 8))(v32, v19);
    goto LABEL_9;
  }

  v45 = v141;
  (*(v141 + 32))(v26, &v37[v39], v19);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v46, v47);
  v48 = sub_19393C550();
  v49 = *(v45 + 8);
  v49(v26, v19);
  v49(v32, v19);
  sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v51 = v139;
  v50 = v140;
  v52 = v139[8];
  OUTLINED_FUNCTION_3_49();
  if (v55)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v54);
    v58 = v40 && v56 == v57;
    if (!v58 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_22(v51[9]);
  if (v60)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v61)
    {
      return 0;
    }
  }

  v62 = v51[10];
  v63 = v137;
  v64 = *(v136 + 48);
  sub_1934486F8(v50 + v62, v137, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v62, v63 + v64, &qword_1EAE3AA88, &qword_19394F9C0);
  v65 = v138;
  OUTLINED_FUNCTION_6_3(v63, 1, v138);
  if (!v40)
  {
    v66 = v134;
    sub_1934486F8(v63, v134, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v63 + v64, 1, v65);
    if (!v67)
    {
      v68 = v135;
      v69 = v63 + v64;
      v70 = v133;
      (*(v135 + 32))(v133, v69, v65);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v71, v72);
      v73 = sub_19393C550();
      v74 = *(v68 + 8);
      v74(v70, v65);
      v74(v66, v65);
      sub_19344E6DC(v63, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v73 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    (*(v135 + 8))(v66, v65);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_6_3(v63 + v64, 1, v65);
  if (!v40)
  {
LABEL_35:
    v41 = &qword_1EAE3B4E8;
    v42 = &unk_193952CF0;
    v43 = v63;
    goto LABEL_10;
  }

  sub_19344E6DC(v63, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_37:
  v75 = v51[11];
  OUTLINED_FUNCTION_3_49();
  if (v78)
  {
    if (!v76)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v77);
    v81 = v40 && v79 == v80;
    if (!v81 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_22(v51[12]);
  if (v83)
  {
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v84)
    {
      return 0;
    }
  }

  v85 = v51[13];
  OUTLINED_FUNCTION_3_49();
  if (v88)
  {
    if (!v86)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v87);
    v91 = v40 && v89 == v90;
    if (!v91 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v92 = v51[14];
  OUTLINED_FUNCTION_3_49();
  if (v95)
  {
    if (!v93)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v94);
    v98 = v40 && v96 == v97;
    if (!v98 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v51[15]);
  sub_19365260C();
  if ((OUTLINED_FUNCTION_39_22() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v51[16]);
  sub_193652660();
  if ((OUTLINED_FUNCTION_39_22() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v51[17]);
  sub_1936526B4();
  if ((OUTLINED_FUNCTION_39_22() & 1) == 0)
  {
    return 0;
  }

  v99 = v51[18];
  OUTLINED_FUNCTION_3_49();
  if (v102)
  {
    if (!v100)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v101);
    v105 = v40 && v103 == v104;
    if (!v105 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v100)
  {
    return 0;
  }

  v106 = v51[19];
  v107 = *(a2 + v106 + 8);
  if (*(v50 + v106 + 8))
  {
    if (!v107)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((v50 + v106));
    v110 = v40 && v108 == v109;
    if (!v110 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v111 = v139[20];
  OUTLINED_FUNCTION_24_28(v140);
  if (v114)
  {
    if (!v112)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v113);
    v117 = v40 && v115 == v116;
    if (!v117 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v118 = v139[21];
  OUTLINED_FUNCTION_24_28(v140);
  if (v121)
  {
    if (!v119)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v120);
    v124 = v40 && v122 == v123;
    if (!v124 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v119)
  {
    return 0;
  }

  v125 = v139[22];
  OUTLINED_FUNCTION_24_28(v140);
  if (v128)
  {
    if (v126)
    {
      OUTLINED_FUNCTION_5(v127);
      v131 = v40 && v129 == v130;
      if (v131 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v126)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_19365260C()
{
  result = qword_1EAE3A748;
  if (!qword_1EAE3A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A748);
  }

  return result;
}

unint64_t sub_193652660()
{
  result = qword_1EAE3A740;
  if (!qword_1EAE3A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A740);
  }

  return result;
}

unint64_t sub_1936526B4()
{
  result = qword_1EAE3A738;
  if (!qword_1EAE3A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A738);
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v55 = v4;
  v56 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v54 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = sub_19393BE00();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  v30 = type metadata accessor for GeneratedImageUserInteraction();
  sub_1934486F8(v1 + v30[7], v29, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v29, 1, v15);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v18 + 32))(v23, v29, v15);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v32, v33);
    sub_19393C540();
    (*(v18 + 8))(v23, v15);
  }

  v34 = (v1 + v30[8]);
  v35 = v56;
  if (v34[1])
  {
    OUTLINED_FUNCTION_7_1(v34);
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v36 = (v1 + v30[9]);
  if (*(v36 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v37 = *v36;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  sub_1934486F8(v1 + v30[10], v14, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v14, 1, v35);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v39 = v54;
    v38 = v55;
    (*(v55 + 32))(v54, v14, v35);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v40, v41);
    sub_19393C540();
    (*(v38 + 8))(v39, v35);
  }

  OUTLINED_FUNCTION_5_0(v30[11]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v42);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v43 = (v1 + v30[12]);
  if (*(v43 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v35 = *v43;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0(v30[13]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v44);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[14]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v45);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v30[15]);
  sub_193652C3C();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v30[16]);
  sub_193652C90();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v30[17]);
  sub_193652CE4();
  sub_19393C540();
  OUTLINED_FUNCTION_5_0(v30[18]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v46);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[19]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v47);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[20]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v48);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[21]);
  if (v35)
  {
    OUTLINED_FUNCTION_7_1(v49);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v50 = (v1 + v30[22]);
  if (!v50[1])
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v51 = *v50;
  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193652BF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_193652C3C()
{
  result = qword_1EAE3F990;
  if (!qword_1EAE3F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F990);
  }

  return result;
}

unint64_t sub_193652C90()
{
  result = qword_1EAE3F998;
  if (!qword_1EAE3F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F998);
  }

  return result;
}

unint64_t sub_193652CE4()
{
  result = qword_1EAE3F9A0;
  if (!qword_1EAE3F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9A0);
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.Personalization.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t static GeneratedImageUserInteraction.Personalization.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9D0, &qword_193976E40);
  v5 = OUTLINED_FUNCTION_16_0(v4);
  if (!(!v11 & v10))
  {
    v37 = OUTLINED_FUNCTION_39(v9);
    v41 = OUTLINED_FUNCTION_84_2(v37, v38, v39, v40, &qword_1EAE3F9D0, &qword_193976E40);
    v5 = OUTLINED_FUNCTION_17_2(v41);
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v42 = OUTLINED_FUNCTION_39(v16);
    v46 = OUTLINED_FUNCTION_85(v42, v43, v44, v45, &qword_1EAE3F9D0, &qword_193976E40);
    v12 = OUTLINED_FUNCTION_17_2(v46);
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v47 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v47, v3, 1, v48, &qword_1EAE3F9D0, &qword_193976E40);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v49 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v49, v50, v51, v52, &qword_1EAE3F9D0, &qword_193976E40);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v53 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v53, v54, v55, v56, &qword_1EAE3F9D0, &qword_193976E40);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  *(v34 + 32) = 3;
  *(v34 + 40) = v3;
  return v35;
}

uint64_t GeneratedImageUserInteraction.Personalization.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = 0x636972656E6547;
      break;
    case 2:
      result = 0x6F746F6850;
      break;
    case 3:
      result = 0x55556E6F73726550;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Personalization.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 1701736270 ? (v4 = v0 == 0xE400000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x636972656E6547 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0x6F746F6850 && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else if (v1 == 0x55556E6F73726550 && v0 == 0xEA00000000004449)
      {

        v5 = 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_0_9();

        v5 = 3;
        if ((v9 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t GeneratedImageUserInteraction.Result.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GeneratedImageUserInteraction.Result.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9C8, &qword_193976E38);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v80 = OUTLINED_FUNCTION_39(v10);
    v84 = OUTLINED_FUNCTION_84_2(v80, v81, v82, v83, &qword_1EAE3F9C8, &qword_193976E38);
    v6 = OUTLINED_FUNCTION_17_2(v84);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v85 = OUTLINED_FUNCTION_39(v17);
    v89 = OUTLINED_FUNCTION_85(v85, v86, v87, v88, &qword_1EAE3F9C8, &qword_193976E38);
    v13 = OUTLINED_FUNCTION_17_2(v89);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v90 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v90, v3, 1, v91, &qword_1EAE3F9C8, &qword_193976E38);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v92 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v92, v93, v94, v95, &qword_1EAE3F9C8, &qword_193976E38);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v96 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v96, v97, v98, v99, &qword_1EAE3F9C8, &qword_193976E38);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v100 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v100, v101, v102, v103, &qword_1EAE3F9C8, &qword_193976E38);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v4 + 7 > (v48 >> 1))
  {
    v104 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v104, v105, v106, v107, &qword_1EAE3F9C8, &qword_193976E38);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v4 + 8 > (v55 >> 1))
  {
    v108 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v108, v109, v110, v111, &qword_1EAE3F9C8, &qword_193976E38);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4(v56, v57);
  if (v4 + 9 > (v62 >> 1))
  {
    v112 = OUTLINED_FUNCTION_39(v62);
    v58 = OUTLINED_FUNCTION_85(v112, v113, v114, v115, &qword_1EAE3F9C8, &qword_193976E38);
    v61 = v58;
  }

  OUTLINED_FUNCTION_47_5(v58, v59, v60, v61);
  OUTLINED_FUNCTION_4(v63, v64);
  if (v4 + 10 > (v69 >> 1))
  {
    v116 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v116, v117, v118, v119, &qword_1EAE3F9C8, &qword_193976E38);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70, v71);
  if (v4 + 11 > (v76 >> 1))
  {
    v120 = OUTLINED_FUNCTION_39(v76);
    v72 = OUTLINED_FUNCTION_85(v120, v121, v122, v123, &qword_1EAE3F9C8, &qword_193976E38);
    v75 = v72;
  }

  OUTLINED_FUNCTION_47_5(v72, v73, v74, v75);
  *(v77 + 32) = 9;
  *(v77 + 40) = v3;
  return v78;
}

unint64_t GeneratedImageUserInteraction.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656E6547746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x65746172656E6547;
      break;
    case 2:
      result = 0x64656761676E45;
      break;
    case 3:
      result = OUTLINED_FUNCTION_37_21();
      break;
    case 4:
      result = OUTLINED_FUNCTION_34_26();
      break;
    case 5:
      result = OUTLINED_FUNCTION_35_24();
      break;
    case 6:
      result = OUTLINED_FUNCTION_41_20();
      break;
    case 7:
      result = OUTLINED_FUNCTION_36_22();
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Result.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x72656E6547746F4ELL ? (v4 = v0 == 0xEC00000064657461) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x65746172656E6547 && v0 == 0xE900000000000064;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0x64656761676E45 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_37_21() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_34_26() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_35_24() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else
            {
              v15 = v1 == OUTLINED_FUNCTION_41_20() && v0 == v14;
              if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v5 = 6;
              }

              else
              {
                v17 = v1 == OUTLINED_FUNCTION_36_22() && v0 == v16;
                if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 7;
                }

                else
                {
                  v18 = v1 == 0xD000000000000014 && 0x8000000193A2B2B0 == v0;
                  if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v5 = 8;
                  }

                  else if (v1 == 0xD000000000000015 && 0x8000000193A2B290 == v0)
                  {

                    v5 = 9;
                  }

                  else
                  {
                    v20 = OUTLINED_FUNCTION_0_9();

                    v5 = 9;
                    if ((v20 & 1) == 0)
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

uint64_t GeneratedImageUserInteraction.Feature.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GeneratedImageUserInteraction.Feature.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9C0, &qword_193976E30);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v45 = OUTLINED_FUNCTION_39(v10);
    v49 = OUTLINED_FUNCTION_84_2(v45, v46, v47, v48, &qword_1EAE3F9C0, &qword_193976E30);
    v6 = OUTLINED_FUNCTION_17_2(v49);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v50 = OUTLINED_FUNCTION_39(v17);
    v54 = OUTLINED_FUNCTION_85(v50, v51, v52, v53, &qword_1EAE3F9C0, &qword_193976E30);
    v13 = OUTLINED_FUNCTION_17_2(v54);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v55 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v55, v3, 1, v56, &qword_1EAE3F9C0, &qword_193976E30);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v57 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE3F9C0, &qword_193976E30);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v61 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE3F9C0, &qword_193976E30);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v65 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE3F9C0, &qword_193976E30);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  *(v42 + 32) = 4;
  *(v42 + 40) = 1;
  return v43;
}

unint64_t GeneratedImageUserInteraction.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x696A6F6D6E6547;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_38_23();
      break;
    case 2:
      result = 0x706150636967614DLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x617261746E6F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Feature.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x696A6F6D6E6547 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_38_23() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v8 = v1 == 0x706150636967614DLL && v0 == 0xEA00000000007265;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000012 && 0x8000000193A2B2D0 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else if (v1 == 0x617261746E6F4DLL && v0 == 0xE700000000000000)
        {

          v5 = 4;
        }

        else
        {
          v11 = OUTLINED_FUNCTION_22_7();

          v5 = 4;
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

unint64_t sub_193653B84()
{
  result = qword_1EAE3F9A8;
  if (!qword_1EAE3F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9A8);
  }

  return result;
}

unint64_t sub_193653BDC()
{
  result = qword_1EAE3F9B0;
  if (!qword_1EAE3F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9B0);
  }

  return result;
}

unint64_t sub_193653C34()
{
  result = qword_1EAE3F9B8;
  if (!qword_1EAE3F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_22()
{

  return sub_19393C550();
}

uint64_t sub_193653CF0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB948);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v57 = OUTLINED_FUNCTION_156();
  *(v57 + 16) = xmmword_193952750;
  v6 = v57 + v0;
  v7 = v57 + v0 + dword_1EAEAB980;
  *(v57 + v0) = 1;
  *v7 = "timestamp";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v6 + v5);
  *v13 = 2;
  *v12 = "prompt";
  v12[1] = 6;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v11)(v14);
  OUTLINED_FUNCTION_3_1(v6 + 2 * v5);
  OUTLINED_FUNCTION_39_7(v15);
  *v16 = "tokenLength";
  v16[1] = 11;
  v17 = OUTLINED_FUNCTION_41(v16);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + 3 * v5);
  *v19 = 4;
  *v18 = "identifier";
  v18[1] = 10;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v6 + 4 * v5);
  *v22 = 5;
  *v21 = "topic";
  v21[1] = 5;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v6 + 5 * v5);
  *v25 = 6;
  *v24 = "usage";
  v24[1] = 5;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v6 + 6 * v5);
  *v28 = 7;
  *v27 = "userInterfaceLanguage";
  v27[1] = 21;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v11)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v6 + 7 * v5);
  *v31 = 8;
  *v30 = "userSetRegionFormat";
  v30[1] = 19;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v11)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v6 + 8 * v5);
  *v34 = 9;
  *v33 = "personalization";
  v33[1] = 15;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v11)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v6 + 9 * v5);
  *v37 = 10;
  *v36 = "result";
  v36[1] = 6;
  v38 = OUTLINED_FUNCTION_41(v36);
  (v11)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v6 + 10 * v5);
  *v40 = 11;
  *v39 = "feature";
  v39[1] = 7;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v11)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v6 + 11 * v5);
  *v43 = 12;
  *v42 = "style";
  v42[1] = 5;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v11)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v6 + 12 * v5);
  *v46 = 13;
  *v45 = "hair";
  v45[1] = 4;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v11)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v6 + 13 * v5);
  *v49 = 14;
  *v48 = "facialHair";
  v48[1] = 10;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v11)(v50);
  v51 = OUTLINED_FUNCTION_3_1(v6 + 14 * v5);
  *v52 = 15;
  *v51 = "accessories";
  v51[1] = 11;
  v53 = OUTLINED_FUNCTION_41(v51);
  (v11)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v6 + 15 * v5);
  *v55 = 16;
  *v54 = "additionalDescription";
  *(v54 + 8) = 21;
  *(v54 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  return sub_19393C410();
}

void sub_193654134()
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
        v5 = *(type metadata accessor for GeneratedImageUserInteraction() + 28);
        sub_1934976E4();
        goto LABEL_24;
      case 2:
        v22 = *(type metadata accessor for GeneratedImageUserInteraction() + 32);
        goto LABEL_23;
      case 3:
        v17 = *(type metadata accessor for GeneratedImageUserInteraction() + 36);
        goto LABEL_20;
      case 4:
        v19 = *(type metadata accessor for GeneratedImageUserInteraction() + 40);
        OUTLINED_FUNCTION_9_30();
        sub_193497890(v20);
        goto LABEL_24;
      case 5:
        v8 = *(type metadata accessor for GeneratedImageUserInteraction() + 44);
        goto LABEL_23;
      case 6:
        v23 = *(type metadata accessor for GeneratedImageUserInteraction() + 48);
LABEL_20:
        OUTLINED_FUNCTION_9_30();
        sub_19393C170();
        goto LABEL_24;
      case 7:
        v25 = *(type metadata accessor for GeneratedImageUserInteraction() + 52);
        goto LABEL_23;
      case 8:
        v21 = *(type metadata accessor for GeneratedImageUserInteraction() + 56);
        goto LABEL_23;
      case 9:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v13)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        v34 = v31 & ~v32;
        v35 = v0 + *(type metadata accessor for GeneratedImageUserInteraction() + 60);
        *v35 = v33;
        *(v35 + 8) = v34 & 1;
        continue;
      case 10:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v13)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        v15 = v11 & ~v12;
        v16 = *(type metadata accessor for GeneratedImageUserInteraction() + 64);
        goto LABEL_29;
      case 11:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v13)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v27 & ~v28;
        v16 = *(type metadata accessor for GeneratedImageUserInteraction() + 68);
LABEL_29:
        v29 = v0 + v16;
        *v29 = v14;
        *(v29 + 8) = v15 & 1;
        continue;
      case 12:
        v7 = *(type metadata accessor for GeneratedImageUserInteraction() + 72);
        goto LABEL_23;
      case 13:
        v9 = *(type metadata accessor for GeneratedImageUserInteraction() + 76);
        goto LABEL_23;
      case 14:
        v24 = *(type metadata accessor for GeneratedImageUserInteraction() + 80);
        goto LABEL_23;
      case 15:
        v6 = *(type metadata accessor for GeneratedImageUserInteraction() + 84);
        goto LABEL_23;
      case 16:
        v18 = *(type metadata accessor for GeneratedImageUserInteraction() + 88);
LABEL_23:
        OUTLINED_FUNCTION_9_30();
        sub_19393C200();
LABEL_24:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936543F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_30();
  sub_193654714(v6, v7, v8, a3);
  if (!v4)
  {
    v9 = type metadata accessor for GeneratedImageUserInteraction();
    OUTLINED_FUNCTION_5_20(v9[8]);
    if (v11)
    {
      v12 = *v10;
      OUTLINED_FUNCTION_4_7();
    }

    v13 = (v3 + v9[9]);
    if ((v13[1] & 1) == 0)
    {
      v14 = *v13;
      OUTLINED_FUNCTION_11_2();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_9_30();
    sub_1936548D4(v15, v16, v17, a3);
    OUTLINED_FUNCTION_5_20(v9[11]);
    if (v19)
    {
      v20 = *v18;
      OUTLINED_FUNCTION_4_7();
    }

    v21 = (v3 + v9[12]);
    if ((v21[1] & 1) == 0)
    {
      v22 = *v21;
      OUTLINED_FUNCTION_11_2();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20(v9[13]);
    if (v24)
    {
      v25 = *v23;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_20(v9[14]);
    if (v27)
    {
      v28 = *v26;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_49(v9[15]);
    sub_19365260C();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v29, v30, v31, v32, v33, v34);
    }

    OUTLINED_FUNCTION_5_49(v9[16]);
    sub_193652660();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v35, v36, v37, v38, v39, v40);
    }

    OUTLINED_FUNCTION_5_49(v9[17]);
    sub_1936526B4();
    if ((OUTLINED_FUNCTION_25_4() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v41, v42, v43, v44, v45, v46);
    }

    OUTLINED_FUNCTION_5_20(v9[18]);
    if (v48)
    {
      v49 = *v47;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_20(v9[19]);
    if (v51)
    {
      v52 = *v50;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_20(v9[20]);
    if (v54)
    {
      v55 = *v53;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_20(v9[21]);
    if (v57)
    {
      v58 = *v56;
      OUTLINED_FUNCTION_4_7();
    }

    OUTLINED_FUNCTION_5_20(v9[22]);
    if (v60)
    {
      v61 = *v59;
      OUTLINED_FUNCTION_4_7();
    }
  }
}

uint64_t sub_193654714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedImageUserInteraction();
  sub_193448758(v5 + *(v18 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_193451F04(v17, 1, 2020175477, 0xE400000000000000);
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_1936548D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedImageUserInteraction();
  sub_193448758(v5 + *(v18 + 40), v9, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_19344652C();
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_193654A88()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3F9D8;

  return v0;
}

void sub_193654B24()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB960);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v8, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("PersonalizationUnknown");
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v0 + v7);
  *v14 = 1;
  *v13 = "None";
  v13[1] = 4;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v0 + 2 * v7);
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_0_0(v16, "Generic");
  (v12)(v18);
  OUTLINED_FUNCTION_45_2(3 * v7);
  OUTLINED_FUNCTION_39_7(v19);
  v21 = OUTLINED_FUNCTION_0_0(v20, "Photo");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v0 + 4 * v7);
  *v23 = 4;
  *v22 = "PersonUUID";
  *(v22 + 8) = 10;
  *(v22 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193654D34()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB978);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v8, xmmword_1939526F0);
  OUTLINED_FUNCTION_63("ResultUnknown");
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v0 + v7);
  *v14 = 1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "NotGenerated");
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v0 + 2 * v7);
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_0_0(v16, "Generated");
  (v12)(v18);
  OUTLINED_FUNCTION_45_2(3 * v7);
  OUTLINED_FUNCTION_39_7(v19);
  v21 = OUTLINED_FUNCTION_0_0(v20, "Engaged");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v0 + 4 * v7);
  *v23 = 4;
  v24 = OUTLINED_FUNCTION_0_0(v22, "UILayerBlocking");
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_45_2(5 * v7);
  *v26 = 5;
  *v25 = "InputBlocking";
  v25[1] = 13;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  (v12)(v27);
  v28 = OUTLINED_FUNCTION_14_4(6);
  v29 = OUTLINED_FUNCTION_0_0(v28, "OutputBlocking");
  (v12)(v29);
  v30 = OUTLINED_FUNCTION_45_2(7 * v7);
  *v31 = 7;
  *v30 = "OtherIssues";
  v30[1] = 11;
  v32 = OUTLINED_FUNCTION_1_3(v30);
  (v12)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v0 + 8 * v7);
  *v34 = 8;
  *v33 = "UserCancelled";
  v33[1] = 13;
  v35 = OUTLINED_FUNCTION_1_3(v33);
  (v12)(v35);
  v36 = OUTLINED_FUNCTION_45_2(9 * v7);
  *v37 = 9;
  v38 = OUTLINED_FUNCTION_0_0(v36, "InputPersonalization");
  (v12)(v38);
  v39 = OUTLINED_FUNCTION_14_4(10);
  *v39 = "OutputPersonalization";
  *(v39 + 1) = 21;
  v39[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193655048()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB990);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v8, xmmword_1939526E0);
  OUTLINED_FUNCTION_63("FeatureUnknown");
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v0 + v7);
  *v14 = 1;
  *v13 = "Genmoji";
  v13[1] = 7;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v12)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v0 + 2 * v7);
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_0_0(v16, "ImagePlayground");
  (v12)(v18);
  OUTLINED_FUNCTION_45_2(3 * v7);
  OUTLINED_FUNCTION_39_7(v19);
  v21 = OUTLINED_FUNCTION_0_0(v20, "MagicPaper");
  (v12)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v0 + 4 * v7);
  *v23 = 4;
  v24 = OUTLINED_FUNCTION_0_0(v22, "MessagesBackground");
  (v12)(v24);
  v25 = OUTLINED_FUNCTION_45_2(5 * v7);
  *v26 = 5;
  *v25 = "Montara";
  *(v25 + 8) = 7;
  *(v25 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t GeneratedImageUserInteraction.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for GeneratedImageUserInteraction()
{
  result = qword_1ED50DA20;
  if (!qword_1ED50DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t GeneratedImageUserInteraction.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t GeneratedImageUserInteraction.prompt.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.prompt.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 40));
}

uint64_t GeneratedImageUserInteraction.topic.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.topic.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.userInterfaceLanguage.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.userInterfaceLanguage.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.userSetRegionFormat.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.userSetRegionFormat.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void GeneratedImageUserInteraction.personalization.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_2_52(*(v0 + 60));
}

void GeneratedImageUserInteraction.result.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_2_52(*(v0 + 64));
}

void GeneratedImageUserInteraction.feature.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_2_52(*(v0 + 68));
}

uint64_t GeneratedImageUserInteraction.style.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 72));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.style.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.hair.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 76));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.hair.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.facialHair.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 80));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.facialHair.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 80));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.accessories.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 84));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.accessories.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 84));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.additionalDescription.getter()
{
  v0 = type metadata accessor for GeneratedImageUserInteraction();
  OUTLINED_FUNCTION_4_4(*(v0 + 88));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.additionalDescription.setter()
{
  v3 = OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201(*(v3 + 88));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193655E2C@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Personalization.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193655E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static GeneratedImageUserInteraction.Personalization.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_193655EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193655FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936560B8@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936560E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static GeneratedImageUserInteraction.Result.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1936561D4@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936561FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static GeneratedImageUserInteraction.Feature.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t GeneratedImageUserInteraction.hashValue.getter()
{
  sub_19393CAB0();
  GeneratedImageUserInteraction.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193656330()
{
  sub_19393CAB0();
  GeneratedImageUserInteraction.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19365640C()
{
  result = qword_1EAE3FA18;
  if (!qword_1EAE3FA18)
  {
    type metadata accessor for GeneratedImageUserInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA18);
  }

  return result;
}

uint64_t sub_193656490()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    v1 = v5;
    if (v6 > 0x3F)
    {
      return v1;
    }

    sub_19349D1FC(319, &qword_1ED508058);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v9 > 0x3F)
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

uint64_t sub_193656684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511298);
  v5 = __swift_project_value_buffer(v4, qword_1ED511298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.FailureTracking.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_36 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA20, &qword_1939772F8);
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

unint64_t static Library.Streams.GenerativeExperiences.FailureTracking.attribute(_:)(void (*a1)(void))
{
  result = sub_193656A94(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193656ADC(void (*a1)(void))
{
  result = sub_193656A94(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193656B0C(uint64_t a1)
{
  result = sub_193656B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193656B34()
{
  result = qword_1ED5048D0;
  if (!qword_1ED5048D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048D0);
  }

  return result;
}

_BYTE *_s15FailureTrackingOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesFailureTracking.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GenerativeExperiencesFailureTracking();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_193656E3C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FA28, &qword_193977370);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE3FA28, &qword_193977370);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_193656E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesFailureTracking();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesFailureTracking.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3FA28, &qword_193977370);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_193656FE0(v10, a1);
  }

  return result;
}

uint64_t sub_193656FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesFailureTracking();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesFailureTracking.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
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
  if (*sub_193657C84() == a3)
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
      sub_193656FE0(v14, v40);
      v33 = type metadata accessor for GenerativeExperiencesFailureTracking();
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
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesFailureTracking.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesFailureTracking();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193656E3C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FA28, &qword_193977370);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FA28, &qword_193977370);
  return v15;
}

id static GenerativeExperiencesFailureTracking.columns.getter()
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
  result = sub_19343D150(0xD000000000000011, 0x8000000193A14520, 2, 0, v1, 13, 0);
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

uint64_t sub_1936575F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for GenerativeExperiencesFailureTracking();
    v9 = (v3 + *(result + 28));
    if (v9[1])
    {
      v13 = *v9;
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v11 = v10;
    *v10 = a1;
    v10[1] = a2;
    v10[5] = type metadata accessor for GenerativeExperiencesFailureTracking();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
    sub_193656E3C(v3, boxed_opaque_existential_1Tm);
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t GenerativeExperiencesFailureTracking.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesFailureTracking();
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193657C84();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t static GenerativeExperiencesFailureTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GenerativeExperiencesFailureTracking() + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t GenerativeExperiencesFailureTracking.hash(into:)()
{
  v1 = (v0 + *(type metadata accessor for GenerativeExperiencesFailureTracking() + 28));
  if (!v1[1])
  {
    return sub_19393CAD0();
  }

  v2 = *v1;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19365790C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB9A8);
  __swift_project_value_buffer(v0, qword_1EAEAB9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "useCaseIdentifier";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_19393C410();
}

uint64_t sub_193657A78()
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for GenerativeExperiencesFailureTracking() + 28);
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193657B08()
{
  result = type metadata accessor for GenerativeExperiencesFailureTracking();
  v2 = (v0 + *(result + 28));
  if (v2[1])
  {
    v3 = *v2;
    return sub_19393C3C0();
  }

  return result;
}

uint64_t sub_193657B80()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FA38;

  return v0;
}

uint64_t sub_193657BC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE76C40 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAB9A8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_193657C90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_19393BE00();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t type metadata accessor for GenerativeExperiencesFailureTracking()
{
  result = qword_1ED50D870;
  if (!qword_1ED50D870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesFailureTracking.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerativeExperiencesFailureTracking() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenerativeExperiencesFailureTracking.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativeExperiencesFailureTracking() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativeExperiencesFailureTracking.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesFailureTracking.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193657FC4()
{
  sub_19393CAB0();
  GenerativeExperiencesFailureTracking.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193658004()
{
  result = qword_1EAE3FA48;
  if (!qword_1EAE3FA48)
  {
    type metadata accessor for GenerativeExperiencesFailureTracking();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA48);
  }

  return result;
}

void sub_193658088()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193658134();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_193658134()
{
  if (!qword_1ED508290)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED508290);
    }
  }
}

_BYTE *_s17TextUnderstandingOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s6OutputOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936582F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5112F8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5112F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Document.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_37 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5112F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA50, &qword_1939774C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Document.attribute(_:)(void (*a1)(void))
{
  result = sub_193658720(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19365875C(void (*a1)(void))
{
  result = sub_193658720(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936587C4(uint64_t a1)
{
  result = sub_1936587EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936587EC()
{
  result = qword_1ED5043C0;
  if (!qword_1ED5043C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043C0);
  }

  return result;
}

_BYTE *_s8DocumentOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingDocument.json()()
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
  v10 = type metadata accessor for TextUnderstandingDocument();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193658AB8(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE3FA58, &qword_193977540);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193658AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocument();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingDocument.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE3FA58, &qword_193977540);
  sub_19393C260();
  if (!v20)
  {
    sub_193658C4C(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193658C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocument();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingDocument.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
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
  if (*sub_19365C7B8() == v5)
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
      sub_193658C4C(v15, v39);
      v32 = type metadata accessor for TextUnderstandingDocument();
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
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingDocument.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingDocument();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193658AB8(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE3FA58, &qword_193977540);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3FA58, &qword_193977540);
  return v15;
}

id static TextUnderstandingDocument.columns.getter()
{
  v398 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v11, v12, v13, v14, v15, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_31_29();
  OUTLINED_FUNCTION_25_28();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v35, v36, v37, v38, v39, 0, 1);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v40 = swift_initStackObject();
  v48 = OUTLINED_FUNCTION_2_4(v40, v41, v42, v43, v44, v45, v46, v47, v384);
  OUTLINED_FUNCTION_5_10(v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v57 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v57);
  v58 = OUTLINED_FUNCTION_23_30();
  result = OUTLINED_FUNCTION_3_5(v58, 0xE800000000000000);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v59 = swift_initStackObject();
  v67 = OUTLINED_FUNCTION_2_4(v59, v60, v61, v62, v63, v64, v65, v66, v385);
  OUTLINED_FUNCTION_5_10(v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v76 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v76);
  OUTLINED_FUNCTION_20_35();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v77, v78, v79, v80, v81, 0, 0);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v82 = swift_initStackObject();
  v90 = OUTLINED_FUNCTION_2_4(v82, v83, v84, v85, v86, v87, v88, v89, v386);
  OUTLINED_FUNCTION_5_10(v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v99 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v99);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v100, v101, v102, v103, v104, 3, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v105 = swift_initStackObject();
  v113 = OUTLINED_FUNCTION_2_4(v105, v106, v107, v108, v109, v110, v111, v112, v387);
  OUTLINED_FUNCTION_5_10(v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v122 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v122);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_30_20();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v123, v124, v125, v126, v127, 3, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v128 = swift_initStackObject();
  v136 = OUTLINED_FUNCTION_2_4(v128, v129, v130, v131, v132, v133, v134, v135, v388);
  OUTLINED_FUNCTION_5_10(v136, v137, v138, v139, v140, v141, v142, v143, v144);
  v145 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v145);
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v146, v147, v148, v149, v150);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_2(result);
  v151 = swift_initStackObject();
  v159 = OUTLINED_FUNCTION_2_4(v151, v152, v153, v154, v155, v156, v157, v158, v389);
  OUTLINED_FUNCTION_5_10(v159, v160, v161, v162, v163, v164, v165, v166, v167);
  v168 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v168);
  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v169, v170, v171, v172, v173);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_7_2(result);
  v174 = swift_initStackObject();
  v182 = OUTLINED_FUNCTION_2_4(v174, v175, v176, v177, v178, v179, v180, v181, v390);
  OUTLINED_FUNCTION_5_10(v182, v183, v184, v185, v186, v187, v188, v189, v190);
  v191 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v191);
  OUTLINED_FUNCTION_24_29();
  OUTLINED_FUNCTION_142();
  result = OUTLINED_FUNCTION_3_5(v192, v193);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_2(result);
  v194 = swift_initStackObject();
  v202 = OUTLINED_FUNCTION_2_4(v194, v195, v196, v197, v198, v199, v200, v201, v391);
  OUTLINED_FUNCTION_5_10(v202, v203, v204, v205, v206, v207, v208, v209, v210);
  v211 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v211);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_142();
  result = OUTLINED_FUNCTION_3_5(v212, v213);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_7_2(result);
  v214 = swift_initStackObject();
  v222 = OUTLINED_FUNCTION_2_4(v214, v215, v216, v217, v218, v219, v220, v221, v392);
  OUTLINED_FUNCTION_5_10(v222, v223, v224, v225, v226, v227, v228, v229, v230);
  v231 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v231);
  v232 = OUTLINED_FUNCTION_21_31();
  result = OUTLINED_FUNCTION_3_5(v232, 0xE700000000000000);
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_7_2(result);
  v233 = swift_initStackObject();
  v241 = OUTLINED_FUNCTION_2_4(v233, v234, v235, v236, v237, v238, v239, v240, v393);
  OUTLINED_FUNCTION_5_10(v241, v242, v243, v244, v245, v246, v247, v248, v249);
  v250 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v250);
  OUTLINED_FUNCTION_19_39();
  OUTLINED_FUNCTION_17_31();
  result = OUTLINED_FUNCTION_3_5(v251, v252);
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_2(result);
  v253 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v253, v254, v255, v256, v257, v258, v259, v260, v261);
  v262 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v262, v263, v264, v265, v266, v267, v268, v269, v270);
  v271 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v271);
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v272, v273, v274, v275, v276);
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_7_2(result);
  v277 = swift_initStackObject();
  v285 = OUTLINED_FUNCTION_2_4(v277, v278, v279, v280, v281, v282, v283, v284, v394);
  OUTLINED_FUNCTION_5_10(v285, v286, v287, v288, v289, v290, v291, v292, v293);
  v294 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v294);
  result = OUTLINED_FUNCTION_3_5(0x64497473696CLL, 0xE600000000000000);
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_7_2(result);
  v295 = swift_initStackObject();
  v303 = OUTLINED_FUNCTION_2_4(v295, v296, v297, v298, v299, v300, v301, v302, v395);
  OUTLINED_FUNCTION_5_10(v303, v304, v305, v306, v307, v308, v309, v310, v311);
  v312 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v312);
  v313 = OUTLINED_FUNCTION_28_20();
  result = OUTLINED_FUNCTION_3_5(v313, 0xE700000000000000);
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_7_2(result);
  v314 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v314, v315, v316, v317, v318, v319, v320, v321, v322);
  v323 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v323, v324, v325, v326, v327, v328, v329, v330, v331);
  v332 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v332);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000014, 0x8000000193A2B550);
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_7_2(result);
  v333 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v333, v334, v335, v336, v337, v338, v339, v340, v341);
  v342 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v342, v343, v344, v345, v346, v347, v348, v349, v350);
  v351 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v351);
  v352 = OUTLINED_FUNCTION_18_31();
  result = OUTLINED_FUNCTION_3_5(v352, v353);
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_7_2(result);
  v354 = swift_initStackObject();
  v362 = OUTLINED_FUNCTION_2_4(v354, v355, v356, v357, v358, v359, v360, v361, v396);
  OUTLINED_FUNCTION_5_10(v362, v363, v364, v365, v366, v367, v368, v369, v370);
  v371 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v371);
  v372 = OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_3_5(v372 & 0xFFFFFFFFFFFFLL | 0x5474000000000000, 0xEB00000000657079);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_7_2(result);
  v373 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v373, v374, v375, v376, v377, v378, v379, v380, v381);
  v382 = OUTLINED_FUNCTION_6_4();
  *(v382 + 16) = v397;
  *(v382 + 32) = sub_19393C850();
  v383 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_35_25(0xD000000000000011, 0x8000000193A2B590, 0, 0, v382);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v398;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1936597A0()
{
  OUTLINED_FUNCTION_26();
  v81 = v0;
  v82 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v5 == 0x696669746E656469 && v3 == 0xEB00000000737265;
  if (v19 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
  {
    v20 = *(type metadata accessor for TextUnderstandingDocument() + 28);
    memcpy(v84, (v81 + v20), sizeof(v84));
    memcpy(v83, (v81 + v20), sizeof(v83));
    sub_19365A03C(v84, v85);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, v82);
    memcpy(v85, v83, 0x60uLL);
    sub_19365A098(v85);
    goto LABEL_14;
  }

  v22 = v5 == OUTLINED_FUNCTION_32_5() && v3 == v21;
  if (v22 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
  {
    v23 = v81 + *(type metadata accessor for TextUnderstandingDocument() + 32);
LABEL_13:
    sub_1934948FC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_28();
  v25 = v5 == OUTLINED_FUNCTION_31_29() && v3 == v24;
  if (!v25 && (OUTLINED_FUNCTION_6_46() & 1) == 0)
  {
    v28 = v5 == OUTLINED_FUNCTION_23_30() && v3 == 0xE800000000000000;
    if (v28 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 40);
      goto LABEL_29;
    }

    v32 = v5 == OUTLINED_FUNCTION_20_35() && v3 == 0xE900000000000065;
    if (v32 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v33 = v81 + *(type metadata accessor for TextUnderstandingDocument() + 44);
      if ((*(v33 + 8) & 1) == 0)
      {
        v85[0] = *v33;
        goto LABEL_13;
      }

      goto LABEL_45;
    }

    v34 = v5 == 0x6874676E656CLL && v3 == 0xE600000000000000;
    if (v34 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v35 = *(type metadata accessor for TextUnderstandingDocument() + 48);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_30_20();
    v39 = v5 == OUTLINED_FUNCTION_16_27() && v3 == v38;
    if (v39 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v35 = *(type metadata accessor for TextUnderstandingDocument() + 52);
LABEL_44:
      v36 = v81 + v35;
      if ((*(v36 + 8) & 1) == 0)
      {
        v85[0] = *v36;
        goto LABEL_13;
      }

      goto LABEL_45;
    }

    OUTLINED_FUNCTION_27_23();
    v41 = v5 == OUTLINED_FUNCTION_29_21() && v3 == v40;
    if (v41 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v42 = *(type metadata accessor for TextUnderstandingDocument() + 56);
LABEL_59:
      v43 = *(v81 + v42);
      goto LABEL_60;
    }

    v45 = v5 == OUTLINED_FUNCTION_26_21() && v3 == v44;
    if (v45 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v42 = *(type metadata accessor for TextUnderstandingDocument() + 60);
      goto LABEL_59;
    }

    v46 = v5 == OUTLINED_FUNCTION_24_29() && v3 == 0xE900000000000064;
    if (v46 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_6_46() & 1) != 0))
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 64);
      goto LABEL_29;
    }

    v47 = v5 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x4974000000000000) && v3 == 0xE900000000000064;
    if (v47 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_6_46() & 1) != 0))
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 68);
      goto LABEL_29;
    }

    v48 = v5 == OUTLINED_FUNCTION_21_31() && v3 == 0xE700000000000000;
    if (v48 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 72);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_17_31();
    v50 = v5 == OUTLINED_FUNCTION_19_39() && v3 == v49;
    if (v50 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 76);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_38();
    v52 = v5 == 0xD000000000000012 && v51 == v3;
    if (v52 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v53 = *(type metadata accessor for TextUnderstandingDocument() + 80);
LABEL_97:
      v85[0] = *(v81 + v53);
      v54 = &qword_1EAE3ABB0;
      v55 = &qword_193950BB8;
LABEL_98:
      __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_38();
    v57 = v5 == 0xD000000000000015 && v56 == v3;
    if (v57 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v58 = *(type metadata accessor for TextUnderstandingDocument() + 84);
LABEL_105:
      v59 = *(v81 + v58);
      if (v59 == 2)
      {
        goto LABEL_45;
      }

      v43 = v59 & 1;
LABEL_60:
      LOBYTE(v85[0]) = v43;
      goto LABEL_13;
    }

    v60 = v5 == 0x64497473696CLL && v3 == 0xE600000000000000;
    if (v60 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 88);
      goto LABEL_29;
    }

    v61 = v5 == OUTLINED_FUNCTION_28_20() && v3 == 0xE700000000000000;
    if (v61 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 92);
      goto LABEL_29;
    }

    v62 = v5 == 0x73726F68747561 && v3 == 0xE700000000000000;
    if (v62 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v63 = *(type metadata accessor for TextUnderstandingDocument() + 96);
      goto LABEL_131;
    }

    v64 = v5 == 0x6E65697069636572 && v3 == 0xEA00000000007374;
    if (v64 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v63 = *(type metadata accessor for TextUnderstandingDocument() + 100);
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_38();
    v66 = v5 == 0xD000000000000014 && v65 == v3;
    if (v66 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
    {
      v29 = *(type metadata accessor for TextUnderstandingDocument() + 104);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v68 = v5 == 0xD000000000000015 && v67 == v3;
      if (v68 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
      {
        v29 = *(type metadata accessor for TextUnderstandingDocument() + 108);
      }

      else
      {
        v70 = v5 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x5474000000000000) && v3 == v69;
        if (!v70 && (OUTLINED_FUNCTION_6_46() & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v72 = v5 == 0xD000000000000011 && v71 == v3;
          if (v72 || (OUTLINED_FUNCTION_6_46() & 1) != 0)
          {
            v58 = *(type metadata accessor for TextUnderstandingDocument() + 116);
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_38();
          v74 = v5 == 0xD000000000000011 && v73 == v3;
          if (!v74 && (OUTLINED_FUNCTION_6_46() & 1) == 0)
          {
            v76 = v5 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x4874000000000000) && v3 == v75;
            if (!v76 && (OUTLINED_FUNCTION_6_46() & 1) == 0)
            {
              sub_19349AB64();
              swift_allocError();
              v78 = v77;
              *v77 = v5;
              v77[1] = v3;
              v77[5] = type metadata accessor for TextUnderstandingDocument();
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v78 + 2);
              sub_193658AB8(v81, boxed_opaque_existential_1Tm);
              *(v78 + 48) = 1;
              swift_willThrow();

              goto LABEL_14;
            }

            v53 = *(type metadata accessor for TextUnderstandingDocument() + 124);
            goto LABEL_97;
          }

          v63 = *(type metadata accessor for TextUnderstandingDocument() + 120);
LABEL_131:
          v85[0] = *(v81 + v63);
          v54 = &unk_1EAE3FA60;
          v55 = &unk_193977548;
          goto LABEL_98;
        }

        v29 = *(type metadata accessor for TextUnderstandingDocument() + 112);
      }
    }

LABEL_29:
    v30 = (v81 + v29);
    v31 = *(v81 + v29 + 8);
    if (v31)
    {
      v85[0] = *v30;
      v85[1] = v31;
      goto LABEL_13;
    }

LABEL_45:
    v37 = v82;
    *v82 = 0u;
    *(v37 + 1) = 0u;
    goto LABEL_14;
  }

  v26 = type metadata accessor for TextUnderstandingDocument();
  sub_1934DE90C(v81 + *(v26 + 36), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
    v27 = v82;
    *v82 = 0u;
    *(v27 + 1) = 0u;
  }

  else
  {
    (*(v13 + 32))(v18, v9, v10);
    sub_1934948FC();
    (*(v13 + 8))(v18, v10);
  }

LABEL_14:
  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingDocument.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingDocument();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[9];
  sub_19349C79C();
  v23 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v21 = a1 + v2[11];
  j__OUTLINED_FUNCTION_8_11();
  v20 = a1 + v2[12];
  j__OUTLINED_FUNCTION_8_11();
  v16 = a1 + v2[13];
  j__OUTLINED_FUNCTION_8_11();
  v17 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v24 = v2[21];
  OUTLINED_FUNCTION_7_9();
  v22 = (a1 + v2[22]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[23]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[26]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[27]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[28]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = v2[29];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19365C7B8();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  v8 = a1 + v2[8];
  sub_19393BDC0();
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v7);

  *v23 = 0;
  v23[1] = 0;
  *v21 = 0;
  v21[8] = 1;
  *v20 = 0;
  v20[8] = 1;
  *v16 = 0;
  v16[8] = 1;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *v17 = 0;
  v17[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0;
  v6[1] = 0;

  v10 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[20]) = MEMORY[0x1E69E7CC0];
  *(a1 + v24) = 2;
  *v22 = 0;
  v22[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v2[24]) = v10;
  *(a1 + v2[25]) = v10;
  *v18 = 0;
  v18[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v11) = 2;
  *(a1 + v2[30]) = v10;
  *(a1 + v2[31]) = v10;
  return result;
}

uint64_t static TextUnderstandingDocument.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v130 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v130 - v17;
  v19 = type metadata accessor for TextUnderstandingDocument();
  v20 = v19[7];
  memcpy(v137, (a1 + v20), sizeof(v137));
  memcpy(v136, (a1 + v20), sizeof(v136));
  v21 = v19[7];
  memcpy(v138, (a2 + v21), sizeof(v138));
  memcpy(v135, (a2 + v21), sizeof(v135));
  sub_19365A03C(v137, __dst);
  sub_19365A03C(v138, __dst);
  sub_19365AB48();
  LOBYTE(v21) = sub_19393C550();
  memcpy(v139, v135, sizeof(v139));
  sub_19365A098(v139);
  memcpy(__dst, v136, 0x60uLL);
  sub_19365A098(__dst);
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  v132 = v7;
  v22 = v19[8];
  sub_1934DF3E8(&qword_1EAE3A848);
  if ((sub_19393C550() & 1) == 0)
  {
    goto LABEL_12;
  }

  v133 = a2;
  v130 = a1;
  v131 = v19;
  v23 = v19[9];
  v24 = *(v15 + 48);
  sub_1934DE90C(a1 + v23, v18);
  v25 = v133 + v23;
  v26 = v133;
  sub_1934DE90C(v25, &v18[v24]);
  OUTLINED_FUNCTION_23_5(v18);
  if (!v27)
  {
    sub_1934DE90C(v18, v14);
    OUTLINED_FUNCTION_23_5(&v18[v24]);
    if (!v27)
    {
      v30 = v132;
      v31 = v134;
      (*(v132 + 32))(v134, &v18[v24], v4);
      v32 = sub_19393C550();
      v33 = *(v30 + 8);
      v33(v31, v4);
      v33(v14, v4);
      sub_193442B60(v18, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v32 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v132 + 8))(v14, v4);
LABEL_11:
    sub_193442B60(v18, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23_5(&v18[v24]);
  if (!v27)
  {
    goto LABEL_11;
  }

  sub_193442B60(v18, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_15:
  v34 = v130;
  v35 = v131;
  v36 = v131[10];
  OUTLINED_FUNCTION_2_53();
  if (v39)
  {
    if (!v37)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v38);
    v42 = v27 && v40 == v41;
    if (!v42 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v37)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_32(v35[11]);
  if (v46)
  {
    if (!v43)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v44 != *v45)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_7_32(v35[12]);
  if (v48)
  {
    if (!v47)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v49)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_7_32(v35[13]);
  if (v51)
  {
    if (!v50)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v52)
    {
      goto LABEL_12;
    }
  }

  if (*(v34 + v35[14]) != *(v26 + v35[14]) || *(v34 + v35[15]) != *(v26 + v35[15]))
  {
    goto LABEL_12;
  }

  v53 = v35[16];
  OUTLINED_FUNCTION_2_53();
  if (v56)
  {
    if (!v54)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v55);
    v59 = v27 && v57 == v58;
    if (!v59 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v54)
  {
    goto LABEL_12;
  }

  v60 = v35[17];
  OUTLINED_FUNCTION_2_53();
  if (v63)
  {
    if (!v61)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v62);
    v66 = v27 && v64 == v65;
    if (!v66 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v61)
  {
    goto LABEL_12;
  }

  v67 = v35[18];
  OUTLINED_FUNCTION_2_53();
  if (v70)
  {
    if (!v68)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v69);
    v73 = v27 && v71 == v72;
    if (!v73 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v68)
  {
    goto LABEL_12;
  }

  v74 = v35[19];
  OUTLINED_FUNCTION_2_53();
  if (v77)
  {
    if (!v75)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v76);
    v80 = v27 && v78 == v79;
    if (!v80 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v75)
  {
    goto LABEL_12;
  }

  v81 = OUTLINED_FUNCTION_3_50(v131[20]);
  if (sub_19344FC94(v81, v82))
  {
    OUTLINED_FUNCTION_14_37(v131[21]);
    if (v27)
    {
      if (v83 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v83 == 2 || ((v84 ^ v83) & 1) != 0)
    {
      goto LABEL_12;
    }

    v85 = v131[22];
    OUTLINED_FUNCTION_0_64(v130);
    if (v88)
    {
      if (!v86)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v87);
      v91 = v27 && v89 == v90;
      if (!v91 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v86)
    {
      goto LABEL_12;
    }

    v92 = v131[23];
    OUTLINED_FUNCTION_0_64(v130);
    if (v95)
    {
      if (!v93)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v94);
      v98 = v27 && v96 == v97;
      if (!v98 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v93)
    {
      goto LABEL_12;
    }

    v99 = OUTLINED_FUNCTION_3_50(v131[24]);
    if ((sub_19365AFC8(v99, v100) & 1) == 0)
    {
      goto LABEL_12;
    }

    v101 = OUTLINED_FUNCTION_3_50(v131[25]);
    if ((sub_19365AFC8(v101, v102) & 1) == 0)
    {
      goto LABEL_12;
    }

    v103 = v131[26];
    OUTLINED_FUNCTION_0_64(v130);
    if (v106)
    {
      if (!v104)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v105);
      v109 = v27 && v107 == v108;
      if (!v109 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v104)
    {
      goto LABEL_12;
    }

    v110 = v131[27];
    OUTLINED_FUNCTION_0_64(v130);
    if (v113)
    {
      if (!v111)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v112);
      v116 = v27 && v114 == v115;
      if (!v116 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v111)
    {
      goto LABEL_12;
    }

    v117 = v131[28];
    OUTLINED_FUNCTION_0_64(v130);
    if (v120)
    {
      if (!v118)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v119);
      v123 = v27 && v121 == v122;
      if (!v123 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v118)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_14_37(v131[29]);
    if (v27)
    {
      if (v124 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v124 == 2 || ((v125 ^ v124) & 1) != 0)
    {
      goto LABEL_12;
    }

    v126 = OUTLINED_FUNCTION_3_50(v131[30]);
    if (sub_19365AFC8(v126, v127))
    {
      v128 = OUTLINED_FUNCTION_3_50(v131[31]);
      v28 = sub_19344FC94(v128, v129);
      return v28 & 1;
    }
  }

LABEL_12:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_19365AB48()
{
  result = qword_1EAE3A850;
  if (!qword_1EAE3A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A850);
  }

  return result;
}

uint64_t TextUnderstandingDocument.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &__dst[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &__dst[-v12];
  v14 = type metadata accessor for TextUnderstandingDocument();
  memcpy(__dst, (v0 + v14[7]), sizeof(__dst));
  sub_19365B174();
  sub_19393C540();
  v15 = v14[8];
  sub_1934DF3E8(&qword_1EAE3B978);
  sub_19393C540();
  sub_1934DE90C(v1 + v14[9], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v2);
    OUTLINED_FUNCTION_103_0();
    sub_19393C540();
    (*(v5 + 8))(v9, v2);
  }

  OUTLINED_FUNCTION_5_0(v14[10]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v16);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_10_43(v14[11]);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v17;
    OUTLINED_FUNCTION_103_0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v2;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x193B18060](v19);
  }

  OUTLINED_FUNCTION_10_43(v14[12]);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v20;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  OUTLINED_FUNCTION_10_43(v14[13]);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v21;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  v22 = *(v1 + v14[14]);
  sub_19393CAD0();
  v23 = *(v1 + v14[15]);
  sub_19393CAD0();
  OUTLINED_FUNCTION_5_0(v14[16]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v24);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[17]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v25);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[18]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v26);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[19]);
  if (v2)
  {
    OUTLINED_FUNCTION_7_1(v27);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v28 = OUTLINED_FUNCTION_11_35(v14[20]);
  sub_1934D11C8(v28, v29);
  v30 = *(v1 + v14[21]);
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_5_0(v14[22]);
  if (v30)
  {
    OUTLINED_FUNCTION_7_1(v31);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[23]);
  if (v30)
  {
    OUTLINED_FUNCTION_7_1(v32);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v33 = OUTLINED_FUNCTION_11_35(v14[24]);
  sub_19365B1C8(v33, v34);
  v35 = OUTLINED_FUNCTION_11_35(v14[25]);
  sub_19365B1C8(v35, v36);
  OUTLINED_FUNCTION_5_0(v14[26]);
  if (v30)
  {
    OUTLINED_FUNCTION_7_1(v37);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[27]);
  if (v30)
  {
    OUTLINED_FUNCTION_7_1(v38);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v14[28]);
  if (v30)
  {
    OUTLINED_FUNCTION_7_1(v39);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v14[29]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v40 = OUTLINED_FUNCTION_11_35(v14[30]);
  sub_19365B1C8(v40, v41);
  v42 = OUTLINED_FUNCTION_11_35(v14[31]);
  return sub_1934D11C8(v42, v43);
}

uint64_t sub_19365AFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      sub_19365B310();
      v3 = 0;
      do
      {
        v4 = *(a1 + v3 + 40);
        v16 = *(a1 + v3 + 32);
        v17 = *(a1 + v3 + 48);
        v18 = *(a1 + v3 + 56);
        v5 = *(a1 + v3 + 64);
        v19 = *(a1 + v3 + 80);
        v10 = *(a2 + v3 + 32);
        v11 = *(a2 + v3 + 40);
        v12 = *(a2 + v3 + 48);
        v13 = *(a2 + v3 + 56);
        v14 = *(a2 + v3 + 64);
        v15 = *(a2 + v3 + 80);

        v6 = sub_19393C550();

        if ((v6 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_19365B174()
{
  result = qword_1EAE3FA68;
  if (!qword_1EAE3FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA68);
  }

  return result;
}

uint64_t sub_19365B1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_19365B2BC();
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = *(v5 + 3);
      v11 = v5[5];

      sub_19393C540();

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19365B2BC()
{
  result = qword_1EAE3FA70;
  if (!qword_1EAE3FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA70);
  }

  return result;
}

unint64_t sub_19365B310()
{
  result = qword_1EAE3FA78;
  if (!qword_1EAE3FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA78);
  }

  return result;
}

uint64_t sub_19365B364()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB9C0);
  __swift_project_value_buffer(v0, qword_1EAEAB9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1939775A0;
  v4 = v81 + v3 + v1[14];
  *(v81 + v3) = 1;
  *v4 = "identifiers";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_9_10(v6);
  v8 = *(v7 + 104);
  v8(v4, v5, v6);
  v9 = OUTLINED_FUNCTION_3_1(v81 + v3 + v2);
  *v10 = 2;
  *v9 = "receivedDate";
  v9[1] = 12;
  v11 = OUTLINED_FUNCTION_41(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v81 + v3 + 2 * v2);
  *v13 = 3;
  *v12 = "relevanceDate";
  v12[1] = 13;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v2);
  *v16 = 4;
  *v15 = "language";
  v15[1] = 8;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v81 + v3 + 4 * v2);
  *v19 = 5;
  *v18 = "dwellTime";
  v18[1] = 9;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v2);
  *v22 = 6;
  *v21 = "length";
  v21[1] = 6;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v81 + v3 + 6 * v2);
  *v25 = 7;
  *v24 = "donationCount";
  v24[1] = 13;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v2);
  *v28 = 8;
  *v27 = "isUserCreated";
  v27[1] = 13;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v81 + v3 + 8 * v2);
  *v31 = 9;
  *v30 = "hasBeenRead";
  v30[1] = 11;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v2);
  *v34 = 10;
  *v33 = "messageId";
  v33[1] = 9;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_52_0();
  *v37 = 11;
  *v36 = "accountId";
  v36[1] = 9;
  v38 = OUTLINED_FUNCTION_41(v36);
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v81 + v3 + 11 * v2);
  *v40 = 12;
  *v39 = "subject";
  v39[1] = 7;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_52_0();
  *v43 = 13;
  *v42 = "mailMessageId";
  v42[1] = 13;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v8)(v44);
  v45 = OUTLINED_FUNCTION_52_0();
  *v46 = 14;
  *v45 = "mailboxIdentifiers";
  v45[1] = 18;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v8)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v81 + v3 + 14 * v2);
  *v49 = 15;
  *v48 = "isPartiallyDownloaded";
  v48[1] = 21;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v8)(v50);
  v51 = OUTLINED_FUNCTION_44(15 * v2);
  *v52 = 16;
  *v51 = "listId";
  v51[1] = 6;
  v53 = OUTLINED_FUNCTION_41(v51);
  (v8)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v81 + v3 + 16 * v2);
  *v55 = 17;
  *v54 = "snippet";
  v54[1] = 7;
  v56 = OUTLINED_FUNCTION_41(v54);
  (v8)(v56);
  v57 = OUTLINED_FUNCTION_44(17 * v2);
  *v58 = 18;
  *v57 = "authors";
  v57[1] = 7;
  v59 = OUTLINED_FUNCTION_41(v57);
  (v8)(v59);
  v60 = OUTLINED_FUNCTION_52_0();
  *v61 = 19;
  *v60 = "recipients";
  v60[1] = 10;
  v62 = OUTLINED_FUNCTION_41(v60);
  (v8)(v62);
  v63 = OUTLINED_FUNCTION_52_0();
  *v64 = 20;
  *v63 = "suggestedContactName";
  v63[1] = 20;
  v65 = OUTLINED_FUNCTION_41(v63);
  (v8)(v65);
  v66 = OUTLINED_FUNCTION_52_0();
  *v67 = 21;
  *v66 = "suggestedContactPhoto";
  v66[1] = 21;
  v68 = OUTLINED_FUNCTION_41(v66);
  (v8)(v68);
  v69 = OUTLINED_FUNCTION_52_0();
  *v70 = 22;
  *v69 = "accountType";
  v69[1] = 11;
  v71 = OUTLINED_FUNCTION_41(v69);
  (v8)(v71);
  v72 = OUTLINED_FUNCTION_52_0();
  *v73 = 23;
  *v72 = "hasInhumanHeaders";
  v72[1] = 17;
  v74 = OUTLINED_FUNCTION_41(v72);
  (v8)(v74);
  v75 = OUTLINED_FUNCTION_52_0();
  *v76 = 24;
  *v75 = "primaryRecipients";
  v75[1] = 17;
  v77 = OUTLINED_FUNCTION_41(v75);
  (v8)(v77);
  v78 = OUTLINED_FUNCTION_52_0();
  *v79 = 25;
  *v78 = "accountHandles";
  *(v78 + 8) = 14;
  *(v78 + 16) = 2;
  (v8)();
  return sub_19393C410();
}

void sub_19365B944()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v38 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v37 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v35 = (v6 + 32);
  v36 = (v6 + 40);
  while (1)
  {
    v17 = sub_19393C0E0();
    if (v2 || (v18 & 1) != 0)
    {
      break;
    }

    switch(v17)
    {
      case 1:
        v41 = 0u;
        memset(v42, 0, sizeof(v42));
        sub_193498018();
        if (*(&v41 + 1))
        {
          memcpy(&v39[1], v42, 0x50uLL);
          v39[0] = v41;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v39);
        }

        v32 = *(type metadata accessor for TextUnderstandingDocument() + 28);
        memcpy(v40, (v3 + v32), sizeof(v40));
        sub_19365A098(v40);
        memcpy((v3 + v32), v39, 0x60uLL);
        continue;
      case 2:
        v26 = v38;
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v38);
        OUTLINED_FUNCTION_15_38();
        v2 = 0;
        v33 = v3;
        sub_1934DE90C(v16, v43);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v26);
        v34 = v16;
        if (EnumTagSinglePayload == 1)
        {
          v28 = v37;
          sub_19393BDC0();
          sub_19344E680(v16, &qword_1EAE3A9E8, &qword_19394F800);
          if (__swift_getEnumTagSinglePayload(v43, 1, v26) != 1)
          {
            sub_19344E680(v43, &qword_1EAE3A9E8, &qword_19394F800);
          }
        }

        else
        {
          sub_19344E680(v16, &qword_1EAE3A9E8, &qword_19394F800);
          v28 = v37;
          (*v35)(v37, v43, v26);
        }

        v31 = type metadata accessor for TextUnderstandingDocument();
        v3 = v33;
        (*v36)(v33 + *(v31 + 32), v28, v26);
        v16 = v34;
        continue;
      case 3:
        v23 = *(type metadata accessor for TextUnderstandingDocument() + 36);
        OUTLINED_FUNCTION_15_38();
        goto LABEL_39;
      case 4:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 40);
        goto LABEL_36;
      case 5:
        v21 = type metadata accessor for TextUnderstandingDocument();
        OUTLINED_FUNCTION_4_48(*(v21 + 44));
        sub_19393C1E0();
        goto LABEL_39;
      case 6:
        v30 = *(type metadata accessor for TextUnderstandingDocument() + 48);
        goto LABEL_28;
      case 7:
        v30 = *(type metadata accessor for TextUnderstandingDocument() + 52);
LABEL_28:
        OUTLINED_FUNCTION_4_48(v30);
        sub_19393C190();
        goto LABEL_39;
      case 8:
        OUTLINED_FUNCTION_12_31();
        v2 = 0;
        v24 = v41;
        v25 = *(type metadata accessor for TextUnderstandingDocument() + 56);
        goto LABEL_32;
      case 9:
        OUTLINED_FUNCTION_12_31();
        v2 = 0;
        v24 = v41;
        v25 = *(type metadata accessor for TextUnderstandingDocument() + 60);
LABEL_32:
        *(v3 + v25) = v24 & 1;
        continue;
      case 10:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 64);
        goto LABEL_36;
      case 11:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 68);
        goto LABEL_36;
      case 12:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 72);
        goto LABEL_36;
      case 13:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 76);
        goto LABEL_36;
      case 14:
        v22 = *(type metadata accessor for TextUnderstandingDocument() + 80);
        goto LABEL_26;
      case 15:
        v20 = *(type metadata accessor for TextUnderstandingDocument() + 84);
        goto LABEL_34;
      case 16:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 88);
        goto LABEL_36;
      case 17:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 92);
        goto LABEL_36;
      case 18:
        v29 = *(type metadata accessor for TextUnderstandingDocument() + 96);
        goto LABEL_38;
      case 19:
        v29 = *(type metadata accessor for TextUnderstandingDocument() + 100);
        goto LABEL_38;
      case 20:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 104);
        goto LABEL_36;
      case 21:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 108);
        goto LABEL_36;
      case 22:
        v19 = *(type metadata accessor for TextUnderstandingDocument() + 112);
LABEL_36:
        OUTLINED_FUNCTION_4_48(v19);
        sub_19393C200();
        goto LABEL_39;
      case 23:
        v20 = *(type metadata accessor for TextUnderstandingDocument() + 116);
LABEL_34:
        OUTLINED_FUNCTION_4_48(v20);
        sub_19393C0F0();
        goto LABEL_39;
      case 24:
        v29 = *(type metadata accessor for TextUnderstandingDocument() + 120);
LABEL_38:
        sub_193498238(v3 + v29);
        goto LABEL_39;
      case 25:
        v22 = *(type metadata accessor for TextUnderstandingDocument() + 124);
LABEL_26:
        OUTLINED_FUNCTION_4_48(v22);
        sub_19393C1B0();
LABEL_39:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19365BECC()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingDocument();
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v75, (v0 + v4), sizeof(v75));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v77, __src, sizeof(v77));
  sub_19365A098(v77);
  memcpy(v78, v75, sizeof(v78));
  sub_19365A098(v78);
  if (v5)
  {
    if (v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    memcpy(v75, (v2 + v4), sizeof(v75));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v75, v73);
    OUTLINED_FUNCTION_23_3();
    sub_193447600();
    if (v1)
    {
      memcpy(v73, __src, sizeof(v73));
      sub_19365A098(v73);
      goto LABEL_8;
    }

    memcpy(v73, __src, sizeof(v73));
    sub_19365A098(v73);
  }

  OUTLINED_FUNCTION_13_35();
  sub_19365C38C();
  v6 = OUTLINED_FUNCTION_13_35();
  sub_19365C4B0(v6, v7, v8, v9, v10, v11, v12, v13, v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11]);
  OUTLINED_FUNCTION_5_20(v3[10]);
  if (v15)
  {
    v16 = *v14;
    OUTLINED_FUNCTION_4_7();
  }

  v17 = (v2 + v3[11]);
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    sub_19393C3B0();
  }

  v19 = (v2 + v3[12]);
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    OUTLINED_FUNCTION_1_54();
    sub_19393C360();
  }

  v21 = (v2 + v3[13]);
  if ((v21[1] & 1) == 0)
  {
    v22 = *v21;
    OUTLINED_FUNCTION_1_54();
    sub_19393C360();
  }

  if (*(v2 + v3[14]) == 1)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  if (*(v2 + v3[15]) == 1)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_5_20(v3[16]);
  if (v24)
  {
    v25 = *v23;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[17]);
  if (v27)
  {
    v28 = *v26;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[18]);
  if (v30)
  {
    v31 = *v29;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[19]);
  if (v33)
  {
    v34 = *v32;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_14_38(v3[20]);
  if (v35)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C380();
  }

  if (*(v2 + v3[21]) != 2)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_5_20(v3[22]);
  if (v37)
  {
    v38 = *v36;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[23]);
  if (v40)
  {
    v41 = *v39;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_14_38(v3[24]);
  if (v42)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v43, v44, v45, v46, v47, v48);
  }

  OUTLINED_FUNCTION_14_38(v3[25]);
  if (v49)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v50, v51, v52, v53, v54, v55);
  }

  OUTLINED_FUNCTION_5_20(v3[26]);
  if (v57)
  {
    v58 = *v56;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[27]);
  if (v60)
  {
    v61 = *v59;
    OUTLINED_FUNCTION_4_7();
  }

  OUTLINED_FUNCTION_5_20(v3[28]);
  if (v63)
  {
    v64 = *v62;
    OUTLINED_FUNCTION_4_7();
  }

  if (*(v2 + v3[29]) != 2)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_14_38(v3[30]);
  if (v65)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v66, v67, v68, v69, v70, v71);
  }

  OUTLINED_FUNCTION_14_38(v3[31]);
  if (v72)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C380();
  }

LABEL_8:
  OUTLINED_FUNCTION_27();
}

void sub_19365C38C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for TextUnderstandingDocument() + 32);
  sub_19393BDC0();
  sub_19365C760();
  v12 = sub_19393C550();
  (*(v5 + 8))(v10, v2);
  if ((v12 & 1) == 0)
  {
    sub_193451F04(v1 + v11, 2, 26211, 0xE200000000000000);
  }

  OUTLINED_FUNCTION_27();
}

void sub_19365C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &a9 - v26;
  v28 = sub_19393BE00();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v36 = v35 - v34;
  v37 = type metadata accessor for TextUnderstandingDocument();
  sub_1934DE90C(v23 + *(v37 + 36), v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_19344E680(v27, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v31 + 32))(v36, v27, v28);
    sub_193451F04(v36, 3, 26211, 0xE200000000000000);
    (*(v31 + 8))(v36, v28);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19365C654()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE3FA80;

  return v0;
}

uint64_t sub_19365C698@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE76D50 != -1)
  {
    OUTLINED_FUNCTION_5_50();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAB9C0);
  OUTLINED_FUNCTION_9_10(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_19365C760()
{
  result = qword_1EAE3A848;
  if (!qword_1EAE3A848)
  {
    sub_19393BE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A848);
  }

  return result;
}

uint64_t TextUnderstandingDocument.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocument();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingDocument()
{
  result = qword_1ED50D190;
  if (!qword_1ED50D190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingDocument.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocument();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingDocument.identifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingDocument() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingDocument.identifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingDocument.receivedDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingDocument() + 32);
  v3 = sub_19393BE00();
  v4 = *(*(v3 - 8) + 16);

  return v4(v0, v1 + v2, v3);
}

uint64_t TextUnderstandingDocument.receivedDate.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 32);
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_7_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t TextUnderstandingDocument.relevanceDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingDocument();
  return sub_19344865C(v1 + *(v2 + 36), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t TextUnderstandingDocument.language.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.language.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.isUserCreated.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hasBeenRead.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.messageId.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 64));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.messageId.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountId.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.accountId.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.subject.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 72));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.subject.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.mailMessageId.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 76));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.mailMessageId.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.mailboxIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocument() + 80));
}

uint64_t TextUnderstandingDocument.mailboxIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 80);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.isPartiallyDownloaded.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.listId.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 88));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.listId.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 88));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.snippet.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 92));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.snippet.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 92));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.authors.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocument() + 96));
}

uint64_t TextUnderstandingDocument.authors.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 96);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.recipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocument() + 100));
}

uint64_t TextUnderstandingDocument.recipients.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 100);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.suggestedContactName.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 104));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.suggestedContactName.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 104));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.suggestedContactPhoto.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 108));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.suggestedContactPhoto.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 108));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountType.getter()
{
  v0 = type metadata accessor for TextUnderstandingDocument();
  OUTLINED_FUNCTION_4_4(*(v0 + 112));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.accountType.setter()
{
  v3 = OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201(*(v3 + 112));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hasInhumanHeaders.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.primaryRecipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocument() + 120));
}

uint64_t TextUnderstandingDocument.primaryRecipients.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 120);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextUnderstandingDocument() + 124));
}

uint64_t TextUnderstandingDocument.accountHandles.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 124);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocument.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19365DA08()
{
  sub_19393CAB0();
  TextUnderstandingDocument.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19365DA48()
{
  result = qword_1EAE3FA98;
  if (!qword_1EAE3FA98)
  {
    type metadata accessor for TextUnderstandingDocument();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA98);
  }

  return result;
}

uint64_t sub_19365DACC()
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

    v3 = sub_19393BE00();
    if (v5 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_0_65(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
    v1 = v6;
    if (v7 > 0x3F)
    {
      return v1;
    }

    OUTLINED_FUNCTION_0_65(v6, &qword_1ED506690, MEMORY[0x1E69E63B0]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_0_65(v3, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_7_33(v3, qword_1ED507ED8, MEMORY[0x1E69E6158]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    OUTLINED_FUNCTION_0_65(v10, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v13 > 0x3F)
    {
      return v12;
    }

    OUTLINED_FUNCTION_7_33(v12, qword_1ED502EA0, &type metadata for TextUnderstandingPersonHandles);
    if (v14 > 0x3F)
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

void sub_19365DCD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_19365DD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v10 = *(&__dst[0] + 1);
    v9 = *&__dst[0];
LABEL_7:
    *&v19[0] = v9;
    *(&v19[0] + 1) = v10;
    return sub_1934948FC();
  }

  result = 0x64496E69616D6F64;
  v12 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_0_66(), (result & 1) != 0))
  {
    if (*(&__dst[1] + 1))
    {
      v19[0] = __dst[1];
      return sub_1934948FC();
    }

LABEL_35:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v13 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    v10 = *(&__dst[2] + 1);
    v9 = *&__dst[2];
    goto LABEL_7;
  }

  v14 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    *&v19[0] = *&__dst[3];
    BYTE8(v19[0]) = BYTE8(__dst[3]);
    return sub_1934948FC();
  }

  result = 0x654D746E65696C63;
  v15 = a1 == 0x654D746E65696C63 && a2 == 0xEE00617461646174;
  if (v15 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (*(&__dst[4] + 1))
    {
      v19[0] = __dst[4];
      v19[1] = __dst[5];
      return sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata, &off_1F07DB1D0, a3);
    }

    goto LABEL_35;
  }

  sub_19349AB64();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for TextUnderstandingDocumentIdentifiers;
  v18 = swift_allocObject();
  v17[2] = v18;
  memcpy((v18 + 16), __dst, 0x60uLL);
  *(v17 + 48) = 1;
  swift_willThrow();

  return sub_19365A03C(__dst, v19);
}