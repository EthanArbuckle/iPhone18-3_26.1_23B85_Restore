uint64_t WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  sub_19393C640();
  sub_19393CAD0();
  if (v6)
  {
    sub_19393C640();
  }

  sub_1936010D8(a1, v8);
  if (!v9)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

void WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_51_15();
  a27 = v29;
  a28 = v30;
  v31 = *v28;
  v32 = v28[1];
  v33 = v28[2];
  v34 = v28[3];
  v36 = v28[4];
  v35 = v28[5];
  v37 = v28[6];
  OUTLINED_FUNCTION_119();
  sub_19393C640();
  sub_19393CAD0();
  if (v34)
  {
    sub_19393C640();
  }

  sub_1936010D8(&a10, v36);
  sub_19393CAD0();
  if (v37)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  sub_19393CB00();
  OUTLINED_FUNCTION_50_14();
}

uint64_t sub_1936009D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  v7 = *(v0 + 40);
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.hash(into:)(v4);
  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceClassicOrder.Transaction.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_20(a1);
  v4 = v3[2];
  v5 = v3[3];
  v30 = v3[5];
  v6 = v3[7];
  v27 = v3[6];
  v28 = v3[4];
  v7 = v3[8];
  v8 = v3[10];
  v22 = v3[12];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[5];
  v25 = v2[4];
  v26 = v3[9];
  v29 = v2[7];
  v12 = v2[8];
  v23 = v2[9];
  v24 = v2[6];
  v13 = v2[10];
  v19 = v2[11];
  v20 = v3[11];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v21 = v2[12];
  if (v14 || (sub_19393CA30() & 1) != 0)
  {
    v15 = v4 == v9 && v5 == v10;
    if (v15 || (OUTLINED_FUNCTION_2_0(), (sub_19393CA30() & 1) != 0))
    {
      v32[0] = v28;
      v32[1] = v30;
      v32[2] = v27;
      v32[3] = v6;
      v32[4] = v7;
      v32[5] = v26;
      v32[6] = v8;
      v31[0] = v25;
      v31[1] = v11;
      v31[2] = v24;
      v31[3] = v29;
      v31[4] = v12;
      v31[5] = v23;
      v31[6] = v13;

      v16 = static WalletPaymentsCommerceClassicOrder.Transaction.PaymentMethod.== infix(_:_:)(v32, v31);

      if (v16)
      {
        if (v22)
        {
          if (v21)
          {
            v17 = v20 == v19 && v22 == v21;
            if (v17 || (sub_19393CA30() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v21)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void WalletPaymentsCommerceClassicOrder.Transaction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[7];
  v10 = v1[8];
  v14 = v1[6];
  v15 = v1[9];
  v11 = v1[10];
  v16 = v1[11];
  v12 = v1[12];
  sub_19393C640();
  sub_19393C640();
  sub_19393C640();
  if (v9)
  {
    OUTLINED_FUNCTION_33_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_42_22();
  }

  sub_1936010D8(a1, v10);
  if (!v11)
  {
    OUTLINED_FUNCTION_42_22();
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_42_22();
    OUTLINED_FUNCTION_107();
    return;
  }

  OUTLINED_FUNCTION_33_15();
  sub_19393C640();
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_33_15();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t sub_193600D40(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193600DA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceClassicOrder.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceClassicOrder.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193600E28()
{
  sub_19393CAB0();
  WalletPaymentsCommerceClassicOrder.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193600E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v22 = v3;
  if (v3)
  {
    v5 = 0;
    v21 = a2 + 32;
    do
    {
      v6 = (v21 + 104 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[5];
      v27 = v6[4];
      v12 = v6[7];
      v13 = v6[8];
      v23 = v6[6];
      v24 = v6[9];
      v14 = v6[10];
      v25 = v6[11];
      v26 = v6[12];

      sub_19393C640();
      sub_19393C640();
      sub_19393C640();
      sub_19393CAD0();
      if (v12)
      {
        sub_19393C640();
      }

      MEMORY[0x193B18030](*(v13 + 16));
      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 56);
        do
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v20 = *(v16 - 1);
          v19 = *v16;

          sub_19393C640();
          sub_19393CAD0();
          if (v19)
          {
            sub_19393C640();
          }

          v16 += 4;

          --v15;
        }

        while (v15);
      }

      sub_19393CAD0();
      if (v14)
      {
        sub_19393C640();
      }

      sub_19393CAD0();
      if (v26)
      {
        sub_19393C640();
      }

      ++v5;
    }

    while (v5 != v22);
  }

  return result;
}

uint64_t sub_1936010D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;

      sub_19393C640();
      sub_19393CAD0();
      if (v8)
      {
        sub_19393C640();
      }

      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19360120C()
{
  result = qword_1EAE3EF50;
  if (!qword_1EAE3EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF50);
  }

  return result;
}

unint64_t sub_193601270()
{
  result = qword_1EAE3EF58;
  if (!qword_1EAE3EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF58);
  }

  return result;
}

unint64_t sub_1936012CC()
{
  result = qword_1EAE3EF60;
  if (!qword_1EAE3EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF60);
  }

  return result;
}

unint64_t sub_19360132C()
{
  result = qword_1EAE3EF68;
  if (!qword_1EAE3EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF68);
  }

  return result;
}

unint64_t sub_193601384()
{
  result = qword_1EAE3EF70;
  if (!qword_1EAE3EF70)
  {
    type metadata accessor for WalletPaymentsCommerceClassicOrder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EF70);
  }

  return result;
}

uint64_t sub_193601404()
{
  sub_19349D140();
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    OUTLINED_FUNCTION_2_42(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_193601568(319, qword_1ED5034E0, &type metadata for WalletPaymentsCommerceClassicOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v2 & v1))
      {
        OUTLINED_FUNCTION_2_42(v6, &qword_1ED503928, &type metadata for WalletPaymentsCommerceClassicOrder.Customer);
        OUTLINED_FUNCTION_4_0();
        if (!(!v2 & v1))
        {
          OUTLINED_FUNCTION_2_42(v7, qword_1ED503930, &type metadata for WalletPaymentsCommerceClassicOrder.Payment);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_193601568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1936015B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1936015F8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

uint64_t sub_1936016D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 72))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceClassicOrderV7AddressVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceClassicOrderV17ShippingRecipientVSg(uint64_t a1)
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

uint64_t sub_1936017A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 232))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1936017E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601860(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_52_15(a1);
      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1936018B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    result = OUTLINED_FUNCTION_53_5(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193601930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_52_15(a1);
      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_193601988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void sub_1936019F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_47_19(a1, a2);
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_35_21(v3);
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *a1 = (a2 - 1);
      return;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_193601A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 104))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_193601A94(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_47_19(a1, a2);
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_35_21(v3);
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      OUTLINED_FUNCTION_3_2(a1, a2);
      return;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_193601AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 56))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15(a1);
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193601B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_21_23(void *a1)
{

  return memcpy(a1, (v1 + 64), 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_42_22()
{

  return sub_19393CAD0();
}

void *OUTLINED_FUNCTION_48_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a71, (v71 + 72), 0x60uLL);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WalletPaymentsCommerceOrderEmail.json()()
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
  v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_0_52();
  sub_193604494(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE3EF78, &qword_1939720F8);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static WalletPaymentsCommerceOrderEmail.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v35, &qword_1EAE3EF78, &qword_1939720F8);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_0_52();
    sub_1936043DC(v34, v24, v36);
  }

  OUTLINED_FUNCTION_27();
}

void static WalletPaymentsCommerceOrderEmail.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v46 = v2;
  v47 = v1;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v44 - v25;
  if (*sub_19360AA08() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    (*(v19 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    if (v0)
    {
      v30 = *(v19 + 8);
      v31 = OUTLINED_FUNCTION_38_21();
      v32(v31);
    }

    else
    {
      v34 = *(v19 + 8);
      v35 = OUTLINED_FUNCTION_38_21();
      v36(v35);
      OUTLINED_FUNCTION_0_52();
      v37 = v46;
      sub_1936043DC(v15, v46, v38);
      v39 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
      v40 = *(v39 + 20);
      sub_19344E6DC(v37 + v40, &qword_1EAE3A9E8, &qword_19394F800);
      v41 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v41);
      (*(v42 + 16))(v37 + v40, v45, v41);
      __swift_storeEnumTagSinglePayload(v37 + v40, 0, 1, v41);
      v43 = *(v39 + 24);
      sub_19344E6DC(v37 + v43, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v47, v37 + v43);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v33 = v5;
    *(v33 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t WalletPaymentsCommerceOrderEmail.serialize()()
{
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF78, &qword_1939720F8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  OUTLINED_FUNCTION_0_52();
  sub_193604494(v0, v7, v14);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v15, &qword_1EAE3EF78, &qword_1939720F8);
  sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3EF78, &qword_1939720F8);
  return OUTLINED_FUNCTION_13_0();
}

id static WalletPaymentsCommerceOrderEmail.columns.getter()
{
  v115 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_42_23();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 4, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v17, v18, v19, v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v34);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_10_31();
  result = OUTLINED_FUNCTION_3_5(v35, v36);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v37 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v55 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v55);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_59_1();
  result = OUTLINED_FUNCTION_3_5(v56, v57);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v58 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v67 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v76 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v76);
  v77 = OUTLINED_FUNCTION_39_21();
  result = OUTLINED_FUNCTION_3_5(v77, v78);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v79 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v88 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v97 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v97);
  v98 = OUTLINED_FUNCTION_39_21();
  result = OUTLINED_FUNCTION_3_5(v98, v99);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v100 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v109 = OUTLINED_FUNCTION_6_4();
  *(v109 + 16) = xmmword_193950B10;
  *(v109 + 32) = sub_19393C850();
  v110 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v111, v112, v113, v114, v109, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v115;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_193602668()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v59 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60[-v10 - 8];
  v12 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v4 == 0x74654D6C69616D65 && v2 == 0xED00006174616461;
  if (!v19 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
  {
    v23 = v4 == OUTLINED_FUNCTION_42_23() && v2 == 0xE900000000000065;
    if (v23 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
    {
      v24 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 32);
      if (*(v24 + 9))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_10_31();
    v26 = v4 == (OUTLINED_FUNCTION_19_7() | 0x6D754E7200000000) && v2 == v25;
    if (v26 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v27 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 36);
      goto LABEL_23;
    }

    v30 = v4 == (OUTLINED_FUNCTION_19_7() | 0x7461447200000000) && v2 == 0xE900000000000065;
    if (v30 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
    {
      v27 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 40);
      goto LABEL_23;
    }

    v31 = v4 == 0x746E61686372656DLL && v2 == 0xE800000000000000;
    if (v31 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
    {
      v32 = (v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 44));
      v33 = v32[1];
      if (v33 == 1)
      {
        goto LABEL_8;
      }

      *&v61[0] = *v32;
      *(&v61[0] + 1) = v33;
      v34 = &type metadata for WalletPaymentsCommerceOrderEmail.Merchant;
      v35 = &off_1F07D7AB8;
    }

    else
    {
      v36 = v4 == 0x72656D6F74737563 && v2 == 0xE800000000000000;
      if (v36 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
      {
        v37 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        memcpy(v61, (v0 + *(v37 + 48)), 0x108uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v61) == 1)
        {
          goto LABEL_8;
        }

        memcpy(v60, v61, sizeof(v60));
        v34 = &type metadata for WalletPaymentsCommerceOrderEmail.Customer;
        v35 = &off_1F07D7AE8;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v39 = v4 == 0xD000000000000011 && v38 == v2;
        if (v39 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
        {
          v40 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
          memcpy(v61, (v0 + *(v40 + 52)), 0x108uLL);
          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v61) == 1)
          {
            goto LABEL_8;
          }

          memcpy(v60, v61, sizeof(v60));
          v34 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingRecipient;
          v35 = &off_1F07D7AD8;
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v42 = v4 == 0xD000000000000013 && v41 == v2;
          if (v42 || (OUTLINED_FUNCTION_24_5() & 1) != 0)
          {
            v43 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
            memcpy(v61, (v0 + *(v43 + 56)), 0xC0uLL);
            if (sub_1936043B8(v61) == 1)
            {
              goto LABEL_8;
            }

            memcpy(v60, v61, 0xC0uLL);
            v34 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation;
            v35 = &off_1F07D7AC8;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v45 = v4 == 0xD000000000000012 && v44 == v2;
            if (!v45 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
            {
              OUTLINED_FUNCTION_38();
              v50 = v4 == 0xD000000000000019 && v49 == v2;
              if (v50 || (OUTLINED_FUNCTION_39_21(), (OUTLINED_FUNCTION_24_5() & 1) != 0))
              {
                v27 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 64);
              }

              else
              {
                OUTLINED_FUNCTION_38();
                if (v4 != 0xD000000000000019 || v51 != v2)
                {
                  OUTLINED_FUNCTION_39_21();
                  if ((OUTLINED_FUNCTION_24_5() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    v54 = v4 == 0xD000000000000010 && v53 == v2;
                    if (!v54 && (OUTLINED_FUNCTION_24_5() & 1) == 0)
                    {
                      sub_19349AB64();
                      OUTLINED_FUNCTION_11();
                      swift_allocError();
                      v56 = v55;
                      *v55 = v4;
                      v55[1] = v2;
                      v55[5] = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
                      __swift_allocate_boxed_opaque_existential_1Tm(v56 + 2);
                      OUTLINED_FUNCTION_0_52();
                      sub_193604494(v0, v57, v58);
                      *(v56 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_26;
                    }

                    v24 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 72);
                    if (*(v24 + 9))
                    {
                      goto LABEL_8;
                    }

LABEL_16:
                    OUTLINED_FUNCTION_29_18(v24);
                    goto LABEL_25;
                  }
                }

                v27 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 68);
              }

LABEL_23:
              v28 = (v0 + v27);
              v29 = *(v0 + v27 + 8);
              if (!v29)
              {
                goto LABEL_8;
              }

              *&v61[0] = *v28;
              *(&v61[0] + 1) = v29;
LABEL_25:
              sub_1934948FC();
              goto LABEL_26;
            }

            v46 = v0 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 60);
            v47 = *(v46 + 8);
            if (v47 == 1)
            {
              goto LABEL_8;
            }

            *&v61[0] = *v46;
            *(&v61[0] + 1) = v47;
            v48 = *(v46 + 32);
            v61[1] = *(v46 + 16);
            v61[2] = v48;
            v61[3] = *(v46 + 48);
            LOBYTE(v61[4]) = *(v46 + 64);
            v34 = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation;
            v35 = &off_1F07D7B08;
          }
        }
      }
    }

    sub_193494798(v34, v35, v59);
    goto LABEL_26;
  }

  v20 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  sub_193448758(v0 + *(v20 + 28), v11, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    OUTLINED_FUNCTION_15_32();
    sub_1936043DC(v11, v18, v22);
    sub_193494798(v12, &off_1F07D7AA8, v59);
    sub_193604438(v18);
    goto LABEL_26;
  }

  sub_19344E6DC(v11, &qword_1EAE3EF88, &qword_193972100);
