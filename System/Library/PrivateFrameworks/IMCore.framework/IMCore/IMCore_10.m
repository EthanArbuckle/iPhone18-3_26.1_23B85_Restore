uint64_t sub_1A8442884()
{
  sub_1A8442A38(v0 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage, type metadata accessor for ImportExport.Message);
  sub_1A8442A38(v0 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message, type metadata accessor for ImportExport.Message);
  v1 = *(v0 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_copiedAttachments);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s17MessageImportInfoCMa()
{
  result = qword_1EB2E7CB0;
  if (!qword_1EB2E7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8442980()
{
  result = type metadata accessor for ImportExport.Message();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8442A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8442A98(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8442B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8442B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A8442BD0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_1A84E5D8C();
    v3 = [v1 transferForGUID_];

    if (v3)
    {
      v4 = [v3 commSafetySensitive];

      return (v4 == 1);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A8442C90()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_1A84E5D8C();
    v3 = [v1 transferForGUID_];

    if (v3)
    {
      v4 = [v3 isAdaptiveImageGlyph];

      v1 = v3;
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A8442D50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1A84E5DBC();
  LOBYTE(v1) = v2(v3);

  return v1 & 1;
}

id sub_1A8442D9C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_1A84E5DBC();
  v15 = v14;
  v16 = sub_1A84E5D3C();
  if (a8)
  {
    v17 = sub_1A84E5DBC();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a3;
  v20 = a1;
  v21 = sub_1A8442EB0(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

uint64_t sub_1A8442EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1A84E5D2C();
  v10 = [v7 adjustMessageSummaryInfoForSending_];

  sub_1A84E5D3C();
  v11 = sub_1A84E5D2C();
  v27 = sub_1A8442C90;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A8442D50;
  v26 = &unk_1F1B73BF0;
  v12 = _Block_copy(&aBlock);

  v27 = sub_1A8442D4C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A8442D50;
  v26 = &unk_1F1B73C18;
  v13 = _Block_copy(&aBlock);

  v14 = [v7 backwardCompatibilityStringWithMessageSummaryInfo:v11 isAdaptiveImageGlyphProvider:v12 isCommSafetySensitiveProvider:v13];
  _Block_release(v12);

  _Block_release(v13);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = IMCreateSuperFormatStringFromPlainTextString();

  v17 = sub_1A84E5D8C();
  v18 = [v7 associatedMessageType];
  v19 = sub_1A84E5D2C();

  if (a7)
  {
    a7 = sub_1A84E5D8C();
  }

  v20 = [objc_opt_self() instantMessageWithAssociatedMessageContent:v16 associatedMessageGUID:v17 associatedMessageType:v18 associatedMessageRange:a3 associatedMessageEmoji:a4 messageSummaryInfo:0 threadIdentifier:{v19, a7}];

  return v20;
}

id sub_1A84431B8()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v39[-v4];
  v6 = sub_1A84E56DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39[-v12];
  v14 = [objc_opt_self() sharedFeatureFlags];
  v15 = [v14 isPriorityMessagesEnabled];

  if (v15)
  {
    if ([v1 isFiltered] != 2 && objc_msgSend(v1, sel_isFiltered))
    {
      if ([v1 valueForChatProperty_])
      {
        sub_1A84E63AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      if (*(&v41 + 1))
      {
        v19 = swift_dynamicCast();
        (*(v7 + 56))(v5, v19 ^ 1u, 1, v6);
        if ((*(v7 + 48))(v5, 1, v6) != 1)
        {
          (*(v7 + 32))(v13, v5, v6);
          sub_1A84E56AC();
          if (sub_1A84E56BC() == 1)
          {
            v20 = *(v7 + 8);
            v20(v11, v6);
            v20(v13, v6);
            v21 = objc_opt_self();
            if ([v21 isTimeSensitiveCustomModelAvailable])
            {
              v22 = [v21 areTransactionsPromotionsPriorityAvailable];
              v23 = [objc_opt_self() timeSensitivePriorityEnabled];
              v24 = 0;
            }

            else
            {
              v24 = [objc_opt_self() verificationCodesPriorityEnabled];
              if (v24)
              {
                if ([v1 valueForChatProperty_])
                {
                  sub_1A84E63AC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v40 = 0u;
                  v41 = 0u;
                }

                v42 = v40;
                v43 = v41;
                if (*(&v41 + 1))
                {
                  if ((swift_dynamicCast() & 1) != 0 && v39[15] == 1)
                  {
                    v26 = 0x617020646E756F66;
                    v27 = 0xEE0065646F637373;
                    v28 = 6;
                    return sub_1A8443984(v28, v26, v27, v1);
                  }
                }

                else
                {
                  sub_1A824B2D4(&v42, &qword_1EB2E66B0, &qword_1A8500960);
                }
              }

              v22 = [v21 areTransactionsPromotionsPriorityAvailable];
              v23 = 0;
            }

            v30 = objc_opt_self();
            v31 = [v30 personalPriorityEnabled];
            v32 = v31;
            if (v22)
            {
              v33 = [v30 transactionsPriorityEnabled];
              v34 = [v30 promotionsPriorityEnabled];
              v35 = v32 | v33 | v34;
              if ((v24 | v35))
              {
                v36 = v34;
                if ([v1 filterCategory] == 3 || objc_msgSend(v1, sel_filterCategory) == 4)
                {
                  if ((v36 & 1) != 0 && [v1 filterCategory] == 3)
                  {
                    v27 = 0x80000001A8531800;
                    v28 = 4;
LABEL_51:
                    v26 = 0xD00000000000001ALL;
                    return sub_1A8443984(v28, v26, v27, v1);
                  }

                  if (v35 & v33)
                  {
                    v27 = 0x80000001A85317E0;
                    v28 = 3;
                    goto LABEL_51;
                  }

                  if (v23)
                  {
                    v38 = "nd promotions enabled";
                    v26 = 0xD00000000000001ELL;
                    goto LABEL_47;
                  }

                  goto LABEL_54;
                }

                if (v32)
                {
                  v26 = 0xD000000000000035;
                  v27 = 0x80000001A8531780;
                  v28 = 2;
                  return sub_1A8443984(v28, v26, v27, v1);
                }

                goto LABEL_42;
              }
            }

            else
            {
              if (v31)
              {
                v37 = "back to timeSensitive";
                v26 = 0xD000000000000036;
                goto LABEL_44;
              }

              if (v24)
              {
LABEL_42:
                if (!v23)
                {
LABEL_54:
                  v25 = "time sensitivity enabled only";
                  v26 = 0xD000000000000017;
                  goto LABEL_19;
                }

                v37 = "fell through to default";
                v26 = 0xD000000000000035;
LABEL_44:
                v27 = v37 | 0x8000000000000000;
                v28 = 5;
                return sub_1A8443984(v28, v26, v27, v1);
              }
            }

            if (v23)
            {
              v38 = "all toggles disabled";
              v26 = 0xD00000000000001DLL;
LABEL_47:
              v27 = v38 | 0x8000000000000000;
              v28 = 1;
              return sub_1A8443984(v28, v26, v27, v1);
            }

            v25 = "expired priority date: ";
            v26 = 0xD000000000000014;
            goto LABEL_19;
          }

          *&v42 = 0;
          *(&v42 + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8531680);
          sub_1A84E561C();
          sub_1A84E60EC();
          MEMORY[0x1AC56A990](0x203A776F6E20, 0xE600000000000000);
          sub_1A84E561C();
          sub_1A84E60EC();
          v18 = sub_1A8443984(0, v42, *(&v42 + 1), v1);

          v29 = *(v7 + 8);
          v29(v11, v6);
          v29(v13, v6);
          return v18;
        }
      }

      else
      {
        sub_1A824B2D4(&v42, &qword_1EB2E66B0, &qword_1A8500960);
        (*(v7 + 56))(v5, 1, 1, v6);
      }

      sub_1A824B2D4(v5, &qword_1EB2E6F48, &unk_1A8501F00);
      v25 = "priorityMessaging disabled";
      v26 = 0xD000000000000027;
LABEL_19:
      v27 = v25 | 0x8000000000000000;
      v28 = 0;
      return sub_1A8443984(v28, v26, v27, v1);
    }

    strcpy(&v42, "isFiltered: ");
    BYTE13(v42) = 0;
    HIWORD(v42) = -5120;
    *&v40 = [v1 isFiltered];
    v17 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v17);

    v18 = sub_1A8443984(0, v42, *(&v42 + 1), v1);

    return v18;
  }

  return sub_1A8443984(0, 0xD00000000000001ALL, 0x80000001A8531630, v1);
}

id sub_1A8443984(id a1, uint64_t a2, unint64_t a3, id a4)
{
  v8 = [a4 cachedPriorityClassificationForLogging];
  if (v8 != a1)
  {
    v9 = v8;
    if (qword_1EB2E5A00 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF3C8);
    v11 = a4;

    v12 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v14 = 136315906;
      v15 = [v11 guid];
      v21 = a2;
      v16 = sub_1A84E5DBC();
      v18 = v17;

      v19 = sub_1A82446BC(v16, v18, &v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      *(v14 + 22) = 2048;
      *(v14 + 24) = a1;
      *(v14 + 32) = 2080;
      *(v14 + 34) = sub_1A82446BC(v21, a3, &v23);
      _os_log_impl(&dword_1A823F000, v12, v13, "chat: %s > changed priority classification from %ld to %ld for reason: %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v22, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    [v11 setCachedPriorityClassificationForLogging_];
  }

  return a1;
}

uint64_t IMChat.wasDetectedAsSMSCategory.getter()
{
  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v1 = 0;
    return v1 & 1;
  }

  if ([v0 valueForChatProperty_])
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
LABEL_12:
    sub_1A824B2D4(&v6, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v1 = (v3 > 0) | v3;
  return v1 & 1;
}

Swift::Bool __swiftcall IMChat.isKnownSender(withUnknownFilteringEnabled:)(Swift::Bool withUnknownFilteringEnabled)
{
  v2 = v1;
  v4 = [v2 isFiltered];
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isIntroductionsEnabled];

  if (v6)
  {
    if (v4)
    {
      if (![v2 hasKnownParticipantsCache])
      {
        if (v4 > 1 || [v2 wasDetectedAsSMSCategory])
        {
          sub_1A84E646C();
          v21 = [v2 guid];
          v22 = sub_1A84E5DBC();
          v24 = v23;

          MEMORY[0x1AC56A990](v22, v24);

          MEMORY[0x1AC56A990](0xD000000000000030, 0x80000001A8531540);
          v25 = sub_1A84E676C();
          MEMORY[0x1AC56A990](v25);

          sub_1A8444210(0, 0, 0xE000000000000000, v2);

          v13 = 0;
          goto LABEL_17;
        }

        if (withUnknownFilteringEnabled)
        {
          v13 = [v2 containsMessageFromContact];
          sub_1A84E646C();
          v27 = [v2 guid];
          v28 = sub_1A84E5DBC();
          v30 = v29;

          v40 = v28;
          v41 = v30;
          MEMORY[0x1AC56A990](0x7265766E6F63203ALL, 0xEF206E6F69746173);
          v31 = "o messages from a contact";
          v32 = "ge from contact or myself";
          v33 = v13 == 0;
          if (v13)
          {
            v34 = 0xD00000000000002FLL;
          }

          else
          {
            v34 = 0xD000000000000039;
          }
        }

        else
        {
          v13 = [v2 containsMessageFromContactOrMe];
          sub_1A84E646C();
          v35 = [v2 guid];
          v36 = sub_1A84E5DBC();
          v38 = v37;

          v40 = v36;
          v41 = v38;
          MEMORY[0x1AC56A990](0x7265766E6F63203ALL, 0xEF206E6F69746173);
          v31 = "a contact or myself";
          v32 = "B16@?0@NSString8";
          v33 = v13 == 0;
          if (v13)
          {
            v34 = 0xD000000000000039;
          }

          else
          {
            v34 = 0xD000000000000043;
          }
        }

        if (v33)
        {
          v39 = v32;
        }

        else
        {
          v39 = v31;
        }

        MEMORY[0x1AC56A990](v34, v39 | 0x8000000000000000);

        v18 = v40;
        v19 = v41;
        v20 = v13;
        goto LABEL_10;
      }

      sub_1A84E646C();
      v7 = [v2 guid];
      v8 = sub_1A84E5DBC();
      v10 = v9;

      MEMORY[0x1AC56A990](v8, v10);

      v11 = "use isFiltered: ";
      v12 = 0xD000000000000038;
    }

    else
    {
      sub_1A84E646C();
      v14 = [v2 guid];
      v15 = sub_1A84E5DBC();
      v17 = v16;

      MEMORY[0x1AC56A990](v15, v17);

      v11 = "asKnownParticipantsCache";
      v12 = 0xD000000000000036;
    }

    MEMORY[0x1AC56A990](v12, v11 | 0x8000000000000000);
    v18 = 0;
    v19 = 0xE000000000000000;
    v13 = 1;
    v20 = 1;
LABEL_10:
    sub_1A8444210(v20, v18, v19, v2);

    goto LABEL_17;
  }

  if (v4 && ([v2 hasKnownParticipantsCache] & 1) == 0)
  {
    v13 = 0;
    if ([v2 containsMessageFromContactOrMe] && v4 <= 1)
    {
      v13 = [v2 wasDetectedAsSMSCategory];
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_17:
  [v2 setCachedIsKnownSender_];
  return v13;
}

void sub_1A8444210(char a1, uint64_t a2, unint64_t a3, id a4)
{
  v8 = a1 & 1;
  v9 = [a4 cachedIsKnownSender];
  if (v9 != v8)
  {
    v10 = v9;
    if (qword_1EB2E5A08 != -1)
    {
      swift_once();
    }

    v11 = sub_1A84E5C9C();
    sub_1A824431C(v11, qword_1EB2FF3E0);
    v12 = a4;

    oslog = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315906;
      v16 = [v12 guid];
      v17 = sub_1A84E5DBC();
      v19 = v18;

      v20 = sub_1A82446BC(v17, v19, &v22);

      *(v14 + 4) = v20;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v10;
      *(v14 + 18) = 1024;
      *(v14 + 20) = a1 & 1;
      *(v14 + 24) = 2080;
      *(v14 + 26) = sub_1A82446BC(a2, a3, &v22);
      _os_log_impl(&dword_1A823F000, oslog, v13, "chat: %s > isKnownSender changed from %{BOOL}d to %{BOOL}d for reason: %s", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v15, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  LOBYTE(v24[0]) = *a5;

  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v25, a1, a2, a3, a4, v24, a6, a7, a8);
  if (v9)
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000028, 0x80000001A8531860);
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531890);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {

    v19 = v25[7];
    v20 = v25[8];
    a9[6] = v25[6];
    a9[7] = v19;
    a9[8] = v20;
    v21 = v25[3];
    a9[2] = v25[2];
    a9[3] = v21;
    v22 = v25[5];
    a9[4] = v25[4];
    a9[5] = v22;
    v23 = v25[1];
    *a9 = v25[0];
    a9[1] = v23;
  }

  return result;
}

uint64_t ImportExport.Message.init(id:conversationID:senderID:account:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int *a27, int *a28, uint64_t a29, uint64_t a30)
{
  v237 = a7;
  v250 = a8;
  v246 = a6;
  v247 = a2;
  v236 = a5;
  v214 = a9;
  v215 = a4;
  v210 = a3;
  v240 = a1;
  v241 = a18;
  v242 = a16;
  v243 = a14;
  v245 = a22;
  v30 = sub_1A84E5C9C();
  v208 = *(v30 - 8);
  v209 = v30;
  v31 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v207 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ImportExport.MessagePart();
  v235 = *(v251 - 1);
  v33 = *(v235 + 64);
  v34 = MEMORY[0x1EEE9AC00](v251);
  v249 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v248 = &v189 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v189 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v239 = (&v189 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v216 = &v189 - v43;
  v44 = sub_1A84E5B9C();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v244 = &v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = *a10;
  LODWORD(v47) = *a21;
  if (qword_1EB2E5948 != -1)
  {
LABEL_81:
    swift_once();
  }

  v217 = a12;
  LOBYTE(v278[0]) = v47;
  v48 = v238;
  sub_1A83FE48C(v237, v250, v278, v237, v250);
  if (v48)
  {
  }

  else
  {
    v205 = a24;
    v206 = a29;
    v203 = a28;
    v204 = a26;
    v52 = v49;
    v53 = v50;

    if (v246)
    {
      v54 = v236;
    }

    else
    {
      v54 = 0;
    }

    if (v246)
    {
      v55 = v246;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    v281 = v47;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v54, v55, 0, 0, &v281, a19, a20, 0, v278);
    v275 = v278[6];
    v276 = v278[7];
    v277 = v278[8];
    v271 = v278[2];
    v272 = v278[3];
    v274 = v278[5];
    v273 = v278[4];
    v270 = v278[1];
    v269 = v278[0];
    v280 = v47;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v52, v53, 0, 0, &v280, a19, a20, 0, v268);
    v197 = v47;
    v265 = v268[6];
    v266 = v268[7];
    v267 = v268[8];
    v261 = v268[2];
    v262 = v268[3];
    v263 = v268[4];
    v264 = v268[5];
    v259 = v268[0];
    v260 = v268[1];
    v195 = type metadata accessor for ImportExport.Message();
    v56 = *(v195 + 80);
    *&v252[0] = 0;
    sub_1A84E5B8C();
    v57 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v199 = v56;
    v212 = v57;
    sub_1A84E594C();
    if (v242)
    {
      v58 = HIBYTE(v242) & 0xF;
      if ((v242 & 0x2000000000000000) == 0)
      {
        v58 = a15 & 0xFFFFFFFFFFFFLL;
      }

      v59 = v234;
      if (v58)
      {
        v59 = v234 | 4;
      }

      v60 = v243;
      v61 = v241;
    }

    else
    {
      v60 = v243;
      v61 = v241;
      v59 = v234;
    }

    v193 = a13;
    if (v60)
    {
      v62 = HIBYTE(v60) & 0xF;
      if ((v60 & 0x2000000000000000) == 0)
      {
        v62 = a13 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v59 |= 8uLL;
      }
    }

    v196 = a19;
    v194 = a15;
    v192 = a17;
    if (v61)
    {
      v63 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v63 = a17 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {
        v59 |= 0x10uLL;
      }
    }

    v198 = a20;
    if ((~v59 & 0x8002) != 0)
    {
      v64 = v59 | 0x8002;
    }

    else
    {
      v64 = v59;
    }

    v65 = v245;
    sub_1A8423270(v245, v252);
    v66 = *&v252[0];
    if ((*&v252[0] & ~v64) == 0)
    {
      v66 = 0;
    }

    v190 = v66;
    v191 = v64;
    v67 = *(v65 + 16);
    v68 = MEMORY[0x1E69E7CC0];
    v213 = 0;
    if (v67)
    {
      *&v252[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v67, 0);
      v68 = *&v252[0];
      v69 = v65 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
      v246 = *(v235 + 72);
      do
      {
        v70 = v249;
        sub_1A844F228(v69, v249, type metadata accessor for ImportExport.MessagePart);
        v71 = (v70 + v251[19]);
        v72 = v71[1];
        v250 = *v71;

        sub_1A844F290(v70, type metadata accessor for ImportExport.MessagePart);
        *&v252[0] = v68;
        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1A83EF534((v73 > 1), v74 + 1, 1);
          v68 = *&v252[0];
        }

        *(v68 + 16) = v74 + 1;
        v75 = v68 + 16 * v74;
        *(v75 + 32) = v250;
        *(v75 + 40) = v72;
        v69 += v246;
        --v67;
      }

      while (v67);
    }

    *&v252[0] = v68;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v201 = sub_1A84E5D6C();
    v202 = v76;

    v77 = *(v245 + 16);
    if (v77)
    {
      v78 = 0;
      v47 = 0;
      v211 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v79 = MEMORY[0x1E69E7CC0];
      v246 = *(v235 + 72);
      v189 = v245 + v211;
      result = v245 + v211;
      v200 = v77;
      v80 = v77;
      v81 = v251;
      v82 = v239;
      do
      {
        v218 = result;
        v219 = v80;
        sub_1A844F228(result, v82, type metadata accessor for ImportExport.MessagePart);
        v83 = v82[6];
        v238 = v79;
        if (v83)
        {
          v84 = v82[5];
          v249 = v83;
          v250 = v84;
        }

        else
        {
          v85 = (v82 + v81[19]);
          v86 = *v85;
          v87 = v85[1];
          v249 = sub_1A84E5E7C();
          v250 = v47;
        }

        v88 = v82[7];
        if (v88 < 0)
        {
          v88 = v78;
        }

        v237 = v88;
        v227 = *v82;
        v89 = v82;
        v90 = v82[1];
        v91 = (v89 + v81[19]);
        v92 = v91[1];
        v229 = *v91;
        v220 = v92;
        v225 = *(v89 + 16);
        v231 = v89[12];
        v93 = *(v89 + 21);
        v94 = *(v89 + 15);
        v95 = *(v89 + 17);
        v257 = *(v89 + 19);
        v258 = v93;
        v255 = v94;
        v256 = v95;
        v254 = *(v89 + 13);
        v96 = v81[13];
        v97 = (v89 + v81[12]);
        v98 = *v97;
        v223 = v97[1];
        v99 = *(v89 + v96 + 8);
        v236 = *(v89 + v96);
        v234 = v98;
        v235 = v99;
        v100 = (v89 + v81[14]);
        v101 = *v100;
        v102 = v100[1];
        v103 = (v89 + v81[15]);
        v104 = *v103;
        v105 = v103[1];
        v232 = v101;
        v233 = v104;
        v226 = v105;
        v106 = v81[21];
        v107 = *(v89 + 5);
        v221 = *(v89 + 4);
        v222 = v107;

        sub_1A8243D74(&v254, v252, &qword_1EB2E6F58, &qword_1A8501388);

        v108 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        sub_1A84E595C();
        v224 = *&v252[0];
        v109 = v81[17];
        v228 = *(v89 + v81[16]);
        v279 = *(v89 + v109);
        v230 = *(v89 + v81[18]);
        v110 = *(v89 + v81[20]);
        sub_1A8243D74(v89 + v81[11], &v40[v81[11]], &qword_1EB2E6F50, &unk_1A8502920);
        *(v40 + 6) = 0u;
        *(v40 + 7) = 0u;
        *(v40 + 8) = 0u;
        *(v40 + 9) = 0u;
        *(v40 + 10) = 0u;
        *(v40 + 22) = 0;
        *(v40 + 4) = 0u;
        *(v40 + 5) = 0u;
        v111 = v251[21];
        *&v252[0] = 0;

        sub_1A84E5B8C();
        sub_1A84E594C();
        v40[16] = v225;
        *v40 = v227;
        *(v40 + 1) = v90;
        v112 = v249;
        *(v40 + 5) = v250;
        *(v40 + 6) = v112;
        v113 = &v40[v251[19]];
        v114 = v220;
        *v113 = v229;
        *(v113 + 1) = v114;
        v115 = *(v40 + 9);

        v116 = v222;
        *(v40 + 4) = v221;
        *(v40 + 5) = v116;
        *(v40 + 12) = v231;
        v117 = *(v40 + 120);
        v118 = *(v40 + 152);
        v252[2] = *(v40 + 136);
        v252[3] = v118;
        v252[4] = *(v40 + 168);
        v252[0] = *(v40 + 104);
        v252[1] = v117;
        sub_1A824B2D4(v252, &qword_1EB2E6F58, &qword_1A8501388);
        v119 = v254;
        *(v40 + 120) = v255;
        v120 = v257;
        *(v40 + 136) = v256;
        *(v40 + 152) = v120;
        *(v40 + 168) = v258;
        *(v40 + 104) = v119;
        v121 = &v40[v251[12]];
        v122 = v235;
        v123 = v223;
        *v121 = v234;
        *(v121 + 1) = v123;
        v124 = &v40[v251[13]];
        v125 = v236;
        *v124 = v236;
        *(v124 + 1) = v122;
        v126 = &v40[v251[14]];
        v127 = v233;
        *v126 = v232;
        *(v126 + 1) = v102;
        v128 = &v40[v251[15]];
        v129 = v226;
        *v128 = v127;
        *(v128 + 1) = v129;
        sub_1A83F5918(v125, v122);
        (*(*(v108 - 8) + 8))(&v40[v111], v108);
        v253 = v224;
        sub_1A84E5B8C();
        v81 = v251;
        v130 = v237;
        sub_1A84E594C();
        v40[v81[16]] = v228;
        v40[v81[17]] = v279;
        v40[v81[18]] = v230;
        *&v40[v81[20]] = v110;
        v132 = v247;
        v131 = v248;
        *(v40 + 3) = v240;
        *(v40 + 4) = v132;
        *(v40 + 7) = v130;
        sub_1A844F228(v40, v131, type metadata accessor for ImportExport.MessagePart);

        v79 = v238;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1A83EF140(0, v79[2] + 1, 1, v79);
        }

        v134 = v79[2];
        v133 = v79[3];
        v135 = v216;
        v47 = v250;
        if (v134 >= v133 >> 1)
        {
          v79 = sub_1A83EF140(v133 > 1, v134 + 1, 1, v79);
        }

        v79[2] = v134 + 1;
        sub_1A844F2F0(v248, v79 + v211 + v134 * v246, type metadata accessor for ImportExport.MessagePart);
        sub_1A844F290(v40, type metadata accessor for ImportExport.MessagePart);
        v78 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v136 = v47 + v249;
        if (__OFADD__(v47, v249))
        {
          goto LABEL_79;
        }

        v47 = v136 + 1;
        v137 = v219;
        if (__OFADD__(v136, 1))
        {
          goto LABEL_80;
        }

        v82 = v239;
        sub_1A844F290(v239, type metadata accessor for ImportExport.MessagePart);
        result = v218 + v246;
        v80 = v137 - 1;
      }

      while (v80);
      v138 = 0;
      *&v254 = -1;
      v139 = v245;
      v140 = v189;
      while (1)
      {
        if (v138 >= *(v139 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1A844F228(v140, v135, type metadata accessor for ImportExport.MessagePart);
        v141 = v213;
        sub_1A842343C(v135, &v254);
        v213 = v141;
        if (v141)
        {
          break;
        }

        ++v138;
        result = sub_1A844F290(v135, type metadata accessor for ImportExport.MessagePart);
        v140 += v246;
        if (v200 == v138)
        {
          v142 = v79;
          goto LABEL_58;
        }
      }

      sub_1A844F290(v135, type metadata accessor for ImportExport.MessagePart);

      sub_1A8400ED8(&v259);
      sub_1A8400ED8(&v269);

      v174 = v207;
      sub_1A84E5C8C();
      v175 = v213;
      v176 = v213;
      v177 = sub_1A84E5C7C();
      v178 = sub_1A84E619C();

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        *v179 = 138412290;
        v181 = v175;
        v182 = _swift_stdlib_bridgeErrorToNSError();
        *(v179 + 4) = v182;
        *v180 = v182;
        _os_log_impl(&dword_1A823F000, v177, v178, "Failed to create a message with Error: %@", v179, 0xCu);
        sub_1A824B2D4(v180, &unk_1EB2E9070, &unk_1A8501A90);
        MEMORY[0x1AC56D3F0](v180, -1, -1);
        MEMORY[0x1AC56D3F0](v179, -1, -1);
      }

      (*(v208 + 8))(v174, v209);
      swift_willThrow();
      v183 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      return (*(*(v183 - 8) + 8))(&v214[v199], v183);
    }

    else
    {
      v142 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v251 = a27;
      v143 = v190 | v191;

      v144 = v214;
      v145 = v247;
      *v214 = v240;
      v144[1] = v145;
      v146 = v202;
      v144[14] = v201;
      v144[15] = v146;
      v144[2] = a30;
      v147 = v215;
      v144[4] = v210;
      v144[5] = v147;
      v148 = v195;
      v149 = (v144 + *(v195 + 92));
      v150 = v272;
      v149[2] = v271;
      v149[3] = v150;
      v151 = v277;
      v152 = v275;
      v149[7] = v276;
      v149[8] = v151;
      v153 = v274;
      v149[4] = v273;
      v149[5] = v153;
      v149[6] = v152;
      v154 = v270;
      *v149 = v269;
      v149[1] = v154;
      v155 = (v144 + v148[24]);
      v156 = v266;
      v155[6] = v265;
      v155[7] = v156;
      v155[8] = v267;
      v157 = v262;
      v155[2] = v261;
      v155[3] = v157;
      v158 = v264;
      v155[4] = v263;
      v155[5] = v158;
      v159 = v260;
      *v155 = v259;
      v155[1] = v159;
      v160 = v205;
      v144[10] = a23;
      v144[11] = v160;
      v161 = v217;
      v144[12] = a11;
      v144[13] = v161;
      v162 = v243;
      v144[16] = v193;
      v144[17] = v162;
      v163 = v242;
      v144[18] = v194;
      v144[19] = v163;
      v164 = v241;
      v144[20] = v192;
      v144[21] = v164;
      v165 = v198;
      v144[22] = v196;
      v144[23] = v165;
      v166 = v197;
      *(v144 + 208) = v197;
      v144[27] = v142;
      sub_1A8400E7C(&v269, v252);
      sub_1A8400E7C(&v259, v252);
      v167 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      (*(*(v167 - 8) + 8))(v144 + v199, v167);
      *&v252[0] = v206;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v168 = (v144 + v148[21]);
      v169 = v204;
      *v168 = a25;
      v168[1] = v169;
      v170 = (v144 + v148[22]);
      v171 = v203;
      *v170 = v251;
      v170[1] = v171;
      v144[3] = v143;
      if (v166 > 3)
      {
        if (v166 > 5)
        {
          if (v166 == 6)
          {
            v172 = 0xE300000000000000;
            v173 = 5456722;
          }

          else
          {
            v172 = 0xEC000000534D5365;
            v173 = 0x74696C6C65746153;
          }
        }

        else if (v166 == 4)
        {
          v173 = 5459283;
          v172 = 0xE300000000000000;
        }

        else
        {
          v172 = 0xE800000000000000;
          v173 = 0x656D695465636146;
        }
      }

      else if (v166 > 1)
      {
        if (v166 == 2)
        {
          v172 = 0xE800000000000000;
        }

        else
        {
          v172 = 0xEC0000006574694CLL;
        }

        v173 = 0x6567617373654D69;
      }

      else if (v166)
      {
        v172 = 0xE300000000000000;
        v173 = 7958113;
      }

      else
      {
        v172 = 0xE700000000000000;
        v173 = 0x6E776F6E6B6E75;
      }

      v184 = v214;
      *(v214 + 24) = v173;
      *(v184 + 25) = v172;
      v185 = *(&v271 + 1);
      v186 = v272;

      sub_1A8400ED8(&v269);
      *(v184 + 6) = v185;
      *(v184 + 7) = v186;
      v187 = *(&v261 + 1);
      v188 = v262;

      result = sub_1A8400ED8(&v259);
      *(v184 + 8) = v187;
      *(v184 + 9) = v188;
    }
  }

  return result;
}

uint64_t ImportExport.Message.init(id:conversationID:senderID:account:messageState:subject:receivedDate:deliveredDate:readDate:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(char *, uint64_t, uint64_t), char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int *a24, int *a25, uint64_t a26, uint64_t a27)
{
  v293 = a6;
  v297 = a8;
  v298 = a7;
  v288 = a5;
  v269 = a9;
  v270 = a4;
  v263 = a3;
  v314 = a2;
  v296 = a1;
  v307 = a15;
  v308 = a14;
  v305 = a18;
  v300 = a10;
  v27 = sub_1A84E5C9C();
  v260 = *(v27 - 8);
  v261 = v27;
  v28 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v262 = &v245 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for ImportExport.MessagePart();
  v287 = *(v344 - 1);
  v30 = *(v287 + 64);
  v31 = MEMORY[0x1EEE9AC00](v344);
  v301 = &v245 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v310 = &v245 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v309 = &v245 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v295 = &v245 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v271 = &v245 - v39;
  v40 = sub_1A84E5B9C();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v303 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_1A84E577C();
  v312 = *(v313 - 1);
  v43 = *(v312 + 64);
  MEMORY[0x1EEE9AC00](v313);
  v311 = &v245 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v291 = &v245 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v245 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v245 - v52;
  v54 = sub_1A84E56DC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x1EEE9AC00](v54);
  v306 = &v245 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v304 = &v245 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v245 - v61;
  v286 = *v300;
  v294 = *v305;
  v302 = a13;
  sub_1A8243D74(a13, v53, &qword_1EB2E6F48, &unk_1A8501F00);
  v63 = *(v55 + 48);
  v64 = v63(v53, 1, v54);
  v305 = v63;
  v289 = v54;
  v290 = v55;
  if (v64 == 1)
  {
    sub_1A824B2D4(v53, &qword_1EB2E6F48, &unk_1A8501F00);
    v267 = 0;
    v300 = 0;
  }

  else
  {
    (*(v55 + 32))(v62, v53, v54);
    v299 = objc_opt_self();
    v300 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
LABEL_102:
      swift_once();
    }

    v65 = v313;
    v66 = sub_1A824431C(v313, qword_1EB2E7FC8);
    swift_beginAccess();
    v67 = v312;
    v68 = v311;
    (*(v312 + 16))(v311, v66, v65);
    v69 = sub_1A84E576C();
    (*(v67 + 8))(v68, v65);
    v70 = v300;
    v71 = [v299 stringFromDate:v300 timeZone:v69 formatOptions:1907];

    v267 = sub_1A84E5DBC();
    v300 = v72;

    v54 = v289;
    v55 = v290;
    (*(v290 + 8))(v62, v289);
    v63 = v305;
  }

  sub_1A8243D74(v308, v51, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v63(v51, 1, v54) == 1)
  {
    sub_1A824B2D4(v51, &qword_1EB2E6F48, &unk_1A8501F00);
    v266 = 0;
    v299 = 0;
    v73 = v298;
  }

  else
  {
    (*(v55 + 32))(v304, v51, v54);
    v74 = objc_opt_self();
    v75 = sub_1A84E565C();
    v76 = v54;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v77 = v313;
    v78 = sub_1A824431C(v313, qword_1EB2E7FC8);
    swift_beginAccess();
    v79 = v312;
    v80 = v311;
    (*(v312 + 16))(v311, v78, v77);
    v81 = sub_1A84E576C();
    (*(v79 + 8))(v80, v77);
    v82 = [v74 stringFromDate:v75 timeZone:v81 formatOptions:1907];

    v266 = sub_1A84E5DBC();
    v299 = v83;

    v55 = v290;
    (*(v290 + 8))(v304, v76);
    v73 = v298;
    v54 = v76;
  }

  v84 = v306;
  v85 = v291;
  sub_1A8243D74(v307, v291, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v305(v85, 1, v54) == 1)
  {
    sub_1A824B2D4(v85, &qword_1EB2E6F48, &unk_1A8501F00);
    v265 = 0;
    v298 = 0;
  }

  else
  {
    (*(v55 + 32))(v84, v85, v54);
    v86 = objc_opt_self();
    v87 = sub_1A84E565C();
    v88 = v55;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v89 = v313;
    v90 = sub_1A824431C(v313, qword_1EB2E7FC8);
    swift_beginAccess();
    v91 = v312;
    v92 = v311;
    (*(v312 + 16))(v311, v90, v89);
    v93 = sub_1A84E576C();
    (*(v91 + 8))(v92, v89);
    v94 = [v86 stringFromDate:v87 timeZone:v93 formatOptions:1907];

    v265 = sub_1A84E5DBC();
    v298 = v95;

    (*(v88 + 8))(v306, v289);
  }

  v306 = a19;
  LOBYTE(v96) = v294;
  v97 = v297;
  if (qword_1EB2E5948 != -1)
  {
LABEL_100:
    swift_once();
    v97 = v297;
  }

  v297 = a21;
  LOBYTE(v343[0]) = v96;
  v98 = v292;
  sub_1A83FE48C(v73, v97, v343, v73, v97);
  v313 = v98;
  if (v98)
  {

    sub_1A824B2D4(v307, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v308, &qword_1EB2E6F48, &unk_1A8501F00);
    return sub_1A824B2D4(v302, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v257 = a26;
  v258 = a12;
  v256 = a25;
  v259 = a23;
  v102 = v99;
  v103 = v100;

  if (v293)
  {
    v104 = v288;
  }

  else
  {
    v104 = 0;
  }

  if (v293)
  {
    v105 = v293;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  v342 = v96;

  v106 = v104;
  v107 = v313;
  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v106, v105, 0, 0, &v342, a16, a17, 0, v343);
  if (v107)
  {

    sub_1A824B2D4(v307, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v308, &qword_1EB2E6F48, &unk_1A8501F00);
    return sub_1A824B2D4(v302, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v339 = v343[6];
  v340 = v343[7];
  v341 = v343[8];
  v335 = v343[2];
  v336 = v343[3];
  v337 = v343[4];
  v338 = v343[5];
  v333 = v343[0];
  v334 = v343[1];
  v331 = v96;

  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v102, v103, 0, 0, &v331, a16, a17, 0, v332);
  v108 = v302;
  v251 = a17;
  v328 = v332[6];
  v329 = v332[7];
  v330 = v332[8];
  v324 = v332[2];
  v325 = v332[3];
  v326 = v332[4];
  v327 = v332[5];
  v322 = v332[0];
  v323 = v332[1];
  v249 = type metadata accessor for ImportExport.Message();
  v109 = *(v249 + 80);
  *&v315[0] = 0;
  sub_1A84E5B8C();
  v110 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v252 = v109;
  v268 = v110;
  sub_1A84E594C();
  if (!v299)
  {
    v113 = v300;
    v114 = v306;
    v115 = v108;
    v112 = v286;
    if (!v300)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v111 = HIBYTE(v299) & 0xF;
  if ((v299 & 0x2000000000000000) == 0)
  {
    v111 = v266 & 0xFFFFFFFFFFFFLL;
  }

  v112 = v286;
  if (v111)
  {
    v112 = v286 | 4;
  }

  v113 = v300;
  v114 = v306;
  v115 = v108;
  if (v300)
  {
LABEL_32:
    v116 = (v113 >> 56) & 0xF;
    if ((v113 & 0x2000000000000000) == 0)
    {
      v116 = v267 & 0xFFFFFFFFFFFFLL;
    }

    if (v116)
    {
      v112 |= 8uLL;
    }
  }

LABEL_36:
  v250 = a16;
  if (v298)
  {
    v117 = HIBYTE(v298) & 0xF;
    if ((v298 & 0x2000000000000000) == 0)
    {
      v117 = v265 & 0xFFFFFFFFFFFFLL;
    }

    if (v117)
    {
      v112 |= 0x10uLL;
    }
  }

  if ((~v112 & 0x8002) != 0)
  {
    v118 = v112 | 0x8002;
  }

  else
  {
    v118 = v112;
  }

  sub_1A8423270(v114, v315);
  v119 = *&v315[0];
  if ((*&v315[0] & ~v118) == 0)
  {
    v119 = 0;
  }

  v247 = v119;
  v248 = v118;
  v120 = *(v114 + 16);
  v121 = MEMORY[0x1E69E7CC0];
  v313 = 0;
  if (v120)
  {
    *&v315[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v120, 0);
    v121 = *&v315[0];
    v122 = v114 + ((*(v287 + 80) + 32) & ~*(v287 + 80));
    v312 = *(v287 + 72);
    do
    {
      v123 = v301;
      sub_1A844F228(v122, v301, type metadata accessor for ImportExport.MessagePart);
      v124 = (v123 + v344[19]);
      v126 = *v124;
      v125 = v124[1];

      sub_1A844F290(v123, type metadata accessor for ImportExport.MessagePart);
      *&v315[0] = v121;
      v128 = *(v121 + 16);
      v127 = *(v121 + 24);
      if (v128 >= v127 >> 1)
      {
        sub_1A83EF534((v127 > 1), v128 + 1, 1);
        v121 = *&v315[0];
      }

      *(v121 + 16) = v128 + 1;
      v129 = v121 + 16 * v128;
      *(v129 + 32) = v126;
      *(v129 + 40) = v125;
      v122 += v312;
      --v120;
    }

    while (v120);
    v130 = v302;
  }

  else
  {
    v130 = v115;
  }

  *&v315[0] = v121;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v254 = sub_1A84E5D6C();
  v255 = v131;

  v132 = *(v306 + 2);
  if (v132)
  {
    v301 = 0;
    v133 = 0;
    v264 = (*(v287 + 80) + 32) & ~*(v287 + 80);
    v134 = *(v287 + 72);
    v304 = MEMORY[0x1E69E7CC0];
    v305 = v134;
    v246 = &v306[v264];
    v135 = &v306[v264];
    v253 = v132;
    v136 = v132;
    v137 = v344;
    v138 = v295;
    do
    {
      v272 = v135;
      v273 = v136;
      sub_1A844F228(v135, v138, type metadata accessor for ImportExport.MessagePart);
      v139 = *(v138 + 48);
      if (v139)
      {
        v312 = *(v138 + 40);
        v311 = v139;
      }

      else
      {
        v140 = (v138 + v137[19]);
        v141 = *v140;
        v142 = v140[1];
        v311 = sub_1A84E5E7C();
        v312 = v133;
      }

      if (*(v138 + 56) >= 0)
      {
        v143 = *(v138 + 56);
      }

      else
      {
        v143 = v301;
      }

      v144 = *(v138 + 8);
      v283 = *v138;
      v145 = v138;
      v146 = (v138 + v137[19]);
      v147 = v146[1];
      v285 = *v146;
      v274 = v147;
      v281 = *(v138 + 16);
      v288 = *(v138 + 96);
      v289 = v143;
      v148 = *(v138 + 168);
      v149 = *(v138 + 120);
      v150 = *(v138 + 136);
      v320 = *(v138 + 152);
      v321 = v148;
      v318 = v149;
      v319 = v150;
      v317 = *(v138 + 104);
      v151 = (v138 + v137[12]);
      v152 = *v151;
      v153 = v151[1];
      v154 = (v138 + v137[13]);
      v156 = *v154;
      v155 = v154[1];
      v301 = v156;
      v292 = v152;
      v293 = v155;
      v157 = v137[15];
      v158 = (v138 + v137[14]);
      v159 = *v158;
      v160 = v158[1];
      v278 = v153;
      v279 = v160;
      v161 = v138 + v157;
      v162 = *(v138 + v157);
      v163 = *(v161 + 8);
      v290 = v159;
      v291 = v162;
      v282 = v163;
      v164 = v137[21];
      v165 = *(v145 + 80);
      v275 = *(v145 + 64);
      v276 = v165;

      sub_1A8243D74(&v317, v315, &qword_1EB2E6F58, &qword_1A8501388);

      v166 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v280 = *&v315[0];
      v167 = v344[17];
      v284 = *(v145 + v344[16]);
      LODWORD(v287) = *(v145 + v167);
      LODWORD(v286) = *(v145 + v344[18]);
      v277 = *(v145 + v344[20]);
      v168 = v344[11];
      v169 = v145 + v168;
      v170 = v309;
      sub_1A8243D74(v169, v309 + v168, &qword_1EB2E6F50, &unk_1A8502920);
      *(v170 + 96) = 0u;
      *(v170 + 112) = 0u;
      *(v170 + 128) = 0u;
      *(v170 + 144) = 0u;
      *(v170 + 160) = 0u;
      *(v170 + 176) = 0;
      *(v170 + 64) = 0u;
      *(v170 + 80) = 0u;
      v171 = v344[21];
      *&v315[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v170 + 16) = v281;
      *v170 = v283;
      *(v170 + 8) = v144;
      v172 = v311;
      *(v170 + 40) = v312;
      *(v170 + 48) = v172;
      v173 = (v170 + v344[19]);
      v174 = v274;
      *v173 = v285;
      v173[1] = v174;
      v175 = v289;
      v176 = *(v170 + 72);

      v177 = v276;
      *(v170 + 64) = v275;
      *(v170 + 80) = v177;
      *(v170 + 96) = v288;
      v178 = *(v170 + 120);
      v179 = *(v170 + 152);
      v315[2] = *(v170 + 136);
      v315[3] = v179;
      v315[4] = *(v170 + 168);
      v315[0] = *(v170 + 104);
      v315[1] = v178;
      sub_1A824B2D4(v315, &qword_1EB2E6F58, &qword_1A8501388);
      v180 = v317;
      *(v170 + 120) = v318;
      v181 = v320;
      *(v170 + 136) = v319;
      *(v170 + 152) = v181;
      *(v170 + 168) = v321;
      *(v170 + 104) = v180;
      v182 = (v170 + v344[12]);
      v183 = v293;
      v184 = v278;
      *v182 = v292;
      v182[1] = v184;
      v185 = (v170 + v344[13]);
      v186 = v301;
      *v185 = v301;
      v185[1] = v183;
      v187 = (v170 + v344[14]);
      v188 = v279;
      *v187 = v290;
      v187[1] = v188;
      v189 = (v170 + v344[15]);
      v190 = v282;
      *v189 = v291;
      v189[1] = v190;
      sub_1A83F5918(v186, v183);
      v191 = *(*(v166 - 8) + 8);
      v192 = v166;
      v137 = v344;
      v191(v170 + v171, v192);
      v316 = v280;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v170 + v137[16]) = v284;
      *(v170 + v137[17]) = v287;
      *(v170 + v137[18]) = v286;
      *(v170 + v137[20]) = v277;
      v193 = v314;
      *(v170 + 24) = v296;
      *(v170 + 32) = v193;
      *(v170 + 56) = v175;
      sub_1A844F228(v170, v310, type metadata accessor for ImportExport.MessagePart);

      v73 = v304;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1A83EF140(0, *(v73 + 2) + 1, 1, v73);
      }

      v195 = *(v73 + 2);
      v194 = *(v73 + 3);
      v51 = v313;
      v96 = v271;
      if (v195 >= v194 >> 1)
      {
        v73 = sub_1A83EF140(v194 > 1, v195 + 1, 1, v73);
      }

      *(v73 + 2) = v195 + 1;
      sub_1A844F2F0(v310, &v73[v264 + v195 * v305], type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v309, type metadata accessor for ImportExport.MessagePart);
      if (__OFADD__(v175, 1))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v196 = &v311[v312];
      if (__OFADD__(v312, v311))
      {
        goto LABEL_98;
      }

      v133 = v196 + 1;
      v197 = v273;
      if (__OFADD__(v196, 1))
      {
        goto LABEL_99;
      }

      v301 = v175 + 1;
      v304 = v73;
      v138 = v295;
      sub_1A844F290(v295, type metadata accessor for ImportExport.MessagePart);
      v135 = v305 + v272;
      v136 = v197 - 1;
      v62 = v314;
    }

    while (v136);
    v198 = 0;
    *&v317 = -1;
    v199 = v246;
    v200 = v304;
    while (1)
    {
      if (v198 >= *(v306 + 2))
      {
        __break(1u);
        goto LABEL_102;
      }

      sub_1A844F228(v199, v96, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v96, &v317);
      if (v51)
      {
        break;
      }

      ++v198;
      sub_1A844F290(v96, type metadata accessor for ImportExport.MessagePart);
      v199 += v305;
      if (v253 == v198)
      {
        v313 = 0;
        v201 = v200;
        v202 = v302;
        goto LABEL_77;
      }
    }

    sub_1A844F290(v96, type metadata accessor for ImportExport.MessagePart);

    sub_1A8400ED8(&v322);
    sub_1A8400ED8(&v333);

    sub_1A84E5C8C();
    v232 = v51;
    v233 = sub_1A84E5C7C();
    v234 = sub_1A84E619C();

    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      *v235 = 138412290;
      v237 = v51;
      v238 = _swift_stdlib_bridgeErrorToNSError();
      *(v235 + 4) = v238;
      *v236 = v238;
      _os_log_impl(&dword_1A823F000, v233, v234, "Failed to create a message with Error: %@", v235, 0xCu);
      sub_1A824B2D4(v236, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v236, -1, -1);
      MEMORY[0x1AC56D3F0](v235, -1, -1);
    }

    (*(v260 + 8))(v262, v261);
    swift_willThrow();
    sub_1A824B2D4(v307, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v308, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v302, &qword_1EB2E6F48, &unk_1A8501F00);
    v239 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    return (*(*(v239 - 8) + 8))(&v269[v252], v239);
  }

  else
  {
    v201 = MEMORY[0x1E69E7CC0];
    v202 = v130;
LABEL_77:
    v344 = a24;
    v312 = v247 | v248;

    v203 = v269;
    v204 = v314;
    *v269 = v296;
    v203[1] = v204;
    v205 = v255;
    v203[14] = v254;
    v203[15] = v205;
    v203[2] = a27;
    v206 = v270;
    v203[4] = v263;
    v203[5] = v206;
    v207 = v249;
    v208 = (v203 + *(v249 + 92));
    v209 = v336;
    v208[2] = v335;
    v208[3] = v209;
    v210 = v341;
    v208[7] = v340;
    v208[8] = v210;
    v211 = v339;
    v208[5] = v338;
    v208[6] = v211;
    v208[4] = v337;
    v212 = v334;
    *v208 = v333;
    v208[1] = v212;
    v213 = (v203 + v207[24]);
    v214 = v329;
    v213[6] = v328;
    v213[7] = v214;
    v213[8] = v330;
    v215 = v325;
    v213[2] = v324;
    v213[3] = v215;
    v216 = v327;
    v213[4] = v326;
    v213[5] = v216;
    v217 = v323;
    *v213 = v322;
    v213[1] = v217;
    v218 = v297;
    v203[10] = a20;
    v203[11] = v218;
    v219 = v258;
    v203[12] = a11;
    v203[13] = v219;
    v220 = v300;
    v203[16] = v267;
    v203[17] = v220;
    v221 = v299;
    v203[18] = v266;
    v203[19] = v221;
    v222 = v298;
    v203[20] = v265;
    v203[21] = v222;
    v223 = v251;
    v203[22] = v250;
    v203[23] = v223;
    v224 = v294;
    *(v203 + 208) = v294;
    v203[27] = v201;
    sub_1A8400E7C(&v333, v315);
    sub_1A8400E7C(&v322, v315);
    v225 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    (*(*(v225 - 8) + 8))(v203 + v252, v225);
    *&v315[0] = v257;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v226 = (v203 + v207[21]);
    v227 = v259;
    *v226 = a22;
    v226[1] = v227;
    v228 = (v203 + v207[22]);
    v229 = v256;
    *v228 = v344;
    v228[1] = v229;
    v203[3] = v312;
    if (v224 > 3)
    {
      if (v224 > 5)
      {
        if (v224 == 6)
        {
          v230 = 0xE300000000000000;
          v231 = 5456722;
        }

        else
        {
          v230 = 0xEC000000534D5365;
          v231 = 0x74696C6C65746153;
        }
      }

      else if (v224 == 4)
      {
        v231 = 5459283;
        v230 = 0xE300000000000000;
      }

      else
      {
        v230 = 0xE800000000000000;
        v231 = 0x656D695465636146;
      }
    }

    else if (v224 > 1)
    {
      if (v224 == 2)
      {
        v230 = 0xE800000000000000;
      }

      else
      {
        v230 = 0xEC0000006574694CLL;
      }

      v231 = 0x6567617373654D69;
    }

    else if (v224)
    {
      v230 = 0xE300000000000000;
      v231 = 7958113;
    }

    else
    {
      v230 = 0xE700000000000000;
      v231 = 0x6E776F6E6B6E75;
    }

    sub_1A824B2D4(v307, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v308, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v202, &qword_1EB2E6F48, &unk_1A8501F00);
    v240 = v269;
    *(v269 + 24) = v231;
    *(v240 + 25) = v230;
    v241 = *(&v335 + 1);
    v242 = v336;

    sub_1A8400ED8(&v333);
    *(v240 + 6) = v241;
    *(v240 + 7) = v242;
    v243 = *(&v324 + 1);
    v244 = v325;

    result = sub_1A8400ED8(&v322);
    *(v240 + 8) = v243;
    *(v240 + 9) = v244;
  }

  return result;
}

uint64_t ImportExport.Message.init(id:sequenceID:conversationID:senderID:account:destinationCallerID:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:fallbackHash:rcsMessageID:messageSummaryInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, int *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29, int *a30, uint64_t a31)
{
  v211 = a7;
  v249 = a6;
  v205 = a5;
  v199 = a3;
  v200 = a4;
  v224 = a1;
  v225 = a2;
  v216 = a9;
  v215 = a26;
  v212 = a21;
  v213 = a19;
  v214 = a17;
  v33 = sub_1A84E5C9C();
  v186 = *(v33 - 8);
  v187 = v33;
  v34 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v185 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for ImportExport.MessagePart();
  v36 = *(v251 - 1);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v251);
  v250 = &v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v248 = &v184 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v184 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v221 = &v184 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v189 = &v184 - v47;
  v48 = sub_1A84E5B9C();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v226 = &v184 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a13;
  LOBYTE(v280[0]) = 0;

  v198 = a25;
  ImportExport.ServiceType.init(for:default:)(a25, v280, v281);
  LODWORD(v52) = v281[0];
  if (qword_1EB2E5948 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v204 = a31;
    v206 = a30;
    v207 = a28;
    v208 = a15;
    v203 = a12;
    LOBYTE(v280[0]) = v52;
    sub_1A83FE48C(a8, a10, v280, a8, a10);
    v246 = v53;
    v247 = v54;
    v209 = a10;

    if (v211)
    {
      v55 = v249;
    }

    else
    {
      v55 = 0;
    }

    if (v211)
    {
      v56 = v211;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v279 = v52;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v55, v56, 0, 0, &v279, a22, a23, 0, v280);
    v276 = v280[6];
    v277 = v280[7];
    v278 = v280[8];
    v272 = v280[2];
    v273 = v280[3];
    v275 = v280[5];
    v274 = v280[4];
    v271 = v280[1];
    v270 = v280[0];
    v202 = v52;
    v268 = v52;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v246, v247, 0, 0, &v268, a22, a23, 0, v269);
    v188 = 0;
    v265 = v269[6];
    v266 = v269[7];
    v267 = v269[8];
    v261 = v269[2];
    v262 = v269[3];
    v263 = v269[4];
    v264 = v269[5];
    v259 = v269[0];
    v260 = v269[1];
    v195 = type metadata accessor for ImportExport.Message();
    v57 = *(v195 + 80);
    *&v252[0] = 0;
    sub_1A84E5B8C();
    v58 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v201 = v57;
    v223 = v58;
    sub_1A84E594C();
    if (v213)
    {
      v59 = HIBYTE(v213) & 0xF;
      if ((v213 & 0x2000000000000000) == 0)
      {
        v59 = a18 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        v51 |= 4uLL;
      }
    }

    v193 = a16;
    if (v214)
    {
      v60 = HIBYTE(v214) & 0xF;
      if ((v214 & 0x2000000000000000) == 0)
      {
        v60 = a16 & 0xFFFFFFFFFFFFLL;
      }

      if (v60)
      {
        v51 |= 8uLL;
      }
    }

    v196 = a22;
    v197 = a23;
    v194 = a18;
    v192 = a20;
    if (v212)
    {
      v61 = HIBYTE(v212) & 0xF;
      if ((v212 & 0x2000000000000000) == 0)
      {
        v61 = a20 & 0xFFFFFFFFFFFFLL;
      }

      if (v61)
      {
        v51 |= 0x10uLL;
      }
    }

    if ((~v51 & 0x8002) != 0)
    {
      v62 = v51 | 0x8002;
    }

    else
    {
      v62 = v51;
    }

    v63 = v215;
    sub_1A8423270(v215, v252);
    v64 = *&v252[0];
    if ((*&v252[0] & ~v62) == 0)
    {
      v64 = 0;
    }

    v190 = v64;
    v191 = v62;
    v65 = *(v63 + 16);
    v66 = MEMORY[0x1E69E7CC0];
    if (v65)
    {
      *&v252[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v65, 0);
      v66 = *&v252[0];
      v67 = v63 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v247 = v36;
      v249 = *(v36 + 72);
      do
      {
        v68 = v250;
        sub_1A844F228(v67, v250, type metadata accessor for ImportExport.MessagePart);
        v69 = (v68 + v251[19]);
        v71 = *v69;
        v70 = v69[1];

        sub_1A844F290(v68, type metadata accessor for ImportExport.MessagePart);
        *&v252[0] = v66;
        v73 = *(v66 + 16);
        v72 = *(v66 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1A83EF534((v72 > 1), v73 + 1, 1);
          v66 = *&v252[0];
        }

        *(v66 + 16) = v73 + 1;
        v74 = v66 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
        v67 += v249;
        --v65;
      }

      while (v65);
      v36 = v247;
    }

    *&v252[0] = v66;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v222 = sub_1A84E5D6C();
    v210 = v75;

    v76 = *(v215 + 16);
    if (!v76)
    {
      break;
    }

    v77 = 0;
    v52 = 0;
    v218 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v220 = v215 + v218;
    v78 = MEMORY[0x1E69E7CC0];
    v219 = *(v36 + 72);
    v79 = v215 + v218;
    v217 = v76;
    v80 = v76;
    a10 = v251;
    v51 = v221;
    do
    {
      v227 = v79;
      v228 = v80;
      sub_1A844F228(v79, v51, type metadata accessor for ImportExport.MessagePart);
      v81 = *(v51 + 48);
      v247 = v78;
      if (v81)
      {
        v229 = *(v51 + 40);
        v249 = v81;
      }

      else
      {
        v82 = (v51 + a10[19]);
        v83 = *v82;
        v84 = v82[1];
        v249 = sub_1A84E5E7C();
        v229 = v52;
      }

      v85 = *(v51 + 56);
      if (v85 < 0)
      {
        v85 = v77;
      }

      v250 = v85;
      v86 = *(v51 + 8);
      v236 = *v51;
      v87 = (v51 + a10[19]);
      v88 = v87[1];
      v238 = *v87;
      v234 = *(v51 + 16);
      v241 = *(v51 + 96);
      v89 = *(v51 + 168);
      v90 = *(v51 + 120);
      v91 = *(v51 + 136);
      v257 = *(v51 + 152);
      v258 = v89;
      v255 = v90;
      v256 = v91;
      v254 = *(v51 + 104);
      v92 = a10[13];
      v93 = (v51 + a10[12]);
      v94 = *v93;
      v232 = v93[1];
      v95 = *(v51 + v92 + 8);
      v246 = *(v51 + v92);
      v244 = v94;
      v245 = v95;
      v96 = a10[15];
      v97 = (v51 + a10[14]);
      v98 = *v97;
      v99 = v97[1];
      v100 = v51 + v96;
      v101 = *(v51 + v96);
      v102 = *(v100 + 8);
      v242 = v98;
      v243 = v101;
      v235 = v102;
      v103 = v251[21];
      v104 = *(v51 + 80);
      v230 = *(v51 + 64);
      v231 = v104;

      sub_1A8243D74(&v254, v252, &qword_1EB2E6F58, &qword_1A8501388);

      v105 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v233 = *&v252[0];
      v106 = v251[17];
      v237 = *(v51 + v251[16]);
      v240 = *(v51 + v106);
      v239 = *(v51 + v251[18]);
      v107 = *(v51 + v251[20]);
      sub_1A8243D74(v51 + v251[11], v44 + v251[11], &qword_1EB2E6F50, &unk_1A8502920);
      *(v44 + 6) = 0u;
      *(v44 + 7) = 0u;
      *(v44 + 8) = 0u;
      *(v44 + 9) = 0u;
      *(v44 + 10) = 0u;
      *(v44 + 22) = 0;
      *(v44 + 4) = 0u;
      *(v44 + 5) = 0u;
      v108 = v251[21];
      *&v252[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v44 + 16) = v234;
      *v44 = v236;
      *(v44 + 1) = v86;
      v109 = v229;
      v110 = v249;
      *(v44 + 5) = v229;
      *(v44 + 6) = v110;
      v111 = v44 + v251[19];
      *v111 = v238;
      *(v111 + 1) = v88;
      v112 = *(v44 + 9);

      v113 = v231;
      *(v44 + 4) = v230;
      *(v44 + 5) = v113;
      *(v44 + 12) = v241;
      v114 = *(v44 + 30);
      v115 = *(v44 + 38);
      v252[2] = *(v44 + 34);
      v252[3] = v115;
      v252[4] = *(v44 + 42);
      v252[0] = *(v44 + 26);
      v252[1] = v114;
      sub_1A824B2D4(v252, &qword_1EB2E6F58, &qword_1A8501388);
      v116 = v254;
      *(v44 + 30) = v255;
      v117 = v257;
      *(v44 + 34) = v256;
      *(v44 + 38) = v117;
      *(v44 + 42) = v258;
      *(v44 + 26) = v116;
      v118 = v44 + v251[12];
      v119 = v245;
      v120 = v232;
      *v118 = v244;
      *(v118 + 1) = v120;
      v121 = v44 + v251[13];
      v122 = v246;
      *v121 = v246;
      *(v121 + 1) = v119;
      v123 = v44 + v251[14];
      v124 = v243;
      *v123 = v242;
      *(v123 + 1) = v99;
      a10 = v251;
      v125 = v44 + v251[15];
      v126 = v235;
      *v125 = v124;
      *(v125 + 1) = v126;
      sub_1A83F5918(v122, v119);
      (*(*(v105 - 8) + 8))(v44 + v108, v105);
      v253 = v233;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v44 + a10[16]) = v237;
      *(v44 + a10[17]) = v240;
      *(v44 + a10[18]) = v239;
      *(v44 + a10[20]) = v107;
      v127 = v225;
      *(v44 + 3) = v224;
      *(v44 + 4) = v127;
      *(v44 + 7) = v250;
      sub_1A844F228(v44, v248, type metadata accessor for ImportExport.MessagePart);

      v78 = v247;
      v52 = v109;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1A83EF140(0, v78[2] + 1, 1, v78);
      }

      v36 = v219;
      a8 = v220;
      v129 = v78[2];
      v128 = v78[3];
      v51 = v221;
      if (v129 >= v128 >> 1)
      {
        v78 = sub_1A83EF140(v128 > 1, v129 + 1, 1, v78);
      }

      v78[2] = v129 + 1;
      sub_1A844F2F0(v248, v78 + v218 + v129 * v36, type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v44, type metadata accessor for ImportExport.MessagePart);
      v77 = v250 + 1;
      if (__OFADD__(v250, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v130 = v52 + v249;
      if (__OFADD__(v52, v249))
      {
        goto LABEL_73;
      }

      v52 = v130 + 1;
      v131 = v228;
      if (__OFADD__(v130, 1))
      {
        goto LABEL_74;
      }

      sub_1A844F290(v51, type metadata accessor for ImportExport.MessagePart);
      v79 = v227 + v36;
      v80 = v131 - 1;
    }

    while (v80);
    v132 = 0;
    *&v254 = -1;
    v51 = v215;
    v44 = v209;
    a10 = v210;
    v133 = v188;
    v52 = v189;
    while (v132 < *(v51 + 16))
    {
      sub_1A844F228(a8, v52, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v52, &v254);
      if (v133)
      {
        v174 = v216;
        sub_1A844F290(v52, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v259);
        sub_1A8400ED8(&v270);

        sub_1A84E5C8C();
        v175 = v133;
        v176 = sub_1A84E5C7C();
        v177 = sub_1A84E619C();
        v178 = v133;

        if (os_log_type_enabled(v176, v177))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          *v179 = 138412290;
          v181 = v133;
          v182 = _swift_stdlib_bridgeErrorToNSError();
          *(v179 + 4) = v182;
          *v180 = v182;
          _os_log_impl(&dword_1A823F000, v176, v177, "Failed to create a message with Error: %@", v179, 0xCu);
          sub_1A824B2D4(v180, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v180, -1, -1);
          MEMORY[0x1AC56D3F0](v179, -1, -1);
        }

        (*(v186 + 8))(v185, v187);
        swift_willThrow();
        v183 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        (*(*(v183 - 8) + 8))(&v174[v201], v183);
        while (1)
        {
          *&v280[0] = 0;
          *(&v280[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000027, 0x80000001A85318B0);
          *&v270 = v178;
          sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
          sub_1A84E652C();
          MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85318E0);
          sub_1A84E653C();
          __break(1u);
          v178 = 0xD000000000000012;
        }
      }

      ++v132;
      sub_1A844F290(v52, type metadata accessor for ImportExport.MessagePart);
      a8 += v36;
      if (v217 == v132)
      {
        v134 = v214;
        v135 = v78;
        goto LABEL_55;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v134 = v214;
  v135 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v251 = a29;
  v136 = v190 | v191;

  v137 = v225;
  v138 = v216;
  *v216 = v224;
  v138[1] = v137;
  v139 = v210;
  v138[14] = v222;
  v138[15] = v139;
  v140 = v200;
  v138[2] = v199;
  v141 = v205;
  v138[4] = v140;
  v138[5] = v141;
  v142 = v195;
  v143 = (v138 + *(v195 + 92));
  v144 = v273;
  v143[2] = v272;
  v143[3] = v144;
  v145 = v278;
  v146 = v276;
  v143[7] = v277;
  v143[8] = v145;
  v147 = v275;
  v143[4] = v274;
  v143[5] = v147;
  v143[6] = v146;
  v148 = v271;
  *v143 = v270;
  v143[1] = v148;
  v149 = (v138 + v142[24]);
  v150 = v266;
  v149[6] = v265;
  v149[7] = v150;
  v149[8] = v267;
  v151 = v262;
  v149[2] = v261;
  v149[3] = v151;
  v152 = v264;
  v149[4] = v263;
  v149[5] = v152;
  v153 = v260;
  *v149 = v259;
  v149[1] = v153;
  v154 = v203;
  v138[10] = a11;
  v138[11] = v154;
  v155 = v208;
  v138[12] = a14;
  v138[13] = v155;
  v156 = v194;
  v138[16] = v193;
  v138[17] = v134;
  v157 = v213;
  v138[18] = v156;
  v138[19] = v157;
  v158 = v212;
  v138[20] = v192;
  v138[21] = v158;
  v159 = v197;
  v138[22] = v196;
  v138[23] = v159;
  v160 = v202;
  *(v138 + 208) = v202;
  v138[27] = v135;
  sub_1A8400E7C(&v270, v252);
  sub_1A8400E7C(&v259, v252);
  v161 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v161 - 8) + 8))(v138 + v201, v161);
  *&v252[0] = v204;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v162 = (v138 + v142[21]);
  v163 = v207;
  *v162 = a27;
  v162[1] = v163;
  v164 = (v138 + v142[22]);
  v165 = v206;
  *v164 = v251;
  v164[1] = v165;
  v138[3] = v136;
  if (v160 > 3)
  {
    if (v160 > 5)
    {
      if (v160 == 6)
      {
        v166 = 0xE300000000000000;
        v167 = 5456722;
      }

      else
      {
        v166 = 0xEC000000534D5365;
        v167 = 0x74696C6C65746153;
      }
    }

    else if (v160 == 4)
    {
      v167 = 5459283;
      v166 = 0xE300000000000000;
    }

    else
    {
      v166 = 0xE800000000000000;
      v167 = 0x656D695465636146;
    }
  }

  else if (v160 > 1)
  {
    if (v160 == 2)
    {
      v166 = 0xE800000000000000;
    }

    else
    {
      v166 = 0xEC0000006574694CLL;
    }

    v167 = 0x6567617373654D69;
  }

  else if (v160)
  {
    v166 = 0xE300000000000000;
    v167 = 7958113;
  }

  else
  {
    v166 = 0xE700000000000000;
    v167 = 0x6E776F6E6B6E75;
  }

  v168 = v216;
  *(v216 + 24) = v167;
  *(v168 + 25) = v166;
  v169 = *(&v272 + 1);
  v170 = v273;

  sub_1A8400ED8(&v270);
  *(v168 + 6) = v169;
  *(v168 + 7) = v170;
  v171 = *(&v261 + 1);
  v172 = v262;

  result = sub_1A8400ED8(&v259);
  *(v168 + 8) = v171;
  *(v168 + 9) = v172;
  return result;
}

uint64_t sub_1A8448834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v293 = a6;
  v294 = a8;
  v267 = a7;
  v254 = a4;
  v255 = a5;
  v253 = a3;
  v276 = a1;
  v277 = a2;
  v271 = a9;
  v268 = a18;
  v269 = a17;
  v28 = sub_1A84E5C9C();
  v237 = *(v28 - 8);
  v238 = v28;
  v29 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v236 = &v236 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ImportExport.MessagePart();
  v295 = *(v31 - 1);
  v32 = *(v295 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v305 = &v236 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v302 = &v236 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v236 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v278 = &v236 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v240 = &v236 - v42;
  v43 = sub_1A84E5B9C();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v279 = &v236 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1A84E577C();
  v303 = *(v304 - 8);
  v46 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v304);
  v301 = &v236 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v291 = &v236 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v236 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v236 - v55;
  v57 = sub_1A84E56DC();
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v300 = &v236 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v298 = &v236 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v236 - v63;
  v292 = *a13;
  v256 = a16;
  v66 = v65;
  v68 = v67;
  sub_1A8243D74(a16, v56, &qword_1EB2E6F48, &unk_1A8501F00);
  v69 = *(v66 + 48);
  v299 = (v66 + 48);
  v306 = v69;
  v70 = (v69)(v56, 1, v68);
  v296 = v68;
  v297 = v66;
  if (v70 == 1)
  {
    sub_1A824B2D4(v56, &qword_1EB2E6F48, &unk_1A8501F00);
    v261 = 0;
    v266 = 0;
  }

  else
  {
    (*(v66 + 32))(v64, v56, v68);
    v290 = objc_opt_self();
    v71 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v72 = v304;
    v73 = sub_1A824431C(v304, qword_1EB2E7FC8);
    swift_beginAccess();
    v74 = v303;
    v75 = v301;
    (*(v303 + 16))(v301, v73, v72);
    v76 = sub_1A84E576C();
    (*(v74 + 8))(v75, v72);
    v77 = [v290 stringFromDate:v71 timeZone:v76 formatOptions:1907];

    v261 = sub_1A84E5DBC();
    v266 = v78;

    v68 = v296;
    v66 = v297;
    (*(v297 + 8))(v64, v296);
  }

  v79 = v278;
  v263 = a22;
  v290 = a21;
  v264 = a10;
  sub_1A8243D74(v269, v54, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v306)(v54, 1, v68) == 1)
  {
    sub_1A824B2D4(v54, &qword_1EB2E6F48, &unk_1A8501F00);
    v260 = 0;
    v265 = 0;
    v80 = v300;
  }

  else
  {
    (*(v66 + 32))(v298, v54, v68);
    v289 = objc_opt_self();
    v81 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v82 = v304;
    v83 = sub_1A824431C(v304, qword_1EB2E7FC8);
    swift_beginAccess();
    v84 = v303;
    v85 = v301;
    (*(v303 + 16))(v301, v83, v82);
    v86 = sub_1A84E576C();
    (*(v84 + 8))(v85, v82);
    v87 = [v289 stringFromDate:v81 timeZone:v86 formatOptions:1907];

    v260 = sub_1A84E5DBC();
    v265 = v88;

    v66 = v297;
    v68 = v296;
    (*(v297 + 8))(v298, v296);
    v80 = v300;
  }

  v89 = v291;
  sub_1A8243D74(v268, v291, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v306)(v89, 1, v68) == 1)
  {
    sub_1A824B2D4(v89, &qword_1EB2E6F48, &unk_1A8501F00);
    v259 = 0;
    v262 = 0;
    v90 = v264;
  }

  else
  {
    (*(v66 + 32))(v80, v89, v68);
    v299 = objc_opt_self();
    v306 = sub_1A84E565C();
    v90 = v264;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v91 = v304;
    v92 = sub_1A824431C(v304, qword_1EB2E7FC8);
    swift_beginAccess();
    v93 = v303;
    v94 = v301;
    (*(v303 + 16))(v301, v92, v91);
    v95 = sub_1A84E576C();
    (*(v93 + 8))(v94, v91);
    v96 = v306;
    v97 = [v299 stringFromDate:v306 timeZone:v95 formatOptions:1907];

    v259 = sub_1A84E5DBC();
    v262 = v98;

    (*(v297 + 8))(v300, v296);
  }

  v270 = a23;
  LOBYTE(v335[0]) = 0;

  v99 = v263;

  ImportExport.ServiceType.init(for:default:)(v99, v335, v336);
  LODWORD(v100) = v336[0];
  if (qword_1EB2E5948 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v249 = a28;
    v250 = a27;
    v251 = a25;
    v252 = a15;
    v248 = a12;
    LOBYTE(v335[0]) = v100;
    sub_1A83FE48C(v294, v90, v335, v294, v90);
    v304 = v101;
    v306 = v102;

    if (v267)
    {
      v103 = v293;
    }

    else
    {
      v103 = 0;
    }

    if (v267)
    {
      v104 = v267;
    }

    else
    {
      v104 = 0xE000000000000000;
    }

    v334 = v100;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v103, v104, 0, 0, &v334, a19, a20, 0, v335);
    v331 = v335[6];
    v332 = v335[7];
    v333 = v335[8];
    v327 = v335[2];
    v328 = v335[3];
    v329 = v335[4];
    v330 = v335[5];
    v325 = v335[0];
    v326 = v335[1];
    v323 = v100;

    v244 = a19;
    v245 = a20;
    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v304, v306, 0, 0, &v323, a19, a20, 0, v324);
    v105 = v270;
    v320 = v324[6];
    v321 = v324[7];
    v322 = v324[8];
    v316 = v324[2];
    v317 = v324[3];
    v318 = v324[4];
    v319 = v324[5];
    v314 = v324[0];
    v315 = v324[1];
    v243 = type metadata accessor for ImportExport.Message();
    v106 = *(v243 + 80);
    *&v307[0] = 0;
    sub_1A84E5B8C();
    v107 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v247 = v106;
    v275 = v107;
    sub_1A84E594C();
    if (!v265)
    {
      v110 = v266;
      v111 = v262;
      v109 = v292;
      if (!v266)
      {
        goto LABEL_33;
      }

LABEL_29:
      v112 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v112 = v261 & 0xFFFFFFFFFFFFLL;
      }

      if (v112)
      {
        v109 |= 8uLL;
      }

      goto LABEL_33;
    }

    v108 = HIBYTE(v265) & 0xF;
    if ((v265 & 0x2000000000000000) == 0)
    {
      v108 = v260 & 0xFFFFFFFFFFFFLL;
    }

    v109 = v292;
    if (v108)
    {
      v109 = v292 | 4;
    }

    v110 = v266;
    v111 = v262;
    if (v266)
    {
      goto LABEL_29;
    }

