void sub_1D768DE88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768D87C();
    v7 = a3(a1, &type metadata for ArticleAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D768DEEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArticleAdData.init(headline:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v29 = v6;
  v30 = v5;

  v28 = [a1 isDraft];
  v27 = [a1 isSponsored];
  v7 = [a1 primaryAudience];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7704260();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x4C4152454E4547;
  }

  v12 = [a1 iAdSectionIDs];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D7704400();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = [a1 iAdKeywords];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704400();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = [a1 iAdCategories];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D7704400();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = [a1 language];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D7704260();
    v25 = v24;

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v23 = 0;
    v25 = 0;
  }

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 17) = v27;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17;
  *(a2 + 56) = v20;
  *(a2 + 64) = v23;
  *(a2 + 72) = v25;
  return result;
}

unint64_t sub_1D768E1F4(uint64_t a1)
{
  *(a1 + 8) = sub_1D768E224();
  result = sub_1D768E278();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D768E224()
{
  result = qword_1EE0B0308;
  if (!qword_1EE0B0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0308);
  }

  return result;
}

unint64_t sub_1D768E278()
{
  result = qword_1EE0B0310;
  if (!qword_1EE0B0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0310);
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

uint64_t sub_1D768E2E8(uint64_t a1, int a2)
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

uint64_t sub_1D768E330(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ArticleAdData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleAdData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D768E4E8()
{
  result = qword_1EC9BD1D8;
  if (!qword_1EC9BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1D8);
  }

  return result;
}

unint64_t sub_1D768E540()
{
  result = qword_1EC9BD1E0;
  if (!qword_1EC9BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1E0);
  }

  return result;
}

unint64_t sub_1D768E598()
{
  result = qword_1EC9BD1E8;
  if (!qword_1EC9BD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1E8);
  }

  return result;
}

uint64_t sub_1D768E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74666172447369 && a2 == 0xE700000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F736E6F70537369 && a2 == 0xEB00000000646572 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEF65636E65696475 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69746365536461 && a2 == 0xEA0000000000736ELL || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void __swiftcall FeedAdData.copy(targetingKeywords:)(NewsAds::FeedAdData *__return_ptr retstr, Swift::OpaquePointer targetingKeywords)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v11 = *(v2 + 72);
  retstr->identifier._countAndFlagsBits = *v2;
  retstr->identifier._object = v4;
  retstr->contentProviderID = v5;
  retstr->isWhitelisted = v6;
  retstr->primaryAudience._countAndFlagsBits = v7;
  retstr->primaryAudience._object = v8;
  retstr->adKeywords._rawValue = v9;
  retstr->adCategories._rawValue = v10;
  retstr->language.value._countAndFlagsBits = v12;
  retstr->language.value._object = v11;
  retstr->targetingKeywords.value = targetingKeywords;
}

uint64_t FeedAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedAdData.primaryAudience.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedAdData.language.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void __swiftcall FeedAdData.init(identifier:contentProviderID:isWhitelisted:primaryAudience:adKeywords:adCategories:language:targetingKeywords:)(NewsAds::FeedAdData *__return_ptr retstr, Swift::String identifier, Swift::Int contentProviderID, Swift::Bool isWhitelisted, Swift::String primaryAudience, Swift::OpaquePointer adKeywords, Swift::OpaquePointer adCategories, Swift::String_optional language, Swift::OpaquePointer_optional targetingKeywords)
{
  retstr->identifier = identifier;
  retstr->contentProviderID = contentProviderID;
  retstr->isWhitelisted = isWhitelisted;
  retstr->primaryAudience = primaryAudience;
  retstr->adKeywords = adKeywords;
  retstr->adCategories = adCategories;
  retstr->language = language;
  retstr->targetingKeywords.value._rawValue = targetingKeywords.value._rawValue;
}

uint64_t sub_1D768EA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D7704A30() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1D768EAA8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65676175676E616CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F7779654B6461;
  if (v1 != 4)
  {
    v4 = 0x6F67657461436461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C65746968577369;
  if (v1 != 2)
  {
    v5 = 0x417972616D697270;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D768EBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D768FFA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D768EBF8(uint64_t a1)
{
  v2 = sub_1D768FD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D768EC34(uint64_t a1)
{
  v2 = sub_1D768FD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedAdData.encode(to:)(void *a1)
{
  sub_1D768FDC0(0, &qword_1EC9BD1F0, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v19 - v6;
  v25 = *(v1 + 16);
  v24 = *(v1 + 24);
  v8 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v8;
  v9 = *(v1 + 48);
  v20 = *(v1 + 56);
  v21 = v9;
  v10 = *(v1 + 72);
  v19[0] = *(v1 + 64);
  v19[1] = v10;
  v11 = *(v1 + 80);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1D768FD6C();
  sub_1D7704B10();
  LOBYTE(v28) = 0;
  v16 = v26;
  sub_1D77049C0();
  if (v16)
  {
    return (*(v4 + 8))(v7, v15);
  }

  v17 = v21;
  LOBYTE(v28) = 1;
  sub_1D77049F0();
  LOBYTE(v28) = 2;
  v26 = v7;
  sub_1D77049D0();
  LOBYTE(v28) = 3;
  sub_1D77049C0();
  v28 = v17;
  v27 = 4;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010);
  sub_1D7704A00();
  v28 = v20;
  v27 = 5;
  sub_1D7704A00();
  LOBYTE(v28) = 6;
  sub_1D77049A0();
  v28 = v11;
  v27 = 7;
  sub_1D77049B0();
  return (*(v4 + 8))(v26, v15);
}

uint64_t FeedAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D768FDC0(0, &qword_1EC9BD200, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768FD6C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v11 = sub_1D7704930();
  v13 = v12;
  LOBYTE(v44[0]) = 1;
  v57 = sub_1D7704960();
  LOBYTE(v44[0]) = 2;
  v37 = sub_1D7704940();
  LOBYTE(v44[0]) = 3;
  v33 = sub_1D7704930();
  v36 = v14;
  sub_1D76697B0();
  v16 = v15;
  LOBYTE(v38) = 4;
  v17 = sub_1D768DEEC(&qword_1EC9BD1D0);
  v35 = v16;
  v34 = v17;
  sub_1D7704970();
  v32 = v44[0];
  LOBYTE(v38) = 5;
  v31 = 0;
  sub_1D7704970();
  v29 = v44[0];
  LOBYTE(v44[0]) = 6;
  v28 = sub_1D7704910();
  v30 = v18;
  v54 = 7;
  sub_1D7704920();
  v37 &= 1u;
  LOBYTE(v16) = v37;
  (*(v7 + 8))(v10, v6);
  v19 = v55;
  *&v38 = v11;
  *(&v38 + 1) = v13;
  *&v39 = v57;
  BYTE8(v39) = v16;
  HIDWORD(v39) = *&v56[3];
  *(&v39 + 9) = *v56;
  v20 = v36;
  *&v40 = v33;
  *(&v40 + 1) = v36;
  v21 = v32;
  *&v41 = v32;
  *(&v41 + 1) = v29;
  v22 = v30;
  *&v42 = v28;
  *(&v42 + 1) = v30;
  v43 = v55;
  v24 = v40;
  v23 = v41;
  v25 = v42;
  *(a2 + 80) = v55;
  *(a2 + 48) = v23;
  *(a2 + 64) = v25;
  v26 = v38;
  *(a2 + 16) = v39;
  *(a2 + 32) = v24;
  *a2 = v26;
  sub_1D768FE24(&v38, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v11;
  v44[1] = v13;
  v44[2] = v57;
  v45 = v37;
  *v46 = *v56;
  *&v46[3] = *&v56[3];
  v47 = v33;
  v48 = v20;
  v49 = v21;
  v50 = v29;
  v51 = v28;
  v52 = v22;
  v53 = v19;
  return sub_1D768FE5C(v44);
}

__n128 FeedAdData.init(feedDescriptor:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 backingChannel];
  if (v4)
  {
    FeedAdData.init(channel:section:)(v4, [a1 backingTag], v13);
  }

  else
  {
    FeedAdData.init(tag:)([a1 backingTag], v13);
  }

  v5 = v13[1];
  v6 = v13[2];
  v7 = v14;
  v8 = v15;
  result = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  *a2 = v13[0];
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = result;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  return result;
}

uint64_t FeedAdData.init(channel:section:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 identifier];
  v7 = sub_1D7704260();
  v39 = v8;
  v40 = v7;

  v38 = [a1 contentProvider];
  v37 = [a1 isWhitelisted];
  v9 = [a2 primaryAudience];
  if (v9)
  {
    v10 = v9;
    v33 = sub_1D7704260();
    v35 = v11;
  }

  else
  {
    v33 = 0x4C4152454E4547;
    v35 = 0xE700000000000000;
  }

  v12 = [a1 iAdKeywords];
  if (v12)
  {
    v13 = v12;
    sub_1D7704400();
  }

  v14 = [a2 iAdKeywords];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7704400();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7669540(v16);
  sub_1D76697B0();
  sub_1D766C8DC();
  v17 = sub_1D7704330();

  v18 = [a1 iAdCategories];
  if (v18)
  {
    v19 = v18;
    sub_1D7704400();
  }

  v20 = [a2 iAdCategories];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1D7704400();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7669540(v22);
  v23 = sub_1D7704330();

  v24 = [a2 language];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D7704260();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [a1 adTargetingKeywords];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D7704400();

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v31 = 0;
  }

  *a3 = v40;
  *(a3 + 8) = v39;
  *(a3 + 16) = v38;
  *(a3 + 24) = v37;
  *(a3 + 32) = v34;
  *(a3 + 40) = v36;
  *(a3 + 48) = v17;
  *(a3 + 56) = v23;
  *(a3 + 64) = v26;
  *(a3 + 72) = v28;
  *(a3 + 80) = v31;
  return result;
}

uint64_t FeedAdData.init(tag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D7704260();
  v27 = v6;
  v29 = v5;

  v7 = [a1 primaryAudience];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7704260();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x4C4152454E4547;
  }

  v12 = [a1 iAdKeywords];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D7704400();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = [a1 iAdCategories];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D7704400();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = [a1 language];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D7704260();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 adTargetingKeywords];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D7704400();

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v25 = 0;
  }

  *a2 = v30;
  *(a2 + 8) = v28;
  *(a2 + 16) = 1;
  *(a2 + 24) = 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14;
  *(a2 + 56) = v17;
  *(a2 + 64) = v20;
  *(a2 + 72) = v22;
  *(a2 + 80) = v25;
  return result;
}

uint64_t _s7NewsAds10FeedAdDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v11)
    {
      return result;
    }

    v26 = *(a2 + 56);
    v27 = v6;
    v20 = *(a2 + 64);
    v21 = v8;
    v23 = *(a2 + 72);
    v24 = v9;
    v22 = *(a2 + 80);
    v25 = v10;
LABEL_7:
    if ((v3 ^ v12))
    {
      return result;
    }

    if ((v4 != v13 || v5 != v14) && (sub_1D7704A30() & 1) == 0 || (sub_1D768EA18(v7, v15) & 1) == 0 || (sub_1D768EA18(v27, v26) & 1) == 0)
    {
      return 0;
    }

    if (v24)
    {
      v18 = v25;
      if (!v23)
      {
        return 0;
      }

      if (v21 != v20 || v24 != v23)
      {
        v19 = sub_1D7704A30();
        v18 = v25;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v18 = v25;
      if (v23)
      {
        return 0;
      }
    }

    if (v18)
    {
      if (v22 && (sub_1D768EA18(v18, v22) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v22)
    {
      return 1;
    }

    return 0;
  }

  v26 = *(a2 + 56);
  v27 = *(a1 + 56);
  v20 = *(a2 + 64);
  v21 = *(a1 + 64);
  v23 = *(a2 + 72);
  v24 = *(a1 + 72);
  v22 = *(a2 + 80);
  v25 = *(a1 + 80);
  v17 = sub_1D7704A30();
  result = 0;
  if ((v17 & 1) != 0 && v2 == v11)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D768FD6C()
{
  result = qword_1EC9BD1F8;
  if (!qword_1EC9BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1F8);
  }

  return result;
}

void sub_1D768FDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768FD6C();
    v7 = a3(a1, &type metadata for FeedAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D768FEA0()
{
  result = qword_1EC9BD208;
  if (!qword_1EC9BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD208);
  }

  return result;
}

unint64_t sub_1D768FEF8()
{
  result = qword_1EC9BD210;
  if (!qword_1EC9BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD210);
  }

  return result;
}

unint64_t sub_1D768FF50()
{
  result = qword_1EC9BD218;
  if (!qword_1EC9BD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD218);
  }

  return result;
}

uint64_t sub_1D768FFA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715480 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65746968577369 && a2 == 0xED00006465747369 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEF65636E65696475 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7779654B6461 && a2 == 0xEA00000000007364 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F67657461436461 && a2 == 0xEC00000073656972 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D77154A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static Commands.DebugAds.presentDebugger.getter()
{
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }
}

uint64_t static ContextMenuItem.debugAd(_:)(__int128 *a1)
{
  v17 = sub_1D7703F50();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[7];
  v25 = a1[6];
  v26 = v6;
  v27 = a1[8];
  v7 = a1[3];
  v21 = a1[2];
  v22 = v7;
  v8 = a1[5];
  v23 = a1[4];
  v24 = v8;
  v9 = a1[1];
  v19 = *a1;
  v20 = v9;
  if (qword_1EE0B07F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  sub_1D766D644(&v19, v18);
  v12 = [v11 bundleForClass_];
  sub_1D7702E60();

  v13 = sub_1D7704230();
  v14 = [objc_opt_self() systemImageNamed_];

  (*(v2 + 104))(v5, *MEMORY[0x1E69D7B48], v17);
  v18[6] = v25;
  v18[7] = v26;
  v18[8] = v27;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[5] = v24;
  v18[0] = v19;
  v18[1] = v20;
  swift_allocObject();
  return sub_1D7703F00();
}

void BannerAdLayout.init(size:topPadding:bottomPadding:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t FeedBannerAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D769072C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D769076C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D769076C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for FeedBannerAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t AdRequestManager.__allocating_init(contextBuilder:adManager:requestStore:journal:host:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v14 = *a5;
  v12 = *(a5 + 2);
  v11 = *(a5 + 3);
  sub_1D7667CB8(a1, v10 + 16);
  sub_1D7667CB8(a2, v10 + 56);
  *(v10 + 96) = a3;
  *(v10 + 104) = a4;
  *(v10 + 112) = v14;
  *(v10 + 128) = v12;
  *(v10 + 136) = v11;
  return v10;
}

uint64_t AdRequestManager.existingRequest(for:)@<X0>(char *a1@<X8>)
{
  v3 = (*(*(*v1 + 120) + 8))(*(*v1 + 96));
  v6 = 1;
  AdRequestStore.request(for:behavior:)(v3, v4, &v6, a1);
}

uint64_t AdRequestManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t AdRequestManager.__deallocating_deinit()
{
  AdRequestManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7690A2C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80) & 0xF8;
  v4 = *(*(a3 + 24) - 8);
  v5 = ((((*(v4 + 64) + ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + ((v3 + 23) & ~v3 & 0x1F8) + 8) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1D7690BBC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v6 = *(*(a4 + 24) - 8);
  v7 = ((((*(v6 + 64) + ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + ((v5 + 23) & ~v5 & 0x1F8) + 8) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 | 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 255;
  v13 = (a2 - 255) >> 8;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t FeedPrerollAdContext.articleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D768DF4C(v8, &v7);
}

uint64_t FeedPrerollAdContext.channelData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v4 = v1[9];
  v8 = v1[8];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D7690E7C(v7, &v6);
}

double FeedPrerollAdContext.videoData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 160);
  *a1 = result;
  return result;
}

uint64_t FeedPrerollAdContext.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v9 = *(v1 + 208);
  v10 = v2;
  v11 = *(v1 + 240);
  v3 = v11;
  v4 = *(v1 + 192);
  v8[0] = *(v1 + 176);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7690F3C(v8, v7);
}

uint64_t FeedPrerollAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = *(v1 + 328);
  v2 = *(v1 + 248);
  v3 = *(v1 + 280);
  v10 = *(v1 + 264);
  v4 = v10;
  v11 = v3;
  v6 = *(v1 + 312);
  v12 = *(v1 + 296);
  v5 = v12;
  v13 = v6;
  v9 = v2;
  *(a1 + 80) = v14;
  *(a1 + 32) = v3;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v2;
  *(a1 + 16) = v4;
  return sub_1D768FE24(&v9, v8);
}

uint64_t FeedPrerollAdContext.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  *a1 = *(v1 + 336);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t FeedPrerollAdContext.sectionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 368);
  *a1 = *(v1 + 360);
  a1[1] = v2;
}

