uint64_t sub_21401CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  sub_213FB2E54(a1 + *(v14 + 44), v8, &unk_27C9036F0, "а\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C9036F0, "а\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  sub_214027000(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
}

uint64_t sub_21401CEA4(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_21401CF1C(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_21401CF94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + v4) = 2;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  *(a2 + a1[9]) = xmmword_2146E68C0;
  v10 = a2 + v9;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[11];
  v12 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  result = (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v14 = a1[13];
  *(a2 + a1[12]) = 2;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_21401D0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DD0, type metadata accessor for CSDMConversationActivityMetadataProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21401D158(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21401D1C4()
{
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto);

  return sub_2146D9008();
}

uint64_t sub_21401D244()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19860);
  __swift_project_value_buffer(v0, qword_27CA19860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146E6960;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "identifierUUIDString";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "applicationContext";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bundleIdentifier";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activityIdentifier";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "metadata";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "activityContext";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "originatorHandle";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "updatedDateEpochTime";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "fallbackApplicationName";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "activityMetadata";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "isSystemActivity";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "timestampAsTimeIntervalSinceReferenceDate";
  *(v28 + 1) = 41;
  v28[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21401D6B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xF000000000000000;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xF000000000000000;
  v1 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v2 = type metadata accessor for CSDMConversationActivityContextProto(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v4 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v8 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity) = 2;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  *v9 = 0;
  *(v9 + 8) = 1;
  return v0;
}

void *sub_21401D814()
{
  v1 = v0[3];

  sub_213FDC6BC(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[9];

  sub_213FDC6BC(v0[10], v0[11]);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext, &qword_27C903DA0, &qword_2146E9880);
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle, &unk_27C903788, "Į\r");
  v4 = *(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName + 8);

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata, &qword_27C903D90, &qword_2146E9870);
  return v0;
}

uint64_t sub_21401D8E0(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_21401D960()
{
  sub_21400E518(319, &qword_27C903658, type metadata accessor for CSDMConversationActivityContextProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21400E518(319, &unk_27C903660, type metadata accessor for CSDMConversationActivityMetadataProto, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_21401DC8C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21400E518(319, &qword_27C903710, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21401DEE8()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21401E02C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  sub_2146D8DF8();
  if (v11 <= 0x3F)
  {
    sub_21402F448(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      sub_21402F448(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CSDMConversationMessageProto.ConversationMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationMessageProto.ConversationMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_749Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_750Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_21401E4E0()
{
  sub_21400E518(319, &qword_27C9037A8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21402F448(319, &qword_27C9037B0, &type metadata for CSDMConversationLinkProto.ConversationLinkLifetimeScope, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for CSDMConversationLinkProto.ConversationLinkLifetimeScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSDMConversationLinkProto.ConversationLinkLifetimeScope(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21401E900()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_27C9037D8, &type metadata for CSDMCallMessageProto.CallMessageType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21400E518(319, &qword_27C9037E0, type metadata accessor for CSDMAVConferenceInviteDataProto, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDChipType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDChipType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_21401EC44()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_778Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 4;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_779Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

void sub_21401EEB8()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21402F448(319, &unk_27C903810, &type metadata for CSDMConversationParticipantDidLeaveContextProto.LeaveReason, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21401F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_2146D8DF8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21401F140()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B2E320, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21401F2E0()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C903878, type metadata accessor for CSDMConversationActivityProto, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21401F434()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_27C903898, &type metadata for CSDMHandleProto.HandleType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDOpenWebViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDOpenWebViewMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_849Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_850Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_21401F828()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_793Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_794Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21401FBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 7)
      {
        if (result > 10)
        {
          switch(result)
          {
            case 11:
              sub_21402035C();
              break;
            case 12:
              sub_214020438(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity);
              break;
            case 13:
              sub_2140204C0(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
              break;
          }
        }

        else if (result == 8)
        {
          sub_2140201E8();
        }

        else if (result == 9)
        {
          sub_2140204C0(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
        }

        else
        {
          sub_2140202C4(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName, MEMORY[0x277D217D0]);
        }
      }

      else if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_214020004();
            break;
          case 5:
            sub_214020088();
            break;
          case 7:
            sub_21402010C();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_21401FE70();
            break;
          case 2:
            sub_21401FEF4(a2, a1, a3, a4, MEMORY[0x277D21760]);
            break;
          case 3:
            sub_21401FF80();
            break;
        }
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21401FE70()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21401FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 32, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21401FF80()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214020004()
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_214020088()
{
  swift_beginAccess();
  sub_2146D8EC8();
  return swift_endAccess();
}

uint64_t sub_21402010C()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivityContextProto(0);
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_2140201E8()
{
  swift_beginAccess();
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_2140202C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21402035C()
{
  swift_beginAccess();
  type metadata accessor for CSDMConversationActivityMetadataProto(0);
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_214020438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_2146D8E98();
  return swift_endAccess();
}

uint64_t sub_2140204C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_2146D8F28();
  return swift_endAccess();
}

uint64_t sub_214020548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2140206BC(a1);
  if (!v4)
  {
    sub_214020758(a1);
    sub_214020804(a1);
    sub_2140208A0(a1);
    sub_21402094C(a1);
    sub_2140209F8(a1, a2, a3, a4);
    sub_214020C14(a1, a2, a3, a4);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
    sub_214020EE0(a1, a2, a3, a4);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity);
    return sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  }

  return result;
}

uint64_t sub_2140206BC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214020758(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 40);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 32);
    sub_21402D9F8(v4, v3);
    sub_2146D9048();
    return sub_213FDC6BC(v4, v3);
  }

  return result;
}

uint64_t sub_214020804(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_2140208A0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 72))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21402094C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 88);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 80);
    sub_21402D9F8(v4, v3);
    sub_2146D9048();
    return sub_213FDC6BC(v4, v3);
  }

  return result;
}

uint64_t sub_2140209F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903DA0, &qword_2146E9880);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903DA0, &qword_2146E9880);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivityContextProto);
  sub_214027000(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivityContextProto);
}

uint64_t sub_214020C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMHandleProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &unk_27C903788, "Į\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214020E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214020EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  sub_213FB2E54(a1 + v14, v8, &qword_27C903D90, &qword_2146E9870);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C903D90, &qword_2146E9870);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_214027000(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivityMetadataProto);
}

