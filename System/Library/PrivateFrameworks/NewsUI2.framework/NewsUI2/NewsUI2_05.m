void sub_218748200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218748264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D557C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218748324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_218748CB0(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187483E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D560C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187484A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_218C698F4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218748534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_219901310(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187485F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5A8C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for FollowingModel()
{
  result = qword_280EDC608;
  if (!qword_280EDC608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218748720()
{
  sub_2187489B4();
  if (v0 <= 0x3F)
  {
    sub_2187489E4();
    if (v1 <= 0x3F)
    {
      sub_218748968(319, &unk_280ED1540, type metadata accessor for FollowingAudioModel);
      if (v2 <= 0x3F)
      {
        sub_218748968(319, &qword_280EC51D0, type metadata accessor for FollowingEditorialModel);
        if (v3 <= 0x3F)
        {
          sub_218748B4C();
          if (v4 <= 0x3F)
          {
            sub_218748BA0();
            if (v5 <= 0x3F)
            {
              sub_218748968(319, &qword_280ED6648, type metadata accessor for FollowingTagModel);
              if (v6 <= 0x3F)
              {
                sub_218748968(319, &qword_280ECED00, type metadata accessor for FollowingButtonModel);
                if (v7 <= 0x3F)
                {
                  sub_218748BF4();
                  if (v8 <= 0x3F)
                  {
                    sub_218748E0C();
                    if (v9 <= 0x3F)
                    {
                      sub_218748968(319, &qword_280EC1CF0, type metadata accessor for FollowingEngagementModel);
                      if (v10 <= 0x3F)
                      {
                        sub_218748968(319, &unk_280EC85D0, type metadata accessor for FollowingMySportsModel);
                        if (v11 <= 0x3F)
                        {
                          sub_218748968(319, &unk_280EC5108, type metadata accessor for FollowingPuzzleHubModel);
                          if (v12 <= 0x3F)
                          {
                            sub_218749084();
                            if (v13 <= 0x3F)
                            {
                              sub_2187490B4();
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_218748968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_2187489B4()
{
  result = qword_280ECEC28;
  if (!qword_280ECEC28)
  {
    result = &type metadata for FollowingForYouModel;
    atomic_store(&type metadata for FollowingForYouModel, &qword_280ECEC28);
  }

  return result;
}

ValueMetadata *sub_2187489E4()
{
  result = qword_280EC85E8;
  if (!qword_280EC85E8)
  {
    result = &type metadata for FollowingMagazineModel;
    atomic_store(&type metadata for FollowingMagazineModel, &qword_280EC85E8);
  }

  return result;
}

uint64_t type metadata accessor for FollowingAudioModel()
{
  result = qword_280ED1530;
  if (!qword_280ED1530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218748A60()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    sub_2186E352C();
    if (v1 <= 0x3F)
    {
      sub_21873F65C(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_218748B4C()
{
  result = qword_280ED13A8;
  if (!qword_280ED13A8)
  {
    result = &type metadata for FollowingSavedModel;
    atomic_store(&type metadata for FollowingSavedModel, &qword_280ED13A8);
  }

  return result;
}

ValueMetadata *sub_218748BA0()
{
  result = qword_280ECAF08;
  if (!qword_280ECAF08)
  {
    result = &type metadata for FollowingHistoryModel;
    atomic_store(&type metadata for FollowingHistoryModel, &qword_280ECAF08);
  }

  return result;
}

void sub_218748BF4()
{
  if (!qword_280ECED10)
  {
    type metadata accessor for FollowingButtonModel();
    sub_218748D40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ECED10);
    }
  }
}

uint64_t sub_218748C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218748CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218748CF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218748D40()
{
  if (!qword_280EE7470)
  {
    type metadata accessor for FollowingTagModel();
    sub_218748C68(&unk_280ED6630, type metadata accessor for FollowingTagModel);
    sub_218748C68(&qword_280ED6640, type metadata accessor for FollowingTagModel);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7470);
    }
  }
}

ValueMetadata *sub_218748E0C()
{
  result = qword_280EB8B08;
  if (!qword_280EB8B08)
  {
    result = &type metadata for FollowingSharedWithYouModel;
    atomic_store(&type metadata for FollowingSharedWithYouModel, &qword_280EB8B08);
  }

  return result;
}

uint64_t type metadata accessor for FollowingEngagementModel()
{
  result = qword_280EC1CE0;
  if (!qword_280EC1CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218748E88()
{
  result = sub_219BE35B4();
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

uint64_t type metadata accessor for FollowingMySportsModel()
{
  result = qword_280EC85C0;
  if (!qword_280EC85C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FollowingPuzzleHubModel()
{
  result = qword_280EC50F8;
  if (!qword_280EC50F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218748FC4()
{
  sub_2186E3374();
  if (v0 <= 0x3F)
  {
    sub_2186E352C();
    if (v1 <= 0x3F)
    {
      sub_21873F65C(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_218749084()
{
  result = qword_280ED3B78;
  if (!qword_280ED3B78)
  {
    result = &type metadata for FollowingFoodModel;
    atomic_store(&type metadata for FollowingFoodModel, &qword_280ED3B78);
  }

  return result;
}

ValueMetadata *sub_2187490B4()
{
  result = qword_280EC5050;
  if (!qword_280EC5050)
  {
    result = &type metadata for FollowingRecipeBoxModel;
    atomic_store(&type metadata for FollowingRecipeBoxModel, &qword_280EC5050);
  }

  return result;
}

unint64_t sub_2187490E4()
{
  result = qword_280ED1490[0];
  if (!qword_280ED1490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED1490);
  }

  return result;
}

uint64_t sub_218749138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218749180(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187491C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218749210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingTagModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2187493C0()
{
  if (!qword_280EE55F0)
  {
    sub_2187486B4(255);
    sub_2187494B4();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&qword_280EE5300, 255, sub_2187494B4);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE55F0);
    }
  }
}

void sub_2187494B4()
{
  if (!qword_280EE52F8)
  {
    type metadata accessor for FollowingModel();
    sub_2187495C4();
    sub_2187490E4();
    sub_21871639C(&qword_280EDC630, 255, type metadata accessor for FollowingModel);
    sub_21871639C(&qword_280EE4F68, 255, sub_2187495C4);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE52F8);
    }
  }
}

void sub_2187495C4()
{
  if (!qword_280EE4F58)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218749A24();
    sub_21874A730();
    sub_21874A8C0();
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE3C40, 255, sub_218749A24);
    sub_21871639C(&qword_280EE43C8, 255, sub_21874A730);
    sub_21871639C(&unk_280EE3CC0, 255, sub_21874A8C0);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4F58);
    }
  }
}

void sub_21874974C()
{
  if (!qword_280EE3F20)
  {
    sub_2187486B4(255);
    sub_218749930();
    type metadata accessor for FollowingViewCellProvider();
    type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930);
    sub_21871639C(&unk_280EBEA78, 255, type metadata accessor for FollowingViewCellProvider);
    sub_21871639C(qword_280EE2080, 255, type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider);
    sub_21871639C(&qword_280ECEC18, 255, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3F20);
    }
  }
}

void sub_218749930()
{
  if (!qword_280EE4C60)
  {
    type metadata accessor for FollowingSectionLayoutDescriptor();
    type metadata accessor for FollowingLayoutModel();
    sub_21871639C(&unk_280EA6930, 255, type metadata accessor for FollowingSectionLayoutDescriptor);
    sub_21871639C(&qword_280ECEC20, 255, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4C60);
    }
  }
}

void sub_218749A24()
{
  if (!qword_280EE3C38)
  {
    sub_21874974C();
    sub_21874A490();
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_21871639C(&qword_280EE3F30, 255, sub_21874974C);
    sub_21871639C(&unk_280EE3A38, 255, sub_21874A490);
    sub_21871639C(&qword_280EE3A50, 255, sub_21874A490);
    sub_21871639C(&qword_280EE3A48, 255, sub_21874A490);
    v0 = sub_219BEA434();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3C38);
    }
  }
}

uint64_t type metadata accessor for FollowingSectionLayoutDescriptor()
{
  result = qword_280EA6918;
  if (!qword_280EA6918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218749C1C()
{
  if (!qword_280EDFA38[0])
  {
    type metadata accessor for TitleViewLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280EDFA38);
    }
  }
}

void sub_218749C88()
{
  sub_218749C1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_218749D00()
{
  sub_219BE9834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_218749E3C(319, &qword_280E8DB18, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2186F83B8(319, &qword_280EAEF70, &type metadata for SeeMoreButtonLayoutAttributes, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_218749E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FollowingLayoutModel()
{
  result = qword_280ECEC08;
  if (!qword_280ECEC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218749EEC()
{
  sub_21874A248(319, &unk_280ECEC30);
  if (v0 <= 0x3F)
  {
    sub_21874A248(319, qword_280EC85F0);
    if (v1 <= 0x3F)
    {
      sub_21874A314(319, qword_280ED1550, type metadata accessor for FollowingAudioModel);
      if (v2 <= 0x3F)
      {
        sub_21874A314(319, &qword_280EC51D8, type metadata accessor for FollowingEditorialModel);
        if (v3 <= 0x3F)
        {
          sub_21874A248(319, &qword_280ED13B0);
          if (v4 <= 0x3F)
          {
            sub_21874A248(319, qword_280ECAF10);
            if (v5 <= 0x3F)
            {
              sub_21874A314(319, qword_280ED6650, type metadata accessor for FollowingTagModel);
              if (v6 <= 0x3F)
              {
                sub_21874A314(319, &qword_280ECED08, type metadata accessor for FollowingButtonModel);
                if (v7 <= 0x3F)
                {
                  sub_21874A384();
                  if (v8 <= 0x3F)
                  {
                    sub_21874A248(319, &qword_280EB8B10);
                    if (v9 <= 0x3F)
                    {
                      sub_21874A314(319, &qword_280EC1CF8, type metadata accessor for FollowingEngagementModel);
                      if (v10 <= 0x3F)
                      {
                        sub_21874A314(319, &qword_280EC85E0, type metadata accessor for FollowingMySportsModel);
                        if (v11 <= 0x3F)
                        {
                          sub_21874A314(319, &qword_280EC5118, type metadata accessor for FollowingPuzzleHubModel);
                          if (v12 <= 0x3F)
                          {
                            sub_21874A248(319, qword_280ED3B80);
                            if (v13 <= 0x3F)
                            {
                              sub_21874A248(319, qword_280EC5058);
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_21874A248(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_21874A2A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_21874A314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_21874A384()
{
  if (!qword_280ECED20)
  {
    type metadata accessor for FollowingButtonModel();
    sub_218748D40();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280ECED20);
    }
  }
}

void sub_21874A490()
{
  if (!qword_280EE3A30)
  {
    type metadata accessor for FollowingModel();
    sub_2187486B4(255);
    sub_218749930();
    type metadata accessor for FollowingViewCellProvider();
    type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider();
    type metadata accessor for FollowingViewController();
    sub_2187490E4();
    sub_21871639C(&qword_280EDC630, 255, type metadata accessor for FollowingModel);
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930);
    sub_21871639C(&unk_280EBEA78, 255, type metadata accessor for FollowingViewCellProvider);
    sub_21871639C(qword_280EE2080, 255, type metadata accessor for FollowingBlueprintViewSupplementaryViewProvider);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    sub_21871639C(&qword_280ECEC18, 255, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BEA644();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3A30);
    }
  }
}

void sub_21874A730()
{
  if (!qword_280EE43C0)
  {
    sub_2187486B4(255);
    sub_218749930();
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    sub_21871639C(&qword_280ECEC18, 255, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE43C0);
    }
  }
}

void sub_21874A8C0()
{
  if (!qword_280EE3CB8)
  {
    sub_2187486B4(255);
    sub_218749930();
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    v0 = sub_219BEA194();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3CB8);
    }
  }
}

void sub_21874AA08()
{
  if (!qword_280EE3BD8)
  {
    sub_218749930();
    type metadata accessor for FollowingLayoutBuilder();
    sub_21874AB74();
    sub_21871639C(&unk_280EE4C70, 255, sub_218749930);
    sub_21871639C(qword_280EC86E0, 255, type metadata accessor for FollowingLayoutBuilder);
    sub_21871639C(&unk_280EE4228, 255, sub_21874AB74);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3BD8);
    }
  }
}

void sub_21874AB74()
{
  if (!qword_280EE4220)
  {
    type metadata accessor for FollowingSectionLayoutDescriptor();
    type metadata accessor for FollowingLayoutModel();
    sub_21871639C(&qword_280EA6928, 255, type metadata accessor for FollowingSectionLayoutDescriptor);
    sub_21871639C(&qword_280ECEC18, 255, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4220);
    }
  }
}

void sub_21874ACB0()
{
  if (!qword_280EE4AB8)
  {
    sub_2187486B4(255);
    sub_2187495C4();
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&qword_280EE4F68, 255, sub_2187495C4);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4AB8);
    }
  }
}

void sub_21874ADF8()
{
  if (!qword_280EE3AC8)
  {
    sub_219BE9C54();
    sub_2187486B4(255);
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    v0 = sub_219BEA544();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3AC8);
    }
  }
}

void sub_21874AF0C()
{
  if (!qword_280EE3A20)
  {
    sub_2187486B4(255);
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    v0 = sub_219BEA684();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3A20);
    }
  }
}

void sub_21874B000()
{
  if (!qword_280EE3AB0)
  {
    sub_2187486B4(255);
    type metadata accessor for FollowingViewController();
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    sub_21871639C(&qword_280EC4FC8, 255, type metadata accessor for FollowingViewController);
    v0 = sub_219BEA564();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3AB0);
    }
  }
}

void sub_21874B0F4()
{
  if (!qword_280EE4688)
  {
    sub_2187486B4(255);
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4688);
    }
  }
}

void sub_21874B18C()
{
  if (!qword_280EE3C60)
  {
    sub_2187486B4(255);
    sub_21871639C(&unk_280EE5550, 255, sub_2187486B4);
    v0 = sub_219BEA3C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3C60);
    }
  }
}

void sub_21874B344()
{
  if (!qword_280EE40C0)
  {
    sub_2187495C4();
    sub_2187486B4(255);
    sub_21871639C(&qword_280EE4F68, 255, sub_2187495C4);
    sub_21871639C(&qword_280EE5560, 255, sub_2187486B4);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE40C0);
    }
  }
}

void sub_21874B438()
{
  if (!qword_280EE48D8)
  {
    sub_2187495C4();
    sub_21871639C(&qword_280EE4F68, 255, sub_2187495C4);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE48D8);
    }
  }
}

uint64_t sub_21874B4F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (v5)
  {
    v4 = type metadata accessor for TagReorderService();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_282A41DB0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21874B5E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0);
  result = sub_219BE1E34();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for MagazinesBadgingCoordinator();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_218718690(v11, &v8[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store]);
    *&v8[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_issueReadingHistory] = v5;
    *&v8[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_bundleSubscriptionManager] = v6;
    v10.receiver = v8;
    v10.super_class = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v9 = objc_msgSendSuper2(&v10, sel_init);
    sub_21874B7FC();

    __swift_destroy_boxed_opaque_existential_1(v11);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    a2[3] = v7;
    a2[4] = &off_282A3A448;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_21874B7FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_218806FD0(&v26);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
LABEL_10:
    if (objc_getAssociatedObject(v1, ~v4))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v5 = v23;
        v6 = [v5 integerValue];

        if (((v6 ^ v4) & 1) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_218806FD0(&v26);
    }

    if ((v4 & 1) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v2 = v23;
  v3 = [v23 integerValue];
  if (v3 != -1)
  {
    v4 = v3;
    goto LABEL_10;
  }

LABEL_21:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_218BB4E48();
    v10 = v8 + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 56))(v8, &off_282A493C8, v9, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (sub_218BB4E48())
  {
    *&v26 = sub_218BB4E48();
    sub_219BF7894();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 tabBarItem];

    if (!v17)
    {
      __break(1u);
      return;
    }

    if (v14)
    {

      v18 = sub_219BF53D4();
    }

    else
    {
      v18 = 0;
    }

    [v17 setBadgeValue_];
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19 && (v20 = v19, v21 = [v19 _uip_tabElement], v20, v21))
  {
    if (v14)
    {
      v22 = sub_219BF53D4();
    }

    else
    {
      v22 = 0;
    }

    [v21 _setBadgeValue_];
  }

  else
  {
  }
}

uint64_t sub_21874BBB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92760);
  result = sub_219BE1E34();
  if (!v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874BF88();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = type metadata accessor for PuzzleBadgingCoordinator();
  v9 = swift_allocObject();
  v13[0] = 0;
  sub_21874BFF8();
  swift_allocObject();
  v9[2] = sub_219BE20D4();
  v10 = MEMORY[0x277D84F90];
  v9[16] = MEMORY[0x277D84F90];
  v9[17] = v10;
  sub_218718690(v16, (v9 + 3));
  v9[8] = v5;
  sub_218718690(v14, (v9 + 9));
  v9[14] = v6;
  v9[15] = v7;
  v11 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_219BDC714();
  v12 = sub_219BDC834();

  if (v12)
  {
    sub_219BDC704();
    sub_219BDC6F4();
  }

  else
  {
    sub_219BDC6E4();
  }

  sub_21874C048(&qword_280EC0BE8, type metadata accessor for PuzzleBadgingCoordinator);
  sub_219BDC7D4();

  v13[5] = v13[0];
  sub_219BE2114();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  if (sub_219BF3734())
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_21874C048(&unk_280EC0BF0, type metadata accessor for PuzzleBadgingCoordinator);

    sub_219BF3784();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  a2[3] = v8;
  a2[4] = &off_282A2FF18;
  *a2 = v9;
  return result;
}

unint64_t sub_21874BF88()
{
  result = qword_280E8E1B8;
  if (!qword_280E8E1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E1B8);
  }

  return result;
}

void sub_21874BFF8()
{
  if (!qword_280EE7B10)
  {
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7B10);
    }
  }
}

uint64_t sub_21874C048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874C090@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BDBD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v9 = v66;
  if (!v66)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v11 = v64;
  if (!v64)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53 = v10;
  v54 = v5;
  v51 = v65;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  v52 = result;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (!v63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA87C0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v13;
  v48 = v11;
  v49 = v9;
  v50 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v46 = v58;
  if (v58)
  {
    v45 = v59;
    v44 = type metadata accessor for SportsOnboardingManager();
    v14 = objc_allocWithZone(v44);
    *&v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_observers] = MEMORY[0x277D84F90];
    v15 = &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_lastOnboardingState];
    *v15 = 0;
    v15[8] = 1;
    v16 = &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSubscriptionChangeToken];
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000034, 0x8000000219D3E450);
    sub_219BDBD54();
    v17 = sub_219BDBD44();
    v19 = v18;
    v20 = *(v54 + 8);
    v20(v7, v12);
    MEMORY[0x21CECC330](v17, v19);

    v21 = v56;
    *v16 = v55;
    v16[1] = v21;
    v22 = &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsFollowsCommandToken];
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_219BF7314();

    v55 = 0xD00000000000002FLL;
    v56 = 0x8000000219D3E490;
    sub_219BDBD54();
    v23 = sub_219BDBD44();
    v25 = v24;
    v20(v7, v12);
    MEMORY[0x21CECC330](v23, v25);

    v26 = v56;
    *v22 = v55;
    v22[1] = v26;
    v27 = &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_tagService];
    v28 = v53;
    *v27 = v49;
    *(v27 + 1) = v28;
    v29 = &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_subscriptionService];
    v30 = v51;
    *v29 = v48;
    *(v29 + 1) = v30;
    v31 = v52;
    *&v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo] = v52;
    *&v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_featureAvailability] = v47;
    sub_218718690(v62, &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager]);
    sub_218718690(v60, &v14[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager]);
    v32 = v44;
    v57.receiver = v14;
    v57.super_class = v44;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v33 = v31;
    swift_unknownObjectRetain();
    v34 = objc_msgSendSuper2(&v57, sel_init);
    v35 = MEMORY[0x28223BE20](v34);
    *(&v43 - 2) = v35;
    v36 = v35;
    sub_219BE3204();
    *(swift_allocObject() + 16) = v33;
    v37 = v33;
    v38 = sub_219BE2E54();
    sub_219BE2F74();

    *(swift_allocObject() + 16) = v37;
    v39 = v37;
    v40 = sub_219BE2E54();
    sub_219BE2FD4();

    v41 = sub_219BE1C44();
    sub_219BE3034();

    swift_getObjectType();
    sub_219BEAF14();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_219BF3344();
    sub_219BE7014();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v55);
    __swift_destroy_boxed_opaque_existential_1(v60);
    result = __swift_destroy_boxed_opaque_existential_1(v62);
    v42 = v50;
    v50[3] = v32;
    v42[4] = &off_282A47430;
    *v42 = v36;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21874C8B8()
{

  return swift_deallocObject();
}

