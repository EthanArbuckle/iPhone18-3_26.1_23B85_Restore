uint64_t type metadata accessor for BrowseState()
{
  result = qword_2810EEB20;
  if (!qword_2810EEB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47A83C()
{
  result = sub_24B516C4C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BrowseIdentifier();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BrowseLoadState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseIdentifier()
{
  result = qword_2810EE5C0;
  if (!qword_2810EE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47A938()
{
  sub_24B47A9B0();
  if (v0 <= 0x3F)
  {
    sub_24B47A9E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B47A9B0()
{
  result = qword_2810ED718;
  if (!qword_2810ED718)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2810ED718);
  }

  return result;
}

void sub_24B47A9E0()
{
  if (!qword_2810ED720)
  {
    sub_24B516B8C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2810ED720);
    }
  }
}

uint64_t type metadata accessor for BrowseLoadState()
{
  result = qword_2810EE668;
  if (!qword_2810EE668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AAA0()
{
  sub_24B47AB14();
  if (v0 <= 0x3F)
  {
    sub_24B47AB44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B47AB14()
{
  result = qword_2810ED710;
  if (!qword_2810ED710)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_2810ED710);
  }

  return result;
}

void sub_24B47AB44()
{
  if (!qword_2810EE888[0])
  {
    type metadata accessor for BrowseContent();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE250, &qword_24B5253E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_2810EE888);
    }
  }
}

uint64_t type metadata accessor for BrowseContent()
{
  result = qword_2810EE870;
  if (!qword_2810EE870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AC34()
{
  type metadata accessor for EditorialCollectionDetail();
  if (v0 <= 0x3F)
  {
    sub_24B47C82C();
    if (v1 <= 0x3F)
    {
      sub_24B47C874();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for EditorialCollectionDetail()
{
  result = qword_2810ED9C8;
  if (!qword_2810ED9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AD08()
{
  sub_24B47AE04(319, qword_2810EE8E8, type metadata accessor for BrowseArtwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EditorialCollection();
    if (v1 <= 0x3F)
    {
      sub_24B47AE04(319, &qword_2810ED6F8, type metadata accessor for BrowseSectionDescriptor, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B47AE04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for BrowseArtwork()
{
  result = qword_2810EE918;
  if (!qword_2810EE918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47AEB4()
{
  sub_24B47AF70(319, &qword_2810EED40, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_24B47AF70(319, &qword_2810EED70, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47AF70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B517C8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for EditorialCollection()
{
  result = qword_2810EE298;
  if (!qword_2810EE298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B010()
{
  sub_24B47B0B8();
  if (v0 <= 0x3F)
  {
    sub_24B47B1C0();
    if (v1 <= 0x3F)
    {
      sub_24B516BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B47B0B8()
{
  if (!qword_2810ED6D8)
  {
    sub_24B47B114();
    v0 = sub_24B517C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED6D8);
    }
  }
}

unint64_t sub_24B47B114()
{
  result = qword_2810ED800[0];
  if (!qword_2810ED800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ED800);
  }

  return result;
}

unint64_t sub_24B47B16C()
{
  result = qword_2810ED7F8;
  if (!qword_2810ED7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED7F8);
  }

  return result;
}

void sub_24B47B1C0()
{
  if (!qword_2810ED708)
  {
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED708);
    }
  }
}

uint64_t type metadata accessor for BrowseSectionDescriptor()
{
  result = qword_2810EDC70;
  if (!qword_2810EDC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47B25C()
{
  result = type metadata accessor for BrowseDetailDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BrowseEditorialDescriptor();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BrowseGalleryDescriptor();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NewAndFeaturedDescriptor();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseDetailDescriptor()
{
  result = qword_2810EDED0;
  if (!qword_2810EDED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B358()
{
  type metadata accessor for BrowseDetailContent();
  if (v0 <= 0x3F)
  {
    sub_24B47BBFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for BrowseDetailContent()
{
  result = qword_2810EE350;
  if (!qword_2810EE350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47B430()
{
  result = type metadata accessor for BrowseDetailArtworkItem();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BrowseDetailTextItem();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BrowseDetailVideoLinkItem();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for BrowseDetailArtworkItem()
{
  result = qword_2810EDDA8;
  if (!qword_2810EDDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B504()
{
  sub_24B47B578();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B47B578()
{
  if (!qword_2810EED38)
  {
    type metadata accessor for BrowseArtwork();
    sub_24B47B60C(qword_2810EE948, type metadata accessor for BrowseArtwork);
    v0 = sub_24B516CDC();
    if (!v1)
    {
      atomic_store(v0, &qword_2810EED38);
    }
  }
}

uint64_t sub_24B47B60C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B69C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B6E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B47B7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BrowseDetailTextItem()
{
  result = qword_2810EE178;
  if (!qword_2810EE178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47B970()
{
  sub_24B47B9EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B47B9EC()
{
  if (!qword_2810EED88)
  {
    sub_24B516B8C();
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810EED88);
    }
  }
}

uint64_t type metadata accessor for BrowseDetailVideoLinkItem()
{
  result = qword_2810EDB10;
  if (!qword_2810EDB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47BA90()
{
  result = sub_24B516B8C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VideoAsset();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for VideoAsset()
{
  result = qword_2810EEBC0;
  if (!qword_2810EEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BB68()
{
  sub_24B47B1C0();
  if (v0 <= 0x3F)
  {
    sub_24B516BAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47BBFC()
{
  if (!qword_2810EE2B0[0])
  {
    v0 = sub_24B517C8C();
    if (!v1)
    {
      atomic_store(v0, qword_2810EE2B0);
    }
  }
}

uint64_t type metadata accessor for BrowseEditorialDescriptor()
{
  result = qword_2810EDA78;
  if (!qword_2810EDA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BC98()
{
  sub_24B47BDB4(319, qword_2810EDBD0);
  if (v0 <= 0x3F)
  {
    sub_24B47BDB4(319, &qword_2810EE480);
    if (v1 <= 0x3F)
    {
      sub_24B47BDB4(319, qword_2810EE2B0);
      if (v2 <= 0x3F)
      {
        sub_24B47B9EC();
        if (v3 <= 0x3F)
        {
          sub_24B516B8C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B47BDB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24B517C8C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for BrowseGalleryDescriptor()
{
  result = qword_2810EDD10;
  if (!qword_2810EDD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47BE4C()
{
  sub_24B47BEF0();
  if (v0 <= 0x3F)
  {
    sub_24B516B8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47BEF0()
{
  if (!qword_2810ED700)
  {
    type metadata accessor for BrowseLazyItem();
    v0 = sub_24B517B8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED700);
    }
  }
}

uint64_t type metadata accessor for BrowseLazyItem()
{
  result = qword_2810EE710;
  if (!qword_2810EE710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47BF94()
{
  result = type metadata accessor for BrowseItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for BrowseItem()
{
  result = qword_2810EED18;
  if (!qword_2810EED18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C048()
{
  sub_24B47C320(319, &qword_2810EED88, MEMORY[0x277CC8C40]);
  if (v0 <= 0x3F)
  {
    sub_24B47B578();
    if (v1 <= 0x3F)
    {
      sub_24B47C374();
      if (v2 <= 0x3F)
      {
        sub_24B47C47C(319, qword_2810ED9D8, &type metadata for BrowseItemAssetLoadStatus, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24B47C47C(319, &qword_2810ED6E8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24B47C47C(319, &qword_2810EDBC8, &type metadata for DynamicBrickDisplayStyle, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24B47C47C(319, &qword_2810ED6F0, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_24B47C320(319, &qword_2810EE790, type metadata accessor for EditorialLink);
                if (v7 <= 0x3F)
                {
                  sub_24B47C47C(319, &qword_2810EE2A8, &type metadata for BrowseItemMediaType, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_24B47C47C(319, &qword_2810ED708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_24B47C47C(319, qword_2810EE0E8, &type metadata for BrowseTextAttributes, MEMORY[0x277D83D88]);
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

void sub_24B47C320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B517C8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B47C374()
{
  if (!qword_2810ED6E0)
  {
    sub_24B47C3D0();
    v0 = sub_24B517C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED6E0);
    }
  }
}

unint64_t sub_24B47C3D0()
{
  result = qword_2810EDDC0[0];
  if (!qword_2810EDDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDDC0);
  }

  return result;
}

unint64_t sub_24B47C428()
{
  result = qword_2810EDDB8;
  if (!qword_2810EDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EDDB8);
  }

  return result;
}

void sub_24B47C47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24B47C4CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for EditorialLink()
{
  result = qword_2810EE798;
  if (!qword_2810EE798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C568()
{
  if (!qword_2810EE478)
  {
    v0 = type metadata accessor for EditorialVideoLink();
    if (!v1)
    {
      atomic_store(v0, &qword_2810EE478);
    }
  }
}

uint64_t sub_24B47C5B0(uint64_t a1)
{
  sub_24B47C568();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for EditorialVideoLink();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for EditorialVideoLink()
{
  result = qword_2810EE468;
  if (!qword_2810EE468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B47C6B4()
{
  result = sub_24B516BAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NewAndFeaturedDescriptor()
{
  result = qword_2810EDBB8;
  if (!qword_2810EDBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B47C784()
{
  sub_24B47B9EC();
  if (v0 <= 0x3F)
  {
    sub_24B516B8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B47C82C()
{
  if (!qword_2810EDD20[0])
  {
    v0 = type metadata accessor for BrowseGalleryDescriptor();
    if (!v1)
    {
      atomic_store(v0, qword_2810EDD20);
    }
  }
}

void sub_24B47C874()
{
  if (!qword_2810ED6F8)
  {
    type metadata accessor for BrowseSectionDescriptor();
    v0 = sub_24B517B8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED6F8);
    }
  }
}

unint64_t sub_24B47C910()
{
  result = qword_2810ED8B8[0];
  if (!qword_2810ED8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ED8B8);
  }

  return result;
}

uint64_t sub_24B47C984(_OWORD *a1)
{
  result = sub_24B516E2C();
  if (v3 <= 0x3F)
  {
    result = sub_24B516D4C();
    if (v4 <= 0x3F)
    {
      v7 = a1[1];
      v8 = a1[2];
      v9 = a1[3];
      v10 = a1[4];
      type metadata accessor for NewAndFeaturedDataItem();
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      result = sub_24B51798C();
      if (v5 <= 0x3F)
      {
        result = sub_24B516C4C();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_24B47CB00()
{
  result = qword_2810ED7F0;
  if (!qword_2810ED7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ED7F0);
  }

  return result;
}

uint64_t sub_24B47CB6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B51702C();
  sub_24B482204();
  return swift_getWitnessTable();
}

uint64_t sub_24B47CBF0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B47CC60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24B47CD0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47CDBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B47CE00(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC170, &qword_24B519E80);
  sub_24B51702C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC178, &qword_24B519E88);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B5177EC();
  sub_24B51702C();
  sub_24B51724C();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC180, &qword_24B519E90);
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC188, &qword_24B519E98);
  sub_24B51702C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B496A60(&qword_27EFFC190, &qword_27EFFC180, &qword_24B519E90);
  swift_getWitnessTable();
  sub_24B496A60(&qword_27EFFC198, &qword_27EFFC188, &qword_24B519E98);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51731C();
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC1A0, &qword_24B519EA0);
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  sub_24B4958E4(&qword_27EFFC1A8, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  sub_24B4956B0();
  return swift_getWitnessTable();
}

uint64_t sub_24B47D4DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B51710C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B47D510(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B51711C();
}

uint64_t sub_24B47D56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC170, &qword_24B519E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B47D5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC170, &qword_24B519E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B47D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B516E2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_24B516D4C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v17 = *(a3 + 16);
      v18 = *(a3 + 32);
      v19 = *(a3 + 48);
      v20 = *(a3 + 64);
      type metadata accessor for NewAndFeaturedDataItem();
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v14 = sub_24B51798C();
      v15 = *(v14 - 8);
      if (*(v15 + 84) == a2)
      {
        return (*(v15 + 48))(a1 + *(a3 + 88), a2, v14);
      }

      v16 = sub_24B516C4C();
      return (*(*(v16 - 8) + 48))(a1 + *(a3 + 92), a2, v16);
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 84);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24B47D8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24B516E2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_24B516D4C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      v19 = *(a4 + 16);
      v20 = *(a4 + 32);
      v21 = *(a4 + 48);
      v22 = *(a4 + 64);
      type metadata accessor for NewAndFeaturedDataItem();
      swift_getWitnessTable();
      sub_24B516E6C();
      sub_24B517B8C();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v16 = sub_24B51798C();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a3)
      {
        return (*(v17 + 56))(a1 + *(a4 + 88), a2, a2, v16);
      }

      v18 = sub_24B516C4C();
      return (*(*(v18 - 8) + 56))(a1 + *(a4 + 92), a2, a2, v18);
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 84);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B47DB70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B47DD08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F8, &qword_24B51A700);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24B47DEA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[9];
  v4 = *a1;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24B47DF4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B516C4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BrowseIdentifier();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 2)
    {
      return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    State = type metadata accessor for BrowseLoadState();
    v16 = *(*(State - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, State);
  }
}

uint64_t sub_24B47E0CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B516C4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for BrowseIdentifier();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    State = type metadata accessor for BrowseLoadState();
    v16 = *(*(State - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, State);
  }

  return result;
}

uint64_t sub_24B47E25C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B47E294(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B517C8C();
  return swift_getWitnessTable();
}

uint64_t sub_24B47E2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B47E394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47E4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516BAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B47E57C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516BAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B47E624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
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

uint64_t sub_24B47E6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4F0, &qword_24B51C3C0);
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

uint64_t sub_24B47E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for EditorialCollection();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B47E8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB60, &qword_24B51CA70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for EditorialCollection();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24B47EA0C()
{
  v1 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_24B47EA44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v26 = *(v0 + 16);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);
  v24 = *(v0 + 88);
  v29 = *(v0 + 104);
  v4 = type metadata accessor for NewAndFeaturedView();
  v25 = *(*(v4 - 1) + 64);
  v5 = (v0 + ((*(*(v4 - 1) + 80) + 112) & ~*(*(v4 - 1) + 80)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B51701C();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v4[29]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_24B4956A8();
  v12 = v4[30];
  swift_getFunctionTypeMetadata1();
  v13 = sub_24B516C9C();
  (*(*(v13 - 8) + 8))(&v5[v12], v13);
  v14 = v4[31];
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);
  v16 = v4[32];
  swift_getExtendedExistentialTypeMetadata();
  v17 = sub_24B516C9C();
  (*(*(v17 - 8) + 8))(&v5[v16], v17);
  v18 = v4[33];
  v19 = sub_24B516B8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(&v5[v18], v19);
  v22 = v4[34];
  if (!(*(v20 + 48))(&v5[v22], 1, v19))
  {
    v21(&v5[v22], v19);
  }

  return swift_deallocObject();
}

uint64_t sub_24B47ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE90, &qword_24B51DC38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + *(a3 + 116) + 16);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = *(a3 + 32);
  v14 = *(a3 + 16);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v9 = *(v16 + 48);
    v10 = a1 + *(a3 + 120);
    goto LABEL_3;
  }

  v17 = *(a3 + 40);
  v18 = *(a3 + 48);
  v19 = *(a3 + 56);
  v20 = *(a3 + 64);
  v22 = *(a3 + 72);
  v21 = *(a3 + 80);
  v31 = *(a3 + 24);
  v30 = *(a3 + 88);
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  v23 = sub_24B516C9C();
  if (*(*(v23 - 8) + 84) == a2)
  {
    v24 = v23;
    v25 = *(v23 - 8);
    v26 = *(a3 + 124);
  }

  else
  {
    type metadata accessor for NewAndFeaturedDataItem();
    swift_getExtendedExistentialTypeMetadata();
    v27 = sub_24B516C9C();
    if (*(*(v27 - 8) + 84) == a2)
    {
      v24 = v27;
      v25 = *(v27 - 8);
      v26 = *(a3 + 128);
    }

    else
    {
      v28 = sub_24B516B8C();
      if (*(*(v28 - 8) + 84) != a2)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
        return (*(*(v29 - 8) + 48))(a1 + *(a3 + 136), a2, v29);
      }

      v24 = v28;
      v25 = *(v28 - 8);
      v26 = *(a3 + 132);
    }
  }

  return (*(v25 + 48))(a1 + v26, a2, v24);
}

uint64_t sub_24B47F0C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE90, &qword_24B51DC38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + *(a4 + 116) + 16) = -a2;
    return result;
  }

  v13 = *(a4 + 32);
  v14 = *(a4 + 16);
  swift_getFunctionTypeMetadata1();
  v15 = sub_24B516C9C();
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v10 = v15;
    v11 = *(v16 + 56);
    v12 = a1 + *(a4 + 120);
    goto LABEL_3;
  }

  v17 = *(a4 + 40);
  v18 = *(a4 + 48);
  v19 = *(a4 + 56);
  v20 = *(a4 + 64);
  v21 = *(a4 + 72);
  v31 = *(a4 + 24);
  v29 = *(a4 + 88);
  v30 = *(a4 + 80);
  type metadata accessor for NewAndFeaturedDataItem();
  swift_getFunctionTypeMetadata1();
  v22 = sub_24B516C9C();
  if (*(*(v22 - 8) + 84) == a3)
  {
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(a4 + 124);
  }

  else
  {
    type metadata accessor for NewAndFeaturedDataItem();
    swift_getExtendedExistentialTypeMetadata();
    v26 = sub_24B516C9C();
    if (*(*(v26 - 8) + 84) == a3)
    {
      v23 = v26;
      v24 = *(v26 - 8);
      v25 = *(a4 + 128);
    }

    else
    {
      v27 = sub_24B516B8C();
      if (*(*(v27 - 8) + 84) != a3)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
        return (*(*(v28 - 8) + 56))(a1 + *(a4 + 136), a2, a2, v28);
      }

      v23 = v27;
      v24 = *(v27 - 8);
      v25 = *(a4 + 132);
    }
  }

  return (*(v24 + 56))(a1 + v25, a2, a2, v23);
}

uint64_t sub_24B47F410(__int128 *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE48, &qword_24B51DB68);
  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  type metadata accessor for NewAndFeaturedDataItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE50, &qword_24B51DB70);
  sub_24B51702C();
  sub_24B4C29D8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE58, &qword_24B51DB78);
  sub_24B51724C();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_24B4C2DC0(&qword_2810ED760, &qword_27EFFCE58, &qword_24B51DB78);
  swift_getWitnessTable();
  sub_24B516DFC();
  sub_24B516E8C();
  swift_getWitnessTable();
  sub_24B4C4888(&qword_2810ED7C8, MEMORY[0x277D097D8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B516EDC();
  sub_24B4C4888(&qword_2810ED7B8, MEMORY[0x277D097F8]);
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCE68, &qword_24B51DB88);
  sub_24B51724C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B4C2B48();
  swift_getWitnessTable();
  sub_24B51791C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51735C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B516F3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B516F4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51786C();
  sub_24B4C2E64();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B47FCC4()
{
  v46 = *(v0 + 48);
  v47 = *(v0 + 16);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v44 = *(v0 + 24);
  v49 = *(v0 + 32);
  v50 = *(v0 + 40);
  v45 = *(v0 + 88);
  v51 = *(v0 + 104);
  v5 = type metadata accessor for NewAndFeaturedView();
  v6 = *(*(v5 - 1) + 64);
  *&v46 = *(*(v5 - 1) + 80);
  v7 = (v46 + 112) & ~v46;
  v8 = type metadata accessor for NewAndFeaturedDataItem();
  v48 = *(*(v8 - 1) + 80);
  *&v45 = *(*(v8 - 1) + 64);
  v9 = (v0 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCE40, &unk_24B51DB50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24B51701C();
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  else
  {
    v11 = *v9;
  }

  v43 = (v7 + v6 + v48) & ~v48;
  v12 = &v9[v5[29]];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = v12[16];
  sub_24B4956A8();
  v16 = v5[30];
  swift_getFunctionTypeMetadata1();
  v17 = sub_24B516C9C();
  (*(*(v17 - 8) + 8))(&v9[v16], v17);
  v18 = v5[31];
  swift_getFunctionTypeMetadata1();
  v19 = sub_24B516C9C();
  (*(*(v19 - 8) + 8))(&v9[v18], v19);
  v20 = v5[32];
  swift_getExtendedExistentialTypeMetadata();
  v21 = sub_24B516C9C();
  (*(*(v21 - 8) + 8))(&v9[v20], v21);
  v22 = v5[33];
  v23 = sub_24B516B8C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v25(&v9[v22], v23);
  v26 = v5[34];
  if (!(*(v24 + 48))(&v9[v26], 1, v23))
  {
    v25(&v9[v26], v23);
  }

  (*(*(v44 - 8) + 8))(v0 + v43);
  (*(*(v4 - 8) + 8))(v0 + v43 + v8[21], v4);
  v27 = v8[22];
  v28 = sub_24B516DDC();
  v29 = *(*(v28 - 8) + 8);
  v29(v0 + v43 + v27, v28);
  v29(v0 + v43 + v8[23], v28);
  v30 = *(v0 + v43 + v8[25]);

  v31 = *(v0 + v43 + v8[28] + 8);

  v32 = *(v0 + v43 + v8[29] + 8);

  v33 = v8[30];
  v34 = sub_24B516C2C();
  (*(*(v34 - 8) + 8))(v0 + v43 + v33, v34);
  v35 = (v0 + v43 + v8[31]);
  if (v35[1])
  {

    v36 = v35[3];

    v37 = v35[5];

    v38 = v35[7];

    v39 = v35[9];

    v40 = v35[11];

    v41 = v35[13];
  }

  return swift_deallocObject();
}

uint64_t sub_24B480208()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B480244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    v9 = sub_24B516C9C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 52);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(*(*(a3 + 24) - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2);
    }
  }
}

uint64_t sub_24B4803B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = *(a4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    v9 = sub_24B516C9C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 52);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = *(*(*(a4 + 24) - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2);
    }
  }

  return result;
}

uint64_t sub_24B480528(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  sub_24B51724C();
  sub_24B516CFC();
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
  swift_getWitnessTable();
  sub_24B4C6AA4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B480734()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[13];

  v3 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_24B48077C()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 11);

  v6 = *(v0 + 13);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B480840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B480970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B480AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B480BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B480CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B516B8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for VideoAsset();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24B480DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24B516B8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for VideoAsset();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24B480F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B480F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B481008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24B516B8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B4810B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24B516B8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B481158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24B481288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24B516B8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24B4813B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BrowseDetailContent();
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

uint64_t sub_24B481478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BrowseDetailContent();
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

uint64_t sub_24B481534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_24B48156C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  v7 = a1[8];
  v8 = a1[3];
  v6 = a1[9];
  sub_24B51702C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B51745C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51782C();
  sub_24B51724C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B481890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5170EC();
  *a1 = result;
  return result;
}

uint64_t sub_24B4818BC(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B5170FC();
}

uint64_t sub_24B4818E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B5170CC();
  *a1 = result;
  return result;
}

uint64_t sub_24B481914(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B5170DC();
}

uint64_t sub_24B481940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B4819FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B481AAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24B481B30()
{
  v1 = sub_24B516B8C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 312) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  v12 = *(v0 + 17);

  v13 = *(v0 + 19);

  v14 = *(v0 + 21);

  v15 = *(v0 + 23);

  v16 = *(v0 + 25);

  v17 = *(v0 + 27);

  v18 = *(v0 + 29);

  v19 = *(v0 + 31);

  v20 = *(v0 + 33);

  v21 = *(v0 + 35);

  v22 = *(v0 + 38);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_24B481C7C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  v18 = v0[37];

  return swift_deallocObject();
}

uint64_t sub_24B481DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B481E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24B481FE4(uint64_t a1, char a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD68, &qword_24B5185F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16 - v9;
  if (a2)
  {
    v11 = sub_24B51703C();
    v12 = sub_24B5173CC();
  }

  else
  {
    v12 = sub_24B5173BC();
    v11 = 0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD78, &qword_24B518600);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  v14 = &v10[*(v7 + 36)];
  *v14 = v11;
  v14[8] = v12;
  sub_24B482410(v10, v6);
  swift_storeEnumTagMultiPayload();
  sub_24B482480();
  sub_24B51723C();
  return sub_24B4825B8(v10);
}

unint64_t sub_24B482204()
{
  result = qword_27EFFBD60;
  if (!qword_27EFFBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseInsetBehaviorModifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrowseInsetBehaviorModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B482410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B482480()
{
  result = qword_27EFFBD80;
  if (!qword_27EFFBD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD70, &qword_24B5185F8);
    sub_24B482554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD80);
  }

  return result;
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

unint64_t sub_24B482554()
{
  result = qword_27EFFBD88;
  if (!qword_27EFFBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD78, &qword_24B518600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD88);
  }

  return result;
}

uint64_t sub_24B4825B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBD70, &qword_24B5185F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B482620()
{
  result = qword_27EFFBD90;
  if (!qword_27EFFBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBD98, &qword_24B518608);
    sub_24B482480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBD90);
  }

  return result;
}

uint64_t BrowseEditorialGroup.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

FitnessBrowsing::BrowseEditorialGroup __swiftcall BrowseEditorialGroup.init(items:title:)(Swift::OpaquePointer items, Swift::String title)
{
  *v2 = items;
  *(v2 + 8) = title;
  result.title = title;
  result.items = items;
  return result;
}

uint64_t sub_24B4826E8()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B482730()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

uint64_t sub_24B482774()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_24B4827A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B48288C(uint64_t a1)
{
  v2 = sub_24B482B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4828C8(uint64_t a1)
{
  v2 = sub_24B482B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDA0, &qword_24B518620);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[1] = v1[2];
  v13[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B482B30();

  sub_24B517FDC();
  v16 = v10;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  sub_24B482E2C(&qword_27EFFBDB8, &qword_27EFFBDC0);
  sub_24B517EBC();

  if (!v2)
  {
    v14 = 1;
    sub_24B517E7C();
  }

  return (*(v5 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B482B30()
{
  result = qword_27EFFBDA8;
  if (!qword_27EFFBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDA8);
  }

  return result;
}

uint64_t BrowseEditorialGroup.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDC8, &qword_24B518630);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B482B30();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  v16[15] = 0;
  sub_24B482E2C(&qword_27EFFBDD0, &qword_27EFFBDD8);
  sub_24B517E0C();
  v11 = v17;
  v16[14] = 1;
  v12 = sub_24B517DCC();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_24B482E2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B482EB4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B482EB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrowseLazyItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static BrowseEditorialGroup.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_24B483BA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t sub_24B482FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v81 - v9;
  v11 = type metadata accessor for BrowseLazyItem();
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v81 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v81 - v18;
  result = MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = 0;
  v84 = a1 + 32;
  v83 = a2 + 32;
  v108 = v7;
  v96 = v11;
  v97 = v21;
  v82 = v22;
  while (1)
  {
    if (v23 == v22)
    {
      goto LABEL_119;
    }

    v24 = (v84 + 24 * v23);
    v25 = *v24;
    v26 = (v83 + 24 * v23);
    v113 = *v26;
    v114 = v25;
    v27 = *(v25 + 16);
    if (v27 != *(v113 + 16))
    {
      return 0;
    }

    v85 = v23;
    v28 = v24[2];
    v87 = v24[1];
    v29 = v26[2];
    v86 = v26[1];
    v89 = v29;
    v88 = v28;
    if (v27)
    {
      break;
    }

LABEL_101:
    if (v87 == v86 && v88 == v89)
    {
    }

    else
    {
      v78 = sub_24B517EEC();

      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }

    v23 = v85 + 1;
    result = 1;
    v22 = v82;
    if (v85 + 1 == v82)
    {
      return result;
    }
  }

  v30 = *(v112 + 80);
  v31 = v114;

  v32 = v113;

  if (v31 == v32)
  {
    goto LABEL_101;
  }

  v33 = 0;
  v34 = (v30 + 32) & ~v30;
  v110 = v114 + v34;
  v109 = v113 + v34;
  v103 = v27;
  while (1)
  {
    v37 = v108;
    if (v33 >= *(v114 + 16))
    {
      break;
    }

    v38 = *(v112 + 72) * v33;
    result = sub_24B485050(v110 + v38, v21, type metadata accessor for BrowseLazyItem);
    if (v33 >= *(v113 + 16))
    {
      goto LABEL_118;
    }

    v39 = v109 + v38;
    v40 = v115;
    sub_24B485050(v39, v115, type metadata accessor for BrowseLazyItem);
    v41 = &v10[*(v37 + 48)];
    sub_24B485050(v21, v10, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v40, v41, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v100;
      sub_24B485050(v10, v100, type metadata accessor for BrowseLazyItem);
      v43 = *(v42 + 8);
      v105 = *(v42 + 16);
      v45 = *(v42 + 24);
      v44 = *(v42 + 32);
      v46 = *(v42 + 40);
      v47 = *(v42 + 48);
      v48 = *(v42 + 64);
      v94 = *(v42 + 56);
      v107 = v48;
      v92 = *(v42 + 72);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_24B48511C(v115, type metadata accessor for BrowseLazyItem);
        v79 = v97;
        v80 = type metadata accessor for BrowseLazyItem;
LABEL_114:
        sub_24B48511C(v79, v80);
        sub_24B48517C(v10);
        goto LABEL_115;
      }

      v49 = v44;
      v50 = v10;
      v51 = *(v41 + 16);
      v98 = *(v41 + 8);
      v111 = v51;
      v52 = *(v41 + 32);
      v93 = *(v41 + 24);
      v102 = v52;
      v53 = *(v41 + 48);
      v95 = *(v41 + 40);
      v106 = v53;
      v54 = *(v41 + 64);
      v91 = *(v41 + 56);
      v104 = v54;
      v90 = *(v41 + 72);
      v55 = *v41;
      v56 = BrowseDisplayStyle.rawValue.getter(*v42);
      v58 = v57;
      if (v56 == BrowseDisplayStyle.rawValue.getter(v55) && v58 == v59)
      {

        goto LABEL_25;
      }

      v63 = sub_24B517EEC();

      if ((v63 & 1) == 0)
      {
        v36 = 0;
        v10 = v50;
        v21 = v97;
        goto LABEL_12;
      }

LABEL_25:
      v10 = v50;
      if (v105)
      {
        v35 = v49;
        if (v111 && (v43 == v98 && v105 == v111 || (sub_24B517EEC() & 1) != 0))
        {
LABEL_30:
          if (v35)
          {
            if (!v102 || (v45 != v93 || v35 != v102) && (sub_24B517EEC() & 1) == 0)
            {
LABEL_49:
              v36 = 0;
              v21 = v97;
              goto LABEL_12;
            }
          }

          else if (v102)
          {
            goto LABEL_49;
          }

          if ((v46 != v95 || v47 != v106) && (sub_24B517EEC() & 1) == 0)
          {
            goto LABEL_49;
          }

          v21 = v97;
          if (v94 == v91 && v107 == v104 || (sub_24B517EEC() & 1) != 0)
          {
            if (v92 <= 3)
            {
              v67 = 0x7974696C61646F6DLL;
              if (v92 != 2)
              {
                v67 = 0x7473696C79616C70;
              }

              v68 = 0xEF73647261632D6CLL;
              if (v92)
              {
                v68 = 0xEF736D6574692D6CLL;
              }

              if (v92 <= 1)
              {
                v65 = 0x6169726F74696465;
              }

              else
              {
                v65 = v67;
              }

              if (v92 <= 1)
              {
                v66 = v68;
              }

              else
              {
                v66 = 0xE800000000000000;
              }

              v64 = v90;
            }

            else
            {
              v64 = v90;
              if (v92 <= 5)
              {
                if (v92 == 4)
                {
                  v65 = 0x6D6172676F7270;
                }

                else
                {
                  v65 = 0x2D72656E69617274;
                }

                if (v92 == 4)
                {
                  v66 = 0xE700000000000000;
                }

                else
                {
                  v66 = 0xEC00000073706974;
                }
              }

              else if (v92 == 6)
              {
                v66 = 0xE700000000000000;
                v65 = 0x72656E69617274;
              }

              else if (v92 == 7)
              {
                v65 = 0x65486C6C65737075;
                v66 = 0xEC00000072656461;
              }

              else
              {
                v66 = 0xE700000000000000;
                v65 = 0x74756F6B726F77;
              }
            }

            if (v64 <= 3)
            {
              v75 = 0x7974696C61646F6DLL;
              if (v64 != 2)
              {
                v75 = 0x7473696C79616C70;
              }

              v76 = 0xEF73647261632D6CLL;
              if (v64)
              {
                v76 = 0xEF736D6574692D6CLL;
              }

              if (v64 <= 1)
              {
                v73 = 0x6169726F74696465;
              }

              else
              {
                v73 = v75;
              }

              if (v64 <= 1)
              {
                v74 = v76;
              }

              else
              {
                v74 = 0xE800000000000000;
              }
            }

            else
            {
              v69 = 0x65486C6C65737075;
              if (v64 != 7)
              {
                v69 = 0x74756F6B726F77;
              }

              v70 = 0xE700000000000000;
              v71 = 0xEC00000072656461;
              if (v64 != 7)
              {
                v71 = 0xE700000000000000;
              }

              if (v64 == 6)
              {
                v69 = 0x72656E69617274;
                v71 = 0xE700000000000000;
              }

              v72 = 0x6D6172676F7270;
              if (v64 != 4)
              {
                v72 = 0x2D72656E69617274;
                v70 = 0xEC00000073706974;
              }

              if (v64 <= 5)
              {
                v73 = v72;
              }

              else
              {
                v73 = v69;
              }

              if (v64 <= 5)
              {
                v74 = v70;
              }

              else
              {
                v74 = v71;
              }
            }

            if (v65 == v73 && v66 == v74)
            {
              v36 = 1;
            }

            else
            {
              v36 = sub_24B517EEC();
            }

            v21 = v97;
          }

          else
          {
            v36 = 0;
          }

LABEL_12:
          sub_24B48511C(v115, type metadata accessor for BrowseLazyItem);
          sub_24B48511C(v21, type metadata accessor for BrowseLazyItem);

          if ((v36 & 1) == 0)
          {
            goto LABEL_111;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v35 = v49;
        if (!v111)
        {
          goto LABEL_30;
        }
      }

      v36 = 0;
      v21 = v97;
      goto LABEL_12;
    }

    v60 = v101;
    sub_24B485050(v10, v101, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24B48511C(v115, type metadata accessor for BrowseLazyItem);
      sub_24B48511C(v21, type metadata accessor for BrowseLazyItem);
      v80 = type metadata accessor for BrowseItem;
      v79 = v60;
      goto LABEL_114;
    }

    v61 = v99;
    sub_24B4850B8(v41, v99);
    v62 = static BrowseItem.== infix(_:_:)(v60, v61);
    sub_24B48511C(v61, type metadata accessor for BrowseItem);
    sub_24B48511C(v115, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v21, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v60, type metadata accessor for BrowseItem);
    if (!v62)
    {
LABEL_111:
      sub_24B48511C(v10, type metadata accessor for BrowseLazyItem);
LABEL_115:

      return 0;
    }

LABEL_13:
    ++v33;
    result = sub_24B48511C(v10, type metadata accessor for BrowseLazyItem);
    if (v103 == v33)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

uint64_t sub_24B483BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v9 = &v39 - v8;
  v46 = type metadata accessor for BrowseLazyItem();
  v10 = *(*(v46 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v41 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v40 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v43 = *(v18 + 72);
  v44 = &v39 - v19;
  while (1)
  {
    sub_24B485050(v23, v20, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v24, v17, type metadata accessor for BrowseLazyItem);
    v25 = &v9[*(v45 + 48)];
    sub_24B485050(v20, v9, type metadata accessor for BrowseLazyItem);
    sub_24B485050(v17, v25, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v36 = v40;
    sub_24B485050(v9, v40, type metadata accessor for BrowseLazyItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24B48511C(v36, type metadata accessor for BrowseItem);
      goto LABEL_16;
    }

    v37 = v39;
    sub_24B4850B8(v25, v39);
    v42 = _s15FitnessBrowsing10BrowseItemV2eeoiySbAC_ACtFZ_0(v36, v37);
    sub_24B48511C(v37, type metadata accessor for BrowseItem);
    sub_24B48511C(v36, type metadata accessor for BrowseItem);
    sub_24B48511C(v9, type metadata accessor for BrowseLazyItem);
    v20 = v44;
    if (!v42)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_24B48511C(v17, type metadata accessor for BrowseLazyItem);
    sub_24B48511C(v20, type metadata accessor for BrowseLazyItem);
    v24 += v43;
    v23 += v43;
    if (!--v21)
    {
      return 1;
    }
  }

  v26 = v41;
  sub_24B485050(v9, v41, type metadata accessor for BrowseLazyItem);
  v27 = v26[3];
  v54[2] = v26[2];
  v55[0] = v27;
  *(v55 + 9) = *(v26 + 57);
  v28 = v26[1];
  v54[0] = *v26;
  v54[1] = v28;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *(v25 + 1);
    v30 = *(v25 + 3);
    v52 = *(v25 + 2);
    v53[0] = v30;
    *(v53 + 9) = *(v25 + 57);
    v31 = *(v25 + 1);
    v51[0] = *v25;
    v51[1] = v31;
    v32 = v26[3];
    v49[2] = v26[2];
    v50[0] = v32;
    *(v50 + 9) = *(v26 + 57);
    v33 = v26[1];
    v49[0] = *v26;
    v49[1] = v33;
    v34 = *(v25 + 3);
    v47[2] = v52;
    v48[0] = v34;
    *(v48 + 9) = *(v25 + 57);
    v47[0] = v51[0];
    v47[1] = v29;
    v35 = _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(v49, v47);
    sub_24B4851E4(v51);
    sub_24B4851E4(v54);
    sub_24B48511C(v9, type metadata accessor for BrowseLazyItem);
    v20 = v44;
    if ((v35 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_24B4851E4(v54);
LABEL_16:
  v20 = v44;
  sub_24B48517C(v9);
LABEL_17:
  sub_24B48511C(v17, type metadata accessor for BrowseLazyItem);
  sub_24B48511C(v20, type metadata accessor for BrowseLazyItem);
  return 0;
}

uint64_t sub_24B48407C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B4840D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseSectionDescriptor();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
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
        sub_24B485050(v14, v11, type metadata accessor for BrowseSectionDescriptor);
        sub_24B485050(v15, v8, type metadata accessor for BrowseSectionDescriptor);
        v17 = static BrowseSectionDescriptor.== infix(_:_:)(v11, v8);
        sub_24B48511C(v8, type metadata accessor for BrowseSectionDescriptor);
        sub_24B48511C(v11, type metadata accessor for BrowseSectionDescriptor);
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

uint64_t BrowseEditorialGroup.hash(into:)(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_24B4844E8(a1, v2);

  return sub_24B517B3C();
}

uint64_t BrowseEditorialGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24B517F7C();
  sub_24B4844E8(v5, v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B484344()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24B517F7C();
  sub_24B4844E8(v5, v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4843A8(__int128 *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_24B4844E8(a1, v2);

  return sub_24B517B3C();
}

uint64_t sub_24B4843F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24B517F7C();
  sub_24B4844E8(v5, v1);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B484458(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_24B483BA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B517EEC();
}

uint64_t sub_24B4844E8(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x24C241D70](v15);
  if (v15)
  {
    v17 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    v28[0] = v18;
    v28[1] = v7;
    do
    {
      sub_24B485050(v17, v14, type metadata accessor for BrowseLazyItem);
      sub_24B485050(v14, v12, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *(v12 + 2);
        v21 = *(v12 + 3);
        v22 = *(v12 + 4);
        v30 = *(v12 + 1);
        v31 = v21;
        v23 = *(v12 + 5);
        v34 = *(v12 + 6);
        v25 = *(v12 + 7);
        v24 = *(v12 + 8);
        v32 = v23;
        v33 = v25;
        v36 = v24;
        v26 = v12[72];
        v27 = *v12;
        MEMORY[0x24C241D70](1);
        BrowseDisplayStyle.rawValue.getter(v27);
        sub_24B517B3C();

        v35 = v20;
        sub_24B517F9C();
        if (v20)
        {
          sub_24B517B3C();
        }

        v18 = v28[0];
        sub_24B517F9C();
        if (v22)
        {
          sub_24B517B3C();
        }

        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();
      }

      else
      {
        v19 = v29;
        sub_24B4850B8(v12, v29);
        MEMORY[0x24C241D70](0);
        BrowseItem.hash(into:)(a1);
        sub_24B48511C(v19, type metadata accessor for BrowseItem);
      }

      result = sub_24B48511C(v14, type metadata accessor for BrowseLazyItem);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

unint64_t sub_24B484940()
{
  result = qword_27EFFBDE0;
  if (!qword_27EFFBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDE0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B4849A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B4849F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B484A58()
{
  result = qword_27EFFBDE8;
  if (!qword_27EFFBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDE8);
  }

  return result;
}

unint64_t sub_24B484AB0()
{
  result = qword_27EFFBDF0;
  if (!qword_27EFFBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDF0);
  }

  return result;
}

unint64_t sub_24B484B08()
{
  result = qword_27EFFBDF8;
  if (!qword_27EFFBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBDF8);
  }

  return result;
}

uint64_t sub_24B484B5C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = *(a2 + 16);
  result = MEMORY[0x24C241D70](v14);
  v36 = v14;
  if (v14)
  {
    v16 = 0;
    v35 = a2 + 32;
    v41 = v13;
    while (1)
    {
      v40 = v16;
      v17 = (v35 + 24 * v16);
      v18 = *v17;
      v37 = v17[1];
      v19 = v17[2];
      v20 = *(v18 + 16);
      MEMORY[0x24C241D70](v20);
      v38 = v19;
      v39 = v18;
      if (v20)
      {
        break;
      }

LABEL_4:
      v16 = v40 + 1;
      sub_24B517B3C();

      if (v16 == v36)
      {
        return result;
      }
    }

    v21 = v34;
    v22 = v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80));

    v23 = *(v21 + 72);
    v43 = v23;
    while (1)
    {
      sub_24B485050(v22, v13, type metadata accessor for BrowseLazyItem);
      sub_24B485050(v13, v11, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v24 = v42;
      sub_24B4850B8(v11, v42);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B48511C(v24, type metadata accessor for BrowseItem);
LABEL_8:
      sub_24B48511C(v13, type metadata accessor for BrowseLazyItem);
      v22 += v23;
      if (!--v20)
      {
        goto LABEL_4;
      }
    }

    v25 = *(v11 + 2);
    v26 = *(v11 + 3);
    v27 = *(v11 + 4);
    v44 = *(v11 + 1);
    v45 = v26;
    v28 = *(v11 + 6);
    v30 = *(v11 + 7);
    v29 = *(v11 + 8);
    v46 = *(v11 + 5);
    v47 = v30;
    v49 = v29;
    v50 = v28;
    v31 = v11[72];
    v32 = *v11;
    MEMORY[0x24C241D70](1);
    BrowseDisplayStyle.rawValue.getter(v32);
    sub_24B517B3C();

    v48 = v25;
    if (v25)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      v13 = v41;
      if (v27)
      {
LABEL_12:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_15:
        v23 = v43;
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        goto LABEL_8;
      }
    }

    else
    {
      sub_24B517F9C();
      v13 = v41;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    sub_24B517F9C();
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_24B485050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4850B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B48511C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B48517C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B485248(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C676E69646E6570;
    v6 = 0x50676E69646E6570;
    if (a1 != 2)
    {
      v6 = 0x676E6973756170;
    }

    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64656C696166;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0x696C6C65636E6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646573756170;
    if (a1 != 4)
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B485380(uint64_t a1)
{
  v2 = sub_24B4861BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4853BC(uint64_t a1)
{
  v2 = sub_24B4861BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B486580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B485434(uint64_t a1)
{
  v2 = sub_24B486168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485470(uint64_t a1)
{
  v2 = sub_24B486168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4854AC(uint64_t a1)
{
  v2 = sub_24B4862B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4854E8(uint64_t a1)
{
  v2 = sub_24B4862B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485524(uint64_t a1)
{
  v2 = sub_24B486264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485560(uint64_t a1)
{
  v2 = sub_24B486264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48559C(uint64_t a1)
{
  v2 = sub_24B486408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4855D8(uint64_t a1)
{
  v2 = sub_24B486408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485614(uint64_t a1)
{
  v2 = sub_24B48630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485650(uint64_t a1)
{
  v2 = sub_24B48630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48568C(uint64_t a1)
{
  v2 = sub_24B486360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4856C8(uint64_t a1)
{
  v2 = sub_24B486360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B485704(uint64_t a1)
{
  v2 = sub_24B486210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485740(uint64_t a1)
{
  v2 = sub_24B486210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48577C(uint64_t a1)
{
  v2 = sub_24B48645C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4857B8(uint64_t a1)
{
  v2 = sub_24B48645C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4857F4(uint64_t a1)
{
  v2 = sub_24B4863B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B485830(uint64_t a1)
{
  v2 = sub_24B4863B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemAssetLoadStatus.encode(to:)(void *a1, int a2)
{
  LODWORD(v79) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE08, &qword_24B518860);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v70 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE10, &qword_24B518868);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE18, &qword_24B518870);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE20, &qword_24B518878);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE28, &qword_24B518880);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v55 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE30, &qword_24B518888);
  v78 = *(v57 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v57);
  v77 = &v55 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE38, &qword_24B518890);
  v76 = *(v56 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v56);
  v75 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE40, &qword_24B518898);
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE48, &qword_24B5188A0);
  v73 = *(v24 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE50, &qword_24B5188A8);
  v28 = *(v81 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v81);
  v31 = &v55 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B486168();
  v80 = v31;
  sub_24B517FDC();
  v33 = (v28 + 8);
  v34 = v79;
  if (v79 <= 3u)
  {
    v72 = v24;
    v79 = v33;
    v41 = v73;
    v40 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
    v45 = v78;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v84 = 2;
        sub_24B4863B4();
        v49 = v42;
        v51 = v80;
        v50 = v81;
        sub_24B517E3C();
        (*(v43 + 8))(v49, v56);
      }

      else
      {
        v85 = 3;
        sub_24B486360();
        v53 = v44;
        v51 = v80;
        v50 = v81;
        sub_24B517E3C();
        (*(v45 + 8))(v53, v57);
      }
    }

    else
    {
      if (!v34)
      {
        v82 = 0;
        sub_24B48645C();
        v46 = v80;
        v47 = v81;
        sub_24B517E3C();
        (*(v41 + 8))(v27, v72);
        return (*v79)(v46, v47);
      }

      v83 = 1;
      sub_24B486408();
      v51 = v80;
      v50 = v81;
      sub_24B517E3C();
      (*(v40 + 8))(v23, v20);
    }

    return (*v79)(v51, v50);
  }

  else
  {
    if (v79 <= 5u)
    {
      if (v79 == 4)
      {
        v86 = 4;
        sub_24B48630C();
        v52 = v58;
        v36 = v80;
        v37 = v81;
        sub_24B517E3C();
        (*(v59 + 8))(v52, v60);
      }

      else
      {
        v87 = 5;
        sub_24B4862B8();
        v54 = v61;
        v36 = v80;
        v37 = v81;
        sub_24B517E3C();
        (*(v62 + 8))(v54, v63);
      }
    }

    else
    {
      if (v79 == 6)
      {
        v88 = 6;
        sub_24B486264();
        v35 = v64;
        v36 = v80;
        v37 = v81;
        sub_24B517E3C();
        v39 = v65;
        v38 = v66;
      }

      else if (v79 == 7)
      {
        v89 = 7;
        sub_24B486210();
        v35 = v67;
        v36 = v80;
        v37 = v81;
        sub_24B517E3C();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        v90 = 8;
        sub_24B4861BC();
        v35 = v70;
        v36 = v80;
        v37 = v81;
        sub_24B517E3C();
        v39 = v71;
        v38 = v72;
      }

      (*(v39 + 8))(v35, v38);
    }

    return (*v33)(v36, v37);
  }
}

unint64_t sub_24B486168()
{
  result = qword_27EFFBE58;
  if (!qword_27EFFBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE58);
  }

  return result;
}

unint64_t sub_24B4861BC()
{
  result = qword_27EFFBE60;
  if (!qword_27EFFBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE60);
  }

  return result;
}

unint64_t sub_24B486210()
{
  result = qword_27EFFBE68;
  if (!qword_27EFFBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE68);
  }

  return result;
}

unint64_t sub_24B486264()
{
  result = qword_27EFFBE70;
  if (!qword_27EFFBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE70);
  }

  return result;
}

unint64_t sub_24B4862B8()
{
  result = qword_27EFFBE78;
  if (!qword_27EFFBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE78);
  }

  return result;
}

unint64_t sub_24B48630C()
{
  result = qword_27EFFBE80;
  if (!qword_27EFFBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE80);
  }

  return result;
}

unint64_t sub_24B486360()
{
  result = qword_27EFFBE88;
  if (!qword_27EFFBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE88);
  }

  return result;
}

unint64_t sub_24B4863B4()
{
  result = qword_27EFFBE90;
  if (!qword_27EFFBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE90);
  }

  return result;
}

unint64_t sub_24B486408()
{
  result = qword_27EFFBE98;
  if (!qword_27EFFBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBE98);
  }

  return result;
}

unint64_t sub_24B48645C()
{
  result = qword_27EFFBEA0;
  if (!qword_27EFFBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEA0);
  }

  return result;
}

char *sub_24B4864C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B486878(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t BrowseItemAssetLoadStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B486580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C676E69646E6570 && a2 == 0xEB0000000064616FLL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEC00000065737561 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6973756170 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B5274B0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C6C65636E6163 && a2 == 0xEA0000000000676ELL)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

char *sub_24B486878(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF58, &qword_24B519160);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF60, &qword_24B519168);
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF68, &qword_24B519170);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF70, &qword_24B519178);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v59 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF78, &qword_24B519180);
  v70 = *(v69 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v84 = &v59 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF80, &qword_24B519188);
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v83 = &v59 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF88, &qword_24B519190);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v79 = &v59 - v19;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF90, &qword_24B519198);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBF98, &qword_24B5191A0);
  v62 = *(v23 - 8);
  v24 = *(v62 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA0, &qword_24B5191A8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_24B486168();
  v34 = v87;
  sub_24B517FCC();
  if (!v34)
  {
    v60 = v26;
    v59 = v23;
    v35 = v22;
    v36 = v83;
    v37 = v84;
    v38 = v85;
    v87 = v28;
    v61 = v31;
    v39 = sub_24B517E1C();
    v40 = (2 * *(v39 + 16)) | 1;
    v88 = v39;
    v89 = v39 + 32;
    v90 = 0;
    v91 = v40;
    v41 = sub_24B4A25C8();
    if (v41 != 9 && v90 == v91 >> 1)
    {
      v31 = v41;
      if (v41 <= 3u)
      {
        v42 = v61;
        if (v41 > 1u)
        {
          if (v41 == 2)
          {
            v92 = 2;
            sub_24B4863B4();
            v57 = v79;
            sub_24B517D7C();
            (*(v65 + 8))(v57, v66);
          }

          else
          {
            v92 = 3;
            sub_24B486360();
            sub_24B517D7C();
            (*(v67 + 8))(v36, v68);
          }

          (*(v87 + 8))(v42, v27);
          goto LABEL_29;
        }

        v43 = v87;
        if (v41)
        {
          v92 = 1;
          sub_24B486408();
          sub_24B517D7C();
          v54 = *(v63 + 8);
          v55 = v35;
          v56 = &v93;
        }

        else
        {
          v92 = 0;
          sub_24B48645C();
          v53 = v60;
          sub_24B517D7C();
          v54 = *(v62 + 8);
          v55 = v53;
          v56 = &v91;
        }
      }

      else
      {
        v42 = v61;
        if (v41 > 5u)
        {
          v43 = v87;
          if (v41 == 6)
          {
            v92 = 6;
            sub_24B486264();
            v44 = v80;
            sub_24B517D7C();
            v46 = v73;
            v45 = v74;
          }

          else
          {
            if (v41 != 7)
            {
              v92 = 8;
              sub_24B4861BC();
              v58 = v82;
              sub_24B517D7C();
              (*(v77 + 8))(v58, v78);
LABEL_28:
              (*(v43 + 8))(v42, v27);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v86);
              return v31;
            }

            v92 = 7;
            sub_24B486210();
            v44 = v81;
            sub_24B517D7C();
            v46 = v75;
            v45 = v76;
          }

          goto LABEL_26;
        }

        v43 = v87;
        if (v41 != 4)
        {
          v92 = 5;
          sub_24B4862B8();
          v44 = v38;
          sub_24B517D7C();
          v46 = v71;
          v45 = v72;
LABEL_26:
          v54 = *(v46 + 8);
          v55 = v44;
          goto LABEL_27;
        }

        v92 = 4;
        sub_24B48630C();
        sub_24B517D7C();
        v54 = *(v70 + 8);
        v55 = v37;
        v56 = &v94;
      }

      v45 = *(v56 - 32);
LABEL_27:
      v54(v55, v45);
      goto LABEL_28;
    }

    v47 = sub_24B517D0C();
    v31 = swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v49 = &type metadata for BrowseItemAssetLoadStatus;
    v51 = v61;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v87 + 8))(v51, v27);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return v31;
}

unint64_t sub_24B487340()
{
  result = qword_27EFFBEA8;
  if (!qword_27EFFBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseItemReferenceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrowseItemReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B487588()
{
  result = qword_27EFFBEB0;
  if (!qword_27EFFBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEB0);
  }

  return result;
}

unint64_t sub_24B4875E0()
{
  result = qword_27EFFBEB8;
  if (!qword_27EFFBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEB8);
  }

  return result;
}

unint64_t sub_24B487638()
{
  result = qword_27EFFBEC0;
  if (!qword_27EFFBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEC0);
  }

  return result;
}

unint64_t sub_24B487690()
{
  result = qword_27EFFBEC8;
  if (!qword_27EFFBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEC8);
  }

  return result;
}

unint64_t sub_24B4876E8()
{
  result = qword_27EFFBED0;
  if (!qword_27EFFBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBED0);
  }

  return result;
}

unint64_t sub_24B487740()
{
  result = qword_27EFFBED8;
  if (!qword_27EFFBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBED8);
  }

  return result;
}

unint64_t sub_24B487798()
{
  result = qword_27EFFBEE0;
  if (!qword_27EFFBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEE0);
  }

  return result;
}

unint64_t sub_24B4877F0()
{
  result = qword_27EFFBEE8;
  if (!qword_27EFFBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEE8);
  }

  return result;
}

unint64_t sub_24B487848()
{
  result = qword_27EFFBEF0;
  if (!qword_27EFFBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEF0);
  }

  return result;
}

unint64_t sub_24B4878A0()
{
  result = qword_27EFFBEF8;
  if (!qword_27EFFBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBEF8);
  }

  return result;
}

unint64_t sub_24B4878F8()
{
  result = qword_27EFFBF00;
  if (!qword_27EFFBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF00);
  }

  return result;
}

unint64_t sub_24B487950()
{
  result = qword_27EFFBF08;
  if (!qword_27EFFBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF08);
  }

  return result;
}

unint64_t sub_24B4879A8()
{
  result = qword_27EFFBF10;
  if (!qword_27EFFBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF10);
  }

  return result;
}

unint64_t sub_24B487A00()
{
  result = qword_27EFFBF18;
  if (!qword_27EFFBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF18);
  }

  return result;
}

unint64_t sub_24B487A58()
{
  result = qword_27EFFBF20;
  if (!qword_27EFFBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF20);
  }

  return result;
}

unint64_t sub_24B487AB0()
{
  result = qword_27EFFBF28;
  if (!qword_27EFFBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF28);
  }

  return result;
}

unint64_t sub_24B487B08()
{
  result = qword_27EFFBF30;
  if (!qword_27EFFBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF30);
  }

  return result;
}

unint64_t sub_24B487B60()
{
  result = qword_27EFFBF38;
  if (!qword_27EFFBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF38);
  }

  return result;
}

unint64_t sub_24B487BB8()
{
  result = qword_27EFFBF40;
  if (!qword_27EFFBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF40);
  }

  return result;
}

unint64_t sub_24B487C10()
{
  result = qword_27EFFBF48;
  if (!qword_27EFFBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF48);
  }

  return result;
}

unint64_t sub_24B487C68()
{
  result = qword_27EFFBF50;
  if (!qword_27EFFBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBF50);
  }

  return result;
}

uint64_t NewAndFeaturedSectionMetrics.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NewAndFeaturedSectionMetrics.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NewAndFeaturedSectionMetrics.targetType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_24B487DA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24B4A054C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24B517EEC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B487F44()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7954746567726174;
  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_24B487FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B489350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B488024(uint64_t a1)
{
  v2 = sub_24B488EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B488060(uint64_t a1)
{
  v2 = sub_24B488EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedSectionMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFB0, &qword_24B5191C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21[6] = v1[3];
  v21[7] = v10;
  v11 = v1[4];
  v21[4] = v1[5];
  v21[5] = v11;
  v12 = v1[6];
  v21[1] = v1[7];
  v13 = v1[9];
  v21[2] = v1[8];
  v21[3] = v12;
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_24B488EB0();
  sub_24B517FDC();
  v27 = 0;
  v19 = v21[8];
  sub_24B517E7C();
  if (!v19)
  {
    v26 = 1;
    sub_24B517EAC();
    v25 = 2;
    sub_24B517E7C();
    v24 = 3;
    sub_24B517E7C();
    v23 = 4;
    sub_24B517E7C();
    v21[9] = v13;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFC0, &qword_24B5191C8);
    sub_24B488F04(&qword_27EFFBFC8);
    sub_24B517EBC();
  }

  return (*(v4 + 8))(v7, v18);
}

uint64_t NewAndFeaturedSectionMetrics.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  sub_24B517B3C();
  MEMORY[0x24C241D70](v5);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v12);
}

uint64_t NewAndFeaturedSectionMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v12, v11);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedSectionMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFD0, &qword_24B5191D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B488EB0();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_24B517DCC();
  v13 = v12;
  LOBYTE(v38[0]) = 1;
  v32 = sub_24B517DFC();
  LOBYTE(v38[0]) = 2;
  v29 = sub_24B517DCC();
  v31 = v14;
  LOBYTE(v38[0]) = 3;
  v15 = sub_24B517DCC();
  v30 = v16;
  v26 = v15;
  LOBYTE(v38[0]) = 4;
  v28 = 0;
  v25 = sub_24B517DCC();
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFC0, &qword_24B5191C8);
  v39 = 5;
  sub_24B488F04(&qword_27EFFBFD8);
  sub_24B517E0C();
  (*(v6 + 8))(v9, v5);
  v28 = v40;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v18 = v32;
  *&v34 = v32;
  *(&v34 + 1) = v29;
  v19 = v31;
  *&v35 = v31;
  *(&v35 + 1) = v26;
  v20 = v30;
  *&v36 = v30;
  *(&v36 + 1) = v25;
  v21 = v27;
  *&v37 = v27;
  *(&v37 + 1) = v40;
  v22 = v36;
  a2[2] = v35;
  a2[3] = v22;
  v23 = v34;
  *a2 = v33;
  a2[1] = v23;
  a2[4] = v37;
  sub_24B488F70(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v13;
  v38[2] = v18;
  v38[3] = v29;
  v38[4] = v19;
  v38[5] = v26;
  v38[6] = v20;
  v38[7] = v25;
  v38[8] = v21;
  v38[9] = v28;
  return sub_24B488FA8(v38);
}

uint64_t sub_24B488970()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v12, v11);
  return sub_24B517FBC();
}

uint64_t sub_24B488A38(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  sub_24B517B3C();
  MEMORY[0x24C241D70](v5);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v12);
}

uint64_t sub_24B488AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v12, v11);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedSectionMetrics.identifierType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_24B488BDC(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_24B517B3C();

    sub_24B517B3C();

    result = sub_24B517FBC();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x24C241D70](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v14 = a1[9];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v17 = a2[7];
  v18 = a1[7];
  v15 = a2[8];
  v16 = a1[8];
  v13 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24B517EEC() & 1) == 0 || v2 != v8 || (v3 != v7 || v4 != v9) && (sub_24B517EEC() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_24B517EEC() & 1) == 0 || (v18 != v17 || v16 != v15) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B487DA0(v14, v13);
}

unint64_t sub_24B488EB0()
{
  result = qword_27EFFBFB8;
  if (!qword_27EFFBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFB8);
  }

  return result;
}

uint64_t sub_24B488F04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBFC0, &qword_24B5191C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B488FDC()
{
  result = qword_27EFFBFE0;
  if (!qword_27EFFBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFE0);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24B48904C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24B489094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewAndFeaturedSectionMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewAndFeaturedSectionMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B48924C()
{
  result = qword_27EFFBFE8;
  if (!qword_27EFFBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFE8);
  }

  return result;
}

unint64_t sub_24B4892A4()
{
  result = qword_27EFFBFF0;
  if (!qword_27EFFBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFF0);
  }

  return result;
}

unint64_t sub_24B4892FC()
{
  result = qword_27EFFBFF8;
  if (!qword_27EFFBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFBFF8);
  }

  return result;
}

uint64_t sub_24B489350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id static NSBundle.browse.getter()
{
  type metadata accessor for BrowseBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

unint64_t BrowseFontTextStyle.rawValue.getter(char a1)
{
  result = 0x746954656772616CLL;
  switch(a1)
  {
    case 1:
      result = 0x72614C6172747865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x31656C746974;
      break;
    case 4:
      result = 0x32656C746974;
      break;
    case 5:
      result = 0x33656C746974;
      break;
    case 6:
      result = 0x656E696C64616568;
      break;
    case 7:
      result = 0x6C64616568627573;
      break;
    case 8:
      result = 2036625250;
      break;
    case 9:
      result = 0x74756F6C6C6163;
      break;
    case 10:
      result = 0x65746F6E746F6F66;
      break;
    case 11:
      result = 0x316E6F6974706163;
      break;
    case 12:
      result = 0x326E6F6974706163;
      break;
    case 13:
      result = 0x336E6F6974706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24B489778(char *a1, char *a2)
{
  v2 = *a2;
  v3 = BrowseFontTextStyle.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseFontTextStyle.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

uint64_t sub_24B489800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15FitnessBrowsing19BrowseFontTextStyleO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_24B489830@<X0>(unint64_t *a1@<X8>)
{
  result = BrowseFontTextStyle.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B48991C()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseFontTextStyle.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B489980()
{
  BrowseFontTextStyle.rawValue.getter(*v0);
  sub_24B517B3C();
}

uint64_t sub_24B4899D4()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseFontTextStyle.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing19BrowseFontTextStyleO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B517D6C();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B489A84()
{
  result = qword_27EFFC000;
  if (!qword_27EFFC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC008, &qword_24B5194A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC000);
  }

  return result;
}

unint64_t sub_24B489AEC()
{
  result = qword_27EFFC010;
  if (!qword_27EFFC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrowseFontTextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseFontTextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B489C90()
{
  result = qword_27EFFC018;
  if (!qword_27EFFC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC018);
  }

  return result;
}

uint64_t EditorialCollection.footnote.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EditorialCollection.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t EditorialCollection.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t EditorialCollection.recencyTag.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t EditorialCollection.sharingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditorialCollection() + 36);
  v4 = sub_24B516BAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EditorialCollection.init(features:footnote:identifier:name:recencyTag:sharingURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v12 = *(type metadata accessor for EditorialCollection() + 36);
  v13 = sub_24B516BAC();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a9[v12], a11, v13);
}

uint64_t sub_24B489EBC()
{
  v1 = *v0;
  v2 = 0x7365727574616566;
  v3 = 1701667182;
  v4 = 0x5479636E65636572;
  if (v1 != 4)
  {
    v4 = 0x55676E6972616873;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746F6E746F6F66;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_24B489F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B48B438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B489FA0(uint64_t a1)
{
  v2 = sub_24B48A2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B489FDC(uint64_t a1)
{
  v2 = sub_24B48A2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC020, &qword_24B5195A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48A2F0();
  sub_24B517FDC();
  v22 = *v3;
  v21[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC030, &qword_24B5195A8);
  sub_24B48A8AC(&qword_27EFFC038, sub_24B48A344);
  sub_24B517EBC();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    v21[6] = 1;
    sub_24B517E4C();
    v13 = v3[3];
    v14 = v3[4];
    v21[5] = 2;
    sub_24B517E7C();
    v15 = v3[5];
    v16 = v3[6];
    v21[4] = 3;
    sub_24B517E4C();
    v17 = v3[7];
    v18 = v3[8];
    v21[3] = 4;
    sub_24B517E4C();
    v19 = *(type metadata accessor for EditorialCollection() + 36);
    v21[2] = 5;
    sub_24B516BAC();
    sub_24B48B648(&qword_27EFFC048, MEMORY[0x277CC9260]);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B48A2F0()
{
  result = qword_27EFFC028;
  if (!qword_27EFFC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC028);
  }

  return result;
}

unint64_t sub_24B48A344()
{
  result = qword_27EFFC040;
  if (!qword_27EFFC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC040);
  }

  return result;
}

uint64_t EditorialCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_24B516BAC();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC050, &qword_24B5195B0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for EditorialCollection();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B48A2F0();
  v17 = v34;
  sub_24B517FCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v29 = v6;
  v34 = v3;
  v18 = v32;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC030, &qword_24B5195A8);
  v41 = 0;
  sub_24B48A8AC(&qword_27EFFC058, sub_24B48A924);
  v20 = v33;
  sub_24B517E0C();
  *v14 = v42;
  v40 = 1;
  v21 = v18;
  v14[1] = sub_24B517D9C();
  v14[2] = v22;
  v39 = 2;
  v14[3] = sub_24B517DCC();
  v14[4] = v23;
  v38 = 3;
  v14[5] = sub_24B517D9C();
  v14[6] = v24;
  v37 = 4;
  v14[7] = sub_24B517D9C();
  v14[8] = v25;
  v36 = 5;
  sub_24B48B648(&qword_27EFFC068, MEMORY[0x277CC9260]);
  v26 = v29;
  v27 = v34;
  sub_24B517E0C();
  (*(v21 + 8))(v10, v20);
  (*(v30 + 32))(v19 + *(v11 + 36), v26, v27);
  sub_24B48A978(v19, v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_24B48A9DC(v19);
}

uint64_t sub_24B48A8AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC030, &qword_24B5195A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B48A924()
{
  result = qword_27EFFC060;
  if (!qword_27EFFC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC060);
  }

  return result;
}

uint64_t sub_24B48A978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCollection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B48A9DC(uint64_t a1)
{
  v2 = type metadata accessor for EditorialCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EditorialCollection.hash(into:)(__int128 *a1)
{
  sub_24B48AE1C(a1, *v1);
  if (v1[2])
  {
    v2 = v1[1];
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v3 = v1[3];
  v4 = v1[4];
  sub_24B517B3C();
  if (!v1[6])
  {
    sub_24B517F9C();
    if (v1[8])
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_24B517F9C();
    goto LABEL_9;
  }

  v5 = v1[5];
  sub_24B517F9C();
  sub_24B517B3C();
  if (!v1[8])
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = v1[7];
  sub_24B517F9C();
  sub_24B517B3C();
LABEL_9:
  v7 = *(type metadata accessor for EditorialCollection() + 36);
  sub_24B516BAC();
  sub_24B48B648(&qword_2810EED80, MEMORY[0x277CC9260]);
  return sub_24B517A9C();
}

uint64_t EditorialCollection.hashValue.getter()
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC00()
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC44()
{
  sub_24B517F7C();
  EditorialCollection.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B48AC84(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_24B517FBC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(a2 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    sub_24B517F7C();
    v5 &= v5 - 1;
    sub_24B517B3C();

    result = sub_24B517FBC();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C241D70](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B48AE1C(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_24B517FBC();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24B517F7C();
    MEMORY[0x24C241D70](v12);
    result = sub_24B517FBC();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C241D70](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B48AF48(__int128 *a1, uint64_t a2)
{
  v4 = sub_24B516C6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_24B517FBC();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_24B48B648(&qword_2810EED58, MEMORY[0x277CC9AF8]);
    v22 = sub_24B517A8C();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C241D70](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15FitnessBrowsing19EditorialCollectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24B512FB8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7 || (a1[5] != a2[5] || v6 != v7) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a2[8];
  if (v8)
  {
    if (v9 && (a1[7] == a2[7] && v8 == v9 || (sub_24B517EEC() & 1) != 0))
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_24:
  v10 = *(type metadata accessor for EditorialCollection() + 36);

  return sub_24B516B9C();
}

unint64_t sub_24B48B334()
{
  result = qword_27EFFC078;
  if (!qword_27EFFC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC078);
  }

  return result;
}

unint64_t sub_24B48B38C()
{
  result = qword_27EFFC080;
  if (!qword_27EFFC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC080);
  }

  return result;
}

unint64_t sub_24B48B3E4()
{
  result = qword_27EFFC088;
  if (!qword_27EFFC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC088);
  }

  return result;
}

uint64_t sub_24B48B438(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x55676E6972616873 && a2 == 0xEA00000000004C52)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B48B648(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall NewAndFeaturedLocalState.init(sectionMetrics:)(FitnessBrowsing::NewAndFeaturedLocalState *__return_ptr retstr, FitnessBrowsing::NewAndFeaturedSectionMetrics *sectionMetrics)
{
  v2 = *&sectionMetrics->targetType._object;
  *&retstr->sectionMetrics.name._object = *&sectionMetrics->name._object;
  *&retstr->sectionMetrics.targetType._object = v2;
  *&retstr->sectionMetrics.type._object = *&sectionMetrics->type._object;
  v3 = *&sectionMetrics->index;
  retstr->sectionMetrics.identifier = sectionMetrics->identifier;
  *&retstr->sectionMetrics.index = v3;
}

uint64_t sub_24B48B6B4()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t sub_24B48B6F8()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t sub_24B48B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D6E6F6974636573 && a2 == 0xEE00736369727465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B48B7EC(uint64_t a1)
{
  v2 = sub_24B48BA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48B828(uint64_t a1)
{
  v2 = sub_24B48BA24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC090, &qword_24B5197C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v22 = v1[4];
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B488F70(&v18, &v13);
  sub_24B48BA24();
  sub_24B517FDC();
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  sub_24B48BA78();
  sub_24B517EBC();
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[1] = v14;
  v12[0] = v13;
  sub_24B488FA8(v12);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B48BA24()
{
  result = qword_27EFFC098;
  if (!qword_27EFFC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC098);
  }

  return result;
}

unint64_t sub_24B48BA78()
{
  result = qword_27EFFC0A0;
  if (!qword_27EFFC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0A0);
  }

  return result;
}

uint64_t NewAndFeaturedLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0A8, &qword_24B5197C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48BA24();
  sub_24B517FCC();
  if (!v2)
  {
    sub_24B48BC4C();
    sub_24B517E0C();
    (*(v6 + 8))(v9, v5);
    v11 = v14[3];
    a2[2] = v14[2];
    a2[3] = v11;
    a2[4] = v14[4];
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B48BC4C()
{
  result = qword_27EFFC0B0;
  if (!qword_27EFFC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0B0);
  }

  return result;
}

uint64_t static NewAndFeaturedLocalState.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_24B488F70(v22, v31);
  sub_24B488F70(v26, v31);
  v10 = _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_24B488FA8(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_24B488FA8(v31);
  return v10 & 1;
}

uint64_t NewAndFeaturedLocalState.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  sub_24B517B3C();
  MEMORY[0x24C241D70](v5);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B488BDC(a1, v12);
}

uint64_t NewAndFeaturedLocalState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_24B517F7C();
  sub_24B517B3C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B488BDC(v12, v11);
  return sub_24B517FBC();
}

uint64_t sub_24B48BF34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[3];
  v25 = a1[4];
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v27 = a2[2];
  v28 = v7;
  v8 = a2[3];
  v29 = a2[4];
  v9 = a2[1];
  v26[0] = *a2;
  v26[1] = v9;
  v19 = v23;
  v20 = v4;
  v21 = a1[4];
  v17 = v22[0];
  v18 = v2;
  v14 = v27;
  v15 = v8;
  v16 = a2[4];
  v12 = v26[0];
  v13 = v6;
  sub_24B488F70(v22, v31);
  sub_24B488F70(v26, v31);
  v10 = _s15FitnessBrowsing28NewAndFeaturedSectionMetricsV2eeoiySbAC_ACtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_24B488FA8(v30);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[0] = v17;
  v31[1] = v18;
  sub_24B488FA8(v31);
  return v10 & 1;
}

unint64_t sub_24B48C028()
{
  result = qword_2810EDB20[0];
  if (!qword_2810EDB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDB20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewAndFeaturedLocalState.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NewAndFeaturedLocalState.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24B48C178()
{
  result = qword_27EFFC0B8;
  if (!qword_27EFFC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0B8);
  }

  return result;
}

unint64_t sub_24B48C1D0()
{
  result = qword_27EFFC0C0;
  if (!qword_27EFFC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0C0);
  }

  return result;
}

unint64_t sub_24B48C228()
{
  result = qword_27EFFC0C8;
  if (!qword_27EFFC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0C8);
  }

  return result;
}

uint64_t sub_24B48C28C()
{
  if (*v0)
  {
    result = 0x74756F6B726F77;
  }

  else
  {
    result = 0x697461746964656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_24B48C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B48C3B0(uint64_t a1)
{
  v2 = sub_24B48C7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C3EC(uint64_t a1)
{
  v2 = sub_24B48C7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48C428(uint64_t a1)
{
  v2 = sub_24B48C87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C464(uint64_t a1)
{
  v2 = sub_24B48C87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B48C4A0(uint64_t a1)
{
  v2 = sub_24B48C828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B48C4DC(uint64_t a1)
{
  v2 = sub_24B48C828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaType.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0D0, &qword_24B519A00);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0D8, &qword_24B519A08);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC0E0, &qword_24B519A10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48C7D4();
  sub_24B517FDC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B48C828();
    sub_24B517E3C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B48C87C();
    sub_24B517E3C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B48C7D4()
{
  result = qword_27EFFC0E8;
  if (!qword_27EFFC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0E8);
  }

  return result;
}

unint64_t sub_24B48C828()
{
  result = qword_27EFFC0F0;
  if (!qword_27EFFC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0F0);
  }

  return result;
}

unint64_t sub_24B48C87C()
{
  result = qword_27EFFC0F8;
  if (!qword_27EFFC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC0F8);
  }

  return result;
}

uint64_t sub_24B48C8EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B48C9A8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t MediaType.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B48C9A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC138, &qword_24B519D70);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC140, &qword_24B519D78);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC148, &qword_24B519D80);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B48C7D4();
  v15 = v32;
  sub_24B517FCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B517E1C();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B4A39B0();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B517D0C();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v24 = &type metadata for MediaType;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B48C828();
    sub_24B517D7C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B48C87C();
    sub_24B517D7C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B48CE98()
{
  result = qword_27EFFC100;
  if (!qword_27EFFC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC100);
  }

  return result;
}

unint64_t sub_24B48CEF0()
{
  result = qword_27EFFC108;
  if (!qword_27EFFC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC108);
  }

  return result;
}

unint64_t sub_24B48CF48()
{
  result = qword_27EFFC110;
  if (!qword_27EFFC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC110);
  }

  return result;
}

unint64_t sub_24B48CFA0()
{
  result = qword_27EFFC118;
  if (!qword_27EFFC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC118);
  }

  return result;
}

unint64_t sub_24B48CFF8()
{
  result = qword_27EFFC120;
  if (!qword_27EFFC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC120);
  }

  return result;
}

unint64_t sub_24B48D050()
{
  result = qword_27EFFC128;
  if (!qword_27EFFC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC128);
  }

  return result;
}

unint64_t sub_24B48D0A8()
{
  result = qword_27EFFC130;
  if (!qword_27EFFC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFC130);
  }

  return result;
}

uint64_t sub_24B48D144(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B51722C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B51723C();
}

uint64_t sub_24B48D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B51722C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B51723C();
}

uint64_t sub_24B48D334@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B5176CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B51742C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v15 = 0xD000000000000017;
      v16 = v12;
      v17 = sub_24B5173EC();
      v18 = sub_24B5176FC();
      sub_24B51740C();
      (*(v10 + 104))(v14, *MEMORY[0x277CE0A10], v16);
      sub_24B51743C();

      (*(v10 + 8))(v14, v16);
      v19 = sub_24B5173FC();

      v30 = xmmword_24B519DE0;
      v27 = xmmword_24B519DF0;
      v29 = xmmword_24B519E00;
      v28 = xmmword_24B519E10;
      v20 = "creation.banner.tvos";
      result = sub_24B5176EC();
      v23 = v27;
      v22 = v28;
      v25 = v29;
      v24 = v30;
      v26 = v27;
    }

    else
    {
      v17 = sub_24B5173EC();
      v18 = sub_24B5176FC();
      sub_24B51741C();
      v19 = sub_24B5173FC();

      (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
      result = sub_24B51770C();
      v24 = xmmword_24B519D90;
      v26 = xmmword_24B519DA0;
      v23 = xmmword_24B519DB0;
      v25 = xmmword_24B519DC0;
      v22 = xmmword_24B519DD0;
      v20 = "wsing12BrowseBundle";
      v15 = 0xD000000000000014;
    }
  }

  else
  {
    v15 = 0xD000000000000017;
    v17 = sub_24B5173DC();
    v18 = sub_24B5176FC();
    sub_24B51741C();
    v19 = sub_24B5173FC();

    v30 = xmmword_24B519E20;
    v27 = xmmword_24B519E30;
    v29 = xmmword_24B519E40;
    v28 = xmmword_24B519E50;
    v20 = "creation.banner.regular";
    result = sub_24B5176EC();
    v26 = v27;
    v22 = v28;
    v25 = v29;
    v24 = v30;
    v23 = v28;
  }

  *a2 = v22;
  *(a2 + 16) = v25;
  *(a2 + 32) = v15;
  *(a2 + 40) = v20 | 0x8000000000000000;
  *(a2 + 48) = v23;
  *(a2 + 64) = v26;
  *(a2 + 80) = v24;
  *(a2 + 96) = v17;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
  *(a2 + 120) = result;
  return result;
}

double sub_24B48D6A0()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC380, &unk_24B51A140);
  sub_24B51779C();
  return v2;
}

uint64_t sub_24B48D6F8()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC380, &unk_24B51A140);
  return sub_24B5177AC();
}

