void sub_1D631B9FC(void *a1)
{
  if (a1)
  {
    v2 = sub_1D726203C();
    [a1 setDismissingIdentifier_];
  }
}

uint64_t sub_1D631BA64(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + *(type metadata accessor for FormatWebEmbed() + 28));
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
    v5 = *a2;
    swift_retain_n();
    v6 = v3;
    if (!*(v5 + 16))
    {
      goto LABEL_5;
    }

LABEL_3:
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);

    v9 = sub_1D5B69D90(v7, v8);
    v11 = v10;

    if (v11)
    {

      v12 = *(*(v5 + 56) + 8 * v9);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_beginAccess();

      return v12;
    }

    while (1)
    {

      if (!v4)
      {
        break;
      }

      v6 = v4;
      v4 = *(v4 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
      if (*(v5 + 16))
      {
        goto LABEL_3;
      }

LABEL_5:
    }
  }

  return 0;
}

int *sub_1D631BBF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F9C8(a1, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
  v10 = a2[5];
  v11 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v10 + 16))
  {
    v13 = sub_1D5B69D90(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = (*(v10 + 56) + 16 * v13);
      v17 = *v16;
      v18 = v16[1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = 0;
  v18 = 0;
LABEL_6:
  v19 = a2[4];
  v20 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v19 + 16))
  {
    v39 = a3;
    v22 = v9;
    v23 = v18;
    v24 = v17;
    v25 = sub_1D5B69D90(v20, v21);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v19 + 56) + 8 * v25);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
    }

    v17 = v24;
    v18 = v23;
    v9 = v22;
    a3 = v39;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CD0];
  }

  v29 = a2[3];
  v30 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (!*(v29 + 16))
  {

    goto LABEL_16;
  }

  v32 = sub_1D5B69D90(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_16:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v35 = *(*(v29 + 56) + 8 * v32);

LABEL_17:
  sub_1D631FAC8(v9, a3, type metadata accessor for FormatContentSlotItemObject.Resolved);
  result = type metadata accessor for FormatContentSlotItemResolution();
  v37 = (a3 + result[5]);
  *v37 = v17;
  v37[1] = v18;
  *(a3 + result[6]) = v28;
  *(a3 + result[7]) = v35;
  return result;
}

uint64_t sub_1D631BE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D631F8F4(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption() - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

uint64_t FormatContentSlotItemObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v58, v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5C30408();
  v19 = v65;
  sub_1D7264B0C();
  if (v19)
  {
LABEL_4:
    v22 = v60;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v55 = v5;
    v20 = v57;
    v65 = v17;
    v21 = v59;
    sub_1D631D094();
    v61 = 0uLL;
    sub_1D726431C();
    v54 = 0;
    switch(v64)
    {
      case 1:
        type metadata accessor for FormatArticleList();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF10D38, type metadata accessor for FormatArticleList);
        v39 = v54;
        sub_1D726431C();
        if (v39)
        {
          goto LABEL_3;
        }

        goto LABEL_40;
      case 2:
        type metadata accessor for FormatIssue();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF12900, type metadata accessor for FormatIssue);
        v35 = v54;
        sub_1D726431C();
        if (!v35)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 3:
        type metadata accessor for FormatTag();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF1BAE8, type metadata accessor for FormatTag);
        v37 = v54;
        sub_1D726431C();
        if (!v37)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 4:
        type metadata accessor for FormatTagFeed();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF15870, type metadata accessor for FormatTagFeed);
        v28 = v54;
        sub_1D726431C();
        if (!v28)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 5:
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF11A78, type metadata accessor for FormatWebEmbed);
        v41 = v54;
        sub_1D726431C();
        if (v41)
        {
          goto LABEL_3;
        }

        (*(v56 + 8))(v13, v10);
        v34 = v65;
        sub_1D631FAC8(v8, v65, type metadata accessor for FormatWebEmbed);
        v42 = v60;
        v31 = v21;
        goto LABEL_49;
      case 6:
        type metadata accessor for FormatPuzzle();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF337C0, type metadata accessor for FormatPuzzle);
        v44 = v54;
        sub_1D726431C();
        if (!v44)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 7:
        type metadata accessor for FormatPuzzleType(0);
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF30128, type metadata accessor for FormatPuzzleType);
        v38 = v54;
        sub_1D726431C();
        if (!v38)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 8:
        v64 = xmmword_1D7279980;
        sub_1D5F8B130();
        v47 = v54;
        sub_1D726431C();
        if (v47)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v48 = *(&v61 + 1);
        v49 = v63;
        v50 = v62;
        v34 = v65;
        *v65 = v61;
        v34[1] = v48;
        *(v34 + 1) = v50;
        v34[4] = v49;
        goto LABEL_48;
      case 9:
        v64 = xmmword_1D7279980;
        sub_1D5B5C5E0();
        v30 = v54;
        sub_1D726431C();
        if (v30)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v32 = *(&v61 + 1);
        v33 = v62;
        v34 = v65;
        *v65 = v61;
        v34[1] = v32;
        *(v34 + 16) = v33;
        goto LABEL_48;
      case 10:
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(qword_1EDF30680, type metadata accessor for FormatCustomItem);
        v46 = v54;
        sub_1D726431C();
        if (v46)
        {
          (*(v56 + 8))(v13, v10);
          v22 = v60;
          return __swift_destroy_boxed_opaque_existential_1(v22);
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v34 = v65;
        sub_1D631FAC8(v20, v65, type metadata accessor for FormatCustomItem);
        goto LABEL_48;
      case 11:
        type metadata accessor for FormatScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF217D0, type metadata accessor for FormatScoreDataVisualization);
        v27 = v54;
        sub_1D726431C();
        if (!v27)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 12:
        type metadata accessor for FormatStandingDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B20, type metadata accessor for FormatStandingDataVisualization);
        v29 = v54;
        sub_1D726431C();
        if (!v29)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 13:
        type metadata accessor for FormatBracketDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC884BB8, type metadata accessor for FormatBracketDataVisualization);
        v43 = v54;
        sub_1D726431C();
        if (!v43)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 14:
        type metadata accessor for FormatBoxScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EC885B10, type metadata accessor for FormatBoxScoreDataVisualization);
        v26 = v54;
        sub_1D726431C();
        if (!v26)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 15:
        type metadata accessor for FormatLineScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B08, type metadata accessor for FormatLineScoreDataVisualization);
        v36 = v54;
        sub_1D726431C();
        if (!v36)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 16:
        type metadata accessor for FormatInjuryReportDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B00, type metadata accessor for FormatInjuryReportDataVisualization);
        v25 = v54;
        sub_1D726431C();
        if (!v25)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 17:
        type metadata accessor for FormatKeyPlayerDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885AF8, type metadata accessor for FormatKeyPlayerDataVisualization);
        v40 = v54;
        sub_1D726431C();
        if (!v40)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 18:
        type metadata accessor for FormatRecipe();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF12370, type metadata accessor for FormatRecipe);
        v45 = v54;
        sub_1D726431C();
        if (!v45)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 19:
        v64 = xmmword_1D7279980;
        sub_1D631D130();
        v51 = v54;
        sub_1D726431C();
        if (v51)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v52 = *(&v61 + 1);
        v34 = v65;
        *v65 = v61;
        v34[1] = v52;
        goto LABEL_48;
      default:
        type metadata accessor for FormatArticle();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF417D0, type metadata accessor for FormatArticle);
        v24 = v54;
        sub_1D726431C();
        if (v24)
        {
LABEL_3:
          (*(v56 + 8))(v13, v10);
          goto LABEL_4;
        }

LABEL_40:
        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v34 = v65;
        *v65 = v64;
LABEL_48:
        v42 = v60;
LABEL_49:
        swift_storeEnumTagMultiPayload();
        sub_1D631FAC8(v34, v31, type metadata accessor for FormatContentSlotItemObject);
        result = __swift_destroy_boxed_opaque_existential_1(v42);
        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatContentSlotItemObject()
{
  result = qword_1EDF3E8D0;
  if (!qword_1EDF3E8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D631D094()
{
  result = qword_1EDF3E8E0;
  if (!qword_1EDF3E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3E8E0);
  }

  return result;
}

uint64_t sub_1D631D0E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D631D130()
{
  result = qword_1EC885B28;
  if (!qword_1EC885B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B28);
  }

  return result;
}

uint64_t FormatContentSlotItemObject.encode(to:)(void *a1)
{
  v2 = v1;
  v80 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v80, v4);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v84 = v14;
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v79 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v83 = v17;
  sub_1D7264B5C();
  sub_1D631F9C8(v2, v13, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = *v13;
      LOBYTE(v89) = 1;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v53 = v82;
      sub_1D726443C();
      if (v53)
      {
        goto LABEL_50;
      }

      *&v89 = v52;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatArticleList();
      v22 = &unk_1EDF10D48;
      v23 = type metadata accessor for FormatArticleList;
      break;
    case 2u:
      v44 = *v13;
      LOBYTE(v89) = 2;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v45 = v82;
      sub_1D726443C();
      if (v45)
      {
        goto LABEL_50;
      }

      *&v89 = v44;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatIssue();
      v22 = &unk_1EDF12910;
      v23 = type metadata accessor for FormatIssue;
      break;
    case 3u:
      v48 = *v13;
      LOBYTE(v89) = 3;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v49 = v82;
      sub_1D726443C();
      if (v49)
      {
        goto LABEL_50;
      }

      *&v89 = v48;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatTag();
      v22 = &unk_1EDF05948;
      v23 = type metadata accessor for FormatTag;
      break;
    case 4u:
      v34 = *v13;
      LOBYTE(v89) = 4;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v35 = v82;
      sub_1D726443C();
      if (v35)
      {
        goto LABEL_50;
      }

      *&v89 = v34;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatTagFeed();
      v22 = &unk_1EDF15880;
      v23 = type metadata accessor for FormatTagFeed;
      break;
    case 5u:
      sub_1D631FAC8(v13, v9, type metadata accessor for FormatWebEmbed);
      LOBYTE(v89) = 5;
      sub_1D631E020();
      v85 = 0uLL;
      v38 = v83;
      v37 = v84;
      v56 = v82;
      sub_1D726443C();
      if (!v56)
      {
        v85 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF11A88, type metadata accessor for FormatWebEmbed);
        sub_1D726443C();
      }

      v40 = type metadata accessor for FormatWebEmbed;
      v41 = v9;
      goto LABEL_33;
    case 6u:
      v60 = *v13;
      LOBYTE(v89) = 6;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v61 = v82;
      sub_1D726443C();
      if (v61)
      {
        goto LABEL_50;
      }

      *&v89 = v60;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzle();
      v22 = &unk_1EDF123A0;
      v23 = type metadata accessor for FormatPuzzle;
      break;
    case 7u:
      v50 = *v13;
      LOBYTE(v89) = 7;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v51 = v82;
      sub_1D726443C();
      if (v51)
      {
        goto LABEL_50;
      }

      *&v89 = v50;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzleType(0);
      v22 = &qword_1EDF111D8;
      v23 = type metadata accessor for FormatPuzzleType;
      break;
    case 8u:
      v70 = *v13;
      v69 = v13[1];
      v71 = v13[2];
      v72 = v13[3];
      v73 = v13[4];
      LOBYTE(v89) = 8;
      sub_1D631E020();
      v85 = 0uLL;
      v74 = v83;
      v75 = v84;
      v76 = v82;
      sub_1D726443C();
      if (!v76)
      {
        *&v85 = v70;
        *(&v85 + 1) = v69;
        v86 = v71;
        v87 = v72;
        v88 = v73;
        v89 = xmmword_1D7279980;
        sub_1D5F8B184();
        sub_1D726443C();
      }

      (*(v90 + 8))(v74, v75);

    case 9u:
      v42 = *v13;
      LOBYTE(v89) = 18;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v43 = v82;
      sub_1D726443C();
      if (v43)
      {
        goto LABEL_50;
      }

      *&v89 = v42;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatRecipe();
      v22 = &qword_1EDF12380;
      v23 = type metadata accessor for FormatRecipe;
      break;
    case 0xAu:
      v65 = *v13;
      v64 = v13[1];
      LOBYTE(v89) = 19;
      sub_1D631E020();
      v85 = 0uLL;
      v66 = v83;
      v67 = v84;
      v68 = v82;
      sub_1D726443C();
      if (!v68)
      {
        *&v85 = v65;
        *(&v85 + 1) = v64;
        v89 = xmmword_1D7279980;
        sub_1D631E074();
        sub_1D726443C();
      }

      (*(v90 + 8))(v66, v67);

    case 0xBu:
      v29 = *v13;
      v28 = v13[1];
      v30 = *(v13 + 16);
      LOBYTE(v89) = 9;
      sub_1D631E020();
      v85 = 0uLL;
      v31 = v83;
      v32 = v84;
      v33 = v82;
      sub_1D726443C();
      if (!v33)
      {
        *&v85 = v29;
        *(&v85 + 1) = v28;
        LOBYTE(v86) = v30;
        v89 = xmmword_1D7279980;
        sub_1D5B5C634();
        sub_1D726443C();
      }

      (*(v90 + 8))(v31, v32);

    case 0xCu:
      v36 = v81;
      sub_1D631FAC8(v13, v81, type metadata accessor for FormatCustomItem);
      LOBYTE(v89) = 10;
      sub_1D631E020();
      v85 = 0uLL;
      v38 = v83;
      v37 = v84;
      v39 = v82;
      sub_1D726443C();
      if (!v39)
      {
        v85 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF114B0, type metadata accessor for FormatCustomItem);
        sub_1D726443C();
      }

      v40 = type metadata accessor for FormatCustomItem;
      v41 = v36;
LABEL_33:
      sub_1D631E0C8(v41, v40);
      return (*(v90 + 8))(v38, v37);
    case 0xDu:
      v58 = *v13;
      LOBYTE(v89) = 11;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v59 = v82;
      sub_1D726443C();
      if (v59)
      {
        goto LABEL_50;
      }

      *&v89 = v58;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatScoreDataVisualization();
      v22 = &qword_1EDF0A850;
      v23 = type metadata accessor for FormatScoreDataVisualization;
      break;
    case 0xEu:
      v26 = *v13;
      LOBYTE(v89) = 12;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v27 = v82;
      sub_1D726443C();
      if (v27)
      {
        goto LABEL_50;
      }

      *&v89 = v26;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatStandingDataVisualization();
      v22 = &unk_1EC885B60;
      v23 = type metadata accessor for FormatStandingDataVisualization;
      break;
    case 0xFu:
      v46 = *v13;
      LOBYTE(v89) = 13;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v47 = v82;
      sub_1D726443C();
      if (v47)
      {
        goto LABEL_50;
      }

      *&v89 = v46;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatBracketDataVisualization();
      v22 = &qword_1EC884BC0;
      v23 = type metadata accessor for FormatBracketDataVisualization;
      break;
    case 0x10u:
      v24 = *v13;
      LOBYTE(v89) = 14;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v25 = v82;
      sub_1D726443C();
      if (v25)
      {
        goto LABEL_50;
      }

      *&v89 = v24;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatBoxScoreDataVisualization();
      v22 = &unk_1EC885B50;
      v23 = type metadata accessor for FormatBoxScoreDataVisualization;
      break;
    case 0x11u:
      v54 = *v13;
      LOBYTE(v89) = 15;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v55 = v82;
      sub_1D726443C();
      if (v55)
      {
        goto LABEL_50;
      }

      *&v89 = v54;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatLineScoreDataVisualization();
      v22 = &unk_1EC885B48;
      v23 = type metadata accessor for FormatLineScoreDataVisualization;
      break;
    case 0x12u:
      v62 = *v13;
      LOBYTE(v89) = 16;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v63 = v82;
      sub_1D726443C();
      if (v63)
      {
        goto LABEL_50;
      }

      *&v89 = v62;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatInjuryReportDataVisualization();
      v22 = &unk_1EC885B40;
      v23 = type metadata accessor for FormatInjuryReportDataVisualization;
      break;
    case 0x13u:
      v77 = *v13;
      LOBYTE(v89) = 17;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v78 = v82;
      sub_1D726443C();
      if (v78)
      {
        goto LABEL_50;
      }

      *&v89 = v77;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatKeyPlayerDataVisualization();
      v22 = &unk_1EC885B38;
      v23 = type metadata accessor for FormatKeyPlayerDataVisualization;
      break;
    default:
      v18 = *v13;
      LOBYTE(v89) = 0;
      sub_1D631E020();
      v85 = 0uLL;
      v19 = v83;
      v20 = v84;
      v21 = v82;
      sub_1D726443C();
      if (v21)
      {
        goto LABEL_50;
      }

      *&v89 = v18;
      v85 = xmmword_1D7279980;
      type metadata accessor for FormatArticle();
      v22 = &qword_1EDF11EA0;
      v23 = type metadata accessor for FormatArticle;
      break;
  }

  sub_1D631D0E8(v22, v23);
  sub_1D726443C();
LABEL_50:
  (*(v90 + 8))(v19, v20);
}

unint64_t sub_1D631E020()
{
  result = qword_1EDF0B080;
  if (!qword_1EDF0B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B080);
  }

  return result;
}

unint64_t sub_1D631E074()
{
  result = qword_1EC885B68;
  if (!qword_1EC885B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B68);
  }

  return result;
}