LABEL_33:
    v239 = 0;
    if (v111)
    {
      v113 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v113 = v259 & 0xFFFFFFFFFFFFLL;
      }

      if (v113)
      {
        v109 |= 0x10uLL;
      }
    }

    v246 = v100;
    if ((~v109 & 0x8002) != 0)
    {
      v114 = v109 | 0x8002;
    }

    else
    {
      v114 = v109;
    }

    sub_1A8423270(v105, v307);
    v115 = *&v307[0];
    if ((*&v307[0] & ~v114) == 0)
    {
      v115 = 0;
    }

    v241 = v115;
    v242 = v114;
    v116 = *(v105 + 16);
    v117 = MEMORY[0x1E69E7CC0];
    v306 = v31;
    if (v116)
    {
      *&v307[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v116, 0);
      v117 = *&v307[0];
      v118 = v105 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
      v304 = *(v295 + 72);
      do
      {
        v119 = v305;
        sub_1A844F228(v118, v305, type metadata accessor for ImportExport.MessagePart);
        v120 = (v119 + v31[19]);
        v121 = *v120;
        v122 = v120[1];

        sub_1A844F290(v119, type metadata accessor for ImportExport.MessagePart);
        *&v307[0] = v117;
        v124 = *(v117 + 16);
        v123 = *(v117 + 24);
        if (v124 >= v123 >> 1)
        {
          sub_1A83EF534((v123 > 1), v124 + 1, 1);
          v117 = *&v307[0];
        }

        *(v117 + 16) = v124 + 1;
        v125 = v117 + 16 * v124;
        *(v125 + 32) = v121;
        *(v125 + 40) = v122;
        v118 += v304;
        --v116;
        v31 = v306;
      }

      while (v116);
      v79 = v278;
      v105 = v270;
    }

    *&v307[0] = v117;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v126 = sub_1A84E5D6C();
    v257 = v127;
    v258 = v126;

    v128 = *(v105 + 16);
    if (!v128)
    {
      break;
    }

    v129 = 0;
    v90 = 0;
    v272 = (*(v295 + 80) + 32) & ~*(v295 + 80);
    v273 = v105 + v272;
    v100 = MEMORY[0x1E69E7CC0];
    v305 = *(v295 + 72);
    v130 = v105 + v272;
    v131 = v128;
    v274 = v128;
    do
    {
      v280 = v130;
      v281 = v131;
      sub_1A844F228(v130, v79, type metadata accessor for ImportExport.MessagePart);
      v132 = *(v79 + 48);
      v301 = v100;
      if (v132)
      {
        v304 = *(v79 + 40);
        v303 = v132;
      }

      else
      {
        v133 = (v79 + v31[19]);
        v134 = *v133;
        v135 = v133[1];
        v303 = sub_1A84E5E7C();
        v304 = v90;
      }

      v136 = *(v79 + 56);
      if (v136 < 0)
      {
        v136 = v129;
      }

      v300 = v136;
      v137 = *(v79 + 8);
      v289 = *v79;
      v138 = (v79 + v31[19]);
      v139 = v138[1];
      v291 = *v138;
      v287 = *(v79 + 16);
      v294 = *(v79 + 96);
      v140 = *(v79 + 168);
      v141 = *(v79 + 120);
      v142 = *(v79 + 136);
      v312 = *(v79 + 152);
      v313 = v140;
      v310 = v141;
      v311 = v142;
      v309 = *(v79 + 104);
      v143 = (v79 + v306[12]);
      v144 = *v143;
      v145 = v143[1];
      v146 = v79 + v306[13];
      v148 = *v146;
      v147 = *(v146 + 8);
      v299 = v148;
      v297 = v144;
      v298 = v147;
      v149 = v306[15];
      v150 = (v79 + v306[14]);
      v151 = *v150;
      v152 = v150[1];
      v284 = v145;
      v285 = v152;
      v153 = v79 + v149;
      v154 = *(v79 + v149);
      v155 = *(v153 + 8);
      v295 = v151;
      v296 = v154;
      v288 = v155;
      v156 = v306[21];
      v157 = *(v79 + 80);
      v282 = *(v79 + 64);
      v283 = v157;

      sub_1A8243D74(&v309, v307, &qword_1EB2E6F58, &qword_1A8501388);

      v158 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v286 = *&v307[0];
      v159 = v306[17];
      LODWORD(v290) = *(v79 + v306[16]);
      LODWORD(v293) = *(v79 + v159);
      LODWORD(v292) = *(v79 + v306[18]);
      v160 = *(v79 + v306[20]);
      sub_1A8243D74(v79 + v306[11], &v39[v306[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v39 + 6) = 0u;
      *(v39 + 7) = 0u;
      *(v39 + 8) = 0u;
      *(v39 + 9) = 0u;
      *(v39 + 10) = 0u;
      *(v39 + 22) = 0;
      *(v39 + 4) = 0u;
      *(v39 + 5) = 0u;
      v161 = v306[21];
      *&v307[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v39[16] = v287;
      *v39 = v289;
      *(v39 + 1) = v137;
      v162 = v303;
      *(v39 + 5) = v304;
      *(v39 + 6) = v162;
      v163 = &v39[v306[19]];
      *v163 = v291;
      *(v163 + 1) = v139;
      v31 = v306;
      v164 = *(v39 + 9);

      v165 = v283;
      *(v39 + 4) = v282;
      *(v39 + 5) = v165;
      *(v39 + 12) = v294;
      v166 = *(v39 + 120);
      v167 = *(v39 + 152);
      v307[2] = *(v39 + 136);
      v307[3] = v167;
      v307[4] = *(v39 + 168);
      v307[0] = *(v39 + 104);
      v307[1] = v166;
      sub_1A824B2D4(v307, &qword_1EB2E6F58, &qword_1A8501388);
      v168 = v309;
      *(v39 + 120) = v310;
      v169 = v312;
      *(v39 + 136) = v311;
      *(v39 + 152) = v169;
      v170 = v300;
      *(v39 + 168) = v313;
      *(v39 + 104) = v168;
      v171 = &v39[v31[12]];
      v172 = v298;
      v173 = v284;
      *v171 = v297;
      *(v171 + 1) = v173;
      v174 = &v39[v31[13]];
      v175 = v299;
      *v174 = v299;
      *(v174 + 1) = v172;
      v176 = &v39[v31[14]];
      v177 = v285;
      *v176 = v295;
      *(v176 + 1) = v177;
      v178 = &v39[v31[15]];
      v179 = v288;
      *v178 = v296;
      *(v178 + 1) = v179;
      sub_1A83F5918(v175, v172);
      (*(*(v158 - 8) + 8))(&v39[v161], v158);
      v308 = v286;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v39[v31[16]] = v290;
      v39[v31[17]] = v293;
      v39[v31[18]] = v292;
      *&v39[v31[20]] = v160;
      v180 = v277;
      *(v39 + 3) = v276;
      *(v39 + 4) = v180;
      *(v39 + 7) = v170;
      sub_1A844F228(v39, v302, type metadata accessor for ImportExport.MessagePart);

      v100 = v301;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_1A83EF140(0, *(v100 + 2) + 1, 1, v100);
      }

      v90 = *(v100 + 2);
      v181 = *(v100 + 3);
      v79 = v278;
      v183 = v273;
      v182 = v274;
      if (v90 >= v181 >> 1)
      {
        v100 = sub_1A83EF140(v181 > 1, v90 + 1, 1, v100);
      }

      *(v100 + 2) = v90 + 1;
      sub_1A844F2F0(v302, &v100[v272 + v90 * v305], type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v39, type metadata accessor for ImportExport.MessagePart);
      v129 = (v170 + 1);
      if (__OFADD__(v170, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v184 = v304 + v303;
      if (__OFADD__(v304, v303))
      {
        goto LABEL_90;
      }

      v90 = v184 + 1;
      v185 = v281;
      if (__OFADD__(v184, 1))
      {
        goto LABEL_91;
      }

      sub_1A844F290(v79, type metadata accessor for ImportExport.MessagePart);
      v130 = v280 + v305;
      v131 = v185 - 1;
    }

    while (v131);
    v186 = 0;
    *&v309 = -1;
    v90 = v239;
    v79 = v240;
    v187 = v270;
    v31 = v257;
    v39 = v258;
    while (v186 < *(v187 + 16))
    {
      sub_1A844F228(v183, v79, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v79, &v309);
      if (v90)
      {
        sub_1A844F290(v79, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v314);
        sub_1A8400ED8(&v325);

        sub_1A84E5C8C();
        v225 = v90;
        v226 = sub_1A84E5C7C();
        v227 = sub_1A84E619C();
        v228 = v90;
        v229 = v227;
        v230 = v228;

        if (os_log_type_enabled(v226, v229))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          *v231 = 138412290;
          v233 = v230;
          v234 = _swift_stdlib_bridgeErrorToNSError();
          *(v231 + 4) = v234;
          *v232 = v234;
          _os_log_impl(&dword_1A823F000, v226, v229, "Failed to create a message with Error: %@", v231, 0xCu);
          sub_1A824B2D4(v232, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v232, -1, -1);
          MEMORY[0x1AC56D3F0](v231, -1, -1);
        }

        (*(v237 + 8))(v236, v238);
        swift_willThrow();
        v235 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        (*(*(v235 - 8) + 8))(&v271[v247], v235);
        while (1)
        {
          *&v335[0] = 0;
          *(&v335[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000027, 0x80000001A85318B0);
          *&v325 = v230;
          sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
          sub_1A84E652C();
          MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85318E0);
          sub_1A84E653C();
          __break(1u);
          v230 = 0xD000000000000012;
        }
      }

      ++v186;
      sub_1A844F290(v79, type metadata accessor for ImportExport.MessagePart);
      v183 += v305;
      if (v182 == v186)
      {
        goto LABEL_72;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
  }

  v100 = MEMORY[0x1E69E7CC0];
  v31 = v257;
LABEL_72:
  v188 = v241 | v242;

  v189 = v271;
  v190 = v277;
  *v271 = v276;
  v189[1] = v190;
  v189[14] = v258;
  v189[15] = v31;
  v191 = v254;
  v189[2] = v253;
  v192 = v255;
  v189[4] = v191;
  v189[5] = v192;
  v193 = v243;
  v194 = (v189 + *(v243 + 92));
  v195 = v328;
  v194[2] = v327;
  v194[3] = v195;
  v196 = v333;
  v194[7] = v332;
  v194[8] = v196;
  v197 = v331;
  v194[5] = v330;
  v194[6] = v197;
  v194[4] = v329;
  v198 = v326;
  *v194 = v325;
  v194[1] = v198;
  v199 = (v189 + v193[24]);
  v200 = v321;
  v199[6] = v320;
  v199[7] = v200;
  v199[8] = v322;
  v201 = v317;
  v199[2] = v316;
  v199[3] = v201;
  v202 = v319;
  v199[4] = v318;
  v199[5] = v202;
  v203 = v315;
  *v199 = v314;
  v199[1] = v203;
  v204 = v248;
  v189[10] = a11;
  v189[11] = v204;
  v205 = v252;
  v189[12] = a14;
  v189[13] = v205;
  v206 = v266;
  v189[16] = v261;
  v189[17] = v206;
  v207 = v265;
  v189[18] = v260;
  v189[19] = v207;
  v208 = v262;
  v189[20] = v259;
  v189[21] = v208;
  v209 = v245;
  v189[22] = v244;
  v189[23] = v209;
  v210 = v246;
  *(v189 + 208) = v246;
  v189[27] = v100;
  sub_1A8400E7C(&v325, v307);
  sub_1A8400E7C(&v314, v307);
  v211 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v211 - 8) + 8))(v189 + v247, v211);
  *&v307[0] = v249;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v212 = (v189 + v193[21]);
  v213 = v250;
  v214 = v251;
  *v212 = a24;
  v212[1] = v214;
  v215 = (v189 + v193[22]);
  *v215 = a26;
  v215[1] = v213;
  v189[3] = v188;
  if (v210 > 3)
  {
    v216 = v256;
    if (v210 > 5)
    {
      if (v210 == 6)
      {
        v217 = 0xE300000000000000;
        v218 = 5456722;
      }

      else
      {
        v217 = 0xEC000000534D5365;
        v218 = 0x74696C6C65746153;
      }
    }

    else if (v210 == 4)
    {
      v218 = 5459283;
      v217 = 0xE300000000000000;
    }

    else
    {
      v217 = 0xE800000000000000;
      v218 = 0x656D695465636146;
    }
  }

  else
  {
    v216 = v256;
    if (v210 > 1)
    {
      if (v210 == 2)
      {
        v217 = 0xE800000000000000;
      }

      else
      {
        v217 = 0xEC0000006574694CLL;
      }

      v218 = 0x6567617373654D69;
    }

    else if (v210)
    {
      v217 = 0xE300000000000000;
      v218 = 7958113;
    }

    else
    {
      v217 = 0xE700000000000000;
      v218 = 0x6E776F6E6B6E75;
    }
  }

  sub_1A824B2D4(v268, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v269, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v216, &qword_1EB2E6F48, &unk_1A8501F00);
  v219 = v271;
  *(v271 + 24) = v218;
  *(v219 + 25) = v217;
  v220 = *(&v327 + 1);
  v221 = v328;

  sub_1A8400ED8(&v325);
  *(v219 + 6) = v220;
  *(v219 + 7) = v221;
  v222 = *(&v316 + 1);
  v223 = v317;

  result = sub_1A8400ED8(&v314);
  *(v219 + 8) = v222;
  *(v219 + 9) = v223;
  return result;
}