uint64_t sub_24B48D750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFC1E8, qword_24B519F68);
  sub_24B496A60(&qword_2810ED730, qword_27EFFC1E8, qword_24B519F68);

  return sub_24B516F7C();
}

uint64_t CreatePlanBannerView.init(store:createWorkoutPlanButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  sub_24B51778C();
  *a4 = v12;
  *(a4 + 8) = v13;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(a4 + 16) = sub_24B48D8D8;
  *(a4 + 24) = v8;
  *(a4 + 32) = 0;
  v9 = *(type metadata accessor for CreatePlanBannerView() + 40);

  a3(v10);
}

uint64_t sub_24B48D8D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24B48D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A0, &qword_24B51A058);
  v5 = *(*(v23 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v23);
  v8 = &v21 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC298, &qword_24B51A050);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v15 = v26;
  if (v26)
  {
    v21 = v25;
    (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = *(a1 + 16);
    v18 = (*(v9 + 32))(v17 + v16, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    MEMORY[0x28223BE20](v18);
    *(&v21 - 2) = v21;
    *(&v21 - 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A8, &qword_24B51A080);
    sub_24B4963C4();
    sub_24B5177CC();

    v19 = v22;
    (*(v22 + 16))(v8, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_24B496A60(&qword_27EFFC290, &qword_27EFFC298, &qword_24B51A050);
    sub_24B51723C();
    return (*(v19 + 8))(v14, v11);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24B496A60(&qword_27EFFC290, &qword_27EFFC298, &qword_24B51A050);
    return sub_24B51723C();
  }
}

uint64_t sub_24B48DCF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B5171AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B51719C();
  sub_24B51718C();
  sub_24B51717C();
  sub_24B51718C();
  sub_24B51774C();
  sub_24B51716C();

  sub_24B51718C();
  sub_24B5171CC();
  v4 = sub_24B5174AC();
  v6 = v5;
  v8 = v7;
  sub_24B5173EC();
  v9 = sub_24B51749C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_24B49627C(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2C0, &qword_24B51A088) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2F0, &qword_24B51A0A0) + 28);
  v19 = *MEMORY[0x277CE0B30];
  v20 = sub_24B51747C();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v21 = sub_24B51771C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC2A8, &qword_24B51A080);
  *(a1 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_24B48DF90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 16);
  v10(v9, v2 + *(v7 + 40), v4);
  v10(a2, v9, v4);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_24B48E090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v5 = *(a1 + 16);
  sub_24B51724C();
  v6 = sub_24B51773C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12];
  v14 = *(a1 + 24);
  v20 = v5;
  v21 = v14;
  v22 = v2;
  v24 = sub_24B4962E0();
  v25 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_24B51772C();
  v23 = WitnessTable;
  swift_getWitnessTable();
  v16 = v7[2];
  v16(v13, v11, v6);
  v17 = v7[1];
  v17(v11, v6);
  v16(a2, v13, v6);
  return (v17)(v13, v6);
}

