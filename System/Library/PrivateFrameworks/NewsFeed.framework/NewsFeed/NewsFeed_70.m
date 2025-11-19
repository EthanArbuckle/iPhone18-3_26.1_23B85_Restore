__n128 FeedContext.init(subscription:bundleSession:displayFreeBadges:displayPremiumBadges:debugForcePremiumBadging:segmentSetIds:platform:allowsNewsProxyAudioCommands:timesOfDayConfiguration:feedEditionConfig:feedMode:userInfo:selectors:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, __n128 *a11, char *a12, void *a13, uint64_t a14)
{
  v31 = a7[1];
  v32 = *a7;
  v33 = *a11;
  v27 = *a12;
  *a9 = a1;
  v17 = type metadata accessor for FeedContext();
  sub_1D5B8866C(a2, a9 + v17[5]);
  v18 = a1;
  if (objc_getAssociatedObject(v18, (a1 + 1)))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_1D5EBD03C(&v39);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v19 = v36;
  v20 = [v36 integerValue];
  if (v20 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v18, ~v20))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_1D5EBD03C(&v39);
    goto LABEL_17;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v23 = -99;
    goto LABEL_18;
  }

  v21 = v36;
  v22 = [v21 integerValue];

  v23 = v22 - 99;
LABEL_18:
  *(a9 + v17[6]) = ((v23 ^ v20) & 1) == 0;
  *(a9 + v17[7]) = a3 & 1;
  *(a9 + v17[8]) = a4 & 1;
  *(a9 + v17[9]) = a5 & 1;
  LOBYTE(v39) = v27;
  v24 = sub_1D5B8630C(v18, a2, a6, a10, &v39, a13, a14);

  __swift_destroy_boxed_opaque_existential_1(a13);
  sub_1D5BFC618(a2, &qword_1EDF33290, type metadata accessor for BundleSession);
  *(a9 + v17[10]) = v24;
  *(a9 + v17[11]) = a6;
  v25 = (a9 + v17[12]);
  *v25 = v32;
  v25[1] = v31;
  *(a9 + v17[13]) = a8 & 1;
  *(a9 + v17[14]) = a10;
  result = v33;
  *(a9 + v17[15]) = v33;
  return result;
}

uint64_t FeedContext.premiumBadge(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for FeedContext();
  if (*(v2 + *(result + 36)))
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 isPaid];
    v8 = *v2;
    v9 = [objc_msgSend(a1 sourceChannel)];
    swift_unknownObjectRelease();
    if (!v9)
    {
      sub_1D726207C();
      v9 = sub_1D726203C();
    }

    v10 = [v8 containsTagID_];

    result = [v8 isSubscribed];
    if (v10)
    {
      v6 = (v7 | result) & 1;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t FeedContext.premiumBadge(forIssue:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for FeedContext();
  if (*(v2 + *(result + 36)) & 1) != 0 || (v7 = result, result = [a1 isPaid], result) && (*(v2 + *(v7 + 32)))
  {
    v6 = 1;
  }

  else
  {
    result = [a1 isPaid];
    if ((result & 1) != 0 || (*(v2 + *(v7 + 28)) & 1) == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  *a2 = v6;
  return result;
}

unint64_t sub_1D61A0208()
{
  result = qword_1EC884BF8;
  if (!qword_1EC884BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884BF8);
  }

  return result;
}

uint64_t sub_1D61A025C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D61A02CC(void *a1)
{
  v3 = v1;
  sub_1D61A55C4(0, &qword_1EC884CB0, sub_1D61A5570, &type metadata for A12_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61A5570();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D61A562C(&qword_1EC8801E8, type metadata accessor for CGRect);
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

uint64_t sub_1D61A0514(uint64_t a1)
{
  v2 = sub_1D61A5570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61A0550(uint64_t a1)
{
  v2 = sub_1D61A5570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D61A058C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D61A52D0(a1, v6);
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

uint64_t sub_1D61A05EC()
{
  sub_1D61A4F54();

  return sub_1D725A24C();
}

uint64_t sub_1D61A0668@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D61A55C4(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D61A0724@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
  v133 = &type metadata for A12_V8;
  v36 = sub_1D5ECE8C8();
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
  v133 = &type metadata for A12_V8;
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
      v42 = sub_1D5C11E10(&unk_1F5112198, v73, v57);

      if (v42)
      {
      }

      else
      {
        v42 = sub_1D5C11E10(&unk_1F5112198, v56, v57);

        if (!v42)
        {
          v124[0] = &unk_1F5112198;
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
      if (qword_1F51121B8)
      {
        v124[0] = &unk_1F5112198;
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
      v92 = sub_1D5C11E10(&unk_1F51121C0, v91, v37);

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

      v95 = sub_1D5C11E10(&unk_1F51121C0, v57, v37);

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

      v124[0] = &unk_1F51121C0;
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

  if (!qword_1F51121E0 || !qword_1F51121E8 || !qword_1F51121F0)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_59:
    v124[0] = v42;
    sub_1D5C122E4(v87);
    v98 = v124[0];
    v99 = type metadata accessor for A12_V8.Bound();
    v100 = v107;
    v107[3] = v99;
    v100[4] = sub_1D61A562C(&qword_1EC884C10, type metadata accessor for A12_V8.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
    *boxed_opaque_existential_1 = v114;
    sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v99 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v99 + 28)) = v98;
    return result;
  }

  v124[0] = &unk_1F51121C0;
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

uint64_t sub_1D61A1968@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  *&v43 = sub_1D725A36C();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V8.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v50);
  sub_1D5B68374(v12 + 56, v49);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v50, v15 + 16);
  sub_1D5B63F14(v49, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v48[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v48, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v49);
  sub_1D5B68374(v16 + 56, v48);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v49, v18 + 16);
  sub_1D5B63F14(v48, v18 + 56);
  *(v18 + 96) = v17;
  v47[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v47, v50);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v50, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v50[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v50[0];
  v44 = v2;
  v46[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D61A4EF0, v46);

  v23 = *(v22 + 16);
  if (v23)
  {
    v38 = (2 * v23) | 1;
    if (v23 >= 4)
    {
      v39 = 4;
    }

    else
    {
      v39 = *(v22 + 16);
    }

    v40 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v39, v38);
    v24 = v41;
  }

  else
  {

    v24 = v22;
  }

  *&v50[0] = v24;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D60DF67C(&qword_1EC880610);
  sub_1D7262C1C();

  v25 = *MEMORY[0x1E69D7130];
  v26 = sub_1D7259D1C();
  (*(*(v26 - 8) + 104))(v6, v25, v26);
  v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v43);
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1D61A4FFC(0, &qword_1EC884C30, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v29 = v51;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D60DF67C(&qword_1EDF1B248);
  v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v42 = v50[1];
  v43 = v50[0];
  *&v50[0] = v22;
  *&v49[0] = v29;
  MEMORY[0x1EEE9AC00](v30, v31);

  v32 = sub_1D725C00C();

  v33 = v45;
  *v45 = 0;
  v34 = v43;
  *(v33 + 24) = v42;
  *(v33 + 8) = v34;
  *&v50[0] = v32;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v37 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v37;
  return result;
}

uint64_t sub_1D61A1FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D61A2094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D61A4FFC(0, &qword_1EC884C50, MEMORY[0x1E69D7150]);
  sub_1D61A4FB8(&qword_1EC884C58, &qword_1EC884C50, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D61A2284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v70 = a2;
  v58 = sub_1D61A4F00;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v56 - v8);
  v74 = a1;
  v10 = a1;
  v57 = a1;
  v11 = sub_1D725994C();
  v61 = v11;
  v12 = swift_allocBox();
  v67 = *MEMORY[0x1E69D6F50];
  v13 = *(v11 - 8);
  v14 = *(v13 + 104);
  v65 = v13 + 104;
  v66 = v14;
  v14(v15);
  *v9 = v12;
  v64 = *MEMORY[0x1E69D73C0];
  v16 = *(v6 + 104);
  v16(v9);
  v17 = v6 + 104;
  v18 = v16;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  v21 = v20;
  v68 = sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v19);
  v22 = v21;
  sub_1D7259A9C();
  v23 = *(v6 + 8);
  v63 = v6 + 8;
  v23(v9, v5);
  v24 = v23;
  v74 = v10;
  sub_1D60DF7C0();
  v26 = v25;
  v27 = swift_allocBox();
  v29 = v28;
  v30 = *(v26 + 48);
  *v28 = 7;
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  *v9 = v27;
  (v18)(v9, *MEMORY[0x1E69D73E0], v5);
  v73 = v70;
  v62 = v22;
  sub_1D72599EC();
  v71 = v24;
  v24(v9, v5);
  v33 = v57;
  v74 = v57;
  v34 = v61;
  v35 = swift_allocBox();
  v66(v36, v67, v34);
  *v9 = v35;
  (v18)(v9, v64, v5);
  sub_1D7259A9C();
  v24(v9, v5);
  v37 = v33;
  v74 = v33;
  v38 = *MEMORY[0x1E69D74A8];
  v60 = v17;
  v59 = v18;
  (v18)(v9, v38, v5);
  sub_1D61A5088();
  sub_1D61A55C4(0, &qword_1EC884C78, v58, &type metadata for A12_V8.Layout, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = v40;
  v45 = v71;
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D7098], v44);
  v72 = v70;
  sub_1D72599EC();

  result = v45(v9, v5);
  v47 = *(v69 + 16);
  if (v47)
  {
    v48 = (v69 + 32);
    LODWORD(v58) = *MEMORY[0x1E69D7460];
    do
    {
      v49 = *v48++;
      v69 = v49;
      v70 = v47;
      v74 = v37;
      v50 = swift_allocBox();
      v66(v51, v67, v34);
      *v9 = v50;
      v52 = v59;
      (v59)(v9, v64, v5);

      sub_1D7259A9C();
      v71(v9, v5);
      v74 = v37;
      v53 = (v52)(v9, v58, v5);
      MEMORY[0x1EEE9AC00](v53, v54);
      v55 = v71;
      sub_1D72599EC();

      v34 = v61;
      result = v55(v9, v5);
      v47 = v70 - 1;
    }

    while (v70 != 1);
  }

  return result;
}

uint64_t sub_1D61A2970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE780C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE780C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v26);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D61A2D4C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v12);
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

uint64_t sub_1D61A308C(uint64_t a1, uint64_t a2)
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
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D61A3660(uint64_t a1, uint64_t a2)
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
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D61A3C34(uint64_t a1, uint64_t a2)
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
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 4uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 3 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
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
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v38);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D61A420C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
  sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
  sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v13);
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

uint64_t sub_1D61A44B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v29);
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

uint64_t sub_1D61A4860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A55C4(0, &qword_1EC884C48, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D74B0]);
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
    sub_1D61A4FFC(0, &qword_1EC884C60, MEMORY[0x1E69D6F38]);
    sub_1D61A4FB8(&qword_1EC884C68, &qword_1EC884C60, v31);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_1D61A4C38@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A12_V8.Bound() + 24);
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

unint64_t sub_1D61A4D4C(uint64_t a1)
{
  *(a1 + 8) = sub_1D61A4D7C();
  result = sub_1D61A4DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61A4D7C()
{
  result = qword_1EC884C00;
  if (!qword_1EC884C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C00);
  }

  return result;
}

unint64_t sub_1D61A4DD0()
{
  result = qword_1EC884C08;
  if (!qword_1EC884C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C08);
  }

  return result;
}

uint64_t type metadata accessor for A12_V8.Bound()
{
  result = qword_1EC884C18;
  if (!qword_1EC884C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61A4E98(uint64_t a1)
{
  result = sub_1D61A562C(&qword_1EC884C28, type metadata accessor for A12_V8.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61A4F00()
{
  result = qword_1EC884C38;
  if (!qword_1EC884C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C38);
  }

  return result;
}

unint64_t sub_1D61A4F54()
{
  result = qword_1EC884C40;
  if (!qword_1EC884C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C40);
  }

  return result;
}

uint64_t sub_1D61A4FB8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D61A4FFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61A4FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V8.Layout;
    v8[1] = &type metadata for A12_V8.Layout.Attributes;
    v8[2] = sub_1D61A4F00();
    v8[3] = sub_1D61A4F54();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D61A5088()
{
  if (!qword_1EC884C70)
  {
    sub_1D61A55C4(255, &qword_1EC884C78, sub_1D61A4F00, &type metadata for A12_V8.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884C70);
    }
  }
}

unint64_t sub_1D61A5174()
{
  result = qword_1EC884C80;
  if (!qword_1EC884C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C80);
  }

  return result;
}

unint64_t sub_1D61A51CC()
{
  result = qword_1EC884C88;
  if (!qword_1EC884C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C88);
  }

  return result;
}

unint64_t sub_1D61A5224()
{
  result = qword_1EC884C90;
  if (!qword_1EC884C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C90);
  }

  return result;
}

unint64_t sub_1D61A527C()
{
  result = qword_1EC884C98;
  if (!qword_1EC884C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884C98);
  }

  return result;
}

uint64_t sub_1D61A52D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D61A55C4(0, &qword_1EC884CA0, sub_1D61A5570, &type metadata for A12_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61A5570();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D61A562C(&qword_1EDF1A740, type metadata accessor for CGRect);
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

unint64_t sub_1D61A5570()
{
  result = qword_1EC884CA8;
  if (!qword_1EC884CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CA8);
  }

  return result;
}

void sub_1D61A55C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D61A562C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61A5688()
{
  result = qword_1EC884CB8;
  if (!qword_1EC884CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CB8);
  }

  return result;
}

unint64_t sub_1D61A56E0()
{
  result = qword_1EC884CC0;
  if (!qword_1EC884CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CC0);
  }

  return result;
}

unint64_t sub_1D61A5738()
{
  result = qword_1EC884CC8;
  if (!qword_1EC884CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CC8);
  }

  return result;
}

uint64_t sub_1D61A578C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1D7264C5C();
  *a3 = result;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t sub_1D61A57CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_1D7264C5C();
  v12 = v11;
  result = (*(*(a4 - 8) + 8))(a1, a4);
  *a5 = v10;
  a5[1] = v12;
  a5[2] = a2;
  a5[3] = a3;
  return result;
}

uint64_t static GroupLayoutBindingKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1D72646CC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t GroupLayoutBindingKey.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_1D72621EC();
  if (!v1)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t GroupLayoutBindingKey.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v1)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61A5A08()
{
  v1 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v1)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61A5A94()
{
  v1 = *(v0 + 24);
  sub_1D72621EC();
  if (!v1)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t sub_1D61A5B10()
{
  v1 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v1)
  {
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t GroupLayoutBindingKey.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](v1, v2);
    MEMORY[0x1DA6F9910](0x3D656D616E202CLL, 0xE700000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    v5 = *v0;
    v6 = v0[1];
  }

  MEMORY[0x1DA6F9910](v5, v6);
  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0x3D657079747BLL;
}

uint64_t FormatPackageDirection.description.getter()
{
  if (*v0 == 4)
  {
    return 0x6C61636974726576;
  }

  MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
  sub_1D7263F9C();
  return 0;
}

uint64_t FormatPackageDirection.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v33 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v12 = sub_1D72646FC();
    v26 = v12;
    v27 = v13;
    v28 = v12 == 0x746E6F7A69726F68 && v13 == 0xEA00000000006C61;
    if (v28 || (sub_1D72646CC() & 1) != 0)
    {

      v29 = 2;
    }

    else
    {
      if ((v26 != 0x6C61636974726576 || v27 != 0xE800000000000000) && (sub_1D72646CC() & 1) == 0)
      {
        v11 = a2;
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v31 = v26;
        v31[1] = v27;
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = 0x7000000000000000;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_4;
      }

      v29 = 4;
    }

    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_24;
  }

  v11 = a2;
LABEL_4:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  a2 = v11;
  v16 = v7;
  v17 = v33;
  if (v15)
  {
    v18 = sub_1D726433C();
    v19 = (v18 + 40);
    v20 = *(v18 + 16) + 1;
    while (--v20)
    {
      v21 = v19 + 2;
      v22 = *v19;
      v19 += 2;
      if (v22 >= 4)
      {
        v23 = *(v21 - 3);

        sub_1D5E2D970();
        v24 = swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v22;
        *(v25 + 16) = &unk_1F51121F8;
        *(v25 + 24) = xmmword_1D72874E0;
        swift_willThrow();

        (*(v16 + 8))(v10, v17);
        sub_1D61E4FBC(a1, v24);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }

  sub_1D61A6FD4();
  v34 = 0uLL;
  sub_1D726431C();
  if (v36)
  {
    (*(v16 + 8))(v10, v17);

    v29 = 4;
  }

  else
  {
    v34 = xmmword_1D7279980;
    sub_1D61A7028();
    sub_1D726427C();
    (*(v16 + 8))(v10, v17);

    if (v36 == 4)
    {
      v29 = 2;
    }

    else
    {
      v29 = v36;
    }
  }

LABEL_24:
  *a2 = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPackageDirection.encode(to:)(void *a1)
{
  sub_1D5D30DC4();
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v62 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v65 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v63 = v59 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v61 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v59 - v20;
  LODWORD(v67) = *v1;
  v23 = a1[3];
  v22 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = v68;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v23, v22);
  if (v29)
  {
    v30 = type metadata accessor for FormatVersionRequirement;
    v31 = v21;
    return sub_1D5D2CF28(v31, v30);
  }

  v59[1] = v28;
  sub_1D5D2CF28(v21, type metadata accessor for FormatVersionRequirement);
  v33 = v66;
  v34 = v66[3];
  *&v68 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v34);
  if (v67 == 4)
  {
    v36 = v62;
    v27(v62, v25, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v34, v68);
    sub_1D5D2CF28(v36, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_1D7264B3C();
    v71 = 1;
  }

  else
  {
    if (v67 != 2)
    {
      sub_1D5C30408();
      v37 = v64;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v38, v34, &type metadata for FormatVersions.CrystalGlow, v68, &off_1F51F6B38, v64);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      v40 = v63;
      v27(v63, v39, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D641DA48(0, v40);
      sub_1D5D2CF28(v40, type metadata accessor for FormatVersionRequirement);
      v27(v65, v39, v24);
      swift_storeEnumTagMultiPayload();
      v71 = v67;
      v68 = xmmword_1D7279980;
      v69 = xmmword_1D7279980;
      v41 = v60;
      v42 = (v37 + *(v60 + 44));
      v44 = *v42;
      v43 = v42[1];
      v45 = swift_allocObject();
      v67 = v59;
      *(v45 + 16) = v68;
      *(v45 + 32) = v44;
      *(v45 + 40) = v43;
      MEMORY[0x1EEE9AC00](v45, v46);
      v59[-4] = sub_1D5B4AA6C;
      v59[-3] = 0;
      v59[-2] = sub_1D61A739C;
      v59[-1] = v47;
      v48 = swift_allocObject();
      *(v48 + 16) = v68;
      *(v48 + 32) = v44;
      *(v48 + 40) = v43;
      sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
      v50 = v49;
      sub_1D5D30E44();
      swift_retain_n();
      v66 = v50;
      v51 = sub_1D72647CC();
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v68;
      v53 = __swift_project_boxed_opaque_existential_1((v37 + *(v41 + 36)), *(v37 + *(v41 + 36) + 24));
      MEMORY[0x1EEE9AC00](v53, v54);
      v59[-2] = sub_1D61A70E0;
      v59[-1] = v52;
      MEMORY[0x1EEE9AC00](v55, v56);
      v59[-4] = sub_1D60565EC;
      v59[-3] = &v59[-6];
      v57 = v65;
      v59[-2] = sub_1D61A70D0;
      v59[-1] = v48;
      sub_1D5D2BC70(v57, sub_1D60566B0, v58, sub_1D60565EC, &v59[-6]);

      sub_1D61A70EC();
      sub_1D72647EC();
      sub_1D5D2CF28(v57, type metadata accessor for FormatVersionRequirement);

      v30 = sub_1D5D30DC4;
      v31 = v37;
      return sub_1D5D2CF28(v31, v30);
    }

    v35 = v61;
    v27(v61, v25, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v35, sub_1D5B4AA6C, 0, v34, v68);
    sub_1D5D2CF28(v35, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_1D7264B3C();
    v71 = 0;
  }

  __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
  sub_1D61A707C();
  sub_1D726476C();
  return __swift_destroy_boxed_opaque_existential_1(&v69);
}

uint64_t sub_1D61A6A8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D61A6B38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61A6BC0()
{
  sub_1D72621EC();
}

uint64_t sub_1D61A6C34()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61A6CB8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D61A6D18(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL static FormatPackageDirection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1D61A6E48()
{
  if (*v0 == 4)
  {
    return 0x6C61636974726576;
  }

  MEMORY[0x1DA6F9910](0x746E6F7A69726F68, 0xEB000000002D6C61);
  sub_1D7263F9C();
  return 0;
}

uint64_t sub_1D61A6F40(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D5D290FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatCodingKeys;
  *(inited + 64) = sub_1D5C30408();
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_1D5C30618(v3, v4);

  sub_1D5D291B8(inited);
  return a1;
}

unint64_t sub_1D61A6FD4()
{
  result = qword_1EDF0DA80;
  if (!qword_1EDF0DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA80);
  }

  return result;
}

unint64_t sub_1D61A7028()
{
  result = qword_1EDF081A8;
  if (!qword_1EDF081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081A8);
  }

  return result;
}

unint64_t sub_1D61A707C()
{
  result = qword_1EDF0DA90;
  if (!qword_1EDF0DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA90);
  }

  return result;
}

