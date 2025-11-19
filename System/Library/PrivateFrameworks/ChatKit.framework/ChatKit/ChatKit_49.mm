unint64_t sub_190C7BD20()
{
  v1 = [objc_opt_self() sharedConversationList];
  v2 = [v1 conversations];

  v3 = sub_1902188FC(0, &qword_1EAD466B0);
  v4 = sub_190D57180();

  v23 = sub_190821AD4(MEMORY[0x1E69E7CC0]);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_25:
      v20 = v0;
      sub_190C7C9CC(v4, v20, &v23);

      return v23;
    }

    v7 = 0;
    if (v6 >= 0x64)
    {
      v8 = 100;
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v8)
    {
LABEL_7:
      sub_190D52690();
      v9 = (v4 & 0xC000000000000001) == 0 || v7;
      if ((v9 & 1) == 0)
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_190D582F0();
          v10 = v11;
        }

        while (v8 != v11);
      }

      if (v5)
      {

        v3 = sub_190D58550();
        v7 = v13;
        v8 = v14;
        if (v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v7 = 0;
        v3 = v4 & 0xFFFFFFFFFFFFFF8;
        v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
        v8 = (2 * v8) | 1;
        if (v8)
        {
LABEL_18:
          v5 = v12;
          sub_190D58780();
          swift_unknownObjectRetain_n();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = MEMORY[0x1E69E7CC0];
          }

          v18 = *(v17 + 16);

          if (!__OFSUB__(v8 >> 1, v7))
          {
            if (v18 == (v8 >> 1) - v7)
            {
              v19 = swift_dynamicCastClass();

              v4 = v19;
              if (!v19)
              {
                swift_unknownObjectRelease();
                v4 = MEMORY[0x1E69E7CC0];
              }

              goto LABEL_24;
            }

            goto LABEL_35;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          swift_unknownObjectRelease();
          v12 = v5;
        }
      }

      sub_190C22E34(v3, v12, v7, v8);
      v16 = v15;

      v4 = v16;
LABEL_24:
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_25;
  }

  result = sub_190D581C0();
  if (result >= 0x64)
  {
    v8 = 100;
  }

  else
  {
    v8 = result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    result = sub_190D581C0();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = v22 == 0;
      if (sub_190D581C0() >= v8)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

id sub_190C7C058(void **a1, void *a2, uint64_t *a3)
{
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [v11 chat];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 guid];

    v15 = sub_190D56F10();
    v17 = v16;
  }

  else
  {
    sub_190D50450();
    v18 = sub_190D51850();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v46 = v18;
    v47 = v20;
    sub_190D52690();
    MEMORY[0x193AF28B0](0x676E697373696D5BLL, 0xEE005D7461686320);

    v15 = v46;
    v17 = v47;
  }

  result = [a2 guidsOfPreservedConversations];
  if (result)
  {
    v22 = result;
    v23 = sub_190D57410();

    v24 = sub_190CA994C(v15, v17, v23);

    if (sub_190D570C0() & 1) != 0 || (sub_190D570C0())
    {
      sub_190D52690();
      v25 = sub_190D56FD0();
      v26 = sub_190C7C91C(v25, v15, v17);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v15 = MEMORY[0x193AF2820](v26, v28, v30, v32);
      v34 = v33;

      v17 = v34;
    }

    v35 = [v11 cachedCalculatedFilterModes];
    if (v35)
    {
      v36 = v35;
      sub_1902188FC(0, &qword_1EAD46510);
      sub_190218944();
      sub_190D57410();

      sub_190D574B0();
    }

    v37 = sub_190D57480();
    v39 = v38;

    v46 = v37;
    v47 = v39;
    MEMORY[0x193AF28B0](44, 0xE100000000000000);
    v40 = sub_190C7B7A4();
    MEMORY[0x193AF28B0](v40);

    if (v24)
    {
      v41 = 26667;
    }

    else
    {
      v41 = 0;
    }

    if (v24)
    {
      v42 = 0xE200000000000000;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    MEMORY[0x193AF28B0](v41, v42);

    v43 = v46;
    v44 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *a3;
    *a3 = 0x8000000000000000;
    sub_190C1C11C(v43, v44, v15, v17, isUniquelyReferenced_nonNull_native);

    *a3 = v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C7C42C()
{
  [v0 isFiltered];
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  v2 = sub_190D58720();
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  v3 = sub_190D58720();
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](41, 0xE100000000000000);
  return 2639465;
}

uint64_t sub_190C7C544()
{
  [v0 spamSubCategory];
  [v0 spamCategory];
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  v2 = sub_190D58720();
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](41, 0xE100000000000000);
  return 2642019;
}

uint64_t sub_190C7C630()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - v6;
  v8 = [v1 messageCount];
  v9 = [v1 lastMessage];
  if (v9)
  {

    v10 = 49;
  }

  else
  {
    v10 = 48;
  }

  v11 = [v1 lastTUConversationCreatedDate];
  if (v11)
  {
    v12 = v11;
    sub_190D517E0();

    v13 = sub_190D51840();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    v14 = 49;
  }

  else
  {
    v15 = sub_190D51840();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v14 = 48;
  }

  sub_19022EEA4(v7, &unk_1EAD5E5D0);
  v16 = [v1 lastScheduledMessageCreatedDate];
  if (v16)
  {
    v17 = v16;
    sub_190D517E0();

    v18 = 0;
    v19 = 49;
  }

  else
  {
    v18 = 1;
    v19 = 48;
  }

  v20 = sub_190D51840();
  (*(*(v20 - 8) + 56))(v5, v18, 1, v20);
  sub_19022EEA4(v5, &unk_1EAD5E5D0);
  if (v8 <= 0)
  {
    v21 = 48;
  }

  else
  {
    v21 = 49;
  }

  v23[0] = 2642025;
  v23[1] = 0xE300000000000000;
  MEMORY[0x193AF28B0](v21, 0xE100000000000000);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  MEMORY[0x193AF28B0](v10, 0xE100000000000000);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  MEMORY[0x193AF28B0](v14, 0xE100000000000000);

  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  MEMORY[0x193AF28B0](v19, 0xE100000000000000);

  MEMORY[0x193AF28B0](41, 0xE100000000000000);
  return v23[0];
}

unint64_t sub_190C7C91C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_190D56FF0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_190D57100();
}

void sub_190C7C9CC(unint64_t a1, void *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_190C7C058(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

unint64_t sub_190C7CACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C58);
  v0 = swift_allocObject();
  *(v0 + 32) = 0xD000000000000022;
  *(v0 + 16) = xmmword_190E01110;
  *(v0 + 40) = 0x8000000190E7D250;
  v1 = objc_opt_self();
  if ([v1 isTextMessageExtensionEnabled])
  {
    v2 = 49;
  }

  else
  {
    v2 = 48;
  }

  *(v0 + 48) = v2;
  *(v0 + 56) = 0xE100000000000000;
  *(v0 + 64) = 0xD000000000000017;
  *(v0 + 72) = 0x8000000190E7D280;
  if ([v1 hideUnknownSenders])
  {
    v3 = 49;
  }

  else
  {
    v3 = 48;
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = 0xE100000000000000;
  *(v0 + 96) = 0xD00000000000001CLL;
  *(v0 + 104) = 0x8000000190E7D2A0;
  if ([v1 hidePromotionalMessages])
  {
    v4 = 49;
  }

  else
  {
    v4 = 48;
  }

  *(v0 + 112) = v4;
  *(v0 + 120) = 0xE100000000000000;
  *(v0 + 128) = 0xD00000000000001ELL;
  *(v0 + 136) = 0x8000000190E7D2C0;
  if ([v1 hideTransactionalMessages])
  {
    v5 = 49;
  }

  else
  {
    v5 = 48;
  }

  *(v0 + 144) = v5;
  *(v0 + 152) = 0xE100000000000000;
  *(v0 + 160) = 0xD000000000000022;
  *(v0 + 168) = 0x8000000190E7D2E0;
  if ([v1 isFilterUnknownSendersEnabled])
  {
    v6 = 49;
  }

  else
  {
    v6 = 48;
  }

  *(v0 + 176) = v6;
  *(v0 + 184) = 0xE100000000000000;
  *(v0 + 192) = 0xD00000000000001BLL;
  *(v0 + 200) = 0x8000000190E7D310;
  if ([v1 isSpamFilteringEnabled])
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  *(v0 + 208) = v7;
  *(v0 + 216) = 0xE100000000000000;
  *(v0 + 224) = 0xD000000000000021;
  *(v0 + 232) = 0x8000000190E7D330;
  if ([v1 timeSensitivePriorityEnabled])
  {
    v8 = 49;
  }

  else
  {
    v8 = 48;
  }

  *(v0 + 240) = v8;
  *(v0 + 248) = 0xE100000000000000;
  *(v0 + 256) = 0xD000000000000025;
  *(v0 + 264) = 0x8000000190E7D360;
  if ([v1 verificationCodesPriorityEnabled])
  {
    v9 = 49;
  }

  else
  {
    v9 = 48;
  }

  *(v0 + 272) = v9;
  *(v0 + 280) = 0xE100000000000000;
  *(v0 + 288) = 0xD00000000000001CLL;
  *(v0 + 296) = 0x8000000190E7D390;
  if ([v1 personalPriorityEnabled])
  {
    v10 = 49;
  }

  else
  {
    v10 = 48;
  }

  *(v0 + 304) = v10;
  *(v0 + 312) = 0xE100000000000000;
  *(v0 + 320) = 0xD000000000000020;
  *(v0 + 328) = 0x8000000190E7D3B0;
  if ([v1 transactionsPriorityEnabled])
  {
    v11 = 49;
  }

  else
  {
    v11 = 48;
  }

  *(v0 + 336) = v11;
  *(v0 + 344) = 0xE100000000000000;
  *(v0 + 352) = 0xD00000000000001DLL;
  *(v0 + 360) = 0x8000000190E7D3E0;
  if ([v1 promotionsPriorityEnabled])
  {
    v12 = 49;
  }

  else
  {
    v12 = 48;
  }

  *(v0 + 368) = v12;
  *(v0 + 376) = 0xE100000000000000;
  *(v0 + 384) = 0x76697469736E6573;
  *(v0 + 392) = 0xEB00000000495565;
  v13 = sub_190D56ED0();
  v14 = sub_190D56ED0();
  v15 = IMGetDomainBoolForKey();

  if (v15)
  {
    v16 = 49;
  }

  else
  {
    v16 = 48;
  }

  *(v0 + 400) = v16;
  *(v0 + 408) = 0xE100000000000000;
  *(v0 + 416) = 0xD00000000000001ELL;
  *(v0 + 424) = 0x8000000190E7D400;
  if (CKMessageUnknownFilteringEnabled())
  {
    v17 = 49;
  }

  else
  {
    v17 = 48;
  }

  *(v0 + 432) = v17;
  *(v0 + 440) = 0xE100000000000000;
  *(v0 + 448) = 0xD000000000000013;
  *(v0 + 456) = 0x8000000190E7D420;
  if (IMSharedHelperMessageSIMFilteringEnabled())
  {
    v18 = 49;
  }

  else
  {
    v18 = 48;
  }

  *(v0 + 464) = v18;
  *(v0 + 472) = 0xE100000000000000;
  *(v0 + 480) = 0xD000000000000015;
  *(v0 + 488) = 0x8000000190E7D440;
  if ([objc_opt_self() spamInboxEnabled])
  {
    v19 = 49;
  }

  else
  {
    v19 = 48;
  }

  *(v0 + 496) = v19;
  *(v0 + 504) = 0xE100000000000000;
  *(v0 + 512) = 0xD000000000000012;
  *(v0 + 520) = 0x8000000190E7D460;
  if (CKIsBlackholeEnabled())
  {
    v20 = 49;
  }

  else
  {
    v20 = 48;
  }

  *(v0 + 528) = v20;
  *(v0 + 536) = 0xE100000000000000;
  *(v0 + 544) = 0xD00000000000001DLL;
  *(v0 + 552) = 0x8000000190E7D480;
  if (CKMessageSpamFilteringEnabled())
  {
    v21 = 49;
  }

  else
  {
    v21 = 48;
  }

  *(v0 + 560) = v21;
  *(v0 + 568) = 0xE100000000000000;
  *(v0 + 576) = 0xD000000000000019;
  *(v0 + 584) = 0x8000000190E7D4A0;
  if (CKMessageFilteringEnabled())
  {
    v22 = 49;
  }

  else
  {
    v22 = 48;
  }

  *(v0 + 592) = v22;
  *(v0 + 600) = 0xE100000000000000;
  *(v0 + 608) = 0xD000000000000021;
  *(v0 + 616) = 0x8000000190E7D4C0;
  if (CKMessageForceFilteringIsExpected())
  {
    v23 = 49;
  }

  else
  {
    v23 = 48;
  }

  *(v0 + 624) = v23;
  *(v0 + 632) = 0xE100000000000000;
  *(v0 + 640) = 0xD000000000000028;
  *(v0 + 648) = 0x8000000190E7D4F0;
  v24 = objc_opt_self();
  if ([v24 isTimeSensitiveCustomModelAvailable])
  {
    v25 = 49;
  }

  else
  {
    v25 = 48;
  }

  *(v0 + 656) = v25;
  *(v0 + 664) = 0xE100000000000000;
  *(v0 + 672) = 0xD00000000000002ALL;
  *(v0 + 680) = 0x8000000190E7D520;
  if ([v24 areTransactionsPromotionsPriorityAvailable])
  {
    v26 = 49;
  }

  else
  {
    v26 = 48;
  }

  *(v0 + 688) = v26;
  *(v0 + 696) = 0xE100000000000000;
  *(v0 + 704) = 0xD00000000000001ELL;
  *(v0 + 712) = 0x8000000190E7D550;
  if (CKIsForceUnknownFilteringEnabled())
  {
    v27 = 49;
  }

  else
  {
    v27 = 48;
  }

  *(v0 + 720) = v27;
  *(v0 + 728) = 0xE100000000000000;
  *(v0 + 736) = v52;
  *(v0 + 744) = 0x8000000190E7D570;
  if ([objc_opt_self() messageSummarizationEnabled])
  {
    v28 = 49;
  }

  else
  {
    v28 = 48;
  }

  *(v0 + 752) = v28;
  *(v0 + 760) = 0xE100000000000000;
  strcpy((v0 + 768), "extensionName");
  *(v0 + 782) = -4864;
  v29 = sub_190D56ED0();
  v30 = MEMORY[0x193AF5640](v29, @"IncomingMessageAlertSpamFiltration");

  if (v30)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  if (*(&v56 + 1))
  {
    if (swift_dynamicCast())
    {
      v32 = v53;
      v31 = v54;
      goto LABEL_78;
    }
  }

  else
  {
    sub_19022EEA4(&v57, &unk_1EAD551C0);
  }

  v31 = 0xE400000000000000;
  v32 = 1701736302;
LABEL_78:
  *(v0 + 784) = v32;
  *(v0 + 792) = v31;
  *(v0 + 800) = 0x6F69736E65747865;
  *(v0 + 808) = 0xEB0000000044496ELL;
  v33 = sub_190D56ED0();
  v34 = MEMORY[0x193AF5640](v33, @"spamFiltrationExtensionID");

  if (v34)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  if (*(&v56 + 1))
  {
    if (swift_dynamicCast())
    {
      v36 = v53;
      v35 = v54;
      goto LABEL_86;
    }
  }

  else
  {
    sub_19022EEA4(&v57, &unk_1EAD551C0);
  }

  v35 = 0xE400000000000000;
  v36 = 1701736302;
LABEL_86:
  *(v0 + 816) = v36;
  *(v0 + 824) = v35;
  *(v0 + 832) = 0xD00000000000001ALL;
  *(v0 + 840) = 0x8000000190E7D590;
  v37 = sub_190D56ED0();
  v38 = MEMORY[0x193AF5640](v37, @"spamFiltrationFirstPartyExtensionVersion");

  if (v38)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v57 = v55;
  v58 = v56;
  if (*(&v56 + 1))
  {
    if (swift_dynamicCast())
    {
      v40 = v53;
      v39 = v54;
      goto LABEL_94;
    }
  }

  else
  {
    sub_19022EEA4(&v57, &unk_1EAD551C0);
  }

  v39 = 0xE400000000000000;
  v40 = 1701736302;
LABEL_94:
  *(v0 + 848) = v40;
  *(v0 + 856) = v39;
  *(v0 + 864) = 0xD00000000000001ALL;
  *(v0 + 872) = 0x8000000190E7D5B0;
  v41 = [objc_opt_self() sharedBehaviors];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 isSpamFilteringUISupported];

    if (v43)
    {
      v44 = 49;
    }

    else
    {
      v44 = 48;
    }

    v45 = 0xE100000000000000;
  }

  else
  {
    v45 = 0xE300000000000000;
    v44 = 6581877;
  }

  *(v0 + 880) = v44;
  *(v0 + 888) = v45;
  *(v0 + 896) = 0xD00000000000001CLL;
  *(v0 + 904) = 0x8000000190E7D5D0;
  v46 = sub_190D56ED0();
  v47 = sub_190D56ED0();
  v48 = IMGetDomainBoolForKey();

  v49 = 48;
  if (v48)
  {
    v49 = 49;
  }

  *(v0 + 912) = v49;
  *(v0 + 920) = 0xE100000000000000;
  v50 = sub_190821AD4(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v50;
}