uint64_t sub_21874C8F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF6694();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF6674();
  MEMORY[0x28223BE20](v75);
  v76 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  MEMORY[0x28223BE20](v12 - 8);
  v77 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  v72 = v10;
  v73 = v8;
  v74 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250);
  result = sub_219BE1E34();
  v16 = v88;
  if (!v88)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v89;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99A0);
  result = sub_219BE1E34();
  if (!v87)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v85)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v67 = v17;
  v68 = v18;
  v69 = v6;
  v70 = v16;
  v71 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  v66 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v65 = v58;
  MEMORY[0x28223BE20](v19);
  v21 = (v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = type metadata accessor for SportsSyncService();
  v82 = v24;
  v83 = &off_282A859B8;
  v81[0] = v23;
  v63 = type metadata accessor for SportsSyncManager();
  v25 = objc_allocWithZone(v63);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v64 = v58;
  MEMORY[0x28223BE20](v26);
  v28 = (v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v80[3] = v24;
  v80[4] = &off_282A859B8;
  v80[0] = v30;
  v61 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_accessQueue;
  v60 = sub_2186C6148(0, &qword_280E8E3B0);
  v59 = ".followCommand.observerChanges.";
  swift_unknownObjectRetain();
  sub_219BED1C4();
  v79 = MEMORY[0x277D84F90];
  v31 = sub_2186D5C5C(&qword_280E8E3C0, MEMORY[0x277D85230]);
  v62 = v15;
  v58[1] = v31;
  v32 = MEMORY[0x277D85230];
  sub_2186D95F8(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  v58[0] = v33;
  v58[2] = sub_218744378(&qword_280E8EC30, &qword_280E8EC40, v32);
  sub_219BF7164();
  v34 = *MEMORY[0x277D85260];
  v73 = *(v73 + 104);
  v35 = v72;
  v36 = v74;
  (v73)(v72, v34, v74);
  *&v25[v61] = sub_219BF66D4();
  v61 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareQueue;
  v59 = "ports-sync.access";
  sub_219BED1B4();
  v79 = MEMORY[0x277D84F90];
  sub_219BF7164();
  (v73)(v35, v34, v36);
  *&v25[v61] = sub_219BF66D4();
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue] = 0;
  v37 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager__ignoreSyncingNewsChanges;
  LOBYTE(v79) = 0;
  sub_2187442AC(0, &qword_280EE7050, MEMORY[0x277D839B0], MEMORY[0x277D6CF18]);
  swift_allocObject();
  *&v25[v37] = sub_219BE2E64();
  v38 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup;
  *&v25[v38] = dispatch_group_create();
  v39 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_suspendSyncingGroup;
  *&v25[v39] = dispatch_group_create();
  v40 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_suspendedTokensLock;
  sub_219BE1AD4();
  sub_219BE1B04();
  swift_allocObject();
  *&v25[v40] = sub_219BE1AF4();
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_suspendedTokens] = MEMORY[0x277D84FA0];
  v41 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager__sportsSyncServiceVersion;
  if (qword_280EE98C0 != -1)
  {
    swift_once();
  }

  sub_21874D758();
  swift_allocObject();

  *&v25[v41] = sub_219BDC914();
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_appConfigurationManager] = v62;
  v42 = &v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_sportsDataService];
  v43 = v67;
  *v42 = v70;
  *(v42 + 1) = v43;
  v44 = v68;
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController] = v68;
  sub_218718690(v80, &v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService]);
  sub_218718690(v84, &v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_tagService]);
  v45 = v66;
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] = v66;
  LOBYTE(v79) = 0;
  sub_2187442AC(0, &qword_280EE7B90, &type metadata for SportsSyncAccountStatus, MEMORY[0x277D6CB60]);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v46 = v44;
  v47 = v45;
  *&v25[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_iCloudAccountStatusObservable] = sub_219BE20D4();
  v78.receiver = v25;
  v48 = v63;
  v78.super_class = v63;
  v49 = objc_msgSendSuper2(&v78, sel_init);
  v50 = qword_280EE6038;
  v51 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = sub_219BE5434();
  __swift_project_value_buffer(v52, qword_280F62730);
  v53 = sub_219BE5414();
  v54 = sub_219BF6214();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2186C1000, v53, v54, "Sports sync manager waiting for tracking consent...", v55, 2u);
    MEMORY[0x21CECF960](v55, -1, -1);
  }

  dispatch_group_enter(*&v51[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup]);
  sub_219BDCE74();
  v56 = sub_219BDCE64();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BDCE24();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v80);

  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v57 = v71;
  v71[3] = v48;
  v57[4] = &off_282A3EF90;
  result = swift_unknownObjectRelease();
  *v57 = v51;
  return result;
}

uint64_t sub_21874D4EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SportsSyncService();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  a1[3] = v2;
  a1[4] = &off_282A859B8;
  *a1 = result;
  return result;
}

uint64_t sub_21874D588()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE98C8 = result;
  return result;
}