uint64_t sub_2140210FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214021198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214021228(void *a1, void *a2)
{
  v4 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v131 = *(v4 - 8);
  v5 = *(v131 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D88, &qword_2146E9868);
  v8 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v10 = &v126 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v129 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v138 = &v126 - v15;
  v16 = type metadata accessor for CSDMHandleProto(0);
  v135 = *(v16 - 8);
  v136 = v16;
  v17 = *(v135 + 64);
  MEMORY[0x28223BE20](v16);
  v132 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v19 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v137 = &v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v144 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v140 = &v126 - v25;
  v26 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v141 = *(v26 - 8);
  v142 = v26;
  v27 = *(v141 + 64);
  MEMORY[0x28223BE20](v26);
  v133 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D98, &qword_2146E9878);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v143 = &v126 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v139 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v126 - v36;
  swift_beginAccess();
  v38 = a1[2];
  v39 = a1[3];
  swift_beginAccess();
  v40 = a2[3];
  if (v39)
  {
    if (!v40 || (v38 != a2[2] || v39 != v40) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v126 = v7;
  v127 = v4;
  v128 = v10;
  swift_beginAccess();
  v42 = a1[4];
  v41 = a1[5];
  swift_beginAccess();
  v44 = a2[4];
  v43 = a2[5];
  if (v41 >> 60 == 15)
  {
    if (v43 >> 60 == 15)
    {

      sub_213FDCA18(v42, v41);
      sub_213FDCA18(v44, v43);
      sub_213FDC6BC(v42, v41);
      goto LABEL_13;
    }

    sub_213FDCA18(v42, v41);
    sub_213FDCA18(v44, v43);
LABEL_20:
    sub_213FDC6BC(v42, v41);
    v49 = v44;
    v50 = v43;
LABEL_21:
    sub_213FDC6BC(v49, v50);
    return 0;
  }

  sub_213FDCA18(v42, v41);
  sub_213FDCA18(v44, v43);
  if (v43 >> 60 == 15)
  {
    goto LABEL_20;
  }

  sub_213FDCA18(v42, v41);
  sub_213FDCA18(v44, v43);
  v45 = sub_214466780(v42, v41, v44, v43);
  sub_213FDC6BC(v44, v43);
  sub_213FDC6BC(v42, v41);
  sub_213FDC6BC(v44, v43);
  sub_213FDC6BC(v42, v41);
  if ((v45 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_13:
  swift_beginAccess();
  v46 = a1[6];
  v47 = a1[7];
  swift_beginAccess();
  v48 = a2[7];
  if (v47)
  {
    if (!v48 || (v46 != a2[6] || v47 != v48) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v48)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v51 = a1[8];
  v52 = a1[9];
  swift_beginAccess();
  v53 = a2[9];
  if (v52)
  {
    if (!v53 || (v51 != a2[8] || v52 != v53) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v53)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v55 = a1[10];
  v54 = a1[11];
  swift_beginAccess();
  v56 = a2[10];
  v57 = a2[11];
  sub_213FDCA18(v55, v54);
  sub_213FDCA18(v56, v57);
  if (v54 >> 60 == 15)
  {
    if (v57 >> 60 == 15)
    {
      sub_213FDC6BC(v55, v54);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  sub_213FDCA18(v55, v54);
  sub_213FDCA18(v56, v57);
  if (v57 >> 60 == 15)
  {

    sub_213FDC6BC(v56, v57);
    sub_213FDC6BC(v55, v54);
LABEL_36:
    sub_213FDC6BC(v55, v54);
    v49 = v56;
    v50 = v57;
    goto LABEL_21;
  }

  v58 = sub_214466780(v55, v54, v56, v57);
  sub_213FDC6BC(v56, v57);
  sub_213FDC6BC(v55, v54);
  sub_213FDC6BC(v56, v57);
  sub_213FDC6BC(v55, v54);
  if ((v58 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_38:
  v59 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(a1 + v59, v37, &qword_27C903DA0, &qword_2146E9880);
  v60 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  v61 = *(v29 + 48);
  v62 = v143;
  sub_213FB2E54(v37, v143, &qword_27C903DA0, &qword_2146E9880);
  sub_213FB2E54(a2 + v60, v62 + v61, &qword_27C903DA0, &qword_2146E9880);
  v63 = v142;
  v64 = *(v141 + 48);
  if (v64(v62, 1, v142) == 1)
  {
    sub_213FB2DF4(v37, &qword_27C903DA0, &qword_2146E9880);
    v65 = v64(v62 + v61, 1, v63);
    v66 = v144;
    if (v65 == 1)
    {
      sub_213FB2DF4(v62, &qword_27C903DA0, &qword_2146E9880);
      goto LABEL_45;
    }

LABEL_43:
    v70 = &qword_27C903D98;
    v71 = &qword_2146E9878;
    v72 = v62;
LABEL_52:
    sub_213FB2DF4(v72, v70, v71);
    goto LABEL_53;
  }

  v67 = v139;
  sub_213FB2E54(v62, v139, &qword_27C903DA0, &qword_2146E9880);
  v68 = v64(v62 + v61, 1, v63);
  v69 = v144;
  if (v68 == 1)
  {
    sub_213FB2DF4(v37, &qword_27C903DA0, &qword_2146E9880);
    sub_214028E9C(v67, type metadata accessor for CSDMConversationActivityContextProto);
    goto LABEL_43;
  }

  v73 = v62 + v61;
  v74 = v133;
  sub_214028E34(v73, v133, type metadata accessor for CSDMConversationActivityContextProto);
  v75 = sub_21402A61C(v67, v74);
  sub_214028E9C(v74, type metadata accessor for CSDMConversationActivityContextProto);
  sub_213FB2DF4(v37, &qword_27C903DA0, &qword_2146E9880);
  sub_214028E9C(v67, type metadata accessor for CSDMConversationActivityContextProto);
  sub_213FB2DF4(v62, &qword_27C903DA0, &qword_2146E9880);
  v66 = v69;
  if ((v75 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_45:
  v76 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v77 = v140;
  sub_213FB2E54(a1 + v76, v140, &unk_27C903788, "Į\r");
  v78 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v79 = *(v134 + 48);
  v80 = v137;
  sub_213FB2E54(v77, v137, &unk_27C903788, "Į\r");
  v81 = v80;
  sub_213FB2E54(a2 + v78, v80 + v79, &unk_27C903788, "Į\r");
  v82 = v136;
  v83 = *(v135 + 48);
  if (v83(v80, 1, v136) == 1)
  {
    sub_213FB2DF4(v77, &unk_27C903788, "Į\r");
    v84 = v83(v80 + v79, 1, v82);
    v85 = v138;
    if (v84 == 1)
    {
      sub_213FB2DF4(v80, &unk_27C903788, "Į\r");
      goto LABEL_56;
    }

LABEL_50:
    v70 = &qword_27C903D78;
    v71 = &qword_2146E9858;
LABEL_51:
    v72 = v81;
    goto LABEL_52;
  }

  sub_213FB2E54(v80, v66, &unk_27C903788, "Į\r");
  v86 = v83(v80 + v79, 1, v82);
  v85 = v138;
  if (v86 == 1)
  {
    sub_213FB2DF4(v140, &unk_27C903788, "Į\r");
    sub_214028E9C(v66, type metadata accessor for CSDMHandleProto);
    goto LABEL_50;
  }

  v88 = v80 + v79;
  v89 = v132;
  sub_214028E34(v88, v132, type metadata accessor for CSDMHandleProto);
  v90 = sub_21402B72C(v66, v89);
  sub_214028E9C(v89, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v140, &unk_27C903788, "Į\r");
  sub_214028E9C(v66, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v81, &unk_27C903788, "Į\r");
  if ((v90 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_56:
  v91 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
  swift_beginAccess();
  v92 = *v91;
  v93 = *(v91 + 8);
  v94 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime);
  swift_beginAccess();
  v95 = *(v94 + 8);
  if (v93)
  {
    if ((v94[1] & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if ((v94[1] & 1) != 0 || v92 != *v94)
  {
    goto LABEL_53;
  }

  v96 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v100 = v99[1];
  if (v98)
  {
    if (!v100 || (v97 != *v99 || v98 != v100) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v100)
  {
    goto LABEL_53;
  }

  v101 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  sub_213FB2E54(a1 + v101, v85, &qword_27C903D90, &qword_2146E9870);
  v102 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v103 = *(v130 + 48);
  v104 = v128;
  sub_213FB2E54(v85, v128, &qword_27C903D90, &qword_2146E9870);
  v81 = v104;
  sub_213FB2E54(a2 + v102, v104 + v103, &qword_27C903D90, &qword_2146E9870);
  v105 = *(v131 + 48);
  v106 = v104;
  v107 = v127;
  if (v105(v106, 1, v127) == 1)
  {
    sub_213FB2DF4(v85, &qword_27C903D90, &qword_2146E9870);
    if (v105(v81 + v103, 1, v107) == 1)
    {
      sub_213FB2DF4(v81, &qword_27C903D90, &qword_2146E9870);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v108 = v107;
  v109 = v129;
  sub_213FB2E54(v81, v129, &qword_27C903D90, &qword_2146E9870);
  if (v105(v81 + v103, 1, v108) == 1)
  {
    sub_213FB2DF4(v138, &qword_27C903D90, &qword_2146E9870);
    sub_214028E9C(v109, type metadata accessor for CSDMConversationActivityMetadataProto);
LABEL_73:
    v70 = &qword_27C903D88;
    v71 = &qword_2146E9868;
    goto LABEL_51;
  }

  v110 = v81 + v103;
  v111 = v126;
  sub_214028E34(v110, v126, type metadata accessor for CSDMConversationActivityMetadataProto);
  v112 = sub_2140294F0(v109, v111);
  v113 = v109;
  v114 = v81;
  v115 = v112;
  sub_214028E9C(v111, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_213FB2DF4(v138, &qword_27C903D90, &qword_2146E9870);
  sub_214028E9C(v113, type metadata accessor for CSDMConversationActivityMetadataProto);
  sub_213FB2DF4(v114, &qword_27C903D90, &qword_2146E9870);
  if ((v115 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_75:
  v116 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  v117 = *(a1 + v116);
  v118 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  v119 = *(a2 + v118);
  if (v117 == 2)
  {
    if (v119 == 2)
    {
      goto LABEL_80;
    }

LABEL_53:

    return 0;
  }

  if (v119 == 2 || ((v117 ^ v119) & 1) != 0)
  {
    goto LABEL_53;
  }

LABEL_80:
  v120 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v121 = *v120;
  LOBYTE(v120) = *(v120 + 8);

  v122 = (a2 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v123 = *v122;
  v124 = *(v122 + 8);

  if (v120)
  {
    if (!v124)
    {
      return 0;
    }
  }

  else
  {
    if (v121 == v123)
    {
      v125 = v124;
    }

    else
    {
      v125 = 1;
    }

    if (v125)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21402226C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_2146D8DE8();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_2140223AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DD8, type metadata accessor for CSDMConversationActivityProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21402244C(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2140224B8()
{
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto);

  return sub_2146D9008();
}

uint64_t sub_214022578()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19878);
  __swift_project_value_buffer(v0, qword_27CA19878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierUUIDString";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "creationDateEpochTime";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21402278C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 28);
        sub_2146D8F28();
        break;
      case 2:
        sub_21402286C();
        break;
      case 1:
        v3 = *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 20);
        sub_2146D8F38();
        break;
    }
  }

  return result;
}

uint64_t sub_21402286C()
{
  v0 = *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 24);
  type metadata accessor for CSDMConversationActivityProto(0);
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto);
  return sub_2146D8F98();
}

uint64_t sub_214022920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationActivitySessionProto);
  if (!v4)
  {
    sub_2140229BC(v3, a1, a2, a3);
    sub_214022BCC(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140229BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMConversationActivityProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  sub_213FB2E54(a1 + *(v14 + 24), v8, &unk_27C903858, &unk_2146E6F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903858, &unk_2146E6F50);
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMConversationActivityProto);
  sub_214027000(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMConversationActivityProto);
}

uint64_t sub_214022BCC(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214022C44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for CSDMConversationActivityProto(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_214022D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DE0, type metadata accessor for CSDMConversationActivitySessionProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214022DC0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214022E2C()
{
  sub_214027000(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto);

  return sub_2146D9008();
}

uint64_t sub_214022EAC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19890);
  __swift_project_value_buffer(v0, qword_27CA19890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E6970;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "pseudonym";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "publicKey";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "privateKey";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "invitedHandles";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "creationDateEpochTime";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "groupUUIDString";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "originatorHandle";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "pseudonymExpirationDateEpochTime";
  *(v21 + 1) = 32;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "isActivated";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "linkName";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "linkLifetimeScope";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_2140232A4()
{
  result = sub_2146D8E78();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v3 = v0;
            v4 = *(type metadata accessor for CSDMConversationLinkProto(0) + 24);
LABEL_5:
            v0 = v3;
            sub_2146D8F38();
            goto LABEL_6;
          }

          if (result == 2)
          {
            v7 = v0;
            v8 = *(type metadata accessor for CSDMConversationLinkProto(0) + 28);
LABEL_29:
            v0 = v7;
            sub_2146D8EC8();
          }
        }

        else
        {
          if (result == 3)
          {
            v7 = v0;
            v10 = *(type metadata accessor for CSDMConversationLinkProto(0) + 32);
            goto LABEL_29;
          }

          if (result != 4)
          {
            v3 = v0;
            v6 = *(type metadata accessor for CSDMConversationLinkProto(0) + 36);
            goto LABEL_17;
          }

          type metadata accessor for CSDMHandleProto(0);
          sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
          sub_2146D8F78();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            v12 = *(type metadata accessor for CSDMConversationLinkProto(0) + 52);
            sub_2146D8E98();
            break;
          case 11:
            v3 = v0;
            v9 = *(type metadata accessor for CSDMConversationLinkProto(0) + 56);
            goto LABEL_5;
          case 12:
            sub_2140235DC();
            break;
        }
      }

      else
      {
        v3 = v0;
        if (result == 6)
        {
          v11 = *(type metadata accessor for CSDMConversationLinkProto(0) + 40);
          goto LABEL_5;
        }

        if (result != 7)
        {
          v5 = *(type metadata accessor for CSDMConversationLinkProto(0) + 48);
LABEL_17:
          v0 = v3;
          sub_2146D8F28();
          goto LABEL_6;
        }

        sub_214023528();
      }

LABEL_6:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214023528()
{
  v0 = *(type metadata accessor for CSDMConversationLinkProto(0) + 44);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  return sub_2146D8F98();
}

uint64_t sub_2140235DC()
{
  v0 = *(type metadata accessor for CSDMConversationLinkProto(0) + 60);
  sub_21402EE20();
  return sub_2146D8EB8();
}

uint64_t sub_214023650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21401BA04(v3, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto);
  if (!v4)
  {
    sub_214023878(v3, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto);
    sub_21402392C(v3);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for CSDMHandleProto(0);
      sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
      sub_2146D90D8();
    }

    sub_2140239CC(v5);
    sub_214023A44(v5, a1, a2, a3, type metadata accessor for CSDMConversationLinkProto);
    sub_214023AC8(v5, a1, a2, a3);
    sub_214023CD8(v5);
    sub_214023D50(v5);
    sub_214023DC8(v5);
    sub_214023E40(v5);
    v11 = v5 + *(type metadata accessor for CSDMConversationLinkProto(0) + 20);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214023878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

uint64_t sub_21402392C(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_2140239CC(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214023A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 40));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214023AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMHandleProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMConversationLinkProto(0);
  sub_213FB2E54(a1 + *(v14 + 44), v8, &unk_27C903788, "Į\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214023CD8(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214023D50(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

uint64_t sub_214023DC8(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  v3 = (a1 + *(result + 56));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214023E40(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationLinkProto(0);
  if (*(a1 + *(result + 60)) != 2)
  {
    sub_21402EE20();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_214023ED0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = &a2[a1[5]];
  sub_2146D8DE8();
  v5 = a1[7];
  v6 = &a2[a1[6]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a2[v5] = xmmword_2146E68C0;
  v7 = a1[9];
  *&a2[a1[8]] = xmmword_2146E68C0;
  v8 = &a2[v7];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1[11];
  v10 = &a2[a1[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = type metadata accessor for CSDMHandleProto(0);
  result = (*(*(v11 - 8) + 56))(&a2[v9], 1, 1, v11);
  v13 = a1[13];
  v14 = &a2[a1[12]];
  *v14 = 0;
  v14[8] = 1;
  a2[v13] = 2;
  v15 = a1[15];
  v16 = &a2[a1[14]];
  *v16 = 0;
  *(v16 + 1) = 0;
  a2[v15] = 2;
  return result;
}

uint64_t sub_214023FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_214024048(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2140240BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_214024110(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DE8, type metadata accessor for CSDMConversationLinkProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140241B0(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21402421C()
{
  sub_214027000(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto);

  return sub_2146D9008();
}

uint64_t sub_21402429C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198A8);
  __swift_project_value_buffer(v0, qword_27CA198A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Indefinite";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CallDuration";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214024488()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198C0);
  __swift_project_value_buffer(v0, qword_27CA198C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handleType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "notificationStyles";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21402469C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_2146D8E78();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        sub_2140247A4(a1, v5, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto, sub_21402EE74);
        goto LABEL_5;
      }

      if (result == 1)
      {
        v11 = v4;
        v12 = *(type metadata accessor for CSDMConversationInvitationPreferenceProto(0) + 20);
LABEL_12:
        v4 = v11;
        sub_2146D8F58();
      }

LABEL_5:
      result = sub_2146D8E78();
    }

    v11 = v4;
    v13 = *(type metadata accessor for CSDMConversationInvitationPreferenceProto(0) + 28);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2140247A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 24);
  a6();
  return sub_2146D8EB8();
}

uint64_t sub_21402482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto);
  if (!v4)
  {
    sub_2140248F8(v3, a1, a2, a3, type metadata accessor for CSDMConversationInvitationPreferenceProto, sub_21402EE74);
    sub_21402499C(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2140248F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 4)
  {
    v9 = *(a1 + *(result + 24));
    a6();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21402499C(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90B8();
  }

  return result;
}

uint64_t sub_214024A14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 4;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_214024AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903DF8, type metadata accessor for CSDMConversationInvitationPreferenceProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214024B54(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214024BC0()
{
  sub_214027000(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto);

  return sub_2146D9008();
}

uint64_t sub_214024C40()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198D8);
  __swift_project_value_buffer(v0, qword_27CA198D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Generic";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PhoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EmailAddress";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214024EA8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA198F0);
  __swift_project_value_buffer(v0, qword_27CA198F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "conversationID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timebase";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paddingForHashedValue";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140250BC()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for CSDMConversationReportProto(0) + 28);
LABEL_10:
        v0 = 0;
        sub_2146D8F38();
        break;
      case 2:
        v1 = *(type metadata accessor for CSDMConversationReportProto(0) + 24);
        sub_2146D8F28();
        break;
      case 1:
        v4 = *(type metadata accessor for CSDMConversationReportProto(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_214025194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21401C0EC(v3, a1, a2, a3, type metadata accessor for CSDMConversationReportProto);
  if (!v4)
  {
    sub_214025248(v3);
    sub_214017DCC(v3, a1, a2, a3, type metadata accessor for CSDMConversationReportProto);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214025248(uint64_t a1)
{
  result = type metadata accessor for CSDMConversationReportProto(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_2140252C0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_21402535C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903E08, type metadata accessor for CSDMConversationReportProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2140253FC(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214025468()
{
  sub_214027000(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto);

  return sub_2146D9008();
}

uint64_t sub_2140254E8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19908);
  __swift_project_value_buffer(v0, qword_27CA19908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primaryHandle";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "primaryIdentifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "primaryAvcIdentifier";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "associatedPseudonym";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "conversationGroupUUIDString";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2140257F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 20);
          sub_2146D8F58();
          break;
        case 2:
          sub_2140259A8(a1, v5, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
          break;
        case 3:
          v12 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 28);
          sub_2146D8F68();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v15 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 40);
LABEL_18:
        v4 = 0;
        sub_2146D8F38();
      }

      else if (result == 7)
      {
        v13 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 44);
        sub_2146D8EF8();
      }
    }

    else
    {
      if (result == 4)
      {
        v14 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 32);
        goto LABEL_18;
      }

      sub_214025A60();
    }
  }
}

uint64_t sub_2140259A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  return sub_2146D8F98();
}

uint64_t sub_214025A60()
{
  v0 = *(type metadata accessor for CSDMMemberAssociationClaimProto(0) + 36);
  type metadata accessor for CSDMHandleProto(0);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  return sub_2146D8F98();
}

uint64_t sub_214025B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214017D50(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
  if (!v4)
  {
    sub_214025C54(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
    sub_214025E68(v3);
    sub_21401BA88(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
    sub_214025EE0(v3, a1, a2, a3);
    sub_214023A44(v3, a1, a2, a3, type metadata accessor for CSDMMemberAssociationClaimProto);
    sub_2140260F0(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214025C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CSDMHandleProto(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_213FB2E54(a1 + *(v16 + 24), v10, &unk_27C903788, "Į\r");
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_213FB2DF4(v10, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v10, v15, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v15, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_214025E68(uint64_t a1)
{
  result = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D90C8();
  }

  return result;
}

uint64_t sub_214025EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CSDMHandleProto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  sub_213FB2E54(a1 + *(v14 + 36), v8, &unk_27C903788, "Į\r");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &unk_27C903788, "Į\r");
  }

  sub_214028E34(v8, v13, type metadata accessor for CSDMHandleProto);
  sub_214027000(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
  sub_2146D90F8();
  return sub_214028E9C(v13, type metadata accessor for CSDMHandleProto);
}

uint64_t sub_2140260F0(uint64_t a1)
{
  result = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9068();
  }

  return result;
}

uint64_t sub_214026168@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  result = (v7)(a2 + a1[9], 1, 1, v6);
  v12 = a1[11];
  v13 = (a2 + a1[10]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a2 + v12;
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_21402626C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8DF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2140262D4(uint64_t a1)
{
  v3 = sub_2146D8DF8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21402636C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214027000(&qword_27C903E10, type metadata accessor for CSDMMemberAssociationClaimProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21402640C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2146D9148();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2140264A8(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903A60, type metadata accessor for CSDMMemberAssociationClaimProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214026514()
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21402656C()
{
  sub_214027000(&qword_27C903A60, type metadata accessor for CSDMMemberAssociationClaimProto);

  return sub_2146D9008();
}

uint64_t sub_2140265E8()
{
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_214026648(uint64_t a1, id *a2)
{
  result = sub_2146D9598();
  *a2 = 0;
  return result;
}

uint64_t sub_2140266C0(uint64_t a1, id *a2)
{
  v3 = sub_2146D95A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_214026740@<X0>(uint64_t *a1@<X8>)
{
  sub_2146D95B8();
  v2 = sub_2146D9588();

  *a1 = v2;
  return result;
}

void *sub_214026784@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_214026794()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2140267DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_214026834()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2146D8CC8();
}

uint64_t sub_214026880()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2146D8CB8();
}

uint64_t sub_2140268D8()
{
  sub_2146DA958();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2146D8CB8();
  return sub_2146DA9B8();
}

uint64_t sub_214026940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2146D95B8();
  v6 = v5;
  if (v4 == sub_2146D95B8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

_DWORD *sub_2140269C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2140269E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2146D8CA8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_214026B14()
{
  result = qword_27C903908;
  if (!qword_27C903908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903908);
  }

  return result;
}

unint64_t sub_214026B6C()
{
  result = qword_27C903910;
  if (!qword_27C903910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903910);
  }

  return result;
}

unint64_t sub_214026BC4()
{
  result = qword_27C903918;
  if (!qword_27C903918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903918);
  }

  return result;
}

unint64_t sub_214026C4C()
{
  result = qword_27C903930;
  if (!qword_27C903930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903930);
  }

  return result;
}

unint64_t sub_214026CA4()
{
  result = qword_27C903938;
  if (!qword_27C903938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903938);
  }

  return result;
}

unint64_t sub_214026CFC()
{
  result = qword_27C903940;
  if (!qword_27C903940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903940);
  }

  return result;
}

unint64_t sub_214026D84()
{
  result = qword_27C903958;
  if (!qword_27C903958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903958);
  }

  return result;
}

unint64_t sub_214026DDC()
{
  result = qword_27C903960;
  if (!qword_27C903960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903960);
  }

  return result;
}

unint64_t sub_214026E34()
{
  result = qword_27C903968;
  if (!qword_27C903968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903968);
  }

  return result;
}

uint64_t sub_214026E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146D9588();

  *a2 = v5;
  return result;
}

uint64_t sub_214026ED0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2146D95B8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_214026EFC(uint64_t a1)
{
  v2 = sub_214027000(&qword_27C903E18, type metadata accessor for BlastDoorInstanceType);
  v3 = sub_214027000(&qword_27C903E20, type metadata accessor for BlastDoorInstanceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_214027000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2140270D8()
{
  v1 = *v0;
  v2 = sub_2146D95B8();
  v3 = MEMORY[0x216054680](v2);

  return v3;
}

uint64_t sub_214027114()
{
  v1 = *v0;
  sub_2146D95B8();
  sub_2146D9698();
}

uint64_t sub_214027168()
{
  v1 = *v0;
  sub_2146D95B8();
  sub_2146DA958();
  sub_2146D9698();
  v2 = sub_2146DA9B8();

  return v2;
}

unint64_t sub_214027210()
{
  result = qword_27C903998;
  if (!qword_27C903998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903998);
  }

  return result;
}

unint64_t sub_214027268()
{
  result = qword_27C9039A0;
  if (!qword_27C9039A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039A0);
  }

  return result;
}

unint64_t sub_2140272C0()
{
  result = qword_27C9039A8;
  if (!qword_27C9039A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039A8);
  }

  return result;
}

unint64_t sub_214027348()
{
  result = qword_27C9039C0;
  if (!qword_27C9039C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039C0);
  }

  return result;
}

unint64_t sub_2140273A0()
{
  result = qword_27C9039C8;
  if (!qword_27C9039C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039C8);
  }

  return result;
}

unint64_t sub_2140273F8()
{
  result = qword_27C9039D0;
  if (!qword_27C9039D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039D0);
  }

  return result;
}

unint64_t sub_214027480()
{
  result = qword_27C9039E8;
  if (!qword_27C9039E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039E8);
  }

  return result;
}

unint64_t sub_2140274D8()
{
  result = qword_27C9039F0;
  if (!qword_27C9039F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039F0);
  }

  return result;
}

unint64_t sub_214027530()
{
  result = qword_27C9039F8;
  if (!qword_27C9039F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9039F8);
  }

  return result;
}

unint64_t sub_2140275B8()
{
  result = qword_27C903A10;
  if (!qword_27C903A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A10);
  }

  return result;
}

unint64_t sub_214027610()
{
  result = qword_27C903A18;
  if (!qword_27C903A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A18);
  }

  return result;
}

unint64_t sub_214027668()
{
  result = qword_27C903A20;
  if (!qword_27C903A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A20);
  }

  return result;
}

uint64_t sub_2140276EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214027744()
{
  result = qword_27C903A38;
  if (!qword_27C903A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A38);
  }

  return result;
}

unint64_t sub_21402779C()
{
  result = qword_27C903A40;
  if (!qword_27C903A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A40);
  }

  return result;
}

unint64_t sub_2140277F4()
{
  result = qword_27C903A48;
  if (!qword_27C903A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903A48);
  }

  return result;
}

unint64_t sub_214028D38()
{
  result = qword_27C903CA8;
  if (!qword_27C903CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903CA8);
  }

  return result;
}

unint64_t sub_214028D8C()
{
  result = qword_27C903CB0;
  if (!qword_27C903CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903CB0);
  }

  return result;
}

unint64_t sub_214028DE0()
{
  result = qword_27C903CC0;
  if (!qword_27C903CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903CC0);
  }

  return result;
}

uint64_t sub_214028E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214028E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214028EFC(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return 34;
  }

  else
  {
    return byte_2146E9BC0[a1];
  }
}

uint64_t sub_214028F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402900C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214029130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_7;
    }

