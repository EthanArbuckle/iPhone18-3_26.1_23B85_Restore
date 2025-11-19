uint64_t sub_1D6CAD350(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C626978656C66;
    v6 = 0x726568746FLL;
    if (a1 != 2)
    {
      v6 = 0x686374697773;
    }

    if (a1)
    {
      v5 = 1954047348;
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
    v1 = 0x6978656C46746C61;
    v2 = 0x6C6F686563616C70;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x694C656C676E6973;
    if (a1 != 4)
    {
      v3 = 0x74786554746C61;
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

uint64_t sub_1D6CAD490()
{
  sub_1D7264A0C();
  sub_1D6950080();
  return sub_1D7264A5C();
}

uint64_t sub_1D6CAD4E0()
{
  sub_1D7264A0C();
  sub_1D6950080();
  return sub_1D7264A5C();
}

uint64_t sub_1D6CAD524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6CAD350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D6CAD5BC()
{
  result = qword_1EDF2ED90;
  if (!qword_1EDF2ED90)
  {
    sub_1D5C30200(255, &qword_1EDF2ED88, sub_1D66F46B0, &type metadata for FormatTextSize, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED90);
  }

  return result;
}

id sub_1D6CAD64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v17 = sub_1D6F7D0AC(a1, a4, a2, a3, &v73);
  v19 = v73;
  v20 = v73 >> 61;
  if ((v73 >> 61) <= 2)
  {
    if (v20)
    {
      v72 = a9;
      if (v20 == 1)
      {
        v71 = v9;
        v26 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v28 = swift_allocObject();
        v29 = swift_allocObject();
        v29[2] = v26;
        v29[3] = v27;
        v29[4] = a4;
        v29[5] = a5;
        v29[6] = a6;
        v29[7] = a7;
        v29[8] = a8;
        *(v28 + 16) = sub_1D60D68B4;
        *(v28 + 24) = v29;
        v30 = v72;
        *v72 = v28;
        v31 = *MEMORY[0x1E69D7498];
        sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        (*(*(v32 - 8) + 104))(v30, v31, v32);
        v33 = a5;

        sub_1D5D085B4(v27);

        return sub_1D5D05694(v19);
      }

      v37 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v17, v18);
      v68 = a4;
      v69 = a1;
      v70 = a6;

      v38 = sub_1D5ECBE6C(sub_1D6CAE1DC, v67, v37);

      if (v9)
      {
        return sub_1D5D05694(v19);
      }

      v46 = swift_allocObject();
      *(v46 + 16) = a5;
      *(v46 + 24) = v38;
      v24 = v72;
      *v72 = v46;
      v25 = MEMORY[0x1E69D7420];
      goto LABEL_21;
    }

    v36 = *(v73 + 16);
    v73 = v36;
    sub_1D5C82CD8(v36);
    sub_1D5BEB9F4(a4, a7, a8, a9);
    sub_1D5C92A8C(v36);
    return sub_1D5D05694(v19);
  }

  if (v20 <= 4)
  {
    v72 = a9;
    if (v20 != 3)
    {
      v73 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v39 = sub_1D6E5B35C(a4, a1, a6, 0);

      if (!v9)
      {
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        v41 = v72;
        *v72 = v40;
        v42 = *MEMORY[0x1E69D7440];
        sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
        (*(*(v43 - 8) + 104))(v41, v42, v43);
      }

      return sub_1D5D05694(v19);
    }

    v21 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    MEMORY[0x1EEE9AC00](v17, v18);
    v68 = a4;
    v69 = a1;
    v70 = a6;

    v22 = sub_1D5ECBE6C(sub_1D6CAE218, v67, v21);

    if (!v9)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = a5;
      *(v23 + 24) = v22;
      v24 = v72;
      *v72 = v23;
      v25 = MEMORY[0x1E69D7448];
LABEL_21:
      v47 = *v25;
      sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      (*(*(v48 - 8) + 104))(v24, v47, v48);
      v49 = a5;
      return sub_1D5D05694(v19);
    }

    return sub_1D5D05694(v19);
  }

  if (v20 == 5)
  {
    v73 = *((v73 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v35 = sub_1D6E5B35C(a4, a1, a6, 0);
    if (v9)
    {
    }

    else
    {
      v50 = v35;

      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *a9 = v51;
      v52 = *MEMORY[0x1E69D73E8];
      sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
      (*(*(v53 - 8) + 104))(a9, v52, v53);
    }

    return sub_1D5D05694(v19);
  }

  if (v73 == 0xC000000000000000)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = a5;
    *a9 = v54;
    v45 = MEMORY[0x1E69D7440];
    goto LABEL_25;
  }

  if (v73 == 0xC000000000000008)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = a5;
    *a9 = v44;
    v45 = MEMORY[0x1E69D73E8];
LABEL_25:
    v55 = *v45;
    sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
    (*(*(v56 - 8) + 104))(a9, v55, v56);
    return a5;
  }

  if ([a5 length] <= 0)
  {
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
  }

  else
  {
    v57 = [a5 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    sub_1D7261D3C();

    v58 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v59 = sub_1D726203C();
    v60 = sub_1D7261D2C();

    v61 = [v58 initWithString:v59 attributes:v60];

    [v61 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
    v63 = v62;

    v64 = swift_allocObject();
    *(v64 + 16) = v63;
  }

  *a9 = v64;
  v65 = *MEMORY[0x1E69D7488];
  sub_1D5C30200(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  return (*(*(v66 - 8) + 104))(a9, v65, v66);
}

uint64_t sub_1D6CADF40@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v19[2] = a6;
  v12 = sub_1D7259BDC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v19[3] = a1[1];
  v17 = a1[3];
  v20 = a1[2];

  sub_1D6E5B35C(a2, a3, a4, 0);

  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v19[1] = v16;
    v20 = v17;

    sub_1D6806A1C(a2, v15);

    return sub_1D725A53C();
  }

  return result;
}

unint64_t sub_1D6CAE0B8(void *a1)
{
  a1[1] = sub_1D5C88E5C();
  a1[2] = sub_1D6666804();
  result = sub_1D6CAE0F0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAE0F0()
{
  result = qword_1EDF32088;
  if (!qword_1EDF32088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32088);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatTextSizeO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

unint64_t sub_1D6CAE188()
{
  result = qword_1EC894878;
  if (!qword_1EC894878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894878);
  }

  return result;
}

uint64_t WebEmbedDataVisualizationURLDataSourceContentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x617453746E657665 && a2 == 0xEF61746144636974;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x76694C746E657665 && v3 == 0xED00006174614465 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x746144746E657665 && v3 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x61446E6F73616573 && v3 == 0xEA00000000006174 || (result = sub_1D72646CC(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 3;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t WebEmbedDataVisualizationURLDataSourceContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0x746144746E657665;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0x61446E6F73616573;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *v0;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0x617453746E657665;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0x76694C746E657665;
LABEL_11:
  sub_1D5C30618(v1, v2);
  return v3;
}

double sub_1D6CAE494@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  WebEmbedDataVisualizationURLDataSourceContentType.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1D6CAE4D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = 0x746144746E657665;
      *(a1 + 8) = 0xE900000000000061;
      return sub_1D5C30618(v2, v3);
    }

    if (v3 == 3)
    {
      *a1 = 0x61446E6F73616573;
      *(a1 + 8) = 0xEA00000000006174;
      return sub_1D5C30618(v2, v3);
    }

LABEL_9:
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_1D5C30618(v2, v3);
  }

  if (!v3)
  {
    *a1 = 0x617453746E657665;
    *(a1 + 8) = 0xEF61746144636974;
    return sub_1D5C30618(v2, v3);
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  strcpy(a1, "eventLiveData");
  *(a1 + 14) = -4864;
  return sub_1D5C30618(v2, v3);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed49WebEmbedDataVisualizationURLDataSourceContentTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D6CAE688()
{
  result = qword_1EDF05F98;
  if (!qword_1EDF05F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F98);
  }

  return result;
}

void FeedChannelClusteringResult.scoredItems.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = *(v5 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1D6CAE868()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CAE8B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BundleSessionFixedProvider.nextSessionValue(after:)()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D7A8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  return v1;
}

uint64_t sub_1D6CAE9D0()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D7A8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  return v1;
}

uint64_t sub_1D6CAEACC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D6CAEB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = sub_1D726203C();
  v4 = [v2 assetHandleForResourceID:v3 contentContext:*(v1 + 24)];

  return v4;
}

id sub_1D6CAEB6C()
{
  v1 = *(*v0 + 16);
  v2 = sub_1D725844C();
  v3 = [v1 assetHandleForURL:v2 lifetimeHint:1];

  return v3;
}

void FormatBindingFontSize.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t *FormatBindingFontSize.init(size:scaling:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 4);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t FormatBindingFontSize.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t _s8NewsFeed21FormatBindingFontSizeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if ((v3 & 0xFF00) == 0xC00)
  {
    if ((v4 & 0xFF00) == 0xC00)
    {
      return 1;
    }
  }

  else if ((v4 & 0xFF00) != 0xC00)
  {
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (a3.n128_f64[0] != *(a2 + 8))
      {
        return 0;
      }
    }

    v6 = FormatFontScalingStyle.rawValue.getter(a3);
    v8 = v7;
    if (v6 == FormatFontScalingStyle.rawValue.getter(v9) && v8 == v10)
    {

      return 1;
    }

    v11 = sub_1D72646CC();

    if (v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D6CAEDA8(uint64_t a1)
{
  result = sub_1D6CAEDD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAEDD0()
{
  result = qword_1EC894900;
  if (!qword_1EC894900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894900);
  }

  return result;
}

unint64_t sub_1D6CAEE24(void *a1)
{
  a1[1] = sub_1D6659898();
  a1[2] = sub_1D66FC3C4();
  result = sub_1D6CAEE5C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAEE5C()
{
  result = qword_1EC894908;
  if (!qword_1EC894908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatBindingFontSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 18))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 17);
  if (v3 <= 0xC)
  {
    v4 = 12;
  }

  else
  {
    v4 = *(a1 + 17);
  }

  v5 = v4 - 13;
  if (v3 < 0xC)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatBindingFontSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 12;
    }
  }

  return result;
}

uint64_t _s8NewsFeed19FormatNumberBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 5) & 3;
  v5 = v3 & 0x60;
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = (v3 ^ v2) & 0xFFFFFF9F;
      if (v5 == 32 && v6 == 0)
      {
        return 1;
      }
    }

    else if (v5 == 64)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x1F) == 0)
        {
          return 1;
        }
      }

      else if ((v3 & 0x80) == 0 && ((v3 ^ v2) & 0x1F) == 0)
      {
        return 1;
      }
    }
  }

  else if (v2 == v3 && v5 == 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6CAF020(uint64_t a1)
{
  result = sub_1D6CAF048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAF048()
{
  result = qword_1EC894910;
  if (!qword_1EC894910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894910);
  }

  return result;
}

unint64_t sub_1D6CAF09C(void *a1)
{
  a1[1] = sub_1D66A5F50();
  a1[2] = sub_1D66FAE54();
  result = sub_1D6CAF0D4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAF0D4()
{
  result = qword_1EC894918;
  if (!qword_1EC894918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894918);
  }

  return result;
}

uint64_t sub_1D6CAF138(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v32 = v33;
    v4 = v1 + 64;
    result = sub_1D7263B7C();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v30 = v1 + 64;
    v27 = v1 + 72;
    v28 = v2;
    v29 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v6;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v12 = v1;
      v14 = *v11;
      v13 = v11[1];
      v15 = *(v10 + 8 * v5);

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v14, v13);
      MEMORY[0x1DA6F9910](0x726F6C6F632DLL, 0xE600000000000000);

      v16 = v32;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D5BFC364((v17 > 1), v18 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = 0xD000000000000010;
      *(v19 + 40) = 0x80000001D73F04A0;
      v8 = 1 << *(v12 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v1 = v12;
      v4 = v30;
      v20 = *(v30 + 8 * v9);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v32 = v16;
      v7 = v29;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1D5C25E1C(v5, v29, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1D5C25E1C(v5, v29, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v28)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

double FeedIssue.init(identifier:issue:badge:issueTraits:premiumBadge:overrides:scoreProfile:userHasAccess:state:)@<D0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = a7[1];
  v18 = a7[2];
  v19 = *a11;
  if (!a3)
  {
    v28 = a8;
    v26 = a7[1];
    v27 = *a7;
    v25 = a7[2];
    v20 = [a1 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    v18 = v25;
    v17 = v26;
    v16 = v27;
    a8 = v28;
    a2 = v21;
    a3 = v23;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v13;
  *(a9 + 25) = v15;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = v14;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = v16;
  *(a9 + 88) = v17;
  *(a9 + 104) = v18;
  result = 0.0;
  *(a9 + 120) = xmmword_1D72F4110;
  *(a9 + 136) = v19;
  return result;
}

uint64_t FeedIssue.debugIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedIssue.debugSourceName.getter()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedIssue.debugTitle.getter()
{
  v1 = [*v0 coverDate];
  v2 = sub_1D726207C();

  return v2;
}

id FeedIssue.debugAssetHandle.getter()
{
  v1 = [*v0 coverImageAssetHandle];

  return v1;
}

void *FeedIssue.debugScoreProfile.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t FeedIssue.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 64))
  {
    result = FCIssue.issueCoverModel.getter(v5);
    if (v6)
    {
      if (v6 != 1)
      {
        v4 = 0;
        goto LABEL_11;
      }

      v4 = 16448;
    }

    else
    {
      v4 = 64;
    }
  }

  else
  {
    result = FCIssue.issueCoverModel.getter(v5);
    if (v6)
    {
      if (v6 != 1)
      {
        v4 = 4096;
        goto LABEL_11;
      }

      v4 = 20544;
    }

    else
    {
      v4 = 4160;
    }
  }

  result = sub_1D619CBDC(v5);
LABEL_11:
  *a1 = v4;
  return result;
}

uint64_t FeedIssue.additionalFormatFeedItems.getter()
{
  v1 = *v0;
  sub_1D6CB1220(0, &qword_1EDF199E0, sub_1D5EFF46C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v3 = [v1 sourceChannel];
  *(v2 + 56) = &type metadata for FeedTag;
  *(v2 + 64) = sub_1D5EE5BA8();
  v4 = swift_allocObject();
  *(v2 + 32) = v4;
  v5 = [v3 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  *(v4 + 96) = xmmword_1D7279980;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 16) = v6;
  *(v4 + 24) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xE000000000000000;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v9 = MEMORY[0x1E69E7CD0];
  *(v4 + 80) = 0;
  *(v4 + 88) = v9;
  return v2;
}

uint64_t FeedIssue.feedContextIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v10 = *(v0 + 8);
  v11 = v1;

  MEMORY[0x1DA6F9910](36, 0xE100000000000000);
  if (v2 == 1)
  {
    FCIssue.issueCoverModel.getter(&v7);
    if (!v9 || v9 == 1)
    {
LABEL_7:
      sub_1D619CBDC(&v7);
    }
  }

  else
  {
    FCIssue.issueCoverModel.getter(&v7);
    if (!v9 || v9 == 1)
    {
      goto LABEL_7;
    }
  }

  v7 = 91;
  v8 = 0xE100000000000000;
  sub_1D713AFE4();
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v3 = sub_1D7261F3C();
  v5 = v4;

  MEMORY[0x1DA6F9910](v3, v5);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v7, v8);

  return v10;
}

id FeedIssue.issueCover.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[13];
  if (v1[10] == 1 || v3 == 0)
  {
    return FCIssue.issueCoverModel.getter(a1);
  }

  v6 = v1[14];
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 56) = 0;
  v8 = v2;
  v7 = v3;

  return v8;
}

uint64_t sub_1D6CAFA6C()
{
  if (*(v0 + 80) >= 2uLL)
  {
    v8 = *(v0 + 72);
  }

  else
  {
    v1 = *v0;
    v2 = [*v0 title];
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = [v1 title];
    }

    else
    {
      v7 = [objc_msgSend(v1 sourceChannel)];
      swift_unknownObjectRelease();
    }

    v8 = sub_1D726207C();
  }

  return v8;
}

uint64_t sub_1D6CAFB7C()
{
  v1 = *v0;
  if (*v0)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    v1 = sub_1D726213C();
  }

  return v1;
}

uint64_t CoverViewBadge.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedIssue.Overrides.Image.init(assetHandle:aspectRatio:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t FeedIssue.Overrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedIssue.Overrides.coverDate.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id FeedIssue.Overrides.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

__n128 FeedIssue.Overrides.init(title:coverDate:image:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

uint64_t FeedIssue.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void FeedIssue.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FeedIssue.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedIssue.copy(overrides:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[3];
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 136);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v3;
  *(a2 + 80) = *(a1 + 1);
  *(a2 + 96) = v4;
  v13 = *(a1 + 2);
  *(a2 + 104) = v13;
  *(a2 + 120) = xmmword_1D72F4110;
  *(a2 + 136) = v12;
  v14 = v13;
  v15 = v6;

  v16 = v10;
}

uint64_t FeedIssue.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = *v1;
  v13 = *(v1 + 88);
  v14 = *(v1 + 120);
  v39 = *(v1 + 104);
  v40 = v14;
  v41 = *(v1 + 136);
  v15 = *(v1 + 24);
  v16 = *(v1 + 56);
  v35 = *(v1 + 40);
  v36 = v16;
  v37 = *(v1 + 72);
  v38 = v13;
  v33 = *(v1 + 8);
  v34 = v15;
  v17 = [v12 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [objc_opt_self() nss:v17 NewsURLForIssueID:?];

  if (v18)
  {
    sub_1D72584EC();

    (*(v4 + 32))(v11, v7, v3);
    sub_1D725844C();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v23 = v12;
    v32 = v41;
    v24 = v33;
    sub_1D6CAFA6C();
    sub_1D725F83C();
    (*(v4 + 8))(v11, v3);
    v19 = sub_1D725F84C();
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  else
  {
    v21 = sub_1D725F84C();
    v22 = *(*(v21 - 8) + 56);

    return v22(a1, 1, 1, v21);
  }
}

uint64_t sub_1D6CB0324()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D6CB0354()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6CB03D0()
{
  v1 = [*v0 coverDate];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6CB0428()
{
  v1 = [*v0 coverImageAssetHandle];

  return v1;
}

void *sub_1D6CB0460()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t FeedIssue.State.selectors.getter()
{
  v1 = *v0;
  sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  v3 = 0xD000000000000012;
  v4 = "deleted-state-deleted";
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v4 = "blocked-state-blocked";
  }

  *(result + 32) = v3;
  *(result + 40) = v4 | 0x8000000000000000;
  return result;
}

uint64_t sub_1D6CB0550@<X0>(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  a2[6] = v21;
  a2[7] = v13;
  *(a2 + 121) = *(v2 + 121);
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v3;
  *a2 = v12;
  a2[1] = v5;
  a1(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D5ECF2C4(v16, &v15);
}

uint64_t sub_1D6CB0624@<X0>(void (*a1)(void)@<X2>, _OWORD *a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[7];
  v21 = v2[6];
  v22[0] = v4;
  *(v22 + 9) = *(v2 + 121);
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v17;
  v18 = v6;
  v8 = v2[3];
  v9 = v2[5];
  v19 = v2[4];
  v10 = v19;
  v20 = v9;
  v11 = v2[1];
  v16[0] = *v2;
  v12 = v16[0];
  v16[1] = v11;
  v13 = v2[7];
  a2[6] = v21;
  a2[7] = v13;
  *(a2 + 121) = *(v2 + 121);
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v3;
  *a2 = v12;
  a2[1] = v5;
  a1(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D5ECF2C4(v16, &v15);
}

uint64_t sub_1D6CB06DC()
{
  v1 = *v0;
  v2 = *(v0 + 25);
  sub_1D6CB1220(0, &unk_1EDF19568, sub_1D6C9F344);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 32) = 0x7972616D697270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [v1 coverImagePrimaryColor];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEA0000000000646ELL;
  *(inited + 72) = [v1 coverImageBackgroundColor];
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v1 coverImageTextColor];
  *(inited + 104) = 0x746E65636361;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = [v1 coverImageAccentColor];
  v4 = sub_1D605AE4C(inited);
  swift_setDeallocating();
  sub_1D6C9F344();
  swift_arrayDestroy();
  v5 = sub_1D6CB0BD4(v4);

  v6 = sub_1D6CAF138(v5);

  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D5B858EC(0, *(v6 + 16) + 1, 1, v6);
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = 0x6D75696D657270;
    *(v9 + 40) = 0xE700000000000000;
  }

  sub_1D7263D4C();

  v10 = [objc_msgSend(v1 sourceChannel)];
  swift_unknownObjectRelease();
  v11 = sub_1D726207C();
  v13 = v12;

  MEMORY[0x1DA6F9910](v11, v13);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D5B858EC(0, *(v6 + 16) + 1, 1, v6);
  }

  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  if (v15 >= v14 >> 1)
  {
    v6 = sub_1D5B858EC((v14 > 1), v15 + 1, 1, v6);
  }

  *(v6 + 16) = v15 + 1;
  v16 = v6 + 16 * v15;
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = 0x80000001D73C1100;
  return v6;
}