uint64_t sub_24B48E28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v28 = *(a2 - 8);
  v6 = *(v28 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC158, &qword_24B519E68);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v29 = sub_24B51724C();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v29);
  v18 = &v27 - v17;
  v30 = a3;
  PlanBannerView = type metadata accessor for CreatePlanBannerView();
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v34 > 1u)
  {
    sub_24B48DF90(PlanBannerView, v9);
    v21 = v27;
    v22 = v28;
    v23 = *(v28 + 16);
    v23(v27, v9, a2);
    v24 = *(v22 + 8);
    v24(v9, a2);
    v23(v9, v21, a2);
    sub_24B4962E0();
    v20 = v30;
    sub_24B48D23C(v9, v11, a2);
    v24(v9, a2);
    v24(v21, a2);
  }

  else
  {
    sub_24B48D918(PlanBannerView, v14);
    sub_24B4962E0();
    v20 = v30;
    sub_24B48D144(v14, v11);
    sub_24B49689C(v14, &qword_27EFFC158, &qword_24B519E68);
  }

  v32 = sub_24B4962E0();
  v33 = v20;
  v25 = v29;
  swift_getWitnessTable();
  (*(v15 + 16))(v31, v18, v25);
  return (*(v15 + 8))(v18, v25);
}

uint64_t sub_24B48E600@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a2;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v28 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  v5 = sub_24B51780C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_24B51702C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_24B51721C();
  v18 = a1[2];
  v19 = *(v29 + 24);
  v32 = v28;
  v33 = v19;
  v34 = v30;
  v35 = a1;
  sub_24B5177FC();
  v20 = a1[6];
  v21 = a1[7];
  v22 = a1[8];
  v23 = a1[9];
  WitnessTable = swift_getWitnessTable();
  sub_24B51764C();
  (*(v6 + 8))(v9, v5);
  v36 = WitnessTable;
  v37 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v25 = v11[2];
  v25(v17, v15, v10);
  v26 = v11[1];
  v26(v15, v10);
  v25(v31, v17, v10);
  return (v26)(v17, v10);
}

