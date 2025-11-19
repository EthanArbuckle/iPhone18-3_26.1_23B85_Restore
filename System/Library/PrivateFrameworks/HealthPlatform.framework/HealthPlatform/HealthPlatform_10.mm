uint64_t sub_2284C2B70(uint64_t a1)
{
  sub_2284C3874(0, qword_280DEDB30, type metadata accessor for UserProfile);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  if (*(v4 + 16) >= 2uLL)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    sub_228519408(v4, v6);
    v7 = type metadata accessor for UserProfile();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
    {
      sub_2284C38C8(v6);
      return 0;
    }

    else
    {
      v9 = *&v6[*(v7 + 20)];
      sub_22845FC38(v6);
      return v9;
    }
  }

  return result;
}

uint64_t sub_2284C2CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    if (!v1)
    {
      return 0;
    }

    v3 = type metadata accessor for UserProfile();
    v4 = *(a1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 20));
    v5 = v4;
    return v4;
  }

  return result;
}

uint64_t sub_2284C2DAC(uint64_t a1)
{
  v2 = [v1 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_2284C3820(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v3 = sub_22855D51C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v5 = v47[1];
    v4 = v47[2];
    v7 = v47[3];
    v6 = v47[4];
    v8 = v47[5];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v6 = 0;
    v5 = v3;
  }

  while ((v5 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    v13 = v8;
    for (i = v6; !v13; ++v12)
    {
      i = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (i >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * i);
    }

    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((i << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = [v46 managedObjectContext];
    if (v17)
    {
      v18 = v17;
      [v17 deleteObject_];
    }

    v6 = i;
    v8 = v15;
  }

  if (sub_22855DB8C())
  {
    swift_dynamicCast();
    v16 = v47[0];
    i = v6;
    v15 = v8;
    if (v47[0])
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  sub_228407958();

  v19 = sub_22855D50C();
  [v46 setFeatureTags_];

  sub_2284C1AC0();
  v20 = sub_228429B98(&unk_283B7F1F8);
  FeedItem.contentKind.getter(v47);
  LOBYTE(v19) = sub_228425550(v47[0], v20);

  if (v19)
  {
    v21 = [v46 uniqueIdentifier];
    sub_22855D1AC();

    sub_2284C1C30();
  }

  v22 = *(a1 + *(type metadata accessor for PluginFeedItem() + 68));
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v45 = v22;

  v28 = 0;
  v43 = v23;
  if (!v26)
  {
LABEL_25:
    v30 = v46;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v29 = v28;
    v30 = v46;
LABEL_29:
    v31 = (v29 << 10) | (16 * __clz(__rbit64(v26)));
    v32 = (*(v45 + 48) + v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = (*(v45 + 56) + v31);
    v36 = *v35;
    v37 = v35[1];

    sub_22842B3E0(v36, v37);
    v38 = [v30 managedObjectContext];
    if (!v38)
    {
      break;
    }

    v39 = v38;
    v26 &= v26 - 1;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v33, v34);
    sub_22842B3E0(v36, v37);
    v40 = v39;
    v41 = EncodedFeatureTag.__allocating_init(context:name:data:)(v40, v33, v34, v36, v37);
    [v30 addFeatureTagsObject_];

    sub_22842B38C(v36, v37);
    v28 = v29;
    v23 = v43;
    if (!v26)
    {
      goto LABEL_25;
    }
  }

LABEL_35:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

HealthPlatform::PinnedContentIdentifier_optional __swiftcall FeedItem.getPinnedContentIdentifier()()
{
  v2 = v0;
  v3 = [v1 pinnedContentDomain];
  if (v3 && (v7 = v3, sub_22855D1AC(), v7, v8 = sub_22855DFBC(), LOBYTE(v3) = , v8 <= 1) && (v3 = [v1 pinnedContentIdentifier]) != 0)
  {
    v9 = v3;
    v10 = sub_22855D1AC();
    v12 = v11;

    *v2 = v8;
    v2[1] = v10;
    v2[2] = v12;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  result.value.identifier._object = v5;
  result.value.identifier._countAndFlagsBits = v4;
  result.value.domain = v3;
  result.is_nil = v6;
  return result;
}

_OWORD *sub_2284C3438(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_228400400(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2284C34A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22855C37C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2284C3550(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_2284C35A0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2284C35F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2284C3638(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2284C367C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2283FAB3C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2284C36EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22855C5CC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2284C37A4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_228400400(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2284C3820(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2284C3874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284C38C8(uint64_t a1)
{
  sub_2284C3874(0, qword_280DEDB30, type metadata accessor for UserProfile);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static InputSignalSet.LookupKey.healthKitUnitPreferences.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for HealthKitUnitPreferencesInputSignal();
  return sub_22855C61C();
}

void *HealthKitUnitPreferencesInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_2284C5B20(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *HealthKitUnitPreferencesInputSignal.__allocating_init(context:observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_2284C5C54(a1, a2, a3, a4, v13, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v14;
}

void *HealthKitUnitPreferencesInputSignal.init(context:observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_2284C5A4C(a1, a2, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v18;
}

void HealthKitUnitPreferencesInputSignal.Anchor.hasDifference(from:for:)(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v6 = *a2;
    }

    v7 = *a2;

    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
    sub_2284C5D70();
    sub_22855D56C();
    v4 = v37;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
  }

  else
  {
    v12 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v4 + 56);
    v15 = *a2;

    v10 = 0;
  }

  v33 = v5;
  v16 = (v9 + 64) >> 6;
  v34 = v5 & 0xC000000000000001;
  while (v4 < 0)
  {
    if (!sub_22855DB8C() || (sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_26:
      sub_228407958();
      return;
    }

LABEL_20:
    v35 = v11;
    if (!v34)
    {
      v23 = v3;
      if (*(v33 + 16) && (v25 = sub_228443BC4(v19), (v26 & 1) != 0))
      {
        v22 = *(*(v33 + 56) + 8 * v25);
        v27 = v22;
        if (v3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = 0;
        if (v3)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_23;
    }

    v20 = v19;
    v21 = sub_22855DE8C();

    if (v21)
    {
      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      swift_dynamicCast();
      v22 = v36;
      v23 = v3;
      if (!v3)
      {
        goto LABEL_23;
      }

LABEL_34:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v28 = v19;
        v29 = sub_22855DE8C();

        if (!v29)
        {
          goto LABEL_42;
        }

        sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
        swift_dynamicCast();
        v23 = v36;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!v23[2])
        {
          v23 = 0;
          if (!v22)
          {
            goto LABEL_10;
          }

          goto LABEL_24;
        }

        v30 = sub_228443BC4(v19);
        if ((v31 & 1) == 0)
        {
LABEL_42:
          v23 = 0;
          if (!v22)
          {
            goto LABEL_10;
          }

          goto LABEL_24;
        }

        v23 = *(v23[7] + 8 * v30);
        v32 = v23;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

LABEL_24:
      if (!v23)
      {
        sub_228407958();

        return;
      }

      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      v24 = sub_22855D9AC();

      v11 = v35;
      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
      v23 = v3;
      if (v3)
      {
        goto LABEL_34;
      }

LABEL_23:
      if (v22)
      {
        goto LABEL_24;
      }

LABEL_10:

      v11 = v35;
      if (v23)
      {
        sub_228407958();

        return;
      }
    }
  }

  v17 = v10;
  v18 = v11;
  if (v11)
  {
LABEL_16:
    v11 = (v18 - 1) & v18;
    v19 = *(*(v4 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_26;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

HealthPlatform::HealthKitUnitPreferencesInputSignal::Anchor __swiftcall HealthKitUnitPreferencesInputSignal.Anchor.merged(with:)(HealthPlatform::HealthKitUnitPreferencesInputSignal::Anchor with)
{
  v3 = v1;
  v4 = *with.preferences._rawValue;
  v5 = *v2;

  v7 = sub_2284C61D8(v6, v4);

  *v3 = v7;
  return result;
}

uint64_t sub_2284C4124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65726566657270 && a2 == 0xEB00000000736563)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2284C41B0(uint64_t a1)
{
  v2 = sub_2284C6540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284C41EC(uint64_t a1)
{
  v2 = sub_2284C6540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthKitUnitPreferencesInputSignal.Anchor.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2284C6594(0, &qword_280DE9050, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284C6540();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844AE10();
    sub_22855E03C();
    v19 = a2;
    v13 = v18[0];
    v12 = v18[1];
    sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
    sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
    sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
    v14 = sub_22855D79C();
    v15 = v19;
    if (!v14)
    {
      v14 = sub_22847D73C(MEMORY[0x277D84F90]);
    }

    v16 = v14;
    sub_22842B38C(v13, v12);
    (*(v7 + 8))(v10, v6);
    *v15 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HealthKitUnitPreferencesInputSignal.Anchor.encode(to:)(void *a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  sub_2284C6594(0, &qword_280DE9018, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v22[-1] - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284C6540();
  sub_22855E31C();
  v11 = objc_opt_self();
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
  sub_2284C5D70();
  v12 = sub_22855D0DC();
  v22[0] = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v22];

  v14 = v22[0];
  if (v13)
  {
    v15 = sub_22855C09C();
    v17 = v16;

    v22[0] = v15;
    v22[1] = v17;
    sub_22844AF8C();
    sub_22855E0CC();
    (*(v5 + 8))(v8, v4);
    result = sub_22842B38C(v15, v17);
  }

  else
  {
    v19 = v14;
    sub_22855BF3C();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2284C470C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  v7 = sub_2284C61D8(v6, v4);

  *a2 = v7;
  return result;
}

uint64_t HealthKitUnitPreferencesInputSignal.Configuration.quantityTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HealthKitUnitPreferencesInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A064(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284C4884()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A064(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284C48D4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A064(v3, v1);
  return sub_22855E27C();
}

uint64_t HealthKitUnitPreferencesInputSignal.observer.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

Swift::Void __swiftcall HealthKitUnitPreferencesInputSignal.stopObservation()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 32));
  sub_2284C6B2C((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2284C4A90(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a1[1];

  v5[1] = a2;
  v7 = *v5;
  v8 = 0x277CCA000uLL;
  v9 = &unk_2785F7000;
  if (*v5)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    v32 = a2;
    v12 = v5;
    v13 = *MEMORY[0x277CCCE80];
    v15 = a3[8];
    v14 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v15);
    v16 = *(v14 + 16);
    swift_unknownObjectRetain();
    v17 = v16(v15, v14);
    v9 = &unk_2785F7000;
    v18 = v13;
    v5 = v12;
    a2 = v32;
    [v11 removeObserver:v7 name:v18 object:v17];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    v8 = 0x277CCA000;
  }

  else
  {
    v18 = *MEMORY[0x277CCCE80];
  }

  v19 = *(v8 + 2968);
  v20 = [objc_opt_self() v9[382]];
  v21 = a3[8];
  v22 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a2;
  aBlock[4] = sub_2284C6AA8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284C50C8;
  aBlock[3] = &block_descriptor_29;
  v26 = _Block_copy(aBlock);

  v27 = [v20 addObserverForName:v18 object:v23 queue:0 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *v5 = v27;
  v28 = a3[8];
  v29 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v28);
  v30 = *(v29 + 8);

  v30(a2, sub_2284C6AB0, a3, v28, v29);
}

void *sub_2284C4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result[8];
    v6 = result[9];
    v7 = result;
    __swift_project_boxed_opaque_existential_1(result + 5, v5);
    v8 = *(v6 + 8);

    v8(a3, sub_2284C6AB8, v7, v5, v6);
  }

  return result;
}

uint64_t sub_2284C4E50(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a3[2];
    v13 = a3[3];
    swift_getObjectType();
    v14 = a2;
    sub_22855C59C();
    v15 = a2;
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2283ED000, v16, v17, "Failed to fetch updated unit preferences: %@", v18, 0xCu);
      sub_22841DC98(v19);
      MEMORY[0x22AABAD40](v19, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);
    }

    else
    {
    }

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v22 = a3[10];
    v23 = a3[11];
    swift_getObjectType();
    v25[0] = a3;
    v25[1] = a1;
    sub_2284C6874(&qword_280DEC680);

    sub_22855C78C();
  }
}

uint64_t sub_2284C50C8(uint64_t a1)
{
  v2 = sub_22855BE9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22855BE3C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2284C51BC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a3[2];
    v13 = a3[3];
    swift_getObjectType();
    v14 = a2;
    sub_22855C59C();
    v15 = a2;
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[1] = v6;
      v20 = v19;
      *v18 = 138412290;
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_2283ED000, v16, v17, "Failed to fetch initial unit preferences; returning no values to avoid blocking observation: %@", v18, 0xCu);
      sub_22841DC98(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v7);
  }

  v23 = a3[10];
  v24 = a3[11];
  swift_getObjectType();
  v26[2] = a3;
  v26[3] = a1;
  sub_2284C6874(&qword_280DEC680);

  sub_22855C78C();
}

uint64_t *sub_2284C543C(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    v6 = *MEMORY[0x277CCCE80];
    v7 = a2[8];
    v8 = a2[9];
    __swift_project_boxed_opaque_existential_1(a2 + 5, v7);
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();
    [v5 removeObserver:v2 name:v6 object:{v9(v7, v8)}];

    swift_unknownObjectRelease_n();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *HealthKitUnitPreferencesInputSignal.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HealthKitUnitPreferencesInputSignal.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2284C55BC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  return swift_unknownObjectRetain();
}

void sub_2284C560C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 32));
  sub_2284C6B2C((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2284C5668(uint64_t a1)
{
  v2 = sub_2284C6874(&qword_280DEC680);

  return MEMORY[0x28216B080](a1, v2);
}

void HKHealthStore.fetchUnitPreferences(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2284C5D70();
  v6 = sub_22855D50C();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2284C57C0;
  v8[3] = &block_descriptor_17;
  v7 = _Block_copy(v8);

  [v3 preferredUnitsForQuantityTypes:v6 completion:v7];
  _Block_release(v7);
}

void sub_2284C57C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
  sub_2284C5D70();
  v6 = sub_22855D0EC();

  v7 = a3;
  v5(v6, a3);
}

void sub_2284C58A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2284C5D70();
  v7 = sub_22855D50C();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2284C57C0;
  v9[3] = &block_descriptor_22;
  v8 = _Block_copy(v9);

  [v6 preferredUnitsForQuantityTypes:v7 completion:v8];
  _Block_release(v8);
}

unint64_t *sub_2284C59B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2284C5DD8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_2284C5A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v20 = a7;
  v21 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  sub_2284C6AC0();
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  v17 = MEMORY[0x277D84FA0];
  *(v16 + 16) = 0;
  *(v16 + 24) = v17;
  a6[4] = v16;
  sub_2283FAB3C(&v19, (a6 + 5));
  a6[2] = a1;
  a6[3] = a2;
  a6[10] = a3;
  a6[11] = a4;
  return a6;
}

void *sub_2284C5B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_2284C5BA0(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_2284C5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v17 = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  v18 = &protocol witness table for HKHealthStore;
  *&v16 = a4;
  sub_2284C6AC0();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = MEMORY[0x277D84FA0];
  *(v13 + 16) = 0;
  *(v13 + 24) = v14;
  a5[4] = v13;
  sub_2283FAB3C(&v16, (a5 + 5));
  a5[2] = a1;
  a5[3] = a7;
  a5[10] = a2;
  a5[11] = a3;
  return a5;
}

void *sub_2284C5C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a5, a7);
  return sub_2284C5A4C(a1, a2, a3, a4, v18, v19, a7, a8);
}

unint64_t sub_2284C5D70()
{
  result = qword_280DE94C0;
  if (!qword_280DE94C0)
  {
    sub_2283EF310(255, &qword_280DE94C8, 0x277CCD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE94C0);
  }

  return result;
}

void sub_2284C5DD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v31 = a4 & 0xC000000000000001;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = *(*(a3 + 56) + 8 * v13);
    if (v31)
    {
      v16 = v14;
      v17 = v15;
      if (!sub_22855DE8C())
      {
        goto LABEL_4;
      }

      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      swift_dynamicCast();
      v18 = v33;
      if (!v33)
      {
        goto LABEL_4;
      }

LABEL_19:
      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      v24 = v15;
      v25 = sub_22855D9AC();

      if (v25)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_23:
          sub_228525B50(a1, a2, v29, a3);
          return;
        }
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v14;
      v21 = v15;
      if (v19)
      {
        v22 = sub_228443BC4(v20);
        if (v23)
        {
          v18 = *(*(a4 + 56) + 8 * v22);
          if (v18)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_4:
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_23;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_2284C6018(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_2284C59B0(v14, v7, a1, a2);
      MEMORY[0x22AABAD40](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_2284C5DD8((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2284C61D8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v32 = MEMORY[0x277D84F98];
    sub_22855DDFC();

    v4 = sub_22855DEAC();
    if (v4)
    {
      v5 = v4;
      sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
      v6 = v5;
      do
      {
        v30 = v6;
        swift_dynamicCast();
        sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
        swift_dynamicCast();
        if (!v31)
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = v31;
          v8 = v30;
          if (sub_22855DE8C())
          {
            swift_dynamicCast();
            v9 = v31;
LABEL_13:
            v15 = v30;
            v16 = sub_22855D9AC();

            if (v16)
            {
              v17 = v3[2];
              if (v3[3] <= v17)
              {
                sub_228447130(v17 + 1, 1);
              }

              v3 = v32;
              v18 = *(v32 + 40);
              result = sub_22855D99C();
              v20 = v32 + 64;
              v21 = -1 << *(v32 + 32);
              v22 = result & ~v21;
              v23 = v22 >> 6;
              if (((-1 << v22) & ~*(v32 + 64 + 8 * (v22 >> 6))) != 0)
              {
                v24 = __clz(__rbit64((-1 << v22) & ~*(v32 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v25 = 0;
                v26 = (63 - v21) >> 6;
                do
                {
                  if (++v23 == v26 && (v25 & 1) != 0)
                  {
                    __break(1u);
                    return result;
                  }

                  v27 = v23 == v26;
                  if (v23 == v26)
                  {
                    v23 = 0;
                  }

                  v25 |= v27;
                  v28 = *(v20 + 8 * v23);
                }

                while (v28 == -1);
                v24 = __clz(__rbit64(~v28)) + (v23 << 6);
              }

              *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
              *(*(v32 + 48) + 8 * v24) = v31;
              *(*(v32 + 56) + 8 * v24) = v15;
              ++*(v32 + 16);
            }

            else
            {
            }

            goto LABEL_5;
          }
        }

        else
        {
          v10 = *(a2 + 16);
          v11 = v31;
          v12 = v30;
          if (v10)
          {
            v13 = sub_228443BC4(v11);
            if (v14)
            {
              v9 = *(*(a2 + 56) + 8 * v13);
              if (v9)
              {
                goto LABEL_13;
              }
            }
          }
        }

LABEL_5:
        v6 = sub_22855DEAC();
      }

      while (v6);
    }

    sub_228407958();
  }

  else
  {

    v3 = sub_2284C6018(a1, a2);
  }

  return v3;
}

unint64_t sub_2284C6540()
{
  result = qword_280DEC6B8;
  if (!qword_280DEC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6B8);
  }

  return result;
}

void sub_2284C6594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284C6540();
    v7 = a3(a1, &type metadata for HealthKitUnitPreferencesInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2284C6634()
{
  result = qword_280DEC688;
  if (!qword_280DEC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC688);
  }

  return result;
}

unint64_t sub_2284C668C()
{
  result = qword_280DEC698;
  if (!qword_280DEC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC698);
  }

  return result;
}

unint64_t sub_2284C66E4()
{
  result = qword_280DEC690;
  if (!qword_280DEC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC690);
  }

  return result;
}

unint64_t sub_2284C673C()
{
  result = qword_27D83FDE8;
  if (!qword_27D83FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDE8);
  }

  return result;
}

unint64_t sub_2284C6794()
{
  result = qword_280DEC6C8[0];
  if (!qword_280DEC6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEC6C8);
  }

  return result;
}

unint64_t sub_2284C67EC()
{
  result = qword_280DEC6C0;
  if (!qword_280DEC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6C0);
  }

  return result;
}

uint64_t sub_2284C6874(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HealthKitUnitPreferencesInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284C68B8()
{
  result = qword_280DEC6A0;
  if (!qword_280DEC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6A0);
  }

  return result;
}

unint64_t sub_2284C69A4()
{
  result = qword_27D83FDF0;
  if (!qword_27D83FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDF0);
  }

  return result;
}

unint64_t sub_2284C69FC()
{
  result = qword_280DEC6A8;
  if (!qword_280DEC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6A8);
  }

  return result;
}

unint64_t sub_2284C6A54()
{
  result = qword_280DEC6B0;
  if (!qword_280DEC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6B0);
  }

  return result;
}

void sub_2284C6AC0()
{
  if (!qword_280DE9198)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9198);
    }
  }
}

Swift::Void __swiftcall PinnedContentManaging.pin(objectType:at:)(HKObjectType objectType, Swift::Int at)
{
  v3 = v2;
  v4 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v3 + 40))(v4);
}

Swift::Void __swiftcall PinnedContentManaging.pin(objectType:)(HKObjectType objectType)
{
  v2 = v1;
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v2 + 48))(v3);
}