uint64_t ImportExport.Conversation.init(account:participants:serviceType:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X6>, NSObject *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v43 = a8;
  v33 = a5;
  v34 = a7;
  v36 = a3;
  v37 = a6;
  v32 = a9;
  v22 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v31 - v24;
  v26 = *a4;
  HIDWORD(v31) = *a15;
  v41 = v26;

  v35 = a2;
  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(a1, a2, 0, 0, &v41, 0, 0xE000000000000000, 0, v42);
  if (v18)
  {
    *&v42[0] = 0;
    *(&v42[0] + 1) = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8531900);
    *&v40[0] = v18;
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A8531930);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {
    v40[6] = v42[6];
    v40[7] = v42[7];
    v40[8] = v42[8];
    v40[2] = v42[2];
    v40[3] = v42[3];
    v40[4] = v42[4];
    v40[5] = v42[5];
    v40[0] = v42[0];
    v40[1] = v42[1];
    v39 = v26;
    v38 = BYTE4(v31);
    sub_1A8243D74(a17, v25, &qword_1EB2E6F50, &unk_1A8502920);

    v27 = v36;

    v28 = v37;

    v29 = v43;

    ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)(v40, v27, &v39, 0, 0, v33, v28, v34, v32, v29, 0, 0, 0, 0, a14 & 1, &v38, a16, v25, a18);
    sub_1A824B2D4(a17, &qword_1EB2E6F50, &unk_1A8502920);
  }

  return result;
}