uint64_t FeedPrerollAdContext.init(provider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v37;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v37;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for ArticleAdData, v11, &type metadata for ArticleAdData, v12);
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v90 = v74;
  v91 = v75;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.data<A>(for:)(&type metadata for ChannelAdData, v13, &type metadata for ChannelAdData, v14);
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  AdContextDataProviding.data<A>(for:)(&type metadata for VideoAdData, v15, &type metadata for VideoAdData, v16);
  v17 = v37;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v18, &type metadata for PlacementAdData, v19);
  v35 = v37;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedAdData, v20, &type metadata for FeedAdData, v21);
  v81 = v66;
  v82 = v67;
  v83 = v68;
  v84 = v69;
  v79 = v64;
  v80 = v65;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  AdContextDataProviding.data<A>(for:)(&type metadata for FeedGroupAdData, v22, &type metadata for FeedGroupAdData, v23);
  *&v85[23] = v60;
  *&v85[39] = v61;
  *&v85[55] = v62;
  *&v85[71] = v63;
  *&v85[7] = v59;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for IssueAdData, v24, &type metadata for IssueAdData, v25);
  v26 = v37;
  v34 = v38;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for SectionAdData, v27, &type metadata for SectionAdData, v28);
  v33 = v37;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v29, &type metadata for ReferralAdData, v30);
  __src[3] = v76;
  __src[4] = v77;
  __src[1] = v74;
  __src[2] = v75;
  __src[5] = v78;
  __src[6] = v70;
  __src[7] = v71;
  __src[8] = v72;
  __src[9] = v73;
  *(&__src[11] + 9) = *&v85[16];
  *(&__src[12] + 9) = *&v85[32];
  *(&__src[13] + 9) = *&v85[48];
  *(&__src[14] + 8) = *&v85[63];
  *(&__src[10] + 9) = *v85;
  *(&__src[18] + 8) = v67;
  *(&__src[19] + 8) = v68;
  *(&__src[16] + 8) = v65;
  *(&__src[17] + 8) = v66;
  v32 = v58;
  LOBYTE(__src[0]) = v37;
  *(&__src[0] + 1) = v37;
  *&__src[10] = v37;
  BYTE8(__src[10]) = v37;
  *(&__src[15] + 8) = v64;
  *(&__src[20] + 1) = v69;
  __src[21] = v37;
  LOWORD(__src[22]) = v38;
  *(&__src[22] + 8) = v37;
  BYTE8(__src[23]) = v58;
  memcpy(a2, __src, 0x179uLL);
  sub_1D7691844(__src, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v37) = v7;
  *(&v37 + 1) = v10;
  v40 = v92;
  v41 = v93;
  v38 = v90;
  v39 = v91;
  v42 = v94;
  v43 = v86;
  v44 = v87;
  v45 = v88;
  v46 = v89;
  v47 = v17;
  v48 = v35;
  v50 = *&v85[16];
  v51 = *&v85[32];
  *v52 = *&v85[48];
  *&v52[15] = *&v85[63];
  v49 = *v85;
  *&v52[79] = v82;
  *&v52[95] = v83;
  *&v52[47] = v80;
  *&v52[63] = v81;
  *&v52[31] = v79;
  v53 = v84;
  v54 = v26;
  v55 = v34;
  v56 = v33;
  v57 = v32;
  return sub_1D769187C(&v37);
}

uint64_t sub_1D76918AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x61746144707061;
    v7 = 0x44656C6369747261;
    v8 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v8 = 0x7461446F65646976;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6174614472657375;
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
    v1 = 0x7461446575737369;
    v2 = 0x446E6F6974636573;
    if (a1 != 9)
    {
      v2 = 0x6C61727265666572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E656D6563616C70;
    v4 = 0x74614470756F7267;
    if (a1 != 6)
    {
      v4 = 0x6174614464656566;
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

uint64_t sub_1D7691A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7693D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7691A7C(uint64_t a1)
{
  v2 = sub_1D76921B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7691AB8(uint64_t a1)
{
  v2 = sub_1D76921B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedPrerollAdContext.encode(to:)(void *a1)
{
  sub_1D7692CE0(0, &qword_1EC9BD228, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - v6;
  v38 = *v1;
  v37 = *(v1 + 1);
  v8 = *(v1 + 4);
  v76 = *(v1 + 3);
  v77 = v8;
  v9 = *(v1 + 2);
  v74 = *(v1 + 1);
  v75 = v9;
  v10 = *(v1 + 6);
  v78 = *(v1 + 5);
  v79 = v10;
  v12 = *(v1 + 8);
  v11 = *(v1 + 9);
  v80 = *(v1 + 7);
  v81 = v12;
  v13 = *(v1 + 13);
  v14 = *(v1 + 14);
  v15 = *(v1 + 11);
  v84 = *(v1 + 12);
  v85 = v13;
  v16 = *(v1 + 20);
  v36 = v1[168];
  v86 = v14;
  v87 = *(v1 + 30);
  v82 = v11;
  v83 = v15;
  v17 = *(v1 + 42);
  v93 = *(v1 + 41);
  v18 = *(v1 + 312);
  v91 = *(v1 + 296);
  v92 = v18;
  v19 = *(v1 + 280);
  v89 = *(v1 + 264);
  v90 = v19;
  v88 = *(v1 + 248);
  v35 = *(v1 + 43);
  v34 = *(v1 + 176);
  v20 = *(v1 + 46);
  v31 = *(v1 + 45);
  v32 = v20;
  v33 = v17;
  v21 = v1[376];
  v22 = a1[3];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1D76921B8();
  sub_1D7704B10();
  LOBYTE(v47) = v38;
  v26 = v7;
  LOBYTE(v44[0]) = 0;
  sub_1D7669D40();
  v27 = v39;
  sub_1D7704A00();
  if (v27)
  {
    return (*(v4 + 8))(v7, v25);
  }

  v29 = v36;
  LODWORD(v39) = v21;
  *&v47 = v37;
  LOBYTE(v44[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  v71 = v76;
  v72 = v77;
  v73 = v78;
  v69 = v74;
  v70 = v75;
  v68 = 2;
  sub_1D768DF4C(&v74, &v47);
  sub_1D768E278();
  sub_1D7704A00();
  v67[2] = v71;
  v67[3] = v72;
  v67[4] = v73;
  v67[0] = v69;
  v67[1] = v70;
  sub_1D768DF84(v67);
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  v62 = 3;
  sub_1D7690E7C(&v79, &v47);
  sub_1D769220C();
  sub_1D7704A00();
  v61[0] = v63;
  v61[1] = v64;
  v61[2] = v65;
  v61[3] = v66;
  sub_1D76917F0(v61);
  *&v47 = v16;
  LOBYTE(v44[0]) = 4;
  sub_1D7685DF0();
  sub_1D7704A00();
  LOBYTE(v47) = v29;
  LOBYTE(v44[0]) = 5;
  sub_1D76794CC();
  sub_1D7704A00();
  v58 = v85;
  v59 = v86;
  v60 = v87;
  v56 = v83;
  v57 = v84;
  v55 = 6;
  sub_1D7690F3C(&v83, &v47);
  sub_1D7692260();
  sub_1D7704A00();
  v53[2] = v58;
  v53[3] = v59;
  v54 = v60;
  v53[0] = v56;
  v53[1] = v57;
  sub_1D769179C(v53);
  v50 = v91;
  v51 = v92;
  v52 = v93;
  v47 = v88;
  v48 = v89;
  v49 = v90;
  v46 = 7;
  sub_1D768FE24(&v88, v44);
  sub_1D766CFCC();
  sub_1D7704A00();
  v44[2] = v49;
  v44[3] = v50;
  v44[4] = v51;
  v45 = v52;
  v44[0] = v47;
  v44[1] = v48;
  sub_1D768FE5C(v44);
  v41 = v33;
  v42 = v35;
  v43 = v34;
  v40 = 8;
  sub_1D76922B4();

  sub_1D77049B0();

  v41 = v31;
  v42 = v32;
  v40 = 9;
  sub_1D7692308();

  sub_1D77049B0();

  LOBYTE(v41) = v39;
  v40 = 10;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v4 + 8))(v26, v25);
}

unint64_t sub_1D76921B8()
{
  result = qword_1EC9BD230;
  if (!qword_1EC9BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD230);
  }

  return result;
}

unint64_t sub_1D769220C()
{
  result = qword_1EE0B02F8;
  if (!qword_1EE0B02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02F8);
  }

  return result;
}

unint64_t sub_1D7692260()
{
  result = qword_1EE0B0098[0];
  if (!qword_1EE0B0098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B0098);
  }

  return result;
}

unint64_t sub_1D76922B4()
{
  result = qword_1EC9BD238;
  if (!qword_1EC9BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD238);
  }

  return result;
}

unint64_t sub_1D7692308()
{
  result = qword_1EC9BD240;
  if (!qword_1EC9BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD240);
  }

  return result;
}

uint64_t FeedPrerollAdContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7692CE0(0, &qword_1EC9BD248, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D76921B8();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v12 = v7;
  v32 = a2;
  LOBYTE(v34[0]) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v13 = v35;
  LOBYTE(v34[0]) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v30 = v13;
  v31 = v35;
  v81 = 2;
  sub_1D768E224();
  sub_1D7704970();
  v102 = v84;
  v103 = v85;
  v104 = v86;
  v100 = v82;
  v101 = v83;
  v76 = 3;
  sub_1D7692D44();
  sub_1D7704970();
  v96 = v77;
  v97 = v78;
  v98 = v79;
  v99 = v80;
  LOBYTE(v34[0]) = 4;
  sub_1D7685D9C();
  sub_1D7704970();
  v14 = v35;
  LOBYTE(v34[0]) = 5;
  sub_1D7679440();
  sub_1D7704970();
  v15 = v35;
  v70 = 6;
  sub_1D7692D98();
  sub_1D7704970();
  *(&v95[1] + 7) = v72;
  *(&v95[2] + 7) = v73;
  *(&v95[3] + 7) = v74;
  *(&v95[4] + 7) = v75;
  *(v95 + 7) = v71;
  v63 = 7;
  sub_1D766CDD0();
  sub_1D7704970();
  v91 = v66;
  v92 = v67;
  v93 = v68;
  v94 = v69;
  v89 = v64;
  v90 = v65;
  LOBYTE(v34[0]) = 8;
  sub_1D7692DEC();
  sub_1D7704920();
  v16 = v6;
  v17 = v35;
  v18 = v36;
  v27 = v37;
  LOBYTE(v34[0]) = 9;
  sub_1D7692E40();
  v28 = v10;
  v29 = v16;
  sub_1D7704920();
  v19 = v35;
  v26 = v36;
  v61 = 10;
  sub_1D768AAE4();
  sub_1D7704920();
  (*(v12 + 8))(v28, v29);
  LODWORD(v29) = v62;
  LOBYTE(v13) = v30;
  LOBYTE(v34[0]) = v30;
  *(v34 + 1) = v105[0];
  DWORD1(v34[0]) = *(v105 + 3);
  v20 = v31;
  *(&v34[0] + 1) = v31;
  v34[3] = v102;
  v34[4] = v103;
  v34[1] = v100;
  v34[2] = v101;
  v34[8] = v98;
  v34[9] = v99;
  v34[6] = v96;
  v34[7] = v97;
  v34[5] = v104;
  *&v34[10] = v14;
  v25 = v15;
  BYTE8(v34[10]) = v15;
  *(&v34[11] + 9) = v95[1];
  *(&v34[12] + 9) = v95[2];
  *(&v34[13] + 9) = v95[3];
  *(&v34[14] + 8) = *(&v95[3] + 15);
  *(&v34[10] + 9) = v95[0];
  *(&v34[18] + 8) = v92;
  *(&v34[19] + 8) = v93;
  *(&v34[16] + 8) = v90;
  *(&v34[17] + 8) = v91;
  *(&v34[15] + 8) = v89;
  *(&v34[20] + 1) = v94;
  *&v34[21] = v17;
  *(&v34[21] + 1) = v18;
  LOWORD(v16) = v27;
  LOWORD(v34[22]) = v27;
  *(&v34[22] + 2) = v87;
  WORD3(v34[22]) = v88;
  v21 = v19;
  *(&v34[22] + 1) = v19;
  v22 = v26;
  *&v34[23] = v26;
  BYTE8(v34[23]) = v62;
  memcpy(v32, v34, 0x179uLL);
  sub_1D7691844(v34, &v35);
  __swift_destroy_boxed_opaque_existential_1(v33);
  LOBYTE(v35) = v13;
  *(&v35 + 1) = v105[0];
  HIDWORD(v35) = *(v105 + 3);
  v36 = v20;
  v39 = v102;
  v40 = v103;
  v37 = v100;
  v38 = v101;
  v44 = v98;
  v45 = v99;
  v42 = v96;
  v43 = v97;
  v41 = v104;
  v46 = v14;
  v47 = v25;
  v49 = v95[1];
  v50 = v95[2];
  *v51 = v95[3];
  *&v51[15] = *(&v95[3] + 15);
  v48 = v95[0];
  *&v51[79] = v92;
  *&v51[95] = v93;
  *&v51[47] = v90;
  *&v51[63] = v91;
  *&v51[31] = v89;
  v52 = v94;
  v53 = v17;
  v54 = v18;
  v55 = v16;
  v56 = v87;
  v57 = v88;
  v58 = v21;
  v59 = v22;
  v60 = v29;
  return sub_1D769187C(&v35);
}

void sub_1D7692CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76921B8();
    v7 = a3(a1, &type metadata for FeedPrerollAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7692D44()
{
  result = qword_1EE0B02F0;
  if (!qword_1EE0B02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B02F0);
  }

  return result;
}

unint64_t sub_1D7692D98()
{
  result = qword_1EE0B0090;
  if (!qword_1EE0B0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0090);
  }

  return result;
}

unint64_t sub_1D7692DEC()
{
  result = qword_1EC9BD250;
  if (!qword_1EC9BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD250);
  }

  return result;
}

unint64_t sub_1D7692E40()
{
  result = qword_1EC9BD258;
  if (!qword_1EC9BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD258);
  }

  return result;
}

