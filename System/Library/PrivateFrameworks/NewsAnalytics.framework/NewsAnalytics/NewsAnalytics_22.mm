void sub_217CB47A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB3F78();
    v7 = a3(a1, &type metadata for FeedGroupLayoutEvent2.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CB4804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CB4868(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CB499C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A608E0();
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217CB4CA0()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217CB4D5C();
    if (v1 <= 0x3F)
    {
      sub_217D889CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217CB4D5C()
{
  if (!qword_27CBA3990)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3990);
    }
  }
}

unint64_t sub_217CB4DC0()
{
  result = qword_27CBA3998;
  if (!qword_27CBA3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3998);
  }

  return result;
}

unint64_t sub_217CB4E18()
{
  result = qword_27CBA39A0;
  if (!qword_27CBA39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39A0);
  }

  return result;
}

unint64_t sub_217CB4E70()
{
  result = qword_27CBA39A8;
  if (!qword_27CBA39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39A8);
  }

  return result;
}

uint64_t sub_217CB4EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1DF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ExposedPaywallContentData.channelIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

NewsAnalytics::ExposedPaywallContentData __swiftcall ExposedPaywallContentData.init(channelIDs:)(Swift::OpaquePointer_optional channelIDs)
{
  rawValue = channelIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.channelIDs.value._rawValue = v4;
  result.channelIDs.is_nil = v5;
  return result;
}

uint64_t sub_217CB5180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xEA00000000007344)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CB5210(uint64_t a1)
{
  v2 = sub_217CB5424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB524C(uint64_t a1)
{
  v2 = sub_217CB5424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExposedPaywallContentData.encode(to:)(void *a1)
{
  sub_217CB563C(0, &qword_2811BC5A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB5424();

  sub_217D89E7C();
  v12[1] = v9;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89C3C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CB5424()
{
  result = qword_2811BF278;
  if (!qword_2811BF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF278);
  }

  return result;
}

uint64_t ExposedPaywallContentData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217CB563C(0, &qword_27CBA39B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB5424();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CB563C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB5424();
    v7 = a3(a1, &type metadata for ExposedPaywallContentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CB56A4()
{
  result = qword_2811BF258;
  if (!qword_2811BF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF258);
  }

  return result;
}

unint64_t sub_217CB56FC()
{
  result = qword_2811BF260;
  if (!qword_2811BF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF260);
  }

  return result;
}

unint64_t sub_217CB57A4()
{
  result = qword_27CBA39B8;
  if (!qword_27CBA39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39B8);
  }

  return result;
}

unint64_t sub_217CB57FC()
{
  result = qword_2811BF268;
  if (!qword_2811BF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF268);
  }

  return result;
}

unint64_t sub_217CB5854()
{
  result = qword_2811BF270;
  if (!qword_2811BF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF270);
  }

  return result;
}

uint64_t sub_217CB5970()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA39F0);
  __swift_project_value_buffer(v0, qword_27CBA39F0);
  return sub_217D8866C();
}

uint64_t SubscriptionResultEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionResultEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 64);
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 64);
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.amsErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 68);
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.amsErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 68);
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 72);
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 72);
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 76);
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 76);
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 80);
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 80);
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.sourceUrlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 84);
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.sourceUrlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 84);
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 88);
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CB7824(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SubscriptionResultEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 88);
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionResultEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v27 - 8) + 104))(a1 + v26, v6, v27);
  v28 = v4[16];
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
  (*(*(v29 - 8) + 104))(a1 + v28, v6, v29);
  v30 = v4[17];
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v35 - 8) + 104))(a1 + v34, v6, v35);
  v36 = v4[20];
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
  (*(*(v37 - 8) + 104))(a1 + v36, v6, v37);
  v38 = v4[21];
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v42 = *(*(v41 - 8) + 104);

  return v42(a1 + v40, v6, v41);
}

uint64_t SubscriptionResultEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8);
}

uint64_t SubscriptionResultEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscriptionResultEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t SubscriptionResultEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 32);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscriptionResultEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_217B1563C(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionResultEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.subscriptionResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SubscriptionResultEvent.Model.storeKitErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t SubscriptionResultEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 60);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  return sub_217C50AA4(v4, v5, v6);
}

uint64_t SubscriptionResultEvent.Model.adReferralData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.amsErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  v4 = (v1 + *(result + 68));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t SubscriptionResultEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AE3AE8(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 76));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 80));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AE38AC(v10, &v9, &qword_27CB9F6A0);
}

uint64_t SubscriptionResultEvent.Model.sourceUrlData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217C70C5C(v4, v5);
}

uint64_t SubscriptionResultEvent.Model.recipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

__n128 SubscriptionResultEvent.Model.init(eventData:articleData:feedData:groupData:sectionData:campaignData:purchaseData:purchaseSessionData:issueData:subscriptionResultData:storeKitErrorData:userBundleSubscriptionContextData:adReferralData:amsErrorData:articleExposureContextData:tagData:puzzleData:sourceUrlData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, char *a11, char *a12, __int128 *a13, uint64_t *a14, int *a15, __int128 *a16, uint64_t *a17, _OWORD *a18, __int128 *a19, uint64_t a20)
{
  v57 = *a3;
  v56 = *(a3 + 2);
  v64 = *a5;
  v63 = *(a5 + 2);
  v62 = *(a5 + 24);
  v67 = *(a6 + 5);
  v68 = *(a6 + 4);
  v70 = a7[1];
  v71 = *a7;
  v69 = *(a7 + 16);
  v73 = *a8;
  v72 = a8[1];
  v75 = *a11;
  v76 = *a12;
  v78 = *(a13 + 4);
  v77 = *(a13 + 5);
  v79 = a14[1];
  v80 = *a14;
  v82 = *(a15 + 4);
  v83 = *a15;
  v85 = a17[1];
  v86 = *a17;
  v74 = *(a13 + 48);
  v81 = *(a16 + 4);
  v90 = *(a20 + 32);
  v24 = sub_217D8899C();
  v88 = *(a20 + 16);
  v89 = *a20;
  v87 = *a19;
  v84 = a19[1];
  v65 = a16[1];
  v66 = *a16;
  v60 = a13[1];
  v61 = *a13;
  v58 = a10[1];
  v59 = *a10;
  v54 = a6[1];
  v55 = *a6;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v26 = a9 + v25[5];
  v27 = *(a2 + 48);
  *(v26 + 32) = *(a2 + 32);
  *(v26 + 48) = v27;
  v28 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a2 + 127);
  v29 = *(a2 + 112);
  *(v26 + 96) = *(a2 + 96);
  *(v26 + 112) = v29;
  v30 = *(a2 + 80);
  *(v26 + 64) = *(a2 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v25[6];
  *v31 = v57;
  *(v31 + 16) = v56;
  v32 = (a9 + v25[7]);
  v33 = a4[7];
  v32[6] = a4[6];
  v32[7] = v33;
  v32[8] = a4[8];
  v34 = a4[3];
  v32[2] = a4[2];
  v32[3] = v34;
  v35 = a4[5];
  v32[4] = a4[4];
  v32[5] = v35;
  v36 = a4[1];
  *v32 = *a4;
  v32[1] = v36;
  v37 = a9 + v25[8];
  *v37 = v64;
  *(v37 + 16) = v63;
  *(v37 + 24) = v62;
  v38 = a9 + v25[9];
  *v38 = v55;
  *(v38 + 16) = v54;
  *(v38 + 32) = v68;
  *(v38 + 40) = v67;
  v39 = a9 + v25[10];
  *v39 = v71;
  *(v39 + 8) = v70;
  *(v39 + 16) = v69;
  v40 = (a9 + v25[11]);
  *v40 = v73;
  v40[1] = v72;
  v41 = (a9 + v25[12]);
  *v41 = v59;
  v41[1] = v58;
  *(a9 + v25[13]) = v75;
  *(a9 + v25[14]) = v76;
  v42 = a9 + v25[15];
  *v42 = v61;
  *(v42 + 16) = v60;
  *(v42 + 32) = v78;
  *(v42 + 40) = v77;
  *(v42 + 48) = v74;
  v43 = (a9 + v25[16]);
  *v43 = v80;
  v43[1] = v79;
  v44 = a9 + v25[17];
  *v44 = v83;
  *(v44 + 4) = v82;
  v45 = a9 + v25[18];
  *v45 = v66;
  *(v45 + 16) = v65;
  *(v45 + 32) = v81;
  v46 = (a9 + v25[19]);
  *v46 = v86;
  v46[1] = v85;
  v47 = (a9 + v25[20]);
  v48 = a18[4];
  v47[3] = a18[3];
  v47[4] = v48;
  v49 = a18[2];
  v47[1] = a18[1];
  v47[2] = v49;
  *v47 = *a18;
  v50 = (a9 + v25[21]);
  *v50 = v87;
  v50[1] = v84;
  v51 = a9 + v25[22];
  result = v89;
  *v51 = v89;
  *(v51 + 16) = v88;
  *(v51 + 32) = v90;
  return result;
}