uint64_t sub_24B48E940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v40 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  v38[1] = sub_24B51792C();
  v38[0] = swift_getWitnessTable();
  v5 = sub_24B51780C();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - v7;
  v9 = sub_24B51702C();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = v38 - v11;
  v51[16] = swift_getWitnessTable();
  v51[17] = MEMORY[0x277CDF918];
  v41 = v9;
  WitnessTable = swift_getWitnessTable();
  v51[0] = v9;
  v51[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  sub_24B51721C();
  v20 = *(a1 + 16);
  v21 = *(a2 + 24);
  v22 = v40;
  v47 = v40;
  v48 = v21;
  v49 = v43;
  v50 = a1;
  sub_24B5177FC();
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  sub_24B51764C();
  (*(v39 + 8))(v8, v5);
  sub_24B51737C();
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v21;
  v28 = *(a1 + 80);
  *(v27 + 96) = *(a1 + 64);
  *(v27 + 112) = v28;
  v29 = *(a1 + 112);
  *(v27 + 128) = *(a1 + 96);
  *(v27 + 144) = v29;
  v30 = *(a1 + 16);
  *(v27 + 32) = *a1;
  *(v27 + 48) = v30;
  v31 = *(a1 + 48);
  *(v27 + 64) = *(a1 + 32);
  *(v27 + 80) = v31;
  PlanBanner = type metadata accessor for CreatePlanBannerView.Layout();
  (*(*(PlanBanner - 8) + 16))(v51, a1, PlanBanner);
  sub_24B5178CC();
  v33 = v41;
  v34 = v46;
  sub_24B51760C();

  (*(v44 + 8))(v34, v33);
  v35 = v13[2];
  v35(v19, v17, OpaqueTypeMetadata2);
  v36 = v13[1];
  v36(v17, OpaqueTypeMetadata2);
  v35(v45, v19, OpaqueTypeMetadata2);
  return (v36)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_24B48EE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v60 = a3;
  v55 = a1;
  v63 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  WitnessTable = sub_24B51724C();
  v62 = sub_24B51773C();
  v67 = *(v62 - 8);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v51 - v8;
  PlanBannerView = type metadata accessor for CreatePlanBannerView();
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v72 = v76;
  v73 = v77;
  sub_24B496228();
  v9 = sub_24B5174BC();
  v11 = v10;
  v13 = v12;
  v14 = a2;
  v15 = *(a2 + 112);
  v16 = sub_24B51749C();
  v18 = v17;
  v20 = v19;
  sub_24B49627C(v9, v11, v13 & 1);

  v82 = *(a2 + 120);
  v76 = v82;

  v57 = sub_24B51748C();
  v56 = v21;
  v58 = v22;
  v59 = v23;
  sub_24B49627C(v16, v18, v20 & 1);

  sub_24B49628C(&v82);
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v72 = v76;
  v73 = v77;
  v24 = sub_24B5174BC();
  v26 = v25;
  v28 = v27;
  v29 = *(v14 + 96);
  v30 = sub_24B51749C();
  v32 = v31;
  v34 = v33;
  sub_24B49627C(v24, v26, v28 & 1);

  v81 = *(v14 + 104);
  v76 = v81;

  v35 = sub_24B51748C();
  v52 = v36;
  v53 = v37;
  v54 = v38;
  sub_24B49627C(v30, v32, v34 & 1);

  sub_24B49628C(&v81);
  v39 = v65;
  sub_24B48E090(PlanBannerView, v65);
  v80[4] = sub_24B4962E0();
  v80[5] = v60;
  v80[3] = swift_getWitnessTable();
  v40 = v62;
  WitnessTable = swift_getWitnessTable();
  v41 = v67;
  v60 = *(v67 + 16);
  v42 = v66;
  v60(v66, v39, v40);
  v43 = *(v41 + 8);
  v67 = v41 + 8;
  PlanBannerView = v43;
  v43(v39, v40);
  v44 = v57;
  v45 = v56;
  v76 = v57;
  v77 = v56;
  LODWORD(v55) = v58 & 1;
  v78 = v58 & 1;
  v46 = v52;
  v72 = v35;
  v73 = v52;
  v58 = v53 & 1;
  v74 = v53 & 1;
  v75 = v54;
  v79 = v59;
  v80[0] = &v76;
  v80[1] = &v72;
  v60(v39, v42, v40);
  v80[2] = v39;
  LOBYTE(v39) = v55;
  sub_24B496398(v44, v45, v55);

  v47 = v46;
  v48 = v46;
  LOBYTE(v46) = v58;
  sub_24B496398(v35, v48, v58);

  v71[0] = MEMORY[0x277CE0BD8];
  v71[1] = MEMORY[0x277CE0BD8];
  v71[2] = v40;
  v68 = MEMORY[0x277CE0BC8];
  v69 = MEMORY[0x277CE0BC8];
  v70 = WitnessTable;
  sub_24B4F5C48(v80, 3uLL, v71);
  sub_24B49627C(v35, v47, v46);

  sub_24B49627C(v44, v45, v39);

  v49 = PlanBannerView;
  PlanBannerView(v66, v40);
  v49(v65, v40);
  sub_24B49627C(v72, v73, v74);

  sub_24B49627C(v76, v77, v78);
}