id FeedPrerollAdContext.newsSupplementalContext.getter()
{
  v1 = sub_1D77038A0();
  v38 = *(v1 - 8);
  v39 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v36 = v34 - v6;
  v41 = *v0;
  v7 = *(v0 + 4);
  v72 = *(v0 + 3);
  v73 = v7;
  v8 = *(v0 + 6);
  v74 = *(v0 + 5);
  v9 = *(v0 + 2);
  v70 = *(v0 + 1);
  v71 = v9;
  v10 = *(v0 + 9);
  v11 = *(v0 + 7);
  v77 = *(v0 + 8);
  v78 = v10;
  v75 = v8;
  v76 = v11;
  v12 = *(v0 + 20);
  v13 = *(v0 + 23);
  v14 = *(v0 + 24);
  v15 = *(v0 + 25);
  v17 = *(v0 + 26);
  v16 = *(v0 + 27);
  v46 = *(v0 + 22);
  v47 = v16;
  v18 = *(v0 + 29);
  v51 = *(v0 + 30);
  v19 = *(v0 + 42);
  v84 = *(v0 + 41);
  v20 = *(v0 + 312);
  v82 = *(v0 + 296);
  v83 = v20;
  v21 = *(v0 + 280);
  v80 = *(v0 + 264);
  v81 = v21;
  v79 = *(v0 + 248);
  v40 = *(v0 + 43);
  v35 = *(v0 + 176);
  v22 = *(v0 + 46);
  v34[1] = *(v0 + 45);
  v34[2] = v19;
  v44 = v22;
  v48 = v0[376];
  v23 = objc_allocWithZone(sub_1D7703D00());

  sub_1D768DF4C(&v70, &v52);
  sub_1D7690E7C(&v75, &v52);

  v50 = v13;

  v45 = v14;

  v43 = v15;

  v42 = v17;

  v49 = v18;

  v24 = [v23 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  v54 = v72;
  v55 = v73;
  v56 = v74;
  v52 = v70;
  v53 = v71;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  sub_1D76B9740(&v52, &v64);
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = v67;
  sub_1D76939B0(v68, &qword_1EE0B02E8);
  v69[2] = v54;
  v69[3] = v55;
  v69[4] = v56;
  v69[0] = v52;
  v69[1] = v53;
  sub_1D76939B0(v69, &qword_1EE0B0300);
  if (v40)
  {

    sub_1D7703AD0();
    v25 = v39;
    v26 = *(v38 + 104);
    v27 = *MEMORY[0x1E69C5F50];
    v28 = *MEMORY[0x1E69C5F58];
    v29 = v35;
    if (v35)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    v26(v36, v30, v39);
    sub_1D7703B80();
    if ((v29 & 0x100) != 0)
    {
      v31 = v27;
    }

    else
    {
      v31 = v28;
    }

    v26(v37, v31, v25);
    sub_1D7703BE0();
  }

  v60 = v81;
  v61 = v82;
  v62 = v83;
  v63 = v84;
  v58 = v79;
  v59 = v80;
  if (v44)
  {
    if ((BYTE8(v80) & 1) != 0 || v80 > 0)
    {
    }

    sub_1D768FE24(&v79, &v52);
    sub_1D768FE24(&v79, &v52);
    sub_1D7703C10();
    sub_1D768FE5C(&v79);
  }

  else
  {
    sub_1D768FE24(&v79, &v52);
  }

  sub_1D768078C(&v58);
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v52 = v58;
  v53 = v59;
  sub_1D76939B0(&v52, &qword_1EE0B0468);

  sub_1D7703A50();

  sub_1D7703A80();

  sub_1D7703A90();

  sub_1D77039C0();
  v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  [v32 initWithInteger_];
  sub_1D7703AC0();

  if (v48 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1D7703B10();
  return v24;
}

uint64_t FeedPrerollAdContext.currentPromotableContentDepiction.getter()
{
  v1 = sub_1D7702FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = v0[2];
  if (!v0[11] && *(v0[1] + 16))
  {
  }

  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v2 + 8))(v5, v1);
  sub_1D7703780();

  return sub_1D7703770();
}

uint64_t FeedPrerollAdContext.additionalPromotableContentDepictions.getter()
{
  v28 = sub_1D7702FD0();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v2);
  v27 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7702FA0();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v5);
  v25 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 240);
  v8 = *(v7 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = *(v0 + 8);
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D77047F0();
    v11 = sub_1D7703780();
    v22 = (v4 + 8);
    v23 = v11;
    v21 = (v1 + 8);
    v12 = v7 + 88;
    v24 = v10;
    do
    {
      v14 = *(v12 - 48);
      v15 = *(v12 - 32);
      v16 = *(v12 - 16);

      v32 = v14;

      v31 = v15;

      v17 = v25;
      sub_1D7702F90();
      v18 = sub_1D7702F70();
      v29 = v19;
      v30 = v18;
      (*v22)(v17, v26);
      if (v16 || *(v10 + 16))
      {
      }

      else
      {
      }

      v12 += 64;
      v13 = v27;
      sub_1D7702FC0();
      sub_1D7702FB0();
      (*v21)(v13, v28);

      sub_1D7703770();

      sub_1D77047C0();
      sub_1D7704800();
      sub_1D7704810();
      sub_1D77047D0();
      --v8;
      v10 = v24;
    }

    while (v8);
    return v33;
  }

  return result;
}

uint64_t sub_1D76939B0(uint64_t a1, unint64_t *a2)
{
  sub_1D7666F64(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7693A14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
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

uint64_t sub_1D7693A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedPrerollAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedPrerollAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7693C54()
{
  result = qword_1EC9BD260;
  if (!qword_1EC9BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD260);
  }

  return result;
}

unint64_t sub_1D7693CAC()
{
  result = qword_1EC9BD268;
  if (!qword_1EC9BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD268);
  }

  return result;
}

unint64_t sub_1D7693D04()
{
  result = qword_1EC9BD270;
  if (!qword_1EC9BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD270);
  }

  return result;
}

uint64_t sub_1D7693D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446F65646976 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D7704A30();

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

uint64_t BannerAdImpressionInfo.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BannerAdImpressionInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionInfo() + 32);
  v4 = sub_1D7702F50();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BannerAdImpressionInfo()
{
  result = qword_1EE0AE8A8;
  if (!qword_1EE0AE8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BannerAdImpressionInfo.traits.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionInfo();
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

void sub_1D7694288()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D7702F50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Journal.__allocating_init()()
{
  v0 = swift_allocObject();
  Journal.init()();
  return v0;
}

uint64_t Journal.addRequestedEntry(request:placementIdentifier:contentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v18 = a1;
  v8 = *(*v5 + 88);
  v9 = *(*v5 + 96);
  v10 = *(*v5 + 104);
  v21 = *(*v5 + 80);
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v11 = type metadata accessor for JournalEntry();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v17 - v14;
  sub_1D76F491C(a2, a3, v19, v20, v18, v21, v8, v9, (&v17 - v14), v10);
  sub_1D766FFCC(v15, a2, a3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D76945D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = a5;
  v28 = a7;
  v25 = a1;
  v26 = a4;
  v24 = a3;
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  *&v29 = *(*v7 + 80);
  v10 = v29;
  *(&v29 + 1) = v11;
  *&v30 = v12;
  *(&v30 + 1) = v13;
  v14 = type metadata accessor for JournalEntry();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v23 - v17;
  LOBYTE(v17) = *(a6 + 32);
  v19 = a6[1];
  v29 = *a6;
  v30 = v19;
  v31 = v17;
  v22 = v13;
  v20 = v24;
  v28(a2, v24, v26, v27, v25, &v29, v10, v11, v12, v22);
  sub_1D766FFCC(v18, a2, v20);
  return (*(v15 + 8))(v18, v14);
}

Swift::Void __swiftcall Journal.removeEntries(for:)(Swift::String a1)
{

  sub_1D77035F0();
}

uint64_t Journal.lastEntry(for:)()
{
  sub_1D7670B60();
  type metadata accessor for JournalEntry();
  sub_1D77044B0();
  swift_getWitnessTable();
  sub_1D7704200();
}

Swift::Bool __swiftcall Journal.containsEntry(for:)(Swift::String a1)
{
  sub_1D7670B60();
  type metadata accessor for JournalEntry();
  sub_1D77044B0();
  swift_getWitnessTable();
  v1 = sub_1D7704510();

  return (v1 & 1) == 0;
}

uint64_t Journal.deinit()
{

  return v0;
}

uint64_t Journal.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76949D8()
{

  return swift_deallocClassInstance();
}

uint64_t InterstitialAdProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7694AC8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D7694B08(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D7694B08(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for InterstitialAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t BannerAdViewRenderer.render(for:with:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  memcpy(__dst, (a2 + 72), sizeof(__dst));
  ObjectType = swift_getObjectType();
  *&__src[0] = a3;
  v15 = (*(a4 + 8))(ObjectType, a4);
  if (v15)
  {
    v17 = v16;
    if (v13)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v15;
    v42 = swift_getObjectType();
    [v19 setAlpha_];
    v20 = v19;
    if (v13)
    {
      sub_1D7704650();
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
    }

    [v20 setFrame_];

    sub_1D77033C0();
    if ((sub_1D77033B0() & 1) == 0)
    {
      goto LABEL_12;
    }

    if (qword_1EE0B0C58 != -1)
    {
      swift_once();
    }

    sub_1D769561C(&qword_1EE0AF920, v25, type metadata accessor for BannerAdViewRenderer);
    sub_1D7703070();
    if (LOBYTE(__src[0]) == 1)
    {
      *&__src[0] = v20;
      v41 = ObjectType;
      v26 = *(v17 + 32);
      v27 = v26(v42, v17);
      v28 = sub_1D7703FF0();

      v43[0] = v20;
      v29 = v26(v42, v17);
      ObjectType = v41;
      v30 = v29;
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      *(v32 + 24) = a4;
      swift_unknownObjectWeakInit();
      sub_1D7667C54(a1, __src);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      sub_1D7667CB8(__src, v33 + 32);
      v34 = sub_1D7703FE0();
    }

    else
    {
LABEL_12:
    }
  }

  memcpy(__src, __dst, 0x1A1uLL);
  result = sub_1D76950D0(__src);
  if (result != 1)
  {
    v36 = v5[10];
    v37 = v5[11];
    __swift_project_boxed_opaque_existential_1(v5 + 7, v36);
    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(v39 + 8))(v53, v38, v39);
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v63 = v54;
    v64 = v55;
    sub_1D766D644(&v63, v43);
    sub_1D766E6D8(v53);
    v50 = v69;
    v51 = v70;
    v52 = v71;
    v46 = v65;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    v44 = v63;
    v45 = v64;
    memcpy(v43, __src, 0x1A1uLL);
    v40 = (*(a4 + 16))(ObjectType, a4);
    (*(v37 + 8))(&v44, v43, v40, v36, v37);

    v72[6] = v50;
    v72[7] = v51;
    v72[8] = v52;
    v72[2] = v46;
    v72[3] = v47;
    v72[5] = v49;
    v72[4] = v48;
    v72[0] = v44;
    v72[1] = v45;
    return sub_1D76950E4(v72);
  }

  return result;
}

uint64_t sub_1D76950D0(uint64_t a1)
{
  v1 = *(a1 + 416);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D7695138(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D7703F90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      (*(v5 + 104))(v8, *MEMORY[0x1E69D7FC0], v4);
      v13 = type metadata accessor for Tracker();
      v14 = swift_allocObject();
      v29[3] = v13;
      v29[4] = sub_1D769561C(&qword_1EC9BD278, 255, type metadata accessor for Tracker);
      v29[0] = v14;
      v57 = 0u;
      v58 = 0u;
      v59 = 1;
      sub_1D7703F80();
      swift_allocObject();
      v18 = v12;
      sub_1D7703F70();
      v17[2] = *(v10 + 104);
      v17[1] = swift_getObjectType();
      if (qword_1EE0B07F0 != -1)
      {
        swift_once();
      }

      v15 = a3[3];
      v16 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v15);
      (*(v16 + 8))(v29, v15, v16);
      v45 = v36;
      v46 = v37;
      v47 = v38;
      v41 = v32;
      v42 = v33;
      v43 = v34;
      v44 = v35;
      v39 = v30;
      v40 = v31;
      sub_1D766D644(&v39, &v20);
      sub_1D766E6D8(v29);
      v54 = v45;
      v55 = v46;
      v56 = v47;
      v50 = v41;
      v51 = v42;
      v52 = v43;
      v53 = v44;
      v48 = v39;
      v49 = v40;
      nullsub_1(&v48);
      v26 = v54;
      v27 = v55;
      v28 = v56;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v25 = v53;
      v20 = v48;
      v21 = v49;

      sub_1D7703F30();
      v19[6] = v26;
      v19[7] = v27;
      v19[8] = v28;
      v19[2] = v22;
      v19[3] = v23;
      v19[4] = v24;
      v19[5] = v25;
      v19[0] = v20;
      v19[1] = v21;
      sub_1D7695664(v19);
    }

    else
    {
    }
  }
}

uint64_t BannerAdViewRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BannerAdViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D769561C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7695664(uint64_t a1)
{
  sub_1D76956C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76956C0()
{
  if (!qword_1EE0B03A8)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B03A8);
    }
  }
}

uint64_t AdPreview.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D76957A8(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a3;
  v40 = type metadata accessor for NativeAdInfo(0);
  v6 = MEMORY[0x1EEE9AC00](v40, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v32 - v10);
  sub_1D7696460();
  v13 = (a1 + *(v12 + 56));
  v14 = v13[1];
  v38 = *v13;
  v39 = a1;

  sub_1D7703140();

  v36 = v44;
  v37 = v43;

  sub_1D7703140();

  v34 = v44;
  v35 = v43;

  sub_1D7703140();

  v32 = v44;
  v33 = v43;
  type metadata accessor for DebugLifecycleMetricsHelper();
  v15 = swift_allocObject();
  v16 = type metadata accessor for DebugAdsMetricsView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView] = 0;
  *&v17[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_interactionPresentationDelegate] = 0;
  *&v17[OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_readyDelegate] = 0;
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v43 == 1)
  {
    v18 = [objc_opt_self() greenColor];
  }

  else
  {
    v18 = 0;
  }

  v42.receiver = v17;
  v42.super_class = v16;
  v19 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 120.0, 53.0);
  [v19 setBackgroundColor_];

  v20 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  v21 = (v11 + v20[12]);
  v21[3] = &type metadata for DebugNativeAdContentInfo;
  v21[4] = &off_1F5252C68;
  v22 = swift_allocObject();
  *v21 = v22;
  v23 = v32;
  *(v22 + 16) = v33;
  *(v22 + 24) = v23;
  *(v22 + 32) = v15;
  *(v22 + 40) = 0;
  *(v22 + 42) = 0;
  *(v22 + 48) = xmmword_1D770A6A0;
  *(v22 + 64) = v19;
  *(v22 + 72) = &off_1F52505F8;
  v24 = a2[7];
  v25 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v24);
  v26 = (*(v25 + 8))(v24, v25);
  sub_1D769657C(v39, v11 + v20[11], sub_1D7696460);
  v27 = v37;
  *v11 = v38;
  v11[1] = v14;
  v11[2] = 0;
  v11[3] = 0;
  v28 = v36;
  v11[4] = v27;
  v11[5] = v28;
  v11[6] = 0;
  v11[7] = 0;
  v11[8] = 0;
  v11[9] = 0xE000000000000000;
  v29 = v34;
  v11[10] = v35;
  v11[11] = v29;
  *(v11 + v20[13]) = v26;
  v11[12] = v41;
  swift_storeEnumTagMultiPayload();
  sub_1D769657C(v11, v8, type metadata accessor for NativeAdInfo);
  sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  v30 = sub_1D77036E0();
  sub_1D7696720(v11);
  return v30;
}

uint64_t sub_1D7695BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D7703140();

  if (v12 <= 0.0)
  {
    sub_1D769657C(a1, v7, type metadata accessor for NativeAdInfo);
    sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8, v9);
    *(&v11 - 2) = a2;
    *(&v11 - 1) = a1;
    sub_1D76966BC(0, &qword_1EE0B0858, type metadata accessor for NativeAdInfo, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D77036F0();
  }
}

uint64_t sub_1D7695DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a1;
  v39 = a2;
  v40 = sub_1D77040D0();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7704110();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NativeAdInfo(0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7704130();
  v35 = v17;
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v34 - v24;
  sub_1D7669BD8();
  v36 = sub_1D77045F0();
  sub_1D7704120();

  sub_1D7703140();

  sub_1D7704150();
  v26 = *(v18 + 8);
  v26(v22, v17);
  sub_1D769657C(v37, v16, type metadata accessor for NativeAdInfo);
  v27 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 16) = v38;
  *(v28 + 24) = v29;
  sub_1D76965EC(v16, v28 + v27, type metadata accessor for NativeAdInfo);
  aBlock[4] = sub_1D7696654;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  sub_1D77040F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7689834();
  sub_1D76966BC(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76898F0();
  v31 = v40;
  sub_1D77046E0();
  v32 = v36;
  MEMORY[0x1DA6FF3A0](v25, v12, v8, v30);
  _Block_release(v30);

  (*(v43 + 8))(v8, v31);
  (*(v41 + 8))(v12, v42);
  return (v26)(v25, v35);
}

uint64_t sub_1D7696214()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7696280(uint64_t a1, uint64_t a2)
{
  sub_1D7696460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D7669BD8();
  v11 = sub_1D77045F0();
  sub_1D769657C(a1, v9, sub_1D7696460);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1D76965EC(v9, v14 + v12, sub_1D7696460);
  *(v14 + v13) = v10;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  type metadata accessor for NativeAdInfo(0);

  sub_1D7703710();

  v15 = sub_1D7703620();
  v16 = sub_1D77036B0();

  return v16;
}