unint64_t sub_1D61A70EC()
{
  result = qword_1EDF081B0;
  if (!qword_1EDF081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081B0);
  }

  return result;
}

unint64_t sub_1D61A7140(void *a1)
{
  a1[1] = sub_1D5C2B7DC();
  a1[2] = sub_1D61A7178();
  result = sub_1D61A71CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61A7178()
{
  result = qword_1EDF0DA78;
  if (!qword_1EDF0DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA78);
  }

  return result;
}

unint64_t sub_1D61A71CC()
{
  result = qword_1EC884CD0;
  if (!qword_1EC884CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatPackageDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
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

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D61A72BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D61A72D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_1D61A72F4()
{
  result = qword_1EC884CD8;
  if (!qword_1EC884CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CD8);
  }

  return result;
}

unint64_t sub_1D61A7348()
{
  result = qword_1EDF0DA88;
  if (!qword_1EDF0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA88);
  }

  return result;
}

uint64_t sub_1D61A73A0()
{
  v1 = *(v0 + 48);
  type metadata accessor for FormatVariableCollection();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v3 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v2);
  type metadata accessor for FormatContextLayoutOptions();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(result + 32) = 0x3FF0000000000000;
  *(result + 40) = v3;
  v5 = MEMORY[0x1E69E7CD0];
  *(result + 48) = 0;
  *(result + 56) = v5;
  return result;
}

uint64_t sub_1D61A7448()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D61A74C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatOption();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D61A754C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D61A7594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D61A7618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v49[6] = *(a1 + 96);
  v49[7] = v3;
  v49[8] = *(a1 + 128);
  v50 = *(a1 + 144);
  v4 = *(a1 + 48);
  v49[2] = *(a1 + 32);
  v49[3] = v4;
  v5 = *(a1 + 80);
  v49[4] = *(a1 + 64);
  v49[5] = v5;
  v6 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v6;
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279960;
  v37 = a2;
  v8 = sub_1D5ECF488(sub_1D61A79E4, v36, &unk_1F50F7668);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v8, v39);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 48) = v40;
  v10 = v39[1];
  *(v9 + 16) = v39[0];
  *(v9 + 32) = v10;
  v35 = a2;
  v11 = sub_1D5ECF488(sub_1D61A7A04, v34, &unk_1F50F39C8);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v11, v41);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 72) = v12;
  *(v12 + 48) = v42;
  v13 = v41[1];
  *(v12 + 16) = v41[0];
  *(v12 + 32) = v13;
  v32 = a2;
  v33 = v49;
  v14 = sub_1D5FBCF3C(sub_1D61A7A24, v31, &unk_1F50F76C0);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v14, v43);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v15 = swift_allocObject();
  *(inited + 112) = v15;
  *(v15 + 48) = v44;
  v16 = v43[1];
  *(v15 + 16) = v43[0];
  *(v15 + 32) = v16;
  v30 = a2;
  v17 = sub_1D7199984(sub_1D61A7A40, v29, &unk_1F50F7690);
  v18 = sub_1D5F62998(v17);

  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v18, v45);

  *(inited + 176) = &type metadata for FormatInspectionGroup;
  *(inited + 184) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 152) = v19;
  *(v19 + 48) = v46;
  v20 = v45[1];
  *(v19 + 16) = v45[0];
  *(v19 + 32) = v20;
  v28[2] = a2;
  v21 = sub_1D7199984(sub_1D61A7A5C, v28, &unk_1F50F76E8);
  v22 = sub_1D5F62998(v21);

  sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v22, v47);

  *(inited + 216) = &type metadata for FormatInspectionGroup;
  *(inited + 224) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(inited + 192) = v23;
  *(v23 + 48) = v48;
  v24 = v47[1];
  *(v23 + 16) = v47[0];
  *(v23 + 32) = v24;
  v38 = inited;

  sub_1D6986168(v25);
  v26 = sub_1D7073500(v38);

  return v26;
}

uint64_t FeedNativeAdInsertion.nativeAd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7260E3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedNativeAdInsertion.sectionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedNativeAdInsertion() + 20));

  return v1;
}

uint64_t type metadata accessor for FeedNativeAdInsertion()
{
  result = qword_1EDF374E8;
  if (!qword_1EDF374E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedNativeAdInsertion.replacing(sectionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D7260E3C();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = (a3 + *(type metadata accessor for FeedNativeAdInsertion() + 20));
  *v8 = a1;
  v8[1] = a2;
}

uint64_t FeedNativeAdManager.PlacementPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedNativeAdManager.__allocating_init(nativeAdService:placementPolicy:)(__int128 *a1, _BYTE *a2)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = swift_allocObject();
  LOBYTE(a2) = *a2;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v7 = sub_1D725A7AC();
  v8 = MEMORY[0x1E69E7CD0];
  *(v6 + 72) = v7;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0;
  sub_1D5B63F14(a1, v6 + 16);
  *(v6 + 56) = a2;
  return v6;
}

uint64_t FeedNativeAdManager.init(nativeAdService:placementPolicy:)(__int128 *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = *a2;
  *(v3 + 64) = MEMORY[0x1E69E7CC0];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v9 = sub_1D725A7AC();
  v10 = MEMORY[0x1E69E7CD0];
  *(v3 + 72) = v9;
  *(v3 + 80) = v10;
  *(v3 + 88) = 0;
  sub_1D5B63F14(a1, v3 + 16);
  *(v3 + 56) = v8;
  return v3;
}

Swift::Bool __swiftcall FeedNativeAdManager.shouldFetchNativeAd(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 80);

  v5 = sub_1D5BE240C(countAndFlagsBits, object, v4);

  result = *(v1 + 56);
  if (result || *(v1 + 88))
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else if ((v5 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t FeedNativeAdManager.fetchNativeAd(for:sectionIdentifier:group:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  sub_1D725A76C();
  swift_beginAccess();
  v9 = *(v5 + 80);

  v10 = sub_1D5BE240C(a3, a4, v9);

  if (*(v6 + 56))
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      swift_beginAccess();

      sub_1D5B860D0(&v19, a3, a4);
      swift_endAccess();

      *(v6 + 88) = 1;
      sub_1D725A77C();
      swift_allocObject();
      v11 = swift_weakInit();
      MEMORY[0x1EEE9AC00](v11, v12);
      sub_1D7260E3C();
      sub_1D725BDCC();

      sub_1D5B5DA7C();
      v13 = sub_1D726308C();
      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = a5;
      type metadata accessor for FeedNativeAdInsertion();

      v15 = a5;
      v16 = sub_1D725BAAC();

      return v16;
    }
  }

  else if (!((*(v6 + 88) != 0) | v10 & 1))
  {
    goto LABEL_3;
  }

  sub_1D725A77C();
  sub_1D61A81E8();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

unint64_t sub_1D61A81E8()
{
  result = qword_1EDF38048;
  if (!qword_1EDF38048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF38048);
  }

  return result;
}

uint64_t sub_1D61A823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong[5];
    v11 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v10);
    v12 = (*(v11 + 8))(a2, a3, a4, a5, v10, v11);
  }

  else
  {
    v12 = sub_1D725AA6C();
    sub_1D5C3CFB4(&unk_1EC896020, MEMORY[0x1E69D64B0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E69D64A0], v12);
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1D61A83A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1D7260E3C();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  v11 = (a5 + *(type metadata accessor for FeedNativeAdInsertion() + 20));
  *v11 = a2;
  v11[1] = a3;

  return sub_1D61A8464(a5, a4);
}

uint64_t sub_1D61A8464(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v24 = a2;
  v2 = sub_1D7261ABC();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7261B2C();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedNativeAdInsertion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  sub_1D5B5DA7C();
  v14 = sub_1D726308C();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D61A9214(v21, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1D61A9278(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1D61A92DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_29;
  v18 = _Block_copy(aBlock);

  sub_1D7261AEC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D5C3CFB4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D61A9340(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  sub_1D7263B6C();
  sub_1D726302C();
  _Block_release(v18);

  (*(v23 + 8))(v5, v2);
  (*(v6 + 8))(v9, v22);
}

Swift::Void __swiftcall FeedNativeAdManager.nativeAdInsertionDidComplete(success:)(Swift::Bool success)
{
  sub_1D725A76C();
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 88) = v3;
  sub_1D725A77C();
}

uint64_t sub_1D61A8854(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 64);
    v14 = MEMORY[0x1E69E7CC0];
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v6)
    {
      v13 = a2;
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v7, v5);
          a2 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v8 = v14;
            a2 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v6 = sub_1D7263BFC();
            goto LABEL_4;
          }

          a2 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
        }

        else
        {
        }

        ++v7;
        if (a2 == v6)
        {
          goto LABEL_16;
        }
      }
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

    *(v4 + 64) = v8;

    v10 = *(v4 + 64);
    MEMORY[0x1EEE9AC00](v9, v11);
    v12[2] = a2;

    sub_1D6DBDDD8(sub_1D61A93A4, v12, v10);
  }

  return result;
}

uint64_t FeedNativeAdManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t FeedNativeAdManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D61A8B30(char a1)
{
  v3 = *v1;
  sub_1D725A76C();
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 88) = v4;
  return sub_1D725A77C();
}

uint64_t sub_1D61A8B7C()
{

  sub_1D5B87E10(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t DisabledFeedNativeAdManager.fetchNativeAd(for:sectionIdentifier:group:build:)()
{
  sub_1D61A8EC4();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t DisabledFeedNativeAdManager.onFetch(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisposableObserver();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();
  a1[3] = v2;
  result = sub_1D5C3CFB4(qword_1EDF2E610, type metadata accessor for DisposableObserver);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1D61A8D44()
{
  sub_1D61A8EC4();
  swift_allocError();
  sub_1D61A9340(0, &qword_1EDF3B9A8, type metadata accessor for FeedNativeAdInsertion, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D61A8DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisposableObserver();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();
  a1[3] = v2;
  result = sub_1D5C3CFB4(qword_1EDF2E610, type metadata accessor for DisposableObserver);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1D61A8EC4()
{
  result = qword_1EC884CE0;
  if (!qword_1EC884CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CE0);
  }

  return result;
}

unint64_t sub_1D61A8F1C()
{
  result = qword_1EC884CE8;
  if (!qword_1EC884CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CE8);
  }

  return result;
}

uint64_t sub_1D61A8FDC()
{
  result = sub_1D7260E3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D61A9110()
{
  result = qword_1EC884CF0;
  if (!qword_1EC884CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CF0);
  }

  return result;
}

unint64_t sub_1D61A9168()
{
  result = qword_1EC884CF8;
  if (!qword_1EC884CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884CF8);
  }

  return result;
}

unint64_t sub_1D61A91C0()
{
  result = qword_1EC884D00;
  if (!qword_1EC884D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D00);
  }

  return result;
}

uint64_t sub_1D61A9214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedNativeAdInsertion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61A9278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedNativeAdInsertion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61A92DC()
{
  v1 = *(type metadata accessor for FeedNativeAdInsertion() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D61A8854(v2, v3);
}

void sub_1D61A9340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D61A93A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(*a1 + 16);

  v3(v2);
}

uint64_t sub_1D61A9490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = MEMORY[0x1E697C780];
  v36 = a3;
  v34 = MEMORY[0x1E69E6720];
  sub_1D61AB614(0, &qword_1EC884D08, MEMORY[0x1E697C780], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_1D7260FEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A9A04();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61A9CBC();
  v33 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = v32;
  sub_1D61AC220(0, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
  sub_1D61A9B9C();
  sub_1D726168C();
  sub_1D7260FDC();
  v24 = sub_1D61ABEB4(&qword_1EC884D40, sub_1D61A9A04);
  sub_1D726183C();
  (*(v9 + 8))(v12, v8);
  (*(v15 + 8))(v18, v14);
  sub_1D72613DC();
  v25 = sub_1D72613EC();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  v26 = sub_1D72615FC();
  v39 = v14;
  v40 = v8;
  v41 = v24;
  v42 = MEMORY[0x1E697C0D8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v26;
  v29 = v33;
  MEMORY[0x1DA6F8EA0](v7, v28, v33, OpaqueTypeConformance2);
  sub_1D61AC074(v7, &qword_1EC884D08, v35, v34);
  return (*(v20 + 8))(v23, v29);
}

void sub_1D61A98A0(void *a1@<X1>, uint64_t a2@<X8>)
{

  v4 = a1;
  sub_1D72618EC();
  v7 = v4;
  sub_1D713197C(v4);
  sub_1D7260EDC();
  sub_1D61A9B48();
  sub_1D72617DC();

  sub_1D726185C();
  v5 = sub_1D726199C();
  sub_1D61AC220(0, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
  *(a2 + *(v6 + 36)) = v5;
}

void sub_1D61A9A04()
{
  if (!qword_1EC884D10)
  {
    sub_1D61AC220(255, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
    sub_1D61A9B9C();
    v0 = sub_1D726169C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D10);
    }
  }
}

void sub_1D61A9AC8()
{
  if (!qword_1EC884D20)
  {
    sub_1D61A9B48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884D20);
    }
  }
}

unint64_t sub_1D61A9B48()
{
  result = qword_1EC884D28;
  if (!qword_1EC884D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D28);
  }

  return result;
}

unint64_t sub_1D61A9B9C()
{
  result = qword_1EC884D30;
  if (!qword_1EC884D30)
  {
    sub_1D61AC220(255, &qword_1EC884D18, sub_1D61A9AC8, sub_1D5F260A0, MEMORY[0x1E697E830]);
    sub_1D61A9B48();
    swift_getOpaqueTypeConformance2();
    sub_1D61ABEB4(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884D30);
  }

  return result;
}

void sub_1D61A9CBC()
{
  if (!qword_1EC884D38)
  {
    sub_1D61A9A04();
    sub_1D7260FEC();
    sub_1D61ABEB4(&qword_1EC884D40, sub_1D61A9A04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC884D38);
    }
  }
}