unint64_t sub_190C7D448()
{
  v0 = sub_190821AD4(MEMORY[0x1E69E7CC0]);
  v1 = [objc_opt_self() sharedConversationList];
  v2 = [v1 conversationsDictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD606A0);
  sub_190D56D80();

  return v0;
}

void sub_190C7D758(char *a1)
{
  v2 = *&a1[OBJC_IVAR___CKTapbackPlatterView_tapback];
  if (v2)
  {
    v4 = v2;
    v5 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v2, 1);
    type metadata accessor for TapbackClassicView();
    v6 = swift_dynamicCastClass();
    if (v6 && *&a1[OBJC_IVAR___CKTapbackPlatterView_tapbackView])
    {
      v7 = v6;
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
        v10 = v8;
        swift_beginAccess();
        LOBYTE(v9) = *(v10 + v9);
        v11 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
        v12 = v7;
        swift_beginAccess();
        *(v7 + v11) = v9;
        v13 = OBJC_IVAR___CKTapbackClassicView_isSelected;
        swift_beginAccess();
        LOBYTE(v13) = *(v12 + v13);
        v14 = v5;
        sub_190C89C20(v13);
      }
    }

    v15 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
    type metadata accessor for TapbackPickerPlatterLayout();
    swift_initStackObject();
    v16 = v15;
    v17 = v1;
    v18 = sub_1909DCA94(v16, a1, 0, v17);
    swift_beginAccess();
    v19 = v18[6];
    v20 = v18[7];
    v21 = v18[8];
    v22 = v18[9];
    [v5 platterEdgeInsets];
    v24 = v23;
    v26 = v25;
    v38.origin.x = v19;
    v38.origin.y = v20;
    v38.size.width = v21;
    v38.size.height = v22;
    v39 = CGRectInset(v38, v26, v24);
    CGRectGetHeight(v39);
    v40.origin.x = v19;
    v40.origin.y = v20;
    v40.size.width = v21;
    v40.size.height = v22;
    CGRectGetHeight(v40);
    v27 = v5;
    sub_190C7E254(v5);

    v28 = *&v17[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer];
    [v28 setFrame_];
    v29 = [v28 layer];
    v30 = sub_190D51C70();
    v31 = sub_190D56ED0();
    [v29 setValue:v30 forKeyPath:v31];

    v32 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:550.915 damping:35.6725 initialVelocity:{0.0, 0.0}];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v32 timingParameters:0.0];
    v34 = swift_allocObject();
    *(v34 + 16) = v17;
    aBlock[4] = sub_190C7E5E8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_48_2;
    v35 = _Block_copy(aBlock);
    v36 = v17;

    [v33 addAnimations_];
    _Block_release(v35);
    [v33 startAnimationAfterDelay_];
  }
}

void sub_190C7DB54(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v1 setAlpha_];
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_190C7DC18(char *a1)
{
  sub_190C7D758(a1);

  sub_190944B80(a1);
}

void sub_190C7DC50(char *a1)
{
  sub_190C7D758(a1);

  sub_1909471F4(a1);
}

uint64_t sub_190C7DC88(void *a1)
{
  sub_190C7E254(0);
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_initStackObject();
  v4 = v3;
  v5 = v1;
  v6 = a1;
  v7 = sub_1909DCA94(v4, v6, 0, v5);
  v8 = *&v5[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer];
  v9 = [v8 layer];
  v10 = sub_190D51C70();
  v11 = sub_190D56ED0();
  [v9 setValue:v10 forKeyPath:v11];

  v12 = sub_190C19AD8(1);
  if (v12)
  {
    v13 = v12;
    swift_beginAccess();
    v14 = v7[6];
    v15 = v7[7];
    v16 = v7[8];
    v17 = v7[9];
    sub_190D50920();
    [v13 platterEdgeInsets];
    v19 = v18;
    v21 = v20;
    v40.origin.x = v14;
    v40.origin.y = v15;
    v40.size.width = v16;
    v40.size.height = v17;
    v41 = CGRectInset(v40, v21, v19);
    Height = CGRectGetHeight(v41);
    v42.origin.x = v14;
    v42.origin.y = v15;
    v42.size.width = v16;
    v42.size.height = v17;
    v23 = Height / CGRectGetHeight(v42);
    v24 = v13;
    sub_190C7E254(v13);

    [v8 setFrame_];
    v25 = *&v5[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
    [v25 center];
    [v8 setCenter_];
    [v25 frame];

    v26 = [v8 layer];
    v27 = sub_190D51C70();
    v28 = sub_190D56ED0();
    [v26 setValue:v27 forKeyPath:v28];

    [v8 setAlpha_];
    v29 = [v8 layer];
    v30 = sub_190D51C70();
    v31 = sub_190D56ED0();
    [v29 setValue:v30 forKeyPath:v31];

    v32 = dbl_190E01150[*&v5[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] == 1];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:650.915 damping:65.6725 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v33 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v5;
    *(v35 + 24) = v23;
    aBlock[4] = sub_190C7E5DC;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_120;
    v36 = _Block_copy(aBlock);
    v37 = v5;

    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
  }

  sub_19094941C(v6);
}

void sub_190C7E10C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v1 setAlpha_];
  v2 = [v1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];

  v5 = [v1 layer];
  v6 = sub_190D51C70();
  v7 = sub_190D56ED0();
  [v5 setValue:v6 forKeyPath:v7];
}

