uint64_t sub_1D610D094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayeredMedia.ImageResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610D0F8(uint64_t a1)
{
  v2 = type metadata accessor for LayeredMedia.ImageResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D610D154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayeredMediaImageVariant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void FormatCustomFont.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t FormatCustomFont.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCustomFont.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1D610D268()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1D6C4D24C(v3 | 0xB000000000000000);
}

uint64_t _s8NewsFeed16FormatCustomFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v4 != v7)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v10 = sub_1D72646CC();
  result = 0;
  if ((v10 & 1) != 0 && v4 == v7)
  {
LABEL_9:
    if ((v5 & 0xFF00) == 0xC00)
    {
      if ((v8 & 0xFF00) == 0xC00)
      {
        return 1;
      }
    }

    else if ((v8 & 0xFF00) != 0xC00)
    {
      if (v5)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || v3 != v6)
      {
        return 0;
      }

      v12 = FormatFontScalingStyle.rawValue.getter(a3);
      v14 = v13;
      if (v12 == FormatFontScalingStyle.rawValue.getter(v15) && v14 == v16)
      {

        return 1;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D610D440(uint64_t a1)
{
  result = sub_1D610D468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D610D468()
{
  result = qword_1EC883DD8;
  if (!qword_1EC883DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DD8);
  }

  return result;
}

unint64_t sub_1D610D4BC(void *a1)
{
  a1[1] = sub_1D5C7A48C();
  a1[2] = sub_1D5D44024();
  result = sub_1D610D4F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D610D4F4()
{
  result = qword_1EC883DE0;
  if (!qword_1EC883DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DE0);
  }

  return result;
}

NewsFeed::FeedDaysOfWeek_optional __swiftcall FeedDaysOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedDaysOfWeek.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7961646E6F6DLL;
    v7 = 0x79616473657574;
    if (v1 != 2)
    {
      v7 = 0x616473656E646577;
    }

    if (!*v0)
    {
      v6 = 0x7961646E7573;
    }

    if (*v0 <= 1u)
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
    v2 = 0x7961647275746173;
    v3 = 0x737961646B656577;
    if (v1 != 7)
    {
      v3 = 0x73646E656B656577;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7961647372756874;
    if (v1 != 4)
    {
      v4 = 0x796164697266;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D610D6E0()
{
  sub_1D7264A0C();
  sub_1D694D024();
  return sub_1D7264A5C();
}

uint64_t sub_1D610D730()
{
  sub_1D7264A0C();
  sub_1D694D024();
  return sub_1D7264A5C();
}

uint64_t sub_1D610D780@<X0>(uint64_t *a1@<X8>)
{
  result = FeedDaysOfWeek.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsFeed::FeedTimeOfDay_optional __swiftcall FeedTimeOfDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedTimeOfDay.rawValue.getter()
{
  v1 = 0x676E696E726F6DLL;
  v2 = 0x676E696E657665;
  if (*v0 != 2)
  {
    v2 = 0x746867696ELL;
  }

  if (*v0)
  {
    v1 = 0x6F6F6E7265746661;
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

uint64_t sub_1D610D93C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D610DA00()
{
  sub_1D72621EC();
}

uint64_t sub_1D610DAB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D610DB7C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696E726F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E657665;
  if (*v1 != 2)
  {
    v5 = 0x746867696ELL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F6F6E7265746661;
    v2 = 0xE90000000000006ELL;
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

__n128 FeedGroupKnobsRules.init(rankMultiplier:baseScore:scoreThreshold:selectors:maxOccurrence:maxOccurrencePerConfig:maxOccurrencePerPublishDate:maxOccurrencePerEditions:precededBy:preferredPrecededBy:notPrecededBy:preferredNotPrecededBy:priorOccurrenceOf:noPriorOccurrenceOf:groupDistance:preferredGroupDistance:followedBy:preferredFollowedBy:notFollowedBy:preferredNotFollowedBy:daysOfWeek:notDaysOfWeek:timesOfDay:notTimesOfDay:feedModes:notFeedModes:alwaysSkip:alwaysSkipUntilEndOfFeed:allowedPlatforms:blockedPlatforms:contentOverlay:bundleSessionStates:notBundleSessionStates:allowAdSponsorship:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __n128 a21, uint64_t a22, uint64_t a23)
{
  result = a21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 264) = a23;
  return result;
}

uint64_t FeedGroupKnobsRules.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  type metadata accessor for FeedGroupKnobsRules.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1D726435C();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v45 - v6;
  v8 = a1[3];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v78 = v7;
  v9 = v79;
  sub_1D7264B0C();
  if (!v9)
  {
    sub_1D605A334();
    LOBYTE(v105) = 0;
    sub_1D6117D9C(&qword_1EDF36710, sub_1D605A334);
    sub_1D726427C();
    v10 = v117;
    LOBYTE(v105) = 1;
    sub_1D726427C();
    v79 = v10;
    v11 = v116;
    LOBYTE(v105) = 2;
    sub_1D726427C();
    v12 = v115;
    sub_1D6117D20();
    LOBYTE(v105) = 3;
    sub_1D6117D9C(&qword_1EDF37598, sub_1D6117D20);
    sub_1D726427C();
    v73 = v11;
    v74 = v114;
    sub_1D5E3A600();
    v14 = v13;
    LOBYTE(v105) = 4;
    v72 = sub_1D6117D9C(&qword_1EDF36700, sub_1D5E3A600);
    sub_1D726427C();
    v15 = v113;
    LOBYTE(v105) = 5;
    sub_1D726427C();
    v70 = v12;
    v71 = v15;
    v17 = v112;
    LOBYTE(v105) = 6;
    sub_1D726427C();
    v69 = v14;
    v18 = v111;
    sub_1D6117DE4();
    LOBYTE(v105) = 7;
    sub_1D6117D9C(qword_1EDF36D00, sub_1D6117DE4);
    sub_1D726427C();
    v66 = v17;
    v67 = v18;
    v68 = v110;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedConformanceWitness();
    v22 = swift_getAssociatedConformanceWitness();
    v105 = AssociatedTypeWitness;
    v106 = AssociatedConformanceWitness;
    v107 = v21;
    v108 = v22;
    type metadata accessor for FeedGroupKnobsRuleSet();
    LOBYTE(v105) = 8;
    swift_getWitnessTable();
    sub_1D726427C();
    v65 = v109;
    LOBYTE(v104) = 9;
    sub_1D726427C();
    v64 = v105;
    LOBYTE(v103) = 10;
    sub_1D726427C();
    v63 = v104;
    LOBYTE(v102) = 11;
    sub_1D726427C();
    v62 = v103;
    LOBYTE(v101) = 12;
    sub_1D726427C();
    v23 = v102;
    LOBYTE(v100) = 13;
    sub_1D726427C();
    v61 = v101;
    LOBYTE(v99) = 14;
    sub_1D726427C();
    v60 = v100;
    LOBYTE(v98) = 15;
    sub_1D726427C();
    v72 = v99;
    LOBYTE(v97) = 16;
    sub_1D726427C();
    v69 = v98;
    LOBYTE(v96) = 17;
    sub_1D726427C();
    v59 = v97;
    LOBYTE(v95) = 18;
    sub_1D726427C();
    v58 = v96;
    LOBYTE(v94) = 19;
    sub_1D726427C();
    v57 = v95;
    sub_1D6117EE8();
    LOBYTE(v93) = 20;
    sub_1D6117D9C(qword_1EDF375E8, sub_1D6117EE8);
    sub_1D726427C();
    v56 = v94;
    LOBYTE(v92) = 21;
    sub_1D726427C();
    v55 = v93;
    sub_1D6118068();
    LOBYTE(v91) = 22;
    sub_1D6117D9C(&qword_1EDF375A8, sub_1D6118068);
    sub_1D726427C();
    v54 = v92;
    LOBYTE(v90) = 23;
    sub_1D726427C();
    v53 = v91;
    sub_1D6118194();
    LOBYTE(v89) = 24;
    sub_1D6117D9C(&qword_1EDF375C8, sub_1D6118194);
    sub_1D726427C();
    v52 = v90;
    LOBYTE(v88) = 25;
    sub_1D726427C();
    v51 = v89;
    sub_1D6060284();
    LOBYTE(v87) = 26;
    sub_1D6117D9C(&qword_1EDF36720, sub_1D6060284);
    sub_1D726427C();
    v50 = v88;
    LOBYTE(v86) = 27;
    sub_1D726427C();
    v49 = v87;
    sub_1D61182C0();
    LOBYTE(v85) = 28;
    sub_1D6117D9C(&qword_1EDF375B8, sub_1D61182C0);
    sub_1D726427C();
    v48 = v86;
    LOBYTE(v84) = 29;
    sub_1D726427C();
    v47 = v85;
    sub_1D6118398();
    LOBYTE(v83) = 30;
    sub_1D6117D9C(qword_1EDF36730, sub_1D6118398);
    sub_1D726427C();
    v46 = v84;
    sub_1D611841C();
    LOBYTE(v82) = 31;
    sub_1D6117D9C(&qword_1EDF375D8, sub_1D611841C);
    sub_1D726427C();
    v45 = v83;
    LOBYTE(v81) = 32;
    sub_1D726427C();
    v24 = v82;
    v80 = 33;
    sub_1D726427C();
    (*(v77 + 8))(v78, v76);
    v25 = v75;
    v26 = v73;
    *v75 = v79;
    v25[1] = v26;
    v27 = v74;
    v25[2] = v70;
    v25[3] = v27;
    v28 = v81;
    v30 = v66;
    v29 = v67;
    v25[4] = v71;
    v25[5] = v30;
    v25[6] = v29;
    v31 = v64;
    v32 = v65;
    v25[7] = v68;
    v25[8] = v32;
    v25[9] = v31;
    v33 = v62;
    v25[10] = v63;
    v25[11] = v33;
    v35 = v60;
    v34 = v61;
    v25[12] = v23;
    v25[13] = v34;
    v36 = v72;
    v25[14] = v35;
    v25[15] = v36;
    v37 = v58;
    v38 = v59;
    v25[16] = v69;
    v25[17] = v38;
    v25[18] = v37;
    v39 = v56;
    v25[19] = v57;
    v25[20] = v39;
    v40 = v54;
    v25[21] = v55;
    v25[22] = v40;
    v41 = v52;
    v25[23] = v53;
    v25[24] = v41;
    v42 = v50;
    v25[25] = v51;
    v25[26] = v42;
    v43 = v48;
    v25[27] = v49;
    v25[28] = v43;
    v44 = v46;
    v25[29] = v47;
    v25[30] = v44;
    v25[31] = v45;
    v25[32] = v24;
    v25[33] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v118);
}

uint64_t FeedGroupKnobsRules.emitterRules(cursor:kind:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  type metadata accessor for FeedGroupEmitterRule();
  sub_1D72627FC();
  sub_1D72644CC();
  swift_allocObject();
  v5 = sub_1D726270C();
  v7 = v6;
  memcpy(v11, v2, sizeof(v11));
  *v7 = sub_1D611050C(a1, a2);
  memcpy(v11, __dst, sizeof(v11));
  v7[1] = sub_1D6110780(a1, a2);
  memcpy(v11, __dst, sizeof(v11));
  v7[2] = sub_1D61109F4(a1, a2);
  memcpy(v11, __dst, sizeof(v11));
  v7[3] = sub_1D6110C68(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[4] = sub_1D6110DB4();
  memcpy(v11, __dst, sizeof(v11));
  v7[5] = sub_1D6110EE8();
  memcpy(v11, __dst, sizeof(v11));
  v7[6] = sub_1D611101C();
  memcpy(v11, __dst, sizeof(v11));
  v7[7] = sub_1D6111150();
  memcpy(v11, __dst, sizeof(v11));
  v7[8] = sub_1D6111284();
  memcpy(v11, __dst, sizeof(v11));
  v7[9] = sub_1D61113B8();
  memcpy(v11, __dst, sizeof(v11));
  v7[10] = sub_1D61114EC(a1, a2);
  memcpy(v11, __dst, sizeof(v11));
  v7[11] = sub_1D6111760(a1, a2);
  memcpy(v11, __dst, sizeof(v11));
  v7[12] = sub_1D61119D4();
  memcpy(v11, __dst, sizeof(v11));
  v7[13] = sub_1D6111B08();
  memcpy(v11, __dst, sizeof(v11));
  v7[14] = sub_1D6111C3C();
  memcpy(v11, __dst, sizeof(v11));
  v7[15] = sub_1D6111D70();
  memcpy(v11, __dst, sizeof(v11));
  v7[16] = sub_1D6112C30(a1 + *(*a1 + 176));
  memcpy(v11, __dst, sizeof(v11));
  v7[17] = sub_1D6113470(a1 + *(*a1 + 176));
  memcpy(v11, __dst, sizeof(v11));
  v7[18] = sub_1D6111EA4(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[19] = sub_1D6111FC8(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[20] = sub_1D61120EC(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[21] = sub_1D6112220(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[22] = sub_1D6112354(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[23] = sub_1D6112488(a1);
  memcpy(v11, __dst, sizeof(v11));
  v7[24] = sub_1D61125BC(a1);
  v7[25] = sub_1D61126F0(a1);
  v11[0] = sub_1D5BFCB60(v5);
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1D72624BC();

  return v8;
}

uint64_t sub_1D611050C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32) || (v4 = sub_1D5E35358(a1 + *(*a1 + 176)), v4 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  else
  {
    v5 = v4;
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v6 = sub_1D726270C();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
    *(v8 + v10) = v5;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v6);
  }
}

uint64_t sub_1D6110780(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 40) || (v4 = sub_1D5E35358(a1 + *(*a1 + 176)), v4 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  else
  {
    v5 = v4;
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v6 = sub_1D726270C();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
    *(v8 + v10) = v5;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v6);
  }
}

uint64_t sub_1D61109F4(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 48) || (v4 = sub_1D5E35358(a1 + *(*a1 + 176)), v4 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  else
  {
    v5 = v4;
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v6 = sub_1D726270C();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
    *(v8 + v10) = v5;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v6);
  }
}

uint64_t sub_1D6110C68(uint64_t a1)
{
  if (*(v1 + 56))
  {
    v5 = sub_1D5F1AC24(a1 + *(*a1 + 176));
    MEMORY[0x1EEE9AC00](v5, v2);
    sub_1D6118E10();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D6117D9C(&qword_1EC883DF8, sub_1D6118E10);
    v3 = sub_1D726242C();

    return v3;
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();
    return sub_1D726275C();
  }
}

uint64_t sub_1D6110DB4()
{
  if (*(v0 + 64))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6110EE8()
{
  if (*(v0 + 72))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D611101C()
{
  if (*(v0 + 80))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111150()
{
  if (*(v0 + 88))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111284()
{
  if (*(v0 + 96))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D61113B8()
{
  if (*(v0 + 104))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D61114EC(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 120) || (v4 = sub_1D5E35358(a1 + *(*a1 + 176)), v4 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  else
  {
    v5 = v4;
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v6 = sub_1D726270C();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
    *(v8 + v10) = v5;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v6);
  }
}

uint64_t sub_1D6111760(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 112) || (v4 = sub_1D5E35358(a1 + *(*a1 + 176)), v4 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  else
  {
    v5 = v4;
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v6 = sub_1D726270C();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2, AssociatedTypeWitness);
    *(v8 + v10) = v5;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v6);
  }
}

uint64_t sub_1D61119D4()
{
  if (*(v0 + 128))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111B08()
{
  if (*(v0 + 136))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111C3C()
{
  if (*(v0 + 144))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111D70()
{
  if (*(v0 + 152))
  {
    v1 = FeedGroupKnobsRuleSet.value(for:)();
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    *v3 = v1;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111EA4(uint64_t a1)
{
  if (*(v1 + 208) && (sub_1D5E35D24(a1 + *(*a1 + 176)) & 1) != 0)
  {
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111FC8(uint64_t a1)
{
  if (*(v1 + 216) && (sub_1D5E35D24(a1 + *(*a1 + 176)) & 1) != 0)
  {
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v2 = sub_1D726270C();
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v2);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D61120EC(uint64_t a1)
{
  if (*(v1 + 224))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112220(uint64_t a1)
{
  if (*(v1 + 232))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112354(uint64_t a1)
{
  if (*(v1 + 192))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112488(uint64_t a1)
{
  if (*(v1 + 200))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D61125BC(uint64_t a1)
{
  if (*(v1 + 248))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

uint64_t sub_1D61126F0(uint64_t a1)
{
  if (*(v1 + 256))
  {
    v2 = sub_1D5F1ED98(a1 + *(*a1 + 176));
    type metadata accessor for FeedGroupEmitterRule();
    sub_1D72644CC();
    swift_allocObject();
    v3 = sub_1D726270C();
    *v4 = v2;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v3);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }
}

double FeedGroupKnobsRules.emitterRankMultiplier(cursor:)(uint64_t a1)
{
  if (*v1)
  {
    result = sub_1D5E35BF4(a1 + *(*a1 + 176));
  }

  else
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double FeedGroupKnobsRules.emitterRankMultiplier(context:)(uint64_t a1)
{
  if (*v1)
  {
    result = sub_1D5E35BF4(a1);
  }

  else
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void FeedGroupKnobsRules.emitterBaseScore(cursor:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D5E35BF4(a1 + *(*a1 + 176));
  }
}

void FeedGroupKnobsRules.emitterBaseScore(context:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D5E35BF4(a1);
  }
}

void FeedGroupKnobsRules.emitterScoreThreshold(cursor:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    sub_1D5E35BF4(a1 + *(*a1 + 176));
  }
}

void FeedGroupKnobsRules.emitterScoreThreshold(context:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    sub_1D5E35BF4(a1);
  }
}

uint64_t FeedGroupKnobsRules.emitterSelectors(cursor:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    return sub_1D5F1AAD8(a1 + *(*a1 + 176));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t FeedGroupKnobsRules.emitterSelectors(context:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    return sub_1D5F1AAD8(a1);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t FeedGroupKnobsRules.daysOfWeekRules(context:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for FeedGroupEmitterRule();
  sub_1D72627FC();
  sub_1D72644CC();
  swift_allocObject();
  v3 = sub_1D726270C();
  v5 = v4;
  memcpy(v8, v1, sizeof(v8));
  *v5 = sub_1D6112C30(a1);
  v5[1] = sub_1D6113470(a1);
  v8[0] = sub_1D5BFCB60(v3);
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_1D72624BC();

  return v6;
}

uint64_t sub_1D6112C30(uint64_t a1)
{
  if (!*(v1 + 160))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  v2 = sub_1D5F1ED98(a1);
  v109 = v2;
  v110 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v13 >= v7)
        {
          goto LABEL_84;
        }

        v6 = *(v3 + 8 * v13);
        ++v9;
        if (v6)
        {
          v9 = v13;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return result;
    }

LABEL_17:
    v14 = *(*(v109 + 48) + (__clz(__rbit64(v6)) | (v9 << 6)));
    sub_1D6118D98();
    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = sub_1D7263CDC();
          v36 = v15 + 56;
          v37 = -1 << *(v15 + 32);
          v38 = qword_1F5111B28;
          result = sub_1D72649FC();
          v39 = result & ~v37;
          v40 = v39 >> 6;
          v41 = *(v15 + 56 + 8 * (v39 >> 6));
          v42 = 1 << v39;
          v43 = *(v15 + 48);
          if (((1 << v39) & v41) == 0)
          {
LABEL_41:
            *(v36 + 8 * v40) = v42 | v41;
            *(v43 + 8 * v39) = v38;
            v44 = *(v15 + 16);
            v11 = __OFADD__(v44, 1);
            v12 = v44 + 1;
            if (v11)
            {
              goto LABEL_91;
            }

            goto LABEL_10;
          }

          while (*(v43 + 8 * v39) != v38)
          {
            v39 = (v39 + 1) & ~v37;
            v40 = v39 >> 6;
            v41 = *(v36 + 8 * (v39 >> 6));
            v42 = 1 << v39;
            if (((1 << v39) & v41) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v15 = sub_1D7263CDC();
          v71 = v15 + 56;
          v72 = -1 << *(v15 + 32);
          v73 = qword_1F5111B50;
          result = sub_1D72649FC();
          v74 = result & ~v72;
          v75 = v74 >> 6;
          v76 = *(v15 + 56 + 8 * (v74 >> 6));
          v77 = 1 << v74;
          v78 = *(v15 + 48);
          if (((1 << v74) & v76) == 0)
          {
LABEL_64:
            *(v71 + 8 * v75) = v77 | v76;
            *(v78 + 8 * v74) = v73;
            v79 = *(v15 + 16);
            v11 = __OFADD__(v79, 1);
            v12 = v79 + 1;
            if (v11)
            {
              goto LABEL_95;
            }

            goto LABEL_10;
          }

          while (*(v78 + 8 * v74) != v73)
          {
            v74 = (v74 + 1) & ~v72;
            v75 = v74 >> 6;
            v76 = *(v71 + 8 * (v74 >> 6));
            v77 = 1 << v74;
            if (((1 << v74) & v76) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v14)
      {
        v15 = sub_1D7263CDC();
        v62 = v15 + 56;
        v63 = -1 << *(v15 + 32);
        v64 = qword_1F5111B00;
        result = sub_1D72649FC();
        v65 = result & ~v63;
        v66 = v65 >> 6;
        v67 = *(v15 + 56 + 8 * (v65 >> 6));
        v68 = 1 << v65;
        v69 = *(v15 + 48);
        if (((1 << v65) & v67) == 0)
        {
LABEL_58:
          *(v62 + 8 * v66) = v68 | v67;
          *(v69 + 8 * v65) = v64;
          v70 = *(v15 + 16);
          v11 = __OFADD__(v70, 1);
          v12 = v70 + 1;
          if (v11)
          {
            goto LABEL_93;
          }

          goto LABEL_10;
        }

        while (*(v69 + 8 * v65) != v64)
        {
          v65 = (v65 + 1) & ~v63;
          v66 = v65 >> 6;
          v67 = *(v62 + 8 * (v65 >> 6));
          v68 = 1 << v65;
          if (((1 << v65) & v67) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        v15 = sub_1D7263CDC();
        v27 = v15 + 56;
        v28 = -1 << *(v15 + 32);
        v29 = qword_1F5111AD8;
        result = sub_1D72649FC();
        v30 = result & ~v28;
        v31 = v30 >> 6;
        v32 = *(v15 + 56 + 8 * (v30 >> 6));
        v33 = 1 << v30;
        v34 = *(v15 + 48);
        if (((1 << v30) & v32) == 0)
        {
LABEL_34:
          *(v27 + 8 * v31) = v33 | v32;
          *(v34 + 8 * v30) = v29;
          v35 = *(v15 + 16);
          v11 = __OFADD__(v35, 1);
          v12 = v35 + 1;
          if (v11)
          {
            goto LABEL_94;
          }

          goto LABEL_10;
        }

        while (*(v34 + 8 * v30) != v29)
        {
          v30 = (v30 + 1) & ~v28;
          v31 = v30 >> 6;
          v32 = *(v27 + 8 * (v30 >> 6));
          v33 = 1 << v30;
          if (((1 << v30) & v32) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_11;
    }

    if (v14 <= 5)
    {
      break;
    }

    if (v14 == 6)
    {
      v15 = sub_1D7263CDC();
      v54 = v15 + 56;
      v55 = -1 << *(v15 + 32);
      v56 = qword_1F5111BC8;
      result = sub_1D72649FC();
      v57 = result & ~v55;
      v58 = v57 >> 6;
      v59 = *(v15 + 56 + 8 * (v57 >> 6));
      v60 = 1 << v57;
      v61 = *(v15 + 48);
      if (((1 << v57) & v59) == 0)
      {
LABEL_9:
        *(v54 + 8 * v58) = v60 | v59;
        *(v61 + 8 * v57) = v56;
        v10 = *(v15 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          goto LABEL_92;
        }

        goto LABEL_10;
      }

      while (*(v61 + 8 * v57) != v56)
      {
        v57 = (v57 + 1) & ~v55;
        v58 = v57 >> 6;
        v59 = *(v54 + 8 * (v57 >> 6));
        v60 = 1 << v57;
        if (((1 << v57) & v59) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (v14 == 7)
    {
      v15 = sub_1D7263CDC();
      v16 = 0;
      v17 = v15 + 56;
      v18 = ~(-1 << *(v15 + 32));
      do
      {
        v21 = qword_1F5111BD0[v16 + 4];
        result = sub_1D72649FC();
        v22 = result & v18;
        v23 = (result & v18) >> 6;
        v24 = *(v17 + 8 * v23);
        v25 = 1 << (result & v18);
        v26 = *(v15 + 48);
        if ((v25 & v24) != 0)
        {
          while (*(v26 + 8 * v22) != v21)
          {
            v22 = (v22 + 1) & v18;
            v23 = v22 >> 6;
            v24 = *(v17 + 8 * (v22 >> 6));
            v25 = 1 << v22;
            if (((1 << v22) & v24) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v17 + 8 * v23) = v25 | v24;
          *(v26 + 8 * v22) = v21;
          v19 = *(v15 + 16);
          v11 = __OFADD__(v19, 1);
          v20 = v19 + 1;
          if (v11)
          {
            goto LABEL_88;
          }

          *(v15 + 16) = v20;
        }

        ++v16;
      }

      while (v16 != 5);
    }

    else
    {
      v15 = sub_1D7263CDC();
      v80 = v15 + 56;
      v81 = ~(-1 << *(v15 + 32));
      v82 = qword_1F5111C38;
      result = sub_1D72649FC();
      v83 = result & v81;
      v84 = (result & v81) >> 6;
      v85 = *(v15 + 56 + 8 * v84);
      v86 = 1 << (result & v81);
      v87 = *(v15 + 48);
      if ((v86 & v85) != 0)
      {
        while (*(v87 + 8 * v83) != v82)
        {
          v83 = (v83 + 1) & v81;
          v84 = v83 >> 6;
          v85 = *(v80 + 8 * (v83 >> 6));
          v86 = 1 << v83;
          if (((1 << v83) & v85) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
LABEL_70:
        *(v80 + 8 * v84) = v86 | v85;
        *(v87 + 8 * v83) = v82;
        v88 = *(v15 + 16);
        v11 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v11)
        {
          goto LABEL_89;
        }

        *(v15 + 16) = v89;
      }

      v90 = qword_1F5111C40;
      result = sub_1D72649FC();
      v91 = result & v81;
      v92 = (result & v81) >> 6;
      v93 = *(v80 + 8 * v92);
      v94 = 1 << (result & v81);
      v95 = *(v15 + 48);
      if ((v94 & v93) == 0)
      {
LABEL_75:
        *(v80 + 8 * v92) = v94 | v93;
        *(v95 + 8 * v91) = v90;
        v96 = *(v15 + 16);
        v11 = __OFADD__(v96, 1);
        v12 = v96 + 1;
        if (v11)
        {
          goto LABEL_89;
        }

        goto LABEL_10;
      }

      while (*(v95 + 8 * v91) != v90)
      {
        v91 = (v91 + 1) & v81;
        v92 = v91 >> 6;
        v93 = *(v80 + 8 * (v91 >> 6));
        v94 = 1 << v91;
        if (((1 << v91) & v93) == 0)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_11:
    v6 &= v6 - 1;
    result = sub_1D6987118(v15);
  }

  if (v14 == 4)
  {
    v15 = sub_1D7263CDC();
    v45 = v15 + 56;
    v46 = -1 << *(v15 + 32);
    v47 = qword_1F5111B78;
    result = sub_1D72649FC();
    v48 = result & ~v46;
    v49 = v48 >> 6;
    v50 = *(v15 + 56 + 8 * (v48 >> 6));
    v51 = 1 << v48;
    v52 = *(v15 + 48);
    if (((1 << v48) & v50) == 0)
    {
LABEL_48:
      *(v45 + 8 * v49) = v51 | v50;
      *(v52 + 8 * v48) = v47;
      v53 = *(v15 + 16);
      v11 = __OFADD__(v53, 1);
      v12 = v53 + 1;
      if (v11)
      {
        goto LABEL_90;
      }

      goto LABEL_10;
    }

    while (*(v52 + 8 * v48) != v47)
    {
      v48 = (v48 + 1) & ~v46;
      v49 = v48 >> 6;
      v50 = *(v45 + 8 * (v48 >> 6));
      v51 = 1 << v48;
      if (((1 << v48) & v50) == 0)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_11;
  }

  v15 = sub_1D7263CDC();
  v97 = v15 + 56;
  v98 = -1 << *(v15 + 32);
  v99 = qword_1F5111BA0;
  v100 = sub_1D72649FC() & ~v98;
  v101 = v100 >> 6;
  v102 = *(v15 + 56 + 8 * (v100 >> 6));
  v103 = 1 << v100;
  v104 = *(v15 + 48);
  if (((1 << v100) & v102) != 0)
  {
    while (*(v104 + 8 * v100) != v99)
    {
      v100 = (v100 + 1) & ~v98;
      v101 = v100 >> 6;
      v102 = *(v97 + 8 * (v100 >> 6));
      v103 = 1 << v100;
      if (((1 << v100) & v102) == 0)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_11;
  }

LABEL_81:
  *(v97 + 8 * v101) = v103 | v102;
  *(v104 + 8 * v100) = v99;
  v105 = *(v15 + 16);
  v11 = __OFADD__(v105, 1);
  v12 = v105 + 1;
  if (!v11)
  {
LABEL_10:
    *(v15 + 16) = v12;
    goto LABEL_11;
  }

  __break(1u);
LABEL_84:

  v106 = sub_1D62DCBF4(v110);

  type metadata accessor for FeedGroupEmitterRule();
  sub_1D72644CC();
  swift_allocObject();
  v107 = sub_1D726270C();
  *v108 = v106;
  swift_storeEnumTagMultiPayload();

  return sub_1D5BFCB60(v107);
}

uint64_t sub_1D6113470(uint64_t a1)
{
  if (!*(v1 + 168))
  {
    type metadata accessor for FeedGroupEmitterRule();

    return sub_1D726275C();
  }

  v2 = sub_1D5F1ED98(a1);
  v109 = v2;
  v110 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v13 >= v7)
        {
          goto LABEL_84;
        }

        v6 = *(v3 + 8 * v13);
        ++v9;
        if (v6)
        {
          v9 = v13;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return result;
    }

LABEL_17:
    v14 = *(*(v109 + 48) + (__clz(__rbit64(v6)) | (v9 << 6)));
    sub_1D6118D98();
    if (v14 <= 3)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = sub_1D7263CDC();
          v36 = v15 + 56;
          v37 = -1 << *(v15 + 32);
          v38 = qword_1F5111B28;
          result = sub_1D72649FC();
          v39 = result & ~v37;
          v40 = v39 >> 6;
          v41 = *(v15 + 56 + 8 * (v39 >> 6));
          v42 = 1 << v39;
          v43 = *(v15 + 48);
          if (((1 << v39) & v41) == 0)
          {
LABEL_41:
            *(v36 + 8 * v40) = v42 | v41;
            *(v43 + 8 * v39) = v38;
            v44 = *(v15 + 16);
            v11 = __OFADD__(v44, 1);
            v12 = v44 + 1;
            if (v11)
            {
              goto LABEL_91;
            }

            goto LABEL_10;
          }

          while (*(v43 + 8 * v39) != v38)
          {
            v39 = (v39 + 1) & ~v37;
            v40 = v39 >> 6;
            v41 = *(v36 + 8 * (v39 >> 6));
            v42 = 1 << v39;
            if (((1 << v39) & v41) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v15 = sub_1D7263CDC();
          v71 = v15 + 56;
          v72 = -1 << *(v15 + 32);
          v73 = qword_1F5111B50;
          result = sub_1D72649FC();
          v74 = result & ~v72;
          v75 = v74 >> 6;
          v76 = *(v15 + 56 + 8 * (v74 >> 6));
          v77 = 1 << v74;
          v78 = *(v15 + 48);
          if (((1 << v74) & v76) == 0)
          {
LABEL_64:
            *(v71 + 8 * v75) = v77 | v76;
            *(v78 + 8 * v74) = v73;
            v79 = *(v15 + 16);
            v11 = __OFADD__(v79, 1);
            v12 = v79 + 1;
            if (v11)
            {
              goto LABEL_95;
            }

            goto LABEL_10;
          }

          while (*(v78 + 8 * v74) != v73)
          {
            v74 = (v74 + 1) & ~v72;
            v75 = v74 >> 6;
            v76 = *(v71 + 8 * (v74 >> 6));
            v77 = 1 << v74;
            if (((1 << v74) & v76) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v14)
      {
        v15 = sub_1D7263CDC();
        v62 = v15 + 56;
        v63 = -1 << *(v15 + 32);
        v64 = qword_1F5111B00;
        result = sub_1D72649FC();
        v65 = result & ~v63;
        v66 = v65 >> 6;
        v67 = *(v15 + 56 + 8 * (v65 >> 6));
        v68 = 1 << v65;
        v69 = *(v15 + 48);
        if (((1 << v65) & v67) == 0)
        {
LABEL_58:
          *(v62 + 8 * v66) = v68 | v67;
          *(v69 + 8 * v65) = v64;
          v70 = *(v15 + 16);
          v11 = __OFADD__(v70, 1);
          v12 = v70 + 1;
          if (v11)
          {
            goto LABEL_93;
          }

          goto LABEL_10;
        }

        while (*(v69 + 8 * v65) != v64)
        {
          v65 = (v65 + 1) & ~v63;
          v66 = v65 >> 6;
          v67 = *(v62 + 8 * (v65 >> 6));
          v68 = 1 << v65;
          if (((1 << v65) & v67) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        v15 = sub_1D7263CDC();
        v27 = v15 + 56;
        v28 = -1 << *(v15 + 32);
        v29 = qword_1F5111AD8;
        result = sub_1D72649FC();
        v30 = result & ~v28;
        v31 = v30 >> 6;
        v32 = *(v15 + 56 + 8 * (v30 >> 6));
        v33 = 1 << v30;
        v34 = *(v15 + 48);
        if (((1 << v30) & v32) == 0)
        {
LABEL_34:
          *(v27 + 8 * v31) = v33 | v32;
          *(v34 + 8 * v30) = v29;
          v35 = *(v15 + 16);
          v11 = __OFADD__(v35, 1);
          v12 = v35 + 1;
          if (v11)
          {
            goto LABEL_94;
          }

          goto LABEL_10;
        }

        while (*(v34 + 8 * v30) != v29)
        {
          v30 = (v30 + 1) & ~v28;
          v31 = v30 >> 6;
          v32 = *(v27 + 8 * (v30 >> 6));
          v33 = 1 << v30;
          if (((1 << v30) & v32) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_11;
    }

    if (v14 <= 5)
    {
      break;
    }

    if (v14 == 6)
    {
      v15 = sub_1D7263CDC();
      v54 = v15 + 56;
      v55 = -1 << *(v15 + 32);
      v56 = qword_1F5111BC8;
      result = sub_1D72649FC();
      v57 = result & ~v55;
      v58 = v57 >> 6;
      v59 = *(v15 + 56 + 8 * (v57 >> 6));
      v60 = 1 << v57;
      v61 = *(v15 + 48);
      if (((1 << v57) & v59) == 0)
      {
LABEL_9:
        *(v54 + 8 * v58) = v60 | v59;
        *(v61 + 8 * v57) = v56;
        v10 = *(v15 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          goto LABEL_92;
        }

        goto LABEL_10;
      }

      while (*(v61 + 8 * v57) != v56)
      {
        v57 = (v57 + 1) & ~v55;
        v58 = v57 >> 6;
        v59 = *(v54 + 8 * (v57 >> 6));
        v60 = 1 << v57;
        if (((1 << v57) & v59) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (v14 == 7)
    {
      v15 = sub_1D7263CDC();
      v16 = 0;
      v17 = v15 + 56;
      v18 = ~(-1 << *(v15 + 32));
      do
      {
        v21 = qword_1F5111BD0[v16 + 4];
        result = sub_1D72649FC();
        v22 = result & v18;
        v23 = (result & v18) >> 6;
        v24 = *(v17 + 8 * v23);
        v25 = 1 << (result & v18);
        v26 = *(v15 + 48);
        if ((v25 & v24) != 0)
        {
          while (*(v26 + 8 * v22) != v21)
          {
            v22 = (v22 + 1) & v18;
            v23 = v22 >> 6;
            v24 = *(v17 + 8 * (v22 >> 6));
            v25 = 1 << v22;
            if (((1 << v22) & v24) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v17 + 8 * v23) = v25 | v24;
          *(v26 + 8 * v22) = v21;
          v19 = *(v15 + 16);
          v11 = __OFADD__(v19, 1);
          v20 = v19 + 1;
          if (v11)
          {
            goto LABEL_88;
          }

          *(v15 + 16) = v20;
        }

        ++v16;
      }

      while (v16 != 5);
    }

    else
    {
      v15 = sub_1D7263CDC();
      v80 = v15 + 56;
      v81 = ~(-1 << *(v15 + 32));
      v82 = qword_1F5111C38;
      result = sub_1D72649FC();
      v83 = result & v81;
      v84 = (result & v81) >> 6;
      v85 = *(v15 + 56 + 8 * v84);
      v86 = 1 << (result & v81);
      v87 = *(v15 + 48);
      if ((v86 & v85) != 0)
      {
        while (*(v87 + 8 * v83) != v82)
        {
          v83 = (v83 + 1) & v81;
          v84 = v83 >> 6;
          v85 = *(v80 + 8 * (v83 >> 6));
          v86 = 1 << v83;
          if (((1 << v83) & v85) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
LABEL_70:
        *(v80 + 8 * v84) = v86 | v85;
        *(v87 + 8 * v83) = v82;
        v88 = *(v15 + 16);
        v11 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v11)
        {
          goto LABEL_89;
        }

        *(v15 + 16) = v89;
      }

      v90 = qword_1F5111C40;
      result = sub_1D72649FC();
      v91 = result & v81;
      v92 = (result & v81) >> 6;
      v93 = *(v80 + 8 * v92);
      v94 = 1 << (result & v81);
      v95 = *(v15 + 48);
      if ((v94 & v93) == 0)
      {
LABEL_75:
        *(v80 + 8 * v92) = v94 | v93;
        *(v95 + 8 * v91) = v90;
        v96 = *(v15 + 16);
        v11 = __OFADD__(v96, 1);
        v12 = v96 + 1;
        if (v11)
        {
          goto LABEL_89;
        }

        goto LABEL_10;
      }

      while (*(v95 + 8 * v91) != v90)
      {
        v91 = (v91 + 1) & v81;
        v92 = v91 >> 6;
        v93 = *(v80 + 8 * (v91 >> 6));
        v94 = 1 << v91;
        if (((1 << v91) & v93) == 0)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_11:
    v6 &= v6 - 1;
    result = sub_1D6987118(v15);
  }

  if (v14 == 4)
  {
    v15 = sub_1D7263CDC();
    v45 = v15 + 56;
    v46 = -1 << *(v15 + 32);
    v47 = qword_1F5111B78;
    result = sub_1D72649FC();
    v48 = result & ~v46;
    v49 = v48 >> 6;
    v50 = *(v15 + 56 + 8 * (v48 >> 6));
    v51 = 1 << v48;
    v52 = *(v15 + 48);
    if (((1 << v48) & v50) == 0)
    {
LABEL_48:
      *(v45 + 8 * v49) = v51 | v50;
      *(v52 + 8 * v48) = v47;
      v53 = *(v15 + 16);
      v11 = __OFADD__(v53, 1);
      v12 = v53 + 1;
      if (v11)
      {
        goto LABEL_90;
      }

      goto LABEL_10;
    }

    while (*(v52 + 8 * v48) != v47)
    {
      v48 = (v48 + 1) & ~v46;
      v49 = v48 >> 6;
      v50 = *(v45 + 8 * (v48 >> 6));
      v51 = 1 << v48;
      if (((1 << v48) & v50) == 0)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_11;
  }

  v15 = sub_1D7263CDC();
  v97 = v15 + 56;
  v98 = -1 << *(v15 + 32);
  v99 = qword_1F5111BA0;
  v100 = sub_1D72649FC() & ~v98;
  v101 = v100 >> 6;
  v102 = *(v15 + 56 + 8 * (v100 >> 6));
  v103 = 1 << v100;
  v104 = *(v15 + 48);
  if (((1 << v100) & v102) != 0)
  {
    while (*(v104 + 8 * v100) != v99)
    {
      v100 = (v100 + 1) & ~v98;
      v101 = v100 >> 6;
      v102 = *(v97 + 8 * (v100 >> 6));
      v103 = 1 << v100;
      if (((1 << v100) & v102) == 0)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_11;
  }

LABEL_81:
  *(v97 + 8 * v101) = v103 | v102;
  *(v104 + 8 * v100) = v99;
  v105 = *(v15 + 16);
  v11 = __OFADD__(v105, 1);
  v12 = v105 + 1;
  if (!v11)
  {
LABEL_10:
    *(v15 + 16) = v12;
    goto LABEL_11;
  }

  __break(1u);
LABEL_84:

  v106 = sub_1D62DCBF4(v110);

  type metadata accessor for FeedGroupEmitterRule();
  sub_1D72644CC();
  swift_allocObject();
  v107 = sub_1D726270C();
  *v108 = v106;
  swift_storeEnumTagMultiPayload();

  return sub_1D5BFCB60(v107);
}

BOOL static FeedGroupKnobsRules.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v156 = a1[2];
  v152 = a1[3];
  v149 = a1[4];
  v147 = a1[5];
  v142 = a1[7];
  v143 = a1[6];
  v140 = a1[8];
  v136 = a1[10];
  v137 = a1[9];
  v133 = a1[11];
  v131 = a1[12];
  v116 = a1[13];
  v118 = a1[14];
  v120 = a1[15];
  v122 = a1[16];
  v124 = a1[17];
  v126 = a1[18];
  v128 = a1[19];
  v5 = a1[20];
  v4 = a1[21];
  v145 = a1[22];
  v114 = a1[23];
  v130 = a1[24];
  v7 = *a2;
  v6 = a2[1];
  v154 = a2[2];
  v150 = a2[3];
  v148 = a2[4];
  v146 = a2[5];
  v144 = a2[6];
  v141 = a2[7];
  v139 = a2[8];
  v138 = a2[9];
  v135 = a2[10];
  v134 = a2[11];
  v132 = a2[12];
  v115 = a2[13];
  v117 = a2[14];
  v119 = a2[15];
  v121 = a2[16];
  v123 = a2[17];
  v125 = a2[18];
  v127 = a2[19];
  v8 = a2[21];
  v129 = a2[20];
  v9 = a2[22];
  v10 = a2[23];
  v11 = a2[24];
  v12 = a2[25];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    if (*(v2 + 16) != *(v7 + 16))
    {
      return 0;
    }

    v97 = a1[25];
    v98 = a2[26];
    v99 = a1[26];
    v100 = a2[27];
    v101 = a1[27];
    v102 = a2[28];
    v103 = a1[28];
    v104 = a2[29];
    v105 = a1[29];
    v106 = a2[30];
    v107 = a1[30];
    v108 = a2[31];
    v109 = a1[31];
    v110 = a2[32];
    v111 = a1[32];
    v112 = a2[33];
    v113 = a1[33];
    v94 = a1[20];
    v13 = a2[21];
    v14 = a1[21];
    v15 = *(v2 + 24);
    v16 = *(v7 + 24);

    v17 = v15;
    v4 = v14;
    v8 = v13;
    v5 = v94;
    LOBYTE(v16) = sub_1D635E9D0(v17, v16);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v97 = a1[25];
    v98 = a2[26];
    v99 = a1[26];
    v100 = a2[27];
    v101 = a1[27];
    v102 = a2[28];
    v103 = a1[28];
    v104 = a2[29];
    v105 = a1[29];
    v106 = a2[30];
    v107 = a1[30];
    v108 = a2[31];
    v109 = a1[31];
    v110 = a2[32];
    v111 = a1[32];
    v112 = a2[33];
    v113 = a1[33];
    if (v7)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (*(v3 + 16) != *(v6 + 16))
    {
      return 0;
    }

    v18 = *(v3 + 24);
    v19 = v4;
    v20 = *(v6 + 24);

    v21 = v20;
    v4 = v19;
    LOBYTE(v18) = sub_1D635E9D0(v18, v21);

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v156)
  {
    if (!v154)
    {
      return 0;
    }

    if (*(v156 + 16) != *(v154 + 16))
    {
      return 0;
    }

    v22 = *(v156 + 24);
    v157 = v4;
    v23 = *(v154 + 24);

    v24 = v23;
    v4 = v157;
    LOBYTE(v22) = sub_1D635E9D0(v22, v24);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v154)
  {
    return 0;
  }

  if (v152)
  {
    if (!v150)
    {
      return 0;
    }

    v158 = v4;
    v25 = *(v152 + 16);
    v26 = *(v150 + 16);

    if ((sub_1D5BFC390(v25, v26) & 1) == 0)
    {
      goto LABEL_122;
    }

    v27 = sub_1D63606A8(*(v152 + 24), *(v150 + 24));

    v4 = v158;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v150)
  {
    return 0;
  }

  if (v149)
  {
    if (!v148)
    {
      return 0;
    }

    if (*(v149 + 16) != *(v148 + 16))
    {
      return 0;
    }

    v28 = *(v149 + 24);
    v159 = v4;
    v29 = *(v148 + 24);

    v30 = v29;
    v4 = v159;
    LOBYTE(v28) = sub_1D635E760(v28, v30);

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v148)
  {
    return 0;
  }

  if (v147)
  {
    if (!v146)
    {
      return 0;
    }

    if (*(v147 + 16) != *(v146 + 16))
    {
      return 0;
    }

    v31 = *(v147 + 24);
    v160 = v4;
    v32 = *(v146 + 24);

    v33 = v32;
    v4 = v160;
    LOBYTE(v31) = sub_1D635E760(v31, v33);

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v146)
  {
    return 0;
  }

  v34 = v8;
  if (v143)
  {
    v35 = v145;
    if (!v144)
    {
      return 0;
    }

    v95 = v5;
    v161 = v4;
    v96 = v9;
    v151 = v10;
    v153 = v11;
    v155 = v12;
    if (*(v143 + 16) != *(v144 + 16))
    {
      return 0;
    }

    v36 = *(v143 + 24);
    v37 = *(v144 + 24);

    LOBYTE(v36) = sub_1D635E760(v36, v37);

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v95 = v5;
    v161 = v4;
    v96 = v9;
    v35 = v145;
    v151 = v10;
    v153 = v11;
    v155 = v12;
    if (v144)
    {
      return 0;
    }
  }

  if (v142)
  {
    if (!v141)
    {
      return 0;
    }

    if ((sub_1D63603D8(*(v142 + 16), *(v141 + 16)) & 1) == 0)
    {
      return 0;
    }

    v38 = *(v142 + 24);
    v39 = *(v141 + 24);

    LOBYTE(v38) = sub_1D6360458(v38, v39);

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v141)
  {
    return 0;
  }

  if (v140)
  {
    if (!v139)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v40 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v139)
  {
    return 0;
  }

  if (v137)
  {
    if (!v138)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v41 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v138)
  {
    return 0;
  }

  if (v136)
  {
    if (!v135)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v42 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v135)
  {
    return 0;
  }

  if (v133)
  {
    if (!v134)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v43 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v134)
  {
    return 0;
  }

  if (v131)
  {
    if (!v132)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v44 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v132)
  {
    return 0;
  }

  if (v116)
  {
    if (!v115)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v45 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  if (v118)
  {
    if (!v117)
    {
      return 0;
    }

    if (*(v118 + 16) != *(v117 + 16))
    {
      return 0;
    }

    v46 = *(v118 + 24);
    v47 = *(v117 + 24);

    LOBYTE(v46) = sub_1D635E760(v46, v47);

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v117)
  {
    return 0;
  }

  if (v120)
  {
    if (!v119)
    {
      return 0;
    }

    if (*(v120 + 16) != *(v119 + 16))
    {
      return 0;
    }

    v48 = *(v120 + 24);
    v49 = *(v119 + 24);

    LOBYTE(v48) = sub_1D635E760(v48, v49);

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v119)
  {
    return 0;
  }

  if (v122)
  {
    if (!v121)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v50 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v121)
  {
    return 0;
  }

  if (v124)
  {
    if (!v123)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v51 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v51 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v123)
  {
    return 0;
  }

  if (v126)
  {
    if (!v125)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v52 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  if (v128)
  {
    if (!v127)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet();

    v53 = static FeedGroupKnobsRuleSet.== infix(_:_:)();

    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v127)
  {
    return 0;
  }

  if (v95)
  {
    if (!v129)
    {
      return 0;
    }

    v54 = *(v95 + 16);
    v55 = *(v129 + 16);

    if ((sub_1D5E235F0(v54, v55) & 1) == 0)
    {
      goto LABEL_122;
    }

    v56 = sub_1D63603C0(*(v95 + 24), *(v129 + 24));

    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v129)
  {
    return 0;
  }

  if (v161)
  {
    if (!v34)
    {
      return 0;
    }

    v57 = *(v161 + 16);
    v58 = *(v34 + 16);

    if ((sub_1D5E235F0(v57, v58) & 1) == 0)
    {
      goto LABEL_122;
    }

    v59 = sub_1D63603C0(*(v161 + 24), *(v34 + 24));

    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (v35)
  {
    if (!v96)
    {
      return 0;
    }

    v61 = *(v35 + 16);
    v62 = *(v96 + 16);

    if ((sub_1D5E232B8(v61, v62) & 1) == 0)
    {
      goto LABEL_122;
    }

    v63 = sub_1D63603A8(*(v35 + 24), *(v96 + 24));

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  if (v114)
  {
    if (!v151)
    {
      return 0;
    }

    v64 = *(v114 + 16);
    v65 = *(v151 + 16);

    if ((sub_1D5E232B8(v64, v65) & 1) == 0)
    {
      goto LABEL_122;
    }

    v66 = sub_1D63603A8(*(v114 + 24), *(v151 + 24));

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v151)
  {
    return 0;
  }

  if (v130)
  {
    if (!v153)
    {
      return 0;
    }

    v67 = *(v130 + 16);
    v68 = *(v153 + 16);

    if ((sub_1D5E2309C(v67, v68) & 1) == 0)
    {
      goto LABEL_122;
    }

    v69 = sub_1D6360390(*(v130 + 24), *(v153 + 24));

    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  if (v97)
  {
    if (!v155)
    {
      return 0;
    }

    v70 = *(v97 + 16);
    v71 = *(v155 + 16);

    if ((sub_1D5E2309C(v70, v71) & 1) == 0)
    {
      goto LABEL_122;
    }

    v72 = sub_1D6360390(*(v97 + 24), *(v155 + 24));

    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  if (v99)
  {
    if (!v98)
    {
      return 0;
    }

    if (*(v99 + 16) != *(v98 + 16))
    {
      return 0;
    }

    v73 = *(v99 + 24);
    v74 = *(v98 + 24);

    LOBYTE(v73) = sub_1D6709344(v73, v74);

    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  if (v101)
  {
    if (!v100)
    {
      return 0;
    }

    if (*(v101 + 16) != *(v100 + 16))
    {
      return 0;
    }

    v75 = *(v101 + 24);
    v76 = *(v100 + 24);

    LOBYTE(v75) = sub_1D6709344(v75, v76);

    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v100)
  {
    return 0;
  }

  if (v103)
  {
    if (!v102)
    {
      return 0;
    }

    v77 = *(v103 + 16);
    v78 = *(v102 + 16);

    if ((sub_1D5D3A964(v77, v78) & 1) == 0)
    {
      goto LABEL_122;
    }

    v79 = sub_1D6360378(*(v103 + 24), *(v102 + 24));

    if ((v79 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v102)
  {
    return 0;
  }

  if (v105)
  {
    if (!v104)
    {
      return 0;
    }

    v80 = *(v105 + 16);
    v81 = *(v104 + 16);

    if ((sub_1D5D3A964(v80, v81) & 1) == 0)
    {
      goto LABEL_122;
    }

    v82 = sub_1D6360378(*(v105 + 24), *(v104 + 24));

    if ((v82 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  if (v107)
  {
    if (!v106)
    {
      return 0;
    }

    v83 = *(v107 + 16);
    v84 = *(v106 + 16);

    if ((sub_1D6348F40(v83, v84) & 1) == 0)
    {
      goto LABEL_122;
    }

    v85 = sub_1D635FF88(*(v107 + 24), *(v106 + 24));

    if ((v85 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v106)
  {
    return 0;
  }

  if (v109)
  {
    if (!v108)
    {
      return 0;
    }

    v86 = *(v109 + 16);
    v87 = *(v108 + 16);

    if ((sub_1D5E22DD4(v86, v87) & 1) == 0)
    {
      goto LABEL_122;
    }

    v88 = sub_1D635FF70(*(v109 + 24), *(v108 + 24));

    if ((v88 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v108)
  {
    return 0;
  }

  if (!v111)
  {
    if (v110)
    {
      return 0;
    }

    goto LABEL_193;
  }

  if (!v110)
  {
    return 0;
  }

  v89 = *(v111 + 16);
  v90 = *(v110 + 16);

  if ((sub_1D5E22DD4(v89, v90) & 1) == 0)
  {
LABEL_122:

    return 0;
  }

  v91 = sub_1D635FF70(*(v111 + 24), *(v110 + 24));

  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_193:
  if (!v113)
  {
    return !v112;
  }

  if (!v112)
  {
    return 0;
  }

  if (*(v113 + 16) != *(v112 + 16))
  {
    return 0;
  }

  v92 = *(v113 + 24);
  v93 = *(v112 + 24);

  LOBYTE(v92) = sub_1D6709344(v92, v93);

  return (v92 & 1) != 0;
}

uint64_t sub_1D61156CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9E20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73C9E40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C9E60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465646563657270 && a2 == 0xEA00000000007942 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9E80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6563657250746F6ELL && a2 == 0xED00007942646564 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9EA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9EC0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9EE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x73694470756F7267 && a2 == 0xED000065636E6174 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9F00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xEA00000000007942 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9F20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F6C6C6F46746F6ELL && a2 == 0xED00007942646577 || (sub_1D72646CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65 || (sub_1D72646CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4F73796144746F6ELL && a2 == 0xED00006B65655766 || (sub_1D72646CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x44664F73656D6974 && a2 == 0xEA00000000007961 || (sub_1D72646CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x73656D6954746F6ELL && a2 == 0xED0000796144664FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x65646F4D64656566 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4D64656546746F6ELL && a2 == 0xEC0000007365646FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6B53737961776C61 && a2 == 0xEA00000000007069 || (sub_1D72646CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C9F60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4F746E65746E6F63 && a2 == 0xEE0079616C726576 || (sub_1D72646CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9F80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9FA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C9FC0 == a2)
  {

    return 33;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 33;
    }

    else
    {
      return 34;
    }
  }
}

uint64_t sub_1D611616C(char a1)
{
  result = 0x746C754D6B6E6172;
  switch(a1)
  {
    case 1:
      result = 0x726F635365736162;
      break;
    case 2:
      result = 0x72685465726F6373;
      break;
    case 3:
      result = 0x726F7463656C6573;
      break;
    case 4:
      result = 0x727563634F78616DLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 27:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 0x646563657270;
      goto LABEL_24;
    case 9:
    case 13:
    case 17:
    case 31:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6563657250746F6ELL;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x73694470756F7267;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      v3 = 0x776F6C6C6F66;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 18:
      result = 0x6F6C6C6F46746F6ELL;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x6557664F73796164;
      break;
    case 21:
      result = 0x4F73796144746F6ELL;
      break;
    case 22:
      result = 0x44664F73656D6974;
      break;
    case 23:
      result = 0x73656D6954746F6ELL;
      break;
    case 24:
      result = 0x65646F4D64656566;
      break;
    case 25:
      result = 0x4D64656546746F6ELL;
      break;
    case 26:
      result = 0x6B53737961776C61;
      break;
    case 28:
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x4F746E65746E6F63;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6116550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61156CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6116580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6118548();
  *a1 = result;
  return result;
}

uint64_t sub_1D61165AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6116600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRules.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v62 = *(a2 + 24);
  v63 = v4;
  type metadata accessor for FeedGroupKnobsRules.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - v7;
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[3];
  v69 = v2[2];
  v70 = v9;
  v12 = v2[5];
  v67 = v2[4];
  v68 = v11;
  v13 = v2[7];
  v65 = v2[6];
  v66 = v12;
  v64 = v13;
  v14 = v2[8];
  v60 = v2[9];
  v61 = v14;
  v15 = v2[10];
  v58 = v2[11];
  v59 = v15;
  v16 = v2[13];
  v57 = v2[12];
  v56 = v16;
  v17 = v2[15];
  v55 = v2[14];
  v54 = v17;
  v18 = v2[17];
  v53 = v2[16];
  v36 = v18;
  v19 = v2[19];
  v37 = v2[18];
  v38 = v19;
  v20 = v2[21];
  v39 = v2[20];
  v40 = v20;
  v21 = v2[23];
  v41 = v2[22];
  v42 = v21;
  v22 = v2[25];
  v43 = v2[24];
  v44 = v22;
  v23 = v2[27];
  v45 = v2[26];
  v46 = v23;
  v24 = v2[29];
  v47 = v2[28];
  v48 = v24;
  v25 = v2[31];
  v49 = v2[30];
  v50 = v25;
  v26 = v2[33];
  v51 = v2[32];
  v52 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v27 = v8;
  sub_1D7264B5C();
  v73 = v10;
  LOBYTE(v78) = 0;
  sub_1D605A334();
  sub_1D6117D9C(&qword_1EDF13E10, sub_1D605A334);
  v28 = AssociatedConformanceWitness;
  sub_1D72643BC();
  if (v28)
  {

    return (*(v72 + 8))(v8, v5);
  }

  else
  {
    v30 = v68;
    v31 = v69;

    v73 = v70;
    LOBYTE(v78) = 1;
    sub_1D72643BC();
    v73 = v31;
    LOBYTE(v78) = 2;
    v32 = v27;
    sub_1D72643BC();
    v73 = v30;
    LOBYTE(v78) = 3;
    sub_1D6117D20();
    sub_1D6117D9C(&qword_1EDF14260, sub_1D6117D20);
    sub_1D72643BC();
    v73 = v67;
    LOBYTE(v78) = 4;
    sub_1D5E3A600();
    sub_1D6117D9C(&qword_1EDF13E08, sub_1D5E3A600);
    sub_1D72643BC();
    v73 = v66;
    LOBYTE(v78) = 5;
    sub_1D72643BC();
    v73 = v65;
    LOBYTE(v78) = 6;
    sub_1D72643BC();
    v73 = v64;
    LOBYTE(v78) = 7;
    sub_1D6117DE4();
    sub_1D6117D9C(qword_1EDF140B0, sub_1D6117DE4);
    sub_1D72643BC();
    v78 = v61;
    v77 = 8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v70 = swift_getAssociatedConformanceWitness();
    v34 = swift_getAssociatedConformanceWitness();
    v73 = AssociatedTypeWitness;
    v74 = AssociatedConformanceWitness;
    v75 = v70;
    v76 = v34;
    type metadata accessor for FeedGroupKnobsRuleSet();
    swift_getWitnessTable();
    AssociatedConformanceWitness = v5;
    sub_1D72643BC();
    v73 = v60;
    LOBYTE(v78) = 9;
    sub_1D72643BC();
    v73 = v59;
    LOBYTE(v78) = 10;
    sub_1D72643BC();
    v73 = v58;
    LOBYTE(v78) = 11;
    sub_1D72643BC();
    v73 = v57;
    LOBYTE(v78) = 12;
    sub_1D72643BC();
    v73 = v56;
    LOBYTE(v78) = 13;
    sub_1D72643BC();
    v73 = v55;
    LOBYTE(v78) = 14;
    sub_1D72643BC();
    v73 = v54;
    LOBYTE(v78) = 15;
    sub_1D72643BC();
    v73 = v53;
    LOBYTE(v78) = 16;
    sub_1D72643BC();
    v73 = v36;
    LOBYTE(v78) = 17;
    sub_1D72643BC();
    v73 = v37;
    LOBYTE(v78) = 18;
    sub_1D72643BC();
    v73 = v38;
    LOBYTE(v78) = 19;
    sub_1D72643BC();
    v73 = v39;
    LOBYTE(v78) = 20;
    sub_1D6117EE8();
    sub_1D6117D9C(qword_1EDF14288, sub_1D6117EE8);
    sub_1D72643BC();
    v73 = v40;
    LOBYTE(v78) = 21;
    sub_1D72643BC();
    v73 = v41;
    LOBYTE(v78) = 22;
    sub_1D6118068();
    sub_1D6117D9C(&qword_1EDF14268, sub_1D6118068);
    sub_1D72643BC();
    v73 = v42;
    LOBYTE(v78) = 23;
    sub_1D72643BC();
    v73 = v43;
    LOBYTE(v78) = 24;
    sub_1D6118194();
    sub_1D6117D9C(&qword_1EDF14278, sub_1D6118194);
    sub_1D72643BC();
    v73 = v44;
    LOBYTE(v78) = 25;
    sub_1D72643BC();
    v73 = v45;
    LOBYTE(v78) = 26;
    sub_1D6060284();
    sub_1D6117D9C(&qword_1EDF13E18, sub_1D6060284);
    sub_1D72643BC();
    v73 = v46;
    LOBYTE(v78) = 27;
    sub_1D72643BC();
    v73 = v47;
    LOBYTE(v78) = 28;
    sub_1D61182C0();
    sub_1D6117D9C(&qword_1EDF14270, sub_1D61182C0);
    sub_1D72643BC();
    v73 = v48;
    LOBYTE(v78) = 29;
    sub_1D72643BC();
    v73 = v49;
    LOBYTE(v78) = 30;
    sub_1D6118398();
    sub_1D6117D9C(&qword_1EDF13E68, sub_1D6118398);
    sub_1D72643BC();
    v73 = v50;
    LOBYTE(v78) = 31;
    sub_1D611841C();
    sub_1D6117D9C(&qword_1EDF14280, sub_1D611841C);
    sub_1D72643BC();
    v73 = v51;
    LOBYTE(v78) = 32;
    sub_1D72643BC();
    v73 = v52;
    LOBYTE(v78) = 33;
    sub_1D72643BC();
    return (*(v72 + 8))(v32, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D6117554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    v12 = type metadata accessor for FeedGroupEmitterRule();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    v7 = a1[1];
    v6 = a1[2];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1D60A5910();
    v9 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 16))(a3, a2, AssociatedTypeWitness);
    *v9 = v4;
    v9[1] = v7;
    v9[2] = v6;
    v10 = type metadata accessor for FeedGroupEmitterRule();
    swift_storeEnumTagMultiPayload();
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }
}

uint64_t FeedGroupKnobsRules.merge(rankMultiplier:baseScore:scoreThreshold:maxOccurrence:daysOfWeek:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v12 = v11;
  v20 = *a10;
  memcpy(__dst, v12, 0x110uLL);
  if ((a2 & 1) != 0 && (a4 & 1) != 0 && (a6 & 1) != 0 && (a8 & 1) != 0 && v20 == 9)
  {
    memcpy(a9, v12, 0x110uLL);
    return (*(*(a11 - 8) + 16))(&v80, __dst, a11);
  }

  v62 = v20;
  v22 = __dst[0];
  if (!__dst[0])
  {
    v80 = a1;
    v81 = a2 & 1;
    v22 = sub_1D6118550(&v80, *(a11 + 16), MEMORY[0x1E69E63B0], *(a11 + 24), MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
  }

  v69 = v22;
  v23 = __dst[1];
  if (!__dst[1])
  {
    v80 = a3;
    v81 = a4 & 1;
    v25 = *(a11 + 16);
    v26 = *(a11 + 24);

    v68 = sub_1D6118550(&v80, v25, MEMORY[0x1E69E63B0], v26, MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
    v24 = __dst[2];
    if (__dst[2])
    {
      goto LABEL_11;
    }

LABEL_13:
    v80 = a5;
    v81 = a6 & 1;
    v27 = *(a11 + 16);
    v28 = *(a11 + 24);

    v67 = sub_1D6118550(&v80, v27, MEMORY[0x1E69E63B0], v28, MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
    goto LABEL_14;
  }

  v68 = v23;
  v24 = __dst[2];
  if (!__dst[2])
  {
    goto LABEL_13;
  }

LABEL_11:

  v67 = v24;
LABEL_14:
  v29 = __dst[4];
  v66 = __dst[3];
  if (__dst[4])
  {

    v65 = v29;
  }

  else
  {
    v80 = a7;
    v81 = a8 & 1;
    v30 = *(a11 + 16);
    v31 = *(a11 + 24);

    v65 = sub_1D6118550(&v80, v30, MEMORY[0x1E69E6530], v31, MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], MEMORY[0x1E69E6550]);
  }

  v32 = __dst[6];
  v33 = __dst[7];
  v34 = __dst[8];
  v35 = __dst[9];
  v36 = __dst[10];
  v37 = __dst[11];
  v71 = __dst[5];
  v72 = __dst[14];
  v73 = __dst[13];
  v74 = __dst[16];
  v79 = __dst[17];
  v75 = __dst[15];
  v77 = __dst[18];
  v38 = __dst[20];
  v70 = __dst[19];
  v64 = __dst[12];
  if (__dst[20])
  {

    v39 = v32;

    v40 = v33;

    v41 = v34;

    v42 = v35;

    v43 = v37;

    v44 = v64;

    v45 = v38;
  }

  else
  {
    LOBYTE(v80) = v62;
    v61 = *(a11 + 16);
    v63 = *(a11 + 24);
    v60 = sub_1D6117F6C();
    v59 = sub_1D6117FC0();
    v58 = sub_1D6118014();

    v39 = v32;

    v40 = v33;

    v41 = v34;

    v42 = v35;

    v43 = v37;

    v44 = v64;

    v45 = sub_1D61187BC(&v80, v61, &type metadata for FeedDaysOfWeek, v63, v60, v59, v58);
  }

  *a9 = v69;
  a9[1] = v68;
  a9[2] = v67;
  a9[3] = v66;
  a9[4] = v65;
  a9[5] = v71;
  a9[6] = v39;
  a9[7] = v40;
  a9[8] = v41;
  a9[9] = v42;
  a9[10] = v36;
  a9[11] = v43;
  v46 = __dst[21];
  v47 = __dst[22];
  v48 = __dst[23];
  v49 = __dst[24];
  a9[12] = v44;
  a9[13] = v73;
  v50 = __dst[25];
  v51 = __dst[26];
  a9[14] = v72;
  a9[15] = v75;
  v52 = __dst[27];
  v53 = __dst[28];
  a9[16] = v74;
  a9[17] = v79;
  v54 = __dst[29];
  v55 = __dst[30];
  a9[18] = v77;
  a9[19] = v70;
  a9[20] = v45;
  a9[21] = v46;
  v56 = __dst[31];
  v57 = __dst[32];
  a9[22] = v47;
  a9[23] = v48;
  a9[24] = v49;
  a9[25] = v50;
  a9[26] = v51;
  a9[27] = v52;
  a9[28] = v53;
  a9[29] = v54;
  a9[30] = v55;
  a9[31] = v56;
  a9[32] = v57;
  a9[33] = 0;
}

void sub_1D6117D20()
{
  if (!qword_1EDF37590)
  {
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF37590);
    }
  }
}

uint64_t sub_1D6117D9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6117DE4()
{
  if (!qword_1EDF36CF8)
  {
    sub_1D60A5910();
    sub_1D6117D9C(&qword_1EDF35BB8, sub_1D60A5910);
    sub_1D6117D9C(qword_1EDF35BC8, sub_1D60A5910);
    sub_1D6117D9C(&qword_1EDF35BC0, sub_1D60A5910);
    v0 = type metadata accessor for FeedGroupKnobsRuleList();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF36CF8);
    }
  }
}

void sub_1D6117EE8()
{
  if (!qword_1EDF375E0)
  {
    sub_1D6117F6C();
    sub_1D6117FC0();
    sub_1D6118014();
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF375E0);
    }
  }
}

unint64_t sub_1D6117F6C()
{
  result = qword_1EDF39C78;
  if (!qword_1EDF39C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C78);
  }

  return result;
}

unint64_t sub_1D6117FC0()
{
  result = qword_1EDF39C90[0];
  if (!qword_1EDF39C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF39C90);
  }

  return result;
}

unint64_t sub_1D6118014()
{
  result = qword_1EDF39C88;
  if (!qword_1EDF39C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C88);
  }

  return result;
}

void sub_1D6118068()
{
  if (!qword_1EDF375A0)
  {
    sub_1D61180EC();
    sub_1D6118140();
    sub_1D60A6E1C();
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF375A0);
    }
  }
}

unint64_t sub_1D61180EC()
{
  result = qword_1EDF34918;
  if (!qword_1EDF34918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34918);
  }

  return result;
}

unint64_t sub_1D6118140()
{
  result = qword_1EDF34930;
  if (!qword_1EDF34930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34930);
  }

  return result;
}

void sub_1D6118194()
{
  if (!qword_1EDF375C0)
  {
    sub_1D6118218();
    sub_1D611826C();
    sub_1D60A5854();
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF375C0);
    }
  }
}

unint64_t sub_1D6118218()
{
  result = qword_1EDF34E58;
  if (!qword_1EDF34E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E58);
  }

  return result;
}

unint64_t sub_1D611826C()
{
  result = qword_1EDF34E70[0];
  if (!qword_1EDF34E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF34E70);
  }

  return result;
}

void sub_1D61182C0()
{
  if (!qword_1EDF375B0)
  {
    sub_1D5C7F0F0();
    sub_1D6118344();
    sub_1D5B5C29C();
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF375B0);
    }
  }
}

unint64_t sub_1D6118344()
{
  result = qword_1EDF34A10;
  if (!qword_1EDF34A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34A10);
  }

  return result;
}

void sub_1D6118398()
{
  if (!qword_1EDF36728)
  {
    sub_1D5EE2638();
    sub_1D5EE268C();
    sub_1D5EE26E0();
    v0 = type metadata accessor for FeedGroupKnobsRuleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF36728);
    }
  }
}

void sub_1D611841C()
{
  if (!qword_1EDF375D0)
  {
    sub_1D61184A0();
    sub_1D61184F4();
    sub_1D60A56CC();
    v0 = type metadata accessor for FeedGroupKnobsRuleSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF375D0);
    }
  }
}

unint64_t sub_1D61184A0()
{
  result = qword_1EDF37100;
  if (!qword_1EDF37100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37100);
  }

  return result;
}

unint64_t sub_1D61184F4()
{
  result = qword_1EDF37118;
  if (!qword_1EDF37118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37118);
  }

  return result;
}

uint64_t sub_1D6118550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v11 = sub_1D726393C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v29 - v24;
  (*(v12 + 16))(v15, a1, v11, v23);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v25, v15, a3);
    v31 = a3;
    v32 = a5;
    v27 = v30;
    v33 = a6;
    v34 = v30;
    type metadata accessor for FeedGroupKnobsRuleValue();
    (*(v16 + 16))(v20, v25, a3);
    v31 = a3;
    v32 = a5;
    v33 = a6;
    v34 = v27;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector();
    v28 = sub_1D726275C();
    (*(v16 + 8))(v25, a3);
    return FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(v20, v28);
  }
}

uint64_t sub_1D61187BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D726393C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v28 - v15;
  v17 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v20);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v22, v16, a3);
    v28[0] = a3;
    v28[1] = a5;
    v28[2] = a6;
    v28[3] = a7;
    type metadata accessor for FeedGroupKnobsRuleSet();
    sub_1D5D0DDD4(a3, a3);
    swift_allocObject();
    v24 = sub_1D726270C();
    (*(v17 + 16))(v25, v22, a3);
    v28[0] = sub_1D5BFCB60(v24);
    sub_1D72627FC();
    swift_getWitnessTable();
    v26 = sub_1D7262BBC();
    v27 = sub_1D6117CC4();
    (*(v17 + 8))(v22, a3);
    return FeedGroupKnobsRuleSet.__allocating_init(value:selectors:)(v26, v27);
  }
}

unint64_t sub_1D6118A90()
{
  result = qword_1EDF39C80;
  if (!qword_1EDF39C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C80);
  }

  return result;
}

unint64_t sub_1D6118AE8()
{
  result = qword_1EDF34920;
  if (!qword_1EDF34920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34920);
  }

  return result;
}

uint64_t sub_1D6118B5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D6118BEC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D6118CF0()
{
  result = qword_1EC883DE8;
  if (!qword_1EC883DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DE8);
  }

  return result;
}

unint64_t sub_1D6118D44()
{
  result = qword_1EDF156F8;
  if (!qword_1EDF156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF156F8);
  }

  return result;
}

void sub_1D6118D98()
{
  if (!qword_1EDF1A588)
  {
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A588);
    }
  }
}

void sub_1D6118E10()
{
  if (!qword_1EC883DF0)
  {
    sub_1D60A5910();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883DF0);
    }
  }
}

id sub_1D6118E80()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  return [v0 init];
}

void __swiftcall OfflineAlertControllerFactoryType.alertController(for:)(UIAlertController *__return_ptr retstr, NewsFeed::OfflineModel *a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  [v2 init];
}

void __swiftcall OfflineAlertControllerFactoryType.alertController(for:type:reason:)(UIAlertController *__return_ptr retstr, NewsFeed::OfflineModel *a2, NewsFeed::AlertContentType type, NewsFeed::ContentAvailability::UnavailableReason reason)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  [v4 init];
}

uint64_t sub_1D6118F28()
{
  sub_1D6119020();
  v1 = swift_allocObject();
  sub_1D725F60C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_allocObject();
  return sub_1D725F5CC();
}

uint64_t OfflineAlertControllerFactoryType.alert(for:)()
{
  sub_1D6119020();
  v1 = swift_allocObject();
  sub_1D725F60C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_allocObject();
  return sub_1D725F5CC();
}

unint64_t sub_1D6119020()
{
  result = qword_1EC883E00;
  if (!qword_1EC883E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E00);
  }

  return result;
}

uint64_t AlertContentType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6119138()
{
  result = qword_1EC883E08;
  if (!qword_1EC883E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E08);
  }

  return result;
}

id PuzzleEmbedScript.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D6119A18(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PuzzleEmbedScript.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_identifier);

  return v1;
}

uint64_t PuzzleEmbedScript.eventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName);

  return v1;
}

uint64_t PuzzleEmbedScript.executableScript.getter()
{
  result = sub_1D7261D7C();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v5 = sub_1D725C42C();
    __swift_project_value_buffer(v5, qword_1EDFFCFA8);
    v6 = v0;

    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D5BC5100(*&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName], *&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName + 8], v11);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1D5BC5100(v4, v3, v11);
      _os_log_impl(&dword_1D5B42000, v7, v8, "Sending executable script with eventName: %s and detail: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v10, -1, -1);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73CA010);
    MEMORY[0x1DA6F9910](*&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName], *&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName + 8]);
    MEMORY[0x1DA6F9910](0x69617465647B2C27, 0xEA00000000003A6CLL);
    MEMORY[0x1DA6F9910](v4, v3);

    MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73CA030);
    return v11[0];
  }

  return result;
}

id PuzzleEmbedScript.init(with:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1D6119874(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

id PuzzleEmbedScript.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleEmbedScript.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D6119874(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  ObjectType = swift_getObjectType();
  v9 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](ObjectType, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v13, a1, a3, v11);
  a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_queueable] = 0;
  v14 = a4[1](a3, a4);
  v15 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_identifier];
  *v15 = v14;
  v15[1] = v16;
  v17 = a4[2](a3, a4);
  v18 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName];
  *v18 = v17;
  v18[1] = v19;
  *&a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventDetail] = a4[3](a3, a4);
  v22.receiver = a2;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v9 + 8))(v13, a3);
  return v20;
}

id sub_1D6119A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return sub_1D6119874(v9, v11, a3, a4);
}

unint64_t sub_1D6119CBC()
{
  result = qword_1EC883E30;
  if (!qword_1EC883E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC883E30);
  }

  return result;
}

uint64_t static ContextMenuItem.copyLink(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D611A244(a1, v1);
}

uint64_t static KeyCommandItem.copyLink(recipe:)(void *a1)
{
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v32 - v4;
  sub_1D5B545DC(0, &qword_1EC883E38, MEMORY[0x1E69D7B50]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v32 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 identifier];
  if (!v16)
  {
    sub_1D726207C();
    v16 = sub_1D726203C();
  }

  v17 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  v32[0] = v11;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = v5;
    v21 = a1;
    v22 = v15;
    v23 = v9;
    v24 = v10;
    v25 = MEMORY[0x1DA6FB460](0, v18);
    goto LABEL_8;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = v5;
    v21 = a1;
    v22 = v15;
    v23 = v9;
    v24 = v10;
    v25 = *(v18 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v26 = [v25 identifier];
    swift_unknownObjectRelease();
    v10 = v24;
    v9 = v23;
    v15 = v22;
    a1 = v21;
    v5 = v20;
    v11 = v32[0];
    if (v26)
    {
LABEL_13:
      v27 = [objc_opt_self() nss:v16 NewsURLForRecipeID:v26 articleID:?];

      sub_1D72584EC();
      sub_1D725F82C();
      sub_1D725F81C();
      (*(v11 + 16))(v5, v15, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      v32[1] = a1;
      sub_1D5B5A498(0, &qword_1EDF3C6B0);
      v28 = a1;
      sub_1D725DC7C();
      v29 = sub_1D725DC8C();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D725D15C();
      return (*(v11 + 8))(v15, v10);
    }

    sub_1D726207C();
    v26 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D611A244(void *a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_1D725DC6C();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v13, v15).n128_u64[0];
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 identifier];
  if (!v19)
  {
    sub_1D726207C();
    v19 = sub_1D726203C();
  }

  v20 = [objc_opt_self() nss:v19 NewsURLForTagID:?];

  sub_1D72584EC();
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v14 + 16))(v10, v18, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v29 = a1;
  sub_1D5B5534C(0, &qword_1EDF3C770);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v23 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v27);
  swift_allocObject();
  v24 = sub_1D725D3AC();
  (*(v14 + 8))(v18, v13);
  return v24;
}

uint64_t sub_1D611A660(void *a1, uint64_t a2)
{
  v29[2] = a2;
  v3 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v29[1] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v16, v18).n128_u64[0];
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isPuzzleHub])
  {
    sub_1D725855C();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      (*(v17 + 32))(v21, v15, v16);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  v22 = [a1 identifier];
  if (!v22)
  {
    sub_1D726207C();
    v22 = sub_1D726203C();
  }

  v23 = [objc_opt_self() nss:v22 NewsURLForTagID:?];

  sub_1D72584EC();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_1D5E3E404(v15);
  }

LABEL_9:
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v17 + 16))(v11, v21, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v29[3] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C770);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  swift_allocObject();
  v27 = sub_1D725D5CC();
  (*(v17 + 8))(v21, v16);
  return v27;
}

uint64_t sub_1D611AB78(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v32 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 identifier];
  if (!v16)
  {
    sub_1D726207C();
    v16 = sub_1D726203C();
  }

  v17 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  v32[0] = v7;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = v11;
    v21 = a1;
    v22 = v15;
    v23 = v10;
    v24 = MEMORY[0x1DA6FB460](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = v11;
    v21 = a1;
    v22 = v15;
    v23 = v10;
    v24 = *(v18 + 32);
    swift_unknownObjectRetain();
  }

  v25 = [v24 identifier];
  swift_unknownObjectRelease();
  v10 = v23;
  v15 = v22;
  a1 = v21;
  v11 = v20;
  v7 = v32[0];
  if (!v25)
  {
    sub_1D726207C();
    v25 = sub_1D726203C();
LABEL_12:
  }

  v26 = [objc_opt_self() nss:v16 NewsURLForRecipeID:v25 articleID:?];

  sub_1D72584EC();
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v15, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v32[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF3C6B0);
  v27 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v31 = sub_1D725D5CC();
  (*(v11 + 8))(v15, v10);
  return v31;
}

uint64_t sub_1D611B0E4(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v16 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D725F82C();
  sub_1D725F81C();
  FCFeedDescriptor.feedURL.getter();
  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v16[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF04580);
  v11 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t sub_1D611B3F0(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v28 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v28 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    sub_1D726207C();
    v20 = sub_1D726203C();
  }

  v21 = [objc_opt_self() nss:v20 NewsURLForIssueID:?];

  if (!v21)
  {
    return 0;
  }

  sub_1D72584EC();

  (*(v11 + 32))(v19, v14, v10);
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v19, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v28[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF3C6C0);
  v22 = a1;
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v26 = sub_1D725D5CC();
  (*(v11 + 8))(v19, v10);
  return v26;
}

uint64_t sub_1D611B854(uint64_t a1, void *a2)
{
  v4 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v29 - v15;
  v17 = sub_1D72585BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 8))(a1, v22, v23);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5E3E404(v16);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_1D725F82C();
    sub_1D725F81C();
    (*(v18 + 16))(v12, v21, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    v29[1] = a1;
    sub_1D5B5534C(0, &qword_1EDF3C720);
    swift_unknownObjectRetain();
    sub_1D725DC7C();
    sub_1D726203C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BBB8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDF1BBC0;
    sub_1D725DFDC();
    sub_1D725D5DC();
    swift_allocObject();
    v28 = sub_1D725D5CC();
    (*(v18 + 8))(v21, v17);
    return v28;
  }
}