void sub_21874D758()
{
  if (!qword_280EE90E8)
  {
    v0 = sub_219BDC904();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE90E8);
    }
  }
}

uint64_t sub_21874D7B0()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62730);
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21874D914()
{
  sub_21874D974();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_21874D974()
{
  if (!qword_280EE69F0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE69F0);
    }
  }
}

uint64_t sub_21874D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280E8D8B0;

  if (v12 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  v14 = *(a6 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
  v15 = *(a6 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v14);
  sub_2186C6148(0, &qword_280E8E3B0);
  v16 = sub_219BF66A4();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = sub_218858DFC;
  *(v18 + 56) = v11;
  v19 = *(v15 + 8);

  v19(v16, sub_21884508C, v18, v14, v15);
}

uint64_t sub_21874DC2C()
{

  return swift_deallocObject();
}

uint64_t sub_21874DC64()
{

  return swift_deallocObject();
}

uint64_t sub_21874DCAC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61778 = result;
  return result;
}

uint64_t sub_21874DD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v5 = sub_219BED174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_121;
  v13 = _Block_copy(aBlock);

  sub_219BED1A4();
  v15[1] = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_21874E060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E0F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E138(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21874E180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E1C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E2E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21874E330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E3C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21874E408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21874E498(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21874E4E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21874E528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E5F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E6B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874E9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874EA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874EAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21874EB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21874EB68()
{
  result = qword_280E8EFA0;
  if (!qword_280E8EFA0)
  {
    sub_21874E528(255, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EFA0);
  }

  return result;
}

uint64_t sub_21874EBF0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ShortcutsOnboardingManager();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR____TtC7NewsUI226ShortcutsOnboardingManager_observers] = MEMORY[0x277D84F90];
      *&v8[OBJC_IVAR____TtC7NewsUI226ShortcutsOnboardingManager_userInfo] = v5;
      *&v8[OBJC_IVAR____TtC7NewsUI226ShortcutsOnboardingManager_featureAvailability] = v6;
      v13.receiver = v8;
      v13.super_class = v7;
      v9 = v5;
      swift_unknownObjectRetain();
      v10 = objc_msgSendSuper2(&v13, sel_init);
      v11 = *&v10[OBJC_IVAR____TtC7NewsUI226ShortcutsOnboardingManager_userInfo];
      v12 = v10;
      [v11 addObserver_];

      result = swift_unknownObjectRelease();
      a2[3] = v7;
      a2[4] = &off_282A9E400;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21874ED84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186CF9A8();
    v7 = a3(a1, &type metadata for NewsActivity2, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_21874EDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21874EE50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21874EEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21874EF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21874EF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21874EFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_21874F058(void *a1, unint64_t *a2, void (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186FB4BC(0, a2, a3);
    v7 = objc_allocWithZone(v6);
    return sub_219BF1B04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21874F130@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218754B9C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for ContentAvailabilityValidator();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    sub_2186CB1F0(&v15, (v10 + 4));
    sub_2186CB1F0(&v13, (v10 + 9));
    sub_2186CB1F0(&v11, (v10 + 14));
    v10[19] = v7;
    v10[20] = v8;
    a2[3] = v9;
    result = sub_218754C0C(qword_280EB4D98, type metadata accessor for ContentAvailabilityValidator);
    a2[4] = result;
    *a2 = v10;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21874F3F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubOfflineContentManager();
  v3 = swift_allocObject();
  sub_218709AFC(0, &qword_280EE7AA8, sub_2186E2394, MEMORY[0x277D6CB78]);
  swift_allocObject();
  result = sub_219BE2174();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_282A63478;
  *a1 = v3;
  return result;
}

uint64_t sub_21874F4D8(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = type metadata accessor for OfflineFeedsOfflineContentContributor();
  result = sub_219BE1E24();
  if (result)
  {
    v10 = v5;
    v11 = &off_282A2D8C0;
    v9[0] = result;
    v7 = *(v4 + 16);
    v7(v9, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v8 = type metadata accessor for IssueListOfflineContentContributor();
    result = sub_219BE1E24();
    if (result)
    {
      v10 = v8;
      v11 = &off_282A9A768;
      v9[0] = result;
      v7(v9, v3, v4);
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21874F610(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  result = sub_219BE1E34();
  if (!v20[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for OfflineFeatures();
    v17[3] = v9;
    v17[4] = &off_282A442B0;
    v17[0] = v8;
    type metadata accessor for OfflineFeedsOfflineContentContributor();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_21874F8D4(v20, *v13, v3, v10);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21874F8D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for OfflineFeatures();
  v17 = &off_282A442B0;
  v15[0] = a2;
  v14[0] = MEMORY[0x277D84F90];
  sub_218709AFC(0, &qword_280EE7AC0, sub_21872E940, MEMORY[0x277D6CB78]);
  swift_allocObject();
  *(a4 + 16) = sub_219BE2174();
  sub_218718690(a1, a4 + 24);
  sub_218718690(v15, a4 + 64);
  *(a4 + 104) = a3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 88);
  swift_unknownObjectRetain();
  v10(v8, v9);
  swift_allocObject();
  swift_weakInit();

  v11 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v14, v14[3]);

  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = swift_allocObject();
  swift_weakInit();

  sub_21870BEBC(&unk_282A21A30, sub_218ED0908, v12);

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return a4;
}

uint64_t sub_21874FB20()
{
  if (*(*v0 + 88))
  {

    sub_219BE2CF4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21874FB78@<X0>(uint64_t *a1@<X8>)
{
  swift_unownedRetainStrong();
  sub_21874FC00(&v3);

  sub_2187546D8(0, &unk_280EE7AD8, &type metadata for OfflineFeedsManifest, MEMORY[0x277D6CB78]);
  swift_allocObject();
  result = sub_219BE2174();
  *a1 = result;
  return result;
}

uint64_t sub_21874FC00@<X0>(void *a1@<X8>)
{
  v41 = a1;
  sub_218750054(0, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - v2;
  v44 = type metadata accessor for OfflineFeedManifest(0);
  v4 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v40 - v8;
  v9 = _s7NewsUI215OfflineFeedKindO8allCasesSayACGvgZ_0();
  v10 = v9;
  v48 = v9[2];
  if (v48)
  {
    v11 = 0;
    v47 = (v9 + 4);
    v42 = (v4 + 56);
    v43 = v3;
    v12 = MEMORY[0x277D84F98];
    v45 = v9;
    while (v11 < v10[2])
    {
      v49 = *&v47[16 * v11];
      v14 = *(&v49 + 1);
      v15 = v49;
      sub_218720448(v49, *(&v49 + 1));
      if (sub_21870FAD0(&v49))
      {
        v16 = v4;
        v17 = v46;
        sub_2187500A8(v46);

        v18 = v7;
        sub_218753950(v17, v7, type metadata accessor for OfflineFeedManifest);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v12;
        v21 = sub_2187539B8(v15, v14);
        v22 = v12[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_26;
        }

        v25 = v20;
        if (v12[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_219497498();
          }
        }

        else
        {
          sub_218753B60(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_2187539B8(v15, v14);
          if ((v25 & 1) != (v27 & 1))
          {
            goto LABEL_28;
          }

          v21 = v26;
        }

        v4 = v16;
        v12 = v49;
        if (v25)
        {
          v13 = *(v49 + 56) + *(v16 + 72) * v21;
          v7 = v18;
          sub_2199DC388(v18, v13);
          sub_218720434(v15, v14);
        }

        else
        {
          *(v49 + 8 * (v21 >> 6) + 64) |= 1 << v21;
          v34 = (v12[6] + 16 * v21);
          *v34 = v15;
          v34[1] = v14;
          v35 = v12[7] + *(v16 + 72) * v21;
          v7 = v18;
          sub_218753950(v18, v35, type metadata accessor for OfflineFeedManifest);
          v36 = v12[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          v12[2] = v38;
        }

        v10 = v45;
      }

      else
      {
        v28 = sub_2187539B8(v15, v14);
        if (v29)
        {
          v30 = v28;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          *&v49 = v12;
          if (!v31)
          {
            sub_219497498();
            v12 = v49;
          }

          sub_218720434(*(v12[6] + 16 * v30), *(v12[6] + 16 * v30 + 8));
          v32 = v43;
          sub_218753950(v12[7] + *(v4 + 72) * v30, v43, type metadata accessor for OfflineFeedManifest);
          sub_21948B55C(v30, v12);
          sub_218720434(v15, v14);
          v33 = 0;
        }

        else
        {
          sub_218720434(v15, v14);
          v33 = 1;
          v32 = v43;
        }

        (*v42)(v32, v33, 1, v44);
        sub_218710B50(v32, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
      }

      if (v48 == ++v11)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_219BF79A4();
    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F98];
LABEL_24:

    *v41 = v12;
  }

  return result;
}

void sub_218750054(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187500A8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDAFA4();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF74C4();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDB954();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD0BC(0, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = v2[4];
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_2187100D4(v16 + v17, v15, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  os_unfair_lock_unlock((v16 + v18));

  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    v22 = v15;
    v23 = a1;
LABEL_5:
    sub_2187538EC(v22, v23);
    return;
  }

  v60 = a1;
  sub_218710220(v15, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  if (v2[7])
  {
    swift_getObjectType();
    v19 = v2[2];
    v20 = v2[3];
    swift_unknownObjectRetain();
    sub_218711114(v19, v20);
    swift_unknownObjectRelease();
    v21 = sub_219BDB974();
    v27 = v26;
    v59 = v21;
    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    if (qword_280E8D468 != -1)
    {
      swift_once();
    }

    v28 = v62;
    v29 = __swift_project_value_buffer(v62, qword_280F616C0);
    (*(v61 + 16))(v67, v29, v28);
    v73 = sub_219BDBD34();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
    sub_218750CBC(boxed_opaque_existential_1);
    v31 = v66;
    v32 = v27;
    v33 = sub_219BDAFD4();
    sub_218751430(&v72, v67);
    v33(v71, 0);
    (*(v64 + 104))(v63, *MEMORY[0x277CC86D0], v65);
    sub_219BDAFB4();
    sub_218720AB8(&qword_280ED0C10, 255, type metadata accessor for OfflineFeedManifest);
    v34 = v59;
    v35 = sub_219BDAFC4();
    v67 = v32;
    v65 = &v59;
    v47 = v2[4];
    MEMORY[0x28223BE20](v35);
    *(&v59 - 2) = v31;
    v48 = *(*v47 + *MEMORY[0x277D841D0] + 16);
    v49 = v31;
    v50 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v47 + v50));
    sub_218753688(v47 + v48);
    os_unfair_lock_unlock((v47 + v50));

    v52 = v2[5];
    MEMORY[0x28223BE20](v51);
    *(&v59 - 2) = v49;
    v53 = *(*v52 + *MEMORY[0x277D841D0] + 16);
    v54 = (*(*v52 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v52 + v54));
    sub_2187537D8(v52 + v53);
    os_unfair_lock_unlock((v52 + v54));

    v56 = v2[6];
    MEMORY[0x28223BE20](v55);
    *(&v59 - 2) = v49;
    v57 = *(*v56 + *MEMORY[0x277D841D0] + 16);
    v58 = (*(*v56 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v56 + v58));
    sub_2187538D0(v56 + v57);
    os_unfair_lock_unlock((v56 + v58));

    sub_2186C6190(v34, v67);
    (*(v68 + 8))(v70, v69);

    v22 = v49;
    v23 = v60;
    goto LABEL_5;
  }

  sub_218B0E9A4();
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v4;
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v36 = sub_219BE5434();
  __swift_project_value_buffer(v36, qword_280F62790);

  v37 = v24;
  v38 = sub_219BE5414();
  v39 = sub_219BF61F4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v72 = v42;
    *v40 = 136446466;
    *(v40 + 4) = sub_2186D1058(v2[2], v2[3], &v72);
    *(v40 + 12) = 2114;
    v43 = v24;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v44;
    *v41 = v44;
    _os_log_impl(&dword_2186C1000, v38, v39, "Failed to load offline manifest, name=%{public}s, error=%{public}@", v40, 0x16u);
    sub_218710220(v41, &qword_280E8D9F0, sub_2189666A0);
    MEMORY[0x21CECF960](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x21CECF960](v42, -1, -1);
    MEMORY[0x21CECF960](v40, -1, -1);
  }

  v45 = v60;
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v25, qword_280ED0C30);
  sub_2187536A4(v46, v45);
}

uint64_t sub_218750AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_218750B68()
{
  sub_2186DD9FC(0, &qword_280E8D460, MEMORY[0x277D84350], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_219BF74C4();
  __swift_allocate_value_buffer(v3, qword_280F616C0);
  v4 = __swift_project_value_buffer(v3, qword_280F616C0);
  sub_219BF74B4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_218750CBC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  sub_2186DD0BC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_219BDB604();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD0BC(0, &unk_280E8B618, type metadata accessor for URLResourceKey, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v10 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v11 = v10;
  sub_218751050(inited);
  swift_setDeallocating();
  sub_218751310(inited + 32, type metadata accessor for URLResourceKey);
  sub_219BDB824();

  if (!v1)
  {
    v13 = v18;
    sub_219BDB5F4();
    (*(v6 + 8))(v8, v5);
    v14 = sub_219BDBD34();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_218710220(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_218B0ED00();
      swift_allocError();
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 3;
      return swift_willThrow();
    }

    else
    {
      return (*(v15 + 32))(v13, v4, v14);
    }
  }

  return result;
}

void sub_218750FBC()
{
  if (!qword_280E8D610)
  {
    type metadata accessor for URLResourceKey(255);
    sub_218751238(&qword_280E8E508, type metadata accessor for URLResourceKey);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D610);
    }
  }
}

uint64_t sub_218751050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_218750FBC();
    v3 = sub_219BF72E4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_219BF5414();
      sub_219BF7AA4();
      v27 = v7;
      sub_219BF5524();
      v8 = sub_219BF7AE4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_219BF5414();
        v18 = v17;
        if (v16 == sub_219BF5414() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_219BF78F4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_218751238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218751280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218751310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218751370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187513D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218751430(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_218751558(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_218751568(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_219BF74C4();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_218710B50(a1, &unk_27CC220D8, sub_218751DB0);
    sub_2195EA208(a2, v9);
    v7 = sub_219BF74C4();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_218710B50(v9, &unk_27CC220D8, sub_218751DB0);
  }

  return result;
}

_OWORD *sub_218751558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_218751598(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(unint64_t, _BYTE *), uint64_t (*a6)(uint64_t, uint64_t))
{
  v30 = a6;
  v31 = a4;
  v32 = a5;
  v7 = v6;
  v11 = sub_219BF74C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_218751790(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_219496294(v31, v32);
      goto LABEL_7;
    }

    sub_21875198C(v20, a3 & 1, v31, v32);
    v27 = sub_218751790(a2);
    if ((v21 & 1) == (v28 & 1))
    {
      v17 = v27;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a2, v11);
      return sub_218751E08(v17, v14, a1, v23, v32);
    }

LABEL_15:
    result = sub_219BF79A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7] + 32 * v17;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v25 = v30;

  return v25(a1, v24);
}

unint64_t sub_218751790(uint64_t a1)
{
  sub_219BF74C4();
  v2 = sub_219BF52E4();

  return sub_2187517F4(a1, v2);
}

unint64_t sub_2187517F4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_219BF74C4();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_219BF53A4();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_21875198C(uint64_t a1, int a2, void (*a3)(void), void (*a4)(unint64_t, _BYTE *))
{
  v43 = a4;
  v6 = v4;
  v8 = sub_219BF74C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  a3(0);
  v41 = a2;
  result = sub_219BF7594();
  v14 = result;
  if (*(v12 + 16))
  {
    v45 = v11;
    v46 = v8;
    v37 = v4;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v38 = (v9 + 16);
    v39 = v9;
    v42 = (v9 + 32);
    v21 = result + 64;
    v40 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v44 = *(v9 + 72);
      v28 = v27 + v44 * v26;
      if (v41)
      {
        (*v42)(v45, v28, v46);
        v43(*(v12 + 56) + 32 * v26, v47);
      }

      else
      {
        (*v38)(v45, v28, v46);
        sub_2186D1230(*(v12 + 56) + 32 * v26, v47);
      }

      result = sub_219BF52E4();
      v29 = -1 << *(v14 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v9 = v39;
        v12 = v40;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v21 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v9 = v39;
      v12 = v40;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v42)((*(v14 + 48) + v44 * v22), v45, v46);
      result = (v43)(v47, *(v14 + 56) + 32 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v12 + 32);
    v6 = v37;
    if (v36 >= 64)
    {
      bzero(v16, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v36;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v6 = v14;
  return result;
}

void sub_218751D40()
{
  if (!qword_280E8D010)
  {
    sub_219BF74C4();
    sub_218751DB0();
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D010);
    }
  }
}

unint64_t sub_218751DB0()
{
  result = qword_280E8B500;
  if (!qword_280E8B500)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8B500);
  }

  return result;
}

uint64_t sub_218751E08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_219BF74C4();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 32 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t OfflineFeedManifest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v43 - v6;
  v52 = sub_219BDBD34();
  v49 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v47 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  sub_218752C3C(0, &qword_280E8CF28, sub_218752CA4, &type metadata for OfflineFeedManifest.CodingKeys, MEMORY[0x277D844C8]);
  v12 = v11;
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_218752CA4();
  v19 = v53;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v53 = v10;
  v44 = v15;
  v45 = v17;
  LOBYTE(v56) = 0;
  sub_2186EC7E8(&unk_280EE9C70, MEMORY[0x277CC9578]);
  v20 = v50;
  v21 = v52;
  sub_219BF76E4();
  v22 = v12;
  v24 = v49;
  v43[0] = *(v49 + 48);
  v43[1] = v49 + 48;
  if ((v43[0])(v20, 1, v21) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v25 = sub_219BF7B24();
    sub_2191F2C38(v25, v53);

    v21 = v52;
    v33 = (v43[0])(v20, 1, v52) == 1;
    v28 = v45;
    v26 = v14;
    if (!v33)
    {
      v38 = v20;
      v39 = v45;
      sub_2191F6698(v38, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v28 = v39;
    }

    v27 = v53;
  }

  else
  {
    v26 = v14;
    v27 = v53;
    (*(v24 + 32))(v53, v20, v21);
    v28 = v45;
  }

  v29 = v27;
  v30 = *(v24 + 32);
  v30(v28, v29, v21);
  LOBYTE(v56) = 1;
  v31 = v48;
  sub_219BF76E4();
  v53 = v26;
  if ((v43[0])(v31, 1, v21) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v32 = sub_219BF7B24();
    sub_2191F2C38(v32, v47);

    v40 = v48;
    v21 = v52;
    if ((v43[0])(v48, 1, v52) != 1)
    {
      sub_2191F6698(v40, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    v34 = v47;
  }

  else
  {
    v34 = v47;
    v30(v47, v31, v21);
  }

  v36 = v44;
  v35 = v45;
  v30(&v45[v44[5]], v34, v21);
  sub_2186EBA94(0);
  v55 = 2;
  sub_218752FB0(&qword_280E8F280, sub_2186EBA94, sub_218753020);
  v37 = v53;
  sub_219BF7734();
  *&v35[v36[6]] = v56;
  sub_2186EBBE0(0);
  v55 = 3;
  sub_218752FB0(&unk_280E8F6B0, sub_2186EBBE0, sub_2187530EC);
  sub_219BF7734();
  *&v35[v36[7]] = v56;
  sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  v55 = 4;
  sub_218753120(&unk_280E8F680, sub_2187444C0);
  sub_219BF7734();
  v41 = v45;
  *&v45[v36[8]] = v56;
  sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v55 = 5;
  sub_218753310(&qword_280E8EDD0);
  sub_219BF7734();
  *&v41[v44[9]] = v56;
  v55 = 6;
  sub_219BF7734();
  *&v45[v44[10]] = v56;
  v55 = 7;
  sub_219BF7734();
  *&v45[v44[11]] = v56;
  v55 = 8;
  sub_219BF7734();
  (*(v51 + 8))(v37, v22);
  v42 = v45;
  *&v45[v44[12]] = v56;
  sub_218753520(v42, v46, type metadata accessor for OfflineFeedManifest);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_218753588(v42, type metadata accessor for OfflineFeedManifest);
}

void sub_218752C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_218752CA4()
{
  result = qword_280ED0D30;
  if (!qword_280ED0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0D30);
  }

  return result;
}

unint64_t sub_218752CFC()
{
  result = qword_280ED0D18;
  if (!qword_280ED0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0D18);
  }

  return result;
}

unint64_t sub_218752D54()
{
  result = qword_280ED0D20;
  if (!qword_280ED0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED0D20);
  }

  return result;
}

unint64_t sub_218752DC4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4164657461657263;
    v5 = 0x7370756F7267;
    if (a1 != 2)
    {
      v5 = 0x4C52557465737361;
    }

    if (a1)
    {
      v4 = 0x4164657461647075;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4974657373417661;
    if (a1 != 6)
    {
      v1 = 0x4B74657373417661;
    }

    v2 = 0xD000000000000013;
    if (a1 != 4)
    {
      v2 = 0x444964726F636572;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for LegacyAudioConfigArticle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_218752FB0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyAudioConfigArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_218753120(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2186D0CEC(255, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187531B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186D0BA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186DF080(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753294(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186DEEEC(255, &qword_280E8EE20, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186D0CEC(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753394(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2195FC568(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2196052AC(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21875349C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186D0BF8(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218753520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218753588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187535E8(uint64_t a1, uint64_t a2)
{
  sub_218710220(a1, qword_280ED0BA0, type metadata accessor for OfflineFeedManifest);
  sub_2187536A4(a2, a1);
  v4 = type metadata accessor for OfflineFeedManifest(0);
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t sub_2187536A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218753708(uint64_t a1, uint64_t a2)
{
  sub_218710220(a1, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_2187537F4(uint64_t a1, uint64_t a2)
{
  sub_218710220(a1, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v4 = *(type metadata accessor for OfflineFeedManifest(0) + 20);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a1, a2 + v4, v5);
  return (*(v6 + 56))(a1, 0, 1, v5);
}

uint64_t sub_2187538EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218753950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2187539B8(uint64_t a1, unint64_t a2)
{
  sub_219BF7AA4();
  OfflineFeedKind.hash(into:)();
  v4 = sub_219BF7AE4();

  return sub_218754010(a1, a2, v4);
}

uint64_t OfflineFeedKind.hash(into:)()
{
  v1 = *(v0 + 8);
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 5;
      }

      return MEMORY[0x21CECE850](v2);
    }

    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x21CECE850](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x21CECE850](v2);
    }
  }

  else
  {
    if (v1 <= 7)
    {
      if (v1 == 5)
      {
        v2 = 6;
      }

      else if (v1 == 6)
      {
        v2 = 7;
      }

      else
      {
        v2 = 8;
      }

      return MEMORY[0x21CECE850](v2);
    }

    switch(v1)
    {
      case 8:
        v2 = 9;
        return MEMORY[0x21CECE850](v2);
      case 9:
        v2 = 10;
        return MEMORY[0x21CECE850](v2);
      case 10:
        v2 = 11;
        return MEMORY[0x21CECE850](v2);
    }
  }

  MEMORY[0x21CECE850](4);

  return sub_219BF5524();
}

uint64_t sub_218753B60(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for OfflineFeedManifest(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2187543A4(0, &unk_280E8D3E0, type metadata accessor for OfflineFeedManifest, sub_218754424);
  v37 = a2;
  result = sub_219BF7594();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (1)
    {
      if (!v14)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_61;
          }

          if (v10 >= v15)
          {
            break;
          }

          v21 = v11[v10];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v14 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v35;
          goto LABEL_59;
        }

        v34 = 1 << *(v7 + 32);
        v3 = v35;
        if (v34 >= 64)
        {
          bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v34;
        }

        *(v7 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v22;
      v25 = *(*(v7 + 48) + 16 * v22 + 8);
      v39 = *(*(v7 + 48) + 16 * v22);
      if (v37)
      {
        sub_218754608(v24, v38, type metadata accessor for OfflineFeedManifest);
      }

      else
      {
        sub_2194B7980(v24, v38, type metadata accessor for OfflineFeedManifest);
        sub_218720448(v39, v25);
      }

      sub_219BF7AA4();
      if (v25 <= 4)
      {
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v26 = 2;
          }

          else if (v25 == 3)
          {
            v26 = 3;
          }

          else
          {
            v26 = 5;
          }

          goto LABEL_41;
        }

        if (!v25)
        {
          v26 = 0;
          goto LABEL_41;
        }

        if (v25 == 1)
        {
          v26 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if (v25 <= 7)
        {
          if (v25 == 5)
          {
            v26 = 6;
          }

          else if (v25 == 6)
          {
            v26 = 7;
          }

          else
          {
            v26 = 8;
          }

          goto LABEL_41;
        }

        switch(v25)
        {
          case 8:
            v26 = 9;
            goto LABEL_41;
          case 9:
            v26 = 10;
            goto LABEL_41;
          case 10:
            v26 = 11;
LABEL_41:
            MEMORY[0x21CECE850](v26);
            goto LABEL_42;
        }
      }

      MEMORY[0x21CECE850](4);
      sub_219BF5524();
LABEL_42:
      result = sub_219BF7AE4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_61:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v39;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v18;
      result = sub_218754608(v38, *(v9 + 56) + v23 * v17, type metadata accessor for OfflineFeedManifest);
      ++*(v9 + 16);
    }
  }

LABEL_59:
  *v3 = v9;
  return result;
}

unint64_t sub_218754010(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 <= 4)
    {
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (a2 == 2)
          {
            v15 = *v9;
            v16 = 2;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 2;
        }

        else if (v11 == 3)
        {
          if (a2 == 3)
          {
            v15 = *v9;
            v16 = 3;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 3;
        }

        else
        {
          if (a2 == 4)
          {
            v15 = *v9;
            v16 = 4;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 4;
        }

        goto LABEL_39;
      }

      if (!v11)
      {
        if (!a2)
        {
          v15 = *v9;
          v16 = 0;
          goto LABEL_61;
        }

        sub_218720448(a1, a2);
        v12 = 0;
        goto LABEL_39;
      }

      if (v11 == 1)
      {
        if (a2 == 1)
        {
          v15 = *v9;
          v16 = 1;
          goto LABEL_61;
        }

        sub_218720448(a1, a2);
        v12 = 1;
        goto LABEL_39;
      }
    }

    else
    {
      if (v11 <= 7)
      {
        if (v11 == 5)
        {
          if (a2 == 5)
          {
            v15 = *v9;
            v16 = 5;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 5;
        }

        else if (v11 == 6)
        {
          if (a2 == 6)
          {
            v15 = *v9;
            v16 = 6;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 6;
        }

        else
        {
          if (a2 == 7)
          {
            v15 = *v9;
            v16 = 7;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 7;
        }

        goto LABEL_39;
      }

      switch(v11)
      {
        case 8:
          if (a2 == 8)
          {
            v15 = *v9;
            v16 = 8;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 8;
          goto LABEL_39;
        case 9:
          if (a2 == 9)
          {
            v15 = *v9;
            v16 = 9;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 9;
          goto LABEL_39;
        case 10:
          if (a2 == 10)
          {
            v15 = *v9;
            v16 = 10;
            goto LABEL_61;
          }

          sub_218720448(a1, a2);
          v12 = 10;
          goto LABEL_39;
      }
    }

    if (a2 < 0xB)
    {
      sub_218720448(a1, a2);
      sub_218720448(v10, v11);
      v12 = v11;
LABEL_39:
      sub_218720434(v10, v12);
      sub_218720434(a1, a2);
      goto LABEL_40;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = sub_219BF78F4();
    sub_218720448(a1, a2);
    sub_218720448(v10, v11);
    sub_218720434(v10, v11);
    sub_218720434(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_40:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_218720448(a1, a2);
  sub_218720448(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_61:
  sub_218720434(v15, v16);
  sub_218720434(a1, a2);
  return v5;
}

void sub_2187543A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_219BF75C4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218754424()
{
  result = qword_280EDA048;
  if (!qword_280EDA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA048);
  }

  return result;
}

unint64_t sub_21875447C()
{
  result = qword_280EDA040;
  if (!qword_280EDA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA040);
  }

  return result;
}

uint64_t sub_2187544D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218754538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187545A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218754608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218754670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2187546D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21875472C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E370);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v5);
    v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for OfflineFeatures();
    v17[3] = v10;
    v17[4] = &off_282A442B0;
    v17[0] = v9;
    type metadata accessor for IssueListOfflineContentContributor();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_2187549E8(v3, *v14, v4, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2187549E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for OfflineFeatures();
  v14 = &off_282A442B0;
  v12[0] = a2;
  v11 = MEMORY[0x277D84F90];
  sub_218709AFC(0, &qword_280EE7AC0, sub_21872E940, MEMORY[0x277D6CB78]);
  swift_allocObject();
  a4[2] = sub_219BE2174();
  a4[3] = a1;
  sub_218718690(v12, (a4 + 4));
  a4[9] = a3;
  v8 = a1;
  swift_unknownObjectRetain();
  [v8 addObserver_];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v9 = swift_allocObject();
  swift_weakInit();

  sub_21870BEBC(&unk_282A24C60, sub_218ED0910, v9);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a4;
}

uint64_t sub_218754B60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_218754B9C()
{
  result = qword_280E8E010;
  if (!qword_280E8E010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E010);
  }

  return result;
}

uint64_t sub_218754C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218754C78(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageMySportsCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD74();
    sub_2186F1618(qword_280EB3D28, type metadata accessor for ManageMySportsCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218754D7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v8)
  {
    type metadata accessor for ManageMySportsCommandHandler();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v5;
    sub_2186CB1F0(&v7, (v6 + 5));
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218754EF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageNotificationsCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD44();
    sub_2186F1618(&qword_280EA3268, type metadata accessor for ManageNotificationsCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218754FF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC1D00);
  result = sub_219BE1E34();
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    type metadata accessor for ManageNotificationsCommandHandler();
    result = swift_allocObject();
    result[4] = v5;
    result[5] = v6;
    result[2] = v3;
    result[3] = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218755110(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageBlockedChannelTopicCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD84();
    sub_2186F1618(qword_280E96F18, type metadata accessor for ManageBlockedChannelTopicCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218755214(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4(0, a2, a3);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    a5(0);
    result = swift_allocObject();
    result[2] = v11;
    result[3] = v12;
    result[4] = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218755370(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageSubscriptionsCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD54();
    sub_2186F1618(qword_280EA31A8, type metadata accessor for ManageSubscriptionsCommandHandler);
    sub_219BE7054();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218755474(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E720);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for ManageSubscriptionsCommandHandler();
    result = swift_allocObject();
    result[3] = v5;
    result[4] = v4;
    result[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218755574(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenRecipeFilterCommandHandler();
  result = sub_219BE1E24();
  if (result)
  {
    swift_getObjectType();
    if (qword_280EE3900 != -1)
    {
      swift_once();
    }

    sub_2186F1618(qword_280EABDC8, type metadata accessor for OpenRecipeFilterCommandHandler);
    sub_219BE7064();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187556D8()
{
  sub_218727A68(0, &qword_280EE3988, &type metadata for RecipeFilterRouteModel, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2187557FC();
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F624D0 = result;
  return result;
}

void sub_2187557FC()
{
  if (!qword_280EE5D58)
  {
    sub_218755860();
    v0 = sub_219BE5E64();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5D58);
    }
  }
}

unint64_t sub_218755860()
{
  result = qword_280EB3268;
  if (!qword_280EB3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3268);
  }

  return result;
}

uint64_t sub_2187558B4()
{
  swift_getObjectType();
  if (qword_280EE3860 != -1)
  {
    swift_once();
  }

  sub_219BE7084();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_218755958()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F624A8 = result;
  return result;
}

uint64_t sub_218755A90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE8098);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for SportsSyncFavoritesTracker();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_2186CB1F0(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218755B78(void *a1)
{
  swift_getObjectType();
  v2 = [a1 userInfo];
  v3 = [a1 localRegionProvider];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    aBlock[4] = sub_21880601C;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218791EC0;
    aBlock[3] = &block_descriptor_148;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    [v4 fetchRegions_];
    _Block_release(v7);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2186C6148(0, &qword_280E8D790);
    v9 = sub_219BF6F64();
    sub_219BF6214();
    v10 = MEMORY[0x277D84F90];
    sub_219BE5314();

    sub_218755E98(0, &qword_280E8DF80, &qword_280E8DF88, 0x277CE1FD0, sub_218755F2C);
    sub_219BE3204();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2;
    v12 = v2;
    v13 = sub_219BE2E54();
    sub_219BE2F94();
  }
}

uint64_t sub_218755E48()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_218755E98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    a5(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218755F5C()
{
  sub_219BF4764();
  sub_219BF4754();
  sub_219BF4724();

  sub_219BF36E4();
  sub_219BF36D4();
  v0 = sub_219BE31C4();

  return v0;
}

id sub_218755FE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI221SportsSessionObserver_cloudContext);
  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = [result cachedSubscription];
  swift_unknownObjectRelease();
  sub_219BDCDE4();
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  sub_219BDD154();

  *(swift_allocObject() + 16) = v4;
  v5 = v4;
  sub_219BDCD84();

  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result addObserver_];

  return swift_unknownObjectRelease();
}

uint64_t sub_218756170()
{

  return swift_deallocObject();
}

void sub_2187561AC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI221SportsSessionObserver_cloudContext) purchaseController];
  if (v1)
  {
    v2 = v1;
    *(swift_allocObject() + 16) = v1;
    v3 = v2;
    sub_219BDCD84();
  }

  else
  {
    sub_2186C66AC();
    v4 = sub_219BF6F64();
    sub_219BF6214();
    sub_219BE5314();
  }
}

uint64_t sub_2187562D4()
{

  return swift_deallocObject();
}

uint64_t sub_21875630C()
{
  swift_getObjectType();
  sub_219BEAF14();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BF3344();
  sub_218740ED4();
  sub_219BE7004();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_219BEAA64();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186D8870();
  sub_218741204();
  sub_219BE7004();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_21875648C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187564C4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationAppExtensionCommunicator();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    sub_21871D29C(&qword_280E9AD60, type metadata accessor for NotificationAppExtensionCommunicator);
    sub_219BE29A4();

    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, qword_280E93BA8);
    result = sub_219BE1E34();
    if (v6)
    {
      sub_2186CB1F0(&v5, v7);
      type metadata accessor for NotificationScheduledDeliveryModeReporter();
      swift_dynamicCast();
      sub_21871D29C(&qword_280E95808, type metadata accessor for NotificationScheduledDeliveryModeReporter);

      sub_219BE29A4();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218756698(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCB0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = NewsCoreUserDefaults();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v7 = v16;
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for NotificationAppExtensionCommunicator();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_appConfigManager] = v3;
    *&v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_appConfigDropbox] = v4;
    *&v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults] = v5;
    *&v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_bundleSubscriptionManager] = v6;
    v12 = &v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_tagService];
    *v12 = v7;
    *(v12 + 1) = v8;
    *&v11[OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_channelDataFactory] = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v3 addAppConfigObserver_];
    v15.receiver = v11;
    v15.super_class = v10;
    v14 = objc_msgSendSuper2(&v15, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21875693C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8DE58);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC4290);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for NotificationScheduledDeliveryModeReporter();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_2186CB1F0(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_282A2F8C8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218756A6C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280E94970);
  result = sub_219BE1E34();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE29A4();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  return result;
}

uint64_t sub_218756B30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v34)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v30 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8DE58);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  v29 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v5;
  v27 = v4;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v12 = v31;
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v9;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218702688(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = result;
  type metadata accessor for UserNotificationsSettingsChangeHandler();
  v17 = swift_allocObject();
  *(v17 + 120) = 0;
  *(v17 + 128) = 1;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 152) = 2;
  sub_218718690(v33, v17 + 16);
  *(v17 + 88) = v11;
  *(v17 + 96) = v10;
  *(v17 + 64) = v16;
  *(v17 + 72) = v13;
  *(v17 + 80) = v29;
  *(v17 + 104) = v12;
  *(v17 + 112) = v14;
  *(v17 + 56) = v15;
  v18 = qword_280EE9AA0;
  v25 = v13;
  swift_unknownObjectRetain();
  v24 = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v18 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  v23 = type metadata accessor for UserNotificationsSettingsChangeHandler;
  sub_21871D29C(qword_280E97958, type metadata accessor for UserNotificationsSettingsChangeHandler);
  v19 = v30;
  sub_219BDC7E4();

  (*(v26 + 8))(v19, v27);
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v20 = sub_219BE2E54();
  sub_219BE2F94();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v33);
  result = sub_21871D29C(&unk_280E97940, v23);
  v21 = v28;
  *v28 = v17;
  v21[1] = result;
  return result;
}

uint64_t sub_2187570B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218757114(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_2187571A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187571EC(uint64_t a1, uint64_t a2)
{
  result = sub_2187571A4(&qword_280E97950, a2, type metadata accessor for UserNotificationsSettingsChangeHandler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218757244(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PaidBundleViaOfferUIHandler();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21871C950(&qword_280EB7AB8, type metadata accessor for PaidBundleViaOfferUIHandler);
    sub_219BE29A4();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_21875731C(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAF898);
  result = sub_219BE1E34();
  if (!v58)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v44 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v43 = v53;
  if (!v53)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v41 = v54;
  v42 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62B0);
  result = sub_219BE1E34();
  if (!v52[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE3F60);
  sub_219BE1E34();
  v39 = v51;
  v40 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6310);
  result = sub_219BE1E34();
  v13 = v48;
  if (!v48)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6210);
  result = sub_219BE1E34();
  if (!v47[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v36 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340);
  result = sub_219BE1E34();
  if (v46[3])
  {
    v15 = type metadata accessor for PaidBundleViaOfferUIHandler();
    v16 = objc_allocWithZone(v15);
    v17 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler__hardwareSheetLastShownFromLinkedSheet;
    v18 = v44;
    sub_219BDBBB4();
    (*(v3 + 16))(v6, v18, v12);
    sub_218757C50(0, &unk_280EE70B0, MEMORY[0x277CC9578], MEMORY[0x277D6CF18]);
    swift_allocObject();
    v19 = sub_219BE2E64();
    (*(v3 + 8))(v18, v12);
    *&v16[v17] = v19;
    v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeState] = 2;
    v20 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_sessionBadgeSource;
    v21 = sub_219BDC334();
    (*(*(v21 - 8) + 56))(&v16[v20], 1, 1, v21);
    v22 = OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_engagement;
    *&v16[v22] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
    v23 = &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appIconBadgeIdentifierBase];
    *v23 = 0xD00000000000001CLL;
    v23[1] = 0x8000000219D43110;
    *&v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler____lazy_storage___paidBundleViaOfferConfig] = 1;
    v24 = v37;
    *&v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_userInfo] = v37;
    sub_218718690(v55, &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_notificationService]);
    v25 = v43;
    *&v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appConfigurationManager] = v42;
    v26 = &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_offerManager];
    v28 = v40;
    v27 = v41;
    *v26 = v25;
    v26[1] = v27;
    v29 = &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_presentationOperationManager];
    v30 = v38;
    v31 = v39;
    *v29 = v28;
    v29[1] = v31;
    v32 = &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_appLaunchMethodChecker];
    *v32 = v36;
    v32[1] = v30;
    sub_218718690(v52, &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_paidBundleViaOfferHandler]);
    sub_218718690(v47, &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_featureAvailability]);
    *&v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_bundleSubscriptionManager] = v14;
    sub_218718690(v57, &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_tracker]);
    sub_218718690(v46, &v16[OBJC_IVAR____TtC7NewsUI227PaidBundleViaOfferUIHandler_router]);
    v45.receiver = v16;
    v45.super_class = v15;
    v33 = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v34 = objc_msgSendSuper2(&v45, sel_init);
    [v14 addObserver_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v34;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_218757A64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for PaidBundleViaOfferTracker();
    v6 = swift_allocObject();
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v7 = qword_280F61750;
    sub_219BE0FB4();
    swift_allocObject();
    v8 = v7;
    result = sub_219BE0FA4();
    *(v6 + 16) = v4;
    *(v6 + 24) = result;
    a2[3] = v5;
    a2[4] = &off_282A86450;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218757B78()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61750 = result;
  return result;
}

void sub_218757C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218757CB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2187C84E8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = sub_219BE27F4();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  v9 = v42;
  if (!v42)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v10;
  v30[0] = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v37)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D30E50]) init];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  v30[2] = v30;
  MEMORY[0x28223BE20](v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for AudioFeedConfigManager();
  v35[3] = v18;
  v35[4] = &off_282A71790;
  v35[0] = v17;
  type metadata accessor for AudioScheduledRefreshManager();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v35, v18);
  v30[1] = v30;
  MEMORY[0x28223BE20](v20);
  v22 = (v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v34[4] = &off_282A71790;
  v34[3] = v18;
  v34[0] = v24;
  v33 = MEMORY[0x277D84F90];
  sub_21870788C(&qword_280EE73D0, MEMORY[0x277D6CD10]);
  sub_2187C84E8(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_218735780();
  sub_219BF7164();
  sub_2187364C8(0, &qword_280EE7BF0, MEMORY[0x277D6CD60]);
  swift_allocObject();
  v19[21] = sub_219BE2004();
  v25 = v32;
  v19[2] = v9;
  v19[3] = v25;
  sub_218718690(v34, (v19 + 4));
  sub_218718690(v38, (v19 + 9));
  v19[14] = v11;
  sub_218718690(v36, (v19 + 15));
  v19[20] = v12;
  v26 = qword_280EE9910;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v26 != -1)
  {
    swift_once();
  }

  sub_21870788C(&qword_280EB5388, type metadata accessor for AudioScheduledRefreshManager);
  sub_219BDC7D4();
  if (v33 == 1)
  {
    v27 = sub_219BDBD34();
    v28 = v30[0];
    (*(*(v27 - 8) + 56))(v30[0], 1, 1, v27);
    sub_218D33D98(v28);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v40);
  result = sub_21870788C(&unk_280EB5360, type metadata accessor for AudioScheduledRefreshManager);
  v29 = v31;
  *v31 = v19;
  v29[1] = result;
  return result;
}