uint64_t sub_1D6CB0A0C()
{
  v0 = sub_1D6CB06DC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D6CB0B3C()
{
  v1 = *(v0 + 136);
  sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  v3 = 0xD000000000000012;
  v4 = "deleted-state-deleted";
  if (v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v4 = "blocked-state-blocked";
  }

  *(result + 32) = v3;
  *(result + 40) = v4 | 0x8000000000000000;
  return result;
}

unint64_t *sub_1D6CB0BD4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D6C9E5AC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D6C9E3D4(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t _s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 136);
  v6 = *(a2 + 24);
  v14 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 136);
  sub_1D5B5A498(0, &qword_1EDF1A650);
  if ((sub_1D726370C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    FCIssue.issueCoverModel.getter(v15);
    if (!v16)
    {
      v9 = 64;
      goto LABEL_12;
    }

    if (v16 == 1)
    {
      v9 = 16448;
LABEL_12:
      sub_1D619CBDC(v15);
      goto LABEL_13;
    }

    v9 = 0;
  }

  else
  {
    FCIssue.issueCoverModel.getter(v15);
    if (!v16)
    {
      v9 = 4160;
      goto LABEL_12;
    }

    if (v16 == 1)
    {
      v9 = 20544;
      goto LABEL_12;
    }

    v9 = 4096;
  }

LABEL_13:
  if (v7)
  {
    FCIssue.issueCoverModel.getter(v15);
    if (v16)
    {
      if (v16 != 1)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v11 = 16448;
    }

    else
    {
      v11 = 64;
    }
  }

  else
  {
    FCIssue.issueCoverModel.getter(v15);
    if (v16)
    {
      if (v16 != 1)
      {
        v11 = 4096;
        goto LABEL_23;
      }

      v11 = 20544;
    }

    else
    {
      v11 = 4160;
    }
  }

  sub_1D619CBDC(v15);
LABEL_23:
  v13 = v9 != v11 || v3 != v14;
  return (v2 == v6) & ~(v13 | v4 ^ v7 | v5 ^ v8);
}

unint64_t sub_1D6CB0EDC()
{
  result = qword_1EC894920;
  if (!qword_1EC894920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894920);
  }

  return result;
}

unint64_t sub_1D6CB0F30(uint64_t a1)
{
  result = sub_1D6CB0F58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CB0F58()
{
  result = qword_1EC894928;
  if (!qword_1EC894928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894928);
  }

  return result;
}

unint64_t sub_1D6CB0FB0()
{
  result = qword_1EC894930;
  if (!qword_1EC894930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894930);
  }

  return result;
}

unint64_t sub_1D6CB1008()
{
  result = qword_1EC894938;
  if (!qword_1EC894938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894938);
  }

  return result;
}

unint64_t sub_1D6CB1060()
{
  result = qword_1EDF13018;
  if (!qword_1EDF13018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13018);
  }

  return result;
}

unint64_t sub_1D6CB10B8()
{
  result = qword_1EDF13010;
  if (!qword_1EDF13010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13010);
  }

  return result;
}