uint64_t sub_1D631E0C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D631E128(char a1)
{
  result = 0x656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0x4C656C6369747261;
      break;
    case 2:
      result = 0x6575737369;
      break;
    case 3:
      result = 6775156;
      break;
    case 4:
      result = 0x64656546676174;
      break;
    case 5:
      result = 0x6465626D45626577;
      break;
    case 6:
      result = 0x656C7A7A7570;
      break;
    case 7:
      result = 0x7954656C7A7A7570;
      break;
    case 8:
      result = 0x7453656C7A7A7570;
      break;
    case 9:
      result = 0x6C6F686563616C70;
      break;
    case 10:
      result = 0x6D6F74737563;
      break;
    case 11:
      result = 0x65726F6373;
      break;
    case 12:
      result = 0x676E69646E617473;
      break;
    case 13:
      result = 0x74656B63617262;
      break;
    case 14:
      result = 0x65726F6353786F62;
      break;
    case 15:
      result = 0x726F6353656E696CLL;
      break;
    case 16:
      result = 0x65527972756A6E69;
      break;
    case 17:
      result = 0x6579616C5079656BLL;
      break;
    case 18:
      result = 0x657069636572;
      break;
    case 19:
      result = 0x694C657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D631E344(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D631E128(*a1);
  v5 = v4;
  if (v3 == sub_1D631E128(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D631E3CC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D631E128(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D631E430()
{
  sub_1D631E128(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D631E484()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D631E128(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D631E4E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D631F808();
  *a1 = result;
  return result;
}

uint64_t sub_1D631E514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D631E128(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v169 = a1;
  v170 = a2;
  v2 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v154 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatWebEmbed();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v153 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v168, v8);
  v167 = (&v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v166 = (&v152 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v164 = (&v152 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v163 = (&v152 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v162 = (&v152 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v161 = (&v152 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v160 = (&v152 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v165 = &v152 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v159 = &v152 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v158 = (&v152 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v155 = (&v152 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v156 = (&v152 - v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = (&v152 - v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v152 - v49);
  MEMORY[0x1EEE9AC00](v51, v52);
  v157 = &v152 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = (&v152 - v56);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = (&v152 - v60);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = (&v152 - v64);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (&v152 - v68);
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = (&v152 - v72);
  sub_1D631F85C();
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v77 = &v152 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = &v77[*(v78 + 56)];
  sub_1D631F9C8(v169, v77, type metadata accessor for FormatContentSlotItemObject);
  v169 = v79;
  sub_1D631F9C8(v170, v79, type metadata accessor for FormatContentSlotItemObject);
  v170 = v77;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = v170;
      sub_1D631F9C8(v170, v69, type metadata accessor for FormatContentSlotItemObject);
      v120 = *v69;
      v121 = v169;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_54;
      }

      if (*(v120 + 16) == *(*v121 + 16) && *(v120 + 24) == *(*v121 + 24))
      {

        goto LABEL_46;
      }

      v151 = sub_1D72646CC();

      goto LABEL_67;
    case 2u:
      v80 = v170;
      sub_1D631F9C8(v170, v65, type metadata accessor for FormatContentSlotItemObject);
      v111 = *v65;
      v112 = v169;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_54;
      }

      v113 = *v112;
      type metadata accessor for FormatIssue();
      v84 = static FormatIssue.== infix(_:_:)(v111, v113);
      goto LABEL_53;
    case 3u:
      v80 = v170;
      sub_1D631F9C8(v170, v61, type metadata accessor for FormatContentSlotItemObject);
      v115 = *v61;
      v116 = v169;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed9FormatTagC2eeoiySbAC_ACtFZ_0(v115, *v116);
      goto LABEL_53;
    case 4u:
      v80 = v170;
      sub_1D631F9C8(v170, v57, type metadata accessor for FormatContentSlotItemObject);
      v100 = *v57;
      v101 = v169;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed09FormatTagB0C2eeoiySbAC_ACtFZ_0(v100, *v101);
      goto LABEL_53;
    case 5u:
      v80 = v170;
      v102 = v157;
      sub_1D631F9C8(v170, v157, type metadata accessor for FormatContentSlotItemObject);
      v123 = v169;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v104 = v153;
        sub_1D631FAC8(v123, v153, type metadata accessor for FormatWebEmbed);
        LOBYTE(v105) = static FormatWebEmbed.== infix(_:_:)(v102, v104);
        v106 = type metadata accessor for FormatWebEmbed;
        goto LABEL_35;
      }

      v149 = type metadata accessor for FormatWebEmbed;
      goto LABEL_59;
    case 6u:
      v80 = v170;
      sub_1D631F9C8(v170, v50, type metadata accessor for FormatContentSlotItemObject);
      v128 = *v50;
      v129 = v169;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_54;
      }

      v130 = *v129;
      type metadata accessor for FormatPuzzle();
      v84 = static FormatPuzzle.== infix(_:_:)(v128, v130);
      goto LABEL_53;
    case 7u:
      v80 = v170;
      sub_1D631F9C8(v170, v46, type metadata accessor for FormatContentSlotItemObject);
      v117 = *v46;
      v118 = v169;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v119 = *v118;
      type metadata accessor for FormatPuzzleType(0);
      v84 = static FormatPuzzleType.== infix(_:_:)(v117, v119);
      goto LABEL_53;
    case 8u:
      v136 = v156;
      sub_1D631F9C8(v170, v156, type metadata accessor for FormatContentSlotItemObject);
      v137 = *v136;
      v138 = v136[2];
      v139 = v136[3];
      v140 = v136[4];
      v105 = v169;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v141 = v136[1];
        v143 = *v105;
        v142 = *(v105 + 8);
        v144 = *(v105 + 16);
        v145 = *(v105 + 24);
        v146 = *(v105 + 32);
        v172[0] = v137;
        v172[1] = v141;
        v172[2] = v138;
        v172[3] = v139;
        v172[4] = v140;
        v171[0] = v143;
        v171[1] = v142;
        v171[2] = v144;
        v171[3] = v145;
        v171[4] = v146;
        LOBYTE(v105) = _s8NewsFeed21FormatPuzzleStatisticV2eeoiySbAC_ACtFZ_0(v172, v171);

        v99 = type metadata accessor for FormatContentSlotItemObject;
      }

      else
      {

        LOBYTE(v105) = 0;
        v99 = sub_1D631F85C;
      }

      v80 = v170;
      goto LABEL_56;
    case 9u:
      v80 = v170;
      v107 = v155;
      sub_1D631F9C8(v170, v155, type metadata accessor for FormatContentSlotItemObject);
      v108 = *v107;
      v109 = v169;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_54;
      }

      v110 = *v109;
      type metadata accessor for FormatRecipe();
      v84 = static FormatRecipe.== infix(_:_:)(v108, v110);
      goto LABEL_53;
    case 0xAu:
      v80 = v170;
      v132 = v158;
      sub_1D631F9C8(v170, v158, type metadata accessor for FormatContentSlotItemObject);
      v134 = *v132;
      v133 = v132[1];
      v135 = v169;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_47;
      }

      if (v134 == *v135 && v133 == v135[1])
      {

LABEL_46:
        LOBYTE(v105) = 1;
        v99 = type metadata accessor for FormatContentSlotItemObject;
      }

      else
      {
        v151 = sub_1D72646CC();

LABEL_67:
        LODWORD(v105) = v151 << 31 >> 31;
        v99 = type metadata accessor for FormatContentSlotItemObject;
      }

      goto LABEL_56;
    case 0xBu:
      v80 = v170;
      v91 = v159;
      sub_1D631F9C8(v170, v159, type metadata accessor for FormatContentSlotItemObject);
      v93 = *v91;
      v92 = *(v91 + 8);
      v94 = *(v91 + 16);
      v95 = v169;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_47:

        goto LABEL_55;
      }

      v96 = *v95;
      v97 = *(v95 + 8);
      v98 = *(v95 + 16);
      if (v93 == v96 && v92 == v97)
      {

        v99 = type metadata accessor for FormatContentSlotItemObject;
        if (v94 == v98)
        {
LABEL_63:
          LOBYTE(v105) = 1;
          goto LABEL_56;
        }
      }

      else
      {
        v150 = sub_1D72646CC();

        v99 = type metadata accessor for FormatContentSlotItemObject;
        if ((v150 & 1) != 0 && v94 == v98)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v105) = 0;
      v99 = type metadata accessor for FormatContentSlotItemObject;
LABEL_56:
      sub_1D631E0C8(v80, v99);
      return v105 & 1;
    case 0xCu:
      v80 = v170;
      v102 = v165;
      sub_1D631F9C8(v170, v165, type metadata accessor for FormatContentSlotItemObject);
      v103 = v169;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v104 = v154;
        sub_1D631FAC8(v103, v154, type metadata accessor for FormatCustomItem);
        LOBYTE(v105) = static FormatCustomItem.== infix(_:_:)(v102, v104);
        v106 = type metadata accessor for FormatCustomItem;
LABEL_35:
        v124 = v106;
        sub_1D631E0C8(v104, v106);
        sub_1D631E0C8(v102, v124);
        v99 = type metadata accessor for FormatContentSlotItemObject;
        goto LABEL_56;
      }

      v149 = type metadata accessor for FormatCustomItem;
LABEL_59:
      sub_1D631E0C8(v102, v149);
      goto LABEL_55;
    case 0xDu:
      v80 = v170;
      v125 = v160;
      sub_1D631F9C8(v170, v160, type metadata accessor for FormatContentSlotItemObject);
      v126 = *v125;
      v127 = v169;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed28FormatScoreDataVisualizationC2eeoiySbAC_ACtFZ_0(v126, *v127);
      goto LABEL_53;
    case 0xEu:
      v80 = v170;
      v88 = v161;
      sub_1D631F9C8(v170, v161, type metadata accessor for FormatContentSlotItemObject);
      v89 = *v88;
      v90 = v169;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 0xFu:
      v80 = v170;
      v114 = v162;
      sub_1D631F9C8(v170, v162, type metadata accessor for FormatContentSlotItemObject);
      v89 = *v114;
      v90 = v169;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_54;
      }

LABEL_7:
      v84 = sub_1D670934C(v89, *v90);
      goto LABEL_53;
    case 0x10u:
      v80 = v170;
      v85 = v163;
      sub_1D631F9C8(v170, v163, type metadata accessor for FormatContentSlotItemObject);
      v86 = *v85;
      v87 = v169;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x11u:
      v80 = v170;
      v122 = v164;
      sub_1D631F9C8(v170, v164, type metadata accessor for FormatContentSlotItemObject);
      v86 = *v122;
      v87 = v169;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x12u:
      v80 = v170;
      v131 = v166;
      sub_1D631F9C8(v170, v166, type metadata accessor for FormatContentSlotItemObject);
      v86 = *v131;
      v87 = v169;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x13u:
      v80 = v170;
      v147 = v167;
      sub_1D631F9C8(v170, v167, type metadata accessor for FormatContentSlotItemObject);
      v86 = *v147;
      v87 = v169;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_54;
      }

LABEL_52:
      v84 = sub_1D6709348(v86, *v87);
      goto LABEL_53;
    default:
      v80 = v170;
      sub_1D631F9C8(v170, v73, type metadata accessor for FormatContentSlotItemObject);
      v81 = *v73;
      v82 = v169;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_54:

LABEL_55:
        LOBYTE(v105) = 0;
        v99 = sub_1D631F85C;
      }

      else
      {
        v83 = *v82;
        type metadata accessor for FormatArticle();
        v84 = static FormatArticle.== infix(_:_:)(v81, v83);
LABEL_53:
        LOBYTE(v105) = v84;

        v99 = type metadata accessor for FormatContentSlotItemObject;
      }

      goto LABEL_56;
  }
}

uint64_t sub_1D631F4E4(void *a1)
{
  a1[1] = sub_1D631D0E8(&qword_1EDF22748, type metadata accessor for FormatContentSlotItemObject);
  a1[2] = sub_1D631D0E8(qword_1EDF22750, type metadata accessor for FormatContentSlotItemObject);
  result = sub_1D631D0E8(&unk_1EC885B78, type metadata accessor for FormatContentSlotItemObject);
  a1[3] = result;
  return result;
}

uint64_t sub_1D631F590()
{
  result = type metadata accessor for FormatArticle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatArticleList();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FormatIssue();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FormatTag();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FormatTagFeed();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for FormatWebEmbed();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for FormatPuzzle();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FormatPuzzleType(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for FormatRecipe();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for FormatCustomItem();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for FormatScoreDataVisualization();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for FormatStandingDataVisualization();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for FormatBracketDataVisualization();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for FormatBoxScoreDataVisualization();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for FormatLineScoreDataVisualization();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for FormatInjuryReportDataVisualization();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for FormatKeyPlayerDataVisualization();
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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

  return result;
}

unint64_t sub_1D631F760()
{
  result = qword_1EC885B88;
  if (!qword_1EC885B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B88);
  }

  return result;
}

unint64_t sub_1D631F7B4()
{
  result = qword_1EDF3E8F0;
  if (!qword_1EDF3E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3E8F0);
  }

  return result;
}

uint64_t sub_1D631F808()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

void sub_1D631F85C()
{
  if (!qword_1EC885B98)
  {
    type metadata accessor for FormatContentSlotItemObject();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885B98);
    }
  }
}

void sub_1D631F8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D631F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D631FA30(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D631FA7C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D631FAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D631FB64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D631FD6C(a2, a3, v3, a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v3[6];
    v10 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v9);
    v11 = [objc_msgSend(a1 puzzleType)];
    swift_unknownObjectRelease();
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = (*(v10 + 8))(v7, v8, v12, v14, v9, v10);

    if (v15)
    {
      v16 = [objc_msgSend(a1 puzzleType)];
      swift_unknownObjectRelease();
      if (v16)
      {
        sub_1D632010C();
        v17 = sub_1D7261D3C();

        v18 = [v15 identifier];
        v19 = sub_1D726207C();
        v21 = v20;

        if (*(v17 + 16))
        {
          v22 = sub_1D5B69D90(v19, v21);
          v24 = v23;

          if (v24)
          {
            v25 = *(*(v17 + 56) + 8 * v22);
            swift_unknownObjectRetain();

            return v25;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D631FD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    return a1;
  }

  v7 = *(a3 + 88);
  v8 = *(a3 + 96);
  __swift_project_boxed_opaque_existential_1((a3 + 64), v7);
  v10 = [a4 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  v14 = (*(*(v8 + 8) + 56))(v11, v13, v7);

  if (v14)
  {
    v15 = [v14 rankID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D726207C();

      return v17;
    }
  }

  v18 = [objc_msgSend(*(a3 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v19 = [v18 puzzleRanksByPuzzleTypeID];

  if (v19)
  {
    sub_1D62DC978();
    v20 = sub_1D7261D3C();

    v21 = [objc_msgSend(a4 puzzleType)];
    swift_unknownObjectRelease();
    v22 = sub_1D726207C();
    v24 = v23;

    if (*(v20 + 16))
    {
      v25 = sub_1D5B69D90(v22, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v20 + 56) + 8 * v25);

        if (v28 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
        {
          v30 = 0;
          while (1)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x1DA6FB460](v30, v28);
            }

            else
            {
              if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v31 = *(v28 + 8 * v30 + 32);
            }

            v32 = v31;
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if ([v31 defaultRank])
            {

              v34 = [v32 identifier];
              v35 = sub_1D726207C();

              return v35;
            }

            ++v30;
            if (v33 == i)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }
      }
    }

    else
    {
    }

LABEL_27:
  }

  return 0;
}

uint64_t sub_1D63200A0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_1D632010C()
{
  result = qword_1EDF043B8;
  if (!qword_1EDF043B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF043B8);
  }

  return result;
}

uint64_t GapViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D632022C()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D6320268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73D19B0 == a2)
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

uint64_t sub_1D6320348(uint64_t a1)
{
  v2 = sub_1D63205BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6320384(uint64_t a1)
{
  v2 = sub_1D63205BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GapViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5C18C08(0, &qword_1EC885BA0, sub_1D63205BC, &type metadata for GapViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = v3[2];
  v14 = v3[3];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63205BC();
  sub_1D7264B5C();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA9B4(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D63205BC()
{
  result = qword_1EDF32E90;
  if (!qword_1EDF32E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E90);
  }

  return result;
}

uint64_t GapViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1D5C18C08(0, &qword_1EDF19C60, sub_1D63205BC, &type metadata for GapViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63205BC();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D5BEA9B4(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    v20 = 1;
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v15;
    *v11 = v16;
    v11[1] = v13;
    v14 = v19;
    v11[2] = v18;
    v11[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D632085C(uint64_t a1)
{
  v2 = sub_1D6320DA4();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D63208C8()
{
  sub_1D6320D50();

  return sub_1D725A24C();
}

uint64_t GapViewLayout.Context.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return sub_1D5BF2DDC(v4, v5);
}

unint64_t sub_1D63209B4()
{
  result = qword_1EDF32E70;
  if (!qword_1EDF32E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E70);
  }

  return result;
}

unint64_t sub_1D6320A0C()
{
  result = qword_1EC885BA8;
  if (!qword_1EC885BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BA8);
  }

  return result;
}

unint64_t sub_1D6320A64()
{
  result = qword_1EDF32E58;
  if (!qword_1EDF32E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E58);
  }

  return result;
}

unint64_t sub_1D6320ABC()
{
  result = qword_1EDF32E60;
  if (!qword_1EDF32E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E60);
  }

  return result;
}

unint64_t sub_1D6320B14()
{
  result = qword_1EDF32E78;
  if (!qword_1EDF32E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E78);
  }

  return result;
}

uint64_t sub_1D6320B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D6320BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6320C4C()
{
  result = qword_1EC885BB0;
  if (!qword_1EC885BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BB0);
  }

  return result;
}

unint64_t sub_1D6320CA4()
{
  result = qword_1EDF32E80;
  if (!qword_1EDF32E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E80);
  }

  return result;
}

unint64_t sub_1D6320CFC()
{
  result = qword_1EDF32E88;
  if (!qword_1EDF32E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E88);
  }

  return result;
}

unint64_t sub_1D6320D50()
{
  result = qword_1EDF32E68;
  if (!qword_1EDF32E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E68);
  }

  return result;
}

unint64_t sub_1D6320DA4()
{
  result = qword_1EC885BB8;
  if (!qword_1EC885BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BB8);
  }

  return result;
}

uint64_t sub_1D6320DF8()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  v2 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
  *&v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale] = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale];
  [v1 setNeedsLayout];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = *&v0[v2];
  [v3 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = *&v0[v2];
  [v4 setNeedsLayout];
  v5 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  result = swift_beginAccess();
  v7 = *&v0[v5];
  if (v7 >> 62)
  {
    result = sub_1D7263BFC();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = &v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];

    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6FB460](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = *&v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v0[v2];
      v14 = v13 - CGRectGetMinY(*v9);
      v15 = v12;
      [v0 bounds];
      [v15 setFrame_];
    }

    while (v8 != v10);
  }

  return result;
}

id sub_1D6320FEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView);
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  *&v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentSize] = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  [v1 setNeedsLayout];
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView);
  *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = *v2;
  [v3 setNeedsLayout];
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView);
  *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = v2[1];

  return [v4 setNeedsLayout];
}

uint64_t sub_1D632109C()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  [v0 frame];
  sub_1D726328C();
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentBounds];
  *v2 = v3;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  [v1 setNeedsLayout];
  v7 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  [v0 frame];
  sub_1D726328C();
  v8 = &v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  [v7 setNeedsLayout];
  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  [v0 frame];
  sub_1D726328C();
  v14 = &v13[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v14 = v15;
  *(v14 + 1) = v16;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  [v13 setNeedsLayout];
  v19 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  result = swift_beginAccess();
  v21 = *&v0[v19];
  if (v21 >> 62)
  {
    result = sub_1D7263BFC();
    v22 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return result;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
  }

  else
  {
    v23 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;

    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA6FB460](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      v27 = *&v25[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v0[v23];
      v28 = v27 - CGRectGetMinY(*v14);
      v29 = v26;
      [v0 bounds];
      [v29 setFrame_];
    }

    while (v22 != v24);
  }

  return result;
}