uint64_t sub_2187583E4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9918 = result;
  return result;
}

uint64_t sub_218758598(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187585E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_218758598(&qword_280EB5370, a2, type metadata accessor for AudioScheduledRefreshManager);
  result = sub_218758598(&unk_280EB5378, v3, type metadata accessor for AudioScheduledRefreshManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_218758664(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1DB4();
  if (result)
  {
    return result;
  }

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDCF54();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_219BDCE84();

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDD024();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDCE84();
}

uint64_t sub_2187587D8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (v7)
  {
    sub_2186CB1F0(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 64))(v2, &off_282A555D0, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21875891C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v12 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v13;
          a2 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  *(v3 + 16) = v8;

  type metadata accessor for SportsSyncServiceObserverProxy();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x21CECC690](v10);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

uint64_t sub_218758B74(void *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EA91E0);
  result = sub_219BE1E34();
  if (!v7)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_16;
  }

  v3[3] = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA91D8);
  sub_219BE1E34();
  v3[5] = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EA67D0);
  sub_219BE1E34();
  v3[7] = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E9D728);
  sub_219BE1E34();
  v3[9] = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280E9D730);
  sub_219BE1E34();
  v3[11] = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v3[14] = &off_282A3C2C0;
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v3[16] = &off_282A2EBB8;
    swift_unknownObjectWeakAssign();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &unk_280E91730);
    sub_219BE1E34();
    v3[18] = v8;
    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