unint64_t sub_1D6CB110C(uint64_t a1)
{
  result = sub_1D5FC45F8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6CB1144(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1D6CB118C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6CB1220(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6CB1274(void *a1)
{
  sub_1D6CB1CE4(0, &qword_1EC894950, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB1C60();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D72643FC();
    v10[13] = 2;
    sub_1D72643FC();
    v10[12] = 3;
    sub_1D726441C();
    v10[11] = 4;
    sub_1D726440C();
    v10[10] = 5;
    sub_1D726440C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6CB1460()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65726F6373;
  v4 = 1852138867;
  if (v1 != 4)
  {
    v4 = 1684104562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
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

uint64_t sub_1D6CB1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6CB1E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6CB1530(uint64_t a1)
{
  v2 = sub_1D6CB1C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB156C(uint64_t a1)
{
  v2 = sub_1D6CB1C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6CB15A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6CB18CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_1D6CB160C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7284F00;
  v5 = v1[1];
  v16 = *v1;
  *(v4 + 48) = v16;
  v6 = MEMORY[0x1E69E6158];
  *(v4 + 32) = 0x696669746E656449;
  *(v4 + 40) = 0xEA00000000007265;
  v7 = MEMORY[0x1E69E61C8];
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  *(v4 + 88) = 0;
  *(v4 + 96) = 1701667150;
  *(v4 + 104) = 0xE400000000000000;
  *(v4 + 136) = v6;
  *(v4 + 144) = v7;
  *(v4 + 112) = v5;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0xD000000000000011;
  *(v4 + 168) = 0x80000001D73F04F0;
  v14 = v1[2];
  v8 = v14;
  v15 = v5;
  *(v4 + 200) = v6;
  *(v4 + 208) = v7;
  *(v4 + 176) = v8;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0x65726F6353;
  *(v4 + 232) = 0xE500000000000000;
  v9 = MEMORY[0x1E69E6418];
  *&v8 = *(v1 + 6);
  *(v4 + 264) = MEMORY[0x1E69E63B0];
  *(v4 + 272) = v9;
  *(v4 + 240) = v8;
  *(v4 + 280) = 0;
  *(v4 + 288) = 1852138835;
  *(v4 + 296) = 0xE400000000000000;
  v10 = MEMORY[0x1E69E6370];
  v11 = MEMORY[0x1E69E6398];
  LOBYTE(v6) = *(v1 + 56);
  *(v4 + 328) = MEMORY[0x1E69E6370];
  *(v4 + 336) = v11;
  *(v4 + 304) = v6;
  *(v4 + 344) = 0;
  *(v4 + 352) = 1684104530;
  *(v4 + 360) = 0xE400000000000000;
  LOBYTE(v6) = *(v1 + 57);
  *(v4 + 392) = v10;
  *(v4 + 400) = v11;
  *(v4 + 368) = v6;
  *(v4 + 408) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x657069636552;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  sub_1D5E422A8(&v16, v13);
  sub_1D5E422A8(&v15, v13);
  sub_1D5E422A8(&v14, v13);
  result = sub_1D60F3E18(inited);
  a1[3] = &type metadata for DebugInspectionDataSource;
  a1[4] = &off_1F51328C8;
  *a1 = result;
  return result;
}

uint64_t sub_1D6CB1824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t sub_1D6CB186C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6CB18CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6CB1CE4(0, &qword_1EC894940, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB1C60();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  LOBYTE(v33[0]) = 1;
  *&v29 = sub_1D72642BC();
  *(&v29 + 1) = v14;
  LOBYTE(v33[0]) = 2;
  v26 = sub_1D72642BC();
  v27 = 0;
  v28 = v15;
  LOBYTE(v33[0]) = 3;
  sub_1D72642DC();
  v17 = v16;
  LOBYTE(v33[0]) = 4;
  v25 = sub_1D72642CC();
  v40 = 5;
  v18 = sub_1D72642CC();
  LODWORD(v27) = v25 & 1;
  (*(v7 + 8))(v10, v6);
  v25 = v18 & 1;
  *&v30 = v11;
  *(&v30 + 1) = v13;
  v19 = v29;
  v31 = v29;
  v20 = v26;
  v21 = v28;
  *v32 = v26;
  *&v32[8] = v28;
  *&v32[16] = v17;
  v32[24] = v27;
  v32[25] = v25;
  sub_1D6C78B88(&v30, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v13;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v17;
  v38 = v27;
  v39 = v25;
  result = sub_1D6CB1CB4(v33);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  a2[2] = *v32;
  *(a2 + 42) = *&v32[10];
  return result;
}

unint64_t sub_1D6CB1C60()
{
  result = qword_1EC894948;
  if (!qword_1EC894948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894948);
  }

  return result;
}

void sub_1D6CB1CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB1C60();
    v7 = a3(a1, &type metadata for DebugInspectionRecipe.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CB1D5C()
{
  result = qword_1EC894958;
  if (!qword_1EC894958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894958);
  }

  return result;
}

unint64_t sub_1D6CB1DB4()
{
  result = qword_1EC894960;
  if (!qword_1EC894960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894960);
  }

  return result;
}

unint64_t sub_1D6CB1E0C()
{
  result = qword_1EC894968;
  if (!qword_1EC894968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894968);
  }

  return result;
}

uint64_t sub_1D6CB1E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F04F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852138867 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684104562 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary() + 24);

  return sub_1D5D5FBC4(v3, a1);
}

BOOL _s8NewsFeed44FormatCompilerSlotDefinitionItemSetAuxiliaryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D5FB44();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D633C7DC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v18 = a1[1];
  v19 = a2[1];
  if (!v18)
  {
    if (!v19)
    {

      goto LABEL_9;
    }

LABEL_7:

    return 0;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

  v29 = v5;
  v20 = v18;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v21 = sub_1D633C7DC(v20, v19);
  v5 = v29;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v22 = *(type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary() + 24);
  v23 = *(v14 + 48);
  sub_1D5D5FBC4(a1 + v22, v17);
  sub_1D5D5FBC4(a2 + v22, &v17[v23]);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_1D5D5FBC4(v17, v12);
    if (v24(&v17[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_14;
    }

    (*(v5 + 32))(v8, &v17[v23], v4);
    sub_1D6CB267C(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
    v26 = sub_1D7261FBC();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v12, v4);
    sub_1D6CB261C(v17, sub_1D5B57CA0);
    return (v26 & 1) != 0;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
LABEL_14:
    sub_1D6CB261C(v17, sub_1D5D5FB44);
    return 0;
  }

  sub_1D6CB261C(v17, sub_1D5B57CA0);
  return 1;
}

uint64_t sub_1D6CB24F0(uint64_t a1)
{
  result = sub_1D6CB267C(&qword_1EC894970, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB2548(void *a1)
{
  a1[1] = sub_1D6CB267C(&qword_1EDF1C0A0, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  a1[2] = sub_1D6CB267C(&qword_1EDF06118, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  result = sub_1D6CB267C(&qword_1EC894978, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CB261C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CB267C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6CB26C4()
{
  v0 = sub_1D725BD1C();
  __swift_allocate_value_buffer(v0, qword_1EC9BAC88);
  __swift_project_value_buffer(v0, qword_1EC9BAC88);
  return sub_1D725BD2C();
}

uint64_t type metadata accessor for DebugFormatWorkspaceSnapshotManifest()
{
  result = qword_1EC894980;
  if (!qword_1EC894980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CB2790()
{
  sub_1D725891C();
  if (v0 <= 0x3F)
  {
    sub_1D725BD1C();
    if (v1 <= 0x3F)
    {
      sub_1D6CB2834();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6CB2834()
{
  if (!qword_1EC894990)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894990);
    }
  }
}

uint64_t sub_1D6CB2884(void *a1)
{
  v3 = v1;
  sub_1D6CB3460(0, &qword_1EC894998, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB33B8();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D725891C();
  sub_1D5CE456C(&qword_1EDF45B18, MEMORY[0x1E6969530]);
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
    v17 = 1;
    sub_1D725BD1C();
    sub_1D5CE456C(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    sub_1D726443C();
    v16 = 2;
    sub_1D726443C();
    v15 = 3;
    sub_1D726443C();
    v13[1] = *(v3 + *(v11 + 32));
    v14 = 4;
    sub_1D6CB2834();
    sub_1D6CB34C4(&qword_1EC8949A8, sub_1D6CB340C);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CB2B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = sub_1D725891C();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB3460(0, &qword_1EC8949B8, MEMORY[0x1E69E6F48]);
  v52 = v17;
  v50 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB33B8();
  v51 = v20;
  v25 = v53;
  sub_1D7264B0C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v53 = v21;
  v27 = v48;
  v59 = 0;
  sub_1D5CE456C(&qword_1EDF45B08, MEMORY[0x1E6969530]);
  v28 = v49;
  sub_1D726431C();
  v29 = *(v27 + 32);
  v49 = v14;
  v29(v24, v28);
  v58 = 1;
  sub_1D5CE456C(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v30 = v26;
  v31 = v46;
  sub_1D726431C();
  v32 = v53[5];
  v40 = *(v47 + 32);
  v41 = v24;
  v40(&v24[v32], v30, v31);
  v57 = 2;
  v33 = v45;
  v42 = 0;
  sub_1D726431C();
  v34 = v33;
  v35 = v40;
  v40(&v41[v53[6]], v34, v31);
  v56 = 3;
  sub_1D726431C();
  v35(&v41[v53[7]], v44, v31);
  sub_1D6CB2834();
  v55 = 4;
  sub_1D6CB34C4(&qword_1EC8949C0, sub_1D6CB3530);
  sub_1D726431C();
  v36 = v53[8];
  (*(v50 + 8))(v51, v52);
  v37 = v41;
  *&v41[v36] = v54;
  sub_1D6CB3584(v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6CB35E8(v37);
}

uint64_t sub_1D6CB3238()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6973726556707061;
  v4 = 0x74736566696E616DLL;
  if (v1 != 3)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x655674616D726F66;
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

uint64_t sub_1D6CB32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6CB375C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6CB3310(uint64_t a1)
{
  v2 = sub_1D6CB33B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB334C(uint64_t a1)
{
  v2 = sub_1D6CB33B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6CB33B8()
{
  result = qword_1EC8949A0;
  if (!qword_1EC8949A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949A0);
  }

  return result;
}

unint64_t sub_1D6CB340C()
{
  result = qword_1EC8949B0;
  if (!qword_1EC8949B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949B0);
  }

  return result;
}

void sub_1D6CB3460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB33B8();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifest.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6CB34C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CB2834();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CB3530()
{
  result = qword_1EC8949C8;
  if (!qword_1EC8949C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949C8);
  }

  return result;
}

uint64_t sub_1D6CB3584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CB35E8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6CB3658()
{
  result = qword_1EC8949D0;
  if (!qword_1EC8949D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949D0);
  }

  return result;
}

unint64_t sub_1D6CB36B0()
{
  result = qword_1EC8949D8;
  if (!qword_1EC8949D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949D8);
  }

  return result;
}

unint64_t sub_1D6CB3708()
{
  result = qword_1EC8949E0;
  if (!qword_1EC8949E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949E0);
  }

  return result;
}

uint64_t sub_1D6CB375C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEF6E6F6973726556 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = a1 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D6CB39AC(void *a1)
{
  sub_1D6CB4690(0, &qword_1EC894A00, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v8;
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v31 = *(v1 + 48);
  v10 = *(v1 + 56);
  v22 = *(v1 + 64);
  v23 = v10;
  v11 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = v11;
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D6CB45E8();
  sub_1D7264B5C();
  LOBYTE(v29) = 0;
  v17 = v28;
  sub_1D72643FC();
  if (!v17)
  {
    v28 = v12;
    LOBYTE(v29) = 1;
    sub_1D72643FC();
    LOBYTE(v29) = 2;
    sub_1D72643FC();
    LOBYTE(v29) = 3;
    sub_1D726440C();
    LOBYTE(v29) = 4;
    sub_1D726437C();
    v29 = v21;
    v32 = 5;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    sub_1D72643BC();
    v29 = v20;
    v30 = v28;
    v32 = 6;
    sub_1D6CB46F4();

    sub_1D726443C();
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t sub_1D6CB3CA8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6CB4690(0, &qword_1EC8949E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CB45E8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_1D72642BC();
  v52 = v12;
  LOBYTE(v38[0]) = 1;
  *&v32 = sub_1D72642BC();
  *(&v32 + 1) = v13;
  LOBYTE(v38[0]) = 2;
  v31 = sub_1D72642BC();
  v15 = v14;
  LOBYTE(v38[0]) = 3;
  LODWORD(v29) = sub_1D72642CC();
  LOBYTE(v38[0]) = 4;
  v28 = sub_1D726422C();
  v30 = v16;
  sub_1D5BBE0A8();
  LOBYTE(v33[0]) = 5;
  sub_1D5B99688(&qword_1EDF3C830);
  sub_1D726427C();
  v27 = v38[0];
  v49 = 6;
  sub_1D6CB463C();
  sub_1D726431C();
  v17 = v29 & 1;
  (*(v7 + 8))(v10, v6);
  v26 = *(&v50 + 1);
  v29 = v50;
  *&v33[0] = v11;
  v18 = v52;
  *(&v33[0] + 1) = v52;
  v19 = v32;
  v33[1] = v32;
  *&v34 = v31;
  *(&v34 + 1) = v15;
  LOBYTE(v35) = v17;
  *(&v35 + 1) = *v51;
  DWORD1(v35) = *&v51[3];
  v20 = v30;
  *(&v35 + 1) = v28;
  *&v36 = v30;
  *(&v36 + 1) = v27;
  v37 = v50;
  v21 = v32;
  *a2 = v33[0];
  a2[1] = v21;
  v22 = v37;
  a2[4] = v36;
  a2[5] = v22;
  v23 = v35;
  a2[2] = v34;
  a2[3] = v23;
  sub_1D66F4220(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v18;
  v39 = __PAIR128__(*(&v32 + 1), v19);
  v40 = v31;
  v41 = v15;
  v42 = v17;
  *v43 = *v51;
  *&v43[3] = *&v51[3];
  v44 = v28;
  v45 = v20;
  v46 = v27;
  v47 = v29;
  v48 = v26;
  return sub_1D66F427C(v38);
}

uint64_t sub_1D6CB423C()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C626973736F70;
  if (v1 != 5)
  {
    v3 = 0x6E656D656C456975;
  }

  v4 = 0x6465726975716572;
  if (v1 != 3)
  {
    v4 = 0x56746C7561666564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
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

uint64_t sub_1D6CB432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6CB4860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6CB4354(uint64_t a1)
{
  v2 = sub_1D6CB45E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB4390(uint64_t a1)
{
  v2 = sub_1D6CB45E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6CB4400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v22 = *(a1 + 64);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v18 = *(a2 + 56);
  v21 = *(a2 + 64);
  v23 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    if (sub_1D72646CC() & 1) == 0 || ((v6 ^ v11))
    {
      return v12 & 1;
    }
  }

  if (v22)
  {
    v12 = v23;
    if (!v21 || (v19 != v18 || v22 != v21) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = v23;
    if (v21)
    {
      goto LABEL_25;
    }
  }

  if (!v20)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v12)
  {
    if (sub_1D5BF1C0C(v20, v12))
    {
LABEL_23:
      v25[0] = v16;
      v25[1] = v17;
      v24[0] = v14;
      v24[1] = v15;

      LOBYTE(v12) = sub_1D67DBA4C(v25, v24);

      return v12 & 1;
    }

LABEL_25:
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

unint64_t sub_1D6CB45E8()
{
  result = qword_1EC8949F0;
  if (!qword_1EC8949F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949F0);
  }

  return result;
}

unint64_t sub_1D6CB463C()
{
  result = qword_1EC8949F8;
  if (!qword_1EC8949F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8949F8);
  }

  return result;
}

void sub_1D6CB4690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CB45E8();
    v7 = a3(a1, &type metadata for DebugFormatTemplateKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CB46F4()
{
  result = qword_1EC894A08;
  if (!qword_1EC894A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A08);
  }

  return result;
}

unint64_t sub_1D6CB475C()
{
  result = qword_1EC894A10;
  if (!qword_1EC894A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A10);
  }

  return result;
}

unint64_t sub_1D6CB47B4()
{
  result = qword_1EC894A18;
  if (!qword_1EC894A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A18);
  }

  return result;
}

unint64_t sub_1D6CB480C()
{
  result = qword_1EC894A20;
  if (!qword_1EC894A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A20);
  }

  return result;
}

uint64_t sub_1D6CB4860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C626973736F70 && a2 == 0xEE007365756C6156 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656D656C456975 && a2 == 0xE900000000000074)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 FormatItem.init(identifier:name:description:kind:traits:children:style:styles:selectors:options:types:accessibilityRole:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, char *a14)
{
  v19 = *a7;
  v20 = a7[1];
  v21 = *a14;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v19;
  *(a9 + 56) = v20;
  *(a9 + 64) = a8;
  result = a11;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = v21;
  return result;
}

uint64_t FormatItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatItem.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatItem.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatItem.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatItem.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5CBA110(v2, v3);
}

uint64_t FormatItem.traits.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t FormatItem.children.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t FormatItem.styles.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatItem.selectors.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t FormatItem.options.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t FormatItem.types.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t _s8NewsFeed10FormatItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v31 = *(a1 + 56);
  v32 = *(a1 + 48);
  v30 = *(a1 + 64);
  v28 = *(a1 + 72);
  v26 = *(a1 + 80);
  v24 = *(a1 + 88);
  v22 = *(a1 + 96);
  v20 = *(a1 + 104);
  v18 = *(a1 + 112);
  v16 = *(a1 + 120);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v29 = *(a2 + 64);
  v27 = *(a2 + 72);
  v25 = *(a2 + 80);
  v23 = *(a2 + 88);
  v21 = *(a2 + 96);
  v19 = *(a2 + 104);
  v17 = *(a2 + 112);
  v15 = *(a2 + 120);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (!v8 || (v3 != v9 || v5 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v35 = v32;
  v36 = v31;
  v33 = v10;
  v34 = v11;
  sub_1D5CBA110(v32, v31);
  sub_1D5CBA110(v10, v11);
  v12 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(&v35, &v33);
  sub_1D5CBA0FC(v33, v34);
  sub_1D5CBA0FC(v35, v36);
  if ((v12 & 1) == 0 || (sub_1D634F2BC(v30, v29) & 1) == 0 || (sub_1D633E44C(v28, v27) & 1) == 0)
  {
    return 0;
  }

  if (v26)
  {
    if (!v25)
    {
      return 0;
    }

    type metadata accessor for FormatItemNodeStyle(0);

    v13 = static FormatItemNodeStyle.== infix(_:_:)(v26, v25);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if ((sub_1D633E5BC(v24, v23) & 1) == 0 || (sub_1D5BFC390(v22, v21) & 1) == 0 || (sub_1D633BCCC(v20, v19) & 1) == 0 || (sub_1D63491BC(v18, v17) & 1) == 0)
    {
      return 0;
    }

    if (v16 == 7)
    {
      if (v15 != 7)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v35) = v16;
      if (v15 == 7)
      {
        return 0;
      }

      LOBYTE(v33) = v15;
      if (!_s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v35, &v33))
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v25)
  {
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_1D6CB5184(uint64_t a1)
{
  result = sub_1D5B4AD74();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB51CC(void *a1)
{
  v3 = v1;
  sub_1D6CBA878(0, &qword_1EC894B30, sub_1D6CBA824, &type metadata for H6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBA824();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6CB9D9C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    sub_1D6CBA8E0(&qword_1EC894B38, sub_1D67490D8);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6CB5428()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D6CB5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6CB5544(uint64_t a1)
{
  v2 = sub_1D6CBA824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CB5580(uint64_t a1)
{
  v2 = sub_1D6CBA824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6CB55BC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6CBA570(a1, v6);
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

uint64_t sub_1D6CB561C()
{
  sub_1D6CB9E5C();

  return sub_1D725A24C();
}

uint64_t sub_1D6CB5698@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6CBA878(0, &qword_1EC894B08, sub_1D6CBA51C, &type metadata for HMultiLayoutItem, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6CB5754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v49 = a1;
  v50 = a3;
  v42 = sub_1D725895C();
  v6 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v13;
  v14 = type metadata accessor for GroupLayoutBindingContext();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *v3;
  v43 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v40 = type metadata accessor for GroupLayoutBindingContext;
  v20 = a1;
  v21 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3F40(v20, v21, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v13, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v39 = sub_1D725893C();
  v38 = v22;
  (*(v6 + 8))(v9, v42);
  v60 = &type metadata for H6_V1;
  v42 = sub_1D5ECE190();
  v61 = v42;
  v57[0] = v17;
  v58 = v18;
  v59 = v19;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v24;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v38;
  *v28 = v39;
  v28[1] = v29;
  sub_1D5B68374(v57, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v21, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v40);
  (*(v44 + 56))(v23 + v30, 0, 1, v45);
  v31 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v41, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v47 + 56))(v23 + v31, 0, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v32 = type metadata accessor for H6_V1.Bound();
  v33 = v50;
  v50[3] = v32;
  v33[4] = sub_1D6CB9D9C(&qword_1EC894A38, type metadata accessor for H6_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v42;
  boxed_opaque_existential_1[4] = &type metadata for H6_V1;
  boxed_opaque_existential_1[5] = v35;
  *(boxed_opaque_existential_1 + 8) = v43;
  boxed_opaque_existential_1[2] = v18;
  *(boxed_opaque_existential_1 + 24) = v19;
  sub_1D5BE3F40(v46, boxed_opaque_existential_1 + *(v32 + 24), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  result = sub_1D6C555B4(0, 0, 0, 0, 0);
  *boxed_opaque_existential_1 = v23;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = result;
  return result;
}

uint64_t sub_1D6CB5BEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(type metadata accessor for H6_V1.Bound() + 28));
  v29 = v1;
  v24 = sub_1D5FBD90C(sub_1D6CB9DE4, v28, v9);
  *&v31 = v24;
  sub_1D6CBA34C(0, &qword_1EC894A60, &type metadata for HGroupLayoutContext, MEMORY[0x1E69E62F8]);
  v11 = v10;
  sub_1D5BD4AA4(&qword_1EC894A68, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  v25 = v11;
  v12 = sub_1D7262C1C();
  v13 = *MEMORY[0x1E69D7130];
  v14 = sub_1D7259D1C();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v26 = v12;
  v27 = v2;
  sub_1D6CBA2C8(0, &qword_1EC894A70, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v15 = v33;
  v16 = MEMORY[0x1E69E62F8];
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  sub_1D5BD4AA4(&qword_1EC894A90, &qword_1EC894A60, &type metadata for HGroupLayoutContext);
  sub_1D5BD4AA4(&qword_1EC894A98, &qword_1EC894A88, &type metadata for HMultiLayoutItem);
  v22 = v32;
  v23 = v31;
  v30 = v15;
  *&v31 = v24;

  v17 = sub_1D725C00C();

  *a1 = 0;
  v18 = v23;
  *(a1 + 24) = v22;
  *(a1 + 8) = v18;
  *&v31 = v17;
  sub_1D6CBA34C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v16);
  sub_1D5BD4AA4(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v19 = sub_1D72623BC();

  v21 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  return result;
}

uint64_t sub_1D6CB6014@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v287 = a3;
  v286 = sub_1D725891C();
  v6 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v7);
  v284 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v278 = &v274 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v274 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v277 = &v274 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v274 - v25;
  sub_1D5F76E40(a1, &v320);
  if (v336)
  {
    if (v336 != 1)
    {
      v302 = v326;
      v303[0] = v327[0];
      v303[1] = v327[1];
      v304 = v328;
      v298 = v322;
      v299 = v323;
      v300 = v324;
      v301 = v325;
      v296 = v320;
      v297 = v321;
      v137 = *a2;
      sub_1D5EE5AF8(&v296, &v288);
      v138 = a2 + *(type metadata accessor for H6_V1.Bound() + 24);
      v139 = type metadata accessor for GroupLayoutContext();
      v140 = *(*&v138[*(v139 + 40)] + 16);
      v141 = *&v138[*(v139 + 32)];
      sub_1D5B68374(v140 + 16, &v305);
      sub_1D5B68374(v140 + 56, v319);
      v142 = v141 * *(v140 + 96);
      type metadata accessor for FeedLayoutStylerFactory();
      v143 = swift_allocObject();
      sub_1D5B63F14(&v305, v143 + 16);
      sub_1D5B63F14(v319, v143 + 56);
      *(v143 + 96) = v142;

      FeedLayoutStylerFactory.styler()(&v308);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v143 + 16);
      __swift_destroy_boxed_opaque_existential_1(v143 + 56);
      swift_deallocClassInstance();
      v144 = v287;
      CoverChannelViewLayout.Context.init(key:model:styler:)(v137, &v288, &v308, v287);
      result = sub_1D5EE5B54(&v296);
      *(v144 + 392) = 1;
      return result;
    }

    v275 = v12;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v294 = v334;
    v295[0] = *v335;
    *(v295 + 9) = *&v335[9];
    v290 = v330;
    v291 = v331;
    v292 = v332;
    v293 = v333;
    v288 = v328;
    v289 = v329;
    v280 = *a2;
    v27 = v280;
    v28 = a2 + *(type metadata accessor for H6_V1.Bound() + 24);
    v29 = type metadata accessor for GroupLayoutContext();
    v30 = *(*&v28[*(v29 + 40)] + 16);
    v31 = *&v28[*(v29 + 32)];
    sub_1D5B68374(v30 + 16, &v305);
    sub_1D5B68374(v30 + 56, &v316);
    v32 = v31 * *(v30 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v33 = swift_allocObject();
    sub_1D5B63F14(&v305, v33 + 16);
    sub_1D5B63F14(&v316, v33 + 56);
    *(v33 + 96) = v32;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6CBA14C(&v288, &v308, &qword_1EDF34E30, &type metadata for FeedIssue);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v33 + 16);
    __swift_destroy_boxed_opaque_existential_1(v33 + 56);
    swift_deallocClassInstance();
    v34 = v300;
    v35 = v287;
    *(v287 + 11) = v301;
    v36 = v303[0];
    *(v35 + 13) = v302;
    *(v35 + 15) = v36;
    *(v35 + 129) = *(v303 + 9);
    v37 = v296;
    *(v35 + 3) = v297;
    v38 = v299;
    *(v35 + 5) = v298;
    *(v35 + 7) = v38;
    *(v35 + 9) = v34;
    *(v35 + 1) = v37;
    v39 = v292;
    *(v35 + 29) = v293;
    v40 = v295[0];
    *(v35 + 31) = v294;
    *(v35 + 33) = v40;
    *(v35 + 273) = *(v295 + 9);
    v41 = v288;
    *(v35 + 21) = v289;
    v42 = v291;
    *(v35 + 23) = v290;
    *(v35 + 25) = v42;
    *(v35 + 27) = v39;
    *v35 = v27;
    *(v35 + 19) = v41;
    sub_1D5B68374(v319, (v35 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v43 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v44 = v43;
    v45 = v303[0];
    v43[7] = v302;
    v43[8] = v45;
    *(v43 + 137) = *(v303 + 9);
    v46 = v299;
    v43[3] = v298;
    v43[4] = v46;
    v47 = v301;
    v43[5] = v300;
    v43[6] = v47;
    v48 = v297;
    v43[1] = v296;
    v43[2] = v48;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v277 = v49;
    v50 = swift_allocObject();
    *(v50 + 2) = 0xC04E000000000000;
    v51 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v52 = sub_1D6CAFA6C();
    v53 = (*(v51 + 80))(v52);

    *&v50[*(*v50 + 120)] = v53;
    *&v50[*(*v50 + 136)] = v53;
    v54 = v53;
    v55 = v284;
    sub_1D725890C();
    v56 = *(*v50 + 128);
    v57 = v286;
    v58 = *(v285 + 32);
    v285 += 32;
    v279 = v58;
    v58(&v50[v56], v55, v286);
    v280 = objc_opt_self();
    LOBYTE(v55) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v50[qword_1EDF347F8] = v55;
    v59 = v283;
    sub_1D5DF42F8(v283, &v50[qword_1EDF347F0]);
    v60 = swift_allocObject();
    v60[2] = sub_1D5EF97AC;
    v60[3] = v44;
    v60[4] = v54;
    *(v50 + 3) = sub_1D5EF97B4;
    *(v50 + 4) = v60;
    v35[42] = v50;
    sub_1D5B68374(v319, &v316);
    v281(v59, 1, 1, v57);
    v61 = swift_allocObject();
    v62 = v303[0];
    v61[7] = v302;
    v61[8] = v62;
    *(v61 + 137) = *(v303 + 9);
    v63 = v299;
    v61[3] = v298;
    v61[4] = v63;
    v64 = v301;
    v61[5] = v300;
    v61[6] = v64;
    v65 = v297;
    v61[1] = v296;
    v61[2] = v65;
    v66 = swift_allocObject();
    *(v66 + 2) = 0xC04E000000000000;
    v67 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v68 = sub_1D6CAFA6C();
    v69 = (*(v67 + 88))(v68);

    *&v66[*(*v66 + 120)] = v69;
    *&v66[*(*v66 + 136)] = v69;
    v70 = v69;
    v71 = v284;
    sub_1D725890C();
    v72 = v286;
    v279(&v66[*(*v66 + 128)], v71, v286);
    LOBYTE(v71) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v66[qword_1EDF347F8] = v71;
    sub_1D5DF42F8(v283, &v66[qword_1EDF347F0]);
    v73 = swift_allocObject();
    v73[2] = sub_1D5EF97C0;
    v73[3] = v61;
    v73[4] = v70;
    *(v66 + 3) = sub_1D5EF9FF8;
    *(v66 + 4) = v73;
    v35[43] = v66;
    sub_1D5B68374(v319, &v305);
    v281(v278, 1, 1, v72);
    v74 = swift_allocObject();
    v75 = v303[0];
    v74[7] = v302;
    v74[8] = v75;
    *(v74 + 137) = *(v303 + 9);
    v76 = v299;
    v74[3] = v298;
    v74[4] = v76;
    v77 = v301;
    v74[5] = v300;
    v74[6] = v77;
    v78 = v297;
    v74[1] = v296;
    v74[2] = v78;
    v79 = swift_allocObject();
    *(v79 + 2) = 0xC04E000000000000;
    v81 = v306;
    v80 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v146 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v147 = [v146 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v148 = sub_1D726213C();
    v150 = v149;

    v151 = (*(v80 + 96))(v148, v150, v81, v80);

    *&v79[*(*v79 + 120)] = v151;
    *&v79[*(*v79 + 136)] = v151;
    v152 = v151;
    v153 = v284;
    sub_1D725890C();
    v154 = v153;
    v155 = v286;
    v279(&v79[*(*v79 + 128)], v154, v286);
    LOBYTE(v150) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v79[qword_1EDF347F8] = v150;
    sub_1D5DF42F8(v278, &v79[qword_1EDF347F0]);
    v156 = swift_allocObject();
    v156[2] = sub_1D5EF97C8;
    v156[3] = v74;
    v156[4] = v152;
    *(v79 + 3) = sub_1D5EF9FF8;
    *(v79 + 4) = v156;
    v287[44] = v79;
    sub_1D5B68374(v319, &v305);
    v281(v275, 1, 1, v155);
    v157 = swift_allocObject();
    v158 = v303[0];
    v157[7] = v302;
    v157[8] = v158;
    *(v157 + 137) = *(v303 + 9);
    v159 = v299;
    v157[3] = v298;
    v157[4] = v159;
    v160 = v301;
    v157[5] = v300;
    v157[6] = v160;
    v161 = v297;
    v157[1] = v296;
    v157[2] = v161;
    v162 = swift_allocObject();
    *(v162 + 2) = 0xC04E000000000000;
    v163 = BYTE8(v297);
    v164 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v163 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v165 = sub_1D6CAFB7C();
      v166 = (*(v164 + 96))(v165);
    }

    else
    {
      LOBYTE(v316) = v163;
      sub_1D5ECF2C4(&v296, &v308);
      v188 = sub_1D6CAFB7C();
      v166 = (*(v164 + 104))(v188);
    }

    v189 = v166;

    *&v162[*(*v162 + 120)] = v189;
    *&v162[*(*v162 + 136)] = v189;
    v190 = v189;
    v191 = v284;
    sub_1D725890C();
    v192 = v286;
    v279(&v162[*(*v162 + 128)], v191, v286);
    LOBYTE(v191) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v162[qword_1EDF347F8] = v191;
    sub_1D5DF42F8(v275, &v162[qword_1EDF347F0]);
    v193 = swift_allocObject();
    v193[2] = sub_1D5EF97D0;
    v193[3] = v157;
    v193[4] = v190;
    *(v162 + 3) = sub_1D5EF9FF8;
    *(v162 + 4) = v193;
    v287[45] = v162;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v192);
    v194 = swift_allocObject();
    *(v194 + 2) = 0xC04E000000000000;
    v195 = *(&v309 + 1);
    v196 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v278 = ObjCClassFromMetadata;
    v275 = objc_opt_self();
    v198 = [v275 bundleForClass_];
    sub_1D725811C();

    v199 = sub_1D726213C();
    v201 = v200;

    v202 = (*(v196 + 112))(v199, v201, v195, v196);

    *&v194[*(*v194 + 120)] = v202;
    *&v194[*(*v194 + 136)] = v202;
    v203 = v202;
    v204 = v284;
    sub_1D725890C();
    v205 = v286;
    v279(&v194[*(*v194 + 128)], v204, v286);
    LOBYTE(v204) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v194[qword_1EDF347F8] = v204;
    v206 = v283;
    sub_1D5DF42F8(v283, &v194[qword_1EDF347F0]);
    v207 = swift_allocObject();
    v207[2] = sub_1D6EAD6D0;
    v207[3] = 0;
    v207[4] = v203;
    *(v194 + 3) = sub_1D5EF9FF8;
    *(v194 + 4) = v207;
    v287[46] = v194;
    sub_1D5B68374(v319, &v308);
    v208 = v205;
    v281(v206, 1, 1, v205);
    v209 = swift_allocObject();
    *(v209 + 2) = 0xC04E000000000000;
    v210 = *(&v309 + 1);
    v211 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v212 = [v275 bundleForClass_];
    sub_1D725811C();

    v213 = sub_1D726213C();
    v215 = v214;

    v216 = (*(v211 + 120))(v213, v215, v210, v211);

    *&v209[*(*v209 + 120)] = v216;
    *&v209[*(*v209 + 136)] = v216;
    v217 = v216;
    v218 = v284;
    sub_1D725890C();
    v219 = v208;
    v220 = v208;
    v221 = v279;
    v279(&v209[*(*v209 + 128)], v218, v220);
    LOBYTE(v213) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v209[qword_1EDF347F8] = v213;
    v222 = v283;
    sub_1D5DF42F8(v283, &v209[qword_1EDF347F0]);
    v223 = swift_allocObject();
    v223[2] = sub_1D6EAD7F8;
    v223[3] = 0;
    v223[4] = v217;
    *(v209 + 3) = sub_1D5EF9FF8;
    *(v209 + 4) = v223;
    v287[47] = v209;
    sub_1D5B68374(v319, &v305);
    v281(v222, 1, 1, v219);
    v224 = swift_allocObject();
    v225 = v303[0];
    v224[7] = v302;
    v224[8] = v225;
    *(v224 + 137) = *(v303 + 9);
    v226 = v299;
    v224[3] = v298;
    v224[4] = v226;
    v227 = v301;
    v224[5] = v300;
    v224[6] = v227;
    v228 = v297;
    v224[1] = v296;
    v224[2] = v228;
    sub_1D5EF97E0();
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v230 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v230;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v221(&v229[*(*v229 + 128)], v218, v219);
    LOBYTE(v222) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v222;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v231 = swift_allocObject();
    *(v231 + 16) = sub_1D5EF97D8;
    *(v231 + 24) = v224;
    *(v231 + 32) = v230;
    *(v229 + 3) = sub_1D5EF98AC;
    *(v229 + 4) = v231;
    sub_1D5ECF320(&v296);
    sub_1D6CBA1CC(&v288, &qword_1EDF34E30, &type metadata for FeedIssue);
  }

  else
  {
    v275 = v19;
    v276 = v3;
    v302 = v326;
    v303[0] = v327[0];
    *(v303 + 9) = *(v327 + 9);
    v298 = v322;
    v299 = v323;
    v300 = v324;
    v301 = v325;
    v296 = v320;
    v297 = v321;
    v82 = *a2;
    sub_1D5D62850(&v288);
    v83 = a2 + *(type metadata accessor for H6_V1.Bound() + 24);
    v84 = type metadata accessor for GroupLayoutContext();
    v85 = *(*&v83[*(v84 + 40)] + 16);
    v86 = *&v83[*(v84 + 32)];
    sub_1D5B68374(v85 + 16, &v305);
    sub_1D5B68374(v85 + 56, &v316);
    v87 = v86 * *(v85 + 96);
    type metadata accessor for FeedLayoutStylerFactory();
    v88 = swift_allocObject();
    sub_1D5B63F14(&v305, v88 + 16);
    sub_1D5B63F14(&v316, v88 + 56);
    *(v88 + 96) = v87;
    sub_1D5ECF2C4(&v296, &v308);
    FeedLayoutStylerFactory.styler()(v319);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v88 + 16);
    __swift_destroy_boxed_opaque_existential_1(v88 + 56);
    swift_deallocClassInstance();
    v89 = v300;
    v90 = v287;
    *(v287 + 11) = v301;
    v91 = v303[0];
    *(v90 + 13) = v302;
    *(v90 + 15) = v91;
    *(v90 + 129) = *(v303 + 9);
    v92 = v296;
    *(v90 + 3) = v297;
    v93 = v299;
    *(v90 + 5) = v298;
    *(v90 + 7) = v93;
    *(v90 + 9) = v89;
    *(v90 + 1) = v92;
    v94 = v292;
    *(v90 + 29) = v293;
    v95 = v295[0];
    *(v90 + 31) = v294;
    *(v90 + 33) = v95;
    *(v90 + 273) = *(v295 + 9);
    v96 = v288;
    *(v90 + 21) = v289;
    v97 = v291;
    *(v90 + 23) = v290;
    *(v90 + 25) = v97;
    *(v90 + 27) = v94;
    *v90 = v82;
    *(v90 + 19) = v96;
    sub_1D5B68374(v319, (v90 + 37));
    sub_1D5B68374(v319, &v316);
    v281 = *(v6 + 56);
    v282 = v6 + 56;
    v281(v26, 1, 1, v286);
    v98 = swift_allocObject();
    v285 = v6;
    v283 = v26;
    v99 = v98;
    v100 = v303[0];
    v98[7] = v302;
    v98[8] = v100;
    *(v98 + 137) = *(v303 + 9);
    v101 = v299;
    v98[3] = v298;
    v98[4] = v101;
    v102 = v301;
    v98[5] = v300;
    v98[6] = v102;
    v103 = v297;
    v98[1] = v296;
    v98[2] = v103;
    sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
    v278 = v104;
    v105 = swift_allocObject();
    *(v105 + 2) = 0xC04E000000000000;
    v106 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    sub_1D5ECF2C4(&v296, &v305);

    v107 = sub_1D6CAFA6C();
    v108 = (*(v106 + 80))(v107);

    *&v105[*(*v105 + 120)] = v108;
    *&v105[*(*v105 + 136)] = v108;
    v109 = v108;
    v110 = v284;
    sub_1D725890C();
    v111 = *(*v105 + 128);
    v112 = v286;
    v113 = *(v285 + 32);
    v285 += 32;
    v279 = v113;
    v113(&v105[v111], v110, v286);
    v280 = objc_opt_self();
    LOBYTE(v110) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v105[qword_1EDF347F8] = v110;
    v114 = v283;
    sub_1D5DF42F8(v283, &v105[qword_1EDF347F0]);
    v115 = swift_allocObject();
    v115[2] = sub_1D6CBAA8C;
    v115[3] = v99;
    v115[4] = v109;
    *(v105 + 3) = sub_1D5EF9FF8;
    *(v105 + 4) = v115;
    v90[42] = v105;
    sub_1D5B68374(v319, &v316);
    v281(v114, 1, 1, v112);
    v116 = swift_allocObject();
    v117 = v303[0];
    v116[7] = v302;
    v116[8] = v117;
    *(v116 + 137) = *(v303 + 9);
    v118 = v299;
    v116[3] = v298;
    v116[4] = v118;
    v119 = v301;
    v116[5] = v300;
    v116[6] = v119;
    v120 = v297;
    v116[1] = v296;
    v116[2] = v120;
    v121 = swift_allocObject();
    *(v121 + 2) = 0xC04E000000000000;
    v122 = v318;
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v314 = v302;
    v315[0] = v303[0];
    *(v315 + 9) = *(v303 + 9);
    v310 = v298;
    v311 = v299;
    v312 = v300;
    v313 = v301;
    v308 = v296;
    v309 = v297;
    sub_1D5ECF2C4(&v296, &v305);
    v123 = sub_1D6CAFA6C();
    v124 = (*(v122 + 88))(v123);

    *&v121[*(*v121 + 120)] = v124;
    *&v121[*(*v121 + 136)] = v124;
    v125 = v124;
    v126 = v284;
    sub_1D725890C();
    v127 = v286;
    v279(&v121[*(*v121 + 128)], v126, v286);
    LOBYTE(v126) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v316);
    v121[qword_1EDF347F8] = v126;
    sub_1D5DF42F8(v283, &v121[qword_1EDF347F0]);
    v128 = swift_allocObject();
    v128[2] = sub_1D6CBAA90;
    v128[3] = v116;
    v128[4] = v125;
    *(v121 + 3) = sub_1D5EF9FF8;
    *(v121 + 4) = v128;
    v90[43] = v121;
    sub_1D5B68374(v319, &v305);
    v281(v277, 1, 1, v127);
    v129 = swift_allocObject();
    v130 = v303[0];
    v129[7] = v302;
    v129[8] = v130;
    *(v129 + 137) = *(v303 + 9);
    v131 = v299;
    v129[3] = v298;
    v129[4] = v131;
    v132 = v301;
    v129[5] = v300;
    v129[6] = v132;
    v133 = v297;
    v129[1] = v296;
    v129[2] = v133;
    v134 = swift_allocObject();
    *(v134 + 2) = 0xC04E000000000000;
    v135 = v306;
    v136 = v307;
    v274 = __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v301 == 1 || !v302)
    {
      v167 = v296;
      sub_1D5ECF2C4(&v296, &v308);
      v168 = [v167 coverDate];
      sub_1D726207C();
    }

    else
    {
      sub_1D5ECF2C4(&v296, &v308);
    }

    v169 = v275;
    v170 = sub_1D726213C();
    v172 = v171;

    v173 = (*(v136 + 96))(v170, v172, v135, v136);

    *&v134[*(*v134 + 120)] = v173;
    *&v134[*(*v134 + 136)] = v173;
    v174 = v173;
    v175 = v284;
    sub_1D725890C();
    v176 = v286;
    v279(&v134[*(*v134 + 128)], v175, v286);
    LOBYTE(v175) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v134[qword_1EDF347F8] = v175;
    sub_1D5DF42F8(v277, &v134[qword_1EDF347F0]);
    v177 = swift_allocObject();
    v177[2] = sub_1D6CBAA94;
    v177[3] = v129;
    v177[4] = v174;
    *(v134 + 3) = sub_1D5EF9FF8;
    *(v134 + 4) = v177;
    v287[44] = v134;
    sub_1D5B68374(v319, &v305);
    v281(v169, 1, 1, v176);
    v178 = swift_allocObject();
    v179 = v303[0];
    v178[7] = v302;
    v178[8] = v179;
    *(v178 + 137) = *(v303 + 9);
    v180 = v299;
    v178[3] = v298;
    v178[4] = v180;
    v181 = v301;
    v178[5] = v300;
    v178[6] = v181;
    v182 = v297;
    v178[1] = v296;
    v178[2] = v182;
    v183 = swift_allocObject();
    *(v183 + 2) = 0xC04E000000000000;
    v184 = BYTE8(v297);
    v185 = v307;
    __swift_project_boxed_opaque_existential_1(&v305, v306);
    if (v184 == 2)
    {
      LOBYTE(v316) = 2;
      sub_1D5ECF2C4(&v296, &v308);
      v186 = sub_1D6CAFB7C();
      v187 = (*(v185 + 96))(v186);
    }

    else
    {
      LOBYTE(v316) = v184;
      sub_1D5ECF2C4(&v296, &v308);
      v232 = sub_1D6CAFB7C();
      v187 = (*(v185 + 104))(v232);
    }

    v233 = v187;

    *&v183[*(*v183 + 120)] = v233;
    *&v183[*(*v183 + 136)] = v233;
    v234 = v233;
    v235 = v284;
    sub_1D725890C();
    v236 = v286;
    v279(&v183[*(*v183 + 128)], v235, v286);
    LOBYTE(v235) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v183[qword_1EDF347F8] = v235;
    sub_1D5DF42F8(v275, &v183[qword_1EDF347F0]);
    v237 = swift_allocObject();
    v237[2] = sub_1D6CBAA98;
    v237[3] = v178;
    v237[4] = v234;
    *(v183 + 3) = sub_1D5EF9FF8;
    *(v183 + 4) = v237;
    v287[45] = v183;
    sub_1D5B68374(v319, &v308);
    v281(v283, 1, 1, v236);
    v238 = swift_allocObject();
    *(v238 + 2) = 0xC04E000000000000;
    v239 = *(&v309 + 1);
    v240 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    type metadata accessor for Localized();
    v241 = swift_getObjCClassFromMetadata();
    v277 = v241;
    v275 = objc_opt_self();
    v242 = [v275 bundleForClass_];
    sub_1D725811C();

    v243 = sub_1D726213C();
    v245 = v244;

    v246 = (*(v240 + 112))(v243, v245, v239, v240);

    *&v238[*(*v238 + 120)] = v246;
    *&v238[*(*v238 + 136)] = v246;
    v247 = v246;
    v248 = v284;
    sub_1D725890C();
    v249 = v286;
    v279(&v238[*(*v238 + 128)], v248, v286);
    LOBYTE(v248) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v238[qword_1EDF347F8] = v248;
    v250 = v283;
    sub_1D5DF42F8(v283, &v238[qword_1EDF347F0]);
    v251 = swift_allocObject();
    v251[2] = sub_1D6EAD6D0;
    v251[3] = 0;
    v251[4] = v247;
    *(v238 + 3) = sub_1D5EF9FF8;
    *(v238 + 4) = v251;
    v287[46] = v238;
    sub_1D5B68374(v319, &v308);
    v281(v250, 1, 1, v249);
    v252 = swift_allocObject();
    *(v252 + 2) = 0xC04E000000000000;
    v253 = *(&v309 + 1);
    v254 = v310;
    __swift_project_boxed_opaque_existential_1(&v308, *(&v309 + 1));
    v255 = [v275 bundleForClass_];
    sub_1D725811C();

    v256 = sub_1D726213C();
    v258 = v257;

    v259 = (*(v254 + 120))(v256, v258, v253, v254);

    *&v252[*(*v252 + 120)] = v259;
    *&v252[*(*v252 + 136)] = v259;
    v260 = v259;
    v261 = v284;
    sub_1D725890C();
    v262 = v286;
    v263 = v279;
    v279(&v252[*(*v252 + 128)], v261, v286);
    LOBYTE(v256) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v308);
    v252[qword_1EDF347F8] = v256;
    v264 = v283;
    sub_1D5DF42F8(v283, &v252[qword_1EDF347F0]);
    v265 = swift_allocObject();
    v265[2] = sub_1D6EAD7F8;
    v265[3] = 0;
    v265[4] = v260;
    *(v252 + 3) = sub_1D5EF9FF8;
    *(v252 + 4) = v265;
    v287[47] = v252;
    sub_1D5B68374(v319, &v305);
    v281(v264, 1, 1, v262);
    v266 = swift_allocObject();
    v267 = v303[0];
    v266[7] = v302;
    v266[8] = v267;
    *(v266 + 137) = *(v303 + 9);
    v268 = v299;
    v266[3] = v298;
    v266[4] = v268;
    v269 = v301;
    v266[5] = v300;
    v266[6] = v269;
    v270 = v297;
    v266[1] = v296;
    v266[2] = v270;
    sub_1D5EF97E0();
    v229 = swift_allocObject();
    *(v229 + 2) = 0xC04E000000000000;
    sub_1D5ECF2C4(&v296, &v308);
    sub_1D6EAD930(&v296, &v308);
    sub_1D5ECF320(&v296);
    v271 = v308;
    *&v229[*(*v229 + 120)] = v308;
    *&v229[*(*v229 + 136)] = v271;
    swift_bridgeObjectRetain_n();
    sub_1D725890C();
    v263(&v229[*(*v229 + 128)], v261, v262);
    LOBYTE(v261) = [v280 isMainThread];
    __swift_destroy_boxed_opaque_existential_1(&v305);
    v229[qword_1EDF347F8] = v261;
    sub_1D5DF42F8(v283, &v229[qword_1EDF347F0]);
    v272 = swift_allocObject();
    *(v272 + 16) = sub_1D6CBAA9C;
    *(v272 + 24) = v266;
    *(v272 + 32) = v271;
    *(v229 + 3) = sub_1D6CBAA88;
    *(v229 + 4) = v272;
    sub_1D5ECF320(&v296);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v319);
  v273 = v287;
  v287[48] = v229;
  *(v273 + 392) = 0;
  return result;
}

void sub_1D6CB85A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  sub_1D6CBA878(0, &qword_1EC894AA8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D74B0]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    v27 = *MEMORY[0x1E69D7460];
    v26 = *(v8 + 104);
    v25 = *MEMORY[0x1E69D7098];
    v29 = v8 + 104;
    v24 = (v8 + 8);
    v23 = xmmword_1D7273AE0;
    v28 = a1;
    v22 = v6;
    do
    {
      v12 += 8;
      v31 = a1;
      v26(v10, v27, v6);
      sub_1D6CBA070();
      sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
      v14 = v13;
      v15 = *(v13 - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v23;
      v18 = (*(v15 + 104))(v17 + v16, v25, v14);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D7150];
      sub_1D6CBA2C8(0, &qword_1EC894AC0, MEMORY[0x1E69D7150]);
      sub_1D6CBA108(&qword_1EC894AC8, &qword_1EC894AC0, v20);

      a1 = v28;
      v6 = v22;
      sub_1D72599EC();

      (*v24)(v10, v6);
      --v11;
    }

    while (v11);
  }
}

void sub_1D6CB8904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v118 = a1;
  v102 = sub_1D725A34C();
  v4 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v5);
  v105 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6CBA878(0, &qword_1EC894AA8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D74B0]);
  v123 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v117 = &v96[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v96[-v13];
  v14 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a2 + 16);
  if (!v19)
  {
    return;
  }

  v20 = 0;
  v21 = a2 + 32;
  v109 = *MEMORY[0x1E69D7378];
  v108 = (v16 + 104);
  v116 = *MEMORY[0x1E69D7200];
  v22 = *MEMORY[0x1E69D7208];
  v114 = *MEMORY[0x1E69D7468];
  v115 = v22;
  v113 = (v8 + 104);
  v112 = *MEMORY[0x1E69D7050];
  v111 = *MEMORY[0x1E69D7080];
  v107 = (v8 + 8);
  v98 = (v4 + 8);
  v99 = (v4 + 104);
  v97 = *MEMORY[0x1E69D7350];
  v100 = *MEMORY[0x1E69D7340];
  v110 = xmmword_1D7273AE0;
  v101 = v14;
  v119 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  while (1)
  {
    v120 = v21;
    v121 = v19;
    sub_1D6CB9EB0(v21, v133);
    v122 = v20;
    if ((v134 & 1) == 0)
    {
      memcpy(v124, v133, 0x188uLL);
      if ((BYTE8(v124[3]) & 0x10) != 0)
      {
        v23 = v104 + *(type metadata accessor for H6_V1.Bound() + 24);
        v24 = type metadata accessor for GroupLayoutContext();
        v25 = *(*(v23 + *(v24 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v24, v26);
        *&v96[-32] = v124;
        *&v96[-24] = v25;
        v94 = v28;
      }

      else
      {
        v73 = v104 + *(type metadata accessor for H6_V1.Bound() + 24);
        v74 = type metadata accessor for GroupLayoutContext();
        v75 = *(*(v73 + *(v74 + 40)) + 24);
        v27 = MEMORY[0x1EEE9AC00](v74, v76);
        v94 = v124;
        v95 = v75;
      }

      (*v108)(v18, v109, v14, v27);
      sub_1D5EF94BC();
      swift_allocObject();

      v106 = sub_1D725A4CC();

      v125 = v118;
      swift_getKeyPath();
      sub_1D5EF9444();
      v30 = v29;
      v31 = swift_allocBox();
      v33 = v32;
      v34 = *(v30 + 48);
      sub_1D725993C();
      v35 = swift_allocBox();
      sub_1D725992C();
      *v33 = v35;
      v36 = sub_1D725A09C();
      v37 = *(*(v36 - 8) + 104);
      v37(v33, v116, v36);
      v37((v33 + v34), v115, v36);
      v38 = v103;
      *v103 = v31;
      (*v113)(v38, v114, v123);
      sub_1D6CBA070();
      sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
      v40 = v39;
      v41 = *(v39 - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v110;
      sub_1D6CBA878(0, &qword_1EC894AD0, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v44 - 8) + 104))(v43 + v42, v112, v44);
      (*(v41 + 104))(v43 + v42, v111, v40);
      v45 = MEMORY[0x1E69D6F38];
      sub_1D6CBA2C8(0, &qword_1EC894AD8, MEMORY[0x1E69D6F38]);
      v47 = v46;
      v48 = sub_1D6CBA108(&qword_1EC894AE0, &qword_1EC894AD8, v45);
      v94 = v47;
      v95 = v48;
      v20 = v122;
      sub_1D7259B0C();

      (*v107)(v38, v123);
      sub_1D5EF93F0(v124);
      v14 = v101;
      goto LABEL_5;
    }

    v124[12] = *&v133[192];
    v124[13] = *&v133[208];
    v124[14] = *&v133[224];
    *&v124[15] = *&v133[240];
    v124[8] = *&v133[128];
    v124[9] = *&v133[144];
    v124[10] = *&v133[160];
    v124[11] = *&v133[176];
    v124[4] = *&v133[64];
    v124[5] = *&v133[80];
    v124[6] = *&v133[96];
    v124[7] = *&v133[112];
    v124[0] = *v133;
    v124[1] = *&v133[16];
    v124[2] = *&v133[32];
    v124[3] = *&v133[48];
    v132 = v118;
    swift_getKeyPath();
    sub_1D5EF9444();
    v50 = v49;
    v51 = swift_allocBox();
    v53 = v52;
    v54 = *(v50 + 48);
    sub_1D725993C();
    v55 = swift_allocBox();
    sub_1D725992C();
    *v53 = v55;
    v56 = sub_1D725A09C();
    v57 = *(*(v56 - 8) + 104);
    v57(v53, v116, v56);
    v57((v53 + v54), v115, v56);
    *v117 = v51;
    (*v113)();
    sub_1D6CBA070();
    sub_1D6CBA878(0, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
    v59 = v58;
    v60 = *(v58 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v110;
    sub_1D6CBA878(0, &qword_1EC894AD0, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D7078]);
    (*(*(v63 - 8) + 104))(v62 + v61, v112, v63);
    (*(v60 + 104))(v62 + v61, v111, v59);
    v64 = *(&v124[11] + 1);
    v65 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v66 = (*(v65 + 48))(v64, v65);
    v67 = *(&v124[11] + 1);
    v68 = *&v124[12];
    __swift_project_boxed_opaque_existential_1(&v124[10], *(&v124[11] + 1));
    v69 = (*(v68 + 56))(v67, v68);
    sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
    if (v126 == 1)
    {
      v70 = &v125;
      v71 = &qword_1EDF13058;
      v72 = &type metadata for FeedTag.Overrides;
LABEL_18:
      sub_1D6CBA1CC(v70, v71, v72);
      v78 = v100;
      v20 = v122;
      goto LABEL_19;
    }

    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v70 = v128;
      v71 = &unk_1EC880A80;
      v72 = &type metadata for FeedTag.Overrides.Image;
      goto LABEL_18;
    }

    v77 = v131;
    sub_1D5EED4FC(v128);
    v78 = v100;
    v20 = v122;
    if ((v77 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v81 = v105;
    v82 = v102;
    v83 = (*v99)(v105, v78, v102);
    v85 = MEMORY[0x1EEE9AC00](v83, v84);
    *&v96[-32] = v81;
    *&v96[-24] = v66 + v69 + v69;
    v94 = v124;
    (*v108)(v119, v109, v14, v85);
    sub_1D6CBA24C();
    swift_allocObject();
    sub_1D725A4CC();
    (*v98)(v81, v82);
    v86 = MEMORY[0x1E69D6F38];
    sub_1D6CBA2C8(0, &qword_1EC894AD8, MEMORY[0x1E69D6F38]);
    v88 = v87;
    v89 = sub_1D6CBA108(&qword_1EC894AE0, &qword_1EC894AD8, v86);
    v94 = v88;
    v95 = v89;
    v90 = v117;
    sub_1D7259B0C();

    (*v107)(v90, v123);
    sub_1D6CB9F0C(v124);
LABEL_5:
    v21 = v120 + 400;
    v19 = v121 - 1;
    v18 = v119;
    if (v121 == 1)
    {
      return;
    }
  }

  sub_1D6CBA14C(&v124[5] + 8, &v125, &qword_1EDF13058, &type metadata for FeedTag.Overrides);
  if (v126 != 1)
  {
    sub_1D6CBA14C(v127, v128, &unk_1EC880A80, &type metadata for FeedTag.Overrides.Image);
    sub_1D5EED280(&v125);
    if (!v129)
    {
      v91 = &unk_1EC880A80;
      v92 = &type metadata for FeedTag.Overrides.Image;
      v93 = v128;
      goto LABEL_23;
    }

    v79 = v130;
    v80 = v131;
    sub_1D5EED4FC(v128);
    if (v80)
    {
      goto LABEL_24;
    }

    *v105 = v79;
    v78 = v97;
    goto LABEL_19;
  }

  v91 = &qword_1EDF13058;
  v92 = &type metadata for FeedTag.Overrides;
  v93 = &v125;
LABEL_23:
  sub_1D6CBA1CC(v93, v91, v92);
LABEL_24:
  __break(1u);
}

void *sub_1D6CB9734@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x180uLL);
  sub_1D674928C(__dst);
  return memcpy(a2, __dst, 0x181uLL);
}

void *sub_1D6CB9794@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  sub_1D6749280(v10);
  return memcpy(a2, v10, 0x181uLL);
}

uint64_t sub_1D6CB9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CB9EB0(a2, v41);
  memcpy(v42, a3, sizeof(v42));
  if ((v41[392] & 1) == 0)
  {
    sub_1D6CB9EB0(v41, v39);
    memcpy(v40, a3, 0x181uLL);
    if (sub_1D67480B8(v40) != 1)
    {
      v37 = nullsub_1();
      v38 = swift_allocObject();
      memcpy((v38 + 16), v39, 0x188uLL);
      memcpy((v38 + 408), v37, 0x180uLL);
      *(v38 + 792) = a1;
      v31 = v38 | 0x5000000000000000;
      goto LABEL_9;
    }

    nullsub_1();
    sub_1D5EF93F0(v39);
LABEL_7:
    v32 = swift_allocObject();
    sub_1D725894C();
    v33 = sub_1D725893C();
    v35 = v34;
    (*(v9 + 8))(v12, v8);
    *(v32 + 16) = v33;
    *(v32 + 24) = v35;
    *a4 = v32;
    return sub_1D6CB9F60(v41);
  }

  sub_1D6CB9EB0(v41, v39);
  memcpy(v40, a3, 0x181uLL);
  if (sub_1D67480B8(v40) != 1)
  {
    nullsub_1();
    sub_1D6CB9F0C(v39);
    goto LABEL_7;
  }

  v13 = nullsub_1();
  v14 = swift_allocObject();
  v15 = v39[13];
  *(v14 + 208) = v39[12];
  *(v14 + 224) = v15;
  *(v14 + 240) = v39[14];
  *(v14 + 256) = *&v39[15];
  v16 = v39[9];
  *(v14 + 144) = v39[8];
  *(v14 + 160) = v16;
  v17 = v39[11];
  *(v14 + 176) = v39[10];
  *(v14 + 192) = v17;
  v18 = v39[5];
  *(v14 + 80) = v39[4];
  *(v14 + 96) = v18;
  v19 = v39[7];
  *(v14 + 112) = v39[6];
  *(v14 + 128) = v19;
  v20 = v39[1];
  *(v14 + 16) = v39[0];
  *(v14 + 32) = v20;
  v21 = v39[3];
  *(v14 + 48) = v39[2];
  *(v14 + 64) = v21;
  v22 = *v13;
  v23 = v13[1];
  v24 = v13[3];
  *(v14 + 296) = v13[2];
  *(v14 + 312) = v24;
  *(v14 + 264) = v22;
  *(v14 + 280) = v23;
  v25 = v13[4];
  v26 = v13[5];
  v27 = v13[7];
  *(v14 + 360) = v13[6];
  *(v14 + 376) = v27;
  *(v14 + 328) = v25;
  *(v14 + 344) = v26;
  v28 = v13[8];
  v29 = v13[9];
  v30 = v13[11];
  *(v14 + 424) = v13[10];
  *(v14 + 440) = v30;
  *(v14 + 392) = v28;
  *(v14 + 408) = v29;
  *(v14 + 456) = a1;
  v31 = v14 | 0x6000000000000000;
LABEL_9:
  *a4 = v31;
  return sub_1D6CBA01C(v41);
}

unint64_t sub_1D6CB9B20(uint64_t a1)
{
  *(a1 + 8) = sub_1D6CB9B50();
  result = sub_1D6CB9BA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6CB9B50()
{
  result = qword_1EC894A28;
  if (!qword_1EC894A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A28);
  }

  return result;
}

unint64_t sub_1D6CB9BA4()
{
  result = qword_1EC894A30;
  if (!qword_1EC894A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A30);
  }

  return result;
}

uint64_t type metadata accessor for H6_V1.Bound()
{
  result = qword_1EC894A40;
  if (!qword_1EC894A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CB9C6C()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D6CBA34C(319, &qword_1EC894A50, &type metadata for FeedCatalogItem, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6CB9D44(uint64_t a1)
{
  result = sub_1D6CB9D9C(&qword_1EC894A58, type metadata accessor for H6_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CB9D9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6CB9E08()
{
  result = qword_1EC894A78;
  if (!qword_1EC894A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A78);
  }

  return result;
}

unint64_t sub_1D6CB9E5C()
{
  result = qword_1EC894A80;
  if (!qword_1EC894A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894A80);
  }

  return result;
}

uint64_t sub_1D6CB9F60(uint64_t a1)
{
  sub_1D6CB9FBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6CB9FBC()
{
  if (!qword_1EC894AA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC894AA0);
    }
  }
}

void sub_1D6CBA070()
{
  if (!qword_1EC894AB0)
  {
    sub_1D6CBA878(255, &qword_1EC894AB8, sub_1D6CB9E08, &type metadata for H6_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894AB0);
    }
  }
}

uint64_t sub_1D6CBA108(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBA2C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CBA14C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6CBA34C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6CBA1CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6CBA34C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6CBA24C()
{
  if (!qword_1EC883CC0)
  {
    sub_1D60F9A08();
    sub_1D60F9A5C();
    v0 = sub_1D725A4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC883CC0);
    }
  }
}

void sub_1D6CBA2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for H6_V1.Layout;
    v8[1] = &type metadata for H6_V1.Layout.Attributes;
    v8[2] = sub_1D6CB9E08();
    v8[3] = sub_1D6CB9E5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6CBA34C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6CBA3C0()
{
  result = qword_1EC894AE8;
  if (!qword_1EC894AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AE8);
  }

  return result;
}

unint64_t sub_1D6CBA418()
{
  result = qword_1EC894AF0;
  if (!qword_1EC894AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AF0);
  }

  return result;
}

unint64_t sub_1D6CBA470()
{
  result = qword_1EC894AF8;
  if (!qword_1EC894AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894AF8);
  }

  return result;
}

unint64_t sub_1D6CBA4C8()
{
  result = qword_1EC894B00;
  if (!qword_1EC894B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B00);
  }

  return result;
}

unint64_t sub_1D6CBA51C()
{
  result = qword_1EC894B10;
  if (!qword_1EC894B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B10);
  }

  return result;
}

uint64_t sub_1D6CBA570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6CBA878(0, &qword_1EC894B18, sub_1D6CBA824, &type metadata for H6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBA824();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6CB9D9C(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D6CBA34C(0, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D6CBA8E0(&qword_1EC894B28, sub_1D6749080);
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

unint64_t sub_1D6CBA824()
{
  result = qword_1EC894B20;
  if (!qword_1EC894B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B20);
  }

  return result;
}

void sub_1D6CBA878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6CBA8E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBA34C(255, &qword_1EC894A88, &type metadata for HMultiLayoutItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBA984()
{
  result = qword_1EC894B40;
  if (!qword_1EC894B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B40);
  }

  return result;
}

unint64_t sub_1D6CBA9DC()
{
  result = qword_1EC894B48;
  if (!qword_1EC894B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B48);
  }

  return result;
}

unint64_t sub_1D6CBAA34()
{
  result = qword_1EC894B50;
  if (!qword_1EC894B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B50);
  }

  return result;
}

unint64_t sub_1D6CBAAB4()
{
  result = qword_1EC894B58;
  if (!qword_1EC894B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B58);
  }

  return result;
}

uint64_t _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  LOBYTE(v14) = *a1;
  LOBYTE(v13) = v3;
  v5 = FormatOperator.rawValue.getter();
  v7 = v6;
  if (v5 == FormatOperator.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = v4;
  v14 = v2;

  v11 = static FormatFloat.== infix(_:_:)(&v14, &v13);

  return v11 & 1;
}

uint64_t _s8NewsFeed33FormatBindingFloatExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *a1;
  if (v7 == 12)
  {
    if (v6 != 12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 != 13)
    {
      if ((v6 & 0xFE) != 0xC)
      {
        v13[0] = *a1;
        v14 = v3;
        v11[0] = v6;
        v12 = v5;
        v9 = v4;
        sub_1D62B50D4(v6);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v6);
        v8 = _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v13, v11);
        sub_1D62B5230(v9);
        sub_1D62B5230(v6);
        sub_1D62B5230(v6);
        sub_1D62B5230(v9);
        return v8 & 1;
      }

      goto LABEL_8;
    }

    if (v6 != 13)
    {
LABEL_8:
      sub_1D62B50D4(*a1);
      sub_1D62B50D4(v6);
      sub_1D62B5230(v4);
      sub_1D62B5230(v6);
      v8 = 0;
      return v8 & 1;
    }
  }

  sub_1D62B5230(*a1);
  sub_1D62B5230(v6);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D6CBADF0(uint64_t a1)
{
  result = sub_1D6CBAE18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBAE18()
{
  result = qword_1EC894B60;
  if (!qword_1EC894B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B60);
  }

  return result;
}