id sub_1D6321348()
{
  v1 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden;
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer] setHidden_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D63213F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_12:

  *&v1[v2] = MEMORY[0x1E69E7CC0];

  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators];
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = &v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator];
  v13 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden;
  v43 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  v42 = type metadata accessor for DebugFormatRulerSeparatorView();

  v41 = v1;
  v14 = (v10 + 64);
  do
  {
    v16 = *(v14 - 4);
    v15 = *(v14 - 3);
    v17 = *(v14 - 2);
    v18 = *(v14 - 1);
    v19 = *v14;
    *&v44 = v16;
    *(&v44 + 1) = v15;
    v45 = v17;
    v46 = v18;
    v47 = v19;
    v20 = objc_allocWithZone(v42);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v21 = sub_1D7161004(&v44);
    v22 = *(v12 + 1);
    if (v22)
    {
      if (v16 == *v12 && v22 == v15)
      {

        v23 = &v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 1;
LABEL_20:
        if (qword_1EC87DD48 != -1)
        {
          swift_once();
        }

        v25 = &qword_1EC89B790;
        goto LABEL_26;
      }

      v24 = sub_1D72646CC();

      v23 = &v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
      v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = v24 & 1;
      v1 = v41;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    else
    {

      v23 = &v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
      v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 0;
    }

    if (qword_1EC87DD50 != -1)
    {
      swift_once();
    }

    v25 = &qword_1EC89B798;
LABEL_26:
    [v21 setBackgroundColor_];
    v26 = *&v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
    if (*v23 == 1)
    {
      v27 = &qword_1EC89B790;
      if (qword_1EC87DD48 != -1)
      {
        v28 = *&v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
        swift_once();
        v26 = v28;
        v27 = &qword_1EC89B790;
      }
    }

    else
    {
      v27 = &qword_1EC89B798;
      if (qword_1EC87DD50 != -1)
      {
        v30 = *&v21[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
        swift_once();
        v26 = v30;
        v27 = &qword_1EC89B798;
      }
    }

    [v26 setBackgroundColor_];
    [v21 setHidden_];
    [v1 insertSubview:v21 belowSubview:v43];
    swift_beginAccess();
    v29 = v21;
    MEMORY[0x1DA6F9CE0]();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_endAccess();

    v14 += 5;
    --v11;
  }

  while (v11);

LABEL_35:
  v31 = *&v1[v2];
  if (v31 >> 62)
  {
    result = sub_1D7263BFC();
    v32 = result;
    if (result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_37:
      if (v32 < 1)
      {
        __break(1u);
      }

      else
      {
        v33 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
        v34 = (*&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView] + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds);

        v35 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1DA6FB460](v35, v31);
          }

          else
          {
            v36 = *(v31 + 8 * v35 + 32);
          }

          v37 = v36;
          ++v35;
          v38 = *&v36[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v1[v33];
          v39 = v38 - CGRectGetMinY(*v34);
          v40 = v37;
          [v1 bounds];
          [v40 setFrame_];
        }

        while (v32 != v35);
      }
    }
  }

  return result;
}

uint64_t sub_1D63219A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator);
  *v3 = a1;
  v3[1] = a2;

  v4 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = sub_1D7263BFC();
  v7 = result;
  if (result)
  {
LABEL_3:
    if (v7 < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    while (1)
    {
      v10 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x1DA6FB460](v8, v6) : *(v6 + 8 * v8 + 32);
      v11 = v10;
      v12 = v3[1];
      if (!v12)
      {
        break;
      }

      if (*&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator] == *v3 && v12 == *&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 8])
      {
        v15 = &v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 1;
      }

      else
      {
        v14 = sub_1D72646CC();
        v15 = &v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = v14 & 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (qword_1EC87DD48 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EC89B790;
LABEL_26:
      [v11 setBackgroundColor_];
      v19 = *&v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
      if (*v15 == 1)
      {
        v9 = &qword_1EC89B790;
        if (qword_1EC87DD48 != -1)
        {
          v17 = *&v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
          swift_once();
          v19 = v17;
          v9 = &qword_1EC89B790;
        }
      }

      else
      {
        v9 = &qword_1EC89B798;
        if (qword_1EC87DD50 != -1)
        {
          v18 = *&v11[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
          swift_once();
          v19 = v18;
          v9 = &qword_1EC89B798;
        }
      }

      ++v8;
      [v19 setBackgroundColor_];

      if (v7 == v8)
      {
      }
    }

    v15 = &v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
    v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 0;
LABEL_19:
    if (qword_1EC87DD50 != -1)
    {
      swift_once();
    }

    v16 = &qword_1EC89B798;
    goto LABEL_26;
  }

  return result;
}

void sub_1D6321CB4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView];
  [v1 safeAreaInsets];
  [v2 setFrame_];
  v4 = [v1 superview];
  if (v4 && (v5 = v4, v6 = [v4 superview], v5, v6))
  {
    [v6 safeAreaInsets];
    v8 = v7;
  }

  else
  {
    [v1 safeAreaInsets];
    v8 = v9;
  }

  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  v30 = 0x3FF0000000000000;
  v31 = 0;
  v32 = 0;
  v33 = 0x3FF0000000000000;
  v34 = 0;
  v35 = 0;
  *&v28.a = 0x3FF0000000000000uLL;
  v28.c = 0.0;
  v28.d = 1.0;
  *&v28.tx = 0uLL;
  [v10 setTransform_];
  [v1 bounds];
  [v10 setFrame_];
  v11 = [v10 layer];
  v12 = 0.0;
  [v11 setAnchorPoint_];

  CGAffineTransformMakeRotation(&v28, 1.57079633);
  [v10 setTransform_];
  v13 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  [v1 bounds];
  [v13 setFrame_];
  if (![v10 isHidden])
  {
    v12 = 32.0;
  }

  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  [v1 bounds];
  v15 = CGRectGetWidth(v38) - v12;
  [v1 bounds];
  [v14 setFrame_];
  Mutable = CGPathCreateMutable();
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetWidth(v40);
  sub_1D7262F2C();
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetWidth(v41);
  sub_1D7262F2C();
  sub_1D7262F0C();
  if (([v10 isHidden] & 1) == 0)
  {
    [v1 bounds];
    CGRectGetHeight(v42);
  }

  sub_1D7262F2C();
  [*&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer] setPath_];
  v17 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_19:

    return;
  }

  v19 = sub_1D7263BFC();
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    v20 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
    v21 = &v10[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];

    v22 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6FB460](v22, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      v25 = *&v23[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v1[v20];
      v26 = v25 - CGRectGetMinY(*v21);
      v27 = v24;
      [v1 bounds];
      [v27 setFrame_];
    }

    while (v19 != v22);
  }
}

char *sub_1D6322430()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale] = 0x3FF0000000000000;
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_canvasOffset];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden] = 0;
  v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden] = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators] = MEMORY[0x1E69E7CC0];
  v8 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulerSize] = 0x4040000000000000;
  v9 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView;
  v10 = type metadata accessor for DebugFormatRulerEdgeView();
  v11 = objc_allocWithZone(v10);
  *&v0[v9] = sub_1D6207C7C(0);
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView;
  v13 = objc_allocWithZone(v10);
  *&v0[v12] = sub_1D6207C7C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for DebugFormatGridView()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  *&v0[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  *&v0[v16] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews] = v7;
  v37.receiver = v0;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = *&v17[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  v19 = v17;
  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  v21 = *&v19[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondarySystemBackgroundColor];
  [v23 setBackgroundColor_];

  [v19 addSubview_];
  v25 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  v26 = *&v19[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setLineWidth_];
  v32 = *&v19[v25];
  v33 = [v22 separatorColor];
  v34 = [v33 CGColor];

  [v32 setStrokeColor_];
  v35 = [v19 layer];

  [v35 addSublayer_];
  return v19;
}

void sub_1D63227FC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale) = 0x3FF0000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_canvasOffset);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame);
  *v6 = 0u;
  v6[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators) = MEMORY[0x1E69E7CC0];
  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulerSize) = 0x4040000000000000;
  v9 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView;
  v10 = type metadata accessor for DebugFormatRulerEdgeView();
  v11 = objc_allocWithZone(v10);
  *(v0 + v9) = sub_1D6207C7C(0);
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView;
  v13 = objc_allocWithZone(v10);
  *(v0 + v12) = sub_1D6207C7C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView;
  *(v1 + v14) = [objc_allocWithZone(type metadata accessor for DebugFormatGridView()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v1 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews) = v7;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6322A3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v3 = sub_1D72646FC();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (qword_1EDF272B0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDFFCAA0;
    v7 = sub_1D726203C();
    v8 = [v6 dateFromString_];

    if (v8)
    {

      sub_1D72588BC();
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = sub_1D7264ACC();
      sub_1D6322D18();
      swift_allocError();
      *v10 = v3;
      v10[1] = v5;
      v10[2] = v9;
      swift_willThrow();
    }
  }
}

uint64_t sub_1D6322BDC()
{
  v0 = sub_1D605A4CC(&unk_1F50F5728);
  sub_1D5E3E63C();
  result = swift_arrayDestroy();
  qword_1EDFFCBF8 = v0;
  return result;
}

uint64_t FormatJSONDecoder.__deallocating_deinit()
{
  _s8NewsFeed17FormatJSONDecoderCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6322C80(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF2F570 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFCBF8;
  if (*(qword_1EDFFCBF8 + 16))
  {
    v5 = sub_1D5B69D90(a1, a2);
    if (v6)
    {
      a1 = *(*(v4 + 56) + 16 * v5);
    }
  }

  return a1;
}

unint64_t sub_1D6322D18()
{
  result = qword_1EC885C48;
  if (!qword_1EC885C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885C48);
  }

  return result;
}

uint64_t _s8NewsFeed18ThumbnailProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, v8);
  sub_1D61BA350();
  type metadata accessor for ThumbnailProcessorRequest();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
    sub_1D725D2CC();
    if (v1)
    {
      v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v3 = sub_1D726203C();

      v4 = [v2 initWithContentsOfFile_];

      if (v4)
      {
LABEL_4:
        v5 = sub_1D726361C();

        return v5;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
      v4 = sub_1D725D29C();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

id FCRecipe.overridden(by:configuration:assetManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return sub_1D6323068(a1, a2, a3, v3);
}

id sub_1D6323068(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a4;
  v6 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  if (*(a1 + 8) || *(a1 + 24) || (sub_1D5CE5660(a1 + *(v6 + 24), v13, sub_1D5B5CFA0), v18 = type metadata accessor for FormatThumbnail(), v19 = (*(*(v18 - 8) + 48))(v13, 1, v18), sub_1D5CE49BC(v13, sub_1D5B5CFA0), v19 != 1))
  {
    sub_1D5CE50C4();
    sub_1D5CE5660(a1 + *(v6 + 24), v17, sub_1D5B5CFA0);
    v20 = sub_1D5CE5110(v17, a3);
    sub_1D5CE5660(a1, v9, type metadata accessor for FormatRecipeOverrides);
    v21 = type metadata accessor for FormatRecipeOverridesMetadata();
    v22 = objc_allocWithZone(v21);
    v23 = v9[1];
    v24 = &v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_title];
    *v24 = *v9;
    *(v24 + 1) = v23;
    v25 = v9[3];
    v26 = &v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_shortExcerpt];
    *v26 = v9[2];
    *(v26 + 1) = v25;
    *&v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_formatThumbnail] = v20;
    v35.receiver = v22;
    v35.super_class = v21;
    v27 = v20;

    v28 = objc_msgSendSuper2(&v35, sel_init);
    sub_1D5CE49BC(v9, type metadata accessor for FormatRecipeOverrides);
    v29 = v28;
    v30 = FCAssignSingleRecipeMetadata();

    if (v30)
    {
      return v30;
    }
  }

  v32 = v34;

  return v32;
}

unint64_t FormatCustomNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatCustomNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCustomNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatCustomNode.name.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

unint64_t FormatCustomNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatCustomNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t FormatCustomNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