uint64_t sub_24B48F4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v39 = *(a2 + 16);
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  v37[1] = sub_24B51792C();
  v37[0] = swift_getWitnessTable();
  v5 = sub_24B51780C();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - v7;
  v9 = sub_24B51702C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = v37 - v11;
  v50[16] = swift_getWitnessTable();
  v50[17] = MEMORY[0x277CDF918];
  v40 = v9;
  WitnessTable = swift_getWitnessTable();
  v50[0] = v9;
  v50[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  sub_24B51721C();
  v20 = *(a2 + 24);
  v21 = v39;
  v46 = v39;
  v47 = v20;
  v48 = v42;
  v49 = a1;
  sub_24B5177FC();
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  sub_24B51764C();
  (*(v38 + 8))(v8, v5);
  sub_24B51737C();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = v20;
  v27 = *(a1 + 80);
  *(v26 + 96) = *(a1 + 64);
  *(v26 + 112) = v27;
  v28 = *(a1 + 112);
  *(v26 + 128) = *(a1 + 96);
  *(v26 + 144) = v28;
  v29 = *(a1 + 16);
  *(v26 + 32) = *a1;
  *(v26 + 48) = v29;
  v30 = *(a1 + 48);
  *(v26 + 64) = *(a1 + 32);
  *(v26 + 80) = v30;
  PlanBanner = type metadata accessor for CreatePlanBannerView.Layout();
  (*(*(PlanBanner - 8) + 16))(v50, a1, PlanBanner);
  sub_24B5178CC();
  v32 = v40;
  v33 = v45;
  sub_24B51760C();

  (*(v43 + 8))(v33, v32);
  v34 = v13[2];
  v34(v19, v17, OpaqueTypeMetadata2);
  v35 = v13[1];
  v35(v17, OpaqueTypeMetadata2);
  v34(v44, v19, OpaqueTypeMetadata2);
  return (v35)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_24B48FA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v36 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v29 = a3;
  v33 = sub_24B51724C();
  v8 = sub_24B51773C();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v31 = &v27 - v10;
  v11 = sub_24B51702C();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = &v27 - v16;
  v28 = sub_24B51721C();
  v67 = 0;
  sub_24B49002C(a2, &v59);
  v74 = v63;
  v75[0] = v64[0];
  *(v75 + 9) = *(v64 + 9);
  v70 = v59;
  v71 = v60;
  v73 = v62;
  v72 = v61;
  v76[0] = v59;
  v76[1] = v60;
  v76[2] = v61;
  v76[3] = v62;
  v76[4] = v63;
  v77[0] = v64[0];
  *(v77 + 9) = *(v64 + 9);
  sub_24B496724(&v70, &v57, &qword_27EFFC308, &qword_24B51A110);
  sub_24B49689C(v76, &qword_27EFFC308, &qword_24B51A110);
  *(&v66[3] + 7) = v73;
  *(&v66[4] + 7) = v74;
  *(&v66[5] + 7) = v75[0];
  v66[6] = *(v75 + 9);
  *(v66 + 7) = v70;
  *(&v66[1] + 7) = v71;
  *(&v66[2] + 7) = v72;
  v17 = v67;
  sub_24B5178CC();
  sub_24B51707C();
  *(&v68[6] + 7) = *&v68[21];
  *(&v68[8] + 7) = *&v68[23];
  *(&v68[10] + 7) = *&v68[25];
  *(&v68[12] + 7) = v69;
  *(v68 + 7) = *&v68[15];
  *(&v68[2] + 7) = *&v68[17];
  *(&v68[4] + 7) = *&v68[19];
  *&v57 = v28;
  *(&v57 + 1) = 0x4024000000000000;
  v58[0] = v17;
  *&v58[49] = v66[3];
  *&v58[65] = v66[4];
  *&v58[81] = v66[5];
  *&v58[97] = v66[6];
  *&v58[1] = v66[0];
  *&v58[17] = v66[1];
  *&v58[33] = v66[2];
  *&v58[161] = *&v68[6];
  *&v58[145] = *&v68[4];
  *&v58[129] = *&v68[2];
  *&v58[113] = *v68;
  *&v58[224] = *(&v69 + 1);
  *&v58[209] = *&v68[12];
  *&v58[193] = *&v68[10];
  *&v58[177] = *&v68[8];
  PlanBannerView = type metadata accessor for CreatePlanBannerView();
  v19 = v31;
  sub_24B48E090(PlanBannerView, v31);
  sub_24B5178CC();
  v56[5] = sub_24B4962E0();
  v56[6] = a4;
  v56[4] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_24B51762C();
  (*(v35 + 8))(v19, v8);
  v56[2] = WitnessTable;
  v56[3] = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v34;
  v23(v34, v15, v11);
  v25 = *(v22 + 8);
  v25(v15, v11);
  v52 = *&v58[176];
  v53 = *&v58[192];
  v54 = *&v58[208];
  v55 = *&v58[224];
  v48 = *&v58[112];
  v49 = *&v58[128];
  v50 = *&v58[144];
  v51 = *&v58[160];
  v44 = *&v58[48];
  v45 = *&v58[64];
  v46 = *&v58[80];
  v47 = *&v58[96];
  v40 = v57;
  v41 = *v58;
  v42 = *&v58[16];
  v43 = *&v58[32];
  v56[0] = &v40;
  v23(v15, v24, v11);
  v56[1] = v15;
  sub_24B496724(&v57, &v59, &qword_27EFFC160, &qword_24B519E70);
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC160, &qword_24B519E70);
  v39[1] = v11;
  v37 = sub_24B49678C();
  v38 = v21;
  sub_24B4F5C48(v56, 2uLL, v39);
  sub_24B49689C(&v57, &qword_27EFFC160, &qword_24B519E70);
  v25(v24, v11);
  v25(v15, v11);
  v64[7] = v52;
  v64[8] = v53;
  v64[9] = v54;
  v65 = v55;
  v64[3] = v48;
  v64[4] = v49;
  v64[5] = v50;
  v64[6] = v51;
  v63 = v44;
  v64[0] = v45;
  v64[1] = v46;
  v64[2] = v47;
  v59 = v40;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  return sub_24B49689C(&v59, &qword_27EFFC160, &qword_24B519E70);
}