unint64_t sub_1D6CBAEAC()
{
  result = qword_1EC894B68;
  if (!qword_1EC894B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B68);
  }

  return result;
}

unint64_t sub_1D6CBAF00(uint64_t a1)
{
  result = sub_1D6CBAF28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBAF28()
{
  result = qword_1EC894B70;
  if (!qword_1EC894B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B70);
  }

  return result;
}

uint64_t sub_1D6CBAFBC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBB010()
{
  result = qword_1EC894B78;
  if (!qword_1EC894B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894B78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed33FormatBindingFloatExpressionLogicO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t FCSportsEventController.fetchSportsEvents(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6CBB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_1D5B7E810(a6);
  v15 = sub_1D726265C();

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a6;
  v16[5] = sub_1D5BE643C;
  v16[6] = v14;
  v18[4] = sub_1D6CBD004;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D6CBB618;
  v18[3] = &block_descriptor_32_2;
  v17 = _Block_copy(v18);

  [a5 fetchSportsEventsForSportsEventIDs:v15 cachePolicy:a7 qualityOfService:25 completionHandler:v17];
  _Block_release(v17);
}

void sub_1D6CBB380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6CBB3E4(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    v8 = a2;
    a3(a2);
  }

  else
  {
    v10 = *(a5 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v14 = (a5 + 40);
      do
      {
        if (a1 && *(a1 + 16))
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          sub_1D5B69D90(v15, v16);
          if (v17)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v14 += 2;
        --v10;
      }

      while (v10);
      v18 = v23;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = 0;
    v24 = v11;
    v20 = *(v18 + 16);
    while (v20 != v19)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        return;
      }

      if (*(v18 + 8 * v19++ + 32))
      {
        v22 = swift_unknownObjectRetain();
        MEMORY[0x1DA6F9CE0](v22);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v24;
      }
    }

    a6(v11);
  }
}