void sub_190C7E254(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  v4 = [v3 subviews];
  sub_190861700();
  v5 = sub_190D57180();

  if (v5 >> 62)
  {
    v6 = sub_190D581C0();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AF3B90](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    [v8 removeFromSuperview];
  }

LABEL_10:

  if (a1)
  {
    v10 = a1;
    [v3 addSubview_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [v10 centerXAnchor];
    v12 = [v3 centerXAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    [v13 setActive_];
    v14 = [v10 centerYAnchor];
    v15 = [v3 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    [v16 setActive_];
    v17 = [v10 widthAnchor];
    v18 = [v3 widthAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    [v19 setActive_];
    v20 = [v10 heightAnchor];
    v21 = [v3 heightAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setActive_];
  }
}

id sub_190C7E584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerSentTapbackContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C7E704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TapbackPickerImageShapeView.TapbackPickerImageView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

void sub_190C7E8A8(uint64_t a1, uint64_t a2, double a3)
{
  v7 = OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView;
  v8 = *&v3[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  v9 = [objc_allocWithZone(type metadata accessor for TapbackPickerImageShapeView.TapbackPickerImageView()) initWithImage_];
  [v9 setContentMode_];
  [v9 setTintColor_];
  if (v8)
  {
    [v8 alpha];
  }

  else
  {
    v10 = 1.0;
  }

  [v9 setAlpha_];
  [v3 addSubview_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v9 centerXAnchor];
  v12 = [v3 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [v9 centerYAnchor];
  v15 = [v3 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  [v16 setActive_];
  v17 = [v9 heightAnchor];
  v18 = [v3 heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 multiplier:a3 constant:0.0];

  [v19 setActive_];
  v20 = [v9 widthAnchor];

  v21 = [v3 widthAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 multiplier:a3 constant:0.0];

  [v22 setActive_];
  v23 = *&v3[v7];
  *&v3[v7] = v9;
}

void *sub_190C7EC20(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC48]) init];
  *&v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView] = 0;
  v4[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for TapbackBlurView();
  v10 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v10[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 1;
  v11 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A86CA4(v11);

  v12 = OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer;
  v13 = *&v10[OBJC_IVAR____TtC7ChatKit23TapbackPickerButtonView_longPressGestureRecognizer];
  v14 = v10;
  [v13 addTarget:v14 action:sel_longPressRecognized_];
  [*&v10[v12] setMinimumPressDuration_];
  [*&v10[v12] setDelegate_];
  v15 = *&v10[v12];
  v16 = v14;
  [v16 addGestureRecognizer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_190DD1D90;
  v18 = sub_190D53270();
  v19 = MEMORY[0x1E69DC0F8];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  MEMORY[0x193AF3550](v17, sel_interfaceStyleChanged);
  swift_unknownObjectRelease();

  v20 = [v16 traitCollection];

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0xF0))(v20);
  return v16;
}

uint64_t sub_190C7EE64(void *a1)
{
  result = [a1 state];
  if (result > 2)
  {
    if (result == 3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
      v5 = a1;
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
      v5 = a1;
    }

    return v4(v5);
  }

  if (result == 1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
    v5 = a1;

    return v4(v5);
  }

  if (result == 2)
  {
    [a1 locationInView_];
    result = [v1 pointInside:0 withEvent:?];
    if ((result & 1) == 0)
    {
      [a1 setEnabled_];

      return [a1 setEnabled_];
    }
  }

  return result;
}

void sub_190C7F178(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent) == 1)
  {
    v2 = [a1 userInterfaceStyle];
    v3 = objc_opt_self();
    v4 = &selRef_systemGray2Color;
    if (v2 != 1)
    {
      v4 = &selRef_tertiaryLabelColor;
    }

    v5 = [v3 *v4];
    if (qword_1EAD456B0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EAD9D5A0;
    if (CKIsRunningInMacCatalyst())
    {
      v7 = 0.605;
    }

    else
    {
      v7 = 0.6;
    }

    v8 = v5;
    sub_190C7E8A8(v6, v5, v7);
  }
}

uint64_t sub_190C7F2AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190C7F344(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190C7F3DC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190C7F4DC(uint64_t a1, void *a2)
{
  v3 = sub_190D56ED0();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (v4)
  {
    v5 = [objc_opt_self() configurationWithWeight_];
    v6 = [v4 imageByApplyingSymbolConfiguration_];

    if (v6)
    {
      *a2 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_190C7F5B4()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent) == 1)
  {
    if (qword_1EAD51FD8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EAD9E5A0;
    v2 = [objc_opt_self() systemFillColor];
    sub_190C7E8A8(v1, v2, 0.6);
  }
}

uint64_t sub_190C7F688()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190C7F6C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_19092D4D0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190C7F79C()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_190DD55F0;
      *(v3 + 32) = [objc_opt_self() labelColor];
      sub_1902188FC(0, &qword_1EAD46520);
      v4 = sub_190D57160();

      v5 = objc_opt_self();
      v6 = [v5 configurationWithPaletteColors_];

      v7 = [v5 configurationWithWeight_];
      v8 = [v6 configurationByApplyingConfiguration_];

      v9 = v8;
      v10 = sub_190D56ED0();
      [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];
LABEL_6:

      return;
    }

    v11 = objc_opt_self();
    v12 = [v11 systemGray2Color];
    v13 = [v11 systemGray3Color];
    v14 = [v11 dynamicColorWithLightColor:v12 darkColor:v13];

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_190DD5CE0;
      v16 = v14;
      *(v15 + 32) = [v11 whiteColor];
      *(v15 + 40) = v16;
      sub_1902188FC(0, &qword_1EAD46520);
      v17 = v16;
      v18 = sub_190D57160();

      v19 = objc_opt_self();
      v20 = [v19 configurationWithPaletteColors_];

      v21 = [v19 configurationWithWeight_];
      v22 = [v20 configurationByApplyingConfiguration_];

      v9 = v22;
      v10 = sub_190D56ED0();
      [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_190C7FB94(double a1, double a2, double a3, double a4)
{
  *(v4 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_hoverRecognizer) = 0;
  v9 = sub_190C7EC20(a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  result = [v10 sharedBehaviors];
  if (result)
  {
    v13 = result;
    v14 = [result usesTapbackRefreshStyling];

    if (v14)
    {
      [v11 ck:0 applyTapbackGlassBackgroundUsingAdaptive:0 smoothness:0.0 flexible:?];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C7FC8C()
{
  if (qword_1EAD45500 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD9D588;
  v1 = qword_1EAD52108;
  v2 = qword_1EAD9D588;
  if (v1 != -1)
  {
    swift_once();
  }

  sub_190C7E8A8(v0, 0, *&qword_1EAD9E740);
}

uint64_t sub_190C7FD50(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190C7FDE8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190C7FE80(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_190C7FF18(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  [v5 bounds];
  v10 = CGRectInset(v9, -4.0, -4.0);
  v8.x = a2;
  v8.y = a3;
  v6 = CGRectContainsPoint(v10, v8);

  return v6;
}

void sub_190C7FF7C()
{
  sub_19024C978(v0 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_hoverRecognizer);
}

void sub_190C80044()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TapbackPickerArrowButtonView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_gradientBackground];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_gradientMask];
  [v1 bounds];
  [v2 setFrame_];
  v3 = [v0 layer];
  [v0 bounds];
  [v3 setCornerRadius_];
}

void sub_190C8016C(void *a1)
{
  [a1 userInterfaceStyle];
  sub_190D56F10();
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (v2)
  {
    v3 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_190DD1D90;
    v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v6 = sub_190D56ED0();

    v7 = [v5 initWithType_];

    *(v4 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
    *(v4 + 32) = v7;
    v8 = sub_190D57160();

    [v3 setFilters_];
  }

  else
  {
  }
}

id sub_190C80308(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v2, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  result = *(v2 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

id sub_190C803CC(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v2, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  result = *(v2 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

id sub_190C80488(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  result = *(v2 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_190C80544()
{
  sub_19024C978(v0 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_gradientMask);
}

id sub_190C805AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_190C80678()
{
  result = qword_1EAD619A8;
  if (!qword_1EAD619A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD619A8);
  }

  return result;
}

uint64_t sub_190C80750()
{
  v1 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190C8081C(char a1)
{
  v3 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  v4 = 0;
  v1[v3] = a1;
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect];
  }

  [v1 setEffect_];
}

void sub_190C808A0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  swift_beginAccess();
  v5 = 0;
  v3[v4] = v2;
  if (v2 == 1)
  {
    v5 = *&v3[OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect];
  }

  [v3 setEffect_];
}

void (*sub_190C8092C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C809B4;
}

void sub_190C809B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (v4[v3[4]] == 1)
    {
      v5 = *&v4[OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect];
    }

    else
    {
      v5 = 0;
    }

    [v4 setEffect_];
  }

  free(v3);
}

id ToggleableVisualEffectView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

id ToggleableVisualEffectView.init(effect:)(uint64_t a1)
{
  v1[OBJC_IVAR___CKToggleableVisualEffectView_isEffectActive] = 1;
  *&v1[OBJC_IVAR___CKToggleableVisualEffectView_toggleableEffect] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ToggleableVisualEffectView();
  return objc_msgSendSuper2(&v4, sel_initWithEffect_, a1);
}

id ToggleableVisualEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToggleableVisualEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C80CDC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_190D584E0();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD619D8);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1908764E0(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

id sub_190C80D98()
{
  result = [objc_allocWithZone(type metadata accessor for CKSceneManager()) init];
  qword_1EAD619C0 = result;
  return result;
}

id static CKSceneManager.shared.getter()
{
  if (qword_1EAD51FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD619C0;

  return v1;
}

uint64_t sub_190C80ED4()
{
  v1 = OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v3 = sub_190D581C0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  sub_190D52690();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = sub_190A946E0(v3, 0);
  sub_190D52690();
  v5 = sub_190C83A70(&v7, (v4 + 32), v3, v2);
  result = sub_190219C78();
  if (v5 == v3)
  {

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_190C81070(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v8 = *(v2 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = sub_190D581C0();
  if (!__OFADD__(result, 1))
  {
    *(v3 + v6) = sub_190C81BA0(v8, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + v6);
    sub_190C1D3EC(a2, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + v6) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_190C811F0(void *a1)
{
  swift_beginAccess();
  sub_190C81934(a1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_190C812E4(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_190D52690();
  v5 = sub_190C80CDC(a1, v4);

  return v5;
}

uint64_t sub_190C81460()
{
  swift_getObjectType();
  v0 = sub_190D58980();
  MEMORY[0x193AF28B0](v0);

  MEMORY[0x193AF28B0](0x3A73656E65637320, 0xE900000000000020);
  swift_beginAccess();
  sub_190C83C5C();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD619D8);
  sub_190C83DB4(&qword_1EAD619E0, sub_190C83C5C);
  v1 = sub_190D56DA0();
  v3 = v2;

  MEMORY[0x193AF28B0](v1, v3);

  MEMORY[0x193AF28B0](62, 0xE100000000000000);
  return 60;
}

id CKSceneManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSceneManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190C815F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_19022DCEC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_190B67DE8();
      v10 = v12;
    }

    sub_190824530((*(v10 + 56) + 32 * v8), a3);
    sub_190C81F54(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_190C81698@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_190875C84(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_190B67FA0();
      v9 = v11;
    }

    sub_19084CFD0(*(v9 + 48) + 40 * v7);
    sub_190824530((*(v9 + 56) + 32 * v7), a2);
    sub_190C82104(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_190C8173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_19022DCEC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_190B682D0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ConversationEntity();
    v19 = *(v12 - 8);
    sub_19082FC20(v11 + *(v19 + 72) * v8, a3);
    sub_190C82458(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ConversationEntity();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_190C81894@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1908789E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_190B68AA8();
      v9 = v11;
    }

    sub_190824530((*(v9 + 56) + 32 * v7), a2);
    sub_190C82644(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_190C81934(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1908764E0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_190C82F30(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_190B6A3FC();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_190D584E0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_190D52690();
  v7 = sub_190D581C0();
  v8 = sub_190C81BA0(v4, v7);
  sub_190D50920();
  v9 = sub_1908764E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_190C82F30(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_190C81A80(uint64_t a1)
{
  v2 = v1;
  v3 = sub_190875CC8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_190B6A560();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_190C830BC(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_190C81B08(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_190D581C0();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_190C81BA0(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_190C1D3EC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_190C81BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E200);
    v2 = sub_190D58590();
    v19 = v2;
    sub_190D584C0();
    v3 = sub_190D584F0();
    if (v3)
    {
      v4 = v3;
      sub_190C83C5C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD619D8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_190B67094(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_190D57D80();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_190D584F0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_190C81DD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_190D58860();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (32 * v3 != 32 * v6 || (v3 = v6, v17 >= v18 + 2))
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_190C81F54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v10 = sub_190D588C0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_190C82104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      sub_19087862C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_190D58210();
      result = sub_19084CFD0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_190C822A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v9 = sub_190D588C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_190C82458(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    while (1)
    {
      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v9 = sub_190D588C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ConversationEntity() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_190C82644(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_190D56F10();
      sub_190D58870();
      v11 = v10;
      sub_190D56FC0();
      v12 = sub_190D588C0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_190C8280C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v9 = sub_190D588C0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_190C829BC(int64_t a1, uint64_t a2)
{
  v38 = sub_190D515F0();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = sub_190D58190();
    v11 = v9;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v35 = (v10 + 1) & v9;
    v36 = v13;
    v14 = *(v12 + 56);
    v33 = (v12 - 8);
    v34 = a2 + 64;
    v39 = v11;
    v15 = v38;
    do
    {
      v16 = v14;
      v17 = v14 * v8;
      v18 = *(a2 + 48) + v14 * v8;
      v19 = v37;
      v20 = v12;
      v36(v37, v18, v15);
      sub_190C83DB4(&unk_1EAD5E1A0, MEMORY[0x1E6968FB0]);
      v21 = sub_190D56DC0();
      (*v33)(v19, v15);
      v22 = v39;
      v23 = v21 & v39;
      if (a1 >= v35)
      {
        if (v23 >= v35 && a1 >= v23)
        {
LABEL_15:
          v12 = v20;
          v14 = v16;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            v22 = v39;
            v6 = v34;
          }

          else
          {
            v6 = v34;
            if (v16 * a1 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v39;
            }
          }

          v26 = *(a2 + 56);
          v27 = (v26 + 168 * a1);
          v28 = (v26 + 168 * v8);
          if (a1 != v8 || v27 >= v28 + 168)
          {
            memmove(v27, v28, 0xA8uLL);
            v22 = v39;
            a1 = v8;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v35 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v12 = v20;
      v6 = v34;
      v14 = v16;
LABEL_4:
      v8 = (v8 + 1) & v22;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

void sub_190C82CB4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    v26 = v8;
    v27 = v7;
    do
    {
      v28 = 24 * v6;
      v9 = *(a2 + 48) + 24 * v6;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_190D58870();
      if (v12)
      {
        if (v12 == 1)
        {
          sub_190D52690();
          sub_190D56FC0();
        }

        else
        {
          v13 = [v11 stickerIdentifier];
          sub_190D56F10();

          v7 = v27;
          sub_190D56FC0();
          v8 = v26;
        }
      }

      else
      {
        MEMORY[0x193AF4130]([v11 associatedMessageType]);
      }

      v14 = sub_190D588C0();
      sub_19083F1AC(v11, v10, v12);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_15;
      }

      if (v3 >= v15)
      {
LABEL_15:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + v28);
        if (24 * v3 < v28 || v17 >= v18 + 24 || v3 != v6)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_190C82F30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_190D57D80();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_190C830BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_190D58190() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_190D58860();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_190C8322C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v28 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(a4 + 56) + v18;
      v22 = *v21;
      v23 = *(v21 + 8);
      *v11 = *v19;
      v11[1] = v20;
      v11[2] = v22;
      v11[3] = v23;
      if (v14 == v10)
      {
        sub_190D52690();
        v27 = v22;
        goto LABEL_23;
      }

      v11 += 4;
      sub_190D52690();
      v24 = v22;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_190C833B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_190D52690();
        goto LABEL_24;
      }

      v11 += 2;
      sub_190D52690();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_190C83508(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_190C8365C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_19087862C(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_190C837C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_190D52690();
        goto LABEL_24;
      }

      v11 += 2;
      sub_190D52690();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_190C8391C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_190C83A70(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_190D584C0();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_190D58500())
      {
        goto LABEL_31;
      }

      sub_190C83C5C();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_190C83C5C()
{
  result = qword_1EAD5BC80;
  if (!qword_1EAD5BC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5BC80);
  }

  return result;
}

uint64_t sub_190C83DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C83E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_190C83E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_190C83EB8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v1 + 40 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 64);
    ++v2;
    v5 += 40;
    if ((v7 & 1) == 0)
    {
      v9 = *(v5 - 8);
      v8 = *v5;
      v11 = *(v5 + 8);
      v10 = *(v5 + 16);
      sub_190D52690();
      sub_190D52690();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19082E09C(0, *(v4 + 16) + 1, 1);
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_19082E09C((v12 > 1), v13 + 1, 1);
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 40 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      *(v14 + 48) = v11;
      *(v14 + 56) = v10;
      *(v14 + 64) = 0;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_190C83FE0(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 8;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v3 + 40 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 72);
    ++v1;
    v5 += 40;
    if (v7)
    {
      v11 = *(v5 + 16);
      v12 = *v5;
      sub_190D52690();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19082E09C(0, *(v4 + 16) + 1, 1);
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_19082E09C((v8 > 1), v9 + 1, 1);
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 40 * v9;
      *(v10 + 32) = v12;
      *(v10 + 48) = v11;
      *(v10 + 64) = 1;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_190C84100()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_190D58870();
  if (v2)
  {
    MEMORY[0x193AF4110](1);
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D56FC0();
    if (!v1)
    {
      sub_190D58890();
      return sub_190D588C0();
    }

    sub_190D58890();
  }

  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190C841BC()
{
  if (*(v0 + 32))
  {
    MEMORY[0x193AF4110](1);
  }

  else
  {
    v1 = *(v0 + 24);
    MEMORY[0x193AF4110](0);
    sub_190D56FC0();
    if (!v1)
    {
      return sub_190D58890();
    }

    sub_190D58890();
  }

  return sub_190D56FC0();
}

uint64_t sub_190C84280()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_190D58870();
  if (v2)
  {
    MEMORY[0x193AF4110](1);
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D56FC0();
    if (!v1)
    {
      sub_190D58890();
      return sub_190D588C0();
    }

    sub_190D58890();
  }

  sub_190D56FC0();
  return sub_190D588C0();
}

uint64_t sub_190C84338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_190C84388(v5, v7) & 1;
}

uint64_t sub_190C84388(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v11 = a1[2];
      v10 = a1[3];
      v13 = a2[2];
      v12 = a2[3];
      v14 = v4 == v6 && v5 == v7;
      if (v14 || (sub_190D58760() & 1) != 0)
      {
        if (v10)
        {
          if (v12 && (v11 == v13 && v10 == v12 || (sub_190D58760() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v12)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_190D58760();
}

id ConversationTitle.__allocating_init(title:wantsChevron:leadingIndicatorIcons:color:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
  *v12 = a1;
  v12[1] = a2;
  v11[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = a3;
  *&v11[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = a4;
  *&v11[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ConversationTitle.init(title:wantsChevron:leadingIndicatorIcons:color:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title];
  *v6 = a1;
  v6[1] = a2;
  v5[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] = a3;
  *&v5[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons] = a4;
  *&v5[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for ConversationTitle();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_190C84594(uint64_t a1)
{
  sub_19023C414(a1, v9);
  if (!v10)
  {
    sub_19021E7D8(v9);
    goto LABEL_13;
  }

  type metadata accessor for ConversationTitle();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit17ConversationTitle_title) == *&v8[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title] && *(v1 + OBJC_IVAR____TtC7ChatKit17ConversationTitle_title + 8) == *&v8[OBJC_IVAR____TtC7ChatKit17ConversationTitle_title + 8];
  if (!v2 && (sub_190D58760() & 1) == 0 || *(v1 + OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron) != v8[OBJC_IVAR____TtC7ChatKit17ConversationTitle_wantsChevron] || (v3 = *(v1 + OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons), v4 = *&v8[OBJC_IVAR____TtC7ChatKit17ConversationTitle_leadingIndicatorIcons], sub_190D52690(), LOBYTE(v3) = sub_1909A94A4(v3, v4), , (v3 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_19084A764();
  v5 = *&v8[OBJC_IVAR____TtC7ChatKit17ConversationTitle_color];
  v6 = sub_190D57D90();

  return v6 & 1;
}

id ConversationTitle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationTitle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationTitle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsDoubleTapGestureModifier()
{
  result = qword_1EAD61A08;
  if (!qword_1EAD61A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C84914()
{
  sub_190C849F8(319, &qword_1ED777010, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_190C849F8(319, &qword_1EAD57640, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190C849F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_190C84A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61A18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_190C84AF0()
{
  result = qword_1EAD61A20;
  if (!qword_1EAD61A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61A20);
  }

  return result;
}

unint64_t sub_190C84B54(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_190D57100();
  }

  __break(1u);
  return result;
}

uint64_t CKDataDetectedLinkResult.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_url;
  v4 = sub_190D515F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CKDataDetectedLinkResult()
{
  result = qword_1EAD61A40;
  if (!qword_1EAD61A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C84E74()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB60]) initWithTypes:32 error:v4];
  v1 = v4[0];
  if (!v0)
  {
    v2 = v1;
    v3 = sub_190D51420();

    swift_willThrow();
    v0 = 0;
  }

  qword_1EAD61A28 = v0;
}

void sub_190C84F30(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  if (a1)
  {
    v38 = a1;
    v20 = [v38 URL];
    if (v20)
    {
      v21 = v20;
      sub_190D515B0();

      (*(v11 + 32))(v19, v16, v10);
      if (a4 & 1) != 0 && (v22 = sub_190D51570(), v23 = sub_190D57160(), IsSupportedRichLinkURL = IMRichLinkUtilitiesIsSupportedRichLinkURL(), v22, v23, (IsSupportedRichLinkURL & 1) == 0) || ([v38 range], sub_190D58000(), (v25))
      {
        (*(v11 + 8))(v19, v10);
      }

      else
      {
        v27 = [v38 range];
        v29 = v28;
        v37 = a7;
        v30 = *(v11 + 16);
        v30(v13, v19, v10);
        v31 = type metadata accessor for CKDataDetectedLinkResult();
        v32 = objc_allocWithZone(v31);
        v33 = &v32[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range];
        *v33 = v27;
        *(v33 + 1) = v29;
        v30(&v32[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_url], v13, v10);
        v34 = v37;
        v39.receiver = v32;
        v39.super_class = v31;
        objc_msgSendSuper2(&v39, sel_init);
        v35 = *(v11 + 8);
        v36 = v35(v13, v10);
        MEMORY[0x193AF29E0](v36);
        if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();

        v35(v19, v10);
      }
    }

    else
    {
      v26 = v38;
    }
  }
}

void sub_190C85268(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_190C85368@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D56FD0();
  if (qword_1EAD51FF0 != -1)
  {
    swift_once();
  }

  if (qword_1EAD61A28)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v3 = qword_1EAD61A28;
    v4 = sub_190D56FD0();
    v5 = sub_190D56ED0();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v2;
    *(v6 + 40) = &v19;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_190C86BF0;
    *(v7 + 24) = v6;
    aBlock[4] = sub_190C86C04;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190C85268;
    aBlock[3] = &block_descriptor_29_0;
    v8 = _Block_copy(aBlock);
    sub_190D50920();

    [v3 enumerateMatchesInString:v5 options:0 range:0 usingBlock:{v4, v8}];

    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_21;
    }

    isEscapingClosureAtFileLocation = v19;

    if ((isEscapingClosureAtFileLocation & 0x8000000000000000) == 0 && (isEscapingClosureAtFileLocation & 0x4000000000000000) == 0)
    {
LABEL_7:
      if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_8;
      }

LABEL_18:
      v16 = sub_190D515F0();
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }

  else
  {
    isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_7;
    }
  }

  if (sub_190D581C0() != 1)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    result = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_22:

LABEL_23:
    v17 = sub_190D515F0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

LABEL_21:
  result = sub_190D581C0();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x193AF3B90](0, isEscapingClosureAtFileLocation);
LABEL_13:
    v12 = v11;

    if (!*&v12[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range] && *&v12[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range + 8] == v2)
    {
      v13 = OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_url;
      v14 = sub_190D515F0();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, &v12[v13], v14);

      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    goto LABEL_23;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(isEscapingClosureAtFileLocation + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static CKRichLinkUtilities.isValidURL(_:equalTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_190C85368(v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = v8;
LABEL_5:
    sub_19022EEA4(v17, &unk_1EAD55F20);
    v18 = 0;
    return v18 & 1;
  }

  v28 = v12;
  v27 = *(v10 + 32);
  v27(v15, v8, v9);
  sub_190C85368(v5);
  if (v16(v5, 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = v5;
    goto LABEL_5;
  }

  v27(v28, v5, v9);
  v19 = sub_190C85A54();
  v21 = v20;
  if (v19 == sub_190C85A54() && v21 == v22)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_190D58760();
  }

  v24 = *(v10 + 8);
  v24(v28, v9);
  v24(v15, v9);
  return v18 & 1;
}

uint64_t sub_190C85A54()
{
  v0 = sub_190D51520();
  v2 = v1;
  sub_190C86B90();
  v3 = sub_190D57500();
  if (!*(v3 + 16))
  {

    v3 = sub_190D57500();
    if (!*(v3 + 16))
    {

      v3 = sub_190D57500();
      if (!*(v3 + 16))
      {

        v3 = sub_190D57500();
        if (!*(v3 + 16))
        {

          swift_arrayDestroy();
          return v0;
        }
      }
    }
  }

  v4 = v3;
  result = swift_arrayDestroy();
  if (*(v4 + 16))
  {
    v6 = *(v4 + 40);

    v7 = sub_190C84B54(v6, v0, v2);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v0 = MEMORY[0x193AF2820](v7, v9, v11, v13);

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t static CKRichLinkUtilities.isValidURL(_:containedWithin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190C85368(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19022EEA4(v8, &unk_1EAD55F20);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v15 = sub_190D56ED0();
  v16 = [v14 initWithString_];

  result = sub_190D56FD0();
  v50 = result;
  if (qword_1EAD51FF0 != -1)
  {
    result = swift_once();
  }

  v46 = v10;
  v47 = v9;
  v45 = v12;
  v48 = a3;
  v49 = a4;
  v51 = v16;
  if (qword_1EAD61A28)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v17 = qword_1EAD61A28;
    v44 = sub_190D56FD0();
    v18 = sub_190D56ED0();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = v50;
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    *(v19 + 40) = &v52;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_190C86A78;
    *(v21 + 24) = v19;
    v57 = sub_190C86A88;
    v58 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_190C85268;
    v56 = &block_descriptor_12_9;
    v22 = _Block_copy(&aBlock);
    sub_190D50920();

    [v17 enumerateMatchesInString:v18 options:0 range:0 usingBlock:{v44, v22}];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v24 = v52;

    if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
    {
LABEL_9:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_10;
      }

LABEL_21:

      v31 = [objc_allocWithZone(MEMORY[0x1E696AD60]) init];
      if (qword_1EAD51FF8 != -1)
      {
        swift_once();
      }

      v32 = qword_1EAD61A30;
      v33 = swift_allocObject();
      v34 = v48;
      v35 = v49;
      v33[2] = v31;
      v33[3] = v34;
      v33[4] = v35;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_190C86A6C;
      *(v36 + 24) = v33;
      v57 = sub_19023C40C;
      v58 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_19023C344;
      v56 = &block_descriptor_121;
      v37 = _Block_copy(&aBlock);
      v38 = v31;
      sub_190D52690();
      sub_190D50920();

      v39 = v51;
      [v51 enumerateAttribute:v32 inRange:0 options:v50 usingBlock:{0, v37}];
      _Block_release(v37);
      LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

      if ((v32 & 1) == 0)
      {
        v40 = v45;
        sub_190C85A54();
        v41 = sub_190D56ED0();

        v42 = [v38 containsString_];

        (*(v46 + 8))(v40, v47);

        return v42;
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_9;
    }
  }

  result = sub_190D581C0();
  v25 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v25 >= 1)
  {
    v26 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193AF3B90](v26, v24);
      }

      else
      {
        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      if (qword_1EAD51FF8 != -1)
      {
        swift_once();
      }

      ++v26;
      v29 = qword_1EAD61A30;
      v30 = sub_190D51570();
      [v51 addAttribute:v29 value:v30 range:{*&v28[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range], *&v28[OBJC_IVAR____TtC7ChatKit24CKDataDetectedLinkResult_range + 8]}];
    }

    while (v25 != v26);
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_190C86314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21[-v10];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19023C414(a1, v21);
  if (v22)
  {
    v16 = swift_dynamicCast();
    (*(v13 + 56))(v11, v16 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      sub_190C85A54();
      v17 = sub_190D56ED0();

      [a5 appendString_];

      (*(v13 + 8))(v15, v12);
      return;
    }
  }

  else
  {
    sub_19022EEA4(v21, &unk_1EAD551C0);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_19022EEA4(v11, &unk_1EAD55F20);
  v18 = sub_190D57000();
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (sub_190D57000() >> 14 < v18 >> 14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v19 = sub_190D57100();
  MEMORY[0x193AF2820](v19);

  v20 = sub_190D56ED0();

  [a5 appendString_];
}

uint64_t sub_190C8662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_190D56F10();
  v8 = v7;
  v9 = sub_190D56F10();
  v11 = v10;
  swift_getObjCClassMetadata();
  LOBYTE(a5) = a5(v6, v8, v9, v11);

  return a5 & 1;
}

id CKRichLinkUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKRichLinkUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKRichLinkUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190C86784(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_190C867C0()
{
  result = sub_190D56ED0();
  qword_1EAD61A30 = result;
  return result;
}

uint64_t sub_190C867F8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D778);
  __swift_project_value_buffer(v0, qword_1EAD9D778);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t _s7ChatKit19CKRichLinkUtilitiesC17validURLsInString_7inRange013validatesRichD7SupportSayAA014CKDataDetectedD6ResultCGSS_So8_NSRangeVSbtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_1EAD51FF0 != -1)
  {
    swift_once();
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!qword_1EAD61A28)
  {
    return v8;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v9 = qword_1EAD61A28;
  v10 = sub_190D56FD0();
  v11 = sub_190D56ED0();
  v12 = swift_allocObject();
  *(v12 + 16) = a5 & 1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = &v17;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_190C86BF0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_190C86C04;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190C85268;
  aBlock[3] = &block_descriptor_40_0;
  v14 = _Block_copy(aBlock);
  sub_190D50920();

  [v9 enumerateMatchesInString:v11 options:0 range:0 usingBlock:{v10, v14}];

  _Block_release(v14);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v8 = v17;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_190C86ADC()
{
  result = sub_190D515F0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190C86B90()
{
  result = qword_1EAD61A50;
  if (!qword_1EAD61A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61A50);
  }

  return result;
}

void sub_190C86C08(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_190D581B0();
    sub_190861700();
    sub_190C87EB0();
    sub_190D574D0();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_190D52690();
    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_190D581E0() || (sub_190861700(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_190219C78();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x193AF29E0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_190C86F54()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190C86FB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190C8704C(void *a1)
{
  swift_beginAccess();
  sub_1908AA72C(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

uint64_t sub_190C87148()
{
  v1 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CD0];
}

void sub_190C871F4(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(v1 + v3) = MEMORY[0x1E69E7CD0];

  sub_1908AA72C(&v5, a1);
  v4 = v5;
  swift_endAccess();
}

void sub_190C87328(void *a1)
{
  swift_beginAccess();
  v2 = sub_1908AE37C(a1);
  swift_endAccess();
}

void sub_190C87414(void *a1, double a2, double a3)
{
  v33.receiver = v3;
  v33.super_class = type metadata accessor for CKInteractionNotificationView();
  v7 = objc_msgSendSuper2(&v33, sel_hitTest_withEvent_, a1, a2, a3);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  sub_190861700();
  v9 = v3;
  v10 = v8;
  v11 = sub_190D57D90();

  if ((v11 & 1) == 0 || !a1)
  {
LABEL_6:

    return;
  }

  v12 = a1;
  if ([v12 type])
  {

    goto LABEL_6;
  }

  v31 = v12;
  v13 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  v14 = *&v9[v13];
  if ((v14 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    swift_unknownObjectRetain();
    sub_190D581B0();
    sub_190C87EB0();
    sub_190D574D0();
    v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v37;
    v19 = v38;
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);
    v15 = *&v9[v13];
    swift_bridgeObjectRetain_n();
    v18 = 0;
  }

  v29 = v17;
  v23 = (v17 + 64) >> 6;
  v30 = v15;
  while (v15 < 0)
  {
    if (!sub_190D581E0() || (swift_dynamicCast(), (v24 = v32) == 0))
    {
LABEL_25:
      sub_190219C78();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong interactionNotificationViewWasTapped_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

LABEL_16:
    [v24 convertPoint:v9 fromCoordinateSpace:{a2, a3, v29}];
    v25 = [v24 hitTest:v31 withEvent:?];

    v15 = v30;
    if (v25)
    {

      sub_190219C78();

      return;
    }
  }

  v26 = v18;
  v27 = v19;
  if (v19)
  {
LABEL_15:
    v19 = (v27 - 1) & v27;
    v24 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v24)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_25;
    }

    v27 = *(v16 + 8 * v18);
    ++v26;
    if (v27)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_190C877F4()
{
  if (qword_1EAD51D30 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v0 = sub_190D53040();
    __swift_project_value_buffer(v0, qword_1EAD9E190);
    v1 = sub_190D53020();
    v2 = sub_190D576C0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_19020E000, v1, v2, "beginning clean up for text selection", v3, 2u);
      MEMORY[0x193AF7A40](v3, -1, -1);
    }

    swift_beginAccess();
    v4 = sub_190D52690();
    sub_190C86C08(v4);
    v6 = v5;

    if (v6 >> 62)
    {
      break;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_6:
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x193AF3B90](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = [v10 textView];
      if (v13)
      {
        v14 = v13;
        if ([v13 respondsToSelector_])
        {
          [v14 stopSelection];
        }
      }

      swift_beginAccess();
      v9 = sub_1908AE37C(v11);
      swift_endAccess();

      [v11 setIgnoreSelectionEvent_];
      ++v8;
      if (v12 == v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v7 = sub_190D581C0();
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_21:

  v15 = sub_190D53020();
  v16 = sub_190D576C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_19020E000, v15, v16, "ended clean up for text selection", v17, 2u);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }
}

id CKInteractionNotificationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKInteractionNotificationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews] = MEMORY[0x1E69E7CD0];
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CKInteractionNotificationView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id CKInteractionNotificationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CKInteractionNotificationView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews] = MEMORY[0x1E69E7CD0];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CKInteractionNotificationView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CKInteractionNotificationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKInteractionNotificationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190C87EB0()
{
  result = qword_1EAD61A68;
  if (!qword_1EAD61A68)
  {
    sub_190861700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61A68);
  }

  return result;
}

uint64_t type metadata accessor for ConversationEntityRepresentation()
{
  result = qword_1EAD61AA0;
  if (!qword_1EAD61AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C881A0(uint64_t a1)
{
  v3 = sub_190D523B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EAD61A70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v1 + v7) = sub_190D52450();
  v8 = qword_1EAD61A78;
  swift_allocObject();
  *(v1 + v8) = sub_190D52450();
  v9 = qword_1EAD61A80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C918);
  swift_allocObject();
  *(v1 + v9) = sub_190D52450();
  v10 = qword_1EAD61A88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C920);
  swift_allocObject();
  *(v1 + v10) = sub_190D52450();
  v11 = qword_1EAD61A90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61AF8);
  swift_allocObject();
  *(v1 + v11) = sub_190D52450();
  v12 = qword_1EAD61A98;
  swift_allocObject();
  *(v1 + v12) = sub_190D52450();
  (*(v4 + 16))(v6, a1, v3);
  v13 = sub_190D52410();
  (*(v4 + 8))(a1, v3);
  return v13;
}

uint64_t sub_190C883F4()
{
}

uint64_t sub_190C88474()
{
  sub_190D52400();
  sub_190D50920();

  return swift_deallocClassInstance();
}

uint64_t sub_190C8854C(uint64_t a1)
{
  v3 = sub_190C887F0(&qword_1EAD61AF0);

  return MEMORY[0x1EEDEC120](a1, v1, v3);
}

uint64_t sub_190C885A8()
{
  v1 = sub_190C887F0(&qword_1EAD61AE0);

  return MEMORY[0x1EEDEBE30](v0, v1);
}

uint64_t sub_190C885F4(uint64_t a1)
{
  v3 = sub_190C887F0(&qword_1EAD61AF0);

  return MEMORY[0x1EEDEC110](a1, v1, v3);
}

uint64_t sub_190C887F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConversationEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190C88838()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (__OFADD__(v2[2], v1[2]))
  {
    __break(1u);
  }

  else
  {
    v3 = 1701736302;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD000000000000029, 0x8000000190E7DDA0);
    v4 = sub_190D58720();
    MEMORY[0x193AF28B0](v4);

    MEMORY[0x193AF28B0](0x1000000000000012, 0x8000000190E7DDD0);
    if (v2[2])
    {
      v6 = v2[4];
      v5 = v2[5];
      sub_190D52690();
    }

    else
    {
      v5 = 0xE400000000000000;
      v6 = 1701736302;
    }

    MEMORY[0x193AF28B0](v6, v5);

    MEMORY[0x193AF28B0](0x1000000000000016, 0x8000000190E7DDF0);
    if (v1[2])
    {
      v3 = v1[4];
      v7 = v1[5];
      sub_190D52690();
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    MEMORY[0x193AF28B0](v3, v7);

    MEMORY[0x193AF28B0](39, 0xE100000000000000);
  }
}

uint64_t sub_190C889C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190C88A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D52690();
  v5 = sub_190CAAE18(v4);
  v24 = a1;

  v7 = *(a2 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_23:

    result = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v10;
    return result;
  }

  v8 = 0;
  v27 = a2 + 32;
  v9 = v5 + 56;
  v10 = MEMORY[0x1E69E7CC0];
  v26 = *(a2 + 16);
  while (v8 < v7)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_25;
    }

    v12 = (v27 + 16 * v8);
    v14 = *v12;
    v13 = v12[1];
    ++v8;
    if (!*(v5 + 16))
    {
      sub_190D52690();
      goto LABEL_15;
    }

    sub_190D58870();
    sub_190D52690();
    sub_190D56FC0();
    v15 = sub_190D588C0();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    if ((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      while (1)
      {
        v19 = (*(v5 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v11 == v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_15:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19082DBB4(0, *(v10 + 16) + 1, 1);
      }

      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_19082DBB4((v21 > 1), v22 + 1, 1);
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v14;
      *(v23 + 40) = v13;
      v7 = v26;
      if (v11 == v26)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_190C88D98()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190C88DF8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackClassicView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

uint64_t sub_190C88ED8()
{
  v1 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190C88F84(char a1)
{
  v3 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_190C89C20(a1);
}

void (*sub_190C88FDC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C89064;
}

void sub_190C89064(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_190C89C20(*(v3[3] + v3[4]));
  }

  free(v3);
}

void sub_190C890B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  sub_190C89C20(*(v3 + v5));
}

uint64_t sub_190C8912C()
{
  v1 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190C89170(char a1)
{
  v3 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  sub_190C89C20(*(v1 + v4));
}

void (*sub_190C891E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190C89248;
}

void sub_190C89248(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = OBJC_IVAR___CKTapbackClassicView_isSelected;
    swift_beginAccess();
    sub_190C89C20(*(v4 + v5));
  }
}

void sub_190C892A4()
{
  sub_19024C978(v0 + OBJC_IVAR___CKTapbackClassicView_delegate);

  v1 = *(v0 + OBJC_IVAR___CKTapbackClassicView_asset);
}

id TapbackClassicView.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedTimer];
  if (v1)
  {
    v2 = v1;
    [v1 removeAnimationTimerObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TapbackClassicView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id TapbackClassicView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_190C895E4(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR___CKTapbackClassicView_configuredMessageType;
  *v4 = a1;
  *(v4 + 8) = 0;
  v5 = _s7ChatKit27TapbackClassicAssetProviderC5asset3forAA0cdE0CSgSo23IMAssociatedMessageTypeV_tFZ_0(a1);
  v6 = *(v2 + OBJC_IVAR___CKTapbackClassicView_asset);
  *(v2 + OBJC_IVAR___CKTapbackClassicView_asset) = v5;
  v7 = v5;

  if (v5)
  {
    v8 = *(v2 + OBJC_IVAR___CKTapbackClassicView_imageView);
    v9 = v2;
    sub_190CAD4AC();
    v11 = v10;
    [v8 setImage_];

    v12 = OBJC_IVAR___CKTapbackClassicView_isSelected;
    swift_beginAccess();
    *(v9 + v12) = a2 & 1;
    sub_190C89C20(a2 & 1);
  }
}

void sub_190C896BC()
{
  v1 = *(v0 + OBJC_IVAR___CKTapbackClassicView_asset);
  if (v1)
  {
    if (*&v1[OBJC_IVAR___CKTapbackClassicAsset_frameCount] < 2)
    {
      v7 = v1;
      sub_190B52798();
      if (qword_1EAD52010 != -1)
      {
        swift_once();
      }

      v8 = sub_190D53040();
      __swift_project_value_buffer(v8, qword_1EAD9E5F0);
      oslog = sub_190D53020();
      v9 = sub_190D576A0();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_19020E000, oslog, v9, "Asset sequence not loaded so animation will not play. This is unexpected.", v10, 2u);
        MEMORY[0x193AF7A40](v10, -1, -1);
      }
    }

    else
    {
      *(v0 + OBJC_IVAR___CKTapbackClassicView_sequenceIndex) = 0;
      v2 = *(v0 + OBJC_IVAR___CKTapbackClassicView_imageView);
      oslog = v1;
      v3 = sub_190CADAF8(0, 1);
      [v2 setImage_];
    }
  }

  else
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D790);
    oslog = sub_190D53020();
    v5 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19020E000, oslog, v5, "classic asset not found", v6, 2u);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }
  }
}

void sub_190C89934()
{
  v1 = *&v0[OBJC_IVAR___CKTapbackClassicView_asset];
  if (!v1)
  {
    goto LABEL_16;
  }

  v16 = v1;
  if ((sub_190C89E7C() & 1) == 0)
  {
    v5 = *&v0[OBJC_IVAR___CKTapbackClassicView_imageView];
    sub_190CAD4AC();
    v7 = v6;
    [v5 setImage_];

    sub_190B52798();
    v4 = v16;
    goto LABEL_12;
  }

  if (*(&v16->isa + OBJC_IVAR___CKTapbackClassicAsset_frameCount) < 2)
  {
    sub_190B52798();
    if (qword_1EAD52010 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9E5F0);
    v9 = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "No asset found for tapback. This is unexpected.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    v4 = v9;
    goto LABEL_12;
  }

  v2 = [objc_opt_self() sharedTimer];
  if (!v2)
  {
    __break(1u);
LABEL_16:
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E7DE40);
    v12 = [v0 description];
    v13 = sub_190D56F10();
    v15 = v14;

    MEMORY[0x193AF28B0](v13, v15);

    MEMORY[0x193AF28B0](0xD000000000000011, 0x8000000190E7DE70);
    sub_190D58510();
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 addAnimationTimerObserver_];

  v4 = v16;
LABEL_12:
}

void sub_190C89C20(char a1)
{
  v3 = [*(v1 + OBJC_IVAR___CKTapbackClassicView_imageView) layer];
  v4 = sub_190D57160();
  [v3 setFilters_];

  v5 = *(v1 + OBJC_IVAR___CKTapbackClassicView_asset);
  if (v5)
  {
    v6 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
    swift_beginAccess();
    v7 = *(v1 + v6) == 1 ? &OBJC_IVAR___CKTapbackClassicAsset_primarySelectionColorFilter : &OBJC_IVAR___CKTapbackClassicAsset_secondarySelectionColorFilter;
    v8 = *&v5[*v7];
    if (v8)
    {
      v9 = v8;
      v10 = v5;
      if (a1)
      {
        sub_190A86CA4(v9);
      }

      else
      {
        sub_190A87064(v9);
      }
    }
  }
}

void TapbackClassicView.configure(for:isSelected:)(void *a1, char a2)
{
  v3 = [a1 associatedMessageType];

  sub_190C895E4(v3, a2);
}

uint64_t sub_190C89E7C()
{
  v0 = [objc_opt_self() accessibilityAnimatedImagesDisabled];
  if (v0)
  {
    if (qword_1EAD52010 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD9E5F0);
    v2 = sub_190D53020();
    v3 = sub_190D576C0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, v3, "accessibilityAnimatedImagesDisabled. Preferring default scale animation", v4, 2u);
      MEMORY[0x193AF7A40](v4, -1, -1);
    }
  }

  return v0 ^ 1;
}

char *_s7ChatKit18TapbackClassicViewC5frameACSo6CGRectV_tcfc_0()
{
  *&v0[OBJC_IVAR___CKTapbackClassicView_attributionScaleFactor] = 0x3FECCCCCCCCCCCCDLL;
  v1 = &v0[OBJC_IVAR___CKTapbackClassicView_platterEdgeInsets];
  __asm { FMOV            V0.2D, #1.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___CKTapbackClassicView_imageView;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v8 = &v0[OBJC_IVAR___CKTapbackClassicView_configuredMessageType];
  *v8 = 0;
  v8[8] = 1;
  v0[OBJC_IVAR___CKTapbackClassicView_isSelected] = 0;
  v0[OBJC_IVAR___CKTapbackClassicView_serviceColor] = 1;
  *&v0[OBJC_IVAR___CKTapbackClassicView_asset] = 0;
  *&v0[OBJC_IVAR___CKTapbackClassicView_sequenceIndex] = 0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TapbackClassicView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR___CKTapbackClassicView_imageView;
  v11 = *&v9[OBJC_IVAR___CKTapbackClassicView_imageView];
  v12 = v9;
  [v12 addSubview_];
  [*&v9[v10] setContentMode_];

  return v12;
}

double CGSizePxCenteredInRect_0(double a1, double a2, double a3, double a4, double a5)
{
  v8 = CKMainScreenScale_once_111;
  v9 = &__block_literal_global_305;
  if (v8 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_111, &__block_literal_global_305);
  }

  v10 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_111 != 0.0)
  {
    v10 = *&CKMainScreenScale_sMainScreenScale_111;
  }

  return floor((a3 + (a5 - a1) * 0.5) * v10) / v10;
}

void sub_190C8A194()
{
  *(v0 + OBJC_IVAR___CKTapbackClassicView_attributionScaleFactor) = 0x3FECCCCCCCCCCCCDLL;
  v1 = (v0 + OBJC_IVAR___CKTapbackClassicView_platterEdgeInsets);
  __asm { FMOV            V0.2D, #1.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___CKTapbackClassicView_imageView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v8 = v0 + OBJC_IVAR___CKTapbackClassicView_configuredMessageType;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR___CKTapbackClassicView_isSelected) = 0;
  *(v0 + OBJC_IVAR___CKTapbackClassicView_serviceColor) = 1;
  *(v0 + OBJC_IVAR___CKTapbackClassicView_asset) = 0;
  *(v0 + OBJC_IVAR___CKTapbackClassicView_sequenceIndex) = 0;
  sub_190D58510();
  __break(1u);
}

void _s7ChatKit18TapbackClassicViewC19animationTimerFiredyySdF_0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CKTapbackClassicView_asset];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = OBJC_IVAR___CKTapbackClassicView_sequenceIndex;
  v4 = *&v0[OBJC_IVAR___CKTapbackClassicView_sequenceIndex];
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  *&v1[OBJC_IVAR___CKTapbackClassicView_sequenceIndex] = v5;
  v6 = *&v1[OBJC_IVAR___CKTapbackClassicView_imageView];
  v17 = v2;
  v7 = sub_190CADAF8(v5, 1);
  [v6 setImage_];

  v8 = *&v17[OBJC_IVAR___CKTapbackClassicAsset_frameCount];
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E7DE40);
    v13 = [v1 description];
    v14 = sub_190D56F10();
    v16 = v15;

    MEMORY[0x193AF28B0](v14, v16);

    MEMORY[0x193AF28B0](0xD000000000000011, 0x8000000190E7DE70);
    sub_190D58510();
    __break(1u);
    return;
  }

  if (*&v1[v3] >= v10)
  {
    v11 = [objc_opt_self() sharedTimer];
    if (v11)
    {
      v12 = v11;
      [v11 removeAnimationTimerObserver_];

      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_7:
}

uint64_t type metadata accessor for DetailsWalletTabView()
{
  result = qword_1EAD61BB0;
  if (!qword_1EAD61BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C8A748()
{
  sub_190C8A93C(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_190C8A93C(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_190C8A93C(319, &qword_1EAD57640, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_190D52850();
        if (v3 <= 0x3F)
        {
          sub_190C8A93C(319, &qword_1EAD61BC0, _s9ViewModelCMa_7, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_190C8A93C(319, &qword_1EAD58FB0, MEMORY[0x1E697D750], MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_190951D74();
              if (v6 <= 0x3F)
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

void sub_190C8A93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_190C8A9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsWalletTabView();
  sub_19022FD14(v1 + *(v10 + 20), v9, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190C8ABF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsWalletTabView();
  sub_19022FD14(v1 + *(v10 + 24), v9, &qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190C8ADF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BC8);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BD0);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = type metadata accessor for DetailsWalletTabView();
  v32 = a2;
  v33 = a1;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BD8);
  sub_190233640(&qword_1EAD61BE0, &qword_1EAD61BD8);
  sub_190D52590();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  sub_190D55FF0();
  v16 = (a2 + *(v15 + 32));
  v18 = *v16;
  v17 = v16[1];
  v34 = v18;
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BE8);
  sub_190D55FD0();
  v19 = v38;
  v30 = _s10WalletPassVMa(0);
  v31 = sub_190C8D2A4(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  v34 = v19;
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v20 = *&v19[qword_1EAD62990];
  sub_190D52690();

  v34 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59000);
  v22 = sub_190233640(&qword_1EAD61BF0, &qword_1EAD61BC8);
  v23 = sub_190233640(&qword_1EAD59008, &qword_1EAD59000);
  sub_190D55610();

  sub_19022EEA4(v7, &qword_1EAD576A0);
  (*(v26 + 8))(v10, v8);
  v34 = v8;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_190D557E0();
  return (*(v28 + 8))(v14, v24);
}

uint64_t sub_190C8B2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_190D56500();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BF8);
  return sub_190C8B308(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_190C8B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v56 = a2;
  v5 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v5);
  *&v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C00);
  v59 = *(v7 - 8);
  *&v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C08);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C10);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  type metadata accessor for DetailsWalletTabView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  sub_190D55FF0();
  sub_190A524D4(v56, v18, &v69);
  sub_19022EEA4(v18, &qword_1EAD576A0);
  sub_190D52690();
  sub_190D52610();
  v66 = a1;
  sub_190D54AC0();
  LODWORD(v68[0]) = 0;
  sub_190C8D2A4(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C18);
  sub_190C8CCDC();
  v19 = v57;
  sub_190D565F0();
  v20 = sub_190D552A0();
  sub_190D525F0();
  v22 = v21;
  v23 = 0uLL;
  v65 = 0u;
  v24 = 0uLL;
  if ((v21 & 1) == 0)
  {
    sub_190D539C0();
    *(&v24 + 1) = v25;
    *(&v23 + 1) = v26;
  }

  v55 = v24;
  v56 = v23;
  v27 = v62;
  (*(v59 + 32))(v62, v19, v60);
  v28 = v27 + *(v58 + 36);
  *v28 = v20;
  v29 = v56;
  *(v28 + 24) = v55;
  *(v28 + 8) = v29;
  *(v28 + 40) = v22 & 1;
  v30 = sub_190D552D0();
  sub_190D525E0();
  v32 = v31;
  v33 = 0uLL;
  if ((v31 & 1) == 0)
  {
    sub_190D539C0();
    *(&v33 + 1) = v34;
    *(&v36 + 1) = v35;
    v65 = v36;
  }

  v60 = v33;
  sub_19081E40C(v27, v13, &qword_1EAD61C08);
  v37 = &v13[*(v61 + 36)];
  *v37 = v30;
  *(v37 + 24) = v60;
  *(v37 + 8) = v65;
  v37[40] = v32 & 1;
  v38 = v63;
  sub_19081E40C(v13, v63, &qword_1EAD61C10);
  v39 = v64;
  sub_190289E6C(v38, v64);
  v40 = v80;
  v67[10] = v79;
  v67[11] = v80;
  v41 = v81;
  v42 = v82;
  v67[12] = v81;
  v67[13] = v82;
  v43 = v75;
  v44 = v76;
  v67[6] = v75;
  v67[7] = v76;
  v45 = v77;
  v46 = v78;
  v67[8] = v77;
  v67[9] = v78;
  v47 = v71;
  v48 = v72;
  v67[2] = v71;
  v67[3] = v72;
  v49 = v73;
  v50 = v74;
  v67[4] = v73;
  v67[5] = v74;
  v51 = v69;
  v52 = v70;
  v67[0] = v69;
  v67[1] = v70;
  a3[10] = v79;
  a3[11] = v40;
  a3[12] = v41;
  a3[13] = v42;
  a3[6] = v43;
  a3[7] = v44;
  a3[8] = v45;
  a3[9] = v46;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v49;
  a3[5] = v50;
  *a3 = v51;
  a3[1] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C50);
  sub_190289E6C(v39, a3 + *(v53 + 48));
  sub_19022FD14(v67, v68, &qword_1EAD576C0);
  sub_190289EDC(v38);
  sub_190289EDC(v39);
  v68[10] = v79;
  v68[11] = v80;
  v68[12] = v81;
  v68[13] = v82;
  v68[6] = v75;
  v68[7] = v76;
  v68[8] = v77;
  v68[9] = v78;
  v68[2] = v71;
  v68[3] = v72;
  v68[4] = v73;
  v68[5] = v74;
  v68[0] = v69;
  v68[1] = v70;
  return sub_19022EEA4(v68, &qword_1EAD576C0);
}

uint64_t sub_190C8B9D0(uint64_t a1)
{
  v2 = type metadata accessor for DetailsWalletTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v12[3] = *(a1 + *(v5 + 40) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BE8);
  sub_190D55FD0();
  v12[0] = _s10WalletPassVMa(0);
  v12[1] = sub_190C8D2A4(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  v12[2] = v13;
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v6 = qword_1EAD62988;
  swift_beginAccess();
  v7 = *&v13[v6];
  sub_190D52690();

  v13 = v7;
  swift_getKeyPath();
  sub_190C8D0A8(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsWalletTabView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_190C8D110(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DetailsWalletTabView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_190C8CF08;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C30);
  sub_190C8CFF8();
  sub_190C8CD60();
  return sub_190D56280();
}

char *sub_190C8BCAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v76 = a1;
  v75 = a4;
  v6 = _s10WalletPassVMa(0);
  v94 = v6;
  v90 = *(v6 - 8);
  v88 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v74 - v9;
  v10 = type metadata accessor for DetailsWalletTabView();
  v11 = v10 - 8;
  v86 = *(v10 - 8);
  v85 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = _s8CellViewVMa_1(0);
  MEMORY[0x1EEE9AC00](v79);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C40) - 8;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v74 - v15;
  v95 = _s10WalletPassVMa;
  v77 = a2;
  sub_190C8D0A8(a2, v14, _s10WalletPassVMa);
  v16 = (a3 + *(v11 + 40));
  v18 = *v16;
  v17 = v16[1];
  *&v105 = v18;
  *(&v105 + 1) = v17;
  v19 = v18;
  v20 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BE8);
  sub_190D55FD0();
  v22 = v102[0];
  v100 = v6;
  v101 = sub_190C8D2A4(&qword_1EAD555A0, _s10WalletPassVMa);
  v23 = v101;
  v93 = v101;
  swift_getKeyPath();
  *&v105 = v22;
  v83 = sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v24 = *&v22[qword_1EAD629B8];
  sub_190D52690();

  v25 = sub_190A4FD70(a2, v24);

  *&v105 = v19;
  *(&v105 + 1) = v20;
  v26 = v20;
  v27 = v21;
  sub_190D55FD0();
  v28 = v102[0];
  v98 = v94;
  v99 = v23;
  swift_getKeyPath();
  *&v105 = v28;
  sub_190D51C20();

  LOBYTE(v22) = v28[qword_1EAD629B0];

  v81 = v19;
  *&v105 = v19;
  *(&v105 + 1) = v26;
  v80 = v26;
  v78 = v27;
  sub_190D55FD0();
  LOBYTE(v28) = *(v102[0] + qword_1EAD62980);

  *&v105 = v19;
  *(&v105 + 1) = v26;
  sub_190D55FD0();
  v29 = v102[0];
  v30 = *(v102[0] + qword_1EAD629A0);
  v31 = v30;

  v32 = v79;
  v14[*(v79 + 20)] = v25;
  v14[v32[6]] = v22;
  v14[v32[7]] = v28;
  *&v14[v32[8]] = v30;
  v33 = v32[9];
  v102[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C80);
  sub_190D55FC0();
  *&v14[v33] = v105;
  v34 = v84;
  sub_190C8D0A8(v82, v84, type metadata accessor for DetailsWalletTabView);
  v35 = v77;
  v36 = v87;
  v37 = v95;
  sub_190C8D0A8(v77, v87, v95);
  v38 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v39 = (v85 + *(v90 + 80) + v38) & ~*(v90 + 80);
  v40 = swift_allocObject();
  sub_190C8D110(v34, v40 + v38, type metadata accessor for DetailsWalletTabView);
  sub_190C8D110(v36, v40 + v39, v37);
  sub_190C8D2A4(&qword_1EAD61C48, _s8CellViewVMa_1);
  v41 = v92;
  sub_190D557E0();

  sub_190C8D244(v14, _s8CellViewVMa_1);
  v42 = v94;
  v43 = v91;
  v44 = v41 + *(v89 + 44);
  v45 = v80;
  v46 = v81;
  sub_19022FD14(v35 + *(v94 + 28), v44, &unk_1EAD55F20);
  KeyPath = swift_getKeyPath();
  *(v44 + *(type metadata accessor for DetailsDoubleTapGestureModifier() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  *&v105 = v46;
  *(&v105 + 1) = v45;
  sub_190D55FD0();
  v48 = v102[0];
  v96 = v42;
  v97 = v93;
  swift_getKeyPath();
  *&v105 = v48;
  sub_190D51C20();

  v49 = *&v48[qword_1EAD629B8];
  sub_190D52690();

  v50 = sub_1908A2470(v49);

  sub_190C8D0A8(v35, v43, v95);
  result = CKFrameworkBundle();
  if (result)
  {
    v52 = result;
    v53 = sub_190D56ED0();
    v54 = sub_190D56ED0();
    v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

    v95 = sub_190D56F10();
    v90 = v56;

    *&v105 = v46;
    *(&v105 + 1) = v45;
    sub_190D55FD0();
    v57 = v102[0];
    v58 = *(v102[0] + qword_1EAD629A0);
    v59 = v58;

    v106 = v42;
    v107 = v93;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
    sub_190C8D0A8(v43, boxed_opaque_existential_1, _s10WalletPassVMa);
    v61 = *(v50 + 16);
    v62 = v43;
    if (!v61)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_190DD1D90;
      sub_19083B854(&v105, v50 + 32);
      v61 = *(v50 + 16);
    }

    sub_190D52690();
    result = (v50 + 32);
    v63 = -v61;
    v64 = -1;
    while (1)
    {
      v65 = v63 + v64;
      if (v63 + v64 == -1)
      {
LABEL_8:

        sub_190C8D244(v62, _s10WalletPassVMa);
        __swift_destroy_boxed_opaque_existential_0(&v105);
        v70 = v75;
        sub_19081E40C(v92, v75, &qword_1EAD61C40);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C30);
        v71 = v70 + *(result + 9);
        v72 = v76;
        *v71 = v50;
        *(v71 + 8) = v72;
        v73 = v90;
        *(v71 + 16) = v95;
        *(v71 + 24) = v73;
        *(v71 + 32) = v58;
        *(v71 + 40) = v65 == -1;
        return result;
      }

      if (++v64 >= *(v50 + 16))
      {
        break;
      }

      v66 = result + 40;
      sub_19083B854(result, v102);
      v67 = v103;
      v68 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v69 = (*(v68 + 64))(v67, v68);
      __swift_destroy_boxed_opaque_existential_0(v102);
      result = v66;
      if (v69)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_190C8C6A8(uint64_t a1, void *a2)
{
  v27 = a2;
  v2 = sub_190D53DF0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_190D515F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190C8D2A4(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v10 = *(v9 + 56);
  v11 = type metadata accessor for DetailsWalletTabView();
  v12 = v10(v11, v9);
  v13 = _s10WalletPassVMa(0);
  v28 = v13;
  v29 = sub_190C8D2A4(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  v30 = v12;
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v14 = v12[qword_1EAD629B0];

  if (v14 == 1)
  {
    v15 = v10(v11, v9);
    sub_190A4F1D0(v27);
  }

  else
  {
    sub_19022FD14(v27 + *(v13 + 28), v6, &unk_1EAD55F20);
    v17 = v25;
    v16 = v26;
    if ((*(v25 + 48))(v6, 1, v26) == 1)
    {
      sub_19022EEA4(v6, &unk_1EAD55F20);
    }

    else
    {
      v18 = v21;
      (*(v17 + 32))(v21, v6, v16);
      v19 = v22;
      sub_190C8ABF0(v22);
      sub_190D53DE0();
      (*(v23 + 8))(v19, v24);
      (*(v17 + 8))(v18, v16);
    }
  }
}

uint64_t sub_190C8CA68@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190C8D0A8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsWalletTabView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_190C8D110(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DetailsWalletTabView);
  *a2 = sub_190C8CBE4;
  a2[1] = v7;
  return result;
}

uint64_t sub_190C8CB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61BE8);
  sub_190D55FD0();
  return v1;
}

uint64_t sub_190C8CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailsWalletTabView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190C8ADF8(a1, v6, a2);
}

uint64_t sub_190C8CC6C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD2660();

  return sub_190D52690();
}

unint64_t sub_190C8CCDC()
{
  result = qword_1EAD61C20;
  if (!qword_1EAD61C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C18);
    sub_190C8CD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61C20);
  }

  return result;
}

unint64_t sub_190C8CD60()
{
  result = qword_1EAD61C28;
  if (!qword_1EAD61C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C30);
    sub_190C8CDEC();
    sub_190955DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61C28);
  }

  return result;
}

unint64_t sub_190C8CDEC()
{
  result = qword_1EAD61C38;
  if (!qword_1EAD61C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C40);
    _s8CellViewVMa_1(255);
    sub_190C8D2A4(&qword_1EAD61C48, _s8CellViewVMa_1);
    swift_getOpaqueTypeConformance2();
    sub_190C8D2A4(&qword_1EAD57748, type metadata accessor for DetailsDoubleTapGestureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61C38);
  }

  return result;
}

char *sub_190C8CF08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DetailsWalletTabView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_190C8BCAC(a1, a2, v8, a3);
}

uint64_t sub_190C8CF90(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C78);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_190C8CFF8()
{
  result = qword_1EAD61C60;
  if (!qword_1EAD61C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C58);
    sub_190233640(&qword_1EAD61C68, &qword_1EAD61C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61C60);
  }

  return result;
}

uint64_t sub_190C8D0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190C8D110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_190C8D178()
{
  v1 = *(type metadata accessor for DetailsWalletTabView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s10WalletPassVMa(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_190C8C6A8(v0 + v2, v5);
}

uint64_t sub_190C8D244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190C8D2A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190C8D2EC()
{
  v1 = [v0 layer];
  v2 = sub_190D56ED0();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_19022EEA4(v10, &unk_1EAD551C0);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = &selRef_labelColor;
    goto LABEL_11;
  }

  if (v7 == 0.0)
  {
    v4 = &selRef_labelColor;
  }

  else
  {
    v4 = &selRef_clearColor;
  }

LABEL_11:
  v5 = [objc_opt_self() *v4];

  return v5;
}

id sub_190C8D440()
{
  v0 = *MEMORY[0x1E69DDD00];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithTextStyle:v0 scale:3];
  v3 = [v1 configurationWithWeight_];
  v4 = sub_190C8D2EC();
  v5 = [v1 configurationWithHierarchicalColor_];

  v6 = [v2 configurationByApplyingConfiguration_];
  v7 = [v6 configurationByApplyingConfiguration_];

  v8 = v7;
  v9 = sub_190D56ED0();
  v10 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  return v10;
}

id GlassEmojiButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassEmojiButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  v12 = type metadata accessor for GlassEmojiButton();
  v24.receiver = v4;
  v24.super_class = v12;
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 ck_applyGlassBackground];
  aBlock[4] = sub_190C8D930;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_122;
  v14 = _Block_copy(aBlock);
  [v13 setConfigurationUpdateHandler_];
  _Block_release(v14);
  sub_190D57F70();
  sub_190C8D440();
  sub_190D57F60();
  v15 = sub_190D57FB0();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  sub_190D57FE0();

  v16 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v17 = sub_190D574E0();
  [v16 setValue:v17 forKey:*MEMORY[0x1E6979BA8]];

  v18 = [v13 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_190DD1D90;
  *(v19 + 56) = sub_1909515A4();
  *(v19 + 32) = v16;
  v20 = v16;
  v21 = sub_190D57160();

  [v18 setFilters_];

  return v13;
}

uint64_t sub_190C8D930(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassEmojiButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v13 = a1;
    sub_190D57FD0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_19022EEA4(v7, &unk_1EAD57940);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_190C8D440();
      sub_190D57F60();
      (*(v9 + 16))(v4, v11, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      sub_190D57FE0();

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_190C8DCB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for GlassEmojiButton();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id GlassEmojiButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassEmojiButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C8DF7C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E5D8);
  __swift_project_value_buffer(v0, qword_1EAD9E5D8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190C8DFE8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E5F0);
  __swift_project_value_buffer(v0, qword_1EAD9E5F0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190C8E054()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E608);
  __swift_project_value_buffer(v0, qword_1EAD9E608);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190C8E0C0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E620);
  __swift_project_value_buffer(v0, qword_1EAD9E620);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190C8E12C()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1 == 1)
    {
      sub_190D54AC0();
      sub_1909F1298();
    }

    else if (v1 == 2)
    {
      sub_190C90428();
    }

    else
    {
      sub_190C903D4();
      sub_190D50920();
    }
  }

  else
  {
    sub_190D548D0();
    sub_1909F12EC();
  }

  return sub_190D565D0();
}

void sub_190C8E210(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AvatarImageModel(0);
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61CA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61CA8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v53 - v15;
  v17 = *(v2 + 16);
  v18 = *(v17 + 16);
  v60 = v11;
  if (a1 < 0)
  {
    if (!v18)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v19 = v18 + a1 + -a1 / v18 * v18;
  }

  else
  {
    if (!v18)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = a1 % v18;
  }

  v20 = *(v2 + 48);
  if (v18 < v20)
  {
    v20 = v18;
  }

  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_25;
  }

  v59 = v9;
  v22 = v20;
  if (v21 < v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (__OFSUB__(v21, v19))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v54 = v8;
  v55 = v16;
  v56 = v14;
  v57 = v13;
  v58 = v2;
  v23 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v24 = sub_190A92A50(v20, 0);
    if (sub_190A92C9C(v63, (v24 + 4), v21 - v19, v19, v21) == v22)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v24 = v23;
LABEL_15:
  v53[1] = a2;
  v25 = v24[2];
  if (v25)
  {
    v26 = v7;
    v63[0] = v23;
    sub_19082DE7C(0, v25, 0);
    v27 = v63[0];
    v28 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v61 = v17 + v28;
    v29 = 4;
    while (1)
    {
      v30 = v24[v29] % v18;
      if (v30 < 0)
      {
        break;
      }

      v31 = v24;
      v32 = *(v62 + 72);
      sub_190C8FD00(v61 + v32 * v30, v26);
      v63[0] = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_19082DE7C(v33 > 1, v34 + 1, 1);
        v27 = v63[0];
      }

      *(v27 + 16) = v34 + 1;
      sub_190C140F0(v26, v27 + v28 + v34 * v32);
      ++v29;
      --v25;
      v24 = v31;
      if (!v25)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v64 = v27;
  v35 = swift_allocObject();
  v36 = v58;
  v37 = *(v58 + 80);
  *(v35 + 80) = *(v58 + 64);
  *(v35 + 96) = v37;
  *(v35 + 112) = *(v36 + 96);
  *(v35 + 128) = *(v36 + 112);
  v38 = *(v36 + 16);
  *(v35 + 16) = *v36;
  *(v35 + 32) = v38;
  v39 = *(v36 + 48);
  *(v35 + 48) = *(v36 + 32);
  *(v35 + 64) = v39;
  *(v35 + 136) = v27;
  sub_190D52690();
  sub_1909F168C(v36, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61CB0);
  sub_190D518A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61CB8);
  sub_190233640(&qword_1EAD61CC0, &qword_1EAD61CB0);
  sub_190C8FD70();
  sub_190C901B8(&qword_1EAD61D40, type metadata accessor for AvatarImageModel);
  v40 = v60;
  sub_190D56290();
  v41 = swift_allocObject();
  v42 = *(v36 + 80);
  *(v41 + 80) = *(v36 + 64);
  *(v41 + 96) = v42;
  *(v41 + 112) = *(v36 + 96);
  *(v41 + 128) = *(v36 + 112);
  v43 = *(v36 + 16);
  *(v41 + 16) = *v36;
  *(v41 + 32) = v43;
  v44 = *(v36 + 48);
  *(v41 + 48) = *(v36 + 32);
  *(v41 + 64) = v44;
  sub_1909F168C(v36, v63);
  v45 = sub_190C90208();
  v46 = v55;
  v47 = v54;
  sub_190D557E0();

  (*(v59 + 8))(v40, v47);
  type metadata accessor for TapPublisher(0);
  sub_190C901B8(&qword_1EAD46100, type metadata accessor for TapPublisher);
  sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  LOBYTE(v64) = v63[0];
  v48 = swift_allocObject();
  v49 = *(v36 + 80);
  *(v48 + 80) = *(v36 + 64);
  *(v48 + 96) = v49;
  *(v48 + 112) = *(v36 + 96);
  *(v48 + 128) = *(v36 + 112);
  v50 = *(v36 + 16);
  *(v48 + 16) = *v36;
  *(v48 + 32) = v50;
  v51 = *(v36 + 48);
  *(v48 + 48) = *(v36 + 32);
  *(v48 + 64) = v51;
  sub_1909F168C(v36, v63);
  v63[0] = v47;
  v63[1] = v45;
  swift_getOpaqueTypeConformance2();
  v52 = v57;
  sub_190D55C30();

  (*(v56 + 8))(v46, v52);
}

double sub_190C8E934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 57);
  v15[2] = a1;
  v8 = sub_190A54E90(sub_190C90384, v15, a3);
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v17[0] = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60300);
  sub_190D55FD0();
  if (v7)
  {
    v11 = v10 + v16;
  }

  else
  {
    v11 = -(v10 + v16);
  }

  sub_190C8EA30(a1, v17);
  v12 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v12;
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v18;
  result = *v17;
  v14 = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = v14;
  *(a4 + 88) = v11;
  return result;
}

double sub_190C8EA30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (*(v3[2] + 16) == 1)
  {
    v6 = (v3 + 4);
    v7 = 0;
  }

  else
  {
    v6 = (v3 + 3);
    v7 = v3[5];
  }

  v8 = sub_190C8F2C8(v3, *v6 / 3.0);
  v10 = v9;
  sub_190C8F330(a1, &v17);
  v11 = v17;
  v12 = v18;
  sub_190D56500();
  sub_190D53C60();
  sub_190D53CC0();
  sub_190D56690();
  sub_190D53CA0();
  sub_190D53CD0();

  MEMORY[0x193AEF540](v13, v8, v10);
  sub_190D53CD0();

  sub_190D56690();
  sub_190D53CA0();
  sub_190D53CC0();
  sub_190D53CD0();

  v14 = sub_190D53C80();

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v7;
  v15 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  result = *&v19;
  *(a2 + 64) = v19;
  *(a2 + 80) = v14;
  return result;
}

uint64_t sub_190C8EBF8(uint64_t result)
{
  if (*(result + 56))
  {
    type metadata accessor for TapPublisher(0);
    sub_190C901B8(&qword_1EAD46100, type metadata accessor for TapPublisher);
    sub_190D53AA0();
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = sub_190D538F0();
    *v2 = !*v2;
    v1(&v3, 0);
  }

  return result;
}

uint64_t sub_190C8ED0C()
{
  v1 = v0;
  v33 = sub_190D56770();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_190D567A0();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v36 = *(v0 + 80);
  v34[0] = *(v0 + 80);
  v37 = *(&v36 + 1);
  sub_19022FD14(&v37, aBlock, &qword_1EAD61D50);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FD0();
  if ((aBlock[0] & 1) != 0 || *(v0 + 48) >= *(*(v0 + 16) + 16))
  {
    return sub_19022EEA4(&v36, &unk_1EAD61190);
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v27 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v15 = *(v9 + 8);
  v29 = v9 + 8;
  v30 = v15;
  v28 = v8;
  v15(v11, v8);
  v16 = swift_allocObject();
  v17 = *(v0 + 80);
  *(v16 + 80) = *(v0 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(v0 + 96);
  *(v16 + 128) = *(v0 + 112);
  v18 = *(v0 + 16);
  *(v16 + 16) = *v0;
  *(v16 + 32) = v18;
  v19 = *(v0 + 48);
  *(v16 + 48) = *(v0 + 32);
  *(v16 + 64) = v19;
  aBlock[4] = sub_190C90314;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_123;
  v26 = _Block_copy(aBlock);
  sub_1909F168C(v0, v34);

  sub_190D56790();
  *&v34[0] = MEMORY[0x1E69E7CC0];
  v25 = sub_190C901B8(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  v20 = v33;
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  v21 = v26;
  v22 = v27;
  MEMORY[0x193AF30E0](v14, v7, v4, v26);
  _Block_release(v21);

  (*(v2 + 8))(v4, v20);
  (*(v5 + 8))(v7, v32);
  v30(v14, v28);
  v34[0] = v36;
  LOBYTE(aBlock[0]) = 1;
  sub_190D55FE0();
  sub_19022EEA4(&v36, &unk_1EAD61190);
  v23 = sub_190D56530();
  MEMORY[0x1EEE9AC00](v23);
  *(&v25 - 2) = v1;
  sub_190D53E40();
}

double sub_190C8F2C8(uint64_t *a1, double result)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    if (!*(a1 + 57))
    {
      return -result;
    }
  }

  else if (v2 == 1)
  {
    return 0.0;
  }

  else if (v2)
  {
    return 0.0;
  }

  else if (!*(a1 + 57))
  {
    return -result;
  }

  return result;
}

void sub_190C8F330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D55EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v8 = *a1;
    sub_190D55E90();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v9 = sub_190D55F10();

    (*(v5 + 8))(v7, v4);
    v16 = v9;
    v17 = 0;
    sub_190A42290();
    sub_190D50920();
    sub_190D54C50();
  }

  else
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      v13 = 0uLL;
      v14 = -1;
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_190DD55F0;
    *(v11 + 32) = v10;
    *&v16 = v11;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD606C8);
    sub_190D55FC0();
    v16 = v18;
    v17 = 1;
    sub_190A42290();
    sub_190D52690();
    sub_190D50920();
    sub_190D54C50();
  }

  v13 = v18;
  v14 = v19;
LABEL_6:
  *a2 = v13;
  *(a2 + 16) = v14;
}

uint64_t sub_190C8F5AC(uint64_t a1)
{
  if (*(a1 + 57))
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  v5 = *(a1 + 64);
  v3[1] = *(a1 + 64);
  v6 = *(&v5 + 1);
  sub_19022FD14(&v6, v3, &qword_1EAD61D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60300);
  result = sub_190D55FD0();
  if (__OFADD__(v4, v1))
  {
    __break(1u);
  }

  else
  {
    v3[0] = v5;
    sub_190D55FE0();
    return sub_19022EEA4(&v5, &qword_1EAD60300);
  }

  return result;
}

uint64_t sub_190C8F68C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190C8E12C();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61C98) + 44);
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60300);
  sub_190D55FD0();
  sub_190C8E210(v4, a1 + v2);
}

uint64_t sub_190C8F750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  return v1;
}

uint64_t sub_190C8F7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_190D518A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_190C8F838()
{
  v1 = OBJC_IVAR____TtC7ChatKit12TapPublisher__tapped;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D7C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_190C8F908()
{
  sub_190C8F998();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_190C8F998()
{
  if (!qword_1EAD452B8)
  {
    v0 = sub_190D53920();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD452B8);
    }
  }
}

void sub_190C8FA30()
{
  sub_190C8FAFC(319, &qword_1EAD44EA8, &qword_1EAD44EB0);
  if (v0 <= 0x3F)
  {
    sub_190C8FAFC(319, &qword_1EAD44E38, &qword_1EAD44E40);
    if (v1 <= 0x3F)
    {
      sub_190D518A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190C8FAFC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1902188FC(255, a3);
    v4 = sub_190D58050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190C8FB9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TapPublisher(0);
  result = sub_190D538C0();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit15AvatarStackViewV11LayoutStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_190C8FC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190C8FC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190C8FD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarImageModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190C8FD70()
{
  result = qword_1EAD61CC8;
  if (!qword_1EAD61CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CB8);
    sub_190C8FE28();
    sub_190233640(&qword_1EAD601E0, &qword_1EAD601E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61CC8);
  }

  return result;
}

unint64_t sub_190C8FE28()
{
  result = qword_1EAD61CD0;
  if (!qword_1EAD61CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CD8);
    sub_190C8FEE0();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61CD0);
  }

  return result;
}

unint64_t sub_190C8FEE0()
{
  result = qword_1EAD61CE0;
  if (!qword_1EAD61CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CE8);
    sub_190C8FF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61CE0);
  }

  return result;
}

unint64_t sub_190C8FF6C()
{
  result = qword_1EAD61CF0;
  if (!qword_1EAD61CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CF8);
    sub_190C90024();
    sub_190233640(&qword_1EAD61D30, &qword_1EAD61D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61CF0);
  }

  return result;
}

unint64_t sub_190C90024()
{
  result = qword_1EAD61D00;
  if (!qword_1EAD61D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61D08);
    sub_190C900A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D00);
  }

  return result;
}

unint64_t sub_190C900A8()
{
  result = qword_1EAD61D10;
  if (!qword_1EAD61D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61D18);
    sub_190C9012C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D10);
  }

  return result;
}

unint64_t sub_190C9012C()
{
  result = qword_1EAD61D20;
  if (!qword_1EAD61D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61D28);
    sub_190A42290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D20);
  }

  return result;
}

uint64_t sub_190C901B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C90208()
{
  result = qword_1EAD61D48;
  if (!qword_1EAD61D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CA0);
    sub_190C8FD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D48);
  }

  return result;
}