unint64_t sub_1D6323680(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  sub_1D5EB1500(v2);
  *(v3 + 104) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatCustomNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatCustomNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t FormatCustomNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatCustomNode.__allocating_init(identifier:name:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, __int128 *a12)
{
  v18 = swift_allocObject();
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a10;
  v27 = *(a12 + 5);
  v28 = *(a12 + 4);
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v19;
  *(v18 + 40) = *(a3 + 1);
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  swift_beginAccess();
  *(v18 + 72) = a6;
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  swift_beginAccess();
  *(v18 + 96) = a9;
  swift_beginAccess();
  *(v18 + 104) = v22;
  swift_beginAccess();
  *(v18 + 112) = a11;
  v23 = *a12;
  *(v18 + 136) = a12[1];
  *(v18 + 120) = v23;
  *(v18 + 152) = v28;
  *(v18 + 160) = v27;
  return v18;
}

uint64_t FormatCustomNode.init(identifier:name:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, __int128 *a12)
{
  v18 = *a3;
  v19 = *a4;
  v20 = *a5;
  v26 = *(a12 + 4);
  v24 = *a10;
  v25 = *(a12 + 5);
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v18;
  *(v12 + 40) = *(a3 + 1);
  *(v12 + 56) = v19;
  *(v12 + 64) = v20;
  swift_beginAccess();
  *(v12 + 72) = a6;
  *(v12 + 80) = a7;
  *(v12 + 88) = a8;
  swift_beginAccess();
  *(v12 + 96) = a9;
  swift_beginAccess();
  *(v12 + 104) = v24;
  swift_beginAccess();
  *(v12 + 112) = a11;
  v21 = *a12;
  *(v12 + 136) = a12[1];
  *(v12 + 120) = v21;
  *(v12 + 152) = v26;
  *(v12 + 160) = v25;
  return v12;
}

uint64_t FormatCustomNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 56));

  sub_1D5EB15C4(*(v0 + 104));
  sub_1D5EB2398(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t FormatCustomNode.__deallocating_deinit()
{
  FormatCustomNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6323B8C(uint64_t a1)
{
  result = sub_1D6323D20(&qword_1EC885CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6323BF4(void *a1)
{
  a1[1] = sub_1D6323D20(&qword_1EDF30648);
  a1[2] = sub_1D6323D20(&unk_1EDF114A0);
  result = sub_1D6323D20(&qword_1EC885CD8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6323C80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D666EFA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6323CDC(uint64_t a1)
{
  result = sub_1D6323D20(&qword_1EC885CE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6323D20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatCustomNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6323D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v35 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v21 = v20;
    v31 = v35;
    v19 = *(a4 + 16);
    v18 = *(a4 + 24);
    v22 = *(a4 + 64);
    if (!v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v31 = v19;
    v21 = v18;
    v22 = *(a4 + 64);
    if (!v22)
    {
LABEL_7:
      v23 = 0;
      goto LABEL_8;
    }
  }

  v23 = *(v22 + 16);
  swift_beginAccess();
  if (!*(*(v23 + 16) + 16))
  {
    goto LABEL_7;
  }

LABEL_8:
  swift_beginAccess();
  v24 = *(a4 + 96);
  swift_beginAccess();
  v25 = *(a4 + 104);

  sub_1D5EB1500(v25);
  sub_1D615B4A8(a3, &v36);
  sub_1D5EB15C4(v25);
  v26 = v36;
  swift_beginAccess();
  v27 = *(a4 + 112);
  type metadata accessor for FormatCustomNodeLayoutAttributes();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = v31;
  *(v28 + 40) = v21;
  *(v28 + 48) = v19;
  *(v28 + 56) = v18;
  *(v28 + 64) = a7;
  *(v28 + 72) = a8;
  *(v28 + 80) = a9;
  *(v28 + 88) = a10;
  *(v28 + 96) = v23;
  *(v28 + 104) = v24;
  *(v28 + 112) = v26;
  *(v28 + 120) = v27;
  *(v28 + 128) = a5;
  v29 = swift_allocObject();
  *(v28 + 136) = MEMORY[0x1E69E7CD0];
  *(v29 + 16) = v28;
  *a6 = v29 | 0x5000000000000000;
}

uint64_t type metadata accessor for FormatDebuggerContext()
{
  result = qword_1EC885CF0;
  if (!qword_1EC885CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6324070()
{
  sub_1D63245CC(319, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  if (v0 <= 0x3F)
  {
    sub_1D63245CC(319, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D632416C()
{
  v0 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D63245CC(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatDebuggerContext();
  sub_1D63245CC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  sub_1D725B8AC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6324630(v7);
    return 0;
  }

  else
  {
    sub_1D63246BC(v7, v12);
    sub_1D6324720(&v12[*(v8 + 24)], v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D6324784();
      v15 = *(v14 + 48);
      v20 = 0x203A74756F79614CLL;
      v21 = 0xE800000000000000;
      v16 = sub_1D63244B4();
      MEMORY[0x1DA6F9910](v16);

      v13 = v20;
      sub_1D63247F8(v12, type metadata accessor for FormatDebuggerCallStackFrame);
      sub_1D5EB9994();
      (*(*(v17 - 8) + 8))(&v3[v15], v17);
    }

    else
    {
      sub_1D63247F8(v3, type metadata accessor for FormatDebuggerCallStackFrameContext);
      v20 = 0x3A676E69646E6942;
      v21 = 0xE900000000000020;
      v18 = sub_1D63244B4();
      MEMORY[0x1DA6F9910](v18);

      v13 = v20;
      sub_1D63247F8(v12, type metadata accessor for FormatDebuggerCallStackFrame);
    }
  }

  return v13;
}

uint64_t sub_1D63244B4()
{
  v1 = *(v0 + 32);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x74756F2070657473;
      }

      return 0x726F727265;
    }

    return 0x6E692070657473;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65766F2070657473;
      }

      return 0x726F727265;
    }

    strcpy(v4, "breakpoint (");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v4[0];
  }
}

void sub_1D63245CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6324630(uint64_t a1)
{
  sub_1D63245CC(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D63246BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6324720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6324784()
{
  if (!qword_1EDF2F468)
  {
    type metadata accessor for FormatNodeContext();
    sub_1D5EB9994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2F468);
    }
  }
}

uint64_t sub_1D63247F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::PuzzleAccessoryButtonsConfig_optional __swiftcall PuzzleAccessoryButtonsConfig.init(with:)(Swift::OpaquePointer with)
{
  rawValue = with._rawValue;
  v3 = v1;
  v4 = *(with._rawValue + 2);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if (v7 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = v7 + 1;

        PuzzleAccessoryButtonConfig.init(with:)(&v27, v8);
        object = v27.value.identifier._object;
        if (v27.value.identifier._object)
        {
          break;
        }

        with._rawValue = sub_1D5C39354(v27.value.identifier._countAndFlagsBits, 0);
        ++v7;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      countAndFlagsBits = v27.value.text.value._countAndFlagsBits;
      v26 = v27.value.identifier._countAndFlagsBits;
      v23 = v27.value.icon.value._countAndFlagsBits;
      v24 = v27.value.text.value._object;
      v11 = v27.value.icon.value._object;
      v22 = v27.value.menuItems.value._rawValue;
      with._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v21 = v3;
      if ((with._rawValue & 1) == 0)
      {
        with._rawValue = sub_1D698FDF4(0, *(v6 + 2) + 1, 1, v6);
        v6 = with._rawValue;
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      v14 = v22;
      v15 = v23;
      v16 = v24;
      v17 = countAndFlagsBits;
      v18 = v26;
      if (v13 >= v12 >> 1)
      {
        with._rawValue = sub_1D698FDF4((v12 > 1), v13 + 1, 1, v6);
        v16 = v24;
        v17 = countAndFlagsBits;
        v14 = v22;
        v15 = v23;
        v19 = v11;
        v6 = with._rawValue;
        v18 = v26;
      }

      else
      {
        v19 = v11;
      }

      *(v6 + 2) = v13 + 1;
      v20 = &v6[56 * v13];
      *(v20 + 4) = v18;
      *(v20 + 5) = object;
      *(v20 + 6) = v17;
      *(v20 + 7) = v16;
      *(v20 + 8) = v15;
      *(v20 + 9) = v19;
      *(v20 + 10) = v14;
      v3 = v21;
    }

    while (v4 - 1 != v7);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  *v3 = v6;
LABEL_18:
  result.value.buttons = with;
  result.is_nil = v10;
  return result;
}

void __swiftcall PuzzleAccessoryButtonConfig.init(with:)(NewsFeed::PuzzleAccessoryButtonConfig_optional *__return_ptr retstr, Swift::OpaquePointer with)
{
  if (*(with._rawValue + 2))
  {
    v4 = sub_1D5B69D90(25705, 0xE200000000000000);
    if (v5)
    {
      sub_1D5B76B10(*(with._rawValue + 7) + 32 * v4, v71);
      if (swift_dynamicCast())
      {
        v6 = v62;
        if (*(with._rawValue + 2))
        {
          v7 = sub_1D5B69D90(1954047348, 0xE400000000000000);
          if (v8)
          {
            sub_1D5B76B10(*(with._rawValue + 7) + 32 * v7, v71);
            v9 = swift_dynamicCast();
            if (v9)
            {
              v10 = v62;
            }

            else
            {
              v10 = 0;
            }

            if (v9)
            {
              v11 = *(&v62 + 1);
            }

            else
            {
              v11 = 0;
            }

            if (!*(with._rawValue + 2))
            {
              goto LABEL_31;
            }

LABEL_22:
            v21 = sub_1D5B69D90(1852793705, 0xE400000000000000);
            if (v22)
            {
              sub_1D5B76B10(*(with._rawValue + 7) + 32 * v21, v71);
              v23 = swift_dynamicCast();
              if (v23)
              {
                v24 = v62;
              }

              else
              {
                v24 = 0;
              }

              if (v23)
              {
                v25 = *(&v62 + 1);
              }

              else
              {
                v25 = 0;
              }

              if (!*(with._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            else
            {
              v24 = 0;
              v25 = 0;
              if (!*(with._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            v27 = sub_1D5B69D90(1970169197, 0xE400000000000000);
            if (v28)
            {
              sub_1D5B76B10(*(with._rawValue + 7) + 32 * v27, v71);

              sub_1D6325CE0();
              if (swift_dynamicCast())
              {
                v42 = v11;
                v43 = v10;
                v29 = v62;
                v30 = *(v62 + 16);
                if (v30)
                {
                  v31 = 0;
                  v26 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v32 = v31;
                    while (1)
                    {
                      if (v32 >= *(v29 + 16))
                      {
                        __break(1u);
                        return;
                      }

                      v31 = v32 + 1;

                      PuzzleMenuConfig.init(with:)(v33, &v62);
                      v71[6] = v68;
                      v71[7] = v69;
                      v72[0] = v70[0];
                      *(v72 + 9) = *(v70 + 9);
                      v71[2] = v64;
                      v71[3] = v65;
                      v71[4] = v66;
                      v71[5] = v67;
                      v71[0] = v62;
                      v71[1] = v63;
                      if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(v71) != 1)
                      {
                        break;
                      }

                      v59 = v68;
                      v60 = v69;
                      v61[0] = v70[0];
                      *(v61 + 9) = *(v70 + 9);
                      v55 = v64;
                      v56 = v65;
                      v57 = v66;
                      v58 = v67;
                      v53 = v62;
                      v54 = v63;
                      sub_1D6325D38(&v53);
                      ++v32;
                      if (v30 == v31)
                      {
                        goto LABEL_52;
                      }
                    }

                    v59 = v68;
                    v60 = v69;
                    v61[0] = v70[0];
                    *(v61 + 9) = *(v70 + 9);
                    v55 = v64;
                    v56 = v65;
                    v57 = v66;
                    v58 = v67;
                    v53 = v62;
                    v54 = v63;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v26 = sub_1D69935C8(0, *(v26 + 2) + 1, 1, v26);
                    }

                    v35 = *(v26 + 2);
                    v34 = *(v26 + 3);
                    v36 = v35 + 1;
                    if (v35 >= v34 >> 1)
                    {
                      v41 = v35 + 1;
                      v38 = v26;
                      v39 = *(v26 + 2);
                      v40 = sub_1D69935C8((v34 > 1), v35 + 1, 1, v38);
                      v36 = v41;
                      v35 = v39;
                      v26 = v40;
                    }

                    v48 = v57;
                    v49 = v58;
                    v46 = v55;
                    v47 = v56;
                    *&v52[9] = *(v61 + 9);
                    v51 = v60;
                    *v52 = v61[0];
                    v50 = v59;
                    v44 = v53;
                    v45 = v54;
                    *(v26 + 2) = v36;
                    v37 = &v26[160 * v35];
                    *(v37 + 2) = v44;
                    *(v37 + 3) = v45;
                    *(v37 + 6) = v48;
                    *(v37 + 7) = v49;
                    *(v37 + 4) = v46;
                    *(v37 + 5) = v47;
                    *(v37 + 169) = *&v52[9];
                    *(v37 + 9) = v51;
                    *(v37 + 10) = *v52;
                    *(v37 + 8) = v50;
                  }

                  while (v30 - 1 != v32);
                }

                else
                {
                  v26 = MEMORY[0x1E69E7CC0];
                }

LABEL_52:

                v11 = v42;
                v10 = v43;
                goto LABEL_34;
              }

LABEL_33:
              v26 = 0;
LABEL_34:
              retstr->value.identifier = v6;
              retstr->value.text.value._countAndFlagsBits = v10;
              retstr->value.text.value._object = v11;
              retstr->value.icon.value._countAndFlagsBits = v24;
              retstr->value.icon.value._object = v25;
              retstr->value.menuItems.value._rawValue = v26;
              return;
            }

LABEL_32:

            goto LABEL_33;
          }

          v10 = 0;
          v11 = 0;
          if (*(with._rawValue + 2))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v11 = 0;
          v10 = 0;
        }

LABEL_31:
        v25 = 0;
        v24 = 0;
        goto LABEL_32;
      }
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v12 = sub_1D725C42C();
  __swift_project_value_buffer(v12, qword_1EDFFCFA8);

  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v71[0] = v16;
    *v15 = 136315138;
    v17 = sub_1D7261D4C();
    v19 = v18;

    v20 = sub_1D5BC5100(v17, v19, v71);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1D5B42000, v13, v14, "Failed parsing PuzzleAccessoryButtonConfig. Invalid id entry: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  else
  {
  }

  retstr->value.menuItems.value._rawValue = 0;
  retstr->value.text = 0u;
  retstr->value.icon = 0u;
  retstr->value.identifier = 0u;
}

uint64_t sub_1D6324FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6325050(uint64_t a1)
{
  v2 = sub_1D6325DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D632508C(uint64_t a1)
{
  v2 = sub_1D6325DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryButtonsConfig.encode(to:)(void *a1)
{
  sub_1D6325FEC(0, &qword_1EC885D08, sub_1D6325DB8, &type metadata for PuzzleAccessoryButtonsConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325DB8();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5B49E98(0, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
  sub_1D6325E60(&qword_1EC885D20, sub_1D6325E0C);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleAccessoryButtonsConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D6325FEC(0, &qword_1EC885D30, sub_1D6325DB8, &type metadata for PuzzleAccessoryButtonsConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325DB8();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5B49E98(0, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1D6325E60(&qword_1EC885D38, sub_1D6325EF0);
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PuzzleAccessoryButtonConfig.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleAccessoryButtonConfig.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleAccessoryButtonConfig.icon.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D6325598()
{
  v1 = 0x696669746E656469;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6D657449756E656DLL;
  }

  if (*v0)
  {
    v1 = 1954047348;
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

uint64_t sub_1D632560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6326388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6325634(uint64_t a1)
{
  v2 = sub_1D6325F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6325670(uint64_t a1)
{
  v2 = sub_1D6325F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleAccessoryButtonConfig.encode(to:)(void *a1)
{
  sub_1D6325FEC(0, &qword_1EC885D48, sub_1D6325F44, &type metadata for PuzzleAccessoryButtonConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325F44();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D726437C();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5B49E98(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    sub_1D6326054(&qword_1EC885D60, sub_1D6325F98);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleAccessoryButtonConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6325FEC(0, &qword_1EC885D70, sub_1D6325F44, &type metadata for PuzzleAccessoryButtonConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6325F44();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v31 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v30 = 1;
  v14 = sub_1D726422C();
  v25 = v15;
  v23 = v14;
  v29 = 2;
  v22 = sub_1D726422C();
  v24 = v16;
  sub_1D5B49E98(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
  v28 = 3;
  sub_1D6326054(&qword_1EC885D78, sub_1D63260E4);
  sub_1D726427C();
  (*(v10 + 8))(v9, v26);
  v18 = v27;
  *a2 = v11;
  a2[1] = v13;
  v19 = v22;
  v21 = v24;
  v20 = v25;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6325CE0()
{
  if (!qword_1EC884E38)
  {
    sub_1D5BB0DB0();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884E38);
    }
  }
}

uint64_t sub_1D6325D38(uint64_t a1)
{
  sub_1D5B49E98(0, &qword_1EC885D00, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6325DB8()
{
  result = qword_1EC885D10;
  if (!qword_1EC885D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D10);
  }

  return result;
}

unint64_t sub_1D6325E0C()
{
  result = qword_1EC885D28;
  if (!qword_1EC885D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D28);
  }

  return result;
}

uint64_t sub_1D6325E60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49E98(255, &qword_1EC885D18, &type metadata for PuzzleAccessoryButtonConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6325EF0()
{
  result = qword_1EC885D40;
  if (!qword_1EC885D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D40);
  }

  return result;
}

unint64_t sub_1D6325F44()
{
  result = qword_1EC885D50;
  if (!qword_1EC885D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D50);
  }

  return result;
}

unint64_t sub_1D6325F98()
{
  result = qword_1EC885D68;
  if (!qword_1EC885D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D68);
  }

  return result;
}

void sub_1D6325FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6326054(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49E98(255, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D63260E4()
{
  result = qword_1EC885D80;
  if (!qword_1EC885D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D80);
  }

  return result;
}

unint64_t sub_1D632617C()
{
  result = qword_1EC885D88;
  if (!qword_1EC885D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D88);
  }

  return result;
}

unint64_t sub_1D63261D4()
{
  result = qword_1EC885D90;
  if (!qword_1EC885D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D90);
  }

  return result;
}

unint64_t sub_1D632622C()
{
  result = qword_1EC885D98;
  if (!qword_1EC885D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885D98);
  }

  return result;
}

unint64_t sub_1D6326284()
{
  result = qword_1EC885DA0;
  if (!qword_1EC885DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DA0);
  }

  return result;
}

unint64_t sub_1D63262DC()
{
  result = qword_1EC885DA8;
  if (!qword_1EC885DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DA8);
  }

  return result;
}

unint64_t sub_1D6326334()
{
  result = qword_1EC885DB0;
  if (!qword_1EC885DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DB0);
  }

  return result;
}

uint64_t sub_1D6326388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D657449756E656DLL && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D63264FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = v3[3];
  if ((v7 & 4) != 0)
  {
    v25[0] = *v3;
    v18 = sub_1D6E5B35C(a1, a2, 0, 0);
    if (!v4)
    {
      v19 = v18;
      v20 = [v18 string];

      v21 = sub_1D726207C();
      v23 = v22;

      *a3 = v21;
      *(a3 + 8) = v23;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    v8 = v3[1];
    v9 = v3[2];
    v12 = sub_1D6F7CC5C(a2, a1, v6, v8, v9, v7, v25);
    v13 = v25[0];
    v14 = v25[1];
    v15 = v25[2];
    MEMORY[0x1EEE9AC00](v12, v16);
    v24[2] = a1;
    v24[3] = a2;
    v17 = sub_1D6F7ED58(a1, sub_1D6326B4C, v24, v13, v14, v15);

    if (!v4)
    {
      *a3 = v17;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }
  }
}

void sub_1D632665C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1D6E5B35C(a1, a2, 0, 0);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 string];

    v8 = sub_1D726207C();
    v10 = v9;

    *a3 = v8;
    a3[1] = v10;
  }
}

uint64_t _s8NewsFeed15FormatMenuTitleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v4 & 4) != 0)
  {
    if ((v8 & 4) != 0)
    {
      v17 = *a2;
      v18 = v3;
      sub_1D62B7098(v7, v6, v9, v8);
      sub_1D62B7098(v3, v2, v5, v4);
      sub_1D62B7098(v3, v2, v5, v4);
      sub_1D62B7098(v7, v6, v9, v8);
      v11 = static FormatTextContent.== infix(_:_:)(&v18, &v17);
      sub_1D62B7130(v3, v2, v5, v4);
      sub_1D62B7130(v7, v6, v9, v8);
      sub_1D62B7130(v7, v6, v9, v8);
      sub_1D62B7130(v3, v2, v5, v4);
      return v11 & 1;
    }

    goto LABEL_7;
  }

  if ((v8 & 4) != 0)
  {
LABEL_7:
    sub_1D62B7098(*a1, v2, v5, v4);
    sub_1D62B7098(v7, v6, v9, v8);
    sub_1D62B7130(v3, v2, v5, v4);
    v12 = v7;
    v13 = v6;
    v14 = v9;
    v15 = v8;
LABEL_8:
    sub_1D62B7130(v12, v13, v14, v15);
    goto LABEL_9;
  }

  sub_1D62B7098(*a2, a2[1], v9, v8);
  sub_1D62B7098(v3, v2, v5, v4);
  sub_1D62B7098(v3, v2, v5, v4);
  sub_1D62B7098(v7, v6, v9, v8);
  if ((sub_1D6353004(v3, v7) & 1) == 0)
  {
    sub_1D62B7130(v3, v2, v5, v4);
    sub_1D62B7130(v7, v6, v9, v8);
    sub_1D62B7130(v7, v6, v9, v8);
    v12 = v3;
    v13 = v2;
    v14 = v5;
    v15 = v4;
    goto LABEL_8;
  }

  v10 = sub_1D6F7F3FC(v2, v5, v4, v6, v9, v8);
  sub_1D62B7130(v3, v2, v5, v4);
  sub_1D62B7130(v7, v6, v9, v8);
  sub_1D62B7130(v7, v6, v9, v8);
  sub_1D62B7130(v3, v2, v5, v4);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

unint64_t sub_1D63269AC(uint64_t a1)
{
  result = sub_1D63269D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63269D4()
{
  result = qword_1EC885DB8;
  if (!qword_1EC885DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DB8);
  }

  return result;
}

unint64_t sub_1D6326A28(void *a1)
{
  a1[1] = sub_1D5C86E18();
  a1[2] = sub_1D6326A60();
  result = sub_1D6326AB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6326A60()
{
  result = qword_1EDF11868;
  if (!qword_1EDF11868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11868);
  }

  return result;
}

unint64_t sub_1D6326AB4()
{
  result = qword_1EC885DC0;
  if (!qword_1EC885DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DC0);
  }

  return result;
}

uint64_t sub_1D6326B18(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xFFFFFFFFFFFFFFF8 | (4 * (a2 & 1u));
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 24) = v2;
  return result;
}

uint64_t FormatAccessibilityRole.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAccessibilityRole, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatAccessibilityRole, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 == 5)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v10, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D508(2, v10);
    v26 = v10;
  }

  else if (v19 == 6)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCE80);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D508(3, v6);
    v26 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6438870(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CF28(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CF28(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6326F70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6327048()
{
  sub_1D72621EC();
}

uint64_t sub_1D632710C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D63271E0(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x656E6961746E6F63;
  v4 = 0xE700000000000000;
  v5 = 0x746E656D656C65;
  if (*v1 != 2)
  {
    v5 = 0x74756F6B61657262;
    v4 = 0xEF746E656D656C45;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73BB7B0;
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

uint64_t _s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!(v3 >> 6))
  {
    if (v5 >= 0x40)
    {
      goto LABEL_22;
    }

LABEL_6:
    if ((v3 & 1) == 0)
    {
      return (v2 == v4) & ~v5;
    }

    return v5 & 1;
  }

  if (v3 >> 6 != 1)
  {
    v7 = v3 ^ 0x80;
    v8 = v5 & 0xC0;
    if (v2 | v7)
    {
      if (v8 != 128 || v4 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v8 != 128 || v4 != 0)
    {
      goto LABEL_22;
    }

    if (v5 == 128)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if ((v5 & 0xC0) == 0x40)
  {
    goto LABEL_6;
  }

LABEL_22:
  LOBYTE(v5) = 0;
  return v5 & 1;
}

BOOL _s8NewsFeed23FormatAccessibilityRoleO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 - 5) < 2)
  {
    return 0;
  }

  v5 = v3 == 4;
  v6 = v3 == v2;
  if (v2 == 4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1D6327494()
{
  result = qword_1EDF27770;
  if (!qword_1EDF27770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27770);
  }

  return result;
}

unint64_t sub_1D63274E8()
{
  result = qword_1EC885DC8;
  if (!qword_1EC885DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DC8);
  }

  return result;
}

unint64_t sub_1D6327548()
{
  result = qword_1EDF27780;
  if (!qword_1EDF27780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27780);
  }

  return result;
}

unint64_t sub_1D632759C(uint64_t a1)
{
  result = sub_1D63275C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63275C4()
{
  result = qword_1EC885DD0;
  if (!qword_1EC885DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DD0);
  }

  return result;
}

unint64_t sub_1D6327658()
{
  result = qword_1EDF0AFC8;
  if (!qword_1EDF0AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AFC8);
  }

  return result;
}

unint64_t sub_1D63276AC()
{
  result = qword_1EC885DD8;
  if (!qword_1EC885DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DD8);
  }

  return result;
}

unint64_t sub_1D6327700(uint64_t a1)
{
  result = sub_1D6327728();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6327728()
{
  result = qword_1EC885DE0;
  if (!qword_1EC885DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DE0);
  }

  return result;
}

uint64_t sub_1D63277BC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6327810()
{
  result = qword_1EC885DE8;
  if (!qword_1EC885DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatAccessibilityRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D632790C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 4;
  v3 = v1 - 4;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6327928(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatNodeAccessibilityRole(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D632799C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D63279BC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_1D6327A1C()
{
  result = qword_1EC885DF0;
  if (!qword_1EC885DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DF0);
  }

  return result;
}

uint64_t sub_1D6327A70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = [v4 coverImageBackgroundColor];
      if (!v9)
      {
LABEL_13:
        result = swift_allocObject();
        v8 = 29;
        goto LABEL_20;
      }
    }

    else if (v5 == 4)
    {
      v9 = [v4 coverImageTextColor];
      if (!v9)
      {
        result = swift_allocObject();
        v8 = 21;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = [v4 coverImageAccentColor];
      if (!v9)
      {
        result = swift_allocObject();
        v8 = 8;
        goto LABEL_20;
      }
    }

LABEL_17:
    v20 = v9;
    v21 = swift_allocObject();
    [v20 red];
    v23 = v22 * 255.0;
    [v20 green];
    v25 = v24 * 255.0;
    [v20 blue];
    v27 = v26 * 255.0;
    [v20 alpha];
    v29 = v28;

    result = v21;
    *(v21 + 16) = v23;
    *(v21 + 24) = v25;
    v18 = (v21 + 48);
    v19 = 0x6000000000000000;
    *(v21 + 32) = v27;
    *(v21 + 40) = v29;
    goto LABEL_21;
  }

  if (!*v2)
  {
    v9 = [v4 coverImagePrimaryColor];
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v6 = FCIssue.coverImagePrimaryLimitedColor.getter();
    if (!v6)
    {
      result = swift_allocObject();
      v8 = 30;
LABEL_20:
      *(result + 16) = v8;
      *(result + 24) = 0x3FF0000000000000;
      v18 = (result + 32);
      v19 = 0x1000000000000000;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = FCIssue.coverImagePrimaryExtraLimitedColor.getter();
    if (!v6)
    {
      result = swift_allocObject();
      v8 = 31;
      goto LABEL_20;
    }
  }

  v10 = v6;
  sub_1D726353C();
  v30 = v12;
  v31 = v11;
  v14 = v13;
  v16 = v15;

  result = swift_allocObject();
  v17.f64[0] = v31;
  v17.f64[1] = v30;
  *(result + 16) = vmulq_f64(v17, vdupq_n_s64(0x406FE00000000000uLL));
  *(result + 32) = v14 * 255.0;
  *(result + 40) = v16;
  v18 = (result + 48);
  v19 = 0x6000000000000000;
LABEL_21:
  *v18 = 0;
  *a2 = v19 | result;
  return result;
}

uint64_t sub_1D6327D04()
{
  sub_1D72621EC();
}

uint64_t sub_1D6327E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6328AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1D6327E48@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726F6C6F4374;
  v4 = 0x7865547265766F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D73BA410;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001D73BA3E0;
  }

  v5 = 0x80000001D73BA380;
  v6 = 0xD000000000000011;
  v7 = 0x80000001D73BA3A0;
  result = 13;
  v9 = 0xD00000000000001DLL;
  if (v2 == 1)
  {
    v9 = 0xD000000000000018;
  }

  else
  {
    v7 = 0x80000001D73BA3C0;
  }

  if (*v1)
  {
    v6 = v9;
    v5 = v7;
  }

  if (*v1 <= 2u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

uint64_t FormatIssueBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D632807C()
{
  result = qword_1EC885DF8;
  if (!qword_1EC885DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885DF8);
  }

  return result;
}

unint64_t sub_1D63280D0(uint64_t a1)
{
  result = sub_1D63280F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D63280F8()
{
  result = qword_1EC885E00;
  if (!qword_1EC885E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E00);
  }

  return result;
}

unint64_t sub_1D632818C(void *a1)
{
  a1[1] = sub_1D63281C4();
  a1[2] = sub_1D6328218();
  result = sub_1D632807C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D63281C4()
{
  result = qword_1EDF10458;
  if (!qword_1EDF10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10458);
  }

  return result;
}

unint64_t sub_1D6328218()
{
  result = qword_1EC885E18;
  if (!qword_1EC885E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E18);
  }

  return result;
}

unint64_t sub_1D63282F0()
{
  result = qword_1EC885E30;
  if (!qword_1EC885E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E30);
  }

  return result;
}

unint64_t sub_1D6328344()
{
  result = qword_1EC885E38;
  if (!qword_1EC885E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E38);
  }

  return result;
}

uint64_t sub_1D6328398@<X0>(_BYTE *a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = 0x80000001D73D1D20;
      sub_1D6327A70(a2, &v58);
      v26 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v27 = *(v19 + 24);
      *(a3 + v27) = v26;
      v28 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v28 - 8) + 56))(a3 + v27, 0, 1, v28);
      v29 = 0xD000000000000010;
LABEL_20:
      *a3 = v29;
      a3[1] = v5;
      goto LABEL_21;
    }

    if (v4 == 4)
    {
      sub_1D6327A70(a2, &v58);
      v18 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v20 = *(v19 + 24);
      *(a3 + v20) = v18;
      v21 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
      v22 = xmmword_1D72B9C60;
    }

    else
    {
      sub_1D6327A70(a2, &v58);
      v42 = v58;
      v19 = type metadata accessor for FormatInspectionItem(0);
      v43 = *(v19 + 24);
      *(a3 + v43) = v42;
      v44 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v44 - 8) + 56))(a3 + v43, 0, 1, v44);
      v22 = xmmword_1D72B9C50;
    }
  }

  else
  {
    if (*a1)
    {
      if (v4 == 1)
      {
        v5 = 0x80000001D73D1D60;
        v6 = FCIssue.coverImagePrimaryLimitedColor.getter();
        if (v6)
        {
          v7 = v6;
          sub_1D726353C();
          v54 = v9;
          v56 = v8;
          v11 = v10;
          v13 = v12;

          v14 = swift_allocObject();
          v15.f64[0] = v56;
          v15.f64[1] = v54;
          *(v14 + 16) = vmulq_f64(v15, vdupq_n_s64(0x406FE00000000000uLL));
          *(v14 + 32) = v11 * 255.0;
          *(v14 + 40) = v13;
          v16 = (v14 + 48);
          v17 = 0x6000000000000000;
        }

        else
        {
          v14 = swift_allocObject();
          *(v14 + 16) = 30;
          *(v14 + 24) = 0x3FF0000000000000;
          v16 = (v14 + 32);
          v17 = 0x1000000000000000;
        }

        *v16 = 0;
        v45 = v17 | v14;
        v19 = type metadata accessor for FormatInspectionItem(0);
        v46 = *(v19 + 24);
        *(a3 + v46) = v45;
        v47 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v47 - 8) + 56))(a3 + v46, 0, 1, v47);
        v48 = 5;
      }

      else
      {
        v5 = 0x80000001D73D1D40;
        v30 = FCIssue.coverImagePrimaryExtraLimitedColor.getter();
        if (v30)
        {
          v31 = v30;
          sub_1D726353C();
          v55 = v33;
          v57 = v32;
          v35 = v34;
          v37 = v36;

          v38 = swift_allocObject();
          v39.f64[0] = v57;
          v39.f64[1] = v55;
          *(v38 + 16) = vmulq_f64(v39, vdupq_n_s64(0x406FE00000000000uLL));
          *(v38 + 32) = v35 * 255.0;
          *(v38 + 40) = v37;
          v40 = (v38 + 48);
          v41 = 0x6000000000000000;
        }

        else
        {
          v38 = swift_allocObject();
          *(v38 + 16) = 31;
          *(v38 + 24) = 0x3FF0000000000000;
          v40 = (v38 + 32);
          v41 = 0x1000000000000000;
        }

        *v40 = 0;
        v49 = v41 | v38;
        v19 = type metadata accessor for FormatInspectionItem(0);
        v50 = *(v19 + 24);
        *(a3 + v50) = v49;
        v51 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v51 - 8) + 56))(a3 + v50, 0, 1, v51);
        v48 = 11;
      }

      v29 = v48 | 0xD000000000000010;
      goto LABEL_20;
    }

    sub_1D6327A70(a2, &v58);
    v23 = v58;
    v19 = type metadata accessor for FormatInspectionItem(0);
    v24 = *(v19 + 24);
    *(a3 + v24) = v23;
    v25 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v25 - 8) + 56))(a3 + v24, 0, 1, v25);
    v22 = xmmword_1D72B9C70;
  }

  *a3 = v22;