LABEL_5:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_12:
    sub_213FDC6BC(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v13 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v14 = *(v4 + 24);
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v19 = *v17;
  v18 = v17[1];
  if (v15 >> 60 != 15)
  {
    if (v18 >> 60 == 15)
    {
      goto LABEL_11;
    }

    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    v21 = sub_214466780(v16, v15, v19, v18);
    sub_213FDC6BC(v19, v18);
    sub_213FDC6BC(v16, v15);
    if (v21)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v18 >> 60 != 15)
  {
LABEL_11:
    sub_213FDCA18(v16, v15);
    sub_213FDCA18(v19, v18);
    sub_213FDC6BC(v16, v15);
    v11 = v19;
    v12 = v18;
    goto LABEL_12;
  }

  sub_213FDCA18(v16, v15);
  sub_213FDCA18(v19, v18);
  sub_213FDC6BC(v16, v15);
LABEL_15:
  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214029394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  if (!v20)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_2140294F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA8, &qword_2146E9888);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v71[-v15];
  v17 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_2146DA6A8();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_34;
  }

  v26 = v17[6];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_34;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    goto LABEL_34;
  }

  v29 = v17[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_34;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v17;
      v35 = sub_2146DA6A8();
      v17 = v34;
      if ((v35 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_34;
  }

  v36 = v17[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_34;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = v17;
      v42 = sub_2146DA6A8();
      v17 = v41;
      if ((v42 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v40)
  {
    goto LABEL_34;
  }

  v43 = v17[9];
  v44 = *(a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  v75 = *v46;
  if (v45 >> 60 == 15)
  {
    if (v47 >> 60 == 15)
    {
      v73 = v17;
      v74 = v44;
      sub_213FDCA18(v44, v45);
      sub_213FDCA18(v75, v47);
      sub_213FDC6BC(v74, v45);
      goto LABEL_37;
    }

LABEL_33:
    v48 = v44;
    sub_213FDCA18(v44, v45);
    v49 = v75;
    sub_213FDCA18(v75, v47);
    sub_213FDC6BC(v48, v45);
    sub_213FDC6BC(v49, v47);
    goto LABEL_34;
  }

  if (v47 >> 60 == 15)
  {
    goto LABEL_33;
  }

  v73 = v17;
  v74 = v44;
  sub_213FDCA18(v44, v45);
  sub_213FDCA18(v75, v47);
  v72 = sub_214466780(v74, v45, v75, v47);
  sub_213FDC6BC(v75, v47);
  sub_213FDC6BC(v74, v45);
  if ((v72 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v52 = v73[10];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 4);
  v55 = (a2 + v52);
  v56 = *(a2 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_34;
    }
  }

  v57 = v73[11];
  v58 = *(v13 + 48);
  sub_213FB2E54(a1 + v57, v16, &unk_27C9036F0, "а\r");
  v59 = a2 + v57;
  v60 = v58;
  sub_213FB2E54(v59, &v16[v58], &unk_27C9036F0, "а\r");
  v61 = *(v5 + 48);
  if (v61(v16, 1, v4) != 1)
  {
    sub_213FB2E54(v16, v12, &unk_27C9036F0, "а\r");
    if (v61(&v16[v60], 1, v4) != 1)
    {
      sub_214028E34(&v16[v60], v8, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      v62 = sub_214029394(v12, v8);
      sub_214028E9C(v8, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_214028E9C(v12, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_213FB2DF4(v16, &unk_27C9036F0, "а\r");
      if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

    sub_214028E9C(v12, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
LABEL_48:
    sub_213FB2DF4(v16, &qword_27C903DA8, &qword_2146E9888);
    goto LABEL_34;
  }

  if (v61(&v16[v60], 1, v4) != 1)
  {
    goto LABEL_48;
  }

  sub_213FB2DF4(v16, &unk_27C9036F0, "а\r");
LABEL_50:
  v63 = v73[12];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      goto LABEL_34;
    }
  }

  else if (v65 == 2 || ((v64 ^ v65) & 1) != 0)
  {
    goto LABEL_34;
  }

  v66 = v73[13];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if ((v68 & 1) == 0)
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_34;
    }

LABEL_61:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    v50 = sub_2146D9578();
    return v50 & 1;
  }

  if (v70)
  {
    goto LABEL_61;
  }

LABEL_34:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_214029B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D80, &qword_2146E9860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v22)
  {
    goto LABEL_17;
  }

  v48 = v8;
  v24 = v17[6];
  v25 = a1;
  v26 = *(v13 + 48);
  v47 = v25;
  sub_213FB2E54(v25 + v24, v16, &unk_27C903858, &unk_2146E6F50);
  v27 = a2 + v24;
  v28 = a2;
  sub_213FB2E54(v27, &v16[v26], &unk_27C903858, &unk_2146E6F50);
  v29 = *(v5 + 48);
  if (v29(v16, 1, v4) != 1)
  {
    sub_213FB2E54(v16, v12, &unk_27C903858, &unk_2146E6F50);
    if (v29(&v16[v26], 1, v4) != 1)
    {
      v34 = v48;
      sub_214028E34(&v16[v26], v48, type metadata accessor for CSDMConversationActivityProto);
      v35 = *(v4 + 20);
      v36 = *&v12[v35];
      v37 = *(v34 + v35);
      if (v36 == v37 || (v38 = *&v12[v35], , , v39 = sub_214021228(v36, v37), , , (v39 & 1) != 0))
      {
        sub_2146D8DF8();
        sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
        v40 = v48;
        v41 = sub_2146D9578();
        sub_214028E9C(v40, type metadata accessor for CSDMConversationActivityProto);
        sub_214028E9C(v12, type metadata accessor for CSDMConversationActivityProto);
        sub_213FB2DF4(v16, &unk_27C903858, &unk_2146E6F50);
        if ((v41 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      sub_214028E9C(v48, type metadata accessor for CSDMConversationActivityProto);
      sub_214028E9C(v12, type metadata accessor for CSDMConversationActivityProto);
      v30 = &unk_27C903858;
      v31 = &unk_2146E6F50;
LABEL_16:
      sub_213FB2DF4(v16, v30, v31);
      goto LABEL_17;
    }

    sub_214028E9C(v12, type metadata accessor for CSDMConversationActivityProto);
LABEL_15:
    v30 = &qword_27C903D80;
    v31 = &qword_2146E9860;
    goto LABEL_16;
  }

  if (v29(&v16[v26], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_213FB2DF4(v16, &unk_27C903858, &unk_2146E6F50);
LABEL_22:
  v42 = v17[7];
  v43 = (v47 + v42);
  v44 = *(v47 + v42 + 8);
  v45 = (v28 + v42);
  v46 = *(v28 + v42 + 8);
  if ((v44 & 1) == 0)
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    v32 = sub_2146D9578();
    return v32 & 1;
  }

  if (v46)
  {
    goto LABEL_28;
  }

LABEL_17:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_214029FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v75 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v70[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v70[-v20];
  v22 = type metadata accessor for CSDMMemberAssociationClaimProto(0);
  v23 = v22;
  v24 = *(v22 + 20);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_14;
    }
  }

  v72 = v19;
  v73 = v8;
  v76 = a2;
  v29 = *(v22 + 24);
  v30 = *(v15 + 48);
  v74 = a1;
  sub_213FB2E54(a1 + v29, v21, &unk_27C903788, "Į\r");
  v31 = v76 + v29;
  v32 = v76;
  sub_213FB2E54(v31, &v21[v30], &unk_27C903788, "Į\r");
  v33 = *(v5 + 48);
  if (v33(v21, 1, v4) == 1)
  {
    if (v33(&v21[v30], 1, v4) != 1)
    {
LABEL_13:
      sub_213FB2DF4(v21, &qword_27C903D78, &qword_2146E9858);
      goto LABEL_14;
    }

    sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
  }

  else
  {
    sub_213FB2E54(v21, v14, &unk_27C903788, "Į\r");
    if (v33(&v21[v30], 1, v4) == 1)
    {
      v34 = v14;
LABEL_12:
      sub_214028E9C(v34, type metadata accessor for CSDMHandleProto);
      goto LABEL_13;
    }

    v37 = &v21[v30];
    v38 = v73;
    sub_214028E34(v37, v73, type metadata accessor for CSDMHandleProto);
    v71 = sub_21402B72C(v14, v38);
    sub_214028E9C(v38, type metadata accessor for CSDMHandleProto);
    sub_214028E9C(v14, type metadata accessor for CSDMHandleProto);
    sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
    if ((v71 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v39 = v23[7];
  v40 = v74;
  v41 = (v74 + v39);
  v42 = *(v74 + v39 + 8);
  v43 = (v32 + v39);
  v44 = *(v32 + v39 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_14;
    }
  }

  v45 = v23[8];
  v46 = (v74 + v45);
  v47 = *(v74 + v45 + 8);
  v48 = (v32 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_14;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = sub_2146DA6A8();
      v40 = v74;
      if ((v50 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v49)
  {
    goto LABEL_14;
  }

  v51 = v23[9];
  v52 = *(v15 + 48);
  v21 = v72;
  sub_213FB2E54(v40 + v51, v72, &unk_27C903788, "Į\r");
  v53 = v76 + v51;
  v54 = v76;
  sub_213FB2E54(v53, &v21[v52], &unk_27C903788, "Į\r");
  if (v33(v21, 1, v4) != 1)
  {
    v55 = v75;
    sub_213FB2E54(v21, v75, &unk_27C903788, "Į\r");
    if (v33(&v21[v52], 1, v4) != 1)
    {
      v56 = v73;
      sub_214028E34(&v21[v52], v73, type metadata accessor for CSDMHandleProto);
      v57 = sub_21402B72C(v55, v56);
      sub_214028E9C(v56, type metadata accessor for CSDMHandleProto);
      sub_214028E9C(v55, type metadata accessor for CSDMHandleProto);
      sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
      if ((v57 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }

    v34 = v55;
    goto LABEL_12;
  }

  if (v33(&v21[v52], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
LABEL_36:
  v58 = v23[10];
  v59 = v74;
  v60 = (v74 + v58);
  v61 = *(v74 + v58 + 8);
  v62 = (v54 + v58);
  v63 = v62[1];
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_14;
    }

    if (*v60 != *v62 || v61 != v63)
    {
      v64 = sub_2146DA6A8();
      v59 = v74;
      if ((v64 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v63)
  {
    goto LABEL_14;
  }

  v65 = v23[11];
  v66 = (v59 + v65);
  v67 = *(v59 + v65 + 4);
  v68 = (v54 + v65);
  v69 = *(v54 + v65 + 4);
  if ((v67 & 1) == 0)
  {
    if (*v66 != *v68)
    {
      LOBYTE(v69) = 1;
    }

    if (v69)
    {
      goto LABEL_14;
    }

LABEL_49:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    v35 = sub_2146D9578();
    return v35 & 1;
  }

  if (v69)
  {
    goto LABEL_49;
  }

LABEL_14:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_21402A61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2146DA6A8();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21402A7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402A8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationReportProto(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_21402AA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v62[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v62[-v20];
  v22 = type metadata accessor for CSDMConversationMemberProto(0);
  v23 = v22;
  v24 = *(v22 + 20);
  v68 = a1;
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_14;
    }
  }

  v64 = v19;
  v65 = v8;
  v67 = a2;
  v29 = *(v22 + 24);
  v30 = *(v15 + 48);
  sub_213FB2E54(v68 + v29, v21, &unk_27C903788, "Į\r");
  v31 = v67 + v29;
  v32 = v67;
  sub_213FB2E54(v31, &v21[v30], &unk_27C903788, "Į\r");
  v33 = *(v5 + 48);
  if (v33(v21, 1, v4) == 1)
  {
    if (v33(&v21[v30], 1, v4) != 1)
    {
LABEL_13:
      sub_213FB2DF4(v21, &qword_27C903D78, &qword_2146E9858);
      goto LABEL_14;
    }

    sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
  }

  else
  {
    sub_213FB2E54(v21, v14, &unk_27C903788, "Į\r");
    if (v33(&v21[v30], 1, v4) == 1)
    {
      v34 = v14;
LABEL_12:
      sub_214028E9C(v34, type metadata accessor for CSDMHandleProto);
      goto LABEL_13;
    }

    v37 = &v21[v30];
    v38 = v65;
    sub_214028E34(v37, v65, type metadata accessor for CSDMHandleProto);
    v63 = sub_21402B72C(v14, v38);
    sub_214028E9C(v38, type metadata accessor for CSDMHandleProto);
    sub_214028E9C(v14, type metadata accessor for CSDMHandleProto);
    sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
    if ((v63 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v39 = v23[7];
  v40 = (v68 + v39);
  v41 = *(v68 + v39 + 8);
  v42 = (v32 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v43)
  {
    goto LABEL_14;
  }

  v44 = v23[8];
  v45 = *(v15 + 48);
  v21 = v64;
  sub_213FB2E54(v68 + v44, v64, &unk_27C903788, "Į\r");
  v46 = v67 + v44;
  v47 = v67;
  sub_213FB2E54(v46, &v21[v45], &unk_27C903788, "Į\r");
  if (v33(v21, 1, v4) != 1)
  {
    v48 = v66;
    sub_213FB2E54(v21, v66, &unk_27C903788, "Į\r");
    if (v33(&v21[v45], 1, v4) != 1)
    {
      v49 = &v21[v45];
      v50 = v65;
      sub_214028E34(v49, v65, type metadata accessor for CSDMHandleProto);
      v51 = sub_21402B72C(v48, v50);
      sub_214028E9C(v50, type metadata accessor for CSDMHandleProto);
      sub_214028E9C(v48, type metadata accessor for CSDMHandleProto);
      sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
      if ((v51 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    v34 = v48;
    goto LABEL_12;
  }

  if (v33(&v21[v45], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v21, &unk_27C903788, "Į\r");
LABEL_30:
  v52 = v23[9];
  v53 = (v68 + v52);
  v54 = *(v68 + v52 + 8);
  v55 = (v47 + v52);
  v56 = *(v47 + v52 + 8);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_14;
    }
  }

  v57 = v23[10];
  v58 = (v68 + v57);
  v59 = *(v68 + v57 + 8);
  v60 = (v47 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    v35 = sub_2146D9578();
    return v35 & 1;
  }

  if (!v61)
  {
    goto LABEL_43;
  }

LABEL_14:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_21402B070(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D78, &qword_2146E9858);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v74 - v15;
  v17 = type metadata accessor for CSDMConversationLinkProto(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_20;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v22)
  {
    goto LABEL_20;
  }

  v74 = v8;
  v75 = v5;
  v24 = v17[7];
  v77 = a1;
  v26 = *(a1 + v24);
  v25 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v29 = *v27;
  v28 = v27[1];
  if (v25 >> 60 == 15)
  {
    if (v28 >> 60 != 15)
    {
      goto LABEL_19;
    }

    v76 = a2;
    sub_213FDCA18(v26, v25);
    sub_213FDCA18(v29, v28);
    sub_213FDC6BC(v26, v25);
  }

  else
  {
    if (v28 >> 60 == 15)
    {
      goto LABEL_19;
    }

    v76 = a2;
    sub_213FDCA18(v26, v25);
    sub_213FDCA18(v29, v28);
    v30 = sub_214466780(v26, v25, v29, v28);
    sub_213FDC6BC(v29, v28);
    sub_213FDC6BC(v26, v25);
    if ((v30 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v31 = v17[8];
  v26 = *(v77 + v31);
  v25 = *(v77 + v31 + 8);
  v32 = (v76 + v31);
  v29 = *v32;
  v28 = v32[1];
  if (v25 >> 60 == 15)
  {
    if (v28 >> 60 == 15)
    {
      sub_213FDCA18(v26, v25);
      sub_213FDCA18(v29, v28);
      sub_213FDC6BC(v26, v25);
      goto LABEL_23;
    }

LABEL_19:
    sub_213FDCA18(v26, v25);
    sub_213FDCA18(v29, v28);
    sub_213FDC6BC(v26, v25);
    sub_213FDC6BC(v29, v28);
    goto LABEL_20;
  }

  if (v28 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_213FDCA18(v26, v25);
  sub_213FDCA18(v29, v28);
  v35 = sub_214466780(v26, v25, v29, v28);
  sub_213FDC6BC(v29, v28);
  sub_213FDC6BC(v26, v25);
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  v36 = v76;
  v37 = v77;
  if ((sub_2143D6458(*v77, *v76) & 1) == 0)
  {
    goto LABEL_20;
  }

  v38 = v17[9];
  v39 = (v37 + v38);
  v40 = *(v37 + v38 + 8);
  v41 = (v36 + v38);
  v42 = *(v36 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_20;
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
      goto LABEL_20;
    }
  }

  v43 = v17[10];
  v44 = (v37 + v43);
  v45 = *(v37 + v43 + 8);
  v46 = (v36 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v47)
  {
    goto LABEL_20;
  }

  v48 = v17[11];
  v49 = v36;
  v50 = *(v13 + 48);
  sub_213FB2E54(v37 + v48, v16, &unk_27C903788, "Į\r");
  v51 = v36;
  sub_213FB2E54(v36 + v48, &v16[v50], &unk_27C903788, "Į\r");
  v52 = *(v75 + 48);
  if (v52(v16, 1, v4) == 1)
  {
    if (v52(&v16[v50], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &unk_27C903788, "Į\r");
      goto LABEL_44;
    }

LABEL_42:
    sub_213FB2DF4(v16, &qword_27C903D78, &qword_2146E9858);
    goto LABEL_20;
  }

  sub_213FB2E54(v16, v12, &unk_27C903788, "Į\r");
  if (v52(&v16[v50], 1, v4) == 1)
  {
    sub_214028E9C(v12, type metadata accessor for CSDMHandleProto);
    goto LABEL_42;
  }

  v53 = &v16[v50];
  v54 = v74;
  sub_214028E34(v53, v74, type metadata accessor for CSDMHandleProto);
  v55 = sub_21402B72C(v12, v54);
  sub_214028E9C(v54, type metadata accessor for CSDMHandleProto);
  sub_214028E9C(v12, type metadata accessor for CSDMHandleProto);
  sub_213FB2DF4(v16, &unk_27C903788, "Į\r");
  if ((v55 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_44:
  v56 = v17[12];
  v57 = v77;
  v58 = (v77 + v56);
  v59 = *(v77 + v56 + 8);
  v60 = (v49 + v56);
  v61 = *(v49 + v56 + 8);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_20;
    }
  }

  v62 = v17[13];
  v63 = *(v77 + v62);
  v64 = *(v51 + v62);
  if (v63 == 2)
  {
    if (v64 != 2)
    {
      goto LABEL_20;
    }
  }

  else if (v64 == 2 || ((v63 ^ v64) & 1) != 0)
  {
    goto LABEL_20;
  }

  v65 = v17[14];
  v66 = (v77 + v65);
  v67 = *(v77 + v65 + 8);
  v68 = (v51 + v65);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v69)
  {
    goto LABEL_20;
  }

  v70 = v17[15];
  v71 = *(v57 + v70);
  v72 = *(v51 + v70);
  if (v71 == 2)
  {
    if (v72 == 2)
    {
LABEL_67:
      v73 = v17[5];
      sub_2146D8DF8();
      sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
      v33 = sub_2146D9578();
      return v33 & 1;
    }

LABEL_20:
    v33 = 0;
    return v33 & 1;
  }

  v33 = 0;
  if (v72 != 2 && ((v72 ^ v71) & 1) == 0)
  {
    goto LABEL_67;
  }

  return v33 & 1;
}

uint64_t sub_21402B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_2146DA6A8();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v22 = v4;
      v23 = sub_2146DA6A8();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_30:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    return sub_2146D9578() & 1;
  }

  if (!v28)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_21402B8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    v11 = sub_214466780(v7, v6, v10, v9);
    sub_213FDC6BC(v10, v9);
    sub_213FDC6BC(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_213FDCA18(v7, v6);
      sub_213FDCA18(v10, v9);
      sub_213FDC6BC(v7, v6);
      goto LABEL_14;
    }

LABEL_10:
    sub_213FDCA18(v7, v6);
    sub_213FDCA18(v10, v9);
    sub_213FDC6BC(v7, v6);
    v14 = v10;
    v15 = v9;
LABEL_11:
    sub_213FDC6BC(v14, v15);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_213FDCA18(v7, v6);
  sub_213FDCA18(v10, v9);
  v17 = sub_214466780(v7, v6, v10, v9);
  sub_213FDC6BC(v10, v9);
  sub_213FDC6BC(v7, v6);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 != 15)
  {
    if (v22 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_213FDCA18(v20, v19);
    sub_213FDCA18(v23, v22);
    v24 = sub_214466780(v20, v19, v23, v22);
    sub_213FDC6BC(v23, v22);
    sub_213FDC6BC(v20, v19);
    if (v24)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v22 >> 60 != 15)
  {
LABEL_18:
    sub_213FDCA18(v20, v19);
    sub_213FDCA18(v23, v22);
    sub_213FDC6BC(v20, v19);
    v14 = v23;
    v15 = v22;
    goto LABEL_11;
  }

  sub_213FDCA18(v20, v19);
  sub_213FDCA18(v23, v22);
  sub_213FDC6BC(v20, v19);
LABEL_20:
  sub_2146D8DF8();
  sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21402BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D30, &qword_2146E9828);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = type metadata accessor for CSDMCallMessageProto(0);
  v18 = v17[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 3)
  {
    if (v20 != 3)
    {
      goto LABEL_22;
    }
  }

  else if (v19 != v20)
  {
    goto LABEL_22;
  }

  v21 = v17[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_22;
    }
  }

  v26 = v17[7];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    goto LABEL_22;
  }

  v52 = v17;
  v29 = v17[8];
  v30 = *(v13 + 48);
  sub_213FB2E54(a1 + v29, v16, &unk_27C9037B8, &unk_2147598F0);
  v31 = a2 + v29;
  v32 = v30;
  sub_213FB2E54(v31, &v16[v30], &unk_27C9037B8, &unk_2147598F0);
  v33 = *(v5 + 48);
  if (v33(v16, 1, v4) != 1)
  {
    sub_213FB2E54(v16, v12, &unk_27C9037B8, &unk_2147598F0);
    if (v33(&v16[v32], 1, v4) != 1)
    {
      sub_214028E34(&v16[v32], v8, type metadata accessor for CSDMAVConferenceInviteDataProto);
      v36 = sub_21402B8D4(v12, v8);
      sub_214028E9C(v8, type metadata accessor for CSDMAVConferenceInviteDataProto);
      sub_214028E9C(v12, type metadata accessor for CSDMAVConferenceInviteDataProto);
      sub_213FB2DF4(v16, &unk_27C9037B8, &unk_2147598F0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    sub_214028E9C(v12, type metadata accessor for CSDMAVConferenceInviteDataProto);
LABEL_21:
    sub_213FB2DF4(v16, &qword_27C903D30, &qword_2146E9828);
    goto LABEL_22;
  }

  if (v33(&v16[v32], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_213FB2DF4(v16, &unk_27C9037B8, &unk_2147598F0);
LABEL_25:
  v37 = v52[9];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    goto LABEL_22;
  }

  v40 = v52[10];
  v41 = *(a1 + v40);
  v42 = *(a2 + v40);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    goto LABEL_22;
  }

  v43 = v52[11];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    goto LABEL_22;
  }

  v46 = v52[12];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    sub_2146D8DF8();
    sub_214027000(&qword_27C903D38, MEMORY[0x277D216C8]);
    v34 = sub_2146D9578();
    return v34 & 1;
  }

  if (!v50)
  {
    goto LABEL_47;
  }

LABEL_22:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_21402C09C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v109 - v8;
  *(v1 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 20) = 1;
  *(v1 + 24) = v9;
  v10 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v110 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v11 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  *v13 = 0;
  v13[1] = 0;
  v113 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v14 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v114 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  v15 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v115 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video) = 2;
  v116 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v16 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  v111 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  *v16 = 0;
  v16[1] = 0;
  v118 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles) = v9;
  v119 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  v120 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v9;
  v121 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v122 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  v123 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled) = 2;
  v17 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  v124 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v17 = 0;
  *(v17 + 4) = 1;
  v125 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  v126 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v18 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  v127 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  *v18 = 0;
  v18[1] = 0;
  v128 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  v129 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  v130 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  v131 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v19 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  v132 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  v133 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v20 = 0;
  *(v20 + 4) = 1;
  v134 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  v135 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v136 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v21 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  v137 = (v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v138 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  v139 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v140 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo) = 2;
  v22 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  v141 = v1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  *(v22 + 4) = 1;
  *v22 = 0;
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 16);
  v23 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 20) = v23;
  swift_beginAccess();
  v24 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v24;
  v25 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  swift_beginAccess();
  v26 = v112;
  sub_213FB2E54(a1 + v25, v112, &qword_27C903CF0, &unk_2146E9810);
  v27 = v110;
  swift_beginAccess();

  sub_21402EDB8(v26, v1 + v27, &qword_27C903CF0, &unk_2146E9810);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  v31 = v12[1];
  *v12 = v30;
  v12[1] = v29;

  v32 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];
  swift_beginAccess();
  v35 = v13[1];
  *v13 = v34;
  v13[1] = v33;

  v36 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v113;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
  swift_beginAccess();
  v39 = v117;
  sub_213FB2E54(a1 + v38, v117, &qword_27C903CB8, &qword_2146E97F0);
  v40 = v114;
  swift_beginAccess();
  sub_21402EDB8(v39, v1 + v40, &qword_27C903CB8, &qword_2146E97F0);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v115;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + v43);
  v44 = v116;
  swift_beginAccess();
  *(v1 + v44) = v43;
  v45 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v111;
  swift_beginAccess();
  v49 = v48[1];
  *v48 = v47;
  v48[1] = v46;

  v50 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v118;
  swift_beginAccess();
  v53 = *(v1 + v52);
  *(v1 + v52) = v51;

  v54 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v119;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v120;
  swift_beginAccess();
  v59 = *(v1 + v58);
  *(v1 + v58) = v57;

  v60 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v121;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v122;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v123;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  LODWORD(v65) = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v67 = v124;
  swift_beginAccess();
  *v67 = v65;
  *(v67 + 4) = v66;
  v68 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v125;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v126;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v127;
  swift_beginAccess();
  v76 = v75[1];
  *v75 = v74;
  v75[1] = v73;

  v77 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  LOBYTE(v77) = *(a1 + v77);
  v78 = v128;
  swift_beginAccess();
  *(v1 + v78) = v77;
  v79 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v79) = *(a1 + v79);
  v80 = v129;
  swift_beginAccess();
  *(v1 + v80) = v79;
  v81 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  LOBYTE(v81) = *(a1 + v81);
  v82 = v130;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v131;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  LODWORD(v84) = *v85;
  LOBYTE(v85) = *(v85 + 4);
  v86 = v132;
  swift_beginAccess();
  *v86 = v84;
  *(v86 + 4) = v85;
  v87 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  LODWORD(v84) = *v87;
  LOBYTE(v87) = *(v87 + 4);
  v88 = v133;
  swift_beginAccess();
  *v88 = v84;
  *(v88 + 4) = v87;
  v89 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  LOBYTE(v89) = *(a1 + v89);
  v90 = v134;
  swift_beginAccess();
  *(v1 + v90) = v89;
  v91 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  LOBYTE(v91) = *(a1 + v91);
  v92 = v135;
  swift_beginAccess();
  *(v1 + v92) = v91;
  v93 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  LOBYTE(v93) = *(a1 + v93);
  v94 = v136;
  swift_beginAccess();
  *(v1 + v94) = v93;
  v95 = (a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v97 = *v95;
  v96 = v95[1];
  v98 = v137;
  swift_beginAccess();
  v99 = v98[1];
  *v98 = v97;
  v98[1] = v96;

  v100 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  LOBYTE(v100) = *(a1 + v100);
  v101 = v138;
  swift_beginAccess();
  *(v1 + v101) = v100;
  v102 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  LOBYTE(v102) = *(a1 + v102);
  v103 = v139;
  swift_beginAccess();
  *(v1 + v103) = v102;
  v104 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v140;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = a1 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  LODWORD(v104) = *v106;
  LOBYTE(v106) = *(v106 + 4);
  v107 = v141;
  swift_beginAccess();
  *v107 = v104;
  *(v107 + 4) = v106;
  return v1;
}

uint64_t sub_21402CD8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v130 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v104 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v112 = &v104 - v14;
  *(v1 + 16) = 0;
  *(v1 + 21) = 546;
  *(v1 + 20) = 1;
  v15 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 48) = v15;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  v105 = (v1 + 56);
  *(v1 + 60) = 1;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  v106 = (v1 + 64);
  *(v1 + 80) = v15;
  v107 = (v1 + 80);
  *(v1 + 96) = 0;
  *(v1 + 88) = 0;
  v108 = (v1 + 88);
  v16 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v109 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  v17 = type metadata accessor for CSDMConversationLinkProto(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v110 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v19 = type metadata accessor for CSDMConversationReportProto(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v111 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved) = 2;
  v20 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v113 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  v21 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  v114 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  v116 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType) = 34;
  v117 = v24;
  v118 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences) = v15;
  v119 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers) = v15;
  v121 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers) = v15;
  v122 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants) = v15;
  v123 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v25 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  v124 = (v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v125 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  v27 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v126 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v28 = v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  v127 = v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v128 = v29;
  v129 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession) = 2;
  swift_beginAccess();
  LODWORD(v26) = *(a1 + 16);
  LOBYTE(v20) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v26;
  *(v1 + 20) = v20;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v26;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v26;
  swift_beginAccess();
  v30 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v30;
  swift_beginAccess();
  v32 = *(a1 + 32);
  v31 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v32;
  *(v1 + 40) = v31;
  swift_beginAccess();
  v33 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v33;

  swift_beginAccess();
  LODWORD(v33) = *(a1 + 56);
  LOBYTE(v31) = *(a1 + 60);
  v34 = v105;
  swift_beginAccess();
  *v34 = v33;
  *(v1 + 60) = v31;
  swift_beginAccess();
  v36 = *(a1 + 64);
  v35 = *(a1 + 72);
  v37 = v106;
  swift_beginAccess();
  v38 = *(v1 + 72);
  *v37 = v36;
  *(v1 + 72) = v35;

  swift_beginAccess();
  v39 = *(a1 + 80);
  v40 = v107;
  swift_beginAccess();
  v41 = *v40;
  *v40 = v39;

  swift_beginAccess();
  v43 = *(a1 + 88);
  v42 = *(a1 + 96);
  v44 = v108;
  swift_beginAccess();
  v45 = *(v1 + 96);
  *v44 = v43;
  *(v1 + 96) = v42;

  v46 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v47 = v112;
  sub_213FB2E54(a1 + v46, v112, &qword_27C903CD8, &qword_2146E9808);
  v48 = v109;
  swift_beginAccess();
  sub_21402EDB8(v47, v1 + v48, &qword_27C903CD8, &qword_2146E9808);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  swift_beginAccess();
  v50 = v115;
  sub_213FB2E54(a1 + v49, v115, &qword_27C903CD0, &qword_2146E9800);
  v51 = v110;
  swift_beginAccess();
  sub_21402EDB8(v50, v1 + v51, &qword_27C903CD0, &qword_2146E9800);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v111;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  v55 = v120;
  sub_213FB2E54(a1 + v54, v120, &qword_27C903CC8, &qword_2146E97F8);
  v56 = v113;
  swift_beginAccess();
  sub_21402EDB8(v55, v1 + v56, &qword_27C903CC8, &qword_2146E97F8);
  swift_endAccess();
  v57 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v114;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v59;
  v60[1] = v58;

  v62 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = v116;
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v64;
  v65[1] = v63;

  v67 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v117;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v118;
  swift_beginAccess();
  v72 = *(v1 + v71);
  *(v1 + v71) = v70;

  v73 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = v119;
  swift_beginAccess();
  v76 = *(v1 + v75);
  *(v1 + v75) = v74;

  v77 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = v121;
  swift_beginAccess();
  v80 = *(v1 + v79);
  *(v1 + v79) = v78;

  v81 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = v122;
  swift_beginAccess();
  v84 = *(v1 + v83);
  *(v1 + v83) = v82;

  v85 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v123;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = (a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = v124;
  swift_beginAccess();
  v91 = v90[1];
  *v90 = v89;
  v90[1] = v88;

  v92 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
  swift_beginAccess();
  v93 = v130;
  sub_213FB2E54(a1 + v92, v130, &qword_27C903CB8, &qword_2146E97F0);
  v94 = v125;
  swift_beginAccess();
  sub_21402EDB8(v93, v1 + v94, &qword_27C903CB8, &qword_2146E97F0);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  swift_beginAccess();
  LOBYTE(v95) = *(a1 + v95);
  v96 = v126;
  swift_beginAccess();
  *(v1 + v96) = v95;
  v97 = a1 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
  swift_beginAccess();
  LODWORD(v96) = *v97;
  LOBYTE(v97) = *(v97 + 4);
  v98 = v127;
  swift_beginAccess();
  *v98 = v96;
  *(v98 + 4) = v97;
  v99 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  swift_beginAccess();
  LOBYTE(v99) = *(a1 + v99);
  v100 = v128;
  swift_beginAccess();
  *(v1 + v100) = v99;
  v101 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v101);
  v102 = v129;
  swift_beginAccess();
  *(v1 + v102) = a1;
  return v1;
}

uint64_t sub_21402D9F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_21402DA4C()
{
  result = qword_27C903D00;
  if (!qword_27C903D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903D00);
  }

  return result;
}

unint64_t sub_21402DAA0()
{
  result = qword_27C903D10;
  if (!qword_27C903D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903D10);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_21402DB90()
{
  result = qword_27C903D48;
  if (!qword_27C903D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903D48);
  }

  return result;
}

uint64_t sub_21402DBE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v90 - v5;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v6 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  v7 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData) = xmmword_2146E68C0;
  v92 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable) = 2;
  v93 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable) = 2;
  v94 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable) = 2;
  v95 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable) = 2;
  v96 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight) = 2;
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  v97 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  *v10 = 0;
  *(v10 + 4) = 1;
  v98 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable) = 2;
  v99 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled) = 2;
  v100 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable) = 2;
  v101 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode) = 3;
  v102 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext) = 2;
  v103 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable) = 2;
  v104 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData) = xmmword_2146E68C0;
  v105 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled) = 2;
  v106 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable) = 2;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  v107 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  v108 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  *v12 = 0;
  *(v12 + 4) = 1;
  v109 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable) = 2;
  v110 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare) = 2;
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  v111 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  *v13 = 0;
  *(v13 + 4) = 1;
  v112 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable) = 2;
  v14 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode) = 3;
  v15 = (v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  v113 = v14;
  v114 = v15;
  *v15 = 0;
  v15[1] = 0;
  v115 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable) = 2;
  v16 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay) = 2;
  v17 = v1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  v116 = v16;
  v117 = v17;
  *(v17 + 4) = 1;
  *v17 = 0;
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v18;
  *(v1 + 20) = v19;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v21;
  v22 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  v23 = v91;
  sub_213FB2E54(a1 + v22, v91, &unk_27C903788, "Į\r");
  swift_beginAccess();
  sub_21402EDB8(v23, v1 + v6, &unk_27C903788, "Į\r");
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = *v8;
  v28 = v8[1];
  *v8 = v26;
  v8[1] = v25;
  sub_213FDCA18(v26, v25);
  sub_213FDC6BC(v27, v28);
  v29 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v92;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v31) = *(a1 + v31);
  v32 = v93;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v94;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v95;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v96;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  swift_beginAccess();
  LODWORD(v38) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  swift_beginAccess();
  *v9 = v38;
  *(v9 + 4) = v39;
  v40 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
  swift_beginAccess();
  LODWORD(v39) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  v41 = v97;
  swift_beginAccess();
  *v41 = v39;
  *(v41 + 4) = v40;
  v42 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v98;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v99;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v100;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v101;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v102;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v103;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v104;
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  *v57 = v56;
  v57[1] = v55;
  sub_213FDCA18(v56, v55);
  sub_213FDC6BC(v58, v59);
  v60 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v105;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v106;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  LODWORD(v63) = *v64;
  LOBYTE(v64) = *(v64 + 4);
  v65 = v107;
  swift_beginAccess();
  *v65 = v63;
  *(v65 + 4) = v64;
  v66 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
  swift_beginAccess();
  LODWORD(v63) = *v66;
  LOBYTE(v66) = *(v66 + 4);
  v67 = v108;
  swift_beginAccess();
  *v67 = v63;
  *(v67 + 4) = v66;
  v68 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  LOBYTE(v68) = *(a1 + v68);
  v69 = v109;
  swift_beginAccess();
  *(v1 + v69) = v68;
  v70 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  LOBYTE(v70) = *(a1 + v70);
  v71 = v110;
  swift_beginAccess();
  *(v1 + v71) = v70;
  v72 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
  swift_beginAccess();
  LODWORD(v71) = *v72;
  LOBYTE(v72) = *(v72 + 4);
  v73 = v111;
  swift_beginAccess();
  *v73 = v71;
  *(v73 + 4) = v72;
  v74 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  v75 = v112;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  swift_beginAccess();
  LOBYTE(v76) = *(a1 + v76);
  v77 = v113;
  swift_beginAccess();
  *(v1 + v77) = v76;
  v78 = (a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = v114;
  swift_beginAccess();
  v82 = v81[1];
  *v81 = v80;
  v81[1] = v79;

  v83 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  LOBYTE(v83) = *(a1 + v83);
  v84 = v115;
  swift_beginAccess();
  *(v1 + v84) = v83;
  v85 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v116;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = a1 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
  swift_beginAccess();
  LODWORD(v85) = *v87;
  LOBYTE(v87) = *(v87 + 4);
  v88 = v117;
  swift_beginAccess();
  *v88 = v85;
  *(v88 + 4) = v87;
  return v1;
}