uint64_t sub_1D61A9DC4@<X0>(uint64_t a1@<X8>)
{
  sub_1D61AB3F8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61AC220(0, &qword_1EC884DD0, sub_1D61AB484, sub_1D61AB3F8, MEMORY[0x1E697F948]);
  v41 = v9;
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v40 = v35 - v12;
  v13 = *(v1 + 8);
  v14 = [v13 subviews];
  sub_1D5E2B010();
  v15 = sub_1D726267C();

  if (v15 >> 62)
  {
    v16 = sub_1D7263BFC();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    *v62 = *(v1 + 24);
    v43[0] = *(v1 + 24);
    v17 = MEMORY[0x1E6981790];
    sub_1D61ABBE0(0, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v39 = a1;
    sub_1D726191C();
    v37 = *(&v65 + 1);
    v38 = v65;
    v36 = v66;
    *&v43[0] = *(v1 + 16);
    v18 = swift_allocObject();
    v35[1] = v35;
    v19 = *(v1 + 16);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v1 + 32);
    MEMORY[0x1EEE9AC00](v18, v20);

    v21 = v13;
    sub_1D61ABC30(v43, &v65, &qword_1EC884DE0, &type metadata for FormatInspection, MEMORY[0x1E69E6720]);
    sub_1D61ABC30(v62, &v65, &qword_1EC884DD8, MEMORY[0x1E69E6370], v17);
    sub_1D61AB484(0);
    sub_1D61AB834();
    sub_1D61ABA78();
    sub_1D61ABB58();
    sub_1D7260FFC();
    (*(v5 + 16))(v40, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8);
    sub_1D726135C();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v23 = *(v1 + 16);
    if (v23)
    {
      v39 = a1;
      v24 = *v1;
      v62[0] = 0;

      sub_1D72618EC();
      v25 = v65;
      v38 = *(&v65 + 1);

      v26 = sub_1D72611CC();
      LOBYTE(v43[0]) = 1;
      sub_1D61AACB8(v1, v13, &v65);
      v50 = v69;
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v46 = v65;
      v47 = v66;
      v48 = v67;
      v49 = v68;
      v54 = v65;
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v59 = v70;
      v60 = v71;
      v61 = v72;
      sub_1D61ABCA0(&v46, v62);
      sub_1D61AC074(&v54, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
      *(&v42[4] + 7) = v50;
      *(&v42[5] + 7) = v51;
      *(&v42[6] + 7) = v52;
      *(&v42[7] + 7) = v53;
      *(v42 + 7) = v46;
      *(&v42[1] + 7) = v47;
      *(&v42[2] + 7) = v48;
      *(&v42[3] + 7) = v49;
      *&v62[49] = v42[0];
      *&v62[65] = v42[1];
      *&v62[81] = v42[2];
      *&v62[160] = *(&v42[6] + 15);
      *&v62[145] = v42[6];
      *&v62[129] = v42[5];
      *&v62[113] = v42[4];
      *v62 = v24;
      strcpy(&v62[8], "Accessibility");
      *&v62[22] = -4864;
      *&v62[24] = v23;
      *&v62[32] = v26;
      *&v62[40] = 0;
      v62[48] = v43[0];
      *&v62[97] = v42[3];
      LOBYTE(v63) = v25;
      *(&v63 + 1) = v38;
      sub_1D61ABD40(v62);
    }

    else
    {
      v27 = sub_1D72611CC();
      LOBYTE(v43[0]) = 1;
      sub_1D61AACB8(v1, v13, &v65);
      v50 = v69;
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v46 = v65;
      v47 = v66;
      v48 = v67;
      v49 = v68;
      v54 = v65;
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v59 = v70;
      v60 = v71;
      v61 = v72;
      sub_1D61ABCA0(&v46, v62);
      sub_1D61AC074(&v54, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
      *(&v45[4] + 7) = v50;
      *(&v45[5] + 7) = v51;
      *(&v45[6] + 7) = v52;
      *(&v45[7] + 7) = v53;
      *(v45 + 7) = v46;
      *(&v45[1] + 7) = v47;
      *(&v45[2] + 7) = v48;
      *(&v45[3] + 7) = v49;
      *&v62[17] = v45[0];
      *&v62[33] = v45[1];
      *&v62[49] = v45[2];
      *&v62[128] = *(&v45[6] + 15);
      *&v62[113] = v45[6];
      *&v62[97] = v45[5];
      *&v62[81] = v45[4];
      *v62 = v27;
      *&v62[8] = 0;
      v62[16] = v43[0];
      *&v62[65] = v45[3];
      sub_1D61ABD34(v62);
    }

    v43[10] = *&v62[160];
    v43[11] = v63;
    v44 = v64;
    v43[6] = *&v62[96];
    v43[7] = *&v62[112];
    v43[8] = *&v62[128];
    v43[9] = *&v62[144];
    v43[2] = *&v62[32];
    v43[3] = *&v62[48];
    v43[4] = *&v62[64];
    v43[5] = *&v62[80];
    v43[0] = *v62;
    v43[1] = *&v62[16];
    sub_1D61AB4CC();
    sub_1D61AB560();
    sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC);
    sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560);
    sub_1D726135C();
    v28 = v76;
    v29 = v40;
    *(v40 + 10) = v75;
    *(v29 + 11) = v28;
    v29[192] = v77;
    v30 = v72;
    *(v29 + 6) = v71;
    *(v29 + 7) = v30;
    v31 = v74;
    *(v29 + 8) = v73;
    *(v29 + 9) = v31;
    v32 = v68;
    *(v29 + 2) = v67;
    *(v29 + 3) = v32;
    v33 = v70;
    *(v29 + 4) = v69;
    *(v29 + 5) = v33;
    v34 = v66;
    *v29 = v65;
    *(v29 + 1) = v34;
    swift_storeEnumTagMultiPayload();
    sub_1D61AB484(0);
    sub_1D61ABA78();
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8);
    return sub_1D726135C();
  }
}

uint64_t sub_1D61AA630(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [v2 subviews];
  sub_1D5E2B010();
  v4 = sub_1D726267C();

  v11 = v4;
  swift_getKeyPath();
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D61AC0D0;
  *(v7 + 24) = v5;

  v8 = v2;
  sub_1D61ABC30(&v13, v10, &qword_1EC884DE0, &type metadata for FormatInspection, MEMORY[0x1E69E6720]);
  sub_1D61ABC30(&v12, v10, &qword_1EC884DD8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1D61AB8C0();
  sub_1D61AB9E4();
  sub_1D61A9B48();
  return sub_1D72619DC();
}

id sub_1D61AA7EC@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;

  sub_1D72618EC();
  v8 = a1;
  v6 = sub_1D713197C(a1);
  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;

  return v8;
}

__n128 sub_1D61AA88C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = *a1;
    LOBYTE(v37) = 0;

    sub_1D72618EC();
    v6 = v47;
    v7 = *(&v47 + 1);
    v8 = a1[1];

    v9 = sub_1D72611CC();
    sub_1D61AACB8(a1, v8, &v47);
    v25 = v51;
    v26 = v52;
    v27 = v53;
    v28 = v54;
    v21 = v47;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v36 = v54;
    sub_1D61ABCA0(&v21, &v37);
    sub_1D61AC074(&v29, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    *&v19[71] = v25;
    *&v19[87] = v26;
    *&v19[103] = v27;
    *&v19[119] = v28;
    *&v19[7] = v21;
    *&v19[23] = v22;
    *&v19[39] = v23;
    *&v19[55] = v24;
    v39 = *v19;
    v40 = *&v19[16];
    v41 = *&v19[32];
    *&v44[15] = *&v19[111];
    *v44 = *&v19[96];
    *&v43[16] = *&v19[80];
    *v43 = *&v19[64];
    *&v37 = v4;
    *(&v37 + 1) = 0x6269737365636341;
    *v38 = 0xED00007974696C69;
    *&v38[8] = v3;
    *&v38[16] = v9;
    v38[32] = 1;
    v42 = *&v19[48];
    v45 = v6;
    v46 = v7;
    sub_1D61ABD40(&v37);
  }

  else
  {
    v10 = a1[1];
    v12 = sub_1D72611CC();
    sub_1D61AACB8(a1, v10, &v47);
    v25 = v51;
    v26 = v52;
    v27 = v53;
    v28 = v54;
    v21 = v47;
    v22 = v48;
    v23 = v49;
    v24 = v50;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v32 = v50;
    v33 = v51;
    v34 = v52;
    v35 = v53;
    v36 = v54;
    sub_1D61ABCA0(&v21, &v37);
    sub_1D61AC074(&v29, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27;
    *&v20[119] = v28;
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *&v20[55] = v24;
    *&v38[1] = *v20;
    *&v38[17] = *&v20[16];
    v39 = *&v20[32];
    *&v43[15] = *&v20[111];
    *v43 = *&v20[96];
    v42 = *&v20[80];
    v41 = *&v20[64];
    v37 = v12;
    v38[0] = 1;
    v40 = *&v20[48];
    sub_1D61ABD34(&v37);
  }

  sub_1D61AB4CC();
  sub_1D61AB560();
  sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC);
  sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560);
  sub_1D726135C();
  v13 = v58;
  *(a2 + 160) = v57;
  *(a2 + 176) = v13;
  *(a2 + 192) = v59;
  v14 = v54;
  *(a2 + 96) = v53;
  *(a2 + 112) = v14;
  v15 = v56;
  *(a2 + 128) = v55;
  *(a2 + 144) = v15;
  v16 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v16;
  v17 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v17;
  result = v48;
  *a2 = v47;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D61AACB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_1D726184C();
    *&v19 = swift_getKeyPath();
    *(&v19 + 1) = v5;
    *v20 = 0;
    v20[8] = 0;
  }

  else
  {
    v6 = sub_1D72618CC();
    v7 = sub_1D726188C();
    *&v19 = v6;
    *(&v19 + 1) = swift_getKeyPath();
    *v20 = v7;
    v20[8] = 1;
  }

  sub_1D61AB770(0, &qword_1EC87E060);
  sub_1D61AB770(0, &qword_1EC87E040);
  sub_1D61ABDA0();
  sub_1D61ABEFC();
  sub_1D726135C();
  v8 = v21;
  v9 = v22;
  v10 = *v23;
  v11 = v23[8];
  sub_1D61ABFBC(v21, v22, *v23, v23[8]);
  v12 = sub_1D726125C();
  LOBYTE(v21) = 1;
  sub_1D61AAF60(a2, v17);
  *&v16[55] = v18;
  *&v16[39] = v17[2];
  *&v16[23] = v17[1];
  *&v16[7] = v17[0];
  v13 = v21;
  v19 = v12;
  v20[0] = v21;
  *&v20[1] = *v16;
  *&v20[64] = *(&v18 + 1);
  *&v20[49] = *&v16[48];
  *&v20[33] = *&v16[32];
  *&v20[17] = *&v16[16];
  sub_1D61ABFBC(v8, v9, v10, v11);
  sub_1D5F261C8(&v19, &v21);
  sub_1D61AC010(v8, v9, v10, v11);
  *&v15[23] = *v20;
  *&v15[39] = *&v20[16];
  *&v15[87] = *&v20[64];
  *&v15[71] = *&v20[48];
  *&v15[55] = *&v20[32];
  *&v15[7] = v19;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 57) = *&v15[32];
  *(a3 + 73) = *&v15[48];
  *(a3 + 89) = *&v15[64];
  *(a3 + 104) = *&v15[79];
  *(a3 + 25) = *v15;
  *(a3 + 41) = *&v15[16];
  v21 = v12;
  v22 = 0;
  v23[0] = v13;
  *&v23[1] = *v16;
  *&v26[15] = *&v16[63];
  *v26 = *&v16[48];
  v25 = *&v16[32];
  v24 = *&v16[16];
  sub_1D5F2622C(&v21);
  return sub_1D61AC010(v8, v9, v10, v11);
}

uint64_t sub_1D61AAF60@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = MEMORY[0x1E6980E30];
  v3 = MEMORY[0x1E69E6720];
  v58 = MEMORY[0x1E69E6720];
  v59 = MEMORY[0x1E6980E30];
  sub_1D61AB614(0, &qword_1EC881178, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v56 - v6;
  swift_getObjectType();
  v68 = sub_1D7264C5C();
  v69 = v8;
  v61 = sub_1D5BF4D9C();
  v9 = sub_1D726171C();
  v11 = v10;
  v13 = v12;
  v57 = sub_1D726163C();
  v14 = *(v57 - 8);
  v56 = *(v14 + 56);
  v60 = v14 + 56;
  v56(v7, 1, 1, v57);
  sub_1D726167C();
  sub_1D61AC074(v7, &qword_1EC881178, v2, v3);
  v15 = sub_1D72616DC();
  v17 = v16;
  LOBYTE(v3) = v18;

  sub_1D5F26348(v9, v11, v13 & 1);

  v19 = sub_1D72616AC();
  v21 = v20;
  v23 = v22;
  sub_1D5F26348(v15, v17, v3 & 1);

  sub_1D726187C();
  v24 = sub_1D72616BC();
  v63 = v25;
  v64 = v24;
  v27 = v26;
  v62 = v28;

  sub_1D5F26348(v19, v21, v23 & 1);

  v29 = [v65 description];
  v30 = sub_1D726207C();
  v32 = v31;

  v68 = v30;
  v69 = v32;
  v33 = sub_1D726171C();
  v35 = v34;
  LOBYTE(v32) = v36;
  v56(v7, 1, 1, v57);
  sub_1D726167C();
  sub_1D61AC074(v7, &qword_1EC881178, v59, v58);
  v37 = sub_1D72616DC();
  v39 = v38;
  LOBYTE(v17) = v40;

  sub_1D5F26348(v33, v35, v32 & 1);

  v41 = sub_1D72616AC();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_1D5F26348(v37, v39, v17 & 1);

  sub_1D726188C();
  v45 = sub_1D72616BC();
  v47 = v46;
  LOBYTE(v37) = v48;
  v50 = v49;

  sub_1D5F26348(v41, v43, v32 & 1);

  v51 = v62 & 1;
  v67 = v62 & 1;
  LOBYTE(v68) = v62 & 1;
  v70 = v37 & 1;
  v52 = v66;
  v53 = v63;
  v54 = v64;
  *v66 = v64;
  v52[1] = v27;
  *(v52 + 16) = v51;
  v52[3] = v53;
  v52[4] = v45;
  v52[5] = v47;
  *(v52 + 48) = v37 & 1;
  v52[7] = v50;
  sub_1D5F26358(v54, v27, v51);

  sub_1D5F26358(v45, v47, v37 & 1);

  sub_1D5F26348(v45, v47, v37 & 1);

  sub_1D5F26348(v54, v27, v67);
}

void sub_1D61AB3F8()
{
  if (!qword_1EC884D48)
  {
    sub_1D61AB484(255);
    sub_1D61AB834();
    sub_1D61ABA78();
    sub_1D61ABB58();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D48);
    }
  }
}

void sub_1D61AB4CC()
{
  if (!qword_1EC884D58)
  {
    sub_1D61AB560();
    sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560);
    v0 = type metadata accessor for DebugFormatInspectorPopoverView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D58);
    }
  }
}

void sub_1D61AB560()
{
  if (!qword_1EC884D60)
  {
    sub_1D61AB614(255, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
    sub_1D61AB7D0(&qword_1EC884D80, &qword_1EC884D68, sub_1D61AB678);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D60);
    }
  }
}

void sub_1D61AB614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D61AB678()
{
  if (!qword_1EC884D70)
  {
    sub_1D61AB6E8();
    sub_1D5F258D0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC884D70);
    }
  }
}

void sub_1D61AB6E8()
{
  if (!qword_1EC884D78)
  {
    sub_1D61AB770(255, &qword_1EC87E060);
    sub_1D61AB770(255, &qword_1EC87E040);
    v0 = sub_1D726136C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D78);
    }
  }
}

void sub_1D61AB770(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D5DEF100();
    v3 = sub_1D726101C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D61AB7D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D61AB614(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61AB834()
{
  if (!qword_1EC884D90)
  {
    sub_1D61AB8C0();
    sub_1D61AB9E4();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D90);
    }
  }
}

void sub_1D61AB8C0()
{
  if (!qword_1EC884D98)
  {
    sub_1D61AB614(255, &qword_1EDF049A8, sub_1D5E2B010, MEMORY[0x1E69E62F8]);
    sub_1D61AB970(&qword_1EC884DA0);
    v0 = sub_1D72640AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884D98);
    }
  }
}

uint64_t sub_1D61AB970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D61AB614(255, &qword_1EDF049A8, sub_1D5E2B010, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61AB9E4()
{
  result = qword_1EC884DA8;
  if (!qword_1EC884DA8)
  {
    sub_1D61AB8C0();
    sub_1D61AB970(&qword_1EC884DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DA8);
  }

  return result;
}

unint64_t sub_1D61ABA78()
{
  result = qword_1EC884DB8;
  if (!qword_1EC884DB8)
  {
    sub_1D61AB484(255);
    sub_1D61ABEB4(&qword_1EC884DC0, sub_1D61AB4CC);
    sub_1D61ABEB4(&qword_1EC884D88, sub_1D61AB560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DB8);
  }

  return result;
}

unint64_t sub_1D61ABB58()
{
  result = qword_1EC884DC8;
  if (!qword_1EC884DC8)
  {
    sub_1D61AB834();
    sub_1D61A9B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DC8);
  }

  return result;
}

void sub_1D61ABBE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D61ABC30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1D61ABBE0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D61ABCA0(uint64_t a1, uint64_t a2)
{
  sub_1D61AB614(0, &qword_1EC884D68, sub_1D61AB678, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61ABD48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72610CC();
  *a1 = result;
  return result;
}

unint64_t sub_1D61ABDA0()
{
  result = qword_1EC884DF0;
  if (!qword_1EC884DF0)
  {
    sub_1D61AB770(255, &qword_1EC87E060);
    sub_1D61ABE60();
    sub_1D61ABEB4(&qword_1EC884E00, sub_1D5DEF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DF0);
  }

  return result;
}

unint64_t sub_1D61ABE60()
{
  result = qword_1EC884DF8;
  if (!qword_1EC884DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884DF8);
  }

  return result;
}

uint64_t sub_1D61ABEB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61ABEFC()
{
  result = qword_1EC89AF40;
  if (!qword_1EC89AF40)
  {
    sub_1D61AB770(255, &qword_1EC87E040);
    sub_1D61ABEB4(&qword_1EC884E00, sub_1D5DEF100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF40);
  }

  return result;
}

uint64_t sub_1D61ABFBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1D61AC010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D61AC074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D61AB614(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1D61AC0D8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v6, *a1, a1[1]);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1D61AC12C()
{
  result = qword_1EC884E08;
  if (!qword_1EC884E08)
  {
    sub_1D61AC220(255, &unk_1EC884E10, sub_1D61AB484, sub_1D61AB3F8, MEMORY[0x1E697F960]);
    sub_1D61ABA78();
    sub_1D61ABEB4(&qword_1EC884DE8, sub_1D61AB3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E08);
  }

  return result;
}