LABEL_18:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_218758F7C@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a1(0);
  result = swift_allocObject();
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2187590F0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if ((sub_219BE1DB4() & 1) == 0)
  {
    sub_219BDCD74();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDCF54();
    result = sub_219BE1DE4();
    if (!result)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    sub_219BDCE84();

    sub_219BDCD74();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDD024();
    result = sub_219BE1DE4();
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    sub_219BDCE84();
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (sub_219BE1DC4())
  {
LABEL_9:
    sub_219BDCD74();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280EE8940);
    result = sub_219BE1E34();
    if (v4)
    {
      sub_219BDCE84();
      swift_unknownObjectRelease();
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE0964();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_21872EBB4(&qword_280EE8280, MEMORY[0x277D2E930]);
  sub_219BDCE84();

  sub_219BDCD74();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE81D8);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_219BDCE84();
    swift_unknownObjectRelease();

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_218759424@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECB388);
  result = sub_219BE1E34();
  if (!v45)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9630);
  result = sub_219BE1E34();
  if (v43)
  {
    sub_21875B940(0, &unk_280E8BCD0, &qword_280EE0438);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C69240;
    started = type metadata accessor for AppSessionStartEventTranslator();
    v8 = swift_allocObject();
    *(v6 + 56) = started;
    *(v6 + 64) = &off_282AA2940;
    *(v6 + 32) = v8;
    v9 = type metadata accessor for AppSessionEndEventTranslator();
    v10 = swift_allocObject();
    *(v6 + 96) = v9;
    *(v6 + 104) = &off_282A2F828;
    *(v6 + 72) = v10;
    EventTranslator = type metadata accessor for ArticleReadEventTranslator();
    v12 = swift_allocObject();
    *(v6 + 136) = EventTranslator;
    *(v6 + 144) = &off_282A45B20;
    *(v6 + 112) = v12;
    v13 = type metadata accessor for AudioEngageEventTranslator();
    v14 = swift_allocObject();
    *(v6 + 176) = v13;
    *(v6 + 184) = &off_282A9CFE8;
    *(v6 + 152) = v14;
    v15 = type metadata accessor for EmailSignupEventTranslator();
    v16 = swift_allocObject();
    *(v6 + 216) = v15;
    *(v6 + 224) = &off_282A80350;
    *(v6 + 192) = v16;
    v17 = type metadata accessor for FeedViewEventTranslator();
    v18 = swift_allocObject();
    *(v6 + 256) = v17;
    *(v6 + 264) = &off_282A4A300;
    *(v6 + 232) = v18;
    v19 = type metadata accessor for FollowingViewEventTranslator();
    v20 = swift_allocObject();
    *(v6 + 296) = v19;
    *(v6 + 304) = &off_282A8AAD0;
    *(v6 + 272) = v20;
    v21 = type metadata accessor for FollowTagEventTranslator();
    v22 = swift_allocObject();
    *(v6 + 336) = v21;
    *(v6 + 344) = &off_282A96F08;
    *(v6 + 312) = v22;
    v23 = type metadata accessor for UnfollowTagEventTranslator();
    v24 = swift_allocObject();
    *(v6 + 376) = v23;
    *(v6 + 384) = &off_282A454B0;
    *(v6 + 352) = v24;
    v25 = type metadata accessor for ArticleLikeEventTranslator();
    v26 = swift_allocObject();
    *(v6 + 416) = v25;
    *(v6 + 424) = &off_282A4D1B0;
    *(v6 + 392) = v26;
    v27 = type metadata accessor for ArticleUnlikeEventTranslator();
    v28 = swift_allocObject();
    *(v6 + 456) = v27;
    *(v6 + 464) = &off_282A63DB8;
    *(v6 + 432) = v28;
    v29 = type metadata accessor for ArticleSaveEventTranslator();
    v30 = swift_allocObject();
    *(v6 + 496) = v29;
    *(v6 + 504) = &off_282A2E700;
    *(v6 + 472) = v30;
    v31 = type metadata accessor for ArticleShareEventTranslator();
    v32 = swift_allocObject();
    *(v6 + 536) = v31;
    *(v6 + 544) = &off_282A7E1C0;
    *(v6 + 512) = v32;
    v33 = type metadata accessor for EOAFeedViewEventTranslator();
    v34 = swift_allocObject();
    *(v6 + 576) = v33;
    *(v6 + 584) = &off_282A820D8;
    *(v6 + 552) = v34;
    v35 = type metadata accessor for PuzzleViewEventTranslator();
    v36 = swift_allocObject();
    *(v6 + 616) = v35;
    *(v6 + 624) = &off_282A8DA30;
    *(v6 + 592) = v36;
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    MEMORY[0x28223BE20](v37);
    v39 = &v42[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v40 + 16))(v39);
    v41 = sub_21875BBBC(v5, v44, *v39, v6);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v42);
    result = sub_21875A3B0(qword_280EE05F0, type metadata accessor for NewsEngagementEventProcessor);
    *a2 = v41;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218759908@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0);
  result = sub_219BE1E34();
  v5 = v23;
  if (v23)
  {
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB47A0);
    result = sub_219BE1E34();
    if (v22)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v7);
      v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for EngagementDataController();
      v20[3] = v12;
      v20[4] = &off_282A78908;
      v20[0] = v11;
      v13 = type metadata accessor for EngagementService();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      MEMORY[0x28223BE20](v15);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      v14[5] = v12;
      v14[6] = &off_282A78908;
      v14[2] = v19;
      v14[7] = v5;
      v14[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      a2[3] = v13;
      a2[4] = &off_282A443D0;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218759B98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EA0A38);
    result = sub_219BE1E34();
    if (v8)
    {
      type metadata accessor for EngagementFeatureSettings();
      swift_allocObject();
      v6 = sub_21875A26C(v5, &v7);
      result = sub_21875A3B0(&qword_280EBEF18, type metadata accessor for EngagementFeatureSettings);
      *a2 = v6;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218759CE8@<X0>(uint64_t *a1@<X8>)
{
  sub_218759E68(0, &qword_280EE5F00, MEMORY[0x277D85B28]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for EngagementFeatureSettingsStore();
  v6 = swift_allocObject();
  v7 = sub_219BE5434();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_218759EE0(0, &unk_280EE75A0, sub_218759F5C, sub_218759FB0);
  swift_allocObject();
  result = sub_219BE2374();
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &off_282A766B8;
  *a1 = v6;
  return result;
}

void sub_218759E68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218759EE0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BE2384();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218759F5C()
{
  result = qword_280EB0DE8;
  if (!qword_280EB0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0DE8);
  }

  return result;
}

unint64_t sub_218759FB0()
{
  result = qword_280EB0DF0[0];
  if (!qword_280EB0DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB0DF0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PuzzleArchiveTagFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for EngagementFeatureSettings()
{
  result = qword_280EBEF00;
  if (!qword_280EBEF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21875A140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875A194()
{
  sub_21875A100(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21875A26C(uint64_t a1, __int128 *a2)
{
  v5 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v5 - 8);
  *(v2 + 16) = 514;
  *(v2 + 24) = 0;
  v6 = OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings____lazy_storage___engagementUpsellConfig;
  sub_21875A120(0);
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_observers) = MEMORY[0x277D84F98];
  v8 = OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_lock;
  sub_219BE1AD4();
  sub_219BE1B04();
  swift_allocObject();
  *(v2 + v8) = sub_219BE1AF4();
  *(v2 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_appConfiguration) = a1;
  sub_2186CB1F0(a2, v2 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store);
  return v2;
}

uint64_t sub_21875A3B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21875A3F8()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C709C(0, qword_280EB47A0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EACF68);
  sub_219BE2914();

  type metadata accessor for EngagementDataController();
  sub_219BE2904();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EE60C0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED1608);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EE6550);
  sub_219BE2914();
}

uint64_t sub_21875A700@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for EngagementDataController();
  result = sub_219BE1E24();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21875A77C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE60C0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    sub_218718690(v5, &v3);
    type metadata accessor for EngagementDataController();
    swift_allocObject();
    v2 = sub_21875AF10(&v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21875A83C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE5214();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EngagementManagerConfigFactory();
  v9 = swift_allocObject();
  if (qword_280EE9050 != -1)
  {
    swift_once();
  }

  sub_219BDCA14();
  sub_219BDB864();
  v10 = *(v3 + 8);
  v10(v5, v2);
  sub_21875ABA4(v8);
  swift_setDeallocating();
  v10((v9 + OBJC_IVAR____TtC7NewsUI230EngagementManagerConfigFactory_messagesDirectory), v2);
  swift_deallocClassInstance();
  v11 = sub_219BE51F4();
  swift_allocObject();
  result = sub_219BE51E4();
  v13 = MEMORY[0x277D31928];
  a1[3] = v11;
  a1[4] = v13;
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for EngagementManagerConfigFactory()
{
  result = qword_280EAD010;
  if (!qword_280EAD010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21875AABC()
{
  result = sub_219BDB954();
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

uint64_t sub_21875AB4C()
{
  sub_219BDCA24();
  swift_allocObject();
  result = sub_219BDCA04();
  qword_280EE9058 = result;
  return result;
}

uint64_t sub_21875ABA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F627F0);

  v9 = sub_219BE5414();
  v10 = sub_219BF61D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a1;
    v12 = v11;
    v19 = swift_slowAlloc();
    v22 = v19;
    *v12 = 136380675;
    v20 = *(v5 + 16);
    v20(v7, v1 + OBJC_IVAR____TtC7NewsUI230EngagementManagerConfigFactory_messagesDirectory, v4);
    v13 = sub_219BDB804();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_2186D1058(v13, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2186C1000, v9, v10, "EngagementManager: Using directory %{private}s", v12, 0xCu);
    v17 = v19;
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x21CECF960](v17, -1, -1);
    MEMORY[0x21CECF960](v12, -1, -1);

    v20(v7, v2 + OBJC_IVAR____TtC7NewsUI230EngagementManagerConfigFactory_messagesDirectory, v4);
  }

  else
  {

    (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC7NewsUI230EngagementManagerConfigFactory_messagesDirectory, v4);
  }

  return sub_219BE5204();
}

uint64_t sub_21875AE24()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F627F0);
  __swift_project_value_buffer(v0, qword_280F627F0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_21875AF10(__int128 *a1)
{
  v13 = a1;
  v12 = sub_219BF6694();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF6674();
  MEMORY[0x28223BE20](v5);
  v6 = sub_219BED1D4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = MEMORY[0x277D84F90];
  *(v1 + 56) = MEMORY[0x277D84F90];
  v8 = sub_2186C6148(0, &qword_280E8E3B0);
  v11[1] = "ders";
  v11[2] = v8;
  sub_219BED1C4();
  v14 = v7;
  sub_21874E210(&qword_280E8E3C0, MEMORY[0x277D85230]);
  v9 = MEMORY[0x277D85230];
  sub_21874E848(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_21875B2D8(&qword_280E8EC30, &qword_280E8EC40, v9);
  sub_219BF7164();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v1 + 64) = sub_219BF66D4();
  sub_2186CB1F0(v13, v1 + 16);
  return v1;
}

uint64_t sub_21875B1AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218A47408(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21875B210(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21874E780(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21875B274(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186DDE18(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21875B2D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21874E848(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21875B360@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF940);
  result = sub_219BE1E34();
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for AppReviewRequestManager();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__started;
    v15 = 0;
    sub_21875B8F0();
    swift_allocObject();
    *&v10[v11] = sub_219BE2E64();
    v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager__userIsAuthenticatedToAppStore] = 2;
    v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___useAppReviewRequest] = 2;
    *&v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___appReviewRequestConfig] = 1;
    *&v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_userInfo] = v5;
    *&v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_configurationManager] = v6;
    sub_218718690(v16, &v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store]);
    *&v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_tracker] = v8;
    *&v10[OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_appleAccount] = v7;
    v14.receiver = v10;
    v14.super_class = v9;
    v12 = v5;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v14, sel_init);
    [v7 addObserver_];

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    a2[3] = v9;
    a2[4] = &off_282A5C1B0;
    *a2 = v13;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21875B640@<X0>(uint64_t *a1@<X8>)
{
  sub_218759E68(0, &qword_280EE5F00, MEMORY[0x277D85B28]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AppReviewRequestStore();
  v6 = swift_allocObject();
  v7 = sub_219BE5434();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_218759EE0(0, &unk_280EE75B8, sub_21875B7F8, sub_21875B84C);
  swift_allocObject();
  result = sub_219BE2374();
  *(v6 + 16) = result;
  a1[3] = v5;
  a1[4] = &off_282A70BF8;
  *a1 = v6;
  return result;
}

unint64_t sub_21875B7F8()
{
  result = qword_280ECC0C0;
  if (!qword_280ECC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC0C0);
  }

  return result;
}