uint64_t objectdestroy_17Tm_0()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  sub_1908BE0A0();

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

unint64_t sub_190C903D4()
{
  result = qword_1EAD61D60;
  if (!qword_1EAD61D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D60);
  }

  return result;
}

unint64_t sub_190C90428()
{
  result = qword_1EAD61D68;
  if (!qword_1EAD61D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D68);
  }

  return result;
}

unint64_t sub_190C9049C()
{
  result = qword_1EAD61D70;
  if (!qword_1EAD61D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61D78);
    sub_190C90528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D70);
  }

  return result;
}

unint64_t sub_190C90528()
{
  result = qword_1EAD61D80;
  if (!qword_1EAD61D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C98);
    sub_190233640(&qword_1EAD61D88, &qword_1EAD61D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61CA0);
    sub_190C90208();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D80);
  }

  return result;
}

unint64_t sub_190C90678()
{
  result = qword_1EAD61D98;
  if (!qword_1EAD61D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61D98);
  }

  return result;
}

void sub_190C906CC()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isEntryViewRefreshEnabled];

  byte_1EAD61DA0 = v1;
}

double sub_190C90770()
{
  v1 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C90808(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_190C908F4()
{
  if (qword_1EAD52028 != -1)
  {
    swift_once();
  }

  if (byte_1EAD61DA0)
  {
    return swift_beginAccess();
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v1 = result;
    [result sendButtonSize];

    return swift_beginAccess();
  }

  __break(1u);
  return result;
}

id sub_190C90A0C()
{
  if (qword_1EAD52028 != -1)
  {
    swift_once();
  }

  if (byte_1EAD61DA0)
  {
    return swift_beginAccess();
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v1 = result;
    [result sendButtonSize];

    return swift_beginAccess();
  }

  __break(1u);
  return result;
}

id CKEffectPickerStylingMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKEffectPickerStylingMetrics.init()()
{
  if (qword_1EAD52028 != -1)
  {
    swift_once();
  }

  v1 = 9.5;
  if (byte_1EAD61DA0)
  {
    v1 = 8.0;
  }

  *&v0[OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CKEffectPickerStylingMetrics();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CKEffectPickerStylingMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKEffectPickerStylingMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t FullScreenBalloonViewDisplayConfigurationType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_190C90E2C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C90F0C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C90FA4(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C9109C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91134(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C9122C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C912C4(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C913BC()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91454(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C9154C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C915E4(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C916DC()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91774(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C9186C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91904(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C919FC()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91A94(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C91B8C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91C24(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C91D1C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91DB4(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190C91EAC()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideBalloonTail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C91F44(char a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideBalloonTail;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_190C92040()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_snapshotView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190C92098(uint64_t a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_snapshotView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_190C92198()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C92230(double a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190C92328()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C923C0(double a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190C924B8()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C92550(double a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190C92648()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C926E0(double a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190C927D8()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C92870(double a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_190C9296C()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_190C92A20(uint64_t a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190C92A78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_190C92B84()
{
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutChatItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190C92BDC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_190C92C38(uint64_t a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutChatItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190C92C90(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_190C92EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  return sub_19023C414(v1 + v3, a1);
}

uint64_t sub_190C92F88(uint64_t a1)
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  sub_190A3A620(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_190C92FE8(uint64_t a1, uint64_t *a2)
{
  sub_19023C414(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  sub_190A3A620(v6, v3 + v4);
  return swift_endAccess();
}

id FullScreenBalloonViewDisplayConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

_BYTE *static FullScreenBalloonViewDisplayConfiguration.tapbackKeyboardInputContext()()
{
  v0 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  swift_beginAccess();
  v0[v1] = 1;
  return v0;
}

id FullScreenBalloonViewDisplayConfiguration.init()()
{
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput] = 0;
  v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideBalloonTail] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_snapshotView] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha] = 0;
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration] = 0;
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  *&v0[v1] = [objc_opt_self() whiteColor];
  *&v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutChatItem] = 0;
  v2 = &v0[OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext];
  v3 = type metadata accessor for FullScreenBalloonViewDisplayConfiguration();
  *v2 = 0u;
  v2[1] = 0u;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FullScreenBalloonViewDisplayConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenBalloonViewDisplayConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *_s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0()
{
  v0 = [objc_allocWithZone(type metadata accessor for FullScreenBalloonViewDisplayConfiguration()) init];
  v1 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  swift_beginAccess();
  *&v0[v1] = 1;
  v2 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  swift_beginAccess();
  v0[v2] = 0;
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  swift_beginAccess();
  v0[v3] = 0;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  swift_beginAccess();
  v0[v4] = 0;
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  swift_beginAccess();
  v0[v5] = 0;
  v6 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  swift_beginAccess();
  *&v0[v6] = 0x3FB999999999999ALL;
  v7 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  swift_beginAccess();
  *&v0[v7] = 0x3FE0000000000000;
  v8 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  swift_beginAccess();
  *&v0[v8] = 0x3FD3333333333333;
  v9 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  swift_beginAccess();
  *&v0[v9] = 0x3FE153F7CED91687;
  v10 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  swift_beginAccess();
  *&v0[v10] = 0x3FC5C28F5C28F5C3;
  v11 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  swift_beginAccess();
  v0[v11] = 1;
  v12 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  swift_beginAccess();
  v0[v12] = 0;
  v13 = [objc_opt_self() blackColor];
  v14 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v15 = *&v0[v14];
  *&v0[v14] = v13;

  v16 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  swift_beginAccess();
  v0[v16] = 0;
  v17 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  swift_beginAccess();
  v0[v17] = 0;
  v18 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  swift_beginAccess();
  v0[v18] = 0;
  return v0;
}

_BYTE *_s7ChatKit41FullScreenBalloonViewDisplayConfigurationC17addStickerContext23dismissingAppCardOnExitACSb_tFZ_0(char a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for FullScreenBalloonViewDisplayConfiguration()) init];
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  swift_beginAccess();
  *&v2[v3] = 2;
  v4 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  swift_beginAccess();
  v2[v4] = 1;
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  swift_beginAccess();
  v2[v5] = 1;
  v6 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  swift_beginAccess();
  v2[v6] = 0;
  v7 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  swift_beginAccess();
  v2[v7] = 0;
  v8 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  swift_beginAccess();
  v2[v8] = 0;
  v9 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  swift_beginAccess();
  v2[v9] = 1;
  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v12 = *&v2[v11];
  *&v2[v11] = v10;

  v13 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  swift_beginAccess();
  v2[v13] = 1;
  v14 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  swift_beginAccess();
  v2[v14] = a1;
  v15 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  swift_beginAccess();
  v2[v15] = 1;
  v16 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  swift_beginAccess();
  *&v2[v16] = 0x3FE6666666666666;
  v17 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  swift_beginAccess();
  *&v2[v17] = 0x3FE6666666666666;
  v18 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  swift_beginAccess();
  *&v2[v18] = 0x3FCC28F5C28F5C29;
  v19 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  swift_beginAccess();
  *&v2[v19] = 0x3FC3333333333333;
  v20 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  swift_beginAccess();
  *&v2[v20] = 0x3FC999999999999ALL;
  return v2;
}

unint64_t sub_190C939B0()
{
  result = qword_1EAD61E58;
  if (!qword_1EAD61E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61E58);
  }

  return result;
}

void sub_190C94890()
{
  v1 = v0;
  if (qword_1EAD46228 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D748);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "beginning clean up for text selection", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = [v1 dismissOnInteractionView];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for CKInteractionNotificationView();
    if (swift_dynamicCastClass())
    {
      sub_190C877F4();
      oslog = sub_190D53020();
      v8 = sub_190D576C0();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_19020E000, oslog, v8, "ended clean up for text selection", v9, 2u);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

      v10 = oslog;
    }

    else
    {
      v10 = v7;
    }
  }
}

uint64_t _s11ContentViewVMa_8()
{
  result = qword_1EAD61E60;
  if (!qword_1EAD61E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C94B30()
{
  sub_190C94B9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_190C94B9C()
{
  if (!qword_1EAD5F2A8)
  {
    _s9ViewModelCMa_5();
    v0 = sub_190D56360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5F2A8);
    }
  }
}

uint64_t sub_190C94C10@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E70);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v141 - v2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E78);
  MEMORY[0x1EEE9AC00](v173);
  v5 = &v141 - v4;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E80);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v141 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E88);
  MEMORY[0x1EEE9AC00](v161);
  v153 = &v141 - v7;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E90);
  MEMORY[0x1EEE9AC00](v150);
  v154 = &v141 - v8;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61E98);
  v163 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v149 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v141 - v11;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA0);
  v165 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v148 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v141 - v14;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EB0);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v141 - v17;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EB8);
  v168 = *(v175 - 1);
  MEMORY[0x1EEE9AC00](v175);
  v169 = &v141 - v18;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EC0);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v141 - v19;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EC8);
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v141 - v20;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61ED0);
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v141 - v21;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61ED8);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v141 - v22;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EE0);
  MEMORY[0x1EEE9AC00](v158);
  v146 = &v141 - v23;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EE8);
  MEMORY[0x1EEE9AC00](v171);
  v160 = &v141 - v24;
  v143 = _s30EnableEnhancedProtectionButtonVMa();
  MEMORY[0x1EEE9AC00](v143);
  v26 = (&v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();
  v27 = v176;
  swift_getKeyPath();
  v176 = v27;
  sub_190C97ABC(&qword_1EAD45CD0, _s9ViewModelCMa_5);
  sub_190D51C20();

  v28 = *(v27 + 32);
  v29 = *(v27 + 40);

  if (v29)
  {
    goto LABEL_2;
  }

  if (v28 > 8)
  {
    v40 = v175;
    if ((v28 - 9) >= 6)
    {
      if (v28 != 17)
      {
        if (v28 == 18)
        {
LABEL_18:
          v93 = v169;
          sub_190C9692C(v169);
          v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
          v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
          v96 = _s10StatusViewVMa();
          v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
          v98 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
          v99 = sub_19081E484();
          v100 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
          v176 = v96;
          v177 = MEMORY[0x1E69E6158];
          v178 = v97;
          v179 = MEMORY[0x1E6981148];
          v180 = v98;
          v181 = v99;
          v182 = v100;
          v183 = MEMORY[0x1E6981138];
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v102 = sub_190B98070();
          v176 = v94;
          v177 = v95;
          v178 = OpaqueTypeConformance2;
          v179 = v102;
          swift_getOpaqueTypeConformance2();
          v103 = v164;
          v104 = v175;
          sub_190D55640();
          (*(v168 + 8))(v93, v104);
          v105 = v155;
          sub_190C9702C();
          sub_190C97A00();
          v106 = v166;
          sub_190D55640();
          sub_190C97D98(v105);
          v107 = *(v165 + 16);
          v108 = v148;
          v109 = v162;
          v107(v148, v103, v162);
          v110 = v163;
          v111 = *(v163 + 16);
          v112 = v149;
          v113 = v106;
          v114 = v167;
          v111(v149, v113, v167);
          v115 = v154;
          v107(v154, v108, v109);
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61F48);
          v117 = v115;
          v111(&v115[*(v116 + 48)], v112, v114);
          v118 = *(v110 + 8);
          v163 = v110 + 8;
          v175 = v118;
          (v118)(v112, v114);
          v119 = *(v165 + 8);
          v120 = v109;
          v119(v108, v109);
          sub_19022FD14(v117, v152, &qword_1EAD61E90);
          swift_storeEnumTagMultiPayload();
          sub_190233640(&qword_1EAD61F38, &qword_1EAD61E90);
          v121 = v153;
          sub_190D54C50();
          sub_19022FD14(v121, v159, &qword_1EAD61E88);
          swift_storeEnumTagMultiPayload();
          sub_190C97760();
          sub_190C97B04();
          v122 = v160;
          sub_190D54C50();
          sub_19022EEA4(v121, &qword_1EAD61E88);
          sub_19022FD14(v122, v172, &qword_1EAD61EE8);
          swift_storeEnumTagMultiPayload();
          sub_190C976D4();
          sub_190C97BB4();
          sub_190D54C50();
          sub_19022EEA4(v122, &qword_1EAD61EE8);
          sub_19022EEA4(v117, &qword_1EAD61E90);
          (v175)(v166, v167);
          return (v119)(v164, v120);
        }

LABEL_2:
        swift_storeEnumTagMultiPayload();
        v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
        v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
        v32 = _s10StatusViewVMa();
        v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
        v34 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
        v35 = sub_19081E484();
        v36 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
        v176 = v32;
        v177 = MEMORY[0x1E69E6158];
        v178 = v33;
        v179 = MEMORY[0x1E6981148];
        v180 = v34;
        v181 = v35;
        v182 = v36;
        v183 = MEMORY[0x1E6981138];
        v37 = swift_getOpaqueTypeConformance2();
        v38 = sub_190B98070();
        v176 = v30;
        v177 = v31;
        v178 = v37;
        v179 = v38;
        swift_getOpaqueTypeConformance2();
        sub_190D54C50();
        sub_19022FD14(v5, v172, &qword_1EAD61E78);
        swift_storeEnumTagMultiPayload();
        sub_190C976D4();
        sub_190C97BB4();
        sub_190D54C50();
        return sub_19022EEA4(v5, &qword_1EAD61E78);
      }

      goto LABEL_14;
    }

LABEL_16:
    v82 = v169;
    sub_190C9692C(v169);
    (*(v168 + 16))(v3, v82, v40);
    swift_storeEnumTagMultiPayload();
    v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
    v85 = _s10StatusViewVMa();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    v87 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
    v88 = sub_19081E484();
    v89 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v176 = v85;
    v177 = MEMORY[0x1E69E6158];
    v178 = v86;
    v179 = MEMORY[0x1E6981148];
    v180 = v87;
    v181 = v88;
    v182 = v89;
    v183 = MEMORY[0x1E6981138];
    v90 = swift_getOpaqueTypeConformance2();
    v91 = sub_190B98070();
    v176 = v83;
    v177 = v84;
    v178 = v90;
    v179 = v91;
    swift_getOpaqueTypeConformance2();
    v92 = v175;
    sub_190D54C50();
    sub_19022FD14(v5, v172, &qword_1EAD61E78);
    swift_storeEnumTagMultiPayload();
    sub_190C976D4();
    sub_190C97BB4();
    sub_190D54C50();
    sub_19022EEA4(v5, &qword_1EAD61E78);
    return (*(v168 + 8))(v169, v92);
  }

  v40 = v175;
  if (v28 > 3)
  {
    if ((v28 - 5) < 4)
    {
      v41 = v169;
      sub_190C9692C(v169);
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
      v44 = _s10StatusViewVMa();
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
      v46 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
      v47 = sub_19081E484();
      v48 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      v176 = v44;
      v177 = MEMORY[0x1E69E6158];
      v178 = v45;
      v179 = MEMORY[0x1E6981148];
      v180 = v46;
      v181 = v47;
      v182 = v48;
      v183 = MEMORY[0x1E6981138];
      v49 = swift_getOpaqueTypeConformance2();
      v50 = sub_190B98070();
      v176 = v42;
      v177 = v43;
      v178 = v49;
      v179 = v50;
      swift_getOpaqueTypeConformance2();
      v51 = v164;
      v52 = v175;
      sub_190D55640();
      (*(v168 + 8))(v41, v52);
      v53 = v155;
      sub_190C9702C();
      sub_190C97A00();
      v54 = v166;
      sub_190D55640();
      sub_190C97D98(v53);
      v55 = *(v165 + 16);
      v56 = v148;
      v57 = v162;
      v55(v148, v51, v162);
      v58 = v163;
      v59 = *(v163 + 16);
      v60 = v149;
      v61 = v54;
      v62 = v167;
      v59(v149, v61, v167);
      v63 = v154;
      v55(v154, v56, v57);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61F48);
      v59((v63 + *(v64 + 48)), v60, v62);
      v175 = *(v58 + 8);
      (v175)(v60, v62);
      v65 = *(v165 + 8);
      v65(v56, v57);
      sub_19022FD14(v63, v152, &qword_1EAD61E90);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD61F38, &qword_1EAD61E90);
      v66 = v153;
      sub_190D54C50();
      sub_19022FD14(v66, v159, &qword_1EAD61E88);
      swift_storeEnumTagMultiPayload();
      sub_190C97760();
      sub_190C97B04();
      v67 = v160;
      sub_190D54C50();
      sub_19022EEA4(v66, &qword_1EAD61E88);
      sub_19022FD14(v67, v172, &qword_1EAD61EE8);
      swift_storeEnumTagMultiPayload();
      sub_190C976D4();
      sub_190C97BB4();
      sub_190D54C50();
      sub_19022EEA4(v67, &qword_1EAD61EE8);
      sub_19022EEA4(v63, &qword_1EAD61E90);
      (v175)(v166, v167);
      return (v65)(v164, v162);
    }

    if (v28 == 4)
    {
      goto LABEL_18;
    }

    goto LABEL_2;
  }

  if ((v28 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (v28)
  {
    if (v28 != 3)
    {
      goto LABEL_2;
    }

LABEL_14:
    sub_190D56320();
    v68 = [*(v176 + 16) isGroupConversation];

    if (v68)
    {
      v69 = v169;
      sub_190C9692C(v169);
      v70 = v168;
      (*(v168 + 16))(v141, v69, v175);
      swift_storeEnumTagMultiPayload();
      v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
      v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
      v73 = _s10StatusViewVMa();
      v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
      v75 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
      v76 = sub_19081E484();
      v77 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      v176 = v73;
      v177 = MEMORY[0x1E69E6158];
      v178 = v74;
      v179 = MEMORY[0x1E6981148];
      v180 = v75;
      v181 = v76;
      v182 = v77;
      v183 = MEMORY[0x1E6981138];
      v78 = swift_getOpaqueTypeConformance2();
      v79 = sub_190B98070();
      v176 = v71;
      v177 = v72;
      v178 = v78;
      v179 = v79;
      swift_getOpaqueTypeConformance2();
      sub_190C97A00();
      v80 = v142;
      v81 = v175;
      sub_190D54C50();
      (*(v70 + 8))(v169, v81);
    }

    else
    {
      v128 = v155;
      sub_190C9702C();
      sub_190C97E00(v128, v141);
      swift_storeEnumTagMultiPayload();
      v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
      v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
      v131 = _s10StatusViewVMa();
      v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
      v133 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
      v134 = sub_19081E484();
      v135 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      v176 = v131;
      v177 = MEMORY[0x1E69E6158];
      v178 = v132;
      v179 = MEMORY[0x1E6981148];
      v180 = v133;
      v181 = v134;
      v182 = v135;
      v183 = MEMORY[0x1E6981138];
      v136 = swift_getOpaqueTypeConformance2();
      v137 = sub_190B98070();
      v176 = v129;
      v177 = v130;
      v178 = v136;
      v179 = v137;
      swift_getOpaqueTypeConformance2();
      sub_190C97A00();
      v80 = v142;
      sub_190D54C50();
      sub_190C97D98(v155);
    }

    v138 = v172;
    sub_19022FD14(v80, v145, &qword_1EAD61EC0);
    swift_storeEnumTagMultiPayload();
    sub_190C97ABC(&qword_1EAD61F10, _s30EnableEnhancedProtectionButtonVMa);
    sub_190C9781C();
    v139 = v146;
    sub_190D54C50();
    sub_19022FD14(v139, v159, &qword_1EAD61EE0);
    swift_storeEnumTagMultiPayload();
    sub_190C97760();
    sub_190C97B04();
    v140 = v160;
    sub_190D54C50();
    sub_19022EEA4(v139, &qword_1EAD61EE0);
    sub_19022FD14(v140, v138, &qword_1EAD61EE8);
    swift_storeEnumTagMultiPayload();
    sub_190C976D4();
    sub_190C97BB4();
    sub_190D54C50();
    sub_19022EEA4(v140, &qword_1EAD61EE8);
    return sub_19022EEA4(v80, &qword_1EAD61EC0);
  }

  sub_190D56320();
  *v26 = v176;
  v123 = *(v143 + 20);
  if (qword_1EAD52090 != -1)
  {
    swift_once();
  }

  v124 = _s10StyleGuideVMa_0();
  v125 = __swift_project_value_buffer(v124, qword_1EAD9E6C0);
  sub_190C97EE0(v125, v26 + v123, _s10StyleGuideVMa_0);
  sub_190C97EE0(v26, v145, _s30EnableEnhancedProtectionButtonVMa);
  swift_storeEnumTagMultiPayload();
  sub_190C97ABC(&qword_1EAD61F10, _s30EnableEnhancedProtectionButtonVMa);
  sub_190C9781C();
  v126 = v146;
  sub_190D54C50();
  sub_19022FD14(v126, v159, &qword_1EAD61EE0);
  swift_storeEnumTagMultiPayload();
  sub_190C97760();
  sub_190C97B04();
  v127 = v160;
  sub_190D54C50();
  sub_19022EEA4(v126, &qword_1EAD61EE0);
  sub_19022FD14(v127, v172, &qword_1EAD61EE8);
  swift_storeEnumTagMultiPayload();
  sub_190C976D4();
  sub_190C97BB4();
  sub_190D54C50();
  sub_19022EEA4(v127, &qword_1EAD61EE8);
  return sub_190C97E80(v26, _s30EnableEnhancedProtectionButtonVMa);
}