LABEL_8:
  v21 = v59;
  *v59 = 0u;
  *(v21 + 1) = 0u;
LABEL_26:
  OUTLINED_FUNCTION_27();
}

void sub_193602C70()
{
  OUTLINED_FUNCTION_26();
  v75 = v1;
  v76 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v71 - v10;
  v73 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_0(v73);
  v71 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71 - v22;
  v24 = sub_19393BE00();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  v74 = v5;
  v33 = v5 == 0x496567617373656DLL && v3 == 0xE900000000000044;
  if (v33 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
  {
    v34 = v76;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_2();
  v36 = v33 && v3 == 0xE800000000000000;
  if (v36 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
  {
    v37 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
    sub_193448758(v76 + *(v37 + 20), v23, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      (*(v27 + 32))(v32, v23, v24);
      OUTLINED_FUNCTION_38_21();
      sub_1934948FC();
      v42 = *(v27 + 8);
      v43 = OUTLINED_FUNCTION_38_21();
      v44(v43);
      goto LABEL_18;
    }

    v38 = &qword_1EAE3A9E8;
    v39 = &qword_19394F800;
    v40 = v23;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_2();
  v45 = v33 && v3 == 0xE700000000000000;
  if (v45 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
  {
    v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 24);
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v48 = v33 && v3 == v47;
    if (v48 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
    {
      v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 28);
    }

    else
    {
      OUTLINED_FUNCTION_16_2();
      v50 = v33 && v3 == v49;
      if (v50 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
      {
        v51 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        v52 = v72;
        sub_193448758(v76 + *(v51 + 32), v72, &qword_1EAE3ACA0, &qword_193972420);
        v53 = v73;
        if (__swift_getEnumTagSinglePayload(v52, 1, v73) != 1)
        {
          v54 = v71;
          (*(v71 + 32))(v17, v52, v53);
          sub_1934948FC();
          (*(v54 + 8))(v17, v53);
          goto LABEL_18;
        }

        v38 = &qword_1EAE3ACA0;
        v39 = &qword_193972420;
        v40 = v52;
LABEL_16:
        sub_19344E6DC(v40, v38, v39);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_38();
      v56 = v74 == 0xD000000000000010 && v55 == v3;
      if (v56 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
      {
        v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 36);
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        v58 = v33 && v3 == v57;
        if (v58 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
        {
          v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 40);
        }

        else
        {
          OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_16_2();
          v60 = v33 && v3 == v59;
          if (v60 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
          {
            v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 44);
          }

          else
          {
            OUTLINED_FUNCTION_16_2();
            v62 = v33 && v3 == v61;
            if (v62 || (OUTLINED_FUNCTION_13_21() & 1) != 0)
            {
              v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 48);
            }

            else
            {
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_16_2();
              v64 = v33 && v63 == v3;
              if (v64 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
              {
                v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 52);
              }

              else
              {
                OUTLINED_FUNCTION_38();
                OUTLINED_FUNCTION_16_2();
                v66 = v33 && v65 == v3;
                if (!v66 && (OUTLINED_FUNCTION_31_3() & 1) == 0)
                {
                  sub_19349AB64();
                  OUTLINED_FUNCTION_11();
                  swift_allocError();
                  v68 = v67;
                  *v67 = v74;
                  v67[1] = v3;
                  v67[5] = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
                  __swift_allocate_boxed_opaque_existential_1Tm(v68 + 2);
                  OUTLINED_FUNCTION_15_32();
                  sub_193604494(v76, v69, v70);
                  *(v68 + 48) = 1;
                  swift_willThrow();

                  goto LABEL_18;
                }

                v46 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 56);
              }
            }
          }
        }
      }
    }
  }

  v34 = (v76 + v46);
LABEL_7:
  v35 = v34[1];
  if (!v35)
  {
LABEL_17:
    v41 = v75;
    *v75 = 0u;
    v41[1] = 0u;
    goto LABEL_18;
  }

  v77 = *v34;
  v78 = v35;
  sub_1934948FC();
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936032B0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_21_24();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && a2 == v7;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *v3 = 0u;
      v3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Merchant;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

void sub_1936033BC()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x737574617473 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v34 = __dst[0];
    LOBYTE(v35) = __dst[1] & 1;
    v11 = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation.Status;
  }

  else
  {
    v3 = 0x676E696B63617274;
    v12 = v1 == 0x676E696B63617274 && v0 == 0xEE007265626D754ELL;
    if (v12 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
    {
      v13 = __dst[3];
      if (!__dst[3])
      {
        goto LABEL_7;
      }

      v14 = __dst[2];
    }

    else
    {
      v3 = 0x4E72656972726163;
      v15 = v1 == 0x4E72656972726163 && v0 == 0xEB00000000656D61;
      if (v15 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
      {
        v13 = __dst[5];
        if (!__dst[5])
        {
          goto LABEL_7;
        }

        v14 = __dst[4];
      }

      else
      {
        v16 = v1 == 0x676E697070696873 && v0 == 0xEE00646F6874654DLL;
        if (v16 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
        {
          v13 = __dst[7];
          if (!__dst[7])
          {
            goto LABEL_7;
          }

          v14 = __dst[6];
        }

        else
        {
          v17 = v1 == 0x676E697070696873 && v0 == 0xEC00000065746144;
          if (v17 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
          {
            v13 = __dst[9];
            if (!__dst[9])
            {
              goto LABEL_7;
            }

            v14 = __dst[8];
          }

          else
          {
            v18 = v1 == 0x676E697070696873 && v0 == 0xEC000000656D6954;
            if (v18 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
            {
              v13 = __dst[11];
              if (!__dst[11])
              {
                goto LABEL_7;
              }

              v14 = __dst[10];
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v20 = v1 == 0xD00000000000001ALL && v19 == v0;
              if (v20 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
              {
                v13 = __dst[13];
                if (!__dst[13])
                {
                  goto LABEL_7;
                }

                v14 = __dst[12];
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v22 = v1 == 0xD00000000000001ALL && v21 == v0;
                if (v22 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                {
                  v13 = __dst[15];
                  if (!__dst[15])
                  {
                    goto LABEL_7;
                  }

                  v14 = __dst[14];
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v24 = v1 == 0xD000000000000018 && v23 == v0;
                  if (v24 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                  {
                    v13 = __dst[17];
                    if (!__dst[17])
                    {
                      goto LABEL_7;
                    }

                    v14 = __dst[16];
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v26 = v1 == 0xD000000000000018 && v25 == v0;
                    if (v26 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                    {
                      v13 = __dst[19];
                      if (!__dst[19])
                      {
                        goto LABEL_7;
                      }

                      v14 = __dst[18];
                    }

                    else
                    {
                      v27 = v1 == 0x79726576696C6564 && v0 == 0xEC00000065746144;
                      if (v27 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                      {
                        v13 = __dst[21];
                        if (!__dst[21])
                        {
                          goto LABEL_7;
                        }

                        v14 = __dst[20];
                      }

                      else
                      {
                        if (v1 != 0x79726576696C6564 || v0 != 0xEC000000656D6954)
                        {
                          v3 = OUTLINED_FUNCTION_5_5();
                          if ((v3 & 1) == 0)
                          {
                            sub_19349AB64();
                            OUTLINED_FUNCTION_11();
                            v29 = swift_allocError();
                            OUTLINED_FUNCTION_9_3(v29, v30);
                            *(v31 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation;
                            v32 = swift_allocObject();
                            v33 = OUTLINED_FUNCTION_28_3(v32);
                            memcpy(v33, __dst, 0xC0uLL);
                            OUTLINED_FUNCTION_26_0();

                            sub_1936044F0(__dst, &v34);
                            return;
                          }
                        }

                        v13 = __dst[23];
                        if (!__dst[23])
                        {
                          goto LABEL_7;
                        }

                        v14 = __dst[22];
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

    v34 = v14;
    v35 = v13;
    v11 = MEMORY[0x1E69E6158];
  }

  OUTLINED_FUNCTION_52_2(v3, v11, v4, v5, v6, v7, v8, v9, v34);
  sub_1934948FC();
}

void sub_193603794()
{
  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_27_19(v4, v5, v6, v7, v8, v9, v10, v11, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v12 = v2 == v3 && v1 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[1];
    if (__src[1])
    {
      v14 = __src[0];
LABEL_8:
      __dst[0] = v14;
      __dst[1] = v13;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_22_23();
  v16 = v12 && v1 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[3];
    if (__src[3])
    {
      v14 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_13_19();
  v18 = v12 && v1 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[5];
    if (__src[5])
    {
      v14 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v19 = v2 == 0x73736572646461 && v1 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__dst, v0 + 6, 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v30, __dst, sizeof(v30));
    sub_193494798(&type metadata for WalletPaymentsCommerceOrderEmail.Address, &off_1F07D7AF8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v21 = v12 && v1 == v20;
    if (v21 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
    {
      v13 = __src[30];
      if (__src[30])
      {
        v14 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_15_13();
    v23 = v12 && v1 == v22;
    if (v23 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      v13 = __src[32];
      if (__src[32])
      {
        v14 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v24, v25);
    *(v26 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.ShippingRecipient;
    v27 = swift_allocObject();
    v28 = OUTLINED_FUNCTION_28_3(v27);
    memcpy(v28, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_19360454C(__src, __dst);
  }
}

void sub_1936039CC()
{
  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_27_19(v4, v5, v6, v7, v8, v9, v10, v11, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], __dst[30]);
  v12 = v2 == v3 && v1 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[1];
    if (__src[1])
    {
      v14 = __src[0];
LABEL_8:
      __dst[0] = v14;
      __dst[1] = v13;
      sub_1934948FC();
      return;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_10_31();
  OUTLINED_FUNCTION_22_23();
  v16 = v12 && v1 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[3];
    if (__src[3])
    {
      v14 = __src[2];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_13_19();
  v18 = v12 && v1 == v17;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v13 = __src[5];
    if (__src[5])
    {
      v14 = __src[4];
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_40_17();
  v20 = v2 == 0x41676E696C6C6962 && v1 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    memcpy(__dst, v0 + 6, 0xB8uLL);
    if (sub_1934754E0(__dst) == 1)
    {
LABEL_29:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    memcpy(v31, __dst, sizeof(v31));
    sub_193494798(&type metadata for WalletPaymentsCommerceOrderEmail.Address, &off_1F07D7AF8, v0);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
    v22 = v12 && v1 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_5_5() & 1) != 0))
    {
      v13 = __src[30];
      if (__src[30])
      {
        v14 = __src[29];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_15_13();
    v24 = v12 && v1 == v23;
    if (v24 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      v13 = __src[32];
      if (__src[32])
      {
        v14 = __src[31];
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v25, v26);
    *(v27 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Customer;
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_28_3(v28);
    memcpy(v29, __src, 0x108uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193604668(__src, __dst);
  }
}

void sub_193603C00()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x746565727473 && v0 == 0xE600000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = __dst[1];
    if (__dst[1])
    {
      v12 = __dst[0];
LABEL_8:
      v32[0] = v12;
      v32[1] = v11;
      v13 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v13, v4, v5, v6, v7, v8, v9, v32[0]);
      sub_1934948FC();
      return;
    }
  }

  else
  {
    v14 = v1 == 2037672291 && v0 == 0xE400000000000000;
    if (v14 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
    {
      v11 = __dst[3];
      if (__dst[3])
      {
        v12 = __dst[2];
        goto LABEL_8;
      }
    }

    else
    {
      v3 = 0x6574617473;
      v15 = v1 == 0x6574617473 && v0 == 0xE500000000000000;
      if (v15 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
      {
        v11 = __dst[5];
        if (__dst[5])
        {
          v12 = __dst[4];
          goto LABEL_8;
        }
      }

      else
      {
        v3 = 0x6F436C6174736F70;
        v16 = v1 == 0x6F436C6174736F70 && v0 == 0xEA00000000006564;
        if (v16 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
        {
          v11 = __dst[7];
          if (__dst[7])
          {
            v12 = __dst[6];
            goto LABEL_8;
          }
        }

        else
        {
          v3 = 0x7972746E756F63;
          v17 = v1 == 0x7972746E756F63 && v0 == 0xE700000000000000;
          if (v17 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
          {
            v11 = __dst[9];
            if (__dst[9])
            {
              v12 = __dst[8];
              goto LABEL_8;
            }
          }

          else
          {
            v18 = v1 == 0x4C73736572646461 && v0 == 0xEC00000073656E69;
            if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
            {
              v32[0] = __dst[10];
              v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
              v13 = v3;
              goto LABEL_9;
            }

            v3 = 0x7974696C61636F6CLL;
            v19 = v1 == 0x7974696C61636F6CLL && v0 == 0xE800000000000000;
            if (v19 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
            {
              v11 = __dst[12];
              if (__dst[12])
              {
                v12 = __dst[11];
                goto LABEL_8;
              }
            }

            else
            {
              v3 = 0x6C61636F4C627573;
              v20 = v1 == 0x6C61636F4C627573 && v0 == 0xEB00000000797469;
              if (v20 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
              {
                v11 = __dst[14];
                if (__dst[14])
                {
                  v12 = __dst[13];
                  goto LABEL_8;
                }
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v22 = v1 == 0xD000000000000012 && v21 == v0;
                if (v22 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                {
                  v11 = __dst[16];
                  if (__dst[16])
                  {
                    v12 = __dst[15];
                    goto LABEL_8;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v3 = 0xD000000000000015;
                  v24 = v1 == 0xD000000000000015 && v23 == v0;
                  if (v24 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                  {
                    v11 = __dst[18];
                    if (__dst[18])
                    {
                      v12 = __dst[17];
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v3 = 0x437972746E756F63;
                    v25 = v1 == 0x437972746E756F63 && v0 == 0xEB0000000065646FLL;
                    if (v25 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
                    {
                      v11 = __dst[20];
                      if (__dst[20])
                      {
                        v12 = __dst[19];
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v3 = 0x6572646441776172;
                      if (v1 != 0x6572646441776172 || v0 != 0xEA00000000007373)
                      {
                        v3 = OUTLINED_FUNCTION_5_5();
                        if ((v3 & 1) == 0)
                        {
                          sub_19349AB64();
                          OUTLINED_FUNCTION_11();
                          v27 = swift_allocError();
                          OUTLINED_FUNCTION_9_3(v27, v28);
                          *(v29 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.Address;
                          v30 = swift_allocObject();
                          v31 = OUTLINED_FUNCTION_28_3(v30);
                          memcpy(v31, __dst, 0xB8uLL);
                          OUTLINED_FUNCTION_26_0();

                          sub_1936046C4(__dst, v32);
                          return;
                        }
                      }

                      v11 = __dst[22];
                      if (__dst[22])
                      {
                        v12 = __dst[21];
                        goto LABEL_8;
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

  OUTLINED_FUNCTION_36_4();
}

void sub_193603FE0()
{
  OUTLINED_FUNCTION_9_46();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 0x6F6D416C61746F74 && v0 == 0xEB00000000746E75;
  if (v10 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = *&__dst[8];
    if (*&__dst[8])
    {
      v12 = *__dst;
LABEL_8:
      v25 = v11;
      OUTLINED_FUNCTION_52_2(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v12);
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v13 = v1 == 0xD000000000000011 && 0x8000000193A28EE0 == v0;
  if (v13 || (v3 = OUTLINED_FUNCTION_5_5(), (v3 & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v14 = 0x4D746E656D796170;
  v15 = v1 == 0x4D746E656D796170 && v0 == 0xED0000646F687465;
  if (v15 || (v14 = OUTLINED_FUNCTION_5_5(), (v14 & 1) != 0))
  {
    if (*&__dst[40] == 1)
    {
LABEL_22:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v25 = *&__dst[40];
    v26 = *&__dst[48];
    v27 = __dst[64];
    OUTLINED_FUNCTION_52_2(v14, &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod, &off_1F07D7B18, v5, v6, v7, v8, v9, *&__dst[32]);
    sub_193494798(v16, v17, v18);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v19 = swift_allocError();
    OUTLINED_FUNCTION_9_3(v19, v20);
    *(v21 + 40) = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation;
    v22 = swift_allocObject();
    v23 = OUTLINED_FUNCTION_28_3(v22);
    memcpy(v23, __dst, 0x41uLL);
    OUTLINED_FUNCTION_26_0();

    sub_193604720(__dst, &v24);
  }
}

uint64_t sub_1936041CC(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_21_24();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && a2 == v7;
  if (v10 || (v12 = v2[2], v11 = v2[3], v13 = *(v2 + 32), result = OUTLINED_FUNCTION_31_3(), (result & 1) != 0))
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
    *v3 = 0u;
    v3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod;
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

void sub_1936043A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xA0uLL);
}

uint64_t sub_1936043B8(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_1936043DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_193604438(uint64_t a1)
{
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193604494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  if (v0[18])
  {
    v4 = v0[9];

    v5 = v0[11];

    v6 = v0[13];

    v7 = v0[15];

    v8 = v0[17];

    v9 = v0[18];

    v10 = v0[20];

    v11 = v0[22];

    v12 = v0[24];

    v13 = v0[26];

    v14 = v0[28];

    v15 = v0[30];
  }

  v16 = v0[32];

  v17 = v0[34];

  return MEMORY[0x1EEE6BDD0](v0, 280, 7);
}

double WalletPaymentsCommerceOrderEmail.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v3 = v2[5];
  sub_19344B814();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19360AB5C();
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v16 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[11];
  sub_19360ADE8(v7);
  v8 = v2[12];
  sub_193610F78(a1 + v8);
  v9 = v2[13];
  sub_19360AFCC(a1 + v9);
  v17 = v2[14];
  sub_19360B118(a1 + v17);
  v10 = (a1 + v2[15]);
  sub_19360B274(v10);
  v19 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = a1 + v2[18];
  OUTLINED_FUNCTION_131(v11);
  *a1 = *sub_19360AA08();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v12 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v12);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3EF88, &qword_193972100);
  v13 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v13);

  *v6 = 0;
  *(v6 + 8) = 256;
  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  sub_193456418(*v7, *(v7 + 1));
  *v7 = xmmword_1939526A0;
  sub_193463B08(__src);
  memcpy(__dst, a1 + v8, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3EF90, &unk_193972400);
  memcpy(a1 + v8, __src, 0x108uLL);
  sub_193463B08(v22);
  memcpy(v23, a1 + v9, sizeof(v23));
  sub_19344E6DC(v23, &qword_1EAE3EF98, &qword_193972108);
  memcpy(a1 + v9, v22, 0x108uLL);
  sub_1936043A0(v24);
  memcpy(v25, a1 + v17, sizeof(v25));
  sub_19344E6DC(v25, &qword_1EAE3EFA0, &unk_193972410);
  memcpy(a1 + v17, v24, 0xC0uLL);
  memcpy(v26, v10, 0x41uLL);
  sub_19344E6DC(v26, &qword_1EAE3EFA8, &qword_193972110);

  result = 0.0;
  *v10 = xmmword_1939526A0;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *(v10 + 64) = 0;
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v11 = 0;
  *(v11 + 8) = 256;
  return result;
}

uint64_t static WalletPaymentsCommerceOrderEmail.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v131 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EFB0, &unk_193976980);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v131 - v17;
  v132 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  v133 = v4;
  v19 = v132[7];
  v20 = *(v15 + 56);
  sub_1934486F8(v4 + v19, v18, &qword_1EAE3EF88, &qword_193972100);
  sub_1934486F8(v3 + v19, &v18[v20], &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_31(&v18[v20]);
    if (v21)
    {
      sub_19344E6DC(v18, &qword_1EAE3EF88, &qword_193972100);
      goto LABEL_14;
    }

LABEL_9:
    v22 = &qword_1EAE3EFB0;
    v23 = &unk_193976980;
    v24 = v18;
LABEL_10:
    sub_19344E6DC(v24, v22, v23);
    return 0;
  }

  sub_1934486F8(v18, v13, &qword_1EAE3EF88, &qword_193972100);
  OUTLINED_FUNCTION_31(&v18[v20]);
  if (v21)
  {
    sub_193604438(v13);
    goto LABEL_9;
  }

  v26 = &v18[v20];
  v27 = v131;
  sub_193605C0C(v26, v131);
  sub_1936061D0(&qword_1EAE3F010);
  v28 = sub_19393C550();
  sub_193604438(v27);
  sub_193604438(v13);
  sub_19344E6DC(v18, &qword_1EAE3EF88, &qword_193972100);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v30 = v132;
  v29 = v133;
  v31 = v132[8];
  v32 = *(v133 + v31 + 9);
  v33 = *(v3 + v31 + 9);
  if (v32)
  {
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    if (v36)
    {
      return 0;
    }

    v152[0] = v34;
    LOBYTE(v152[1]) = v35 & 1;
    sub_193605BB8();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v37 = v30[9];
  OUTLINED_FUNCTION_43_15();
  if (v40)
  {
    if (!v38)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v39);
    v43 = v21 && v41 == v42;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v44 = v30[10];
  OUTLINED_FUNCTION_43_15();
  if (v47)
  {
    if (!v45)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v46);
    v50 = v21 && v48 == v49;
    if (!v50 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v51 = v30[11];
  v52 = *(v29 + v51);
  v53 = *(v29 + v51 + 8);
  v54 = (v3 + v51);
  v55 = *v54;
  v56 = v54[1];
  if (v53 == 1)
  {
    sub_19350CB08(v52, 1);
    if (v56 == 1)
    {
      sub_19350CB08(v55, 1);
      sub_193456418(v52, 1);
      goto LABEL_45;
    }

    sub_19350CB08(v55, v56);
LABEL_43:
    v61 = OUTLINED_FUNCTION_25_2();
    sub_193456418(v61, v62);
    sub_193456418(v55, v56);
    return 0;
  }

  *v154 = v52;
  *&v154[8] = v53;
  if (v56 == 1)
  {
    v57 = OUTLINED_FUNCTION_25_2();
    sub_19350CB08(v57, v58);
    sub_19350CB08(v55, 1);
    v59 = OUTLINED_FUNCTION_25_2();
    sub_19350CB08(v59, v60);

    goto LABEL_43;
  }

  v152[0] = v55;
  v152[1] = v56;
  v63 = OUTLINED_FUNCTION_25_2();
  sub_19350CB08(v63, v64);
  sub_19350CB08(v55, v56);
  v65 = OUTLINED_FUNCTION_25_2();
  sub_19350CB08(v65, v66);
  sub_193605B64();
  v55 = sub_19393C550();

  v67 = OUTLINED_FUNCTION_25_2();
  sub_193456418(v67, v68);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v69 = v30[12];
  OUTLINED_FUNCTION_38_22(v161);
  v70 = v30[12];
  v71 = OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_45_19(v71);
  v72 = OUTLINED_FUNCTION_30_14();
  memcpy(v72, v73, 0x108uLL);
  OUTLINED_FUNCTION_45_19((v55 + 264));
  OUTLINED_FUNCTION_38_22(v162);
  OUTLINED_FUNCTION_42_24(v162);
  if (v21)
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_42_24(v152);
    if (v21)
    {
      OUTLINED_FUNCTION_32_21(v153);
      v74 = &qword_1EAE3EF90;
      OUTLINED_FUNCTION_15_4(v161, v151);
      v75 = OUTLINED_FUNCTION_34_23();
      OUTLINED_FUNCTION_15_4(v75, v151);
      OUTLINED_FUNCTION_47_7(v153);
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_15_4(v161, v153);
    v78 = OUTLINED_FUNCTION_34_23();
    OUTLINED_FUNCTION_15_4(v78, v153);
LABEL_53:
    v79 = OUTLINED_FUNCTION_41_17();
    memcpy(v79, v80, 0x210uLL);
    v22 = &unk_1EAE3EFB8;
    v23 = &unk_1939721E0;
LABEL_72:
    v24 = v152;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_32_21(v153);
  OUTLINED_FUNCTION_32_21(v151);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_42_24(v152);
  if (v76)
  {
    memcpy(v150, v151, sizeof(v150));
    OUTLINED_FUNCTION_13_22(v161);
    v77 = OUTLINED_FUNCTION_34_23();
    OUTLINED_FUNCTION_13_22(v77);
    OUTLINED_FUNCTION_13_22(v153);
    sub_193605ABC(v150);
    goto LABEL_53;
  }

  memcpy(v150, (v55 + 264), sizeof(v150));
  OUTLINED_FUNCTION_19_28(v161, v149);
  v81 = OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_19_28(v81, v149);
  OUTLINED_FUNCTION_19_28(v153, v149);
  sub_193605B10();
  v74 = sub_19393C550();
  memcpy(v148, v150, sizeof(v148));
  sub_193605ABC(v148);
  memcpy(v149, v151, sizeof(v149));
  sub_193605ABC(v149);
  OUTLINED_FUNCTION_32_21(v150);
  OUTLINED_FUNCTION_48_18(v150);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v82 = v30[13];
  OUTLINED_FUNCTION_38_22(v150);
  v83 = v30[13];
  OUTLINED_FUNCTION_45_19(v151);
  v84 = OUTLINED_FUNCTION_30_14();
  memcpy(v84, v85, 0x108uLL);
  OUTLINED_FUNCTION_45_19((v74 + 264));
  OUTLINED_FUNCTION_38_22(v153);
  OUTLINED_FUNCTION_42_24(v153);
  if (v21)
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_42_24(v152);
    if (v21)
    {
      OUTLINED_FUNCTION_32_21(v149);
      v86 = &qword_1EAE3EF98;
      OUTLINED_FUNCTION_15_4(v150, v148);
      OUTLINED_FUNCTION_15_4(v151, v148);
      OUTLINED_FUNCTION_47_7(v149);
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_13_22(v150);
    OUTLINED_FUNCTION_13_22(v151);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_32_21(v149);
  OUTLINED_FUNCTION_32_21(v148);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_42_24(v152);
  if (v87)
  {
    memcpy(v136, v148, sizeof(v136));
    OUTLINED_FUNCTION_14_28(v150);
    OUTLINED_FUNCTION_14_28(v151);
    OUTLINED_FUNCTION_14_28(v149);
    sub_193605A14(v136);
LABEL_63:
    v88 = OUTLINED_FUNCTION_41_17();
    memcpy(v88, v89, 0x210uLL);
    v22 = &unk_1EAE3EFC0;
    v23 = &unk_1939721E8;
    goto LABEL_72;
  }

  memcpy(v136, (v74 + 264), sizeof(v136));
  OUTLINED_FUNCTION_19_28(v150, v135);
  OUTLINED_FUNCTION_19_28(v151, v135);
  OUTLINED_FUNCTION_19_28(v149, v135);
  sub_193605A68();
  v86 = sub_19393C550();
  memcpy(v134, v136, sizeof(v134));
  sub_193605A14(v134);
  memcpy(v135, v148, sizeof(v135));
  sub_193605A14(v135);
  OUTLINED_FUNCTION_32_21(v136);
  OUTLINED_FUNCTION_48_18(v136);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v90 = v30[14];
  memcpy(v136, (v29 + v90), 0xC0uLL);
  v91 = v30[14];
  memcpy(v148, (v3 + v91), 0xC0uLL);
  v92 = OUTLINED_FUNCTION_30_14();
  memcpy(v92, v93, 0xC0uLL);
  memcpy((v86 + 192), (v3 + v91), 0xC0uLL);
  memcpy(v149, (v29 + v90), 0xC0uLL);
  if (sub_1936043B8(v149) == 1)
  {
    memcpy(v152, (v86 + 192), 0xC0uLL);
    if (sub_1936043B8(v152) == 1)
    {
      OUTLINED_FUNCTION_44_17(v135);
      OUTLINED_FUNCTION_15_4(v136, v134);
      OUTLINED_FUNCTION_15_4(v148, v134);
      OUTLINED_FUNCTION_47_7(v135);
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_14_28(v136);
    OUTLINED_FUNCTION_14_28(v148);
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_44_17(v135);
  OUTLINED_FUNCTION_44_17(v134);
  memcpy(v152, (v86 + 192), 0xC0uLL);
  if (sub_1936043B8(v152) == 1)
  {
    memcpy(v139, v134, sizeof(v139));
    OUTLINED_FUNCTION_10_32(v136);
    OUTLINED_FUNCTION_10_32(v148);
    OUTLINED_FUNCTION_10_32(v135);
    sub_19360596C(v139);
LABEL_71:
    v94 = OUTLINED_FUNCTION_41_17();
    memcpy(v94, v95, 0x180uLL);
    v22 = &unk_1EAE3EFC8;
    v23 = &unk_1939721F0;
    goto LABEL_72;
  }

  memcpy(v139, (v86 + 192), sizeof(v139));
  OUTLINED_FUNCTION_9_47(v136);
  OUTLINED_FUNCTION_9_47(v148);
  OUTLINED_FUNCTION_9_47(v135);
  sub_1936059C0();
  v96 = sub_19393C550();
  memcpy(v137, v139, sizeof(v137));
  sub_19360596C(v137);
  memcpy(v138, v134, sizeof(v138));
  sub_19360596C(v138);
  OUTLINED_FUNCTION_44_17(v139);
  OUTLINED_FUNCTION_48_18(v139);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v97 = v29 + v30[15];
  memcpy(v135, v97, 0x41uLL);
  v98 = v3 + v30[15];
  memcpy(v152, v98, 0x41uLL);
  v99 = v135[0];
  v100 = v135[1];
  v101 = *(v97 + 32);
  v144 = *(v97 + 16);
  v145 = v101;
  v146 = *(v97 + 48);
  v147 = *(v97 + 64);
  v102 = v152[0];
  v103 = v152[1];
  v143 = *(v98 + 64);
  v104 = *(v98 + 48);
  v141 = *(v98 + 32);
  v142 = v104;
  v140 = *(v98 + 16);
  if (v135[1] != 1)
  {
    *v154 = v135[0];
    *&v154[8] = v135[1];
    OUTLINED_FUNCTION_6_39();
    memcpy(v134, v154, 0x41uLL);
    if (v103 != 1)
    {
      v108 = *(v98 + 32);
      v139[1] = *(v98 + 16);
      v139[2] = v108;
      v139[3] = *(v98 + 48);
      LOBYTE(v139[4]) = *(v98 + 64);
      *&v139[0] = v102;
      *(&v139[0] + 1) = v103;
      OUTLINED_FUNCTION_9_47(v135);
      OUTLINED_FUNCTION_9_47(v152);
      OUTLINED_FUNCTION_9_47(v154);
      sub_193605918();
      v109 = sub_19393C550();
      memcpy(v137, v139, 0x41uLL);
      sub_1936058C4(v137);
      memcpy(v138, v134, 0x41uLL);
      sub_1936058C4(v138);
      *&v139[0] = v99;
      *(&v139[0] + 1) = v100;
      v139[1] = v144;
      v139[2] = v145;
      v139[3] = v146;
      LOBYTE(v139[4]) = v147;
      OUTLINED_FUNCTION_48_18(v139);
      if ((v109 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_82;
    }

    v105 = v99;
    memcpy(v139, v154, 0x41uLL);
    OUTLINED_FUNCTION_10_32(v135);
    OUTLINED_FUNCTION_10_32(v152);
    OUTLINED_FUNCTION_10_32(v154);
    sub_1936058C4(v139);
    goto LABEL_80;
  }

  if (v152[1] != 1)
  {
    v105 = v135[0];
    OUTLINED_FUNCTION_15_4(v135, v154);
    v106 = OUTLINED_FUNCTION_41_17();
    OUTLINED_FUNCTION_15_4(v106, v107);
LABEL_80:
    *&v154[16] = v144;
    *&v154[32] = v145;
    *&v154[48] = v146;
    v157 = v140;
    *v154 = v105;
    *&v154[8] = v100;
    v154[64] = v147;
    v155 = v102;
    v156 = v103;
    v158 = v141;
    v159 = v142;
    v160 = v143;
    v22 = &unk_1EAE3EFD0;
    v23 = &unk_1939721F8;
    v24 = v154;
    goto LABEL_10;
  }

  *v154 = v135[0];
  *&v154[8] = 1;
  OUTLINED_FUNCTION_6_39();
  OUTLINED_FUNCTION_15_4(v135, v134);
  OUTLINED_FUNCTION_15_4(v152, v134);
  OUTLINED_FUNCTION_47_7(v154);
LABEL_82:
  v110 = v132;
  v111 = v132[16];
  OUTLINED_FUNCTION_40_18();
  if (v114)
  {
    if (!v112)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v113);
    v117 = v21 && v115 == v116;
    if (!v117 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v118 = v110[17];
  OUTLINED_FUNCTION_40_18();
  if (v121)
  {
    if (!v119)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v120);
    v124 = v21 && v122 == v123;
    if (!v124 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v119)
  {
    return 0;
  }

  v125 = v132[18];
  v126 = *(v133 + v125 + 9);
  v127 = *(v3 + v125 + 9);
  if (v126)
  {
    if (v127)
    {
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_24();
    if ((v130 & 1) == 0)
    {
      v134[0] = v128;
      LOBYTE(v134[1]) = v129 & 1;
      sub_193605870();
      if (sub_19393C550())
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_193605870()
{
  result = qword_1EAE3EFD8;
  if (!qword_1EAE3EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFD8);
  }

  return result;
}

unint64_t sub_193605918()
{
  result = qword_1EAE3EFE0;
  if (!qword_1EAE3EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFE0);
  }

  return result;
}

unint64_t sub_1936059C0()
{
  result = qword_1EAE3EFE8;
  if (!qword_1EAE3EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFE8);
  }

  return result;
}

unint64_t sub_193605A68()
{
  result = qword_1EAE3EFF0;
  if (!qword_1EAE3EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFF0);
  }

  return result;
}

unint64_t sub_193605B10()
{
  result = qword_1EAE3EFF8;
  if (!qword_1EAE3EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3EFF8);
  }

  return result;
}

unint64_t sub_193605B64()
{
  result = qword_1EAE3F000;
  if (!qword_1EAE3F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F000);
  }

  return result;
}

unint64_t sub_193605BB8()
{
  result = qword_1EAE3F008;
  if (!qword_1EAE3F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F008);
  }

  return result;
}

uint64_t sub_193605C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WalletPaymentsCommerceOrderEmail.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  sub_1934486F8(v1 + v12[7], v11, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    sub_193605C0C(v11, v7);
    OUTLINED_FUNCTION_94();
    sub_1936061D0(&qword_1EAE3F018);
    sub_19393C540();
    sub_193604438(v7);
  }

  v13 = (v1 + v12[8]);
  if (*(v13 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v14 = *(v13 + 8);
    v48 = *v13;
    LOBYTE(v49) = v14 & 1;
    OUTLINED_FUNCTION_94();
    sub_193606214();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_33_16(v12[9]);
  if (v2)
  {
    v16 = *v15;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16(v12[10]);
  if (v2)
  {
    v18 = *v17;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16(v12[11]);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v48 = *v19;
    v49 = v2;
    OUTLINED_FUNCTION_94();
    sub_193606268();

    sub_19393C540();
  }

  v20 = v12[12];
  OUTLINED_FUNCTION_49_16(v47);
  OUTLINED_FUNCTION_49_16(&v48);
  OUTLINED_FUNCTION_42_24(&v48);
  if (v21)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v44, v47, sizeof(v44));
    OUTLINED_FUNCTION_94();
    memcpy(v45, v47, sizeof(v45));
    sub_193604668(v45, v46);
    sub_1936062BC();
    sub_19393C540();
    memcpy(v46, v44, sizeof(v46));
    sub_193605ABC(v46);
  }

  v22 = v12[13];
  OUTLINED_FUNCTION_49_16(v45);
  OUTLINED_FUNCTION_49_16(v46);
  OUTLINED_FUNCTION_42_24(v46);
  if (v21)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v42, v45, sizeof(v42));
    OUTLINED_FUNCTION_94();
    memcpy(v43, v45, sizeof(v43));
    sub_19360454C(v43, v44);
    sub_193606310();
    sub_19393C540();
    memcpy(v44, v42, sizeof(v44));
    sub_193605A14(v44);
  }

  v23 = v12[14];
  memcpy(v43, (v1 + v23), 0xC0uLL);
  memcpy(v44, (v1 + v23), 0xC0uLL);
  if (sub_1936043B8(v44) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v40, v43, sizeof(v40));
    OUTLINED_FUNCTION_94();
    memcpy(v41, v43, sizeof(v41));
    sub_1936044F0(v41, v42);
    sub_193606364();
    sub_19393C540();
    memcpy(v42, v40, 0xC0uLL);
    sub_19360596C(v42);
  }

  v24 = (v1 + v12[15]);
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 2);
  v36 = *(v24 + 1);
  v37 = v27;
  v38 = *(v24 + 3);
  v39 = *(v24 + 64);
  if (v26 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v28 = *(v24 + 2);
    v40[1] = *(v24 + 1);
    v40[2] = v28;
    v40[3] = *(v24 + 3);
    LOBYTE(v40[4]) = *(v24 + 64);
    *&v40[0] = v25;
    *(&v40[0] + 1) = v26;
    OUTLINED_FUNCTION_94();
    *&v41[0] = v25;
    *(&v41[0] + 1) = v26;
    v41[1] = v36;
    v41[2] = v37;
    v41[3] = v38;
    LOBYTE(v41[4]) = v39;
    sub_193604720(v41, v42);
    sub_1936063B8();
    sub_19393C540();
    memcpy(v42, v40, 0x41uLL);
    sub_1936058C4(v42);
  }

  OUTLINED_FUNCTION_33_16(v12[16]);
  if (v25)
  {
    v30 = *v29;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_33_16(v12[17]);
  if (v25)
  {
    v32 = *v31;
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_11();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v33 = v1 + v12[18];
  if (*(v33 + 9) == 1)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v35 = *(v33 + 8);
  v42[0] = *v33;
  LOBYTE(v42[1]) = v35 & 1;
  OUTLINED_FUNCTION_94();
  sub_19360640C();
  return sub_19393C540();
}

uint64_t sub_1936061D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_193606214()
{
  result = qword_1EAE3F020;
  if (!qword_1EAE3F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F020);
  }

  return result;
}

unint64_t sub_193606268()
{
  result = qword_1EAE3F028;
  if (!qword_1EAE3F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F028);
  }

  return result;
}

unint64_t sub_1936062BC()
{
  result = qword_1EAE3F030;
  if (!qword_1EAE3F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F030);
  }

  return result;
}

unint64_t sub_193606310()
{
  result = qword_1EAE3F038;
  if (!qword_1EAE3F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F038);
  }

  return result;
}

unint64_t sub_193606364()
{
  result = qword_1EAE3F040;
  if (!qword_1EAE3F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F040);
  }

  return result;
}

unint64_t sub_1936063B8()
{
  result = qword_1EAE3F048;
  if (!qword_1EAE3F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F048);
  }

  return result;
}

unint64_t sub_19360640C()
{
  result = qword_1EAE3F050;
  if (!qword_1EAE3F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F050);
  }

  return result;
}

void WalletPaymentsCommerceOrderEmail.EmailType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
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
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static WalletPaymentsCommerceOrderEmail.EmailType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F080, &qword_193972320);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v66 = OUTLINED_FUNCTION_39(v10);
    v70 = OUTLINED_FUNCTION_84_2(v66, v67, v68, v69, &qword_1EAE3F080, &qword_193972320);
    v6 = OUTLINED_FUNCTION_17_2(v70);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v71 = OUTLINED_FUNCTION_39(v17);
    v75 = OUTLINED_FUNCTION_85(v71, v72, v73, v74, &qword_1EAE3F080, &qword_193972320);
    v13 = OUTLINED_FUNCTION_17_2(v75);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v76 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v76, v3, 1, v77, &qword_1EAE3F080, &qword_193972320);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v78 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v78, v79, v80, v81, &qword_1EAE3F080, &qword_193972320);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v82 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v82, v83, v84, v85, &qword_1EAE3F080, &qword_193972320);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v86 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v86, v87, v88, v89, &qword_1EAE3F080, &qword_193972320);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v4 + 7 > (v48 >> 1))
  {
    v90 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v90, v91, v92, v93, &qword_1EAE3F080, &qword_193972320);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v4 + 8 > (v55 >> 1))
  {
    v94 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v94, v95, v96, v97, &qword_1EAE3F080, &qword_193972320);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4(v56, v57);
  if (v4 + 9 > (v62 >> 1))
  {
    v98 = OUTLINED_FUNCTION_39(v62);
    v58 = OUTLINED_FUNCTION_85(v98, v99, v100, v101, &qword_1EAE3F080, &qword_193972320);
    v61 = v58;
  }

  OUTLINED_FUNCTION_47_5(v58, v59, v60, v61);
  *(v63 + 32) = 7;
  *(v63 + 40) = v3;
  return v64;
}

unint64_t WalletPaymentsCommerceOrderEmail.EmailType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x647055726564724FLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x737349726564724FLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      v2 = 0x6E7275746552;
      goto LABEL_12;
    case 7:
      v2 = 0x646E75666552;
LABEL_12:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7055000000000000;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

void WalletPaymentsCommerceOrderEmail.EmailType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0xD000000000000011 ? (v4 = 0x8000000193A29490 == v0) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x647055726564724FLL && v0 == 0xEB00000000657461;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v7 = v1 == 0xD000000000000011 && 0x8000000193A29470 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v8 = v1 == 0x737349726564724FLL && v0 == 0xEA00000000006575;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v9 = v1 == 0xD00000000000001ALL && 0x8000000193A29450 == v0;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v10 = v1 == 0xD000000000000019 && 0x8000000193A29430 == v0;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else
            {
              v11 = v1 == 0x70556E7275746552 && v0 == 0xEC00000065746164;
              if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v5 = 6;
              }

              else if (v1 == 0x7055646E75666552 && v0 == 0xEC00000065746164)
              {

                v5 = 7;
              }

              else
              {
                v13 = OUTLINED_FUNCTION_0_9();

                v5 = 7;
                if ((v13 & 1) == 0)
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

  OUTLINED_FUNCTION_19_5(v5);
}

void WalletPaymentsCommerceOrderEmail.OrderContentType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t WalletPaymentsCommerceOrderEmail.OrderContentType.rawValue.getter()
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

uint64_t static WalletPaymentsCommerceOrderEmail.OrderContentType.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F078, &qword_193972318);
  v6 = v3;
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v16 = OUTLINED_FUNCTION_39(v7);
    v20 = OUTLINED_FUNCTION_84_2(v16, v17, v18, v19, &qword_1EAE3F078, &qword_193972318);
    v3 = OUTLINED_FUNCTION_17_2(v20);
  }

  *(v6 + 16) = v10;
  v11 = v6 + 16 * v8;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  if (v9 < (v8 + 2))
  {
    v21 = OUTLINED_FUNCTION_39(v7);
    v25 = OUTLINED_FUNCTION_85(v21, v22, v23, v24, &qword_1EAE3F078, &qword_193972318);
    v3 = OUTLINED_FUNCTION_17_2(v25);
  }

  *(v6 + 16) = v8 + 2;
  v12 = v6 + 16 * v10;
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  if (v9 < (v8 + 3))
  {
    v26 = OUTLINED_FUNCTION_39(v7);
    v3 = OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE3F078, &qword_193972318);
    v6 = v3;
  }

  OUTLINED_FUNCTION_50(v3, v4, v5, v6);
  *(v13 + 32) = 1;
  *(v13 + 40) = 1;
  return v14;
}

uint64_t WalletPaymentsCommerceOrderEmail.OrderContentType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x476C617469676944;
  }

  else
  {
    result = 0x6C61636973796850;
  }

  *v0;
  return result;
}

void WalletPaymentsCommerceOrderEmail.OrderContentType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x6C61636973796850 ? (v4 = v0 == 0xED000073646F6F47) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x476C617469676944 && v0 == 0xEC00000073646F6FLL)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_19_5(v5);
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
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
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F070, &qword_193972310);
  v6 = OUTLINED_FUNCTION_16_0(v5);
  if (!(!v12 & v11))
  {
    v73 = OUTLINED_FUNCTION_39(v10);
    v77 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3F070, &qword_193972310);
    v6 = OUTLINED_FUNCTION_17_2(v77);
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v78 = OUTLINED_FUNCTION_39(v17);
    v82 = OUTLINED_FUNCTION_85(v78, v79, v80, v81, &qword_1EAE3F070, &qword_193972310);
    v13 = OUTLINED_FUNCTION_17_2(v82);
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v83 = OUTLINED_FUNCTION_39(v24);
    v20 = sub_1934B0FCC(v83, v3, 1, v84, &qword_1EAE3F070, &qword_193972310);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v85 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_84_2(v85, v86, v87, v88, &qword_1EAE3F070, &qword_193972310);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v89 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE3F070, &qword_193972310);
    v33 = v30;
  }

  OUTLINED_FUNCTION_47_5(v30, v31, v32, v33);
  OUTLINED_FUNCTION_4(v35, v36);
  if (v4 + 6 > (v41 >> 1))
  {
    v93 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v93, v94, v95, v96, &qword_1EAE3F070, &qword_193972310);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v4 + 7 > (v48 >> 1))
  {
    v97 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v97, v98, v99, v100, &qword_1EAE3F070, &qword_193972310);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v4 + 8 > (v55 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v101, v102, v103, v104, &qword_1EAE3F070, &qword_193972310);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4(v56, v57);
  if (v4 + 9 > (v62 >> 1))
  {
    v105 = OUTLINED_FUNCTION_39(v62);
    v58 = OUTLINED_FUNCTION_85(v105, v106, v107, v108, &qword_1EAE3F070, &qword_193972310);
    v61 = v58;
  }

  OUTLINED_FUNCTION_47_5(v58, v59, v60, v61);
  OUTLINED_FUNCTION_4(v63, v64);
  if (v4 + 10 > (v69 >> 1))
  {
    v109 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v109, v110, v111, v112, &qword_1EAE3F070, &qword_193972310);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  *(v70 + 32) = 8;
  *(v70 + 40) = 1;
  return v71;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.description.getter()
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

void WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.init(_:)()
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
          v10 = v1 == 0x656C6C65636E6143 && v0 == 0xE900000000000064;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v11 = v1 == 0x6575737349 && v0 == 0xE500000000000000;
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

                else if (v1 == 0x69737365636F7250 && v0 == 0xEA0000000000676ELL)
                {

                  v5 = 8;
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_0_9();

                  v5 = 8;
                  if ((v16 & 1) == 0)
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

  OUTLINED_FUNCTION_19_5(v5);
}

unint64_t sub_193607384()
{
  result = qword_1EAE3F058;
  if (!qword_1EAE3F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F058);
  }

  return result;
}

unint64_t sub_1936073DC()
{
  result = qword_1EAE3F060;
  if (!qword_1EAE3F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F060);
  }

  return result;
}

unint64_t sub_193607434()
{
  result = qword_1EAE3F068;
  if (!qword_1EAE3F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_18(uint64_t a1)
{

  return sub_19344E6DC(a1, v1, v2);
}

void *OUTLINED_FUNCTION_49_16(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x108uLL);
}

void sub_1936074E0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB3C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v41 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v41, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("emailMetadata");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v11 = v1;
  *v10 = "emailType";
  v10[1] = 9;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v14 = OUTLINED_FUNCTION_5_4(v13, "orderNumber");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v5);
  *v16 = 4;
  *v15 = "orderDate";
  v15[1] = 9;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v9)(v17);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  OUTLINED_FUNCTION_42_25(v18);
  v20 = OUTLINED_FUNCTION_23_7(v19, "merchant");
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_23_7(v21, "customer");
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_30_0((v0 + 6 * v5));
  v25 = OUTLINED_FUNCTION_5_4(v24, "shippingRecipient");
  (v9)(v25);
  OUTLINED_FUNCTION_120();
  v27 = OUTLINED_FUNCTION_44(v26);
  *v28 = 8;
  v29 = OUTLINED_FUNCTION_5_4(v27, "shippingInformation");
  (v9)(v29);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v5);
  OUTLINED_FUNCTION_131_3(v30);
  v32 = OUTLINED_FUNCTION_5_4(v31, "paymentInformation");
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v5);
  *v34 = 10;
  v35 = OUTLINED_FUNCTION_23_7(v33, "spotlightUniqueIdentifier");
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v37 = 11;
  v38 = OUTLINED_FUNCTION_23_7(v36, "spotlightDomainIdentifier");
  (v9)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v0 + 11 * v5);
  *v40 = 12;
  *v39 = "orderContentType";
  *(v39 + 8) = 16;
  *(v39 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936077D4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  v1 = &off_1F07D7BA8;
  v2 = &type metadata for WalletPaymentsCommerceOrderEmail.EmailType;
  v3 = &off_1F07D7B58;
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = v3;
        v7 = v2;
        v8 = v1;
        v9 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 28);
        type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        v1 = v8;
        v2 = v7;
        v3 = v6;
        goto LABEL_19;
      case 2:
        v16 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v16 + 32));
        goto LABEL_13;
      case 3:
        v13 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 36);
        goto LABEL_17;
      case 4:
        v14 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 40);
        goto LABEL_17;
      case 5:
        v11 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v11 + 44));
        goto LABEL_19;
      case 6:
        v17 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v17 + 48));
        goto LABEL_19;
      case 7:
        v18 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v18 + 52));
        goto LABEL_19;
      case 8:
        v15 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v15 + 56));
        goto LABEL_19;
      case 9:
        v20 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v20 + 60));
LABEL_19:
        sub_193498018();
        goto LABEL_20;
      case 10:
        v12 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 64);
        goto LABEL_17;
      case 11:
        v19 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 68);
LABEL_17:
        sub_19393C200();
        goto LABEL_20;
      case 12:
        v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
        OUTLINED_FUNCTION_160(*(v10 + 72));
LABEL_13:
        sub_1934982A8();
LABEL_20:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193607A30()
{
  OUTLINED_FUNCTION_22_0();
  v2 = OUTLINED_FUNCTION_11_1();
  sub_193607D44(v2, v3, v4, v5, v6, v7, v8, v9, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11]);
  if (!v1)
  {
    v10 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
    v11 = v0 + v10[8];
    if ((*(v11 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_16(v11);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v12, v13, v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_16_4(v10[9]);
    if (v19)
    {
      v20 = *v18;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v10[10]);
    if (v22)
    {
      v23 = *v21;
      OUTLINED_FUNCTION_2_7();
    }

    v24 = (v0 + v10[11]);
    v25 = v24[1];
    if (v25 != 1)
    {
      *__dst = *v24;
      *&__dst[8] = v25;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[12]), sizeof(__dst));
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
    {
      memcpy(v42, __dst, sizeof(v42));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[13]), sizeof(__dst));
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
    {
      memcpy(v42, __dst, sizeof(v42));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v10[14]), 0xC0uLL);
    if (sub_1936043B8(__dst) != 1)
    {
      memcpy(v42, __dst, 0xC0uLL);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    v26 = v0 + v10[15];
    v27 = *(v26 + 8);
    if (v27 != 1)
    {
      *__dst = *v26;
      *&__dst[8] = v27;
      v28 = *(v26 + 32);
      *&__dst[16] = *(v26 + 16);
      *&__dst[32] = v28;
      *&__dst[48] = *(v26 + 48);
      __dst[64] = *(v26 + 64);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_16_4(v10[16]);
    if (v30)
    {
      v31 = *v29;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v10[17]);
    if (v33)
    {
      v34 = *v32;
      OUTLINED_FUNCTION_2_7();
    }

    v35 = v0 + v10[18];
    if ((*(v35 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_43_16(v35);
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v36, v37, v38, v39, v40, v41);
    }
  }
}

void sub_193607D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3EF88, &qword_193972100);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &a9 - v28;
  v30 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = OUTLINED_FUNCTION_37();
  v35 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v34);
  sub_1934486F8(v25 + *(v35 + 28), v29, &qword_1EAE3EF88, &qword_193972100);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_19344E6DC(v29, &qword_1EAE3EF88, &qword_193972100);
  }

  else
  {
    sub_193605C0C(v29, v20);
    sub_193447600();
    sub_193604438(v20);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193607F08()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB3D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_193951270;
  v5 = v4 + v0 + dword_1EAEAB410;
  *(v4 + v0) = 0;
  *v5 = "Unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  OUTLINED_FUNCTION_69_6(v10);
  *v11 = "OrderConfirmation";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v12 = OUTLINED_FUNCTION_3_1(v4 + v0 + 2 * v3);
  *v13 = 2;
  OUTLINED_FUNCTION_36_5(v12, "OrderUpdate");
  OUTLINED_FUNCTION_2_0();
  v9();
  v14 = OUTLINED_FUNCTION_9_4((v4 + v0 + 3 * v3));
  *v14 = "OrderCancellation";
  *(v14 + 1) = 17;
  v14[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_13((v4 + v0 + 4 * v3));
  OUTLINED_FUNCTION_36_5(v15, "OrderIssue");
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_3_1(v4 + v0 + 5 * v3);
  OUTLINED_FUNCTION_42_25(v16);
  OUTLINED_FUNCTION_36_5(v17, "ShippingUpdateFromMerchant");
  OUTLINED_FUNCTION_2_0();
  v9();
  v18 = (v4 + v0 + 6 * v3);
  v19 = v18 + dword_1EAEAB410;
  *v18 = 6;
  OUTLINED_FUNCTION_36_5(v19, "ShippingUpdateFromCarrier");
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_120();
  v21 = OUTLINED_FUNCTION_30_0((v4 + v0 + v20));
  *v21 = "ReturnUpdate";
  *(v21 + 1) = 12;
  v21[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v22 = OUTLINED_FUNCTION_39_3((v4 + v0 + 8 * v3));
  *v22 = "RefundUpdate";
  *(v22 + 1) = 12;
  v22[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936081DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB3F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("OrderContentTypeUnknown");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_3_1(v0 + v5);
  OUTLINED_FUNCTION_69_6(v11);
  OUTLINED_FUNCTION_36_5(v12, "OrderContentTypePhysicalGoods");
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v14 = v1;
  *v13 = "OrderContentTypeDigitalGoods";
  *(v13 + 8) = 28;
  *(v13 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193608380()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB408);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v6, xmmword_1939526F0);
  OUTLINED_FUNCTION_83_0("messageID");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_5_4(v11, "dateSent");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "subject");
  (v10)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v5);
  *v17 = 4;
  v18 = OUTLINED_FUNCTION_5_4(v16, "senderDomain");
  (v10)(v18);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  OUTLINED_FUNCTION_42_25(v19);
  *v20 = "deeplinkURL";
  v20[1] = 11;
  v21 = OUTLINED_FUNCTION_41(v20);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_5_4(v22, "fromEmailAddress");
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_30_0((v0 + 6 * v5));
  v26 = OUTLINED_FUNCTION_5_4(v25, "fromDisplayName");
  (v10)(v26);
  OUTLINED_FUNCTION_120();
  v28 = OUTLINED_FUNCTION_44(v27);
  *v29 = 8;
  v30 = OUTLINED_FUNCTION_5_4(v28, "toEmailAddress");
  (v10)(v30);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v5);
  OUTLINED_FUNCTION_131_3(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "toDisplayName");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  v36 = OUTLINED_FUNCTION_5_4(v34, "replyToEmailAddress");
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v38 = 11;
  *v37 = "replyToDisplayName";
  *(v37 + 8) = 18;
  *(v37 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360864C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        goto LABEL_15;
      case 2:
        v9 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 20);
        sub_1934976E4();
        goto LABEL_16;
      case 3:
        v6 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 24);
        goto LABEL_15;
      case 4:
        v7 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 28);
        goto LABEL_15;
      case 5:
        v3 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
        v4 = OUTLINED_FUNCTION_160(*(v3 + 32));
        sub_19349780C(v4);
        goto LABEL_16;
      case 6:
        v10 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 36);
        goto LABEL_15;
      case 7:
        v11 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 40);
        goto LABEL_15;
      case 8:
        v8 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 44);
        goto LABEL_15;
      case 9:
        v13 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 48);
        goto LABEL_15;
      case 10:
        v5 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 52);
        goto LABEL_15;
      case 11:
        v12 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0) + 56);
LABEL_15:
        sub_19393C200();
LABEL_16:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936087B4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193608940();
    v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
    OUTLINED_FUNCTION_16_4(v4[6]);
    if (v6)
    {
      v7 = *v5;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[7]);
    if (v9)
    {
      v10 = *v8;
      OUTLINED_FUNCTION_2_7();
    }

    v11 = OUTLINED_FUNCTION_11_1();
    sub_193608AEC(v11, v12, v13, v14, v15, v16, v17, v18, v37, v38);
    OUTLINED_FUNCTION_16_4(v4[9]);
    if (v20)
    {
      v21 = *v19;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[10]);
    if (v23)
    {
      v24 = *v22;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[11]);
    if (v26)
    {
      v27 = *v25;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[12]);
    if (v29)
    {
      v30 = *v28;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[13]);
    if (v32)
    {
      v33 = *v31;
      OUTLINED_FUNCTION_2_7();
    }

    OUTLINED_FUNCTION_16_4(v4[14]);
    if (v35)
    {
      v36 = *v34;
      OUTLINED_FUNCTION_2_7();
    }
  }
}

void sub_193608940()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19[-v8];
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  sub_1934486F8(v1 + *(v18 + 20), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v0) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v13 + 32))(v17, v9, v0);
    sub_193451F04(v17, 2, 26211, 0xE200000000000000);
    (*(v13 + 8))(v17, v0);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193608AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v14, v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v22 = sub_19393BD10();
  v23 = OUTLINED_FUNCTION_76(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = OUTLINED_FUNCTION_37();
  v29 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v28);
  sub_1934486F8(v13 + *(v29 + 32), v21, &qword_1EAE3ACA0, &qword_193972420);
  if (__swift_getEnumTagSinglePayload(v21, 1, v11) == 1)
  {
    sub_19344E6DC(v21, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    (*(v25 + 32))(v12, v21, v11);
    sub_19349881C(v12, 5, v10, a10);
    (*(v25 + 8))(v12, v11);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193608CE0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB420);
  __swift_project_value_buffer(v0, qword_1EAEAB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FAC0;
  v5 = v4 + v3 + v1[14];
  OUTLINED_FUNCTION_69_6((v4 + v3));
  *v5 = "displayName";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  (*(v8 + 104))(v5, v6);
  return sub_19393C410();
}

void sub_193608E74()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB438);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v40 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v40, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("status");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_23_7(v10, "trackingNumber");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  v14 = OUTLINED_FUNCTION_5_4(v13, "carrierName");
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v5);
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_23_7(v15, "shippingMethod");
  (v9)(v17);
  OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  OUTLINED_FUNCTION_42_25(v18);
  *v19 = "shippingDate";
  v19[1] = 12;
  v20 = OUTLINED_FUNCTION_41(v19);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 6;
  *v21 = "shippingTime";
  v21[1] = 12;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_30_0((v0 + 6 * v5));
  v25 = OUTLINED_FUNCTION_23_7(v24, "estimatedDeliveryStartDate");
  (v9)(v25);
  v26 = OUTLINED_FUNCTION_44(7 * v5);
  *v27 = 8;
  v28 = OUTLINED_FUNCTION_23_7(v26, "estimatedDeliveryStartTime");
  (v9)(v28);
  OUTLINED_FUNCTION_3_1(v0 + 8 * v5);
  OUTLINED_FUNCTION_131_3(v29);
  v31 = OUTLINED_FUNCTION_23_7(v30, "estimatedDeliveryEndDate");
  (v9)(v31);
  v32 = OUTLINED_FUNCTION_44(9 * v5);
  *v33 = 10;
  v34 = OUTLINED_FUNCTION_23_7(v32, "estimatedDeliveryEndTime");
  (v9)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v36 = 11;
  *v35 = "deliveryDate";
  v35[1] = 12;
  v37 = OUTLINED_FUNCTION_41(v35);
  (v9)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v0 + 11 * v5);
  *v39 = 12;
  *v38 = "deliveryTime";
  *(v38 + 8) = 12;
  *(v38 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193609168()
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
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193609254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 9);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[5];
  v37 = v3[4];
  v10 = v3[7];
  v35 = v3[6];
  v11 = v3[9];
  v33 = v3[8];
  v12 = v3[11];
  v31 = v3[10];
  v14 = v3[12];
  v13 = v3[13];
  v15 = v3[14];
  v16 = v3[15];
  v17 = v3[17];
  v30 = v3[16];
  v28 = v3[18];
  v40 = v3[19];
  v26 = v3[20];
  v29 = v3[21];
  v25 = v3[22];
  v27 = v3[23];
  v32 = v12;
  v34 = v11;
  v36 = v10;
  if ((v6 & 1) == 0)
  {
    v38 = *v3;
    v39 = *(v3 + 8);
    v18 = v17;
    v19 = v9;
    v20 = v13;
    v21 = v8;
    sub_193447324(&v38, 1, a2, &type metadata for WalletPaymentsCommerceOrderEmail.ShippingInformation.Status, a3, &off_1F07D7C38);
    v8 = v21;
    v13 = v20;
    v9 = v19;
    v17 = v18;
  }

  if (!v4)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_44_18();
    }

    v22 = v40;
    if (v9)
    {
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_44_18();
    }

    if (v36)
    {
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_44_18();
    }

    if (v34)
    {
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_44_18();
    }

    if (v32)
    {
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_44_18();
    }

    if (v13)
    {
      v23 = v17;
      OUTLINED_FUNCTION_37_20();
      v17 = v23;
    }

    if (v16)
    {
      v24 = v17;
      OUTLINED_FUNCTION_37_20();
      v17 = v24;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_37_20();
    }

    if (v22)
    {
      OUTLINED_FUNCTION_37_20();
    }

    if (v29)
    {
      OUTLINED_FUNCTION_37_20();
    }

    if (v27)
    {
      OUTLINED_FUNCTION_37_20();
    }
  }
}