void sub_1D7696460()
{
  if (!qword_1EE0B0DA8[0])
  {
    type metadata accessor for NativeAdPlacement();
    sub_1D7666D14();
    v0 = type metadata accessor for AdRequest();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0B0DA8);
    }
  }
}

uint64_t sub_1D76964E0()
{
  sub_1D7696460();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D76957A8(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D769657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D76965EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D76966BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7696720(uint64_t a1)
{
  v2 = type metadata accessor for NativeAdInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7696794(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    [sub_1D77037D0() *v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AdPendingLoadToken.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D76968E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7696930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7696984(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t AdRequestPolicyValidator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AdRequestPolicyValidator.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AdRequestPolicyValidator.validatePlacement(_:environments:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[5];
  v65 = a2[4];
  v66 = v8;
  v67 = a2[6];
  v68 = *(a2 + 14);
  v9 = a2[1];
  v61 = *a2;
  v62 = v9;
  v10 = a2[3];
  v63 = a2[2];
  v64 = v10;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D7668854();
  *(v11 + 64) = v13;
  v46 = v4;
  *&v47[0] = 0;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(&v47[0] + 1) = 0xE000000000000000;
  v50 = v6;
  v51 = v7;
  type metadata accessor for CGPoint(0);
  swift_bridgeObjectRetain_n();
  sub_1D7704850();
  v14 = v47[0];
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  v44 = v13;
  *(v11 + 72) = v14;
  sub_1D77045A0();
  sub_1D7703ED0();

  swift_beginAccess();
  v15 = *(v3 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;

    v18 = v16 - 1;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v4;
    while (1)
    {
      sub_1D7667C54(v17, v58);
      v22 = v59;
      v21 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v49[0] = v20;
      v49[1] = v5;
      v49[2] = v6;
      v49[3] = v7;
      v47[4] = v65;
      v47[5] = v66;
      v47[6] = v67;
      v48 = v68;
      v47[0] = v61;
      v47[1] = v62;
      v47[2] = v63;
      v47[3] = v64;
      (*(v21 + 8))(&v50, v49, v47, v22, v21);
      v23 = v50;
      v24 = v51;
      v55 = v52;
      v56 = v53;
      v57 = v54;
      __swift_destroy_boxed_opaque_existential_1(v58);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D768C5D8(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_1D768C5D8((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v26 + 1;
        v27 = &v19[64 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v24;
        v28 = v55;
        v29 = v57;
        *(v27 + 4) = v56;
        *(v27 + 5) = v29;
        *(v27 + 3) = v28;
        v20 = v46;
      }

      if (!v18)
      {
        break;
      }

      --v18;
      v17 += 40;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v19 + 2);

  if (v30)
  {
    v31 = *(v19 + 2);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      *&v47[0] = MEMORY[0x1E69E7CC0];
      sub_1D76970EC(0, v31, 0);
      v32 = *&v47[0];
      v33 = (v19 + 80);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        *&v47[0] = v32;
        v36 = *(v32 + 16);
        v37 = *(v32 + 24);

        if (v36 >= v37 >> 1)
        {
          sub_1D76970EC((v37 > 1), v36 + 1, 1);
          v32 = *&v47[0];
        }

        *(v32 + 16) = v36 + 1;
        v38 = v32 + 16 * v36;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        v33 += 8;
        --v31;
      }

      while (v31);
    }

    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D7708FD0;
    v40 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v44;
    *(v39 + 32) = v46;
    *(v39 + 40) = v5;
    sub_1D7678458(0, &qword_1EE0AED80, v40, MEMORY[0x1E69E62F8]);
    *(v39 + 96) = v41;
    *(v39 + 104) = sub_1D769710C();
    *(v39 + 72) = v32;
    sub_1D77045A0();
    sub_1D7703ED0();

    *a3 = v19;
    *(a3 + 8) = 0;
    *(a3 + 16) = 257;
  }

  else
  {

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D7708FE0;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = v44;
    *(v43 + 32) = v46;
    *(v43 + 40) = v5;
    sub_1D77045A0();
    sub_1D7703ED0();

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t AdRequestPolicyValidator.addPolicy(_:)(uint64_t a1)
{
  sub_1D7667C54(a1, v7);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7673574(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1D7673574((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  sub_1D7667CB8(v7, &v2[5 * v5 + 4]);
  *(v1 + 16) = v2;
  return swift_endAccess();
}

uint64_t AdRequestPolicyValidator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7697014(uint64_t a1)
{
  v2 = *v1;
  sub_1D7667C54(a1, v8);
  swift_beginAccess();
  v3 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7673574(0, v3[2] + 1, 1, v3);
    *(v2 + 16) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D7673574((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_1D7667CB8(v8, &v3[5 * v6 + 4]);
  *(v2 + 16) = v3;
  return swift_endAccess();
}

char *sub_1D76970EC(char *a1, int64_t a2, char a3)
{
  result = sub_1D76972D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1D769710C()
{
  result = qword_1EE0AED68;
  if (!qword_1EE0AED68)
  {
    sub_1D7678458(255, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED68);
  }

  return result;
}

char *sub_1D7697200(char *a1, int64_t a2, char a3)
{
  result = sub_1D76973F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7697220(char *a1, int64_t a2, char a3)
{
  result = sub_1D769763C(a1, a2, a3, *v3, &qword_1EE0AEC18, &type metadata for AdPolicyFailureType);
  *v3 = result;
  return result;
}

char *sub_1D7697250(char *a1, int64_t a2, char a3)
{
  result = sub_1D767C1DC(a1, a2, a3, *v3, &qword_1EC9BD280, &type metadata for AdContextBuilderSnapshot.SerializedSnapshotEntry);
  *v3 = result;
  return result;
}

char *sub_1D7697280(char *a1, int64_t a2, char a3)
{
  result = sub_1D7697518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D76972A0(char *a1, int64_t a2, char a3)
{
  result = sub_1D769763C(a1, a2, a3, *v3, &qword_1EC9BD288, &type metadata for DebugJournalViewController.Section);
  *v3 = result;
  return result;
}

char *sub_1D76972D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7678458(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D76973F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7678458(0, &qword_1EE0AEC28, &type metadata for AdPolicyFailure, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7697518(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7678458(0, &qword_1EC9BD190, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D769763C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D7678458(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *DebugJournalSummaryViewLayoutAttributesFactory.makeLayoutAttributes(for:origin:with:)@<X0>(__int128 *a1@<X0>, double *a2@<X1>, void *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v10 = *(a1 + 6);
  v9 = *(a1 + 7);
  v12 = *(a1 + 8);
  v11 = *(a1 + 9);
  v31 = *(a2 + 1);
  rect = *a2;
  v29 = *(a2 + 2);
  v13 = a2[6];
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  sub_1D76983DC();

  sub_1D7703070();

  if (v47)
  {
    if (v10 >> 62 == 2 && (v10 & 0xBFFFFFFFFFFFFFF7) == 0x8000000000000020 && !(v12 | v9 | v11))
    {
      sub_1D769843C(__src);
    }

    else
    {
      v17 = 25.0;
      if (*&v29 > 25.0)
      {
        v18 = *&v29;
      }

      else
      {
        v18 = 25.0;
      }

      if (v13 > 25.0)
      {
        v17 = v13;
      }

      *__src = v10;
      *&__src[8] = v9;
      v19 = *&rect - v18 - v17;
      *&__src[16] = v12;
      *&__src[24] = v11;
      JournalEntryStatus.shortDescription.getter();
      v20 = sub_1D76BEBC8();

      sub_1D7704620();
      width = v48.size.width;
      height = v48.size.height;
      v23 = CGRectGetHeight(v48);
      if (v23 > 51.0)
      {
        v23 = 51.0;
      }

      v28 = (v23 + -44.0) * 0.5 + 7.0;
      v30 = v18 + v19 + -22.0;
      v49.origin.y = 7.0;
      v49.origin.x = v18;
      v49.size.width = width;
      v49.size.height = height;
      v24 = CGRectGetMaxY(v49) + 7.0;
      v50.origin.x = a4;
      v50.origin.y = a5;
      *&v50.size.width = rect;
      v50.size.height = v24;
      v27 = CGRectGetHeight(v50) + -7.0;
      *&v51.size.width = rect;
      v51.origin.x = a4;
      v51.origin.y = a5;
      v51.size.height = v24;
      v25 = CGRectGetHeight(v51);

      *__src = a4;
      *&__src[8] = a5;
      *&__src[16] = rect;
      *&__src[24] = v24;
      *&__src[40] = xmmword_1D770A7E0;
      *&__src[32] = v18 * 0.5;
      *&__src[56] = v27;
      *&__src[64] = v18;
      *&__src[72] = 0x401C000000000000;
      *&__src[80] = width;
      *&__src[88] = height;
      *&__src[96] = v30;
      *&__src[104] = v28;
      *&__src[112] = vdupq_n_s64(0x4046000000000000uLL);
      *&__src[128] = 0;
      *&__src[136] = 0;
      *&__src[144] = rect;
      *&__src[152] = 1.0 / *&v31;
      *&__src[160] = 0;
      *&__src[168] = v25 - 1.0 / *&v31;
      *&__src[176] = rect;
      *&__src[184] = 1.0 / *&v31;
      sub_1D7698430(__src);
    }
  }

  else
  {
    v14 = a1[1];
    v35 = *a1;
    v36 = v14;
    v37 = a1[2];
    v38 = v10;
    v39 = v9;
    v40 = v12;
    v41 = v11;
    v15 = a1[6];
    v42 = a1[5];
    v43 = v15;
    v16 = a1[8];
    v44 = a1[7];
    v45 = v16;
    v33[0] = rect;
    v33[1] = v31;
    v33[2] = v29;
    v34 = v13;
    sub_1D7697A94(v33, __src, a4, a5);
    sub_1D7698480(__src);
  }

  return memcpy(a3, __src, 0x1A1uLL);
}

double sub_1D7697A94@<D0>(CGFloat *a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v109 = a1[2];
  v5 = a1[4];
  v6 = a1[6];
  if (v5 <= 25.0)
  {
    v5 = 25.0;
  }

  v139 = v5;
  if (v6 <= 25.0)
  {
    v6 = 25.0;
  }

  v107 = v6;
  v113 = *a1;
  v7 = *a1 - v5 - v6;

  v8 = sub_1D76BEBC8();
  sub_1D7704620();
  v130 = v9;
  v124 = v10;
  v138 = v11;
  rect = v12;
  v13 = sub_1D76BEE10();
  sub_1D7704620();
  v116 = v15;
  v118 = v14;
  v136 = v17;
  v137 = v16;
  v18 = sub_1D76BEBC8();
  sub_1D7704620();
  v126 = v20;
  v128 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1D76BEE10();

  sub_1D7704620();
  v120 = v27;
  v122 = v26;
  v133 = v28;
  v134 = v29;
  v30 = sub_1D76BEBC8();
  sub_1D7704620();
  v103 = v32;
  v105 = v31;
  v34 = v33;
  v36 = v35;
  JournalEntryStatus.shortDescription.getter();
  v37 = sub_1D76BEE10();

  sub_1D7704620();
  v101 = v38;
  v40 = v39;
  v42 = v41;
  v142 = v43;
  v44 = sub_1D76BEFFC(0x7465642077656956, 0xEC000000736C6961, 0);
  sub_1D7704620();
  v97 = v45;
  v99 = v46;
  v140 = v48;
  v141 = v47;
  v49 = sub_1D76BEFFC(0x692074726F706552, 0xEC00000065757373, 0);
  sub_1D7704620();
  v95 = v50;
  v92 = v51;
  v114 = v53;
  v115 = v52;
  v143.origin.x = v130;
  v143.origin.y = v124;
  v143.size.width = v138;
  v143.size.height = rect;
  Width = CGRectGetWidth(v143);
  v144.origin.y = v126;
  v144.origin.x = v128;
  v129 = v24;
  v131 = v22;
  v144.size.width = v22;
  v144.size.height = v24;
  v55 = CGRectGetWidth(v144);
  v145.origin.y = v103;
  v145.origin.x = v105;
  v125 = v36;
  v127 = v34;
  v145.size.width = v34;
  v145.size.height = v36;
  v56 = CGRectGetWidth(v145);
  if (Width > v55)
  {
    v57 = Width;
  }

  else
  {
    v57 = v55;
  }

  if (v57 > v56)
  {
    v58 = v57;
  }

  else
  {
    v58 = v56;
  }

  v146.origin.y = v116;
  v146.origin.x = v118;
  v146.size.height = v136;
  v146.size.width = v137;
  v59 = CGRectGetWidth(v146);
  v147.origin.y = v120;
  v147.origin.x = v122;
  v147.size.width = v133;
  v147.size.height = v134;
  v60 = CGRectGetWidth(v147);
  v148.origin.x = v101;
  v148.origin.y = v40;
  v132 = v42;
  v148.size.width = v42;
  v148.size.height = v142;
  v61 = CGRectGetWidth(v148);
  if (v59 > v60)
  {
    v62 = v59;
  }

  else
  {
    v62 = v60;
  }

  if (v62 > v61)
  {
    v61 = v62;
  }

  v63 = v107 + v139 + v58 + 10.0 + v61;
  if (v7 >= v63)
  {
    v160.origin.y = v116;
    v160.origin.x = v118;
    v160.size.height = v136;
    v160.size.width = v137;
    v108 = v63 - CGRectGetWidth(v160);
    v161.origin.y = 20.0;
    v161.origin.x = v139;
    v161.size.width = v138;
    v161.size.height = rect;
    MinY = CGRectGetMinY(v161);
    v162.origin.y = 20.0;
    v162.origin.x = v139;
    v162.size.width = v138;
    v162.size.height = rect;
    v70 = CGRectGetMaxY(v162) + 5.0;
    v163.origin.y = v120;
    v163.origin.x = v122;
    v163.size.width = v133;
    v163.size.height = v134;
    v106 = v63 - CGRectGetWidth(v163);
    v164.origin.x = v139;
    v164.origin.y = v70;
    v164.size.width = v131;
    v164.size.height = v24;
    v121 = CGRectGetMinY(v164);
    y = v70;
    v165.origin.x = v139;
    v165.origin.y = v70;
    v165.size.width = v131;
    v165.size.height = v24;
    v71 = CGRectGetMaxY(v165) + 5.0;
    v166.origin.x = v101;
    v166.origin.y = v40;
    v166.size.width = v42;
    v166.size.height = v142;
    v72 = v63 - CGRectGetWidth(v166);
    v167.origin.x = v139;
    v117 = v71;
    v167.origin.y = v71;
    v167.size.height = v125;
    v167.size.width = v127;
    v73 = CGRectGetMinY(v167);
    v168.origin.y = v99;
    v168.origin.x = v97;
    v168.size.height = v140;
    v168.size.width = v141;
    v74 = v63 + CGRectGetWidth(v168);
    v91 = v72;
    v169.origin.x = v72;
    v69 = v73;
    v169.origin.y = v73;
    v169.size.width = v42;
    v169.size.height = v142;
    MaxY = CGRectGetMaxY(v169);
    v76 = MaxY;
    if (v74 >= v7)
    {
      v64 = MaxY + 10.0;
      v175.origin.x = v139;
      v175.origin.y = v64;
      v175.size.width = v141;
      v175.size.height = v140;
      v78 = CGRectGetMaxX(v175) + 10.0;
      v176.origin.x = v139;
      v176.origin.y = v64;
      v176.size.width = v141;
      v176.size.height = v140;
      v79 = CGRectGetMinY(v176);
      v177.origin.x = v139;
      v177.origin.y = v64;
      v177.size.width = v141;
      v177.size.height = v140;
      v178.size.height = CGRectGetHeight(v177);
      v102 = v79;
      v104 = v78;
      v178.origin.x = v78;
      v178.origin.y = v79;
      v178.size.width = 1.0 / v109;
      height = v178.size.height;
      v100 = CGRectGetMaxX(v178) + 10.0;
      v179.origin.x = v139;
      v179.origin.y = v64;
      v179.size.width = v141;
      v179.size.height = v140;
      v94 = 1.0 / v109;
      v96 = CGRectGetMinY(v179);
      v67 = v139;
    }

    else
    {
      v77 = v139 + v7;
      v170.origin.x = v97;
      v170.origin.y = v99;
      v170.size.width = v141;
      v170.size.height = v140;
      v67 = v139 + v7 - CGRectGetWidth(v170);
      v171.origin.y = 20.0;
      v171.origin.x = v67;
      v171.size.width = v141;
      v171.size.height = v140;
      v102 = (v76 + 20.0) * 0.5;
      v104 = v139 + v7 - CGRectGetWidth(v171) * 0.7;
      v172.origin.y = 20.0;
      v172.origin.x = v67;
      v172.size.width = v141;
      v172.size.height = v140;
      v64 = 20.0;
      v94 = CGRectGetWidth(v172) * 0.7;
      v173.origin.x = v95;
      v173.origin.y = v92;
      v173.size.width = v115;
      v173.size.height = v114;
      v100 = v77 - CGRectGetWidth(v173);
      v174.origin.x = v95;
      v174.origin.y = v92;
      v174.size.width = v115;
      v174.size.height = v114;
      v96 = v76 - CGRectGetHeight(v174);
      height = 1.0 / v109;
    }

    v110 = 1.0 / v109;
    v68 = v91;
  }

  else
  {
    v149.origin.y = 20.0;
    v149.size.width = v138;
    v149.origin.x = v139;
    v149.size.height = rect;
    v150.origin.y = CGRectGetMaxY(v149) + 5.0;
    v150.origin.x = v139;
    MinY = v150.origin.y;
    v150.size.height = v136;
    v150.size.width = v137;
    v151.origin.y = CGRectGetMaxY(v150) + 5.0;
    v151.origin.x = v139;
    y = v151.origin.y;
    v151.size.height = v24;
    v151.size.width = v131;
    v152.origin.y = CGRectGetMaxY(v151) + 5.0;
    v152.origin.x = v139;
    v121 = v152.origin.y;
    v152.size.width = v133;
    v152.size.height = v134;
    v153.origin.y = CGRectGetMaxY(v152) + 5.0;
    v153.origin.x = v139;
    v117 = v153.origin.y;
    v153.size.height = v36;
    v153.size.width = v127;
    v154.origin.y = CGRectGetMaxY(v153) + 5.0;
    v93 = v154.origin.y;
    v154.origin.x = v139;
    v154.size.width = v42;
    v154.size.height = v142;
    v64 = CGRectGetMaxY(v154) + 10.0;
    v155.origin.x = v139;
    v155.origin.y = v64;
    v155.size.width = v141;
    v155.size.height = v140;
    v65 = CGRectGetMaxX(v155) + 10.0;
    v156.origin.x = v139;
    v156.origin.y = v64;
    v156.size.width = v141;
    v156.size.height = v140;
    v66 = CGRectGetMinY(v156);
    v157.origin.x = v139;
    v157.origin.y = v64;
    v157.size.width = v141;
    v157.size.height = v140;
    v158.size.height = CGRectGetHeight(v157);
    v102 = v66;
    v104 = v65;
    v158.origin.x = v65;
    v158.origin.y = v66;
    v158.size.width = 1.0 / v109;
    height = v158.size.height;
    v100 = CGRectGetMaxX(v158) + 10.0;
    v159.origin.x = v139;
    v159.origin.y = v64;
    v159.size.width = v141;
    v159.size.height = v140;
    v94 = 1.0 / v109;
    v96 = CGRectGetMinY(v159);
    v67 = v139;
    v68 = v139;
    v108 = v139;
    v110 = 1.0 / v109;
    v106 = v139;
    v69 = v93;
  }

  v80 = v132;
  v81 = v68;
  v82 = v69;
  v83 = v69;
  v84 = v142;
  v85 = CGRectGetMaxY(*&v68);
  v180.origin.x = v67;
  v180.origin.y = v64;
  v180.size.height = v140;
  v180.size.width = v141;
  v86 = CGRectGetMaxY(v180);
  if (v85 > v86)
  {
    v86 = v85;
  }

  v87 = v86 + 20.0;
  v181.origin.x = a3;
  v181.origin.y = a4;
  v181.size.width = v113;
  v181.size.height = v87;
  v90 = CGRectGetHeight(v181) + -30.0;
  v182.origin.x = a3;
  v182.origin.y = a4;
  v182.size.width = v113;
  v182.size.height = v87;
  v88 = CGRectGetHeight(v182);

  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 48) = v138;
  *(a2 + 56) = rect;
  *(a2 + 64) = v108;
  *(a2 + 72) = MinY;
  *(a2 + 80) = v137;
  *(a2 + 88) = v136;
  *(a2 + 112) = v131;
  *(a2 + 120) = v129;
  result = v88 - v110;
  *(a2 + 16) = v113;
  *(a2 + 24) = v87;
  *(a2 + 32) = v139;
  *(a2 + 40) = 0x4034000000000000;
  *(a2 + 96) = v139;
  *(a2 + 104) = y;
  *(a2 + 128) = v106;
  *(a2 + 136) = v121;
  *(a2 + 144) = v133;
  *(a2 + 152) = v134;
  *(a2 + 160) = v139;
  *(a2 + 168) = v117;
  *(a2 + 176) = v127;
  *(a2 + 184) = v125;
  *(a2 + 192) = v81;
  *(a2 + 200) = v82;
  *(a2 + 208) = v132;
  *(a2 + 216) = v142;
  *(a2 + 224) = v139 * 0.5;
  *(a2 + 232) = xmmword_1D770A7F0;
  *(a2 + 248) = v90;
  *(a2 + 256) = v67;
  *(a2 + 264) = v64;
  *(a2 + 272) = v141;
  *(a2 + 280) = v140;
  *(a2 + 288) = v104;
  *(a2 + 296) = v102;
  *(a2 + 304) = v94;
  *(a2 + 312) = height;
  *(a2 + 320) = v100;
  *(a2 + 328) = v96;
  *(a2 + 336) = v115;
  *(a2 + 344) = v114;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = v113;
  *(a2 + 376) = v110;
  *(a2 + 384) = 0;
  *(a2 + 392) = v88 - v110;
  *(a2 + 400) = v113;
  *(a2 + 408) = v110;
  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D76983DC()
{
  result = qword_1EC9BD290;
  if (!qword_1EC9BD290)
  {
    type metadata accessor for DebugJournalSummaryViewLayoutAttributesFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD290);
  }

  return result;
}

double sub_1D769843C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 416) = 2;
  return result;
}

id sub_1D76984B4(char a1)
{
  sub_1D7703110();
  sub_1D7703100();
  if (qword_1EE0AEB40 != -1)
  {
    swift_once();
  }

  sub_1D77030F0();

  if (v5 != 1)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = &selRef_greenColor;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_redColor;
  }

  return [v2 *v3];
}

void *sub_1D76986D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsAds19DebugAdsMetricsView_privacyMarkerView);
  v2 = v1;
  return v1;
}

uint64_t sub_1D76987E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(v4 + v6) = a1;
  return swift_unknownObjectRelease();
}

uint64_t AdPolicyPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsAds::AdPolicyPlacement __swiftcall AdPolicyPlacement.init(placementIdentifier:position:)(Swift::String placementIdentifier, CGPoint position)
{
  *v2 = placementIdentifier;
  *(v2 + 16) = position.x;
  *(v2 + 24) = position.y;
  result.position.y = position.y;
  result.position.x = position.x;
  result.placementIdentifier = placementIdentifier;
  return result;
}

uint64_t sub_1D7698904(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D76989E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D77042A0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v4 = *&v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView];
  [v4 setTextContainerInset_];
  v5 = objc_opt_self();
  v6 = [v5 secondarySystemBackgroundColor];
  [v4 setBackgroundColor_];

  [v4 setEditable_];
  result = [v0 view];
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  [result addSubview_];

  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable], *&v0[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable + 24]);
  result = sub_1D76E86D4();
  if (v9 >> 60 == 15)
  {
    return result;
  }

  v10 = result;
  v11 = v9;
  sub_1D7704290();
  sub_1D7704270();
  if (!v12)
  {
    return sub_1D76992F8(v10, v11);
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v14 = sub_1D7699360(0x3A2022292A2E2822, 0xE800000000000000, 0);
  if (!v14)
  {
    sub_1D76992F8(v10, v11);
  }

  v35 = v14;
  sub_1D769943C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FD0;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DB978];
  v19 = v16;
  v20 = [v17 monospacedSystemFontOfSize:15.0 weight:v18];
  v21 = sub_1D766844C(0, &qword_1EC9BD098);
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = v22;
  v24 = [v5 labelColor];
  *(inited + 104) = sub_1D766844C(0, &qword_1EC9BD2D0);
  *(inited + 80) = v24;
  sub_1D76ADBA0(inited);
  swift_setDeallocating();
  sub_1D7699494();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v26 = sub_1D7704230();
  type metadata accessor for Key(0);
  sub_1D76995E8();
  v27 = sub_1D7704190();

  v28 = [v25 initWithString:v26 attributes:v27];

  v29 = sub_1D7704230();
  v30 = sub_1D77042E0();

  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D7699640;
  *(v32 + 24) = v31;
  aBlock[4] = sub_1D7699648;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D76990C4;
  aBlock[3] = &block_descriptor_3;
  v33 = _Block_copy(aBlock);
  v34 = v28;

  [v35 enumerateMatchesInString:v29 options:2 range:0 usingBlock:{v30, v33}];

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  [v4 setAttributedText_];

  sub_1D76992F8(v10, v11);
}

void sub_1D7698F54(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = [a1 range];
    v7 = v6;
    sub_1D769943C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7708FE0;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v10 = objc_opt_self();
    v11 = *MEMORY[0x1E69DB980];
    v12 = v9;
    v13 = [v10 monospacedSystemFontOfSize:15.0 weight:v11];
    *(inited + 64) = sub_1D766844C(0, &qword_1EC9BD098);
    *(inited + 40) = v13;
    sub_1D76ADBA0(inited);
    swift_setDeallocating();
    sub_1D7699670(inited + 32);
    type metadata accessor for Key(0);
    sub_1D76995E8();
    v14 = sub_1D7704190();

    [a4 addAttributes:v14 range:{v5, v7}];
  }
}

void sub_1D76990C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_1D76992F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D769930C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D769930C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1D7699360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D7704230();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D7702E70();

    swift_willThrow();
  }

  return v6;
}

void sub_1D769943C()
{
  if (!qword_1EC9BD2C0)
  {
    sub_1D7699494();
    v0 = sub_1D7704A20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BD2C0);
    }
  }
}

void sub_1D7699494()
{
  if (!qword_1EC9BD2C8)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9BD2C8);
    }
  }
}

id sub_1D7699500(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_2, a1, a3);
  v9 = objc_allocWithZone(a2);
  v10 = OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  sub_1D767D4C4(v14, &v9[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_codable]);
  v13.receiver = v9;
  v13.super_class = a2;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

unint64_t sub_1D76995E8()
{
  result = qword_1EC9BCCE8;
  if (!qword_1EC9BCCE8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BCCE8);
  }

  return result;
}

uint64_t sub_1D7699670(uint64_t a1)
{
  sub_1D7699494();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D76996CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746361706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x6E6564646968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7704A30();
  }

  return v11 & 1;
}

uint64_t sub_1D76997C4()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D7699864()
{
  sub_1D77042D0();
}

uint64_t sub_1D76998F0()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D769998C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D769C774();
  *a1 = result;
  return result;
}

void sub_1D76999BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746361706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D7699AC8(char a1)
{
  result = 0x656D617266;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 7:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x7246737574617473;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7699C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D769C7C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7699C78(uint64_t a1)
{
  v2 = sub_1D769A254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7699CB4(uint64_t a1)
{
  v2 = sub_1D769A254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Regular.encode(to:)(void *a1)
{
  sub_1D769BABC(0, &qword_1EC9BD2D8, sub_1D769A254, &type metadata for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  v10 = v1[2];
  v46 = v1[3];
  v47 = v10;
  v11 = v1[4];
  v44 = v1[5];
  v45 = v11;
  v12 = v1[6];
  v42 = v1[7];
  v43 = v12;
  v13 = v1[8];
  v40 = v1[9];
  v41 = v13;
  v14 = v1[10];
  v38 = v1[11];
  v39 = v14;
  v15 = v1[12];
  v36 = v1[13];
  v37 = v15;
  v16 = v1[14];
  v34 = v1[15];
  v35 = v16;
  v17 = v1[16];
  v32 = v1[17];
  v33 = v17;
  v18 = v1[18];
  v30 = v1[19];
  v31 = v18;
  v19 = v1[20];
  v28 = v1[21];
  v29 = v19;
  v20 = v1[22];
  v26 = v1[23];
  v27 = v20;
  v21 = v1[24];
  v24 = v1[25];
  v25 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769A254();
  sub_1D7704B10();
  v22 = *v1;
  v49 = v1[1];
  v48 = v22;
  v50 = 0;
  type metadata accessor for CGRect(0);
  sub_1D769A8D0(&qword_1EC9BD2E8);
  sub_1D7704A00();
  if (!v2)
  {
    v49 = v46;
    v48 = v47;
    v50 = 1;
    sub_1D7704A00();
    v49 = v44;
    v48 = v45;
    v50 = 2;
    sub_1D7704A00();
    v49 = v42;
    v48 = v43;
    v50 = 3;
    sub_1D7704A00();
    v49 = v40;
    v48 = v41;
    v50 = 4;
    sub_1D7704A00();
    v49 = v38;
    v48 = v39;
    v50 = 5;
    sub_1D7704A00();
    v49 = v36;
    v48 = v37;
    v50 = 6;
    sub_1D7704A00();
    v49 = v34;
    v48 = v35;
    v50 = 7;
    sub_1D7704A00();
    v49 = v32;
    v48 = v33;
    v50 = 8;
    sub_1D7704A00();
    v49 = v30;
    v48 = v31;
    v50 = 9;
    sub_1D7704A00();
    v49 = v28;
    v48 = v29;
    v50 = 10;
    sub_1D7704A00();
    v49 = v26;
    v48 = v27;
    v50 = 11;
    sub_1D7704A00();
    v49 = v24;
    v48 = v25;
    v50 = 12;
    sub_1D7704A00();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D769A254()
{
  result = qword_1EC9BD2E0;
  if (!qword_1EC9BD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD2E0);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Regular.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D769BABC(0, &qword_1EC9BD2F0, sub_1D769A254, &type metadata for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys, MEMORY[0x1E69E6F48]);
  v49 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769A254();
  sub_1D7704B00();
  if (!v2)
  {
    v48 = v6;
    type metadata accessor for CGRect(0);
    v52 = 0;
    sub_1D769A8D0(&qword_1EC9BD2F8);
    sub_1D7704970();
    v46 = v51;
    v47 = v50;
    v52 = 1;
    sub_1D7704970();
    v44 = v51;
    v45 = v50;
    v52 = 2;
    sub_1D7704970();
    v42 = v51;
    v43 = v50;
    v52 = 3;
    sub_1D7704970();
    v40 = v51;
    v41 = v50;
    v52 = 4;
    sub_1D7704970();
    v38 = v51;
    v39 = v50;
    v52 = 5;
    sub_1D7704970();
    v36 = v51;
    v37 = v50;
    v52 = 6;
    sub_1D7704970();
    v34 = v51;
    v35 = v50;
    v52 = 7;
    sub_1D7704970();
    v32 = v51;
    v33 = v50;
    v52 = 8;
    sub_1D7704970();
    v30 = v51;
    v31 = v50;
    v52 = 9;
    sub_1D7704970();
    v28 = v51;
    v29 = v50;
    v52 = 10;
    sub_1D7704970();
    v26 = v51;
    v27 = v50;
    v52 = 11;
    sub_1D7704970();
    v24 = v51;
    v25 = v50;
    v52 = 12;
    sub_1D7704970();
    (*(v48 + 8))(v9, v49);
    v11 = v46;
    *a2 = v47;
    a2[1] = v11;
    v12 = v44;
    a2[2] = v45;
    a2[3] = v12;
    v13 = v42;
    a2[4] = v43;
    a2[5] = v13;
    v14 = v40;
    a2[6] = v41;
    a2[7] = v14;
    v15 = v38;
    a2[8] = v39;
    a2[9] = v15;
    v16 = v36;
    a2[10] = v37;
    a2[11] = v16;
    v17 = v34;
    a2[12] = v35;
    a2[13] = v17;
    v18 = v32;
    a2[14] = v33;
    a2[15] = v18;
    v19 = v30;
    a2[16] = v31;
    a2[17] = v19;
    v20 = v28;
    a2[18] = v29;
    a2[19] = v20;
    v21 = v26;
    a2[20] = v27;
    a2[21] = v21;
    v22 = v24;
    a2[22] = v25;
    a2[23] = v22;
    v23 = v51;
    a2[24] = v50;
    a2[25] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D769A8D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D769A944()
{
  v1 = *v0;
  v2 = 0x656D617266;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 != 1)
  {
    v5 = 0x7246737574617473;
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

uint64_t sub_1D769AA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D769CBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D769AA38(uint64_t a1)
{
  v2 = sub_1D769ADAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D769AA74(uint64_t a1)
{
  v2 = sub_1D769ADAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Compact.encode(to:)(void *a1)
{
  sub_1D769BABC(0, &qword_1EC9BD300, sub_1D769ADAC, &type metadata for DebugJournalSummaryViewLayoutAttributes.Compact.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[6];
  v21 = v1[7];
  v22 = v12;
  v13 = v1[8];
  v19 = v1[9];
  v20 = v13;
  v14 = v1[10];
  v17 = v1[11];
  v18 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769ADAC();
  sub_1D7704B10();
  v15 = *v1;
  v28 = v1[1];
  v27 = v15;
  v29 = 0;
  type metadata accessor for CGRect(0);
  sub_1D769A8D0(&qword_1EC9BD2E8);
  sub_1D7704A00();
  if (!v2)
  {
    v28 = v25;
    v27 = v26;
    v29 = 1;
    sub_1D7704A00();
    v28 = v23;
    v27 = v24;
    v29 = 2;
    sub_1D7704A00();
    v28 = v21;
    v27 = v22;
    v29 = 3;
    sub_1D7704A00();
    v28 = v19;
    v27 = v20;
    v29 = 4;
    sub_1D7704A00();
    v28 = v17;
    v27 = v18;
    v29 = 5;
    sub_1D7704A00();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D769ADAC()
{
  result = qword_1EC9BD308;
  if (!qword_1EC9BD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD308);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.Compact.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D769BABC(0, &qword_1EC9BD310, sub_1D769ADAC, &type metadata for DebugJournalSummaryViewLayoutAttributes.Compact.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769ADAC();
  sub_1D7704B00();
  if (!v2)
  {
    v10 = v6;
    type metadata accessor for CGRect(0);
    v32 = 0;
    sub_1D769A8D0(&qword_1EC9BD2F8);
    v11 = v29;
    sub_1D7704970();
    v27 = v31;
    v28 = v30;
    v32 = 1;
    sub_1D7704970();
    v25 = v31;
    v26 = v30;
    v32 = 2;
    sub_1D7704970();
    v23 = v31;
    v24 = v30;
    v32 = 3;
    sub_1D7704970();
    v21 = v31;
    v22 = v30;
    v32 = 4;
    sub_1D7704970();
    v19 = v31;
    v20 = v30;
    v32 = 5;
    sub_1D7704970();
    (*(v10 + 8))(v9, v11);
    v13 = v27;
    *a2 = v28;
    a2[1] = v13;
    v14 = v25;
    a2[2] = v26;
    a2[3] = v14;
    v15 = v23;
    a2[4] = v24;
    a2[5] = v15;
    v16 = v21;
    a2[6] = v22;
    a2[7] = v16;
    v17 = v19;
    a2[8] = v20;
    a2[9] = v17;
    v18 = v31;
    a2[10] = v30;
    a2[11] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double DebugJournalSummaryViewLayoutAttributes.frame.getter()
{
  memcpy(__dst, v0, 0x1A1uLL);
  v1 = sub_1D769B214(__dst);
  if (!v1)
  {
    return *nullsub_1(__dst);
  }

  result = 0.0;
  if (v1 == 1)
  {
    return *nullsub_1(__dst);
  }

  return result;
}

uint64_t sub_1D769B214(uint64_t a1)
{
  if (*(a1 + 416) <= 1u)
  {
    return *(a1 + 416);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D769B22C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D769B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D7704A30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7704A30();

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

uint64_t sub_1D769B338(uint64_t a1)
{
  v2 = sub_1D769B664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D769B374(uint64_t a1)
{
  v2 = sub_1D769B664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugJournalSummaryViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D769BABC(0, &qword_1EC9BD318, sub_1D769B664, &type metadata for DebugJournalSummaryViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769B664();
  sub_1D7704B10();
  memcpy(v26, v3, 0x1A1uLL);
  v10 = sub_1D769B214(v26);
  if (v10)
  {
    if (v10 != 1)
    {
      LOBYTE(v25[0]) = 2;
      v27 = 0;
      sub_1D769B6B8();
      goto LABEL_8;
    }

    v11 = nullsub_1(v26);
    LOBYTE(v25[0]) = 1;
    v27 = 0;
    sub_1D769B6B8();
    sub_1D7704A00();
    if (!v2)
    {
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[3];
      v25[2] = v11[2];
      v25[3] = v14;
      v25[0] = v12;
      v25[1] = v13;
      v15 = v11[4];
      v16 = v11[5];
      v17 = v11[7];
      v25[6] = v11[6];
      v25[7] = v17;
      v25[4] = v15;
      v25[5] = v16;
      v18 = v11[8];
      v19 = v11[9];
      v20 = v11[11];
      v25[10] = v11[10];
      v25[11] = v20;
      v25[8] = v18;
      v25[9] = v19;
      v27 = 1;
      sub_1D769B70C();
LABEL_8:
      sub_1D7704A00();
    }
  }

  else
  {
    v21 = nullsub_1(v26);
    LOBYTE(v25[0]) = 0;
    v27 = 0;
    sub_1D769B6B8();
    sub_1D7704A00();
    if (!v2)
    {
      memcpy(v25, v21, sizeof(v25));
      v27 = 1;
      sub_1D769B760();
      goto LABEL_8;
    }
  }

  return (*(v24 + 8))(v9, v6);
}

unint64_t sub_1D769B664()
{
  result = qword_1EC9BD320;
  if (!qword_1EC9BD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD320);
  }

  return result;
}

unint64_t sub_1D769B6B8()
{
  result = qword_1EC9BD328;
  if (!qword_1EC9BD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD328);
  }

  return result;
}

unint64_t sub_1D769B70C()
{
  result = qword_1EC9BD330;
  if (!qword_1EC9BD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD330);
  }

  return result;
}

unint64_t sub_1D769B760()
{
  result = qword_1EC9BD338;
  if (!qword_1EC9BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD338);
  }

  return result;
}

uint64_t DebugJournalSummaryViewLayoutAttributes.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_1D769BABC(0, &qword_1EC9BD340, sub_1D769B664, &type metadata for DebugJournalSummaryViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D769B664();
  sub_1D7704B00();
  if (!v2)
  {
    v9 = a1;
    v11 = v15;
    v10 = v16;
    v20[446] = 0;
    sub_1D769BB24();
    sub_1D7704970();
    v12 = v11;
    if (v21)
    {
      v13 = v10;
      a1 = v9;
      if (v21 != 1)
      {
        (*(v12 + 8))(v8, v5);
        sub_1D769843C(v20);
LABEL_8:
        memcpy(v13, v20, 0x1A1uLL);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      sub_1D7667C54(v9, v19);
      DebugJournalSummaryViewLayoutAttributes.Compact.init(from:)(v19, v17);
      (*(v12 + 8))(v8, v5);
      *&v18[128] = v17[8];
      *&v18[144] = v17[9];
      *&v18[160] = v17[10];
      *&v18[176] = v17[11];
      *&v18[64] = v17[4];
      *&v18[80] = v17[5];
      *&v18[96] = v17[6];
      *&v18[112] = v17[7];
      *v18 = v17[0];
      *&v18[16] = v17[1];
      *&v18[32] = v17[2];
      *&v18[48] = v17[3];
      sub_1D7698430(v18);
    }

    else
    {
      a1 = v9;
      sub_1D7667C54(v9, v19);
      DebugJournalSummaryViewLayoutAttributes.Regular.init(from:)(v19, v17);
      v13 = v10;
      (*(v12 + 8))(v8, v5);
      memcpy(v18, v17, 0x1A0uLL);
      sub_1D7698480(v18);
    }

    memcpy(v20, v18, 0x1A1uLL);
    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D769BABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D769BB24()
{
  result = qword_1EC9BD348;
  if (!qword_1EC9BD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD348);
  }

  return result;
}

unint64_t sub_1D769BB7C()
{
  result = qword_1EC9BD350;
  if (!qword_1EC9BD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD350);
  }

  return result;
}

double sub_1D769BBD0()
{
  memcpy(__dst, v0, 0x1A1uLL);
  v1 = sub_1D769B214(__dst);
  if (!v1)
  {
    return *nullsub_1(__dst);
  }

  result = 0.0;
  if (v1 == 1)
  {
    return *nullsub_1(__dst);
  }

  return result;
}

unint64_t sub_1D769BC48()
{
  result = qword_1EC9BD358;
  if (!qword_1EC9BD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD358);
  }

  return result;
}

unint64_t sub_1D769BCA0()
{
  result = qword_1EC9BD360;
  if (!qword_1EC9BD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD360);
  }

  return result;
}

unint64_t sub_1D769BCF8()
{
  result = qword_1EC9BD368;
  if (!qword_1EC9BD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD368);
  }

  return result;
}

uint64_t sub_1D769BD7C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1D769CE1C();
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x1EEE45C50](a1, v10, v11, v12, v13, v14);
}

uint64_t initializeBufferWithCopyOfBuffer for DebugJournalSummaryViewLayoutAttributes(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 417))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 416);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 417) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 417) = 0;
    }

    if (a2)
    {
      *(result + 416) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D769BF2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 312) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 360) = 0u;
    *(result + 376) = 0u;
    *(result + 392) = 0u;
    LOBYTE(a2) = 2;
    *(result + 408) = 0;
  }

  *(result + 416) = a2;
  return result;
}

uint64_t sub_1D769BFBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 416))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D769BFDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 416) = v3;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1D769C0B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D769C0D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
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

  *(result + 192) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.AttributesType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.AttributesType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugJournalSummaryViewLayoutAttributes.Regular.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D769C408()
{
  result = qword_1EC9BD370;
  if (!qword_1EC9BD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD370);
  }

  return result;
}

unint64_t sub_1D769C460()
{
  result = qword_1EC9BD378;
  if (!qword_1EC9BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD378);
  }

  return result;
}

unint64_t sub_1D769C4B8()
{
  result = qword_1EC9BD380;
  if (!qword_1EC9BD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD380);
  }

  return result;
}

unint64_t sub_1D769C510()
{
  result = qword_1EC9BD388;
  if (!qword_1EC9BD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD388);
  }

  return result;
}