Swift::Void __swiftcall PinnedContentManaging.unpin(objectType:)(HKObjectType objectType)
{
  v2 = v1;
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v2 + 56))(v3);
}

Swift::Bool_optional __swiftcall PinnedContentManaging.isPinned(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = (*(v1 + 16))();
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  v6 = sub_22855BC9C();

  v11[0] = countAndFlagsBits;
  v11[1] = object;
  MEMORY[0x28223BE20](v7);
  v10[2] = v11;
  v8 = sub_2284C6D9C(sub_2284C706C, v10, v6);

  return (v8 & 1);
}

uint64_t sub_2284C6D9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2284C6E48(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_2284C6EEC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AAB9D20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22855DB4C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2284C7014(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

uint64_t sub_2284C706C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

Swift::Void __swiftcall UserNotificationManager.removePendingOrDeliveredNotifications(with:)(Swift::OpaquePointer with)
{
  v3 = v2;
  v4 = v1;
  (*(v2 + 32))();
  v6 = *(v3 + 40);

  v6(with._rawValue, v4, v3);
}

uint64_t UNNotificationRequest.notificationIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t sub_2284C7274()
{
  v1 = [*v0 identifier];
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t PluginFeedItem.NotificationRequest.feedItemIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginFeedItem.NotificationRequest.feedItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.notificationIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PluginFeedItem.NotificationRequest.notificationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2284C73F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 40);

  *(a2 + 32) = sub_2284C7A3C;
  *(a2 + 40) = v5;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.makeNotificationRequest.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PluginFeedItem.NotificationRequest.makeNotificationRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.ContentState.stringRawValue.getter()
{
  v1 = v0[1];
  v2 = 0x4F656D6954656E6FLL;
  if (v1 != 1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1701736302;
  }

  sub_2284C7554(*v0, v1);
  return v4;
}

uint64_t sub_2284C7554(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t PluginFeedItem.NotificationRequest.notificationStateValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_2284C7554(v2, v3);
}

uint64_t PluginFeedItem.NotificationRequest.notificationStateValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2284C776C(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 PluginFeedItem.NotificationRequest.init(feedItemIdentifier:notificationIdentifier:notificationRequest:notificationStateValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X6>, __n128 *a8@<X8>)
{
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  a8[2].n128_u64[0] = a5;
  a8[2].n128_u64[1] = a6;
  result = *a7;
  a8[3] = *a7;
  return result;
}

uint64_t sub_2284C75E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _s14HealthPlatform14PluginFeedItemV19NotificationRequestV12ContentStateO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_2284C776C(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_2284C776C(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_22855E15C();
      sub_2284C7554(v4, v5);
      sub_2284C7554(v2, v3);
      sub_2284C776C(v2, v3);
      sub_2284C776C(v4, v5);
      return v11 & 1;
    }

    sub_2284C7554(v9, v3);
    sub_2284C7554(v2, v3);
    sub_2284C776C(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_2284C7554(*a2, *(a2 + 8));
    sub_2284C7554(v2, v3);
    sub_2284C776C(v2, v3);
    sub_2284C776C(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_2284C776C(*a1, 1uLL);
  sub_2284C776C(v4, 1uLL);
  return v6;
}

uint64_t sub_2284C776C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform14PluginFeedItemV19NotificationRequestV12ContentStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284C77E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2284C7830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2284C7890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284C78E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2284C7940(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2284C7A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_2284C7A74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void *PluginContentStateManager.__allocating_init(domain:healthStore:category:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CCD570]);

  v10 = sub_22855D17C();

  v11 = [v9 initWithCategory:a4 domainName:v10 healthStore:a3];

  v8[4] = v11;
  return v8;
}

void *PluginContentStateManager.init(domain:healthStore:category:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CCD570]);

  v8 = sub_22855D17C();

  v9 = [v7 initWithCategory:a4 domainName:v8 healthStore:a3];

  v4[4] = v9;
  return v4;
}

uint64_t sub_2284C7BF8()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D70C();

  return v2;
}

uint64_t sub_2284C7C48()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D71C();

  return v2;
}

uint64_t sub_2284C7C98()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D6BC();

  return v2;
}

uint64_t sub_2284C7CE8()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D74C();

  return v2;
}

uint64_t sub_2284C7D38()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D72C();

  return v2;
}

uint64_t sub_2284C7D90()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D73C();

  return v2;
}

uint64_t sub_2284C7DE8()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D6CC();

  return v2;
}

uint64_t sub_2284C7E50()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D75C();

  return v2;
}

uint64_t sub_2284C7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v62 = a2;
  sub_2284C8634(0, &qword_27D83FDF8, MEMORY[0x277CBCE68]);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v53 - v9;
  sub_22843609C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - v14;
  v16 = sub_22855C16C();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a4 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v53 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v53 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = *(v20 + 16);
  v31(&v53 - v32, a1, a4);
  if (swift_dynamicCast())
  {
    v33 = *(v4 + 32);
    v34 = sub_22855D75C();

    v63 = v34;
    v35 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v35);
    v36 = sub_22855CE6C();
LABEL_8:

    return v36;
  }

  v31(v30, a1, a4);
  if (swift_dynamicCast())
  {
    v37 = *(v4 + 32);
    v38 = sub_22855D6CC();
LABEL_7:
    v39 = v38;

    v63 = v39;
    v40 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v40);
    v36 = sub_22855CE6C();
    goto LABEL_8;
  }

  v31(v27, a1, a4);
  if (swift_dynamicCast())
  {
    v37 = *(v4 + 32);
    v38 = sub_22855D72C();
    goto LABEL_7;
  }

  v31(v24, a1, a4);
  v42 = v60;
  v43 = swift_dynamicCast();
  v44 = v59;
  v45 = *(v59 + 56);
  if (v43)
  {
    v45(v15, 0, 1, v42);
    v46 = v55;
    (*(v44 + 32))(v55, v15, v42);
    v47 = v54;
    (*(v44 + 16))(v54, v46, v42);
    v45(v47, 0, 1, v42);
    v48 = *(v4 + 32);
    v49 = sub_22855D73C();

    sub_2284648E4(v47);
    v63 = v49;
    v50 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v50);
    v36 = sub_22855CE6C();

    (*(v44 + 8))(v46, v42);
  }

  else
  {
    v45(v15, 1, 1, v42);
    sub_2284648E4(v15);
    sub_2284C85E0();
    v63 = swift_allocError();
    sub_228418D44();
    v51 = v56;
    sub_22855CD7C();
    sub_2284C86A8(&qword_27D83FE08, &qword_27D83FDF8, MEMORY[0x277CBCE68]);
    v52 = v58;
    v36 = sub_22855CE6C();
    (*(v57 + 8))(v51, v52);
  }

  return v36;
}

unint64_t sub_2284C85E0()
{
  result = qword_27D83FE00;
  if (!qword_27D83FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE00);
  }

  return result;
}

void sub_2284C8634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228418D44();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284C86A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_2284C8634(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284C86EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  sub_2284C95D0(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = v5;

  v8 = sub_22855D6EC();

  return v8;
}

uint64_t sub_2284C8794()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D6FC();

  return v2;
}

uint64_t sub_2284C87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v12, v13);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v9 + 32))(v15 + v14, v11, a4);
  v16 = sub_2284C8988(a1, a2, sub_2284C8924, v15);

  return v16;
}

BOOL sub_2284C8924()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  return (sub_22855D16C() & 1) == 0;
}