void sub_193609558()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB450);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v33 = OUTLINED_FUNCTION_156();
  *(v33 + 16) = xmmword_193952660;
  v4 = v33 + v0 + dword_1EAEAB488;
  *(v33 + v0) = 0;
  *v4 = "Unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  OUTLINED_FUNCTION_3_1(v33 + v0 + v3);
  OUTLINED_FUNCTION_69_6(v9);
  *v10 = "Shipped";
  v10[1] = 7;
  v11 = OUTLINED_FUNCTION_41(v10);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v33 + v0 + 2 * v3);
  *v13 = 2;
  v14 = OUTLINED_FUNCTION_5_4(v12, "OnTheWay");
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v3);
  *v16 = 3;
  v17 = OUTLINED_FUNCTION_5_4(v15, "OutForDelivery");
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_13((v33 + v0 + 4 * v3));
  v19 = OUTLINED_FUNCTION_23_7(v18, "Delivered");
  (v8)(v19);
  v20 = OUTLINED_FUNCTION_44(5 * v3);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_23_7(v20, "Cancelled");
  (v8)(v22);
  v23 = (v33 + v0 + 6 * v3);
  v24 = (v23 + dword_1EAEAB488);
  *v23 = 6;
  *v24 = "Issue";
  v24[1] = 5;
  v25 = OUTLINED_FUNCTION_41(v24);
  (v8)(v25);
  v26 = OUTLINED_FUNCTION_44(7 * v3);
  *v27 = 7;
  *v26 = "ReadyForPickup";
  v26[1] = 14;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v8)(v28);
  v29 = OUTLINED_FUNCTION_39_3((v33 + v0 + 8 * v3));
  v30 = OUTLINED_FUNCTION_5_4(v29, "PickedUp");
  (v8)(v30);
  v31 = OUTLINED_FUNCTION_44(9 * v3);
  *v32 = 9;
  *v31 = "Processing";
  *(v31 + 8) = 10;
  *(v31 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936098D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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
  OUTLINED_FUNCTION_61_14(&v9[4 * v7]);
  OUTLINED_FUNCTION_42_25(v25);
  *v26 = "givenName";
  v26[1] = 9;
  v27 = OUTLINED_FUNCTION_28_17(v26);
  (v14)(v27);
  v28 = OUTLINED_FUNCTION_61_14(&v9[5 * v7]);
  *v29 = 6;
  *v28 = "familyName";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  (v14)();
  return sub_19393C410();
}