uint64_t sub_21402E6F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v64 - v11;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0xF000000000000000;
  *(v1 + 80) = 0;
  v65 = (v1 + 80);
  *(v1 + 64) = 0u;
  v64 = (v1 + 64);
  *(v1 + 48) = 0u;
  *(v1 + 88) = 0xF000000000000000;
  v12 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v66 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  v13 = type metadata accessor for CSDMConversationActivityContextProto(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v67 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v15 = type metadata accessor for CSDMHandleProto(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  v69 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  v70 = (v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v71 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  v19 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity) = 2;
  v21 = v1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  v73 = v20;
  v74 = v21;
  *v21 = 0;
  *(v21 + 8) = 1;
  swift_beginAccess();
  v22 = a1[2];
  v23 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  swift_beginAccess();
  v25 = a1[4];
  v24 = a1[5];
  swift_beginAccess();
  v26 = *(v1 + 32);
  v27 = *(v1 + 40);
  *(v1 + 32) = v25;
  *(v1 + 40) = v24;

  sub_213FDCA18(v25, v24);
  sub_213FDC6BC(v26, v27);
  swift_beginAccess();
  v29 = a1[6];
  v28 = a1[7];
  swift_beginAccess();
  v30 = *(v1 + 56);
  *(v1 + 48) = v29;
  *(v1 + 56) = v28;

  swift_beginAccess();
  v32 = a1[8];
  v31 = a1[9];
  v33 = v64;
  swift_beginAccess();
  v34 = *(v1 + 72);
  *v33 = v32;
  *(v1 + 72) = v31;

  swift_beginAccess();
  v35 = a1[10];
  v36 = a1[11];
  v37 = v65;
  swift_beginAccess();
  v38 = *v37;
  v39 = v37;
  v40 = *(v1 + 88);
  *v39 = v35;
  *(v1 + 88) = v36;
  sub_213FDCA18(v35, v36);
  sub_213FDC6BC(v38, v40);
  v41 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  v42 = v68;
  sub_213FB2E54(a1 + v41, v68, &qword_27C903DA0, &qword_2146E9880);
  v43 = v66;
  swift_beginAccess();
  sub_21402EDB8(v42, v1 + v43, &qword_27C903DA0, &qword_2146E9880);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  v45 = v72;
  sub_213FB2E54(a1 + v44, v72, &unk_27C903788, "Į\r");
  v46 = v67;
  swift_beginAccess();
  sub_21402EDB8(v45, v1 + v46, &unk_27C903788, "Į\r");
  swift_endAccess();
  v47 = a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  swift_beginAccess();
  v48 = *v47;
  LOBYTE(v47) = v47[8];
  v49 = v69;
  swift_beginAccess();
  *v49 = v48;
  *(v49 + 8) = v47;
  v50 = (a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v70;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v52;
  v53[1] = v51;

  v55 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v56 = v75;
  sub_213FB2E54(a1 + v55, v75, &qword_27C903D90, &qword_2146E9870);
  v57 = v71;
  swift_beginAccess();
  sub_21402EDB8(v56, v1 + v57, &qword_27C903D90, &qword_2146E9870);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  swift_beginAccess();
  LOBYTE(v58) = *(a1 + v58);
  v59 = v73;
  swift_beginAccess();
  *(v1 + v59) = v58;
  v60 = a1 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
  swift_beginAccess();
  v61 = *v60;
  LOBYTE(v60) = v60[8];
  v62 = v74;
  swift_beginAccess();
  *v62 = v61;
  *(v62 + 8) = v60;
  return v1;
}

uint64_t sub_21402EDB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_21402EE20()
{
  result = qword_27C903DF0;
  if (!qword_27C903DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903DF0);
  }

  return result;
}

unint64_t sub_21402EE74()
{
  result = qword_27C903E00;
  if (!qword_27C903E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903E00);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21402EF3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21402EF5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

void sub_21402EFEC()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21402F448(319, &qword_280B2E328, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21400E518(319, &unk_27C9035F8, type metadata accessor for CSDMHandleProto, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21402F448(319, &qword_280B2E320, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21402F448(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21402F448(319, &qword_27C903E58, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SingleKiss(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SingleKiss(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21402F254(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21402F274(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21402F3C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21402F3E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

void sub_21402F448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21402F508()
{
  if (*(v0 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 16);
    v2 = *(v0 + 24) & 1;
  }

  return result;
}

uint64_t sub_21402F574@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 24);
    *a2 = *(result + 16);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t sub_21402F5FC(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v13 = *(v2 + *(v6 + 32));
  v12[0] = 0x6E776F6E6B6E753CLL;
  v12[1] = 0xE90000000000003ELL;
  v12[2] = 0xD00000000000001CLL;
  v12[3] = 0x800000021478A360;
  if (v5(a1, &v13, v12))
  {

    v7 = *(v6 + 28);
    sub_213FB2DF4(v2 + v7, &qword_27C903F40, &unk_2146F1C50);
    sub_214032588(a1, v2 + v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    v9 = *(*(v8 - 8) + 56);

    return v9(v2 + v7, 0, 1, v8);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v11 = 0x6E776F6E6B6E753CLL;
    v11[1] = 0xE90000000000003ELL;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402F7C8(double a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 25);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402F904(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v14 = *(v2 + *(v6 + 32));
  v13[0] = 0x6E776F6E6B6E753CLL;
  v13[1] = 0xE90000000000003ELL;
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x800000021478A360;
  if (v5(a1, &v14, v13))
  {

    v7 = *(v6 + 28);
    sub_213FB2DF4(v2 + v7, &unk_27C9131A0, &unk_2146E9D10);
    v8 = sub_2146D8958();
    v12 = *(v8 - 8);
    (*(v12 + 32))(v2 + v7, a1, v8);
    v9 = *(v12 + 56);

    return v9(v2 + v7, 0, 1, v8);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v11 = 0x6E776F6E6B6E753CLL;
    v11[1] = 0xE90000000000003ELL;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FAF0(__int16 a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 19);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 18) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9BlastDoor12AngerMessageV8durationSfvs_0(float a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 21);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 20) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FD60(int a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 21);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 20) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV14MlsEraIdHeaderV03eraF0Sivs_0(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 25);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21402FFC8(char a1)
{
  v2 = v1;
  v9 = a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v8 = *(v2 + 17);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v3(&v9, &v8, v7))
  {

    *(v2 + 16) = v9;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140300F8(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v11 = BYTE4(a1) & 1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 22);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {

    *(v2 + 20) = (a1 & 0x100000000uLL) >> 32;
    *(v2 + 16) = a1;
    *(v2 + 21) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_214030244(uint64_t a1, char a2)
{
  v3 = v2;
  v12 = a1;
  v13 = a2 & 1;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 26);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(&v12, &v11, v10))
  {

    *(v3 + 16) = a1;
    *(v3 + 24) = a2 & 1;
    *(v3 + 25) = 0;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214030394(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_214030428;
  }

  return result;
}

uint64_t sub_214030458@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

uint64_t sub_214030484(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 8);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  *(a2 + 26) = v8;
  return result;
}

__n128 sub_2140304F8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

void (*sub_214030558(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2140305F8;
}

void sub_2140305F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 8);
  if (a2)
  {
    v11 = (*a1)[1];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    *(v3 + 26) = v9;
  }

  free(v2);
}

uint64_t sub_2140306B8()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

uint64_t sub_214030738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 48);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2140307AC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21403085C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v11 = *(v3 + 64);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 48), *(v3 + 56));

    *(v3 + 48) = a1;
    *(v3 + 56) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2140309A0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214030A78;
  }

  return result;
}

void sub_214030A78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    v16 = *(v3 + 64);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 48) = v5;
      *(v12 + 56) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v16 = *(v3 + 64);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 48) = v5;
  *(v8 + 56) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_214030C48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214030CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214030CF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

__n128 sub_214030D7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_u64[1];
  v7 = v1[3].n128_i64[0];
  v8 = v1[3].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

void (*sub_214030DE4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

void sub_214030E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 40);
  v9 = *(v3 + 48);
  v11 = *(v3 + 56);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v7;
    *(v3 + 56) = v6;
    *(v3 + 64) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 40);

    sub_213FDC6D0(v9, v11);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v7;
    *(v3 + 56) = v6;
    *(v3 + 64) = v8;
  }

  free(v2);
}

uint64_t sub_214030F64()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 88);

    return v1;
  }

  return result;
}