uint64_t sub_2284C8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a1;
  v92 = a4;
  v88 = a3;
  v84 = a2;
  sub_22855DA2C();
  v4 = sub_228418D44();
  v89 = sub_22855CCCC();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_22855CBBC();
  v94 = *(v5 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v5);
  v91 = v67 - v7;
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277D839B0];
  v95 = v5;
  v85 = v8;
  v93 = sub_22855CB6C();
  v90 = *(v93 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v87 = v67 - v11;
  v78 = v4;
  v12 = sub_22855CD8C();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = v67 - v14;
  sub_22849B520();
  v16 = v15;
  v17 = sub_2284C949C();
  v67[1] = v16;
  v67[0] = v17;
  v70 = sub_22855CB6C();
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = v67 - v19;
  sub_2284C94F4(255, &qword_27D83FE10, &unk_280DED228, v9);
  v21 = v20;
  v22 = sub_2284C9580(&qword_27D83FE18, &qword_27D83FE10, &unk_280DED228, v9);
  v73 = v21;
  v71 = v22;
  v75 = sub_22855CB6C();
  v74 = *(v75 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = v67 - v24;
  v25 = MEMORY[0x277D83B88];
  sub_2284C94F4(255, &qword_27D83FE20, &qword_27D83FE28, MEMORY[0x277D83B88]);
  v27 = v26;
  v79 = sub_2284C9580(&qword_27D83FE30, &qword_27D83FE20, &qword_27D83FE28, v25);
  v80 = v27;
  v28 = sub_22855CB6C();
  v81 = *(v28 - 8);
  v29 = *(v81 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v67 - v30;
  v32 = MEMORY[0x277D837D0];
  sub_2284C94F4(255, &qword_280DE97A8, &qword_280DEE7D0, MEMORY[0x277D837D0]);
  sub_2284C9580(&qword_280DE97B0, &qword_280DE97A8, &qword_280DEE7D0, v32);
  v33 = sub_22855CB6C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = v67 - v37;
  if (v36 == v32)
  {
    v48 = *(v82 + 32);
    v82 = v36;
    v49 = v48;
    v50 = sub_22855D74C();

    v96 = v50;
    *(swift_allocObject() + 16) = v32;
    sub_22855CE8C();

    swift_getWitnessTable();
    v47 = sub_22855CE6C();
    (*(v34 + 8))(v38, v33);
    v44 = v82;
    goto LABEL_12;
  }

  v39 = v12;
  v40 = v82;
  v41 = v83;
  v42 = v84;
  v43 = MEMORY[0x277D83B88];
  v44 = v36;
  if (v36 == MEMORY[0x277D83B88])
  {
    v51 = *(v82 + 32);
    v52 = sub_22855D6BC();

    v96 = v52;
    *(swift_allocObject() + 16) = v43;
    sub_22855CE8C();

    swift_getWitnessTable();
    v47 = sub_22855CE6C();
    v53 = *(v81 + 8);
    v54 = v31;
LABEL_11:
    v53(v54, v28);
    goto LABEL_12;
  }

  v45 = MEMORY[0x277D839B0];
  if (v36 == MEMORY[0x277D839B0])
  {
    v55 = *(v82 + 32);
    v56 = sub_22855D70C();

    v96 = v56;
    *(swift_allocObject() + 16) = v45;
    v57 = v72;
    sub_22855CE8C();

    v28 = v75;
    swift_getWitnessTable();
    v47 = sub_22855CE6C();
    v58 = &v98;
LABEL_10:
    v53 = *(*(v58 - 32) + 8);
    v54 = v57;
    goto LABEL_11;
  }

  if (sub_22855C16C() == v36)
  {
    v96 = (*(*v40 + 144))(v41, v42);
    *(swift_allocObject() + 16) = v44;
    v57 = v68;
    sub_22855CE8C();

    v28 = v70;
    swift_getWitnessTable();
    v47 = sub_22855CE6C();
    v58 = &v97;
    goto LABEL_10;
  }

  sub_2284C85E0();
  v96 = swift_allocError();
  v46 = v76;
  sub_22855CD6C();
  swift_getWitnessTable();
  v47 = sub_22855CE6C();
  (*(v77 + 8))(v46, v39);
LABEL_12:
  v96 = v47;
  v59 = swift_allocObject();
  v60 = v88;
  v59[2] = v44;
  v59[3] = v60;
  v59[4] = v92;

  v61 = v91;
  sub_22855CEFC();

  *(swift_allocObject() + 16) = v44;
  v62 = v87;
  v63 = v95;
  sub_22855CE8C();

  (*(v94 + 8))(v61, v63);
  v64 = v93;
  swift_getWitnessTable();
  v65 = sub_22855CE6C();

  (*(v90 + 8))(v62, v64);
  return v65;
}

unint64_t sub_2284C949C()
{
  result = qword_280DE97E0;
  if (!qword_280DE97E0)
  {
    sub_22849B520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97E0);
  }

  return result;
}

void sub_2284C94F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2284C95D0(255, a3, a4, MEMORY[0x277D83D88]);
    sub_228418D44();
    v5 = sub_22855CDFC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2284C9580(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284C94F4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284C95D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2284C9620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_2284C95D0(0, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);

  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C96E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_2284C95D0(0, &qword_27D83FE28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C979C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  sub_2284C95D0(0, &unk_280DED228, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22843609C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_2284360F4(a1, &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_2284C9930(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_22855DA2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v12, a4);
    v17 = a2(v16);
    (*(v13 + 8))(v16, a4);
  }

  return v17 & 1;
}

uint64_t PluginContentStateManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PluginContentStateManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2284C9DE8()
{
  result = qword_27D83FE38;
  if (!qword_27D83FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE38);
  }

  return result;
}

uint64_t NotificationContentState.init(identifier:uuid:contentState:hasGeneratedLocally:isAcknowledged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for NotificationContentState(0);
  v15 = v14[5];
  v16 = sub_22855C1DC();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  a8[v14[7]] = a6;
  a8[v14[8]] = a7;
  return result;
}

uint64_t NotificationContentState.protectedData()@<X0>(char *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = type metadata accessor for NotificationContentState(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for ProtectedNotificationContentState(0);
  v8 = *(v7 + 20);
  v9 = sub_22855C1DC();
  (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
  v10 = &v1[*(v5 + 24)];
  v11 = *v10;
  v12 = *(v10 + 1);
  *a1 = v4;
  *(a1 + 1) = v3;
  v13 = &a1[*(v7 + 24)];
  *v13 = v11;
  *(v13 + 1) = v12;
}

uint64_t NotificationContentState.unprotectedData()@<X0>(char *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = type metadata accessor for NotificationContentState(0);
  v6 = v5[5];
  v7 = type metadata accessor for UnprotectedNotificationContentState(0);
  v8 = v7[5];
  v9 = sub_22855C1DC();
  (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
  v10 = v1[v5[7]];
  v11 = v1[v5[8]];
  *a1 = v4;
  *(a1 + 1) = v3;
  a1[v7[6]] = v10;
  a1[v7[7]] = v11;
}

uint64_t NotificationContentState.description.getter()
{
  v1 = v0;
  sub_22855DC6C();
  v3 = *v0;
  v2 = v0[1];

  v12 = v3;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v4 = type metadata accessor for NotificationContentState(0);
  v5 = v4[5];
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70);
  v6 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v6);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v1 + v4[6]), *(v1 + v4[6] + 8));
  MEMORY[0x22AAB92A0](0x746172656E656720, 0xEC000000203A6465);
  if (*(v1 + v4[7]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + v4[7]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v7, v8);

  MEMORY[0x22AAB92A0](0x6C776F6E6B636120, 0xEF203A6465676465);
  if (*(v1 + v4[8]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v4[8]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v9, v10);

  return v12;
}

uint64_t ProtectedNotificationContentState.description.getter()
{
  v1 = v0;
  v6 = *v0;
  v7 = v0[1];

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v2 = type metadata accessor for ProtectedNotificationContentState(0);
  v3 = *(v2 + 20);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70);
  v4 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v4);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v6;
}

uint64_t UnprotectedNotificationContentState.description.getter()
{
  v1 = v0;
  sub_22855DC6C();
  v3 = *v0;
  v2 = v0[1];

  v12 = v3;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v4 = type metadata accessor for UnprotectedNotificationContentState(0);
  v5 = v4[5];
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70);
  v6 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v6);

  MEMORY[0x22AAB92A0](0x746172656E656720, 0xEC000000203A6465);
  if (*(v1 + v4[6]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + v4[6]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v7, v8);

  MEMORY[0x22AAB92A0](0x6C776F6E6B636120, 0xEF203A6465676465);
  if (*(v1 + v4[7]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v4[7]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v9, v10);

  return v12;
}

uint64_t NotificationContentState.DataError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t NotificationContentState.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2284CA630()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x53746E65746E6F63;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x776F6E6B63417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684632949;
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

uint64_t sub_2284CA6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284CDA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2284CA714(uint64_t a1)
{
  v2 = sub_2284CCD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CA750(uint64_t a1)
{
  v2 = sub_2284CCD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationContentState.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2284CD030(0, &qword_27D83FE40, sub_2284CCD84, &type metadata for NotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCD84();
  sub_22855E31C();
  v12 = *v3;
  v13 = v3[1];
  v27 = 0;
  sub_22855E08C();
  if (!v2)
  {
    v14 = type metadata accessor for NotificationContentState(0);
    v15 = v14[5];
    v26 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50);
    sub_22855E0CC();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v25 = 2;
    sub_22855E08C();
    v19 = *(v3 + v14[7]);
    v24 = 3;
    sub_22855E09C();
    v20 = *(v3 + v14[8]);
    v23 = 4;
    sub_22855E09C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t NotificationContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_22855C1DC();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE58, sub_2284CCD84, &type metadata for NotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v31 = v6;
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NotificationContentState(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCD84();
  v30 = v9;
  v15 = v32;
  sub_22855E30C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v5;
  v17 = v28;
  v18 = v29;
  v37 = 0;
  *v13 = sub_22855DFFC();
  v13[1] = v19;
  v32 = v19;
  v36 = 1;
  sub_2284CCDD8(&qword_27D83FE60);
  sub_22855E03C();
  (*(v27 + 32))(v13 + v10[5], v16, v18);
  v35 = 2;
  v25 = 0;
  v20 = sub_22855DFFC();
  v21 = (v13 + v10[6]);
  *v21 = v20;
  v21[1] = v22;
  v34 = 3;
  *(v13 + v10[7]) = sub_22855E00C() & 1;
  v33 = 4;
  v23 = sub_22855E00C();
  (*(v17 + 8))(v30, v31);
  *(v13 + v10[8]) = v23 & 1;
  sub_2284CCE70(v13, v26, type metadata accessor for NotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2284CCED8(v13, type metadata accessor for NotificationContentState);
}

uint64_t sub_2284CAE94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22855C1DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2284CAF30(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ProtectedNotificationContentState.init(identifier:uuid:contentState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for ProtectedNotificationContentState(0);
  v11 = *(v10 + 20);
  v12 = sub_22855C1DC();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t static ProtectedNotificationContentState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ProtectedNotificationContentState(0);
  v6 = *(v5 + 20);
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_2284CB0F0()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0x53746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2284CB150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284CDC40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2284CB178(uint64_t a1)
{
  v2 = sub_2284CCE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CB1B4(uint64_t a1)
{
  v2 = sub_2284CCE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProtectedNotificationContentState.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2284CD030(0, &qword_27D83FE68, sub_2284CCE1C, &type metadata for ProtectedNotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCE1C();
  sub_22855E31C();
  v12 = *v3;
  v13 = v3[1];
  v23 = 0;
  sub_22855E08C();
  if (!v2)
  {
    v14 = type metadata accessor for ProtectedNotificationContentState(0);
    v15 = *(v14 + 20);
    v22 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50);
    sub_22855E0CC();
    v16 = (v3 + *(v14 + 24));
    v17 = *v16;
    v18 = v16[1];
    v21 = 2;
    sub_22855E08C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t ProtectedNotificationContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_22855C1DC();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE78, sub_2284CCE1C, &type metadata for ProtectedNotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v37 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = type metadata accessor for ProtectedNotificationContentState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCE1C();
  v38 = v10;
  v16 = v39;
  sub_22855E30C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v39 = a1;
  v18 = v34;
  v17 = v35;
  v32 = v14;
  v19 = v36;
  v20 = v37;
  v42 = 0;
  v21 = sub_22855DFFC();
  v22 = v32;
  *v32 = v21;
  v22[1] = v23;
  v31[1] = v23;
  v41 = 1;
  sub_2284CCDD8(&qword_27D83FE60);
  v24 = v6;
  sub_22855E03C();
  v25 = v32;
  (*(v17 + 32))(v32 + *(v11 + 20), v24, v19);
  v40 = 2;
  v26 = sub_22855DFFC();
  v28 = v27;
  (*(v18 + 8))(v38, v20);
  v29 = (v25 + *(v11 + 24));
  *v29 = v26;
  v29[1] = v28;
  sub_2284CCE70(v25, v33, type metadata accessor for ProtectedNotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return sub_2284CCED8(v25, type metadata accessor for ProtectedNotificationContentState);
}

uint64_t sub_2284CB814(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_2284CB8CC(uint64_t a1)
{
  v3 = v1;
  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v4 = *(a1 + 20);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70);
  v5 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v5);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v3 + *(a1 + 24)), *(v3 + *(a1 + 24) + 8));
  return v7;
}

uint64_t UnprotectedNotificationContentState.init(identifier:uuid:hasGeneratedLocally:isAcknowledged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for UnprotectedNotificationContentState(0);
  v11 = v10[5];
  v12 = sub_22855C1DC();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[6]] = a4;
  a6[v10[7]] = a5;
  return result;
}

unint64_t sub_2284CBAC4()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x776F6E6B63417369;
  }

  if (*v0)
  {
    v1 = 1684632949;
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

uint64_t sub_2284CBB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284CDD64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2284CBB80(uint64_t a1)
{
  v2 = sub_2284CCFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CBBBC(uint64_t a1)
{
  v2 = sub_2284CCFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnprotectedNotificationContentState.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2284CD030(0, &qword_27D83FE80, sub_2284CCFDC, &type metadata for UnprotectedNotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCFDC();
  sub_22855E31C();
  v12 = *v3;
  v13 = v3[1];
  v23 = 0;
  sub_22855E08C();
  if (!v2)
  {
    v14 = type metadata accessor for UnprotectedNotificationContentState(0);
    v15 = v14[5];
    v22 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50);
    sub_22855E0CC();
    v16 = *(v3 + v14[6]);
    v21 = 2;
    sub_22855E09C();
    v17 = *(v3 + v14[7]);
    v20 = 3;
    sub_22855E09C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t UnprotectedNotificationContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_22855C1DC();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE90, sub_2284CCFDC, &type metadata for UnprotectedNotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v32 = v7;
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for UnprotectedNotificationContentState(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCFDC();
  v31 = v10;
  v16 = v33;
  sub_22855E30C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v28;
  v18 = v29;
  v33 = a1;
  v19 = v30;
  v37 = 0;
  v20 = v14;
  *v14 = sub_22855DFFC();
  v14[1] = v21;
  v26 = v21;
  v36 = 1;
  sub_2284CCDD8(&qword_27D83FE60);
  sub_22855E03C();
  (*(v18 + 32))(v14 + v11[5], v6, v19);
  v35 = 2;
  *(v14 + v11[6]) = sub_22855E00C() & 1;
  v34 = 3;
  v22 = sub_22855E00C();
  v23 = v33;
  v24 = v22;
  (*(v17 + 8))(v31, v32);
  *(v20 + v11[7]) = v24 & 1;
  sub_2284CCE70(v20, v27, type metadata accessor for UnprotectedNotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_2284CCED8(v20, type metadata accessor for UnprotectedNotificationContentState);
}

uint64_t NotificationContentState.init(protected:unprotected:)@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ProtectedNotificationContentState(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for UnprotectedNotificationContentState(0);
  v9 = v8[5];
  if (sub_22855C1AC())
  {
    v10 = type metadata accessor for NotificationContentState(0);
    v11 = v10[5];
    v12 = sub_22855C1DC();
    v25 = *(v12 - 8);
    v26 = v12;
    v27 = v11;
    (*(v25 + 16))(&a3[v11], &a1[v7]);
    v13 = *a1;
    v14 = *(a1 + 1);
    if (*a1 == *a2 && v14 == a2[1] || (v15 = *a1, v16 = *(a1 + 1), (sub_22855E15C() & 1) != 0))
    {
      *a3 = v13;
      *(a3 + 1) = v14;
      v17 = &a1[*(v6 + 24)];
      v19 = *v17;
      v18 = *(v17 + 1);

      sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
      v20 = &a3[v10[6]];
      *v20 = v19;
      *(v20 + 1) = v18;
      a3[v10[7]] = *(a2 + v8[6]);
      v21 = *(a2 + v8[7]);
      result = sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
      a3[v10[8]] = v21;
    }

    else
    {
      sub_2284CD098();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
      sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
      return (*(v25 + 8))(&a3[v27], v26);
    }
  }

  else
  {
    sub_2284CD098();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
    return sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
  }

  return result;
}

uint64_t NotificationContentState.init(protected:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for ProtectedNotificationContentState(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnprotectedNotificationContentState(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *(v4 + 28);
  v19 = v9[7];
  v20 = sub_22855C1DC();
  (*(*(v20 - 8) + 16))(&v15[v19], &a1[v18], v20);
  *v15 = v16;
  *(v15 + 1) = v17;
  v15[v9[8]] = 1;
  v15[v9[9]] = 0;
  sub_2284CCE70(a1, v7, type metadata accessor for ProtectedNotificationContentState);
  sub_2284CCE70(v15, v13, type metadata accessor for UnprotectedNotificationContentState);

  NotificationContentState.init(protected:unprotected:)(v7, v13, v23);
  sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
  return sub_2284CCED8(v15, type metadata accessor for UnprotectedNotificationContentState);
}

uint64_t NotificationContentState.dateFromContentState()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NotificationContentState(0);
  if (sub_2284CCBBC(*(v1 + *(v3 + 24)), *(v1 + *(v3 + 24) + 8)))
  {
    sub_22855C0BC();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_22855C16C();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

Swift::Bool __swiftcall NotificationContentState.shouldGenerateNotification(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for NotificationContentState(0);
  if (object && ((v5 = (v1 + v4[6]), *v5 == countAndFlagsBits) ? (v6 = v5[1] == object) : (v6 = 0), v6 || (v7 = v4, v8 = *v5, v9 = sub_22855E15C(), v4 = v7, (v9 & 1) != 0)))
  {
    if (*(v1 + v4[8]))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v1 + v4[7]) ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall NotificationContentState.shouldRemoveNotification(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for NotificationContentState(0);
  if (object && ((v5 = (v1 + *(v4 + 24)), *v5 == countAndFlagsBits) ? (v6 = v5[1] == object) : (v6 = 0), v6 || (v7 = v4, v8 = *v5, v9 = sub_22855E15C(), v4 = v7, (v9 & 1) != 0)))
  {
    return *(v1 + *(v4 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t Optional<A>.shouldGenerateNotification(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2284B7804(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CCE70(v3, v9, sub_2284B7804);
  v10 = type metadata accessor for NotificationContentState(0);
  v11 = 1;
  if ((*(*(v10 - 1) + 48))(v9, 1, v10) == 1)
  {
    v12 = sub_2284B7804;
  }

  else
  {
    v12 = type metadata accessor for NotificationContentState;
    if (a2)
    {
      v13 = &v9[v10[6]];
      v14 = *v13 == a1 && *(v13 + 1) == a2;
      if (v14 || (v15 = sub_22855E15C(), v12 = type metadata accessor for NotificationContentState, (v15 & 1) != 0))
      {
        v12 = type metadata accessor for NotificationContentState;
        if (v9[v10[8]])
        {
          v11 = 0;
        }

        else
        {
          v11 = v9[v10[7]] ^ 1;
          v12 = type metadata accessor for NotificationContentState;
        }
      }
    }
  }

  sub_2284CCED8(v9, v12);
  return v11 & 1;
}

uint64_t Optional<A>.shouldRemoveNotification(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2284B7804(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2284B7804;
  sub_2284CCE70(v3, v9, sub_2284B7804);
  v11 = type metadata accessor for NotificationContentState(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    a2 = 0;
  }

  else
  {
    if (a2)
    {
      v12 = &v9[*(v11 + 24)];
      v13 = *v12 == a1 && *(v12 + 1) == a2;
      if (!v13 && (sub_22855E15C() & 1) == 0)
      {
        v10 = type metadata accessor for NotificationContentState;
        a2 = 0;
        goto LABEL_11;
      }

      a2 = v9[*(v11 + 32)];
    }

    v10 = type metadata accessor for NotificationContentState;
  }

LABEL_11:
  sub_2284CCED8(v9, v10);
  return a2;
}

BOOL sub_2284CCBBC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22855DC5C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t _s14HealthPlatform24NotificationContentStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22855E15C()) && (v5 = type metadata accessor for NotificationContentState(0), v6 = v5[5], (sub_22855C1AC()) && ((v7 = v5[6], v8 = *(a1 + v7), v9 = *(a1 + v7 + 8), v10 = (a2 + v7), v8 == *v10) ? (v11 = v9 == v10[1]) : (v11 = 0), (v11 || (sub_22855E15C()) && *(a1 + v5[7]) == *(a2 + v5[7])))
  {
    v12 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_2284CCD84()
{
  result = qword_27D83FE48;
  if (!qword_27D83FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE48);
  }

  return result;
}

uint64_t sub_2284CCDD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22855C1DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284CCE1C()
{
  result = qword_27D83FE70;
  if (!qword_27D83FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE70);
  }

  return result;
}

uint64_t sub_2284CCE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284CCED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14HealthPlatform35UnprotectedNotificationContentStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22855E15C()) && (v5 = type metadata accessor for UnprotectedNotificationContentState(0), v6 = v5[5], (sub_22855C1AC()) && *(a1 + v5[6]) == *(a2 + v5[6]))
  {
    v7 = *(a1 + v5[7]) ^ *(a2 + v5[7]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_2284CCFDC()
{
  result = qword_27D83FE88;
  if (!qword_27D83FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE88);
  }

  return result;
}

void sub_2284CD030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2284CD098()
{
  result = qword_27D83FE98;
  if (!qword_27D83FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE98);
  }

  return result;
}

unint64_t sub_2284CD0F0()
{
  result = qword_27D83FEA0;
  if (!qword_27D83FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEA0);
  }

  return result;
}

uint64_t sub_2284CD16C()
{
  result = sub_22855C1DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2284CD22C()
{
  result = sub_22855C1DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22855C1DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C1DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2284CD420()
{
  result = sub_22855C1DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnprotectedNotificationContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnprotectedNotificationContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NotificationContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2284CD760()
{
  result = qword_27D83FEA8;
  if (!qword_27D83FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEA8);
  }

  return result;
}

unint64_t sub_2284CD7B8()
{
  result = qword_27D83FEB0;
  if (!qword_27D83FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEB0);
  }

  return result;
}

unint64_t sub_2284CD810()
{
  result = qword_27D83FEB8;
  if (!qword_27D83FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEB8);
  }

  return result;
}

unint64_t sub_2284CD868()
{
  result = qword_27D83FEC0;
  if (!qword_27D83FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEC0);
  }

  return result;
}

unint64_t sub_2284CD8C0()
{
  result = qword_27D83FEC8;
  if (!qword_27D83FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEC8);
  }

  return result;
}

unint64_t sub_2284CD918()
{
  result = qword_27D83FED0;
  if (!qword_27D83FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FED0);
  }

  return result;
}

unint64_t sub_2284CD970()
{
  result = qword_27D83FED8;
  if (!qword_27D83FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FED8);
  }

  return result;
}

unint64_t sub_2284CD9C8()
{
  result = qword_27D83FEE0;
  if (!qword_27D83FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEE0);
  }

  return result;
}

unint64_t sub_2284CDA20()
{
  result = qword_27D83FEE8;
  if (!qword_27D83FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEE8);
  }

  return result;
}

uint64_t sub_2284CDA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000228571670 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F6E6B63417369 && a2 == 0xEE0064656764656CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2284CDC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t sub_2284CDD64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000228571670 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6E6B63417369 && a2 == 0xEE0064656764656CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_2284CDEE0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

HealthPlatform::SharableModelVersion __swiftcall SharableModelVersion.init(latestSupported:minimumSupported:)(Swift::Int latestSupported, Swift::Int minimumSupported)
{
  v3 = minimumSupported;
  v4 = latestSupported;
  v5 = v2;
  if (latestSupported < minimumSupported)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D68C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315650;
      v15 = v10;
      sub_2284CF860();
      v11 = sub_22855D1BC();
      v13 = sub_2283F8938(v11, v12, &v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v4;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v3;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%s]: error: Malformed version with %ld < %ld, returning false version", v9, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    v4 = -1;
    v3 = -1;
  }

  *v5 = v4;
  v5[1] = v3;
  result.minimumSupported = minimumSupported;
  result.latestSupported = latestSupported;
  return result;
}

uint64_t PluginSharableModel.init(identifier:version:authorizationIdentifiers:objectTypes:data:sourceTimeZone:sourceLocale:sharedSummary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a7;
  v53 = a8;
  v49 = a5;
  v50 = a6;
  v47 = a2;
  v48 = a4;
  v56 = a11;
  v51 = a10;
  v45 = a1;
  v46 = MEMORY[0x277CC9788];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v44 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = sub_22855C29C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  v25 = a3[1];
  v26 = type metadata accessor for PluginSharableModel();
  v27 = *(v26 + 40);
  v28 = sub_22855C30C();
  (*(*(v28 - 8) + 56))(&a9[v27], 1, 1, v28);
  v29 = *(v26 + 44);
  v54 = *(v20 + 56);
  v55 = v29;
  v54(&a9[v29], 1, 1, v19);
  v30 = v47;
  v31 = v48;
  *a9 = v45;
  *(a9 + 1) = v30;
  *(a9 + 2) = v24;
  *(a9 + 3) = v25;
  v32 = v49;
  v33 = v50;
  *(a9 + 4) = v31;
  *(a9 + 5) = v32;
  v34 = v52;
  *(a9 + 6) = v33;
  *(a9 + 7) = v34;
  v35 = &a9[v27];
  v36 = v53;
  sub_2284B7200(v53, v35);
  v37 = v51;
  sub_2284CF9C8(v51, v18, &qword_280DECD58, v46);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v38 = MEMORY[0x277CC9788];
    sub_2284CF958(v37, &qword_280DECD58, MEMORY[0x277CC9788]);
    sub_2284CF958(v36, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284CF958(v18, &qword_280DECD58, v38);
    v39 = v55;
    sub_2284CF958(&a9[v55], &qword_280DECD58, v38);
    result = (v54)(&a9[v39], 1, 1, v19);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_22855C1FC();
    v41 = v44;
    sub_22855C1EC();
    v42 = MEMORY[0x277CC9788];
    sub_2284CF958(v37, &qword_280DECD58, MEMORY[0x277CC9788]);
    sub_2284CF958(v36, &qword_280DEE788, MEMORY[0x277CC9A70]);
    (*(v20 + 8))(v23, v19);
    v54(v41, 0, 1, v19);
    result = sub_2284CFA48(v41, &a9[v55], &qword_280DECD58, v42);
  }

  *(a9 + 8) = v56;
  return result;
}

uint64_t PluginSharableModel.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 PluginSharableModel.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PluginSharableModel.version.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t PluginSharableModel.authorizationIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t PluginSharableModel.objectTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t PluginSharableModel.data.getter()
{
  v1 = *(v0 + 48);
  sub_22842B3E0(v1, *(v0 + 56));
  return v1;
}

uint64_t PluginSharableModel.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B38C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void *PluginSharableModel.sharedSummary.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

int64x2_t static PluginSharableModel.currentCodeVersion.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  return result;
}

uint64_t PluginSharableModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C29C();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - v10;
  v11 = sub_22855C30C();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], v7);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v47 - v16;
  v17 = sub_22855C4CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v23 = v2[1];
  sub_22855D20C();
  v24 = v2[3];
  MEMORY[0x22AABA2B0](v2[2]);
  MEMORY[0x22AABA2B0](v24);
  v54 = v2;
  v25 = v2[4];
  MEMORY[0x22AABA2B0](*(v25 + 16));
  v26 = *(v25 + 16);
  if (v26)
  {
    v29 = *(v18 + 16);
    v27 = v18 + 16;
    v28 = v29;
    v30 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v31 = *(v27 + 56);
    do
    {
      v28(v21, v30, v17);
      sub_2284D0C54(&qword_280DE9F70, MEMORY[0x277D11300]);
      sub_22855D14C();
      (*(v27 - 8))(v21, v17);
      v30 += v31;
      --v26;
    }

    while (v26);
  }

  v32 = v54;
  sub_2284BF160(a1, v54[5]);
  v33 = v32[6];
  v34 = v32[7];
  sub_22855C0AC();
  v35 = v32[8];
  sub_22855E24C();
  if (v35)
  {
    v36 = v35;
    sub_22855D9BC();
  }

  v37 = v56;
  v39 = v51;
  v38 = v52;
  v40 = type metadata accessor for PluginSharableModel();
  v41 = v50;
  sub_2284CF9C8(v32 + *(v40 + 40), v50, &qword_280DEE788, MEMORY[0x277CC9A70]);
  if ((*(v39 + 48))(v41, 1, v38) == 1)
  {
    sub_22855E24C();
  }

  else
  {
    v42 = v48;
    (*(v39 + 32))(v48, v41, v38);
    sub_22855E24C();
    sub_2284D0C54(&qword_280DECD48, MEMORY[0x277CC9A70]);
    sub_22855D14C();
    (*(v39 + 8))(v42, v38);
  }

  v43 = v53;
  sub_2284CF9C8(v32 + *(v40 + 44), v53, &qword_280DECD58, MEMORY[0x277CC9788]);
  v44 = v55;
  if ((*(v55 + 48))(v43, 1, v37) == 1)
  {
    return sub_22855E24C();
  }

  v46 = v49;
  (*(v44 + 32))(v49, v43, v37);
  sub_22855E24C();
  sub_2284D0C54(&qword_280DECD60, MEMORY[0x277CC9788]);
  sub_22855D14C();
  return (*(v44 + 8))(v46, v37);
}

uint64_t PluginSharableModel.hashValue.getter()
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_2284CEF34()
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_2284CEF78()
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v1);
  return sub_22855E27C();
}

Swift::Bool __swiftcall SharableModelVersion.isCompatible(with:)(HealthPlatform::SharableModelVersion_optional with)
{
  if (*(with.value.latestSupported + 16))
  {
    return 0;
  }

  v3 = *(with.value.latestSupported + 8);
  return v3 >= v1[1] && *v1 >= v3;
}

unint64_t SharableModelVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855DC6C();

  v3 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285716B0);
  v4 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v4);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_2284CF144()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x755374736574616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2284CF190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x755374736574616CLL && a2 == 0xEF646574726F7070;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002285716D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284CF27C(uint64_t a1)
{
  v2 = sub_2284D050C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CF2B8(uint64_t a1)
{
  v2 = sub_2284D050C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharableModelVersion.encode(to:)(void *a1)
{
  sub_2284D0560(0, &qword_280DE9008, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D050C();
  sub_22855E31C();
  v15 = 0;
  sub_22855E0BC();
  if (!v2)
  {
    v14 = 1;
    sub_22855E0BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SharableModelVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x22AABA2B0](*v0);
  return MEMORY[0x22AABA2B0](v1);
}

uint64_t SharableModelVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t SharableModelVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2284D0560(0, &qword_27D83FEF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D050C();
  sub_22855E30C();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_22855E02C();
    v16 = 1;
    v14 = sub_22855E02C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284CF6E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t sub_2284CF73C()
{
  v1 = v0[1];
  MEMORY[0x22AABA2B0](*v0);
  return MEMORY[0x22AABA2B0](v1);
}

uint64_t sub_2284CF778()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

unint64_t sub_2284CF860()
{
  result = qword_27D83FEF0;
  if (!qword_27D83FEF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FEF0);
  }

  return result;
}

uint64_t type metadata accessor for PluginSharableModel()
{
  result = qword_280DEE5A0;
  if (!qword_280DEE5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2284CF8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284CF958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2284CF8F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2284CF9C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284CF8F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2284CFA48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284CF8F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s14HealthPlatform25PluginSharableModelChangeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          sub_2284D0B58(*a2, 1u);
          sub_2284D0B58(v2, 1u);
          LOBYTE(v6) = sub_2284BC94C(v2, v4);
          sub_2284D0B6C(v2, 1u);
          v7 = v4;
          v8 = 1;
LABEL_16:
          sub_2284D0B6C(v7, v8);
          return v6 & 1;
        }
      }

      else if (v5 == 2)
      {
        LOBYTE(v6) = _s14HealthPlatform22SharableModelPredicateO2eeoiySbAC_ACtFZ_0(*a1, *a2);
        sub_2284D0B58(v4, 2u);
        sub_2284D0B58(v2, 2u);
        sub_2284D0B6C(v2, 2u);
        v7 = v4;
        v8 = 2;
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 8))
    {
      sub_2284D0B58(*a2, 0);
      sub_2284D0B58(v2, 0);
      v6 = sub_2284BC94C(v2, v4);
      sub_2284D0B6C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v3 == 3)
  {
    if (v5 == 3)
    {
      sub_2284D0B58(*a2, 3u);
      sub_2284D0B58(v2, 3u);
      LOBYTE(v6) = sub_2284BCB6C(v2, v4);
      sub_2284D0B6C(v2, 3u);
      v7 = v4;
      v8 = 3;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v3 == 4)
  {
    if (v5 == 4)
    {
      sub_2284D0B58(*a2, 4u);
      sub_2284D0B58(v2, 4u);
      LOBYTE(v6) = sub_2284BC94C(v2, v4);
      sub_2284D0B6C(v2, 4u);
      v7 = v4;
      v8 = 4;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v5 != 5 || v4 != 0)
  {
LABEL_21:
    sub_2284D0B58(*a2, *(a2 + 8));
    sub_2284D0B58(v2, v3);
    sub_2284D0B6C(v2, v3);
    sub_2284D0B6C(v4, v5);
    return 0;
  }

  sub_2284D0B6C(*a1, 5u);
  sub_2284D0B6C(0, 5u);
  return 1;
}

BOOL _s14HealthPlatform19PluginSharableModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22855C29C();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC9788];
  v8 = MEMORY[0x277D83D88];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  sub_2284D0B80(0, &qword_280DECD50, &qword_280DECD58, v7);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v58 - v16;
  v17 = sub_22855C30C();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277CC9A70];
  sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], v8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v58 - v24;
  sub_2284D0B80(0, &qword_280DECD40, &qword_280DEE788, v21);
  v27 = v26;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    if ((sub_2284BCB80(a1[4], a2[4]) & 1) == 0 || (sub_2284BCBC8(a1[5], a2[5]) & 1) == 0 || (sub_22845BED4(a1[6], a1[7], a2[6], a2[7]) & 1) == 0)
    {
      return 0;
    }

    v32 = a2[8];
    if (a1[8])
    {
      if (!v32)
      {
        return 0;
      }

      v59 = a1[8];
      v60 = sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
      v58 = v32;
      v59 = v59;
      v33 = sub_22855D9AC();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v32)
    {
      return 0;
    }

    v34 = type metadata accessor for PluginSharableModel();
    v35 = v34[10];
    v59 = v34;
    v60 = v35;
    v36 = *(v27 + 48);
    v37 = MEMORY[0x277CC9A70];
    sub_2284CF9C8(a1 + v35, v30, &qword_280DEE788, MEMORY[0x277CC9A70]);
    v38 = a2 + v60;
    v60 = v36;
    sub_2284CF9C8(v38, &v30[v36], &qword_280DEE788, v37);
    v39 = *(v65 + 48);
    if (v39(v30, 1, v17) == 1)
    {
      if (v39(&v30[v60], 1, v17) == 1)
      {
        sub_2284CF958(v30, &qword_280DEE788, MEMORY[0x277CC9A70]);
LABEL_21:
        v46 = v59[11];
        v47 = *(v14 + 48);
        v48 = MEMORY[0x277CC9788];
        v49 = a1 + v46;
        v50 = v62;
        sub_2284CF9C8(v49, v62, &qword_280DECD58, MEMORY[0x277CC9788]);
        sub_2284CF9C8(a2 + v46, v50 + v47, &qword_280DECD58, v48);
        v52 = v63;
        v51 = v64;
        v53 = *(v63 + 48);
        if (v53(v50, 1, v64) == 1)
        {
          if (v53(v50 + v47, 1, v51) == 1)
          {
            sub_2284CF958(v50, &qword_280DECD58, MEMORY[0x277CC9788]);
            return 1;
          }

          goto LABEL_26;
        }

        sub_2284CF9C8(v50, v12, &qword_280DECD58, MEMORY[0x277CC9788]);
        if (v53(v50 + v47, 1, v51) == 1)
        {
          (*(v52 + 8))(v12, v51);
LABEL_26:
          v40 = &qword_280DECD50;
          v41 = &qword_280DECD58;
          v42 = MEMORY[0x277CC9788];
          v43 = v50;
          goto LABEL_27;
        }

        v54 = v50 + v47;
        v55 = v61;
        (*(v52 + 32))(v61, v54, v51);
        sub_2284D0C54(&qword_27D83FF10, MEMORY[0x277CC9788]);
        v56 = sub_22855D16C();
        v57 = *(v52 + 8);
        v57(v55, v51);
        v57(v12, v51);
        sub_2284CF958(v50, &qword_280DECD58, MEMORY[0x277CC9788]);
        return (v56 & 1) != 0;
      }
    }

    else
    {
      sub_2284CF9C8(v30, v25, &qword_280DEE788, MEMORY[0x277CC9A70]);
      if (v39(&v30[v60], 1, v17) != 1)
      {
        v44 = v65;
        (*(v65 + 32))(v20, &v30[v60], v17);
        sub_2284D0C54(&qword_27D83FF18, MEMORY[0x277CC9A70]);
        LODWORD(v60) = sub_22855D16C();
        v45 = *(v44 + 8);
        v45(v20, v17);
        v45(v25, v17);
        sub_2284CF958(v30, &qword_280DEE788, MEMORY[0x277CC9A70]);
        if ((v60 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_21;
      }

      (*(v65 + 8))(v25, v17);
    }

    v40 = &qword_280DECD40;
    v41 = &qword_280DEE788;
    v42 = MEMORY[0x277CC9A70];
    v43 = v30;
LABEL_27:
    sub_2284D0BF8(v43, v40, v41, v42);
    return 0;
  }

  return result;
}

unint64_t sub_2284D050C()
{
  result = qword_280DEBC58;
  if (!qword_280DEBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC58);
  }

  return result;
}

void sub_2284D0560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284D050C();
    v7 = a3(a1, &type metadata for SharableModelVersion.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2284D0610()
{
  result = qword_27D83FF00;
  if (!qword_27D83FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF00);
  }

  return result;
}

void sub_2284D068C()
{
  sub_2284CF8F4(319, &qword_280DE9600, MEMORY[0x277D11300], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2284D0860(319, &qword_280DE95B8, &qword_280DEE7B8, 0x277CCD720, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2284D0860(319, &qword_280DE9488, &qword_280DE9490, 0x277CCD928, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2284CF8F4(319, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2284CF8F4(319, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2284D0860(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharableModelVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharableModelVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform25PluginSharableModelChangeO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2284D098C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2284D09D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2284D0A18(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_2284D0A54()
{
  result = qword_27D83FF08;
  if (!qword_27D83FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF08);
  }

  return result;
}

unint64_t sub_2284D0AAC()
{
  result = qword_280DEBC48;
  if (!qword_280DEBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC48);
  }

  return result;
}

unint64_t sub_2284D0B04()
{
  result = qword_280DEBC50;
  if (!qword_280DEBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC50);
  }

  return result;
}

uint64_t sub_2284D0B58(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2284D0B6C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

void sub_2284D0B80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2284CF8F4(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2284D0BF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284D0B80(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2284D0C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContentKind.Group.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_2284D0CD4()
{
  qword_280DEE750 = 0x73656369746F6ELL;
  qword_280DEE758 = 0xE700000000000000;
  qword_280DEE760 = &unk_283B7EA68;
}

uint64_t static ContentKind.Group.notices.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE758;
  v3 = qword_280DEE760;
  *a1 = qword_280DEE750;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static ContentKind.Group.notices.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE750 = v1;
  *&qword_280DEE758 = v3;
}

uint64_t (*static ContentKind.Group.notices.modify())()
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2284D0EBC@<X0>(void *a1@<X8>)
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE758;
  v3 = qword_280DEE760;
  *a1 = qword_280DEE750;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_2284D0F4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEE748;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE750 = v2;
  qword_280DEE758 = v1;
  qword_280DEE760 = v3;
}

void sub_2284D0FFC()
{
  qword_280DEEC68 = 0x6867696C68676968;
  qword_280DEEC70 = 0xEA00000000007374;
  qword_280DEEC78 = &unk_283B7EB80;
}

uint64_t static ContentKind.Group.highlights.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEEC70;
  v3 = qword_280DEEC78;
  *a1 = qword_280DEEC68;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static ContentKind.Group.highlights.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEEC68 = v1;
  *&qword_280DEEC70 = v3;
}

uint64_t (*static ContentKind.Group.highlights.modify())()
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2284D11E8@<X0>(void *a1@<X8>)
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEEC70;
  v3 = qword_280DEEC78;
  *a1 = qword_280DEEC68;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_2284D1278(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEEC60;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEEC68 = v2;
  qword_280DEEC70 = v1;
  qword_280DEEC78 = v3;
}

void sub_2284D1328()
{
  qword_280DEE770 = 0x616964656DLL;
  qword_280DEE778 = 0xE500000000000000;
  qword_280DEE780 = &unk_283B7F460;
}

uint64_t static ContentKind.Group.media.getter@<X0>(void *a1@<X8>)
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE778;
  v3 = qword_280DEE780;
  *a1 = qword_280DEE770;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static ContentKind.Group.media.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE770 = v1;
  *&qword_280DEE778 = v3;
}

uint64_t (*static ContentKind.Group.media.modify())()
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2284D150C@<X0>(void *a1@<X8>)
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE778;
  v3 = qword_280DEE780;
  *a1 = qword_280DEE770;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_2284D159C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEE768;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE770 = v2;
  qword_280DEE778 = v1;
  qword_280DEE780 = v3;
}

uint64_t sub_2284D164C()
{
  sub_22844C284(0, &qword_280DEE3C0, &type metadata for ContentKind.Group, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228560570;
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280DEE758;
  v2 = qword_280DEE760;
  *(v0 + 32) = qword_280DEE750;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280DEE768;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280DEE778;
  v5 = qword_280DEE780;
  *(v0 + 56) = qword_280DEE770;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  off_280DEE738 = v0;
}

uint64_t static ContentKind.groups.getter()
{
  if (qword_280DEE730 != -1)
  {
    swift_once();
  }
}

uint64_t ContentKind.groups.getter()
{
  v1 = *v0;
  if (qword_280DEE730 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_280DEE738;
  v3 = *(off_280DEE738 + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = off_280DEE738 + 48;
  v6 = MEMORY[0x277D84F90];
  v18 = off_280DEE738 + 48;
  do
  {
    v19 = v6;
    v7 = &v5[24 * v4];
    for (i = v4; ; ++i)
    {
      if (i >= v2[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v4 = i + 1;
      v11 = *v7;

      swift_bridgeObjectRetain_n();
      v12 = sub_228425D94(v1, v11);

      if (v12)
      {
        break;
      }

      v7 += 3;
      if (v3 == v4)
      {
        return v19;
      }
    }

    v6 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2284276F0(0, *(v19 + 16) + 1, 1);
      v6 = v19;
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      sub_2284276F0((v13 > 1), v14 + 1, 1);
      v15 = v14 + 1;
      v6 = v19;
    }

    *(v6 + 16) = v15;
    v16 = (v6 + 24 * v14);
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v11;
    v5 = v18;
  }

  while (v3 - 1 != i);
  return v6;
}

uint64_t sub_2284D19C4()
{
  v1 = *v0;
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284D1A2C()
{
  v2 = *v0;
  ContentKind.rawValue.getter();
  sub_22855D20C();
}

unint64_t sub_2284D1A9C@<X0>(unint64_t *a1@<X8>)
{
  result = ContentKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2284D1B88()
{
  result = qword_27D83FF20;
  if (!qword_27D83FF20)
  {
    sub_22844C284(255, &qword_27D83FF28, &type metadata for ContentKind, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF20);
  }

  return result;
}

uint64_t sub_2284D1C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2284D1C4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2284D1C9C()
{
  result = qword_27D83FF30;
  if (!qword_27D83FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF30);
  }

  return result;
}

void sub_2284D1CF0(uint64_t a1, void *a2)
{
  sub_228401A70(0, &qword_280DE9F90, MEMORY[0x277D11290], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_22855C37C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v14 = MEMORY[0x277D11290];
    v15 = MEMORY[0x277D83D88];
    sub_2284D3398(a1, &qword_280DE9F90, MEMORY[0x277D11290], MEMORY[0x277D83D88], sub_228401A70);
    sub_22845A908(a2, v8);

    sub_2284D3398(v8, &qword_280DE9F90, v14, v15, sub_228401A70);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_22845ADB4(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }
}

void sub_2284D1F1C(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = *v3;
  if (a2 == -1)
  {
    v9 = sub_2283FB154(a3);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_228448780();
        v14 = v17;
      }

      sub_22845D520(*(*(v14 + 56) + 16 * v11), *(*(v14 + 56) + 16 * v11 + 8));
      sub_2284D2A38(v11, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_22845B074(a1, a2 & 1, a3, v8);

    *v4 = v16;
  }
}

uint64_t sub_2284D203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (a1 == 1)
  {
    v7 = sub_2283F6D18(a2, a3);
    v9 = v8;

    if (v9)
    {
      v11 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2284488F8();
        v13 = v19;
      }

      v14 = *(*(v13 + 48) + 16 * v7 + 8);

      v15 = *(*(v13 + 56) + 8 * v7);

      result = sub_2284D2BD0(v7, v13);
      *v4 = v13;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_22845B1D0(a1, a2, a3, v18);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_2284D2138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2283FAB3C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22845B6EC(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2284D3398(a1, &qword_27D83FC08, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_22846F4D0);
    sub_22845ABB8(a2, a3, v10);

    return sub_2284D3398(v10, &qword_27D83FC08, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_22846F4D0);
  }

  return result;
}

uint64_t PinnedContentManagerProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_2284013C0(MEMORY[0x277D84F90]);
  *(v2 + 24) = 0;
  *(v2 + 32) = v3;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t PinnedContentManagerProvider.__deallocating_deinit()
{
  sub_2284D3284(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D22FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22855E22C();

      sub_22855D20C();
      v14 = sub_22855E27C();

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
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
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

LABEL_4:
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

uint64_t sub_2284D24AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_22855E22C();

      sub_22855D20C();
      sub_22855D20C();
      v15 = sub_22855E27C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2684(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_22855D1AC();
      sub_22855E22C();
      v11 = v10;
      sub_22855D20C();
      v12 = sub_22855E27C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_22855C37C() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2888(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22855E22C();

      sub_22855D20C();
      v13 = sub_22855E27C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2A38(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22855D99C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v19 >= v20 + 1))
          {
            *v19 = *v20;
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
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2BD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22855E22C();

      sub_22855D20C();
      v13 = sub_22855E27C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2D80(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22855D99C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
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
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v6);
      sub_22855E22C();
      sub_22855BCDC();
      sub_22855D20C();

      result = sub_22855E27C();
      v13 = result & v7;
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
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v3;
        v19 = (v17 + 40 * v6);
        if (v3 != v6 || v18 >= v19 + 40)
        {
          v9 = *v19;
          v10 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v9;
          *(v18 + 16) = v10;
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

  return result;
}

uint64_t sub_2284D30C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22855E22C();

      sub_22855D20C();
      v15 = sub_22855E27C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
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

  return result;
}

uint64_t sub_2284D3284(uint64_t a1)
{
  sub_2284D32E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284D32E0()
{
  if (!qword_280DED2A8)
  {
    sub_2283F9B94(255, qword_280DED6C0);
    sub_2284034EC();
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED2A8);
    }
  }
}

uint64_t sub_2284D3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t Profile.hkProfileIdentifier.getter()
{
  v1 = v0;
  sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v2 = [v0 encodedHKProfileIdentifier];
  v3 = sub_22855C09C();
  v5 = v4;

  v6 = sub_22855D78C();
  sub_22842B38C(v3, v5);
  if (v6)
  {
    return v6;
  }

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000045, 0x80000002285717C0);
  v8 = [v1 encodedHKProfileIdentifier];
  v9 = sub_22855C09C();
  v11 = v10;

  v12 = sub_22855C07C();
  MEMORY[0x22AAB92A0](v12);

  sub_22842B38C(v9, v11);
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void Profile.hkProfileIdentifier.setter(NSObject *a1)
{
  v2 = a1;
  v25[3] = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v25];
  v4 = v25[0];
  if (v3)
  {
    v5 = sub_22855C09C();
    v7 = v6;

    v8 = sub_22855C08C();
    sub_22842B38C(v5, v7);
    [v1 setEncodedHKProfileIdentifier_];

    v9 = [v1 encodedHKProfileIdentifier];
    v10 = sub_22855C09C();
    v12 = v11;

    v13 = v12;
    v14 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        sub_22842B38C(v10, v13);
        if (v15 != v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_22842B38C(v10, v12);
      }
    }

    else
    {
      if (!v14)
      {
        sub_22842B38C(v10, v12);
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:

        v23 = *MEMORY[0x277D85DE8];
        return;
      }

      sub_22842B38C(v10, v12);
      if (v10 != v10 >> 32)
      {
        goto LABEL_17;
      }
    }

LABEL_12:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = v2;
    v2 = sub_22855CA8C();
    v19 = sub_22855D69C();

    if (os_log_type_enabled(v2, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_2283ED000, v2, v19, "Profile: received empty encodedHKProfileIdentifier for %@", v20, 0xCu);
      sub_22841DC98(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
      v18 = v2;
      v2 = v22;
    }

    goto LABEL_17;
  }

  v24 = v4;
  sub_22855BF3C();

  swift_willThrow();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000025, 0x8000000228571810);
  sub_2283F9B94(0, &qword_280DECFE0);
  sub_22855DDDC();
  sub_22855DEDC();
  __break(1u);
}

void (*Profile.hkProfileIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = Profile.hkProfileIdentifier.getter();
  return sub_2284D39EC;
}

void sub_2284D39EC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    Profile.hkProfileIdentifier.setter(v5);
  }

  else
  {
    Profile.hkProfileIdentifier.setter(v3);
  }
}

id static Profile.findOrCreate(_:in:)(void *a1, uint64_t a2)
{
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22840A70C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228560570;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_22840A7C8();
  *(v9 + 32) = 0xD000000000000010;
  *(v9 + 40) = 0x800000022856DA90;
  result = [a1 identifier];
  if (result)
  {
    v11 = result;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    *(v9 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v9 + 104) = sub_22840A81C();
    *(v9 + 72) = v11;
    v12 = sub_22855D62C();
    v13 = sub_228549C84(a2, v12);

    v14 = [a1 identifier];
    sub_22855C1BC();

    v15 = sub_22855C19C();
    (*(v5 + 8))(v8, v4);
    [v13 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(a1);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Profile.find(_:in:)(void *a1, unint64_t a2)
{
  sub_22840A70C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560570;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22840A7C8();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x800000022856DA90;
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    *(v4 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v4 + 104) = sub_22840A81C();
    *(v4 + 72) = v6;
    v7 = sub_22855D62C();
    v8 = sub_22843BE20(a2, v7, 1);

    return v8;
  }

  else
  {
    __break(1u);
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t Profile.__allocating_init(context:profileIdentifier:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_22855D17C();
  v13 = [v11 entityForName:v12 inManagedObjectContext:a1];

  if (v13)
  {
    v14 = [objc_allocWithZone(v3) initWithEntity:v13 insertIntoManagedObjectContext:a1];
    v15 = [a2 identifier];
    sub_22855C1BC();

    v16 = sub_22855C19C();
    (*(v7 + 8))(v10, v6);
    [v14 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(a2);
    return v14;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t HealthAppForegroundWorkManager.urgentWorkTimeoutInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v4 = sub_22855CFAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HealthAppForegroundWorkManager.__allocating_init(workRunner:urgentWorkTimeoutInterval:)(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)(a1, a2);
  return v7;
}

uint64_t HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v21 = sub_22855D81C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855D7BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState;
  sub_2283FA00C(0, &qword_280DE91B8);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v2 + v12) = v13;
  v20 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_queue;
  v14 = sub_2283FA06C();
  v19[1] = " profile identifier! ";
  v19[2] = v14;
  sub_22855CFDC();
  v24 = MEMORY[0x277D84F90];
  sub_2283FA190(&unk_280DED140, MEMORY[0x277D85230]);
  v15 = MEMORY[0x277D85230];
  sub_2283FA468(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED240, &qword_280DED250, v15);
  sub_22855DA9C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v21);
  *(v2 + v20) = sub_22855D84C();
  sub_2283FAB3C(v22, v2 + 16);
  v16 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v17 = sub_22855CFAC();
  (*(*(v17 - 8) + 32))(v3 + v16, v23, v17);
  return v3;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.start()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEC98);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12[0] = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Starting", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v11 + 8);
  sub_2284D47E0(&v11[4], v12);

  os_unfair_lock_unlock(v11 + 8);
}

void sub_2284D4638(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_22855CFAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v13 = 0;
LABEL_8:
    *a3 = v13;
    return;
  }

  *a1 = 1;
  if (*(a1 + 8))
  {
    v14 = *(a1 + 8);
  }

  else
  {
    v15 = v10;
    sub_2283F9B10(a2 + 16, v21);
    (*(v8 + 16))(v12, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v15);
    v16 = type metadata accessor for ForegroundTask(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v14 = sub_2283F9BF0(v21, v12);
    *(a1 + 8) = v14;
  }

  v19 = *(v14 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);

  os_unfair_lock_lock((v19 + 64));
  sub_2283FBBE4((v19 + 16));
  if (!v3)
  {
    os_unfair_lock_unlock((v19 + 64));

    v13 = 1;
    goto LABEL_8;
  }

  os_unfair_lock_unlock((v19 + 64));
  __break(1u);
}

uint64_t sub_2284D47FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
    os_unfair_lock_lock(v1 + 8);
    sub_2284D725C(&v1[4], v10);
    os_unfair_lock_unlock(v1 + 8);
    if (LOBYTE(v10[0]) == 1)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v2 = sub_22855CABC();
      __swift_project_value_buffer(v2, qword_280DEEC98);
      v3 = sub_22855CA8C();
      v4 = sub_22855D68C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v10[0] = v6;
        *v5 = 136446210;
        v7 = sub_22855E34C();
        v9 = sub_2283F8938(v7, v8, v10);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Start was forcefully triggered since it was unexpectedly not yet started.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x22AABAD40](v6, -1, -1);
        MEMORY[0x22AABAD40](v5, -1, -1);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.endForeground()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2284D4A18(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

void sub_2284D4A18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    v5 = *(a1 + 8);

    os_unfair_lock_lock(v4 + 16);
    sub_2284D71D8(&v4[4]);
    if (v1)
    {
      os_unfair_lock_unlock(v4 + 16);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v4 + 16);

      *(a1 + 8) = 0;
    }
  }
}

uint64_t HealthAppForegroundWorkManager.foregroundWithLegacyGeneration(completion:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2284D6E44(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

void sub_2284D4B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_22855CFAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v16 = *(a1 + 8);
  }

  else
  {
    sub_2283F9B10(a2 + 16, v23);
    (*(v12 + 16))(v15, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v11);
    v17 = type metadata accessor for ForegroundTask(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_2283F9BF0(v23, v15);
    *(a1 + 8) = v16;
  }

  v20 = sub_2284D4CC0(a3, a4);
  if (*a1 != 1)
  {
    goto LABEL_7;
  }

  v21 = *(v16 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v21 + 64));
  sub_2283FBBAC((v21 + 16));
  if (!v5)
  {
    os_unfair_lock_unlock((v21 + 64));
LABEL_7:

    *a5 = v20;
    return;
  }

  os_unfair_lock_unlock((v21 + 64));
  __break(1u);
}

id sub_2284D4CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v5 = *v2;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C1CC();
  sub_22855C17C();
  (*(v7 + 8))(v10, v6);
  v11 = sub_2283FAD3C(6);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2283FA468(0, &qword_280DE8EE8, sub_22847F574, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = sub_22855D17C();
  v19 = MEMORY[0x22AAB9260](v11, v13, v15, v17);
  v21 = v20;

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  sub_22847D860(inited);
  swift_setDeallocating();
  sub_2284D7110(inited + 32);
  v22 = objc_allocWithZone(MEMORY[0x277CCAC48]);
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2283FA190(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey);
  v23 = sub_22855D0DC();

  v24 = [v22 initWithParent:0 userInfo:v23];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v25 = sub_22855CABC();
  __swift_project_value_buffer(v25, qword_280DEEC98);

  v26 = v24;
  v27 = sub_22855CA8C();
  v28 = sub_22855D6AC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136446466;
    v40 = 91;
    v41 = 0xE100000000000000;
    v42[0] = v30;
    v31 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v31);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v32 = sub_2283F8938(v40, v41, v42);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = sub_2284D5F74();
    v35 = sub_2283F8938(v33, v34, v42);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_2283ED000, v27, v28, "%{public}s Requesting legacy generation with created progress %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v30, -1, -1);
    MEMORY[0x22AABAD40](v29, -1, -1);
  }

  v36 = *(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  MEMORY[0x28223BE20](v37);
  *(&v39 - 4) = v3;
  *(&v39 - 3) = a1;
  *(&v39 - 2) = v39;
  *(&v39 - 1) = v26;
  os_unfair_lock_lock(v36 + 16);
  sub_2284D716C(&v36[4]);
  os_unfair_lock_unlock(v36 + 16);
  return v26;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.cancelLegacyGeneration()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_2284D51D4();
  }

  os_unfair_lock_unlock((v1 + 32));
}

void sub_2284D51D4()
{
  v1 = *v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);

  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v10 = v6;
    v7 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v7);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v8 = sub_2283F8938(91, 0xE100000000000000, &v10);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v3, v4, "%{public}s Request to cancel legacy generation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v9 + 64));
  sub_2284D70AC((v9 + 16));

  os_unfair_lock_unlock((v9 + 64));
}

uint64_t HealthAppForegroundWorkManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);

  return v0;
}

uint64_t HealthAppForegroundWorkManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D553C()
{
  v0 = sub_22855CFAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DEEC98);

    v8 = sub_22855CA8C();
    v9 = sub_22855D68C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446466;
      v12 = sub_228403430();
      v14 = sub_2283F8938(v12, v13, &v18);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      (*(v1 + 16))(v4, v6 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval, v0);
      v15 = sub_22855D1BC();
      v17 = sub_2283F8938(v15, v16, &v18);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_2283ED000, v8, v9, "%{public}s Urgent work completion timed out: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v11, -1, -1);
      MEMORY[0x22AABAD40](v10, -1, -1);
    }

    sub_228402514();
  }

  return result;
}