void sub_193609B50()
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

void sub_193609C0C()
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

void sub_193609D94()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB498);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v41 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v41, xmmword_1939526C0);
  OUTLINED_FUNCTION_83_0("street");
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_23_7(v10, "city");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v13 = "state";
  *(v13 + 1) = 5;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v9)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v5);
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_5_4(v15, "postalCode");
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v0 + 4 * v5);
  *v19 = 5;
  *v18 = "country";
  v18[1] = 7;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v5);
  *v22 = 7;
  *v21 = "addressLines";
  v21[1] = 12;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_39_3((v0 + 6 * v5));
  v25 = OUTLINED_FUNCTION_5_4(v24, "locality");
  (v9)(v25);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v26);
  OUTLINED_FUNCTION_131_3(v27);
  v29 = OUTLINED_FUNCTION_23_7(v28, "subLocality");
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v0 + 8 * v5);
  *v31 = 10;
  v32 = OUTLINED_FUNCTION_5_4(v30, "administrativeArea");
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v5);
  *v34 = 11;
  v35 = OUTLINED_FUNCTION_5_4(v33, "subAdministrativeArea");
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v0 + 10 * v5);
  *v37 = 12;
  v38 = OUTLINED_FUNCTION_23_7(v36, "countryCode");
  (v9)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v0 + 11 * v5);
  *v40 = 13;
  *v39 = "rawAddress";
  *(v39 + 8) = 10;
  *(v39 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360A088()
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

uint64_t sub_19360A15C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v23 = v0[8];
  v24 = v0[9];
  v22 = v0[10];
  v20 = v0[11];
  v21 = v0[12];
  v18 = v0[13];
  v19 = v0[14];
  v16 = v0[15];
  v17 = v0[16];
  v14 = v0[17];
  v15 = v0[18];
  v12 = v0[19];
  v13 = v0[20];
  v10 = v0[21];
  v11 = v0[22];
  if (v0[1])
  {
    v8 = *v0;
    result = sub_19393C3C0();
    if (v1)
    {
      return result;
    }
  }

  else if (v1)
  {
    return result;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_37_20();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_37_20();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_37_20();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_37_20();
  }

  result = v22;
  if (*(v22 + 16))
  {
    result = sub_19393C380();
  }

  if (v21)
  {
    result = OUTLINED_FUNCTION_37_20();
  }

  if (v19)
  {
    result = OUTLINED_FUNCTION_37_20();
  }

  if (v17)
  {
    result = OUTLINED_FUNCTION_37_20();
  }

  if (v15)
  {
    result = OUTLINED_FUNCTION_37_20();
  }

  if (v13)
  {
    result = OUTLINED_FUNCTION_37_20();
  }

  if (v11)
  {
    return OUTLINED_FUNCTION_37_20();
  }

  return result;
}