LABEL_21:
  a3[2] = 0;
  a3[3] = 0;
  v52 = a3 + *(v19 + 28);
  *v52 = 0;
  *(v52 + 1) = 0;
  v52[16] = -1;
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
}

double sub_1D63288F8@<D0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[4];
  v24[5] = a1[5];
  v24[6] = v9;
  v25[0] = v10;
  *(v25 + 9) = *(a1 + 121);
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v24[4] = v11;
  v13 = a1[1];
  v24[0] = *a1;
  v24[1] = v13;
  *&v22[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 6, 0);
  v14 = 0;
  v15 = *&v22[0];
  do
  {
    v21 = byte_1F50F7258[v14 + 32];
    sub_1D6328398(&v21, v24, v8);
    *&v22[0] = v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D69972A4(v16 > 1, v17 + 1, 1);
      v15 = *&v22[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    sub_1D5E4F52C(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17);
  }

  while (v14 != 6);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v15, v22);

  result = *v22;
  v19 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_1D6328AF4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t FormatOptionsNodeStatementModifier.Integer.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6328BB8()
{
  result = qword_1EC885E40;
  if (!qword_1EC885E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E40);
  }

  return result;
}

unint64_t sub_1D6328C0C(uint64_t a1)
{
  result = sub_1D6328C34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6328C34()
{
  result = qword_1EC885E48;
  if (!qword_1EC885E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E48);
  }

  return result;
}

unint64_t sub_1D6328C88(void *a1)
{
  a1[1] = sub_1D6328CC0();
  a1[2] = sub_1D6328D14();
  result = sub_1D6328BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6328CC0()
{
  result = qword_1EC885E50;
  if (!qword_1EC885E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E50);
  }

  return result;
}

unint64_t sub_1D6328D14()
{
  result = qword_1EC885E58;
  if (!qword_1EC885E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E58);
  }

  return result;
}

uint64_t sub_1D6328DBC(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7CD0];
  v3 = type metadata accessor for FormatTransformData();
  if (*(*(a2 + *(v3 + 24)) + 16))
  {

    sub_1D5B886D0(v4);
  }

  if (*(*(a2 + *(v3 + 28)) + 16))
  {

    sub_1D5B886D0(v5);
  }

  sub_1D6328F04();
  sub_1D6328F5C();
  v6 = sub_1D72623CC();
  v7 = sub_1D6328FB4(v6, &v9);

  return v7;
}

id sub_1D6328EC8@<X0>(void *a1@<X8>)
{
  result = FormatContentSlotItemObject.Resolved.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D6328F04()
{
  if (!qword_1EDF1AF70)
  {
    type metadata accessor for FormatContentSlotItemResolution();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AF70);
    }
  }
}

unint64_t sub_1D6328F5C()
{
  result = qword_1EDF1AF60;
  if (!qword_1EDF1AF60)
  {
    sub_1D6328F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AF60);
  }

  return result;
}

uint64_t sub_1D6328FB4(uint64_t a1, uint64_t *a2)
{
  v62 = a2;
  v3 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v54 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v61, v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FormatContentSlotItemResolution() - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v53 - v21;
  v60 = *(a1 + 16);
  if (v60)
  {
    v23 = 0;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v64 = *(v20 + 72);
    v57 = v24;
    v58 = a1 + v24;
    v25 = MEMORY[0x1E69E7CC0];
    v59 = v14;
    while (1)
    {
      sub_1D61FE26C(v58 + v64 * v23, v22, type metadata accessor for FormatContentSlotItemResolution);
      v26 = *v62;
      sub_1D61FE26C(v22, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          v41 = v55;
          sub_1D6329620(v14, v55, type metadata accessor for PuzzleStatistic);

          v33 = PuzzleStatistic.identifier.getter();
          v32 = v42;
          v34 = v41;
          v35 = type metadata accessor for PuzzleStatistic;
LABEL_27:
          sub_1D6329688(v34, v35);
          if (!*(v26 + 16))
          {
            goto LABEL_36;
          }

          goto LABEL_28;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v28 = type metadata accessor for FormatCustomItem.Resolved;
        v29 = type metadata accessor for FormatCustomItem.Resolved;
        v30 = v14;
        v31 = v56;
        goto LABEL_13;
      }

      v33 = *v14;
      v32 = v14[1];

      if (!*(v26 + 16))
      {
        goto LABEL_36;
      }

LABEL_28:
      sub_1D7264A0C();
      sub_1D72621EC();
      v43 = sub_1D7264A5C();
      v44 = -1 << *(v26 + 32);
      v45 = v43 & ~v44;
      if ((*(v26 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v26 + 48) + 16 * v45);
          v48 = *v47 == v33 && v47[1] == v32;
          if (v48 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v26 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        sub_1D6329688(v22, type metadata accessor for FormatContentSlotItemResolution);
        goto LABEL_4;
      }

LABEL_36:

      sub_1D6329620(v22, v63, type metadata accessor for FormatContentSlotItemResolution);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997C80(0, *(v25 + 16) + 1, 1);
        v25 = v65;
      }

      v51 = *(v25 + 16);
      v50 = *(v25 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D6997C80(v50 > 1, v51 + 1, 1);
        v25 = v65;
      }

      *(v25 + 16) = v51 + 1;
      sub_1D6329620(v63, v25 + v57 + v51 * v64, type metadata accessor for FormatContentSlotItemResolution);
LABEL_4:
      ++v23;
      v14 = v59;
      if (v23 == v60)
      {
        return v25;
      }
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_20;
      }

LABEL_23:
      v39 = *v14;

      v37 = [v39 identifier];
      v33 = sub_1D726207C();
      v32 = v40;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = type metadata accessor for FormatWebEmbed.Resolved;
        v29 = type metadata accessor for FormatWebEmbed.Resolved;
        v30 = v14;
        v31 = v54;
LABEL_13:
        sub_1D6329620(v30, v31, v28);
        v33 = *v31;
        v32 = v31[1];

        v34 = v31;
        v35 = v29;
        goto LABEL_27;
      }

LABEL_20:
      v36 = *v14;

      v37 = [v36 identifier];
      v33 = sub_1D726207C();
      v32 = v38;
      swift_unknownObjectRelease();
    }

    if (!*(v26 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6329620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6329688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 FeedLayoutSolverOptions.cursorTracking.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

void FeedLayoutSolverOptions.headlineOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  *a1 = v1[17];
  a1[1] = v2;
  a1[2] = v3;
}

void FeedLayoutSolverOptions.categoryOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 21);
  *a1 = *(v1 + 20);
  a1[1] = v2;
}

void FeedLayoutSolverOptions.coverOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 23);
  *a1 = *(v1 + 22);
  a1[1] = v2;
}

unint64_t FeedLayoutSolverOptions.issueStripOptions.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5C07390(v2);
}

uint64_t FeedLayoutSolverOptions.pluginOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 36);

  return sub_1D6329790(v3, a1);
}

uint64_t sub_1D6329790(uint64_t a1, uint64_t a2)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedLayoutSolverOptions.layoutCacheOptions.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLayoutSolverOptions(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5D64C6C(v4, v5);
}

uint64_t FeedLayoutSolverOptions.blueprintRunOptions.getter()
{
  type metadata accessor for FeedLayoutSolverOptions(0);
}

uint64_t FeedLayoutSolverOptions.adOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedLayoutSolverOptions(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedLayoutSolverOptions.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedLayoutSolverOptions(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

NewsFeed::FeedLayoutSolverOptions::HeadlineOptions __swiftcall FeedLayoutSolverOptions.HeadlineOptions.init(alwaysFillWithExcerpt:alwaysShowAuthor:alwaysHidePublisherLogo:)(Swift::Bool alwaysFillWithExcerpt, Swift::Bool alwaysShowAuthor, Swift::Bool alwaysHidePublisherLogo)
{
  *v3 = alwaysFillWithExcerpt;
  v3[1] = alwaysShowAuthor;
  v3[2] = alwaysHidePublisherLogo;
  result.alwaysFillWithExcerpt = alwaysFillWithExcerpt;
  return result;
}

double FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:traits:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a3;
  v15 = a3[1];
  v16 = *a4;
  v17 = a4[1];
  v18 = *a5;
  v19 = *a7;
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 17) = v11;
  *(a8 + 18) = v12;
  *(a8 + 19) = v13;
  *(a8 + 20) = v14;
  *(a8 + 21) = v15;
  *(a8 + 22) = v16;
  *(a8 + 23) = v17;
  *(a8 + 24) = v18;
  v20 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D5D4BD04(a6, a8 + v20[9]);
  result = 0.0;
  *(a8 + v20[10]) = xmmword_1D7279980;
  *(a8 + v20[11]) = 0;
  *(a8 + v20[13]) = v19;
  v22 = a8 + v20[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

double FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:traits:adOptions:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a1 + 16);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a3;
  v16 = a3[1];
  v17 = *a4;
  v18 = a4[1];
  v19 = *a5;
  v20 = *a7;
  v21 = *a8;
  v22 = *(a8 + 8);
  *a9 = *a1;
  *(a9 + 16) = v11;
  *(a9 + 17) = v12;
  *(a9 + 18) = v13;
  *(a9 + 19) = v14;
  *(a9 + 20) = v15;
  *(a9 + 21) = v16;
  *(a9 + 22) = v17;
  *(a9 + 23) = v18;
  *(a9 + 24) = v19;
  v23 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D5D4BD04(a6, a9 + v23[9]);
  result = 0.0;
  *(a9 + v23[10]) = xmmword_1D7279980;
  *(a9 + v23[11]) = 0;
  *(a9 + v23[13]) = v20;
  v25 = a9 + v23[12];
  *v25 = v21;
  *(v25 + 8) = v22;
  return result;
}

uint64_t FeedLayoutSolverOptions.init(cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:adOptions:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v12 = *(a1 + 16);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = *a3;
  v17 = a3[1];
  v18 = *a4;
  v19 = a4[1];
  v20 = *a5;
  v21 = *a7;
  v22 = a7[1];
  v23 = *a8;
  v24 = *a10;
  v25 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 16) = v12;
  *(a9 + 17) = v13;
  *(a9 + 18) = v14;
  *(a9 + 19) = v15;
  *(a9 + 20) = v16;
  *(a9 + 21) = v17;
  *(a9 + 22) = v18;
  *(a9 + 23) = v19;
  *(a9 + 24) = v20;
  v26 = type metadata accessor for FeedLayoutSolverOptions(0);
  result = sub_1D5D4BD04(a6, a9 + v26[9]);
  v28 = (a9 + v26[10]);
  *v28 = v21;
  v28[1] = v22;
  *(a9 + v26[11]) = 0;
  *(a9 + v26[13]) = v23;
  v29 = a9 + v26[12];
  *v29 = v24;
  *(v29 + 8) = v25;
  return result;
}

uint64_t FeedLayoutSolverOptions.init(blueprintRunOptions:cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:adOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v18 = *a4;
  v19 = a4[1];
  v25 = a5[1];
  v26 = *a5;
  v24 = *a6;
  v28 = a8[1];
  v29 = *a8;
  v30 = *a10;
  v32 = *a11;
  v31 = *(a11 + 8);
  v20 = type metadata accessor for FeedLayoutSolverOptions(0);
  *(a9 + v20[11]) = a1;
  *a9 = v12;
  *(a9 + 8) = v13;
  *(a9 + 16) = v14;
  *(a9 + 17) = v15;
  *(a9 + 18) = v16;
  *(a9 + 19) = v17;
  *(a9 + 20) = v18;
  *(a9 + 21) = v19;
  *(a9 + 22) = v26;
  *(a9 + 23) = v25;
  *(a9 + 24) = v24;
  result = sub_1D5D4BD04(a7, a9 + v20[9]);
  v22 = (a9 + v20[10]);
  *v22 = v29;
  v22[1] = v28;
  *(a9 + v20[13]) = v30;
  v23 = a9 + v20[12];
  *v23 = v32;
  *(v23 + 8) = v31;
  return result;
}

unint64_t FeedLayoutSolverOptions.IssueStripOptions.separators.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5C07390(v2);
}

uint64_t FeedLayoutSolverOptions.PluginOptions.layoutOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725E23C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedLayoutSolverOptions.LayoutCacheOptions.fastPathKey.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D6329DF0()
{
  result = qword_1EC885E60;
  if (!qword_1EC885E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E60);
  }

  return result;
}

unint64_t sub_1D6329E48()
{
  result = qword_1EC885E68;
  if (!qword_1EC885E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E68);
  }

  return result;
}

unint64_t sub_1D6329EA0()
{
  result = qword_1EC885E70;
  if (!qword_1EC885E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E70);
  }

  return result;
}