uint64_t ImportExport.Conversation.init(sequenceID:rcsGroupURI:groupID:account:participants:lastAddressUsedForSelf:groupName:isPinned:filterType:serviceType:properties:groupPhoto:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, NSObject *a5@<X4>, __int128 *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v53 = a7;
  v51 = a5;
  v49 = a4;
  v50 = a3;
  v48 = a2;
  v46 = a1;
  v47 = a8;
  v19 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v44 - v21;
  v45 = *a14;
  v71[0] = 0;

  v52 = a16;
  ImportExport.ServiceType.init(for:default:)(a16, v71, &v56);
  v23 = v56;
  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A85013E0;
  v25 = sub_1A84E5D8C();
  v26 = [v25 _stripFZIDPrefix];

  if (!v26)
  {
    __break(1u);
    goto LABEL_22;
  }

  v27 = sub_1A84E5DBC();
  v29 = v28;

  v30 = sub_1A84E5D8C();
  v31 = [v30 _stripFZIDPrefix];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = a6;
  a6 = &v56;
  v32 = sub_1A84E5DBC();
  v34 = v33;

  *(v24 + 32) = 0;
  *(v24 + 40) = v27;
  *(v24 + 48) = v29;
  *(v24 + 56) = v32;
  *(v24 + 64) = v34;
  *(v24 + 72) = v23;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0xE000000000000000;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  if (!*(v24 + 16))
  {
LABEL_23:

    sub_1A84023CC();
    v41 = swift_allocError();
    *v42 = 0xD00000000000002CLL;
    *(v42 + 8) = 0x80000001A8531010;
    *(v42 + 16) = 0;
    v43 = v41;
    swift_willThrow();
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8531900);
    *(a6 + 18) = v43;
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A8531930);
    result = sub_1A84E653C();
    __break(1u);
    return result;
  }

  v71[0] = 1;
  if (v23 > 3)
  {
    if (v23 > 5)
    {
      if (v23 == 6)
      {
        v35 = 0xE300000000000000;
        v36 = 5456722;
      }

      else
      {
        v35 = 0xEC000000534D5365;
        v36 = 0x74696C6C65746153;
      }
    }

    else if (v23 == 4)
    {
      v36 = 5459283;
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x656D695465636146;
    }
  }

  else if (v23 > 1)
  {
    if (v23 == 2)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v35 = 0xEC0000006574694CLL;
    }

    v36 = 0x6567617373654D69;
  }

  else if (v23)
  {
    v35 = 0xE300000000000000;
    v36 = 7958113;
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
  }

  *&v56 = v27;
  *(&v56 + 1) = v29;
  v57 = v24;
  v58 = 0uLL;
  v59 = v27;
  v60 = v29;
  v61 = v32;
  v62 = v34;
  v63 = v23;
  v64 = 0;
  v65 = 0xE000000000000000;
  v66 = 0;
  v67 = 0uLL;
  v68 = v71[0];
  v69 = v36;
  v70 = v35;
  v55 = v23;
  v54 = v45;
  sub_1A8243D74(a18, v22, &qword_1EB2E6F50, &unk_1A8502920);

  swift_bridgeObjectRetain_n();

  v37 = v53;

  v38 = v50;

  v39 = v51;

  ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)(&v56, v37, &v55, 0, 0, v48, v38, v49, v47, v39, 0, 0, 0, 0, a13 & 1, &v54, a17, v22, v46);
  sub_1A824B2D4(a18, &qword_1EB2E6F50, &unk_1A8502920);
}