uint64_t sub_1D611BCBC(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v27 - v6;
  v8 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v27 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    sub_1D726207C();
    v20 = sub_1D726203C();
  }

  v21 = [objc_opt_self() nss:v20 NewsURLForPuzzleID:?];

  if (!v21)
  {
    return 0;
  }

  sub_1D72584EC();

  (*(v11 + 32))(v19, v14, v10);
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v11 + 16))(v7, v19, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v27[1] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C750);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BBB8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF1BBC0;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v25 = sub_1D725D5CC();
  (*(v11 + 8))(v19, v10);
  return v25;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink14feedDescriptorACSo06FCFeedK0C_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D725F82C();
  sub_1D725F81C();
  FCFeedDescriptor.feedURL.getter();
  v13 = sub_1D72585BC();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v19[1] = a1;
  sub_1D5B5A498(0, &qword_1EDF04580);
  v14 = a1;
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v17 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6puzzleACSo17FCPuzzleProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v31 - v15;
  *&v19 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v21 = v31 - v20;
  v22 = [a1 identifier];
  if (!v22)
  {
    sub_1D726207C();
    v22 = sub_1D726203C();
  }

  v23 = [objc_opt_self() nss:v22 NewsURLForPuzzleID:?];

  if (v23)
  {
    sub_1D72584EC();

    v24 = sub_1D72585BC();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v25 = sub_1D72585BC();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  sub_1D5EB8540(v16, v21);
  sub_1D725F82C();
  sub_1D725F81C();
  sub_1D5EB84C0(v21, v12);
  v31[1] = a1;
  sub_1D5B5534C(0, &qword_1EDF3C750);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v28 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  sub_1D725D3DC();
  swift_allocObject();
  v29 = sub_1D725D3AC();
  sub_1D5E3E404(v21);
  return v29;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8copyLink6recipeACSo8FCRecipeC_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - v7;
  v9 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v19 = sub_1D726267C();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA6FB460](0, v19);
    goto LABEL_8;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v22 = [v21 identifier];
    swift_unknownObjectRelease();
    if (v22)
    {
LABEL_13:
      v23 = [objc_opt_self() nss:v17 NewsURLForRecipeID:v22 articleID:?];

      sub_1D72584EC();
      sub_1D725F82C();
      sub_1D725F81C();
      (*(v12 + 16))(v8, v16, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v32 = a1;
      sub_1D5B5A498(0, &qword_1EDF3C6B0);
      v24 = a1;
      sub_1D725DC7C();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      v27 = [objc_opt_self() ts_link];
      (*(v29 + 104))(v31, *MEMORY[0x1E69D7B48], v30);
      sub_1D725D3DC();
      swift_allocObject();
      v28 = sub_1D725D3AC();
      (*(v12 + 8))(v16, v11);
      return v28;
    }

    sub_1D726207C();
    v22 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall FormatProgressView.updateProgress(progress:animated:)(Swift::Double progress, Swift::Bool animated)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      FormatProgressPieView.updatePieProgress(progress:)(progress);
    }

    else
    {
      FormatProgressCircleView.updateCircleProgress(progress:)(progress);
    }
  }

  else
  {
    *&progress = progress;

    [v4 setProgress:animated animated:progress];
  }
}