void sub_2284D57B0(char a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v2 = sub_22855CABC();
    __swift_project_value_buffer(v2, qword_280DEEC98);

    v3 = sub_22855CA8C();
    v4 = sub_22855D6AC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446466;
      v7 = sub_228403430();
      v9 = sub_2283F8938(v7, v8, &v10);

      *(v5 + 4) = v9;
      *(v5 + 12) = 1024;
      *(v5 + 14) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v3, v4, "%{public}s Legacy generation completed: %{BOOL}d", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AABAD40](v6, -1, -1);
      MEMORY[0x22AABAD40](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2284D595C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_22855CFBC();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22855CFEC();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DEEC98);

  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136446210;
    aBlock = 91;
    v42 = 0xE100000000000000;
    v15 = sub_22855E34C();
    v34 = a1;
    MEMORY[0x22AAB92A0](v15);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v16 = sub_2283F8938(aBlock, v42, &v47);

    *(v13 + 4) = v16;
    a1 = v34;
    _os_log_impl(&dword_2283ED000, v11, v12, "%{public}s Cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABAD40](v14, -1, -1);
    MEMORY[0x22AABAD40](v13, -1, -1);
  }

  v17 = MEMORY[0x277D84F90];
  if ((*(a1 + 3) & 1) == 0)
  {

    v18 = sub_22855CA8C();
    v19 = sub_22855D6AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136446210;
      aBlock = 91;
      v42 = 0xE100000000000000;
      v22 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v22);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v23 = sub_2283F8938(aBlock, v42, &v47);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_2283ED000, v18, v19, "%{public}s Cancelled, but fire once has not completed, calling all the completion with success false", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    v24 = *(a1 + 8);
    v34 = *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v45 = sub_2284D71F4;
    v46 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_228401F54;
    v44 = &block_descriptor_63_0;
    v26 = _Block_copy(&aBlock);

    v27 = v35;
    sub_22855CFDC();
    v47 = v17;
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
    v28 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v28);
    v29 = v37;
    v30 = v40;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v27, v29, v26);
    _Block_release(v26);
    v31 = v29;
    v17 = MEMORY[0x277D84F90];
    (*(v39 + 8))(v31, v30);
    (*(v36 + 8))(v27, v38);
  }

  v32 = *(a1 + 8);

  *(a1 + 8) = v17;
  result = sub_228406468(a1);
  *(a1 + 1) = 1;
  return result;
}