unint64_t sub_1D769C568()
{
  result = qword_1EC9BD390;
  if (!qword_1EC9BD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD390);
  }

  return result;
}

unint64_t sub_1D769C5C0()
{
  result = qword_1EC9BD398;
  if (!qword_1EC9BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD398);
  }

  return result;
}

unint64_t sub_1D769C618()
{
  result = qword_1EC9BD3A0;
  if (!qword_1EC9BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3A0);
  }

  return result;
}

unint64_t sub_1D769C670()
{
  result = qword_1EC9BD3A8;
  if (!qword_1EC9BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3A8);
  }

  return result;
}

unint64_t sub_1D769C6C8()
{
  result = qword_1EC9BD3B0;
  if (!qword_1EC9BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3B0);
  }

  return result;
}

unint64_t sub_1D769C720()
{
  result = qword_1EC9BD3B8;
  if (!qword_1EC9BD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3B8);
  }

  return result;
}

uint64_t sub_1D769C774()
{
  v0 = sub_1D77048E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D769C7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D7715CA0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715CC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D7715CE0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D00 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D7715D20 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7246737574617473 && a2 == 0xEB00000000656D61 || (sub_1D7704A30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715D40 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D60 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715D80 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715DA0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715DC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715DE0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D769CBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7715D40 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7246737574617473 && a2 == 0xEB00000000656D61 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D7715D60 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7715DC0 == a2 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D7715DE0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7704A30();

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

unint64_t sub_1D769CDC8()
{
  result = qword_1EC9BD3C0;
  if (!qword_1EC9BD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3C0);
  }

  return result;
}

unint64_t sub_1D769CE1C()
{
  result = qword_1EC9BD3C8;
  if (!qword_1EC9BD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3C8);
  }

  return result;
}