uint64_t sub_1D6CBB618(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B7D920();
    v4 = sub_1D7261D3C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t FCSportsEventController.fetchSportsEventsMap(for:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D605E094(MEMORY[0x1E69E7CC0]);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6CBB7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_1D5B7E810(a6);
  v13 = sub_1D726265C();

  v14 = [objc_opt_self() defaultCachePolicy];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_1D5B7E910;
  v15[5] = v12;
  v17[4] = sub_1D6CBCFF8;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D6CBB618;
  v17[3] = &block_descriptor_23_0;
  v16 = _Block_copy(v17);

  [a5 fetchSportsEventsForSportsEventIDs:v13 cachePolicy:v14 qualityOfService:25 completionHandler:v16];
  _Block_release(v16);
}

void sub_1D6CBB984()
{
  if (!qword_1EDF05650)
  {
    sub_1D5B7D920();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05650);
    }
  }
}

void sub_1D6CBB9EC(unint64_t a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(unint64_t))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C384A0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    swift_getErrorValue();
    v9 = sub_1D726497C();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D5B7E2C0();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1D725C30C();

    a3(a2);
  }

  else
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = sub_1D605E094(MEMORY[0x1E69E7CC0]);
    }

    a5(v13);
  }
}

uint64_t FCSportsEventController.fetchSportsEvent(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = objc_opt_self();

  v9 = [v5 defaultCachePolicy];
  sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BBAC();

  v6 = sub_1D725B92C();
  sub_1D5B7D920();
  v7 = sub_1D725BA7C();

  return v7;
}

uint64_t FCSportsEventController.fetchSportsEvents(for:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCachePolicy];
  v4 = v2;
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v5 = sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v5 = sub_1D725BB1C();
  }

  return v5;
}