uint64_t sub_2284D5F74()
{
  v1 = [v0 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2283FA190(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey);
  v2 = sub_22855D0EC();

  v3 = sub_22855D17C();
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_22844C56C(v3), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v5, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
  }

  return 0x6E776F6E6B6E753CLL;
}

void sub_2284D60BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_228406468(a1);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);

  sub_228416CF8(v11);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  v12 = *(a1 + 32);
  v13 = a5;

  *(a1 + 32) = a5;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v35[4] = sub_2284D718C;
  v35[5] = v16;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 1107296256;
  v35[2] = sub_228401F54;
  v35[3] = &block_descriptor_49;
  v17 = _Block_copy(v35);

  [v13 setCancellationHandler_];
  _Block_release(v17);
  if (*a1 == 1 && *(a1 + 2) == 1)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v18 = sub_22855CABC();
    __swift_project_value_buffer(v18, qword_280DEEC98);
    v19 = v13;

    v20 = sub_22855CA8C();
    v21 = sub_22855D6AC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v35[0] = v36;
      *v22 = 136446466;
      v23 = sub_228403430();
      v25 = sub_2283F8938(v23, v24, v35);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_2284D5F74();
      v28 = sub_2283F8938(v26, v27, v35);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_2283ED000, v20, v21, "%{public}s Ready, and urgent work already completed, starting legacy generation with progress %s", v22, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v29, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    v30 = a2[5];
    v31 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = *(v31 + 24);

    v34 = v33(sub_2284D728C, v32, v30, v31);

    *(a1 + 40) = v34;
  }
}