uint64_t FormatProgressBarView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FormatProgressBarView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id FormatProgressBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FormatProgressBarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id FormatProgressBarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FormatProgressBarView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id FormatProgressBarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D611D1F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed21FormatProgressBarView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D611D2A8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(a3 + 24);
  v7 = sub_1D726210C();
  isUniquelyReferenced_nonNull_native = v7;
  v10 = v8;
  if (v6)
  {
    v119 = sub_1D726210C();
  }

  else
  {
    *&v127 = v7;
    *(&v127 + 1) = v8;

    MEMORY[0x1DA6F9910](1802396018, 0xE400000000000000);
    v11 = *(&v127 + 1);
    v119 = v127;
  }

  v120 = v11;
  if (qword_1EDF05878 != -1)
  {
    goto LABEL_74;
  }

LABEL_5:
  sub_1D5C384A0();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  v125 = a1;
  v13 = [a1 identifier];
  a1 = sub_1D726207C();
  v15 = v14;

  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D5B7E2C0();
  *(v12 + 32) = a1;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = isUniquelyReferenced_nonNull_native;
  v115 = isUniquelyReferenced_nonNull_native;
  *(v12 + 80) = v10;
  *(v12 + 136) = v16;
  *(v12 + 144) = v17;
  v117 = v17;
  *(v12 + 112) = v119;
  *(v12 + 120) = v120;
  v118 = v10;

  sub_1D7262EDC();
  sub_1D725C30C();

  v10 = *(v5 + 16);

  if (!v10)
  {
LABEL_17:

    sub_1D611E10C();
    swift_allocError();
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    *v28 = v125;
    *(v28 + 24) = 0;
LABEL_64:
    swift_willThrow();
    return swift_unknownObjectRetain();
  }

  isUniquelyReferenced_nonNull_native = 0;
  v18 = (v5 + 56);
  while (1)
  {
    if (isUniquelyReferenced_nonNull_native >= *(v5 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_5;
    }

    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    a1 = *(v18 - 1);
    v21 = *v18;
    swift_bridgeObjectRetain_n();

    v22 = [v125 UMCCanonicalID];
    if (!v22)
    {

      goto LABEL_8;
    }

    v129 = a1;
    v126 = v21;
    v121 = v20;
    v23 = v22;
    a1 = sub_1D726207C();
    v25 = v24;

    if (v19 == a1 && v121 == v25)
    {
      break;
    }

    v27 = sub_1D72646CC();

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_8:
    ++isUniquelyReferenced_nonNull_native;

    v18 += 4;
    if (v10 == isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }
  }

LABEL_19:

  v29 = v129;
  v30 = v129[2];

  if (v30)
  {
    v31 = 0;
    v32 = v129 + 7;
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v31 >= v29[2])
      {
        goto LABEL_68;
      }

      v35 = *v32;
      v124 = *(v32 - 1);
      a1 = *(v32 - 2);
      v36 = sub_1D726210C();
      v5 = v37;
      swift_bridgeObjectRetain_n();

      v38 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v127 = v38;
      v39 = sub_1D5B69D90(v36, v5);
      v41 = *(v38 + 16);
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_69;
      }

      v10 = v40;
      if (*(v38 + 24) < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v50 = v39;
      sub_1D6D7DE64();
      v39 = v50;
      if (v10)
      {
LABEL_21:
        v33 = v39;

        isUniquelyReferenced_nonNull_native = v127;
        v34 = (*(v127 + 56) + 16 * v33);
        *v34 = v124;
        v34[1] = v35;

        goto LABEL_22;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = v127;
      *(v127 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v46 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v39);
      *v46 = v36;
      v46[1] = v5;
      v47 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v39);
      *v47 = v124;
      v47[1] = v35;

      v48 = *(isUniquelyReferenced_nonNull_native + 16);
      v43 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v43)
      {
        goto LABEL_72;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v49;
LABEL_22:
      ++v31;
      v32 += 4;
      v29 = v129;
      if (v30 == v31)
      {
        goto LABEL_35;
      }
    }

    sub_1D6D666FC(v44, isUniquelyReferenced_nonNull_native);
    v39 = sub_1D5B69D90(v36, v5);
    if ((v10 & 1) != (v45 & 1))
    {
LABEL_75:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

LABEL_29:
    if (v10)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
LABEL_35:

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D7279970;
  v52 = v29[2];
  v53 = MEMORY[0x1E69E65A8];
  *(v51 + 56) = MEMORY[0x1E69E6530];
  *(v51 + 64) = v53;
  *(v51 + 32) = v52;
  v10 = v125;
  v54 = [v125 identifier];
  v55 = sub_1D726207C();
  v57 = v56;

  v58 = MEMORY[0x1E69E6158];
  v59 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = v117;
  *(v51 + 96) = MEMORY[0x1E69E6158];
  *(v51 + 104) = v117;
  *(v51 + 72) = v55;
  *(v51 + 80) = v57;

  v60 = sub_1D7261DBC();
  v62 = v61;
  v114 = v59;

  *(v51 + 136) = v58;
  *(v51 + 144) = v117;
  *(v51 + 112) = v60;
  *(v51 + 120) = v62;
  sub_1D7262EDC();
  sub_1D725C30C();

  a1 = v126;
  v63 = v126[2];

  if (v63)
  {
    v64 = 0;
    v65 = v126 + 5;
    v5 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v64 >= a1[2])
      {
        goto LABEL_70;
      }

      v67 = *v65;
      v122 = v64;
      v123 = *(v65 - 1);
      a1 = v65[2];
      v68 = sub_1D726210C();
      v10 = v69;
      swift_bridgeObjectRetain_n();

      v70 = v5;
      v5 = swift_isUniquelyReferenced_nonNull_native();
      *&v127 = v70;
      v72 = sub_1D5B69D90(v68, v10);
      v73 = *(v70 + 16);
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_71;
      }

      isUniquelyReferenced_nonNull_native = v71;
      if (*(v70 + 24) >= v75)
      {
        if (v5)
        {
          if (v71)
          {
            goto LABEL_37;
          }
        }

        else
        {
          sub_1D6D7DE64();
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        sub_1D6D666FC(v75, v5);
        v76 = sub_1D5B69D90(v68, v10);
        if ((isUniquelyReferenced_nonNull_native & 1) != (v77 & 1))
        {
          goto LABEL_75;
        }

        v72 = v76;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_37:

          v5 = v127;
          v66 = (*(v127 + 56) + 16 * v72);
          *v66 = v123;
          v66[1] = v67;

          goto LABEL_38;
        }
      }

      v5 = v127;
      *(v127 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v78 = (*(v5 + 48) + 16 * v72);
      *v78 = v68;
      v78[1] = v10;
      v79 = (*(v5 + 56) + 16 * v72);
      *v79 = v123;
      v79[1] = v67;

      v80 = *(v5 + 16);
      v43 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v43)
      {
        goto LABEL_73;
      }

      *(v5 + 16) = v81;