unint64_t sub_21875B84C()
{
  result = qword_280ECC0C8[0];
  if (!qword_280ECC0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECC0C8);
  }

  return result;
}

uint64_t sub_21875B8A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_21875B8F0()
{
  if (!qword_280EE7050)
  {
    v0 = sub_219BE2EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7050);
    }
  }
}

void sub_21875B940(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C709C(255, a3);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_21875BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_219BE1954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppReviewRequestManager();
  v25[3] = v11;
  v25[4] = &off_282A5C1B0;
  v25[0] = a3;
  v12 = type metadata accessor for NewsEngagementEventProcessor();
  v13 = objc_allocWithZone(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v25, v11);
  MEMORY[0x28223BE20](v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v24[3] = v11;
  v24[4] = &off_282A5C1B0;
  v24[0] = v18;
  v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useSmarterMessaging] = 2;
  v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useAppReviewRequest] = 2;
  *&v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_appConfiguration] = a1;
  sub_218718690(a2, &v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_engagementService]);
  sub_218718690(v24, &v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_appReviewRequestManager]);
  *&v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_eventTranslators] = v22;
  sub_219BE1994();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v13[OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_jsonDecoder] = sub_219BE1984();
  *v10 = sub_21952BCCC;
  v10[1] = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277D6C9B0], v7);

  sub_219BE1964();

  v23.receiver = v13;
  v23.super_class = v12;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v19;
}