uint64_t ImportExport.Attachment.init(id:sequenceID:messageID:fileName:contentType:mimeType:createdDate:totalBytes:filePath:isRelativeFilePath:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:isAdaptiveImageGlyph:transferUserInfo:stickerUserInfo:attributionInfo:downloadError:missingFileReasons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, void *a11, void *a12, uint64_t a13, unint64_t a14, char *a15, uint64_t a16, unsigned __int8 a17, char a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, char *a27, char *a28, char *a29, uint64_t a30, uint64_t *a31)
{
  v244 = a8;
  v253 = a7;
  v254 = a6;
  v252 = a5;
  v220 = a4;
  v230 = a3;
  v231 = a2;
  v229 = a1;
  v242 = a9;
  v240 = a29;
  v239 = a28;
  v237 = a27;
  v236 = a25;
  v235 = a23;
  v245 = a17;
  v256 = a12;
  v257 = a10;
  v258 = a14;
  v248 = a31;
  v262 = *MEMORY[0x1E69E9840];
  v31 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v208 = &v202 - v33;
  v209 = sub_1A84E5C5C();
  v211 = *(v209 - 8);
  v34 = *(v211 + 64);
  v35 = MEMORY[0x1EEE9AC00](v209);
  v207 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v210 = &v202 - v37;
  v206 = sub_1A84E577C();
  v205 = *(v206 - 8);
  v38 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v204 = &v202 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v213 = &v202 - v42;
  v215 = sub_1A84E56DC();
  v214 = *(v215 - 8);
  v43 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v212 = &v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1A84E5C9C();
  v216 = *(v217 - 8);
  v45 = *(v216 + 64);
  v46 = MEMORY[0x1EEE9AC00](v217);
  v203 = &v202 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v218 = &v202 - v48;
  v255 = sub_1A84E558C();
  v49 = *(v255 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x1EEE9AC00](v255);
  v251 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v221 = &v202 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v219 = &v202 - v55;
  v224 = sub_1A84E531C();
  v223 = *(v224 - 8);
  v56 = *(v223 + 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = (&v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1A84E5B9C();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = &v202 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ImportExport.Attachment();
  v63 = *(*(v62 - 1) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v202 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v69 = &v202 - v68;
  v70 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x1EEE9AC00](v70 - 8);
  v249 = &v202 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v202 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v202 - v77;
  v226 = *v248;
  sub_1A8243D74(a16, &v202 - v77, &qword_1EB2E7068, &unk_1A8501EB0);
  v250 = v49;
  v79 = *(v49 + 48);
  v241 = a16;
  LODWORD(v248) = v79(a16, 1, v255);
  v80 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v81 = *(*(v80 - 8) + 56);
  v238 = v69;
  v81(v69, 1, 1, v80);
  v82 = v62[24];
  v260 = 0;
  sub_1A84E5B8C();
  v83 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v232 = v82;
  sub_1A84E594C();
  v84 = v62[25];
  v260 = 0;
  sub_1A84E5B8C();
  v233 = v84;
  sub_1A84E594C();
  v228 = v62;
  v85 = v62[26];
  v260 = 0;
  sub_1A84E5B8C();
  v234 = v85;
  v243 = v65;
  v227 = v61;
  v225 = v83;
  sub_1A84E594C();
  v260 = v254;
  v261 = v253;
  v86 = v256;

  v87 = v222;
  sub_1A84E530C();
  sub_1A840D3B0();
  v246 = sub_1A84E636C();
  v247 = v88;
  (*(v223 + 1))(v87, v224);
  v89 = v255;
  v254 = v78;
  sub_1A8243D74(v78, v76, &qword_1EB2E7068, &unk_1A8501EB0);
  v223 = v79;
  if (v79(v76, 1, v89) == 1)
  {
    sub_1A824B2D4(v76, &qword_1EB2E7068, &unk_1A8501EB0);
    v90 = v86;
    v91 = v250;
    v92 = v251;
    v93 = v249;
    v94 = v243;
    goto LABEL_9;
  }

  v95 = v250;
  v96 = v219;
  (*(v250 + 32))(v219, v76, v89);
  v90 = v86;
  v91 = v95;
  v92 = v251;
  v97 = v96;
  v94 = v243;
  if (v248 == 1 || (v245 & 1) != 0)
  {
    (*(v91 + 8))(v96, v89);
LABEL_8:
    v93 = v249;
LABEL_9:
    v224 = a30;
    v251 = a13;
    v243 = a11;
    sub_1A8243D74(v254, v93, &qword_1EB2E7068, &unk_1A8501EB0);
    v101 = v223(v93, 1, v89);
    v249 = a15;
    if (v101 == 1)
    {
      sub_1A824B2D4(v93, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v103 = v257;
      v102 = v258;
      v223 = v90;
      goto LABEL_53;
    }

    v104 = *(v91 + 32);
    v105 = v221;
    v104(v221, v93, v89);
    v106 = HIBYTE(v258) & 0xF;
    if (a15 && v90)
    {
      v107 = v251 & 0xFFFFFFFFFFFFLL;
      if ((v258 & 0x2000000000000000) != 0)
      {
        v107 = HIBYTE(v258) & 0xF;
      }

      if (v107)
      {
        v108 = HIBYTE(v257) & 0xF;
        if ((v257 & 0x2000000000000000) == 0)
        {
          v108 = v244 & 0xFFFFFFFFFFFFLL;
        }

        if (v108)
        {
          (*(v250 + 8))(v105, v89);
          goto LABEL_11;
        }
      }
    }

    v109 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v110 = sub_1A84E5D8C();

    v260 = 0;
    v111 = [v109 attributesOfItemAtPath:v110 error:&v260];

    v112 = v260;
    if (!v111)
    {
      v127 = v260;
      v128 = sub_1A84E548C();

      v223 = v128;
      swift_willThrow();
      v129 = v218;
      sub_1A84E5C8C();
      v130 = v250;
      (*(v250 + 16))(v92, v105, v89);
      v131 = sub_1A84E5C7C();
      v132 = v92;
      v133 = sub_1A84E619C();
      if (os_log_type_enabled(v131, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v260 = v135;
        *v134 = 136315138;
        v222 = v131;
        v136 = sub_1A84E555C();
        v138 = v137;
        v139 = *(v130 + 8);
        v140 = v255;
        v139(v132, v255);
        v141 = sub_1A82446BC(v136, v138, &v260);

        *(v134 + 4) = v141;
        v142 = v222;
        _os_log_impl(&dword_1A823F000, v222, v133, "Failed to get file attributes for file ath path: %s", v134, 0xCu);
        sub_1A8244788(v135);
        MEMORY[0x1AC56D3F0](v135, -1, -1);
        MEMORY[0x1AC56D3F0](v134, -1, -1);

        (*(v216 + 8))(v218, v217);
        v139(v221, v140);
      }

      else
      {

        v152 = *(v130 + 8);
        v152(v92, v89);
        (*(v216 + 8))(v129, v217);
        v152(v105, v89);
      }

      v103 = v257;
      v102 = v258;
      v223 = v256;
      goto LABEL_53;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v113 = sub_1A84E5D3C();
    v114 = v112;

    v115 = HIBYTE(v247) & 0xF;
    if ((v247 & 0x2000000000000000) == 0)
    {
      v115 = v246 & 0xFFFFFFFFFFFFLL;
    }

    if (!v115)
    {

      v246 = sub_1A84E550C();
      v247 = v116;
    }

    v117 = v249;
    v118 = v256;
    if (*(v113 + 16) && (v119 = sub_1A8490560(*MEMORY[0x1E696A3D8]), (v120 & 1) != 0) && (sub_1A8244F40(*(v113 + 56) + 32 * v119, &v260), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      v121 = v208;
      sub_1A84E5C2C();
      v122 = v211;
      v123 = v209;
      if ((*(v211 + 48))(v121, 1, v209) != 1)
      {
        (*(v122 + 32))(v210, v121, v123);
        v124 = v257;
        v172 = HIBYTE(v257) & 0xF;
        if ((v257 & 0x2000000000000000) == 0)
        {
          v172 = v244 & 0xFFFFFFFFFFFFLL;
        }

        if (!v172)
        {
          v173 = sub_1A84E5C1C();
          v122 = v211;
          v244 = v173;
          v124 = v174;
        }

        v175 = v118;
        if (!v118)
        {
          v176 = sub_1A84E5C3C();
          v122 = v211;
          v243 = v176;
        }

        v223 = v175;
        (*(v122 + 8))(v210, v123);
        if (v117)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      sub_1A824B2D4(v121, &qword_1EB2E7340, &qword_1A8501EF8);
      v124 = v257;
      v223 = v118;
      if (!v117)
      {
LABEL_33:
        if (*(v113 + 16) && (v125 = sub_1A8490560(*MEMORY[0x1E696A3B8]), (v126 & 1) != 0) && (sub_1A8244F40(*(v113 + 56) + 32 * v125, &v260), swift_dynamicCast()))
        {
          v117 = v259;
        }

        else
        {
          v117 = 0;
        }
      }
    }

    else
    {
      v124 = v257;
      v223 = v118;
      if (!v117)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    v103 = v124;
    v143 = v251 & 0xFFFFFFFFFFFFLL;
    if ((v258 & 0x2000000000000000) != 0)
    {
      v143 = v106;
    }

    v249 = v117;
    if (v143)
    {
      (*(v250 + 8))(v221, v255);
    }

    else
    {
      v144 = v250;
      if (*(v113 + 16) && (v145 = sub_1A8490560(*MEMORY[0x1E696A308]), v146 = v212, (v147 & 1) != 0))
      {
        sub_1A8244F40(*(v113 + 56) + 32 * v145, &v260);

        v148 = v213;
        v149 = v215;
        v150 = swift_dynamicCast();
        v151 = v214;
        (*(v214 + 56))(v148, v150 ^ 1u, 1, v149);
        if ((*(v151 + 48))(v148, 1, v149) != 1)
        {
          (*(v151 + 32))(v146, v148, v149);
          v251 = objc_opt_self();
          v177 = sub_1A84E565C();
          if (qword_1EB2E5990 != -1)
          {
            swift_once();
          }

          v178 = v206;
          v179 = sub_1A824431C(v206, qword_1EB2E7FC8);
          swift_beginAccess();
          v180 = v205;
          v181 = v204;
          (*(v205 + 16))(v204, v179, v178);
          v182 = sub_1A84E576C();
          (*(v180 + 8))(v181, v178);
          v183 = [v251 stringFromDate:v177 timeZone:v182 formatOptions:1907];

          v251 = sub_1A84E5DBC();
          v102 = v184;

          (*(v151 + 8))(v212, v149);
          (*(v250 + 8))(v221, v255);
          goto LABEL_53;
        }

        (*(v144 + 8))(v221, v255);
      }

      else
      {

        (*(v144 + 8))(v221, v255);
        v148 = v213;
        (*(v214 + 56))(v213, 1, 1, v215);
      }

      sub_1A824B2D4(v148, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    v102 = v258;
LABEL_53:
    LODWORD(v255) = a26;
    v153 = v231;
    *v94 = v229;
    v94[1] = v153;
    v94[2] = v230;
    if (v252)
    {

      v154 = v252;
      v155 = v220;
    }

    else
    {

      v155 = 0;
      v154 = 0xE000000000000000;
    }

    v156 = v248;
    v94[3] = v155;
    v94[4] = v154;
    v157 = v247;
    v94[5] = v246;
    v94[6] = v157;
    v158 = v228;
    v159 = (v94 + v228[14]);
    *v159 = v251;
    v159[1] = v102;
    *(v94 + v158[15]) = v249;
    v160 = v156 != 1;
    v94[7] = v244;
    v94[8] = v103;
    v161 = v223;
    v94[9] = v243;
    v94[10] = v161;
    v162 = v254;
    sub_1A8243D74(v254, v94 + v158[10], &qword_1EB2E7068, &unk_1A8501EB0);
    *(v94 + v158[11]) = v160;
    *(v94 + v158[12]) = v245 & 1;
    *(v94 + v158[13]) = a18 & 1;
    *(v94 + v158[18]) = a19 & 1;
    *(v94 + v158[16]) = a20 & 1;
    *(v94 + v158[17]) = a21 & 1;
    v163 = (v94 + v158[19]);
    v164 = v235;
    *v163 = a22;
    v163[1] = v164;
    v165 = (v94 + v158[20]);
    v166 = v236;
    *v165 = a24;
    v165[1] = v166;
    v167 = v238;
    sub_1A8243D74(v238, v94 + v158[21], &qword_1EB2E7348, &qword_1A8504400);
    *(v94 + v158[22]) = v255 & 1;
    v168 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v169 = *(*(v168 - 8) + 8);
    v169(v94 + v232, v168);
    v259 = v237;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v169(v94 + v233, v168);
    v259 = v239;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v169(v94 + v234, v168);
    v259 = v240;
    sub_1A84E5B8C();
    sub_1A84E594C();
    sub_1A824B2D4(v224, &qword_1EB2E7348, &qword_1A8504400);
    sub_1A824B2D4(v167, &qword_1EB2E7348, &qword_1A8504400);
    sub_1A824B2D4(v162, &qword_1EB2E7068, &unk_1A8501EB0);
    *(v94 + v158[23]) = v226;
    sub_1A844F2F0(v94, v242, type metadata accessor for ImportExport.Attachment);
    result = sub_1A824B2D4(v241, &qword_1EB2E7068, &unk_1A8501EB0);
    v171 = *MEMORY[0x1E69E9840];
    return result;
  }

  v98 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v99 = sub_1A84E5D8C();

  v100 = [v98 fileExistsAtPath_];

  if (v100)
  {
    (*(v91 + 8))(v97, v89);
    v92 = v251;
    goto LABEL_8;
  }

  v260 = 0;
  v261 = 0xE000000000000000;
  sub_1A84E646C();

  v260 = 0xD00000000000002ELL;
  v261 = 0x80000001A8530150;
  v185 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v185);

  v186 = v260;
  v187 = v261;
  sub_1A8412484();
  v188 = v91;
  v189 = swift_allocError();
  *v190 = v186;
  *(v190 + 8) = v187;
  *(v190 + 16) = 1;
  swift_willThrow();

  (*(v188 + 8))(v97, v89);
  v191 = v189;
  sub_1A84E5C8C();
  v192 = v189;
  v193 = sub_1A84E5C7C();
  v194 = sub_1A84E619C();

  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    *v195 = 138412290;
    v197 = v189;
    v198 = _swift_stdlib_bridgeErrorToNSError();
    *(v195 + 4) = v198;
    *v196 = v198;
    _os_log_impl(&dword_1A823F000, v193, v194, "Failed to create an attachment with error: %@", v195, 0xCu);
    sub_1A824B2D4(v196, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v196, -1, -1);
    MEMORY[0x1AC56D3F0](v195, -1, -1);
  }

  (*(v216 + 8))(v203, v217);
  swift_willThrow();
  sub_1A824B2D4(v238, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v254, &qword_1EB2E7068, &unk_1A8501EB0);

  v199 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v200 = *(*(v199 - 8) + 8);
  v201 = v243;
  v200(v243 + v232, v199);
  v200(&v201[v233], v199);
  v200(&v201[v234], v199);
  v260 = 0;
  v261 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002CLL, 0x80000001A8531950);
  v259 = v189;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531980);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

uint64_t ImportExport.Attachment.init(id:sequenceID:messageID:fileName:contentType:mimeType:createdDate:totalBytes:filePath:isRelativeFilePath:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:downloadError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, unsigned int (*a24)(uint64_t, uint64_t, uint64_t), unsigned int (*a25)(uint64_t, uint64_t, uint64_t), uint64_t a26)
{
  v239 = a8;
  v245 = a7;
  v242 = a6;
  v232 = a5;
  v229 = a4;
  v228 = a3;
  v231 = a2;
  v225 = a1;
  v236 = a9;
  v234 = a25;
  v233 = a23;
  v240 = a17;
  v246 = a16;
  v247 = a14;
  v243 = a12;
  v238 = a10;
  v252 = *MEMORY[0x1E69E9840];
  v26 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v201 = &v194 - v28;
  v203 = sub_1A84E5C5C();
  v202 = *(v203 - 8);
  v29 = *(v202 + 64);
  v30 = MEMORY[0x1EEE9AC00](v203);
  v200 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v194 - v32;
  v198 = sub_1A84E577C();
  v197 = *(v198 - 8);
  v33 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v196 = &v194 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v204 = &v194 - v37;
  v206 = sub_1A84E56DC();
  v205 = *(v206 - 1);
  v38 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v212 = &v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1A84E5C9C();
  v208 = *(v209 - 8);
  v40 = *(v208 + 64);
  v41 = MEMORY[0x1EEE9AC00](v209);
  v217 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v211 = &v194 - v43;
  v241 = sub_1A84E558C();
  v44 = *(v241 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v241);
  v207 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v213 = &v194 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v218 = &v194 - v50;
  v221 = sub_1A84E531C();
  v220 = *(v221 - 8);
  v51 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v219 = &v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A84E5B9C();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v56 = &v194 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for ImportExport.Attachment();
  v58 = *(*(v57 - 1) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v194 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v194 - v63;
  v65 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x1EEE9AC00](v65 - 8);
  v215 = &v194 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v71 = &v194 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v194 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v194 - v75;
  sub_1A8243D74(v246, &v194 - v75, &qword_1EB2E7068, &unk_1A8501EB0);
  sub_1A8243D74(v76, v74, &qword_1EB2E7068, &unk_1A8501EB0);
  v237 = v44;
  v77 = *(v44 + 48);
  v222 = v76;
  v78 = v241;
  v244 = v77(v76, 1, v241);
  v79 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v80 = *(*(v79 - 8) + 56);
  v235 = v64;
  v80(v64, 1, 1, v79);
  v81 = v57[24];
  v250 = 0;
  sub_1A84E5B8C();
  v82 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v226 = v81;
  sub_1A84E594C();
  v83 = v57[25];
  v250 = 0;
  sub_1A84E5B8C();
  v227 = v83;
  sub_1A84E594C();
  v224 = v57;
  v84 = v57[26];
  v250 = 0;
  sub_1A84E5B8C();
  v230 = v84;
  v223 = v56;
  v85 = v78;
  sub_1A84E594C();
  v250 = v242;
  v251 = v245;
  v86 = v219;
  sub_1A84E530C();
  sub_1A840D3B0();
  v242 = sub_1A84E636C();
  v88 = v87;
  (*(v220 + 8))(v86, v221);

  v248 = v74;
  sub_1A8243D74(v74, v71, &qword_1EB2E7068, &unk_1A8501EB0);
  v214 = v77;
  if (v77(v71, 1, v78) == 1)
  {
    sub_1A824B2D4(v71, &qword_1EB2E7068, &unk_1A8501EB0);
    v89 = v248;
    v90 = v237;
    goto LABEL_9;
  }

  v90 = v237;
  v91 = v218;
  (*(v237 + 32))(v218, v71, v78);
  if (v244 == 1)
  {
    (*(v90 + 8))(v91, v78);
    v89 = v248;
    goto LABEL_9;
  }

  v89 = v248;
  if (v240)
  {
    (*(v90 + 8))(v91, v78);
    goto LABEL_9;
  }

  v210 = v88;
  v92 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v93 = sub_1A84E5D8C();

  v94 = [v92 fileExistsAtPath_];

  if (v94)
  {
    (*(v90 + 8))(v91, v78);
    v88 = v210;
LABEL_9:
    v221 = v82;
    v220 = a26;
    v95 = a24;
    v96 = a22;
    LODWORD(v219) = a21;
    LODWORD(v218) = a20;
    LODWORD(v217) = a19;
    v216 = a18;
    v97 = a15;
    v245 = a13;
    v237 = a11;
    v98 = v215;
    sub_1A8243D74(v89, v215, &qword_1EB2E7068, &unk_1A8501EB0);
    if (v214(v98, 1, v78) == 1)
    {
      sub_1A824B2D4(v98, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v99 = v243;
      v100 = v238;
LABEL_60:
      v153 = v244 == 1;
      v154 = v231;
      *v60 = v225;
      v60[1] = v154;
      v155 = v229;
      v60[2] = v228;
      v60[3] = v155;
      v156 = v242;
      v60[4] = v232;
      v60[5] = v156;
      v60[6] = v88;
      v157 = v224;
      v158 = (v60 + v224[14]);
      v159 = v247;
      *v158 = v245;
      v158[1] = v159;
      *(v60 + v157[15]) = v97;
      v160 = !v153;
      v60[7] = v239;
      v60[8] = v100;
      v60[9] = v237;
      v60[10] = v99;
      sub_1A8243D74(v89, v60 + v157[10], &qword_1EB2E7068, &unk_1A8501EB0);
      *(v60 + v157[11]) = v160;
      *(v60 + v157[12]) = v240 & 1;
      *(v60 + v157[13]) = v216 & 1;
      *(v60 + v157[18]) = v217 & 1;
      *(v60 + v157[16]) = v218 & 1;
      *(v60 + v157[17]) = v219 & 1;
      v161 = (v60 + v157[19]);
      v162 = v233;
      *v161 = v96;
      v161[1] = v162;
      v163 = (v60 + v157[20]);
      v164 = v234;
      *v163 = v95;
      v163[1] = v164;
      v165 = v235;
      sub_1A8243D74(v235, v60 + v157[21], &qword_1EB2E7348, &qword_1A8504400);
      *(v60 + v157[22]) = 0;
      v166 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v167 = *(*(v166 - 8) + 8);
      v167(v60 + v226, v166);
      v249 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v167(v60 + v227, v166);
      v249 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v167(v60 + v230, v166);
      v249 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      sub_1A824B2D4(v220, &qword_1EB2E7348, &qword_1A8504400);
      sub_1A824B2D4(v246, &qword_1EB2E7068, &unk_1A8501EB0);
      sub_1A824B2D4(v165, &qword_1EB2E7348, &qword_1A8504400);
      sub_1A824B2D4(v248, &qword_1EB2E7068, &unk_1A8501EB0);
      *(v60 + v157[23]) = 0;
      sub_1A844F2F0(v60, v236, type metadata accessor for ImportExport.Attachment);
      result = sub_1A824B2D4(v222, &qword_1EB2E7068, &unk_1A8501EB0);
      v169 = *MEMORY[0x1E69E9840];
      return result;
    }

    v101 = v213;
    (*(v90 + 32))(v213, v98, v85);
    v102 = HIBYTE(v247) & 0xF;
    v100 = v238;
    v215 = a15;
    if (a15 && v243)
    {
      v103 = v245 & 0xFFFFFFFFFFFFLL;
      if ((v247 & 0x2000000000000000) != 0)
      {
        v103 = HIBYTE(v247) & 0xF;
      }

      if (v103)
      {
        v104 = HIBYTE(v238) & 0xF;
        if ((v238 & 0x2000000000000000) == 0)
        {
          v104 = v239 & 0xFFFFFFFFFFFFLL;
        }

        if (v104)
        {
          v105 = v243;
          (*(v90 + 8))(v101, v85);
          v99 = v105;
          v89 = v248;
          v97 = v215;
          goto LABEL_60;
        }
      }
    }

    v195 = a22;
    v214 = a24;
    v210 = v88;
    v106 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v107 = sub_1A84E5D8C();

    v250 = 0;
    v108 = [v106 attributesOfItemAtPath:v107 error:&v250];

    v109 = v250;
    if (v108)
    {
      v110 = v90;
      type metadata accessor for FileAttributeKey(0);
      sub_1A844F1D0();
      v111 = sub_1A84E5D3C();
      v112 = v109;

      v88 = v210;
      v113 = HIBYTE(v210) & 0xF;
      if ((v210 & 0x2000000000000000) == 0)
      {
        v113 = v242 & 0xFFFFFFFFFFFFLL;
      }

      if (!v113)
      {

        v242 = sub_1A84E550C();
        v88 = v114;
      }

      v115 = v212;
      if (*(v111 + 16))
      {
        v116 = v88;
        v117 = sub_1A8490560(*MEMORY[0x1E696A3D8]);
        if (v118)
        {
          sub_1A8244F40(*(v111 + 56) + 32 * v117, &v250);
          if (swift_dynamicCast())
          {
            sub_1A84E5C4C();
            v119 = v201;
            sub_1A84E5C2C();
            v120 = v202;
            v121 = v203;
            if ((*(v202 + 48))(v119, 1, v203) == 1)
            {
              sub_1A824B2D4(v119, &qword_1EB2E7340, &qword_1A8501EF8);
              v88 = v116;
              v115 = v212;
            }

            else
            {
              v137 = *(v120 + 32);
              v138 = v199;
              v137(v199, v119, v121);
              v139 = HIBYTE(v100) & 0xF;
              if ((v100 & 0x2000000000000000) == 0)
              {
                v139 = v239 & 0xFFFFFFFFFFFFLL;
              }

              v115 = v212;
              if (!v139)
              {
                v239 = sub_1A84E5C1C();
                v141 = v140;

                v100 = v141;
              }

              v88 = v116;
              v142 = v243;
              if (!v243)
              {
                v88 = v116;
                v237 = sub_1A84E5C3C();
              }

              v243 = v142;
              (*(v202 + 8))(v138, v203);
            }
          }
        }
      }

      v97 = v215;
      if (!v215)
      {
        if (*(v111 + 16) && (v143 = sub_1A8490560(*MEMORY[0x1E696A3B8]), v115 = v212, (v144 & 1) != 0) && (sub_1A8244F40(*(v111 + 56) + 32 * v143, &v250), swift_dynamicCast()))
        {
          v97 = v249;
        }

        else
        {
          v97 = 0;
        }
      }

      v145 = v245 & 0xFFFFFFFFFFFFLL;
      if ((v247 & 0x2000000000000000) != 0)
      {
        v145 = v102;
      }

      if (v145)
      {
        (*(v110 + 8))(v213, v241);

        v89 = v248;
LABEL_58:
        v95 = v214;
        v96 = v195;
        goto LABEL_59;
      }

      v89 = v248;
      if (!*(v111 + 16) || (v146 = *MEMORY[0x1E696A308], v210 = v88, v147 = sub_1A8490560(v146), v88 = v210, (v148 & 1) == 0))
      {

        (*(v110 + 8))(v213, v241);
        v149 = v204;
        (*(v205 + 56))(v204, 1, 1, v206);
        goto LABEL_57;
      }

      v215 = v97;
      sub_1A8244F40(*(v111 + 56) + 32 * v147, &v250);

      v149 = v204;
      v150 = v206;
      v151 = swift_dynamicCast();
      v152 = v205;
      (*(v205 + 56))(v149, v151 ^ 1u, 1, v150);
      if ((*(v152 + 48))(v149, 1, v150) == 1)
      {
        (*(v110 + 8))(v213, v241);
        v97 = v215;
LABEL_57:
        sub_1A824B2D4(v149, &qword_1EB2E6F48, &unk_1A8501F00);
        goto LABEL_58;
      }

      (*(v152 + 32))(v115, v149, v150);
      v245 = objc_opt_self();
      v170 = sub_1A84E565C();
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v171 = v198;
      v172 = sub_1A824431C(v198, qword_1EB2E7FC8);
      swift_beginAccess();
      v173 = v197;
      v174 = v196;
      (*(v197 + 16))(v196, v172, v171);
      v175 = sub_1A84E576C();
      (*(v173 + 8))(v174, v171);
      v176 = [v245 stringFromDate:v170 timeZone:v175 formatOptions:1907];

      v245 = sub_1A84E5DBC();
      v178 = v177;

      (*(v152 + 8))(v212, v206);
      (*(v110 + 8))(v213, v241);
      v247 = v178;
    }

    else
    {
      v122 = v250;
      v123 = sub_1A84E548C();

      v212 = v123;
      swift_willThrow();
      v124 = v211;
      sub_1A84E5C8C();
      v125 = v207;
      (*(v90 + 16))(v207, v101, v85);
      v126 = sub_1A84E5C7C();
      v127 = v90;
      v128 = sub_1A84E619C();
      if (!os_log_type_enabled(v126, v128))
      {

        v136 = *(v90 + 8);
        v136(v125, v85);
        (*(v208 + 8))(v124, v209);
        v136(v213, v85);
        v89 = v248;
        v88 = v210;
        v95 = v214;
        v96 = v195;
        v97 = v215;
        goto LABEL_11;
      }

      v129 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v250 = v206;
      *v129 = 136315138;
      v130 = sub_1A84E555C();
      v132 = v131;
      v133 = *(v127 + 8);
      v133(v125, v85);
      v134 = sub_1A82446BC(v130, v132, &v250);
      v89 = v248;

      *(v129 + 4) = v134;
      _os_log_impl(&dword_1A823F000, v126, v128, "Failed to get file attributes for file ath path: %s", v129, 0xCu);
      v135 = v206;
      sub_1A8244788(v206);
      v100 = v238;
      MEMORY[0x1AC56D3F0](v135, -1, -1);
      MEMORY[0x1AC56D3F0](v129, -1, -1);

      (*(v208 + 8))(v211, v209);
      v133(v213, v85);
    }

    v88 = v210;
    v95 = v214;
    v96 = v195;
    v97 = v215;
LABEL_59:
    v99 = v243;
    goto LABEL_60;
  }

  v250 = 0;
  v251 = 0xE000000000000000;
  sub_1A84E646C();

  v250 = 0xD00000000000002ELL;
  v251 = 0x80000001A8530150;
  v179 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v179);

  v180 = v250;
  v181 = v251;
  sub_1A8412484();
  v182 = swift_allocError();
  *v183 = v180;
  *(v183 + 8) = v181;
  *(v183 + 16) = 1;
  swift_willThrow();

  (*(v90 + 8))(v91, v78);
  v184 = v182;
  sub_1A84E5C8C();
  v185 = v182;
  v186 = sub_1A84E5C7C();
  v187 = sub_1A84E619C();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *v188 = 138412290;
    v190 = v182;
    v191 = _swift_stdlib_bridgeErrorToNSError();
    *(v188 + 4) = v191;
    *v189 = v191;
    _os_log_impl(&dword_1A823F000, v186, v187, "Failed to create an attachment with error: %@", v188, 0xCu);
    sub_1A824B2D4(v189, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v189, -1, -1);
    MEMORY[0x1AC56D3F0](v188, -1, -1);
  }

  (*(v208 + 8))(v217, v209);
  swift_willThrow();
  sub_1A824B2D4(v235, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v248, &qword_1EB2E7068, &unk_1A8501EB0);

  v192 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v193 = *(*(v192 - 8) + 8);
  v193(v60 + v226, v192);
  v193(v60 + v227, v192);
  v193(v60 + v230, v192);
  v250 = 0;
  v251 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002CLL, 0x80000001A8531950);
  v249 = v182;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531980);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

void ImportExport.Participant.init(sequenceID:withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:)(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  LOBYTE(v39) = 0;

  ImportExport.ServiceType.init(for:default:)(a2, &v39, v47);
  v7 = v47[0];
  v8 = sub_1A84E5D8C();
  v9 = [v8 _stripFZIDPrefix];

  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = sub_1A84E5DBC();
  v12 = v11;

  v13 = sub_1A84E5D8C();
  v14 = [v13 _stripFZIDPrefix];

  if (!v14)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v15 = sub_1A84E5DBC();
  v17 = v16;

  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A85013E0;
  *(v18 + 32) = a1;
  *(v18 + 40) = v10;
  *(v18 + 48) = v12;
  *(v18 + 56) = v15;
  *(v18 + 64) = v17;
  *(v18 + 72) = v7;
  *(v18 + 80) = a3;
  *(v18 + 88) = a5;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  v19 = *(v18 + 32);
  v20 = *(v18 + 48);
  v21 = *(v18 + 80);
  v41 = *(v18 + 64);
  v42 = v21;
  v39 = v19;
  v40 = v20;
  v22 = *(v18 + 96);
  v23 = *(v18 + 112);
  v24 = *(v18 + 144);
  v45 = *(v18 + 128);
  v46 = v24;
  v43 = v22;
  v44 = v23;
  v25 = *(&v42 + 1);
  v37 = v42;
  v35 = BYTE8(v41);
  v26 = v41;
  v33 = *(&v40 + 1);
  v28 = *(&v39 + 1);
  v27 = v40;
  v29 = v39;
  sub_1A840243C(&v39, v38);

  swift_bridgeObjectRetain_n();

  sub_1A841E128(&v39);
  v38[0] = 1;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v30 = 0xE300000000000000;
        v31 = 5456722;
      }

      else
      {
        v30 = 0xEC000000534D5365;
        v31 = 0x74696C6C65746153;
      }
    }

    else if (v7 == 4)
    {
      v31 = 5459283;
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE800000000000000;
      v31 = 0x656D695465636146;
    }
  }

  else if (v7 > 1)
  {
    if (v7 == 2)
    {
      v30 = 0xE800000000000000;
    }

    else
    {
      v30 = 0xEC0000006574694CLL;
    }

    v31 = 0x6567617373654D69;
  }

  else if (v7)
  {
    v30 = 0xE300000000000000;
    v31 = 7958113;
  }

  else
  {
    v30 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
  }

  v32 = v38[0];
  *a4 = v28;
  *(a4 + 8) = v27;
  *(a4 + 16) = v18;
  *(a4 + 24) = 0;
  *(a4 + 32) = v29;
  *(a4 + 40) = v28;
  *(a4 + 48) = v27;
  *(a4 + 56) = v33;
  *(a4 + 64) = v26;
  *(a4 + 72) = v35;
  *(a4 + 80) = v37;
  *(a4 + 88) = v25;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 96) = 0;
  *(a4 + 120) = v32;
  *(a4 + 128) = v31;
  *(a4 + 136) = v30;
}

uint64_t ImportExport.MessageBatch.init(withConversation:messages:downloadableAttachmentBatch:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for ImportExport.Message();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImportExport.Conversation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_1A844F228(a1, v15, type metadata accessor for ImportExport.Conversation);
  v16 = a2[2];
  v37 = a3;

  if (v16)
  {
    v18 = 0;
    while (v18 < a2[2])
    {
      sub_1A844F228(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v11, type metadata accessor for ImportExport.Message);
      v20 = *(v11 + 4);
      v19 = *(v11 + 5);
      v21 = *(v15 + 1);
      v22 = *(v15 + 2);
      if (v20 != v21 || v19 != v22)
      {
        v24 = *(v11 + 4);
        v25 = *(v11 + 5);
        v26 = *(v15 + 1);
        v27 = *(v15 + 2);
        if ((sub_1A84E67AC() & 1) == 0)
        {

          v39 = 0;
          v40 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
          MEMORY[0x1AC56A990](v20, v19);
          MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
          MEMORY[0x1AC56A990](v21, v22);
          v28 = v39;
          v29 = v40;
          sub_1A8407E40();
          v30 = swift_allocError();
          *v31 = v28;
          v31[1] = v29;
          swift_willThrow();

          sub_1A844F290(v15, type metadata accessor for ImportExport.Conversation);
          sub_1A844F290(v11, type metadata accessor for ImportExport.Message);
          v39 = 0;
          v40 = 0xE000000000000000;
          a2 = &v39;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A85319A0);
          v38 = v30;
          sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
          sub_1A84E652C();
          MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85319C0);
          sub_1A84E653C();
          __break(1u);
          goto LABEL_11;
        }
      }

      ++v18;
      result = sub_1A844F290(v11, type metadata accessor for ImportExport.Message);
      if (v16 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v32 = v37;

    sub_1A844F290(v35, type metadata accessor for ImportExport.Conversation);
    v33 = v36;
    sub_1A844F2F0(v15, v36, type metadata accessor for ImportExport.Conversation);
    result = type metadata accessor for ImportExport.MessageBatch();
    *(v33 + *(result + 20)) = a2;
    *(v33 + *(result + 24)) = v32;
  }

  return result;
}

uint64_t ImportExport.MessageBatch.init(withConversation:messages:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ImportExport.Conversation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A844F228(a1, v9, type metadata accessor for ImportExport.Conversation);
  ImportExport.MessageBatch.init(withConversation:messages:downloadableAttachmentBatch:)(v9, a2, 0, a3);
  return sub_1A844F290(a1, type metadata accessor for ImportExport.Conversation);
}

uint64_t ImportExport.MessagePart.init(id:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = sub_1A84E5B9C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = *a5;
  v32 = *(a6 + 32);
  v53 = *a19;
  v33 = type metadata accessor for ImportExport.MessagePart();
  sub_1A8243D74(a22, a9 + v33[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v34 = v33[21];
  *&v54[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = v31;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a23;
  *(a9 + 48) = a24;
  v35 = (a9 + v33[19]);
  *v35 = a3;
  v35[1] = a4;
  v36 = *(a9 + 72);

  v37 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v37;
  *(a9 + 96) = v32;
  v38 = *(a9 + 120);
  v39 = *(a9 + 152);
  v54[2] = *(a9 + 136);
  v54[3] = v39;
  v54[4] = *(a9 + 168);
  v54[0] = *(a9 + 104);
  v54[1] = v38;
  sub_1A824B2D4(v54, &qword_1EB2E6F58, &qword_1A8501388);
  v40 = *a7;
  *(a9 + 120) = a7[1];
  v41 = a7[3];
  *(a9 + 136) = a7[2];
  *(a9 + 152) = v41;
  *(a9 + 168) = a7[4];
  *(a9 + 104) = v40;
  v42 = (a9 + v33[12]);
  *v42 = a8;
  v42[1] = a10;
  v43 = (a9 + v33[13]);
  *v43 = a11;
  v43[1] = a12;
  v44 = (a9 + v33[14]);
  *v44 = a13;
  v44[1] = a14;
  v45 = (a9 + v33[15]);
  *v45 = a15;
  v45[1] = a16;
  sub_1A83F5918(a11, a12);
  v46 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v46 - 8) + 8))(a9 + v34, v46);
  v55 = a17;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a11, a12);
  result = sub_1A824B2D4(a22, &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v33[16]) = a18;
  *(a9 + v33[17]) = v53;
  *(a9 + v33[18]) = a20;
  *(a9 + v33[20]) = a21;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0xE000000000000000;
  *(a9 + 56) = a25;
  return result;
}