LABEL_38:
      v64 = v122 + 1;
      v65 += 6;
      v10 = v125;
      a1 = v126;
      if (v63 == v122 + 1)
      {
        goto LABEL_52;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1D7279970;

  v83 = a1[2];

  *(v82 + 56) = MEMORY[0x1E69E6530];
  *(v82 + 64) = MEMORY[0x1E69E65A8];
  *(v82 + 32) = v83;
  v84 = [v10 identifier];
  v85 = sub_1D726207C();
  v86 = v5;
  v88 = v87;

  v89 = MEMORY[0x1E69E6158];
  *(v82 + 96) = MEMORY[0x1E69E6158];
  *(v82 + 104) = v117;
  *(v82 + 72) = v85;
  *(v82 + 80) = v88;

  v90 = sub_1D7261DBC();
  v92 = v91;

  *(v82 + 136) = v89;
  *(v82 + 144) = v117;
  *(v82 + 112) = v90;
  *(v82 + 120) = v92;
  sub_1D7262EDC();
  sub_1D725C30C();

  if (!*(v114 + 16) || (v93 = sub_1D5B69D90(1936615799, 0xE400000000000000), (v94 & 1) == 0))
  {

    sub_1D611E10C();
    swift_allocError();
    *v109 = v10;
    v110 = xmmword_1D729D540;
LABEL_63:
    *(v109 + 8) = v110;
    *(v109 + 24) = 1;
    goto LABEL_64;
  }

  if (!*(v114 + 16))
  {
LABEL_62:

    sub_1D611E10C();
    swift_allocError();
    *v109 = v10;
    v110 = xmmword_1D729D530;
    goto LABEL_63;
  }

  v95 = (*(v114 + 56) + 16 * v93);
  v97 = *v95;
  v96 = v95[1];

  v98 = sub_1D5B69D90(0x736573736F6CLL, 0xE600000000000000);
  if ((v99 & 1) == 0)
  {

    goto LABEL_62;
  }

  v100 = (*(v114 + 56) + 16 * v98);
  v102 = *v100;
  v101 = v100[1];
  v103 = *(v114 + 16);

  v129 = v97;
  if (v103 && (v104 = sub_1D5B69D90(1936025972, 0xE400000000000000), (v105 & 1) != 0))
  {
    v106 = (*(v114 + 56) + 16 * v104);
    v108 = *v106;
    v107 = v106[1];
  }

  else
  {
    v108 = 0;
    v107 = 0;
  }

  sub_1D611DD9C(v114, v119, v120, v86, v115, v118, &v127);

  v112 = v128;
  v113 = v127;
  *a4 = v129;
  *(a4 + 8) = v96;
  *(a4 + 16) = v102;
  *(a4 + 24) = v101;
  *(a4 + 32) = v108;
  *(a4 + 40) = v107;
  *(a4 + 48) = v113;
  *(a4 + 64) = v112;
  return result;
}