uint64_t sub_1D769CE84()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AdRequestStore.Behavior.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D77048E0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D769CF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D769CFBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D769D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D769D098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t AdRequestStore.__allocating_init()()
{
  v0 = swift_allocObject();
  AdRequestStore.init()();
  return v0;
}

uint64_t AdRequestStore.deinit()
{

  return v0;
}

uint64_t AdRequestStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D769D1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77041E0();

  return sub_1D769D224(a1, v6, a2, a3);
}

unint64_t sub_1D769D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1D7704220();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1D769D3F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for DebugInterstitialAdProvider();
    swift_allocObject();
    v1 = sub_1D76C5968();
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t InterstitialAdProvider.fetchInterstitialAd(for:contentFetched:)(void (*a1)(char *, _UNKNOWN **, uint64_t), uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (qword_1EE0AEB28 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    sub_1D769D3F4();
    v10 = sub_1D76C5BE0(a1, a2);

    return v10;
  }

  else
  {
    v12 = v4[5];
    v13 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
    v14 = (*(v13 + 8))(v12, v13);
    sub_1D7667C54((v5 + 2), v19);
    v15 = swift_allocObject();
    sub_1D767FBE4(v19, v15 + 16);
    *(v15 + 56) = a1;
    *(v15 + 64) = a2;
    aBlock[4] = sub_1D769D8B8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D769D7C4;
    aBlock[3] = &block_descriptor_4;
    v16 = _Block_copy(aBlock);

    v17 = [v14 promotedContentInterstitialWithSize:v16 ready:{a3, a4}];
    _Block_release(v16);

    type metadata accessor for AdPendingLoadToken();
    result = swift_allocObject();
    *(result + 16) = v17;
  }

  return result;
}

void sub_1D769D650(void *a1, void *a2, void (*a3)(char *, _UNKNOWN **, uint64_t))
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 promotedContentInterstitialViewWithInfo_];

  if (v8)
  {
    v9 = objc_allocWithZone(type metadata accessor for InterstitialAdMetricsView());
    v10 = v8;
    v15 = sub_1D76E8F7C(v10);

    a3(v15, &protocol witness table for InterstitialAdMetricsView, 0);
    v11 = v15;
  }

  else
  {
    [a1 unfilledReason];
    v12 = sub_1D7703880();
    sub_1D769D8F0();
    v13 = swift_allocError();
    *v14 = v12;
    *(v14 + 8) = 0;
    a3(v13, 0, 1);
    v11 = v13;
  }
}

void sub_1D769D7C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t InterstitialAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t InterstitialAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D769D8F0()
{
  result = qword_1EE0AF000;
  if (!qword_1EE0AF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF000);
  }

  return result;
}