void sub_19360A3A0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4B0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("totalAmount");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  OUTLINED_FUNCTION_36_5(v11, "totalCurrencyCode");
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v13 = "paymentMethod";
  *(v13 + 1) = 13;
  v13[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19360A518()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }
}

void sub_19360A5A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  if (v0[1])
  {
    v6 = *v0;
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
      v7 = *(v0 + 3);
      v8 = *(v0 + 64);
      sub_193447600();
    }
  }
}

void sub_19360A6D4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4C8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("displayName");
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v12 = v1;
  OUTLINED_FUNCTION_36_5(v11, "lastFourDigits");
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_9_4((v0 + 2 * v5));
  *v13 = "isApplePay";
  *(v13 + 1) = 10;
  v13[16] = v1;
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19360A84C()
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
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_19360A8C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  if (v0[1])
  {
    v5 = *v0;
    result = OUTLINED_FUNCTION_181();
  }

  if (!v1)
  {
    if (v3)
    {
      result = OUTLINED_FUNCTION_181();
    }

    if (v4 != 2)
    {
      return sub_19393C2E0();
    }
  }

  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t WalletPaymentsCommerceOrderEmail.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360AB5C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3EF88, &qword_193972100, *(v1 + 28));
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3EF88, &qword_193972100, *(v1 + 28));
}