uint64_t ImportExport.MessagePart.init(id:parentMessageID:rangeInParent:sequenceID:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char *a24, char a25, uint64_t a26, uint64_t a27)
{
  v28 = sub_1A84E5B9C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = *a11;
  v46 = *(a12 + 32);
  v52 = *a24;
  v31 = type metadata accessor for ImportExport.MessagePart();
  sub_1A8243D74(a27, a9 + v31[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v32 = v31[21];
  *&v56[0] = 0;
  sub_1A83F5918(a16, a17);
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = v30;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  v33 = (a9 + v31[19]);
  *v33 = a8;
  v33[1] = a10;
  v34 = *(a9 + 72);

  v35 = *(a12 + 16);
  *(a9 + 64) = *a12;
  *(a9 + 80) = v35;
  *(a9 + 96) = v46;
  v36 = *(a9 + 120);
  v37 = *(a9 + 152);
  v56[2] = *(a9 + 136);
  v56[3] = v37;
  v56[4] = *(a9 + 168);
  v56[0] = *(a9 + 104);
  v56[1] = v36;
  sub_1A824B2D4(v56, &qword_1EB2E6F58, &qword_1A8501388);
  v38 = *a13;
  *(a9 + 120) = a13[1];
  v39 = a13[3];
  *(a9 + 136) = a13[2];
  *(a9 + 152) = v39;
  *(a9 + 168) = a13[4];
  *(a9 + 104) = v38;
  v40 = (a9 + v31[12]);
  *v40 = a14;
  v40[1] = a15;
  v41 = (a9 + v31[13]);
  *v41 = a16;
  v41[1] = a17;
  v42 = (a9 + v31[14]);
  *v42 = a18;
  v42[1] = a19;
  v43 = (a9 + v31[15]);
  *v43 = a20;
  v43[1] = a21;
  sub_1A83F5918(a16, a17);
  v44 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v44 - 8) + 8))(a9 + v32, v44);
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a16, a17);
  sub_1A83F5980(a16, a17);
  result = sub_1A824B2D4(a27, &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v31[16]) = a23;
  *(a9 + v31[17]) = v52;
  *(a9 + v31[18]) = a25;
  *(a9 + v31[20]) = a26;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 56) = a7;
  return result;
}

unint64_t sub_1A844F1D0()
{
  result = qword_1EB2E5B48;
  if (!qword_1EB2E5B48)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E5B48);
  }

  return result;
}

uint64_t sub_1A844F228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A844F290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A844F2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ExportIterator.__allocating_init(withExportOptions:exporter:conversations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = a2;
  sub_1A8452E34(a1, v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = a3;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  return v9;
}

uint64_t ImportExport.ExportIterator.init(withExportOptions:exporter:conversations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = a2;
  sub_1A8452E34(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = a3;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  return v3;
}

uint64_t sub_1A844F4DC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(type metadata accessor for ImportExport.ExportOptions() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = *(*(sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for ImportExport.Conversation();
  v2[26] = v5;
  v6 = *(v5 - 8);
  v2[27] = v6;
  v7 = *(v6 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = *(*(sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = type metadata accessor for ImportExport.MessageBatch();
  v2[32] = v9;
  v10 = *(v9 - 8);
  v2[33] = v10;
  v11 = *(v10 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A844F6B8, 0, 0);
}

uint64_t sub_1A844F6B8()
{
  v1 = v0[23];
  if (sub_1A84514A0())
  {
    v2 = *(v0[23] + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
    swift_beginAccess();
    v0[36] = *(v2 + 24);

    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_1A844F8D8;

    return ImportExport.Exporter.fetchStartingCountsForExport()((v0 + 2));
  }

  else
  {
    v5 = v0[23];
    v6 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
    v0[39] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
    v7 = *(v5 + v6);
    v0[40] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[41] = v8;
      *v8 = v0;
      v8[1] = sub_1A844FB98;
      v9 = v0[31];

      return sub_1A84988C0(v9);
    }

    else
    {
      v10 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
      v0[43] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
      v0[44] = v10;
      v0[45] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
      swift_beginAccess();
      v11 = swift_task_alloc();
      v0[46] = v11;
      *v11 = v0;
      v11[1] = sub_1A844FEE0;
      v12 = v0[25];
      v13 = v0[23];

      return sub_1A84509FC(v12);
    }
  }
}

uint64_t sub_1A844F8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);

    v5 = sub_1A84506CC;
  }

  else
  {
    v5 = sub_1A844F9F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A844F9F4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  swift_beginAccess();
  *(v1 + 32) = v14;
  *(v1 + 48) = v13;
  *(v1 + 64) = v2;

  v3 = *(v0 + 184);
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  *(v0 + 312) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  v5 = *(v3 + v4);
  *(v0 + 320) = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 328) = v6;
    *v6 = v0;
    v6[1] = sub_1A844FB98;
    v7 = *(v0 + 248);

    return sub_1A84988C0(v7);
  }

  else
  {
    v9 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
    *(v0 + 344) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
    *(v0 + 352) = v9;
    *(v0 + 360) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
    swift_beginAccess();
    v10 = swift_task_alloc();
    *(v0 + 368) = v10;
    *v10 = v0;
    v10[1] = sub_1A844FEE0;
    v11 = *(v0 + 200);
    v12 = *(v0 + 184);

    return sub_1A84509FC(v11);
  }
}

uint64_t sub_1A844FB98()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1A845078C;
  }

  else
  {
    v3 = sub_1A844FCAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A844FCAC()
{
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[39];
    v6 = v0[23];
    sub_1A824B2D4(v0[31], &qword_1EB2E7CF8, &qword_1A8509020);
    v7 = *(v6 + v5);
    *(v6 + v5) = 0;

    v8 = v0[23];
    v9 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
    v0[43] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
    v0[44] = v9;
    v0[45] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
    swift_beginAccess();
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_1A844FEE0;
    v11 = v0[25];
    v12 = v0[23];

    return sub_1A84509FC(v11);
  }

  else
  {
    v14 = v0[35];
    v15 = v0[32];
    v16 = v0[33];
    v17 = v0[22];
    sub_1A8452E34(v0[31], v14, type metadata accessor for ImportExport.MessageBatch);
    sub_1A8452E34(v14, v17, type metadata accessor for ImportExport.MessageBatch);
    (*(v16 + 56))(v17, 0, 1, v15);
    v19 = v0[34];
    v18 = v0[35];
    v21 = v0[30];
    v20 = v0[31];
    v23 = v0[28];
    v22 = v0[29];
    v25 = v0[24];
    v24 = v0[25];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1A844FEE0()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1A8450854;
  }

  else
  {
    v3 = sub_1A844FFF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A844FFF4()
{
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    v2 = v0[32];
    v3 = v0[33];
    v5 = v0[22];
    v4 = v0[23];
    sub_1A824B2D4(v1, &qword_1EB2E7CC0, &qword_1A8505E90);
    sub_1A8451A60();
    (*(v3 + 56))(v5, 1, 1, v2);
    v7 = v0[34];
    v6 = v0[35];
    v9 = v0[30];
    v8 = v0[31];
    v11 = v0[28];
    v10 = v0[29];
    v13 = v0[24];
    v12 = v0[25];

    v14 = v0[1];

    return v14();
  }

  v17 = v0[44];
  v16 = v0[45];
  v18 = v0[43];
  v19 = v0[33];
  v45 = v0[32];
  v21 = v0[28];
  v20 = v0[29];
  v23 = v0[23];
  v22 = v0[24];
  sub_1A8452E34(v1, v20, type metadata accessor for ImportExport.Conversation);
  *(v23 + v18) = *v20;
  sub_1A8451EF0(v20, v21, type metadata accessor for ImportExport.Conversation);
  sub_1A8451EF0(v23 + v17, v22, type metadata accessor for ImportExport.ExportOptions);
  v24 = *(v23 + v16);
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = type metadata accessor for ImportExport.ConversationExporter();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v0[48] = v29;
  v30 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v31 = *(v19 + 56);
  v0[49] = v31;
  v0[50] = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31(v29 + v30, 1, 1, v45);
  *(v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  *(v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  sub_1A8451EF0(v21, v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A8451EF0(v22, v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  sub_1A8452DD4(v22, type metadata accessor for ImportExport.ExportOptions);
  *(v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v25;
  *(v29 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = -1;
  result = swift_beginAccess();
  v32 = *(v25 + 72);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = v0[28];
  *(v25 + 72) = v34;
  v36 = *(*(v35 + 240) + 16);
  v37 = *(v25 + 96);
  v33 = __OFADD__(v37, v36);
  v38 = v37 + v36;
  if (v33)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v39 = v0[39];
  v40 = v0[28];
  v41 = v0[23];
  *(v25 + 96) = v38;
  sub_1A8452DD4(v40, type metadata accessor for ImportExport.Conversation);
  v42 = *(v41 + v39);
  *(v41 + v39) = v29;

  v43 = swift_task_alloc();
  v0[51] = v43;
  *v43 = v0;
  v43[1] = sub_1A84503BC;
  v44 = v0[30];

  return sub_1A84988C0(v44);
}

uint64_t sub_1A84503BC()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1A8450914;
  }

  else
  {
    v3 = sub_1A84504D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A84504D0()
{
  v1 = v0[48];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];

  sub_1A8452DD4(v5, type metadata accessor for ImportExport.Conversation);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1A824B2D4(v0[30], &qword_1EB2E7CF8, &qword_1A8509020);
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_1A844FEE0;
    v7 = v0[25];
    v8 = v0[23];

    return sub_1A84509FC(v7);
  }

  else
  {
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[34];
    v13 = v0[32];
    v14 = v0[22];
    sub_1A8452E34(v0[30], v12, type metadata accessor for ImportExport.MessageBatch);
    sub_1A8452E34(v12, v14, type metadata accessor for ImportExport.MessageBatch);
    v11(v14, 0, 1, v13);
    v16 = v0[34];
    v15 = v0[35];
    v18 = v0[30];
    v17 = v0[31];
    v20 = v0[28];
    v19 = v0[29];
    v22 = v0[24];
    v21 = v0[25];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1A84506CC()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A845078C()
{
  v1 = v0[40];

  v2 = v0[42];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[24];
  v9 = v0[25];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A8450854()
{
  v1 = v0[47];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[24];
  v8 = v0[25];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A8450914()
{
  v1 = v0[48];
  v2 = v0[29];

  sub_1A8452DD4(v2, type metadata accessor for ImportExport.Conversation);
  v3 = v0[52];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[24];
  v10 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A84509FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_1A84E5C9C();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for ImportExport.Conversation();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8450B80, 0, 0);
}

void sub_1A8450B80()
{
  v42 = v3;
  v5 = v3[6];
  v6 = *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex;
      v9 = *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex);
      if (v9 >= v7)
      {
        (*(v3[13] + 56))(v3[5], 1, 1, v3[12]);
        v24 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else
      {
        if (v9 < 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = v3[16];
        v11 = v3[17];
        v12 = v3[11];
        sub_1A8451EF0(v6 + ((*(v3[13] + 80) + 32) & ~*(v3[13] + 80)) + *(v3[13] + 72) * v9, v11, type metadata accessor for ImportExport.Conversation);
        sub_1A84E5C8C();
        sub_1A8451EF0(v11, v10, type metadata accessor for ImportExport.Conversation);
        v9 = sub_1A84E5C7C();
        v13 = sub_1A84E617C();
        v14 = os_log_type_enabled(v9, v13);
        v1 = v3[16];
        v2 = v3[11];
        v4 = v3[8];
        v0 = v3[9];
        if (v14)
        {
          v40 = v3[8];
          v15 = swift_slowAlloc();
          v38 = v13;
          v16 = swift_slowAlloc();
          v41 = v16;
          *v15 = 136315138;
          v39 = v2;
          v17 = ImportExport.Conversation.description.getter();
          v19 = v18;
          sub_1A8452DD4(v1, type metadata accessor for ImportExport.Conversation);
          v20 = sub_1A82446BC(v17, v19, &v41);

          *(v15 + 4) = v20;
          _os_log_impl(&dword_1A823F000, v9, v38, "Returning conversation for conversation list for export: %s", v15, 0xCu);
          sub_1A8244788(v16);
          MEMORY[0x1AC56D3F0](v16, -1, -1);
          MEMORY[0x1AC56D3F0](v15, -1, -1);

          (*(v0 + 8))(v39, v40);
          goto LABEL_14;
        }
      }

      sub_1A8452DD4(v1, type metadata accessor for ImportExport.Conversation);
      (*(v0 + 8))(v2, v4);
LABEL_14:
      v25 = v3[12];
      v26 = v3[13];
      v27 = v3[5];
      sub_1A8452E34(v3[17], v27, type metadata accessor for ImportExport.Conversation);
      (*(v26 + 56))(v27, 0, 1, v25);
      v28 = *(v5 + v8);
      v29 = __OFADD__(v28, 1);
      v24 = v28 + 1;
      if (!v29)
      {
LABEL_15:
        *(v5 + v8) = v24;
        v31 = v3[16];
        v30 = v3[17];
        v33 = v3[14];
        v32 = v3[15];
        v35 = v3[10];
        v34 = v3[11];
        v36 = v3[7];

        v37 = v3[1];

        v37();
        return;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  v22 = swift_task_alloc();
  v3[18] = v22;
  *v22 = v3;
  v22[1] = sub_1A8450F80;
  v23 = v3[7];

  static ImportExport.Conversation.fetchNextConversation(startingAtRowIDGreaterThan:)(v23, v5 + v21);
}

uint64_t sub_1A8450F80()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A84513DC;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1A845109C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A845109C()
{
  v35 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_1A824B2D4(v3, &qword_1EB2E7CC0, &qword_1A8505E90);
    (*(v2 + 56))(v4, 1, 1, v1);
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[10];
    sub_1A8452E34(v3, v5, type metadata accessor for ImportExport.Conversation);
    sub_1A84E5C8C();
    sub_1A8451EF0(v5, v6, type metadata accessor for ImportExport.Conversation);
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E617C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[8];
    if (v10)
    {
      v33 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315138;
      v17 = ImportExport.Conversation.description.getter();
      v19 = v18;
      sub_1A8452DD4(v11, type metadata accessor for ImportExport.Conversation);
      v20 = sub_1A82446BC(v17, v19, &v34);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1A823F000, v8, v9, "Fetched conversation for export: %s", v15, 0xCu);
      sub_1A8244788(v16);
      MEMORY[0x1AC56D3F0](v16, -1, -1);
      MEMORY[0x1AC56D3F0](v15, -1, -1);

      (*(v12 + 8))(v33, v14);
    }

    else
    {

      sub_1A8452DD4(v11, type metadata accessor for ImportExport.Conversation);
      (*(v12 + 8))(v13, v14);
    }

    v21 = v0[12];
    v22 = v0[13];
    v23 = v0[5];
    sub_1A8452E34(v0[15], v23, type metadata accessor for ImportExport.Conversation);
    (*(v22 + 56))(v23, 0, 1, v21);
  }

  v25 = v0[16];
  v24 = v0[17];
  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1A84513DC()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  swift_endAccess();

  v8 = v0[1];
  v9 = v0[19];

  return v8();
}

uint64_t sub_1A84514A0()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.ExportOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A84E5C9C();
  v49 = *(v50 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
  swift_beginAccess();
  v18 = *(v17 + 24);
  swift_beginAccess();
  v19 = *(v18 + 24);
  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v19 + v20, v16);
  v21 = sub_1A84E56DC();
  v51 = *(*(v21 - 8) + 48);
  LODWORD(v20) = v51(v16, 1, v21);
  v22 = v16;
  v23 = v7;
  sub_1A824B2D4(v22, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v20 != 1)
  {
    v39 = *(v17 + 24);
    swift_beginAccess();
    v40 = *(v39 + 24);
    v41 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    swift_beginAccess();
    sub_1A843ED60(v40 + v41, v14);
    if (v51(v14, 1, v21) == 1)
    {
      sub_1A824B2D4(v14, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    else
    {

      sub_1A824B2D4(v14, &qword_1EB2E6F48, &unk_1A8501F00);
      v42 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
      swift_beginAccess();
      v43 = v40 + v42;
      v44 = v47;
      sub_1A843ED60(v43, v47);

      v45 = v51(v44, 1, v21);
      sub_1A824B2D4(v44, &qword_1EB2E6F48, &unk_1A8501F00);
      if (v45 != 1)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

LABEL_2:
  v24 = *(v17 + 24);
  swift_beginAccess();
  v25 = *(v24 + 24);

  ImportExport.Timer.start()();

  v26 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  *(v1 + v26) = -1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  sub_1A84E5C8C();

  v27 = sub_1A84E5C7C();
  v28 = sub_1A84E617C();

  v29 = v23;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = v1;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315138;
    v33 = v48;
    sub_1A8451EF0(v30 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, v48, type metadata accessor for ImportExport.ExportOptions);
    v34 = ImportExport.ExportOptions.description.getter();
    v36 = v35;
    sub_1A8452DD4(v33, type metadata accessor for ImportExport.ExportOptions);
    v37 = sub_1A82446BC(v34, v36, &v52);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1A823F000, v27, v28, "Starting Export with options: %s...", v31, 0xCu);
    sub_1A8244788(v32);
    MEMORY[0x1AC56D3F0](v32, -1, -1);
    MEMORY[0x1AC56D3F0](v31, -1, -1);
  }

  (*(v49 + 8))(v29, v50);
  return 1;
}

uint64_t sub_1A8451A60()
{
  v50 = sub_1A84E5C9C();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v50);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v35 = v0;
  v8 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_beginAccess();
  v10 = *(v9 + 24);

  ImportExport.Timer.stop()();

  v40 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  sub_1A84E5C8C();
  v11 = sub_1A84E5C7C();
  v12 = sub_1A84E617C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A823F000, v11, v12, "Export completed:", v13, 2u);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
  }

  v14 = *(v1 + 8);
  v41 = v1 + 8;
  v39 = v14;
  v14(v7, v50);
  v15 = *(v8 + 24);
  v46 = 0xD000000000000011;
  *&v47 = 0x80000001A852F290;
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v49 = 0;

  ImportExport.ExportStatistics.format(report:)(&v46);
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v16 = sub_1A8471734(0);

  v36 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = "ImportExport.ExportIterator";
    v20 = (v36 + 40);
    *&v17 = 136315138;
    v37 = v17;
    v38 = v5;
    do
    {
      v26 = *(v20 - 1);
      v27 = *v20;

      sub_1A84E5C8C();

      v28 = sub_1A84E5C7C();
      v29 = sub_1A84E617C();

      if (os_log_type_enabled(v28, v29))
      {
        v21 = v19;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = v23;
        *v22 = v37;
        v24 = sub_1A82446BC(v26, v27, &v46);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_1A823F000, v28, v29, "  %s", v22, 0xCu);
        sub_1A8244788(v23);
        MEMORY[0x1AC56D3F0](v23, -1, -1);
        v25 = v22;
        v19 = v21;
        v5 = v38;
        MEMORY[0x1AC56D3F0](v25, -1, -1);
      }

      else
      {
      }

      v39(v5, v50);
      v20 += 2;
      --v18;
    }

    while (v18);
  }

  v30 = v35;
  *(v35 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  v31 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  *(v30 + v31) = -1;
  v32 = *(v30 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);
  *(v30 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
}

uint64_t sub_1A8451EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8451F58()
{
  v1 = *v0;
  v2 = 0x704F74726F707865;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x726574726F707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61737265766E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8452024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84533B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A845204C(uint64_t a1)
{
  v2 = sub_1A8452E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8452088(uint64_t a1)
{
  v2 = sub_1A8452E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportIterator.deinit()
{
  sub_1A8452DD4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);

  return v0;
}

uint64_t ImportExport.ExportIterator.__deallocating_deinit()
{
  sub_1A8452DD4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84521D8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.ExportOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7D00, &qword_1A8505EB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8452E9C();
  sub_1A84E68AC();
  sub_1A8451EF0(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, v7, type metadata accessor for ImportExport.ExportOptions);
  LOBYTE(v21) = 0;
  sub_1A8452FD8(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions);
  v14 = v19[1];
  sub_1A84E672C();
  if (v14)
  {
    sub_1A8452DD4(v7, type metadata accessor for ImportExport.ExportOptions);
  }

  else
  {
    sub_1A8452DD4(v7, type metadata accessor for ImportExport.ExportOptions);
    v21 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);
    LOBYTE(v22) = 1;
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A8452F3C(&qword_1EB2E7D20, &qword_1EB2E71B0);
    sub_1A84E66BC();
    v15 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex);
    LOBYTE(v21) = 2;
    sub_1A84E670C();
    v16 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
    swift_beginAccess();
    v17 = *(v2 + v16);
    LOBYTE(v22) = 3;
    sub_1A84E673C();
    v22 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);
    v20 = 4;
    type metadata accessor for ImportExport.ConversationExporter();
    sub_1A8452FD8(&qword_1EB2E7D28, type metadata accessor for ImportExport.ConversationExporter);
    sub_1A84E66BC();
    v22 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
    v20 = 5;
    type metadata accessor for ImportExport.Exporter();
    sub_1A8452FD8(&qword_1EB2E7D30, type metadata accessor for ImportExport.Exporter);
    sub_1A84E672C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t ImportExport.ExportIterator.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ExportIterator.init(from:)(a1);
  return v5;
}

uint64_t ImportExport.ExportIterator.init(from:)(uint64_t *a1)
{
  v4 = type metadata accessor for ImportExport.ExportOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A83EA2FC(&qword_1EB2E7D38, qword_1A8505EC0);
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  v27 = v1;
  v28 = a1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  v12 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8452E9C();
  v13 = v10;
  sub_1A84E689C();
  if (v2)
  {
    v14 = v27;
    v20 = *(v27 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);

    type metadata accessor for ImportExport.ExportIterator();
    v21 = *(*v14 + 48);
    v22 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v7;
    LOBYTE(v30) = 0;
    sub_1A8452FD8(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions);
    v17 = v25;
    v16 = v26;
    v18 = v13;
    sub_1A84E666C();
    v14 = v27;
    sub_1A8452E34(v17, v27 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    v29 = 1;
    sub_1A8452F3C(&qword_1EB2E7D48, &qword_1EB2E71C8);
    sub_1A84E65FC();
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v30;
    LOBYTE(v30) = 2;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = sub_1A84E664C();
    LOBYTE(v30) = 3;
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = sub_1A84E667C();
    type metadata accessor for ImportExport.ConversationExporter();
    v29 = 4;
    sub_1A8452FD8(&qword_1EB2E7D50, type metadata accessor for ImportExport.ConversationExporter);
    sub_1A84E65FC();
    v19 = *(v14 + v11);
    *(v14 + v11) = v30;

    type metadata accessor for ImportExport.Exporter();
    v29 = 5;
    sub_1A8452FD8(&qword_1EB2E7D58, type metadata accessor for ImportExport.Exporter);
    sub_1A84E666C();
    (*(v15 + 8))(v18, v16);
    *(v14 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v30;
  }

  sub_1A8244788(v28);
  return v14;
}

uint64_t sub_1A8452B84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A844F4DC(a1);
}

uint64_t sub_1A8452C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A8452CB8, v6, v8);
}

uint64_t sub_1A8452CB8()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A844F4DC(v3);
}

uint64_t sub_1A8452D54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ImportExport.ExportIterator();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ExportIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A8452DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8452E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8452E9C()
{
  result = qword_1EB2E7D08;
  if (!qword_1EB2E7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D08);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ExportIterator()
{
  result = qword_1EB2E7D60;
  if (!qword_1EB2E7D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8452F3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A8452FD8(a2, type metadata accessor for ImportExport.Conversation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8452FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8453028()
{
  result = type metadata accessor for ImportExport.ExportOptions();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportExport.ExportIterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

unint64_t sub_1A84532AC()
{
  result = qword_1EB2E7D70;
  if (!qword_1EB2E7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D70);
  }

  return result;
}

unint64_t sub_1A8453304()
{
  result = qword_1EB2E7D78;
  if (!qword_1EB2E7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D78);
  }

  return result;
}

unint64_t sub_1A845335C()
{
  result = qword_1EB2E7D80;
  if (!qword_1EB2E7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D80);
  }

  return result;
}

uint64_t sub_1A84533B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531A10 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531A30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531A50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726574726F707865 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A84535C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1A84E684C();
  sub_1A84E5E5C();
  v7 = sub_1A84E687C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1A84E67AC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A84536B8()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF290);
  sub_1A824431C(v0, qword_1EB2FF290);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A8453724()
{
  type metadata accessor for IMServiceReachabilityControllerLiveDelegate();
  v0 = [objc_allocWithZone(IMServiceReachabilityController) initWithDelegate_];

  qword_1EB2E4720 = v0;
  return result;
}

void sub_1A84538C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v9 = sub_1A84E5FFC();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    v22 = sub_1A84E5FEC();

    v23 = [v4 reachabilityContextForChat_];
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A8454E30;
    aBlock[3] = &unk_1F1B73EB8;
    v24 = _Block_copy(aBlock);

    [v4 calculateServiceForSendingToHandles:v22 withContext:v23 completionBlock:v24];
    _Block_release(v24);

    return;
  }

  v10 = sub_1A84E654C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A83EF534(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v26 = v4;
    v11 = 0;
    v12 = aBlock[0];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1AC56AF80](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v14 ID];
      v16 = sub_1A84E5DBC();
      v18 = v17;

      aBlock[0] = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A83EF534((v19 > 1), v20 + 1, 1);
        v12 = aBlock[0];
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v10 != v11);

    v4 = v26;
    a2 = v25;
    goto LABEL_14;
  }

  __break(1u);
}

void IMServiceReachabilityController.accountsForQuerying.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMServiceReachabilityController_delegate);
  v2 = [v1 serviceNamesForSending];
  v3 = sub_1A84E5FFC();

  v29 = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = v3 + 40;
  v25 = v4 - 1;
  v27 = v3;
  v26 = v3 + 40;
  do
  {
    v7 = (v6 + 16 * v5);
    v8 = v5;
    v9 = &selRef__updateChatItemsForChatItemUpdater;
    while (1)
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
LABEL_20:

        __break(1u);
        return;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = sub_1A84E5D8C();
      v2 = [v1 v9[119]];

      if (!v2)
      {
        if (qword_1EB2E5970 != -1)
        {
          swift_once();
        }

        v16 = sub_1A84E5C9C();
        sub_1A824431C(v16, qword_1EB2FF290);

        v2 = sub_1A84E5C7C();
        v17 = sub_1A84E61AC();

        if (os_log_type_enabled(v2, v17))
        {
          v18 = swift_slowAlloc();
          v19 = v4;
          v20 = v1;
          v21 = swift_slowAlloc();
          v28 = v21;
          *v18 = 136315138;
          *(v18 + 4) = sub_1A82446BC(v11, v10, &v28);
          _os_log_impl(&dword_1A823F000, v2, v17, "Couldn't find an account for service %s but attempted to check reachability over it!", v18, 0xCu);
          sub_1A8244788(v21);
          v22 = v21;
          v1 = v20;
          v4 = v19;
          v3 = v27;
          MEMORY[0x1AC56D3F0](v22, -1, -1);
          v23 = v18;
          v9 = &selRef__updateChatItemsForChatItemUpdater;
          MEMORY[0x1AC56D3F0](v23, -1, -1);
        }

        goto LABEL_5;
      }

      v13 = [objc_opt_self() sharedInstance];
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = v13;
      v15 = [v13 accountForUniqueID_];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v8;
      v7 += 2;
      if (v4 == v8)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x1AC56AAD0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A84E601C();
    }

    v5 = v8 + 1;
    v2 = &v29;
    sub_1A84E603C();
    v6 = v26;
  }

  while (v25 != v8);
LABEL_18:
}