uint64_t sub_1D769D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v43 - v11;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE0AF010;
  sub_1D766DF6C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7709050;
  v15 = (a1 + *(v8 + 60));
  v16 = *v15;
  v17 = *v15 >> 62;
  v45 = v9;
  v46 = v3;
  v43[1] = v13;
  v44 = v12;
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0x6564726163736944;
LABEL_6:
      v19 = 0xE900000000000064;
      goto LABEL_24;
    }

    v20 = v15[2] | v15[3] | v15[1];
    if (v16 != 0x8000000000000000 || v20 != 0)
    {
      if (v16 == 0x8000000000000008 && v20 == 0)
      {
        v18 = 0x656C756465686353;
      }

      else if (v16 == 0x8000000000000010 && v20 == 0)
      {
        v18 = 0x656D726177657250;
      }

      else if (v16 != 0x8000000000000018 || v20)
      {
        if (v16 != 0x8000000000000020 || v20)
        {
          if (v20)
          {
            v42 = 0;
          }

          else
          {
            v42 = v16 == 0x8000000000000028;
          }

          if (v42)
          {
            v18 = 0x65746E6573657250;
          }

          else
          {
            v18 = 0x657370616C6C6F43;
          }
        }

        else
        {
          v18 = 0x656C6C69666C7546;
        }
      }

      else
      {
        v18 = 0x6574736575716552;
      }

      goto LABEL_6;
    }

    v19 = 0xE700000000000000;
    v18 = 0x64657461657243;
  }

  else
  {
    v19 = 0xE600000000000000;
    v18 = 0x64656C696146;
  }

LABEL_24:
  v24 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v25 = v14;
  v26 = sub_1D7668854();
  v25[4] = v18;
  v25[5] = v19;
  v25[12] = v24;
  v25[13] = v26;
  v25[8] = v26;
  v25[9] = a2;
  v25[10] = a3;
  v27 = v15[3];
  v48 = v16;
  v49 = *(v15 + 1);
  v50 = v27;

  v28 = JournalEntryStatus.shortDescription.getter();
  v25[17] = v24;
  v25[18] = v26;
  v25[14] = v28;
  v25[15] = v29;
  sub_1D77045A0();
  sub_1D7703ED0();

  v30 = v46;
  v48 = a2;
  *&v49 = a3;

  sub_1D77035E0();

  if (v47)
  {
    v31 = v47;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v44;
  sub_1D769F978(a1, v44, qword_1EE0B0320, type metadata accessor for JournalEntry);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1D768C730(0, v31[2] + 1, 1, v31);
  }

  v33 = v45;
  v35 = v31[2];
  v34 = v31[3];
  if (v35 >= v34 >> 1)
  {
    v31 = sub_1D768C730(v34 > 1, v35 + 1, 1, v31);
  }

  v31[2] = v35 + 1;
  sub_1D76A00C8(v32, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v35);
  v47 = v31;
  v48 = a2;
  *&v49 = a3;

  sub_1D77035F0();

  result = swift_beginAccess();
  v37 = *(v30 + 16);
  if (v37 >> 62)
  {
    result = sub_1D7704880();
    v38 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      return result;
    }
  }

  if (v38 < 1)
  {
    __break(1u);
  }

  else
  {

    v39 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1DA6FF530](v39, v37);
      }

      else
      {
        v40 = *(v37 + 8 * v39 + 32);
      }

      ++v39;
      v41 = *(v40 + 16);

      v41(a1, a2, a3);
    }

    while (v38 != v39);
  }

  return result;
}

uint64_t NativeAdInfo.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v9, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = *(v9 + 3);
    v15[2] = *(v9 + 2);
    v15[3] = v11;
    v15[4] = *(v9 + 4);
    v16 = *(v9 + 10);
    v12 = *(v9 + 1);
    v15[0] = *v9;
    v15[1] = v12;
    v13 = v12;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v15);
    }

    else
    {

      sub_1D769DFFC(v15);
    }
  }

  else
  {
    sub_1D769E05C(v9, v5);
    v13 = *(v5 + 10);

    sub_1D769F86C(v5, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v13;
}

uint64_t sub_1D769E05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NativeAdInfo.placementIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v9, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = *(v9 + 3);
    v15[2] = *(v9 + 2);
    v15[3] = v11;
    v15[4] = *(v9 + 4);
    v16 = *(v9 + 10);
    v12 = *(v9 + 1);
    v15[0] = *v9;
    v15[1] = v12;
    v13 = *&v15[0];
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v15);
    }

    else
    {

      sub_1D769DFFC(v15);
    }
  }

  else
  {
    sub_1D769E05C(v9, v5);
    v13 = *v5;

    sub_1D769F86C(v5, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v13;
}

uint64_t NativeAdInfo.journal.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F910(v1, v9, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = *(v9 + 3);
    v16 = *(v9 + 2);
    v17 = v11;
    v18 = *(v9 + 4);
    v19 = *(v9 + 10);
    v12 = *(v9 + 1);
    v15[0] = *v9;
    v15[1] = v12;
    v13 = v16;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D769E02C(v15);
    }

    else
    {

      sub_1D769DFFC(v15);
    }
  }

  else
  {
    sub_1D769E05C(v9, v5);
    v13 = *(v5 + 12);

    sub_1D769F86C(v5, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v13;
}

uint64_t NativeAdInfo.attachContent(view:at:)(uint64_t a1, double a2, double a3)
{
  v32 = a1;
  v31 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v31, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7708FD0;
  v14 = NativeAdInfo.placementIdentifier.getter();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D7668854();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *v33 = a2;
  *(v33 + 1) = a3;
  type metadata accessor for CGPoint(0);
  v19 = sub_1D77042B0();
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D769F910(v3, v12, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v22 = *(v12 + 4);
    v34[1] = *(v12 + 3);
    v35 = v22;
    v23 = *(v12 + 2);
    v33[1] = *(v12 + 1);
    v34[0] = v23;
    v36 = *(v12 + 10);
    v33[0] = *v12;
    v24 = v35;
    if (EnumCaseMultiPayload == 1)
    {
      __swift_project_boxed_opaque_existential_1(v34 + 1, v35);
      v25 = (*(*(&v24 + 1) + 24))(v36, v32, v24, *(&v24 + 1));
      sub_1D769E02C(v33);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v34 + 1, v35);
      v25 = (*(*(&v24 + 1) + 24))(v36, v32, v24, *(&v24 + 1));
      sub_1D769DFFC(v33);
    }
  }

  else
  {
    sub_1D769E05C(v12, v8);
    v26 = v31;
    v27 = &v8[*(v31 + 48)];
    v28 = *(v27 + 3);
    v29 = *(v27 + 4);
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v25 = (*(v29 + 24))(*&v8[*(v26 + 52)], v32, v28, v29);
    sub_1D769F86C(v8, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return v25;
}

uint64_t NativeAdInfo.discard(policyFailures:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = type metadata accessor for NativeAdInfo.Fulfilled(0);
  MEMORY[0x1EEE9AC00](v98, v4);
  v105 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for NativeAdInfo(0);
  MEMORY[0x1EEE9AC00](v103, v6);
  v8 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D769F814();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D7703940();
  v14 = MEMORY[0x1EEE9AC00](v109, v13);
  v113 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v100 = v95 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v112 = v95 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v99 = v95 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v102 = v95 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v104 = v95 - v30;
  v31 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a1 + 56);
  v35 = (v32 + 63) >> 6;
  v36 = (v29 + 56);
  v107 = v29;
  v114 = (v29 + 32);
  v37 = a1;

  v39 = 0;
  v108 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v40 = v39;
    if (!v34)
    {
      break;
    }

LABEL_8:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = *(*(v37 + 48) + (v41 | (v39 << 6)));
    if ((v42 - 2) >= 3)
    {
      v96 = v8;
      if (v42)
      {
        sub_1D7703920();
      }

      else
      {
        sub_1D7703910();
      }

      v111 = v12;
      v43 = v109;
      (*v36)(v12, 0, 1, v109);
      v44 = *v114;
      (*v114)(v112, v111, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v108 = sub_1D768C6FC(0, v108[2] + 1, 1, v108);
      }

      v47 = v108[2];
      v46 = v108[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v110 = v47 + 1;
        v50 = sub_1D768C6FC(v46 > 1, v47 + 1, 1, v108);
        v48 = v110;
        v108 = v50;
      }

      v49 = v108;
      v108[2] = v48;
      result = (v44)(v49 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v47, v112, v109);
      a2 = v97;
      v8 = v96;
    }

    else
    {
      (*v36)(v12, 1, 1, v109);
      result = sub_1D769F86C(v12, sub_1D769F814);
    }
  }

  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    if (v39 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v39);
    ++v40;
    if (v34)
    {
      goto LABEL_8;
    }
  }

  v51 = v102;
  sub_1D7703930();
  v52 = v108[2];
  v101 = v52;
  if (v52)
  {
    v96 = v8;
    v97 = a2;
    v111 = *(v107 + 16);
    v112 = (v107 + 16);
    v53 = v108 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v110 = *(v107 + 72);
    v54 = (v107 + 8);
    v95[1] = v114 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v55 = v52;
    v56 = v100;
    v57 = v99;
    v58 = v109;
    do
    {
      v59 = v111;
      (v111)(v57, v53, v58);
      sub_1D769F8CC(&unk_1EE0B0838);
      sub_1D7704380();
      sub_1D769F8CC(&qword_1EE0B0828);
      sub_1D7704B40();
      (v59)(v113, v57, v58);
      sub_1D769F8CC(&qword_1EE0B0830);
      sub_1D77046D0();
      v60 = *v54;
      (*v54)(v57, v58);
      v60(v51, v58);
      v61 = *v114;
      (*v114)(v51, v56, v58);
      v53 += v110;
      --v55;
    }

    while (v55);

    a2 = v97;
    v8 = v96;
  }

  else
  {

    v61 = *v114;
  }

  v62 = v104;
  v63 = v109;
  v61(v104, v51, v109);
  sub_1D769F910(v106, v8, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v105;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v66 = *(v8 + 3);
      v120[0] = *(v8 + 2);
      v120[1] = v66;
      v121 = *(v8 + 4);
      v122 = *(v8 + 10);
      v67 = *(v8 + 1);
      v118 = *v8;
      v119 = v67;
      if (v101)
      {
        v68 = v121;
        __swift_project_boxed_opaque_existential_1(v120 + 1, v121);
        (*(*(*(&v68 + 1) + 8) + 16))(v68);
        sub_1D7703960();
        if (swift_dynamicCastClass())
        {
          sub_1D7703950();
        }

        swift_unknownObjectRelease();
      }

      v69 = NativeAdInfo.placementIdentifier.getter();
      v71 = v70;
      sub_1D7667C54(v120 + 8, v115);
      v72 = v122;
      v73 = NativeAdInfo.journal.getter();
      *a2 = v69;
      *(a2 + 8) = v71;
      v74 = v116;
      v75 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      v76 = (*(*(v75 + 8) + 8))(v74);
      v78 = v77;
      (*(v107 + 8))(v62, v63);
      *(a2 + 16) = v76;
      *(a2 + 24) = v78;
      sub_1D7667C54(v115, a2 + 40);
      *(a2 + 80) = v72;
      *(a2 + 32) = v73;
      __swift_destroy_boxed_opaque_existential_1(v115);
      return sub_1D769E02C(&v118);
    }

    else
    {
      result = (*(v107 + 8))(v62, v63);
      v93 = *(v8 + 3);
      *(a2 + 32) = *(v8 + 2);
      *(a2 + 48) = v93;
      *(a2 + 64) = *(v8 + 4);
      *(a2 + 80) = *(v8 + 10);
      v94 = *(v8 + 1);
      *a2 = *v8;
      *(a2 + 16) = v94;
    }
  }

  else
  {
    sub_1D769E05C(v8, v105);
    if (v101)
    {
      v79 = (v65 + *(v98 + 48));
      v80 = v79[3];
      v81 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v80);
      (*(*(v81 + 8) + 16))(v80);
      sub_1D7703960();
      if (swift_dynamicCastClass())
      {
        sub_1D7703950();
      }

      swift_unknownObjectRelease();
    }

    v82 = NativeAdInfo.placementIdentifier.getter();
    v84 = v83;
    v85 = v98;
    sub_1D7667C54(v65 + *(v98 + 48), &v118);
    v86 = *(v65 + *(v85 + 52));
    v87 = NativeAdInfo.journal.getter();
    *a2 = v82;
    *(a2 + 8) = v84;
    v88 = *(&v119 + 1);
    v89 = *&v120[0];
    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    v90 = (*(*(v89 + 8) + 8))(v88);
    v92 = v91;
    (*(v107 + 8))(v62, v63);
    *(a2 + 16) = v90;
    *(a2 + 24) = v92;
    sub_1D7667C54(&v118, a2 + 40);
    *(a2 + 80) = v86;
    *(a2 + 32) = v87;
    __swift_destroy_boxed_opaque_existential_1(&v118);
    return sub_1D769F86C(v65, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  return result;
}

uint64_t NativeAdInfo.Fulfilled.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.advertiserName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.articleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.articleTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.campaignData.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.identifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NativeAdInfo.Fulfilled.info.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D769F910(v1, a1, type metadata accessor for NativeAdInfo.Fulfilled);
  type metadata accessor for NativeAdInfo(0);

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall NativeAdInfo.Fulfilled.failedToLoadContent()()
{
  v1 = (v0 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  [(*(*(v3 + 8) + 16))(v2) contentLoadFailure];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NativeAdInfo.Fulfilled.markPresented()()
{
  v28 = sub_1D7702FA0();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v25 - v8);
  v27 = v0[12];
  v10 = v0 + *(type metadata accessor for NativeAdInfo.Fulfilled(0) + 44);
  v11 = v0[1];
  v12 = v0[10];
  v13 = v0[11];
  v25 = *v0;
  v26 = v12;
  v14 = *(v10 + 536);
  v15 = v6[21];
  sub_1D769F978(v10, v9 + v15, qword_1EE0B0DA8, type metadata accessor for AdRequest);
  sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
  (*(*(v16 - 8) + 56))(v9 + v15, 0, 1, v16);

  sub_1D7702F90();
  v17 = sub_1D7702F70();
  v19 = v18;
  (*(v1 + 8))(v4, v28);
  *v9 = v17;
  v9[1] = v19;
  sub_1D7702F40();
  v20 = (v9 + v6[16]);
  v21 = v25;
  *v20 = v25;
  v20[1] = v11;
  v22 = (v9 + v6[17]);
  *v22 = 0x8000000000000028;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  v23 = (v9 + v6[18]);
  *v23 = v26;
  v23[1] = v13;
  *(v9 + v6[19]) = v14;
  v24 = v9 + v6[20];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  sub_1D769D944(v9, v21, v11);
  sub_1D769F9E4(v9);
}

uint64_t NativeAdInfo.Unfilled.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NativeAdInfo.Unfilled.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NativeAdInfo.Unfilled.unfilledReason.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  return (*(*(v2 + 8) + 48))(v1);
}

uint64_t sub_1D769F728@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  a1(v2, a2);
  type metadata accessor for NativeAdInfo(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s7NewsAds12NativeAdInfoO8UnfilledV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D7704A30(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return sub_1D7704A30();
    }
  }

  return result;
}

void sub_1D769F814()
{
  if (!qword_1EE0B0820)
  {
    sub_1D7703940();
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0820);
    }
  }
}