unint64_t sub_21875BE9C()
{
  result = qword_280EE05E0;
  if (!qword_280EE05E0)
  {
    type metadata accessor for NewsEngagementEventProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE05E0);
  }

  return result;
}

void *sub_21875BEF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDE9B4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDEAE4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPlayingItemHistoryRecorder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioListeningProgressRecorder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioAutoNextTrackHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioPostListeningUpsellHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioIntents();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EndOfTrackNotificationScheduler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDE9D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioAutoClosePlayerHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioErrorHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioNextTrackAutoPrewarmer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioAppTerminationHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDE964();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioBuddyTrackQueueScheduler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioFeedContentPrefetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioUnfinishedTrackRescuer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    return result;
  }
}

uint64_t sub_21875C2DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7C04();
    swift_allocObject();
    sub_219BE7BF4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5010);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v6 = MEMORY[0x277D6D2B0];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21875C418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2186C66AC();
  v6 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  *(v3 + 16) = a1;
  v7 = swift_allocObject();
  swift_weakInit();
  sub_218718690(a2, &v10);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_2186CB1F0(&v10, v8 + 24);

  sub_219BE2104();

  __swift_project_boxed_opaque_existential_1(&v10, v11);

  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(&v10);
  return v3;
}