uint64_t WalletPaymentsCommerceOrderEmail.emailMetadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceOrderEmail.emailType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

uint64_t WalletPaymentsCommerceOrderEmail.emailType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19360ADE8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v2) + 44));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_19350CB08(v4, v5);
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceOrderEmail(0) + 44));
  result = sub_193456418(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.customer.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 48);
  OUTLINED_FUNCTION_72_11(v6);
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x108uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3EF90, &unk_193972400);
}

void *WalletPaymentsCommerceOrderEmail.customer.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 48);
  OUTLINED_FUNCTION_72_11(v5);
  sub_19344E6DC(v5, &qword_1EAE3EF90, &unk_193972400);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x108uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingRecipient.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 52);
  OUTLINED_FUNCTION_72_11(v6);
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x108uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3EF98, &qword_193972108);
}

void *WalletPaymentsCommerceOrderEmail.shippingRecipient.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 52);
  OUTLINED_FUNCTION_72_11(v5);
  sub_19344E6DC(v5, &qword_1EAE3EF98, &qword_193972108);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x108uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingRecipient.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingInformation.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 56)), sizeof(__dst));
  v3 = OUTLINED_FUNCTION_62_5();
  memcpy(v3, v4, 0xC0uLL);
  return sub_193448804(__dst, &v6, &qword_1EAE3EFA0, &unk_193972410);
}

void *WalletPaymentsCommerceOrderEmail.shippingInformation.setter()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(v6, (v0 + *(v2 + 56)), sizeof(v6));
  sub_19344E6DC(v6, &qword_1EAE3EFA0, &unk_193972410);
  v3 = OUTLINED_FUNCTION_60_3();
  return memcpy(v3, v4, 0xC0uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.shippingInformation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19360B274@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.paymentInformation.getter()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 60)), 0x41uLL);
  v3 = OUTLINED_FUNCTION_62_5();
  memcpy(v3, v4, 0x41uLL);
  return sub_193448804(__dst, &v6, &qword_1EAE3EFA8, &qword_193972110);
}

void *WalletPaymentsCommerceOrderEmail.paymentInformation.setter()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v1);
  memcpy(__dst, (v0 + *(v2 + 60)), 0x41uLL);
  sub_19344E6DC(__dst, &qword_1EAE3EFA8, &qword_193972110);
  v3 = OUTLINED_FUNCTION_60_3();
  return memcpy(v3, v4, 0x41uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.paymentInformation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 60);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 64));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightUniqueIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 64);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.spotlightDomainIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 68);
  return OUTLINED_FUNCTION_1_4();
}

void WalletPaymentsCommerceOrderEmail.orderContentType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 72));
}

uint64_t WalletPaymentsCommerceOrderEmail.orderContentType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail(v0) + 72);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360B5A0@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.EmailType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static WalletPaymentsCommerceOrderEmail.EmailType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_19360B624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19360B72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19360B82C@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.OrderContentType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static WalletPaymentsCommerceOrderEmail.OrderContentType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.messageID.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_19360B9D0()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 20));
}