void IMServiceReachabilityController.calculateServiceForSending(toHandles:servicesToAccountIDs:withContext:completionBlock:)(uint64_t a1, _BYTE *a2, void *a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v132 = a1;
  v133 = a2;
  v128 = sub_1A84E570C();
  v9 = *(v128 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 shouldForceServerStatusRefresh])
  {
    v12 = [a3 chatIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() sharedRegistry];
      v15 = [v14 existingChatWithChatIdentifier_];

      if (v15)
      {
        v16 = [v15 chatStyle];
        if (v16 == [a3 chatStyle])
        {
          [v15 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  if (!*(v133 + 2) || !*(v132 + 16))
  {
    v129 = a4;
    v130 = a5;
    v73 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v74 = v133 + 64;
    v75 = 1 << v133[32];
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v133 + 8);
    v78 = (v75 + 63) >> 6;

    v79 = 0;
    v131 = v78;
    while (1)
    {
      while (1)
      {
        for (i = v79; !v77; ++i)
        {
          v79 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v79 >= v78)
          {

            v114 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v115 = sub_1A84E5D2C();

            v133 = [v114 initAsFinalResult:1 bestResult:0 resultsByAccountID:v115];

            v129(v133);
            v116 = v133;

            return;
          }

          v77 = *&v74[8 * v79];
        }

        v81 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
        v82 = (v79 << 10) | (16 * v81);
        v83 = (*(v133 + 6) + v82);
        v85 = *v83;
        v84 = v83[1];
        v86 = (*(v133 + 7) + v82);
        v87 = *v86;
        v88 = v86[1];
        v89 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v90 = sub_1A84E5D8C();

        v91 = sub_1A84E5FEC();
        v92 = [v89 finalResultForService:v90 handleIDs:v91 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (v92)
        {
          break;
        }

        v93 = sub_1A824B390(v87, v88);
        v95 = v94;

        v78 = v131;
        if (v95)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v73;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1A848EB10();
            v73 = aBlock[0];
          }

          v106 = *(v73[6] + 16 * v93 + 8);

          sub_1A8490564(v93, v73);
        }
      }

      v96 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v73;
      v97 = sub_1A824B390(v87, v88);
      v99 = v73[2];
      v100 = (v98 & 1) == 0;
      v101 = __OFADD__(v99, v100);
      v102 = v99 + v100;
      if (v101)
      {
        goto LABEL_61;
      }

      v103 = v98;
      if (v73[3] >= v102)
      {
        if (v96)
        {
          goto LABEL_50;
        }

        v110 = v97;
        sub_1A848EB10();
        v97 = v110;
        if ((v103 & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_51:
        v107 = v97;

        v73 = aBlock[0];
        v108 = *(aBlock[0] + 56);
        v109 = *(v108 + 8 * v107);
        *(v108 + 8 * v107) = v92;

        v78 = v131;
      }

      else
      {
        sub_1A848AE34(v102, v96);
        v97 = sub_1A824B390(v87, v88);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_63;
        }

LABEL_50:
        if (v103)
        {
          goto LABEL_51;
        }

LABEL_53:
        v73 = aBlock[0];
        *(aBlock[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v111 = (v73[6] + 16 * v97);
        *v111 = v87;
        v111[1] = v88;
        *(v73[7] + 8 * v97) = v92;

        v112 = v73[2];
        v101 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v101)
        {
          goto LABEL_62;
        }

        v73[2] = v113;
        v78 = v131;
      }
    }
  }

  v17 = swift_allocObject();
  v131 = v9;
  v18 = v17;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v19 = *&v5[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v5;
  v20[4] = a4;
  v20[5] = a5;
  swift_unknownObjectRetain();

  v21 = v5;

  v119 = v19;
  v22 = sub_1A8454EA4(v19, sub_1A8454E98, v20);
  swift_beginAccess();
  v118 = v18;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  v24 = [v23 taskID];
  v25 = sub_1A84E5DBC();
  v27 = v26;

  v28 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v29 = *&v21[v28];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *&v21[v28];
  *&v21[v28] = 0x8000000000000000;
  v126 = v23;
  sub_1A848D668(v23, v25, v27, v30);

  v124 = v21;
  *&v21[v28] = v136;
  swift_endAccess();
  v31 = v133 + 64;
  v32 = 1 << v133[32];
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v133 + 8);
  v35 = (v32 + 63) >> 6;
  v121 = (v131 + 8);
  v120 = v135;

  v36 = 0;
  v123 = v31;
  v122 = v35;
  v125 = a3;
  while (v34)
  {
LABEL_18:
    v38 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v39 = (*(v133 + 6) + v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = (*(v133 + 7) + v38);
    v43 = v42[1];
    v130 = *v42;

    v131 = v43;

    v44 = v127;
    sub_1A84E56FC();
    v45 = sub_1A84E56EC();
    v47 = v46;
    (*v121)(v44, v128);
    v48 = [a3 preconditionsIgnoredForServices];
    if (!v48)
    {
      goto LABEL_29;
    }

    v49 = v48;
    v50 = sub_1A84E611C();

    if (!*(v50 + 16) || (v51 = *(v50 + 40), sub_1A84E684C(), sub_1A84E5E5C(), v52 = sub_1A84E687C(), v53 = -1 << *(v50 + 32), v54 = v52 & ~v53, ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v58 = sub_1A84E5D8C();
      v59 = [v119 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v55 = ~v53;
    while (1)
    {
      v56 = (*(v50 + 48) + 16 * v54);
      v57 = *v56 == v41 && v56[1] == v40;
      if (v57 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v54 = (v54 + 1) & v55;
      if (((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v34 &= v34 - 1;
    v129 = sub_1A84E5D8C();
    v60 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v61 = sub_1A84E5FEC();

    v62 = swift_allocObject();
    v62[2] = v132;
    v62[3] = v45;
    v62[4] = v47;
    v62[5] = v41;
    v63 = v130;
    v64 = v131;
    v62[6] = v40;
    v62[7] = v63;
    v65 = v125;
    v62[8] = v64;
    v62[9] = v65;
    v66 = v124;
    v67 = v126;
    v62[10] = v124;
    v62[11] = v67;
    v135[2] = sub_1A8454F78;
    v135[3] = v62;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v135[0] = sub_1A824B720;
    v135[1] = &unk_1F1B73D50;
    v68 = _Block_copy(aBlock);
    v69 = v66;
    v70 = v67;
    a3 = v65;

    v71 = v65;

    v72 = v129;
    [v70 submitRequestWithID:v129 serviceName:v60 preconditions:v61 clearanceHandler:v68];
    _Block_release(v68);

    v31 = v123;
    v35 = v122;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v117 = v126;
      [v126 allRequestsSubmitted];

      return;
    }

    v34 = *&v31[8 * v37];
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_18;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_1A84E67EC();
  __break(1u);
}

void __swiftcall IMServiceReachabilityController.init()(IMServiceReachabilityController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A8454C00(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if ([a1 isFinal])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong taskID];
      v9 = sub_1A84E5DBC();
      v11 = v10;

      swift_beginAccess();
      v12 = sub_1A84608F8(v9, v11);
      swift_endAccess();
    }
  }

  return a4(a1);
}

void sub_1A8454D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_allocWithZone(MEMORY[0x1E69A8258]);
  v12 = sub_1A84E5FEC();
  v13 = sub_1A84E5D8C();
  v14 = sub_1A84E5D8C();
  v15 = sub_1A84E5D8C();
  v16 = [v11 initWithHandleIDs:v12 requestID:v13 serviceName:v14 accountID:v15 context:a8];

  [*(a9 + OBJC_IVAR___IMServiceReachabilityController_delegate) calculateReachabilityWithRequest:v16 responseHandler:a10];
}

void sub_1A8454E30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1A8454EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A8454E30;
  v10[3] = &unk_1F1B73EE0;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithDelegate:a1 updateHandler:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  return v8;
}

void sub_1A8454F90(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  v138 = a1;
  v139 = a2;
  v132 = sub_1A84E570C();
  v8 = *(v132 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ([a3 shouldForceServerStatusRefresh])
  {
    v11 = [a3 chatIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() sharedRegistry];
      v14 = [v13 existingChatWithChatIdentifier_];

      if (v14)
      {
        v15 = [v14 chatStyle];
        if (v15 == [a3 chatStyle])
        {
          [v14 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v16 = v139[2];
  v123 = a5;
  if (!v16 || !*(v138 + 16))
  {
    v73 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v74 = (v139 + 8);
    v75 = 1 << *(v139 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & v139[8];
    v78 = (v75 + 63) >> 6;

    v79 = 0;
    v136 = v78;
    for (i = v74; ; v74 = i)
    {
      while (1)
      {
        v80 = v79;
        if (v77)
        {
LABEL_36:
          v79 = v80;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v79 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            __break(1u);
            goto LABEL_68;
          }

          if (v79 >= v78)
          {

            v114 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v115 = sub_1A84E5D2C();

            v139 = [v114 initAsFinalResult:1 bestResult:0 resultsByAccountID:v115];

            v116 = [v139 bestResult];
            if (v116)
            {
              v117 = v116;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v119 = Strong;
                [Strong setSupportsEncryption_];
              }

              else
              {
              }

LABEL_66:
            }

            else
            {

              v120 = v139;
            }

            return;
          }

          v77 = *&v74[8 * v79];
          ++v80;
        }

        while (!v77);
LABEL_40:
        v81 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
        v82 = (v79 << 10) | (16 * v81);
        v83 = (v139[6] + v82);
        v85 = *v83;
        v84 = v83[1];
        v86 = (v139[7] + v82);
        v87 = *v86;
        v88 = v86[1];
        v89 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v90 = sub_1A84E5D8C();

        v91 = sub_1A84E5FEC();
        v92 = [v89 finalResultForService:v90 handleIDs:v91 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v92)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        v97 = sub_1A824B390(v87, v88);
        v99 = v73[2];
        v100 = (v98 & 1) == 0;
        v101 = __OFADD__(v99, v100);
        v102 = v99 + v100;
        if (v101)
        {
          goto LABEL_69;
        }

        v103 = v98;
        if (v73[3] < v102)
        {
          sub_1A848AE34(v102, isUniquelyReferenced_nonNull_native);
          v97 = sub_1A824B390(v87, v88);
          if ((v103 & 1) != (v104 & 1))
          {
            goto LABEL_71;
          }

LABEL_52:
          if (v103)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v110 = v97;
        sub_1A848EB10();
        v97 = v110;
        if (v103)
        {
LABEL_53:
          v107 = v97;

          v73 = aBlock[0];
          v108 = *(aBlock[0] + 56);
          v109 = *(v108 + 8 * v107);
          *(v108 + 8 * v107) = v92;

          goto LABEL_57;
        }

LABEL_55:
        v73 = aBlock[0];
        *(aBlock[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v111 = (v73[6] + 16 * v97);
        *v111 = v87;
        v111[1] = v88;
        *(v73[7] + 8 * v97) = v92;

        v112 = v73[2];
        v101 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v101)
        {
          goto LABEL_70;
        }

        v73[2] = v113;
LABEL_57:
        v78 = v136;
        v74 = i;
      }

      v93 = sub_1A824B390(v87, v88);
      v95 = v94;

      v78 = v136;
      if ((v95 & 1) == 0)
      {

        v80 = v79;
        v74 = i;
        if (v77)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v105 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v73;
      if ((v105 & 1) == 0)
      {
        sub_1A848EB10();
        v73 = aBlock[0];
      }

      v106 = *(v73[6] + 16 * v93 + 8);

      sub_1A8490564(v93, v73);
    }
  }

  v17 = swift_allocObject();
  i = v8;
  v18 = v17;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v19 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a4;
  v20[4] = sub_1A84579D4;
  v20[5] = a5;
  swift_unknownObjectRetain();

  v21 = a4;

  v122 = v19;
  v22 = sub_1A8454EA4(v19, sub_1A8457AD8, v20);
  swift_beginAccess();
  v121[1] = v18;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  v24 = [v23 taskID];
  v25 = sub_1A84E5DBC();
  v27 = v26;

  v28 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v29 = *&v21[v28];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *&v21[v28];
  *&v21[v28] = 0x8000000000000000;
  v130 = v23;
  sub_1A848D668(v23, v25, v27, v30);

  v128 = v21;
  *&v21[v28] = v142;
  swift_endAccess();
  v31 = (v139 + 8);
  v32 = 1 << *(v139 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v139[8];
  v35 = (v32 + 63) >> 6;
  v125 = (i + 8);
  v124 = v141;

  v36 = 0;
  v127 = v31;
  v126 = v35;
  v129 = a3;
  while (v34)
  {
LABEL_18:
    v38 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v39 = (v139[6] + v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = (v139[7] + v38);
    v43 = *v42;
    v44 = v42[1];

    v45 = v131;
    sub_1A84E56FC();
    v135 = sub_1A84E56EC();
    v136 = v46;
    (*v125)(v45, v132);
    v47 = [a3 preconditionsIgnoredForServices];
    i = v44;
    v134 = v43;
    if (!v47)
    {
      goto LABEL_29;
    }

    v48 = v47;
    v49 = sub_1A84E611C();

    if (!*(v49 + 16) || (v50 = *(v49 + 40), sub_1A84E684C(), sub_1A84E5E5C(), v51 = sub_1A84E687C(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v57 = sub_1A84E5D8C();
      v58 = [v122 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v54 = ~v52;
    while (1)
    {
      v55 = (*(v49 + 48) + 16 * v53);
      v56 = *v55 == v41 && v55[1] == v40;
      if (v56 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v53 = (v53 + 1) & v54;
      if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v34 &= v34 - 1;
    v60 = v135;
    v59 = v136;
    v133 = sub_1A84E5D8C();
    v61 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v62 = sub_1A84E5FEC();

    v63 = swift_allocObject();
    v63[2] = v138;
    v63[3] = v60;
    v63[4] = v59;
    v63[5] = v41;
    v64 = v134;
    v63[6] = v40;
    v63[7] = v64;
    v65 = v129;
    v63[8] = i;
    v63[9] = v65;
    v66 = v128;
    v67 = v130;
    v63[10] = v128;
    v63[11] = v67;
    v141[2] = sub_1A8457ADC;
    v141[3] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v141[0] = sub_1A824B720;
    v141[1] = &unk_1F1B73F58;
    v68 = _Block_copy(aBlock);
    v69 = v66;
    v70 = v67;
    a3 = v65;

    v71 = v65;

    v72 = v133;
    [v70 submitRequestWithID:v133 serviceName:v61 preconditions:v62 clearanceHandler:v68];
    _Block_release(v68);

    v31 = v127;
    v35 = v126;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v117 = v130;
      [v130 allRequestsSubmitted];

      goto LABEL_66;
    }

    v34 = *&v31[8 * v37];
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_18;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

  sub_1A84E67EC();
  __break(1u);
}

id sub_1A8455BD8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69A8240]) init];
  v3 = [a1 chatIdentifier];
  [v2 setChatIdentifier_];

  [v2 setChatStyle_];
  v4 = [a1 lastAddressedHandleID];
  [v2 setSenderLastAddressedHandle_];

  v5 = [a1 lastAddressedSIMID];
  [v2 setSenderLastAddressedSIMID_];

  v6 = [a1 account];
  if (!v6 || (v7 = v6, v8 = [v6 serviceName], v7, !v8))
  {
    v8 = 0;
  }

  [v2 setLastUsedServiceName_];

  v9 = [a1 _lastMessage];
  if (!v9 || (v10 = v9, v11 = [v9 service], v10, !v11))
  {
    v11 = 0;
  }

  [v2 setServiceOfLastMessage_];

  [v2 setConversationWasDowngraded_];
  [v2 setHasConversationHistory_];
  [v2 setShouldForceServerStatusRefresh_];
  [v2 setForceMMS_];
  [v2 setRequestPersistentMenu_];
  [v2 setRequestBrandInfo_];
  return v2;
}

void sub_1A8455E70(uint64_t a1, void *a2, void *a3, char *a4, const void *a5)
{
  v135 = a1;
  v136 = a2;
  v129 = sub_1A84E570C();
  v8 = *(v129 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  _Block_copy(a5);
  if ([a3 shouldForceServerStatusRefresh])
  {
    v12 = [a3 chatIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() sharedRegistry];
      v15 = [v14 existingChatWithChatIdentifier_];

      if (v15)
      {
        v16 = [v15 chatStyle];
        if (v16 == [a3 chatStyle])
        {
          [v15 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v17 = v136[2];
  v120 = v11;
  if (!v17 || !*(v135 + 16))
  {
    v132 = a5;
    v73 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v74 = (v136 + 8);
    v75 = 1 << *(v136 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & v136[8];
    v78 = (v75 + 63) >> 6;

    v79 = 0;
    v133 = v78;
    for (i = v74; ; v74 = i)
    {
      while (1)
      {
        v80 = v79;
        if (v77)
        {
LABEL_36:
          v79 = v80;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v79 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v79 >= v78)
          {

            v114 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v115 = sub_1A84E5D2C();

            v136 = [v114 initAsFinalResult:1 bestResult:0 resultsByAccountID:v115];

            (v132)[2](v132, v136);

            v116 = v136;

            return;
          }

          v77 = *&v74[8 * v79];
          ++v80;
        }

        while (!v77);
LABEL_40:
        v81 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
        v82 = (v79 << 10) | (16 * v81);
        v83 = (v136[6] + v82);
        v85 = *v83;
        v84 = v83[1];
        v86 = (v136[7] + v82);
        v87 = *v86;
        v88 = v86[1];
        v89 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v90 = sub_1A84E5D8C();

        v91 = sub_1A84E5FEC();
        v92 = [v89 finalResultForService:v90 handleIDs:v91 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v92)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        v97 = sub_1A824B390(v87, v88);
        v99 = v73[2];
        v100 = (v98 & 1) == 0;
        v101 = __OFADD__(v99, v100);
        v102 = v99 + v100;
        if (v101)
        {
          goto LABEL_64;
        }

        v103 = v98;
        if (v73[3] < v102)
        {
          sub_1A848AE34(v102, isUniquelyReferenced_nonNull_native);
          v97 = sub_1A824B390(v87, v88);
          if ((v103 & 1) != (v104 & 1))
          {
            goto LABEL_66;
          }

LABEL_52:
          if (v103)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v110 = v97;
        sub_1A848EB10();
        v97 = v110;
        if (v103)
        {
LABEL_53:
          v107 = v97;

          v73 = aBlock[0];
          v108 = *(aBlock[0] + 56);
          v109 = *(v108 + 8 * v107);
          *(v108 + 8 * v107) = v92;

          goto LABEL_57;
        }

LABEL_55:
        v73 = aBlock[0];
        *(aBlock[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v111 = (v73[6] + 16 * v97);
        *v111 = v87;
        v111[1] = v88;
        *(v73[7] + 8 * v97) = v92;

        v112 = v73[2];
        v101 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v101)
        {
          goto LABEL_65;
        }

        v73[2] = v113;
LABEL_57:
        v78 = v133;
        v74 = i;
      }

      v93 = sub_1A824B390(v87, v88);
      v95 = v94;

      v78 = v133;
      if ((v95 & 1) == 0)
      {

        v80 = v79;
        v74 = i;
        if (v77)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v105 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v73;
      if ((v105 & 1) == 0)
      {
        sub_1A848EB10();
        v73 = aBlock[0];
      }

      v106 = *(v73[6] + 16 * v93 + 8);

      sub_1A8490564(v93, v73);
    }
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  i = v8;
  v19 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a4;
  v20[4] = sub_1A84579C0;
  v20[5] = v11;
  swift_unknownObjectRetain();

  v21 = a4;

  v119 = v19;
  v22 = sub_1A8454EA4(v19, sub_1A8457AD8, v20);
  swift_beginAccess();
  v118[1] = v18;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  v24 = [v23 taskID];
  v25 = sub_1A84E5DBC();
  v27 = v26;

  v28 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v29 = *&v21[v28];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *&v21[v28];
  *&v21[v28] = 0x8000000000000000;
  v127 = v23;
  sub_1A848D668(v23, v25, v27, v30);

  v125 = v21;
  *&v21[v28] = v139;
  swift_endAccess();
  v31 = (v136 + 8);
  v32 = 1 << *(v136 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v136[8];
  v35 = (v32 + 63) >> 6;
  v122 = (i + 8);
  v121 = v138;

  v36 = 0;
  v124 = v31;
  v123 = v35;
  v126 = a3;
  while (v34)
  {
LABEL_18:
    v38 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v39 = (v136[6] + v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = (v136[7] + v38);
    v43 = *v42;
    v44 = v42[1];

    v45 = v128;
    sub_1A84E56FC();
    v132 = sub_1A84E56EC();
    v133 = v46;
    (*v122)(v45, v129);
    v47 = [a3 preconditionsIgnoredForServices];
    i = v44;
    v131 = v43;
    if (!v47)
    {
      goto LABEL_29;
    }

    v48 = v47;
    v49 = sub_1A84E611C();

    if (!*(v49 + 16) || (v50 = *(v49 + 40), sub_1A84E684C(), sub_1A84E5E5C(), v51 = sub_1A84E687C(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v57 = sub_1A84E5D8C();
      v58 = [v119 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v54 = ~v52;
    while (1)
    {
      v55 = (*(v49 + 48) + 16 * v53);
      v56 = *v55 == v41 && v55[1] == v40;
      if (v56 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v53 = (v53 + 1) & v54;
      if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v34 &= v34 - 1;
    v60 = v132;
    v59 = v133;
    v130 = sub_1A84E5D8C();
    v61 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v62 = sub_1A84E5FEC();

    v63 = swift_allocObject();
    v63[2] = v135;
    v63[3] = v60;
    v63[4] = v59;
    v63[5] = v41;
    v64 = v131;
    v63[6] = v40;
    v63[7] = v64;
    v65 = v126;
    v63[8] = i;
    v63[9] = v65;
    v66 = v125;
    v67 = v127;
    v63[10] = v125;
    v63[11] = v67;
    v138[2] = sub_1A8457ADC;
    v138[3] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v138[0] = sub_1A824B720;
    v138[1] = &unk_1F1B73E68;
    v68 = _Block_copy(aBlock);
    v69 = v66;
    v70 = v67;
    a3 = v65;

    v71 = v65;

    v72 = v130;
    [v70 submitRequestWithID:v130 serviceName:v61 preconditions:v62 clearanceHandler:v68];
    _Block_release(v68);

    v31 = v124;
    v35 = v123;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v117 = v127;
      [v127 allRequestsSubmitted];

      return;
    }

    v34 = *&v31[8 * v37];
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_18;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  _Block_release(v132);
  sub_1A84E67EC();
  __break(1u);
}

void sub_1A8456A54(uint64_t a1, void *a2, char *a3, void *aBlock)
{
  _Block_copy(aBlock);
  v46 = a3;
  IMServiceReachabilityController.accountsForQuerying.getter();
  v6 = v5;
  v7 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  if (v6 >> 62)
  {
LABEL_36:
    v48 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_1A84E654C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v48 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
LABEL_4:
        v10 = v9;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1AC56AF80](v10, v6);
          }

          else
          {
            if (v10 >= *(v48 + 16))
            {
              goto LABEL_35;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v13 = [v11 serviceName];
          if (!v13)
          {
            goto LABEL_40;
          }

          v14 = v13;
          v15 = sub_1A84E5DBC();
          v17 = v16;

          v18 = [v12 uniqueID];
          if (v18)
          {
            v22 = v18;
            v42 = sub_1A84E5DBC();
            v43 = v23;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = sub_1A824B390(v15, v17);
            v27 = v7[2];
            v28 = (v25 & 1) == 0;
            v29 = v27 + v28;
            if (__OFADD__(v27, v28))
            {
              __break(1u);
            }

            else
            {
              v30 = v25;
              if (v7[3] < v29)
              {
                sub_1A848BF7C(v29, isUniquelyReferenced_nonNull_native);
                v31 = sub_1A824B390(v15, v17);
                if ((v30 & 1) == (v32 & 1))
                {
                  v26 = v31;
                  if ((v30 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

LABEL_26:

                  v35 = (v7[7] + 16 * v26);
                  v36 = v35[1];
                  *v35 = v42;
                  v35[1] = v43;

                  if (v9 != v8)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_31;
                }

LABEL_41:
                _Block_release(aBlock);
                _Block_release(aBlock);
                sub_1A84E67EC();
                __break(1u);
                return;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                if (v25)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                sub_1A848F2D8();
                if (v30)
                {
                  goto LABEL_26;
                }
              }

LABEL_29:
              v7[(v26 >> 6) + 8] |= 1 << v26;
              v37 = (v7[6] + 16 * v26);
              *v37 = v15;
              v37[1] = v17;
              v38 = (v7[7] + 16 * v26);
              *v38 = v42;
              v38[1] = v43;

              v39 = v7[2];
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (!v40)
              {
                v7[2] = v41;
                if (v9 != v8)
                {
                  goto LABEL_4;
                }

                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_40:
            _Block_release(aBlock);
            _Block_release(aBlock);
            __break(1u);
            goto LABEL_41;
          }

          v19 = sub_1A824B390(v15, v17);
          v21 = v20;

          if (v21)
          {
            break;
          }

          ++v10;
          if (v9 == v8)
          {
            goto LABEL_31;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A848F2D8();
        }

        v33 = *(v7[6] + 16 * v19 + 8);

        v34 = *(v7[7] + 16 * v19 + 8);

        sub_1A848D064(v19, v7);
      }

      while (v9 != v8);
    }
  }

LABEL_31:

  _Block_copy(aBlock);
  sub_1A8455E70(a1, v7, a2, v46, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_1A8456DFC(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  v135 = a1;
  v136 = a2;
  v129 = sub_1A84E570C();
  v8 = *(v129 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ([a3 shouldForceServerStatusRefresh])
  {
    v11 = [a3 chatIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() sharedRegistry];
      v14 = [v13 existingChatWithChatIdentifier_];

      if (v14)
      {
        v15 = [v14 chatStyle];
        if (v15 == [a3 chatStyle])
        {
          [v14 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v16 = v136[2];
  v120 = a5;
  if (!v16 || !*(v135 + 16))
  {
    v73 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v74 = (v136 + 8);
    v75 = 1 << *(v136 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & v136[8];
    v78 = (v75 + 63) >> 6;

    v79 = 0;
    v133 = v78;
    for (i = v74; ; v74 = i)
    {
      while (1)
      {
        v80 = v79;
        if (v77)
        {
LABEL_36:
          v79 = v80;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v79 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v79 >= v78)
          {

            v114 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v115 = sub_1A84E5D2C();

            v136 = [v114 initAsFinalResult:1 bestResult:0 resultsByAccountID:v115];

            sub_1A8488DF8(v136);

            v116 = v136;

            return;
          }

          v77 = *&v74[8 * v79];
          ++v80;
        }

        while (!v77);
LABEL_40:
        v81 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
        v82 = (v79 << 10) | (16 * v81);
        v83 = (v136[6] + v82);
        v85 = *v83;
        v84 = v83[1];
        v86 = (v136[7] + v82);
        v87 = *v86;
        v88 = v86[1];
        v89 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v90 = sub_1A84E5D8C();

        v91 = sub_1A84E5FEC();
        v92 = [v89 finalResultForService:v90 handleIDs:v91 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v92)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v73;
        v97 = sub_1A824B390(v87, v88);
        v99 = v73[2];
        v100 = (v98 & 1) == 0;
        v101 = __OFADD__(v99, v100);
        v102 = v99 + v100;
        if (v101)
        {
          goto LABEL_64;
        }

        v103 = v98;
        if (v73[3] < v102)
        {
          sub_1A848AE34(v102, isUniquelyReferenced_nonNull_native);
          v97 = sub_1A824B390(v87, v88);
          if ((v103 & 1) != (v104 & 1))
          {
            goto LABEL_66;
          }

LABEL_52:
          if (v103)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v110 = v97;
        sub_1A848EB10();
        v97 = v110;
        if (v103)
        {
LABEL_53:
          v107 = v97;

          v73 = aBlock[0];
          v108 = *(aBlock[0] + 56);
          v109 = *(v108 + 8 * v107);
          *(v108 + 8 * v107) = v92;

          goto LABEL_57;
        }

LABEL_55:
        v73 = aBlock[0];
        *(aBlock[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
        v111 = (v73[6] + 16 * v97);
        *v111 = v87;
        v111[1] = v88;
        *(v73[7] + 8 * v97) = v92;

        v112 = v73[2];
        v101 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v101)
        {
          goto LABEL_65;
        }

        v73[2] = v113;
LABEL_57:
        v78 = v133;
        v74 = i;
      }

      v93 = sub_1A824B390(v87, v88);
      v95 = v94;

      v78 = v133;
      if ((v95 & 1) == 0)
      {

        v80 = v79;
        v74 = i;
        if (v77)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v105 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v73;
      if ((v105 & 1) == 0)
      {
        sub_1A848EB10();
        v73 = aBlock[0];
      }

      v106 = *(v73[6] + 16 * v93 + 8);

      sub_1A8490564(v93, v73);
    }
  }

  v17 = swift_allocObject();
  i = v8;
  v18 = v17;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v19 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a4;
  v20[4] = sub_1A84579B8;
  v20[5] = a5;
  swift_unknownObjectRetain();

  v21 = a4;

  v119 = v19;
  v22 = sub_1A8454EA4(v19, sub_1A8457AD8, v20);
  swift_beginAccess();
  v118[1] = v18;
  swift_unknownObjectWeakAssign();
  v23 = v22;
  v24 = [v23 taskID];
  v25 = sub_1A84E5DBC();
  v27 = v26;

  v28 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v29 = *&v21[v28];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *&v21[v28];
  *&v21[v28] = 0x8000000000000000;
  v127 = v23;
  sub_1A848D668(v23, v25, v27, v30);

  v125 = v21;
  *&v21[v28] = v139;
  swift_endAccess();
  v31 = (v136 + 8);
  v32 = 1 << *(v136 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v136[8];
  v35 = (v32 + 63) >> 6;
  v122 = (i + 8);
  v121 = v138;

  v36 = 0;
  v124 = v31;
  v123 = v35;
  v126 = a3;
  while (v34)
  {
LABEL_18:
    v38 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v39 = (v136[6] + v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = (v136[7] + v38);
    v43 = *v42;
    v44 = v42[1];

    v45 = v128;
    sub_1A84E56FC();
    v132 = sub_1A84E56EC();
    v133 = v46;
    (*v122)(v45, v129);
    v47 = [a3 preconditionsIgnoredForServices];
    i = v44;
    v131 = v43;
    if (!v47)
    {
      goto LABEL_29;
    }

    v48 = v47;
    v49 = sub_1A84E611C();

    if (!*(v49 + 16) || (v50 = *(v49 + 40), sub_1A84E684C(), sub_1A84E5E5C(), v51 = sub_1A84E687C(), v52 = -1 << *(v49 + 32), v53 = v51 & ~v52, ((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v57 = sub_1A84E5D8C();
      v58 = [v119 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v54 = ~v52;
    while (1)
    {
      v55 = (*(v49 + 48) + 16 * v53);
      v56 = *v55 == v41 && v55[1] == v40;
      if (v56 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v53 = (v53 + 1) & v54;
      if (((*(v49 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v34 &= v34 - 1;
    v60 = v132;
    v59 = v133;
    v130 = sub_1A84E5D8C();
    v61 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v62 = sub_1A84E5FEC();

    v63 = swift_allocObject();
    v63[2] = v135;
    v63[3] = v60;
    v63[4] = v59;
    v63[5] = v41;
    v64 = v131;
    v63[6] = v40;
    v63[7] = v64;
    v65 = v126;
    v63[8] = i;
    v63[9] = v65;
    v66 = v125;
    v67 = v127;
    v63[10] = v125;
    v63[11] = v67;
    v138[2] = sub_1A8457ADC;
    v138[3] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v138[0] = sub_1A824B720;
    v138[1] = &unk_1F1B73DC8;
    v68 = _Block_copy(aBlock);
    v69 = v66;
    v70 = v67;
    a3 = v65;

    v71 = v65;

    v72 = v130;
    [v70 submitRequestWithID:v130 serviceName:v61 preconditions:v62 clearanceHandler:v68];
    _Block_release(v68);

    v31 = v124;
    v35 = v123;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      v117 = v127;
      [v127 allRequestsSubmitted];

      return;
    }

    v34 = *&v31[8 * v37];
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_18;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  sub_1A84E67EC();
  __break(1u);
}

uint64_t sub_1A84579DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8457A24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A8457C84()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B360](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A8457CF8()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B360](v1);
  return sub_1A84E687C();
}

void ImportExport.MessageState.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x11)
  {
    v4 = 17;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B70578 + 24 * v1 + 32);
  while (v1 != 17)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF5D4(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF5D4((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  sub_1A84E5D6C();
}

unint64_t sub_1A8457F68()
{
  result = qword_1EB2E7DA0;
  if (!qword_1EB2E7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DA0);
  }

  return result;
}

unint64_t sub_1A8457FC0()
{
  result = qword_1EB2E7DA8;
  if (!qword_1EB2E7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DA8);
  }

  return result;
}

unint64_t sub_1A8458014()
{
  result = qword_1EB2E7DB0;
  if (!qword_1EB2E7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DB0);
  }

  return result;
}

unint64_t sub_1A845806C()
{
  result = qword_1EB2E7DB8;
  if (!qword_1EB2E7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DB8);
  }

  return result;
}

uint64_t sub_1A84580FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8458174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchiveManifest.conversations.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchiveManifest(0) + 20));
}

uint64_t ImportExport.ArchiveManifest.conversations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchiveManifest(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImportExport.ArchiveManifest.exportStatistics.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchiveManifest(0) + 24));
}

uint64_t ImportExport.ArchiveManifest.exportStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchiveManifest(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImportExport.ArchiveManifest.init(conversations:exportStatistics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E558C();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  result = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t ImportExport.ArchiveManifest.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ImportExport.ExportStatistics();
  swift_allocObject();
  v2 = ImportExport.ExportStatistics.init()();
  v3 = sub_1A84E558C();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  result = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  *(a1 + *(result + 24)) = v2;
  return result;
}

uint64_t ImportExport.ArchiveManifest.archivedConversationFileURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1A84580FC(v2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E7068, &unk_1A8501EB0);
    v16 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    sub_1A84E553C();
    sub_1A84E552C();
    v17 = *(v9 + 8);
    v17(v13, v8);
    v17(v15, v8);
    v16 = 0;
  }

  return (*(v9 + 56))(a1, v16, 1, v8);
}

uint64_t ImportExport.ArchiveManifest.writeToFile(withArchivingOptions:deleteIfExists:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E52BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = type metadata accessor for ImportExport.ArchivingOptions();
  v15 = a1 + *(v14 + 20);
  sub_1A84E552C();
  sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
  (*(v8 + 16))(v4, a3, v7);
  v16 = *(v8 + 56);
  v24 = v4;
  v16(v4, 0, 1, v7);
  if (qword_1EB2E59F8 != -1)
  {
    swift_once();
  }

  v17 = *(a1 + *(v14 + 24));
  sub_1A84E529C();
  sub_1A84E52CC();
  sub_1A84E553C();
  v18 = v26;
  sub_1A8462834();
  if (v18)
  {
    v19 = *(v8 + 8);
    v19(v11, v7);
    return (v19)(a3, v7);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    if (v25)
    {
      sub_1A8462A9C();
    }

    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A845AF3C(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest);
    v21 = sub_1A84E52DC();
    v23 = v22;
    sub_1A84E560C();
    return sub_1A83F5994(v21, v23);
  }
}

uint64_t static ImportExport.ArchiveManifest.read(fromFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = sub_1A84E558C();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A84E5C9C();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E526C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A84E525C();
  v15 = sub_1A84E55AC();
  if (v2)
  {

    sub_1A84E5C8C();
    v19 = v7;
    v20 = v44;
    (*(v4 + 16))(v7, a1, v44);
    v21 = v2;
    v22 = v11;
    v23 = sub_1A84E5C7C();
    v24 = sub_1A84E619C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v22;
      v27 = v19;
      v39 = v26;
      v40 = swift_slowAlloc();
      v45 = v40;
      *v25 = 136315394;
      v28 = sub_1A84E555C();
      v42 = v8;
      v30 = v29;
      (*(v4 + 8))(v27, v20);
      v31 = sub_1A82446BC(v28, v30, &v45);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      v34 = v39;
      *v39 = v33;
      _os_log_impl(&dword_1A823F000, v23, v24, "failed to read ArchiveManifest JSON from %s with error: %@", v25, 0x16u);
      sub_1A824B2D4(v34, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
      v35 = v40;
      sub_1A8244788(v40);
      MEMORY[0x1AC56D3F0](v35, -1, -1);
      MEMORY[0x1AC56D3F0](v25, -1, -1);

      (*(v43 + 8))(v41, v42);
    }

    else
    {

      (*(v4 + 8))(v7, v20);
      (*(v43 + 8))(v22, v8);
    }

    return swift_willThrow();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    v41 = v11;
    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A845AF3C(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest);
    sub_1A84E524C();
    sub_1A83F5994(v17, v18);

    v36 = v42;
    sub_1A824B2D4(v42, &qword_1EB2E7068, &unk_1A8501EB0);
    v37 = v44;
    (*(v4 + 16))(v36, a1, v44);
    return (*(v4 + 56))(v36, 0, 1, v37);
  }
}