uint64_t sub_214030FE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 96);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 88);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214031058(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214031108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v11 = *(v3 + 104);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 88), *(v3 + 96));

    *(v3 + 88) = a1;
    *(v3 + 96) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21403124C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  v6 = *(v1 + 96);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214031324;
  }

  return result;
}

void sub_214031324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 72);
    v11 = *(v3 + 80);
    v16 = *(v3 + 104);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 88) = v5;
      *(v12 + 96) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 72);
  v6 = *(v3 + 80);
  v16 = *(v3 + 104);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 88) = v5;
  *(v8 + 96) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2140314F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21403154C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  *a2 = *(a1 + 72);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2140315A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  return result;
}

__n128 sub_214031628(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

void (*sub_214031690(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214031730;
}

void sub_214031730(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  v11 = *(v3 + 96);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 80);

    sub_213FDC6D0(v9, v11);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
  }

  free(v2);
}

uint64_t sub_214031810@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_214031CA0(v2);
}

__n128 sub_214031824(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[15];
  v4 = v1[16];
  sub_214031CE0(v1[14]);
  result = v6;
  *(v1 + 7) = v6;
  v1[16] = v2;
  return result;
}

unint64_t sub_21403188C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146E9C00;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214031A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0;
  *(v7 + 32) = v8;
  v9 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  return sub_214042A28(inited, a3);
}