uint64_t sub_2284D6450()
{
  v0 = sub_22855CFBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855CFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v33 = v6;
      v34 = v5;
      v35 = v1;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v36 = v0;
      v14 = sub_22855CABC();
      __swift_project_value_buffer(v14, qword_280DEEC98);

      v15 = v13;
      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = sub_228403430();
        v22 = sub_2283F8938(v20, v21, aBlock);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        v23 = sub_2284D5F74();
        v25 = sub_2283F8938(v23, v24, aBlock);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s Progress %s cancellation handler called", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v19, -1, -1);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      v26 = *(v11 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
      v27 = swift_allocObject();
      *(v27 + 16) = v11;
      *(v27 + 24) = v15;
      aBlock[4] = sub_2284D7194;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_228401F54;
      aBlock[3] = &block_descriptor_57;
      v28 = _Block_copy(aBlock);

      v29 = v15;
      sub_22855CFDC();
      v37 = MEMORY[0x277D84F90];
      sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198]);
      v30 = MEMORY[0x277D85198];
      sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2283FA284(&qword_280DED260, &qword_280DED270, v30);
      v31 = v36;
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v9, v4, v28);
      _Block_release(v28);

      (*(v35 + 8))(v4, v31);
      (*(v33 + 8))(v9, v34);
    }
  }

  return result;
}