uint64_t sub_1D611DD9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_69;
  }

  v11 = result;
  result = sub_1D5B69D90(a2, a3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_69;
  }

  v13 = (*(v11 + 56) + 16 * result);
  v14 = *v13;
  v15 = v13[1];
  v16 = HIBYTE(v15) & 0xF;
  v17 = *v13 & 0xFFFFFFFFFFFFLL;
  if (!((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : *v13 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_69;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v21 = sub_1D5FD15E0(v14, v15, 10);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x1000000000000000) != 0)
    {
      result = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1D7263E5C();
    }

    v19 = *result;
    if (v19 == 43)
    {
      if (v17 >= 1)
      {
        v20 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (result)
          {
            v28 = (result + 1);
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              v30 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_63;
              }

              v21 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_63;
              }

              ++v28;
              if (!--v20)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v19 != 45)
    {
      if (v17)
      {
        v21 = 0;
        if (result)
        {
          while (1)
          {
            v34 = *result - 48;
            if (v34 > 9)
            {
              goto LABEL_63;
            }

            v35 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_63;
            }

            v21 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_63:
      v21 = 0;
      LOBYTE(v20) = 1;
LABEL_64:
      v46 = v20;
      if ((v20 & 1) == 0)
      {
LABEL_65:
        if (*(a4 + 16))
        {
          result = sub_1D5B69D90(a5, a6);
          if (v39)
          {
            v40 = (*(a4 + 56) + 16 * result);
            v42 = *v40;
            v41 = v40[1];
            *a7 = v21;
            a7[1] = v42;
            a7[2] = v41;
          }
        }
      }

LABEL_69:
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
      return result;
    }

    if (v17 >= 1)
    {
      v20 = v17 - 1;
      if (v17 != 1)
      {
        v21 = 0;
        if (result)
        {
          v22 = (result + 1);
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_63;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_63;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              goto LABEL_63;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v20) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v45[0] = *v13;
  v45[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v16)
      {
        v21 = 0;
        v36 = v45;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v16)
    {
      v20 = v16 - 1;
      if (v16 != 1)
      {
        v21 = 0;
        v25 = v45 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v20)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v16)
  {
    v20 = v16 - 1;
    if (v16 != 1)
    {
      v21 = 0;
      v31 = v45 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v20)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

unint64_t sub_1D611E10C()
{
  result = qword_1EC883E50;
  if (!qword_1EC883E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E50);
  }

  return result;
}

uint64_t sub_1D611E160()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D5F72534;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t FCCoreConfigurationManager.fetchConfiguration()()
{
  sub_1D5B7E264(0, &qword_1EDF3B910, &unk_1EDF1A990);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D611E2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1D5B7E910;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  v13[4] = sub_1D611E898;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D5BE62C8;
  v13[3] = &block_descriptor_20;
  v12 = _Block_copy(v13);

  [a5 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v12);
}

void sub_1D611E41C(uint64_t a1, void *a2)
{
  sub_1D611E8C8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  FCCurrentQoS();
  v9 = FCDispatchQueueForQualityOfService();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D611E958;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5BE62C8;
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  [a2 fetchAppConfigurationIfNeededWithCompletionQueue:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D611E5EC(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  v3 = a2;
  sub_1D5B5534C(0, &qword_1EDF1A890);
  sub_1D725B9DC();
  sub_1D611E8C8();
  if (v5)
  {
    return sub_1D726286C();
  }

  else
  {
    return sub_1D726287C();
  }
}

uint64_t FCNewsAppConfigurationManager.todayFeedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 possiblyUnfetchedAppConfiguration];
  FCNewsAppConfiguration.todayFeedEditionConfig.getter(a1);

  return swift_unknownObjectRelease();
}

uint64_t FCNewsAppConfigurationManager.accessor<A>(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D725BDEC();
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = v2;
  v5[4] = a1;
  swift_unknownObjectRetain();

  return sub_1D725BDFC();
}

uint64_t sub_1D611E7B4(void *a1)
{
  [a1 possiblyUnfetchedAppConfiguration];
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t FCNewsAppConfigurationManager.int(for:)()
{
  [v0 possiblyUnfetchedAppConfiguration];
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_1D611E8C8()
{
  if (!qword_1EDF048A8)
  {
    sub_1D5B5534C(255, &qword_1EDF1A890);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF048A8);
    }
  }
}

uint64_t sub_1D611E958(uint64_t a1, void *a2)
{
  sub_1D611E8C8();

  return sub_1D611E5EC(a1, a2);
}

unint64_t sub_1D611EA14(uint64_t a1)
{
  result = sub_1D611EA3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D611EA3C()
{
  result = qword_1EC883E60;
  if (!qword_1EC883E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E60);
  }

  return result;
}

unint64_t sub_1D611EA90()
{
  result = qword_1EDF0EDF8;
  if (!qword_1EDF0EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EDF8);
  }

  return result;
}

unint64_t sub_1D611EAE4()
{
  result = qword_1EDF0EE00;
  if (!qword_1EDF0EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE00);
  }

  return result;
}

uint64_t sub_1D611EB60(void *a1)
{
  v3 = v1;
  sub_1D6123808(0, &qword_1EC883F18, sub_1D61237B4, &type metadata for A12_V5.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61237B4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6123870(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D611EDA8(uint64_t a1)
{
  v2 = sub_1D61237B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D611EDE4(uint64_t a1)
{
  v2 = sub_1D61237B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D611EE20@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6123514(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D611EE80()
{
  sub_1D61231A0();

  return sub_1D725A24C();
}

uint64_t sub_1D611EEFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6123808(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D611EFB8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v118 = a2;
  v135 = a1;
  v107 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = &v106 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for GroupLayoutContext();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v23);
  v116 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v106 - v27;
  v112 = &v106 - v27;
  v121 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121, v30);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v111 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v135, v32, type metadata accessor for GroupLayoutBindingContext);
  v113 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v118, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v110 = sub_1D725893C();
  v109 = v35;
  (*(v19 + 8))(v22, v18);
  v133 = &type metadata for A12_V5;
  v36 = sub_1D5ECE9C4();
  v134 = v36;
  LOBYTE(v131) = v33;
  *(&v131 + 1) = v34;
  v132 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v124[0] = sub_1D7264C5C();
  v124[1] = v39;
  v129 = 95;
  v130 = 0xE100000000000000;
  v127 = 45;
  v128 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v116;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v109;
  *v44 = v110;
  v44[1] = v45;
  sub_1D5B68374(&v131, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v121);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v112, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v114 + 56);
  v114 = v37;
  v48(v37 + v47, 0, 1, v115);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v133 = &type metadata for A12_V5;
  v134 = v36;
  LOBYTE(v131) = v111;
  v49 = v38;
  *(&v131 + 1) = v38;
  v132 = v5;
  sub_1D5BE3ED8(v118, v43, v113);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v118 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v115 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v121[14];
    v59 = v135;
    v60 = *&v135[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v113 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v119;
        v54 = v120;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v42 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v123, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v124[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C(v66 > 1, v37 + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v123, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
            v54 = v120;
          }

          else
          {
            sub_1D5BE780C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_68;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v135;
      if ((*v135 & 1) == 0)
      {

        v70 = sub_1D62F071C(v56);

        v56 = v70;
      }

      v43 = v116;
      v52 = MEMORY[0x1E69E7CC0];
      v71 = *&v59[v121[18]];
      v72 = *&v59[v121[19]];
      if (__OFSUB__(v71, v72))
      {
        __break(1u);
        goto LABEL_73;
      }

      v73 = sub_1D5C0FAD4(v56, v71 - v72);
      v42 = sub_1D5C11E10(&unk_1F5111C48, v73, v57);

      if (v42)
      {
      }

      else
      {
        v42 = sub_1D5C11E10(&unk_1F5111C48, v56, v57);

        if (!v42)
        {
          v124[0] = &unk_1F5111C48;
          v4 = v108;
          sub_1D5E239F4(v124);
          if (v4)
          {
            goto LABEL_77;
          }

          if (!*(v124[0] + 2))
          {
            goto LABEL_75;
          }

          v102 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v103, "FeedHeadline");
          v103[13] = 0;
          *(v103 + 7) = -5120;
          *(v103 + 2) = 0;
          *(v103 + 3) = 0;
          *(v103 + 4) = 4;
          *(v103 + 5) = v102;
          *(v103 + 6) = 0;
          *(v103 + 7) = 0;
          v103[64] = 0;
          swift_willThrow();
          goto LABEL_66;
        }
      }

      strcpy(v124, "FeedHeadline");
      BYTE5(v124[1]) = 0;
      HIWORD(v124[1]) = -5120;
      v125 = 0;
      v126 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v124, v75);
      swift_setDeallocating();

      v56 = v113;
    }

    else
    {
      if (qword_1F5111C68)
      {
        v124[0] = &unk_1F5111C48;
        v4 = v108;
        sub_1D5E239F4(v124);
        if (v4)
        {
          goto LABEL_77;
        }

        v67 = *(v124[0] + 2);
        if (v67)
        {
          v68 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_48:

          sub_1D5BE780C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v131);
        }

        __break(1u);
LABEL_71:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v42 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v123 = v76;
    *(v76 + 16) = v52;
    v60 = (v76 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_71;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v77 = &v57[16 * v54];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v120 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_51:
      if ((*v59 & 1) == 0)
      {

        v88 = sub_1D62F071C(v57);

        v57 = v88;
      }

      v42 = v120;
      v89 = *&v59[v121[18]];
      v90 = *&v59[v121[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_74;
      }

      v91 = sub_1D5C0FAD4(v57, v89 - v90);
      v92 = sub_1D5C11E10(&unk_1F5111C70, v91, v37);

      if (v92)
      {

        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v94 = sub_1D5C107C4(v93);

        sub_1D5BDACA8(v124, v94);
        swift_setDeallocating();

        v87 = v92;
LABEL_58:
        v43 = v116;
        goto LABEL_59;
      }

      v95 = sub_1D5C11E10(&unk_1F5111C70, v57, v37);

      if (v95)
      {
        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v97 = sub_1D5C107C4(v96);

        sub_1D5BDACA8(v124, v97);
        swift_setDeallocating();

        v87 = v95;
        goto LABEL_58;
      }

      v124[0] = &unk_1F5111C70;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_77;
      }

      v43 = v116;
      if (!*(v124[0] + 2))
      {
        goto LABEL_76;
      }

      v104 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v105, "FeedHeadline");
      v105[13] = 0;
      *(v105 + 7) = -5120;
      *(v105 + 2) = 0;
      *(v105 + 3) = 0;
      *(v105 + 4) = 0;
      *(v105 + 5) = v104;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0;
      v105[64] = 0;
      swift_willThrow();
LABEL_66:
      swift_setDeallocating();
      goto LABEL_48;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v80 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v81 = v117;
      sub_1D5BE3ED8(v37 + v80 + v52 * v42, v117, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v81, v122, type metadata accessor for FeedHeadline);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v57;
      if ((v82 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      v54 = *(v57 + 2);
      v83 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v83 >> 1)
      {
        sub_1D5C0F91C(v83 > 1, v54 + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v122, &v57[v80 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v135;
      if (v43 == v42)
      {
        goto LABEL_51;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F5111C90 || !qword_1F5111C98 || !qword_1F5111CA0)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v124[0] = v42;
    sub_1D5C122E4(v87);
    v98 = v124[0];
    v99 = type metadata accessor for A12_V5.Bound();
    v100 = v107;
    v107[3] = v99;
    v100[4] = sub_1D6123870(&qword_1EC883E78, type metadata accessor for A12_V5.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
    *boxed_opaque_existential_1 = v114;
    sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v99 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v99 + 28)) = v98;
    return result;
  }

  v124[0] = &unk_1F5111C70;
  v4 = v108;
  sub_1D5E239F4(v124);
  if (!v4)
  {

    if (*(v124[0] + 2))
    {
      v84 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v85, "FeedHeadline");
      v85[13] = 0;
      *(v85 + 7) = -5120;
      *(v85 + 2) = 0;
      *(v85 + 3) = 0;
      *(v85 + 4) = 0;
      *(v85 + 5) = v84;
      *(v85 + 6) = 0;
      *(v85 + 7) = 0;
      v85[64] = 0;
      swift_willThrow();
      goto LABEL_48;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

LABEL_77:

  __break(1u);
  return result;
}

uint64_t sub_1D61201FC@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V5.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v47);
  sub_1D5B68374(v11 + 56, v46);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v47, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v13;
  v45[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v42 = v2;
  v44[2] = v2;
  v44[3] = v49;
  v16 = sub_1D5ECA650(sub_1D6123124, v44, v15);
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v35 = (2 * v18) | 1;
    if (v18 >= 3)
    {
      v36 = 3;
    }

    else
    {
      v36 = *(v16 + 16);
    }

    v37 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v17, v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v36, v35);
    v19 = v38;
  }

  else
  {

    v19 = v17;
  }

  *&v47[0] = v19;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v21 = v20;
  sub_1D60DF67C(&qword_1EC880610);
  v41 = v21;
  sub_1D7262C1C();

  v22 = *MEMORY[0x1E69D7130];
  v23 = sub_1D7259D1C();
  (*(*(v23 - 8) + 104))(v7, v22, v23);
  v24 = (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1D6123248(0, &qword_1EC883E98, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v26 = v48;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D60DF67C(&qword_1EDF1B248);
  v27 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v39 = v47[1];
  v40 = v47[0];
  *&v47[0] = v17;
  *&v46[0] = v26;
  MEMORY[0x1EEE9AC00](v27, v28);

  v29 = sub_1D725C00C();

  v30 = v43;
  *v43 = 0;
  v31 = v40;
  *(v30 + 24) = v39;
  *(v30 + 8) = v31;
  *&v47[0] = v29;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v32 = sub_1D72623BC();

  v33 = MEMORY[0x1E69E7CC0];
  *(v30 + 5) = v32;
  *(v30 + 6) = v33;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D6120784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D612085C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6123248(0, &qword_1EC883EB8, MEMORY[0x1E69D7150]);
  sub_1D6123204(&qword_1EC883EC0, &qword_1EC883EB8, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6120A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v49 = sub_1D612314C;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v45 - v8);
  v62 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v14 = *MEMORY[0x1E69D6F50];
  v15 = v10;
  v54 = v12 + 104;
  v55 = v13;
  (v13)(v16);
  *v9 = v11;
  v17 = *(v6 + 104);
  v53 = *MEMORY[0x1E69D73C0];
  v17(v9);
  v18 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  v47 = v19;
  v46 = sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v18);
  sub_1D7259A9C();
  v20 = *(v6 + 8);
  v56 = v6 + 8;
  v60 = v20;
  v20(v9, v5);
  v62 = v57;
  v21 = *MEMORY[0x1E69D74A8];
  v51 = v17;
  v52 = v6 + 104;
  (v17)(v9, v21, v5);
  sub_1D61232CC();
  sub_1D6123808(0, &qword_1EC883EE0, v49, &type metadata for A12_V5.Layout, MEMORY[0x1E69D70D8]);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = v23;
  v28 = v46;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x1E69D7098], v27);
  v29 = v47;
  v61 = v58;
  sub_1D72599EC();
  v30 = v60;

  v31 = v5;
  result = v30(v9, v5);
  v33 = *(v59 + 16);
  if (v33)
  {
    v34 = v59 + 32;
    v35 = *MEMORY[0x1E69D7460];
    v48 = v14;
    LODWORD(v49) = v35;
    v50 = v5;
    do
    {
      v58 = v34 + 8;
      v59 = v33;
      v36 = v57;
      v62 = v57;
      v37 = swift_allocBox();
      v55(v38, v14, v15);
      *v9 = v37;
      v39 = v28;
      v40 = v29;
      v41 = v51;
      (v51)(v9, v53, v31);

      sub_1D7259A9C();
      v60(v9, v31);
      v62 = v36;
      v42 = (v41)(v9, v49, v31);
      v29 = v40;
      v28 = v39;
      MEMORY[0x1EEE9AC00](v42, v43);
      sub_1D72599EC();
      v44 = v60;

      v14 = v48;
      v31 = v50;
      result = v44(v9);
      v34 = v58;
      v33 = v59 - 1;
    }

    while (v59 != 1);
  }

  return result;
}

uint64_t sub_1D6120F84(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v19 - v8);
  v26 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  *v9 = v10;
  v22 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v19 = v11;
  v25 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v12);
  sub_1D7259A2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = v21;
  v26 = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = 4;
  *v9 = v15;
  (v11)(v9, v22, v5);
  v16 = v20;
  v24 = v20;
  sub_1D7259A2C();
  v13(v9, v5);
  v26 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 4;
  *v9 = v17;
  (v19)(v9, v22, v5);
  v23 = v16;
  sub_1D7259A2C();
  return (v13)(v9, v5);
}

uint64_t sub_1D61212C4(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 5;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6121898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6121E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 0;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6122440(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
  sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D61226E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v30 - v12);
  v33 = a1;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16))
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = v4[5];
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    v31 = v9;
    v22 = v21;
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v22 + 56))(&v7[v18], 0, 1, v20);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v23;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(a2 + v17, v7, v24, v25, v26, v27);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
    sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v29);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6122A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6123808(0, &qword_1EC883EB0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v32 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v32[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v33 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D6123248(0, &qword_1EC883EC8, MEMORY[0x1E69D6F38]);
    sub_1D6123204(&qword_1EC883ED0, &qword_1EC883EC8, v31);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_1D6122E6C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V5.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6122F80(uint64_t a1)
{
  *(a1 + 8) = sub_1D6122FB0();
  result = sub_1D6123004();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6122FB0()
{
  result = qword_1EC883E68;
  if (!qword_1EC883E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E68);
  }

  return result;
}

unint64_t sub_1D6123004()
{
  result = qword_1EC883E70;
  if (!qword_1EC883E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E70);
  }

  return result;
}

uint64_t type metadata accessor for A12_V5.Bound()
{
  result = qword_1EC883E80;
  if (!qword_1EC883E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61230CC(uint64_t a1)
{
  result = sub_1D6123870(&qword_1EC883E90, type metadata accessor for A12_V5.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D612314C()
{
  result = qword_1EC883EA0;
  if (!qword_1EC883EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EA0);
  }

  return result;
}

unint64_t sub_1D61231A0()
{
  result = qword_1EC883EA8;
  if (!qword_1EC883EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EA8);
  }

  return result;
}

uint64_t sub_1D6123204(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6123248(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6123248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V5.Layout;
    v8[1] = &type metadata for A12_V5.Layout.Attributes;
    v8[2] = sub_1D612314C();
    v8[3] = sub_1D61231A0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61232CC()
{
  if (!qword_1EC883ED8)
  {
    sub_1D6123808(255, &qword_1EC883EE0, sub_1D612314C, &type metadata for A12_V5.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883ED8);
    }
  }
}

unint64_t sub_1D61233B8()
{
  result = qword_1EC883EE8;
  if (!qword_1EC883EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EE8);
  }

  return result;
}

unint64_t sub_1D6123410()
{
  result = qword_1EC883EF0;
  if (!qword_1EC883EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EF0);
  }

  return result;
}

unint64_t sub_1D6123468()
{
  result = qword_1EC883EF8;
  if (!qword_1EC883EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883EF8);
  }

  return result;
}

unint64_t sub_1D61234C0()
{
  result = qword_1EC883F00;
  if (!qword_1EC883F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F00);
  }

  return result;
}