uint64_t sub_24B49002C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CreatePlanBannerView();
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B496228();
  v4 = sub_24B5174BC();
  v6 = v5;
  v8 = v7;
  v9 = a1[14];
  v10 = sub_24B51749C();
  v12 = v11;
  v14 = v13;
  sub_24B49627C(v4, v6, v8 & 1);

  v44 = a1[15];
  v43 = v44;

  v15 = sub_24B51748C();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  v42 = v18;
  sub_24B49627C(v10, v12, v14 & 1);

  sub_24B49628C(&v44);
  KeyPath = swift_getKeyPath();
  sub_24B48D750();
  swift_getKeyPath();
  sub_24B5179CC();

  v19 = sub_24B5174BC();
  v21 = v20;
  LOBYTE(v12) = v22;
  v23 = a1[12];
  v24 = sub_24B51749C();
  v26 = v25;
  v28 = v27;
  sub_24B49627C(v19, v21, v12 & 1);

  v43 = a1[13];

  v29 = sub_24B51748C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24B49627C(v24, v26, v28 & 1);

  sub_24B49628C(&v43);
  v36 = swift_getKeyPath();
  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v39 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31;
  *(a2 + 72) = v33 & 1;
  *(a2 + 80) = v35;
  *(a2 + 88) = v36;
  *(a2 + 96) = 3;
  *(a2 + 104) = 0;
  sub_24B496398(v41, v40, v39 & 1);

  sub_24B496398(v29, v31, v33 & 1);

  sub_24B49627C(v29, v31, v33 & 1);

  sub_24B49627C(v41, v40, v39 & 1);
}