void sub_2284D6918(uint64_t a1)
{
  v3 = sub_22855D04C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22855D07C();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    MEMORY[0x28223BE20](v10);
    *&v12[-16] = a1;
    *&v12[-8] = v1;
    os_unfair_lock_lock((v11 + 64));
    sub_2284D71BC((v11 + 16));
    os_unfair_lock_unlock((v11 + 64));
  }

  else
  {
    __break(1u);
  }
}

void sub_2284D6A88(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a1[4];
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v25 = v5;
    sub_228406468(a1);
  }

  else
  {
    v8 = qword_280DEEC90;
    v9 = v5;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v9;

    v12 = a2;
    v13 = sub_22855CA8C();
    v14 = sub_22855D6AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v15 = 136446722;
      v16 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v16);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v17 = sub_2283F8938(91, 0xE100000000000000, &v28);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = sub_2284D5F74();
      v20 = sub_2283F8938(v18, v19, &v28);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      if (v5)
      {
        v21 = sub_2284D5F74();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v26 = sub_2283F8938(v21, v23, &v28);

      *(v15 + 24) = v26;
      _os_log_impl(&dword_2283ED000, v13, v14, "%{public}s Legacy generation for progress %s cancelled, but already different current progress: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v27, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2284D6D6C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);

  v4 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D6E8C()
{
  result = sub_22855CFAC();
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

uint64_t sub_2284D6FB4()
{
  result = sub_22855CFAC();
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

uint64_t get_enum_tag_for_layout_string_SbIeghy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284D70D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_2284D7110(uint64_t a1)
{
  sub_22847F574();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284D718C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2284D6450();
}

void sub_2284D7194()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2284D6918(v1);
}

uint64_t sub_2284D7214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_2284D7240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2284D47FC();
}

id static PluginData.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284D72FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2284D7354(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22855C09C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2284D73BC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_22855C08C();
  }

  v5 = v3;
  [v2 setData_];
}

void sub_2284D7434(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profiles];
  type metadata accessor for Profile();
  sub_2284D7530();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_2284D74A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for Profile();
  sub_2284D7530();
  v4 = sub_22855D50C();
  [v3 setProfiles_];
}

unint64_t sub_2284D7530()
{
  result = qword_280DED540;
  if (!qword_280DED540)
  {
    type metadata accessor for Profile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED540);
  }

  return result;
}

void sub_2284D7588()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277CCE3A8];
  v2 = sub_22855D17C();
  v3 = sub_22855D17C();
  v4 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF48 = v4;
}

void sub_2284D7660()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277CCE558];
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF50 = v3;
}

void sub_2284D771C()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF58 = v3;
}

void sub_2284D77EC()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF60 = v3;
}

void sub_2284D78C8()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF68 = v3;
}

void sub_2284D79A0()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF70 = v3;
}

id sub_2284D7A78(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

BOOL static SourceProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !a2;
}

uint64_t SourceProfile.identifier.getter(uint64_t a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v5)
  {
    return 0x636974736F6E6761;
  }

  v8 = [v5 identifier];
  sub_22855C1BC();

  v9 = sub_22855C17C();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t sub_2284D7C78()
{
  if (*v0)
  {
    result = 0x656C676E6973;
  }

  else
  {
    result = 0x636974736F6E6761;
  }

  *v0;
  return result;
}

uint64_t sub_2284D7CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636974736F6E6761 && a2 == 0xE800000000000000;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C676E6973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284D7D88(uint64_t a1)
{
  v2 = sub_2284D80CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284D7DC4(uint64_t a1)
{
  v2 = sub_2284D80CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SourceProfile.encode(to:)(void *a1, void *a2)
{
  sub_2284D8064();
  v5 = v4;
  v18 = *(v4 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284D8A6C(0, &qword_27D83FF80, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D80CC();
  sub_22855E31C();
  if (a2)
  {
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v16 = a2;
    sub_22855D0BC();
    v20 = 1;
    sub_2284D8AD0(&qword_27D83FF90);
    sub_22855E0CC();
    (*(v18 + 8))(v8, v5);
  }

  else
  {
    v19 = 0;
    sub_22855E0DC();
  }

  return (*(v11 + 8))(v14, v10);
}

void sub_2284D8064()
{
  if (!qword_27D83FF78)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    v0 = sub_22855D0AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FF78);
    }
  }
}

unint64_t sub_2284D80CC()
{
  result = qword_27D83FF88;
  if (!qword_27D83FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF88);
  }

  return result;
}

uint64_t SourceProfile.description.getter(void *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x636974736F6E6761;
  }

  [a1 type];
  v7 = HKStringFromProfileType();
  v8 = sub_22855D1AC();
  v10 = v9;

  v16[0] = v8;
  v16[1] = v10;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v11 = [a1 identifier];
  sub_22855C1BC();

  v12 = sub_22855C17C();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AAB92A0](v12, v14);

  return v16[0];
}

uint64_t SourceProfile.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x22AABA2B0](0);
  }

  MEMORY[0x22AABA2B0](1);
  return sub_22855D9BC();
}