uint64_t sub_1D6123514@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6123808(0, &qword_1EC883F08, sub_1D61237B4, &type metadata for A12_V5.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61237B4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6123870(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D61237B4()
{
  result = qword_1EC883F10;
  if (!qword_1EC883F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F10);
  }

  return result;
}

void sub_1D6123808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6123870(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61238CC()
{
  result = qword_1EC883F20;
  if (!qword_1EC883F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F20);
  }

  return result;
}

unint64_t sub_1D6123924()
{
  result = qword_1EC883F28;
  if (!qword_1EC883F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F28);
  }

  return result;
}

unint64_t sub_1D612397C()
{
  result = qword_1EC883F30;
  if (!qword_1EC883F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883F30);
  }

  return result;
}

id sub_1D61239D0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController____lazy_storage___panGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v0 action:sel_doPanGestureWithGesture_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D6123AEC()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController];
  result = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  [v3 addSubview_];

  result = [v4 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  v16 = sub_1D61239D0();
  [v16 setDelegate_];

  v17 = *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorViewController];
  v18 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView;
  [*(v17 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView) setUserInteractionEnabled_];
  [*(v17 + v18) addGestureRecognizer_];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController];
  result = [v20 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  [v19 addSubview_];

  result = [v20 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = result;
  result = [v1 view];
  if (result)
  {
    v23 = result;
    [result bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [v22 setFrame_];

    sub_1D725974C();

    sub_1D725975C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D6123DFC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editor);
  type metadata accessor for DebugFormatConsoleAnimator();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 16) = v1;
  swift_unknownObjectWeakAssign();

  sub_1D5ED3714();
}

void sub_1D6123ED4()
{
  v1 = v0;
  v77.receiver = v0;
  v77.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v77, sel_viewWillLayoutSubviews);
  if (v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight + 8])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      goto LABEL_23;
    }

    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v78.origin.x = v5;
    v78.origin.y = v7;
    v78.size.width = v9;
    v78.size.height = v11;
    v12 = CGRectGetHeight(v78) * 0.4;
  }

  else
  {
    v12 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
  }

  sub_1D725972C();

  if (!v76)
  {
    v43 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
    if (v43)
    {
      v44 = v43;
      v45 = [v1 view];
      if (v45)
      {
        v46 = v45;
        [v45 bounds];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        [v44 setFrame_];
        v55 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
        if (v55)
        {
          v28 = v55;
          v56 = [v1 view];
          if (v56)
          {
            v57 = v56;
            [v56 bounds];
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v65 = v64;

            v81.origin.x = v59;
            v81.origin.y = v61;
            v81.size.width = v63;
            v81.size.height = v65;
            Height = CGRectGetHeight(v81);
            v66 = [v1 view];
            if (v66)
            {
              v41 = v66;
              goto LABEL_20;
            }

            goto LABEL_32;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v76 != 1)
  {
    return;
  }

  v13 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v1 view];
  if (!v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v75 = v12;
  [v15 bounds];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v79.origin.x = v20;
  v79.origin.y = v22;
  v79.size.width = v24;
  v79.size.height = v26;
  CGRectGetHeight(v79);
  v12 = v75;
  sub_1D726330C();
  [v14 setFrame_];

  v27 = [*&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
  if (!v27)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = v27;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v80.origin.x = v32;
  v80.origin.y = v34;
  v80.size.width = v36;
  v80.size.height = v38;
  v39 = CGRectGetHeight(v80);
  v40 = [v1 view];
  if (!v40)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v41 = v40;
  Height = v39 - v75;
LABEL_20:
  [v41 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  v82.origin.x = v68;
  v82.origin.y = v70;
  v82.size.width = v72;
  v82.size.height = v74;
  [v28 setFrame_];
}

void sub_1D612436C(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 == 2)
    {
      v35 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
      if (v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession + 24])
      {
        return;
      }

      v36 = v35[1];
      v37 = v35[2];
      v38 = [v2 view];
      [a1 locationInView_];
      v40 = v39;

      v41 = [v2 view];
      if (v41)
      {
        v42 = v41;
        [v41 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v94.origin.x = v44;
        v94.origin.y = v46;
        v94.size.width = v48;
        v94.size.height = v50;
        Height = CGRectGetHeight(v94);
        [*(*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorViewController] + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView) bounds];
        v52 = CGRectGetHeight(v95);
        v53 = [*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_editorNavigationController] view];
        if (v53)
        {
          v54 = v53;
          v88 = v52;
          v89 = Height;
          v55 = v40;
          v56 = v37;
          [v53 safeAreaInsets];
          v58 = v57;

          v59 = [v2 view];
          if (v59)
          {
            v60 = v59;
            [v59 bounds];
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;

            v96.origin.x = v62;
            v96.origin.y = v64;
            v96.size.width = v66;
            v96.size.height = v68;
            v69 = CGRectGetHeight(v96);
            v70 = [v2 view];
            if (v70)
            {
              v71 = v70;
              v72 = v56 + v36 + v55 - v36;
              v73 = v89 - v88 - v58;
              v74 = v69 * 0.4;
              [v70 bounds];
              v76 = v75;
              v78 = v77;
              v80 = v79;
              v82 = v81;

              v97.origin.x = v76;
              v97.origin.y = v78;
              v97.size.width = v80;
              v97.size.height = v82;
              v83 = CGRectGetHeight(v97) - v72;
              if (v83 >= v73)
              {
                v83 = v73;
              }

              if (v74 > v83)
              {
                v83 = v74;
              }

              v84 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
              *v84 = v83;
              *(v84 + 8) = 0;
              v85 = [v2 view];
              if (v85)
              {
                v86 = v85;
                [v85 setNeedsLayout];

                v87 = [v2 view];
                if (v87)
                {
                  v90 = v87;
                  [v87 layoutIfNeeded];

                  return;
                }

LABEL_33:
                __break(1u);
                return;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v4 != 1)
    {
      return;
    }

    v18 = [v2 view];
    [a1 locationInView_];
    v20 = v19;
    v22 = v21;

    v23 = [*&v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleContainerController] view];
    if (v23)
    {
      v24 = v23;
      [v23 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v93.origin.x = v26;
      v93.origin.y = v28;
      v93.size.width = v30;
      v93.size.height = v32;
      MinY = CGRectGetMinY(v93);
      v34 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
      *v34 = v20;
      v34[1] = v22;
      v34[2] = MinY - v22;
      *(v34 + 24) = 0;

      sub_1D725B32C();
      goto LABEL_10;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consolePanSession];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v5[24] = 1;

  sub_1D725B32C();

  v6 = &v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight];
  if (v2[OBJC_IVAR____TtC8NewsFeed32DebugFormatConsoleViewController_consoleHeight + 8])
  {
    return;
  }

  v7 = *v6;
  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v92.origin.x = v11;
  v92.origin.y = v13;
  v92.size.width = v15;
  v92.size.height = v17;
  if (v7 < CGRectGetHeight(v92) * 0.2)
  {
    *v6 = 0.0;
    *(v6 + 8) = 1;

    sub_1D725973C();
LABEL_10:
  }
}

uint64_t getEnumTagSinglePayload for DebugFormatRulerIndicatorView.Selection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebugFormatRulerIndicatorView.Selection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D6124A5C()
{

  sub_1D725972C();

  if (v3)
  {
    v0 = sub_1D72646CC();

    v1 = v0 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

id FCFeedTheming.navigationChromeBackgroundImage(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1 == 1;
  }

  v4 = &selRef_navigationChromeBackgroundImageCompact;
  if (!v3)
  {
    v4 = &selRef_navigationChromeBackgroundImage;
  }

  v5 = [v2 *v4];

  return v5;
}

id FCFeedTheming.darkStyleNavigationChromeBackgroundImage(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1 == 1;
  }

  v4 = &selRef_darkStyleNavigationChromeBackgroundImageCompact;
  if (!v3)
  {
    v4 = &selRef_darkStyleNavigationChromeBackgroundImage;
  }

  v5 = [v2 *v4];

  return v5;
}

uint64_t FCFeedTheming.navigationChromeBackgroundImageContentMode(for:userInterfaceIdiom:)(uint64_t a1, uint64_t a2)
{
  if (!a1 || a1 == 2)
  {
    v4 = [v2 navigationChromeBackgroundImageContentMode];
  }

  else
  {
    if (a1 != 1)
    {
      v4 = [v2 navigationChromeBackgroundImageContentMode];
      if (v4 <= 9)
      {
        return qword_1D729DB88[v4];
      }

      return 4;
    }

    v3 = &selRef_navigationChromeBackgroundImageContentModeCompact;
    if (a2)
    {
      v3 = &selRef_navigationChromeBackgroundImageContentMode;
    }

    v4 = [v2 *v3];
  }

  if (v4 < 0xA)
  {
    return qword_1D729DB88[v4];
  }

  return 4;
}

uint64_t FCFeedTheming.hasNavigationChromeBackgroundImage.getter()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = [v1 currentDevice];
    [v4 userInterfaceIdiom];

    result = [v0 navigationChromeBackgroundImage];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [v0 navigationChromeBackgroundImageCompact];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

id FCFeedTheming.navigationBarBackgroundColor.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 navigationChromeBackgroundColor];
  if (v3 || (v3 = [v0 backgroundColor]) != 0)
  {
    v4 = v3;
    v5 = [v3 ne_color];
  }

  else
  {
    v11 = [v2 secondarySystemBackgroundColor];
    v4 = [v2 systemBackgroundColor];
    v5 = [v2 ts:v11 dynamicColor:v4 withDarkStyleVariant:?];
  }

  v6 = [v1 darkStyleNavigationChromeBackgroundColor];
  if (v6 || (v6 = [v1 darkStyleBackgroundColor]) != 0)
  {
    v7 = v6;
    v8 = [v6 ne_color];
  }

  else
  {
    v12 = [v2 secondarySystemBackgroundColor];
    v7 = [v2 systemBackgroundColor];
    v8 = [v2 ts:v12 dynamicColor:v7 withDarkStyleVariant:?];
  }

  v9 = [v2 ts:v5 dynamicColor:v8 withDarkStyleVariant:?];
  return v9;
}

id FCFeedTheming.navigationBarForegroundColor.getter()
{
  sub_1D61254FC();
  v2 = v1;
  v3 = *(v1 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v1, v4).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 foregroundColor];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v37 = v7;
  v38 = v3;
  v39 = v2;
  v10 = [v0 darkStyleForegroundColor];
  if (!v10)
  {
    v10 = [objc_opt_self() whiteColor];
  }

  [v9 red];
  v12 = v11;
  [v9 green];
  v14 = v13;
  [v9 blue];
  v16 = v15;
  [v9 alpha];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v12 green:v14 blue:v16 alpha:v17];
  v19 = v10;
  [v19 red];
  v21 = v20;
  [v19 green];
  v23 = v22;
  [v19 blue];
  v25 = v24;
  [v19 alpha];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v21 green:v23 blue:v25 alpha:v26];
  v28 = objc_opt_self();
  v29 = [v28 ts:v18 dynamicColor:v27 withDarkStyleVariant:?];

  v3 = v38;
  v2 = v39;
  v7 = v37;
  if (!v29)
  {
LABEL_7:
    v33 = objc_opt_self();
    v41 = [v33 blackColor];
    v40 = [v33 whiteColor];
    sub_1D5C0B9F0();
    sub_1D725CD2C();
    v34 = FCFeedTheming.navigationBarBackgroundColor.getter();
    sub_1D725CD3C();

    goto LABEL_8;
  }

  v30 = FCFeedTheming.navigationBarBackgroundColor.getter();
  v31 = [v29 _isSimilarToColor_withinPercentage_];

  if (v31)
  {
    v41 = [v28 blackColor];
    v40 = [v28 whiteColor];
    sub_1D5C0B9F0();
    sub_1D725CD2C();
    v32 = FCFeedTheming.navigationBarBackgroundColor.getter();
    sub_1D725CD3C();

LABEL_8:
    (*(v3 + 8))(v7, v2);
    return v41;
  }

  return v29;
}

UIColor_optional __swiftcall FCFeedTheming.navigationChromeDynamicBackgroundColor(fallback:)(UIColor fallback)
{
  v2 = sub_1D6125324(fallback.super.isa, v1, &selRef_navigationChromeBackgroundColor, &selRef_darkStyleNavigationChromeBackgroundColor);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall FCFeedTheming.dynamicBackgroundColor(fallback:)(UIColor fallback)
{
  v2 = sub_1D6125324(fallback.super.isa, v1, &selRef_backgroundColor, &selRef_darkStyleBackgroundColor);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id sub_1D6125324(void *a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = [v4 *a3];
  v8 = [v4 *a4];
  v9 = _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4dark8fallbackSo7UIColorCSgSo7FCColorCSg_AmItF_0(v7, v8, a1);

  return v9;
}

id sub_1D61253F4(uint64_t a1, SEL *a2, SEL *a3)
{
  v5 = v3;
  v6 = [v3 *a2];
  v7 = [v5 *a3];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = [v9 ne_color];
    if (v8)
    {
      v11 = [v8 ne_color];
      v12 = [objc_opt_self() ts:v10 dynamicColor:v11 withDarkStyleVariant:?];

      return v12;
    }

    else
    {

      return v10;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1D61254FC()
{
  if (!qword_1EDF3B7D8)
  {
    sub_1D5C0B9F0();
    v0 = sub_1D725CD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B7D8);
    }
  }
}

id _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4dark8fallbackSo7UIColorCSgSo7FCColorCSg_AmItF_0(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v6 = objc_opt_self();
    v5 = a3;
    goto LABEL_6;
  }

  v5 = [a1 ne_color];
  v6 = objc_opt_self();
  if (a2)
  {
LABEL_6:
    v7 = [a2 ne_color];
    goto LABEL_7;
  }

  v7 = a3;
LABEL_7:
  v8 = v7;
  v9 = [v6 ts:v5 dynamicColor:v7 withDarkStyleVariant:?];

  return v9;
}

id _sSo13FCFeedThemingP8NewsFeedE12dynamicColor5light4darkSo7UIColorCSgSo7FCColorCSg_ALtF_0(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = [v3 ne_color];
  if (a2)
  {
    v5 = [a2 ne_color];
    v6 = [objc_opt_self() ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

    v3 = v5;
    v4 = v6;
  }

  return v4;
}

uint64_t FeedCursorToken.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCursorToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t FeedCursorToken.description.getter()
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t sub_1D61257FC()
{
  v1 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t static FeedCursorToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

void *FeedCursorStore.__allocating_init(log:)(void *a1)
{
  v2 = sub_1D5B837D0(a1);

  return v2;
}

void *FeedCursorStore.init(log:)(void *a1)
{
  v2 = sub_1D5B8380C(a1);

  return v2;
}

uint64_t sub_1D612594C(uint64_t a1)
{
  sub_1D5BFB900(a1);
  swift_beginAccess();
  type metadata accessor for FeedCursorStore.WeakCursorContainer();

  sub_1D7261E3C();

  if (!v4)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v2 = sub_1D6125AFC();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1D5BFB900(a1);
    swift_beginAccess();

    sub_1D612612C(v2);
    type metadata accessor for FeedCursorContainer();
    sub_1D7261E1C();
    sub_1D7261E4C();
    swift_endAccess();
    return sub_1D5BD9F54(v2);
  }

  return result;
}

unint64_t sub_1D6125AFC()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      return Strong | 0x8000000000000000;
    }

    else
    {
      return 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6125B3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeedCursorStore.WeakToken();
  sub_1D72627FC();

  swift_getWitnessTable();
  result = sub_1D7263E7C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6125BE8(uint64_t a1)
{
  v1 = sub_1D5BFB900(a1);
  v3 = v2;

  sub_1D5B860D0(&v5, v1, v3);
}

uint64_t sub_1D6125C58()
{
  if (swift_weakLoadStrong() || (result = swift_weakLoadStrong()) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1D6125C94()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6125CCC()
{
  swift_weakInit();
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1D6125D2C()
{
  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t FeedCursorStore.deinit()
{

  return v0;
}

uint64_t FeedCursorStore.__deallocating_deinit()
{
  FeedCursorStore.deinit();

  return swift_deallocClassInstance();
}