uint64_t sub_1D769F86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D769F8CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7703940();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D769F910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D769F978(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *))
{
  sub_1D7666C8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D769F9E4(uint64_t a1)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7NewsAds12NativeAdInfoO9FulfilledV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[10] == a2[10] && a1[11] == a2[11];
  if (!v5 && (sub_1D7704A30() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D7704A30() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[7];
  v7 = a2[7];
  if (v6)
  {
    if (v7 && (a1[6] == a2[6] && v6 == v7 || (sub_1D7704A30() & 1) != 0))
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_19:
  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_1D7704A30();
}

uint64_t _s7NewsAds12NativeAdInfoO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeAdInfo(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = (&v36 - v11);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v36 - v14);
  sub_1D76A0064();
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v20[*(v18 + 56)];
  sub_1D769F910(a1, v20, type metadata accessor for NativeAdInfo);
  sub_1D769F910(a2, v21, type metadata accessor for NativeAdInfo);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D769F910(v20, v12, type metadata accessor for NativeAdInfo);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *(v21 + 48);
        v38 = *(v21 + 32);
        v39 = v23;
        v40 = *(v21 + 64);
        v41 = *(v21 + 80);
        v24 = *(v21 + 16);
        v36 = *v21;
        v37 = v24;
        v25 = *v12 == v36 && v12[1] == *(&v36 + 1);
        if (v25 || (sub_1D7704A30() & 1) != 0)
        {
          if (v12[2] == v37 && v12[3] == *(&v37 + 1))
          {
            sub_1D769E02C(&v36);
            sub_1D769E02C(v12);
          }

          else
          {
            v27 = sub_1D7704A30();
            sub_1D769E02C(&v36);
            sub_1D769E02C(v12);
            if ((v27 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_35;
        }

        sub_1D769E02C(&v36);
        sub_1D769E02C(v12);
        goto LABEL_38;
      }

      sub_1D769E02C(v12);
    }

    else
    {
      sub_1D769F910(v20, v8, type metadata accessor for NativeAdInfo);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = *(v21 + 48);
        v38 = *(v21 + 32);
        v39 = v28;
        v40 = *(v21 + 64);
        v41 = *(v21 + 80);
        v29 = *(v21 + 16);
        v36 = *v21;
        v37 = v29;
        v30 = *v8 == v36 && v8[1] == *(&v36 + 1);
        if (v30 || (sub_1D7704A30() & 1) != 0)
        {
          if (v8[2] == v37 && v8[3] == *(&v37 + 1))
          {
            sub_1D769DFFC(&v36);
            sub_1D769DFFC(v8);
          }

          else
          {
            v32 = sub_1D7704A30();
            sub_1D769DFFC(&v36);
            sub_1D769DFFC(v8);
            if ((v32 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_35:
          v33 = 1;
          goto LABEL_39;
        }

        sub_1D769DFFC(&v36);
        sub_1D769DFFC(v8);
LABEL_38:
        v33 = 0;
        goto LABEL_39;
      }

      sub_1D769DFFC(v8);
    }
  }

  else
  {
    sub_1D769F910(v20, v15, type metadata accessor for NativeAdInfo);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = _s7NewsAds12NativeAdInfoO9FulfilledV2eeoiySbAE_AEtFZ_0(v15, v21);
      sub_1D769F86C(v21, type metadata accessor for NativeAdInfo.Fulfilled);
      sub_1D769F86C(v15, type metadata accessor for NativeAdInfo.Fulfilled);
LABEL_39:
      v34 = type metadata accessor for NativeAdInfo;
      goto LABEL_40;
    }

    sub_1D769F86C(v15, type metadata accessor for NativeAdInfo.Fulfilled);
  }

  v33 = 0;
  v34 = sub_1D76A0064;
LABEL_40:
  sub_1D769F86C(v20, v34);
  return v33 & 1;
}

void sub_1D76A0064()
{
  if (!qword_1EE0B0318)
  {
    type metadata accessor for NativeAdInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0B0318);
    }
  }
}

uint64_t sub_1D76A00C8(uint64_t a1, uint64_t a2)
{
  sub_1D7666C8C(0, qword_1EE0B0320, type metadata accessor for JournalEntry);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall String.formatted()()
{
  v2 = v1;
  v3 = v0;

  v4 = v3;
  v5 = v2;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void sub_1D76A01E8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[7];
  v40 = a3[6];
  v41 = v7;
  v42 = a3[8];
  v8 = a3[3];
  v36 = a3[2];
  v37 = v8;
  v9 = a3[5];
  v38 = a3[4];
  v39 = v9;
  v10 = a3[1];
  v34 = *a3;
  v35 = v10;
  v11 = type metadata accessor for DebugJournalViewController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  v14 = objc_allocWithZone(MEMORY[0x1E69DD020]);
  sub_1D766D644(&v34, v33);
  *&v12[v13] = [v14 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v15 = *(&v34 + 1);
  v16 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_identifier];
  *v16 = v34;
  *(v16 + 1) = v15;
  v17 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_commandCenter];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_journal];
  *v18 = v34;
  v19 = v35;
  v20 = v36;
  v21 = v38;
  *(v18 + 3) = v37;
  *(v18 + 4) = v21;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  v22 = v39;
  v23 = v40;
  v24 = v42;
  *(v18 + 7) = v41;
  *(v18 + 8) = v24;
  *(v18 + 5) = v22;
  *(v18 + 6) = v23;
  *&v12[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_presentationOptions] = &unk_1F524E6C8;
  v32.receiver = v12;
  v32.super_class = v11;

  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  v27 = [v26 initWithRootViewController_];

  if (a4)
  {
    v28 = sub_1D7703F60();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 window];

      if (v30)
      {
        v31 = [v30 rootViewController];

        if (v31)
        {
          [v31 presentViewController:v27 animated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_1D76A0424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7704A30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D76A04B0(uint64_t a1)
{
  v2 = sub_1D76A06A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76A04EC(uint64_t a1)
{
  v2 = sub_1D76A06A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ANFDocumentAdData.encode(to:)(void *a1)
{
  sub_1D76A099C(0, &qword_1EC9BD3D0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A06A0();

  sub_1D7704B10();
  v11[1] = v9;
  sub_1D76A06F4();
  sub_1D76A075C();
  sub_1D7704A00();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D76A06A0()
{
  result = qword_1EC9BD3D8;
  if (!qword_1EC9BD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3D8);
  }

  return result;
}

void sub_1D76A06F4()
{
  if (!qword_1EC9BD3E0)
  {
    sub_1D76697B0();
    v0 = sub_1D77041B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9BD3E0);
    }
  }
}

unint64_t sub_1D76A075C()
{
  result = qword_1EC9BD3E8;
  if (!qword_1EC9BD3E8)
  {
    sub_1D76A06F4();
    sub_1D768DEEC(&qword_1EC9BE010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3E8);
  }

  return result;
}

uint64_t ANFDocumentAdData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D76A099C(0, &qword_1EC9BD3F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D76A06A0();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D76A06F4();
    sub_1D76A0A00();
    sub_1D7704970();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D76A099C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D76A06A0();
    v7 = a3(a1, &type metadata for ANFDocumentAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D76A0A00()
{
  result = qword_1EC9BD3F8;
  if (!qword_1EC9BD3F8)
  {
    sub_1D76A06F4();
    sub_1D768DEEC(&qword_1EC9BD1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD3F8);
  }

  return result;
}

unint64_t sub_1D76A0AA0(uint64_t a1)
{
  *(a1 + 8) = sub_1D76A0AD0();
  result = sub_1D76A0B24();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D76A0AD0()
{
  result = qword_1EE0AFCE8;
  if (!qword_1EE0AFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCE8);
  }

  return result;
}

unint64_t sub_1D76A0B24()
{
  result = qword_1EE0AFCF0;
  if (!qword_1EE0AFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCF0);
  }

  return result;
}

uint64_t sub_1D76A0BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D76A0BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D76A0C50()
{
  result = qword_1EC9BD400;
  if (!qword_1EC9BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD400);
  }

  return result;
}

unint64_t sub_1D76A0CA8()
{
  result = qword_1EC9BD408;
  if (!qword_1EC9BD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD408);
  }

  return result;
}

unint64_t sub_1D76A0D00()
{
  result = qword_1EC9BD410;
  if (!qword_1EC9BD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD410);
  }

  return result;
}

uint64_t sub_1D76A0D54@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BannerAdLayoutStore();
  v3 = swift_allocObject();
  sub_1D76A1280(0, &qword_1EE0B0880);
  swift_allocObject();
  result = sub_1D77035C0();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for BannerAdLayoutStore;
  *a1 = v3;
  return result;
}

uint64_t sub_1D76A0DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B12C0);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for InterstitialAdViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5251290;
    v17[0] = v8;
    v10 = type metadata accessor for InterstitialAdViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5251290;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F5250B48;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D76A1024@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B12C0);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for InterstitialAdViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5251290;
    v17[0] = v8;
    v10 = type metadata accessor for InterstitialAdViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5251290;
    v11[2] = v16;
    sub_1D76A1280(0, &qword_1EC9BD418);
    swift_allocObject();
    v11[7] = sub_1D77035C0();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52560D8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D76A1280(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D77035D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t AdContentInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t AdPolicyErrors.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      sub_1D7704740();

      v17 = 0xD000000000000012;
      v2 = *(v1 + 16);
      if (v2)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1D76970EC(0, v2, 0);
        v3 = (v1 + 80);
        do
        {
          v5 = *(v3 - 1);
          v4 = *v3;
          v7 = *(v16 + 16);
          v6 = *(v16 + 24);

          if (v7 >= v6 >> 1)
          {
            sub_1D76970EC((v6 > 1), v7 + 1, 1);
          }

          *(v16 + 16) = v7 + 1;
          v8 = v16 + 16 * v7;
          *(v8 + 32) = v5;
          *(v8 + 40) = v4;
          v3 += 8;
          --v2;
        }

        while (v2);
      }

      sub_1D76697B0();
      sub_1D7669758();
      v9 = sub_1D7704210();
      v11 = v10;

      MEMORY[0x1DA6FF0D0](v9, v11);

      v12 = 41;
      v13 = 0xE100000000000000;
    }

    else
    {
      v14 = v0[1];
      v17 = 0;
      sub_1D7704740();
      MEMORY[0x1DA6FF0D0](0xD000000000000015, 0x80000001D7716030);
      MEMORY[0x1DA6FF0D0](v1, v14);
      v12 = 0xD000000000000028;
      v13 = 0x80000001D7716050;
    }

    MEMORY[0x1DA6FF0D0](v12, v13);
  }

  else
  {
    v17 = 0;
    sub_1D7704740();
    MEMORY[0x1DA6FF0D0](0xD000000000000020, 0x80000001D77160A0);
    sub_1D7679D98();
    sub_1D7704850();
  }

  return v17;
}

uint64_t sub_1D76A171C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D76A1764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void BannerAdViewLayoutOptions.init(boundingSize:screenScale:layoutMargins:padding:safeAreaInsets:topPadding:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 80) = a11;
  *(a1 + 96) = a12;
}

uint64_t BannerAdViewLayoutOptions.Embedded.init(topPadding:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D76A182C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D76A184C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdViewLayoutOptions.Embedded(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BannerAdViewLayoutOptions.Embedded(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D76A1900@<X0>(void *a1@<X8>)
{
  v3 = sub_1D77032B0();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v42 - v14;
  v45 = *v1;
  v16 = *(v1 + 8);
  sub_1D77032C0();
  v43 = v18;
  v44 = v17;
  sub_1D77032D0();
  v19 = sub_1D77032A0();
  v20 = *(v4 + 8);
  v20(v15, v3);
  [v19 displayScale];
  v42 = v21;

  sub_1D77032D0();
  sub_1D7703280();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v20(v12, v3);
  sub_1D77032D0();
  sub_1D7703290();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = (v20)(v8, v3);
  v39 = 0;
  if (!v16)
  {
    v39 = v45;
  }

  v40 = v42;
  v41 = v43;
  *a1 = v44;
  a1[1] = v41;
  a1[2] = v40;
  a1[3] = v23;
  a1[4] = v25;
  a1[5] = v27;
  a1[6] = v29;
  a1[7] = 0x4044000000000000;
  a1[8] = v31;
  a1[9] = v33;
  a1[10] = v35;
  a1[11] = v37;
  a1[12] = v39;
  return result;
}

uint64_t BannerAdUpdate.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BannerAdUpdate.discard(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a1;
  v73 = a3;
  v6 = *(a2 + 48);
  v71 = *(a2 + 24);
  v72 = v6;
  v89 = v71;
  v90[0] = v6;
  v7 = type metadata accessor for AdRequest();
  v8 = sub_1D77046B0();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v63 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v61[-v15];
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v61[-v19];
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v61[-v23];
  (*(v9 + 16))(v20, v4 + *(a2 + 72), v8);
  v25 = (*(v21 + 48))(v20, 1, v7);
  v65 = v4;
  v70 = v8;
  v67 = a2;
  if (v25 == 1)
  {
    v26 = *(v9 + 8);
    v69 = v9 + 8;
    v62 = v26;
    v26(v20, v8);
    v74 = *(v4 + *(a2 + 76));
    v27 = v63;
    (*(v21 + 56))(v63, 1, 1, v7);
    v28 = *(a2 + 40);
    v29 = *(v28 + 8);
    v66 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x869E000000000000;
    v30 = *(a2 + 16);
    v29(&v89, v30, v28);
    *&v61[8] = v89;

    sub_1D766E6D8(&v89);
    v68 = v29;
    v29(v87, v30, v28);
    sub_1D766CEFC(v88, v75);
    if (v76)
    {
      if (v76 == 1)
      {
        sub_1D766E6D8(v87);
        sub_1D76749B8(v75);
        v31 = v64;
        v32 = v65;
        v33 = *&v61[8];
      }

      else
      {
        v31 = v64;
        v32 = v65;
        v51 = *&v61[8];
        sub_1D766E6D8(v87);
        v33 = v51;
      }

      v44 = 0;
      v43 = 0;
    }

    else
    {
      sub_1D7667CB8(v75, &v78);
      v39 = *(&v79 + 1);
      v40 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
      v41 = (*(v40 + 8))(v39, v40);
      v43 = v42;
      sub_1D766E6D8(v87);
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v44 = v41;
      v31 = v64;
      v32 = v65;
      v33 = *&v61[8];
    }

    Journal.addFailedEntry(error:request:placementIdentifier:contentIdentifier:)(v31, v27, v33, *&v61[16], v44, v43);

    v62(v27, v70);
  }

  else
  {
    v69 = v9;
    (*(v21 + 32))(v24, v20, v7);
    v74 = *(v4 + *(a2 + 76));
    v34 = *(v21 + 16);
    *&v61[16] = v24;
    v34(v16, v24, v7);
    v35 = *(v21 + 56);
    v62 = v16;
    v35(v16, 0, 1, v7);
    v28 = *(a2 + 40);
    v36 = *(v28 + 8);
    v66 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x869E000000000000;
    v37 = *(a2 + 16);
    v36(&v89, v37, v28);
    *v61 = v89;

    sub_1D766E6D8(&v89);
    v63 = v37;
    v68 = v36;
    v36(v87, v37, v28);
    sub_1D766CEFC(v88, v75);
    if (v76)
    {
      if (v76 == 1)
      {
        sub_1D766E6D8(v87);
        sub_1D76749B8(v75);
        v31 = v64;
        v32 = v65;
        v38 = *v61;
      }

      else
      {
        v31 = v64;
        v32 = v65;
        v52 = *v61;
        sub_1D766E6D8(v87);
        v38 = v52;
      }

      v50 = 0;
      v49 = 0;
    }

    else
    {
      sub_1D7667CB8(v75, &v78);
      v45 = *(&v79 + 1);
      v46 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
      v47 = (*(v46 + 8))(v45, v46);
      v49 = v48;
      sub_1D766E6D8(v87);
      __swift_destroy_boxed_opaque_existential_1(&v78);
      v50 = v47;
      v31 = v64;
      v32 = v65;
      v38 = *v61;
    }

    v53 = v62;
    Journal.addDiscardedEntry(error:request:placementIdentifier:contentIdentifier:)(v31, v62, v38, *&v61[8], v50, v49);

    (*(v69 + 8))(v53, v70);
    (*(v21 + 8))(*&v61[16], v7);
    v30 = v63;
  }

  v54 = sub_1D76A2390(v31);
  sub_1D76A2560(v31, v32, v54 & 1, v30, v71, *(&v71 + 1), v28, v72, v77, *(&v72 + 1));
  v55 = v68;
  v68(v87, v30, v28);
  v56 = v87[0];
  v57 = v30;
  v58 = v87[1];

  sub_1D766E6D8(v87);
  sub_1D766CEFC(v77, v90);
  v55(v75, v57, v28);
  v59 = v75[0];

  sub_1D766E6D8(v75);
  Journal.createDebugJournal(for:)(v59, *(&v59 + 1), &v78);

  *(&v90[10] + 8) = v83;
  *(&v90[11] + 8) = v84;
  *(&v90[12] + 8) = v85;
  *(&v90[13] + 8) = v86;
  *(&v90[6] + 8) = v79;
  *(&v90[7] + 8) = v80;
  *(&v90[8] + 8) = v81;
  *(&v90[9] + 8) = v82;
  *&v89 = v56;
  *(&v89 + 1) = v58;
  *(&v90[5] + 8) = v78;
  (*(v28 + 16))(&v89, v57, v28);
  sub_1D766E6D8(&v89);
  return sub_1D766E72C(v77);
}