unint64_t sub_1D6329EF8()
{
  result = qword_1EC885E78;
  if (!qword_1EC885E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885E78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatGrayscaleColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedLayoutSolverOptions.CursorTracking(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1D6329FD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedLayoutSolverOptions.HeadlineOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedLayoutSolverOptions.HeadlineOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayeredMediaViewDisplayState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for LayeredMediaViewDisplayState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_1D632A2C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D632A31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D632A3A0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v11[0] = a1;
  v11[1] = a2;
  v7 = a5 + 32;
  v8 = *(a5 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 40;
    a3(v11);
    v7 = v9;
    if (v5)
    {
    }
  }

  return v11[0];
}

void sub_1D632A424(__int128 *a1@<X0>, void (*a2)(__int128 *, uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  v20 = *a1;
  v21 = v7;
  v22 = v8;
  v9 = *(a3 + 16);
  if (v9)
  {
    v11 = (a3 + 48);
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v17 = *(v11 - 2);
      v18 = v13;
      v19 = v12;
      v14 = v12;
      swift_unknownObjectRetain();
      v15 = v13;
      a2(&v20, &v17);
      v16 = v19;

      swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      v11 += 3;
      if (!--v9)
      {
        v6 = v20;
        v7 = v21;
        v8 = v22;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *a4 = v6;
    *(a4 + 16) = v7;
    *(a4 + 32) = v8;
  }
}

uint64_t sub_1D632A52C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v14 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = (a4 + 48);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v13[0] = *(v8 - 2);
      v13[1] = v9;
      v13[2] = v10;

      a2(&v12, &v14, v13);
      if (v4)
      {
        break;
      }

      v8 += 3;

      v5 = v12;
      v14 = v12;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1D632A5E4@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  result = sub_1D5B76B10(a1, a4);
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 32);
    do
    {
      v11 = *v10++;
      v13 = v11;

      a2(v12, a4, &v13);

      result = __swift_destroy_boxed_opaque_existential_1(a4);
      if (v4)
      {
        break;
      }

      result = sub_1D5B7C390(v12, a4);
      --v9;
    }

    while (v9);
  }

  return result;
}

id sub_1D632A694(void *a1, void (*a2)(void **__return_ptr, void **, unint64_t *), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = *(a4 + 16);
  v8 = a1;
  if (v7)
  {
    v9 = (a4 + 32);
    while (1)
    {
      v10 = *v9++;
      v13 = v10;
      sub_1D5ECF0E0(v10);
      a2(&v12, &v14, &v13);
      if (v4)
      {
        break;
      }

      sub_1D5ECF11C(v13);

      v8 = v12;
      v14 = v12;
      if (!--v7)
      {
        return v8;
      }
    }

    sub_1D5ECF11C(v13);
  }

  return v8;
}

uint64_t sub_1D632A750(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for FeedItem(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    a2(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        v5 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        (a2)(&v15, &v16);
      }
    }
  }

  return v5;
}

uint64_t sub_1D632A854(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, unint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v15 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 32);
    while (1)
    {
      v11 = *v10++;
      v14 = v11;
      sub_1D5FBABE0(v11);
      a2(&v13, &v15, &v14);
      if (v5)
      {
        break;
      }

      sub_1D5FBAC60(v14);

      v8 = v13;
      v15 = v13;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_1D5FBAC60(v14);
  }

  return v8;
}

void *sub_1D632A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a2;
  v156 = a5;
  v157 = a4;
  v158 = a3;
  v161 = a1;
  v5 = type metadata accessor for FeedItem(0);
  v150 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v164 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v153 = (&v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v151, v11);
  v152 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 systemGrayColor];
  v160 = v13;
  v15 = [v13 lightGrayColor];
  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E69DB958];
  v159 = v16;
  v18 = [v16 systemFontOfSize:12.0 weight:v17];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v155 = vdupq_n_s64(0x4046000000000000uLL);
  *(v20 + 24) = v155;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  *(v20 + 56) = v18;
  *(v20 + 64) = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D6139584;
  *(v21 + 24) = v20;
  *&v167[1] = sub_1D6139588;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  v154 = v167;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_36;
  v22 = _Block_copy(&v166);
  v23 = *(&v167[1] + 1);
  v24 = v14;
  v25 = v18;
  v26 = v15;

  v27 = [v19 imageWithActions_];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_63;
  }

  v26 = v162;
  v162[4] = v27;
  v29 = [v160 lightGrayColor];
  v25 = [v159 systemFontOfSize:12.0 weight:v17];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = v155;
  *(v30 + 40) = 0;
  *(v30 + 48) = 0;
  *(v30 + 56) = v25;
  *(v30 + 64) = v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D61395AC;
  *(v21 + 24) = v30;
  *&v167[1] = sub_1D61395B0;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_16_0;
  v31 = _Block_copy(&v166);
  v23 = v25;
  v32 = v29;

  isEscapingClosureAtFileLocation = [v27 imageWithActions_];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v26[5] = isEscapingClosureAtFileLocation;
  v33 = [v160 lightGrayColor];
  v34 = [v159 systemFontOfSize:12.0 weight:v17];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = 0;
  *(isEscapingClosureAtFileLocation + 24) = vdupq_n_s64(0x4046000000000000uLL);
  *(isEscapingClosureAtFileLocation + 40) = xmmword_1D729E1B0;
  *(isEscapingClosureAtFileLocation + 56) = v34;
  *(isEscapingClosureAtFileLocation + 64) = v33;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D61395AC;
  *(v21 + 24) = isEscapingClosureAtFileLocation;
  *&v167[1] = sub_1D61395B0;
  *(&v167[1] + 1) = v21;
  *&v166 = MEMORY[0x1E69E9820];
  *(&v166 + 1) = 1107296256;
  *&v167[0] = sub_1D62E78B0;
  *(&v167[0] + 1) = &block_descriptor_27_1;
  v36 = _Block_copy(&v166);
  v23 = *(&v167[1] + 1);
  v27 = v34;
  v25 = v33;

  v37 = [v35 imageWithActions_];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    isEscapingClosureAtFileLocation = sub_1D6993B10(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v26 + v21) = isEscapingClosureAtFileLocation;
    goto LABEL_14;
  }

  v38 = MEMORY[0x1E69E7CD0];
  v39 = MEMORY[0x1E69E7CC8];
  v26[6] = v37;
  v26[7] = v38;
  v26[8] = v38;
  v26[9] = v39;
  v26[10] = v38;
  v160 = v26 + 10;
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections) = MEMORY[0x1E69E7CC0];
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages) = v39;
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages) = v39;
  v23 = &unk_1EC885000;
  v40 = (v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  *v40 = 0u;
  v40[1] = 0u;
  *(v40 + 25) = 0u;
  v25 = v161;
  sub_1D6332950(v161, v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);
  v27 = (v25 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v41 = v27[4];
  v42 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v41);
  (*(v42 + 64))(&v166, v41, v42);
  v43 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v44 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v45 = (*(v44 + 16))(v43, v44);
    v47 = v46;
    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_1D6330678(&v166);
    v45 = *v25;
    v47 = v25[1];
  }

  v26[2] = v45;
  v26[3] = v47;
  sub_1D6330700(v158, v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_inventory);
  sub_1D5B68374(v157, &v166);
  type metadata accessor for DebugInspectHeadlineService();
  v48 = swift_allocObject();
  sub_1D5B63F14(&v166, v48 + 16);
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_headlineService) = v48;
  sub_1D5B68374(v156, &v166);
  type metadata accessor for DebugInspectRecipeService();
  v49 = swift_allocObject();
  sub_1D5B63F14(&v166, v49 + 16);
  *(v26 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_recipeService) = v49;
  sub_1D63309B8(v163, v168);
  v50 = v169;
  if (v169)
  {
    v51 = v170;
    v181 = v168[0];
    v182 = v168[1];
    v52 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
    swift_beginAccess();
    v53 = *(v26 + v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v52) = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1D6993B10(0, *(v53 + 2) + 1, 1, v53);
      *(v26 + v52) = v53;
    }

    v56 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v56 >= v55 >> 1)
    {
      v53 = sub_1D6993B10((v55 > 1), v56 + 1, 1, v53);
    }

    *(v53 + 2) = v56 + 1;
    v57 = &v53[48 * v56];
    v58 = v182;
    *(v57 + 2) = v181;
    *(v57 + 3) = v58;
    *(v57 + 8) = v50;
    v57[72] = v51;
    v26 = v162;
    *(v162 + v52) = v53;
    swift_endAccess();
    v25 = v161;
  }

  sub_1D6330C84(v25, v163, &v171);
  v21 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v26 + v21);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = isEscapingClosureAtFileLocation;
  if ((v59 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_14:
  v61 = *(isEscapingClosureAtFileLocation + 16);
  v60 = *(isEscapingClosureAtFileLocation + 24);
  v62 = v163;
  if (v61 >= v60 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_1D6993B10((v60 > 1), v61 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v61 + 1;
  v63 = (isEscapingClosureAtFileLocation + 48 * v61);
  v64 = v171;
  v65 = v172[0];
  *(v63 + 57) = *(v172 + 9);
  v63[2] = v64;
  v63[3] = v65;
  *(v26 + v21) = isEscapingClosureAtFileLocation;
  swift_endAccess();
  v66 = v27[4];
  v67 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v66);
  (*(v67 + 64))(&v179, v66, v67);
  if (*&v180[8])
  {
    sub_1D5B63F14(&v179, &v166);
    sub_1D63312F8(&v166, &v173);
    swift_beginAccess();
    v68 = *(v26 + v21);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v21) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_1D6993B10(0, *(v68 + 2) + 1, 1, v68);
      *(v26 + v21) = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      v68 = sub_1D6993B10((v70 > 1), v71 + 1, 1, v68);
    }

    *(v68 + 2) = v71 + 1;
    v72 = &v68[48 * v71];
    v73 = v173;
    v74 = v174[0];
    *(v72 + 57) = *(v174 + 9);
    *(v72 + 2) = v73;
    *(v72 + 3) = v74;
    *(v26 + v21) = v68;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v166);
  }

  else
  {
    sub_1D6330678(&v179);
  }

  v75 = v27[4];
  v76 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v75);
  (*(v76 + 64))(&v166, v75, v76);
  v77 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v78 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v79 = (*(v78 + 40))(v77, v78);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    if (v79)
    {
      sub_1D6331504(v79, &v175);
      swift_beginAccess();
      v80 = *(v26 + v21);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + v21) = v80;
      if ((v81 & 1) == 0)
      {
        v80 = sub_1D6993B10(0, *(v80 + 2) + 1, 1, v80);
        *(v26 + v21) = v80;
      }

      v83 = *(v80 + 2);
      v82 = *(v80 + 3);
      if (v83 >= v82 >> 1)
      {
        v80 = sub_1D6993B10((v82 > 1), v83 + 1, 1, v80);
      }

      *(v80 + 2) = v83 + 1;
      v84 = &v80[48 * v83];
      v85 = v175;
      v86 = v176[0];
      *(v84 + 57) = *(v176 + 9);
      *(v84 + 2) = v85;
      *(v84 + 3) = v86;
      *(v26 + v21) = v80;
      swift_endAccess();

      v62 = v163;
    }
  }

  else
  {
    sub_1D6330678(&v166);
  }

  sub_1D63318B0(v25, v62, &v177);
  swift_beginAccess();
  v87 = *(v26 + v21);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = v87;
  if ((v88 & 1) == 0)
  {
    v87 = sub_1D6993B10(0, *(v87 + 2) + 1, 1, v87);
    *(v26 + v21) = v87;
  }

  v90 = *(v87 + 2);
  v89 = *(v87 + 3);
  if (v90 >= v89 >> 1)
  {
    v87 = sub_1D6993B10((v89 > 1), v90 + 1, 1, v87);
  }

  *(v87 + 2) = v90 + 1;
  v91 = &v87[48 * v90];
  v92 = v177;
  v93 = v178[0];
  *(v91 + 57) = *(v178 + 9);
  *(v91 + 2) = v92;
  *(v91 + 3) = v93;
  *(v26 + v21) = v87;
  swift_endAccess();
  v94 = v27[4];
  v95 = v27[5];
  __swift_project_boxed_opaque_existential_1(v27 + 1, v94);
  (*(v95 + 64))(&v166, v94, v95);
  v96 = *(&v167[0] + 1);
  if (*(&v167[0] + 1))
  {
    v97 = *&v167[1];
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167[0] + 1));
    v98 = (*(v97 + 32))(v96, v97);
    if (v98)
    {
      v99 = *(v98 + 16);

      __swift_destroy_boxed_opaque_existential_1(&v166);
      if (v99 >> 62)
      {
        v100 = sub_1D7263BFC();
      }

      else
      {
        v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v100)
      {
        sub_1D6331F7C(v25, &v179);
        v101 = *&v180[16];
        v102 = v180[24];
        v184 = *v180;
        v185 = v179;
        v103 = *v180;
        v183 = *&v180[16];
        v104 = v26 + v23[467];
        v105 = *(v104 + 1);
        v159 = *v104;
        v106 = *(v104 + 2);
        v155.i64[0] = *(v104 + 3);
        v107 = *(v104 + 4);
        *v104 = v179;
        *(v104 + 1) = v103;
        *(v104 + 4) = v101;
        v104[40] = v102;
        v108 = MEMORY[0x1E69E6158];
        v109 = MEMORY[0x1E69E6720];
        sub_1D6332AD4(&v185, &v166, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D5B49EE8);
        sub_1D6332AD4(&v184, &v166, &qword_1EDF43BE0, v108, v109, sub_1D5B49EE8);
        sub_1D6332AD4(&v183, &v166, &unk_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
        v26 = v162;
        sub_1D6332888(v159, v105, v106, v155.i64[0], v107);
        swift_beginAccess();
        v110 = *(v26 + v21);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + v21) = v110;
        if ((v111 & 1) == 0)
        {
          v110 = sub_1D6993B10(0, *(v110 + 2) + 1, 1, v110);
          *(v26 + v21) = v110;
        }

        v113 = *(v110 + 2);
        v112 = *(v110 + 3);
        v25 = v161;
        v62 = v163;
        if (v113 >= v112 >> 1)
        {
          v110 = sub_1D6993B10((v112 > 1), v113 + 1, 1, v110);
        }

        *(v110 + 2) = v113 + 1;
        v114 = &v110[48 * v113];
        v115 = v179;
        v116 = *v180;
        *(v114 + 57) = *&v180[9];
        *(v114 + 2) = v115;
        *(v114 + 3) = v116;
        *(v26 + v21) = v110;
        swift_endAccess();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v166);
    }
  }

  else
  {
    sub_1D6330678(&v166);
  }

  v117 = sub_1D632BCFC(v25);
  swift_beginAccess();
  sub_1D6987C80(v117);
  swift_endAccess();
  sub_1D633212C(v25, &v166);
  swift_beginAccess();
  v118 = *(v26 + v21);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v21) = v118;
  if ((v119 & 1) == 0)
  {
    v118 = sub_1D6993B10(0, *(v118 + 2) + 1, 1, v118);
    *(v26 + v21) = v118;
  }

  v121 = *(v118 + 2);
  v120 = *(v118 + 3);
  if (v121 >= v120 >> 1)
  {
    v118 = sub_1D6993B10((v120 > 1), v121 + 1, 1, v118);
  }

  *(v118 + 2) = v121 + 1;
  v122 = &v118[48 * v121];
  v123 = v166;
  v124 = v167[0];
  *(v122 + 57) = *(v167 + 9);
  *(v122 + 2) = v123;
  *(v122 + 3) = v124;
  *(v26 + v21) = v118;
  swift_endAccess();
  v125 = v152;
  sub_1D6332950(v62, v152, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v157);
    sub_1D6084EA8(v158);
    sub_1D6332768();

    v127 = v125;
  }

  else
  {
    sub_1D63327EC();

    v128 = v153;
    sub_1D5BDAAA4(v125, v153, type metadata accessor for GroupLayoutBindingContext);
    v129 = v128[4];
    v130 = v128[5];
    __swift_project_boxed_opaque_existential_1(v128 + 1, v129);
    v131 = (*(v130 + 16))(v129, v130);
    MEMORY[0x1EEE9AC00](v131, v132);
    *(&v149 - 2) = v62;
    sub_1D62EE09C(sub_1D6332858, (&v149 - 4), v133);
    v135 = v134;
    v136 = v134[2];
    if (v136)
    {
      v165 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v136, 0);
      v137 = v165;
      v138 = *(v150 + 80);
      v159 = v135;
      v139 = v135 + ((v138 + 32) & ~v138);
      v140 = *(v150 + 72);
      do
      {
        v141 = v164;
        sub_1D6332950(v139, v164, type metadata accessor for FeedItem);
        v142 = FeedItem.debugIdentifier.getter();
        v144 = v143;
        sub_1D6332B48(v141, type metadata accessor for FeedItem);
        v165 = v137;
        v146 = *(v137 + 16);
        v145 = *(v137 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1D5BFC364((v145 > 1), v146 + 1, 1);
          v137 = v165;
        }

        *(v137 + 16) = v146 + 1;
        v147 = v137 + 16 * v146;
        *(v147 + 32) = v142;
        *(v147 + 40) = v144;
        v139 += v140;
        --v136;
      }

      while (v136);

      v25 = v161;
      v26 = v162;
    }

    else
    {

      v137 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D5B87D50(v137);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v156);
    __swift_destroy_boxed_opaque_existential_1(v157);
    sub_1D6084EA8(v158);
    v62 = v163;
    v127 = v153;
  }

  sub_1D6332B48(v127, type metadata accessor for GroupLayoutBindingContext);
  sub_1D6332B48(v62, type metadata accessor for DebugInspectViewResult);
  sub_1D6332B48(v25, type metadata accessor for DebugGroupLayoutKey);
  return v26;
}