uint64_t sub_214031B48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v22[0] = a1;
  v22[1] = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v16 = *v7;
  v17 = *(v7 + 8);
  v21 = a3;
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  result = v16(v22, &v21, v20);
  if (!v8)
  {
    if (result)
    {
      sub_213FDC6D0(*(v9 + 16), *(v9 + 24));
      *(v9 + 16) = a1;
      *(v9 + 24) = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v19 = a4;
      v19[1] = a5;
      v19[2] = a6;
      v19[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_214031C4C()
{
  result = qword_27C9130D0;
  if (!qword_27C9130D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9130D0);
  }

  return result;
}

uint64_t sub_214031CA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_214031CE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_214031D20(uint64_t a1)
{
  *(a1 + 8) = sub_214031D50();
  result = sub_214031DA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214031D50()
{
  result = qword_27C903F10;
  if (!qword_27C903F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903F10);
  }

  return result;
}

unint64_t sub_214031DA4()
{
  result = qword_27C903F18;
  if (!qword_27C903F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor17_AttributedStringVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_214031E68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214031EB0(uint64_t result, int a2, int a3)
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

uint64_t sub_214031F20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v23[0] = a1;
  v23[1] = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v16 = *v7;
  v17 = *(v7 + 8);
  v22 = a3;
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  result = v16(v23, &v22, v21);
  if (!v8)
  {
    if (result)
    {
      v19 = *(v9 + 24);

      *(v9 + 16) = a1;
      *(v9 + 24) = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v20 = a4;
      v20[1] = a5;
      v20[2] = a6;
      v20[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032024(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v22 = a1;
  v23 = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v14 = *v7;
  v15 = *(v7 + 8);
  v21 = a3;
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  result = v14(&v22, &v21, v20);
  if (!v8)
  {
    if (result)
    {
      sub_213FDC6BC(*(v9 + 16), *(v9 + 24));
      v17 = v22;
      v18 = v23;
      *(v9 + 16) = v22;
      *(v9 + 24) = v18;
      return sub_21402D9F8(v17, v18);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v19 = a4;
      v19[1] = a5;
      v19[2] = a6;
      v19[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032118(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v22 = a1;
  v23 = a2;
  if (a3 == 2)
  {
    a3 = *(v7 + 32);
  }

  else
  {
    *(v7 + 32) = a3;
  }

  v14 = *v7;
  v15 = *(v7 + 8);
  v21 = a3;
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  result = v14(&v22, &v21, v20);
  if (!v8)
  {
    if (result)
    {
      sub_214032564(*(v9 + 16), *(v9 + 24));
      v17 = v22;
      v18 = v23;
      *(v9 + 16) = v22;
      *(v9 + 24) = v18;
      return sub_213FDCA18(v17, v18);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v19 = a4;
      v19[1] = a5;
      v19[2] = a6;
      v19[3] = a7;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21403220C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  if (a4 == 2)
  {
    a4 = *(v8 + 40);
  }

  else
  {
    *(v8 + 40) = a4;
  }

  v15 = *v8;
  v16 = *(v8 + 8);
  v25 = a4;
  v24[0] = a5;
  v24[1] = a6;
  v24[2] = a7;
  v24[3] = a8;
  result = v15(&v26, &v25, v24);
  if (!v9)
  {
    if (result)
    {
      v18 = v10[3];
      v19 = v10[4];
      sub_214032578(v10[2]);
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v10[2] = v26;
      v10[3] = v21;
      v10[4] = v22;
      return sub_214031CA0(v20);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v23 = a5;
      v23[1] = a6;
      v23[2] = a7;
      v23[3] = a8;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_21403233C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v8 = v6;
  if (a2 == 2)
  {
    a2 = *(v6 + 24);
  }

  else
  {
    *(v6 + 24) = a2;
  }

  v14 = *v6;
  v15 = *(v6 + 8);
  v20 = a2;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  result = v14(&v21, &v20, v19);
  if (!v7)
  {
    if (result)
    {
      v17 = *(v8 + 16);

      *(v8 + 16) = a1;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v18 = a3;
      v18[1] = a4;
      v18[2] = a5;
      v18[3] = a6;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032438(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v10 = v7;
  v22 = a1;
  if (a2 == 2)
  {
    a2 = *(v7 + 24);
  }

  else
  {
    *(v7 + 24) = a2;
  }

  v16 = *v7;
  v17 = *(v7 + 8);
  v21 = a2;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  result = v16(&v22, &v21, v20);
  if (!v8)
  {
    if (result)
    {
      a7(*(v10 + 16));
      *(v10 + 16) = a1;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v19 = a3;
      v19[1] = a4;
      v19[2] = a5;
      v19[3] = a6;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_214032564(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_213FDC6BC(a1, a2);
  }

  return a1;
}

uint64_t sub_214032578(uint64_t result)
{
  if (result != 1)
  {
    return sub_214031CE0(result);
  }

  return result;
}

uint64_t sub_214032588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214032620(uint64_t a1)
{
  *(a1 + 8) = sub_2140326D4(&qword_27C903F48);
  result = sub_2140326D4(&qword_27C903F50);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChip()
{
  result = qword_27C903F60;
  if (!qword_27C903F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140326D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MBDChip();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214032740()
{
  sub_2140327BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2140327BC()
{
  if (!qword_27C903F70)
  {
    type metadata accessor for MBDChipContent();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C903F70);
    }
  }
}

uint64_t sub_214032824()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_214032868()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_2140328C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000021478A3D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_214032964(uint64_t a1)
{
  v2 = sub_214032B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140329A0(uint64_t a1)
{
  v2 = sub_214032B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F78, &qword_2146E9D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_214032B58()
{
  result = qword_280B34698;
  if (!qword_280B34698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34698);
  }

  return result;
}

uint64_t MediaMetadata.Context.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F80, &qword_2146E9D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_214032D68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F78, &qword_2146E9D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214032B58();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v4 + 8))(v7, v3);
}

BlastDoor::MediaMetadata::LargeImageContextualInfo __swiftcall MediaMetadata.LargeImageContextualInfo.init(pixelWidth:pixelHeight:bufferByteSize:)(Swift::Int pixelWidth, Swift::Int pixelHeight, Swift::Int bufferByteSize)
{
  *v3 = pixelWidth;
  v3[1] = pixelHeight;
  v3[2] = bufferByteSize;
  result.bufferByteSize = bufferByteSize;
  result.pixelHeight = pixelHeight;
  result.pixelWidth = pixelWidth;
  return result;
}

Swift::String __swiftcall MediaMetadata.LargeImageContextualInfo.description()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000002BLL, 0x800000021478A3A0);
  v4 = sub_2146DA428();
  MEMORY[0x2160545D0](v4);

  MEMORY[0x2160545D0](0x69576C6578697020, 0xED0000203A687464);
  v5 = sub_2146DA428();
  MEMORY[0x2160545D0](v5);

  MEMORY[0x2160545D0](0x65486C6578697020, 0xEE00203A74686769);
  v6 = sub_2146DA428();
  MEMORY[0x2160545D0](v6);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v7 = 0;
  v8 = 0xE000000000000000;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_2140330A0()
{
  v1 = 0x6965486C65786970;
  if (*v0 != 1)
  {
    v1 = 0x7942726566667562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6469576C65786970;
  }
}

uint64_t sub_214033114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21403C684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21403313C(uint64_t a1)
{
  v2 = sub_214033364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214033178(uint64_t a1)
{
  v2 = sub_214033364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaMetadata.LargeImageContextualInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F88, &qword_2146E9DA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214033364();
  sub_2146DAA28();
  v16 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_2146DA368();
  v14 = 2;
  sub_2146DA368();
  return (*(v5 + 8))(v8, v4);
}