uint64_t SourceProfile.hashValue.getter(uint64_t a1)
{
  sub_22855E22C();
  if (a1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

BOOL sub_2284D8368(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_2284D83D8()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

uint64_t sub_2284D843C()
{
  if (!*v0)
  {
    return MEMORY[0x22AABA2B0](0);
  }

  MEMORY[0x22AABA2B0](1);
  return sub_22855D9BC();
}

uint64_t sub_2284D8494()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

uint64_t sub_2284D84F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2284D8628(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t SourceProfile.debugDescription.getter(void *a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  sub_22855DC6C();

  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v2 = a1;
  v3 = sub_22855D1CC();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2284D8628(uint64_t *a1)
{
  sub_2284D8064();
  v4 = v3;
  v24 = *(v3 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284D8A6C(0, &qword_27D83FFB0, MEMORY[0x277D844C8]);
  v9 = v8;
  v25 = *(v8 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D80CC();
  sub_22855E30C();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = v4;
  v15 = v25;
  v16 = v9;
  v17 = sub_22855E04C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + v18 + 31);

    if (v19)
    {
      v26 = 1;
      sub_2284D8AD0(&qword_27D83FFB8);
      v20 = v23;
      sub_22855E03C();
      v14 = sub_22855D08C();
      (*(v24 + 8))(v7, v20);
      (*(v15 + 8))(v12, v16);
    }

    else
    {
      (*(v15 + 8))(v12, v9);
      v14 = 0;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_2284D88F0()
{
  result = qword_280DEC168;
  if (!qword_280DEC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC168);
  }

  return result;
}

unint64_t sub_2284D8968()
{
  result = qword_27D83FF98;
  if (!qword_27D83FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF98);
  }

  return result;
}

unint64_t sub_2284D89C0()
{
  result = qword_27D83FFA0;
  if (!qword_27D83FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FFA0);
  }

  return result;
}

unint64_t sub_2284D8A18()
{
  result = qword_27D83FFA8;
  if (!qword_27D83FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FFA8);
  }

  return result;
}

void sub_2284D8A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284D80CC();
    v7 = a3(a1, &type metadata for SourceProfile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284D8AD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2284D8064();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284D8B14(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t Publisher<>.addSummaries(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  v13 = v12;
  v27 = v12;
  v26 = sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v11);
  v29 = v13;
  v30 = a4;
  v31 = v26;
  v32 = a5;
  v14 = a5;
  v15 = sub_22855CBEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  (*(v8 + 16))(v10, v5, a4);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = v14;
  (*(v8 + 32))(v22 + v20, v10, a4);
  *(v22 + v21) = v28;

  sub_22855CCBC();
  sub_2284D8E24();
  sub_22855CF2C();

  swift_getWitnessTable();
  v23 = sub_22855CE6C();
  (*(v16 + 8))(v19, v15);
  return v23;
}

void sub_2284D8E24()
{
  if (!qword_280DE95B0)
  {
    sub_2283EF310(255, &qword_280DE9490, 0x277CCD928);
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE95B0);
    }
  }
}

uint64_t sub_2284D8E8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = sub_2284DF92C(*(v2 + ((*(*(*(v2 + 16) - 8) + 64) + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), *a1);
  *a2 = result;
  return result;
}

uint64_t Publisher<>.addModels(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a1;
  v29 = a3;
  v26 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = MEMORY[0x277CBCD88];
  sub_2284DFA60(255, &qword_280DE98D8, MEMORY[0x277CBCD88]);
  v13 = v12;
  v28 = v12;
  v27 = sub_2284DFB08(&qword_280DE98E0, &qword_280DE98D8, v11);
  v30 = v13;
  v31 = a4;
  v32 = v27;
  v33 = a5;
  v24[1] = a5;
  v14 = sub_22855CBEC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  (*(v9 + 16))(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  v21 = v26;
  *(v20 + 4) = v25;
  *(v20 + 5) = v21;
  *(v20 + 6) = v29;
  (*(v9 + 32))(&v20[v19], v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  sub_22855CCBC();
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  sub_22855CF2C();

  swift_getWitnessTable();
  v22 = sub_22855CE6C();
  (*(v15 + 8))(v18, v14);
  return v22;
}

void sub_2284D9214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284D9278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v44 = a5;
  v45 = a6;
  v49 = a7;
  v50 = a3;
  sub_2284DFA60(0, &qword_280DE9868, MEMORY[0x277CBCE68]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v38 - v14;
  sub_2284DAF10();
  v16 = v15;
  v47 = *(v15 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PluginSharableModel();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v26 = *(a2 + 16);
  if (v26)
  {
    v39 = v24;
    v40 = v16;
    v42 = v12;
    v43 = v11;
    v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = *(v21 + 72);
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    sub_22848DB1C(a2 + v27, v23);

    v29 = HKSharedSummary.init(model:pluginIdentifier:)(v23, v50, a4);
    v41 = a2;
    for (i = a2 + v28 + v27; ; i += v28)
    {
      v32 = v29;
      MEMORY[0x22AAB9400]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22855D3EC();
      }

      sub_22855D43C();

      v25 = v52;
      if (!--v26)
      {
        break;
      }

      sub_22848DB1C(i, v23);

      v29 = HKSharedSummary.init(model:pluginIdentifier:)(v23, v50, a4);
    }

    v30 = v49;
    v24 = v39;
    v16 = v40;
  }

  else
  {
    v41 = a2;
    v30 = v49;
  }

  v33 = sub_2284DF92C(v25, v24);

  v51 = v33;
  *(swift_allocObject() + 16) = v41;
  v34 = MEMORY[0x277CBCD88];
  sub_2284DF75C(0, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v34);

  v35 = v46;
  sub_22855CE8C();

  sub_2284DF478(&qword_280DE9BC0, sub_2284DAF10);
  v36 = sub_22855CE6C();
  result = (*(v47 + 8))(v35, v16);
  *v30 = v36;
  return result;
}

uint64_t Publisher<>.getSummaries(pluginIdentifier:modelIdentifiers:modelObjectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v23 = a1;
  v11 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  v25 = v12;
  v26 = a5;
  v27 = sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v11);
  v28 = a6;
  v13 = sub_22855CBEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = a3;
  v18[3] = v19;
  v18[4] = a2;
  v18[5] = a4;

  sub_22855CCBC();
  sub_2284D8E24();
  sub_22855CF2C();

  swift_getWitnessTable();
  v20 = sub_22855CE6C();
  (*(v14 + 8))(v17, v13);
  return v20;
}

uint64_t sub_2284D9A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a6;
  sub_2284DF694();
  v22 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v16;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v18 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v18);

  sub_22855CE2C();
  sub_2284DF478(&qword_280DE9718, sub_2284DF694);
  v19 = v22;
  v20 = sub_22855CE6C();
  result = (*(v12 + 8))(v15, v19);
  *v23 = v20;
  return result;
}

uint64_t sub_2284D9CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  result = sub_22855CE0C();
  *a6 = result;
  return result;
}

uint64_t sub_2284D9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  if (a3)
  {
    v15 = *(a3 + 16);
    if (v15)
    {
      v16 = sub_22840770C(v15, 0);
      v19 = sub_2284077A8(&v20, v16 + 4, v15, a3);

      result = sub_228407958();
      if (v19 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v16 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a3;
  v18[6] = sub_2284AEB88;
  v18[7] = v14;
  v18[8] = a7;

  sub_2284305B8(a5, a6, v16, sub_2284DF8A4, v18);
}

uint64_t sub_2284D9F60(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v128 = a4;
  v129 = a3;
  v15 = sub_22855C1DC();
  v126 = *(v15 - 8);
  v127 = v15;
  v16 = *(v126 + 64);
  MEMORY[0x28223BE20](v15);
  v125 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a1;
  if (a2)
  {
    v18 = sub_22855BF2C();
    v19 = [v18 hk_isObjectNotFoundError];

    if (v19)
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v20 = sub_22855CABC();
      __swift_project_value_buffer(v20, qword_280DEEBF0);

      v21 = v129;

      v22 = v21;
      v23 = sub_22855CA8C();
      v24 = sub_22855D6AC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v138[0] = v135;
        *v25 = 136315650;
        v26 = [*(v22 + 16) transactionUUID];
        v27 = v125;
        sub_22855C1BC();

        v28 = sub_22855C17C();
        v29 = a7;
        v31 = v30;
        (*(v126 + 8))(v27, v127);
        v32 = sub_2283F8938(v28, v31, v138);

        *(v25 + 4) = v32;
        *(v25 + 12) = 2080;
        v136 = v128;
        v137 = a5;
        sub_2284DF8DC();

        v33 = sub_22855D1BC();
        v35 = sub_2283F8938(v33, v34, v138);

        *(v25 + 14) = v35;
        a7 = v29;
        *(v25 + 22) = 2080;
        v136 = a6;
        sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

        v36 = sub_22855D1BC();
        v38 = sub_2283F8938(v36, v37, v138);

        *(v25 + 24) = v38;
        _os_log_impl(&dword_2283ED000, v23, v24, "[Transaction] No summaries were found for transaction %s with identifier %s and names %s", v25, 0x20u);
        v39 = v135;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v39, -1, -1);
        MEMORY[0x22AABAD40](v25, -1, -1);
      }

      v40 = MEMORY[0x277D84F90];
      v41 = 0;
    }

    else
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v44 = sub_22855CABC();
      __swift_project_value_buffer(v44, qword_280DEEBF0);

      v45 = v129;

      v46 = v130;
      sub_2284A6588(v130, 1);
      v47 = v45;
      v48 = sub_22855CA8C();
      v49 = sub_22855D68C();

      sub_2284A6534(v46, 1);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        LODWORD(v134) = v49;
        v51 = v50;
        v135 = swift_slowAlloc();
        v138[0] = v135;
        *v51 = 136315906;
        v52 = [*(v47 + 16) transactionUUID];
        v53 = v125;
        sub_22855C1BC();

        v54 = sub_22855C17C();
        v55 = a7;
        v57 = v56;
        (*(v126 + 8))(v53, v127);
        v58 = sub_2283F8938(v54, v57, v138);

        *(v51 + 4) = v58;
        *(v51 + 12) = 2080;
        v136 = v128;
        v137 = a5;
        sub_2284DF8DC();

        v59 = sub_22855D1BC();
        v61 = sub_2283F8938(v59, v60, v138);

        *(v51 + 14) = v61;
        a7 = v55;
        *(v51 + 22) = 2080;
        v136 = a6;
        sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

        v62 = sub_22855D1BC();
        v64 = sub_2283F8938(v62, v63, v138);

        *(v51 + 24) = v64;
        *(v51 + 32) = 2082;
        v136 = v46;
        v65 = v46;
        sub_228418D44();
        v66 = sub_22855D1CC();
        v68 = sub_2283F8938(v66, v67, v138);

        *(v51 + 34) = v68;
        _os_log_impl(&dword_2283ED000, v48, v134, "[Transaction] Could not get summaries for transaction %s with identifier %s and names %s. %{public}s", v51, 0x2Au);
        v69 = v135;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v69, -1, -1);
        MEMORY[0x22AABAD40](v51, -1, -1);
      }

      v40 = v46;
      v41 = 1;
    }

    return (a7)(v40, v41);
  }

  v42 = a9;
  v43 = MEMORY[0x277D84F90];
  if (a9)
  {
    v135 = a9;
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_22855DB4C())
    {
      sub_22845FC94(MEMORY[0x277D84F90]);
      v135 = v120;
    }

    else
    {
      v135 = MEMORY[0x277D84FA0];
    }

    v42 = a9;
  }

  else
  {
    v135 = MEMORY[0x277D84FA0];
  }

  v124 = a5;
  v138[0] = v43;
  v71 = v130 & 0xFFFFFFFFFFFFFF8;
  if (v130 >> 62)
  {
    goto LABEL_65;
  }

  v72 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v123 = v42;

  v122 = a7;
  v121 = a8;
  if (v72)
  {
    a7 = 0;
    a8 = a6 + 56;
    v133 = v135 & 0xC000000000000001;
    v134 = v130 & 0xC000000000000001;
    v73 = v135 & 0xFFFFFFFFFFFFFF8;
    if (v135 < 0)
    {
      v73 = v135;
    }

    v131 = v73;
    v132 = (v130 + 32);
    while (1)
    {
      while (1)
      {
        if (v134)
        {
          v42 = MEMORY[0x22AAB9D20](a7, v130);
        }

        else
        {
          if (a7 >= *(v71 + 16))
          {
            goto LABEL_64;
          }

          v42 = *&v132[8 * a7];
        }

        v74 = v42;
        if (__OFADD__(a7++, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v119 = v42;
          v72 = sub_22855DB4C();
          v42 = v119;
          goto LABEL_20;
        }

        if (a6)
        {
          break;
        }

        v88 = 1;
        if (v133)
        {
          goto LABEL_46;
        }

LABEL_41:
        if (!*(v135 + 16))
        {
          goto LABEL_42;
        }

LABEL_47:
        v89 = [v74 objectTypes];
        sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
        sub_22845D238();
        v90 = sub_22855D51C();

        sub_22850DF48(v135, v90);
        v92 = v91;

        if (v88 & 1) != 0 && (v92)
        {
          goto LABEL_49;
        }

LABEL_24:

        if (a7 == v72)
        {
          goto LABEL_52;
        }
      }

      v76 = v71;
      v77 = [v42 name];
      v78 = sub_22855D1AC();
      v80 = v79;

      if (*(a6 + 16) && (v81 = *(a6 + 40), sub_22855E22C(), sub_22855D20C(), v82 = sub_22855E27C(), v83 = -1 << *(a6 + 32), v84 = v82 & ~v83, ((*(a8 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) != 0))
      {
        v85 = ~v83;
        while (1)
        {
          v86 = (*(a6 + 48) + 16 * v84);
          v87 = *v86 == v78 && v86[1] == v80;
          if (v87 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v84 = (v84 + 1) & v85;
          if (((*(a8 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v88 = 1;
      }

      else
      {
LABEL_39:
        v88 = 0;
      }

      v71 = v76;
      if (!v133)
      {
        goto LABEL_41;
      }

LABEL_46:
      if (sub_22855DB4C())
      {
        goto LABEL_47;
      }

LABEL_42:
      if ((v88 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_49:
      sub_22855DD1C();
      v93 = *(v138[0] + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      v42 = sub_22855DD2C();
      if (a7 == v72)
      {
LABEL_52:
        v94 = v138[0];
        a7 = v122;
        goto LABEL_54;
      }
    }
  }

  v94 = MEMORY[0x277D84F90];
LABEL_54:

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v95 = sub_22855CABC();
  __swift_project_value_buffer(v95, qword_280DEEBF0);

  v96 = v129;

  v97 = v96;
  v98 = sub_22855CA8C();
  v99 = sub_22855D6AC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v138[0] = v101;
    *v100 = 134219010;
    if (v94 < 0 || (v94 & 0x4000000000000000) != 0)
    {
      v102 = sub_22855DB4C();
    }

    else
    {
      v102 = *(v94 + 16);
    }

    *(v100 + 4) = v102;

    *(v100 + 12) = 2080;
    v103 = [*(v97 + 16) transactionUUID];
    v104 = v125;
    sub_22855C1BC();

    v105 = sub_22855C17C();
    v107 = v106;
    (*(v126 + 8))(v104, v127);
    v108 = sub_2283F8938(v105, v107, v138);

    *(v100 + 14) = v108;
    *(v100 + 22) = 2080;
    v136 = v128;
    v137 = v124;
    sub_2284DF8DC();

    v109 = sub_22855D1BC();
    v111 = sub_2283F8938(v109, v110, v138);

    *(v100 + 24) = v111;
    *(v100 + 32) = 2080;
    v136 = a6;
    v112 = MEMORY[0x277D83D88];
    sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

    v113 = sub_22855D1BC();
    v115 = sub_2283F8938(v113, v114, v138);

    *(v100 + 34) = v115;
    *(v100 + 42) = 2080;
    v136 = v123;
    sub_2284D9214(0, &qword_280DE9548, sub_22845D1C4, v112);

    v116 = sub_22855D1BC();
    v118 = sub_2283F8938(v116, v117, v138);

    *(v100 + 44) = v118;
    _os_log_impl(&dword_2283ED000, v98, v99, "[Transaction] Retrieved %ld summaries for transaction %s with identifier %s and filters %s %s", v100, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v101, -1, -1);
    MEMORY[0x22AABAD40](v100, -1, -1);

    v122(v94, 0);
  }

  else
  {

    (a7)(v94, 0);
  }
}