uint64_t sub_19360BA2C()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3A9E8, &qword_19394F800, *(v2 + 20));
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.dateSent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 24));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.subject.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.senderDomain.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3ACA0, &qword_193972420, *(v1 + 32));
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0);
  return OUTLINED_FUNCTION_47_0(&qword_1EAE3ACA0, &qword_193972420, *(v1 + 32));
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.deeplinkURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360BCCC(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19360BD1C()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.fromEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19360BDB0(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_4_4(*(v1 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19360BE00()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_201(*(v5 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.fromDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.toDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 48);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 52));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToEmailAddress.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.getter()
{
  v0 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 56));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v3);
  result = OUTLINED_FUNCTION_201(*(v4 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.replyToDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v0) + 56);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceOrderEmail.EmailMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(v1);
  v3 = v2[5];
  v29 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (v0 + v2[6]);
  v9 = (v0 + v2[7]);
  v10 = v2[8];
  v30 = sub_19393BD10();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = (v0 + v2[9]);
  v28 = (v0 + v2[10]);
  v16 = (v0 + v2[11]);
  v17 = (v0 + v2[12]);
  v18 = v2[14];
  v19 = (v0 + v2[13]);
  v20 = (v0 + v18);
  *v0 = 0;
  v0[1] = 0;
  sub_19344E6DC(v0 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v29);
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  sub_19344E6DC(v0 + v10, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  result = __swift_storeEnumTagSinglePayload(v24, v25, v26, v30);
  *v15 = 0;
  v15[1] = 0;
  *v28 = 0;
  v28[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  return result;
}

void static WalletPaymentsCommerceOrderEmail.EmailMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BD10();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v134 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v130 - v16;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  OUTLINED_FUNCTION_4_1(v136);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v130 - v20;
  v21 = sub_19393BE00();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v130 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v130 - v40;
  v42 = v3[1];
  v43 = v1[1];
  if (v42)
  {
    if (!v43)
    {
      goto LABEL_20;
    }

    v44 = *v3 == *v1 && v42 == v43;
    if (!v44 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v43)
  {
    goto LABEL_20;
  }

  v130 = v4;
  v131 = v7;
  v45 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  v46 = *(v45 + 20);
  v47 = v3;
  v48 = *(v36 + 48);
  v132 = v45;
  v133 = v47;
  sub_193448804(v47 + v46, v41, &qword_1EAE3A9E8, &qword_19394F800);
  v49 = v1 + v46;
  v50 = v1;
  sub_193448804(v49, &v41[v48], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v41, 1, v21);
  if (v44)
  {
    OUTLINED_FUNCTION_6_3(&v41[v48], 1, v21);
    if (v44)
    {
      sub_19344E6DC(v41, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_22;
    }

LABEL_18:
    v52 = &qword_1EAE3B968;
    v53 = &qword_193972430;
    v54 = v41;
LABEL_19:
    sub_19344E6DC(v54, v52, v53);
    goto LABEL_20;
  }

  sub_193448804(v41, v35, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v41[v48], 1, v21);
  if (v51)
  {
    (*(v24 + 8))(v35, v21);
    goto LABEL_18;
  }

  (*(v24 + 32))(v29, &v41[v48], v21);
  OUTLINED_FUNCTION_21_25();
  sub_19360C97C(v55, v56);
  v57 = sub_19393C550();
  v58 = *(v24 + 8);
  v58(v29, v21);
  v58(v35, v21);
  sub_19344E6DC(v41, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v57 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v60 = v132;
  v59 = v133;
  v61 = v132[6];
  OUTLINED_FUNCTION_1_2();
  if (v64)
  {
    v65 = v131;
    if (!v62)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v63);
    v68 = v44 && v66 == v67;
    if (!v68 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v65 = v131;
    if (v62)
    {
      goto LABEL_20;
    }
  }

  v69 = v60[7];
  OUTLINED_FUNCTION_1_2();
  if (v72)
  {
    if (!v70)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v71);
    v75 = v44 && v73 == v74;
    if (!v75 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v70)
  {
    goto LABEL_20;
  }

  v76 = v60[8];
  v77 = v137;
  v78 = *(v136 + 48);
  OUTLINED_FUNCTION_79_1(v59 + v76, v137);
  OUTLINED_FUNCTION_79_1(v50 + v76, v77 + v78);
  v79 = v130;
  OUTLINED_FUNCTION_6_3(v77, 1, v130);
  if (!v44)
  {
    v80 = v135;
    sub_193448804(v77, v135, &qword_1EAE3ACA0, &qword_193972420);
    OUTLINED_FUNCTION_6_3(v77 + v78, 1, v79);
    if (!v81)
    {
      v82 = v77 + v78;
      v83 = v134;
      (*(v65 + 32))(v134, v82, v79);
      OUTLINED_FUNCTION_20_25();
      sub_19360C97C(v84, v85);
      v86 = sub_19393C550();
      v87 = *(v65 + 8);
      v87(v83, v79);
      v87(v80, v79);
      sub_19344E6DC(v77, &qword_1EAE3ACA0, &qword_193972420);
      if ((v86 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_50;
    }

    (*(v65 + 8))(v80, v79);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_6_3(v77 + v78, 1, v79);
  if (!v44)
  {
LABEL_48:
    v52 = &qword_1EAE3F118;
    v53 = &qword_193972428;
    v54 = v77;
    goto LABEL_19;
  }

  sub_19344E6DC(v77, &qword_1EAE3ACA0, &qword_193972420);
LABEL_50:
  v88 = v60[9];
  OUTLINED_FUNCTION_1_2();
  if (v91)
  {
    if (!v89)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v90);
    v94 = v44 && v92 == v93;
    if (!v94 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v89)
  {
    goto LABEL_20;
  }

  v95 = v60[10];
  OUTLINED_FUNCTION_1_2();
  if (v98)
  {
    if (!v96)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v97);
    v101 = v44 && v99 == v100;
    if (!v101 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v96)
  {
    goto LABEL_20;
  }

  v102 = v60[11];
  OUTLINED_FUNCTION_1_2();
  if (v105)
  {
    if (!v103)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v104);
    v108 = v44 && v106 == v107;
    if (!v108 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v103)
  {
    goto LABEL_20;
  }

  v109 = v60[12];
  OUTLINED_FUNCTION_1_2();
  if (v112)
  {
    if (!v110)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v111);
    v115 = v44 && v113 == v114;
    if (!v115 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v110)
  {
    goto LABEL_20;
  }

  v116 = v60[13];
  OUTLINED_FUNCTION_1_2();
  if (v119)
  {
    if (!v117)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5(v118);
    v122 = v44 && v120 == v121;
    if (!v122 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v117)
  {
    goto LABEL_20;
  }

  v123 = v60[14];
  OUTLINED_FUNCTION_1_2();
  if (v126 && v124)
  {
    OUTLINED_FUNCTION_5(v125);
    if (!v44 || v127 != v128)
    {
      sub_19393CA30();
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19360C97C(unint64_t *a1, void (*a2)(uint64_t))
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

void WalletPaymentsCommerceOrderEmail.EmailMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v1 = sub_19393BD10();
  v2 = OUTLINED_FUNCTION_0(v1);
  v50 = v3;
  v51 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v49 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = sub_19393BE00();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  if (v0[1])
  {
    v29 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v30 = type metadata accessor for WalletPaymentsCommerceOrderEmail.EmailMetadata(0);
  sub_193448804(v0 + v30[5], v28, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v28, 1, v14);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v17 + 32))(v22, v28, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_21_25();
    sub_19360C97C(v32, v33);
    sub_19393C540();
    (*(v17 + 8))(v22, v14);
  }

  v34 = v51;
  v35 = (v0 + v30[6]);
  if (v35[1])
  {
    OUTLINED_FUNCTION_7_1(v35);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v36 = (v0 + v30[7]);
  if (v36[1])
  {
    OUTLINED_FUNCTION_7_1(v36);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_193448804(v0 + v30[8], v13, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v13, 1, v34);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v38 = v49;
    v37 = v50;
    (*(v50 + 32))(v49, v13, v34);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_25();
    sub_19360C97C(v39, v40);
    sub_19393C540();
    (*(v37 + 8))(v38, v34);
  }

  OUTLINED_FUNCTION_5_0(v30[9]);
  if (v34)
  {
    OUTLINED_FUNCTION_7_1(v41);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[10]);
  if (v34)
  {
    OUTLINED_FUNCTION_7_1(v42);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[11]);
  if (v34)
  {
    OUTLINED_FUNCTION_7_1(v43);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[12]);
  if (v34)
  {
    OUTLINED_FUNCTION_7_1(v44);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v30[13]);
  if (v34)
  {
    OUTLINED_FUNCTION_7_1(v45);
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v46 = (v0 + v30[14]);
  if (v46[1])
  {
    v47 = *v46;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::Merchant __swiftcall WalletPaymentsCommerceOrderEmail.Merchant.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.displayName.value._object = v2;
  result.displayName.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static WalletPaymentsCommerceOrderEmail.Merchant.== infix(_:_:)(void *a1, void *a2)
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

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.hash(into:)()
{
  if (!v0[1])
  {
    return sub_19393CAD0();
  }

  v1 = *v0;
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.Merchant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_73_16();
  }

  return sub_19393CB00();
}

uint64_t sub_19360D030()
{
  v1 = *v0;
  v2 = v0[1];
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_73_16();
  }

  return sub_19393CB00();
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.carrierName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingMethod.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingDate.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingTime.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartDate.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartTime.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndDate.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndTime.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryDate.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryTime.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

void WalletPaymentsCommerceOrderEmail.ShippingInformation.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  bzero((a1 + 16), 0xB0uLL);
}

uint64_t sub_19360D660@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19360D688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

BOOL static WalletPaymentsCommerceOrderEmail.ShippingInformation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v234 = a1[2];
  v245 = a1[3];
  v226 = a1[4];
  v243 = a1[5];
  v222 = a1[6];
  v228 = a1[7];
  v219 = a1[8];
  v224 = a1[9];
  v2 = a1[10];
  v221 = a1[11];
  v3 = a1[12];
  v4 = a1[13];
  v6 = a1[14];
  v5 = a1[15];
  v7 = a1[16];
  v8 = a1[17];
  v9 = a1[19];
  v216 = a1[18];
  v10 = a1[20];
  v11 = a1[21];
  v12 = a1[22];
  v13 = a1[23];
  v14 = *(a2 + 9);
  v15 = a2[3];
  v229 = a2[2];
  v225 = a2[4];
  v242 = a2[5];
  v244 = a2[6];
  v227 = a2[7];
  v223 = a2[9];
  v217 = a2[10];
  v218 = a2[8];
  v16 = a2[12];
  v220 = a2[11];
  v18 = a2[13];
  v17 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  v22 = a2[17];
  v21 = a2[18];
  v23 = a2[19];
  v24 = a2[20];
  v26 = a2[21];
  v25 = a2[22];
  v27 = a2[23];
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

    v142 = a1[20];
    v143 = a1[19];
    v184 = a2[21];
    v255 = *a1;
    v256 = a1[1] & 1;
    v253 = *a2;
    v254 = a2[1] & 1;
    v191 = a1[21];
    v28 = a2[23];
    v29 = a1[23];
    v168 = a1[15];
    v175 = a2[19];
    v150 = a2[13];
    v156 = a1[13];
    v30 = a2[22];
    v207 = a2[18];
    v31 = a1[16];
    v140 = a1[17];
    v141 = a2[16];
    v32 = a2[17];
    v33 = a1[14];
    v144 = a2[12];
    v34 = a2[15];
    v139 = a2[14];
    v162 = a1[12];
    v199 = a2[20];
    v35 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
    v36 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter();
    v17 = v139;
    v3 = v162;
    v5 = v168;
    v19 = v34;
    v9 = v143;
    v16 = v144;
    v6 = v33;
    v8 = v140;
    v20 = v141;
    v22 = v32;
    v7 = v31;
    v23 = v175;
    v37 = v35 == v36;
    v13 = v29;
    v27 = v28;
    v25 = v30;
    v18 = v150;
    v4 = v156;
    v10 = v142;
    v26 = v184;
    v11 = v191;
    v24 = v199;
    v21 = v207;
    if (!v37)
    {
      return 0;
    }
  }

  if (v245)
  {
    if (!v15)
    {
      return 0;
    }

    v37 = v234 == v229 && v245 == v15;
    if (!v37)
    {
      v208 = v21;
      v192 = v11;
      v246 = v27;
      v235 = v13;
      v169 = v5;
      v176 = v23;
      v38 = v9;
      v200 = v24;
      v185 = v26;
      v39 = v10;
      v151 = v18;
      v157 = v4;
      v40 = v25;
      v41 = v7;
      v145 = v16;
      v42 = v8;
      v43 = v22;
      v44 = v20;
      v45 = v6;
      v230 = v19;
      v46 = v17;
      v163 = v3;
      v47 = sub_19393CA30();
      v3 = v163;
      v5 = v169;
      v17 = v46;
      v19 = v230;
      v13 = v235;
      v6 = v45;
      v20 = v44;
      v22 = v43;
      v8 = v42;
      v7 = v41;
      v4 = v157;
      v24 = v200;
      v21 = v208;
      v25 = v40;
      v16 = v145;
      v18 = v151;
      v10 = v39;
      v26 = v185;
      v23 = v176;
      v27 = v246;
      v11 = v192;
      v9 = v38;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v243)
  {
    v48 = v244;
    if (!v242)
    {
      return 0;
    }

    if (v226 != v225 || v243 != v242)
    {
      v209 = v21;
      v193 = v11;
      v247 = v27;
      v236 = v13;
      v170 = v5;
      v177 = v23;
      v50 = v9;
      v201 = v24;
      v186 = v26;
      v51 = v10;
      v152 = v18;
      v158 = v4;
      v52 = v25;
      v53 = v7;
      v146 = v16;
      v54 = v8;
      v55 = v22;
      v56 = v20;
      v57 = v6;
      v231 = v19;
      v58 = v17;
      v164 = v3;
      v59 = sub_19393CA30();
      v3 = v164;
      v5 = v170;
      v17 = v58;
      v19 = v231;
      v13 = v236;
      v6 = v57;
      v20 = v56;
      v22 = v55;
      v8 = v54;
      v7 = v53;
      v4 = v158;
      v24 = v201;
      v21 = v209;
      v25 = v52;
      v16 = v146;
      v18 = v152;
      v10 = v51;
      v26 = v186;
      v23 = v177;
      v11 = v193;
      v9 = v50;
      v48 = v244;
      v27 = v247;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v48 = v244;
    if (v242)
    {
      return 0;
    }
  }

  if (v228)
  {
    if (!v227)
    {
      return 0;
    }

    if (v222 != v48 || v228 != v227)
    {
      v210 = v21;
      v194 = v11;
      v248 = v27;
      v237 = v13;
      v171 = v5;
      v178 = v23;
      v61 = v9;
      v202 = v24;
      v187 = v26;
      v62 = v10;
      v153 = v18;
      v159 = v4;
      v63 = v25;
      v64 = v7;
      v147 = v16;
      v65 = v8;
      v66 = v22;
      v67 = v20;
      v68 = v6;
      v232 = v19;
      v69 = v17;
      v165 = v3;
      v70 = sub_19393CA30();
      v3 = v165;
      v5 = v171;
      v17 = v69;
      v19 = v232;
      v13 = v237;
      v6 = v68;
      v20 = v67;
      v22 = v66;
      v8 = v65;
      v7 = v64;
      v4 = v159;
      v24 = v202;
      v21 = v210;
      v25 = v63;
      v16 = v147;
      v18 = v153;
      v10 = v62;
      v26 = v187;
      v23 = v178;
      v27 = v248;
      v11 = v194;
      v9 = v61;
      if ((v70 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v227)
  {
    return 0;
  }

  if (v224)
  {
    if (!v223)
    {
      return 0;
    }

    if (v219 != v218 || v224 != v223)
    {
      v211 = v21;
      v195 = v11;
      v249 = v27;
      v238 = v13;
      v172 = v5;
      v179 = v23;
      v72 = v9;
      v203 = v24;
      v188 = v26;
      v73 = v10;
      v154 = v18;
      v160 = v4;
      v74 = v25;
      v75 = v7;
      v148 = v16;
      v76 = v8;
      v77 = v22;
      v78 = v20;
      v79 = v6;
      v233 = v19;
      v80 = v17;
      v166 = v3;
      v81 = sub_19393CA30();
      v3 = v166;
      v5 = v172;
      v17 = v80;
      v19 = v233;
      v13 = v238;
      v6 = v79;
      v20 = v78;
      v22 = v77;
      v8 = v76;
      v7 = v75;
      v4 = v160;
      v24 = v203;
      v21 = v211;
      v25 = v74;
      v16 = v148;
      v18 = v154;
      v10 = v73;
      v26 = v188;
      v23 = v179;
      v27 = v249;
      v11 = v195;
      v9 = v72;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v223)
  {
    return 0;
  }

  if (v221)
  {
    if (!v220)
    {
      return 0;
    }

    if (v2 != v217 || v221 != v220)
    {
      v212 = v21;
      v196 = v11;
      v250 = v27;
      v239 = v13;
      v173 = v5;
      v180 = v23;
      v83 = v9;
      v204 = v24;
      v182 = v12;
      v189 = v26;
      v84 = v10;
      v155 = v18;
      v161 = v4;
      v85 = v25;
      v86 = v7;
      v149 = v16;
      v87 = v8;
      v88 = v22;
      v89 = v20;
      v90 = v6;
      v91 = v19;
      v92 = v17;
      v167 = v3;
      v93 = sub_19393CA30();
      v3 = v167;
      v5 = v173;
      v17 = v92;
      v19 = v91;
      v6 = v90;
      v20 = v89;
      v22 = v88;
      v8 = v87;
      v7 = v86;
      v4 = v161;
      v24 = v204;
      v21 = v212;
      v25 = v85;
      v16 = v149;
      v18 = v155;
      v10 = v84;
      v12 = v182;
      v26 = v189;
      v23 = v180;
      v13 = v239;
      v27 = v250;
      v11 = v196;
      v9 = v83;
      if ((v93 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v220)
  {
    return 0;
  }

  if (v4)
  {
    if (!v18)
    {
      return 0;
    }

    if (v3 != v16 || v4 != v18)
    {
      v213 = v21;
      v197 = v11;
      v251 = v27;
      v240 = v13;
      v174 = v5;
      v181 = v23;
      v95 = v9;
      v205 = v24;
      v183 = v12;
      v190 = v26;
      v96 = v10;
      v97 = v25;
      v98 = v7;
      v99 = v8;
      v100 = v22;
      v101 = v20;
      v102 = v6;
      v103 = v19;
      v104 = v17;
      v105 = sub_19393CA30();
      v17 = v104;
      v19 = v103;
      v5 = v174;
      v23 = v181;
      v6 = v102;
      v20 = v101;
      v22 = v100;
      v8 = v99;
      v7 = v98;
      v24 = v205;
      v21 = v213;
      v25 = v97;
      v10 = v96;
      v12 = v183;
      v26 = v190;
      v13 = v240;
      v27 = v251;
      v11 = v197;
      v9 = v95;
      if ((v105 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v5)
  {
    if (!v19)
    {
      return 0;
    }

    if (v6 != v17 || v5 != v19)
    {
      v214 = v21;
      v198 = v11;
      v252 = v27;
      v241 = v13;
      v107 = v23;
      v108 = v9;
      v206 = v24;
      v109 = v12;
      v110 = v26;
      v111 = v10;
      v112 = v25;
      v113 = v7;
      v114 = v8;
      v115 = v22;
      v116 = v20;
      v117 = sub_19393CA30();
      v20 = v116;
      v22 = v115;
      v8 = v114;
      v7 = v113;
      v25 = v112;
      v10 = v111;
      v26 = v110;
      v12 = v109;
      v24 = v206;
      v21 = v214;
      v23 = v107;
      v13 = v241;
      v27 = v252;
      v11 = v198;
      v9 = v108;
      if ((v117 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v8)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v20 || v8 != v22)
    {
      v215 = v21;
      v119 = v11;
      v120 = v27;
      v121 = v13;
      v122 = v23;
      v123 = v9;
      v124 = v24;
      v125 = v12;
      v126 = v26;
      v127 = v10;
      v128 = v25;
      v129 = sub_19393CA30();
      v21 = v215;
      v25 = v128;
      v10 = v127;
      v26 = v126;
      v12 = v125;
      v24 = v124;
      v23 = v122;
      v13 = v121;
      v27 = v120;
      v11 = v119;
      v9 = v123;
      if ((v129 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v9)
  {
    if (!v23)
    {
      return 0;
    }

    if (v216 != v21 || v9 != v23)
    {
      v131 = v10;
      v132 = v25;
      v133 = sub_19393CA30();
      v25 = v132;
      v10 = v131;
      if ((v133 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v11)
  {
    if (!v26)
    {
      return 0;
    }

    if (v10 != v24 || v11 != v26)
    {
      v135 = v25;
      v136 = sub_19393CA30();
      v25 = v135;
      if ((v136 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v13)
  {
    if (!v27)
    {
      return 0;
    }

    v137 = v12 == v25 && v13 == v27;
    return v137 || (sub_19393CA30() & 1) != 0;
  }

  return !v27;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)()
{
  v1 = v0[3];
  v20 = v0[5];
  v21 = v0[7];
  v2 = v0[8];
  v22 = v0[9];
  v23 = v0[11];
  v19 = v0[14];
  v24 = v0[13];
  v25 = v0[15];
  v3 = v0[17];
  v15 = v0[12];
  v16 = v0[16];
  v17 = v0[18];
  v28 = v0[19];
  v4 = v0[20];
  v18 = v0[22];
  v26 = v0[21];
  v27 = v0[23];
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(v0 + 8);
    v14 = v0[17];
    v6 = v0[4];
    v7 = v0[10];
    v8 = v0[6];
    v9 = v0[2];
    v10 = *v0;
    v11 = OUTLINED_FUNCTION_103_0();
    v12 = WalletPaymentsCommerceOrderEmail.ShippingInformation.Status.rawValue.getter(v11);
    MEMORY[0x193B18030](v12);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v20)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v21)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v25)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
LABEL_23:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_26:
  if (v28)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!v27)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingInformation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19360E350()
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.ShippingInformation.hash(into:)();
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.fullName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.emailAddress.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *WalletPaymentsCommerceOrderEmail.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F130, &qword_193972438);
  return memcpy((v1 + 48), a1, 0xB8uLL);
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.givenName.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.familyName.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 256);

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV7addressAC7AddressVSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0xB8uLL);
  memcpy(a1, (v1 + 48), 0xB8uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F130, &qword_193972438);
}

double _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientVAEycfC_0@<D0>(_OWORD *a1@<X8>)
{
  sub_19360E4F0(v3);
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F130, &qword_193972438);
  memcpy(a1 + 3, v3, 0xB8uLL);
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

void _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v67 = v2[4];
  v70 = v2[2];
  v76 = v2[5];
  OUTLINED_FUNCTION_43_4(v129);
  v7 = v3[29];
  v55 = v3[31];
  v58 = v3[32];
  v61 = v3[30];
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v64 = v1[4];
  v73 = v1[5];
  OUTLINED_FUNCTION_59_15(v130);
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
      v49 = v7;
      v52 = v1[32];
      v17 = v1[31];
      v18 = v1[29];
      v19 = v1[30];
      v20 = sub_19393CA30();
      v13 = v18;
      v7 = v49;
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

    if (v70 != v10 || v6 != v11)
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

  if (v76)
  {
    if (!v73)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_45_3();
    v24 = v67 == v64 && v22 == v23;
    if (!v24 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_3();
    if (v73)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_43_4(__src);
  OUTLINED_FUNCTION_59_15(&__src[184]);
  OUTLINED_FUNCTION_43_4(v128);
  if (sub_1934754E0(v128) != 1)
  {
    OUTLINED_FUNCTION_43_4(v126);
    OUTLINED_FUNCTION_59_15(__dst);
    if (sub_1934754E0(__dst) != 1)
    {
      v25 = static WalletPaymentsCommerceOrderEmail.Address.== infix(_:_:)(v3 + 6, v1 + 6);
      OUTLINED_FUNCTION_59_15(&v79);
      OUTLINED_FUNCTION_50_15(v129, v26, v27, v28, v29, v30, v31, v32, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      OUTLINED_FUNCTION_50_15(v130, v33, v34, v35, v36, v37, v38, v39, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      OUTLINED_FUNCTION_50_15(v126, v40, v41, v42, v43, v44, v45, v46, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
      sub_19360E66C(&v79);
      OUTLINED_FUNCTION_43_4(&v102);
      sub_19360E66C(&v102);
      OUTLINED_FUNCTION_43_4(v124);
      sub_19344E6DC(v124, &qword_1EAE3F130, &qword_193972438);
      if ((v25 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_43_4(v124);
    OUTLINED_FUNCTION_79_1(v129, &v102);
    OUTLINED_FUNCTION_79_1(v130, &v102);
    OUTLINED_FUNCTION_79_1(v126, &v102);
    sub_19360E66C(v124);
LABEL_34:
    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3F138, &qword_193972440);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_15(__dst);
  if (sub_1934754E0(__dst) != 1)
  {
    OUTLINED_FUNCTION_79_1(v129, v126);
    OUTLINED_FUNCTION_79_1(v130, v126);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_43_4(v126);
  OUTLINED_FUNCTION_79_1(v129, v124);
  OUTLINED_FUNCTION_79_1(v130, v124);
  sub_19344E6DC(v126, &qword_1EAE3F130, &qword_193972438);
LABEL_37:
  if (v61)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v47 = v6 == v11 && v61 == v10;
    if (!v47 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v58 && v9 && (v55 != v7 || v58 != v9))
  {
    sub_19393CA30();
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary32WalletPaymentsCommerceOrderEmailV17ShippingRecipientV4hash4intoys6HasherVz_tF_0()
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
  sub_1936046C4(v12, v13);
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v2);
  memcpy(v13, v0 + 6, sizeof(v13));
  sub_19360E66C(v13);
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

uint64_t sub_19360ED88(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19360EDE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.state.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.state.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.postalCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.country.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.addressLines.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.locality.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subLocality.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.administrativeArea.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subAdministrativeArea.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.countryCode.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.rawAddress.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.rawAddress.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceOrderEmail.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::Address *__return_ptr retstr)
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

uint64_t static WalletPaymentsCommerceOrderEmail.Address.== infix(_:_:)(void *a1, void *a2)
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

void WalletPaymentsCommerceOrderEmail.Address.hash(into:)(uint64_t a1)
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

LABEL_26:
    sub_19393CAD0();
    OUTLINED_FUNCTION_191();
    return;
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
    goto LABEL_26;
  }

LABEL_18:
  sub_19393CAD0();
  OUTLINED_FUNCTION_191();

  sub_19393C640();
}

uint64_t WalletPaymentsCommerceOrderEmail.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19360FC00()
{
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.totalCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.paymentMethod.getter@<X0>(uint64_t a1@<X8>)
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

__n128 WalletPaymentsCommerceOrderEmail.PaymentInformation.paymentMethod.setter(uint64_t a1)
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

void __swiftcall WalletPaymentsCommerceOrderEmail.PaymentInformation.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::PaymentInformation *__return_ptr retstr)
{
  retstr->totalAmount = 0u;
  retstr->totalCurrencyCode = 0u;
  sub_1934D16DC(0, 1);
  retstr->paymentMethod.value.displayName = xmmword_1939526A0;
  retstr->paymentMethod.value.lastFourDigits.value._countAndFlagsBits = 0;
  retstr->paymentMethod.value.lastFourDigits.value._object = 0;
  retstr->paymentMethod.value.isApplePay.value = 0;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceOrderEmail::PaymentInformation::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName = 0u;
  retstr->lastFourDigits = 0u;
  retstr->isApplePay.value = 2;
}

uint64_t static WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  if (v0[1])
  {
    v4 = *v0;
    sub_19393CAD0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_73_16();
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

uint64_t WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hashValue.getter()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936100EC()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.hash(into:)();
  return sub_19393CB00();
}

void static WalletPaymentsCommerceOrderEmail.PaymentInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (!v3)
  {
    if (v11)
    {
      goto LABEL_26;
    }

LABEL_10:
    if (v5)
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      if (v4 != v12 || v5 != v14)
      {
        v28 = v10;
        v29 = v18;
        v30 = v15;
        v31 = v13;
        v32 = sub_19393CA30();
        v13 = v31;
        v15 = v30;
        v18 = v29;
        v10 = v28;
        if ((v32 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_26;
    }

    if (v8 == 1)
    {
      v33 = OUTLINED_FUNCTION_63_11();
      sub_1934D1694(v33, v34);
      if (v16 == 1)
      {
        v35 = OUTLINED_FUNCTION_64_13();
        sub_1934D1694(v35, v36);
        v37 = OUTLINED_FUNCTION_63_11();
        sub_1934D16DC(v37, v38);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_42_26();
      sub_1934D1694(v45, v46);
    }

    else
    {
      v65[0] = v6;
      v65[1] = v8;
      v65[2] = v7;
      v65[3] = v9;
      v66 = v10;
      if (v16 != 1)
      {
        v63[0] = v13;
        v63[1] = v16;
        v63[2] = v15;
        v63[3] = v17;
        v64 = v18;
        static WalletPaymentsCommerceOrderEmail.PaymentInformation.PaymentMethod.== infix(_:_:)(v65, v63);
        v51 = OUTLINED_FUNCTION_2_43();
        sub_1934D1694(v51, v52);
        OUTLINED_FUNCTION_42_26();
        sub_1934D1694(v53, v54);
        v55 = OUTLINED_FUNCTION_2_43();
        sub_1934D1694(v55, v56);

        v57 = OUTLINED_FUNCTION_2_43();
        sub_1934D16DC(v57, v58);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_98();
      sub_1934D1694(v39, v40);
      v41 = OUTLINED_FUNCTION_64_13();
      sub_1934D1694(v41, v42);
      v43 = OUTLINED_FUNCTION_2_43();
      sub_1934D1694(v43, v44);
    }

    v47 = OUTLINED_FUNCTION_2_43();
    sub_1934D16DC(v47, v48);
    OUTLINED_FUNCTION_42_26();
    sub_1934D16DC(v49, v50);
    goto LABEL_26;
  }

  if (v11)
  {
    if (*a1 == *a2 && v3 == v11)
    {
      goto LABEL_10;
    }

    v61 = *(a2 + 40);
    v62 = *(a1 + 40);
    v59 = *(a2 + 56);
    v60 = *(a1 + 56);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v23 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = *(a2 + 32);
    v26 = sub_19393CA30();
    v13 = v25;
    v15 = v24;
    v18 = v23;
    v10 = v22;
    v7 = v21;
    v6 = v20;
    v17 = v59;
    v9 = v60;
    v16 = v61;
    v8 = v62;
    if (v26)
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_191();
}

void WalletPaymentsCommerceOrderEmail.PaymentInformation.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  if (v0[1])
  {
    v8 = *v0;
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
    OUTLINED_FUNCTION_98();
    sub_19393C640();
    if (v6)
    {
LABEL_9:
      sub_19393CAD0();
      OUTLINED_FUNCTION_73_16();
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
  OUTLINED_FUNCTION_116();
}