uint64_t sub_1D632BCFC(uint64_t a1)
{
  v82 = type metadata accessor for DebugInspectViewItem();
  v2 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v69 - v8;
  v79 = sub_1D725A3AC();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v10);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7259D1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D7259CFC();
  v74 = *(v75 - 8);
  v18 = MEMORY[0x1EEE9AC00](v75, v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69D7130], v12, v18);
  v21 = type metadata accessor for DebugGroupLayoutKey();
  v22 = *(v21 + 28);
  v80 = a1;
  v23 = v20;
  v73 = a1 + v22;
  sub_1D7259D0C();
  v72 = 0;
  (*(v13 + 8))(v16, v12);
  v24 = v78;
  v81 = v23;
  sub_1D7259CAC();
  v25 = (v80 + *(v21 + 24));
  v26 = v25[4];
  v27 = v25[5];
  __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
  (*(v27 + 32))(v88, v26, v27);
  v85[0] = v88[0];
  v85[1] = v88[1];
  v86 = v88[2];
  v87 = v89;
  v28 = GroupLayoutInventory.layouts(column:kind:)(v24, v85);
  v70 = v28;
  sub_1D5BC6C20(*&v85[0]);
  v71 = *(v77 + 8);
  v29 = v71(v24, v79);
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v73;
  *(&v69 - 2) = v73;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v72;
  v34 = sub_1D632A3A0(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], sub_1D63328F8, (&v69 - 4), v28);
  v76 = v35;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v69 - 2) = v25;
  *(&v69 - 1) = v31;
  sub_1D632A3A0(v32, v32, sub_1D6332914, (&v69 - 4), v34);
  v77 = v36;
  v72 = v33;

  sub_1D5B49474(0, qword_1EDF22AA0);
  v37 = sub_1D72626AC();

  sub_1D5B49EE8(0, &unk_1EC88EC20, &type metadata for DebugInspectViewSection, MEMORY[0x1E69E6F90]);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1D7273AE0;
  v38 = v78;
  v39 = v81;
  sub_1D7259CAC();
  sub_1D6332A8C(&qword_1EC885ED0, MEMORY[0x1E69D7398]);
  v40 = v79;
  *&v88[0] = sub_1D72644BC();
  *(&v88[0] + 1) = v41;
  v71(v38, v40);
  MEMORY[0x1DA6F9910](0x206E6D756C6F4320, 0xE900000000000028);
  v42 = *(v70 + 16);

  *&v85[0] = v42;
  v43 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v43);

  v44 = MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v78 = *(&v88[0] + 1);
  v79 = *&v88[0];
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v69 - 2) = v80;
  v80 = sub_1D5ECC468(sub_1D6332930, (&v69 - 4), v37);

  v46 = v76;
  v47 = *(v76 + 16);
  if (v47)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v47, 0);
    v48 = v84;
    v49 = v46 + 32;
    do
    {
      sub_1D6332950(v49, v88, sub_1D63329B8);
      sub_1D6332950(v88, v85, sub_1D63329B8);
      v50 = *(&v86 + 1);
      v51 = v87;
      sub_1D5B63F14(v85, v83);
      sub_1D5B68374(v83, v9);
      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v85[0] = 0xD000000000000026;
      *(&v85[0] + 1) = 0x80000001D73D2000;
      MEMORY[0x1DA6F9910](v50, v51);

      v52 = v85[0];
      __swift_destroy_boxed_opaque_existential_1(v83);
      sub_1D6332B48(v88, sub_1D63329B8);
      *(v9 + 40) = v52;
      v9[56] = 2;
      swift_storeEnumTagMultiPayload();
      v84 = v48;
      v54 = *(v48 + 16);
      v53 = *(v48 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D69991E8(v53 > 1, v54 + 1, 1);
        v48 = v84;
      }

      *(v48 + 16) = v54 + 1;
      sub_1D5BDAAA4(v9, v48 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v54, type metadata accessor for DebugInspectViewItem);
      v49 += 56;
      --v47;
    }

    while (v47);

    v39 = v81;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  *&v88[0] = v80;
  sub_1D6987C38(v48);
  v55 = *&v88[0];
  v56 = v77;
  v57 = *(v77 + 16);
  if (v57)
  {
    v80 = *&v88[0];
    v84 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v57, 0);
    v58 = v84;
    v59 = v56 + 32;
    do
    {
      sub_1D6332950(v59, v88, sub_1D63329B8);
      sub_1D6332950(v88, v85, sub_1D63329B8);
      v60 = *(&v86 + 1);
      v61 = v87;
      sub_1D5B63F14(v85, v83);
      sub_1D5B68374(v83, v5);
      *&v85[0] = 0;
      *(&v85[0] + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v85[0] = 0xD000000000000020;
      *(&v85[0] + 1) = 0x80000001D73D2030;
      MEMORY[0x1DA6F9910](v60, v61);

      v62 = v85[0];
      __swift_destroy_boxed_opaque_existential_1(v83);
      sub_1D6332B48(v88, sub_1D63329B8);
      *(v5 + 40) = v62;
      v5[56] = 2;
      swift_storeEnumTagMultiPayload();
      v84 = v58;
      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1D69991E8(v63 > 1, v64 + 1, 1);
        v58 = v84;
      }

      *(v58 + 16) = v64 + 1;
      sub_1D5BDAAA4(v5, v58 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v64, type metadata accessor for DebugInspectViewItem);
      v59 += 56;
      --v57;
    }

    while (v57);

    v39 = v81;
    v55 = v80;
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  *&v88[0] = v55;
  sub_1D6987C38(v58);
  v65 = *&v88[0];
  v66 = v73;
  v67 = v78;
  *(v73 + 32) = v79;
  *(v66 + 40) = v67;
  *(v66 + 48) = 0xD000000000000075;
  *(v66 + 56) = 0x80000001D73D2060;
  *(v66 + 64) = v65;
  *(v66 + 72) = 6;
  (*(v74 + 8))(v39, v75);
  return v66;
}

id *sub_1D632C830()
{

  sub_1D6332B48(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);

  sub_1D6332888(*(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 32));
  sub_1D6084EA8(v0 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_inventory);

  return v0;
}

uint64_t sub_1D632C92C()
{
  sub_1D632C830();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugInspectViewDataSource()
{
  result = qword_1EC885EB8;
  if (!qword_1EC885EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D632C9D8()
{
  result = type metadata accessor for DebugGroupLayoutKey();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D632CABC(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = sub_1D725AA4C();
    v11 = v10;
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = *(v8 + 48);
    }

    v13 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages;
    swift_beginAccess();
    v14 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v8 + v13);
    *(v8 + v13) = 0x8000000000000000;
    sub_1D6D7A208(v12, v9, v11, isUniquelyReferenced_nonNull_native);

    *(v8 + v13) = v18;
    swift_endAccess();
    v16 = v14;
    if (!a1)
    {
      v16 = *(v8 + 48);
    }

    v17 = v14;
    a4(v16);
  }

  return result;
}

uint64_t sub_1D632CC18(uint64_t a1, uint64_t a2)
{
  sub_1D5B49EE8(0, &unk_1EC88DC80, &type metadata for GroupLayoutAttributes, MEMORY[0x1E69D6B18]);
  sub_1D5B68374(a2, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D5B63F14(v6, v4 + 24);

  return sub_1D725BABC();
}

uint64_t sub_1D632CCE0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
  v10 = type metadata accessor for DebugGroupLayoutKey();
  LOBYTE(v17[0]) = 2;
  sub_1D62EFCE4(0, v17, v8);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 56))(v17, v8, v9 + *(v10 + 28), v11, v12);
  if (v2)
  {
    return sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  }

  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v15 + 32))(v14, v15);
  sub_1D6332B48(v8, type metadata accessor for GroupLayoutBindingContext);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1D632CE78@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v5 = sub_1D726369C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = a1[2];
  v25 = a1[1];
  v26 = v10;
  v24 = *a1;
  v27 = *(a1 + 6);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 40) = v13;
  *(v12 + 56) = a1[2];
  *(v12 + 72) = *(a1 + 6);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D6332BA8;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1D61395B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_37;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  sub_1D6332BB4(&v24, v22);

  v17 = [v11 imageWithActions_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69D88B8], v5);
    v20 = sub_1D72635EC();

    (*(v6 + 8))(v9, v5);

    *v21 = v20;
  }

  return result;
}

uint64_t sub_1D632D154(void *a1, id a2, uint64_t a3)
{
  [a2 setFill];
  v5 = *(a3 + 40);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a3 + 40) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      do
      {
LABEL_9:
        v11 &= v11 - 1;

        [a1 fillRect_];
      }

      while (v11);
      continue;
    }
  }
}

uint64_t sub_1D632D2A0(void **a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = *a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = sub_1D725AA4C();
  v9 = v8;
  v10 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages;
  swift_beginAccess();
  v11 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + v10);
  *(a2 + v10) = 0x8000000000000000;
  sub_1D6D7A208(v11, v7, v9, isUniquelyReferenced_nonNull_native);

  *(a2 + v10) = v14;
  swift_endAccess();
  return a4(v11);
}