void sub_1D61AC220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *sub_1D61AC308(void *a1, uint64_t a2)
{
  v3 = v2;
  v116 = *MEMORY[0x1E69E9840];
  v99 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v104 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v103 = v89 - v11;
  v12 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *&v3[v12] = v13;
  v14 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v15 = *(*(v14 - 8) + 56);
  v98 = v12;
  v15(&v3[v12], 0, 1, v14);
  v96 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v101 = v3;
  v97 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v106 = v16;
  inited = swift_initStackObject();
  v108 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v18 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v108;
  *(v19 + 32) = 0x65726F6373;
  *(v19 + 40) = 0xE500000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v18);
  v20 = swift_initStackObject();
  *(v20 + 16) = v108;
  v21 = a1[6];
  *(v20 + 32) = a1[5];
  *(v20 + 40) = v21;

  v22 = v107;
  v23 = sub_1D61ACEC8(a2);
  v100 = v22;
  if (v22)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
  }

  else
  {
    v90 = v23;
    v91 = v20;
    v92 = v20 + 32;
    v93 = v19;
    v94 = v19 + 32;
    v107 = inited;
    v102 = inited + 32;

    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1D7274590;
    *(v24 + 32) = 0x6E6F6E6143636D75;
    v89[1] = v24 + 32;
    *(v24 + 40) = 0xEE0064496C616369;
    v25 = a1[6];
    v26 = MEMORY[0x1E69E6158];
    *(v24 + 48) = a1[5];
    *(v24 + 56) = v25;
    *(v24 + 72) = v26;
    *(v24 + 80) = 0x746E657665;
    *(v24 + 88) = 0xE500000000000000;
    sub_1D61B8E1C(0, &qword_1EDF05620, MEMORY[0x1E69E6720]);
    *(v24 + 120) = v27;
    if (a1[7])
    {
      ObjectType = swift_getObjectType();

      v29 = sub_1D61ADB2C(ObjectType);
    }

    else
    {

      v29 = 0;
    }

    v30 = MEMORY[0x1E69E7CA0];
    *(v24 + 96) = v29;
    *(v24 + 128) = 0xD000000000000010;
    *(v24 + 136) = 0x80000001D73CD450;
    v89[0] = v24;
    v95 = a1;
    v31 = a1[4];
    *&v108 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

    v33 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v32);
    v34 = v31;
    v35 = v33;
    if (v31 >> 62)
    {
      v88 = sub_1D7263BFC();
      v34 = v31;
      v36 = v88;
    }

    else
    {
      v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v102;
    v38 = v107;
    if (v36)
    {
      if (v36 < 1)
      {
        __break(1u);
      }

      v39 = 0;
      v105 = v34 & 0xC000000000000001;
      v106 = v34;
      do
      {
        if (v105)
        {
          v51 = MEMORY[0x1DA6FB460](v39);
        }

        else
        {
          v51 = *(v34 + 8 * v39 + 32);
          swift_unknownObjectRetain();
        }

        v52 = swift_getObjectType();
        v53 = [v51 UMCCanonicalID];
        if (v53)
        {
          v40 = v53;
          v41 = sub_1D726207C();
          v43 = v42;

          v44 = type metadata accessor for SportsRoster();
          v45 = v103;
          (*(*(v44 - 8) + 56))(v103, 1, 1, v44);

          v46 = sub_1D61B051C(v45, v35, v52);

          sub_1D61B8FBC(v45, &qword_1EDF11F60, type metadata accessor for SportsRoster);
          v30 = MEMORY[0x1E69E7CA0];
          sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
          v113 = v47;
          *&v111 = v46;
          sub_1D5B7C390(&v111, v110);
          v48 = v108;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v48;
          v50 = v41;
          v37 = v102;
          sub_1D5BAFB24(v110, v50, v43, isUniquelyReferenced_nonNull_native);

          swift_unknownObjectRelease();
          *&v108 = v109;
        }

        else
        {
          swift_unknownObjectRelease();
          v30 = MEMORY[0x1E69E7CA0];
        }

        ++v39;
        v34 = v106;
        v38 = v107;
      }

      while (v36 != v39);
    }

    sub_1D61B94CC(0, &qword_1EDF1B790, v30 + 8, MEMORY[0x1E69E5E28]);
    v55 = v54;
    v56 = v89[0];
    *(v89[0] + 144) = v108;
    v56[21] = v54;
    v56[22] = 0x6E6F436465626D65;
    v56[23] = 0xEB00000000676966;
    v57 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
    v58 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
    v59 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
    v60 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
    v61 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
    *&v111 = *(v95 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
    *(&v111 + 1) = v57;
    v112 = v58;
    v113 = v59;
    v114 = v60;
    v115 = v61;
    sub_1D5F8B638(v111, v57);
    v62 = sub_1D61AE28C(&v111);
    sub_1D5F8BBC8(v111, *(&v111 + 1));
    v56[27] = v55;
    v56[24] = v62;
    v63 = sub_1D5BE1168(v56);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
    v64 = v100;
    v65 = sub_1D61AE64C(v90, v63);
    if (v64)
    {

      swift_setDeallocating();
      sub_1D61B8D8C();
      swift_arrayDestroy();

      swift_setDeallocating();
      sub_1D61B8C94();
      swift_arrayDestroy();

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v68 = v65;

      v69 = v91;
      *(v91 + 48) = v68;
      v70 = sub_1D605D38C(v69);
      swift_setDeallocating();
      sub_1D61B9308(v92, sub_1D61B8D8C);
      v71 = v93;
      *(v93 + 48) = v70;
      v72 = sub_1D605D4A0(v71);
      swift_setDeallocating();
      sub_1D61B9308(v94, sub_1D61B8C94);
      sub_1D61B8EA4();
      *(v38 + 72) = v73;
      *(v38 + 48) = v72;
      sub_1D5BE1168(v38);
      swift_setDeallocating();
      sub_1D61B8F0C(v37, &qword_1EDF1B5F0);
      v74 = objc_opt_self();
      v75 = sub_1D7261D2C();

      *&v111 = 0;
      v76 = [v74 dataWithJSONObject:v75 options:2 error:&v111];

      v77 = v111;
      if (v76)
      {
        v78 = sub_1D725867C();
        v80 = v79;

        sub_1D72620CC();
        sub_1D726209C();
        if (v81)
        {
          sub_1D5B952F8(v78, v80);
          v82 = objc_allocWithZone(MEMORY[0x1E69CE158]);
          v83 = sub_1D726203C();

          v84 = [v82 initWithJSONString_];

          v85 = v101;
          *(v101 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v84;
          return v85;
        }

        sub_1D61B8F68();
        swift_allocError();
        *v87 = 2;
        swift_willThrow();

        sub_1D5B952F8(v78, v80);
      }

      else
      {
        v86 = v77;
        sub_1D725829C();

        swift_willThrow();
      }
    }
  }

  v66 = v101;
  sub_1D61B8FBC(v101 + v98, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v66;
}

uint64_t sub_1D61ACEC8(uint64_t a1)
{
  v2 = v1;
  sub_1D61B9178();
  v124 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v113 = (&v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62C58(0, &unk_1EDF04710, sub_1D61B9178, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v123 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v122 = (&v112 - v13);
  v132 = sub_1D725891C();
  v14 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v15);
  v126 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v129 = &v112 - v19;
  sub_1D61B91E4();
  v131 = v20;
  v119 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v130 = (&v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v118 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v117 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v133 = (&v112 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v112 - v34;
  v36 = *(a1 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v120 = v5;
    v125 = v1;
    v137 = MEMORY[0x1E69E7CC0];
    sub_1D6998FB0(0, v36, 0);
    v37 = v137;
    v38 = *(type metadata accessor for WebEmbedDatastoreProperty() - 8);
    v39 = (a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
    v121 = (v14 + 8);
    v40 = (v14 + 32);
    v127 = *(v38 + 72);
    *&v128 = v14;
    do
    {
      v41 = v125;
      v42 = sub_1D61B6830(v39);
      v125 = v41;
      if (v41)
      {
LABEL_50:

        return v35;
      }

      v43 = v42;
      sub_1D72587BC();
      if (*(v43 + 2))
      {
        v44 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
        if (v45)
        {
          sub_1D5B76B10(*(v43 + 7) + 32 * v44, &v135);
          if (swift_dynamicCast())
          {
            if (qword_1EDF0DC80 != -1)
            {
              swift_once();
            }

            v46 = qword_1EDF0DC90;
            v47 = sub_1D726203C();

            v48 = [v46 dateFromString_];

            if (v48)
            {
              v49 = v126;
              sub_1D72588BC();

              v50 = v129;
              v51 = v132;
              (*v121)(v129, v132);
              (*v40)(v50, v49, v51);
            }
          }
        }
      }

      v52 = v132;
      v53 = *(v131 + 64);
      v54 = v39[1];
      *v35 = *v39;
      *(v35 + 1) = v54;
      *(v35 + 2) = v43;
      (*v40)(&v35[v53], v129, v52);
      v137 = v37;
      v56 = v37[2];
      v55 = v37[3];

      if (v56 >= v55 >> 1)
      {
        sub_1D6998FB0(v55 > 1, v56 + 1, 1);
        v37 = v137;
      }

      v37[2] = v56 + 1;
      sub_1D5BE748C(v35, v37 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v56, sub_1D61B91E4);
      v14 = v128;
      v39 = (v39 + v127);
      --v36;
    }

    while (v36);
    v2 = v125;
    v5 = v120;
  }

  *&v135 = v37;

  sub_1D61B7238(&v135);
  v125 = v2;
  v57 = v124;
  v58 = v123;
  v59 = v122;
  if (v2)
  {
    goto LABEL_58;
  }

  v60 = v135;
  v35 = sub_1D605D38C(MEMORY[0x1E69E7CC0]);
  v61 = 0;
  v62 = *(v60 + 16);
  v121 = (v5 + 7);
  v120 = v5 + 6;
  v116 = (v14 + 32);
  v129 = (v14 + 8);
  v115 = v60;
  v114 = v62;
  while (1)
  {
    if (v61 == v62)
    {
      v63 = 1;
      v64 = v62;
    }

    else
    {
      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v61 >= *(v60 + 16))
      {
        goto LABEL_53;
      }

      v64 = v61 + 1;
      v65 = v60 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v61;
      v66 = *(v57 + 48);
      v67 = v113;
      *v113 = v61;
      sub_1D61B9368(v65, v67 + v66, sub_1D61B91E4);
      sub_1D5BE748C(v67, v58, sub_1D61B9178);
      v63 = 0;
    }

    (*v121)(v58, v63, 1, v57);
    sub_1D61B9288(v58, v59, &unk_1EDF04710, sub_1D61B9178);
    if ((*v120)(v59, 1, v57) == 1)
    {
      goto LABEL_50;
    }

    v126 = *v59;
    v127 = v64;
    v68 = v59 + *(v57 + 48);
    v69 = *v68;
    v71 = v131;
    v70 = v132;
    v72 = *(v131 + 64);
    v73 = *v116;
    v128 = *(v68 + 8);
    v74 = v117;
    v73(&v117[v72], &v68[v72], v132);
    v75 = *(v71 + 64);
    v76 = v133;
    *v133 = v69;
    *(v76 + 1) = v128;
    v73(v76 + v75, &v74[v72], v70);
    v77 = v118;
    sub_1D61B9368(v76, v118, sub_1D61B91E4);

    v78 = *(v77 + 16);
    v79 = *v129;
    (*v129)(v77 + *(v71 + 64), v70);
    if (!v78[2] || (v80 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574), (v81 & 1) == 0))
    {
      v135 = 0u;
      v136 = 0u;
      sub_1D61B9308(&v135, sub_1D5BE1404);
      goto LABEL_33;
    }

    sub_1D5B76B10(v78[7] + 32 * v80, &v135);
    sub_1D61B9308(&v135, sub_1D5BE1404);
    *(&v136 + 1) = MEMORY[0x1E69E6530];
    *&v135 = v126;
    sub_1D5B7C390(&v135, v134);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v78;
    v83 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
    v85 = v78[2];
    v86 = (v84 & 1) == 0;
    v87 = __OFADD__(v85, v86);
    v88 = v85 + v86;
    if (v87)
    {
      goto LABEL_55;
    }

    v89 = v84;
    if (v78[3] < v88)
    {
      sub_1D5BAFF10(v88, isUniquelyReferenced_nonNull_native);
      v83 = sub_1D5B69D90(0x616470557473616CLL, 0xEB00000000646574);
      if ((v89 & 1) != (v90 & 1))
      {
        goto LABEL_57;
      }

LABEL_43:
      v78 = v137;
      if (v89)
      {
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_43;
    }

    v107 = v83;
    sub_1D5C06BE0();
    v83 = v107;
    v78 = v137;
    if (v89)
    {
LABEL_44:
      v106 = (v78[7] + 32 * v83);
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_1D5B7C390(v134, v106);
      goto LABEL_33;
    }

LABEL_48:
    v78[(v83 >> 6) + 8] |= 1 << v83;
    v108 = (v78[6] + 16 * v83);
    *v108 = 0x616470557473616CLL;
    v108[1] = 0xEB00000000646574;
    sub_1D5B7C390(v134, (v78[7] + 32 * v83));
    v109 = v78[2];
    v87 = __OFADD__(v109, 1);
    v110 = v109 + 1;
    if (v87)
    {
      goto LABEL_56;
    }

    v78[2] = v110;
LABEL_33:
    v91 = v130;
    sub_1D61B9368(v133, v130, sub_1D61B91E4);
    v93 = *v91;
    v92 = v91[1];

    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = v35;
    v96 = sub_1D5B69D90(v93, v92);
    v97 = *(v35 + 2);
    v98 = (v95 & 1) == 0;
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      break;
    }

    v100 = v95;
    if (*(v35 + 3) >= v99)
    {
      if (v94)
      {
        if (v95)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1D6D82844();
        if (v100)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_1D6D6E4E4(v99, v94);
      v101 = sub_1D5B69D90(v93, v92);
      if ((v100 & 1) != (v102 & 1))
      {
        goto LABEL_57;
      }

      v96 = v101;
      if (v100)
      {
LABEL_18:

        v35 = v135;
        *(*(v135 + 56) + 8 * v96) = v78;

        sub_1D61B9308(v133, sub_1D61B91E4);
        goto LABEL_19;
      }
    }

    v35 = v135;
    *(v135 + 8 * (v96 >> 6) + 64) |= 1 << v96;
    v103 = (*(v35 + 6) + 16 * v96);
    *v103 = v93;
    v103[1] = v92;
    *(*(v35 + 7) + 8 * v96) = v78;
    sub_1D61B9308(v133, sub_1D61B91E4);
    v104 = *(v35 + 2);
    v87 = __OFADD__(v104, 1);
    v105 = v104 + 1;
    if (v87)
    {
      goto LABEL_54;
    }

    *(v35 + 2) = v105;
LABEL_19:
    v79(v130 + *(v131 + 64), v132);

    v57 = v124;
    v58 = v123;
    v59 = v122;
    v60 = v115;
    v62 = v114;
    v61 = v127;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_1D726493C();
  __break(1u);
LABEL_58:

  __break(1u);
  return result;
}

unint64_t sub_1D61ADB2C(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  v8 = [v2 isRouteable];
  v27 = MEMORY[0x1E69E6370];
  LOBYTE(v26) = v8;
  sub_1D5B7C390(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v7;
  sub_1D5BAFB24(v25, 0x626174756F527369, 0xEA0000000000656CLL, isUniquelyReferenced_nonNull_native);
  v10 = v24;
  v11 = [v2 eventLeagueTag];
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for SportsRoster();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = sub_1D61B051C(v6, 0, ObjectType);
  swift_unknownObjectRelease();
  sub_1D61B8FBC(v6, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  v17 = v16;
  v27 = v16;
  *&v26 = v15;
  sub_1D5B7C390(&v26, v25);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v10;
  sub_1D5BAFB24(v25, 0x654C7374726F7073, 0xEC00000065756761, v18);
  v19 = v24;
  v14(v6, 1, 1, v13);
  v20 = sub_1D61B051C(v6, 0, v23);
  sub_1D61B8FBC(v6, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  v27 = v17;
  *&v26 = v20;
  sub_1D5B7C390(&v26, v25);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v19;
  sub_1D5BAFB24(v25, 0x76457374726F7073, 0xEB00000000746E65, v21);
  return v24;
}

uint64_t sub_1D61ADE14(unint64_t a1, uint64_t *a2)
{
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - v6;
  v8 = *a2;
  v9 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

  result = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v10);
  v43 = result;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_22:

    return v9;
  }

  result = sub_1D7263BFC();
  v12 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v45 = a1 & 0xC000000000000001;
    v41 = a1;
    v42 = v12;
    do
    {
      if (v45)
      {
        v14 = MEMORY[0x1DA6FB460](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v16 = [v14 UMCCanonicalID];
      if (v16)
      {
        v17 = v16;
        v46 = sub_1D726207C();
        v19 = v18;

        if (v8)
        {
          v20 = v7;
          v44 = v9;
          v21 = v8;
          v22 = [v14 identifier];
          v23 = sub_1D726207C();
          v25 = v24;

          v8 = v21;
          if (*(v21 + 16))
          {
            v26 = sub_1D5B69D90(v23, v25);
            v28 = v27;

            if (v28)
            {
              v29 = *(v21 + 56);
              v30 = type metadata accessor for SportsRoster();
              v31 = *(v30 - 8);
              sub_1D61B9368(v29 + *(v31 + 72) * v26, v20, type metadata accessor for SportsRoster);
              v32 = v30;
              v7 = v20;
              (*(v31 + 56))(v20, 0, 1, v32);
              a1 = v41;
            }

            else
            {
              v35 = type metadata accessor for SportsRoster();
              v7 = v20;
              (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
            }

            v8 = v21;
          }

          else
          {

            v34 = type metadata accessor for SportsRoster();
            v7 = v20;
            (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
          }

          v9 = v44;
        }

        else
        {
          v33 = type metadata accessor for SportsRoster();
          (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
        }

        v36 = v43;

        v37 = sub_1D61B051C(v7, v36, ObjectType);

        sub_1D61B8FBC(v7, &qword_1EDF11F60, type metadata accessor for SportsRoster);
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v50 = v38;
        *&v49 = v37;
        sub_1D5B7C390(&v49, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v9;
        sub_1D5BAFB24(v48, v46, v19, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();
        v9 = v47;
        v12 = v42;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v13;
    }

    while (v12 != v13);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D61AE28C(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v26 = MEMORY[0x1E69E7CC0];

    return sub_1D5BE1168(v26);
  }

  v2 = *a1;
  v3 = a1[5];
  v35 = *(v3 + 16);
  if (!v35)
  {
    swift_unknownObjectRetain();

    v6 = MEMORY[0x1E69E7CC8];
LABEL_23:
    sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x696669746E656469;
    *(inited + 16) = xmmword_1D7270C10;
    v29 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEA00000000007265;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v29;
    *(inited + 80) = 0x6574656D61726170;
    *(inited + 88) = 0xEA00000000007372;
    sub_1D61B94CC(0, &qword_1EDF05810, v29, MEMORY[0x1E69E5E28]);
    *(inited + 120) = v30;
    *(inited + 96) = v6;

    v31 = sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
    sub_1D5F8BBC8(v2, v1);
    return v31;
  }

  v32 = *a1;
  v33 = a1[1];
  sub_1D5F8B638(v2, v1);

  v4 = 0;
  v5 = (v3 + 56);
  v6 = MEMORY[0x1E69E7CC8];
  v34 = v3;
  while (v4 < *(v3 + 16))
  {
    v9 = *(v5 - 3);
    v8 = *(v5 - 2);
    v10 = *(v5 - 1);
    v11 = *v5;

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D5B69D90(v9, v8);
    v15 = v6[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_25;
    }

    v18 = v13;
    if (v6[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D6D7DE64();
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D6D666FC(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D5B69D90(v9, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_27;
      }

      v14 = v19;
      if (v18)
      {
LABEL_4:
        v7 = (v6[7] + 16 * v14);
        *v7 = v10;
        v7[1] = v11;

        goto LABEL_5;
      }
    }

    v6[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v6[6] + 16 * v14);
    *v21 = v9;
    v21[1] = v8;
    v22 = (v6[7] + 16 * v14);
    *v22 = v10;
    v22[1] = v11;

    v23 = v6[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_26;
    }

    v6[2] = v25;
LABEL_5:
    ++v4;
    v5 += 4;
    v3 = v34;
    if (v35 == v4)
    {

      v1 = v33;
      v2 = v32;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D61AE64C(uint64_t a1, void *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      return a2;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v35 = v18;
    *&v34 = v17;
    sub_1D5B7C390(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = a2;
    v20 = sub_1D5B69D90(v16, v15);
    v22 = a2[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (a2[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_1D5C06BE0();
        v20 = v31;
      }
    }

    else
    {
      sub_1D5BAFF10(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D5B69D90(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      a2 = v36;
      v11 = (v36[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_1D5B7C390(v33, v11);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a2 = v36;
      v36[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a2[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      sub_1D5B7C390(v33, (a2[7] + 32 * v20));
      v29 = a2[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a2[2] = v30;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void *sub_1D61AE8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v114 = *MEMORY[0x1E69E9840];
  v99 = *v2;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v95 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v102 = v87 - v11;
  v12 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v2 + v12) = v13 | 0x2000000000000000;
  v14 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v15 = *(*(v14 - 8) + 56);
  v98 = v12;
  v15(v2 + v12, 0, 1, v14);
  v96 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = a2;
  v97 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v104 = v16;
  inited = swift_initStackObject();
  v106 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  v103 = inited + 32;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v18 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v19 = swift_initStackObject();
  *(v19 + 16) = v106;
  *(v19 + 32) = 0x676E69646E617473;
  *(v19 + 40) = 0xE800000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v18);
  v20 = swift_initStackObject();
  *(v20 + 16) = v106;
  v21 = a1[6];
  *(v20 + 32) = a1[5];
  *(v20 + 40) = v21;

  v22 = v105;
  v23 = sub_1D61ACEC8(a2);
  v100 = v22;
  if (v22)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
    v24 = v98;
  }

  else
  {
    v88 = v23;
    v89 = v20;
    v90 = v20 + 32;
    v91 = v19;
    v92 = v19 + 32;
    v93 = v2;
    v101 = inited;

    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1D7279970;
    strcpy((v25 + 32), "umcCanonicalId");
    *(v25 + 47) = -18;
    v26 = a1[6];
    v27 = MEMORY[0x1E69E6158];
    *(v25 + 48) = a1[5];
    *(v25 + 56) = v26;
    *(v25 + 72) = v27;
    *(v25 + 80) = 0xD000000000000010;
    *(v25 + 88) = 0x80000001D73CD450;
    v94 = a1;
    v28 = a1[4];

    *&v106 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

    v30 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v29);
    v31 = v28;
    v32 = v30;
    if (v31 >> 62)
    {
      v85 = v31;
      v86 = sub_1D7263BFC();
      v31 = v85;
      v33 = v86;
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v103;
    v35 = v101;
    v87[0] = v25;
    v87[1] = v25 + 32;
    if (v33)
    {
      if (v33 < 1)
      {
        __break(1u);
      }

      v36 = 0;
      v104 = v31 & 0xC000000000000001;
      v105 = v31;
      do
      {
        if (v104)
        {
          v48 = MEMORY[0x1DA6FB460](v36);
        }

        else
        {
          v48 = *(v31 + 8 * v36 + 32);
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v50 = [v48 UMCCanonicalID];
        if (v50)
        {
          v37 = v50;
          v38 = sub_1D726207C();
          v40 = v39;

          v41 = type metadata accessor for SportsRoster();
          v42 = v102;
          (*(*(v41 - 8) + 56))(v102, 1, 1, v41);

          v43 = sub_1D61B051C(v42, v32, ObjectType);

          sub_1D61B8FBC(v42, &qword_1EDF11F60, type metadata accessor for SportsRoster);
          sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
          v111 = v44;
          *&v109 = v43;
          sub_1D5B7C390(&v109, v108);
          v45 = v106;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v45;
          v47 = v38;
          v34 = v103;
          sub_1D5BAFB24(v108, v47, v40, isUniquelyReferenced_nonNull_native);
          v35 = v101;

          swift_unknownObjectRelease();
          *&v106 = v107;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v36;
        v31 = v105;
      }

      while (v33 != v36);
    }

    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v52 = v51;
    v53 = v87[0];
    *(v87[0] + 96) = v106;
    v53[15] = v51;
    v53[16] = 0x6E6F436465626D65;
    v53[17] = 0xEB00000000676966;
    v54 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
    v55 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
    v56 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
    v57 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
    v58 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
    *&v109 = *(v94 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
    *(&v109 + 1) = v54;
    v110 = v55;
    v111 = v56;
    v112 = v57;
    v113 = v58;
    sub_1D5F8B638(v109, v54);
    v59 = sub_1D61AE28C(&v109);
    sub_1D5F8BBC8(v109, *(&v109 + 1));
    v53[21] = v52;
    v53[18] = v59;
    v60 = sub_1D5BE1168(v53);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
    v61 = v100;
    v62 = sub_1D61AE64C(v88, v60);
    if (v61)
    {

      swift_setDeallocating();
      sub_1D61B8D8C();
      swift_arrayDestroy();

      swift_setDeallocating();
      sub_1D61B8C94();
      swift_arrayDestroy();

      swift_setDeallocating();
      swift_arrayDestroy();
      v3 = v93;
      v24 = v98;
      v100 = v61;
    }

    else
    {
      v64 = v62;

      v65 = v89;
      *(v89 + 48) = v64;
      v66 = sub_1D605D38C(v65);
      swift_setDeallocating();
      sub_1D61B9308(v90, sub_1D61B8D8C);
      v67 = v91;
      *(v91 + 48) = v66;
      v68 = sub_1D605D4A0(v67);
      swift_setDeallocating();
      sub_1D61B9308(v92, sub_1D61B8C94);
      sub_1D61B8EA4();
      *(v35 + 72) = v69;
      *(v35 + 48) = v68;
      sub_1D5BE1168(v35);
      swift_setDeallocating();
      sub_1D61B8F0C(v34, &qword_1EDF1B5F0);
      v70 = objc_opt_self();
      v71 = sub_1D7261D2C();

      *&v109 = 0;
      v72 = [v70 dataWithJSONObject:v71 options:2 error:&v109];

      v73 = v109;
      v3 = v93;
      v24 = v98;
      if (v72)
      {
        v74 = sub_1D725867C();
        v76 = v75;

        sub_1D72620CC();
        sub_1D726209C();
        if (v77)
        {
          sub_1D5B952F8(v74, v76);
          v78 = objc_allocWithZone(MEMORY[0x1E69CE158]);
          v79 = sub_1D726203C();

          v80 = [v78 initWithJSONString_];

          *(v3 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v80;
          return v3;
        }

        sub_1D61B8F68();
        v83 = swift_allocError();
        *v84 = 2;
        v100 = v83;
        swift_willThrow();

        sub_1D5B952F8(v74, v76);
      }

      else
      {
        v81 = v73;
        v82 = sub_1D725829C();

        v100 = v82;
        swift_willThrow();
      }
    }
  }

  sub_1D61B8FBC(v3 + v24, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1D61AF414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v66[21] = *MEMORY[0x1E69E9840];
  v54 = *v3;
  v9 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v52[1] = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E4CF90();
  v60 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *&v5[v17] = v18 | 0x4000000000000000;
  v19 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v53 = v17;
  v20(&v5[v17], 0, 1, v19);
  v52[2] = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v5[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v59 = v5;
  v52[3] = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v5[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = a3;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v56 = v21;
  inited = swift_initStackObject();
  *(inited + 32) = 0x74656B63617262;
  v58 = inited + 32;
  v55 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0xE700000000000000;
  v23 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;
  v61 = a3;

  v24 = sub_1D605D4B8(MEMORY[0x1E69E7CC0]);
  sub_1D61B93D0();
  v57 = inited;
  *(inited + 72) = v25;
  v66[0] = v24;
  v26 = *(v13 + 16);
  v62 = a1;
  v26(v16, a1 + v23, v60);
  sub_1D61B9434(&unk_1EDF17890, sub_1D5E4CF90);
  sub_1D726238C();
  v27 = v64;
  if (v64 >> 62)
  {
    goto LABEL_24;
  }

  v28 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  for (i = v65; v65 != v28; i = v65)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1DA6FB460](i, v27);
      v47 = v38;
      v48 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v28 = sub_1D7263BFC();
        goto LABEL_3;
      }

      if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v47 = *(v27 + 32 + 8 * i);

      v48 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v65 = v48;
    v63 = v47;
    sub_1D61AFC34(v66, &v63, v61, v62, a2);
    if (v4)
    {

      __swift_deallocate_boxed_opaque_existential_0(v57 + 48);

      swift_setDeallocating();
      sub_1D61B95A4(0, &qword_1EDF1B5F0);
      swift_arrayDestroy();
      goto LABEL_20;
    }
  }

  v30 = v57;
  *(v57 + 48) = v66[0];
  v31 = sub_1D5BE1168(v30);
  swift_setDeallocating();
  v32 = MEMORY[0x1E69E7CA0];
  sub_1D61B8F0C(v58, &qword_1EDF1B5F0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v55;
  *(v33 + 32) = 0xD00000000000001DLL;
  *(v33 + 40) = 0x80000001D73CD430;
  sub_1D61B94CC(0, &qword_1EDF1B790, v32 + 8, MEMORY[0x1E69E5E28]);
  *(v33 + 72) = v34;
  *(v33 + 48) = v31;
  sub_1D5BE1168(v33);
  swift_setDeallocating();
  sub_1D61B8F0C(v33 + 32, &qword_1EDF1B5F0);
  v35 = objc_opt_self();
  v36 = sub_1D7261D2C();

  v64 = 0;
  v37 = [v35 dataWithJSONObject:v36 options:2 error:&v64];

  v38 = v64;
  if (!v37)
  {
LABEL_17:
    v49 = v38;
    sub_1D725829C();

    swift_willThrow();

LABEL_20:
    v46 = v59;
    sub_1D61B8FBC(v59 + v53, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

    swift_deallocPartialClassInstance();
    return v46;
  }

  v39 = sub_1D725867C();
  v41 = v40;

  sub_1D72620CC();
  sub_1D726209C();
  if (!v42)
  {
    sub_1D61B8F68();
    swift_allocError();
    *v50 = 2;
    swift_willThrow();

    sub_1D5B952F8(v39, v41);
    goto LABEL_20;
  }

  sub_1D5B952F8(v39, v41);
  v43 = objc_allocWithZone(MEMORY[0x1E69CE158]);
  v44 = sub_1D726203C();

  v45 = [v43 initWithJSONString_];

  v46 = v59;
  *(v59 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v45;
  return v46;
}

uint64_t sub_1D61AFC34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a3;
  v70 = a4;
  v67 = a1;
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v77 = &v67 - v9;
  v10 = *a2;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  strcpy((inited + 32), "umcCanonicalId");
  *(inited + 47) = -18;
  v13 = v10[5];
  v12 = v10[6];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D73CD450;
  v14 = v10[4];

  v15 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);

  v17 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v16);
  v78 = v14;
  if (v14 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = inited;
  v74 = inited + 32;
  v75 = v10;
  v68 = a5;
  v69 = inited + 80;
  if (result)
  {
    v76 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    v20 = v78;
    v79 = v78 & 0xC000000000000001;
    v21 = v76;
    do
    {
      if (v79)
      {
        v32 = MEMORY[0x1DA6FB460](v19, v20);
      }

      else
      {
        v32 = *(v20 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v34 = [v32 UMCCanonicalID];
      if (v34)
      {
        v22 = v34;
        v23 = sub_1D726207C();
        v25 = v24;

        v26 = type metadata accessor for SportsRoster();
        v27 = v77;
        (*(*(v26 - 8) + 56))(v77, 1, 1, v26);

        v28 = sub_1D61B051C(v27, v17, ObjectType);

        sub_1D61B8FBC(v27, &qword_1EDF11F60, type metadata accessor for SportsRoster);
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v84 = v29;
        *&v82 = v28;
        sub_1D5B7C390(&v82, &v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v15;
        v31 = v23;
        v20 = v78;
        sub_1D5BAFB24(&v80, v31, v25, isUniquelyReferenced_nonNull_native);
        v21 = v76;

        swift_unknownObjectRelease();
        v15 = v87;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v19;
    }

    while (v21 != v19);
  }

  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  v36 = v35;
  v37 = v73;
  v38 = v73;
  *(v73 + 128) = 0x6E6F436465626D65;
  v39 = v38 + 128;
  *(v39 - 8) = v35;
  *(v39 - 32) = v15;
  *(v39 + 8) = 0xEB00000000676966;
  v40 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v41 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  v42 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
  v43 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
  v44 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
  *&v82 = *(v75 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  *(&v82 + 1) = v40;
  v83 = v41;
  v84 = v42;
  v85 = v43;
  v86 = v44;
  sub_1D5F8B638(v82, v40);
  v45 = sub_1D61AE28C(&v82);
  sub_1D5F8BBC8(v82, *(&v82 + 1));
  *(v39 + 16) = v45;
  *(v39 + 40) = v36;
  strcpy((v39 + 48), "childrenData");
  *(v39 + 61) = 0;
  *(v39 + 62) = -5120;
  v46 = v72;
  v47 = sub_1D61B0478(v71);
  if (v46)
  {

    sub_1D61B8F0C(v39, &qword_1EDF1B5F0);
    sub_1D61B8F0C(v69, &qword_1EDF1B5F0);
    sub_1D61B8F0C(v74, &qword_1EDF1B5F0);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    return swift_arrayDestroy();
  }

  else
  {
    v48 = v47;
    sub_1D61B8E1C(0, &qword_1EC884E38, MEMORY[0x1E69E62F8]);
    *(v37 + 216) = v49;
    *(v37 + 192) = v48;
    v50 = sub_1D5BE1168(v37);
    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
    sub_1D5E4CF90();
    sub_1D725BE8C();
    v51 = *(v82 + 56);
    swift_unknownObjectRetain();

    if (v51)
    {
      v52 = swift_getObjectType();
      v53 = type metadata accessor for SportsRoster();
      v54 = v77;
      (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
      v55 = sub_1D61B051C(v54, 0, v52);
      swift_unknownObjectRelease();
      sub_1D61B8FBC(v54, &qword_1EDF11F60, type metadata accessor for SportsRoster);
      v84 = v36;
      *&v82 = v55;
      sub_1D5B7C390(&v82, &v80);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v50;
      sub_1D5BAFB24(&v80, 0x654C7374726F7073, 0xEC00000065756761, v56);
      v50 = v87;
    }

    sub_1D725BE8C();
    v57 = *(v82 + 64);
    swift_unknownObjectRetain();

    if (v57)
    {
      v58 = swift_getObjectType();
      v59 = type metadata accessor for SportsRoster();
      v60 = v77;
      (*(*(v59 - 8) + 56))(v77, 1, 1, v59);
      v61 = sub_1D61B051C(v60, 0, v58);
      swift_unknownObjectRelease();
      sub_1D61B8FBC(v60, &qword_1EDF11F60, type metadata accessor for SportsRoster);
      v84 = v36;
      *&v82 = v61;
      sub_1D5B7C390(&v82, &v80);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v50;
      sub_1D5BAFB24(&v80, 0xD000000000000012, 0x80000001D73CD4D0, v62);
      v50 = v87;
    }

    v63 = v68;
    v64 = v75[6];
    *&v80 = v75[5];
    *(&v80 + 1) = v64;

    sub_1D7263C9C();
    v65 = sub_1D61ACEC8(v63);
    v66 = sub_1D61AE64C(v65, v50);

    v81 = v36;
    *&v80 = v66;
    return sub_1D6D6138C(&v80, &v82);
  }
}

void *sub_1D61B0478(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v4 = *(a1 + 16);
    if (v4)
    {
      for (i = (a1 + 32); ; ++i)
      {
        v6 = *i;

        sub_1D61B6FA4(&v7, &v6);
        if (v1)
        {
          break;
        }

        if (!--v4)
        {
          return v7;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D61B051C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v394 = a3;
  v404 = a2;
  v417 = a1;
  v439 = type metadata accessor for SportsRosterPlayer();
  v386 = *(v439 - 1);
  MEMORY[0x1EEE9AC00](v439, v5);
  v442 = (&v386 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v415 = &v386 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B62C58(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v408 = &v386 - v13;
  v406 = type metadata accessor for SportsRoster();
  v407 = *(v406 - 8);
  MEMORY[0x1EEE9AC00](v406, v14);
  v393 = &v386 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v405 = &v386 - v18;
  v435 = sub_1D72620DC();
  v425 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435, v19);
  v434 = &v386 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B62C58(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v414 = &v386 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v413 = &v386 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v412 = &v386 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v433 = &v386 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v411 = &v386 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v432 = &v386 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v410 = &v386 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v431 = &v386 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v409 = &v386 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v430 = &v386 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v416 = &v386 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v429 = &v386 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v402 = &v386 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v422 = &v386 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v403 = &v386 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v400 = &v386 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v421 = &v386 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v401 = &v386 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v399 = &v386 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v420 = &v386 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v424 = &v386 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v397 = &v386 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v419 = &v386 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v398 = &v386 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v395 = &v386 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v418 = &v386 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v441 = &v386 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v386 - v104;
  MEMORY[0x1EEE9AC00](v106, v107);
  v440 = (&v386 - v108);
  MEMORY[0x1EEE9AC00](v109, v110);
  v396 = &v386 - v111;
  v112 = sub_1D72585BC();
  v426 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v113);
  v392 = &v386 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115, v116);
  v391 = &v386 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v390 = &v386 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v389 = &v386 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v388 = &v386 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v387 = &v386 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v133 = &v386 - v132;
  v134 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  v135 = [v3 identifier];
  v136 = sub_1D726207C();
  v138 = v137;

  v139 = MEMORY[0x1E69E6158];
  v446 = MEMORY[0x1E69E6158];
  *&v445 = v136;
  *(&v445 + 1) = v138;
  sub_1D5B7C390(&v445, &v444);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v443 = v134;
  sub_1D5BAFB24(&v444, 0x6449676174, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v447 = v443;
  v141 = [v3 identifier];
  if (!v141)
  {
    sub_1D726207C();
    v141 = sub_1D726203C();
  }

  v142 = [objc_opt_self() nss:v141 NewsURLForTagID:0 feedConfiguration:?];

  sub_1D72584EC();
  v143 = sub_1D72583DC();
  v145 = v144;
  v146 = v426;
  v147 = *(v426 + 8);
  v437 = v426 + 8;
  v438 = v112;
  v436 = v147;
  v147(v133, v112);
  v446 = v139;
  *&v445 = v143;
  *(&v445 + 1) = v145;
  sub_1D5B7C390(&v445, &v444);
  v148 = v447;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v443 = v148;
  sub_1D5BAFB24(&v444, 0x5564656546676174, 0xEA00000000006C72, v149);
  v447 = v443;
  v150 = &off_1E84D3000;
  v423 = v4;
  v151 = [v4 sportsTheme];
  v152 = v146;
  v153 = v395;
  if (v151)
  {
    v154 = [v151 sportsLogoImageAssetHandle];
    swift_unknownObjectRelease();
    v155 = v440;
    v156 = v441;
    if (v154)
    {
      v157 = [v154 remoteURL];
      sub_1D72584EC();

      v158 = 0;
    }

    else
    {
      v158 = 1;
    }
  }

  else
  {
    v154 = 0;
    v158 = 1;
    v155 = v440;
    v156 = v441;
  }

  v159 = v438;
  v428 = *(v152 + 56);
  v427 = v152 + 56;
  v428(v155, v158, 1, v438);
  sub_1D61B902C(v155, v105, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v440 = *(v152 + 48);
  v441 = (v152 + 48);
  if (v440(v105, 1, v159) == 1)
  {

    sub_1D61B8FBC(v105, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_12:
    v164 = v418;
    v165 = v396;
    sub_1D61B9288(v155, v396, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v166 = v423;
    goto LABEL_14;
  }

  sub_1D72583DC();
  v436(v105, v159);
  v160 = v434;
  sub_1D72620CC();
  v161 = sub_1D726208C();
  v163 = v162;

  (*(v425 + 8))(v160, v435);
  if (v163 >> 60 == 15)
  {

    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_12;
  }

  v167 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v167);

  v168 = v396;
  sub_1D725855C();

  sub_1D5B952E4(v161, v163);

  v165 = v168;
  sub_1D61B8FBC(v155, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v166 = v423;
  v150 = &off_1E84D3000;
  v152 = v426;
  v164 = v418;
LABEL_14:
  v169 = v438;
  if (v440(v165, 1, v438) == 1)
  {
    sub_1D61B8FBC(v165, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v170 = v387;
    (*(v152 + 32))(v387, v165, v169);
    v171 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v171;
    *(&v445 + 1) = v172;
    sub_1D5B7C390(&v445, &v444);
    v173 = v447;
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v173;
    sub_1D5BAFB24(&v444, 0x6C72556F676F6CLL, 0xE700000000000000, v174);
    v436(v170, v169);
    v447 = v443;
  }

  v175 = [v166 v150[456]];
  if (v175)
  {
    v176 = [v175 sportsLogoImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v176)
    {
      v177 = [v176 remoteURL];
      sub_1D72584EC();

      v178 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v176 = 0;
  }

  v178 = 1;
LABEL_22:
  v428(v164, v178, 1, v169);
  sub_1D61B902C(v164, v153, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v153, 1, v169) == 1)
  {

    sub_1D61B8FBC(v153, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_26:
    v183 = v419;
    sub_1D61B9288(v418, v156, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_28;
  }

  sub_1D72583DC();
  v436(v153, v169);
  v179 = v434;
  sub_1D72620CC();
  v180 = sub_1D726208C();
  v182 = v181;

  (*(v425 + 8))(v179, v435);
  if (v182 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_26;
  }

  v184 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v184);

  sub_1D725855C();

  sub_1D5B952E4(v180, v182);

  sub_1D61B8FBC(v418, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v183 = v419;
LABEL_28:
  if (v440(v156, 1, v169) == 1)
  {
    sub_1D61B8FBC(v156, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v185 = v388;
    (*(v152 + 32))(v388, v156, v169);
    v186 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v186;
    *(&v445 + 1) = v187;
    sub_1D5B7C390(&v445, &v444);
    v188 = v447;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v188;
    sub_1D5BAFB24(&v444, 0x436C72556F676F6CLL, 0xEE00746361706D6FLL, v189);
    v436(v185, v169);
    v447 = v443;
  }

  v190 = [v166 v150[456]];
  if (v190)
  {
    v191 = [v190 sportsLogoImageLargeAssetHandle];
    swift_unknownObjectRelease();
    if (v191)
    {
      v192 = [v191 remoteURL];
      sub_1D72584EC();

      v193 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v191 = 0;
  }

  v193 = 1;
LABEL_36:
  v428(v183, v193, 1, v169);
  v194 = v183;
  v195 = v397;
  sub_1D61B902C(v194, v397, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v195, 1, v169) == 1)
  {

    sub_1D61B8FBC(v195, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_40:
    v200 = v420;
    v201 = v398;
    sub_1D61B9288(v419, v398, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_42;
  }

  sub_1D72583DC();
  v436(v195, v169);
  v196 = v434;
  sub_1D72620CC();
  v197 = sub_1D726208C();
  v199 = v198;

  (*(v425 + 8))(v196, v435);
  if (v199 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    goto LABEL_40;
  }

  v202 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v202);

  v203 = v398;
  sub_1D725855C();

  sub_1D5B952E4(v197, v199);

  v201 = v203;
  sub_1D61B8FBC(v419, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v200 = v420;
LABEL_42:
  if (v440(v201, 1, v169) == 1)
  {
    sub_1D61B8FBC(v201, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v204 = v389;
    (*(v152 + 32))(v389, v201, v169);
    v205 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v205;
    *(&v445 + 1) = v206;
    sub_1D5B7C390(&v445, &v444);
    v207 = v447;
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v207;
    sub_1D5BAFB24(&v444, 0x4C6C72556F676F6CLL, 0xEC00000065677261, v208);
    v436(v204, v169);
    v447 = v443;
  }

  v209 = v424;
  v210 = [v166 v150[456]];
  if (v210)
  {
    v211 = [v210 sportsLogoAltImageAssetHandle];
    swift_unknownObjectRelease();
    if (v211)
    {
      v212 = [v211 remoteURL];
      sub_1D72584EC();

      v213 = 0;
    }

    else
    {
      v213 = 1;
    }

    v209 = v424;
  }

  else
  {
    v211 = 0;
    v213 = 1;
  }

  v428(v200, v213, 1, v169);
  v214 = v200;
  v215 = v399;
  sub_1D61B902C(v214, v399, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v215, 1, v169) == 1)
  {

    sub_1D61B8FBC(v215, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v216 = v421;
LABEL_55:
    sub_1D61B9288(v420, v209, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_57;
  }

  sub_1D72583DC();
  v436(v215, v169);
  v217 = v434;
  sub_1D72620CC();
  v218 = sub_1D726208C();
  v220 = v219;

  (*(v425 + 8))(v217, v435);
  if (v220 >> 60 == 15)
  {

    v169 = v438;
    v150 = &off_1E84D3000;
    v152 = v426;
    v216 = v421;
    v209 = v424;
    goto LABEL_55;
  }

  v221 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v221);

  v222 = v424;
  sub_1D725855C();
  v209 = v222;

  sub_1D5B952E4(v218, v220);

  sub_1D61B8FBC(v420, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v150 = &off_1E84D3000;
  v152 = v426;
  v216 = v421;
LABEL_57:
  v223 = v400;
  if (v440(v209, 1, v169) == 1)
  {
    sub_1D61B8FBC(v209, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v224 = *(v152 + 32);
    v225 = v390;
    v224(v390, v209, v169);
    v226 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v226;
    *(&v445 + 1) = v227;
    sub_1D5B7C390(&v445, &v444);
    v228 = v447;
    v229 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v228;
    sub_1D5BAFB24(&v444, 0x55746C416F676F6CLL, 0xEA00000000006C72, v229);
    v436(v225, v169);
    v447 = v443;
  }

  v230 = [v166 v150[456]];
  if (v230)
  {
    v231 = [v230 sportsLogoAltImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v231)
    {
      v232 = [v231 remoteURL];
      sub_1D72584EC();

      v233 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v231 = 0;
  }

  v233 = 1;
LABEL_65:
  v428(v216, v233, 1, v169);
  sub_1D61B902C(v216, v223, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v223, 1, v169) == 1)
  {

    sub_1D61B8FBC(v223, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_69:
    v238 = v422;
    v239 = v401;
    sub_1D61B9288(v421, v401, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_71;
  }

  sub_1D72583DC();
  v436(v223, v169);
  v234 = v434;
  sub_1D72620CC();
  v235 = sub_1D726208C();
  v237 = v236;

  (*(v425 + 8))(v234, v435);
  if (v237 >> 60 == 15)
  {

    v169 = v438;
    v166 = v423;
    v150 = &off_1E84D3000;
    goto LABEL_69;
  }

  v240 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v240);

  v241 = v401;
  sub_1D725855C();

  sub_1D5B952E4(v235, v237);

  v239 = v241;
  sub_1D61B8FBC(v421, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v166 = v423;
  v150 = &off_1E84D3000;
  v238 = v422;
LABEL_71:
  if (v440(v239, 1, v169) == 1)
  {
    sub_1D61B8FBC(v239, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v242 = v391;
    (*(v426 + 32))(v391, v239, v169);
    v243 = sub_1D72583DC();
    v446 = MEMORY[0x1E69E6158];
    *&v445 = v243;
    *(&v445 + 1) = v244;
    sub_1D5B7C390(&v445, &v444);
    v245 = v447;
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v245;
    sub_1D5BAFB24(&v444, 0xD000000000000011, 0x80000001D73CD490, v246);
    v436(v242, v169);
    v447 = v443;
  }

  v247 = [v166 v150[456]];
  if (v247)
  {
    v248 = [v247 sportsLogoAltImageLargeAssetHandle];
    swift_unknownObjectRelease();
    if (v248)
    {
      v249 = [v248 remoteURL];
      sub_1D72584EC();

      v250 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v248 = 0;
  }

  v250 = 1;
LABEL_79:
  v428(v238, v250, 1, v169);
  v251 = v238;
  v252 = v402;
  sub_1D61B902C(v251, v402, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v440(v252, 1, v169) == 1)
  {

    sub_1D61B8FBC(v252, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v253 = v417;
    v254 = MEMORY[0x1E69E6158];
LABEL_83:
    v259 = v403;
    sub_1D61B9288(v422, v403, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_85;
  }

  sub_1D72583DC();
  v436(v252, v169);
  v255 = v434;
  sub_1D72620CC();
  v256 = sub_1D726208C();
  v258 = v257;

  (*(v425 + 8))(v255, v435);
  v254 = MEMORY[0x1E69E6158];
  if (v258 >> 60 == 15)
  {

    v169 = v438;
    v253 = v417;
    v166 = v423;
    v150 = &off_1E84D3000;
    goto LABEL_83;
  }

  v260 = sub_1D725866C();
  *&v445 = 0xD000000000000018;
  *(&v445 + 1) = 0x80000001D73BE070;
  MEMORY[0x1DA6F9910](v260);

  v261 = v403;
  sub_1D725855C();

  sub_1D5B952E4(v256, v258);

  v259 = v261;
  sub_1D61B8FBC(v422, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v169 = v438;
  v253 = v417;
  v166 = v423;
  v150 = &off_1E84D3000;
LABEL_85:
  if (v440(v259, 1, v169) == 1)
  {
    sub_1D61B8FBC(v259, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v262 = v392;
    (*(v426 + 32))(v392, v259, v169);
    v263 = sub_1D72583DC();
    v446 = v254;
    *&v445 = v263;
    *(&v445 + 1) = v264;
    sub_1D5B7C390(&v445, &v444);
    v265 = v447;
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v265;
    sub_1D5BAFB24(&v444, 0x55746C416F676F6CLL, 0xEF656772614C6C72, v266);
    v436(v262, v169);
    v447 = v443;
  }

  v267 = [v166 sportsData];
  if (v267)
  {
    v268 = v267;
    v269 = sub_1D726207C();
    v271 = v270;

    v446 = v254;
    *&v445 = v269;
    *(&v445 + 1) = v271;
    sub_1D5B7C390(&v445, &v444);
    v272 = v447;
    v273 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v272;
    sub_1D5BAFB24(&v444, 0x61447374726F7073, 0xEA00000000006174, v273);
    v447 = v443;
  }

  v274 = [v166 v150[456]];
  if (v274)
  {
    v275 = [v274 sportsPrimaryColor];
    swift_unknownObjectRelease();
    if (v275)
    {
      v276 = [v275 hex];
      v277 = sub_1D726207C();
      v279 = v278;

      v446 = v254;
      *&v445 = v277;
      *(&v445 + 1) = v279;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v280 = v447;
      v281 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v280;
      v150 = &off_1E84D3000;
      sub_1D5BAFB24(&v444, 0xD000000000000012, 0x80000001D73B7B50, v281);

      v447 = v443;
    }
  }

  if (v404)
  {
    v282 = sub_1D5F879DC(v166, v404);
    if (v282)
    {
      v283 = v282;
      v284 = sub_1D68C0160();
      v446 = v254;
      *&v445 = v284;
      *(&v445 + 1) = v285;
      sub_1D5B7C390(&v445, &v444);
      v286 = v447;
      v287 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v286;
      sub_1D5BAFB24(&v444, 0xD000000000000012, 0x80000001D73CD470, v287);

      v169 = v438;
      v447 = v443;
    }
  }

  v288 = [v166 v150[456]];
  if (v288)
  {
    v289 = [v288 sportsSecondaryColor];
    swift_unknownObjectRelease();
    if (v289)
    {
      v290 = [v289 hex];
      v291 = sub_1D726207C();
      v293 = v292;

      v446 = v254;
      *&v445 = v291;
      *(&v445 + 1) = v293;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v294 = v447;
      v295 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v294;
      v150 = &off_1E84D3000;
      sub_1D5BAFB24(&v444, 0xD000000000000014, 0x80000001D73B7B70, v295);

      v447 = v443;
    }
  }

  v296 = [v166 v150[456]];
  if (v296)
  {
    v297 = [v296 sportsEventNavigationForegroundColor];
    swift_unknownObjectRelease();
    if (v297)
    {
      v298 = [v297 hex];
      v299 = sub_1D726207C();
      v301 = v300;

      v446 = v254;
      *&v445 = v299;
      *(&v445 + 1) = v301;
      v169 = v438;
      sub_1D5B7C390(&v445, &v444);
      v302 = v447;
      v303 = swift_isUniquelyReferenced_nonNull_native();
      v443 = v302;
      sub_1D5BAFB24(&v444, 0xD000000000000024, 0x80000001D73B7C90, v303);

      v447 = v443;
    }
  }

  v304 = v408;
  sub_1D61B902C(v253, v408, &qword_1EDF11F60, type metadata accessor for SportsRoster);
  if ((*(v407 + 48))(v304, 1, v406) == 1)
  {
    sub_1D61B8FBC(v304, &qword_1EDF11F60, type metadata accessor for SportsRoster);
    return v447;
  }

  sub_1D5BE748C(v304, v405, type metadata accessor for SportsRoster);
  sub_1D61B90AC();
  v305 = sub_1D725AEAC();
  v306 = *(v305 + 16);
  if (v306)
  {
    *&v444 = MEMORY[0x1E69E7CC0];
    sub_1D6999000(0, v306, 0);
    v307 = v444;
    v308 = (*(v386 + 80) + 32) & ~*(v386 + 80);
    v404 = v305;
    v408 = v308;
    v309 = v305 + v308;
    v407 = *(v386 + 72);
    v310 = (v425 + 8);
    v417 = 0x80000001D73BE070;
    v311 = v416;
    while (1)
    {
      v427 = v307;
      v428 = v306;
      v420 = v309;
      v312 = v442;
      sub_1D61B9368(v309, v442, type metadata accessor for SportsRosterPlayer);
      v313 = v312[1];
      v426 = *v312;
      v314 = v312[3];
      v424 = v312[2];
      v422 = v312[4];
      v315 = v169;
      v316 = v312[5];
      v419 = v312[6];
      v317 = v312[7];
      v318 = v439[8];
      sub_1D61B902C(v312 + v318, v311, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      LODWORD(v312) = v440(v311, 1, v315);
      v418 = v317;

      v425 = v313;

      v421 = v316;

      v423 = v314;

      if (v312 == 1)
      {
        break;
      }

      sub_1D72583DC();
      v436(v311, v315);
      v319 = v434;
      sub_1D72620CC();
      v320 = sub_1D726208C();
      v322 = v321;

      (*v310)(v319, v435);
      if (v322 >> 60 == 15)
      {
        goto LABEL_109;
      }

      v323 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v323);

      sub_1D725855C();

      sub_1D5B952E4(v320, v322);
LABEL_111:
      v324 = v439[9];
      v325 = v409;
      sub_1D61B902C(v442 + v324, v409, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v326 = v438;
      if (v440(v325, 1, v438) == 1)
      {
        sub_1D61B8FBC(v325, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_114:
        sub_1D61B902C(v442 + v324, v430, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_116;
      }

      sub_1D72583DC();
      v436(v325, v326);
      v327 = v434;
      sub_1D72620CC();
      v328 = sub_1D726208C();
      v330 = v329;

      (*v310)(v327, v435);
      if (v330 >> 60 == 15)
      {
        goto LABEL_114;
      }

      v331 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v331);

      sub_1D725855C();

      sub_1D5B952E4(v328, v330);
LABEL_116:
      v332 = v439[10];
      v333 = v410;
      sub_1D61B902C(v442 + v332, v410, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v334 = v438;
      if (v440(v333, 1, v438) == 1)
      {
        sub_1D61B8FBC(v333, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_119:
        sub_1D61B902C(v442 + v332, v431, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_121;
      }

      sub_1D72583DC();
      v436(v333, v334);
      v335 = v434;
      sub_1D72620CC();
      v336 = sub_1D726208C();
      v338 = v337;

      (*v310)(v335, v435);
      if (v338 >> 60 == 15)
      {
        goto LABEL_119;
      }

      v339 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v339);

      sub_1D725855C();

      sub_1D5B952E4(v336, v338);
LABEL_121:
      v340 = v439[11];
      v341 = v411;
      sub_1D61B902C(v442 + v340, v411, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v342 = v438;
      if (v440(v341, 1, v438) == 1)
      {
        sub_1D61B8FBC(v341, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_124:
        sub_1D61B902C(v442 + v340, v432, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_126;
      }

      sub_1D72583DC();
      v436(v341, v342);
      v343 = v434;
      sub_1D72620CC();
      v344 = sub_1D726208C();
      v346 = v345;

      (*v310)(v343, v435);
      if (v346 >> 60 == 15)
      {
        goto LABEL_124;
      }

      v347 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v347);

      sub_1D725855C();

      sub_1D5B952E4(v344, v346);
LABEL_126:
      v348 = v439[12];
      v349 = v412;
      sub_1D61B902C(v442 + v348, v412, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v350 = v438;
      if (v440(v349, 1, v438) == 1)
      {
        sub_1D61B8FBC(v349, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_129:
        sub_1D61B902C(v442 + v348, v433, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_131;
      }

      sub_1D72583DC();
      v436(v349, v350);
      v351 = v434;
      sub_1D72620CC();
      v352 = sub_1D726208C();
      v354 = v353;

      (*v310)(v351, v435);
      if (v354 >> 60 == 15)
      {
        goto LABEL_129;
      }

      v355 = sub_1D725866C();
      *&v445 = 0xD000000000000018;
      *(&v445 + 1) = v417;
      MEMORY[0x1DA6F9910](v355);

      sub_1D725855C();

      sub_1D5B952E4(v352, v354);
LABEL_131:
      v356 = v439[13];
      v357 = v414;
      sub_1D61B902C(v442 + v356, v414, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v358 = v438;
      if (v440(v357, 1, v438) == 1)
      {
        sub_1D61B8FBC(v357, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      else
      {
        sub_1D72583DC();
        v436(v357, v358);
        v359 = v434;
        sub_1D72620CC();
        v360 = sub_1D726208C();
        v362 = v361;

        (*v310)(v359, v435);
        if (v362 >> 60 != 15)
        {
          v364 = sub_1D725866C();
          *&v445 = 0xD000000000000018;
          *(&v445 + 1) = v417;
          MEMORY[0x1DA6F9910](v364);

          v363 = v413;
          sub_1D725855C();

          sub_1D5B952E4(v360, v362);
          goto LABEL_136;
        }
      }

      v363 = v413;
      sub_1D61B902C(v442 + v356, v413, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_136:
      v365 = v415;
      v366 = v439;
      v367 = v442;
      v368 = (v442 + v439[14]);
      v369 = *v368;
      v370 = v368[1];
      sub_1D5C30618(*v368, v370);
      sub_1D61B9308(v367, type metadata accessor for SportsRosterPlayer);
      v371 = v425;
      *v365 = v426;
      v365[1] = v371;
      v372 = v423;
      v365[2] = v424;
      v365[3] = v372;
      v373 = v421;
      v365[4] = v422;
      v365[5] = v373;
      v374 = v418;
      v365[6] = v419;
      v365[7] = v374;
      v375 = MEMORY[0x1E6968FB0];
      sub_1D61B9288(v429, v365 + v366[8], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D61B9288(v430, v365 + v366[9], &qword_1EDF45B40, v375);
      sub_1D61B9288(v431, v365 + v366[10], &qword_1EDF45B40, v375);
      sub_1D61B9288(v432, v365 + v366[11], &qword_1EDF45B40, v375);
      sub_1D61B9288(v433, v365 + v366[12], &qword_1EDF45B40, v375);
      sub_1D61B9288(v363, v365 + v366[13], &qword_1EDF45B40, v375);
      v376 = (v365 + v366[14]);
      *v376 = v369;
      v376[1] = v370;
      v307 = v427;
      *&v444 = v427;
      v378 = *(v427 + 16);
      v377 = *(v427 + 24);
      if (v378 >= v377 >> 1)
      {
        sub_1D6999000(v377 > 1, v378 + 1, 1);
        v307 = v444;
      }

      *(v307 + 16) = v378 + 1;
      v379 = v407;
      sub_1D5BE748C(v365, v307 + v408 + v378 * v407, type metadata accessor for SportsRosterPlayer);
      v309 = v420 + v379;
      v306 = v428 - 1;
      v311 = v416;
      v169 = v438;
      if (v428 == 1)
      {
        goto LABEL_139;
      }
    }

    sub_1D61B8FBC(v311, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_109:
    sub_1D61B902C(v442 + v318, v429, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_111;
  }

LABEL_139:

  sub_1D61B9434(&qword_1EDF0FD98, type metadata accessor for SportsRosterPlayer);
  sub_1D61B9434(&qword_1EDF0FDA0, type metadata accessor for SportsRosterPlayer);
  v380 = v393;
  sub_1D725AE9C();
  sub_1D61B9434(&qword_1EDF11FA8, type metadata accessor for SportsRoster);
  v381 = sub_1D7261E5C();
  sub_1D61B9308(v380, type metadata accessor for SportsRoster);
  if (v381)
  {
    sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v446 = v382;
    *&v445 = v381;
    sub_1D5B7C390(&v445, &v444);
    v383 = v447;
    v384 = swift_isUniquelyReferenced_nonNull_native();
    v443 = v383;
    sub_1D5BAFB24(&v444, 0x726574736F72, 0xE600000000000000, v384);
    sub_1D61B9308(v405, type metadata accessor for SportsRoster);
    return v443;
  }

  else
  {
    sub_1D607E0F0(0x726574736F72, 0xE600000000000000, &v445);
    sub_1D61B9308(&v445, sub_1D5BE1404);
    sub_1D61B9308(v405, type metadata accessor for SportsRoster);
  }

  return v447;
}

void *sub_1D61B388C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = *MEMORY[0x1E69E9840];
  v77 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0x6000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v74 = v9;
  v12(&v3[v9], 0, 1, v11);
  v72 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v73 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v76 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v71 = v13;
  inited = swift_initStackObject();
  v78 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v78;
  *(v16 + 32) = 0x65726F6353786F62;
  *(v16 + 40) = 0xE800000000000000;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v78;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v75;
  v20 = sub_1D61ACEC8(a2);
  *&v78 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v67 = v20;
  v68 = v17 + 32;
  v65 = v17;
  v69 = v16 + 32;
  v21 = inited;
  v75 = inited + 32;

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7274590;
  strcpy((v22 + 32), "umcCanonicalId");
  *(v22 + 47) = -18;
  v23 = *(a1 + 40);
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 56) = v23;
  *(v22 + 72) = v24;
  *(v22 + 80) = 0x746E657665;
  *(v22 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v26 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v22 + 96) = v26;
  v28 = v27;
  *(v22 + 120) = v27;
  *(v22 + 128) = 0xD000000000000010;
  *(v22 + 136) = 0x80000001D73CD450;
  v29 = [*(a1 + 48) eventCompetitorTags];
  v66 = v21;
  if (v29)
  {
    v30 = v29;
    sub_1D5EC01D0();
    v31 = sub_1D726267C();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v65;
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster);

  v33 = sub_1D61ADE14(v31, &v79);

  *(v22 + 144) = v33;
  *(v22 + 168) = v28;
  *(v22 + 176) = 0x6E6F436465626D65;
  *(v22 + 184) = 0xEB00000000676966;
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v38;
  sub_1D5F8B638(v79, v34);
  v39 = sub_1D61AE28C(&v79);
  sub_1D5F8BBC8(v79, v80);
  *(v22 + 216) = v28;
  *(v22 + 192) = v39;
  v40 = sub_1D5BE1168(v22);
  swift_setDeallocating();
  sub_1D61B95A4(0, &qword_1EDF1B5F0);
  swift_arrayDestroy();
  v41 = v78;
  v42 = sub_1D61AE64C(v67, v40);
  *&v78 = v41;
  if (v41)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v45 = v42;
  v71 = a1;

  *(v32 + 48) = v45;
  v46 = sub_1D605D38C(v32);
  swift_setDeallocating();
  sub_1D61B9308(v68, sub_1D61B8D8C);
  *(v16 + 48) = v46;
  v47 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v69, sub_1D61B8C94);
  sub_1D61B8EA4();
  v48 = v66;
  *(v66 + 72) = v49;
  *(v48 + 48) = v47;
  sub_1D5BE1168(v48);
  swift_setDeallocating();
  sub_1D61B8F0C(v75, &qword_1EDF1B5F0);
  v50 = objc_opt_self();
  v51 = sub_1D7261D2C();

  v79 = 0;
  v52 = [v50 dataWithJSONObject:v51 options:2 error:&v79];

  v53 = v79;
  if (v52)
  {
    v54 = sub_1D725867C();
    v56 = v55;

    sub_1D72620CC();
    sub_1D726209C();
    if (v57)
    {
      sub_1D5B952F8(v54, v56);
      v58 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v59 = sub_1D726203C();

      v60 = [v58 initWithJSONString_];

      v61 = v76;
      *(v76 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v60;
      return v61;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();

    sub_1D5B952F8(v54, v56);
  }

  else
  {
    v62 = v53;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v43 = v76;
  sub_1D61B8FBC(v76 + v74, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v43;
}

void *sub_1D61B41F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = *MEMORY[0x1E69E9840];
  v77 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0x8000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v74 = v9;
  v12(&v3[v9], 0, 1, v11);
  v72 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v73 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v76 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v71 = v13;
  inited = swift_initStackObject();
  v78 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v78;
  *(v16 + 32) = 0x726F6353656E696CLL;
  *(v16 + 40) = 0xE900000000000065;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v78;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v75;
  v20 = sub_1D61ACEC8(a2);
  *&v78 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v67 = v20;
  v68 = v17 + 32;
  v65 = v17;
  v69 = v16 + 32;
  v21 = inited;
  v75 = inited + 32;

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7274590;
  strcpy((v22 + 32), "umcCanonicalId");
  *(v22 + 47) = -18;
  v23 = *(a1 + 40);
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 56) = v23;
  *(v22 + 72) = v24;
  *(v22 + 80) = 0x746E657665;
  *(v22 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v26 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v22 + 96) = v26;
  v28 = v27;
  *(v22 + 120) = v27;
  *(v22 + 128) = 0xD000000000000010;
  *(v22 + 136) = 0x80000001D73CD450;
  v29 = [*(a1 + 48) eventCompetitorTags];
  v66 = v21;
  if (v29)
  {
    v30 = v29;
    sub_1D5EC01D0();
    v31 = sub_1D726267C();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v65;
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);

  v33 = sub_1D61ADE14(v31, &v79);

  *(v22 + 144) = v33;
  *(v22 + 168) = v28;
  *(v22 + 176) = 0x6E6F436465626D65;
  *(v22 + 184) = 0xEB00000000676966;
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v38;
  sub_1D5F8B638(v79, v34);
  v39 = sub_1D61AE28C(&v79);
  sub_1D5F8BBC8(v79, v80);
  *(v22 + 216) = v28;
  *(v22 + 192) = v39;
  v40 = sub_1D5BE1168(v22);
  swift_setDeallocating();
  sub_1D61B95A4(0, &qword_1EDF1B5F0);
  swift_arrayDestroy();
  v41 = v78;
  v42 = sub_1D61AE64C(v67, v40);
  *&v78 = v41;
  if (v41)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v45 = v42;
  v71 = a1;

  *(v32 + 48) = v45;
  v46 = sub_1D605D38C(v32);
  swift_setDeallocating();
  sub_1D61B9308(v68, sub_1D61B8D8C);
  *(v16 + 48) = v46;
  v47 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v69, sub_1D61B8C94);
  sub_1D61B8EA4();
  v48 = v66;
  *(v66 + 72) = v49;
  *(v48 + 48) = v47;
  sub_1D5BE1168(v48);
  swift_setDeallocating();
  sub_1D61B8F0C(v75, &qword_1EDF1B5F0);
  v50 = objc_opt_self();
  v51 = sub_1D7261D2C();

  v79 = 0;
  v52 = [v50 dataWithJSONObject:v51 options:2 error:&v79];

  v53 = v79;
  if (v52)
  {
    v54 = sub_1D725867C();
    v56 = v55;

    sub_1D72620CC();
    sub_1D726209C();
    if (v57)
    {
      sub_1D5B952F8(v54, v56);
      v58 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v59 = sub_1D726203C();

      v60 = [v58 initWithJSONString_];

      v61 = v76;
      *(v76 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v60;
      return v61;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();

    sub_1D5B952F8(v54, v56);
  }

  else
  {
    v62 = v53;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v43 = v76;
  sub_1D61B8FBC(v76 + v74, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v43;
}

void *sub_1D61B4B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = *MEMORY[0x1E69E9840];
  v77 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0xA000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v74 = v9;
  v12(&v3[v9], 0, 1, v11);
  v72 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v73 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v76 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v71 = v13;
  inited = swift_initStackObject();
  v78 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v78;
  strcpy((v16 + 32), "injuryReport");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v78;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v75;
  v20 = sub_1D61ACEC8(a2);
  *&v78 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v67 = v20;
  v68 = v17 + 32;
  v65 = v17;
  v69 = v16 + 32;
  v21 = inited;
  v75 = inited + 32;

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7274590;
  strcpy((v22 + 32), "umcCanonicalId");
  *(v22 + 47) = -18;
  v23 = *(a1 + 40);
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 56) = v23;
  *(v22 + 72) = v24;
  *(v22 + 80) = 0x746E657665;
  *(v22 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v26 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v22 + 96) = v26;
  v28 = v27;
  *(v22 + 120) = v27;
  *(v22 + 128) = 0xD000000000000010;
  *(v22 + 136) = 0x80000001D73CD450;
  v29 = [*(a1 + 48) eventCompetitorTags];
  v66 = v21;
  if (v29)
  {
    v30 = v29;
    sub_1D5EC01D0();
    v31 = sub_1D726267C();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v65;
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster);

  v33 = sub_1D61ADE14(v31, &v79);

  *(v22 + 144) = v33;
  *(v22 + 168) = v28;
  *(v22 + 176) = 0x6E6F436465626D65;
  *(v22 + 184) = 0xEB00000000676966;
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v38;
  sub_1D5F8B638(v79, v34);
  v39 = sub_1D61AE28C(&v79);
  sub_1D5F8BBC8(v79, v80);
  *(v22 + 216) = v28;
  *(v22 + 192) = v39;
  v40 = sub_1D5BE1168(v22);
  swift_setDeallocating();
  sub_1D61B95A4(0, &qword_1EDF1B5F0);
  swift_arrayDestroy();
  v41 = v78;
  v42 = sub_1D61AE64C(v67, v40);
  *&v78 = v41;
  if (v41)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v45 = v42;
  v71 = a1;

  *(v32 + 48) = v45;
  v46 = sub_1D605D38C(v32);
  swift_setDeallocating();
  sub_1D61B9308(v68, sub_1D61B8D8C);
  *(v16 + 48) = v46;
  v47 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v69, sub_1D61B8C94);
  sub_1D61B8EA4();
  v48 = v66;
  *(v66 + 72) = v49;
  *(v48 + 48) = v47;
  sub_1D5BE1168(v48);
  swift_setDeallocating();
  sub_1D61B8F0C(v75, &qword_1EDF1B5F0);
  v50 = objc_opt_self();
  v51 = sub_1D7261D2C();

  v79 = 0;
  v52 = [v50 dataWithJSONObject:v51 options:2 error:&v79];

  v53 = v79;
  if (v52)
  {
    v54 = sub_1D725867C();
    v56 = v55;

    sub_1D72620CC();
    sub_1D726209C();
    if (v57)
    {
      sub_1D5B952F8(v54, v56);
      v58 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v59 = sub_1D726203C();

      v60 = [v58 initWithJSONString_];

      v61 = v76;
      *(v76 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v60;
      return v61;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();

    sub_1D5B952F8(v54, v56);
  }

  else
  {
    v62 = v53;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v43 = v76;
  sub_1D61B8FBC(v76 + v74, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v43;
}

void *sub_1D61B54D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = *MEMORY[0x1E69E9840];
  v77 = *v3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *&v3[v9] = v10 | 0xC000000000000000;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  v12 = *(*(v11 - 8) + 56);
  v74 = v9;
  v12(&v3[v9], 0, 1, v11);
  v72 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v73 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  v76 = v3;
  *&v3[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  v71 = v13;
  inited = swift_initStackObject();
  v78 = xmmword_1D7273AE0;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD430;
  v15 = MEMORY[0x1E69E6F90];
  sub_1D5B62C58(0, &qword_1EDF01E20, sub_1D61B8C94, MEMORY[0x1E69E6F90]);
  v16 = swift_initStackObject();
  *(v16 + 16) = v78;
  *(v16 + 32) = 0x6579616C5079656BLL;
  *(v16 + 40) = 0xE900000000000072;
  sub_1D5B62C58(0, &unk_1EDF01E10, sub_1D61B8D8C, v15);
  v17 = swift_initStackObject();
  *(v17 + 16) = v78;
  v18 = *(a1 + 40);
  *(v17 + 32) = *(a1 + 32);
  *(v17 + 40) = v18;

  v19 = v75;
  v20 = sub_1D61ACEC8(a2);
  *&v78 = v19;
  if (v19)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
LABEL_8:
    swift_arrayDestroy();
    goto LABEL_9;
  }

  v67 = v20;
  v68 = v17 + 32;
  v65 = v17;
  v69 = v16 + 32;
  v21 = inited;
  v75 = inited + 32;

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7274590;
  strcpy((v22 + 32), "umcCanonicalId");
  *(v22 + 47) = -18;
  v23 = *(a1 + 40);
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 56) = v23;
  *(v22 + 72) = v24;
  *(v22 + 80) = 0x746E657665;
  *(v22 + 88) = 0xE500000000000000;
  ObjectType = swift_getObjectType();

  v26 = sub_1D61ADB2C(ObjectType);
  sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  *(v22 + 96) = v26;
  v28 = v27;
  *(v22 + 120) = v27;
  *(v22 + 128) = 0xD000000000000010;
  *(v22 + 136) = 0x80000001D73CD450;
  v29 = [*(a1 + 48) eventCompetitorTags];
  v66 = v21;
  if (v29)
  {
    v30 = v29;
    sub_1D5EC01D0();
    v31 = sub_1D726267C();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v65;
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster);

  v33 = sub_1D61ADE14(v31, &v79);

  *(v22 + 144) = v33;
  *(v22 + 168) = v28;
  *(v22 + 176) = 0x6E6F436465626D65;
  *(v22 + 184) = 0xEB00000000676966;
  v34 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v36 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v37 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v38 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  v79 = *(a1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v80 = v34;
  v81 = v35;
  v82 = v36;
  v83 = v37;
  v84 = v38;
  sub_1D5F8B638(v79, v34);
  v39 = sub_1D61AE28C(&v79);
  sub_1D5F8BBC8(v79, v80);
  *(v22 + 216) = v28;
  *(v22 + 192) = v39;
  v40 = sub_1D5BE1168(v22);
  swift_setDeallocating();
  sub_1D61B95A4(0, &qword_1EDF1B5F0);
  swift_arrayDestroy();
  v41 = v78;
  v42 = sub_1D61AE64C(v67, v40);
  *&v78 = v41;
  if (v41)
  {

    swift_setDeallocating();
    sub_1D61B8D8C();
    swift_arrayDestroy();

    swift_setDeallocating();
    sub_1D61B8C94();
    swift_arrayDestroy();

    swift_setDeallocating();
    goto LABEL_8;
  }

  v45 = v42;
  v71 = a1;

  *(v32 + 48) = v45;
  v46 = sub_1D605D38C(v32);
  swift_setDeallocating();
  sub_1D61B9308(v68, sub_1D61B8D8C);
  *(v16 + 48) = v46;
  v47 = sub_1D605D4A0(v16);
  swift_setDeallocating();
  sub_1D61B9308(v69, sub_1D61B8C94);
  sub_1D61B8EA4();
  v48 = v66;
  *(v66 + 72) = v49;
  *(v48 + 48) = v47;
  sub_1D5BE1168(v48);
  swift_setDeallocating();
  sub_1D61B8F0C(v75, &qword_1EDF1B5F0);
  v50 = objc_opt_self();
  v51 = sub_1D7261D2C();

  v79 = 0;
  v52 = [v50 dataWithJSONObject:v51 options:2 error:&v79];

  v53 = v79;
  if (v52)
  {
    v54 = sub_1D725867C();
    v56 = v55;

    sub_1D72620CC();
    sub_1D726209C();
    if (v57)
    {
      sub_1D5B952F8(v54, v56);
      v58 = objc_allocWithZone(MEMORY[0x1E69CE158]);
      v59 = sub_1D726203C();

      v60 = [v58 initWithJSONString_];

      v61 = v76;
      *(v76 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v60;
      return v61;
    }

    sub_1D61B8F68();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();

    sub_1D5B952F8(v54, v56);
  }

  else
  {
    v62 = v53;
    sub_1D725829C();

    swift_willThrow();
  }

LABEL_9:
  v43 = v76;
  sub_1D61B8FBC(v76 + v74, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  swift_deallocPartialClassInstance();
  return v43;
}

char *sub_1D61B5E40(void *a1, uint64_t a2)
{
  v48[29] = *MEMORY[0x1E69E9840];
  v47 = *v2;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization;
  sub_1D61B9368(a1, &v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization], type metadata accessor for GenericDataVisualization);
  v11 = type metadata accessor for WebEmbedDataVisualization();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(&v2[v10], 0, 1, v11);
  v45 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents;
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents] = a2;
  v46 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents;
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents] = 0;
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  v44 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 40) = 0x80000001D73CD4F0;

  v14 = sub_1D61ACEC8(v13);
  if (v3)
  {
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
LABEL_12:
    sub_1D61B8FBC(&v2[v10], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

    swift_deallocPartialClassInstance();
    return v2;
  }

  v41[1] = v9;
  v42 = v10;
  v43 = v14;

  v15 = swift_initStackObject();
  *(v15 + 16) = v44;
  *(v15 + 32) = 0x617461446174656DLL;
  *(v15 + 40) = 0xE800000000000000;
  sub_1D61B8C3C(0, &qword_1EDF19580, &qword_1EDF1B630);
  v16 = swift_initStackObject();
  *(v16 + 16) = v44;
  *&v44 = 0;
  *(v16 + 32) = 0x696669746E656469;
  *(v16 + 40) = 0xEA00000000007265;
  v17 = a1[1];
  *(v16 + 48) = *a1;
  *(v16 + 56) = v17;

  v18 = sub_1D605A4CC(v16);
  swift_setDeallocating();
  v19 = MEMORY[0x1E69E6158];
  sub_1D61B8F0C(v16 + 32, &qword_1EDF1B630);
  sub_1D61B94CC(0, &qword_1EDF05810, v19, MEMORY[0x1E69E5E28]);
  *(v15 + 72) = v20;
  *(v15 + 48) = v18;
  v21 = sub_1D5BE1168(v15);
  swift_setDeallocating();
  v22 = MEMORY[0x1E69E7CA0];
  sub_1D61B8F0C(v15 + 32, &qword_1EDF1B5F0);
  v23 = v44;
  v24 = sub_1D61AE64C(v43, v21);
  if (v23)
  {
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);

    swift_setDeallocating();
    sub_1D61B95A4(0, &qword_1EDF1B5F0);
    swift_arrayDestroy();
LABEL_11:
    v10 = v42;
    goto LABEL_12;
  }

  v25 = v24;
  *&v44 = 0;

  sub_1D61B94CC(0, &qword_1EDF1B790, v22 + 8, MEMORY[0x1E69E5E28]);
  *(inited + 72) = v26;
  *(inited + 48) = v25;
  sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D61B8F0C(inited + 32, &qword_1EDF1B5F0);
  v27 = objc_opt_self();
  v28 = sub_1D7261D2C();

  v48[0] = 0;
  v29 = [v27 dataWithJSONObject:v28 options:2 error:v48];

  v30 = v48[0];
  if (!v29)
  {
    v38 = v30;
    sub_1D725829C();

    swift_willThrow();
LABEL_10:
    sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);
    goto LABEL_11;
  }

  v31 = sub_1D725867C();
  v33 = v32;

  sub_1D72620CC();
  sub_1D726209C();
  if (!v34)
  {
    sub_1D61B8F68();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();
    sub_1D5B952F8(v31, v33);
    goto LABEL_10;
  }

  sub_1D5B952F8(v31, v33);
  v35 = objc_allocWithZone(MEMORY[0x1E69CE158]);
  v36 = sub_1D726203C();

  v37 = [v35 initWithJSONString_];

  sub_1D61B9308(a1, type metadata accessor for GenericDataVisualization);
  *&v2[OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore] = v37;
  return v2;
}

uint64_t WebEmbedDatastore.deinit()
{
  sub_1D61B8FBC(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  return v0;
}

uint64_t WebEmbedDatastore.__deallocating_deinit()
{
  sub_1D61B8FBC(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);

  return swift_deallocClassInstance();
}

uint64_t static WebEmbedDatastore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(a2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D61B6758(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v4 = sub_1D726207C();
  v6 = v5;

  v7 = [*(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

char *sub_1D61B6830(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v53 = sub_1D725B72C();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v2);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72620DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for WebEmbedDatastoreProperty();
  sub_1D61B9368(a1 + *(v18 + 20), v17, type metadata accessor for WebEmbedDataSourceCacheEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D5BE748C(v17, v13, type metadata accessor for WebEmbedDataSourceJson);
    sub_1D72620CC();
    v30 = sub_1D726208C();
    v32 = v31;
    (*(v6 + 8))(v9, v5);
    if (v32 >> 60 == 15)
    {
      sub_1D61B8F68();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
    }

    else
    {
      v34 = objc_opt_self();
      v35 = sub_1D725865C();
      *&v56 = 0;
      v36 = [v34 JSONObjectWithData:v35 options:0 error:&v56];

      if (v36)
      {
        v37 = v56;
        sub_1D7263AEC();
        swift_unknownObjectRelease();
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        if (swift_dynamicCast())
        {
          sub_1D5B952E4(v30, v32);
          v9 = *&v55[0];
          sub_1D61B9308(v13, type metadata accessor for WebEmbedDataSourceJson);
          return v9;
        }

        sub_1D61B8F68();
        swift_allocError();
        *v50 = 1;
      }

      else
      {
        v49 = v56;
        sub_1D725829C();
      }

      swift_willThrow();
      sub_1D5B952E4(v30, v32);
    }

    sub_1D61B9308(v13, type metadata accessor for WebEmbedDataSourceJson);
    return v9;
  }

  v19 = *v17;
  v20 = v17[1];
  v21 = sub_1D5BE1168(MEMORY[0x1E69E7CC0]);
  *&v56 = *(v19 + 16);
  v22 = v56;
  sub_1D5BA6EF4();
  v23 = v53;
  v24 = swift_dynamicCast();
  v25 = MEMORY[0x1E69E6530];
  if (!v24)
  {
    goto LABEL_11;
  }

  v26 = v52;
  if ((*(v52 + 88))(v4, v23) != *MEMORY[0x1E69D6948])
  {
    (*(v26 + 8))(v4, v23);
LABEL_11:

    goto LABEL_12;
  }

  (*(v26 + 96))(v4, v23);
  v27 = *v4;

  v28 = [v27 statusCode];
  v57 = v25;
  *&v56 = v28;
  sub_1D5B7C390(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v21;
  sub_1D5BAFB24(v55, 0x6F43737574617473, 0xEA00000000006564, isUniquelyReferenced_nonNull_native);
  v21 = v54;
LABEL_12:
  *&v56 = *(v19 + 16);
  v38 = v56;
  v39 = sub_1D72620FC();
  v57 = MEMORY[0x1E69E6158];
  *&v56 = v39;
  *(&v56 + 1) = v40;
  sub_1D5B7C390(&v56, v55);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v21;
  sub_1D5BAFB24(v55, 0x7470697263736564, 0xEB000000006E6F69, v41);
  v42 = v54;
  if (*(v19 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge + 8))
  {
    v43 = v20;
  }

  else
  {
    v43 = *(v19 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_maxAge);
  }

  v57 = v25;
  *&v56 = v43;
  sub_1D5B7C390(&v56, v55);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v42;
  sub_1D5BAFB24(v55, 0x65674178616DLL, 0xE600000000000000, v44);
  v45 = v54;
  v46 = MEMORY[0x1E69E7CA0];
  sub_1D61B8C3C(0, &qword_1EDF19560, &qword_1EDF1B5F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  sub_1D61B94CC(0, &qword_1EDF1B790, v46 + 8, MEMORY[0x1E69E5E28]);
  *(inited + 72) = v48;
  *(inited + 48) = v45;
  v9 = sub_1D5BE1168(inited);
  swift_setDeallocating();
  sub_1D61B8F0C(inited + 32, &qword_1EDF1B5F0);

  return v9;
}

id sub_1D61B6F54()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EDF0DC90 = v0;
  return result;
}

unint64_t sub_1D61B6FA4(void **a1, uint64_t *a2)
{
  result = sub_1D61ACEC8(*a2);
  if (!v2)
  {
    v5 = 0;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v10 = (v7 + 63) >> 6;
    v34 = a1;
    v30 = result;
    if (v9)
    {
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v9)) | (v5 << 6);
        v13 = (*(result + 48) + 16 * v12);
        v14 = v13[1];
        v15 = *(*(result + 56) + 8 * v12);
        v33[0] = *v13;
        v33[1] = v14;
        v16 = MEMORY[0x1E69E7CA0];
        sub_1D61B94CC(0, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
        v33[5] = v17;
        v33[2] = v15;
        sub_1D61B94CC(0, &qword_1EDF1A300, v16 + 8, MEMORY[0x1E69E6EC8]);
        v18 = sub_1D726412C();
        sub_1D61B952C(v33, v31);
        v19 = v31[0];
        v20 = v31[1];

        result = sub_1D5B69D90(v19, v20);
        if (v21)
        {
          break;
        }

        v18[(result >> 6) + 8] |= 1 << result;
        v22 = (v18[6] + 16 * result);
        *v22 = v19;
        v22[1] = v20;
        result = sub_1D5B7C390(&v32, (v18[7] + 32 * result));
        v23 = v18[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v18[2] = v25;

        sub_1D61B8F0C(v33, &qword_1EDF1B5F0);
        v26 = v34;
        v27 = *v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D69916B4(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = sub_1D69916B4((v28 > 1), v29 + 1, 1, v27);
        }

        v9 &= v9 - 1;
        v27[2] = v29 + 1;
        v27[v29 + 4] = v18;
        *v26 = v27;
        result = v30;
        if (!v9)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
        }

        v9 = *(v6 + 8 * v11);
        ++v5;
        if (v9)
        {
          v5 = v11;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_1D61B7238(void **a1)
{
  sub_1D61B91E4();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D62FFCAC(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1D61B72E0(v6);
  *a1 = v4;
}

void sub_1D61B72E0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D61B91E4();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      sub_1D61B91E4();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1D61B7670(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D61B740C(0, v2, 1, a1);
  }
}

void sub_1D61B740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D61B91E4();
  MEMORY[0x1EEE9AC00](v8, v9);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_1D61B9368(v25, v19, sub_1D61B91E4);
      sub_1D61B9368(v22, v14, sub_1D61B91E4);
      v26 = sub_1D725883C();
      sub_1D61B9308(v14, sub_1D61B91E4);
      sub_1D61B9308(v19, sub_1D61B91E4);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1D5BE748C(v25, v37, sub_1D61B91E4);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5BE748C(v27, v22, sub_1D61B91E4);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D61B7670(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v109 = a1;
  sub_1D61B91E4();
  v10 = v9;
  v117 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v112 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v120 = &v105 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v121 = &v105 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v105 - v21;
  v119 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_134;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_128:
      v100 = sub_1D62FF50C(a4);
    }

    v123 = v100;
    a4 = *(v100 + 2);
    if (a4 >= 2)
    {
      while (*v119)
      {
        v101 = *&v100[16 * a4];
        v102 = v100;
        v103 = *&v100[16 * a4 + 24];
        sub_1D61B7FD4(*v119 + *(v117 + 72) * v101, *v119 + *(v117 + 72) * *&v100[16 * a4 + 16], *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v103 < v101)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1D62FF50C(v102);
        }

        if (a4 - 2 >= *(v102 + 2))
        {
          goto LABEL_122;
        }

        v104 = &v102[16 * a4];
        *v104 = v101;
        *(v104 + 1) = v103;
        v123 = v102;
        sub_1D62FF480(a4 - 1);
        v100 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v108 = a4;
  v122 = v10;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v113 = v25;
    if (v24 + 1 >= v23)
    {
      v23 = v24 + 1;
    }

    else
    {
      v28 = *(v117 + 72);
      v5 = *v119 + v28 * v27;
      v115 = *v119;
      v29 = v115;
      sub_1D61B9368(v115 + v28 * v27, v22, sub_1D61B91E4);
      v30 = v29 + v28 * v26;
      v31 = v26;
      v32 = v121;
      sub_1D61B9368(v30, v121, sub_1D61B91E4);
      LODWORD(v116) = sub_1D725883C();
      sub_1D61B9308(v32, sub_1D61B91E4);
      sub_1D61B9308(v22, sub_1D61B91E4);
      v107 = v31;
      v33 = v31 + 2;
      v118 = v28;
      v34 = v115 + v28 * (v31 + 2);
      while (v23 != v33)
      {
        sub_1D61B9368(v34, v22, sub_1D61B91E4);
        v35 = v121;
        sub_1D61B9368(v5, v121, sub_1D61B91E4);
        v36 = sub_1D725883C() & 1;
        sub_1D61B9308(v35, sub_1D61B91E4);
        sub_1D61B9308(v22, sub_1D61B91E4);
        ++v33;
        v34 += v118;
        v5 += v118;
        if ((v116 & 1) != v36)
        {
          v23 = v33 - 1;
          break;
        }
      }

      v26 = v107;
      a4 = v108;
      if (v116)
      {
        if (v23 < v107)
        {
          goto LABEL_125;
        }

        if (v107 < v23)
        {
          v106 = v6;
          v37 = v118 * (v23 - 1);
          v38 = v23;
          v39 = v23 * v118;
          v116 = v23;
          v40 = v107;
          v41 = v107;
          v42 = v107 * v118;
          do
          {
            if (v40 != --v38)
            {
              v43 = *v119;
              if (!*v119)
              {
                goto LABEL_131;
              }

              v5 = v43 + v42;
              sub_1D5BE748C(v43 + v42, v112, sub_1D61B91E4);
              if (v42 < v37 || v5 >= v43 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D5BE748C(v112, v43 + v37, sub_1D61B91E4);
            }

            ++v40;
            v37 -= v118;
            v39 -= v118;
            v42 += v118;
          }

          while (v40 < v38);
          v6 = v106;
          a4 = v108;
          v26 = v41;
          v23 = v116;
        }
      }
    }

    v44 = v119[1];
    if (v23 < v44)
    {
      if (__OFSUB__(v23, v26))
      {
        goto LABEL_124;
      }

      if (v23 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_126;
        }

        if ((v26 + a4) >= v44)
        {
          v45 = v119[1];
        }

        else
        {
          v45 = v26 + a4;
        }

        if (v45 < v26)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v23 != v45)
        {
          break;
        }
      }
    }

    v24 = v23;
    if (v23 < v26)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = v113;
    }

    else
    {
      v25 = sub_1D698BA94(0, *(v113 + 2) + 1, 1, v113);
    }

    a4 = *(v25 + 2);
    v46 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v25 = sub_1D698BA94((v46 > 1), a4 + 1, 1, v25);
    }

    *(v25 + 2) = v5;
    v47 = &v25[16 * a4];
    *(v47 + 4) = v26;
    *(v47 + 5) = v24;
    v48 = *v109;
    if (!*v109)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v25 + 4);
          v51 = *(v25 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_112;
          }

          v66 = &v25[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_115;
          }

          v72 = &v25[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_119;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v25[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_114;
        }

        v79 = &v25[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_117;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v119)
        {
          goto LABEL_130;
        }

        v87 = v25;
        v88 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v49 + 40];
        sub_1D61B7FD4(*v119 + *(v117 + 72) * v88, *v119 + *(v117 + 72) * *&v25[16 * v49 + 32], *v119 + *(v117 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v88)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1D62FF50C(v87);
        }

        if (a4 >= *(v87 + 2))
        {
          goto LABEL_109;
        }

        v89 = &v87[16 * a4];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v123 = v87;
        sub_1D62FF480(v49);
        v25 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v25[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_110;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_111;
      }

      v61 = &v25[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_113;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_116;
      }

      if (v65 >= v57)
      {
        v83 = &v25[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_120;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = v119[1];
    a4 = v108;
    if (v24 >= v23)
    {
      goto LABEL_95;
    }
  }

  v106 = v6;
  v90 = v23;
  v91 = v26;
  v92 = *v119;
  v93 = *(v117 + 72);
  v94 = *v119 + v93 * (v23 - 1);
  v95 = -v93;
  v107 = v91;
  v96 = v91 - v23;
  v116 = v90;
  v110 = v93;
  v111 = v45;
  v5 = v92 + v90 * v93;
LABEL_85:
  v114 = v5;
  v115 = v96;
  v118 = v94;
  while (1)
  {
    sub_1D61B9368(v5, v22, sub_1D61B91E4);
    v97 = v121;
    sub_1D61B9368(v94, v121, sub_1D61B91E4);
    a4 = sub_1D725883C();
    sub_1D61B9308(v97, sub_1D61B91E4);
    sub_1D61B9308(v22, sub_1D61B91E4);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v24 = v111;
      v94 = v118 + v110;
      v96 = v115 - 1;
      v5 = v114 + v110;
      if (++v116 != v111)
      {
        goto LABEL_85;
      }

      v6 = v106;
      v26 = v107;
      if (v111 < v107)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v92)
    {
      break;
    }

    a4 = sub_1D61B91E4;
    v98 = v120;
    sub_1D5BE748C(v5, v120, sub_1D61B91E4);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5BE748C(v98, v94, sub_1D61B91E4);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1D61B7FD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1D61B91E4();
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = &v37 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v50 = a1;
  v49 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v19;
    if (v19 >= 1)
    {
      v26 = -v15;
      v27 = a4 + v19;
      v41 = a1;
      v42 = a4;
      v40 = -v15;
      do
      {
        v38 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v43 = v28;
        v44 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v38;
            goto LABEL_59;
          }

          v39 = v25;
          v31 = a3 + v26;
          v32 = v27 + v26;
          v33 = v45;
          sub_1D61B9368(v32, v45, sub_1D61B91E4);
          v34 = v46;
          sub_1D61B9368(v29, v46, sub_1D61B91E4);
          v35 = sub_1D725883C();
          sub_1D61B9308(v34, sub_1D61B91E4);
          sub_1D61B9308(v33, sub_1D61B91E4);
          if (v35)
          {
            break;
          }

          v25 = v32;
          if (a3 < v27 || v31 >= v27)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v41;
          }

          else
          {
            v36 = a3 == v27;
            a3 = v31;
            a1 = v41;
            if (!v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          v28 = v43;
          v30 = v32 > v42;
          v29 = v44;
          v26 = v40;
          if (!v30)
          {
            a2 = v43;
            goto LABEL_58;
          }
        }

        if (a3 < v43 || v31 >= v43)
        {
          a3 = v31;
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          a1 = v41;
          v25 = v39;
        }

        else
        {
          v36 = a3 == v43;
          a3 = v31;
          a2 = v44;
          v26 = v40;
          a1 = v41;
          v25 = v39;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v42);
    }

LABEL_58:
    v50 = a2;
    v48 = v25;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v18;
    v48 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        v21 = a3;
        v22 = v45;
        sub_1D61B9368(a2, v45, sub_1D61B91E4);
        v23 = v46;
        sub_1D61B9368(a4, v46, sub_1D61B91E4);
        v24 = sub_1D725883C();
        sub_1D61B9308(v23, sub_1D61B91E4);
        sub_1D61B9308(v22, sub_1D61B91E4);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v15;
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v15;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v50 = a1;
      }

      while (a4 < v44 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D62FF72C(&v50, &v49, &v48);
}