uint64_t *sub_1D6CBBE60(uint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D6CBCFA4();
    swift_allocError();
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA6FB460](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_6:
    sub_1D6CBB380(0, &qword_1EC894B98, sub_1D5B7D920, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6CBBF68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D6CBB380(0, &unk_1EDF17960, sub_1D6CBB34C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6CBC094(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    sub_1D605E094(MEMORY[0x1E69E7CC0]);
    sub_1D6CBB380(0, &qword_1EDF179C8, sub_1D6CBB984, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t FCSportsEventController.fetchSportsEventsAsync(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CBC22C, 0, 0);
}

uint64_t sub_1D6CBC22C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = swift_task_alloc();
    v0[6] = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = swift_task_alloc();
    v0[7] = v5;
    sub_1D6CBB34C(0);
    *v5 = v0;
    v5[1] = sub_1D6CBC384;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000028, 0x80000001D73F0530, sub_1D6CBCD58, v4, v6);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1D6CBC384()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68E8C;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D6CBC4A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = aBlock - v13;
  sub_1D5B7E810(a3);
  v15 = sub_1D726265C();

  (*(v10 + 16))(v14, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  *(v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D6CBCEDC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6CBB618;
  aBlock[3] = &block_descriptor_14_0;
  v18 = _Block_copy(aBlock);

  [a2 fetchSportsEventsForSportsEventIDs:v15 cachePolicy:a4 qualityOfService:25 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1D6CBC6C4(uint64_t result, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
    return sub_1D726286C();
  }

  else
  {
    v5 = *(a4 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = result;
      v18 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v9 = (a4 + 40);
      do
      {
        if (v7 && *(v7 + 16))
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_1D5B69D90(v10, v11);
          if (v12)
          {
            swift_unknownObjectRetain();
          }
        }

        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        result = sub_1D7263EAC();
        v9 += 2;
        --v5;
      }

      while (v5);
      v13 = v18;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = 0;
    v15 = *(v13 + 16);
    while (1)
    {
      if (v15 == v14)
      {

        sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
        return sub_1D726287C();
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      if (*(v13 + 8 * v14++ + 32))
      {
        v17 = swift_unknownObjectRetain();
        MEMORY[0x1DA6F9CE0](v17);
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        result = sub_1D726278C();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FCSportsEventController.fetchSportsEventsMapAsync(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6CBC910, 0, 0);
}

uint64_t sub_1D6CBC910()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    sub_1D6CBB984();
    *v4 = v0;
    v4[1] = sub_1D5F72418;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x80000001D73F0560, sub_1D6CBCD64, v3, v5);
  }

  else
  {
    v6 = sub_1D605E094(MEMORY[0x1E69E7CC0]);
    v7 = v0[1];

    return v7(v6);
  }
}

void sub_1D6CBCA5C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = aBlock - v10;
  sub_1D5B7E810(a3);
  v12 = sub_1D726265C();

  v13 = [objc_opt_self() defaultCachePolicy];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = sub_1D6CBCDBC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6CBB618;
  aBlock[3] = &block_descriptor_91;
  v16 = _Block_copy(aBlock);

  [a2 fetchSportsEventsForSportsEventIDs:v12 cachePolicy:v13 qualityOfService:25 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1D6CBCC88(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);
    return sub_1D726286C();
  }

  else
  {
    if (!a1)
    {
      sub_1D605E094(MEMORY[0x1E69E7CC0]);
    }

    sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);

    return sub_1D726287C();
  }
}

uint64_t sub_1D6CBCDBC(uint64_t a1, void *a2)
{
  sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);

  return sub_1D6CBCC88(a1, a2);
}

void sub_1D6CBCE58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v4 = sub_1D726288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6CBCEDC(uint64_t a1, void *a2)
{
  sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D6CBC6C4(a1, a2, v2 + v7, v8);
}

unint64_t sub_1D6CBCFA4()
{
  result = qword_1EC894BA0;
  if (!qword_1EC894BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894BA0);
  }

  return result;
}

unint64_t sub_1D6CBD028()
{
  result = qword_1EC894BB0;
  if (!qword_1EC894BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894BB0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView()
{
  result = qword_1EC894BC0;
  if (!qword_1EC894BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CBD110()
{
  result = type metadata accessor for DebugFormatWorkspace();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6CBD198()
{
  v1 = v0;
  v2 = sub_1D72611CC();
  v7 = 1;
  sub_1D6CBD364(v1, &v17);
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  v16[4] = v21;
  v16[5] = v22;
  v16[6] = v23;
  v16[7] = v24;
  sub_1D6CBD9AC(&v8, &v4);
  sub_1D6CBDEF0(v16, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
  *&v6[71] = v12;
  *&v6[87] = v13;
  *&v6[103] = v14;
  *&v6[119] = v15;
  *&v6[7] = v8;
  *&v6[23] = v9;
  *&v6[39] = v10;
  *&v6[55] = v11;
  *&v5[81] = *&v6[80];
  *&v5[97] = *&v6[96];
  *&v5[113] = *&v6[112];
  *&v5[17] = *&v6[16];
  *&v5[33] = *&v6[32];
  *&v5[49] = *&v6[48];
  *&v5[65] = *&v6[64];
  v4 = v2;
  v5[0] = v7;
  *&v5[128] = *(&v15 + 1);
  *&v5[1] = *v6;
  v5[136] = 0;
  sub_1D7260EDC();
  sub_1D6CBDB4C();
  sub_1D6CBDCCC();
  sub_1D72617DC();
  v23 = *&v5[80];
  v24 = *&v5[96];
  v25[0] = *&v5[112];
  *(v25 + 9) = *&v5[121];
  v19 = *&v5[16];
  v20 = *&v5[32];
  v21 = *&v5[48];
  v22 = *&v5[64];
  v17 = v4;
  v18 = *v5;
  return sub_1D6CBDE90(&v17, sub_1D6CBDB4C);
}

uint64_t sub_1D6CBD364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D726125C();
  LOBYTE(v20[0]) = 1;
  sub_1D6CBD574(a1, v27);
  *&v26[7] = v27[0];
  *&v26[23] = v27[1];
  *&v26[39] = v27[2];
  *&v26[55] = v27[3];
  v5 = 0;
  KeyPath = 0;
  v7 = 0;
  if (*(a1 + *(type metadata accessor for DebugFormatWorkspace() + 20) + 48) == 1)
  {
    v5 = sub_1D72618CC();
    v7 = sub_1D726188C();
    KeyPath = swift_getKeyPath();
  }

  v12 = v4;
  v13[0] = 1;
  *&v13[1] = *v26;
  *&v13[49] = *&v26[48];
  *&v13[33] = *&v26[32];
  *&v13[17] = *&v26[16];
  *&v13[64] = *&v26[63];
  v14 = v4;
  v15 = *v13;
  v19 = *&v26[63];
  v17 = *&v13[32];
  v18 = *&v13[48];
  v16 = *&v13[16];
  sub_1D6A4AC0C(&v12, v20);
  sub_1D6CBDDF4(v5);
  sub_1D6CBDE44(v5);
  v8 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v8;
  *(a2 + 64) = v18;
  v9 = v19;
  v10 = v15;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v5;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = v7;
  sub_1D6CBDE44(v5);
  v20[0] = v4;
  v20[1] = 0;
  v21 = 1;
  v23 = *&v26[16];
  v24 = *&v26[32];
  *v25 = *&v26[48];
  *&v25[15] = *&v26[63];
  v22 = *v26;
  return sub_1D6CBDE90(v20, sub_1D6A4A6D0);
}

uint64_t sub_1D6CBD574@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = MEMORY[0x1E6980E30];
  v4 = MEMORY[0x1E69E6720];
  sub_1D6CBDAE8(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v52 - v7;
  v56 = (a1 + *(type metadata accessor for DebugFormatWorkspace() + 20));
  v9 = v56[3];
  v59 = v56[2];
  v60 = v9;
  v10 = sub_1D5BF4D9C();

  v55 = v10;
  v11 = sub_1D726171C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1D726163C();
  v17 = *(v16 - 8);
  v53 = *(v17 + 56);
  v54 = v16;
  v52[1] = v17 + 56;
  v53(v8, 1, 1);
  sub_1D726167C();
  sub_1D6CBDEF0(v8, &qword_1EC881178, v3, v4);
  v18 = sub_1D72616DC();
  v20 = v19;
  v22 = v21;

  sub_1D5F26348(v11, v13, v15 & 1);

  sub_1D726187C();
  v23 = sub_1D72616BC();
  v25 = v24;
  v57 = v26;
  v28 = v27;

  sub_1D5F26348(v18, v20, v22 & 1);

  v29 = v56[5];
  if (v29)
  {
    v59 = v56[4];
    v60 = v29;

    v30 = sub_1D726171C();
    v32 = v31;
    v34 = v33;
    (v53)(v8, 1, 1, v54);
    sub_1D726167C();
    sub_1D6CBDEF0(v8, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
    v35 = sub_1D72616DC();
    v55 = v23;
    v56 = v28;
    v37 = v36;
    v39 = v38;
    v54 = v25;

    sub_1D5F26348(v30, v32, v34 & 1);

    sub_1D726188C();
    v40 = sub_1D72616BC();
    v42 = v41;
    LOBYTE(v32) = v43;
    v45 = v44;

    v46 = v39 & 1;
    v47 = v37;
    v23 = v55;
    v28 = v56;
    sub_1D5F26348(v35, v47, v46);
    v25 = v54;

    v48 = v32 & 1;
    sub_1D5F26358(v40, v42, v32 & 1);
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v48 = 0;
    v45 = 0;
  }

  v49 = v57 & 1;
  sub_1D5F26358(v23, v25, v57 & 1);

  sub_1D6A4AD98(v40, v42, v48, v45);
  sub_1D68C4240(v40, v42, v48, v45);
  LOBYTE(v59) = v49;
  v50 = v58;
  *v58 = v23;
  v50[1] = v25;
  *(v50 + 16) = v49;
  v50[3] = v28;
  v50[4] = v40;
  v50[5] = v42;
  v50[6] = v48;
  v50[7] = v45;
  sub_1D68C4240(v40, v42, v48, v45);
  sub_1D5F26348(v23, v25, v49);
}

uint64_t sub_1D6CBD9AC(uint64_t a1, uint64_t a2)
{
  sub_1D6CBDAE8(0, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6CBDA40()
{
  if (!qword_1EC894BD8)
  {
    sub_1D6A4A6D0();
    sub_1D6CBDAE8(255, &qword_1EC894BE0, sub_1D5F257F0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC894BD8);
    }
  }
}

void sub_1D6CBDAE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6CBDB4C()
{
  if (!qword_1EC894BE8)
  {
    sub_1D6CBDBB4();
    sub_1D5F25A44();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894BE8);
    }
  }
}

void sub_1D6CBDBB4()
{
  if (!qword_1EC894BF0)
  {
    sub_1D6CBDAE8(255, &qword_1EC894BD0, sub_1D6CBDA40, MEMORY[0x1E6981F40]);
    sub_1D6CBDC68(&qword_1EC894BF8, &qword_1EC894BD0, sub_1D6CBDA40);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894BF0);
    }
  }
}

uint64_t sub_1D6CBDC68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBDAE8(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBDCCC()
{
  result = qword_1EC894C00;
  if (!qword_1EC894C00)
  {
    sub_1D6CBDB4C();
    sub_1D6CBDDAC(&qword_1EC894C08, sub_1D6CBDBB4);
    sub_1D6CBDDAC(&qword_1EC881138, sub_1D5F25A44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C00);
  }

  return result;
}

uint64_t sub_1D6CBDDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6CBDDF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D6CBDE44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D6CBDE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CBDEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6CBDAE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s8NewsFeed20FormatProcessedColorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v6 = *a2;
  v7 = v3;

  LOBYTE(v3) = static FormatColor.== infix(_:_:)(&v7, &v6);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6344A00(v2, v4);
}

unint64_t sub_1D6CBE028(uint64_t a1)
{
  result = sub_1D667DF98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CBE050(void *a1)
{
  a1[1] = sub_1D667E21C();
  a1[2] = sub_1D67002C4();
  result = sub_1D6CBE088();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBE088()
{
  result = qword_1EC894C10;
  if (!qword_1EC894C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C10);
  }

  return result;
}

unint64_t FormatFlexBoxNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

uint64_t FormatFlexBoxNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatFlexBoxNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatFlexBoxNode.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatFlexBoxNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatFlexBoxNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatFlexBoxNode.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

unint64_t FormatFlexBoxNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatFlexBoxNode.resize.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t FormatFlexBoxNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1D6CBE5E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t FormatFlexBoxNode.layout.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatFlexBoxNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatFlexBoxNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t FormatFlexBoxNode.__allocating_init(identifier:name:description:size:resize:adjustments:layout:flex:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v19 = *a7;
  v20 = *a8;
  v23 = a8[1];
  v26 = *(a11 + 5);
  v27 = *(a11 + 4);
  *(v18 + 48) = 0u;
  *(v18 + 32) = 0u;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  swift_beginAccess();
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;

  swift_beginAccess();
  *(v18 + 64) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = v23;
  swift_beginAccess();
  *(v18 + 88) = a9;
  swift_beginAccess();
  *(v18 + 96) = a10;
  v21 = *a11;
  *(v18 + 120) = a11[1];
  *(v18 + 104) = v21;
  *(v18 + 136) = v27;
  *(v18 + 144) = v26;
  swift_beginAccess();
  *(v18 + 152) = a12;
  return v18;
}

uint64_t FormatFlexBoxNode.init(identifier:name:description:size:resize:adjustments:layout:flex:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  v22 = *a8;
  v23 = *a7;
  v21 = a8[1];
  v24 = *(a11 + 5);
  v25 = *(a11 + 4);
  *(v12 + 48) = 0u;
  *(v12 + 32) = 0u;
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  swift_beginAccess();
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;

  swift_beginAccess();
  *(v12 + 64) = v23;
  *(v12 + 72) = v22;
  *(v12 + 80) = v21;
  swift_beginAccess();
  *(v12 + 88) = a9;
  swift_beginAccess();
  *(v12 + 96) = a10;
  v19 = *a11;
  *(v12 + 120) = a11[1];
  *(v12 + 104) = v19;
  *(v12 + 136) = v25;
  *(v12 + 144) = v24;
  swift_beginAccess();
  *(v12 + 152) = a12;
  return v12;
}

uint64_t FormatFlexBoxNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 64));

  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t FormatFlexBoxNode.__deallocating_deinit()
{
  FormatFlexBoxNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CBEB6C(uint64_t a1)
{
  result = sub_1D6CBED00(&qword_1EC894C18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CBEBD4(void *a1)
{
  a1[1] = sub_1D6CBED00(&qword_1EDF2F6B8);
  a1[2] = sub_1D6CBED00(&qword_1EDF10C58);
  result = sub_1D6CBED00(&qword_1EC894C20);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CBEC60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6688B80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6CBECBC(uint64_t a1)
{
  result = sub_1D6CBED00(&qword_1EC894C28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CBED00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFlexBoxNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CBED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  sub_1D7259F7C();
  v12 = sub_1D6B14744(a4, a5);
  v13 = *(a2 + 152);
  v14 = *(v13 + 16);

  if (v14)
  {
    v16 = 0;
    v17 = 32;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v13 + v17);
      v19 = *(v13 + v17 + 32);
      v24[1] = *(v13 + v17 + 16);
      v24[2] = v19;
      v24[0] = v18;
      v20 = *(v13 + v17 + 48);
      v21 = *(v13 + v17 + 64);
      v22 = *(v13 + v17 + 80);
      v25 = *(v13 + v17 + 96);
      v24[4] = v21;
      v24[5] = v22;
      v24[3] = v20;
      sub_1D5C5C4CC(v24, &v23);
      sub_1D6FC0A94(a1, v12, a6);
      if (v6)
      {

        return sub_1D5C5C540(v24);
      }

      ++v16;
      result = sub_1D5C5C540(v24);
      v17 += 104;
      if (v14 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

NewsFeed::FormatContentSubgroupSection __swiftcall FormatContentSubgroupSection.init(identifier:contents:)(Swift::String identifier, Swift::OpaquePointer contents)
{
  *v2 = identifier;
  *(v2 + 16) = contents;
  result.identifier = identifier;
  result.contents = contents;
  return result;
}

uint64_t FormatContentSubgroupSection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t static FormatContentSubgroupSection.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633BEDC(v2, v3);
}

uint64_t sub_1D6CBEFA0(uint64_t a1)
{
  v2 = sub_1D6CBF1F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CBEFDC(uint64_t a1)
{
  v2 = sub_1D6CBF1F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupSection.encode(to:)(void *a1)
{
  sub_1D6CBF4F0(0, &qword_1EC894C30, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v14[0] = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6CBF1F4();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1D6CBF248();
    sub_1D6CBF554(&qword_1EDF04FA0, sub_1D5B5C460);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6CBF1F4()
{
  result = qword_1EC894C38;
  if (!qword_1EC894C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C38);
  }

  return result;
}

void sub_1D6CBF248()
{
  if (!qword_1EDF3C908)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C908);
    }
  }
}

uint64_t FormatContentSubgroupSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6CBF4F0(0, &qword_1EC894C40, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CBF1F4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  sub_1D6CBF248();
  v18 = 1;
  sub_1D6CBF554(&qword_1EDF3C900, sub_1D5B5C40C);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6CBF4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CBF1F4();
    v7 = a3(a1, &type metadata for FormatContentSubgroupSection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6CBF554(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6CBF248();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CBF5C0(void *a1)
{
  a1[1] = sub_1D5B5C8E4();
  a1[2] = sub_1D5B59FD8();
  result = sub_1D6CBF5F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CBF5F8()
{
  result = qword_1EC894C48;
  if (!qword_1EC894C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C48);
  }

  return result;
}

unint64_t sub_1D6CBF67C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633BEDC(v2, v3);
}

unint64_t sub_1D6CBF714()
{
  result = qword_1EC894C50;
  if (!qword_1EC894C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C50);
  }

  return result;
}

unint64_t sub_1D6CBF76C()
{
  result = qword_1EC894C58;
  if (!qword_1EC894C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C58);
  }

  return result;
}

unint64_t sub_1D6CBF7C4()
{
  result = qword_1EC894C60;
  if (!qword_1EC894C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C60);
  }

  return result;
}

id sub_1D6CBF818(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  v5 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_editor] = a1;
  v6 = objc_allocWithZone(type metadata accessor for DebugFormatDebuggerPaneViewController());
  v7 = swift_retain_n();
  *&v2[OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_debuggerPaneViewController] = sub_1D71A9648(v7);
  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
  v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
  v10 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
  *&v2[v11] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = a1;
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v12;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = v9;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for DebugFormatInspectorPaneViewController();

  v13 = v9;
  v14 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v15 = sub_1D726203C();
  [v14 setTitle_];

  return v14;
}

id sub_1D6CBFB40()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CBFD1C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - v7;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4EB8(a2, v12, sub_1D6CC4A78);
  v17 = type metadata accessor for FormatDebuggerContext();
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_1D6CC4B10(v12, sub_1D6CC4A78);
    v18 = type metadata accessor for FormatDebuggerCallStackFrame(0);
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  else
  {
    (*(v5 + 16))(v8, &v12[*(v17 + 24)], v4);
    sub_1D6CC4B10(v12, type metadata accessor for FormatDebuggerContext);
    sub_1D725B8AC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1D6CBFFE0(a2, v16);
  return sub_1D6CC4B10(v16, sub_1D6CC4A44);
}

id sub_1D6CBFFE0(uint64_t a1, uint64_t a2)
{
  v527 = a2;
  sub_1D6032A5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v504 = &v471 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v486 = &v471 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v480 = &v471 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v485 = &v471 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v471 - v18;
  v20 = type metadata accessor for DebugFormatCacheFile();
  v501 = *(v20 - 8);
  v502 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v484 = &v471 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v481 = &v471 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v505 = &v471 - v28;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v534 = &v471 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v533 = type metadata accessor for FormatOption();
  v489 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533, v32);
  v522 = (&v471 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v513 = &v471 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v512 = &v471 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v521 = &v471 - v42;
  v43 = MEMORY[0x1E69D6AD8];
  sub_1D6CC4AAC(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
  v498 = v44;
  v488 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v487 = &v471 - v46;
  sub_1D6CC4B70(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v497 = &v471 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FormatDebuggerWorkspaceStackFrame();
  v495 = *(v50 - 8);
  v496 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v499 = &v471 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4AAC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, v43);
  v503 = v53;
  v494 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v54);
  v493 = &v471 - v55;
  v541 = type metadata accessor for FormatInspectionItem(0);
  v514 = *(v541 - 8);
  MEMORY[0x1EEE9AC00](v541, v56);
  v528 = &v471 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v532 = &v471 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v531 = (&v471 - v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  v518 = &v471 - v66;
  sub_1D6CC4AAC(0, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v539 = &v471 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v519 = &v471 - v72;
  v537 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v537, v73);
  *&v536 = &v471 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4BA4(0);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v523 = &v471 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8();
  v538 = v78;
  v540 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v79);
  v529 = &v471 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v525 = &v471 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v530 = &v471 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v535 = (&v471 - v89);
  sub_1D5EB9994();
  v506 = *(v90 - 8);
  v507 = v90;
  MEMORY[0x1EEE9AC00](v90, v91);
  v516 = &v471 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v509 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  MEMORY[0x1EEE9AC00](v509, v93);
  v491 = &v471 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v96);
  v500 = &v471 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v526 = &v471 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v524 = &v471 - v103;
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v104 - 8, v105);
  v483 = &v471 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107, v108);
  v508 = &v471 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = &v471 - v112;
  v114 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v115 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v116);
  v482 = (&v471 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v118, v119);
  v510 = (&v471 - v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v517 = (&v471 - v123);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v124 - 8, v125);
  v127 = &v471 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for FormatDebuggerContext();
  v129 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v130);
  v132 = &v471 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4EB8(a1, v127, sub_1D6CC4A78);
  v133 = *(v129 + 48);
  v492 = v128;
  if (v133(v127, 1, v128) == 1)
  {
    v134 = sub_1D6CC4A78;
    v135 = v127;
LABEL_5:
    sub_1D6CC4B10(v135, v134);
    v137 = v511;
    v138 = v508;
    sub_1D6A6F8CC(MEMORY[0x1E69E7CC0]);
    (*(v115 + 56))(v138, 1, 1, v114);
    v139 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
    swift_beginAccess();
    sub_1D6CC4BD8(v138, v137 + v139);
    swift_endAccess();
    return sub_1D71A93F8();
  }

  sub_1D6CC4E30(v127, v132, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4EB8(v527, v113, sub_1D6CC4A44);
  v136 = *(v115 + 48);
  if (v136(v113, 1, v114) == 1)
  {
    sub_1D6CC4B10(v113, sub_1D6CC4A44);
    v134 = type metadata accessor for FormatDebuggerContext;
    v135 = v132;
    goto LABEL_5;
  }

  v472 = v136;
  v473 = v115 + 48;
  v476 = v19;
  sub_1D6CC4E30(v113, v517, type metadata accessor for FormatDebuggerCallStackFrame);
  v141 = *(v114 + 24);
  v142 = *(sub_1D68B2DA8() + 40);

  v490 = v141;
  v143 = sub_1D68B2DA8();
  v144 = *(*(v143 + 40) + 16);
  swift_beginAccess();
  v145 = *(*(v144 + 16) + 16);
  v477 = v115;
  v478 = v114;
  if (v145)
  {
    *&v593 = *(v143 + 56);

    v147 = sub_1D6F622E0(v146);
    sub_1D5B886D0(v147);

    v527 = v593;
  }

  else
  {
    v527 = sub_1D6E46E28();
  }

  v148 = v524;
  v149 = *(v132 + 4);
  v150 = MEMORY[0x1E69E7CC0];
  if (v149 < 4)
  {
    goto LABEL_12;
  }

  sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v151 = (*(v540 + 80) + 32) & ~*(v540 + 80);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1D7273AE0;
  sub_1D6CC4E20(v149);
  v153 = v149;
  sub_1D712ED68(0x726F727245, 0xE500000000000000, v149, v152 + v151);
  (*(v514 + 56))(v152 + v151, 0, 1, v541);
  sub_1D6795150(0x726F727245, 0xE500000000000000, 0, 0, v152, v598);
  swift_setDeallocating();
  sub_1D6CC4B10(v152 + v151, sub_1D5EA74B8);
  swift_deallocClassInstance();
  v154 = swift_allocObject();
  v155 = v598[1];
  *(v154 + 16) = v598[0];
  *(v154 + 32) = v155;
  *(v154 + 48) = v599;
  v150 = sub_1D699039C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v157 = *(v150 + 2);
  v156 = *(v150 + 3);
  v158 = v157 + 1;
  if (v157 >= v156 >> 1)
  {
    goto LABEL_167;
  }

  while (1)
  {
    sub_1D6CC4E10(v149);
    *(v150 + 2) = v158;
    v159 = &v150[40 * v157];
    *(v159 + 4) = v154;
    *(v159 + 40) = v593;
    *(v159 + 7) = &type metadata for FormatInspectionGroup;
    *(v159 + 8) = &off_1F518B2C0;
LABEL_12:
    v524 = v150;
    v160 = v517;
    sub_1D6CC4EB8(v517 + v490, v148, type metadata accessor for FormatDebuggerCallStackFrameContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v479 = v132;
    v520 = v142;
    v474 = v149;
    if (EnumCaseMultiPayload == 1)
    {
      *&v515 = *v148;
      sub_1D6324784();
      (*(v506 + 32))(v516, &v148[*(v162 + 48)], v507);
      sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v163 = *(v540 + 72);
      v164 = (*(v540 + 80) + 32) & ~*(v540 + 80);
      v165 = swift_allocObject();
      v475 = v165;
      *(v165 + 16) = xmmword_1D7274590;
      v166 = v165 + v164;
      v167 = sub_1D725A55C();
      v168 = v541;
      v169 = *(v541 + 24);
      *(v166 + v169) = v167;
      v170 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v170 - 8) + 56))(v166 + v169, 0, 1, v170);
      *v166 = xmmword_1D72E27B0;
      *(v166 + 16) = 0;
      *(v166 + 24) = 0;
      v171 = v166 + *(v168 + 28);
      *v171 = 0;
      *(v171 + 8) = 0;
      *(v171 + 16) = -1;
      v172 = *(v514 + 56);
      v172(v166, 0, 1, v168);
      sub_1D725A55C();
      sub_1D725A43C();
      v174 = v173;
      v176 = v175;

      sub_1D7124550(0x6E6F697469736F50, 0xE800000000000000, v174, v176, 0, (v166 + v163));
      v172(v166 + v163, 0, 1, v168);
      sub_1D725A55C();
      sub_1D725A3BC();

      v177 = sub_1D69FA44C();
      sub_1D711F844(0x412064656C6C6946, 0xEB00000000616572, v177, v178, (v166 + 2 * v163));
      v172(v166 + 2 * v163, 0, 1, v168);
      v163 *= 3;
      sub_1D725A55C();
      sub_1D725A3FC();
      v2 = v179;

      v180 = sub_1D707FF40();
      sub_1D711F844(0xD000000000000010, 0x80000001D73F06F0, v180, v181, (v166 + v163));
      v172(v166 + v163, 0, 1, v168);
      sub_1D6795150(0x74756F79614CLL, 0xE600000000000000, 0, 0, v475, v600);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v182 = swift_allocObject();
      v183 = v600[1];
      *(v182 + 16) = v600[0];
      *(v182 + 32) = v183;
      *(v182 + 48) = v601;
      v184 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v524 : sub_1D699039C(0, *(v524 + 2) + 1, 1, v524);
      v186 = *(v184 + 2);
      v185 = *(v184 + 3);
      v142 = v520;
      v187 = v526;
      v524 = v186 >= v185 >> 1 ? sub_1D699039C((v185 > 1), v186 + 1, 1, v184) : v184;

      (*(v506 + 8))(v516, v507);
      v188 = v524;
      *(v524 + 2) = v186 + 1;
      v189 = &v188[40 * v186];
      *(v189 + 4) = v182;
      *(v189 + 40) = v593;
      *(v189 + 7) = &type metadata for FormatInspectionGroup;
      *(v189 + 8) = &off_1F518B2C0;
      v160 = v517;
    }

    else
    {
      sub_1D6CC4B10(v148, type metadata accessor for FormatDebuggerCallStackFrameContext);
      v168 = v541;
      v187 = v526;
    }

    sub_1D6CC4EB8(v160 + v490, v187, type metadata accessor for FormatDebuggerCallStackFrameContext);
    v190 = swift_getEnumCaseMultiPayload();
    v191 = *v187;
    if (v190 != 1)
    {
      break;
    }

    sub_1D6324784();
    v193 = *(v192 + 48);
    v157 = *(v191 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
    v158 = *(v191 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

    (*(v506 + 8))(&v187[v193], v507);
    v154 = *(v158 + 16);
    if (!v154)
    {
      goto LABEL_24;
    }

LABEL_21:
    v149 = sub_1D5E23F34(v154, 0);
    v132 = sub_1D5E25814(&v593, (v149 + 4), v154, v158);
    v148 = *(&v593 + 1);
    v150 = v593;
    v526 = *(&v594 + 1);
    v516 = *&v595[0];

    sub_1D5B87E38();
    if (v132 == v154)
    {

      v168 = v541;
      goto LABEL_25;
    }

    __break(1u);
LABEL_167:
    v150 = sub_1D699039C((v156 > 1), v158, 1, v150);
  }

  v157 = *(v191 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v158 = *(v191 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);

  v154 = *(v158 + 16);
  if (v154)
  {
    goto LABEL_21;
  }

LABEL_24:

LABEL_25:
  sub_1D5B7EFE8();
  v194 = sub_1D72626EC();

  v195 = *(v194 + 16);
  if (v195)
  {
    v475 = v194;
    v196 = v194 + 32;
    v516 = (v514 + 56);
    v526 = (v540 + 56);
    v197 = (v540 + 48);
    v198 = MEMORY[0x1E69E7CC0];
    v515 = xmmword_1D72E27B0;
    v199 = v523;
    do
    {
      sub_1D5B68374(v196, &v593);
      v200 = *(&v594 + 1);
      v201 = *&v595[0];
      __swift_project_boxed_opaque_existential_1(&v593, *(&v594 + 1));
      v202 = v536;
      (*(v201 + 8))(v200, v201);
      v203 = swift_getEnumCaseMultiPayload();
      sub_1D6CC4B10(v202, type metadata accessor for FeedGroupItem);
      if (v203 == 2)
      {
        v204 = 1;
        v168 = v541;
      }

      else
      {
        v205 = *(&v594 + 1);
        v206 = *&v595[0];
        __swift_project_boxed_opaque_existential_1(&v593, *(&v594 + 1));
        v207 = v519;
        (*(v206 + 8))(v205, v206);
        v208 = type metadata accessor for FormatInspectionFeedGroupItem();
        v209 = *(v208 - 8);
        (*(v209 + 56))(v207, 0, 1, v208);
        v210 = v539;
        sub_1D6CC4C3C(v207, v539);
        v211 = (*(v209 + 48))(v210, 1, v208);
        v168 = v541;
        v212 = *(v541 + 24);
        if (v211 == 1)
        {
          v213 = type metadata accessor for FormatInspectionItem.Value(0);
          v214 = v518;
          (*(*(v213 - 8) + 56))(&v518[v212], 1, 1, v213);
          *v214 = v515;
          *(v214 + 16) = 0;
          *(v214 + 24) = 0;
          v215 = v214 + *(v168 + 28);
          *v215 = 0;
          *(v215 + 8) = 0;
          *(v215 + 16) = -1;
        }

        else
        {
          v216 = v518;
          sub_1D6CC4EB8(v539, &v518[v212], type metadata accessor for FormatInspectionFeedGroupItem);
          v217 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v218 = *(*(v217 - 8) + 56);
          v219 = v217;
          v214 = v216;
          v218(&v216[v212], 0, 1, v219);
          *v216 = v515;
          *(v216 + 2) = 0;
          *(v216 + 3) = 0;
          v220 = &v216[*(v168 + 28)];
          *v220 = 0;
          *(v220 + 1) = 0;
          v220[16] = -1;
          sub_1D6CC4B10(v539, type metadata accessor for FormatInspectionFeedGroupItem);
        }

        v199 = v523;
        sub_1D6CC4E30(v214, v523, type metadata accessor for FormatInspectionItem);
        (*v516)(v199, 0, 1, v168);
        v204 = 0;
      }

      v221 = v538;
      (*v526)(v199, v204, 1, v538);
      __swift_destroy_boxed_opaque_existential_1(&v593);
      if ((*v197)(v199, 1, v221) == 1)
      {
        sub_1D6CC4B10(v199, sub_1D6CC4BA4);
      }

      else
      {
        sub_1D6CC4E30(v199, v535, sub_1D5EA74B8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = sub_1D698C0A8(0, v198[2] + 1, 1, v198);
        }

        v223 = v198[2];
        v222 = v198[3];
        if (v223 >= v222 >> 1)
        {
          v198 = sub_1D698C0A8(v222 > 1, v223 + 1, 1, v198);
        }

        v198[2] = v223 + 1;
        sub_1D6CC4E30(v535, v198 + ((*(v540 + 80) + 32) & ~*(v540 + 80)) + *(v540 + 72) * v223, sub_1D5EA74B8);
      }

      v196 += 40;
      --v195;
    }

    while (v195);

    v142 = v520;
  }

  else
  {

    v198 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x69422070756F7247, 0xEE0073676E69646ELL, 0, 0, v198, v602);

  v224 = swift_allocObject();
  v225 = v602[1];
  v224[1] = v602[0];
  v224[2] = v225;
  *(v224 + 6) = v603;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_165;
  }

  for (i = v524; ; i = sub_1D699039C(0, *(v524 + 2) + 1, 1, v524))
  {
    v228 = *(i + 2);
    v227 = *(i + 3);
    if (v228 >= v227 >> 1)
    {
      i = sub_1D699039C((v227 > 1), v228 + 1, 1, i);
    }

    *(i + 2) = v228 + 1;
    v524 = i;
    v229 = &i[40 * v228];
    *(v229 + 4) = v224;
    *(v229 + 40) = v593;
    *(v229 + 7) = &type metadata for FormatInspectionGroup;
    *(v229 + 8) = &off_1F518B2C0;
    v230 = v500;
    sub_1D6CC4EB8(v517 + v490, v500, type metadata accessor for FormatDebuggerCallStackFrameContext);
    v231 = swift_getEnumCaseMultiPayload();
    v232 = *v230;
    if (v231 == 1)
    {
      sub_1D6324784();
      v234 = *(v233 + 48);
      v236 = *(v232 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
      v235 = *(v232 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8);

      (*(v506 + 8))(&v230[v234], v507);
    }

    else
    {
      v236 = *(v232 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
      v235 = *(v232 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);
    }

    v237 = *(v236 + 16);
    if (!v237)
    {
      break;
    }

    v535 = v235;
    *&v564[0] = MEMORY[0x1E69E7CC0];
    v537 = v237;
    sub_1D69972A4(0, v237, 0);
    v238 = 0;
    v224 = *&v564[0];
    v539 = *(v236 + 16);
    v239 = v236 + 32;
    v142 = &v593;
    v240 = (v514 + 56);
    v536 = xmmword_1D72E27B0;
    while (v539 != v238)
    {
      if (v238 >= *(v236 + 16))
      {
        goto LABEL_163;
      }

      sub_1D5B68374(v239, &v566);
      sub_1D5B68374(&v566, &v593);
      *(v595 + 8) = 0u;
      *(&v595[1] + 8) = 0u;
      *(&v595[2] + 8) = 0u;
      BYTE8(v595[3]) = 1;
      __swift_destroy_boxed_opaque_existential_1(&v566);
      v581 = v594;
      *(v584 + 9) = *(&v595[2] + 9);
      v583 = v595[1];
      v584[0] = v595[2];
      v582 = v595[0];
      v580 = v593;
      v241 = *(v168 + 24);
      if (*(&v594 + 1))
      {
        v242 = v531;
        sub_1D6725818(&v580, v531 + v241);
        v243 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        v244 = *(*(v243 - 8) + 56);
        v245 = v243;
        v168 = v541;
        v244(v242 + v241, 0, 1, v245);
        *v242 = v536;
        *(v242 + 16) = 0;
        *(v242 + 24) = 0;
        v246 = v242 + *(v168 + 28);
        *v246 = 0;
        *(v246 + 8) = 0;
        *(v246 + 16) = -1;
        sub_1D6725874(&v580);
      }

      else
      {
        v247 = type metadata accessor for FormatInspectionItem.Value(0);
        v242 = v531;
        (*(*(v247 - 8) + 56))(v531 + v241, 1, 1, v247);
        *v242 = v536;
        *(v242 + 16) = 0;
        *(v242 + 24) = 0;
        v248 = v242 + *(v168 + 28);
        *v248 = 0;
        *(v248 + 8) = 0;
        *(v248 + 16) = -1;
      }

      v249 = v530;
      sub_1D6CC4E30(v242, v530, type metadata accessor for FormatInspectionItem);
      (*v240)(v249, 0, 1, v168);
      *&v564[0] = v224;
      v251 = *(v224 + 2);
      v250 = *(v224 + 3);
      if (v251 >= v250 >> 1)
      {
        sub_1D69972A4(v250 > 1, v251 + 1, 1);
        v224 = *&v564[0];
      }

      ++v238;
      *(v224 + 2) = v251 + 1;
      sub_1D6CC4E30(v249, v224 + ((*(v540 + 80) + 32) & ~*(v540 + 80)) + *(v540 + 72) * v251, sub_1D5EA74B8);
      v239 += 40;
      v168 = v541;
      if (v537 == v238)
      {

        v142 = v520;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    ;
  }

  v224 = MEMORY[0x1E69E7CC0];
LABEL_62:
  sub_1D6795150(0x6E6942206D657449, 0xED000073676E6964, 0, 0, v224, v604);

  v252 = swift_allocObject();
  *(v252 + 48) = v605;
  v253 = v604[1];
  *(v252 + 16) = v604[0];
  *(v252 + 32) = v253;
  v254 = v524;
  v256 = *(v524 + 2);
  v255 = *(v524 + 3);
  v257 = v479;
  v258 = v511;
  v259 = v492;
  if (v256 >= v255 >> 1)
  {
    v466 = v252;
    v254 = sub_1D699039C((v255 > 1), v256 + 1, 1, v524);
    v252 = v466;
  }

  *(v254 + 2) = v256 + 1;
  v260 = &v254[40 * v256];
  *(v260 + 4) = v252;
  *(v260 + 40) = v593;
  *(v260 + 7) = &type metadata for FormatInspectionGroup;
  *(v260 + 8) = &off_1F518B2C0;
  v261 = *(v494 + 16);
  v523 = *(v259 + 24);
  v262 = v254;
  v261(v493, &v257[v523], v503);
  v263 = sub_1D6B98C0C();
  MEMORY[0x1EEE9AC00](v263, v264);
  *(&v471 - 4) = v517;
  *(&v471 - 3) = v258;
  *(&v471 - 2) = v257;
  v265 = sub_1D5ECD6F8(sub_1D6CC4CD0, (&v471 - 6), v263);
  v526 = 0;

  sub_1D6795150(0x617453206C6C6143, 0xEA00000000006B63, 0, 0, v265, v606);

  v266 = swift_allocObject();
  v267 = v262;
  *(v266 + 48) = v607;
  v268 = v606[1];
  *(v266 + 16) = v606[0];
  *(v266 + 32) = v268;
  v270 = *(v262 + 2);
  v269 = *(v262 + 3);
  if (v270 >= v269 >> 1)
  {
    v467 = v266;
    v267 = sub_1D699039C((v269 > 1), v270 + 1, 1, v262);
    v266 = v467;
  }

  v272 = v497;
  v271 = v498;
  *(v267 + 2) = v270 + 1;
  v273 = &v267[40 * v270];
  *(v273 + 4) = v266;
  *(v273 + 40) = v593;
  *(v273 + 7) = &type metadata for FormatInspectionGroup;
  *(v273 + 8) = &off_1F518B2C0;
  v274 = *(v259 + 28);
  v275 = v267;
  sub_1D725B8AC();
  if ((*(v495 + 48))(v272, 1, v496) == 1)
  {
    v524 = v275;
    sub_1D6CC4B10(v272, sub_1D6CC4B70);
    v276 = v525;
  }

  else
  {
    v277 = v272;
    v278 = v499;
    sub_1D6CC4E30(v277, v499, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
    (*(v488 + 16))(v487, &v257[v274], v271);
    v279 = sub_1D6B98F1C();
    MEMORY[0x1EEE9AC00](v279, v280);
    *(&v471 - 2) = v278;
    v281 = v526;
    v282 = sub_1D5ECD724(sub_1D6CC4E98, (&v471 - 4), v279);
    v526 = v281;

    sub_1D6795150(0x636170736B726F57, 0xEF6B636174532065, 0, 0, v282, v608);

    v283 = swift_allocObject();
    *(v283 + 48) = v609;
    v284 = v608[1];
    *(v283 + 16) = v608[0];
    *(v283 + 32) = v284;
    v286 = *(v275 + 2);
    v285 = *(v275 + 3);
    v287 = v275;
    if (v286 >= v285 >> 1)
    {
      v470 = v283;
      v287 = sub_1D699039C((v285 > 1), v286 + 1, 1, v275);
      v283 = v470;
    }

    v276 = v525;
    *(v287 + 2) = v286 + 1;
    v524 = v287;
    v288 = &v287[40 * v286];
    *(v288 + 4) = v283;
    *(v288 + 40) = v593;
    *(v288 + 7) = &type metadata for FormatInspectionGroup;
    *(v288 + 8) = &off_1F518B2C0;
    sub_1D6CC4B10(v499, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  }

  v530 = *(v258 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_editor);

  sub_1D725972C();

  v289 = v593;
  v290 = *(v593 + 16);
  if (v290)
  {
    *&v580 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v290, 0);
    v291 = v580;
    v531 = (v489 + 56);
    v535 = (v514 + 56);
    v519 = v289;
    v292 = (v289 + 40);
    while (1)
    {
      v293 = *(v292 - 1);
      v294 = *v292;
      v295 = *(v142 + 2);
      swift_beginAccess();
      v296 = *(*(v295 + 16) + 16);

      v539 = v291;
      if (v296 && (sub_1D5B69D90(v293, v294), (v297 & 1) != 0))
      {
        *&v536 = v293;
        v537 = v290;
        swift_endAccess();
        v298 = v513;
        sub_1D5D25108(v513);
        v299 = v298;
        v300 = v512;
        sub_1D6CC4E30(v299, v512, type metadata accessor for FormatOption);
        v301 = v300;
        v302 = v534;
        sub_1D6CC4E30(v301, v534, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v142 + 3) + 16) || (sub_1D5B69D90(v293, v294), (v303 & 1) == 0))
        {
          swift_endAccess();
          v314 = v534;
          (*v531)(v534, 1, 1, v533);
          sub_1D6CC4B10(v314, sub_1D5E04C00);
          v312 = v541;
          v315 = *(v541 + 24);
          v316 = type metadata accessor for FormatInspectionItem.Value(0);
          v313 = v293;
          v317 = v532;
          (*(*(v316 - 8) + 56))(&v532[v315], 1, 1, v316);
          *v317 = v313;
          *(v317 + 1) = v294;
          *(v317 + 2) = 0;
          *(v317 + 3) = 0;
          v318 = &v317[*(v312 + 28)];
          *v318 = 0;
          *(v318 + 1) = 0;
          v318[16] = -1;
          sub_1D6CC4CF4(&v317[v315], v276 + *(v312 + 24));
          swift_bridgeObjectRetain_n();
          sub_1D6CC4B10(v317, type metadata accessor for FormatInspectionItem);
          *v276 = v313;
          v276[1] = v294;
          v276[2] = 0;
          v276[3] = 0;
          goto LABEL_81;
        }

        *&v536 = v293;
        v537 = v290;
        swift_endAccess();
        v302 = v534;
        sub_1D5D25108(v534);
      }

      (*v531)(v302, 0, 1, v533);
      v304 = v302;
      v305 = v521;
      sub_1D6CC4E30(v304, v521, type metadata accessor for FormatOption);
      v306 = v522;
      sub_1D6CC4EB8(v305, v522, type metadata accessor for FormatOption);
      v307 = v532;
      sub_1D68B1FA4(v306, v532);
      sub_1D6CC4B10(v305, type metadata accessor for FormatOption);
      v309 = *v307;
      v308 = *(v307 + 1);
      v310 = *(v307 + 2);
      v311 = *(v307 + 3);
      v312 = v541;
      v276 = v525;
      sub_1D6CC4CF4(&v307[*(v541 + 24)], &v525[*(v541 + 24)]);

      sub_1D6CC4B10(v307, type metadata accessor for FormatInspectionItem);
      *v276 = v309;
      v276[1] = v308;
      v276[2] = v310;
      v276[3] = v311;
      v142 = v520;
      v290 = v537;
      v313 = v536;
LABEL_81:
      v319 = v276 + *(v312 + 28);
      *v319 = v313;
      *(v319 + 1) = v294;
      v319[16] = 0;
      (*v535)(v276, 0, 1, v312);
      v291 = v539;
      *&v580 = v539;
      v321 = *(v539 + 16);
      v320 = *(v539 + 24);
      if (v321 >= v320 >> 1)
      {
        sub_1D69972A4(v320 > 1, v321 + 1, 1);
        v291 = v580;
      }

      *(v291 + 16) = v321 + 1;
      sub_1D6CC4E30(v276, v291 + ((*(v540 + 80) + 32) & ~*(v540 + 80)) + *(v540 + 72) * v321, sub_1D5EA74B8);
      v292 += 2;
      if (!--v290)
      {

        goto LABEL_86;
      }
    }
  }

  v291 = MEMORY[0x1E69E7CC0];
LABEL_86:
  sub_1D6795150(0x704F206863746157, 0xED0000736E6F6974, 0, 0, v291, v610);

  v322 = swift_allocObject();
  *(v322 + 48) = v611;
  v323 = v610[1];
  *(v322 + 16) = v610[0];
  *(v322 + 32) = v323;
  v324 = v524;
  v326 = *(v524 + 2);
  v325 = *(v524 + 3);
  v327 = v527;
  if (v326 >= v325 >> 1)
  {
    v468 = v322;
    v324 = sub_1D699039C((v325 > 1), v326 + 1, 1, v524);
    v322 = v468;
  }

  *(v324 + 2) = v326 + 1;
  v524 = v324;
  v328 = &v324[40 * v326];
  *(v328 + 4) = v322;
  *(v328 + 40) = v593;
  *(v328 + 7) = &type metadata for FormatInspectionGroup;
  *(v328 + 8) = &off_1F518B2C0;

  sub_1D725972C();

  v329 = v593;
  v330 = *(v593 + 16);
  if (v330)
  {
    *&v580 = MEMORY[0x1E69E7CC0];
    v224 = &v580;
    sub_1D69972A4(0, v330, 0);
    v331 = 0;
    *&v536 = v329 + 32;
    v332 = v580;
    v168 = v327 + 56;
    v535 = (v514 + 56);
    v539 = v329;
    v537 = v330;
    v142 = v528;
    while (1)
    {
      if (v331 >= *(v329 + 16))
      {
        goto LABEL_164;
      }

      v333 = (v536 + 16 * v331);
      v334 = *v333;
      v335 = v333[1];
      if (*(v327 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v336 = sub_1D7264A5C();
        v337 = -1 << *(v327 + 32);
        v338 = v336 & ~v337;
        if ((*(v168 + ((v338 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v338))
        {
          v339 = ~v337;
          while (1)
          {
            v340 = (*(v327 + 48) + 16 * v338);
            v341 = *v340 == v334 && v340[1] == v335;
            if (v341 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v338 = (v338 + 1) & v339;
            if (((*(v168 + ((v338 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v338) & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          v342 = 1;
          goto LABEL_104;
        }
      }

      else
      {
      }

LABEL_102:
      v342 = 0;
LABEL_104:
      v343 = v541;
      v344 = *(v541 + 24);
      *(v142 + v344) = v342;
      v345 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v345 - 8) + 56))(v142 + v344, 0, 1, v345);
      *v142 = v334;
      *(v142 + 1) = v335;
      *(v142 + 2) = 0;
      *(v142 + 3) = 0;
      v346 = v142 + *(v343 + 28);
      *v346 = 0;
      *(v346 + 1) = 0;
      v346[16] = -1;
      v224 = v529;
      sub_1D6CC4CF4(v142 + v344, &v529[*(v343 + 24)]);
      swift_bridgeObjectRetain_n();
      sub_1D6CC4B10(v142, type metadata accessor for FormatInspectionItem);
      *v224 = v334;
      *(v224 + 1) = v335;
      *(v224 + 2) = 0;
      *(v224 + 3) = 0;
      v347 = v224 + *(v343 + 28);
      *v347 = v334;
      *(v347 + 1) = v335;
      v347[16] = 1;
      (*v535)(v224, 0, 1, v343);
      *&v580 = v332;
      v349 = *(v332 + 16);
      v348 = *(v332 + 24);
      if (v349 >= v348 >> 1)
      {
        sub_1D69972A4(v348 > 1, v349 + 1, 1);
        v224 = v529;
        v332 = v580;
      }

      ++v331;
      *(v332 + 16) = v349 + 1;
      sub_1D6CC4E30(v224, v332 + ((*(v540 + 80) + 32) & ~*(v540 + 80)) + *(v540 + 72) * v349, sub_1D5EA74B8);
      v327 = v527;
      v329 = v539;
      if (v331 == v537)
      {

        goto LABEL_109;
      }
    }
  }

  v332 = MEMORY[0x1E69E7CC0];
LABEL_109:
  sub_1D6795150(0x6553206863746157, 0xEF73726F7463656CLL, 0, 0, v332, v612);

  v350 = swift_allocObject();
  *(v350 + 48) = v613;
  v351 = v612[1];
  *(v350 + 16) = v612[0];
  *(v350 + 32) = v351;
  v352 = v524;
  v354 = *(v524 + 2);
  v353 = *(v524 + 3);
  if (v354 >= v353 >> 1)
  {
    v469 = v350;
    v352 = sub_1D699039C((v353 > 1), v354 + 1, 1, v524);
    v350 = v469;
  }

  *(v352 + 2) = v354 + 1;
  v524 = v352;
  v355 = &v352[40 * v354];
  *(v355 + 4) = v350;
  *(v355 + 40) = v593;
  *(v355 + 7) = &type metadata for FormatInspectionGroup;
  *(v355 + 8) = &off_1F518B2C0;
  sub_1D6CC4AAC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v356 = *(v540 + 72);
  v357 = (*(v540 + 80) + 32) & ~*(v540 + 80);
  v358 = swift_allocObject();
  *(v358 + 16) = xmmword_1D7279970;
  v539 = v358;
  v359 = v358 + v357;
  v360 = v517;
  *&v593 = *v517;
  v361 = sub_1D6E7C394();
  v362 = v541;
  v363 = (v359 + *(v541 + 24));
  *v363 = v361;
  v363[1] = v364;
  v365 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v365 - 8) + 56))(v363, 0, 1, v365);
  *v359 = xmmword_1D7347DA0;
  *(v359 + 16) = 0;
  *(v359 + 24) = 0;
  v366 = v359 + *(v362 + 28);
  *v366 = 0;
  *(v366 + 8) = 0;
  *(v366 + 16) = -1;
  v368 = v514 + 56;
  v367 = *(v514 + 56);
  v367(v359, 0, 1, v362);
  *&v593 = *v360;
  v369 = sub_1D6E7A824();
  v370 = sub_1D6E7A844(v369);
  v372 = v371;

  sub_1D711F844(1684957515, 0xE400000000000000, v370, v372, (v359 + v356));
  v540 = v356;
  v514 = v368;
  v367(v359 + v356, 0, 1, v362);
  v373 = v491;
  sub_1D6CC4EB8(v360 + v490, v491, type metadata accessor for FormatDebuggerCallStackFrameContext);
  v374 = swift_getEnumCaseMultiPayload();
  v375 = *v373;
  if (v374 == 1)
  {
    sub_1D6324784();
    v360 = *(v376 + 48);
    v378 = *(v375 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
    v377 = *(v375 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier + 8);

    (*(v506 + 8))(&v373[v360], v507);
  }

  else
  {
    v378 = *(v375 + 32);
    v377 = *(v375 + 40);
  }

  v379 = v505;
  if (v377)
  {
    v380 = v378;
  }

  else
  {
    v380 = 0;
  }

  v381 = (v359 + 2 * v540);
  sub_1D7120550(1953459283, 0xE400000000000000, v380, v377, v381);
  v367(v381, 0, 1, v541);
  sub_1D6795150(1701080910, 0xE400000000000000, 0, 0, v539, v614);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v382 = swift_allocObject();
  *(v382 + 48) = v615;
  v383 = v614[1];
  *(v382 + 16) = v614[0];
  *(v382 + 32) = v383;
  v384 = v524;
  v386 = *(v524 + 2);
  v385 = *(v524 + 3);
  if (v386 >= v385 >> 1)
  {
    v373 = v382;
    v384 = sub_1D699039C((v385 > 1), v386 + 1, 1, v524);
    v382 = v373;
  }

  v387 = v479;
  v388 = v504;
  v389 = v379;
  *(v384 + 2) = v386 + 1;
  v390 = &v384[40 * v386];
  *(v390 + 4) = v382;
  *(v390 + 40) = v593;
  *(v390 + 7) = &type metadata for FormatInspectionGroup;
  *(v390 + 8) = &off_1F518B2C0;
  v391 = v384;

  v392 = sub_1D7073500(v391);
  v524 = v391;

  v393 = sub_1D70732C4(v392);

  v394 = 0;
  v395 = *(v393 + 16);
  v396 = MEMORY[0x1E69E7CC0];
LABEL_120:
  v397 = v393 + 40 * v394;
  while (v395 != v394)
  {
    if (v394 >= *(v393 + 16))
    {
      __break(1u);
LABEL_159:
      sub_1D6CC4E20(v395);

      v465 = MEMORY[0x1E69E7CC0];
      goto LABEL_160;
    }

    ++v394;
    v398 = (v397 + 40);
    v373 = *(v397 + 64);
    v397 += 40;
    if (*(v373 + 2))
    {
      v400 = *(v398 - 1);
      v399 = *v398;
      v402 = v398[1];
      v401 = v398[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v597 = v396;
      v541 = v400;
      v540 = v402;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69993A8(0, *(v396 + 16) + 1, 1);
        v396 = v597;
      }

      v360 = *(v396 + 16);
      v404 = *(v396 + 24);
      if (v360 >= v404 >> 1)
      {
        sub_1D69993A8((v404 > 1), v360 + 1, 1);
        v396 = v597;
      }

      *(v396 + 16) = v360 + 1;
      v405 = (v396 + 40 * v360);
      v405[4] = v541;
      v405[5] = v399;
      v405[6] = v540;
      v405[7] = v401;
      v405[8] = v373;
      v388 = v504;
      v389 = v505;
      v387 = v479;
      goto LABEL_120;
    }
  }

  v406 = v396;
  v407 = v511;
  sub_1D6A6F8CC(v406);
  v408 = v517;
  v409 = v508;
  sub_1D6CC4EB8(v517, v508, type metadata accessor for FormatDebuggerCallStackFrame);
  (*(v477 + 56))(v409, 0, 1, v478);
  v410 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  swift_beginAccess();
  sub_1D6CC4BD8(v409, v407 + v410);
  swift_endAccess();
  sub_1D71A94DC(v408);

  sub_1D725B31C();

  v595[8] = v589;
  v595[9] = v590;
  v595[10] = v591;
  v596 = v592;
  v595[4] = v585;
  v595[5] = v586;
  v595[6] = v587;
  v595[7] = v588;
  v595[0] = v582;
  v595[1] = v583;
  v595[2] = v584[0];
  v595[3] = v584[1];
  v593 = v580;
  v594 = v581;
  if (sub_1D5DEA380(&v593) == 1)
  {

    v576 = v589;
    v577 = v590;
    v578 = v591;
    v579 = v592;
    v572 = v585;
    v573 = v586;
    v574 = v587;
    v575 = v588;
    v568 = v582;
    v569 = v583;
    v570 = v584[0];
    v571 = v584[1];
    v566 = v580;
    v567 = v581;
    sub_1D6CC4B10(&v566, sub_1D61957D4);
    v411 = v476;
    (*(v501 + 56))(v476, 1, 1, v502);

LABEL_133:
    v415 = sub_1D6032A5C;
    v416 = v411;
    goto LABEL_134;
  }

  v564[10] = v589;
  v564[11] = v590;
  v564[12] = v591;
  v564[6] = v585;
  v564[7] = v586;
  v564[8] = v587;
  v564[9] = v588;
  v564[2] = v582;
  v564[3] = v583;
  v564[4] = v584[0];
  v564[5] = v584[1];
  v564[0] = v580;
  v564[1] = v581;
  v551 = v590;
  v552 = v591;
  v547[1] = v585;
  v547[2] = v586;
  v548 = v587;
  v549 = v588;
  v550 = v589;
  v544 = v582;
  v545 = v583;
  v546 = v584[0];
  v547[0] = v584[1];
  v542 = v580;
  v543 = v581;
  v562[10] = v589;
  v562[11] = v590;
  v562[12] = v591;
  v562[6] = v585;
  v562[7] = v586;
  v562[8] = v587;
  v562[9] = v588;
  v562[2] = v582;
  v562[3] = v583;
  v562[4] = v584[0];
  v562[5] = v584[1];
  v565 = v592;
  v553 = v592;
  v563 = v592;
  v562[0] = v580;
  v562[1] = v581;
  sub_1D5F2B0D8(v564, &v554);
  sub_1D6CC4B10(v562, sub_1D61957D4);
  v412 = v408[2];
  *&v554 = v408[1];
  *(&v554 + 1) = v412;
  v555 = *(v408 + 3);

  v411 = v476;
  sub_1D6C56BC8(&v554, v476);

  v576 = v550;
  v577 = v551;
  v578 = v552;
  v572 = v547[1];
  v573 = v547[2];
  v579 = v553;
  v574 = v548;
  v575 = v549;
  v568 = v544;
  v569 = v545;
  v570 = v546;
  v571 = v547[0];
  v566 = v542;
  v567 = v543;
  sub_1D5F2B134(&v566);
  v413 = v501 + 48;
  v414 = *(v501 + 48);
  if ((v414)(v411, 1, v502) == 1)
  {

    goto LABEL_133;
  }

  v417 = v388;
  v537 = v414;
  v538 = v413;
  sub_1D6CC4E30(v411, v389, type metadata accessor for DebugFormatCacheFile);
  v418 = v389;
  v419 = sub_1D6CC4D88();
  v420 = v503;
  v421 = sub_1D7262C2C();
  if (!v421)
  {

    v423 = MEMORY[0x1E69E7CC0];
    v435 = v418;
    v436 = v417;
LABEL_144:
    v437 = v486;
    *&v554 = v423;

    sub_1D725B32C();

    v438 = v474;
    v439 = v485;
    if (v474 >= 4)
    {
      v440 = v474;
      v441 = v483;
      sub_1D725B8AC();
      if (v472(v441, 1, v478) != 1)
      {
        v455 = v441;
        v395 = v438;
        v456 = v482;
        sub_1D6CC4E30(v455, v482, type metadata accessor for FormatDebuggerCallStackFrame);
        v457 = v435;
        sub_1D6CC4EB8(v435, v439, type metadata accessor for DebugFormatCacheFile);
        v458 = v502;
        (*(v501 + 56))(v439, 0, 1, v502);
        v396 = v517[2];
        *&v536 = v517[1];
        v394 = v517[3];
        v535 = v517[4];
        v541 = v456[1];
        v459 = v439;
        v393 = v456[2];
        v540 = v456[3];
        v539 = v456[4];
        v460 = v480;
        sub_1D6CC4EB8(v459, v480, sub_1D6032A5C);
        if ((v537)(v460, 1, v458) == 1)
        {
          sub_1D6CC4E20(v395);

          sub_1D6CC4B10(v459, sub_1D6032A5C);

          sub_1D6CC4B10(v460, sub_1D6032A5C);
          sub_1D607F0A4(&v554);
          v461 = v457;
        }

        else
        {
          v462 = v460;
          v463 = v481;
          sub_1D6CC4E30(v462, v481, type metadata accessor for DebugFormatCacheFile);
          v360 = *v463;
          v373 = *(v463 + 8);
          v2 = *(v463 + 16);
          LODWORD(v538) = *(v463 + 24);
          v389 = *(v463 + 40);
          v537 = *(v463 + 32);
          if (!*(v463 + 48))
          {
            goto LABEL_159;
          }

          swift_beginAccess();
          sub_1D6CC4E20(v395);

          v465 = sub_1D6C4CF94(v464);
          v387 = v479;

LABEL_160:
          sub_1D6CC4B10(v485, sub_1D6032A5C);
          sub_1D6CC4B10(v481, type metadata accessor for DebugFormatCacheFile);
          *&v542 = v360;
          *(&v542 + 1) = v373;
          *&v543 = v2;
          BYTE8(v543) = v538;
          *&v544 = v537;
          *(&v544 + 1) = v389;
          *&v545 = v536;
          *(&v545 + 1) = v396;
          *&v546 = v394;
          *(&v546 + 1) = v535;
          *&v547[0] = v465;
          *(&v547[0] + 1) = v541;
          *&v547[1] = v393;
          *(&v547[1] + 1) = v540;
          *&v547[2] = v539;
          *(&v547[2] + 1) = v395;
          nullsub_1();
          v558 = v546;
          v559 = v547[0];
          v560 = v547[1];
          v561 = v547[2];
          v554 = v542;
          v555 = v543;
          v556 = v544;
          v557 = v545;
          v461 = v505;
        }

        v546 = v558;
        v547[0] = v559;
        v547[1] = v560;
        v547[2] = v561;
        v542 = v554;
        v543 = v555;
        v544 = v556;
        v545 = v557;

        sub_1D725B32C();

        sub_1D6CC4E10(v395);
        sub_1D6CC4B10(v482, type metadata accessor for FormatDebuggerCallStackFrame);
        sub_1D6CC4B10(v461, type metadata accessor for DebugFormatCacheFile);
        v408 = v517;
LABEL_135:
        sub_1D6CC4B10(v408, type metadata accessor for FormatDebuggerCallStackFrame);
        return sub_1D6CC4B10(v387, type metadata accessor for FormatDebuggerContext);
      }

      sub_1D6CC4E10(v438);
      sub_1D6CC4B10(v441, sub_1D6CC4A44);
    }

    sub_1D6CC4EB8(v435, v437, type metadata accessor for DebugFormatCacheFile);
    v442 = v502;
    (*(v501 + 56))(v437, 0, 1, v502);
    v408 = v517;
    v444 = v517[1];
    v443 = v517[2];
    v445 = v517[3];
    v541 = v517[4];
    sub_1D6CC4EB8(v437, v436, sub_1D6032A5C);
    if ((v537)(v436, 1, v442) == 1)
    {
      sub_1D6CC4B10(v437, sub_1D6032A5C);
      sub_1D6CC4B10(v436, sub_1D6032A5C);
      sub_1D607F0A4(&v554);
    }

    else
    {
      v446 = v484;
      sub_1D6CC4E30(v436, v484, type metadata accessor for DebugFormatCacheFile);
      v448 = *v446;
      v447 = *(v446 + 8);
      v449 = *(v446 + 16);
      v450 = *(v446 + 24);
      v452 = *(v446 + 32);
      v451 = *(v446 + 40);
      if (*(v446 + 48))
      {
        swift_beginAccess();
        v540 = v445;

        v454 = sub_1D6C4CF94(v453);
        v445 = v540;
      }

      else
      {

        v454 = MEMORY[0x1E69E7CC0];
      }

      sub_1D6CC4B10(v486, sub_1D6032A5C);
      sub_1D6CC4B10(v484, type metadata accessor for DebugFormatCacheFile);
      *&v542 = v448;
      *(&v542 + 1) = v447;
      *&v543 = v449;
      BYTE8(v543) = v450;
      *&v544 = v452;
      *(&v544 + 1) = v451;
      *&v545 = v444;
      *(&v545 + 1) = v443;
      *&v546 = v445;
      *(&v546 + 1) = v541;
      *&v547[0] = v454;
      *(v547 + 8) = 0u;
      *(&v547[1] + 8) = 0u;
      *(&v547[2] + 1) = 0;
      nullsub_1();
      v558 = v546;
      v559 = v547[0];
      v560 = v547[1];
      v561 = v547[2];
      v554 = v542;
      v555 = v543;
      v556 = v544;
      v557 = v545;
      v435 = v505;
      v408 = v517;
      v387 = v479;
    }

    v546 = v558;
    v547[0] = v559;
    v547[1] = v560;
    v547[2] = v561;
    v542 = v554;
    v543 = v555;
    v544 = v556;
    v545 = v557;

    sub_1D725B32C();

    v415 = type metadata accessor for DebugFormatCacheFile;
    v416 = v435;
LABEL_134:
    sub_1D6CC4B10(v416, v415);
    goto LABEL_135;
  }

  v422 = v421;
  *&v542 = MEMORY[0x1E69E7CC0];
  sub_1D699A0DC(0, v421 & ~(v421 >> 63), 0);
  v423 = v542;
  result = sub_1D7262BFC();
  if ((v422 & 0x8000000000000000) == 0)
  {
    v539 = v419;
    do
    {
      v424 = sub_1D7262D0C();
      v425 = v510;
      sub_1D6CC4EB8(v426, v510, type metadata accessor for FormatDebuggerCallStackFrame);
      v424(&v554, 0);
      v427 = v425[1];
      v428 = v425[2];
      v429 = v425[4];
      v541 = v425[3];
      v540 = v429;

      sub_1D6CC4B10(v425, type metadata accessor for FormatDebuggerCallStackFrame);
      *&v542 = v423;
      v430 = v420;
      v432 = *(v423 + 16);
      v431 = *(v423 + 24);
      if (v432 >= v431 >> 1)
      {
        sub_1D699A0DC((v431 > 1), v432 + 1, 1);
        v423 = v542;
      }

      *(v423 + 16) = v432 + 1;
      v433 = (v423 + 32 * v432);
      v433[4] = v427;
      v433[5] = v428;
      v434 = v540;
      v433[6] = v541;
      v433[7] = v434;
      sub_1D7262C6C();
      --v422;
      v420 = v430;
    }

    while (v422);

    v436 = v504;
    v435 = v505;
    goto LABEL_144;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6CC3DD4(uint64_t a1)
{
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B31C();

  v10 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  swift_beginAccess();
  sub_1D6CC4EB8(a1 + v10, v5, sub_1D6CC4A44);
  sub_1D6CBFFE0(v9, v5);
  sub_1D6CC4B10(v5, sub_1D6CC4A44);
  return sub_1D6CC4B10(v9, sub_1D6CC4A78);
}

uint64_t sub_1D6CC3FA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 8))(v8, v9);
  v10 = sub_1D5D50ED0();
  v12 = v11;
  result = sub_1D6CC4B10(v7, type metadata accessor for FeedGroupItem);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1D6CC4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v38 = a3;
  v36 = a2;
  v7 = type metadata accessor for FormatDebuggerContext();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v41 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v34 - v20;
  sub_1D6CC4EB8(a1, &v34 - v20, type metadata accessor for FormatDebuggerCallStackFrame);
  sub_1D6CC4EB8(v36, v17, type metadata accessor for FormatDebuggerCallStackFrame);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v35;
  sub_1D6CC4EB8(v40, v35, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4EB8(a1, v13, type metadata accessor for FormatDebuggerCallStackFrame);
  v24 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v25 = (v8 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_1D6CC4E30(v23, v26 + v24, type metadata accessor for FormatDebuggerContext);
  sub_1D6CC4E30(v13, v26 + v25, type metadata accessor for FormatDebuggerCallStackFrame);
  type metadata accessor for DebugFormatDebuggerCallStackEntry();
  v27 = swift_allocObject();
  sub_1D6CC4E30(v21, v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_callStackFrame, type metadata accessor for FormatDebuggerCallStackFrame);
  sub_1D6CC4E30(v41, v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_selectedCallStackFrame, type metadata accessor for FormatDebuggerCallStackFrame);
  v28 = (v27 + OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerCallStackEntry_onSelectBlock);
  *v28 = sub_1D6CC4F20;
  v28[1] = v26;
  v29 = type metadata accessor for FormatInspectionItem(0);
  v30 = *(v29 + 24);
  *(a5 + v30) = v27;
  v31 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v31 - 8) + 56))(a5 + v30, 0, 1, v31);
  *a5 = xmmword_1D72E27B0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v32 = a5 + *(v29 + 28);
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = -1;
  return (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
}

uint64_t sub_1D6CC4458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6CC4A44(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1D6CC4EB8(a2, v12, type metadata accessor for FormatDebuggerContext);
    v15 = type metadata accessor for FormatDebuggerContext();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
    sub_1D6CC4EB8(a3, v8, type metadata accessor for FormatDebuggerCallStackFrame);
    v16 = type metadata accessor for FormatDebuggerCallStackFrame(0);
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    sub_1D6CBFFE0(v12, v8);

    sub_1D6CC4B10(v8, sub_1D6CC4A44);
    return sub_1D6CC4B10(v12, sub_1D6CC4A78);
  }

  return result;
}

uint64_t sub_1D6CC4650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatDebuggerWorkspaceStackFrame();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  sub_1D6CC4EB8(a1, v20 - v12, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  sub_1D6CC4EB8(a2, v9, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  type metadata accessor for DebugFormatDebuggerWorkspaceStackEntry();
  v14 = swift_allocObject();
  sub_1D6CC4E30(v13, v14 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_workspaceFrame, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  sub_1D6CC4E30(v9, v14 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerWorkspaceStackEntry_selectedWorkspaceFrame, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  v15 = type metadata accessor for FormatInspectionItem(0);
  v16 = *(v15 + 24);
  *(a3 + v16) = v14;
  v17 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
  *a3 = xmmword_1D72E27B0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v18 = a3 + *(v15 + 28);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = -1;
  return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
}

uint64_t type metadata accessor for DebugFormatDebuggerViewController()
{
  result = qword_1EC894C80;
  if (!qword_1EC894C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6CC4998()
{
  sub_1D6CC4A44(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D6CC4AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CC4B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6CC4BD8(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A44(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CC4C3C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &unk_1EC890C00, type metadata accessor for FormatInspectionFeedGroupItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CC4CF4(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4AAC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6CC4D88()
{
  result = qword_1EC894C98;
  if (!qword_1EC894C98)
  {
    sub_1D6CC4AAC(255, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894C98);
  }

  return result;
}

void sub_1D6CC4E10(id a1)
{
  if (a1 >= 4)
  {
  }
}

id sub_1D6CC4E20(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D6CC4E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CC4EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6CC4F20()
{
  v1 = *(type metadata accessor for FormatDebuggerContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FormatDebuggerCallStackFrame(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D6CC4458(v5, v0 + v2, v6);
}

id CoverChannelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CoverChannelView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch()) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  *&v5[v14] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_accessoryLabel;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D6CC5344();
  *&v5[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_debugButton] = sub_1D725A80C();
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];
  [*&v18[v19] setAccessibilityIgnoresInvertColors_];
  v20 = *MEMORY[0x1E69DDA38];
  v21 = [v18 accessibilityTraits];
  if ((v20 & ~v21) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  [v18 setAccessibilityTraits_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D725A7FC();

  return v18;
}

void sub_1D6CC5344()
{
  if (!qword_1EDF3BDD8)
  {
    type metadata accessor for DebugButton();
    v0 = sub_1D725A81C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BDD8);
    }
  }
}

id CoverChannelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CoverChannelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CoverChannelView.prepareForReuse()()
{
  v1 = v0;
  [v0 setAccessibilityCustomActions_];
  [v0 setAccessibilityLabel_];
  [v0 setAccessibilityValue_];
  sub_1D725A7CC();
  if (v5)
  {
    v2 = sub_1D725F64C();
  }

  v3 = *(*&v1[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap);

  v4 = *(*&v1[OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton] + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap);
}

void sub_1D6CC5620()
{
  sub_1D5BBB2F4(&qword_1EDF30BF0);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed16CoverChannelViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_moreActionsButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for CoverViewActionButton()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_followButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CoverViewFollowSwitch()) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_coverImage;
  *(v0 + v4) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed16CoverChannelView_accessoryLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6CC57CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *v7;
      v12 = *(*(v3 + 16) + 104);
      v19[0] = v8;
      v19[1] = v9;
      v20 = v10;
      sub_1D5D03180(v8, v9, v10);
      v13 = v11;
      if (v12(a1, a2, v19))
      {

        v16 = v13;
        sub_1D5D07BA8(v8, v9, v10);

        return;
      }

      ++v6;
      sub_1D5D07BA8(v8, v9, v10);

      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = *(v3 + 32);

    v15 = v14;
  }
}

uint64_t sub_1D6CC591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*(v3 + 24) + 16);

  v22 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    while (v7 < *(result + 16))
    {
      v8 = result;
      v10 = *(result + v6 + 32);
      v9 = *(result + v6 + 40);
      v11 = *(result + v6 + 48);
      v12 = *(result + v6 + 64);
      v13 = *(result + v6 + 72);
      v20 = *(result + v6 + 80);
      v21 = *(result + v6 + 56);
      v14 = *(result + v6 + 88);
      v26 = *(v25[2] + 104);
      v27[0] = v10;
      v27[1] = v9;
      v28 = v11;
      sub_1D5D03180(v10, v9, v11);

      if (v26(a1, a2, v27))
      {

        sub_1D5D07BA8(v10, v9, v11);

        *a3 = v21;
        a3[1] = v12;
        a3[2] = v13;
        a3[3] = v20;
        a3[4] = v14;
        return result;
      }

      ++v7;
      sub_1D5D07BA8(v10, v9, v11);

      v6 += 64;
      result = v8;
      if (v22 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v15 = v25[5];
    v17 = v25[6];
    v16 = v25[7];
    v18 = v25[8];
    *a3 = v25[4];
    a3[1] = v15;
    a3[2] = v17;
    a3[3] = v16;
    a3[4] = v18;
  }

  return result;
}