uint64_t sub_1D632D3A0()
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D632D4F8(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v93 = a5;
  v94 = a4;
  v99 = a2;
  v100 = type metadata accessor for FeedItem(0);
  v88 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DebugInspectViewItem();
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v86 - v17);
  v19 = *a1;
  v20 = a1[2];
  v21 = a1[4];
  v22 = a1[5];
  if (!*(*a1 + 16) && !*(a1[3] + 16))
  {
    swift_beginAccess();
    sub_1D5EC2468(a3, &v107);
    v105 = v108;
    v106 = v107;
    v104 = v109;
    swift_endAccess();
    v84 = MEMORY[0x1E69E6158];
    v85 = MEMORY[0x1E69E6720];
    sub_1D63331DC(&v106, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D5B49EE8);
    sub_1D63331DC(&v105, &qword_1EDF43BE0, v84, v85, sub_1D5B49EE8);
    sub_1D63331DC(&v104, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
    v94(MEMORY[0x1E69E7CC0]);
    goto LABEL_32;
  }

  v90 = a1[1];
  v91 = v21;
  *&v107 = v19;

  v24 = &v107;
  sub_1D6986C7C(v23);
  if (__OFADD__(v20, v22))
  {
    __break(1u);
LABEL_35:
    result = sub_1D5EC3BA0(v22);
    v22 = result;
    *(v99 + a3) = result;
    goto LABEL_16;
  }

  v97 = v20 + v22;
  v89 = v5;
  v98 = v107;
  v25 = v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_key;
  v26 = (v25 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v27 = v26[4];
  v28 = v26[5];
  __swift_project_boxed_opaque_existential_1(v26 + 1, v27);
  (*(v28 + 64))(&v107, v27, v28);
  v29 = *(&v108 + 1);
  v95 = a3;
  v87 = v14;
  if (*(&v108 + 1))
  {
    v30 = v109;
    __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
    v31 = (*(v30 + 32))(v29, v30);
    if (v31)
    {
      v32 = *(v31 + 32);

      v33 = __swift_destroy_boxed_opaque_existential_1(&v107);
      v35 = v98;
      goto LABEL_10;
    }

    v33 = __swift_destroy_boxed_opaque_existential_1(&v107);
  }

  else
  {
    v33 = sub_1D6330678(&v107);
  }

  v35 = v98;
  v32 = MEMORY[0x1E69E7CD0];
LABEL_10:
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v86 - 2) = v32;
  *(&v96 + 1) = sub_1D726269C();
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v107 = 0xD000000000000011;
  *(&v107 + 1) = 0x80000001D73D21E0;
  v103 = *(v35 + 16);
  v36 = v103;
  v37 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
  v103 = v97;
  v38 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v92 = *(&v107 + 1);
  v97 = v107;
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000004FLL, 0x80000001D73D2200);
  v103 = *(&v96 + 1);
  v39 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73D2250);
  v40 = *(v32 + 16);

  v103 = v40;
  v41 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v41);

  MEMORY[0x1DA6F9910](0x736D65746920, 0xE600000000000000);
  v96 = v107;
  v24 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    *&v107 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v36, 0);
    v24 = v107;
    v42 = v98 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v43 = *(v88 + 72);
    do
    {
      sub_1D6332950(v42, v10, type metadata accessor for FeedItem);
      v18[3] = v100;
      v18[4] = sub_1D6332A8C(&qword_1EDF34F30, type metadata accessor for FeedItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D5BDAAA4(v10, boxed_opaque_existential_1, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      *&v107 = v24;
      v46 = *(v24 + 2);
      v45 = *(v24 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_1D69991E8(v45 > 1, v46 + 1, 1);
        v24 = v107;
      }

      *(v24 + 2) = v46 + 1;
      sub_1D5BDAAA4(v18, v24 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v46, type metadata accessor for DebugInspectViewItem);
      v42 += v43;
      --v36;
    }

    while (v36);
  }

  v47 = v99;
  v48 = v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection;
  v49 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  v50 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 8);
  v51 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 16);
  v52 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 24);
  v53 = *(v99 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection + 32);
  v14 = v92;
  *v48 = v97;
  *(v48 + 8) = v14;
  v54 = *(&v96 + 1);
  *(v48 + 16) = v96;
  *(v48 + 24) = v54;
  *(v48 + 32) = v24;
  *(v48 + 40) = 0;

  sub_1D6332888(v49, v50, v51, v52, v53);
  a3 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v22 = *(v47 + a3);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + a3) = v22;
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  v56 = v95;
  if ((v95 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v22 + 16) <= v95)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v57 = v22 + 48 * v95;
  *(v57 + 32) = v97;
  *(v57 + 40) = v14;
  v58 = *(&v96 + 1);
  *(v57 + 48) = v96;
  *(v57 + 56) = v58;
  *(v57 + 64) = v24;
  *(v57 + 72) = 0;
  *(v99 + a3) = v22;
  swift_endAccess();

  *&v107 = v90;

  sub_1D6985340(v59);
  v60 = v107;
  if (!*(v107 + 16))
  {

LABEL_31:
    v94(v98);

LABEL_32:
    sub_1D5B49EE8(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v107 = 0xD000000000000018;
  *(&v107 + 1) = 0x80000001D73D2270;
  v103 = *(v60 + 16);
  v61 = v103;
  v62 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v62);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v64 = *(&v107 + 1);
  v63 = v107;
  if (v61)
  {
    v92 = *(&v107 + 1);
    *&v96 = v107;
    v97 = a3;
    *&v107 = MEMORY[0x1E69E7CC0];
    sub_1D69991E8(0, v61, 0);
    v65 = v107;
    *(&v96 + 1) = v60;
    v66 = (v60 + 48);
    v67 = v87;
    do
    {
      v100 = v65;
      v68 = *(v66 - 2);
      v69 = *(v66 - 1);
      v70 = *v66;
      swift_unknownObjectRetain();
      v71 = v69;
      v72 = [v68 itemID];
      v73 = sub_1D726207C();
      v75 = v74;

      *v67 = v73;
      v67[1] = v75;
      [v71 sortingScore];
      v77 = v76;
      v67[5] = MEMORY[0x1E69E63B0];
      v67[6] = MEMORY[0x1E69E6418];

      v65 = v100;
      swift_unknownObjectRelease();
      v67[2] = v77;
      swift_storeEnumTagMultiPayload();
      *&v107 = v65;
      v79 = *(v65 + 16);
      v78 = *(v65 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D69991E8(v78 > 1, v79 + 1, 1);
        v65 = v107;
      }

      v66 += 3;
      *(v65 + 16) = v79 + 1;
      sub_1D5BDAAA4(v67, v65 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v79, type metadata accessor for DebugInspectViewItem);
      --v61;
    }

    while (v61);

    v56 = v95;
    a3 = v97;
    v63 = v96;
    v64 = v92;
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v80 = __OFADD__(v56, 1);
  v81 = v56 + 1;
  if (v80)
  {
    goto LABEL_38;
  }

  v82 = v65;
  v83 = v99;
  result = swift_beginAccess();
  if (*(*(v83 + a3) + 16) < v81)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v81 & 0x8000000000000000) == 0)
  {
    *&v107 = v63;
    *(&v107 + 1) = v64;
    *&v108 = 0xD000000000000047;
    *(&v108 + 1) = 0x80000001D73D2290;
    v109 = v82;
    v110 = 1;
    sub_1D6C03684(v81, v81, &v107);
    swift_endAccess();
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D632E13C(uint64_t a1, uint64_t a2)
{
  v3 = FeedItem.debugIdentifier.getter();
  LOBYTE(a2) = sub_1D5BE240C(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_1D632E180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v7 = v11[0];
  v8 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = v7;
  sub_1D725C30C();

  swift_beginAccess();
  sub_1D5EC2468(a3, v11);
  v14 = v11[1];
  v15 = v11[0];
  v13 = v12;
  swift_endAccess();
  v9 = MEMORY[0x1E69E6720];
  sub_1D63331DC(&v15, &qword_1EDF43BE0, v8, MEMORY[0x1E69E6720], sub_1D5B49EE8);
  sub_1D63331DC(&v14, &qword_1EDF43BE0, v8, v9, sub_1D5B49EE8);
  sub_1D63331DC(&v13, &qword_1EC8803C8, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E62F8], sub_1D5BB1438);
  return a4(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D632E400@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  v18 = v6;
  LOBYTE(v19) = v7;
  v10 = type metadata accessor for DebugGroupLayoutKey();
  sub_1D5F59A90(&v18, a2 + *(v10 + 28), v8, v9);
  if (v3)
  {
    v20 = v6;
    v21 = v7;
    v11 = sub_1D6DBA870();
    v13 = v12;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();

    v14 = v18;
    v15 = v19;
    *a3 = v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = 1;
  }

  else
  {
    v18 = v6;
    LOBYTE(v19) = v7;
    *a3 = sub_1D6DBA870();
    *(a3 + 8) = v17;
    *(a3 + 16) = xmmword_1D72BA430;
    *(a3 + 32) = 0;
  }

  type metadata accessor for DebugInspectViewItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D632E574(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  (*(v3 + 64))(v11, v2, v3);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(v5 + 32))(v4, v5);
    if (v6)
    {
      v7 = *(v6 + 16);

      __swift_destroy_boxed_opaque_existential_1(v11);
      if (v7 >> 62)
      {
        v8 = sub_1D7263BFC();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8)
      {
        sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
        type metadata accessor for DebugInspectViewItem();
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D7273AE0;
        swift_storeEnumTagMultiPayload();
        return v9;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    sub_1D6330678(v11);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D632E764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for DebugGroupLayoutKey() + 24) + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D725AA4C();
  if (*(v5 + 16))
  {
    sub_1D5B69D90(v6, v7);
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 24))(v8, v9);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D5C15304(v10, v11);
  v12 = 0xE400000000000000;
  v13 = 1701736270;
  v14 = 0xE400000000000000;
  v15 = 1751607624;
  if (v20 != 2)
  {
    v15 = 0x756F72636964754CLL;
    v14 = 0xE900000000000073;
  }

  if (v20)
  {
    v13 = 7827276;
    v12 = 0xE300000000000000;
  }

  if (v20 <= 1u)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v20 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  MEMORY[0x1DA6F9910](v16, v17);

  MEMORY[0x1DA6F9910](10272, 0xE200000000000000);
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0xE000000000000000;
  *(a3 + 56) = 0;
  type metadata accessor for DebugInspectViewItem();
  return swift_storeEnumTagMultiPayload();
}

void sub_1D632E978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a3, v12, type metadata accessor for GroupLayoutBindingContext);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 56))(v28, v12, a4, v13, v14);
  if (v4)
  {
    sub_1D6332B48(v12, type metadata accessor for GroupLayoutBindingContext);
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    *&v27[0] = v4;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v16 = *(&v28[0] + 1);
    v15 = *&v28[0];
    sub_1D5B68374(a2, v28);
    *(&v29 + 1) = v15;
    v30 = v16;
    v17 = *(a1 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D6993C98(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1D6993C98((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[7 * v19];
    v21 = v28[0];
    v22 = v28[1];
    v23 = v29;
    v20[10] = v30;
    *(v20 + 3) = v22;
    *(v20 + 4) = v23;
    *(v20 + 2) = v21;
    *(a1 + 8) = v17;
  }

  else
  {
    sub_1D5B68374(v28, v27);
    v24 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D5BDB0E4(0, v24[2] + 1, 1, v24);
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1D5BDB0E4((v25 > 1), v26 + 1, 1, v24);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1D6332B48(v12, type metadata accessor for GroupLayoutBindingContext);
    v24[2] = v26 + 1;
    sub_1D5B63F14(v27, &v24[5 * v26 + 4]);
    *a1 = v24;
  }
}

void sub_1D632EC38(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  sub_1D5BEE70C(a3, v7, v8);
  if (v3)
  {
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;
    v22 = v3;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    v9 = v20[0];
    sub_1D5B68374(a2, v20);
    *&v21[8] = v9;
    v10 = *(a1 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D6993C98(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1D6993C98((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[7 * v12];
    v14 = v20[0];
    v15 = v20[1];
    v16 = *v21;
    v13[10] = *&v21[16];
    *(v13 + 3) = v15;
    *(v13 + 4) = v16;
    *(v13 + 2) = v14;
    *(a1 + 8) = v10;
  }

  else
  {
    sub_1D5B68374(a2, v20);
    v17 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D5BEEC40(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1D5BEEC40((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    sub_1D5B63F14(v20, &v17[5 * v19 + 4]);
    *a1 = v17;
  }
}

uint64_t sub_1D632EE2C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1D5BB1438(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v144 = &v125 - v8;
  sub_1D5BB1438(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v127 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v133 = &v125 - v14;
  v132 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v132, v15);
  v126 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v128 = &v125 - v19;
  v131 = type metadata accessor for FeedHeadline(0);
  v20 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v21);
  v130 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB1438(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v5);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v125 - v25;
  v151 = type metadata accessor for FeedItem(0);
  v27 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v28);
  v141 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v149 = &v125 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v152 = &v125 - v35;
  v156 = type metadata accessor for DebugInspectViewItem();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v36);
  v145 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v154 = (&v125 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v169 = &v125 - v43;
  v163 = sub_1D7257A4C();
  v44 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v45);
  v162 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v134 = v47;
  v48 = *(v2 + v47);
  v49 = *(v48 + 16);
  v135 = v2;
  v159 = (v2 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_allScoredCandidatesSection);
  v136 = 0x80000001D73BB730;
  v164 = "nochrome";
  v161 = (v44 + 8);
  v150 = (v27 + 56);
  v129 = (v20 + 48);

  v51 = 0;
  v165 = -v49;
  v148 = MEMORY[0x1E69E7CC0];
  v146 = v26;
  v160 = v48;
LABEL_2:
  v52 = v51 + 1;
  v53 = 48 * v51;
  while (1)
  {
    if (v165 + v52 == 1)
    {

      *(v135 + v134) = v148;
    }

    v51 = v52;
    if ((v52 - 1) >= *(v48 + 16))
    {
      break;
    }

    v54 = *(v48 + v53 + 32);
    v171 = *(v48 + v53 + 40);
    v55 = *(v48 + v53 + 48);
    v56 = *(v48 + v53 + 56);
    v57 = *(v48 + v53 + 64);
    v58 = *(v48 + v53 + 72);
    v167 = v54;
    v168 = v55;
    v166 = v58;
    if (v58)
    {
      v59 = sub_1D72646CC();

      if ((v59 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v170 = v56;
    v176[0] = a1;
    v176[1] = a2;
    v60 = v162;
    sub_1D72579DC();
    v61 = sub_1D5BF4D9C();
    v62 = sub_1D7263A4C();
    v64 = v63;
    v65 = v62;
    (*v161)(v60, v163);
    v66 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v66 = v65 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      v67 = *(v57 + 16);

      v153 = v67;
      if (v67)
      {
        v142 = v65;
        v68 = 0;
        v147 = MEMORY[0x1E69E7CC0];
        v69 = v146;
        v140 = a2;
        v143 = a1;
        while (1)
        {
          if (v68 >= *(v57 + 16))
          {
            goto LABEL_56;
          }

          v70 = v61;
          v71 = a1;
          v72 = v69;
          v73 = *(v155 + 72);
          v158 = (*(v155 + 80) + 32) & ~*(v155 + 80);
          v157 = v73;
          v74 = v169;
          sub_1D6332950(v57 + v158 + v73 * v68, v169, type metadata accessor for DebugInspectViewItem);
          v75 = v154;
          sub_1D6332950(v74, v154, type metadata accessor for DebugInspectViewItem);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            break;
          }

          sub_1D5B63F14(v75, v176);
          sub_1D5B68374(v176, &v174);
          sub_1D5B49474(0, &qword_1EDF41FC0);
          v69 = v72;
          v76 = v151;
          v77 = swift_dynamicCast();
          v78 = *v150;
          if ((v77 & 1) == 0)
          {
            v78(v72, 1, 1, v76);
            __swift_destroy_boxed_opaque_existential_1(v176);
            sub_1D63331DC(v72, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D5BB1438);
LABEL_16:
            a1 = v71;
            v61 = v70;
LABEL_17:
            result = sub_1D6332B48(v169, type metadata accessor for DebugInspectViewItem);
            goto LABEL_18;
          }

          v78(v72, 0, 1, v76);
          v79 = v152;
          sub_1D5BDAAA4(v72, v152, type metadata accessor for FeedItem);
          sub_1D6332950(v79, v149, type metadata accessor for FeedItem);
          v61 = v70;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 3u:
              v90 = v130;
              sub_1D5BDAAA4(v149, v130, type metadata accessor for FeedHeadline);
              goto LABEL_32;
            case 4u:
              v91 = v128;
              sub_1D5BDAAA4(v149, v128, type metadata accessor for FeedWebEmbed);
              v90 = v133;
              sub_1D6332AD4(v91 + *(v132 + 48), v133, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
              v92 = v91;
              v69 = v146;
              sub_1D6332B48(v92, type metadata accessor for FeedWebEmbed);
              if ((*v129)(v90, 1, v131) == 1)
              {
                sub_1D63331DC(v133, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
              }

              else
              {
LABEL_32:
                v93 = *(v90 + 40);
                swift_unknownObjectRetain();
                sub_1D6332B48(v90, type metadata accessor for FeedHeadline);
                v94 = [v93 title];
                swift_unknownObjectRelease();
                if (v94)
                {
                  v95 = sub_1D726207C();
                  v97 = v96;
                  v139 = v96;

                  v174 = v95;
                  v175 = v97;
                  v172 = v142;
                  v173 = v64;
                  v98 = sub_1D7258AAC();
                  v99 = v144;
                  (*(*(v98 - 8) + 56))(v144, 1, 1, v98);
                  sub_1D7263A9C();
                  v101 = v100;
                  sub_1D63331DC(v99, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);

                  v88 = v152;
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }
              }

LABEL_24:
              v174 = FeedItem.identifier.getter();
              v175 = v80;
              v172 = v142;
              v173 = v64;
              v81 = sub_1D7258AAC();
              v82 = *(v81 - 8);
              v83 = *(v82 + 56);
              v84 = v144;
              v137 = v81;
              v139 = v83;
              v138 = v82 + 56;
              (v83)(v144, 1, 1);
              sub_1D7263A9C();
              v86 = v85;
              v87 = v84;
              v69 = v146;
              sub_1D63331DC(v87, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);

              v88 = v152;
              if (v86)
              {
                sub_1D6332950(v152, v141, type metadata accessor for FeedItem);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                a2 = v140;
                a1 = v143;
                switch(EnumCaseMultiPayload)
                {
                  case 3:
                    v106 = v130;
                    sub_1D5BDAAA4(v141, v130, type metadata accessor for FeedHeadline);
                    goto LABEL_44;
                  case 4:
                    v107 = v126;
                    sub_1D5BDAAA4(v141, v126, type metadata accessor for FeedWebEmbed);
                    v106 = v127;
                    sub_1D6332AD4(v107 + *(v132 + 48), v127, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
                    v108 = v107;
                    v69 = v146;
                    sub_1D6332B48(v108, type metadata accessor for FeedWebEmbed);
                    if ((*v129)(v106, 1, v131) == 1)
                    {
                      sub_1D63331DC(v127, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720], sub_1D5BB1438);
LABEL_27:
                      sub_1D6332B48(v152, type metadata accessor for FeedItem);
                      __swift_destroy_boxed_opaque_existential_1(v176);
                      goto LABEL_17;
                    }

LABEL_44:
                    v109 = *(v106 + 40);
                    swift_unknownObjectRetain();
                    sub_1D6332B48(v106, type metadata accessor for FeedHeadline);
                    v110 = [v109 sourceChannel];
                    a1 = v143;
                    swift_unknownObjectRelease();
                    if (!v110)
                    {
                      goto LABEL_27;
                    }

                    v111 = [v110 name];
                    swift_unknownObjectRelease();
                    v112 = sub_1D726207C();
                    v114 = v113;

                    a1 = v143;
                    v174 = v112;
                    v175 = v114;
                    v172 = v142;
                    v173 = v64;
                    v115 = v144;
                    v139(v144, 1, 1, v137);
                    sub_1D7263A9C();
                    LOBYTE(v112) = v116;
                    v117 = v115;
                    v69 = v146;
                    sub_1D63331DC(v117, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D5BB1438);
                    a2 = v140;

                    sub_1D6332B48(v152, type metadata accessor for FeedItem);
                    __swift_destroy_boxed_opaque_existential_1(v176);
                    if ((v112 & 1) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_17;
                  case 18:
                    goto LABEL_27;
                  default:
                    sub_1D6332B48(v141, type metadata accessor for FeedItem);
                    goto LABEL_27;
                }
              }

LABEL_34:
              sub_1D6332B48(v88, type metadata accessor for FeedItem);
              __swift_destroy_boxed_opaque_existential_1(v176);
LABEL_35:
              sub_1D5BDAAA4(v169, v145, type metadata accessor for DebugInspectViewItem);
              v102 = v147;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v177 = v102;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D69991E8(0, *(v102 + 16) + 1, 1);
                v102 = v177;
              }

              v105 = *(v102 + 16);
              v104 = *(v102 + 24);
              if (v105 >= v104 >> 1)
              {
                sub_1D69991E8(v104 > 1, v105 + 1, 1);
                v102 = v177;
              }

              *(v102 + 16) = v105 + 1;
              v147 = v102;
              result = sub_1D5BDAAA4(v145, v102 + v158 + v105 * v157, type metadata accessor for DebugInspectViewItem);
              a2 = v140;
              a1 = v143;
              break;
            case 0x12u:
              goto LABEL_24;
            default:
              sub_1D6332B48(v149, type metadata accessor for FeedItem);
              goto LABEL_24;
          }

LABEL_18:
          if (v153 == ++v68)
          {
            goto LABEL_48;
          }
        }

        sub_1D6332B48(v75, type metadata accessor for DebugInspectViewItem);
        v69 = v72;
        goto LABEL_16;
      }

      v147 = MEMORY[0x1E69E7CC0];
LABEL_48:

      v56 = v170;

      v57 = v147;
      v48 = v160;
LABEL_49:
      v120 = v148;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D6993B10(0, *(v120 + 16) + 1, 1, v120);
        v120 = result;
      }

      v122 = *(v120 + 16);
      v121 = *(v120 + 24);
      if (v122 >= v121 >> 1)
      {
        result = sub_1D6993B10((v121 > 1), v122 + 1, 1, v120);
        v120 = result;
      }

      *(v120 + 16) = v122 + 1;
      v148 = v120;
      v123 = v120 + 48 * v122;
      v124 = v171;
      *(v123 + 32) = v167;
      *(v123 + 40) = v124;
      *(v123 + 48) = v168;
      *(v123 + 56) = v56;
      *(v123 + 64) = v57;
      *(v123 + 72) = v166;
      goto LABEL_2;
    }

    v52 = v51 + 1;
    v53 += 48;

    v57 = v159[4];
    v48 = v160;
    if (v57)
    {
      v166 = *(v159 + 40);
      v118 = v159[2];
      v56 = v159[3];
      v119 = v159[1];
      v167 = *v159;
      v168 = v118;

      v171 = v119;

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void sub_1D63303A4(void *a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (a2)
  {
    v14 = a2;
    [v14 setFill];
    [a1 fillRect_];
  }

  if (a6)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v15 setAlignment_];
    [a7 pointSize];
    v17 = (a4 - v16) * 0.5;
    [a7 pointSize];
    v19 = v18;
    v20 = sub_1D726203C();
    sub_1D5BB1438(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7279970;
    v22 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v23 = sub_1D5B5A498(0, qword_1EDF1A6A0);
    *(inited + 40) = a8;
    v24 = *MEMORY[0x1E69DB688];
    *(inited + 64) = v23;
    *(inited + 72) = v24;
    v25 = sub_1D5B5A498(0, &qword_1EDF1A840);
    *(inited + 80) = v15;
    v26 = *MEMORY[0x1E69DB648];
    *(inited + 104) = v25;
    *(inited + 112) = v26;
    *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A720);
    *(inited + 120) = a7;
    v27 = v22;
    v28 = a8;
    v29 = v24;
    v30 = v15;
    v31 = v26;
    v32 = a7;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4();
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_1D6332A8C(&qword_1EDF1A8E0, type metadata accessor for Key);
    v33 = sub_1D7261D2C();

    [v20 drawInRect:v33 withAttributes:{0.0, v17, a3, v19}];
  }
}

uint64_t sub_1D6330678(uint64_t a1)
{
  sub_1D5BFB840(0, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D633075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a1, v11, type metadata accessor for FeedItem);
  sub_1D6332950(a2, v7, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332B48(v11, type metadata accessor for FeedItem);
    sub_1D6332768();

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  sub_1D63327EC();
  v14 = *&v7[*(v13 + 48) + 40];
  v15 = FeedItem.identifier.getter();
  v17 = v16;
  sub_1D6332B48(v11, type metadata accessor for FeedItem);
  if (!*(v14 + 16))
  {

LABEL_8:

    goto LABEL_9;
  }

  v18 = sub_1D5B69D90(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(*(v14 + 56) + 8 * v18);

  v25[1] = v21;
  *&v26.origin.x = FeedItemLayoutAttributes.frame.getter().n128_u64[0];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 0.0;
  v27.size.height = 0.0;
  v22 = CGRectEqualToRect(v26, v27);

  v23 = !v22;
LABEL_10:
  sub_1D6332B48(v7, type metadata accessor for GroupLayoutBindingContext);
  return v23;
}

uint64_t sub_1D63309B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6332950(a1, v7, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D63327EC();

LABEL_6:
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v9 = 0;
    v12 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  sub_1D6332768();
  v27 = *&v7[*(v8 + 48)];
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (!swift_dynamicCast())
  {

    goto LABEL_6;
  }

  v24 = *&v25[5];
  *v25 = v26[0];
  *(&v25[1] + 1) = *(v26 + 9);
  v9 = 0x80000001D73D2140;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for DebugInspectViewItem() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = v12 + v11;
  v14 = sub_1D5E4E0CC();
  v16 = v15;
  v17 = sub_1D5C173A4();
  *v13 = v14;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  *(v13 + 24) = v18;
  *(v13 + 32) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1D5E4E3B4(&v24);

  v19 = 7;
  v20 = 0xD000000000000024;
  v21 = 0xE500000000000000;
  v22 = 0x726F727245;
LABEL_7:
  result = sub_1D6332B48(v7, type metadata accessor for GroupLayoutBindingContext);
  *a2 = v22;
  *(a2 + 8) = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v19;
  return result;
}

double sub_1D6330C84@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v62 = a2;
  v61 = a3;
  v4 = type metadata accessor for DebugInspectViewResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - v16;
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v18 = type metadata accessor for DebugInspectViewItem();
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7274590;
  v58 = v21;
  v22 = (v21 + v20);
  *v22 = 1701667150;
  v22[1] = 0xE400000000000000;
  v23 = a1[5];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v23);
  v24 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
  v25 = MEMORY[0x1E69E61C8];
  v22[5] = MEMORY[0x1E69E6158];
  v22[6] = v25;
  v22[2] = v24;
  v22[3] = v26;
  v59 = v18;
  swift_storeEnumTagMultiPayload();
  v55 = v19;
  v53 = v22;
  v27 = (v22 + v19);
  *v27 = 1701869908;
  v27[1] = 0xE400000000000000;
  sub_1D6332950(v62, v10, type metadata accessor for DebugInspectViewResult);
  v54 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768();
  }

  else
  {
    sub_1D63327EC();
  }

  sub_1D5BDAAA4(v10, v17, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5B68374((v17 + 8), v72);
  sub_1D6332B48(v17, type metadata accessor for GroupLayoutBindingContext);
  v29 = v73;
  v30 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  (*(v30 + 32))(v71, v29, v30);
  v31 = v71[0];
  v64 = v71[0];
  v65 = v71[1];
  v66 = v71[2];
  v67 = v71[3];
  v68 = v71[4];
  v69 = v71[5];
  v70 = v71[6];
  v32 = FeedGroupKind.description.getter();
  v34 = v33;
  v27[5] = MEMORY[0x1E69E6158];
  v27[6] = MEMORY[0x1E69E61C8];
  sub_1D5BC6C20(v31);
  v27[2] = v32;
  v27[3] = v34;
  swift_storeEnumTagMultiPayload();
  v35 = v55;
  v36 = v53;
  v37 = v53 + 2 * v55;
  strcpy(v37, "Layout order");
  v37[13] = 0;
  *(v37 + 7) = -5120;
  v38 = v57;
  sub_1D6332950(v62, v57, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768();
  }

  else
  {
    sub_1D63327EC();
  }

  v40 = v38;
  v41 = v56;
  sub_1D5BDAAA4(v40, v56, type metadata accessor for GroupLayoutBindingContext);
  v42 = *v41;
  sub_1D6332B48(v41, type metadata accessor for GroupLayoutBindingContext);
  v43 = 0x80000001D73D2120;
  v44 = 0x614C206C61656449;
  if (v42)
  {
    v44 = 0xD000000000000010;
  }

  *(v37 + 5) = MEMORY[0x1E69E6158];
  *(v37 + 6) = MEMORY[0x1E69E61C8];
  if (!v42)
  {
    v43 = 0xEC00000074756F79;
  }

  *(v37 + 2) = v44;
  *(v37 + 3) = v43;
  swift_storeEnumTagMultiPayload();
  v45 = (v36 + 3 * v35);
  *v45 = 0x797469726F697250;
  v45[1] = 0xE800000000000000;
  v46 = v60[5];
  v47 = v60[6];
  __swift_project_boxed_opaque_existential_1(v60 + 2, v46);
  (*(v47 + 32))(&v63, v46, v47);
  if (v63 > 1u)
  {
    if (v63 == 2)
    {
      v48 = 0xE400000000000000;
      v49 = 1751607624;
    }

    else
    {
      v48 = 0xE900000000000073;
      v49 = 0x756F72636964754CLL;
    }
  }

  else if (v63)
  {
    v48 = 0xE300000000000000;
    v49 = 7827276;
  }

  else
  {
    v48 = 0xE400000000000000;
    v49 = 1701736270;
  }

  v45[5] = MEMORY[0x1E69E6158];
  v45[6] = MEMORY[0x1E69E61C8];
  v45[2] = v49;
  v45[3] = v48;
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v72);
  *&result = 0x74756F79614CLL;
  v51 = v61;
  *v61 = xmmword_1D72BA440;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 4) = v58;
  *(v51 + 40) = 5;
  return result;
}

double sub_1D63312F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5BB1438(0, &unk_1EC88EC00, type metadata accessor for DebugInspectViewItem, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for DebugInspectViewItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7270C10;
  v8 = (v7 + v6);
  *v8 = 1701667150;
  v8[1] = 0xE400000000000000;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = MEMORY[0x1E69E61C8];
  v8[5] = MEMORY[0x1E69E6158];
  v8[6] = v12;
  v8[2] = v11;
  v8[3] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v8 + v5);
  *v14 = 0x656C746954;
  v14[1] = 0xE500000000000000;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 24))(v15, v16);
  if (v18)
  {
    v14[2] = v17;
    v14[3] = v18;
    v19 = MEMORY[0x1E69E61C8];
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
  }

  v14[5] = v20;
  v14[6] = v19;
  swift_storeEnumTagMultiPayload();
  *&result = 0x70756F7247;
  *a2 = xmmword_1D72BA450;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = 2;
  return result;
}