uint64_t sub_21875C574()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21875C5AC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21875C5EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = sub_219BDE144();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872CD34(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for AudioPostListeningUpsellHandler();
    swift_allocObject();
    v6 = sub_21875C760(v3, v4, v5);

    swift_unknownObjectRelease();
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_21875C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = 0x8000000219D34200;
  v3[7] = 0xD00000000000001FLL;
  v3[8] = 0x8000000219D34230;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0xD000000000000021;
  swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();
  sub_219BE2104();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_21875C850()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_21875C8AC(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = type metadata accessor for AudioFeedTrack(0);
  v92 = *(v87 - 8);
  v8 = MEMORY[0x28223BE20](v87);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v82 = v12;
  v83 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v84 = &v75 - v13;
  sub_2187335C8();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v88 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v75 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - v21;
  sub_21875D3C8();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875D45C(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AudioIntentsData();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  sub_21875D490(0, &qword_280EE7B70, sub_21875D45C, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v4[2] = sub_219BE20D4();
  v4[3] = a1;
  v4[4] = a2;
  v90 = a3;
  sub_218718690(a3, (v4 + 5));
  swift_allocObject();
  swift_weakInit();

  v89 = a2;

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v93);
  swift_allocObject();
  swift_weakInit();

  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v93);
  sub_219BE20E4();
  sub_219BDE7C4();
  v32 = v86;
  (*(v25 + 8))(v27, v24);
  v33 = v87;
  sub_21875D788(v22, v32, sub_2187335C8);
  v34 = *(v92 + 48);
  if (v34(v32, 1, v33) == 1)
  {
    v35 = sub_2187335C8;
    v36 = v22;
  }

  else
  {
    v37 = v84;
    sub_2195837C4(v32, v84, type metadata accessor for AudioFeedTrack);
    v38 = [*v37 articleID];
    if (v38)
    {
      v39 = v38;
      v81 = sub_219BF5414();
      v41 = v40;

      if ((*(v37 + 25) & 2) != 0)
      {
        sub_219BDE994();
        v42 = [objc_opt_self() mainScreen];
        [v42 scale];

        sub_2187078D4(&unk_280EDCA20);
        sub_219BDE974();
        v78 = v4[8];
        v79 = v4[9];
        v77 = __swift_project_boxed_opaque_existential_1(v4 + 5, v78);
        v43 = swift_allocObject();
        swift_weakInit();
        v80 = v4;
        v44 = v22;
        v45 = v83;
        sub_21875D788(v37, v83, type metadata accessor for AudioFeedTrack);
        v46 = v33;
        v47 = (*(v92 + 80) + 24) & ~*(v92 + 80);
        v76 = (v47 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = (v47 + v82 + 31) & 0xFFFFFFFFFFFFFFF8;
        v49 = swift_allocObject();
        v86 = a1;
        v50 = v41;
        v51 = v49;
        *(v49 + 16) = v43;
        v52 = v49 + v47;
        v33 = v46;
        v53 = v45;
        v22 = v44;
        v4 = v80;
        sub_2195837C4(v53, v52, type metadata accessor for AudioFeedTrack);
        v54 = v51 + v76;
        *v54 = v81;
        *(v54 + 8) = v50;
        *(v54 + 16) = 1;
        *(v51 + v48) = vdupq_n_s64(0x4060000000000000uLL);
        v37 = v84;

        sub_219BE6254();

        __swift_destroy_boxed_opaque_existential_1(v93);
        a1 = v86;
      }

      else
      {
      }
    }

    sub_21875D7F0(v22, sub_2187335C8);
    v35 = type metadata accessor for AudioFeedTrack;
    v36 = v37;
  }

  sub_21875D7F0(v36, v35);
  v55 = v91;
  sub_219BE20E4();
  v56 = v88;
  sub_21875D788(v55, v88, sub_2187335C8);
  if (v34(v56, 1, v33) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(v90);
    v57 = sub_2187335C8;
    v58 = v55;
  }

  else
  {
    v59 = v85;
    sub_2195837C4(v56, v85, type metadata accessor for AudioFeedTrack);
    v60 = [*v59 articleID];
    if (v60)
    {
      v86 = a1;
      v61 = v60;
      v62 = sub_219BF5414();
      v64 = v63;

      if ((*(v59 + 25) & 2) != 0)
      {
        sub_219BDE994();
        v65 = [objc_opt_self() mainScreen];
        [v65 scale];

        sub_2187078D4(&unk_280EDCA20);
        sub_219BDE974();
        v66 = v4[8];
        v88 = v4[9];
        v87 = __swift_project_boxed_opaque_existential_1(v4 + 5, v66);
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = v83;
        sub_21875D788(v59, v83, type metadata accessor for AudioFeedTrack);
        v69 = (*(v92 + 80) + 24) & ~*(v92 + 80);
        v70 = (v69 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = (v69 + v82 + 31) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        *(v72 + 16) = v67;
        sub_2195837C4(v68, v72 + v69, type metadata accessor for AudioFeedTrack);
        v73 = v72 + v70;
        *v73 = v62;
        *(v73 + 8) = v64;
        *(v73 + 16) = 0;
        *(v72 + v71) = vdupq_n_s64(0x4060000000000000uLL);

        sub_219BE6254();

        __swift_destroy_boxed_opaque_existential_1(v93);

        __swift_destroy_boxed_opaque_existential_1(v90);
        sub_21875D7F0(v91, sub_2187335C8);
        v57 = type metadata accessor for AudioFeedTrack;
        v58 = v85;
        goto LABEL_16;
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v90);
    sub_21875D7F0(v55, sub_2187335C8);
    v57 = type metadata accessor for AudioFeedTrack;
    v58 = v59;
  }

LABEL_16:
  sub_21875D7F0(v58, v57);
  return v4;
}

uint64_t sub_21875D388()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21875D3C8()
{
  if (!qword_280EE8B30)
  {
    type metadata accessor for AudioFeedTrack(255);
    sub_218707844(&unk_280EDCA10, type metadata accessor for AudioFeedTrack);
    v0 = sub_219BDE7D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8B30);
    }
  }
}

void sub_21875D490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AudioIntentsData()
{
  result = qword_280ED8B40;
  if (!qword_280ED8B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21875D540()
{
  result = type metadata accessor for AudioFeedTrack(319);
  if (v1 <= 0x3F)
  {
    result = sub_2186C6148(319, &qword_280E8DA98);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21875D5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AudioFeedTrack(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21875D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeedTrack(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_21875D788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21875D7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21875D850(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    v3 = OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken;
    v4 = *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken];
    *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken] = v2;

    *(swift_allocObject() + 16) = v1;
    v5 = v1;
    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v6 = *&v1[v3];
    if (v6)
    {
      v7 = v6;
      sub_219BE1A04();

      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken];
    *&v1[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken] = 0;
  }
}

uint64_t sub_21875D98C()
{

  return swift_deallocObject();
}

uint64_t sub_21875D9C4(uint64_t a1)
{
  v2 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v2);
  sub_218718690(a1, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  *&v5[0] = MEMORY[0x277D84F90];
  sub_21870788C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_2187C84E8(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();
  sub_219BF7164();
  sub_2187C84E8(0, &qword_280EE7250, sub_218AFD34C, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_21875DB80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

char *sub_21875DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_audioStatus;
  LOBYTE(v28[0]) = 0;
  sub_21875DFC4(0, &qword_280EE7B48, &type metadata for AudioAutoClosePlayerHandler.AudioStatus, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *&v5[v12] = sub_219BE20D4();
  v13 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_idledAt;
  v14 = sub_219BDBD34();
  v15 = *(*(v14 - 8) + 56);
  v15(&v6[v13], 1, 1, v14);
  v15(&v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt], 1, 1, v14);
  *&v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseTimer] = 0;
  v16 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_logDateFormatter;
  v17 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v18 = sub_219BF53D4();
  [v17 setDateFormat_];

  *&v6[v16] = v17;
  *&v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_playbackState] = a1;
  *&v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_lazyPlayerViewController] = a2;
  sub_218718690(a3, &v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_paidBundleConfigManager]);
  v19 = &v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_commandCenter];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = objc_allocWithZone(MEMORY[0x277CF89F8]);

  swift_unknownObjectRetain();
  v21 = [v20 init];
  *&v6[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_carSessionStatus] = v21;
  v30.receiver = v6;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  v23 = *&v22[OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_carSessionStatus];
  v24 = v22;
  [v23 addSessionObserver_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v24;
  sub_219BE2104();

  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2D04();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE2104();

  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v25;
}

uint64_t sub_21875DF8C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_21875DFC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_21875E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_218718690(a4, (v4 + 5));
  swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();
  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);

  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

uint64_t sub_21875E114()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21875E14C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8E2E8);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = sub_219BDDDE4();
      v6 = objc_allocWithZone(v5);
      result = sub_219BDDDD4();
      v7 = MEMORY[0x277D2FD60];
      a2[3] = v5;
      a2[4] = v7;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21875E240(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_prewarming] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_audioPlaybackQueue] = a1;
  sub_218718690(a2, &v3[OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_articleAudioPrewarmer]);
  *&v3[OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_bundleSubscriptionManager] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;

  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v12, sel_init);
  sub_21875E404();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = v8;
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v11);
  [a3 addObserver_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

uint64_t sub_21875E3CC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void sub_21875E404()
{
  v1 = v0;
  v2 = type metadata accessor for AudioFeedTrack(0);
  v43 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v39 - v6);
  v8 = [*(v0 + OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v8, v8 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    sub_21874637C(&v47, sub_21880702C);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    v11 = 0;
LABEL_10:
    if (objc_getAssociatedObject(v8, ~v11))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v12 = v44;
        v13 = [v12 integerValue];

        if (((v13 ^ v11) & 1) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_21874637C(&v47, sub_21880702C);
    }

    if ((v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v9 = v44;
  v10 = [v44 integerValue];
  if (v10 != -1)
  {
    v11 = v10;
    goto LABEL_10;
  }

LABEL_21:
  v14 = sub_219AE83D8();
  v40 = v14;
  v41 = OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_prewarming;
  v15 = *(v1 + OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_prewarming);
  if (*(v14 + 16) <= *(v15 + 16) >> 3)
  {
    *&v47 = *(v1 + OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_prewarming);

    sub_218EB3C34(v14);
    v16 = v47;
  }

  else
  {

    v16 = sub_218EB45B8(v14, v15);
  }

  v17 = 0;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v42 = v1;
  v21 = (v1 + OBJC_IVAR____TtC7NewsUI227AudioNextTrackAutoPrewarmer_articleAudioPrewarmer);
  v22 = (v18 + 63) >> 6;
  if (v20)
  {
    while (1)
    {
      v23 = v17;
LABEL_32:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_218C1620C(*(v16 + 48) + *(v43 + 72) * (v24 | (v23 << 6)), v7);
      v25 = v21[3];
      v26 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v25);
      sub_21935D32C(v7, v25, v26);
      sub_21874637C(v7, type metadata accessor for AudioFeedTrack);
      if (!v20)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
LABEL_28:
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v23 >= v22)
    {
      break;
    }

    v20 = *(v16 + 56 + 8 * v23);
    ++v17;
    if (v20)
    {
      v17 = v23;
      goto LABEL_32;
    }
  }

  v27 = *(v42 + v41);
  v28 = v40;
  if (*(v27 + 16) <= *(v40 + 16) >> 3)
  {
    *&v47 = v40;

    sub_218EB3C34(v27);

    v29 = v47;
  }

  else
  {

    v29 = sub_218EB45B8(v27, v28);
  }

  v30 = 0;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 56);
  v34 = (v31 + 63) >> 6;
  while (v33)
  {
    v35 = v30;
LABEL_45:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    sub_218C1620C(*(v29 + 48) + *(v43 + 72) * (v36 | (v35 << 6)), v5);
    v37 = v21[3];
    v38 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v37);
    sub_21935D314(v5, v37, v38);
    sub_21874637C(v5, type metadata accessor for AudioFeedTrack);
  }

  while (1)
  {
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      *(v42 + v41) = v28;

      return;
    }

    v33 = *(v29 + 56 + 8 * v35);
    ++v30;
    if (v33)
    {
      v30 = v35;
      goto LABEL_45;
    }
  }

LABEL_49:
  __break(1u);
}

void *sub_21875E950(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  v5 = objc_opt_self();
  v6 = a1;
  swift_unknownObjectRetain();
  v7 = [v5 defaultCenter];
  v8 = *MEMORY[0x277D76770];
  v9 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_219AB8550;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218D2279C;
  v13[3] = &block_descriptor_208;
  v10 = _Block_copy(v13);

  v11 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];

  swift_unknownObjectRelease();
  _Block_release(v10);

  v3[5] = v11;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_21875EAC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_21875EAF8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v20[3] = type metadata accessor for AudioFeedConfigManager();
  v20[4] = &off_282A71790;
  v20[0] = a1;
  sub_218718690(v20, &a4[OBJC_IVAR____TtC7NewsUI226AudioFeedContentPrefetcher_feedConfigManager]);
  sub_218718690(a2, &a4[OBJC_IVAR____TtC7NewsUI226AudioFeedContentPrefetcher_formatService]);
  *&a4[OBJC_IVAR____TtC7NewsUI226AudioFeedContentPrefetcher_bundleSubscriptionManager] = a3;
  v9 = objc_opt_self();
  swift_unknownObjectRetain();
  v10 = [v9 sharedApplication];
  v11 = [v10 backgroundRefreshStatus];

  a4[OBJC_IVAR____TtC7NewsUI226AudioFeedContentPrefetcher_backgroundAppRefreshEnabled] = v11 != 1;
  v19.receiver = a4;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  [a3 addObserver_];
  v13 = objc_opt_self();
  sub_218718690(v20, v18);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_2186CB1F0(v18, v14 + 24);
  v17[4] = sub_218AFDD80;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218793E0C;
  v17[3] = &block_descriptor_22;
  v15 = _Block_copy(v17);

  [v13 scheduleLowPriorityBlock_];
  _Block_release(v15);

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v12;
}

uint64_t sub_21875ED0C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21875ED4C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = type metadata accessor for PuzzleAnyFilterOptionPredicate();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v4;
  v11 = &off_282A55668;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0x79616C7020796E61, 0xED00006574617453);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v4;
  v11 = &off_282A55668;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0x6666696420796E61, 0xEE0079746C756369);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = type metadata accessor for PuzzlePlayStateFilterOptionPredicate();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v6;
  v11 = &off_282A7F788;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0xD000000000000011, 0x8000000219D3A0C0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v6;
  v11 = &off_282A7F788;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0xD000000000000013, 0x8000000219D3A0A0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6;
  v11 = &off_282A7F788;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0xD000000000000011, 0x8000000219D3A080);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = type metadata accessor for PuzzleDifficultyFilterOptionPredicate();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7;
  v11 = &off_282A59330;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0x6C75636966666964, 0xEE00797361457974);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v7;
  v11 = &off_282A59330;
  v9[0] = result;
  sub_218718690(v9, v8);
  swift_beginAccess();
  sub_21875F34C(v8, 0xD000000000000012, 0x8000000219D3A060);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = v7;
    v11 = &off_282A59330;
    v9[0] = result;
    sub_218718690(v9, v8);
    swift_beginAccess();
    sub_21875F34C(v8, 0xD000000000000015, 0x8000000219D3A040);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21875F318()
{
  type metadata accessor for PuzzleAnyFilterOptionPredicate();

  return swift_allocObject();
}

uint64_t sub_21875F34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2186CB1F0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_21875F5C0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2199DCA48(a1, &unk_27CC214A0, qword_280E98290, &protocol descriptor for PuzzleArchiveFilterOptionPredicateType);
    sub_2195EAC08(a2, a3, v9);

    return sub_2199DCA48(v9, &unk_27CC214A0, qword_280E98290, &protocol descriptor for PuzzleArchiveFilterOptionPredicateType);
  }

  return result;
}

uint64_t sub_21875F42C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(_BYTE *, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  v10 = v7;
  v15 = *v7;
  v16 = sub_21870F700(a2, a3);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      v24 = v16;
      sub_2194966FC(a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_21875F5F0(v21, a4 & 1, a5, a6);
    v16 = sub_21870F700(a2, a3);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v10;
  if (v22)
  {
    v27 = v26[7] + 40 * v16;
    __swift_destroy_boxed_opaque_existential_1(v27);

    return a7(a1, v27);
  }

  else
  {
    sub_21875F940(v16, a2, a3, a1, v26, a6);
  }
}

uint64_t sub_21875F5F0(uint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t, _BYTE *))
{
  v5 = v4;
  v7 = *v4;
  a3(0);
  v35 = a2;
  result = sub_219BF7594();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v7 + 56) + 40 * v22;
      if (v35)
      {
        a4(v26, v37);
      }

      else
      {
        sub_218718690(v26, v37);
      }

      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      result = (a4)(v37, *(v9 + 56) + 40 * v17);
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
  return result;
}

void sub_21875F8C0()
{
  if (!qword_280E8D1F8)
  {
    sub_2186C709C(255, qword_280E98290);
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D1F8);
    }
  }
}

uint64_t sub_21875F940(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_21875F9B4(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for PuzzlePlayStateFilterOptionPredicate();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v5, v4 + 16);
    *(v4 + 56) = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21875FA74()
{
  type metadata accessor for PuzzleDifficultyFilterOptionPredicate();

  return swift_allocObject();
}

void sub_21875FAA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875FAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FB60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875FBB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875FC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FCD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FD98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875FDEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21875FE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FEA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21875FF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PuzzleViewController()
{
  result = qword_280ECDCB0;
  if (!qword_280ECDCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21876001C()
{
  type metadata accessor for PuzzleModel();
  if (v0 <= 0x3F)
  {
    sub_219BE4914();
    if (v1 <= 0x3F)
    {
      sub_218760490(319, &unk_280E90570, MEMORY[0x277D33680], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_218760490(319, &unk_280E90358, MEMORY[0x277D33A08], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t type metadata accessor for PuzzleModel()
{
  result = qword_280EDF560;
  if (!qword_280EDF560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}