uint64_t sub_217CB8C70(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x6174614464656566;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      result = 0x446E6F6974636573;
      break;
    case 5:
      result = 0x6E676961706D6163;
      break;
    case 6:
      result = 0x6573616863727570;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x7461446575737369;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0x7272656665526461;
      break;
    case 13:
      result = 0x726F727245736D61;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x61746144676174;
      break;
    case 16:
      v3 = 0x656C7A7A7570;
      goto LABEL_20;
    case 17:
      result = 0x7255656372756F73;
      break;
    case 18:
      v3 = 0x657069636572;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CB8E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CBB6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CB8ED0(uint64_t a1)
{
  v2 = sub_217CB9A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB8F0C(uint64_t a1)
{
  v2 = sub_217CB9A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CBAA44(0, &qword_27CBA3A08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v84 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB9A88();
  sub_217D89E7C();
  v145 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for SubscriptionResultEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 112);
    v143 = *(v13 + 96);
    *v144 = v15;
    v16 = *(v13 + 16);
    v17 = *(v13 + 48);
    v139 = *(v13 + 32);
    v140 = v17;
    v18 = *(v13 + 48);
    v19 = *(v13 + 80);
    v141 = *(v13 + 64);
    v142 = v19;
    v20 = *(v13 + 16);
    v138[0] = *v13;
    v138[1] = v20;
    v21 = *(v13 + 112);
    v136 = v143;
    v137[0] = v21;
    v132 = v139;
    v133 = v18;
    v135 = v14;
    v134 = v141;
    *&v144[15] = *(v13 + 127);
    *(v137 + 15) = *(v13 + 127);
    v130 = v138[0];
    v131 = v16;
    v129 = 1;
    sub_217AE38AC(v138, v115, &qword_2811C7DB8);
    sub_217ACF52C();
    sub_217D89C3C();
    v127[6] = v136;
    *v128 = v137[0];
    *&v128[15] = *(v137 + 15);
    v127[2] = v132;
    v127[3] = v133;
    v127[4] = v134;
    v127[5] = v135;
    v127[0] = v130;
    v127[1] = v131;
    sub_217AE4A44(v127, &qword_2811C7DB8);
    v22 = (v3 + v12[6]);
    v23 = v22[1];
    v24 = v22[2];
    v124 = *v22;
    v125 = v23;
    v126 = v24;
    v123 = 2;
    sub_217AD1A68(v124, v23, v24);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v124, v125, v126);
    v25 = (v3 + v12[7]);
    v26 = v25[5];
    v27 = v25[7];
    v120 = v25[6];
    v121 = v27;
    v28 = v25[7];
    v122 = v25[8];
    v29 = v25[1];
    v30 = v25[3];
    v116 = v25[2];
    v117 = v30;
    v31 = v25[3];
    v32 = v25[5];
    v118 = v25[4];
    v119 = v32;
    v33 = v25[1];
    v115[0] = *v25;
    v115[1] = v33;
    v112 = v120;
    v113 = v28;
    v114 = v25[8];
    v108 = v116;
    v109 = v31;
    v110 = v118;
    v111 = v26;
    v106 = v115[0];
    v107 = v29;
    v105 = 3;
    sub_217AE38AC(v115, v104, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v104[6] = v112;
    v104[7] = v113;
    v104[8] = v114;
    v104[2] = v108;
    v104[3] = v109;
    v104[4] = v110;
    v104[5] = v111;
    v104[0] = v106;
    v104[1] = v107;
    sub_217AE4A44(v104, &qword_2811BD178);
    v34 = v3 + v12[8];
    v35 = *(v34 + 24);
    *&v97[0] = *v34;
    *(v97 + 8) = *(v34 + 8);
    BYTE8(v97[1]) = v35;
    LOBYTE(v92) = 4;
    sub_217B17644();

    sub_217D89C3C();

    v36 = (v3 + v12[9]);
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    v40 = v36[4];
    v41 = v36[5];
    *&v97[0] = *v36;
    *(&v97[0] + 1) = v37;
    *&v97[1] = v38;
    *(&v97[1] + 1) = v39;
    *&v98 = v40;
    *(&v98 + 1) = v41;
    LOBYTE(v92) = 5;
    sub_217B1563C(*&v97[0], v37);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(*&v97[0], *(&v97[0] + 1));
    v43 = (v3 + v12[10]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v43) = *(v43 + 16);
    *&v97[0] = v44;
    *(&v97[0] + 1) = v45;
    LOBYTE(v97[1]) = v43;
    LOBYTE(v92) = 6;
    sub_217AFF378();

    sub_217D89CAC();

    v46 = (v3 + v12[11]);
    v47 = v46[1];
    *&v97[0] = *v46;
    *(&v97[0] + 1) = v47;
    LOBYTE(v92) = 7;
    sub_217B1E4A0();

    sub_217D89CAC();

    v48 = (v3 + v12[12]);
    v49 = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    *&v97[0] = *v48;
    *(&v97[0] + 1) = v49;
    *&v97[1] = v50;
    *(&v97[1] + 1) = v51;
    LOBYTE(v92) = 8;
    sub_217AE39D0(*&v97[0], v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v97[0], *(&v97[0] + 1));
    LOBYTE(v97[0]) = *(v3 + v12[13]);
    LOBYTE(v92) = 9;
    sub_217AEB290();
    sub_217D89CAC();
    LOBYTE(v97[0]) = *(v3 + v12[14]);
    LOBYTE(v92) = 10;
    sub_217B71854();
    sub_217D89C3C();
    v52 = v3 + v12[15];
    v53 = *(v52 + 8);
    v54 = *(v52 + 16);
    v55 = *(v52 + 24);
    v56 = *(v52 + 32);
    v57 = *(v52 + 40);
    v58 = *(v52 + 48);
    *&v97[0] = *v52;
    *(&v97[0] + 1) = v53;
    *&v97[1] = v54;
    *(&v97[1] + 1) = v55;
    *&v98 = v56;
    *(&v98 + 1) = v57;
    LOBYTE(v99) = v58;
    LOBYTE(v92) = 11;
    sub_217C50AA4(*&v97[0], v53, v54);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(*&v97[0], *(&v97[0] + 1), *&v97[1]);
    v59 = (v3 + v12[16]);
    v60 = v59[1];
    *&v97[0] = *v59;
    *(&v97[0] + 1) = v60;
    LOBYTE(v92) = 12;
    sub_217BEB06C();

    sub_217D89C3C();

    v61 = (v3 + v12[17]);
    v62 = *v61;
    LOBYTE(v61) = *(v61 + 4);
    LODWORD(v97[0]) = v62;
    BYTE4(v97[0]) = v61;
    LOBYTE(v92) = 13;
    sub_217B8CF44();
    sub_217D89C3C();
    v63 = (v3 + v12[18]);
    v64 = v63[1];
    v65 = v63[2];
    v66 = v63[3];
    v67 = v63[4];
    *&v97[0] = *v63;
    *(&v97[0] + 1) = v64;
    *&v97[1] = v65;
    *(&v97[1] + 1) = v66;
    *&v98 = v67;
    LOBYTE(v92) = 14;
    sub_217AE3AE8(*&v97[0], v64);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(*&v97[0], *(&v97[0] + 1));
    v68 = (v3 + v12[19]);
    v69 = v68[1];
    v102 = *v68;
    v103 = v69;
    v101 = 15;
    sub_217AF6B14();

    sub_217D89C3C();

    v70 = (v3 + v12[20]);
    v71 = v70[1];
    v72 = v70[3];
    v98 = v70[2];
    v99 = v72;
    v73 = v70[3];
    v100 = v70[4];
    v74 = v70[1];
    v97[0] = *v70;
    v97[1] = v74;
    v94 = v98;
    v95 = v73;
    v96 = v70[4];
    v92 = v97[0];
    v93 = v71;
    v91 = 16;
    sub_217AE38AC(v97, v90, &qword_27CB9F6A0);
    sub_217AD6D08();
    sub_217D89C3C();
    v90[2] = v94;
    v90[3] = v95;
    v90[4] = v96;
    v90[0] = v92;
    v90[1] = v93;
    sub_217AE4A44(v90, &qword_27CB9F6A0);
    v75 = (v3 + v12[21]);
    v76 = v75[1];
    v77 = v75[2];
    v78 = v75[3];
    v84 = *v75;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v89 = 17;
    sub_217C70C5C(v84, v76);
    sub_217B6AB1C();
    sub_217D89C3C();
    sub_217AE4AA0(v84, v85);
    v79 = (v3 + v12[22]);
    v80 = v79[1];
    v81 = v79[2];
    v82 = v79[3];
    v83 = v79[4];
    v84 = *v79;
    v85 = v80;
    v86 = v81;
    v87 = v82;
    v88 = v83;
    v89 = 18;
    sub_217AD86BC(v84, v80);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v84, v85);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CB9A88()
{
  result = qword_27CBA3A10;
  if (!qword_27CBA3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A10);
  }

  return result;
}

uint64_t SubscriptionResultEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_217D8899C();
  v65 = *(v3 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CBAA44(0, &qword_27CBA3A18, MEMORY[0x277D844C8]);
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - v8;
  v10 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB9A88();
  v69 = v9;
  v15 = v99;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = v10;
  v63 = a1;
  v99 = v13;
  LOBYTE(v90) = 0;
  sub_217A602A0(&qword_2811C8408);
  v16 = v66;
  sub_217D89BCC();
  v17 = v99;
  (*(v65 + 32))(v99, v16, v3);
  v81 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v61[1] = v3;
  v66 = 0;
  v18 = v62;
  v19 = &v17[v62[5]];
  v20 = *v89;
  *(v19 + 6) = v88;
  *(v19 + 7) = v20;
  *(v19 + 127) = *&v89[15];
  v21 = v85;
  *(v19 + 2) = v84;
  *(v19 + 3) = v21;
  v22 = v87;
  *(v19 + 4) = v86;
  *(v19 + 5) = v22;
  v23 = v83;
  *v19 = v82;
  *(v19 + 1) = v23;
  LOBYTE(v75) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = v91;
  v25 = &v17[v18[6]];
  *v25 = v90;
  *(v25 + 2) = v24;
  v80 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v26 = &v17[v18[7]];
  v27 = v97;
  *(v26 + 6) = v96;
  *(v26 + 7) = v27;
  *(v26 + 8) = v98;
  v28 = v93;
  *(v26 + 2) = v92;
  *(v26 + 3) = v28;
  v29 = v95;
  *(v26 + 4) = v94;
  *(v26 + 5) = v29;
  v30 = v91;
  *v26 = v90;
  *(v26 + 1) = v30;
  LOBYTE(v70) = 4;
  sub_217B175F0();
  sub_217D89B5C();
  v31 = v76;
  v32 = BYTE8(v76);
  v33 = &v17[v18[8]];
  *v33 = v75;
  *(v33 + 2) = v31;
  v33[24] = v32;
  LOBYTE(v70) = 5;
  sub_217A66A84();
  sub_217D89B5C();
  v34 = &v17[v18[9]];
  v35 = v76;
  *v34 = v75;
  *(v34 + 1) = v35;
  *(v34 + 2) = v77;
  LOBYTE(v70) = 6;
  sub_217AFF324();
  sub_217D89BCC();
  v36 = *(&v75 + 1);
  v37 = v76;
  v38 = &v17[v18[10]];
  *v38 = v75;
  *(v38 + 1) = v36;
  v38[16] = v37;
  LOBYTE(v70) = 7;
  sub_217B1E44C();
  sub_217D89BCC();
  v39 = *(&v75 + 1);
  v40 = &v17[v18[11]];
  *v40 = v75;
  *(v40 + 1) = v39;
  LOBYTE(v70) = 8;
  sub_217ACFF40();
  sub_217D89B5C();
  v41 = &v99[v62[12]];
  v42 = v76;
  *v41 = v75;
  *(v41 + 1) = v42;
  LOBYTE(v70) = 9;
  sub_217AEB238();
  sub_217D89BCC();
  v99[v62[13]] = v75;
  LOBYTE(v70) = 10;
  sub_217B717FC();
  sub_217D89B5C();
  v99[v62[14]] = v75;
  LOBYTE(v70) = 11;
  sub_217A54D08();
  sub_217D89B5C();
  v43 = v78;
  v44 = &v99[v62[15]];
  v45 = v76;
  *v44 = v75;
  *(v44 + 1) = v45;
  *(v44 + 2) = v77;
  v44[48] = v43;
  LOBYTE(v70) = 12;
  sub_217BEB014();
  sub_217D89B5C();
  *&v99[v62[16]] = v75;
  LOBYTE(v70) = 13;
  sub_217B8CEEC();
  sub_217D89B5C();
  v46 = BYTE4(v75);
  v47 = &v99[v62[17]];
  *v47 = v75;
  v47[4] = v46;
  LOBYTE(v70) = 14;
  sub_217AE2CA8();
  sub_217D89B5C();
  v48 = v77;
  v49 = &v99[v62[18]];
  v50 = v76;
  *v49 = v75;
  *(v49 + 1) = v50;
  *(v49 + 4) = v48;
  LOBYTE(v70) = 15;
  sub_217AF6AC0();
  sub_217D89B5C();
  *&v99[v62[19]] = v75;
  v74 = 16;
  sub_217AD6CB4();
  sub_217D89B5C();
  v51 = &v99[v62[20]];
  v52 = v78;
  *(v51 + 2) = v77;
  *(v51 + 3) = v52;
  *(v51 + 4) = v79;
  v53 = v76;
  *v51 = v75;
  *(v51 + 1) = v53;
  v73 = 17;
  sub_217B6AAC8();
  sub_217D89B5C();
  v54 = &v99[v62[21]];
  v55 = v71;
  *v54 = v70;
  *(v54 + 1) = v55;
  v73 = 18;
  sub_217B1F038();
  sub_217D89B5C();
  (*(v67 + 8))(v69, v68);
  v56 = v72;
  v57 = v99;
  v58 = &v99[v62[22]];
  v59 = v71;
  *v58 = v70;
  *(v58 + 1) = v59;
  *(v58 + 4) = v56;
  sub_217CBAAA8(v57, v64);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_217CBAB0C(v57);
}

void sub_217CBAA44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB9A88();
    v7 = a3(a1, &type metadata for SubscriptionResultEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CBAAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CBAB0C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217CBAC6C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CB7824(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CB7824(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217CB7824(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217CB7824(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
          if (v4 <= 0x3F)
          {
            sub_217CB7824(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
            if (v5 <= 0x3F)
            {
              sub_217CB7824(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378);
              if (v6 <= 0x3F)
              {
                sub_217CB7824(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0);
                if (v7 <= 0x3F)
                {
                  sub_217CB7824(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                  if (v8 <= 0x3F)
                  {
                    sub_217CB7824(319, &qword_2811C85A8, sub_217AEB238, sub_217AEB290);
                    if (v9 <= 0x3F)
                    {
                      sub_217CB7824(319, &qword_2811C8668, sub_217B717FC, sub_217B71854);
                      if (v10 <= 0x3F)
                      {
                        sub_217CB7824(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                        if (v11 <= 0x3F)
                        {
                          sub_217CB7824(319, &qword_2811C8740, sub_217BEB014, sub_217BEB06C);
                          if (v12 <= 0x3F)
                          {
                            sub_217CB7824(319, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44);
                            if (v13 <= 0x3F)
                            {
                              sub_217CB7824(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                              if (v14 <= 0x3F)
                              {
                                sub_217CB7824(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
                                if (v15 <= 0x3F)
                                {
                                  sub_217CB7824(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_217CB7824(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_217CB7824(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
                                      if (v18 <= 0x3F)
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

void sub_217CBB2A4()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7C80);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C7A98);
            if (v5 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110);
              if (v6 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA3A20);
                if (v7 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811BDCD8);
                  if (v8 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CBA3A28);
                    if (v9 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_27CBA3A30);
                      if (v10 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811BF120);
                        if (v11 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811BD360);
                          if (v12 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_27CB9F6A0);
                            if (v13 <= 0x3F)
                            {
                              sub_217A5E974(319, &qword_27CBA3A38);
                              if (v14 <= 0x3F)
                              {
                                sub_217A5E974(319, &qword_2811C7EF8);
                                if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217CBB5A0()
{
  result = qword_27CBA3A40;
  if (!qword_27CBA3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A40);
  }

  return result;
}

unint64_t sub_217CBB5F8()
{
  result = qword_27CBA3A48;
  if (!qword_27CBA3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A48);
  }

  return result;
}

unint64_t sub_217CBB650()
{
  result = qword_27CBA3A50;
  if (!qword_27CBA3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A50);
  }

  return result;
}

uint64_t sub_217CBB6A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1E10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1E30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7272656665526461 && a2 == 0xEE00617461446C61 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F727245736D61 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7255656372756F73 && a2 == 0xED0000617461446CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 18;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_217CBBCAC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA3A58);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3A58);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217CBBD9C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA3A70);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3A70);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217CBBE5C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3A88);
  __swift_project_value_buffer(v0, qword_27CBA3A88);
  return sub_217D8866C();
}

uint64_t FollowSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowSportsTagEvent(0);
  v5 = v4[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t FollowSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t FollowSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FollowSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 28));
}

uint64_t FollowSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 FollowSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for FollowSportsTagEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  result = *(a2 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a2 + 48);
  v20 = (a6 + v16[6]);
  *v20 = v9;
  v20[1] = v10;
  *(a6 + v16[7]) = v11;
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

uint64_t sub_217CBCB30(uint64_t a1)
{
  v2 = sub_217CBCF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CBCB6C(uint64_t a1)
{
  v2 = sub_217CBCF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CBD4C0(0, &qword_27CBA3AA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBCF60();
  sub_217D89E7C();
  v39 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FollowSportsTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[2];
    v15 = *v13;
    v16 = *v13;
    v36 = v13[1];
    v37 = v14;
    v35 = v15;
    v38 = *(v13 + 48);
    v31 = v16;
    v32 = v36;
    v33 = v13[2];
    v34 = *(v13 + 48);
    v30 = 1;
    sub_217ACC004(&v35, v28);
    sub_217A55B98();
    sub_217D89CAC();
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v29 = v34;
    sub_217ACC69C(v28);
    v17 = (v3 + v12[6]);
    v18 = v17[1];
    v24 = *v17;
    v25 = v18;
    v27 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v24 = *(v3 + v12[7]);
    v27 = 3;
    sub_217A61284();

    sub_217D89CAC();

    v20 = (v3 + v12[8]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v24 = v21;
    v25 = v22;
    v26 = v20;
    v27 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CBCF60()
{
  result = qword_27CBA3AA8;
  if (!qword_27CBA3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AA8);
  }

  return result;
}

uint64_t FollowSportsTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CBD4C0(0, &qword_27CBA3AB0, MEMORY[0x277D844C8]);
  v33 = v7;
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FollowSportsTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBCF60();
  v32 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v30;
  sub_217D89BCC();
  (*(v16 + 32))(v14, v17, v4);
  v42 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v14[v11[5]];
  v19 = v38;
  *v18 = v37;
  *(v18 + 1) = v19;
  *(v18 + 2) = v39;
  v18[48] = v40;
  v41 = 2;
  sub_217AF6AC0();
  v30 = 0;
  sub_217D89BCC();
  v20 = v31;
  v21 = v35;
  v22 = &v14[v11[6]];
  *v22 = v34;
  *(v22 + 1) = v21;
  v41 = 3;
  sub_217A6120C();
  sub_217D89BCC();
  *&v14[v11[7]] = v34;
  v41 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v20 + 8))(v32, v33);
  v23 = v35;
  v24 = v36;
  v25 = &v14[v11[8]];
  *v25 = v34;
  *(v25 + 1) = v23;
  *(v25 + 8) = v24;
  sub_217CBD524(v14, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CBD588(v14);
}

void sub_217CBD4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CBCF60();
    v7 = a3(a1, &type metadata for FollowSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CBD524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CBD588(uint64_t a1)
{
  v2 = type metadata accessor for FollowSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CBD720()
{
  result = qword_27CBA3AD8;
  if (!qword_27CBA3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AD8);
  }

  return result;
}

unint64_t sub_217CBD778()
{
  result = qword_27CBA3AE0;
  if (!qword_27CBA3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AE0);
  }

  return result;
}

unint64_t sub_217CBD7D0()
{
  result = qword_27CBA3AE8;
  if (!qword_27CBA3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AE8);
  }

  return result;
}

uint64_t sub_217CBD838@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_217CBD868(uint64_t a1)
{
  v2 = sub_217CBDA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CBD8A4(uint64_t a1)
{
  v2 = sub_217CBDA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationTagData.encode(to:)(void *a1)
{
  sub_217CBD9EC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBDA48();
  sub_217D89E7C();
  return (*(v4 + 8))(v7, v3);
}

void sub_217CBD9EC()
{
  if (!qword_27CBA3AF0)
  {
    sub_217CBDA48();
    v0 = sub_217D89CDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3AF0);
    }
  }
}

unint64_t sub_217CBDA48()
{
  result = qword_27CBA3AF8;
  if (!qword_27CBA3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AF8);
  }

  return result;
}

unint64_t sub_217CBDAC8()
{
  result = qword_27CBA3B00;
  if (!qword_27CBA3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B00);
  }

  return result;
}

unint64_t sub_217CBDB20()
{
  result = qword_27CBA3B08;
  if (!qword_27CBA3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B08);
  }

  return result;
}

uint64_t sub_217CBDB9C(void *a1)
{
  sub_217CBD9EC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBDA48();
  sub_217D89E7C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_217CBDCCC()
{
  result = qword_2811C29C0;
  if (!qword_2811C29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29C0);
  }

  return result;
}

unint64_t sub_217CBDD24()
{
  result = qword_27CBA3B10;
  if (!qword_27CBA3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B10);
  }

  return result;
}

NewsAnalytics::DialogStyle_optional __swiftcall DialogStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DialogStyle.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  v2 = 0x7473616F74;
  if (*v0 != 2)
  {
    v2 = 0x6954656C62627562;
  }

  if (*v0)
  {
    v1 = 0x72656E6E6162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217CBDE58()
{
  result = qword_27CBA3B18;
  if (!qword_27CBA3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B18);
  }

  return result;
}

uint64_t sub_217CBDEAC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBDF68()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CBE010()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBE0D4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E696C6E69;
  v4 = 0xE500000000000000;
  v5 = 0x7473616F74;
  if (*v1 != 2)
  {
    v5 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  if (*v1)
  {
    v3 = 0x72656E6E6162;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217CBE20C()
{
  result = qword_2811C7D60;
  if (!qword_2811C7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D60);
  }

  return result;
}

NewsAnalytics::PurchaseSource_optional __swiftcall PurchaseSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1937204590;
  if (*v0 != 2)
  {
    v2 = 6448503;
  }

  if (*v0)
  {
    v1 = 0x65726F7453707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217CBE338()
{
  result = qword_27CBA3B20;
  if (!qword_27CBA3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B20);
  }

  return result;
}

uint64_t sub_217CBE38C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBE440()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CBE4E0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBE59C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1937204590;
  if (*v1 != 2)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x65726F7453707061;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217CBE6CC()
{
  result = qword_27CBA3B28;
  if (!qword_27CBA3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B28);
  }

  return result;
}

NewsAnalytics::NotificationInterruptionLevel_optional __swiftcall NotificationInterruptionLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationInterruptionLevel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x657669746361;
  v4 = 0x736E6553656D6974;
  if (v1 != 3)
  {
    v4 = 0x6C61636974697263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766973736170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_217CBE830()
{
  result = qword_27CBA3B30;
  if (!qword_27CBA3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B30);
  }

  return result;
}

uint64_t sub_217CBE884()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBE970()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CBEA48()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBEB3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x657669746361;
  v7 = 0xED00006576697469;
  v8 = 0x736E6553656D6974;
  if (v2 != 3)
  {
    v8 = 0x6C61636974697263;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65766973736170;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217CBECA4()
{
  result = qword_27CBA3B38;
  if (!qword_27CBA3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B38);
  }

  return result;
}

NewsAnalytics::NotificationSubscribedAction_optional __swiftcall NotificationSubscribedAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationSubscribedAction.rawValue.getter()
{
  v1 = 1869903201;
  if (*v0 != 1)
  {
    v1 = 0x746963696C707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CBEDA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1869903201;
  if (v2 != 1)
  {
    v4 = 0x746963696C707865;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1869903201;
  if (*a2 != 1)
  {
    v8 = 0x746963696C707865;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CBEEA0()
{
  result = qword_27CBA3B40;
  if (!qword_27CBA3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B40);
  }

  return result;
}

uint64_t sub_217CBEEF4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBEF90()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CBF018()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBF0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1869903201;
  if (v2 != 1)
  {
    v5 = 0x746963696C707865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CBF1D4()
{
  result = qword_27CBA3B48;
  if (!qword_27CBA3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B48);
  }

  return result;
}

id sub_217CBF228()
{
  v1 = sub_217D8844C();
  v40 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D88E7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CC0008(0, &qword_27CB9F918, sub_217B2CFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_217D9CB60;
  v39 = "privacyValidation";
  v12 = *(v0 + 24);
  v42 = *(v0 + 32);
  v43 = v0;
  ObjectType = swift_getObjectType();
  sub_217D8876C();
  v13 = sub_217D8843C();
  v14 = *(v2 + 8);
  v14(v5, v1);
  *v10 = v13 & 1;
  (*(v7 + 104))(v10, *MEMORY[0x277D6D260], v6);
  *(v11 + 56) = sub_217D88EFC();
  *(v11 + 64) = sub_217CBFFB0();
  v38 = v11;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_217D88EEC();
  sub_217CC0008(0, &unk_27CBA3B90, MEMORY[0x277D6D080]);
  v15 = *(sub_217D87E9C() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_217D98100;
  v39 = v18;
  v19 = v18 + v17;
  v20 = v43;
  sub_217D8876C();
  v21 = sub_217D8842C();
  v14(v5, v40);
  KeyPath = swift_getKeyPath();

  sub_217CC0064(v21, sub_217CC005C, KeyPath);

  sub_217D87E8C();
  v23 = *(v20 + 16);
  v24 = [v23 appConfiguration];
  result = [v24 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v26 = [v24 analyticsDenylistDescriptorsPublic];
  swift_unknownObjectRelease();
  if (v26)
  {
    v27 = sub_217D896EC();
  }

  else
  {
    v27 = 0;
  }

  sub_217CBF9C8(0x63696C627550, 0xE600000000000000, v27, v19 + v16);

  v28 = [v23 appConfiguration];
  result = [v28 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = [v28 analyticsDenylistDescriptorsSeed];
  swift_unknownObjectRelease();
  if (v29)
  {
    v30 = sub_217D896EC();
  }

  else
  {
    v30 = 0;
  }

  sub_217CBF9C8(1684366675, 0xE400000000000000, v30, v19 + 2 * v16);

  v31 = [v23 appConfiguration];
  result = [v31 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v32 = [v31 analyticsDenylistDescriptorsInternal];
  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = sub_217D896EC();
  }

  else
  {
    v33 = 0;
  }

  sub_217CBF9C8(0x6C616E7265746E49, 0xE800000000000000, v33, v19 + 3 * v16);

  v34 = sub_217D87E7C();
  v35 = MEMORY[0x277D6D078];
  v36 = v38;
  *(v38 + 96) = v34;
  *(v36 + 104) = v35;
  __swift_allocate_boxed_opaque_existential_1((v36 + 72));
  sub_217D87E6C();
  return v36;
}

uint64_t DenylistDescriptor.debugItem.getter()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8845C();
  *v4 = 0;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D270], v0);
  return sub_217D88EEC();
}

uint64_t sub_217CBF8D0()
{
  v0 = sub_217D88E7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217D8845C();
  *v4 = 0;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D270], v0);
  return sub_217D88EEC();
}

uint64_t sub_217CBF9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = sub_217D88E7C();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);
  if (v13)
  {
    v25[1] = a4;
    v25[2] = a1;
    v25[3] = a2;
    v31 = MEMORY[0x277D84F90];

    v26 = v13;
    result = sub_217B2C804(0, v13, 0);
    v15 = 0;
    v16 = v31;
    v17 = *MEMORY[0x277D6D270];
    v18 = (v8 + 104);
    v19 = v12;
    v20 = (v12 + 40);
    while (v15 < *(v19 + 16))
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v29 = sub_217D88EFC();
      v30 = sub_217CBFFB0();
      __swift_allocate_boxed_opaque_existential_1(&v28);
      *v11 = 0;
      v11[1] = 0;
      (*v18)(v11, v17, v27);

      sub_217D88EEC();
      v31 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_217B2C804((v23 > 1), v24 + 1, 1);
        v16 = v31;
      }

      ++v15;
      *(v16 + 16) = v24 + 1;
      result = sub_217A517E4(&v28, v16 + 40 * v24 + 32);
      v20 += 2;
      if (v26 == v15)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:

    return sub_217D87E8C();
  }

  return result;
}

uint64_t String.denylistDescriptorValueDebugItem.getter()
{
  v0 = sub_217D88E7C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 0;
  v3[1] = 0;
  (*(v4 + 104))(v3, *MEMORY[0x277D6D270]);

  return sub_217D88EEC();
}

uint64_t sub_217CBFD1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_217CBFDA4()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
  v3 = sub_217D8844C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for DebugPrivacyValidationProvider()
{
  result = qword_27CBA3B68;
  if (!qword_27CBA3B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217CBFE9C()
{
  result = sub_217D8844C();
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

uint64_t sub_217CBFF38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13NewsAnalyticsP33_4BAC674B03D5EF9FD60C84EBCE16AA2930DebugPrivacyValidationProvider_privacyValidation;
  v4 = sub_217D8844C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217CBFFB0()
{
  result = qword_27CBA3B88;
  if (!qword_27CBA3B88)
  {
    sub_217D88EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B88);
  }

  return result;
}

void sub_217CC0008(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217CC0064(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v35 = sub_217D8847C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v28 = v3;
    v44 = MEMORY[0x277D84F90];
    sub_217B2C804(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v39 = a1 + 56;
    v40 = v44;
    result = sub_217D8998C();
    v11 = result;
    v12 = 0;
    v32 = v5 + 8;
    v33 = v5 + 16;
    v29 = a1 + 64;
    v30 = v8;
    v31 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v16 = v34;
      v17 = v35;
      (*(v5 + 16))(v34, *(a1 + 48) + *(v5 + 72) * v11, v35);
      v42 = sub_217D88EFC();
      v43 = sub_217CBFFB0();
      __swift_allocate_boxed_opaque_existential_1(&v41);
      v36(v16);
      (*(v5 + 8))(v16, v17);
      v18 = v40;
      v44 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_217B2C804((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      *(v18 + 16) = v20 + 1;
      v40 = v18;
      result = sub_217A517E4(&v41, v18 + 40 * v20 + 32);
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v39 + 8 * v15);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v30;
        v5 = v31;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v14 = v30;
        v25 = (v29 + 8 * v15);
        v5 = v31;
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_217CC0398(v11, v38, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_217CC0398(v11, v38, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_217CC0398(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

NewsAnalytics::NetworkEventType_optional __swiftcall NetworkEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t NetworkEventType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7234659;
      break;
    case 2:
      result = 0x6F437070416E6463;
      break;
    case 3:
      result = 1937208931;
      break;
    case 4:
      result = 0x63696C6275506B63;
      break;
    case 5:
      result = 0x7461766972506B63;
      break;
    case 6:
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656764457377656ELL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000026;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x437961646F546B63;
      break;
    case 0xD:
      result = 0x4669746C754D6B63;
      break;
    case 0xE:
      result = 0x46726564724F6B63;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x6165536761546B63;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x4672657472616D73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CC0718(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = NetworkEventType.rawValue.getter();
  v4 = v3;
  if (v2 == NetworkEventType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217CC07B8()
{
  result = qword_27CBA3BA0;
  if (!qword_27CBA3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BA0);
  }

  return result;
}

uint64_t sub_217CC080C()
{
  v1 = *v0;
  sub_217D89E1C();
  NetworkEventType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC0874()
{
  v2 = *v0;
  NetworkEventType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CC08D8()
{
  v1 = *v0;
  sub_217D89E1C();
  NetworkEventType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217CC0948@<X0>(unint64_t *a1@<X8>)
{
  result = NetworkEventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CC0A30()
{
  result = qword_2811C4F48;
  if (!qword_2811C4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4F48);
  }

  return result;
}

NewsAnalytics::GroupType_optional __swiftcall GroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89D7C();

  v5 = 0;
  v6 = 75;
  switch(v3)
  {
    case 0:
      goto LABEL_91;
    case 1:
      v5 = 1;
      goto LABEL_91;
    case 2:
      v5 = 2;
      goto LABEL_91;
    case 3:
      v5 = 3;
      goto LABEL_91;
    case 4:
      v5 = 4;
      goto LABEL_91;
    case 5:
      v5 = 5;
      goto LABEL_91;
    case 6:
      v5 = 6;
      goto LABEL_91;
    case 7:
      v5 = 7;
      goto LABEL_91;
    case 8:
      v5 = 8;
      goto LABEL_91;
    case 9:
      v5 = 9;
      goto LABEL_91;
    case 10:
      v5 = 10;
      goto LABEL_91;
    case 11:
      v5 = 11;
      goto LABEL_91;
    case 12:
      v5 = 12;
      goto LABEL_91;
    case 13:
      v5 = 13;
      goto LABEL_91;
    case 14:
      v5 = 14;
      goto LABEL_91;
    case 15:
      v5 = 15;
      goto LABEL_91;
    case 16:
      v5 = 16;
      goto LABEL_91;
    case 17:
      v5 = 17;
      goto LABEL_91;
    case 18:
      v5 = 18;
      goto LABEL_91;
    case 19:
      v5 = 19;
      goto LABEL_91;
    case 20:
      v5 = 20;
      goto LABEL_91;
    case 21:
      v5 = 21;
      goto LABEL_91;
    case 22:
      v5 = 22;
      goto LABEL_91;
    case 23:
      v5 = 23;
      goto LABEL_91;
    case 24:
      v5 = 24;
      goto LABEL_91;
    case 25:
      v5 = 25;
      goto LABEL_91;
    case 26:
      v5 = 26;
      goto LABEL_91;
    case 27:
      v5 = 27;
      goto LABEL_91;
    case 28:
      v5 = 28;
      goto LABEL_91;
    case 29:
      v5 = 29;
      goto LABEL_91;
    case 30:
      v5 = 30;
      goto LABEL_91;
    case 31:
      v5 = 31;
      goto LABEL_91;
    case 32:
      v5 = 32;
      goto LABEL_91;
    case 33:
      v5 = 33;
      goto LABEL_91;
    case 34:
      v5 = 34;
      goto LABEL_91;
    case 35:
      v5 = 35;
      goto LABEL_91;
    case 36:
      v5 = 36;
      goto LABEL_91;
    case 37:
      v5 = 37;
      goto LABEL_91;
    case 38:
      v5 = 38;
      goto LABEL_91;
    case 39:
      v5 = 39;
      goto LABEL_91;
    case 40:
      v5 = 40;
      goto LABEL_91;
    case 41:
      v5 = 41;
      goto LABEL_91;
    case 42:
      v5 = 42;
      goto LABEL_91;
    case 43:
      v5 = 43;
      goto LABEL_91;
    case 44:
      v5 = 44;
      goto LABEL_91;
    case 45:
      v5 = 45;
      goto LABEL_91;
    case 46:
      v5 = 46;
      goto LABEL_91;
    case 47:
      v5 = 47;
      goto LABEL_91;
    case 48:
      v5 = 48;
      goto LABEL_91;
    case 49:
      v5 = 49;
      goto LABEL_91;
    case 50:
      v5 = 50;
      goto LABEL_91;
    case 51:
      v5 = 51;
      goto LABEL_91;
    case 52:
      v5 = 52;
      goto LABEL_91;
    case 53:
      v5 = 53;
      goto LABEL_91;
    case 54:
      v5 = 54;
      goto LABEL_91;
    case 55:
      v5 = 55;
      goto LABEL_91;
    case 56:
      v5 = 56;
      goto LABEL_91;
    case 57:
      v5 = 57;
      goto LABEL_91;
    case 58:
      v5 = 58;
      goto LABEL_91;
    case 59:
      v5 = 59;
      goto LABEL_91;
    case 60:
      v5 = 60;
      goto LABEL_91;
    case 61:
      v5 = 61;
      goto LABEL_91;
    case 62:
      v5 = 62;
      goto LABEL_91;
    case 63:
      v5 = 63;
      goto LABEL_91;
    case 64:
      v5 = 64;
      goto LABEL_91;
    case 65:
      v5 = 65;
      goto LABEL_91;
    case 66:
      v5 = 66;
      goto LABEL_91;
    case 67:
      v5 = 67;
      goto LABEL_91;
    case 68:
      v5 = 68;
      goto LABEL_91;
    case 69:
      v5 = 69;
      goto LABEL_91;
    case 70:
      v5 = 70;
      goto LABEL_91;
    case 71:
      v5 = 71;
      goto LABEL_91;
    case 72:
      v5 = 72;
      goto LABEL_91;
    case 73:
      v5 = 73;
      goto LABEL_91;
    case 74:
      v5 = 74;
LABEL_91:
      v6 = v5;
      break;
    case 75:
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    case 86:
      v6 = 86;
      break;
    case 87:
      v6 = 87;
      break;
    case 88:
      v6 = 88;
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    default:
      v6 = 93;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_217CC0DF0()
{
  v1 = *v0;
  sub_217D89E1C();
  GroupType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC0E58()
{
  v2 = *v0;
  GroupType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217CC0EC8@<X0>(uint64_t *a1@<X8>)
{
  result = GroupType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217CC0FA0()
{
  result = qword_2811BD148;
  if (!qword_2811BD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD148);
  }

  return result;
}

uint64_t sub_217CC1054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CC10D8(uint64_t a1)
{
  v2 = sub_217CC12AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC1114(uint64_t a1)
{
  v2 = sub_217CC12AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultData.encode(to:)(void *a1)
{
  sub_217CC14EC(0, &qword_27CBA3BA8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC12AC();
  sub_217D89E7C();
  v13 = v9;
  sub_217CC1300();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CC12AC()
{
  result = qword_27CBA3BB0;
  if (!qword_27CBA3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BB0);
  }

  return result;
}

unint64_t sub_217CC1300()
{
  result = qword_27CBA3BB8;
  if (!qword_27CBA3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BB8);
  }

  return result;
}

uint64_t ResultData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217CC14EC(0, &qword_27CBA3BC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC12AC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217CC1550();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC14EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC12AC();
    v7 = a3(a1, &type metadata for ResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC1550()
{
  result = qword_27CBA3BC8;
  if (!qword_27CBA3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BC8);
  }

  return result;
}

unint64_t sub_217CC1600()
{
  result = qword_27CBA3BD0;
  if (!qword_27CBA3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BD0);
  }

  return result;
}

unint64_t sub_217CC1658()
{
  result = qword_27CBA3BD8;
  if (!qword_27CBA3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BD8);
  }

  return result;
}

unint64_t sub_217CC16B0()
{
  result = qword_27CBA3BE0;
  if (!qword_27CBA3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3BE0);
  }

  return result;
}

uint64_t sub_217CC17CC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3C18);
  __swift_project_value_buffer(v0, qword_27CBA3C18);
  return sub_217D8866C();
}

uint64_t AudioUpsellMessageStarted.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioUpsellMessageStarted.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 20);
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 24);
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 28);
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioUpsellMessageStarted.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 32);
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.upsellVariantData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CC2090(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AudioUpsellMessageStarted.upsellVariantData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioUpsellMessageStarted(0) + 36);
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioUpsellMessageStarted.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioUpsellMessageStarted(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v6, v15);
}

uint64_t AudioUpsellMessageStarted.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AFFBC0(v17, v16);
}

uint64_t AudioUpsellMessageStarted.Model.channelData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t AudioUpsellMessageStarted.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioUpsellMessageStarted.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AudioUpsellMessageStarted.Model.upsellVariantData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioUpsellMessageStarted.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 AudioUpsellMessageStarted.Model.init(eventData:articleData:channelData:feedData:userBundleSubscriptionContextData:upsellVariantData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 + 4);
  v31 = *a4;
  v13 = *(a4 + 2);
  v14 = *a6;
  v15 = a6[1];
  v16 = sub_217D8899C();
  v29 = a3[1];
  v30 = *a3;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  v18 = a7 + v17[5];
  v19 = *(a2 + 48);
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = v19;
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  *(v18 + 127) = *(a2 + 127);
  v21 = *(a2 + 112);
  *(v18 + 96) = *(a2 + 96);
  *(v18 + 112) = v21;
  v22 = *(a2 + 80);
  *(v18 + 64) = *(a2 + 64);
  *(v18 + 80) = v22;
  v23 = a7 + v17[6];
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v12;
  v24 = a7 + v17[7];
  *v24 = v31;
  *(v24 + 16) = v13;
  v25 = a7 + v17[8];
  v26 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v26;
  result = *(a5 + 32);
  *(v25 + 32) = result;
  *(v25 + 48) = *(a5 + 48);
  v28 = (a7 + v17[9]);
  *v28 = v14;
  v28[1] = v15;
  return result;
}

uint64_t sub_217CC286C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0xD000000000000021;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_217CC2948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CC3F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CC2970(uint64_t a1)
{
  v2 = sub_217CC2EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC29AC(uint64_t a1)
{
  v2 = sub_217CC2EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellMessageStarted.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CC3608(0, &qword_27CBA3C38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC2EA8();
  sub_217D89E7C();
  v72 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v73 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
    v12 = v3 + *(v73 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v69 = *(v12 + 80);
    v70 = v13;
    v15 = *(v12 + 96);
    *v71 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v66 = *(v12 + 32);
    v67 = v17;
    v18 = *(v12 + 48);
    v68 = *(v12 + 64);
    v19 = *(v12 + 16);
    v65[0] = *v12;
    v65[1] = v19;
    v62 = v69;
    v63 = v15;
    v64[0] = *(v12 + 112);
    v59 = v66;
    v60 = v18;
    v61 = v14;
    *&v71[15] = *(v12 + 127);
    *(v64 + 15) = *(v12 + 127);
    v57 = v65[0];
    v58 = v16;
    v56 = 1;
    sub_217AFFBC0(v65, v54);
    sub_217ACF52C();
    sub_217D89C3C();
    v54[6] = v63;
    *v55 = v64[0];
    *&v55[15] = *(v64 + 15);
    v54[2] = v59;
    v54[3] = v60;
    v54[4] = v61;
    v54[5] = v62;
    v54[0] = v57;
    v54[1] = v58;
    sub_217B009E0(v54);
    v20 = v73;
    v21 = (v3 + *(v73 + 24));
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    *&v46 = *v21;
    *(&v46 + 1) = v22;
    *&v47 = v23;
    *(&v47 + 1) = v24;
    *&v48 = v25;
    LOBYTE(v42) = 2;
    sub_217AD86BC(v46, v22);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v46, *(&v46 + 1));
    v26 = (v3 + v20[7]);
    v27 = v26[1];
    v28 = v26[2];
    v51 = *v26;
    v52 = v27;
    v53 = v28;
    v50 = 3;
    sub_217AD1A68(v51, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v51, v52, v53);
    v29 = (v3 + v20[8]);
    v30 = v29[1];
    v46 = *v29;
    v47 = v30;
    v32 = *v29;
    v31 = v29[1];
    v48 = v29[2];
    v49 = *(v29 + 48);
    v42 = v32;
    v43 = v31;
    v44 = v29[2];
    v45 = *(v29 + 48);
    v41 = 4;
    sub_217ACC004(&v46, v39);
    sub_217A55B98();
    sub_217D89CAC();
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    v40 = v45;
    sub_217ACC69C(v39);
    v33 = (v3 + v20[9]);
    v34 = v33[1];
    v37 = *v33;
    v38 = v34;
    v36[15] = 5;
    sub_217C7CEB4();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CC2EA8()
{
  result = qword_27CBA3C40;
  if (!qword_27CBA3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C40);
  }

  return result;
}

uint64_t AudioUpsellMessageStarted.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CC3608(0, &qword_27CBA3C48, MEMORY[0x277D844C8]);
  v52 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC2EA8();
  v35 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v44) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v34;
  sub_217D89BCC();
  (*(v32 + 32))(v14, v17, v4);
  v43 = 1;
  sub_217ACF4D8();
  sub_217D89B5C();
  v18 = &v14[v11[5]];
  v19 = *v51;
  *(v18 + 6) = v50;
  *(v18 + 7) = v19;
  *(v18 + 127) = *&v51[15];
  v20 = v47;
  *(v18 + 2) = v46;
  *(v18 + 3) = v20;
  v21 = v49;
  *(v18 + 4) = v48;
  *(v18 + 5) = v21;
  v22 = v45;
  *v18 = v44;
  *(v18 + 1) = v22;
  LOBYTE(v37) = 2;
  sub_217AD07F8();
  v34 = 0;
  sub_217D89B5C();
  v23 = v41;
  v24 = &v14[v11[6]];
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  *(v24 + 4) = v23;
  LOBYTE(v37) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v26 = v40;
  v27 = &v14[v11[7]];
  *v27 = v39;
  *(v27 + 2) = v26;
  v38 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v28 = &v14[v11[8]];
  v29 = v40;
  *v28 = v39;
  *(v28 + 1) = v29;
  *(v28 + 2) = v41;
  v28[48] = v42;
  v36 = 5;
  sub_217C7CE5C();
  sub_217D89B5C();
  (*(v16 + 8))(v35, v52);
  *&v14[v11[9]] = v37;
  sub_217CC366C(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CC36D0(v14);
}

void sub_217CC3608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC2EA8();
    v7 = a3(a1, &type metadata for AudioUpsellMessageStarted.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CC366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CC36D0(uint64_t a1)
{
  v2 = type metadata accessor for AudioUpsellMessageStarted.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CC3804@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CC2090(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CC2090(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CC2090(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CC2090(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217CC2090(0, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v7, v16);
}

void sub_217CC3B18()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CC2090(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CC2090(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
      if (v2 <= 0x3F)
      {
        sub_217CC2090(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217CC2090(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
          if (v4 <= 0x3F)
          {
            sub_217CC2090(319, &qword_27CBA3C30, sub_217C7CE5C, sub_217C7CEB4);
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

void sub_217CC3D3C()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CBA3C70);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217CC3E64()
{
  result = qword_27CBA3C78;
  if (!qword_27CBA3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C78);
  }

  return result;
}

unint64_t sub_217CC3EBC()
{
  result = qword_27CBA3C80;
  if (!qword_27CBA3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C80);
  }

  return result;
}

unint64_t sub_217CC3F14()
{
  result = qword_27CBA3C88;
  if (!qword_27CBA3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C88);
  }

  return result;
}

uint64_t sub_217CC3F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1F80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

__n128 TabiData.init(tabiConfigurationVersion:tabiPackageVersions:tabiCachedResources:resolvedGlobalGraph:requestSummary:tabiConfigurationIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  memset(v16, 0, sizeof(v16));
  sub_217B569E0(v16);
  v13 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *(a9 + 56) = v13;
  result = *(a6 + 32);
  v15 = *(a6 + 48);
  *(a9 + 72) = result;
  *(a9 + 88) = v15;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  return result;
}

uint64_t TabiData.tabiConfigurationVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TabiData.tabiConfigurationVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TabiData.tabiPackageVersions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TabiData.tabiCachedResources.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TabiData.requestSummary.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v4 = *(v1 + 88);
  v8 = *(v1 + 72);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_217CC43A4(v7, &v6);
}

uint64_t sub_217CC43A4(uint64_t a1, uint64_t a2)
{
  sub_217CC4AC4(0, &qword_2811C2DE0, &type metadata for TabiRequestSummary, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 TabiData.requestSummary.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  sub_217B569E0(v8);
  v5 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  return result;
}

uint64_t TabiData.tabiConfigurationIdentifier.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t TabiData.tabiConfigurationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

unint64_t sub_217CC4534()
{
  v1 = *v0;
  v2 = 0x5374736575716572;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000018;
  if (*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217CC4608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CC5344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CC4630(uint64_t a1)
{
  v2 = sub_217CC4A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC466C(uint64_t a1)
{
  v2 = sub_217CC4A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiData.encode(to:)(void *a1)
{
  sub_217CC5098(0, &qword_2811BC4F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22 = v1[2];
  v21 = v11;
  v20 = *(v1 + 32);
  v12 = *(v1 + 7);
  v30 = *(v1 + 5);
  v31 = v12;
  v13 = *(v1 + 11);
  v32 = *(v1 + 9);
  v33 = v13;
  v14 = v1[14];
  v19[0] = v1[13];
  v19[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC4A70();
  sub_217D89E7C();
  LOBYTE(v26) = 0;
  v16 = v34;
  sub_217D89C6C();
  if (!v16)
  {
    v17 = v21;
    *&v26 = v22;
    LOBYTE(v24[0]) = 1;
    sub_217CC4AC4(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_217A5603C(&qword_2811BCD48);
    sub_217D89CAC();
    *&v26 = v17;
    LOBYTE(v24[0]) = 2;
    sub_217D89CAC();
    LOBYTE(v26) = 3;
    sub_217D89C7C();
    v26 = v30;
    v27 = v31;
    v28 = v32;
    v29 = v33;
    v25 = 4;
    sub_217CC43A4(&v30, v24);
    sub_217C9B6A0();
    sub_217D89C3C();
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    sub_217B569E0(v24);
    v23 = 5;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CC4A70()
{
  result = qword_2811BD2C0;
  if (!qword_2811BD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2C0);
  }

  return result;
}

void sub_217CC4AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TabiData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  sub_217CC5098(0, &qword_2811BC8F0, MEMORY[0x277D844C8]);
  v75 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC4A70();
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0uLL;
    return sub_217B569E0(&v53);
  }

  else
  {
    v42 = a1;
    v43 = v5;
    LOBYTE(v53) = 0;
    v10 = v75;
    v11 = v8;
    v12 = sub_217D89B8C();
    v14 = v13;
    sub_217CC4AC4(0, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    LOBYTE(v45) = 1;
    sub_217A5603C(&qword_2811BCD38);
    sub_217D89BCC();
    v41 = v53;
    LOBYTE(v45) = 2;
    sub_217D89BCC();
    v15 = v42;
    v39 = v14;
    v16 = v53;
    LOBYTE(v53) = 3;
    v37 = 0;
    v17 = sub_217D89B9C();
    v38 = v16;
    v36 = v17;
    v67[71] = 4;
    sub_217C9B648();
    sub_217D89B5C();
    v34 = v68;
    v35 = v69;
    v18 = v71;
    v40 = v70;
    v19 = v72;
    v20 = v73;
    memset(v67, 0, 64);
    sub_217B569E0(v67);
    v66 = 5;
    v21 = sub_217D89B8C();
    LODWORD(v37) = v36 & 1;
    v22 = *(v43 + 8);
    v43 = v21;
    v23 = v11;
    v25 = v24;
    v22(v23, v10);
    v26 = v39;
    *&v45 = v12;
    *(&v45 + 1) = v39;
    v75 = v12;
    v27 = v38;
    *&v46 = v41;
    *(&v46 + 1) = v38;
    LOBYTE(v47) = v37;
    *(&v47 + 1) = v74[0];
    DWORD1(v47) = *(v74 + 3);
    *(&v47 + 1) = v34;
    v48 = v35;
    v49 = v40;
    *&v50 = v18;
    *(&v50 + 1) = v19;
    *&v51 = v20;
    v28 = v44;
    *(&v51 + 1) = v43;
    v52 = v25;
    v29 = v46;
    *v44 = v45;
    v28[1] = v29;
    *(v28 + 14) = v25;
    v30 = v51;
    v31 = v49;
    v28[5] = v50;
    v28[6] = v30;
    v32 = v47;
    v28[3] = v48;
    v28[4] = v31;
    v28[2] = v32;
    sub_217B9E3A4(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v53 = v75;
    v54 = v26;
    v55 = v41;
    v56 = v27;
    LOBYTE(v57) = v37;
    *(&v57 + 1) = v74[0];
    HIDWORD(v57) = *(v74 + 3);
    v58 = v34;
    v59 = v35;
    v60 = v40;
    v61 = v18;
    v62 = v19;
    v63 = v20;
    v64 = v43;
    v65 = v25;
    return sub_217B9F380(&v53);
  }
}

void sub_217CC5098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC4A70();
    v7 = a3(a1, &type metadata for TabiData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics18TabiRequestSummaryVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_217CC5178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217CC51C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217CC5240()
{
  result = qword_27CBA3C90;
  if (!qword_27CBA3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C90);
  }

  return result;
}

unint64_t sub_217CC5298()
{
  result = qword_2811BD2B0;
  if (!qword_2811BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2B0);
  }

  return result;
}

unint64_t sub_217CC52F0()
{
  result = qword_2811BD2B8;
  if (!qword_2811BD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2B8);
  }

  return result;
}

uint64_t sub_217CC5344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000217DD1FA0 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1FC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1FE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD2000 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xEE007972616D6D75 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD2020 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

NewsAnalytics::WidgetEngagementType_optional __swiftcall WidgetEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WidgetEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756F72676B636162;
  if (v1 != 5)
  {
    v3 = 0x646957656C6F6877;
  }

  v4 = 0x4E6E6F6974636573;
  if (v1 != 3)
  {
    v4 = 0x6465626D45626577;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C6369747261;
  if (v1 != 1)
  {
    v5 = 0x6569726F74536F6ELL;
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

unint64_t sub_217CC56B0()
{
  result = qword_27CBA3C98;
  if (!qword_27CBA3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3C98);
  }

  return result;
}

uint64_t sub_217CC5710()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

void sub_217CC584C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000646ELL;
  v6 = 0x756F72676B636162;
  if (v2 != 5)
  {
    v6 = 0x646957656C6F6877;
    v5 = 0xEB00000000746567;
  }

  v7 = 0xEB00000000656D61;
  v8 = 0x4E6E6F6974636573;
  if (v2 != 3)
  {
    v8 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656C6369747261;
  if (v2 != 1)
  {
    v10 = 0x6569726F74536F6ELL;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217CC5A04()
{
  result = qword_2811C19F8;
  if (!qword_2811C19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19F8);
  }

  return result;
}

uint64_t ViewData.viewSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CC5B70()
{
  v1 = 0x6570795477656976;
  if (*v0 != 1)
  {
    v1 = 0x6974634177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373655377656976;
  }
}

uint64_t sub_217CC5BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CC648C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CC5C04(uint64_t a1)
{
  v2 = sub_217CC5E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC5C40(uint64_t a1)
{
  v2 = sub_217CC5E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  sub_217CC61B0(0, &qword_2811BC4E8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v20 = *(v1 + 17);
  v21 = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_217CC5E60();
  sub_217D89E7C();
  v26 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v17 = v20;
    v25 = v21;
    v24 = 1;
    sub_217CC5EB4();
    sub_217D89CAC();
    v23 = v17;
    v22 = 2;
    sub_217CC5F08();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_217CC5E60()
{
  result = qword_2811BD228;
  if (!qword_2811BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD228);
  }

  return result;
}

unint64_t sub_217CC5EB4()
{
  result = qword_2811BD1F8;
  if (!qword_2811BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1F8);
  }

  return result;
}

unint64_t sub_217CC5F08()
{
  result = qword_2811C7E90;
  if (!qword_2811C7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E90);
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CC61B0(0, &qword_2811BC8E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC5E60();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v12 = sub_217D89B8C();
  v14 = v13;
  v15 = v12;
  v22 = 1;
  sub_217CC6214();
  sub_217D89BCC();
  v19 = v23;
  v20 = 2;
  sub_217CC6268();
  sub_217D89BCC();
  (*(v7 + 8))(v10, v6);
  v17 = v21;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 17) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC61B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC5E60();
    v7 = a3(a1, &type metadata for ViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC6214()
{
  result = qword_2811BD1E8;
  if (!qword_2811BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1E8);
  }

  return result;
}

unint64_t sub_217CC6268()
{
  result = qword_2811C7E80;
  if (!qword_2811C7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E80);
  }

  return result;
}

uint64_t sub_217CC62EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217CC6334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217CC6388()
{
  result = qword_27CBA3CA0;
  if (!qword_27CBA3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CA0);
  }

  return result;
}

unint64_t sub_217CC63E0()
{
  result = qword_2811BD218;
  if (!qword_2811BD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD218);
  }

  return result;
}

unint64_t sub_217CC6438()
{
  result = qword_2811BD220;
  if (!qword_2811BD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD220);
  }

  return result;
}

uint64_t sub_217CC648C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

NewsAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CC6660(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CC673C()
{
  result = qword_27CBA3CA8;
  if (!qword_27CBA3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CA8);
  }

  return result;
}

uint64_t sub_217CC6790()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CC6828()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CC68AC()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t ShareContextData.activityType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ShareContextData.activityType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217CC6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CC6B00(uint64_t a1)
{
  v2 = sub_217CC6CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC6B3C(uint64_t a1)
{
  v2 = sub_217CC6CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareContextData.encode(to:)(void *a1)
{
  sub_217CC6E9C(0, &qword_27CBA3CB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CC6CC4()
{
  result = qword_27CBA3CB8;
  if (!qword_27CBA3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CB8);
  }

  return result;
}

uint64_t ShareContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217CC6E9C(0, &qword_27CBA3CC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC6E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC6CC4();
    v7 = a3(a1, &type metadata for ShareContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CC6F20(void *a1)
{
  sub_217CC6E9C(0, &qword_27CBA3CB0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC6CC4();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217CC7090()
{
  result = qword_27CBA3CC8;
  if (!qword_27CBA3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CC8);
  }

  return result;
}

unint64_t sub_217CC70E8()
{
  result = qword_27CBA3CD0;
  if (!qword_27CBA3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CD0);
  }

  return result;
}

unint64_t sub_217CC7140()
{
  result = qword_27CBA3CD8;
  if (!qword_27CBA3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CD8);
  }

  return result;
}

unint64_t sub_217CC7194()
{
  result = qword_27CBA3CE0;
  if (!qword_27CBA3CE0)
  {
    type metadata accessor for TimestampJitterFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CE0);
  }

  return result;
}

_BYTE *AlternateHeadlineData.init(articleHeadlineTreatmentState:articleHeadlineTreatmentId:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

unint64_t sub_217CC7268()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_217CC72A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001DLL && 0x8000000217DD2090 == a2;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD20B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CC7384(uint64_t a1)
{
  v2 = sub_217CC7588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC73C0(uint64_t a1)
{
  v2 = sub_217CC7588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlternateHeadlineData.encode(to:)(void *a1)
{
  sub_217CC77FC(0, &qword_2811BC620, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC7588();
  sub_217D89E7C();
  v17 = v10;
  v16 = 0;
  sub_217CC75DC();
  sub_217D89CAC();
  if (!v2)
  {
    v15 = 1;
    sub_217D89CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217CC7588()
{
  result = qword_2811C19E8;
  if (!qword_2811C19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19E8);
  }

  return result;
}

unint64_t sub_217CC75DC()
{
  result = qword_2811BDA30;
  if (!qword_2811BDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA30);
  }

  return result;
}

uint64_t AlternateHeadlineData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CC77FC(0, &qword_2811BC9B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CC7588();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    sub_217CC7860();
    sub_217D89BCC();
    v12 = v18;
    v16 = 1;
    v14 = sub_217D89BDC();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 4) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CC77FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CC7588();
    v7 = a3(a1, &type metadata for AlternateHeadlineData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CC7860()
{
  result = qword_2811BDA20;
  if (!qword_2811BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDA20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlternateHeadlineData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[8])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AlternateHeadlineData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_217CC7994()
{
  result = qword_27CBA3CF0;
  if (!qword_27CBA3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3CF0);
  }

  return result;
}

unint64_t sub_217CC79EC()
{
  result = qword_2811C19D8;
  if (!qword_2811C19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19D8);
  }

  return result;
}

unint64_t sub_217CC7A44()
{
  result = qword_2811C19E0;
  if (!qword_2811C19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C19E0);
  }

  return result;
}

uint64_t sub_217CC7B60()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3D28);
  __swift_project_value_buffer(v0, qword_27CBA3D28);
  return sub_217D8866C();
}

uint64_t ArticleSaveEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleSaveEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 20);
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 20);
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 24);
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 24);
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 28);
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 28);
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 32);
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 32);
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 36);
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 36);
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 40);
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 40);
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 44);
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 44);
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 48);
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 48);
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 52);
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleSaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 52);
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 56);
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CC8C94(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ArticleSaveEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleSaveEvent(0) + 56);
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleSaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleSaveEvent(0);
  v5 = v4[5];
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t ArticleSaveEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleSaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleSaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleSaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleSaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t ArticleSaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleSaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleSaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleSaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t ArticleSaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ArticleSaveEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t ArticleSaveEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleSaveEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AE3AE8(v4, v5);
}

__n128 ArticleSaveEvent.Model.init(eventData:articleData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 *a11, uint64_t a12)
{
  v17 = *a3;
  v41 = *a4;
  v18 = *(a4 + 2);
  v19 = a6[1];
  v43 = *a6;
  v42 = *(a6 + 8);
  v46 = a7[1];
  v47 = *a7;
  v45 = *(a7 + 1);
  v55 = a10[1];
  v56 = *a10;
  v53 = *(a10 + 17);
  v54 = *(a10 + 16);
  v51 = a10[4];
  v52 = a10[3];
  v57 = *(a12 + 32);
  v20 = sub_217D8899C();
  v49 = *(a12 + 16);
  v50 = *a12;
  v48 = *a11;
  v44 = a11[1];
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for ArticleSaveEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a2 + 127);
  v25 = *(a2 + 112);
  *(v22 + 96) = *(a2 + 96);
  *(v22 + 112) = v25;
  v26 = *(a2 + 80);
  *(v22 + 64) = *(a2 + 64);
  *(v22 + 80) = v26;
  *(a9 + v21[6]) = v17;
  v27 = a9 + v21[7];
  *v27 = v41;
  *(v27 + 16) = v18;
  v28 = (a9 + v21[8]);
  v29 = a5[3];
  v28[2] = a5[2];
  v28[3] = v29;
  v30 = a5[1];
  *v28 = *a5;
  v28[1] = v30;
  v31 = a5[8];
  v28[7] = a5[7];
  v28[8] = v31;
  v32 = a5[6];
  v28[5] = a5[5];
  v28[6] = v32;
  v28[4] = a5[4];
  v33 = a9 + v21[9];
  *v33 = v43;
  *(v33 + 8) = v19;
  *(v33 + 16) = v42;
  v34 = a9 + v21[10];
  *v34 = v47;
  *(v34 + 1) = v46;
  *(v34 + 2) = v45;
  v35 = a9 + v21[11];
  v36 = *(a8 + 16);
  *v35 = *a8;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a8 + 32);
  *(v35 + 48) = *(a8 + 48);
  v37 = a9 + v21[12];
  *v37 = v56;
  *(v37 + 8) = v55;
  *(v37 + 16) = v54;
  *(v37 + 17) = v53;
  *(v37 + 24) = v52;
  *(v37 + 32) = v51;
  v38 = (a9 + v21[13]);
  *v38 = v48;
  v38[1] = v44;
  v39 = a9 + v21[14];
  result = v50;
  *v39 = v50;
  *(v39 + 16) = v49;
  *(v39 + 32) = v57;
  return result;
}

uint64_t sub_217CC996C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x61446E6F69746361;
    v8 = 0x6174614464656566;
    if (a1 != 3)
    {
      v8 = 0x74614470756F7267;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x44656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x446C656E6E616863;
    v2 = 0x7461446575737369;
    if (a1 != 9)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614477656976;
    v4 = 0xD000000000000016;
    if (a1 != 6)
    {
      v4 = 0xD000000000000021;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217CC9AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217CCB9AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217CC9B14(uint64_t a1)
{
  v2 = sub_217CCA338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CC9B50(uint64_t a1)
{
  v2 = sub_217CCA338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleSaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCAD78(0, &qword_27CBA3D40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCA338();
  sub_217D89E7C();
  v128 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v129 = v7;
  v13 = type metadata accessor for ArticleSaveEvent.Model(0);
  v63 = v3;
  v64 = v13;
  v14 = v3 + *(v13 + 20);
  v15 = *(v14 + 96);
  v16 = *(v14 + 64);
  v125 = *(v14 + 80);
  v126 = v15;
  v17 = *(v14 + 96);
  *v127 = *(v14 + 112);
  v18 = *(v14 + 16);
  v19 = *(v14 + 48);
  v122 = *(v14 + 32);
  v123 = v19;
  v20 = *(v14 + 48);
  v124 = *(v14 + 64);
  v21 = *(v14 + 16);
  v121[0] = *v14;
  v121[1] = v21;
  v118 = v125;
  v119 = v17;
  v120[0] = *(v14 + 112);
  v115 = v122;
  v116 = v20;
  v117 = v16;
  *&v127[15] = *(v14 + 127);
  *(v120 + 15) = *(v14 + 127);
  v113 = v121[0];
  v114 = v18;
  v112 = 1;
  sub_217AD1630(v121, &v97);
  sub_217ACF52C();
  sub_217D89CAC();
  v110[5] = v118;
  v110[6] = v119;
  *v111 = v120[0];
  *&v111[15] = *(v120 + 15);
  v110[2] = v115;
  v110[3] = v116;
  v110[4] = v117;
  v110[0] = v113;
  v110[1] = v114;
  sub_217AD2864(v110);
  v22 = v63;
  v23 = v64;
  LOBYTE(v97) = *(v63 + v64[6]);
  LOBYTE(v88) = 2;
  sub_217AED190();
  sub_217D89CAC();
  v24 = (v22 + v23[7]);
  v25 = v24[1];
  v26 = v24[2];
  v107 = *v24;
  v108 = v25;
  v109 = v26;
  v106 = 3;
  sub_217AD1A68(v107, v25, v26);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v107, v108, v109);
  v27 = (v22 + v23[8]);
  v28 = v27[6];
  v29 = v27[4];
  v102 = v27[5];
  v103 = v28;
  v30 = v27[6];
  v31 = v27[8];
  v104 = v27[7];
  v105 = v31;
  v32 = v27[2];
  v33 = *v27;
  v98 = v27[1];
  v99 = v32;
  v34 = v27[2];
  v35 = v27[4];
  v100 = v27[3];
  v101 = v35;
  v36 = *v27;
  v94 = v30;
  v95 = v104;
  v96 = v27[8];
  v97 = v36;
  v90 = v34;
  v91 = v100;
  v92 = v29;
  v93 = v102;
  v88 = v33;
  v89 = v98;
  v87 = 4;
  sub_217AD87FC(&v97, v86);
  sub_217A5D3B4();
  sub_217D89C3C();
  v86[6] = v94;
  v86[7] = v95;
  v86[8] = v96;
  v86[2] = v90;
  v86[3] = v91;
  v86[4] = v92;
  v86[5] = v93;
  v86[0] = v88;
  v86[1] = v89;
  sub_217AD96E8(v86);
  v37 = (v22 + v23[9]);
  v38 = *v37;
  v39 = v37[1];
  LOWORD(v37) = *(v37 + 8);
  *&v78 = v38;
  *(&v78 + 1) = v39;
  LOWORD(v79) = v37;
  LOBYTE(v74) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v40 = (v22 + v23[10]);
  v41 = *v40;
  v42 = v40[1];
  LOWORD(v40) = *(v40 + 1);
  v83 = v41;
  v84 = v42;
  v85 = v40;
  v82 = 6;
  sub_217ACFB8C();
  sub_217D89CAC();
  v43 = (v22 + v23[11]);
  v44 = v43[1];
  v78 = *v43;
  v79 = v44;
  v46 = *v43;
  v45 = v43[1];
  v80 = v43[2];
  v81 = *(v43 + 48);
  v74 = v46;
  v75 = v45;
  v76 = v43[2];
  v77 = *(v43 + 48);
  v73 = 7;
  sub_217ACC004(&v78, v71);
  sub_217A55B98();
  sub_217D89CAC();
  v71[0] = v74;
  v71[1] = v75;
  v71[2] = v76;
  v72 = v77;
  sub_217ACC69C(v71);
  v47 = v22 + v23[12];
  v48 = *(v47 + 8);
  v49 = *(v47 + 16);
  v50 = *(v47 + 17);
  v51 = *(v47 + 24);
  v52 = *(v47 + 32);
  v66 = *v47;
  v67 = v48;
  LOBYTE(v68) = v49;
  BYTE1(v68) = v50;
  v69 = v51;
  v70 = v52;
  v65 = 8;
  sub_217AD084C();

  sub_217D89CAC();

  v53 = v64;
  v54 = (v22 + v64[13]);
  v55 = v54[1];
  v56 = v54[2];
  v57 = v54[3];
  v66 = *v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v65 = 9;
  sub_217AE39D0(v66, v55);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(v66, v67);
  v58 = (v22 + v53[14]);
  v59 = v58[1];
  v60 = v58[2];
  v61 = v58[3];
  v62 = v58[4];
  v66 = *v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v65 = 10;
  sub_217AE3AE8(v66, v59);
  sub_217AE2CFC();
  sub_217D89C3C();
  sub_217AE4AE4(v66, v67);
  return (*(v129 + 8))(v10, v6);
}

unint64_t sub_217CCA338()
{
  result = qword_27CBA3D48;
  if (!qword_27CBA3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D48);
  }

  return result;
}

uint64_t ArticleSaveEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_217D8899C();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCAD78(0, &qword_27CBA3D50, MEMORY[0x277D844C8]);
  v61 = v6;
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = type metadata accessor for ArticleSaveEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCA338();
  v62 = v9;
  v15 = v91;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v59;
  v55 = v10;
  v56 = a1;
  v91 = v13;
  LOBYTE(v82) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v60;
  sub_217D89BCC();
  v18 = v3;
  v19 = *(v58 + 32);
  v20 = v91;
  v60 = v18;
  v19(v91, v17);
  v73 = 1;
  sub_217ACF4D8();
  sub_217D89BCC();
  v54 = 0;
  v21 = v55;
  v22 = &v20[v55[5]];
  v23 = *v81;
  *(v22 + 6) = v80;
  *(v22 + 7) = v23;
  *(v22 + 127) = *&v81[15];
  v24 = v77;
  *(v22 + 2) = v76;
  *(v22 + 3) = v24;
  v25 = v79;
  *(v22 + 4) = v78;
  *(v22 + 5) = v25;
  v26 = v75;
  *v22 = v74;
  *(v22 + 1) = v26;
  LOBYTE(v68) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v20[v21[6]] = v82;
  LOBYTE(v68) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v27 = v83;
  v28 = &v20[v21[7]];
  *v28 = v82;
  *(v28 + 2) = v27;
  v72 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v29 = &v20[v21[8]];
  v30 = v87;
  v31 = v89;
  *(v29 + 6) = v88;
  *(v29 + 7) = v31;
  *(v29 + 8) = v90;
  v32 = v85;
  *(v29 + 2) = v84;
  *(v29 + 3) = v32;
  *(v29 + 4) = v86;
  *(v29 + 5) = v30;
  v33 = v83;
  *v29 = v82;
  *(v29 + 1) = v33;
  LOBYTE(v64) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v34 = v69;
  v35 = &v20[v21[9]];
  *v35 = v68;
  *(v35 + 8) = v34;
  LOBYTE(v64) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v36 = BYTE1(v68);
  v37 = WORD1(v68);
  v38 = &v20[v21[10]];
  *v38 = v68;
  v38[1] = v36;
  *(v38 + 1) = v37;
  v67 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v39 = &v91[v55[11]];
  v40 = v69;
  *v39 = v68;
  *(v39 + 1) = v40;
  *(v39 + 2) = v70;
  v39[48] = v71;
  v63 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v41 = *(&v64 + 1);
  v42 = v65;
  v43 = BYTE1(v65);
  v44 = *(&v65 + 1);
  v45 = v66;
  v46 = &v91[v55[12]];
  *v46 = v64;
  *(v46 + 1) = v41;
  v46[16] = v42;
  v46[17] = v43;
  *(v46 + 3) = v44;
  *(v46 + 4) = v45;
  v63 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  v47 = &v91[v55[13]];
  v48 = v65;
  *v47 = v64;
  *(v47 + 1) = v48;
  v63 = 10;
  sub_217AE2CA8();
  sub_217D89B5C();
  (*(v16 + 8))(v62, v61);
  v49 = v66;
  v50 = v91;
  v51 = &v91[v55[14]];
  v52 = v65;
  *v51 = v64;
  *(v51 + 1) = v52;
  *(v51 + 4) = v49;
  sub_217CCADDC(v50, v57);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_217CCAE40(v50);
}

void sub_217CCAD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCA338();
    v7 = a3(a1, &type metadata for ArticleSaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCADDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleSaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCAE40(uint64_t a1)
{
  v2 = type metadata accessor for ArticleSaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CCAF74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CC8C94(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CC8C94(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217CC8C94(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217CC8C94(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217CC8C94(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217CC8C94(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217CC8C94(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CC8C94(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217CC8C94(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_217CC8C94(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_217CCB4E0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CC8C94(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
    if (v1 <= 0x3F)
    {
      sub_217CC8C94(319, &qword_2811C8848, sub_217AED13C, sub_217AED190);
      if (v2 <= 0x3F)
      {
        sub_217CC8C94(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
        if (v3 <= 0x3F)
        {
          sub_217CC8C94(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
          if (v4 <= 0x3F)
          {
            sub_217CC8C94(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
            if (v5 <= 0x3F)
            {
              sub_217CC8C94(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
              if (v6 <= 0x3F)
              {
                sub_217CC8C94(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                if (v7 <= 0x3F)
                {
                  sub_217CC8C94(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                  if (v8 <= 0x3F)
                  {
                    sub_217CC8C94(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                    if (v9 <= 0x3F)
                    {
                      sub_217CC8C94(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                      if (v10 <= 0x3F)
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
  }
}

unint64_t sub_217CCB8A8()
{
  result = qword_27CBA3D58;
  if (!qword_27CBA3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D58);
  }

  return result;
}

unint64_t sub_217CCB900()
{
  result = qword_27CBA3D60;
  if (!qword_27CBA3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D60);
  }

  return result;
}

unint64_t sub_217CCB958()
{
  result = qword_27CBA3D68;
  if (!qword_27CBA3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3D68);
  }

  return result;
}

uint64_t sub_217CCB9AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_217CCBE18()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3DA0);
  __swift_project_value_buffer(v0, qword_27CBA3DA0);
  return sub_217D8866C();
}

uint64_t SportScoreConcernEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SportScoreConcernEvent.scoreConcernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CCBFE4()
{
  if (!qword_27CBA3DB8)
  {
    sub_217CCC04C();
    sub_217CCC0A0();
    v0 = sub_217D8829C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3DB8);
    }
  }
}

unint64_t sub_217CCC04C()
{
  result = qword_27CBA3DC0;
  if (!qword_27CBA3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DC0);
  }

  return result;
}

unint64_t sub_217CCC0A0()
{
  result = qword_27CBA3DC8;
  if (!qword_27CBA3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DC8);
  }

  return result;
}

uint64_t SportScoreConcernEvent.scoreConcernData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SportScoreConcernEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SportScoreConcernEvent(0) + 20);
  sub_217CCBFE4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SportScoreConcernEvent.Model.scoreConcernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_217CCC334(&v12, v11);
}

__n128 SportScoreConcernEvent.Model.init(eventData:scoreConcernData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  result = *a2;
  v10 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v10;
  return result;
}

unint64_t sub_217CCC42C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_217CCC470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD20D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217CCC55C(uint64_t a1)
{
  v2 = sub_217CCC81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CCC598(uint64_t a1)
{
  v2 = sub_217CCC81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportScoreConcernEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCCC3C(0, &qword_27CBA3DD0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCC81C();
  sub_217D89E7C();
  v32 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = v3 + *(type metadata accessor for SportScoreConcernEvent.Model(0) + 20);
    v13 = *(v12 + 48);
    v14 = *(v12 + 16);
    v27 = *(v12 + 32);
    v28 = v13;
    v15 = *(v12 + 48);
    v29 = *(v12 + 64);
    v16 = *(v12 + 16);
    v26[0] = *v12;
    v26[1] = v16;
    v22 = v27;
    v23 = v15;
    v24 = *(v12 + 64);
    v30 = *(v12 + 80);
    v25 = *(v12 + 80);
    v20 = v26[0];
    v21 = v14;
    v31 = 1;
    sub_217CCC334(v26, v18);
    sub_217CCC0A0();
    sub_217D89CAC();
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_217CCC870(v18);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CCC81C()
{
  result = qword_27CBA3DD8;
  if (!qword_27CBA3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3DD8);
  }

  return result;
}

uint64_t SportScoreConcernEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_217D8899C();
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCCC3C(0, &qword_27CBA3DE0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SportScoreConcernEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCC81C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v12;
  v17 = v15;
  v18 = v29;
  LOBYTE(v33) = 0;
  sub_217A602A0(&qword_2811C8408);
  v19 = v32;
  v20 = v30;
  sub_217D89BCC();
  (*(v18 + 32))(v17, v6, v19);
  v39 = 1;
  sub_217CCC04C();
  sub_217D89BCC();
  (*(v31 + 8))(v11, v20);
  v21 = v28;
  v22 = v17 + *(v27 + 20);
  v23 = v36;
  *(v22 + 32) = v35;
  *(v22 + 48) = v23;
  *(v22 + 64) = v37;
  *(v22 + 80) = v38;
  v24 = v34;
  *v22 = v33;
  *(v22 + 16) = v24;
  sub_217CCCCA0(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CCCD04(v17);
}

void sub_217CCCC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCC81C();
    v7 = a3(a1, &type metadata for SportScoreConcernEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCCCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportScoreConcernEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCCD04(uint64_t a1)
{
  v2 = type metadata accessor for SportScoreConcernEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CCCE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217CCBFE4();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_217CCCF20()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217CCBFE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_217CCCFCC()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217CCD054()
{
  result = qword_27CBA3E08;
  if (!qword_27CBA3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E08);
  }

  return result;
}

unint64_t sub_217CCD0AC()
{
  result = qword_27CBA3E10;
  if (!qword_27CBA3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E10);
  }

  return result;
}

unint64_t sub_217CCD104()
{
  result = qword_27CBA3E18;
  if (!qword_27CBA3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E18);
  }

  return result;
}

uint64_t CommandExecutionSource.tracker.getter()
{
  sub_217D88ECC();
  sub_217CCD1BC();
  sub_217D8895C();
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_217CCD1BC()
{
  result = qword_27CBA3E20;
  if (!qword_27CBA3E20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CBA3E20);
  }

  return result;
}

NewsAnalytics::PuzzleLayout_optional __swiftcall PuzzleLayout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t PuzzleLayout.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_217CCD2C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000217DCC180;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = 0x8000000217DCC180;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217CCD374()
{
  result = qword_27CBA3E28;
  if (!qword_27CBA3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E28);
  }

  return result;
}

uint64_t sub_217CCD3C8()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CCD450()
{
  *v0;
  sub_217D895CC();
}

uint64_t sub_217CCD4C4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CCD548@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_217D89B0C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_217CCD5A8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000217DCC180;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_217CCD6AC()
{
  result = qword_27CBA3E30;
  if (!qword_27CBA3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E30);
  }

  return result;
}

uint64_t sub_217CCD7C8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3E68);
  __swift_project_value_buffer(v0, qword_27CBA3E68);
  return sub_217D8866C();
}

uint64_t FollowTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 20);
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 24);
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 28);
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 32);
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 36);
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowTagEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowTagEvent(0) + 40);
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowTagEvent(0);
  v5 = v4[5];
  sub_217BADF88(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217BADF88(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217BADF88(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217BADF88(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217BADF88(0, &qword_2811C8848, sub_217AED13C, sub_217AED190);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217BADF88(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v8, v17);
}

uint64_t FollowTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FollowTagEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t FollowTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FollowTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t FollowTagEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FollowTagEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t FollowTagEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FollowTagEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 FollowTagEvent.Model.init(eventData:tagData:feedData:viewData:userBundleSubscriptionContextData:actionData:sectionData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v27 = *a3;
  v13 = *(a3 + 2);
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v17 = *a6;
  v30 = *a7;
  v29 = a7[1].n128_u64[0];
  v28 = a7[1].n128_u8[8];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for FollowTagEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a8 + v19[6];
  *v21 = v27;
  *(v21 + 16) = v13;
  v22 = a8 + v19[7];
  *v22 = v14;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  v23 = a8 + v19[8];
  v24 = *(a5 + 16);
  *v23 = *a5;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a5 + 32);
  *(v23 + 48) = *(a5 + 48);
  *(a8 + v19[9]) = v17;
  v25 = (a8 + v19[10]);
  result = v30;
  *v25 = v30;
  v25[1].n128_u64[0] = v29;
  v25[1].n128_u8[8] = v28;
  return result;
}

uint64_t sub_217CCE9FC(uint64_t a1)
{
  v2 = sub_217CCEEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CCEA38(uint64_t a1)
{
  v2 = sub_217CCEEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CCF558(0, &qword_27CBA3E80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCEEE8();
  sub_217D89E7C();
  LOBYTE(v37) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FollowTagEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    *&v37 = *v13;
    *(&v37 + 1) = v14;
    LOBYTE(v33) = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    v15 = (v3 + v12[6]);
    v16 = v15[1];
    v17 = v15[2];
    *&v37 = *v15;
    *(&v37 + 1) = v16;
    *&v38 = v17;
    LOBYTE(v33) = 2;
    sub_217AD1A68(v37, v16, v17);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v37, *(&v37 + 1), v38);
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v41 = v20;
    v42 = v21;
    v43 = v19;
    v46 = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v22 = (v3 + v12[8]);
    v23 = v22[1];
    v37 = *v22;
    v38 = v23;
    v25 = *v22;
    v24 = v22[1];
    v39 = v22[2];
    v40 = *(v22 + 48);
    v33 = v25;
    v34 = v24;
    v35 = v22[2];
    v36 = *(v22 + 48);
    v45 = 4;
    sub_217ACC004(&v37, v31);
    sub_217A55B98();
    sub_217D89CAC();
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v32 = v36;
    sub_217ACC69C(v31);
    LOBYTE(v28) = *(v3 + v12[9]);
    v44 = 5;
    sub_217AED190();
    sub_217D89CAC();
    v26 = (v3 + v12[10]);
    v27 = *(v26 + 24);
    v28 = *v26;
    v29 = *(v26 + 1);
    v30 = v27;
    v44 = 6;
    sub_217B17644();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217CCEEE8()
{
  result = qword_27CBA3E88;
  if (!qword_27CBA3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E88);
  }

  return result;
}

uint64_t FollowTagEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CCF558(0, &qword_27CBA3E90, MEMORY[0x277D844C8]);
  v35 = v7;
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for FollowTagEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CCEEE8();
  v36 = v10;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  LOBYTE(v40) = 0;
  sub_217A602A0(&qword_2811C8408);
  v17 = v34;
  sub_217D89BCC();
  (*(v32 + 32))(v14, v17, v4);
  LOBYTE(v37) = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v34 = 0;
  v18 = *(&v40 + 1);
  v19 = &v14[v11[5]];
  *v19 = v40;
  *(v19 + 1) = v18;
  LOBYTE(v37) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v20 = v41;
  v21 = &v14[v11[6]];
  *v21 = v40;
  *(v21 + 2) = v20;
  LOBYTE(v37) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v22 = *(&v40 + 1);
  v23 = v41;
  v24 = &v14[v11[7]];
  *v24 = v40;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  v45 = 4;
  sub_217A54D08();
  sub_217D89BCC();
  v25 = &v14[v11[8]];
  v26 = v41;
  *v25 = v40;
  *(v25 + 1) = v26;
  *(v25 + 2) = v42;
  v25[48] = v43;
  v44 = 5;
  sub_217AED13C();
  sub_217D89BCC();
  v14[v11[9]] = v37;
  v44 = 6;
  sub_217B175F0();
  sub_217D89B5C();
  (*(v16 + 8))(v36, v35);
  v27 = v38;
  v28 = v39;
  v29 = &v14[v11[10]];
  *v29 = v37;
  *(v29 + 2) = v27;
  v29[24] = v28;
  sub_217CCF5BC(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CCF620(v14);
}

void sub_217CCF558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CCEEE8();
    v7 = a3(a1, &type metadata for FollowTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CCF5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CCF620(uint64_t a1)
{
  v2 = type metadata accessor for FollowTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CCF7B8()
{
  result = qword_27CBA3E98;
  if (!qword_27CBA3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3E98);
  }

  return result;
}

unint64_t sub_217CCF810()
{
  result = qword_27CBA3EA0;
  if (!qword_27CBA3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3EA0);
  }

  return result;
}

unint64_t sub_217CCF868()
{
  result = qword_27CBA3EA8;
  if (!qword_27CBA3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3EA8);
  }

  return result;
}

uint64_t sub_217CCF984()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3EE0);
  __swift_project_value_buffer(v0, qword_27CBA3EE0);
  return sub_217D8866C();
}

uint64_t AudioEngagementCompletedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementCompletedEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 60);
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 60);
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 64);
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CD0E18(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AudioEngagementCompletedEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 64);
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementCompletedEvent(0);
  v5 = v4[5];
  sub_217CD0E18(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CD0E18(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217CD0E18(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217CD0E18(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217CD0E18(0, &qword_2811C84A8, sub_217C056E8, sub_217C0573C);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CD0E18(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_217CD0E18(0, &qword_2811C8628, sub_217AEC670, sub_217AEC6C8);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CD0E18(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217CD0E18(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_217CD0E18(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217CD0E18(0, &qword_2811C8798, sub_217C06360, sub_217C063B4);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217CD0E18(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v2, v29);
}

uint64_t AudioEngagementCompletedEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t AudioEngagementCompletedEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t AudioEngagementCompletedEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t AudioEngagementCompletedEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t AudioEngagementCompletedEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementCompletedEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_217AEC604(&v8, &v7);
}

uint64_t AudioEngagementCompletedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t AudioEngagementCompletedEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217AE39D0(v4, v5);
}

uint64_t AudioEngagementCompletedEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 56));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementCompletedEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 60));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

__n128 AudioEngagementCompletedEvent.Model.init(eventData:articleData:channelData:groupData:feedData:trackData:viewData:audioEngagementData:userBundleSubscriptionContextData:issueData:issueViewData:playbackData:userChannelContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 *a11, uint64_t *a12, int *a13, char *a14)
{
  v19 = *a3;
  v49 = a3[1];
  v20 = *(a3 + 16);
  v21 = *(a3 + 17);
  v48 = a3[3];
  v47 = a3[4];
  v51 = *a5;
  v50 = *(a5 + 2);
  v53 = *a6;
  v52 = *(a6 + 4);
  v56 = *a7;
  v55 = a7[1];
  v54 = *(a7 + 8);
  v59 = a12[1];
  v60 = *a12;
  v22 = *a13;
  v62 = a14[1];
  v63 = *a14;
  v61 = *(a14 + 1);
  v23 = sub_217D8899C();
  v57 = a11[1];
  v58 = *a11;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v25 = a9 + v24[5];
  v26 = *(a2 + 48);
  *(v25 + 32) = *(a2 + 32);
  *(v25 + 48) = v26;
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  *(v25 + 127) = *(a2 + 127);
  v28 = *(a2 + 112);
  *(v25 + 96) = *(a2 + 96);
  *(v25 + 112) = v28;
  v29 = *(a2 + 80);
  *(v25 + 64) = *(a2 + 64);
  *(v25 + 80) = v29;
  v30 = a9 + v24[6];
  *v30 = v19;
  *(v30 + 8) = v49;
  *(v30 + 16) = v20;
  *(v30 + 17) = v21;
  *(v30 + 24) = v48;
  *(v30 + 32) = v47;
  v31 = (a9 + v24[7]);
  v32 = a4[3];
  v31[2] = a4[2];
  v31[3] = v32;
  v33 = a4[1];
  *v31 = *a4;
  v31[1] = v33;
  v34 = a4[8];
  v31[7] = a4[7];
  v31[8] = v34;
  v35 = a4[6];
  v31[5] = a4[5];
  v31[6] = v35;
  v31[4] = a4[4];
  v36 = a9 + v24[8];
  *v36 = v51;
  *(v36 + 16) = v50;
  v37 = a9 + v24[9];
  *v37 = v53;
  *(v37 + 4) = v52;
  v38 = a9 + v24[10];
  *v38 = v56;
  *(v38 + 8) = v55;
  *(v38 + 16) = v54;
  v39 = (a9 + v24[11]);
  v40 = a8[1];
  *v39 = *a8;
  v39[1] = v40;
  *(v39 + 26) = *(a8 + 26);
  v41 = a9 + v24[12];
  v42 = *(a10 + 16);
  *v41 = *a10;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(a10 + 32);
  *(v41 + 48) = *(a10 + 48);
  v43 = (a9 + v24[13]);
  result = v58;
  *v43 = v58;
  v43[1] = v57;
  v45 = (a9 + v24[14]);
  *v45 = v60;
  v45[1] = v59;
  *(a9 + v24[15]) = v22;
  v46 = a9 + v24[16];
  *v46 = v63;
  *(v46 + 1) = v62;
  *(v46 + 2) = v61;
  return result;
}