uint64_t sub_24B4903A8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v30 = *(a3 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v5 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v50 = WitnessTable;
  v51 = MEMORY[0x277CDF918];
  v29 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  v46 = swift_getWitnessTable();
  v47 = v7;
  v9 = swift_getWitnessTable();
  v48 = v8;
  v49 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  v10 = sub_24B51773C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *v32;
  v19 = *(v31 + 24);
  v36 = v30;
  v37 = v19;
  v38 = v18;
  v39 = v34;
  v40 = v33;
  v48 = v5;
  v20 = v29;
  v49 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v20;
  v45 = OpaqueTypeConformance2;
  v22 = swift_getWitnessTable();
  v48 = v8;
  v49 = v9;
  v23 = swift_getOpaqueTypeConformance2();
  v42 = v22;
  v43 = v23;
  v24 = swift_getWitnessTable();
  sub_24B51772C();
  v41 = v24;
  swift_getWitnessTable();
  v25 = v11[2];
  v25(v17, v15, v10);
  v26 = v11[1];
  v26(v15, v10);
  v25(v35, v17, v10);
  return (v26)(v17, v10);
}

uint64_t sub_24B49083C@<X0>(int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a5;
  v83 = a4;
  v86 = a3;
  v87 = a2;
  LODWORD(OpaqueTypeConformance2) = a1;
  v91 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v6 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277CDF918];
  v109 = WitnessTable;
  v110 = MEMORY[0x277CDF918];
  v93 = v6;
  v94 = swift_getWitnessTable();
  v107 = v6;
  v108 = v94;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v76 - v13;
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v14 = sub_24B51702C();
  v105 = swift_getWitnessTable();
  v106 = v8;
  v15 = swift_getWitnessTable();
  v107 = v14;
  v108 = v15;
  v92 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v76 = *(v16 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v76 - v21;
  v22 = sub_24B51724C();
  v81 = *(v22 - 8);
  v23 = *(v81 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  v27 = *(v14 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v76 - v32;
  v90 = OpaqueTypeMetadata2;
  v89 = sub_24B51724C();
  v88 = *(v89 - 8);
  v34 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v82 = &v76 - v35;
  PlanBannerView = type metadata accessor for CreatePlanBannerView();
  if (OpaqueTypeConformance2)
  {
    if (OpaqueTypeConformance2 == 1)
    {
      sub_24B48E940(v86, PlanBannerView, v20);
      v107 = v14;
      v108 = v92;
      v86 = MEMORY[0x277CDEBE0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v37 = v76;
      v38 = *(v76 + 16);
      v39 = v80;
      v38(v80, v20, v16);
      v40 = v20;
      v87 = *(v37 + 8);
      v87(v20, v16);
      v38(v20, v39, v16);
      v41 = v92;
      v42 = OpaqueTypeConformance2;
      sub_24B48D23C(v20, v14, v16);
      v97 = v41;
      v98 = v42;
      v43 = v41;
      OpaqueTypeConformance2 = swift_getWitnessTable();
      v44 = v22;
      v46 = v93;
      v45 = v94;
      v107 = v93;
      v108 = v94;
      swift_getOpaqueTypeConformance2();
      v47 = v82;
      sub_24B48D144(v26, v44);
      (*(v81 + 8))(v26, v44);
      v48 = v40;
      v49 = v43;
      v50 = v87;
      v87(v48, v16);
      v50(v80, v16);
      v51 = v45;
      v52 = v47;
    }

    else
    {
      v60 = v78;
      sub_24B48F4C8(v86, PlanBannerView, v78);
      v49 = v92;
      v107 = v93;
      v108 = v94;
      OpaqueTypeConformance2 = MEMORY[0x277CDEBE0];
      v87 = swift_getOpaqueTypeConformance2();
      v61 = v22;
      v52 = v82;
      v62 = v79;
      v63 = *(v79 + 16);
      v64 = v77;
      v65 = v90;
      v63(v77, v60, v90);
      v86 = *(v62 + 8);
      v86(v60, v65);
      v63(v60, v64, v65);
      v46 = v93;
      v107 = v14;
      v108 = v49;
      v66 = swift_getOpaqueTypeConformance2();
      v103 = v49;
      v104 = v66;
      swift_getWitnessTable();
      sub_24B48D23C(v60, v61, v65);
      v67 = v86;
      v86(v60, v65);
      v68 = v65;
      v51 = v94;
      v67(v64, v68);
    }
  }

  else
  {
    sub_24B48E600(v86, PlanBannerView, v31);
    v53 = v27;
    v54 = v27;
    v55 = v22;
    v56 = *(v54 + 16);
    v56(v33, v31, v14);
    v87 = *(v53 + 8);
    v87(v31, v14);
    v56(v31, v33, v14);
    v49 = v92;
    v107 = v14;
    v108 = v92;
    v86 = MEMORY[0x277CDEBE0];
    v57 = swift_getOpaqueTypeConformance2();
    sub_24B48D144(v31, v14);
    v95 = v49;
    v96 = v57;
    OpaqueTypeConformance2 = swift_getWitnessTable();
    v46 = v93;
    v58 = v81;
    v52 = v82;
    v107 = v93;
    v108 = v94;
    swift_getOpaqueTypeConformance2();
    sub_24B48D144(v26, v55);
    (*(v58 + 8))(v26, v55);
    v59 = v87;
    v87(v31, v14);
    v59(v33, v14);
    v51 = v94;
  }

  v69 = v91;
  v107 = v14;
  v108 = v49;
  v70 = swift_getOpaqueTypeConformance2();
  v101 = v49;
  v102 = v70;
  v71 = swift_getWitnessTable();
  v107 = v46;
  v108 = v51;
  v72 = swift_getOpaqueTypeConformance2();
  v99 = v71;
  v100 = v72;
  v73 = v89;
  swift_getWitnessTable();
  v74 = v88;
  (*(v88 + 16))(v69, v52, v73);
  return (*(v74 + 8))(v52, v73);
}

uint64_t sub_24B49133C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a1;
  v23 = a3;
  v24 = a2;
  v27 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC150, &qword_24B519E60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  v5 = *(a3 + 16);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v37 = WitnessTable;
  v38 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v8 = sub_24B51702C();
  v33 = swift_getWitnessTable();
  v34 = v7;
  v35 = v8;
  v36 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B51724C();
  sub_24B51773C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  v9 = sub_24B51780C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  LOBYTE(v7) = *v24;
  sub_24B51721C();
  v17 = *(v25 + 8);
  v18 = *(v23 + 24);
  v28 = v5;
  v29 = v18;
  v30 = v25;
  v31 = v26;
  v32 = v7;
  sub_24B5177FC();
  swift_getWitnessTable();
  v19 = v10[2];
  v19(v16, v14, v9);
  v20 = v10[1];
  v20(v14, v9);
  v19(v27, v16, v9);
  return (v20)(v16, v9);
}

uint64_t sub_24B491794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v59 = a4;
  v60 = a3;
  v62 = a2;
  v63 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC158, &qword_24B519E68);
  sub_24B51724C();
  sub_24B51773C();
  swift_getTupleTypeMetadata3();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v7 = sub_24B51702C();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF918];
  v70[11] = WitnessTable;
  v70[12] = MEMORY[0x277CDF918];
  v58 = MEMORY[0x277CDFAD8];
  v57 = swift_getWitnessTable();
  v56 = v7;
  v48 = MEMORY[0x277CDEBE0];
  swift_getOpaqueTypeMetadata2();
  v49 = sub_24B51724C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC160, &qword_24B519E70);
  sub_24B51702C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  swift_getWitnessTable();
  sub_24B51780C();
  v10 = sub_24B51702C();
  v70[9] = swift_getWitnessTable();
  v70[10] = v9;
  v53 = v10;
  v52 = swift_getWitnessTable();
  v67 = v10;
  v68 = v52;
  swift_getOpaqueTypeMetadata2();
  v50 = sub_24B51724C();
  v11 = sub_24B51773C();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC168, &qword_24B519E78);
  v14 = sub_24B51702C();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v45 - v19;
  v20 = sub_24B51775C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  type metadata accessor for BrowseBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();

  v29 = [v28 bundleForClass_];
  sub_24B51777C();
  (*(v21 + 104))(v24, *MEMORY[0x277CE0FE0], v20);
  v30 = sub_24B51776C();

  (*(v21 + 8))(v24, v20);
  LOBYTE(v67) = v60;
  PlanBannerView = type metadata accessor for CreatePlanBannerView();
  v32 = v47;
  sub_24B4903A8(v46, &v67, PlanBannerView, v47);
  v33 = v57;
  v67 = v56;
  v68 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70[7] = v33;
  v70[8] = OpaqueTypeConformance2;
  v35 = swift_getWitnessTable();
  v67 = v53;
  v68 = v52;
  v36 = swift_getOpaqueTypeConformance2();
  v70[5] = v35;
  v70[6] = v36;
  v70[4] = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  sub_24B51757C();
  (*(v55 + 8))(v32, v11);
  v38 = sub_24B496A60(&qword_27EFFC270, &qword_27EFFC168, &qword_24B519E78);
  v70[2] = v37;
  v70[3] = v38;
  v39 = swift_getWitnessTable();
  v40 = v54;
  v41 = *(v54 + 16);
  v42 = v51;
  v41(v51, v18, v14);
  v43 = *(v40 + 8);
  v43(v18, v14);
  v67 = v30;
  v68 = 0x4007878787878787;
  v69 = 256;
  v70[0] = &v67;
  v41(v18, v42, v14);
  v70[1] = v18;

  v66[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC150, &qword_24B519E60);
  v66[1] = v14;
  v64 = sub_24B496154();
  v65 = v39;
  sub_24B4F5C48(v70, 2uLL, v66);

  v43(v42, v14);
  v43(v18, v14);
}