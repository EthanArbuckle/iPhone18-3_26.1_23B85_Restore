uint64_t Sequence.scoredItems<A>()(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  return sub_1D6EBA4D4(sub_1D61D0CC4, v9, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
}

id sub_1D61D0B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_unknownObjectRetain() scoreProfile];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

BOOL _s8NewsFeed0B14ScoredHeadlineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = [*a1 articleID];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [v4 articleID];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_1D72646CC();

  result = 0;
  if (v14)
  {
LABEL_8:
    [v2 sortingScore];
    v17 = v16;
    [v3 sortingScore];
    return v17 == v18;
  }

  return result;
}

unint64_t sub_1D61D0D1C(uint64_t a1)
{
  result = sub_1D61D0D44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61D0D44()
{
  result = qword_1EDF38640;
  if (!qword_1EDF38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF38640);
  }

  return result;
}

id SharingRecipeTextActivityItemSource.__allocating_init(recipe:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D61D2110(a1);

  return v4;
}

id SharingRecipeTextActivityItemSource.init(recipe:)(void *a1)
{
  v2 = sub_1D61D2110(a1);

  return v2;
}

uint64_t SharingRecipeTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);

  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName + 8);

  MEMORY[0x1DA6F9910](v3, v4);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v6;
  a1[1] = v7;
  return result;
}

void SharingRecipeTextActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D726203C();
  v7 = v6;
  if (a1)
  {
    v8 = sub_1D726207C();
    v10 = v9;
    if (v8 == sub_1D726207C() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v14 = sub_1D726207C();
        v16 = v15;
        if (v14 == sub_1D726207C() && v16 == v17)
        {
          goto LABEL_21;
        }

        v19 = sub_1D72646CC();
        v20 = a1;

        if (v19)
        {
LABEL_12:

LABEL_22:
          *a2 = 0u;
          *(a2 + 16) = 0u;
          return;
        }

        v30 = sub_1D726207C();
        v32 = v31;
        if (v30 == sub_1D726207C() && v32 == v33)
        {

LABEL_21:

          goto LABEL_22;
        }

        v34 = sub_1D72646CC();

        if (v34)
        {
          goto LABEL_12;
        }

        v35 = sub_1D726207C();
        v37 = v36;
        if (v35 == sub_1D726207C() && v37 == v38)
        {

LABEL_28:
          *(a2 + 24) = MEMORY[0x1E69E6158];

          *a2 = 0;
          *(a2 + 8) = 0xE000000000000000;
          return;
        }

        v39 = sub_1D72646CC();

        if (v39)
        {
          goto LABEL_28;
        }

        v40 = sub_1D726207C();
        v42 = v41;
        if (v40 == sub_1D726207C() && v42 == v43)
        {
        }

        else
        {
          v44 = sub_1D72646CC();

          if ((v44 & 1) == 0)
          {
            v52 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
            v56 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
            v57 = v52;

            MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
            v53 = v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName;
            v54 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
            v55 = *(v53 + 8);

            MEMORY[0x1DA6F9910](v54, v55);

            v49 = v56;
            v51 = v57;
            goto LABEL_35;
          }
        }

        v45 = type metadata accessor for SharingHTMLBuilder();
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0xE000000000000000;
        swift_beginAccess();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0xE000000000000000;
        v58 = v45;
        v59 = &off_1F51B62F0;
        v56 = v46;
        sub_1D61D17E4(&v56);
        v47 = v58;
        v48 = v59;
        __swift_project_boxed_opaque_existential_1(&v56, v58);
        v49 = (v48[8])(v47, v48);
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_35:
        *(a2 + 24) = MEMORY[0x1E69E6158];

        *a2 = v49;
        *(a2 + 8) = v51;
        return;
      }
    }

    v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
    v56 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
    v57 = v24;

    v22 = 10;
    v23 = 0xE100000000000000;
  }

  else
  {

    v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
    v56 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
    v57 = v21;

    v22 = 2108704;
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1DA6F9910](v22, v23);
  v25 = v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName;
  v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
  v27 = *(v25 + 8);

  MEMORY[0x1DA6F9910](v26, v27);

  v28 = v56;
  v29 = v57;
  *(a2 + 24) = MEMORY[0x1E69E6158];
  *a2 = v28;
  *(a2 + 8) = v29;
}

Swift::String __swiftcall SharingRecipeTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SharingRecipeTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingRecipeTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D61D17E4(void *a1)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v100 = &v88 - v8;
  v96 = sub_1D72585BC();
  v9 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v10);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v88 - v14;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v110, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v111;
  v18 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  v94 = v1;
  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
  v21 = *(v18 + 24);

  v21(v107, v20, v19, v17, v18);

  v22 = v108;
  v23 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  (*(v23 + 16))(v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v110);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt);
  v27 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt + 8);
  v28 = *(v25 + 56);

  v28(v110, v26, v27, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v111;
  v30 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  v31 = *(v30 + 16);
  v93 = a1;
  v31(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_1D5B68374(a1, v107);
  __swift_project_boxed_opaque_existential_1(v107, v108);
  DynamicType = swift_getDynamicType();
  v33 = v109;
  __swift_destroy_boxed_opaque_existential_1(v107);
  v34 = *(v33 + 8);
  v111 = DynamicType;
  v112 = v33;
  __swift_allocate_boxed_opaque_existential_1(v110);
  v34(DynamicType, v33);
  v36 = v111;
  v35 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v89 = ObjCClassFromMetadata;
  v38 = [v88 bundleForClass_];
  v39 = sub_1D725811C();
  v41 = v40;

  (*(v35 + 56))(v107, v39, v41, v36, v35);

  v42 = v108;
  v43 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  (*(v43 + 16))(v104, v42, v43);
  v44 = v106;
  v92 = v105;
  v91 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v45 = OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL;
  v46 = v9;
  v47 = *(v9 + 16);
  v48 = v94;
  v49 = v95;
  v50 = v96;
  v47(v95, v94 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL, v96);
  v90 = sub_1D72583DC();
  v52 = v51;
  v99 = v46;
  v53 = v50;
  v54 = *(v46 + 8);
  v54(v49, v53);
  v55 = v48 + v45;
  v56 = v97;
  v47(v97, v55, v53);
  v57 = v53;
  v58 = sub_1D72583DC();
  v60 = v59;
  v54(v56, v57);
  (*(v44 + 48))(&v101, v90, v52, v58, v60, v92, v44);
  v61 = v93;

  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_1D5B63F14(&v101, v110);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v107);
  sub_1D5B63F14(v61, v107);
  v62 = v108;
  v63 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  sub_1D5B68374(v110, v104);
  (*(v63 + 32))(v104, v62, v63);
  sub_1D5B6EE3C(v104, &qword_1EC884F40, sub_1D5EB8714);
  __swift_destroy_boxed_opaque_existential_1(v107);
  v64 = [objc_opt_self() nss_MarketingPageURL];
  if (v64)
  {
    v65 = v98;
    v66 = v64;
    sub_1D72584EC();

    v67 = 0;
    v68 = v65;
  }

  else
  {
    v68 = v98;
    v67 = 1;
  }

  v69 = v99;
  (*(v99 + 56))(v68, v67, 1, v57);
  v70 = v68;
  v71 = v100;
  sub_1D5EB8540(v70, v100);
  if ((*(v69 + 48))(v71, 1, v57) == 1)
  {
    sub_1D5B6EE3C(v71, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v72 = sub_1D72583DC();
    v74 = v73;
    v54(v71, v57);
    v75 = *(v61 + 24);
    v76 = *(v61 + 32);
    __swift_project_boxed_opaque_existential_1(v61, v75);
    (*(v76 + 16))(v107, v75, v76);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v77 = v108;
    v78 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v79 = [v88 bundleForClass_];
    v80 = sub_1D725811C();
    v82 = v81;

    (*(v78 + 56))(v104, v80, v82, v77, v78);

    v83 = v105;
    v84 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v84 + 56))(&v101, 32, 0xE100000000000000, v83, v84);
    v85 = v102;
    v86 = v103;
    __swift_project_boxed_opaque_existential_1(&v101, v102);
    (*(v86 + 48))(0x654E20656C707041, 0xEA00000000007377, v72, v74, v85, v86);

    __swift_destroy_boxed_opaque_existential_1(&v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

id sub_1D61D2110(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D72585BC();
  v34 = *(v4 - 8);
  v35 = v4;
  *&v6 = MEMORY[0x1EEE9AC00](v4, v5).n128_u64[0];
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v36 = a1;
  v13 = [a1 articles];
  sub_1D5B5D6A0();
  v14 = sub_1D726267C();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = ObjectType;
    v17 = MEMORY[0x1DA6FB460](0, v14);
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = ObjectType;
    v17 = *(v14 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v18 = [v17 identifier];
    swift_unknownObjectRelease();
    ObjectType = v16;
    if (v18)
    {
LABEL_13:
      v19 = [objc_opt_self() nss:v12 NewsURLForRecipeID:v18 articleID:?];

      sub_1D72584EC();
      (*(v34 + 32))(&v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL], v8, v35);
      v20 = v36;
      v21 = [v36 title];
      v22 = sub_1D726207C();
      v24 = v23;

      *v9 = v22;
      v9[1] = v24;

      v25 = [objc_msgSend(v20 sourceChannel)];
      swift_unknownObjectRelease();
      v26 = sub_1D726207C();
      v28 = v27;

      *v10 = v26;
      v10[1] = v28;

      v29 = [v20 shortExcerpt];
      v30 = sub_1D726207C();
      v32 = v31;

      *v11 = v30;
      v11[1] = v32;

      v37.receiver = v1;
      v37.super_class = ObjectType;
      return objc_msgSendSuper2(&v37, sel_init);
    }

    sub_1D726207C();
    v18 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed35SharingRecipeTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0()
{
  v1 = v0;

  v2 = sub_1D726213C();

  MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
  v3 = v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v5 = *(v3 + 8);

  MEMORY[0x1DA6F9910](v4, v5);

  return v2;
}

uint64_t type metadata accessor for SharingRecipeTextActivityItemSource()
{
  result = qword_1EC884F28;
  if (!qword_1EC884F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61D258C()
{
  result = sub_1D72585BC();
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

uint64_t FormatTemperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264AEC();
    __swift_project_boxed_opaque_existential_1(&v29, v32);
    sub_1D61D2B9C();
    sub_1D726472C();

    v21 = 0xC080804000uLL >> (8 * v28);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v22 = 0;
    v23 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    if (v13)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5112270;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v8 + 8))(v11, v7);
          goto LABEL_9;
        }
      }
    }

    sub_1D61D2B9C();
    v29 = 0;
    v30 = 0;
    sub_1D726431C();
    if (v28 <= 1u)
    {
      if (v28)
      {
        v28 = xmmword_1D7279980;
        sub_1D61D3AF8();
        sub_1D726427C();
        if (v31 == 255)
        {
          v23 = 1;
        }

        else
        {
          v23 = v29;
        }

        if (v31 == 255)
        {
          v22 = 0;
        }

        else
        {
          v22 = v30;
        }

        v27 = (v31 != 255) & v31;
        (*(v8 + 8))(v11, v7);
        LOBYTE(v21) = v27 | 0x40;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D61D3AF8();
        sub_1D726427C();
        if (v31 == 255)
        {
          v23 = 1;
        }

        else
        {
          v23 = v29;
        }

        if (v31 == 255)
        {
          v22 = 0;
        }

        else
        {
          v22 = v30;
        }

        LOBYTE(v21) = (v31 != 255) & v31;
        (*(v8 + 8))(v11, v7);
      }
    }

    else if (v28 - 2 >= 2)
    {
      v28 = xmmword_1D7279980;
      sub_1D61D3AF8();
      sub_1D726427C();
      if (v31 == 255)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      if (v31 == 255)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30;
      }

      v26 = (v31 != 255) & v31;
      (*(v8 + 8))(v11, v7);
      LOBYTE(v21) = v26 | 0xC0;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D61D3AF8();
      sub_1D726427C();
      if (v31 == 255)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      if (v31 == 255)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30;
      }

      v25 = (v31 != 255) & v31;
      (*(v8 + 8))(v11, v7);
      LOBYTE(v21) = v25 | 0x80;
    }
  }

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D61D2B9C()
{
  result = qword_1EDF10AD8;
  if (!qword_1EDF10AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AD8);
  }

  return result;
}

uint64_t FormatTemperature.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  if (sub_1D602437C(v13, v11, &type metadata for FormatVersions.Sydro, v12, &off_1F51F6C38))
  {
    v19 = v8;
    v20 = v9;
    v21 = v10;
    return sub_1D61D2DDC(a1);
  }

  else
  {
    v15 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCD18);
    (*(*(v16 - 8) + 16))(v7, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v7, sub_1D5B4AA6C, 0, v15, v22);
    result = sub_1D6079974(v7);
    if (!v2)
    {
      v19 = v8;
      v20 = v9;
      v21 = v10;
      return sub_1D61D3020(a1);
    }
  }

  return result;
}

uint64_t sub_1D61D2DDC(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  v11 = v10 >> 6;
  if (v10 >> 6 > 1)
  {
    if (v11 != 2)
    {
      LOBYTE(v11) = 4;
    }
  }

  else
  {
    if (!v11)
    {
      LOBYTE(v16) = 0;
      goto LABEL_8;
    }

    LOBYTE(v11) = 1;
  }

  LOBYTE(v16) = v11;
LABEL_8:
  sub_1D61D4030();
  v17 = 0;
  v18 = 0;
  sub_1D726443C();
  if (!v2)
  {
    if (v10)
    {
      v12 = v15;

      sub_1D5D2F2C4(v9, v12, 1);
      sub_1D5D2F2C4(1, 0, 0);
LABEL_12:
      v17 = v9;
      v18 = v12;
      v19 = v10 & 1;
      v16 = xmmword_1D7279980;
      sub_1D61D4084();
      sub_1D726443C();
      return (*(v20 + 8))(v8, v5);
    }

    v12 = v15;
    sub_1D5D2F2C4(v9, v15, 0);
    sub_1D5D2F2C4(1, 0, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return (*(v20 + 8))(v8, v5);
}

uint64_t sub_1D61D3020(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v10 = v9 >> 6;
  if (v9 >> 6 > 1)
  {
    if (v10 == 2)
    {
      if (v9)
      {
        goto LABEL_14;
      }

      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 3;
    }

    else
    {
      if (v9)
      {
        goto LABEL_14;
      }

      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 4;
    }

    v20 = v11;
    goto LABEL_21;
  }

  if (!v10)
  {
    if ((v9 & 1) == 0)
    {
      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if (v7)
      {
        v20 = 0;
LABEL_21:
        __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
        sub_1D61D4030();
        sub_1D726476C();
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      goto LABEL_15;
    }

LABEL_14:

    sub_1D5D2F2C4(1, 0, 0);
    sub_1D5D2F2C4(v7, v8, 1);
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_14;
  }

  sub_1D5D2F2C4(1, 0, 0);
  sub_1D5D2F2C4(v7, v8, 0);
  if (v7)
  {
    v20 = 1;
    goto LABEL_21;
  }

LABEL_15:
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDE0);
  (*(*(v14 - 8) + 16))(v6, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v6, sub_1D5B4AA6C, 0, v12, v13);
  sub_1D6079974(v6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D61D331C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61D3410()
{
  sub_1D72621EC();
}

uint64_t sub_1D61D34F0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61D35E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D61D3FE4();
  *a1 = result;
  return result;
}

void sub_1D61D3610(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065636E657265;
  v4 = 0x6665725072657375;
  v5 = 0xEA00000000007469;
  v6 = 0x65686E6572686166;
  v7 = 0xE900000000000074;
  v8 = 0x6965686E65726166;
  if (v2 != 3)
  {
    v8 = 0x6E69766C656BLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x737569736C6563;
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

double static FormatTemperature.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  return result;
}

void sub_1D61D37BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_1D7258AAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      v15 = [objc_opt_self() fahrenheit];
    }

    else
    {
      v15 = [objc_opt_self() kelvin];
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
      v10 = v7;
      sub_1D7258A4C();
      v11 = sub_1D725898C();
      if (!v11)
      {
        v12 = sub_1D72589CC();
        v13 = objc_opt_self();
        if (v12)
        {
          v14 = [v13 celsius];
        }

        else
        {
          v14 = [v13 fahrenheit];
        }

        v11 = v14;
      }

      v17 = v11;
      sub_1D5B7A110();
      sub_1D725793C();

      (*(v5 + 8))(v9, v10);
      return;
    }

    v15 = [objc_opt_self() celsius];
  }

  v19 = v15;
  sub_1D5B7A110();
  sub_1D725793C();
  v16 = v19;
}

id sub_1D61D39D8()
{
  v0 = sub_1D7258AAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1D72589EC();
  v6 = sub_1D72589DC();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  result = [v5 setMaximumFractionDigits_];
  qword_1EDF10AD0 = v5;
  return result;
}

unint64_t sub_1D61D3AF8()
{
  result = qword_1EDF16580;
  if (!qword_1EDF16580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16580);
  }

  return result;
}

uint64_t _s8NewsFeed17FormatTemperatureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0xC0) == 0x80)
      {
        goto LABEL_4;
      }
    }

    else if (v7 > 0xBF)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1D5E1DCD0(*a1);
    sub_1D5E1DCD0(v6);
    sub_1D5E1E15C(v3, v2, v4);
    sub_1D5E1E15C(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  if (v8)
  {
    if ((v7 & 0xC0) == 0x40)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (v7 >= 0x40)
  {
    goto LABEL_11;
  }

LABEL_4:
  v14 = *a1;
  v15 = v2;
  v16 = v4 & 1;
  v11 = v6;
  v12 = v5;
  v13 = v7 & 1;
  sub_1D5E1DCD0(v6);
  sub_1D5E1DCD0(v3);
  sub_1D5E1DCD0(v3);
  sub_1D5E1DCD0(v6);
  v9 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v14, &v11);
  sub_1D5E1E15C(v3, v2, v4);
  sub_1D5E1E15C(v6, v5, v7);
  sub_1D5D2F2C4(v11, v12, v13);
  sub_1D5D2F2C4(v14, v15, v16);
  return v9 & 1;
}

unint64_t sub_1D61D3CCC(void *a1)
{
  a1[1] = sub_1D61D3D04();
  a1[2] = sub_1D61D3D58();
  result = sub_1D61D3DAC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61D3D04()
{
  result = qword_1EDF10AB0;
  if (!qword_1EDF10AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AB0);
  }

  return result;
}

unint64_t sub_1D61D3D58()
{
  result = qword_1EDF10AB8;
  if (!qword_1EDF10AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AB8);
  }

  return result;
}

unint64_t sub_1D61D3DAC()
{
  result = qword_1EC884F48;
  if (!qword_1EC884F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884F48);
  }

  return result;
}

uint64_t sub_1D61D3E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61D3E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_1D61D3EF0()
{
  result = qword_1EC884F50;
  if (!qword_1EC884F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884F50);
  }

  return result;
}

unint64_t sub_1D61D3F44()
{
  result = qword_1EDF10AE0;
  if (!qword_1EDF10AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AE0);
  }

  return result;
}

unint64_t sub_1D61D3F98()
{
  result = qword_1EDF3C740;
  if (!qword_1EDF3C740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF3C740);
  }

  return result;
}

uint64_t sub_1D61D3FE4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D61D4030()
{
  result = qword_1EDF10AE8;
  if (!qword_1EDF10AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AE8);
  }

  return result;
}

unint64_t sub_1D61D4084()
{
  result = qword_1EDF16588;
  if (!qword_1EDF16588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16588);
  }

  return result;
}

uint64_t sub_1D61D40D8(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  sub_1D5D57DE0(a1, v25 - v13);
  sub_1D5D57DE0(v14, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57F60(v14, sub_1D5C2AB28);
      sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D5D57F60(&v10[*(v16 + 48)], type metadata accessor for FormatMetadata);
      v17 = type metadata accessor for FormatPackage;
      v18 = v10;
    }

    else
    {
      v17 = sub_1D5C2AB28;
      v18 = v14;
    }

    sub_1D5D57F60(v18, v17);
    return 0;
  }

  else
  {
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v20 = *(v19 + 48);
    v21 = *(v3 + 32);
    v21(v6, v10, v2);
    sub_1D61D4948();
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    v21((v23 + v22), v6, v2);
    sub_1D5D57F60(v14, sub_1D5C2AB28);
    sub_1D5D57F60(&v10[v20], type metadata accessor for FormatMetadata);
    v25[0] = v23;
    sub_1D725B86C();

    return v25[1];
  }
}

uint64_t sub_1D61D43CC(uint64_t a1)
{
  sub_1D7264A0C();
  v2 = *(a1 + 16);
  MEMORY[0x1DA6FC0B0](v2);
  if (v2)
  {
    v3 = *(sub_1D72585BC() - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_1D5B6CDCC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
    do
    {
      sub_1D7261E8C();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61D44E8()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  result = MEMORY[0x1DA6FC0B0](*(*v0 + 16), v4);
  v9 = *(v7 + 16);
  if (v9)
  {
    v12 = *(v2 + 16);
    v10 = v2 + 16;
    v11 = v12;
    v13 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v1);
      sub_1D5B6CDCC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      result = (*(v10 - 8))(v6, v1);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1D61D465C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v28 - v16;
  sub_1D5D57DE0(a1, v28 - v16);
  sub_1D5D57DE0(v17, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57F60(v17, sub_1D5C2AB28);
      sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D5D57F60(&v13[*(v19 + 48)], type metadata accessor for FormatMetadata);
      v20 = type metadata accessor for FormatPackage;
      v21 = v13;
    }

    else
    {
      v20 = sub_1D5C2AB28;
      v21 = v17;
    }

    sub_1D5D57F60(v21, v20);
  }

  else
  {
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v28[1] = v2;
    v23 = *(v22 + 48);
    v24 = *(v6 + 32);
    v24(v9, v13, v5);
    sub_1D61D4948();
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    v24((v26 + v25), v9, v5);
    sub_1D5D57F60(v17, sub_1D5C2AB28);
    sub_1D5D57F60(&v13[v23], type metadata accessor for FormatMetadata);
    v28[2] = v26;
    v28[3] = a2;

    sub_1D725B87C();
  }

  return a2;
}

void sub_1D61D4948()
{
  if (!qword_1EDF19B98)
  {
    sub_1D72585BC();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B98);
    }
  }
}

uint64_t sub_1D61D4B98@<X0>(char a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_1D7259F1C();
  v9 = v8;
  sub_1D7259C1C();
  v11 = v10;
  type metadata accessor for FormatContextLayoutOptions();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = a2;
  *(v12 + 48) = 0;
  *(v12 + 56) = a3;
  *a4 = v12;
}

uint64_t sub_1D61D4C3C()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD000000000000066;
  v0[1] = 0x80000001D73C3700;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D61D4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D725A7EC();

  FormatOptionCollection.subscript.getter(a1, a2, a3);
}

uint64_t type metadata accessor for FormatDecorationContext()
{
  result = qword_1EDF27630;
  if (!qword_1EDF27630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D61D4E00()
{
  type metadata accessor for FormatPackageInventory();
  if (v0 <= 0x3F)
  {
    sub_1D5BFCB14();
    if (v1 <= 0x3F)
    {
      sub_1D7259F5C();
      if (v2 <= 0x3F)
      {
        sub_1D7259CFC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FormatOptionCollection();
          if (v4 <= 0x3F)
          {
            sub_1D5D23AA4();
            if (v5 <= 0x3F)
            {
              sub_1D5B7EF80();
              if (v6 <= 0x3F)
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

id sub_1D61D4F20()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController);
  }

  else
  {
    v4 = v0;
    sub_1D61D4FFC();
    type metadata accessor for DebugFormatWorkspaceTree();
    sub_1D61DE99C(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree);
    sub_1D7260F8C();
    sub_1D61DE9E4();
    v6 = objc_allocWithZone(v5);
    v7 = sub_1D726126C();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1D61D4FFC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model);
  }

  else
  {
    type metadata accessor for DebugFormatWorkspaceTree();
    swift_allocObject();

    v2 = sub_1D71A0E70(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D61D5098()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
    type metadata accessor for DebugFormatUploadPresenter();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D61D5118(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_1D61D5180();
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1D61D5180()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

void sub_1D61D5278()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doExport];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1D61D536C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doConfigure];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_1D61D5460(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor] = a1;
  v44.receiver = v1;
  v44.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  swift_beginAccess();
  v7 = v6;

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B31C();

  v45[10] = v40;
  v45[11] = v41;
  v45[12] = v42;
  v46 = v43;
  v45[6] = v36;
  v45[7] = v37;
  v45[8] = v38;
  v45[9] = v39;
  v45[2] = v32;
  v45[3] = v33;
  v45[4] = v34;
  v45[5] = v35;
  v45[0] = v30;
  v45[1] = v31;
  if (sub_1D5DEA380(v45) == 1)
  {
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    sub_1D5F0B7F0(&v16);
  }

  else
  {
    v12 = BYTE4(v42);
    v13 = BYTE3(v42);
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    sub_1D5F0B7F0(&v16);
    sub_1D61D4FFC();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    if (v12)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | v13;
    sub_1D5FEEEB0(v14, v8 | v13);
    v10 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v10;
    sub_1D72600DC();
    LOWORD(v15) = v9;

    sub_1D725B32C();
  }

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725974C();

  sub_1D725971C();

  return v7;
}

uint64_t sub_1D61D5934(uint64_t a1, void *a2)
{
  v2 = *a2;
  sub_1D61D4FFC();
  if (v2[2])
  {

    v3 = v2;
  }

  else
  {
    v3 = &unk_1F5111568;
  }

  sub_1D62DCC68(v3);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  if ((v8 & 0xFF00) != 0x200)
  {
    if (v2[2])
    {

      v5 = v2;
    }

    else
    {
      v5 = &unk_1F5111568;
    }

    v6 = sub_1D62DCC68(v5);

    v7 = sub_1D6185778(v8 & 0x1FF, v6);

    if ((v7 & 1) == 0)
    {
      if (v2[2])
      {

        if (v2[2])
        {
LABEL_11:

          sub_1D725B32C();
        }
      }

      else if (qword_1F5111578)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1D61D5B3C()
{
  sub_1D61D4FFC();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1D72600DC();
}

uint64_t sub_1D61D5BAC(uint64_t a1)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v120 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugFormatWorkspace();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v121 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v99 - v11;
  v118 = type metadata accessor for DebugFormatWorkspaceGroup();
  v131 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v13);
  v130 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  v99 = sub_1D61D4FFC();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v141 = MEMORY[0x1E69E7CC0];
  v101 = v6;
  v119 = (v6 + 48);
  v104 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor;
  v102 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model;
  v100 = 0x80000001D73C9470;
  v129 = v5;
  v125 = v12;
  while (2)
  {
    v107 = v15;
    v20 = *(&unk_1F51122C0 + v15 + 32);
    v135 = *(v105 + v104);
    v21 = *(v135 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
    swift_beginAccess();
    v22 = *(v21 + 112);
    if (!*(v22 + 16))
    {
      goto LABEL_6;
    }

    v23 = sub_1D5BEFB80(v20);
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }

    v25 = *(*(v22 + 56) + 8 * v23);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    v115 = v139;
    v26 = *(v25 + 16);
    if (v26)
    {
      LODWORD(v134) = v20;
      v136 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v27 = *(v101 + 80);
      v133 = v25;
      v28 = v25 + ((v27 + 32) & ~v27);
      v29 = *(v101 + 72);
      do
      {
        sub_1D61DE5F0(v28, v12, type metadata accessor for DebugFormatWorkspace);
        v33 = &v12[*(v5 + 20)];
        v34 = *v33;
        v35 = *(v33 + 1);

        v36 = v120;
        sub_1D725B31C();
        v5 = v129;

        v37 = v36;

        if ((*v119)(v36, 1, v5))
        {
          sub_1D5CEC940(v36, sub_1D60CB67C);
          v30 = 0;
        }

        else
        {
          v38 = v36;
          v39 = v121;
          sub_1D61DE5F0(v38, v121, type metadata accessor for DebugFormatWorkspace);
          sub_1D5CEC940(v37, sub_1D60CB67C);
          v40 = (v39 + *(v5 + 20));
          v41 = *v40;
          v42 = v40[1];

          sub_1D5CEC940(v39, type metadata accessor for DebugFormatWorkspace);
          if (v34 == v41 && v35 == v42)
          {

            v30 = 1;
          }

          else
          {
            v30 = sub_1D72646CC();
          }

          v5 = v129;
        }

        v12 = v125;
        v31 = v121;
        sub_1D61DE5F0(v125, v121, type metadata accessor for DebugFormatWorkspace);
        type metadata accessor for DebugFormatWorkspaceTreeWorkspace();
        v32 = swift_allocObject();
        sub_1D61DE5F0(v31, v32 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, type metadata accessor for DebugFormatWorkspace);
        swift_beginAccess();
        LOBYTE(v138) = v30 & 1;
        sub_1D726009C();
        swift_endAccess();
        sub_1D5CEC940(v31, type metadata accessor for DebugFormatWorkspace);
        sub_1D5CEC940(v12, type metadata accessor for DebugFormatWorkspace);
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v28 += v29;
        --v26;
      }

      while (v26);

      v114 = v136;
      LODWORD(v20) = v134;
    }

    else
    {

      v114 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for DebugFormatWorkspaceTreeKindGroup();
    v44 = swift_allocObject();
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v46 = 0xD000000000000011;
        v45 = v100;
      }

      else
      {
        v46 = 0x726F572064656546;
        v45 = 0xEF7365636170736BLL;
      }
    }

    else if (v20)
    {
      v46 = 0x736B726F5720794DLL;
      v45 = 0xED00007365636170;
    }

    else
    {
      v45 = 0xEA00000000007365;
      v46 = 0x636170736B726F57;
    }

    v47 = v114;
    *(v44 + 16) = v46;
    *(v44 + 24) = v45;
    *(v44 + 32) = v135;
    v103 = v44;
    *(v44 + 40) = v20;
    v138 = MEMORY[0x1E69E7CC0];
    if (v47 >> 62)
    {
      v48 = sub_1D7263BFC();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v48)
    {
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_3;
    }

    v50 = 0;
    v111 = v114 & 0xC000000000000001;
    v110 = v114 & 0xFFFFFFFFFFFFFF8;
    v109 = v114 + 32;
    v112 = v115 + 32;
    v108 = v48;
    do
    {
      if (v111)
      {
        v98 = v50;
        result = MEMORY[0x1DA6FB460](v50);
        v117 = result;
        v52 = __OFADD__(v98, 1);
        v53 = v98 + 1;
        if (v52)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v50 >= *(v110 + 16))
        {
          goto LABEL_99;
        }

        v51 = v50;
        v117 = *(v109 + 8 * v50);

        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          return result;
        }
      }

      v116 = v53;
      v54 = *(v115 + 16);
      if (!v54)
      {
        goto LABEL_85;
      }

      v55 = *v112;
      v56 = *(*v112 + 16);
      if (!v56)
      {
        goto LABEL_85;
      }

      v127 = v117 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
      v57 = 1;
      v106 = v54;
      do
      {
        v113 = v57;
        v124 = v55 + 32;

        v58 = 0;
        v59 = 1;
        v123 = result;
        v122 = v56;
        while (1)
        {
          v60 = v58 + 1;
          if (v59)
          {
            break;
          }

          if (v60 == v56)
          {

            goto LABEL_79;
          }

          v59 = 0;
LABEL_45:
          v58 = v60;
          if (v60 >= *(result + 16))
          {
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        v128 = v58 + 1;
        v61 = (v124 + 16 * v58);
        v63 = *v61;
        v62 = v61[1];
        v139 = sub_1D726210C();
        v140 = v64;
        v134 = v63;
        v136 = v63;
        v137 = v62;
        sub_1D5BF4D9C();
        v135 = v62;

        LOBYTE(v63) = sub_1D7263ABC();

        if (v63)
        {
LABEL_42:

          v56 = v122;
          v60 = v128;
          if (v128 == v122)
          {

            v5 = v129;
            v12 = v125;
            break;
          }

          v59 = 1;
          v5 = v129;
          v12 = v125;
          goto LABEL_44;
        }

        v65 = *(v127 + *(v129 + 32));
        if (v65 >> 62)
        {
          result = sub_1D7263BFC();
          v16 = result;
          if (result)
          {
LABEL_50:
            v66 = 0;
            v132 = v65 & 0xC000000000000001;
            v126 = v65 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v132)
              {
                v69 = MEMORY[0x1DA6FB460](v66, v65);
                v70 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_93;
                }
              }

              else
              {
                if (v66 >= *(v126 + 16))
                {
                  goto LABEL_97;
                }

                v69 = *(v65 + 8 * v66 + 32);

                v70 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }
              }

              v71 = *(v69 + 16);
              v72 = v71 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v72 + 8))
              {
                v133 = v70;
                v73 = v134;
                v74 = v135;
                v139 = sub_1D726210C();
                v140 = v75;
                v136 = v73;
                v137 = v74;
                v76 = sub_1D7263ABC();

                if (v76)
                {
LABEL_41:

                  goto LABEL_42;
                }

                v77 = *(v69 + 16);
                v79 = *(v77 + 16);
                v78 = *(v77 + 24);
                v139 = v79;
                v140 = v78;
                v136 = v73;
                v137 = v74;
                v80 = sub_1D7263ABC();

                v70 = v133;
                if (v80)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v67 = *(v71 + 24);
                v139 = *(v71 + 16);
                v140 = v67;
                v136 = v134;
                v137 = v135;
                v68 = sub_1D7263ABC();

                if (v68)
                {
                  goto LABEL_42;
                }
              }

              ++v66;
            }

            while (v70 != v16);
          }
        }

        else
        {
          v16 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_50;
          }
        }

        v81 = *(v127 + *(v129 + 36));
        v82 = *(v81 + 16);
        if (v82)
        {
          v83 = 0;
          v84 = *(v118 + 20);
          v85 = v81 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
          while (v83 < *(v81 + 16))
          {
            v88 = v130;
            sub_1D61DE5F0(v85 + *(v131 + 72) * v83, v130, type metadata accessor for DebugFormatWorkspaceGroup);
            v89 = *(v88 + v84);

            sub_1D5CEC940(v88, type metadata accessor for DebugFormatWorkspaceGroup);
            if (v89)
            {
              v16 = *(v89 + 16);
              v90 = v16 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v90 + 8))
              {
                v91 = sub_1D726210C();
                v16 = v92;
                v139 = v91;
                v140 = v92;
                v136 = v134;
                v137 = v135;
                v93 = sub_1D7263ABC();

                if (v93)
                {
                  goto LABEL_41;
                }

                v94 = *(v89 + 16);
                v96 = *(v94 + 16);
                v95 = *(v94 + 24);
                v139 = v96;
                v140 = v95;
                v136 = v134;
                v137 = v135;
                v97 = sub_1D7263ABC();

                if (v97)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v86 = *(v16 + 24);
                v139 = *(v16 + 16);
                v140 = v86;
                v136 = v134;
                v137 = v135;
                v87 = sub_1D7263ABC();

                if (v87)
                {
                  goto LABEL_42;
                }
              }
            }

            if (v82 == ++v83)
            {
              goto LABEL_76;
            }
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_76:

        v56 = v122;
        v60 = v128;
        v12 = v125;
        if (v128 != v122)
        {
          v59 = 0;
          v5 = v129;
LABEL_44:
          result = v123;
          goto LABEL_45;
        }

        v5 = v129;
LABEL_79:
        if (v113 == v106)
        {

          goto LABEL_86;
        }

        if (v113 >= *(v115 + 16))
        {
          goto LABEL_100;
        }

        v55 = *(v112 + 8 * v113);
        v57 = v113 + 1;
        v56 = *(v55 + 16);
      }

      while (v56);
LABEL_85:
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      result = sub_1D7263EAC();
LABEL_86:
      v50 = v116;
    }

    while (v116 != v108);
    v17 = v138;
LABEL_3:

    v18 = v103;
    swift_beginAccess();
    v136 = v17;
    sub_1D61DE938(0, &qword_1EC885078, type metadata accessor for DebugFormatWorkspaceTreeWorkspace, MEMORY[0x1E69E62F8]);
    sub_1D726009C();
    swift_endAccess();
    *(v18 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces) = v114;
    swift_beginAccess();
    LOBYTE(v136) = 1;
    sub_1D726009C();
    v19 = swift_endAccess();
    MEMORY[0x1DA6F9CE0](v19);
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v16 = v141;
LABEL_6:
    v15 = v107 + 1;
    if (v107 != 3)
    {
      continue;
    }

    break;
  }

LABEL_95:
  swift_getKeyPath();
  swift_getKeyPath();
  v139 = v16;
  return sub_1D72600DC();
}

uint64_t sub_1D61D6B6C(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem);
  sub_1D61DE5F0(a2, v7, sub_1D60CB67C);
  v9 = type metadata accessor for DebugFormatWorkspace();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1D5CEC940(v7, sub_1D60CB67C);
    v10 = 0;
  }

  else
  {
    sub_1D62D7C2C();
    sub_1D5CEC940(v7, type metadata accessor for DebugFormatWorkspace);
    v10 = sub_1D61881BC(0);
  }

  [v8 setEnabled_];

  v11 = MEMORY[0x1DA6F9100](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v14[-16] = a1;
  *&v14[-8] = a2;
  sub_1D7260F4C();
}

uint64_t sub_1D61D6D70(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v12 - v9;
  sub_1D61D4FFC();
  sub_1D61DE5F0(a2, v10, sub_1D60CB67C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D61DE5F0(v10, v6, sub_1D60CB67C);
  sub_1D72600DC();
  return sub_1D5CEC940(v10, sub_1D60CB67C);
}

uint64_t sub_1D61D6EA8()
{
  sub_1D61D4FFC();

  v0 = sub_1D614F964();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v0;
  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_1D72600CC();

  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1D72600DC();
  }

  v2 = sub_1D7263BFC();
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_1D7263ECC();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v13 = v0 & 0xC000000000000001;
    do
    {
      if (v13)
      {
        v7 = MEMORY[0x1DA6FB460](v4, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1D72600CC();

      v10 = *(v7 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces);
      type metadata accessor for DebugFormatWorkspaceTreeKindGroup();
      v11 = swift_allocObject();
      v12 = v11;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v5 = 0xD000000000000011;
          v6 = 0x80000001D73C9470;
        }

        else
        {
          v5 = 0x726F572064656546;
          v6 = 0xEF7365636170736BLL;
        }
      }

      else if (v9)
      {
        v5 = 0x736B726F5720794DLL;
        v6 = 0xED00007365636170;
      }

      else
      {
        v6 = 0xEA00000000007365;
        v5 = 0x636170736B726F57;
      }

      ++v4;
      *(v11 + 16) = v5;
      *(v11 + 24) = v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;

      sub_1D6BCFC58(v10, v14);

      swift_beginAccess();
      sub_1D61DE938(0, &qword_1EC885078, type metadata accessor for DebugFormatWorkspaceTreeWorkspace, MEMORY[0x1E69E62F8]);
      sub_1D726009C();
      swift_endAccess();
      *(v12 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces) = v10;
      swift_beginAccess();
      sub_1D726009C();
      swift_endAccess();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v2 != v4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_1D61D7320()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = sub_1D61D4F20();
  [v1 addChildViewController_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController;
  v10 = [*&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController] view];
  if (v10)
  {
    v11 = v10;
    [v8 addSubview_];

    [*&v1[v9] didMoveToParentViewController_];
    v12 = [v1 navigationItem];
    v13 = sub_1D726203C();
    [v12 setTitle_];

    v14 = [v1 navigationItem];
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D72816C0;
    sub_1D61D5278();
    *(v15 + 32) = v16;
    sub_1D5B5A498(0, &qword_1EDF04590);
    v17 = sub_1D726265C();

    [v14 setLeftBarButtonItems_];

    v18 = [v1 navigationItem];
    [v18 setHidesSearchBarWhenScrolling_];

    v19 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v19 setSearchResultsUpdater_];
    [v19 setObscuresBackgroundDuringPresentation_];
    [v19 setHidesNavigationBarDuringPresentation_];
    v20 = [v19 searchBar];

    sub_1D725972C();

    v21 = sub_1D726203C();

    [v20 setText_];

    v22 = [v19 searchBar];
    v23 = [v4 systemBlueColor];
    [v22 setTintColor_];

    v24 = [v19 searchBar];
    v25 = sub_1D726203C();
    [v24 setPlaceholder_];

    v26 = [v19 searchBar];
    v27 = [v26 searchTextField];

    [v27 setAutocorrectionType_];
    v28 = [v19 searchBar];
    v29 = [v28 searchTextField];

    [v29 setAutocapitalizationType_];
    v30 = [v19 searchBar];
    v31 = sub_1D726203C();
    v32 = [objc_opt_self() systemImageNamed_];

    [v30 setImage:v32 forSearchBarIcon:0 state:0];
    v33 = [v19 searchBar];
    [v33 setShowsCancelButton_];

    v34 = [v1 navigationItem];
    [v34 setSearchController_];

    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7298B00;
    *(v35 + 32) = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem);
    *(v35 + 40) = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem);
    type metadata accessor for DebugFormatBarButtonItem();
    *(v35 + 48) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:5 target:0 action:0];
    sub_1D61D536C();
    *(v35 + 56) = v36;
    v37 = sub_1D726265C();

    [v1 setToolbarItems_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D61D7BCC()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  v44 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  sub_1D61DE938(0, &unk_1EDF02470, sub_1D5B4D3E0, MEMORY[0x1E69E6F90]);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = swift_allocObject();
  v16 = v41 + v15;
  v17 = v0;
  type metadata accessor for DebugFormatWorkspaceManager();
  sub_1D60B57F4(v16);
  sub_1D60B62F8(v16 + v14);
  sub_1D61DE5F0(v16, v13, sub_1D5B4D3E0);
  sub_1D61DE808(v13, v9, sub_1D5B4D3E0);
  v18 = (v1 + 32);
  v43 = v1;
  v19 = *(v1 + 48);
  v20 = v19(v9, 1, v17);
  v42 = v4;
  if (v20 == 1)
  {
    sub_1D5CEC940(v9, sub_1D5B4D3E0);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = *v18;
    v39 = (v1 + 32);
    v38(v4, v9, v17);
    v21 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D5D57E44(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1D5D57E44(v22 > 1, v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23];
    v18 = v39;
    v38(v24, v42, v17);
  }

  sub_1D61DE5F0(v16 + v14, v13, sub_1D5B4D3E0);
  sub_1D61DE808(v13, v9, sub_1D5B4D3E0);
  if (v19(v9, 1, v17) == 1)
  {
    sub_1D5CEC940(v9, sub_1D5B4D3E0);
  }

  else
  {
    v25 = *v18;
    v26 = v42;
    (*v18)(v42, v9, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D5D57E44(0, *(v21 + 2) + 1, 1, v21);
    }

    v28 = *(v21 + 2);
    v27 = *(v21 + 3);
    if (v28 >= v27 >> 1)
    {
      v21 = sub_1D5D57E44(v27 > 1, v28 + 1, 1, v21);
    }

    *(v21 + 2) = v28 + 1;
    v25(&v21[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28], v26, v17);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v21 + 2))
  {
    sub_1D5F63B58(v21);

    v29 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v30 = sub_1D726265C();

    v31 = [v29 initWithActivityItems:v30 applicationActivities:0];

    v32 = [v31 popoverPresentationController];
    v33 = v40;
    if (v32)
    {
      v34 = v32;
      sub_1D61D5278();
      v36 = v35;
      [v34 setSourceItem_];
    }

    [v33 presentViewController:v31 animated:1 completion:0];
  }

  else
  {
  }
}

uint64_t sub_1D61D8198()
{
  v1 = v0;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatWorkspace();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - v13;

  sub_1D725B31C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v15 = sub_1D60CB67C;
    v16 = v5;
  }

  else
  {
    sub_1D61DE808(v5, v14, type metadata accessor for DebugFormatWorkspace);
    sub_1D61DE5F0(v14, v10, type metadata accessor for DebugFormatWorkspace);
    v17 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceConfigViewController());

    sub_1D5FC932C(v18, v10);
    v20 = v19;

    v21 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
    [v21 setModalInPresentation_];
    [v1 presentViewController:v21 animated:1 completion:0];

    v15 = type metadata accessor for DebugFormatWorkspace;
    v16 = v14;
  }

  return sub_1D5CEC940(v16, v15);
}

void sub_1D61D8464(uint64_t a1)
{
  v3 = type metadata accessor for DebugFormatWorkspace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1D726203C();
  v8 = [objc_opt_self() alertControllerWithTitle:v7 message:0 preferredStyle:1];

  v24 = sub_1D61D8814;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D5C38428;
  v23 = &block_descriptor_31;
  v9 = _Block_copy(&aBlock);
  [v8 addTextFieldWithConfigurationHandler_];
  _Block_release(v9);
  v10 = sub_1D726203C();
  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v10 style:1 handler:0];

  [v8 addAction_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D61DE5F0(a1, &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  sub_1D61DE808(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for DebugFormatWorkspace);

  v17 = sub_1D726203C();
  v24 = sub_1D61DE658;
  v25 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D5C38428;
  v23 = &block_descriptor_32;
  v18 = _Block_copy(&aBlock);

  v19 = [v11 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v8 addAction_];
  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_1D61D8814(void *a1)
{
  [a1 setAutocapitalizationType_];
  v2 = sub_1D726203C();
  [a1 setPlaceholder_];
}

void sub_1D61D8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DebugFormatWorkspace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61DE938(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_1D7257A4C();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v41 = a4;
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 textFields];
      v40 = v6;
      if (v22)
      {
        sub_1D5B5A498(0, &qword_1EC885098);
        v23 = sub_1D726267C();

        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA6FB460](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v24 = *(v23 + 32);
        }

        v25 = v24;

        v26 = [v25 text];

        if (v26)
        {
          v27 = sub_1D726207C();
          v29 = v28;

          v43 = v27;
          v44 = v29;
          sub_1D72579DC();
          sub_1D5BF4D9C();
          v39 = sub_1D7263A4C();
          v22 = v30;
          (*(v42 + 8))(v17, v14);
        }

        else
        {
          v39 = 0;
          v22 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      v31 = sub_1D726294C();
      (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
      sub_1D61DE5F0(v41, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
      sub_1D726290C();
      v32 = v19;
      v33 = sub_1D72628FC();
      v34 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v35 = (v7 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v37 = MEMORY[0x1E69E85E0];
      v36[2] = v33;
      v36[3] = v37;
      v36[4] = v32;
      sub_1D61DE808(v9, v36 + v34, type metadata accessor for DebugFormatWorkspace);
      v38 = (v36 + v35);
      *v38 = v39;
      v38[1] = v22;
      sub_1D6BD1334(0, 0, v13, &unk_1D72AD1C0, v36);
    }
  }
}

uint64_t sub_1D61D8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[83] = a4;
  v7[84] = type metadata accessor for DebugFormatWorkspaceKind();
  v7[85] = swift_task_alloc();
  sub_1D60CB67C(0);
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v11 = type metadata accessor for DebugFormatWorkspace();
  v7[89] = v11;
  v7[90] = *(v11 - 8);
  v7[91] = swift_task_alloc();
  v7[92] = sub_1D726290C();
  v7[93] = sub_1D72628FC();
  v12 = swift_task_alloc();
  v7[94] = v12;
  *v12 = v7;
  v12[1] = sub_1D61D8E7C;

  return sub_1D61D98C4((v7 + 2), a5, a6, a7);
}

uint64_t sub_1D61D8E7C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1D726285C();
    v5 = v4;
    v6 = sub_1D61D9544;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1D726285C();
    v8 = v10;
    *(v2 + 768) = v9;
    *(v2 + 776) = v10;
    v6 = sub_1D61D8FE8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D61D8FE8()
{
  v1 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v1;
  v2 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v2;
  *(v0 + 375) = *(v0 + 191);
  v3 = *(v0 + 176);
  *(v0 + 344) = *(v0 + 160);
  *(v0 + 360) = v3;
  *(v0 + 328) = *(v0 + 144);
  v4 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v4;
  v5 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  v6 = *(v0 + 680);
  v7 = *(v0 + 664);
  *(v0 + 248) = v5;
  v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  *(v0 + 784) = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  *(v0 + 792) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  *(v0 + 800) = *(v8 + v9);
  v10 = type metadata accessor for DebugFormatCacheFile();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 344);
  *(v0 + 512) = *(v0 + 328);
  *(v0 + 528) = v11;
  *(v0 + 544) = *(v0 + 360);
  *(v0 + 559) = *(v0 + 375);
  v12 = *(v0 + 280);
  *(v0 + 448) = *(v0 + 264);
  *(v0 + 464) = v12;
  v13 = *(v0 + 312);
  *(v0 + 480) = *(v0 + 296);
  *(v0 + 496) = v13;
  v14 = *(v0 + 216);
  *(v0 + 384) = *(v0 + 200);
  *(v0 + 400) = v14;
  v15 = *(v0 + 248);
  *(v0 + 416) = *(v0 + 232);
  *(v0 + 432) = v15;

  v16 = swift_task_alloc();
  *(v0 + 808) = v16;
  *v16 = v0;
  v16[1] = sub_1D61D91B4;
  v17 = *(v0 + 704);
  v18 = *(v0 + 680);

  return sub_1D60B7E00(v17, v18, v0 + 384, v8);
}

uint64_t sub_1D61D91B4()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  *(*v1 + 816) = v0;

  sub_1D5CEC940(v3, type metadata accessor for DebugFormatWorkspaceKind);

  v4 = *(v2 + 776);
  v5 = *(v2 + 768);
  if (v0)
  {
    v6 = sub_1D61D9700;
  }

  else
  {
    v6 = sub_1D61D9330;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D61D9330()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[88];
    sub_1D5ECF21C((v0 + 25));
    v5 = sub_1D60CB67C;
    v6 = v4;
  }

  else
  {
    v7 = v0[91];
    v8 = v0[90];
    v9 = v0[89];
    v10 = v0[87];
    v11 = v0[86];
    sub_1D61DE808(v0[88], v7, type metadata accessor for DebugFormatWorkspace);
    sub_1D61DE5F0(v7, v10, type metadata accessor for DebugFormatWorkspace);
    (*(v8 + 56))(v10, 0, 1, v9);
    sub_1D61DE5F0(v10, v11, sub_1D60CB67C);

    sub_1D725B32C();
    sub_1D5ECF21C((v0 + 25));

    sub_1D5CEC940(v10, sub_1D60CB67C);
    v5 = type metadata accessor for DebugFormatWorkspace;
    v6 = v7;
  }

  sub_1D5CEC940(v6, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D61D9544()
{

  v1 = *(v0 + 760);
  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 664);
  sub_1D5F5EBA0(v1, 0, 0, 0xD00000000000001ALL, 0x80000001D73CE020);

  *(v0 + 568) = 0;
  *(v0 + 576) = 0xD000000000000019;
  *(v0 + 584) = 0x80000001D73CE040;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  v5 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_1D6AD3108(v0 + 568);

    sub_1D5F181F4(v0 + 568);
  }

  else
  {

    sub_1D5F181F4(v0 + 568);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D61D9700()
{

  sub_1D5ECF21C(v0 + 200);
  v1 = *(v0 + 816);
  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 664);
  sub_1D5F5EBA0(v1, 0, 0, 0xD00000000000001ALL, 0x80000001D73CE020);

  *(v0 + 568) = 0;
  *(v0 + 576) = 0xD000000000000019;
  *(v0 + 584) = 0x80000001D73CE040;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  v5 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_1D6AD3108(v0 + 568);

    sub_1D5F181F4(v0 + 568);
  }

  else
  {

    sub_1D5F181F4(v0 + 568);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D61D98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1D725895C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1D7257A4C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for FormatWorkspaceGroup();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for FeedContext();
  v5[20] = swift_task_alloc();
  type metadata accessor for GroupLayoutBindingContext();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for FormatContentSubgroup();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatWorkspaceGroup();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  sub_1D726290C();
  v5[28] = sub_1D72628FC();
  v11 = sub_1D726285C();
  v5[29] = v11;
  v5[30] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D61D9B68, v11, v10);
}

uint64_t sub_1D61D9B68()
{
  v1 = v0[7];
  v2 = type metadata accessor for DebugFormatWorkspace();
  v0[31] = v2;
  v7 = *(v1 + *(v2 + 36));
  v0[32] = v7;
  v8 = *(v7 + 16);
  v0[33] = v8;
  if (v8)
  {
    v9 = v0[26];
    v10 = v0[27];
    v0[34] = MEMORY[0x1E69E7CC0];
    v0[35] = 0;
    if (*(v7 + 16))
    {
      sub_1D61DE5F0(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();
      v11 = v0[4];
      v0[36] = v11;
      v12 = swift_task_alloc();
      v0[37] = v12;
      v13 = type metadata accessor for DebugFormatBindingResult();
      v5 = sub_1D5BA6EF4();
      *v12 = v0;
      v12[1] = sub_1D61D9F50;
      v6 = MEMORY[0x1E69E7288];
      v2 = (v0 + 5);
      v3 = v11;
      v4 = v13;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DA10](v2, v3, v4, v5, v6);
  }

  else
  {
    v14 = v0[9];

    if (v14)
    {
      v16 = v0[15];
      v15 = v0[16];
      v17 = v0[14];
      v18 = v0[9];
      v0[2] = v0[8];
      v0[3] = v18;

      sub_1D72579DC();
      sub_1D5BF4D9C();
      v54 = sub_1D7263A4C();
      v20 = v19;
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v54 = 0;
      v20 = 0xE000000000000000;
    }

    v53 = v0[31];
    v21 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    v23 = v0[11];
    v26 = v0[6];
    v25 = v0[7];
    sub_1D725894C();
    v27 = sub_1D725893C();
    v52 = v28;
    (*(v21 + 8))(v22, v23);
    v29 = sub_1D61DA968(v25, v24, v54, v20);
    v31 = v30;

    v32 = v25 + *(v53 + 20);
    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    v35 = *(v32 + 48);
    v36 = *(v32 + 56);
    v37 = *(v32 + 72);
    v38 = *(v32 + 80);
    v39 = *(v32 + 152);
    v40 = *(v32 + 160);
    v41 = *(v32 + 168);
    v42 = *(v32 + 176);
    v43 = *(v32 + 177);
    v44 = *(v32 + 178);
    v45 = *(v32 + 88);
    v46 = *(v32 + 104);
    v47 = *(v32 + 120);
    v48 = *(v32 + 136);
    *v26 = v27;
    *(v26 + 8) = v52;
    *(v26 + 16) = v29;
    *(v26 + 24) = v31;
    *(v26 + 32) = v33;
    *(v26 + 40) = v34;
    *(v26 + 48) = v35;
    v49 = MEMORY[0x1E69E7CC0];
    *(v26 + 56) = v36;
    *(v26 + 64) = v49;
    *(v26 + 72) = v37;
    *(v26 + 80) = v38;
    *(v26 + 88) = v45;
    *(v26 + 104) = v46;
    *(v26 + 120) = v47;
    *(v26 + 136) = v48;
    *(v26 + 152) = v39;
    *(v26 + 160) = v40;
    *(v26 + 168) = v41;
    *(v26 + 176) = v42;
    *(v26 + 177) = v43;
    *(v26 + 178) = v44;

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_1D61D9F50()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1D61DA87C;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1D61DA094;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D61DA094()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[20];
  v6 = v0[7];
  sub_1D61DE5F0(v0[5] + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v4, type metadata accessor for GroupLayoutBindingContext);

  v7 = *(v6 + *(v2 + 20) + 168);
  sub_1D61DE5F0(v6 + *(v2 + 24), v5, type metadata accessor for FeedContext);

  sub_1D6BADF0C(v4, v7, v5, v3);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F51122E8);
  sub_1D61DE99C(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
  v8 = sub_1D72578BC();
  if (v1)
  {
    v10 = v0[27];
    sub_1D5CEC940(v0[24], type metadata accessor for FormatContentSubgroup);

    sub_1D5CEC940(v10, type metadata accessor for DebugFormatWorkspaceGroup);

    v13 = v0[1];
LABEL_4:

    return v13();
  }

  v11 = v8;
  v12 = v9;

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F5112310);
  sub_1D61DE99C(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
  sub_1D725A69C();
  v15 = v0[27];
  v83 = v0[23];
  v16 = v0[19];
  v17 = v0[17];

  v18 = *v15;
  v19 = v15[1];
  v20 = v15[2];
  v21 = v15[3];
  v81 = v20;
  sub_1D61DE5F0(v83, v16 + *(v17 + 24), type metadata accessor for FormatContentSubgroup);
  *v16 = v18;
  v16[1] = v19;
  v16[2] = v81;
  v16[3] = v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[34];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1D6993288(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v84 = sub_1D6993288(v24 > 1, v25 + 1, 1, v23);
  }

  else
  {
    v84 = v23;
  }

  v80 = v0[27];
  v82 = v0[33];
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[18];
  v29 = v0[19];
  v79 = v0[35] + 1;
  sub_1D5B952F8(v11, v12);
  sub_1D5CEC940(v27, type metadata accessor for FormatContentSubgroup);
  sub_1D5CEC940(v26, type metadata accessor for FormatContentSubgroup);
  *(v84 + 16) = v25 + 1;
  sub_1D61DE808(v29, v84 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FormatWorkspaceGroup);
  v30 = sub_1D5CEC940(v80, type metadata accessor for DebugFormatWorkspaceGroup);
  if (v79 == v82)
  {
    v35 = v0[9];

    if (v35)
    {
      v36 = v0[15];
      v37 = v0[16];
      v38 = v0[14];
      v39 = v0[9];
      v0[2] = v0[8];
      v0[3] = v39;

      sub_1D72579DC();
      sub_1D5BF4D9C();
      v40 = sub_1D7263A4C();
      v42 = v41;
      (*(v36 + 8))(v37, v38);
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v48 = v0[31];
    v49 = v0[12];
    v51 = v0[10];
    v50 = v0[11];
    v53 = v0[6];
    v52 = v0[7];
    v54 = v0[13];
    sub_1D725894C();
    v55 = sub_1D725893C();
    v77 = v56;
    v78 = v55;
    (*(v49 + 8))(v54, v50);
    v57 = sub_1D61DA968(v52, v51, v40, v42);
    v59 = v58;

    v60 = v52 + *(v48 + 20);
    v61 = *(v60 + 32);
    v62 = *(v60 + 40);
    v63 = *(v60 + 48);
    v64 = *(v60 + 56);
    v65 = *(v60 + 72);
    v66 = *(v60 + 80);
    v67 = *(v60 + 152);
    v68 = *(v60 + 160);
    v69 = *(v60 + 168);
    v70 = *(v60 + 176);
    v71 = *(v60 + 177);
    v72 = *(v60 + 178);
    v73 = *(v60 + 88);
    v74 = *(v60 + 104);
    v75 = *(v60 + 120);
    v76 = *(v60 + 136);
    *v53 = v78;
    *(v53 + 8) = v77;
    *(v53 + 16) = v57;
    *(v53 + 24) = v59;
    *(v53 + 32) = v61;
    *(v53 + 40) = v62;
    *(v53 + 48) = v63;
    *(v53 + 56) = v64;
    *(v53 + 64) = v84;
    *(v53 + 72) = v65;
    *(v53 + 80) = v66;
    *(v53 + 88) = v73;
    *(v53 + 104) = v74;
    *(v53 + 120) = v75;
    *(v53 + 136) = v76;
    *(v53 + 152) = v67;
    *(v53 + 160) = v68;
    *(v53 + 168) = v69;
    *(v53 + 176) = v70;
    *(v53 + 177) = v71;
    *(v53 + 178) = v72;

    v13 = v0[1];
    goto LABEL_4;
  }

  v43 = v0[35] + 1;
  v0[34] = v84;
  v0[35] = v43;
  v44 = v0[32];
  if (v43 >= *(v44 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1D61DE5F0(v44 + ((*(v0[26] + 80) + 32) & ~*(v0[26] + 80)) + *(v0[26] + 72) * v43, v0[27], type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D725B77C();
    v45 = v0[4];
    v0[36] = v45;
    v46 = swift_task_alloc();
    v0[37] = v46;
    v47 = type metadata accessor for DebugFormatBindingResult();
    v33 = sub_1D5BA6EF4();
    *v46 = v0;
    v46[1] = sub_1D61D9F50;
    v34 = MEMORY[0x1E69E7288];
    v30 = (v0 + 5);
    v31 = v45;
    v32 = v47;
  }

  return MEMORY[0x1EEE6DA10](v30, v31, v32, v33, v34);
}

uint64_t sub_1D61DA87C()
{
  v1 = *(v0 + 216);

  sub_1D5CEC940(v1, type metadata accessor for DebugFormatWorkspaceGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D61DA968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61DE5F0(a1, v10, type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v13 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      a4 = 0xE900000000000065;
      a3 = 0x636170736B726F57;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1D5CEC940(v10, type metadata accessor for DebugFormatWorkspaceKind);
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      v12 = a1 + *(type metadata accessor for DebugFormatWorkspace() + 20);
      a3 = *(v12 + 16);
      a4 = *(v12 + 24);
    }
  }

LABEL_10:

  v14 = sub_1D60BF100(a3, a4);

  return v14;
}

uint64_t sub_1D61DAB18()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = type metadata accessor for DebugFormatWorkspace();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    goto LABEL_7;
  }

  v9 = Strong;

  sub_1D725B31C();

  v10 = type metadata accessor for DebugFormatWorkspace();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
LABEL_7:
    v15 = sub_1D60CB67C;
    v16 = v7;
LABEL_10:
    sub_1D5CEC940(v16, v15);
    goto LABEL_11;
  }

  sub_1D5CEC940(v7, sub_1D60CB67C);
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    v17 = sub_1D72585BC();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    goto LABEL_9;
  }

  v12 = v11;

  sub_1D6A9DC44(v3);

  v13 = sub_1D72585BC();
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
LABEL_9:
    v15 = sub_1D5B4D3E0;
    v16 = v3;
    goto LABEL_10;
  }

  sub_1D5CEC940(v3, sub_1D5B4D3E0);
LABEL_11:
  sub_1D5B5A498(0, &qword_1EC885090);
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D72816C0;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350);
  swift_allocObject();
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v19 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v19 + 40) = sub_1D726375C();
  *(v18 + 32) = sub_1D726340C();
  return sub_1D72633FC();
}

void sub_1D61DB058()
{
  sub_1D61DE938(0, &unk_1EC8850A0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1D725C2FC();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725C2EC();
  v0 = objc_allocWithZone(MEMORY[0x1E69DC968]);
  v1 = sub_1D726265C();

  v2 = [v0 initForOpeningContentTypes_];

  [v2 setAllowsMultipleSelection_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v2 setDelegate_];

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_1D61DB21C()
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_1D725B31C();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      v11 = sub_1D60CB67C;
      v12 = v3;
    }

    else
    {
      sub_1D61DE808(v3, v8, type metadata accessor for DebugFormatWorkspace);
      sub_1D61D8464(v8);

      v11 = type metadata accessor for DebugFormatWorkspace;
      v12 = v8;
    }

    return sub_1D5CEC940(v12, v11);
  }

  return result;
}

uint64_t sub_1D61DB414()
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816C0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816D0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_1D725B31C();

    v8 = type metadata accessor for DebugFormatWorkspace();
    (*(*(v8 - 8) + 48))(v3, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for DebugFormatWorkspace();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  }

  sub_1D5B5A498(0, &qword_1EC885090);
  sub_1D5B5A498(0, &qword_1EDF04350);
  sub_1D5CEC940(v3, sub_1D60CB67C);
  swift_allocObject();
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v5 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v5 + 40) = sub_1D726375C();
  *(v4 + 32) = sub_1D726340C();
  return sub_1D72633FC();
}

uint64_t sub_1D61DB7F4()
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_1D725B31C();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      v11 = sub_1D60CB67C;
      v12 = v3;
    }

    else
    {
      sub_1D61DE808(v3, v8, type metadata accessor for DebugFormatWorkspace);
      sub_1D61D5098();
      v13 = sub_1D6312B14(v8);
      sub_1D69F8A48(v13, v10);
      sub_1D5C08648(v13);

      v11 = type metadata accessor for DebugFormatWorkspace;
      v12 = v8;
    }

    return sub_1D5CEC940(v12, v11);
  }

  return result;
}

uint64_t sub_1D61DBA10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1D61D5098();

    sub_1D725B31C();

    v2 = sub_1D6312CD4(v3);

    sub_1D69F8A48(v2, v1);
    sub_1D5C08648(v2);
  }

  return result;
}

uint64_t sub_1D61DBC04(void *a1)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 searchBar];
  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_1D726207C();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v9 = sub_1D7263A4C();
    v14 = v13;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v16 = v9;
  v17 = v14;

  sub_1D725973C();
}

uint64_t sub_1D61DBE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[130] = a6;
  v6[129] = a5;
  v6[128] = a4;
  v7 = sub_1D7261ABC();
  v6[131] = v7;
  v6[132] = *(v7 - 8);
  v6[133] = swift_task_alloc();
  v8 = sub_1D7261B2C();
  v6[134] = v8;
  v6[135] = *(v8 - 8);
  v6[136] = swift_task_alloc();
  v9 = sub_1D725891C();
  v6[137] = v9;
  v10 = *(v9 - 8);
  v6[138] = v10;
  v6[139] = *(v10 + 64);
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  type metadata accessor for FeedContext();
  v6[142] = swift_task_alloc();
  v11 = type metadata accessor for DebugFormatWorkspace();
  v6[143] = v11;
  v6[144] = *(v11 - 8);
  v6[145] = swift_task_alloc();
  sub_1D5B4D3E0();
  v6[146] = swift_task_alloc();
  sub_1D6032A5C();
  v6[147] = swift_task_alloc();
  v6[148] = type metadata accessor for DebugFormatWorkspaceKind();
  v6[149] = swift_task_alloc();
  v6[150] = swift_task_alloc();
  sub_1D60CB67C(0);
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v6[153] = swift_task_alloc();
  v12 = sub_1D72585BC();
  v6[154] = v12;
  v6[155] = *(v12 - 8);
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = sub_1D726290C();
  v6[159] = sub_1D72628FC();
  v14 = sub_1D726285C();
  v6[160] = v14;
  v6[161] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D61DC19C, v14, v13);
}

uint64_t sub_1D61DC19C()
{
  v1 = *(v0 + 1024);
  v2 = *(v1 + 16);
  *(v0 + 1296) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 1240);
    *(v0 + 1304) = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor;
    v5 = *(v4 + 80);
    *(v0 + 196) = v5;
    v6 = *(v4 + 72);
    *(v0 + 1312) = v6;
    v7 = *(v4 + 16);
    *(v0 + 1320) = v7;
    while (1)
    {
      *(v0 + 1328) = v3;
      v7(*(v0 + 1256), v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 1232));
      if (sub_1D72584FC())
      {
        break;
      }

      v9 = *(v0 + 1296);
      v10 = *(v0 + 1328) + 1;
      (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
      if (v10 == v9)
      {
        goto LABEL_7;
      }

      v3 = *(v0 + 1328) + 1;
      v7 = *(v0 + 1320);
      v6 = *(v0 + 1312);
      LOBYTE(v5) = *(v0 + 196);
      v1 = *(v0 + 1024);
    }

    *(v0 + 1344) = sub_1D72585DC();
    *(v0 + 1352) = v8;
    type metadata accessor for FormatJSONDecoder();
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5112338);
    sub_1D5E32FE8();
    sub_1D725A69C();
    *(v0 + 1360) = 0;
    v11 = *(v0 + 1304);
    v12 = *(v0 + 1200);
    v13 = *(v0 + 1032);

    v14 = *(v13 + v11);
    *(v0 + 1368) = v14;
    v15 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
    *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);

    v18 = sub_1D60BF100(v16, v17);
    v20 = v19;

    *(v0 + 32) = v18;
    *(v0 + 40) = v20;
    *(v0 + 1384) = *(v14 + v15);
    v21 = type metadata accessor for DebugFormatCacheFile();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    swift_storeEnumTagMultiPayload();
    v22 = *(v0 + 160);
    *(v0 + 328) = *(v0 + 144);
    *(v0 + 344) = v22;
    *(v0 + 360) = *(v0 + 176);
    v23 = *(v0 + 96);
    *(v0 + 264) = *(v0 + 80);
    *(v0 + 280) = v23;
    v24 = *(v0 + 128);
    *(v0 + 296) = *(v0 + 112);
    *(v0 + 312) = v24;
    v25 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v25;
    v26 = *(v0 + 64);
    *(v0 + 232) = *(v0 + 48);
    *(v0 + 375) = *(v0 + 191);
    *(v0 + 248) = v26;

    *(v0 + 1392) = sub_1D72628FC();
    v27 = sub_1D726285C();
    v29 = v28;
    *(v0 + 1400) = v27;
    *(v0 + 1408) = v28;
    v30 = sub_1D61DCA38;
    v31 = v27;
  }

  else
  {
LABEL_7:
    v30 = sub_1D61DC7E8;
    v31 = 0;
    v29 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v30, v31, v29);
}

uint64_t sub_1D61DC7E8()
{
  *(v0 + 1336) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D61DC874, v2, v1);
}

uint64_t sub_1D61DC874()
{
  v1 = v0[130];

  [v1 dismissViewControllerAnimated:1 completion:0];
  v2 = v0[161];
  v3 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DC8F8, v3, v2);
}

uint64_t sub_1D61DC8F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61DCA38()
{
  v39 = v0;
  sub_1D61DE5F0(*(v0 + 1200), *(v0 + 1192), type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v9 = *(v0 + 1200);

    v7 = type metadata accessor for DebugFormatWorkspaceKind;
    v8 = v9;
    goto LABEL_5;
  }

  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1168);
  sub_1D61DE808(*(v0 + 1192), *(v0 + 1176), sub_1D6032A5C);
  sub_1D6A9DC44(v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1200);
    v5 = *(v0 + 1176);
    v6 = *(v0 + 1168);

    sub_1D5CEC940(v5, sub_1D6032A5C);
    sub_1D5CEC940(v4, type metadata accessor for DebugFormatWorkspaceKind);
    v7 = sub_1D5B4D3E0;
    v8 = v6;
LABEL_5:
    sub_1D5CEC940(v8, v7);
    *(v0 + 1416) = *(v0 + 1360);
    (*(*(v0 + 1152) + 56))(*(v0 + 1224), 1, 1, *(v0 + 1144));
    v10 = *(v0 + 1288);
    v11 = *(v0 + 1280);

    return MEMORY[0x1EEE6DFA0](sub_1D61DCE90, v11, v10);
  }

  v12 = *(v0 + 1384);
  v35 = *(v0 + 1200);
  v36 = *(v0 + 1368);
  v13 = *(v0 + 1160);
  v14 = *(v0 + 1152);
  v15 = *(v0 + 1136);
  (*(*(v0 + 1240) + 32))(*(v0 + 1248), *(v0 + 1168), *(v0 + 1232));
  v16 = *(v0 + 344);
  v37[8] = *(v0 + 328);
  v37[9] = v16;
  v38[0] = *(v0 + 360);
  *(v38 + 15) = *(v0 + 375);
  v17 = *(v0 + 280);
  v37[4] = *(v0 + 264);
  v37[5] = v17;
  v18 = *(v0 + 312);
  v37[6] = *(v0 + 296);
  v37[7] = v18;
  v19 = *(v0 + 216);
  v37[0] = *(v0 + 200);
  v37[1] = v19;
  v20 = *(v0 + 248);
  v37[2] = *(v0 + 232);
  v37[3] = v20;
  v21 = *(*(*(v12 + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v21);
  sub_1D60B8884(v36, v35, v37, v15, v13);
  sub_1D5CEC940(v15, type metadata accessor for FeedContext);
  sub_1D61DE938(0, &unk_1EC8850B0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6F90]);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7273AE0;
  sub_1D61DE5F0(v13, v24 + v23, type metadata accessor for DebugFormatWorkspace);

  v25 = sub_1D725B30C();
  sub_1D6986DE4(v24);
  v25(v0 + 984, 0);

  v26 = *(v0 + 344);
  *(v0 + 696) = *(v0 + 328);
  *(v0 + 712) = v26;
  *(v0 + 728) = *(v0 + 360);
  *(v0 + 743) = *(v0 + 375);
  v27 = *(v0 + 280);
  *(v0 + 632) = *(v0 + 264);
  *(v0 + 648) = v27;
  v28 = *(v0 + 312);
  *(v0 + 664) = *(v0 + 296);
  *(v0 + 680) = v28;
  v29 = *(v0 + 216);
  *(v0 + 568) = *(v0 + 200);
  *(v0 + 584) = v29;
  v30 = *(v0 + 248);
  *(v0 + 600) = *(v0 + 232);
  *(v0 + 616) = v30;
  v31 = swift_task_alloc();
  *(v0 + 1424) = v31;
  *v31 = v0;
  v31[1] = sub_1D61DD5A4;
  v32 = *(v0 + 1248);
  v33 = *(v0 + 1176);

  return sub_1D60B9658(v32, v0 + 568, v33);
}

uint64_t sub_1D61DCE90()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  v5 = *(v0 + 1208);
  sub_1D61DE5F0(v3, v4, sub_1D60CB67C);
  sub_1D61DE5F0(v4, v5, sub_1D60CB67C);

  sub_1D725B32C();

  sub_1D5B952F8(v2, v1);

  sub_1D5CEC940(v4, sub_1D60CB67C);
  sub_1D5CEC940(v3, sub_1D60CB67C);
  v6 = *(v0 + 160);
  *(v0 + 512) = *(v0 + 144);
  *(v0 + 528) = v6;
  *(v0 + 544) = *(v0 + 176);
  *(v0 + 559) = *(v0 + 191);
  v7 = *(v0 + 96);
  *(v0 + 448) = *(v0 + 80);
  *(v0 + 464) = v7;
  v8 = *(v0 + 128);
  *(v0 + 480) = *(v0 + 112);
  *(v0 + 496) = v8;
  v9 = *(v0 + 32);
  *(v0 + 384) = *(v0 + 16);
  *(v0 + 400) = v9;
  v10 = *(v0 + 64);
  *(v0 + 416) = *(v0 + 48);
  *(v0 + 432) = v10;
  sub_1D5ECF21C(v0 + 384);
  v11 = *(v0 + 1416);
  v12 = 0x80000001D73CE060;
  v13 = 0x1EC87D000uLL;
LABEL_2:
  sub_1D72584DC();
  while (1)
  {
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1328) + 1;
    (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
    if (v15 == v14)
    {
      break;
    }

    v16 = *(v0 + 1328) + 1;
    *(v0 + 1328) = v16;
    (*(v0 + 1320))(*(v0 + 1256), *(v0 + 1024) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 1312) * v16, *(v0 + 1232));
    if (sub_1D72584FC())
    {
      v64 = v12;
      *(v0 + 1344) = sub_1D72585DC();
      *(v0 + 1352) = v17;
      if (!v11)
      {
        type metadata accessor for FormatJSONDecoder();
        swift_allocObject();
        sub_1D5B7BACC(&unk_1F5112338);
        sub_1D5E32FE8();
        sub_1D725A69C();
        *(v0 + 1360) = 0;
        v33 = *(v0 + 1304);
        v34 = *(v0 + 1200);
        v35 = *(v0 + 1032);

        v36 = *(v35 + v33);
        *(v0 + 1368) = v36;
        v37 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
        *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
        v38 = *(v0 + 32);
        v39 = *(v0 + 40);

        v40 = sub_1D60BF100(v38, v39);
        v42 = v41;

        *(v0 + 32) = v40;
        *(v0 + 40) = v42;
        *(v0 + 1384) = *(v36 + v37);
        v43 = type metadata accessor for DebugFormatCacheFile();
        (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        v44 = *(v0 + 160);
        *(v0 + 328) = *(v0 + 144);
        *(v0 + 344) = v44;
        *(v0 + 360) = *(v0 + 176);
        *(v0 + 375) = *(v0 + 191);
        v45 = *(v0 + 96);
        *(v0 + 264) = *(v0 + 80);
        *(v0 + 280) = v45;
        v46 = *(v0 + 128);
        *(v0 + 296) = *(v0 + 112);
        *(v0 + 312) = v46;
        v47 = *(v0 + 32);
        *(v0 + 200) = *(v0 + 16);
        *(v0 + 216) = v47;
        v48 = *(v0 + 64);
        *(v0 + 232) = *(v0 + 48);
        *(v0 + 248) = v48;

        *(v0 + 1392) = sub_1D72628FC();
        v49 = sub_1D726285C();
        v51 = v50;
        *(v0 + 1400) = v49;
        *(v0 + 1408) = v50;
        v52 = sub_1D61DCA38;
        v53 = v49;
        goto LABEL_11;
      }

      v63 = v11;
      v18 = v11;
      if (*(v13 + 1176) != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 1128);
      v20 = *(v0 + 1120);
      v21 = *(v0 + 1112);
      v22 = *(v0 + 1104);
      v23 = *(v0 + 1096);
      v55 = *(v0 + 1088);
      v60 = v19;
      v61 = *(v0 + 1080);
      v62 = *(v0 + 1072);
      v59 = *(v0 + 1056);
      v57 = *(v0 + 1064);
      v58 = *(v0 + 1048);
      v24 = qword_1EC9BA710;
      sub_1D725890C();
      (*(v22 + 16))(v20, v19, v23);
      v25 = v22;
      v56 = v22;
      v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      (*(v25 + 32))(v29 + v26, v20, v23);
      v30 = (v29 + v27);
      v12 = v64;
      *v30 = 0xD00000000000001ALL;
      v30[1] = v64;
      *(v29 + v28) = v63;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
      *(v0 + 968) = sub_1D5F5F790;
      *(v0 + 976) = v29;
      *(v0 + 936) = MEMORY[0x1E69E9820];
      *(v0 + 944) = 1107296256;
      *(v0 + 952) = sub_1D5B6B06C;
      *(v0 + 960) = &block_descriptor_59;
      v31 = _Block_copy((v0 + 936));
      v32 = v63;

      sub_1D7261AEC();
      *(v0 + 1016) = MEMORY[0x1E69E7CC0];
      sub_1D61DE99C(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
      sub_1D5B73908();
      sub_1D61DE99C(&qword_1EDF1B560, sub_1D5B73908);
      sub_1D7263B6C();
      MEMORY[0x1DA6FA730](0, v55, v57, v31);
      _Block_release(v31);
      (*(v59 + 8))(v57, v58);
      (*(v61 + 8))(v55, v62);
      (*(v56 + 8))(v60, v23);

      v11 = 0;
      v13 = 0x1EC87D000;
      goto LABEL_2;
    }
  }

  v52 = sub_1D61DC7E8;
  v53 = 0;
  v51 = 0;
LABEL_11:

  return MEMORY[0x1EEE6DFA0](v52, v53, v51);
}

uint64_t sub_1D61DD5A4()
{
  v2 = *v1;
  v2[179] = v0;

  v3 = v2[147];
  if (v0)
  {
    sub_1D5CEC940(v3, sub_1D6032A5C);
    v4 = v2[176];
    v5 = v2[175];
    v6 = sub_1D61DD84C;
  }

  else
  {

    sub_1D5CEC940(v3, sub_1D6032A5C);
    v4 = v2[176];
    v5 = v2[175];
    v6 = sub_1D61DD728;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D61DD728()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[153];
  v5 = v0[150];
  v6 = v0[145];

  (*(v2 + 8))(v1, v3);
  sub_1D5CEC940(v5, type metadata accessor for DebugFormatWorkspaceKind);
  sub_1D61DE808(v6, v4, type metadata accessor for DebugFormatWorkspace);
  v0[177] = v0[179];
  (*(v0[144] + 56))(v0[153], 0, 1, v0[143]);
  v7 = v0[161];
  v8 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DCE90, v8, v7);
}

uint64_t sub_1D61DD84C()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[150];
  v5 = v0[145];

  sub_1D5CEC940(v5, type metadata accessor for DebugFormatWorkspace);
  (*(v2 + 8))(v1, v3);
  sub_1D5CEC940(v4, type metadata accessor for DebugFormatWorkspaceKind);
  v6 = v0[161];
  v7 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DD934, v7, v6);
}

uint64_t sub_1D61DD934()
{
  sub_1D5B952F8(*(v0 + 1344), *(v0 + 1352));
  v1 = *(v0 + 160);
  *(v0 + 880) = *(v0 + 144);
  *(v0 + 896) = v1;
  *(v0 + 912) = *(v0 + 176);
  *(v0 + 927) = *(v0 + 191);
  v2 = *(v0 + 96);
  *(v0 + 816) = *(v0 + 80);
  *(v0 + 832) = v2;
  v3 = *(v0 + 128);
  *(v0 + 848) = *(v0 + 112);
  *(v0 + 864) = v3;
  v4 = *(v0 + 32);
  *(v0 + 752) = *(v0 + 16);
  *(v0 + 768) = v4;
  v5 = *(v0 + 64);
  *(v0 + 784) = *(v0 + 48);
  *(v0 + 800) = v5;
  sub_1D5ECF21C(v0 + 752);
  v50 = *(v0 + 1432);
  v6 = v50;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1096);
  v51 = v7;
  v52 = *(v0 + 1080);
  v53 = *(v0 + 1072);
  v46 = *(v0 + 1088);
  v47 = *(v0 + 1064);
  v49 = *(v0 + 1056);
  v48 = *(v0 + 1048);
  v12 = qword_1EC9BA710;
  sub_1D725890C();
  (*(v10 + 16))(v8, v7, v11);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v13, v8, v11);
  v17 = (v16 + v14);
  *v17 = 0xD00000000000001ALL;
  v17[1] = 0x80000001D73CE060;
  *(v16 + v15) = v50;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v0 + 968) = sub_1D5F5F790;
  *(v0 + 976) = v16;
  *(v0 + 936) = MEMORY[0x1E69E9820];
  *(v0 + 944) = 1107296256;
  *(v0 + 952) = sub_1D5B6B06C;
  *(v0 + 960) = &block_descriptor_59;
  v18 = _Block_copy((v0 + 936));
  v19 = v50;

  sub_1D7261AEC();
  *(v0 + 1016) = MEMORY[0x1E69E7CC0];
  sub_1D61DE99C(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D61DE99C(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v46, v47, v18);
  _Block_release(v18);
  (*(v49 + 8))(v47, v48);
  (*(v52 + 8))(v46, v53);
  (*(v10 + 8))(v51, v11);

  sub_1D72584DC();
  while (1)
  {
    v20 = *(v0 + 1296);
    v21 = *(v0 + 1328) + 1;
    (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
    if (v21 == v20)
    {
      break;
    }

    v22 = *(v0 + 1328) + 1;
    *(v0 + 1328) = v22;
    (*(v0 + 1320))(*(v0 + 1256), *(v0 + 1024) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 1312) * v22, *(v0 + 1232));
    if (sub_1D72584FC())
    {
      *(v0 + 1344) = sub_1D72585DC();
      *(v0 + 1352) = v23;
      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();
      sub_1D5B7BACC(&unk_1F5112338);
      sub_1D5E32FE8();
      sub_1D725A69C();
      *(v0 + 1360) = 0;
      v24 = *(v0 + 1304);
      v25 = *(v0 + 1200);
      v26 = *(v0 + 1032);

      v27 = *(v26 + v24);
      *(v0 + 1368) = v27;
      v28 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
      *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
      v29 = *(v0 + 32);
      v30 = *(v0 + 40);

      v31 = sub_1D60BF100(v29, v30);
      v33 = v32;

      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
      *(v0 + 1384) = *(v27 + v28);
      v34 = type metadata accessor for DebugFormatCacheFile();
      (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
      swift_storeEnumTagMultiPayload();
      v35 = *(v0 + 160);
      *(v0 + 328) = *(v0 + 144);
      *(v0 + 344) = v35;
      *(v0 + 360) = *(v0 + 176);
      *(v0 + 375) = *(v0 + 191);
      v36 = *(v0 + 96);
      *(v0 + 264) = *(v0 + 80);
      *(v0 + 280) = v36;
      v37 = *(v0 + 128);
      *(v0 + 296) = *(v0 + 112);
      *(v0 + 312) = v37;
      v38 = *(v0 + 32);
      *(v0 + 200) = *(v0 + 16);
      *(v0 + 216) = v38;
      v39 = *(v0 + 64);
      *(v0 + 232) = *(v0 + 48);
      *(v0 + 248) = v39;

      *(v0 + 1392) = sub_1D72628FC();
      v40 = sub_1D726285C();
      v42 = v41;
      *(v0 + 1400) = v40;
      *(v0 + 1408) = v41;
      v43 = sub_1D61DCA38;
      v44 = v40;
      goto LABEL_8;
    }
  }

  v43 = sub_1D61DC7E8;
  v44 = 0;
  v42 = 0;
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v43, v44, v42);
}

uint64_t sub_1D61DE128@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D61DE1A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D61DE21C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D61DE29C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D61DE318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();
}

uint64_t sub_1D61DE394(uint64_t a1)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1D61DE5F0(a1, &v11 - v8, sub_1D60CB67C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D61DE5F0(v9, v5, sub_1D60CB67C);

  sub_1D72600DC();
  return sub_1D5CEC940(v9, sub_1D60CB67C);
}

uint64_t sub_1D61DE4C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D61DE540()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D61DE5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D61DE658(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1D61D8888(a1, v4, v5, v6);
}

uint64_t sub_1D61DE6CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64680;

  return sub_1D61D8CCC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1D61DE808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61DE870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64684;

  return sub_1D61DBE04(a1, v4, v5, v6, v7, v8);
}

void sub_1D61DE938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D61DE99C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D61DE9E4()
{
  if (!qword_1EC8850C8)
  {
    sub_1D61DEA40();
    v0 = sub_1D726127C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8850C8);
    }
  }
}

unint64_t sub_1D61DEA40()
{
  result = qword_1EC8850D0;
  if (!qword_1EC8850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850D0);
  }

  return result;
}

void sub_1D61DEAAC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v2 = swift_allocObject();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t static FormatCodingHighGroupPriorityStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1 == 2)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D61DEC50(_BYTE *a1)
{
  if (*a1 == 2)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

unint64_t sub_1D61DECFC(uint64_t a1)
{
  result = sub_1D61DED24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61DED24()
{
  result = qword_1EC8850D8;
  if (!qword_1EC8850D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850D8);
  }

  return result;
}

unint64_t sub_1D61DED78()
{
  result = qword_1EDF2C700;
  if (!qword_1EDF2C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C700);
  }

  return result;
}

unint64_t sub_1D61DEDCC()
{
  result = qword_1EDF0FC18;
  if (!qword_1EDF0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FC18);
  }

  return result;
}

uint64_t FormatRoute.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61DEEC4()
{
  result = qword_1EC8850E0;
  if (!qword_1EC8850E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850E0);
  }

  return result;
}

unint64_t sub_1D61DEF18(uint64_t a1)
{
  result = sub_1D61DEF40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61DEF40()
{
  result = qword_1EC8850E8;
  if (!qword_1EC8850E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850E8);
  }

  return result;
}

unint64_t sub_1D61DEF94(void *a1)
{
  a1[1] = sub_1D5CD4024();
  a1[2] = sub_1D61DEFCC();
  result = sub_1D61DEEC4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61DEFCC()
{
  result = qword_1EDF12800;
  if (!qword_1EDF12800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12800);
  }

  return result;
}

void *sub_1D61DF048(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v4 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      v8 = v7 + v13;
      v9 = 0x6174654420656553;
      v11 = 0xEB00000000736C69;
      v10 = v8;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v4 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      v8 = v7 + v17;
      v10 = v8;
      v9 = 1701736270;
      v11 = 0xE400000000000000;
    }
  }

  else if (v2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = v7 + v15;
    v9 = 0x65726F4D20656553;
    v10 = v8;
    v11 = 0xE800000000000000;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = v7 + v6;
    v9 = 0x6469562079616C50;
    v10 = v8;
    v11 = 0xEA00000000006F65;
  }

  sub_1D711F844(1701869908, 0xE400000000000000, v9, v11, v10);
  v18 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1D6795150(0x6574756F52, 0xE500000000000000, 0, 0, v7, v23);
  swift_setDeallocating();
  sub_1D5EF5F0C(v8, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 32) = v19;
  *(v19 + 48) = v24;
  v20 = v23[1];
  *(v19 + 16) = v23[0];
  *(v19 + 32) = v20;
  v21 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v4, sub_1D5E4F358);
  return v21;
}

uint64_t sub_1D61DF5BC(uint64_t a1)
{
  v23 = a1;
  v2 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatOption();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v21 = *(v1 + 16);

    FormatOptionCollection.subscript.getter(v15, v16, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D5D2CF88(v9, sub_1D5E04C00);
      *v5 = v15;
      v5[1] = v16;
      swift_storeEnumTagMultiPayload();
      sub_1D5C75E0C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      sub_1D61E0EAC(v5, v17);
      swift_willThrow();
      sub_1D5D2CF88(v5, type metadata accessor for FormatLayoutError);
    }

    else
    {

      sub_1D5D247E0(v9, v14);

      v18 = v22;
      sub_1D6B744A8(v23, &v24);
      if (v18)
      {
        sub_1D5D2CF88(v14, type metadata accessor for FormatOption);
      }

      else
      {

        v15 = sub_1D6B7DB60(v24, v15, v16, v21, v23);
        sub_1D5D2CF88(v14, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
  }

  return v15;
}

uint64_t FormatSymbolName.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v48 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49[-v10 - 8];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49[-v14 - 8];
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49[-v22 - 8];
  v25 = *v1;
  v24 = *(v1 + 8);
  v51 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v28, v26, &type metadata for FormatVersions.JazzkonG, v27, &off_1F51F6BF8, v23);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
    (*(*(v29 - 8) + 16))(v15, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B41A8(0, v25, v24, v51, v15);
    sub_1D5D2CF88(v15, type metadata accessor for FormatVersionRequirement);
    v31 = sub_1D5D30DC4;
    v32 = v23;
    return sub_1D5D2CF88(v32, v31);
  }

  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);

  if (sub_1D602437C(v35, v33, &type metadata for FormatVersions.JazzkonG, v34, &off_1F51F6BF8))
  {
    v36 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v36);
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v38, v36, &type metadata for FormatVersions.JazzkonG, v37, &off_1F51F6BF8, v19);
    v39 = qword_1EDF31EA8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD18);
    (*(*(v40 - 8) + 16))(v11, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B4340(1, v25, v24, v11);
    v42 = v51;
    sub_1D5FBA070(v25, v24, v51, 0);
    if (v3)
    {
      sub_1D5FBA070(v25, v24, v42, 0);
      sub_1D5D2CF88(v11, type metadata accessor for FormatVersionRequirement);
      v31 = sub_1D5D30DC4;
      v32 = v19;
      return sub_1D5D2CF88(v32, v31);
    }

    sub_1D5D2CF88(v11, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CF88(v19, sub_1D5D30DC4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    sub_1D726473C();
    if (v2)
    {
      sub_1D5FBA070(v25, v24, v51, 0);
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  result = sub_1D61E05F4();
  if (result == 13)
  {
    return result;
  }

  v44 = a1[3];
  v45 = a1[4];
  v46 = result;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v47 = v48;
  sub_1D61DFE80(v46, v48);
  sub_1D5D2BEC4(v47, sub_1D5B4AA6C, 0, v44, v45);
  v31 = type metadata accessor for FormatVersionRequirement;
  v32 = v47;
  return sub_1D5D2CF88(v32, v31);
}

uint64_t sub_1D61DFE80@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDFFCC90;
      break;
    default:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDFFCE38;
      break;
  }

  v4 = sub_1D725BD1C();
  v5 = __swift_project_value_buffer(v4, v3);
  (*(*(v4 - 8) + 16))(a2, v5, v4);
  type metadata accessor for FormatVersionRequirement.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D61DFFAC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656E696C6E69;
  }

  else
  {
    v2 = 0x6E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6E6F6974706FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D61E002C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61E009C()
{
  sub_1D72621EC();
}

uint64_t sub_1D61E00F0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61E015C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_1D61E01F8()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 24) == 1)
  {
    v4 = *(v0 + 16);
    v9[0] = *v0;
    v9[1] = v2;
    v9[2] = v4;
    v10 = 5;
    sub_1D5FB995C(v3, v2, v4, 1);
    result = sub_1D703E0C8(v9, &v10);
    if (v1)
    {
      return result;
    }

    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v6;
    *(v7 + 40) = 0;
    v8 = 0x3000000000000000;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    v8 = 0x8000000000000000;
  }

  sub_1D6C4D24C(v8 | v7);
}

uint64_t _s8NewsFeed16FormatSymbolNameO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      v10 = v3 == v7 && v2 == v6;
      if (v10 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D5FB995C(v7, v6, v8, 1);
        sub_1D5FB995C(v3, v2, v4, 1);
        sub_1D5FB995C(v7, v6, v8, 1);
        sub_1D5FB995C(v3, v2, v4, 1);
        v11 = sub_1D6341C50(v4, v8);
        sub_1D5FBA070(v3, v2, v4, 1);
        sub_1D5FBA070(v7, v6, v8, 1);
        sub_1D5FBA070(v7, v6, v8, 1);
        sub_1D5FBA070(v3, v2, v4, 1);
        result = 1;
        if (v11)
        {
          return result;
        }

        return 0;
      }

      sub_1D5FB995C(v7, v6, v8, 1);
      sub_1D5FB995C(v3, v2, v4, 1);
      sub_1D5FBA070(v3, v2, v4, 1);
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = 1;
LABEL_12:
      sub_1D5FBA070(v13, v14, v15, v16);
      return 0;
    }

LABEL_11:
    sub_1D5FB995C(*a2, *(a2 + 8), v8, v9);
    sub_1D5FB995C(v3, v2, v4, v5);
    sub_1D5FBA070(v3, v2, v4, v5);
    v13 = v7;
    v14 = v6;
    v15 = v8;
    v16 = v9;
    goto LABEL_12;
  }

  if (*(a2 + 24))
  {
    goto LABEL_11;
  }

  v17 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_1D5FB995C(v17, v2, v8, 0);
    sub_1D5FB995C(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v8, 0);
    return 1;
  }

  else
  {
    v19 = sub_1D72646CC();
    sub_1D5FB995C(v7, v6, v8, 0);
    sub_1D5FB995C(v3, v2, v4, 0);
    sub_1D5FBA070(v3, v2, v4, 0);
    sub_1D5FBA070(v7, v6, v8, 0);
    return v19 & 1;
  }
}

uint64_t sub_1D61E05F4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D61E0640(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1EDF05C38 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF05C40;
      break;
    case 2:
      if (qword_1EC87DB90 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951D0;
      break;
    case 3:
      if (qword_1EDF1BBE8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF1BBF0;
      break;
    case 4:
      if (qword_1EC87DB70 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951C0;
      break;
    case 5:
      if (qword_1EDF05CB8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EDF05CC0;
      break;
    case 6:
      if (qword_1EC87DB80 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951C8;
      break;
    case 7:
      if (qword_1EC87DB98 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951D8;
      break;
    case 8:
      if (qword_1EC87DBA0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951E0;
      break;
    case 9:
      if (qword_1EC87DBA8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951E8;
      break;
    case 10:
      if (qword_1EC87DBB0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951F0;
      break;
    case 11:
      if (qword_1EC87DBB8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951F8;
      break;
    case 12:
      if (qword_1EC87DBC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC895200;
      break;
    default:
      if (qword_1EC87DB60 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC8951B8;
      break;
  }

  return *v1;
}

void sub_1D61E0984(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  if (*(v1 + 24) == 1)
  {
    v34 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v35[0] = *v1;
    v35[1] = v19;
    v35[2] = v18;
    v36 = 5;

    v21 = sub_1D703E0C8(v35, &v36);
    if (!v3)
    {
      v33 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v34 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D2CF88(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5C75E0C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v26 = v20;
          v26[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v35[0] = v9[2];
        v23 = v33;

        FormatOptionValue.type.getter(&v36);
        if ((sub_1D6183C84(v36, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5C75E0C(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v28 = v27;
          v30 = *v9;
          v29 = v9[1];
          v35[0] = v9[2];

          FormatOptionValue.type.getter(&v36);
          v31 = v36;
          *v28 = v30;
          *(v28 + 8) = v29;
          *(v28 + 16) = v31;
          *(v28 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v24 = type metadata accessor for FormatOption;
          v25 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v34 + 56))(v17, v22, 1, v5);
      v24 = sub_1D5E04C00;
      v25 = v17;
LABEL_11:
      sub_1D5D2CF88(v25, v24);
    }
  }
}

unint64_t sub_1D61E0D54(void *a1)
{
  a1[1] = sub_1D5C75B20();
  a1[2] = sub_1D61E0D8C();
  result = sub_1D61E0DE0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61E0D8C()
{
  result = qword_1EDF11138;
  if (!qword_1EDF11138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11138);
  }

  return result;
}

unint64_t sub_1D61E0DE0()
{
  result = qword_1EC8850F0;
  if (!qword_1EC8850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850F0);
  }

  return result;
}

unint64_t sub_1D61E0E58()
{
  result = qword_1EC8850F8;
  if (!qword_1EC8850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850F8);
  }

  return result;
}

uint64_t sub_1D61E0EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatLayoutError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NewsFeed::HeadlineColorPalette::Theme __swiftcall HeadlineColorPalette.theme(for:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4 = v1;
  v5 = *(v2 + 8);
  if (isa)
  {
    v6 = [v5 resolvedColorWithTraitCollection_];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  [v6 ts_luminance];
  v9 = v8;

  *v4 = v9 > 0.7;
  return result;
}

uint64_t HeadlineColorPalette.Theme.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

id sub_1D61E1080@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) &selRef:0.764705882 setCornerCurve:{0.764705882, 0.764705882, 1.0}];
  v19 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v5 = [v2 whiteColor];
  v6 = [v2 blackColor];
  v18 = [v2 ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

  v17 = [v2 labelColor];
  v16 = [v2 secondaryLabelColor];
  v7 = [v2 grayColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.1 alpha:1.0];
  v10 = [v2 ts:v8 dynamicColor:v9 withDarkStyleVariant:?];

  v11 = [v2 systemBlueColor];
  v12 = [v2 systemRedColor];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.882352941 green:0.647058824 blue:0.0 alpha:1.0];
  v14 = [v2 systemBlueColor];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  *a1 = v18;
  a1[1] = v17;
  a1[2] = v16;
  a1[3] = v19;
  a1[4] = v7;
  a1[5] = v10;
  a1[6] = v11;
  a1[7] = v12;
  a1[8] = v13;
  a1[9] = v14;
  a1[10] = result;
  return result;
}

void __swiftcall HeadlineColorPalette.init(backgroundColor:titleColor:excerptColor:accessoryColor:publisherNameColor:thumbnailPlaceholderColor:badgePressReleaseColor:badgeBreakingColor:badgeDevelopingColor:badgeUpdatedColor:badgeSubscriptionColor:)(NewsFeed::HeadlineColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor excerptColor, UIColor accessoryColor, UIColor publisherNameColor, UIColor thumbnailPlaceholderColor, UIColor badgePressReleaseColor, UIColor badgeBreakingColor, UIColor badgeDevelopingColor, UIColor badgeUpdatedColor, UIColor badgeSubscriptionColor)
{
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->excerptColor = excerptColor;
  retstr->accessoryColor = accessoryColor;
  retstr->publisherNameColor = publisherNameColor;
  retstr->thumbnailPlaceholderColor = thumbnailPlaceholderColor;
  retstr->badgePressReleaseColor = badgePressReleaseColor;
  retstr->badgeBreakingColor = badgeBreakingColor;
  *&retstr->badgeDevelopingColor.super.isa = *&badgeDevelopingColor.super.isa;
  retstr->badgeSubscriptionColor = badgeSubscriptionColor;
}

uint64_t static HeadlineColorPalette.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF0E9F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EDF0EA20;
  v2 = xmmword_1EDF0EA40;
  v9[3] = unk_1EDF0EA30;
  v9[4] = xmmword_1EDF0EA40;
  v3 = qword_1EDF0EA50;
  v10 = qword_1EDF0EA50;
  v4 = xmmword_1EDF0EA00;
  v5 = *algn_1EDF0EA10;
  v9[0] = xmmword_1EDF0EA00;
  v9[1] = *algn_1EDF0EA10;
  v9[2] = xmmword_1EDF0EA20;
  *(a1 + 48) = unk_1EDF0EA30;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return sub_1D61E142C(v9, v8);
}

void __swiftcall HeadlineColorPalette.init(backgroundColor:titleColor:excerptColor:accessoryColor:publisherNameColor:thumbnailPlaceholderColor:badgePressReleaseColor:badgeBreakingColor:badgeDevelopingColor:badgeUpdatedColor:)(NewsFeed::HeadlineColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor excerptColor, UIColor accessoryColor, UIColor publisherNameColor, UIColor thumbnailPlaceholderColor, UIColor badgePressReleaseColor, UIColor badgeBreakingColor, UIColor badgeDevelopingColor, UIColor badgeUpdatedColor)
{
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->excerptColor = excerptColor;
  retstr->accessoryColor = accessoryColor;
  retstr->publisherNameColor = publisherNameColor;
  retstr->thumbnailPlaceholderColor = thumbnailPlaceholderColor;
  retstr->badgePressReleaseColor = badgePressReleaseColor;
  retstr->badgeBreakingColor = badgeBreakingColor;
  retstr->badgeDevelopingColor = badgeDevelopingColor;
  retstr->badgeUpdatedColor = badgeUpdatedColor;
  retstr->badgeSubscriptionColor.super.isa = v19;
}

unint64_t sub_1D61E1524()
{
  result = qword_1EC885100;
  if (!qword_1EC885100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885100);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D61E159C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D61E15E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D61E1698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867694E7369;
  }

  else
  {
    v3 = 0x7961447369;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867694E7369;
  }

  else
  {
    v5 = 0x7961447369;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D61E173C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61E17BC()
{
  sub_1D72621EC();
}

uint64_t sub_1D61E1828()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61E18A4@<X0>(char *a1@<X8>)
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

void sub_1D61E1904(uint64_t *a1@<X8>)
{
  v2 = 0x7961447369;
  if (*v1)
  {
    v2 = 0x746867694E7369;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatWeatherBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61E1A9C()
{
  result = qword_1EC885108;
  if (!qword_1EC885108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885108);
  }

  return result;
}

unint64_t sub_1D61E1AF0(uint64_t a1)
{
  result = sub_1D61E1B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61E1B18()
{
  result = qword_1EC885110;
  if (!qword_1EC885110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885110);
  }

  return result;
}

unint64_t sub_1D61E1BAC(void *a1)
{
  a1[1] = sub_1D61E1BE4();
  a1[2] = sub_1D61E1C38();
  result = sub_1D61E1A9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61E1BE4()
{
  result = qword_1EDF0EAD0;
  if (!qword_1EDF0EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAD0);
  }

  return result;
}

unint64_t sub_1D61E1C38()
{
  result = qword_1EDF0EAD8;
  if (!qword_1EDF0EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAD8);
  }

  return result;
}

unint64_t sub_1D61E1D10()
{
  result = qword_1EC885138;
  if (!qword_1EC885138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885138);
  }

  return result;
}

unint64_t sub_1D61E1D64()
{
  result = qword_1EDF0EAE8;
  if (!qword_1EDF0EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAE8);
  }

  return result;
}

uint64_t sub_1D61E1DB8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedWeather(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_1D60B1278(a2, v10);
  v11 = v10[*(v7 + 40)];
  sub_1D60B12DC(v10);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 ^ 1;
  }

  if (v12)
  {
    v14 = 0x796144207349;
  }

  else
  {
    v14 = 0x746867694E207349;
  }

  if (v12)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  v16 = type metadata accessor for FormatInspectionItem(0);
  v17 = *(v16 + 24);
  *(a3 + v17) = v13;
  v18 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
  *a3 = v14;
  a3[1] = v15;
  a3[2] = 0;
  a3[3] = 0;
  v19 = a3 + *(v16 + 28);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -1;
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

uint64_t sub_1D61E1F60(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v4 = v30;
    v5 = v1 + 56;
    result = sub_1D7263B7C();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];

      MEMORY[0x1DA6F9910](v11, v12);

      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = 539828256;
      *(v17 + 40) = 0xE400000000000000;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1D5C86234(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1D5C86234(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
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

uint64_t sub_1D61E2204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  sub_1D5E2D970();
  v10 = swift_allocError();
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  sub_1D61E3908(v5, v6, v7, v8, v9);
  v12 = a3(v10);

  return v12;
}

uint64_t sub_1D61E22C8(uint64_t (*a1)(void *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D5E2D970();
  v8 = swift_allocError();
  *v9 = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  sub_1D61E3908(v3, v4, v5, v6, v7);
  v10 = a1(v8);

  return v10;
}

uint64_t sub_1D61E2374(void *a1)
{
  sub_1D61E4AB8(0, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = &v83 - v8;
  v9 = sub_1D7263E2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E4AB8(0, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v83 - v20;
  v85 = a1;
  v22 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v23 = sub_1D7263E3C();
  v24 = swift_dynamicCast();
  v25 = *(*(v23 - 8) + 56);
  if (v24)
  {
    v26 = *(v23 - 8);
    v25(v21, 0, 1, v23);
    sub_1D61E4F50(v21, v17, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
    v27 = (*(v26 + 88))(v17, v23);
    if (v27 == *MEMORY[0x1E69E6AF8])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA608();
      (*(v10 + 32))(v13, &v17[*(v28 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0x73694D2065707954;
      v87[1] = 0xEF203A686374616DLL;
LABEL_15:
      v46 = sub_1D7263E1C();
      MEMORY[0x1DA6F9910](v46);

      v36 = v87[0];
      (*(v10 + 8))(v13, v9);
LABEL_16:
      sub_1D61E4B0C(v21, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
      return v36;
    }

    if (v27 == *MEMORY[0x1E69E6B08])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA608();
      (*(v10 + 32))(v13, &v17[*(v43 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v44 = 0x80000001D73CE750;
      v45 = 0xD000000000000011;
LABEL_14:
      v87[0] = v45;
      v87[1] = v44;
      goto LABEL_15;
    }

    if (v27 == *MEMORY[0x1E69E6AF0])
    {
      (*(v26 + 96))(v17, v23);
      sub_1D5EEA7C0();
      (*(v10 + 32))(v13, &v17[*(v51 + 48)], v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0x20746F4E2079654BLL;
      v87[1] = 0xEF203A646E756F46;
      v52 = sub_1D7263E1C();
      MEMORY[0x1DA6F9910](v52);

      v36 = v87[0];
      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_16;
    }

    if (v27 == *MEMORY[0x1E69E6B00])
    {
      (*(v26 + 96))(v17, v23);
      (*(v10 + 32))(v13, v17, v9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v44 = 0x80000001D73CE730;
      v45 = 0xD000000000000010;
      goto LABEL_14;
    }

    (*(v26 + 8))(v17, v23);
  }

  else
  {
    v25(v21, 1, 1, v23);
  }

  sub_1D61E4B0C(v21, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  v91 = a1;
  v29 = a1;
  v30 = sub_1D725B19C();
  v31 = v84;
  v32 = swift_dynamicCast();
  v33 = *(*(v30 - 8) + 56);
  if (v32)
  {
    v34 = *(v30 - 8);
    v33(v31, 0, 1, v30);
    sub_1D61E4F50(v31, v5, &qword_1EC885140, MEMORY[0x1E69D66B8]);
    v35 = (*(v34 + 88))(v5, v30);
    if (v35 == *MEMORY[0x1E69D66A8])
    {
      (*(v34 + 8))(v5, v30);
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return 0x6F43207974706D45;
    }

    if (v35 == *MEMORY[0x1E69D6668])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE710;
      v50 = 0xD00000000000001DLL;
LABEL_24:
      v87[0] = v50;
      v87[1] = v49;
LABEL_25:
      v53 = v47;
LABEL_26:
      MEMORY[0x1DA6F9910](v53, v48);

LABEL_27:
      v36 = v87[0];
LABEL_28:
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D6660])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE6F0;
      v50 = 0xD00000000000001CLL;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6658])
    {
      (*(v34 + 96))(v5, v30);

      sub_1D5B7DDE8(v5, v87);
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x20746F4E2079654BLL, 0xEF203A646E756F46);
      __swift_project_boxed_opaque_existential_1(v87, v89);
      sub_1D726466C();
      v36 = v85;
      __swift_destroy_boxed_opaque_existential_1(v87);
      goto LABEL_28;
    }

    if (v35 == *MEMORY[0x1E69D6680])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 2);
      v48 = *(v5 + 3);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73CE6D0);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](0x20726F6620, 0xE500000000000000);
      goto LABEL_25;
    }

    if (v35 == *MEMORY[0x1E69D6688])
    {
      (*(v34 + 96))(v5, v30);
      v54 = *(v5 + 1);
      v47 = *(v5 + 2);
      v48 = *(v5 + 3);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE6B0;
      v50 = 0xD000000000000015;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6650])
    {
      v36 = 0x2064696C61766E49;
      (*(v34 + 8))(v5, v30);
      sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D6670])
    {
      (*(v34 + 96))(v5, v30);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73CE690);
      sub_1D7262ABC();
      goto LABEL_27;
    }

    if (v35 == *MEMORY[0x1E69D6698])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v49 = 0x80000001D73CE670;
      v50 = 0xD000000000000017;
      goto LABEL_24;
    }

    if (v35 == *MEMORY[0x1E69D6648])
    {
      (*(v34 + 96))(v5, v30);
      v47 = *(v5 + 1);
      v48 = *(v5 + 2);

      strcpy(v87, "Invalid URL: ");
      HIWORD(v87[1]) = -4864;
      goto LABEL_25;
    }

    if (v35 == *MEMORY[0x1E69D66B0])
    {
      (*(v34 + 96))(v5, v30);
      v67 = *(v5 + 1);
      v68 = *(v5 + 2);
      v69 = *(v5 + 3);
      v48 = *(v5 + 4);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000018;
      v87[1] = 0x80000001D73CE650;
      MEMORY[0x1DA6F9910](v67, v68);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      v53 = v69;
      goto LABEL_26;
    }

    if (v35 == *MEMORY[0x1E69D6678])
    {
      (*(v34 + 96))(v5, v30);

      v70 = *(v5 + 6);
      v71 = *(v5 + 7);
      v72 = *(v5 + 8);
      v73 = *(v5 + 9);
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000020;
      v87[1] = 0x80000001D73CE620;
      MEMORY[0x1DA6F9910](v70, v71);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      MEMORY[0x1DA6F9910](v72, v73);

      v36 = v87[0];
      __swift_destroy_boxed_opaque_existential_1((v5 + 8));
      goto LABEL_28;
    }

    if (v35 == *MEMORY[0x1E69D6690])
    {
      (*(v34 + 96))(v5, v30);
      v74 = *(v5 + 1);
      v75 = *(v5 + 2);
      v76 = *(v5 + 3);
      v78 = *(v5 + 4);
      v77 = *(v5 + 5);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73CE5F0);
      MEMORY[0x1DA6F9910](v75, v76);

      MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
      MEMORY[0x1DA6F9910](v78, v77);

      MEMORY[0x1DA6F9910](544432416, 0xE400000000000000);
      v85 = v74;
      v79 = sub_1D72644BC();
LABEL_88:
      MEMORY[0x1DA6F9910](v79, v80);

      v36 = v87[0];
      sub_1D61E4B0C(v84, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      return v36;
    }

    if (v35 == *MEMORY[0x1E69D66A0])
    {
      (*(v34 + 96))(v5, v30);
      v81 = *(v5 + 1);
      v82 = *(v5 + 2);

      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v87[0] = 0xD000000000000017;
      v87[1] = 0x80000001D73CE5D0;
      v79 = v81;
      v80 = v82;
      goto LABEL_88;
    }

    (*(v34 + 8))(v5, v30);
    v31 = v84;
  }

  else
  {
    v33(v31, 1, 1, v30);
  }

  sub_1D61E4B0C(v31, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  v85 = a1;
  v37 = a1;
  if (swift_dynamicCast())
  {
    v38 = v87[0];
    v39 = v87[1];
    v41 = v88;
    v40 = v89;
    v42 = v90;
    switch((v42 >> 59) & 0x1E | (v42 >> 2) & 1)
    {
      case 1uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE370;
        v56 = 0xD000000000000017;
        goto LABEL_56;
      case 2uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000031, 0x80000001D73CE590);
        MEMORY[0x1DA6F9910](v38, v39);

        MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73CE350);
        v60 = v41;
        goto LABEL_59;
      case 3uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v57 = "Slot Item Sets Min Less than 0: ";
        goto LABEL_49;
      case 4uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v57 = "Slot Item Sets Max Less than 1: ";
LABEL_49:
        v87[0] = 0xD000000000000020;
        v87[1] = (v57 - 32) | 0x8000000000000000;
        LODWORD(v91) = v38;
        goto LABEL_53;
      case 5uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0xD000000000000022;
        v87[1] = 0x80000001D73CE500;
        LODWORD(v91) = HIDWORD(v38);
        v62 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v62);

        MEMORY[0x1DA6F9910](2112544, 0xE300000000000000);
        LODWORD(v91) = v38;
LABEL_53:
        v63 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v63);
        goto LABEL_64;
      case 6uLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE2B0;
        v56 = 0xD000000000000027;
        goto LABEL_56;
      case 7uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = "Invalid State Machine Event Input: ";
        goto LABEL_61;
      case 8uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v61 = "Invalid State Machine State Input: ";
LABEL_61:
        v58 = (v61 - 32) | 0x8000000000000000;
        v59 = 0xD000000000000023;
        goto LABEL_62;
      case 9uLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v58 = 0x80000001D73CE450;
        v59 = 0xD000000000000026;
LABEL_62:
        v87[0] = v59;
        v87[1] = v58;
        goto LABEL_63;
      case 0xAuLL:

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0xD000000000000028;
        v87[1] = 0x80000001D73CE420;
        v64 = sub_1D7262B1C();
        v40 = v65;

        v60 = v64;
LABEL_59:
        MEMORY[0x1DA6F9910](v60, v40);
        goto LABEL_64;
      case 0xBuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE400;
        v56 = 0xD00000000000001FLL;
        goto LABEL_56;
      case 0xCuLL:

        v36 = sub_1D61E2374(v42 & 0xFFFFFFFFFFFFFFBLL);

        return v36;
      case 0xDuLL:

        strcpy(v87, "Invalid Key: ");
        HIWORD(v87[1]) = -4864;
LABEL_63:
        MEMORY[0x1DA6F9910](v38, v39);
LABEL_64:

        return v87[0];
      case 0xEuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v87[0] = 0x206E776F6E6B6E55;
        v87[1] = 0xEF203A65756C6156;
        goto LABEL_57;
      case 0xFuLL:
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v55 = 0x80000001D73CE3E0;
        v56 = 0xD00000000000001BLL;
LABEL_56:
        v87[0] = v56;
        v87[1] = v55;
LABEL_57:
        MEMORY[0x1DA6F9910](v38, v39);
        sub_1D5EC0FE8(v38, v39, v41, v40, v42);
        return v87[0];
      case 0x10uLL:
        if (!(v88 | v87[1] | v87[0] | v89) && v90 == 0x8000000000000000)
        {
          return 0xD00000000000001ELL;
        }

        if (v90 == 0x8000000000000000 && v87[0] == 1 && !(v88 | v87[1] | v89))
        {
          return 0xD000000000000015;
        }

        return 0xD00000000000002FLL;
      default:
        v36 = 0xD000000000000020;
        sub_1D5EC0FE8(v87[0], v87[1], v88, v89, v90);
        return v36;
    }
  }

  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  v85 = a1;
  sub_1D7263F9C();
  return v87[0];
}

void sub_1D61E3908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  switch((a5 >> 59) & 0x1E | (a5 >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 6uLL:
    case 0xBuLL:
    case 0xEuLL:
    case 0xFuLL:
      goto LABEL_3;
    case 2uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xDuLL:

LABEL_3:

      break;
    case 0xCuLL:

      v6 = (a5 & 0xFFFFFFFFFFFFFFBLL);
      break;
    default:
      return;
  }
}

unint64_t sub_1D61E39D0(void *a1)
{
  sub_1D61E4AB8(0, &qword_1EC885140, MEMORY[0x1E69D66B8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v99 - v4;
  v6 = sub_1D725B19C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E4AB8(0, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v99 - v13;
  v15 = sub_1D7263E3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v20 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    v23 = sub_1D5EE9EE4(v19);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    v22(v14, 1, 1, v15);
    sub_1D61E4B0C(v14, &qword_1EC880A18, MEMORY[0x1E69E6B20]);
    v106 = a1;
    v24 = a1;
    v25 = swift_dynamicCast();
    v26 = *(v7 + 56);
    if (v25)
    {
      v26(v5, 0, 1, v6);
      (*(v7 + 32))(v10, v5, v6);
      sub_1D61E4F08(&qword_1EC885148, MEMORY[0x1E69D66B8]);
      v23 = sub_1D72644BC();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v26(v5, 1, 1, v6);
      sub_1D61E4B0C(v5, &qword_1EC885140, MEMORY[0x1E69D66B8]);
      v111 = a1;
      v27 = a1;
      if (swift_dynamicCast())
      {
        v28 = v106;
        v29 = v107;
        v31 = v108;
        v30 = v109;
        v32 = v110;
        switch((v32 >> 59) & 0x1E | (v32 >> 2) & 1)
        {
          case 1uLL:
            v106 = 0;
            v107 = 0xE000000000000000;
            v53 = v28;
            sub_1D7263D4C();

            v54 = 0x80000001D73CE370;
            v55 = 0xD000000000000017;
            goto LABEL_41;
          case 2uLL:
            v106 = 0;
            v107 = 0xE000000000000000;
            v43 = v28;
            sub_1D7263D4C();

            v106 = 0x206E6F6974704FLL;
            v107 = 0xE700000000000000;
            MEMORY[0x1DA6F9910](v43, v29);

            MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73CE350);
            v44 = v31;
            goto LABEL_65;
          case 3uLL:
          case 4uLL:
          case 5uLL:
            return 0xD000000000000044;
          case 6uLL:
            v106 = 0;
            v107 = 0xE000000000000000;
            v53 = v28;
            sub_1D7263D4C();

            v54 = 0x80000001D73CE2B0;
            v55 = 0xD000000000000027;
LABEL_41:
            v106 = v55;
            v107 = v54;
            MEMORY[0x1DA6F9910](v53, v29);
            sub_1D5EC0FE8(v53, v29, v31, v30, v32);
            goto LABEL_67;
          case 7uLL:

            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();

            v106 = 0xD000000000000012;
            v107 = 0x80000001D73CE290;
            v34 = sub_1D61E1F60(v31);
            goto LABEL_53;
          case 8uLL:

            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();

            v106 = 0xD000000000000012;
            v107 = 0x80000001D73CE270;
            v83 = *(v31 + 16);
            if (!v83)
            {
              goto LABEL_54;
            }

            v101 = MEMORY[0x1E69E7CC0];
            sub_1D5BFC364(0, v83, 0);
            v34 = v101;
            v100 = v31;
            v84 = (v31 + 40);
            do
            {
              v85 = *(v84 - 1);
              v86 = *v84;
              v104 = 539828256;
              v105 = 0xE400000000000000;

              MEMORY[0x1DA6F9910](v85, v86);

              v87 = v104;
              v88 = v105;
              v101 = v34;
              v90 = *(v34 + 16);
              v89 = *(v34 + 24);
              if (v90 >= v89 >> 1)
              {
                sub_1D5BFC364((v89 > 1), v90 + 1, 1);
                v34 = v101;
              }

              *(v34 + 16) = v90 + 1;
              v91 = v34 + 16 * v90;
              *(v91 + 32) = v87;
              *(v91 + 40) = v88;
              v84 += 2;
              --v83;
            }

            while (v83);
            goto LABEL_53;
          case 9uLL:

            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();

            v106 = 0xD000000000000012;
            v107 = 0x80000001D73CE270;
            v33 = *(v31 + 16);
            if (v33)
            {
              v101 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v33, 0);
              v34 = v101;
              v100 = v31;
              v35 = (v31 + 40);
              do
              {
                v36 = *(v35 - 1);
                v37 = *v35;
                v104 = 539828256;
                v105 = 0xE400000000000000;

                MEMORY[0x1DA6F9910](v36, v37);

                v38 = v104;
                v39 = v105;
                v101 = v34;
                v41 = *(v34 + 16);
                v40 = *(v34 + 24);
                if (v41 >= v40 >> 1)
                {
                  sub_1D5BFC364((v40 > 1), v41 + 1, 1);
                  v34 = v101;
                }

                *(v34 + 16) = v41 + 1;
                v42 = v34 + 16 * v41;
                *(v42 + 32) = v38;
                *(v42 + 40) = v39;
                v35 += 2;
                --v33;
              }

              while (v33);
LABEL_53:
            }

            else
            {
LABEL_54:

              v34 = MEMORY[0x1E69E7CC0];
            }

            v104 = v34;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8);
            v92 = sub_1D7261F3C();
            v30 = v93;

            v44 = v92;
            goto LABEL_65;
          case 0xAuLL:

            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();

            v106 = 0xD000000000000012;
            v107 = 0x80000001D73CE270;
            v73 = *(v29 + 16);
            if (v73)
            {
              v101 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v73, 0);
              v74 = v101;
              v75 = (v29 + 40);
              do
              {
                v76 = *(v75 - 1);
                v77 = *v75;
                v104 = 539828256;
                v105 = 0xE400000000000000;

                MEMORY[0x1DA6F9910](v76, v77);

                v78 = v104;
                v79 = v105;
                v101 = v74;
                v81 = *(v74 + 16);
                v80 = *(v74 + 24);
                if (v81 >= v80 >> 1)
                {
                  sub_1D5BFC364((v80 > 1), v81 + 1, 1);
                  v74 = v101;
                }

                *(v74 + 16) = v81 + 1;
                v82 = v74 + 16 * v81;
                *(v82 + 32) = v78;
                *(v82 + 40) = v79;
                v75 += 2;
                --v73;
              }

              while (v73);
            }

            else
            {

              v74 = MEMORY[0x1E69E7CC0];
            }

            v104 = v74;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8);
            v51 = sub_1D7261F3C();
            v30 = v97;

            goto LABEL_64;
          case 0xBuLL:
            sub_1D5EC0FE8(v106, v107, v108, v109, v110);
            return 0xD000000000000038;
          case 0xCuLL:

            v23 = sub_1D61E39D0(v32 & 0xFFFFFFFFFFFFFFBLL);

            return v23;
          case 0xDuLL:

            if (qword_1EDF2F570 != -1)
            {
              swift_once();
            }

            v56 = sub_1D7261D6C();
            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();

            v106 = 0xD000000000000010;
            v107 = 0x80000001D73CE3C0;
            v57 = *(v31 + 16);
            if (v57)
            {
              v103 = MEMORY[0x1E69E7CC0];
              sub_1D5BFC364(0, v57, 0);
              v58 = v103;
              v100 = v31;
              v59 = (v31 + 40);
              do
              {
                v61 = *(v59 - 1);
                v60 = *v59;
                v104 = 539828256;
                v105 = 0xE400000000000000;
                v62 = *(v56 + 16);

                if (v62 && (v63 = sub_1D5B69D90(v61, v60), (v64 & 1) != 0))
                {
                  v65 = (*(v56 + 56) + 16 * v63);
                  v66 = v65[1];
                  v101 = *v65;
                  v102 = v66;

                  MEMORY[0x1DA6F9910](544370464, 0xE400000000000000);
                  MEMORY[0x1DA6F9910](v61, v60);
                  v61 = v101;
                  v67 = v102;
                }

                else
                {

                  v67 = v60;
                }

                MEMORY[0x1DA6F9910](v61, v67);

                v68 = v104;
                v69 = v105;
                v103 = v58;
                v71 = *(v58 + 16);
                v70 = *(v58 + 24);
                if (v71 >= v70 >> 1)
                {
                  sub_1D5BFC364((v70 > 1), v71 + 1, 1);
                  v58 = v103;
                }

                *(v58 + 16) = v71 + 1;
                v72 = v58 + 16 * v71;
                *(v72 + 32) = v68;
                *(v72 + 40) = v69;
                v59 += 2;
                --v57;
              }

              while (v57);
            }

            else
            {

              v58 = MEMORY[0x1E69E7CC0];
            }

            v104 = v58;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8);
            v94 = sub_1D7261F3C();
            v96 = v95;

            MEMORY[0x1DA6F9910](v94, v96);
            goto LABEL_66;
          case 0xEuLL:
            sub_1D5EC0FE8(v106, v107, v108, v109, v110);
            return 0xD000000000000027;
          case 0xFuLL:
            sub_1D5EC0FE8(v106, v107, v108, v109, v110);
            v106 = 0;
            v107 = 0xE000000000000000;
            sub_1D7263D4C();
            MEMORY[0x1DA6F9910](0xD000000000000034, 0x80000001D73CE190);
            v101 = MEMORY[0x1E69E7CC0];
            sub_1D5BFC364(0, 1, 0);
            v45 = v101;
            v104 = 0;
            v105 = 0xE000000000000000;
            MEMORY[0x1DA6F9910](539828256, 0xE400000000000000);
            sub_1D7263F9C();
            v46 = v104;
            v47 = v105;
            v49 = *(v45 + 16);
            v48 = *(v45 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1D5BFC364((v48 > 1), v49 + 1, 1);
              v45 = v101;
            }

            *(v45 + 16) = v49 + 1;
            v50 = v45 + 16 * v49;
            *(v50 + 32) = v46;
            *(v50 + 40) = v47;
            v104 = v45;
            sub_1D5BBE0A8();
            sub_1D61E4F08(&qword_1EDF3C840, sub_1D5BBE0A8);
            v51 = sub_1D7261F3C();
            v30 = v52;

LABEL_64:
            v44 = v51;
LABEL_65:
            MEMORY[0x1DA6F9910](v44, v30);
LABEL_66:

LABEL_67:
            v23 = v106;
            break;
          case 0x10uLL:
            if (v108 | v107 | v106 | v109 || v110 != 0x8000000000000000)
            {
              if (v110 == 0x8000000000000000 && v106 == 1 && !(v108 | v107 | v109))
              {
                v23 = 0xD000000000000015;
              }

              else
              {
                v23 = 0xD00000000000002FLL;
              }
            }

            else
            {
              v23 = 0xD000000000000044;
            }

            break;
          default:
            sub_1D5EC0FE8(v106, v107, v108, v109, v110);
            v23 = 0xD000000000000020;
            break;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v23;
}

unint64_t sub_1D61E4948(uint64_t a1)
{
  result = sub_1D5E2D970();
  *(a1 + 8) = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatDecodingErrorO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return (v1 >> 59) & 0x1E | (v1 >> 2) & 1;
  }

  else
  {
    return (*a1 + 16);
  }
}

uint64_t sub_1D61E4994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 40))
  {
    return (*a1 + 112);
  }

  v3 = ((((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7) >> 2) & 0xFFFFFF9F | (32 * (*(a1 + 32) & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61E49F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D61E4A68(void *result, uint64_t a2)
{
  if (a2 < 0x10)
  {
    result[4] = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | result[4] & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (a2 - 16);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
  }

  return result;
}

void sub_1D61E4AB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D61E4B0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D61E4AB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D61E4B68(void *a1, void *a2, uint64_t *a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = a4[1];
  *a1 = *a4;
  a1[1] = v6;
  *a2 = v4;
  a2[1] = v5;
}

void *sub_1D61E4BA4(void *a1)
{
  v2 = sub_1D725AAFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1;
  v7 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if ((*(v3 + 88))(v6, v2) != *MEMORY[0x1E69D64D0])
  {
    (*(v3 + 8))(v6, v2);
LABEL_5:
    v9 = a1;
    goto LABEL_6;
  }

  (*(v3 + 96))(v6, v2);
  v8 = *v6;
  a1 = sub_1D61E4BA4(*v6);

LABEL_6:
  return a1;
}

uint64_t sub_1D61E4D1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D61E4D78()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D61E4DC0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D61E4E38@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D61E4E90(uint64_t a1)
{
  v2 = sub_1D61E5270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E4ECC(uint64_t a1)
{
  v2 = sub_1D61E5270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E4F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D61E4F50(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D61E4AB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D61E4FBC(void *a1, uint64_t a2)
{
  sub_1D61E5214();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.allowSourceMaps.getter(v10);

  if (v11)
  {
    a2 = sub_1D61E4BA4(a2);
    v25 = a2;
    v12 = a2;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    if (!swift_dynamicCast() || (v13 = (v24 >> 59) & 0x1E | (v24 >> 2) & 1, sub_1D5EC0FE8(v21, *(&v21 + 1), v22, v23, v24), v13 != 12))
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D61E5270();
      sub_1D7264B0C();
      sub_1D61E52C4();
      sub_1D726431C();
      v20 = v21;
      v16 = a2 | 0x6000000000000000;
      v17 = v22;
      v18 = v23;
      sub_1D5E2D970();
      a2 = swift_allocError();
      *v19 = v20;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      *(v19 + 32) = v16;
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    v14 = a2;
  }

  return a2;
}

void sub_1D61E5214()
{
  if (!qword_1EDF19C90)
  {
    sub_1D61E5270();
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19C90);
    }
  }
}

unint64_t sub_1D61E5270()
{
  result = qword_1EDF2C930;
  if (!qword_1EDF2C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C930);
  }

  return result;
}

unint64_t sub_1D61E52C4()
{
  result = qword_1EDF31210;
  if (!qword_1EDF31210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31210);
  }

  return result;
}

unint64_t sub_1D61E532C()
{
  result = qword_1EC885150;
  if (!qword_1EC885150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885150);
  }

  return result;
}

unint64_t sub_1D61E5384()
{
  result = qword_1EDF2C920;
  if (!qword_1EDF2C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C920);
  }

  return result;
}

unint64_t sub_1D61E53DC()
{
  result = qword_1EDF2C928;
  if (!qword_1EDF2C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C928);
  }

  return result;
}

uint64_t FormatBindingLayeredMediaExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61E54C0()
{
  result = qword_1EC885158;
  if (!qword_1EC885158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885158);
  }

  return result;
}

unint64_t sub_1D61E5514(uint64_t a1)
{
  result = sub_1D61E553C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61E553C()
{
  result = qword_1EC885160;
  if (!qword_1EC885160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885160);
  }

  return result;
}

unint64_t sub_1D61E5590(void *a1)
{
  a1[1] = sub_1D5F2E4C8();
  a1[2] = sub_1D5F2E51C();
  result = sub_1D61E54C0();
  a1[3] = result;
  return result;
}

uint64_t sub_1D61E5630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a2;
  sub_1D61E65E0(0, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v129 = &v108 - v8;
  v120 = sub_1D725D52C();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v9);
  v128 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D725D7FC();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v11);
  v113 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61E65E0(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v118 = &v108 - v15;
  sub_1D61E65E0(0, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v108 - v18;
  v108 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v108, v20);
  v109 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1D725B47C();
  v132 = *(v22 - 8);
  v133 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v127 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v126 = &v108 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v108 - v30);
  MEMORY[0x1EEE9AC00](v32, v33);
  v131 = &v108 - v34;
  v35 = *(v3 + 16);
  v36 = v35[5];
  v37 = v35[6];
  __swift_project_boxed_opaque_existential_1(v35 + 2, v36);
  v38 = (*(v37 + 32))(a1, v36, v37);
  type metadata accessor for DiagnosticDataDirectoryNameGenerator();
  *(swift_initStackObject() + 16) = 0;
  v39 = sub_1D70B57CC(a1, v38);

  v40 = *(*(v3 + 24) + 120);
  v110 = a1;
  v134 = a1;
  os_unfair_lock_lock(v40 + 6);
  sub_1D61E6634(v137);
  os_unfair_lock_unlock(v40 + 6);
  v123 = v137[0];
  if (v137[0] >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v137[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = a3;
  v115 = v19;
  v111 = 0;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v42 = 0;
    v43 = v123;
    v124 = (v123 & 0xC000000000000001);
    LODWORD(v122) = *MEMORY[0x1E69D67E0];
    v44 = (v132 + 104);
    v130 = v132 + 32;
    LODWORD(v121) = *MEMORY[0x1E69D67D8];
    v45 = v39;
    v125 = result;
    do
    {
      if (v124)
      {
        v46 = MEMORY[0x1DA6FB460](v42, v43);
      }

      else
      {
        v46 = *(v43 + 8 * v42 + 32);
      }

      v47 = UIImagePNGRepresentation(*(v46 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_image));
      if (v47)
      {
        v48 = v47;
        v49 = sub_1D725867C();
        v51 = v50;

        v52 = swift_allocObject();
        v52[2] = v49;
        v52[3] = v51;
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_1D5E3E824(v49, v51);
        sub_1D7263D4C();

        strcpy(v137, "gen-datastore-");
        HIBYTE(v137[1]) = -18;
        v53 = sub_1D725893C();
        MEMORY[0x1DA6F9910](v53);

        v54 = v137[1];
        v52[4] = v137[0];
        v52[5] = v54;
        v52[6] = 6778480;
        v52[7] = 0xE300000000000000;
        *v131 = v52;
        (*v44)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D6990368(0, v45[2] + 1, 1, v45);
        }

        v56 = v45[2];
        v55 = v45[3];
        if (v56 >= v55 >> 1)
        {
          v45 = sub_1D6990368(v55 > 1, v56 + 1, 1, v45);
        }

        v43 = v123;
        sub_1D5B952F8(v49, v51);
        v45[2] = v56 + 1;
        (*(v132 + 32))(v45 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v56, v131, v133);
      }

      v57 = *(v46 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_datastore);
      if (v57)
      {
        v58 = [*(v57 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
        v59 = sub_1D726207C();
        v60 = v45;
        v62 = v61;

        v63 = swift_allocObject();
        v63[2] = v59;
        v63[3] = v62;
        v45 = v60;
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_1D7263D4C();

        strcpy(v137, "gen-image-");
        BYTE3(v137[1]) = 0;
        HIDWORD(v137[1]) = -369098752;
        sub_1D725895C();
        sub_1D61E6708();
        v64 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v64);

        MEMORY[0x1DA6F9910](0x6E6F736A2ELL, 0xE500000000000000);
        v65 = v137[1];
        v63[4] = v137[0];
        v63[5] = v65;
        *v31 = v63;
        (*v44)(v31, v121, v133);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D6990368(0, v60[2] + 1, 1, v60);
        }

        v67 = v45[2];
        v66 = v45[3];
        if (v67 >= v66 >> 1)
        {
          v45 = sub_1D6990368(v66 > 1, v67 + 1, 1, v45);
        }

        v45[2] = v67 + 1;
        (*(v132 + 32))(v45 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v67, v31, v133);
      }

      else
      {
      }

      v42 = (v42 + 1);
    }

    while (v125 != v42);
  }

  else
  {
    v45 = v39;
  }

  v68 = v109;
  sub_1D61880A0(v110, v109);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v45;
    strcpy(v137, "Web Embed <");
    HIDWORD(v137[1]) = -352321536;
    v70 = WebEmbedDataVisualization.identifier.getter();
    MEMORY[0x1DA6F9910](v70);

    MEMORY[0x1DA6F9910](62, 0xE100000000000000);
    v71 = v137[0];
    v72 = v137[1];
    sub_1D61E6650(v68);
    v73 = v120;
  }

  else
  {
    v74 = 0xE700000000000000;
    v75 = *v68;
    v76 = *v68 >> 61;
    strcpy(v137, "Sports ");
    v137[1] = 0xE700000000000000;
    v77 = 0x74656B63617262;
    v78 = 0xEC00000074726F70;
    v79 = 0x65527972756A6E69;
    if (v76 != 5)
    {
      v79 = 0x6579616C5079656BLL;
      v78 = 0xE900000000000072;
    }

    v80 = 0xE800000000000000;
    v81 = 0x65726F6353786F62;
    if (v76 != 3)
    {
      v81 = 0x726F6353656E696CLL;
      v80 = 0xE900000000000065;
    }

    if (v76 <= 4)
    {
      v79 = v81;
      v78 = v80;
    }

    if (v76 == 1)
    {
      v77 = 0x676E69646E617473;
      v74 = 0xE800000000000000;
    }

    if (!v76)
    {
      v77 = 0x65726F6373;
      v74 = 0xE500000000000000;
    }

    if (v76 <= 2)
    {
      v82 = v74;
    }

    else
    {
      v77 = v79;
      v82 = v78;
    }

    v73 = v120;
    v69 = v45;
    v135 = v77;
    v136 = v82;
    sub_1D5BF4D9C();
    v83 = sub_1D7263A0C();
    v85 = v84;

    MEMORY[0x1DA6F9910](v83, v85);

    MEMORY[0x1DA6F9910](15392, 0xE200000000000000);
    v135 = v75;
    v86 = SportsDataVisualization.umcCanonicalId.getter();
    MEMORY[0x1DA6F9910](v86);

    MEMORY[0x1DA6F9910](62, 0xE100000000000000);

    v71 = v137[0];
    v72 = v137[1];
  }

  sub_1D725F82C();
  v87 = sub_1D725F7DC();
  if (qword_1EC87D8A8 != -1)
  {
    swift_once();
  }

  v88 = sub_1D725D19C();
  v89 = __swift_project_value_buffer(v88, qword_1EC88FCE0);
  v90 = *(v88 - 8);
  v91 = v118;
  (*(v90 + 16))(v118, v89, v88);
  (*(v90 + 56))(v91, 0, 1, v88);
  v92 = v69;
  v93 = v69[2];
  if (v93)
  {
    v110 = v72;
    v121 = v71;
    v122 = v87;
    v131 = *(v132 + 16);
    v94 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v123 = v92;
    v95 = v92 + v94;
    v130 = *(v132 + 72);
    v132 += 16;
    v125 = (v132 - 8);
    v96 = (v119 + 48);
    v124 = (v119 + 32);
    v97 = MEMORY[0x1E69E7CC0];
    v98 = v126;
    do
    {
      v99 = v133;
      v100 = v131;
      (v131)(v98, v95, v133);
      (v100)(v127, v98, v99);
      v101 = v129;
      sub_1D725D51C();
      (*v125)(v98, v99);
      if ((*v96)(v101, 1, v73) == 1)
      {
        sub_1D61E66AC(v101, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
      }

      else
      {
        v102 = *v124;
        (*v124)(v128, v101, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D69932BC(0, *(v97 + 2) + 1, 1, v97);
        }

        v104 = *(v97 + 2);
        v103 = *(v97 + 3);
        if (v104 >= v103 >> 1)
        {
          v97 = sub_1D69932BC(v103 > 1, v104 + 1, 1, v97);
        }

        *(v97 + 2) = v104 + 1;
        v73 = v120;
        v102(&v97[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v104], v128, v120);
      }

      v95 += v130;
      --v93;
    }

    while (v93);
  }

  swift_getObjectType();
  (*(v112 + 104))(v113, *MEMORY[0x1E69D79C8], v114);
  v105 = v115;
  sub_1D725F61C();
  v106 = sub_1D725F62C();
  (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
  v107 = v111;
  sub_1D725D9CC();
  if (v107)
  {

    return sub_1D61E66AC(v105, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  }

  else
  {
    sub_1D61E66AC(v105, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
  }
}

void sub_1D61E65E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D61E6650(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61E66AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D61E65E0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D61E6708()
{
  result = qword_1EC885168;
  if (!qword_1EC885168)
  {
    sub_1D725895C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885168);
  }

  return result;
}

unint64_t sub_1D61E6764()
{
  v1 = *v0;
  v2 = 0x6573616261746164;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0x4F6B726F7774656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144726566657270;
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

uint64_t sub_1D61E6820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61EBB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61E6848(uint64_t a1)
{
  v2 = sub_1D61EA6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6884(uint64_t a1)
{
  v2 = sub_1D61EA6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E68CC(uint64_t a1)
{
  v2 = sub_1D61EA670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6908(uint64_t a1)
{
  v2 = sub_1D61EA670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6944(uint64_t a1)
{
  v2 = sub_1D61EA520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6980(uint64_t a1)
{
  v2 = sub_1D61EA520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E69BC(uint64_t a1)
{
  v2 = sub_1D61EA61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E69F8(uint64_t a1)
{
  v2 = sub_1D61EA61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6A40(uint64_t a1)
{
  v2 = sub_1D61EA574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6A7C(uint64_t a1)
{
  v2 = sub_1D61EA574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E6AB8(uint64_t a1)
{
  v2 = sub_1D61EA5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E6AF4(uint64_t a1)
{
  v2 = sub_1D61EA5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.RootCursorSource.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF02938, sub_1D61EA520, &type metadata for FeedServiceOptions.RootCursorSource.NetworkOnlyCodingKeys, MEMORY[0x1E69E6F58]);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v47 - v5;
  sub_1D61EAC1C(0, &qword_1EDF02918, sub_1D61EA574, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseDateIntervalCodingKeys, v2);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v62 = &v47 - v8;
  v9 = sub_1D7257ADC();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF02920, sub_1D61EA5C8, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseMaxAgeCodingKeys, v2);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v56 = &v47 - v14;
  sub_1D61EAC1C(0, &qword_1EDF02928, sub_1D61EA61C, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseCodingKeys, v2);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = &v47 - v17;
  sub_1D61EAC1C(0, &qword_1EDF02930, sub_1D61EA670, &type metadata for FeedServiceOptions.RootCursorSource.DatabaseOnlyCodingKeys, v2);
  v19 = v18;
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF02940, sub_1D61EA6C4, &type metadata for FeedServiceOptions.RootCursorSource.CodingKeys, v2);
  v64 = *(v27 - 8);
  v65 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v47 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA6C4();
  sub_1D7264B5C();
  sub_1D61EA9AC(v63, v26, type metadata accessor for FeedServiceOptions.RootCursorSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v56;
    v37 = v57;
    v39 = v58;
    v38 = v59;
    v40 = v62;
    v41 = v60;
    if (EnumCaseMultiPayload)
    {
      v44 = v26;
      v45 = v61;
      (*(v60 + 32))(v59, v44, v61);
      v69 = 3;
      sub_1D61EA574();
      v42 = v65;
      sub_1D726436C();
      sub_1D61EA718(&qword_1EDF18AF8, MEMORY[0x1E6968130]);
      v46 = v52;
      sub_1D726443C();
      (*(v51 + 8))(v40, v46);
      (*(v41 + 8))(v38, v45);
    }

    else
    {
      v68 = 2;
      sub_1D61EA5C8();
      v42 = v65;
      sub_1D726436C();
      sub_1D726441C();
      (*(v37 + 8))(v36, v39);
    }

    return (*(v64 + 8))(v30, v42);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v66 = 0;
      sub_1D61EA670();
      v33 = v65;
      sub_1D726436C();
      (*(v47 + 8))(v22, v19);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v67 = 1;
        sub_1D61EA61C();
        v32 = v48;
        v33 = v65;
        sub_1D726436C();
        v35 = v49;
        v34 = v50;
      }

      else
      {
        v70 = 4;
        sub_1D61EA520();
        v32 = v53;
        v33 = v65;
        sub_1D726436C();
        v35 = v54;
        v34 = v55;
      }

      (*(v35 + 8))(v32, v34);
    }

    return (*(v64 + 8))(v30, v33);
  }
}

uint64_t FeedServiceOptions.RootCursorSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03C28, sub_1D61EA520, &type metadata for FeedServiceOptions.RootCursorSource.NetworkOnlyCodingKeys, MEMORY[0x1E69E6F48]);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = &v72 - v6;
  sub_1D61EAC1C(0, &qword_1EDF03C08, sub_1D61EA574, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseDateIntervalCodingKeys, v3);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v90 = &v72 - v10;
  sub_1D61EAC1C(0, &qword_1EDF03C10, sub_1D61EA5C8, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseMaxAgeCodingKeys, v3);
  v12 = *(v11 - 8);
  v79 = v11;
  v80 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v89 = &v72 - v14;
  sub_1D61EAC1C(0, &qword_1EDF03C18, sub_1D61EA61C, &type metadata for FeedServiceOptions.RootCursorSource.PreferDatabaseCodingKeys, v3);
  v78 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v88 = &v72 - v17;
  sub_1D61EAC1C(0, &qword_1EDF03C20, sub_1D61EA670, &type metadata for FeedServiceOptions.RootCursorSource.DatabaseOnlyCodingKeys, v3);
  v76 = v18;
  v75 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v87 = &v72 - v20;
  sub_1D61EAC1C(0, &qword_1EDF03C30, sub_1D61EA6C4, &type metadata for FeedServiceOptions.RootCursorSource.CodingKeys, v3);
  v22 = v21;
  v86 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v72 - v24;
  v26 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v72 - v36;
  v38 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D61EA6C4();
  v39 = v93;
  sub_1D7264B0C();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v72 = v33;
  v93 = 0;
  v40 = v87;
  v73 = v29;
  v41 = v88;
  v42 = v89;
  v43 = v90;
  v74 = v37;
  v44 = v91;
  v45 = sub_1D726433C();
  v46 = (2 * *(v45 + 16)) | 1;
  v95 = v45;
  v96 = v45 + 32;
  v97 = 0;
  v98 = v46;
  v47 = sub_1D60F6DE8();
  if (v47 == 5 || v97 != v98 >> 1)
  {
    v52 = sub_1D7263E3C();
    swift_allocError();
    v54 = v53;
    sub_1D5EEA608();
    *v54 = v26;
    v48 = v22;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v47 <= 1u)
  {
    if (v47)
    {
      v94 = 1;
      sub_1D61EA61C();
      v57 = v22;
      v66 = v93;
      sub_1D72641EC();
      v59 = v44;
      v60 = v86;
      if (!v66)
      {
        (*(v77 + 8))(v41, v78);
        (*(v60 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
        goto LABEL_23;
      }
    }

    else
    {
      v94 = 0;
      sub_1D61EA670();
      v56 = v40;
      v57 = v22;
      v58 = v93;
      sub_1D72641EC();
      v59 = v44;
      v60 = v86;
      if (!v58)
      {
        (*(v75 + 8))(v56, v76);
        (*(v60 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v70 = v92;
        goto LABEL_25;
      }
    }

    (*(v60 + 8))(v25, v57);
    goto LABEL_11;
  }

  if (v47 != 2)
  {
    if (v47 == 3)
    {
      v94 = 3;
      sub_1D61EA574();
      v48 = v22;
      v49 = v93;
      sub_1D72641EC();
      if (!v49)
      {
        sub_1D7257ADC();
        sub_1D61EA718(&qword_1EDF18AF0, MEMORY[0x1E6968130]);
        v50 = v73;
        v51 = v83;
        sub_1D726431C();
        (*(v84 + 8))(v43, v51);
        (*(v86 + 8))(v25, v22);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v71 = v74;
        sub_1D5B96CF8(v50, v74);
LABEL_24:
        v70 = v92;
        v59 = v44;
        goto LABEL_25;
      }
    }

    else
    {
      v94 = 4;
      sub_1D61EA520();
      v64 = v85;
      v48 = v22;
      v65 = v93;
      sub_1D72641EC();
      if (!v65)
      {
        (*(v81 + 8))(v64, v82);
        (*(v86 + 8))(v25, v22);
        swift_unknownObjectRelease();
        v71 = v74;
        swift_storeEnumTagMultiPayload();
        goto LABEL_24;
      }
    }

    goto LABEL_10;
  }

  v94 = 2;
  sub_1D61EA5C8();
  v48 = v22;
  v61 = v93;
  sub_1D72641EC();
  if (v61)
  {
LABEL_10:
    (*(v86 + 8))(v25, v48);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v59 = v44;
  v62 = v79;
  sub_1D72642DC();
  v63 = v86;
  v68 = v67;
  (*(v80 + 8))(v42, v62);
  (*(v63 + 8))(v25, v22);
  swift_unknownObjectRelease();
  v69 = v72;
  *v72 = v68;
  swift_storeEnumTagMultiPayload();
  v71 = v74;
  sub_1D5B96CF8(v69, v74);
  v70 = v92;
LABEL_25:
  sub_1D5B96CF8(v71, v59);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

BOOL static FeedServiceOptions.RootCursorFreshness.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D61E7E54(uint64_t a1)
{
  v2 = sub_1D61EA7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E7E90(uint64_t a1)
{
  v2 = sub_1D61EA7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E7ECC()
{
  if (*v0)
  {
    return 0x616854726577656ELL;
  }

  else
  {
    return 7958113;
  }
}

uint64_t sub_1D61E7F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616854726577656ELL && a2 == 0xE90000000000006ELL)
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

uint64_t sub_1D61E7FE8(uint64_t a1)
{
  v2 = sub_1D61EA808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8024(uint64_t a1)
{
  v2 = sub_1D61EA808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1D61E80E0(uint64_t a1)
{
  v2 = sub_1D61EA760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E811C(uint64_t a1)
{
  v2 = sub_1D61EA760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.RootCursorFreshness.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF02900, sub_1D61EA760, &type metadata for FeedServiceOptions.RootCursorFreshness.NewerThanCodingKeys, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v21 - v6;
  sub_1D61EAC1C(0, &qword_1EDF02908, sub_1D61EA7B4, &type metadata for FeedServiceOptions.RootCursorFreshness.AnyCodingKeys, v3);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  sub_1D61EAC1C(0, &qword_1EDF02910, sub_1D61EA808, &type metadata for FeedServiceOptions.RootCursorFreshness.CodingKeys, v3);
  v26 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  LOBYTE(v3) = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA808();
  sub_1D7264B5C();
  if (v3)
  {
    v27 = 0;
    sub_1D61EA7B4();
    v16 = v26;
    sub_1D726436C();
    (*(v21 + 8))(v10, v22);
    return (*(v12 + 8))(v15, v16);
  }

  else
  {
    v28 = 1;
    sub_1D61EA760();
    v18 = v23;
    v19 = v26;
    sub_1D726436C();
    v20 = v25;
    sub_1D726441C();
    (*(v24 + 8))(v18, v20);
    return (*(v12 + 8))(v15, v19);
  }
}

uint64_t FeedServiceOptions.RootCursorFreshness.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03BF0, sub_1D61EA760, &type metadata for FeedServiceOptions.RootCursorFreshness.NewerThanCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v48 = &v40[-v7];
  sub_1D61EAC1C(0, &qword_1EDF03BF8, sub_1D61EA7B4, &type metadata for FeedServiceOptions.RootCursorFreshness.AnyCodingKeys, v3);
  v9 = v8;
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40[-v11];
  sub_1D61EAC1C(0, &qword_1EDF03C00, sub_1D61EA808, &type metadata for FeedServiceOptions.RootCursorFreshness.CodingKeys, v3);
  v14 = v13;
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v40[-v16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA808();
  v18 = v49;
  sub_1D7264B0C();
  if (v18)
  {
    goto LABEL_7;
  }

  v42 = v9;
  v20 = v47;
  v19 = v48;
  v21 = v46;
  v49 = a1;
  v22 = sub_1D726433C();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_1D60F9620();
  v25 = v14;
  v26 = v17;
  if (v24 == 2 || v53 != v54 >> 1)
  {
    v32 = sub_1D7263E3C();
    swift_allocError();
    v34 = v33;
    sub_1D5EEA608();
    *v34 = &type metadata for FeedServiceOptions.RootCursorFreshness;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v21 + 8))(v26, v14);
    swift_unknownObjectRelease();
    a1 = v49;
LABEL_7:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v27 = v21;
  v41 = v24;
  if (v24)
  {
    v50 = 1;
    sub_1D61EA760();
    v28 = v19;
    sub_1D72641EC();
    v29 = v45;
    v30 = v17;
    v31 = v43;
    sub_1D72642DC();
    v39 = v38;
    (*(v44 + 8))(v28, v31);
    (*(v27 + 8))(v30, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0;
    sub_1D61EA7B4();
    v37 = v12;
    sub_1D72641EC();
    v29 = v45;
    (*(v20 + 8))(v37, v42);
    (*(v21 + 8))(v26, v25);
    swift_unknownObjectRelease();
    v39 = 0;
  }

  *v29 = v39;
  *(v29 + 8) = (v41 & 1) == 0;
  v35 = v49;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

BOOL sub_1D61E8A14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D61E8A94()
{
  v1 = 0x746C7561666564;
  if (*v0 != 1)
  {
    v1 = 0x656E696C66666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D61E8AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61EBCD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61E8B10(uint64_t a1)
{
  v2 = sub_1D61EA958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8B4C(uint64_t a1)
{
  v2 = sub_1D61EA958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8B88(uint64_t a1)
{
  v2 = sub_1D61EA8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8BC4(uint64_t a1)
{
  v2 = sub_1D61EA8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8C00(uint64_t a1)
{
  v2 = sub_1D61EA904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8C3C(uint64_t a1)
{
  v2 = sub_1D61EA904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61E8C78(uint64_t a1)
{
  v2 = sub_1D61EA85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E8CB4(uint64_t a1)
{
  v2 = sub_1D61EA85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.Database.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D61EAC1C(0, &qword_1EDF028E0, sub_1D61EA85C, &type metadata for FeedServiceOptions.Database.OfflineCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v32 = &v27 - v6;
  sub_1D61EAC1C(0, &qword_1EDF028E8, sub_1D61EA8B0, &type metadata for FeedServiceOptions.Database.DefaultCodingKeys, v3);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v29 = &v27 - v9;
  sub_1D61EAC1C(0, &qword_1EDF028F0, sub_1D61EA904, &type metadata for FeedServiceOptions.Database.NoneCodingKeys, v3);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  sub_1D61EAC1C(0, &qword_1EDF028F8, sub_1D61EA958, &type metadata for FeedServiceOptions.Database.CodingKeys, v3);
  v35 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA958();
  sub_1D7264B5C();
  v20 = (v15 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v37 = 1;
      sub_1D61EA8B0();
      v21 = v29;
      v22 = v35;
      sub_1D726436C();
      (*(v30 + 8))(v21, v31);
      return (*v20)(v18, v22);
    }

    v38 = 2;
    sub_1D61EA85C();
    v13 = v32;
    v24 = v35;
    sub_1D726436C();
    v26 = v33;
    v25 = v34;
  }

  else
  {
    v36 = 0;
    sub_1D61EA904();
    v24 = v35;
    sub_1D726436C();
    v26 = v27;
    v25 = v28;
  }

  (*(v26 + 8))(v13, v25);
  return (*v20)(v18, v24);
}

uint64_t FeedServiceOptions.Database.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedServiceOptions.Database.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D61EAC1C(0, &qword_1EDF03BD0, sub_1D61EA85C, &type metadata for FeedServiceOptions.Database.OfflineCodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v36 - v6;
  sub_1D61EAC1C(0, &qword_1EDF03BD8, sub_1D61EA8B0, &type metadata for FeedServiceOptions.Database.DefaultCodingKeys, v3);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v36 - v9;
  sub_1D61EAC1C(0, &qword_1EDF03BE0, sub_1D61EA904, &type metadata for FeedServiceOptions.Database.NoneCodingKeys, v3);
  v11 = v10;
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - v13;
  sub_1D61EAC1C(0, &qword_1EDF03BE8, sub_1D61EA958, &type metadata for FeedServiceOptions.Database.CodingKeys, v3);
  v16 = v15;
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v36 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EA958();
  v20 = v45;
  sub_1D7264B0C();
  if (v20)
  {
    goto LABEL_8;
  }

  v22 = v42;
  v21 = v43;
  v45 = a1;
  v23 = v19;
  v24 = sub_1D726433C();
  v25 = (2 * *(v24 + 16)) | 1;
  v46 = v24;
  v47 = v24 + 32;
  v48 = 0;
  v49 = v25;
  v26 = sub_1D60F961C();
  if (v26 == 3 || v48 != v49 >> 1)
  {
    v29 = sub_1D7263E3C();
    swift_allocError();
    v31 = v30;
    sub_1D5EEA608();
    *v31 = &type metadata for FeedServiceOptions.Database;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v44 + 8))(v19, v16);
    swift_unknownObjectRelease();
    a1 = v45;
LABEL_8:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  if (v26)
  {
    LODWORD(v36) = v26;
    v27 = v44;
    if (v26 == 1)
    {
      v50 = 1;
      sub_1D61EA8B0();
      sub_1D72641EC();
      v28 = v41;
      (*(v38 + 8))(v22, v39);
    }

    else
    {
      v50 = 2;
      sub_1D61EA85C();
      sub_1D72641EC();
      v28 = v41;
      (*(v37 + 8))(v21, v40);
    }

    (*(v27 + 8))(v23, v16);
    swift_unknownObjectRelease();
    v34 = v36;
  }

  else
  {
    v34 = v26;
    v50 = 0;
    sub_1D61EA904();
    sub_1D72641EC();
    v35 = v44;
    (*(v36 + 8))(v14, v11);
    (*(v35 + 8))(v19, v16);
    swift_unknownObjectRelease();
    v28 = v41;
  }

  *v28 = v34;
  v32 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t FeedServiceOptions.rootCursorFreshness.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedServiceOptions(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedServiceOptions.database.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedServiceOptions(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D61E988C()
{
  v0 = type metadata accessor for FeedServiceOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EDF38578);
  v1 = __swift_project_value_buffer(v0, qword_1EDF38578);
  type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  result = swift_storeEnumTagMultiPayload();
  *v1 = 0;
  v3 = &v1[*(v0 + 24)];
  *v3 = 0;
  v3[8] = 1;
  v1[*(v0 + 28)] = 1;
  return result;
}

uint64_t static FeedServiceOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF38570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeedServiceOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDF38578);
  return sub_1D61EA9AC(v3, a1, type metadata accessor for FeedServiceOptions);
}

unint64_t sub_1D61E999C()
{
  v1 = 0x65646F4D64656566;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6573616261746164;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1D61E9A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61EBDE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61E9A4C(uint64_t a1)
{
  v2 = sub_1D61EAB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61E9A88(uint64_t a1)
{
  v2 = sub_1D61EAB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedServiceOptions.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D61EAC1C(0, &qword_1EDF02948, sub_1D61EAB20, &type metadata for FeedServiceOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EAB20();
  sub_1D7264B5C();
  v22 = *v3;
  v21 = 0;
  sub_1D611826C();
  sub_1D726443C();
  if (!v2)
  {
    v11 = type metadata accessor for FeedServiceOptions(0);
    v20 = 1;
    type metadata accessor for FeedServiceOptions.RootCursorSource(0);
    sub_1D61EA718(&qword_1EDF14978, type metadata accessor for FeedServiceOptions.RootCursorSource);
    sub_1D726443C();
    v12 = &v3[*(v11 + 24)];
    v13 = *v12;
    LOBYTE(v12) = v12[8];
    v15 = v13;
    v16 = v12;
    v19 = 2;
    sub_1D61EAB74();
    sub_1D726443C();
    v18 = v3[*(v11 + 28)];
    v17 = 3;
    sub_1D61EABC8();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FeedServiceOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EAC1C(0, &qword_1EDF03C38, sub_1D61EAB20, &type metadata for FeedServiceOptions.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for FeedServiceOptions(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D61EAB20();
  v25 = v10;
  v16 = v26;
  sub_1D7264B0C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v17 = v23;
  v34 = 0;
  sub_1D6118218();
  v18 = v24;
  sub_1D726431C();
  *v14 = v35;
  v33 = 1;
  sub_1D61EA718(&qword_1EDF14970, type metadata accessor for FeedServiceOptions.RootCursorSource);
  sub_1D726431C();
  sub_1D5B96CF8(v6, &v14[v11[5]]);
  v32 = 2;
  sub_1D61EAC84();
  sub_1D726431C();
  v19 = v29;
  v20 = &v14[v11[6]];
  *v20 = v28;
  v20[8] = v19;
  v30 = 3;
  sub_1D61EACD8();
  sub_1D726431C();
  (*(v17 + 8))(v25, v18);
  v14[v11[7]] = v31;
  sub_1D61EA9AC(v14, v22, type metadata accessor for FeedServiceOptions);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D61EAD2C(v14, type metadata accessor for FeedServiceOptions);
}

uint64_t _s8NewsFeed0B14ServiceOptionsV16RootCursorSourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257ADC();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v31 - v14);
  sub_1D61EBF58();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  sub_1D61EA9AC(a1, v19, type metadata accessor for FeedServiceOptions.RootCursorSource);
  sub_1D61EA9AC(a2, &v19[v21], type metadata accessor for FeedServiceOptions.RootCursorSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      if (v27 != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = swift_getEnumCaseMultiPayload();
        v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
        if (v23 == 3)
        {
          goto LABEL_12;
        }

LABEL_16:
        v26 = 0;
        v24 = sub_1D61EBF58;
        goto LABEL_17;
      }

      v28 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      if (v28 != 4)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v26 = 1;
    goto LABEL_17;
  }

  v25 = v32;
  if (EnumCaseMultiPayload)
  {
    sub_1D61EA9AC(v19, v11, type metadata accessor for FeedServiceOptions.RootCursorSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v25 + 32))(v7, &v19[v21], v4);
      v26 = sub_1D7257A6C();
      v29 = *(v25 + 8);
      v29(v7, v4);
      v29(v11, v4);
      v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
      goto LABEL_17;
    }

    (*(v25 + 8))(v11, v4);
    goto LABEL_16;
  }

  sub_1D61EA9AC(v19, v15, type metadata accessor for FeedServiceOptions.RootCursorSource);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_16;
  }

  v26 = *v15 == *&v19[v21];
  v24 = type metadata accessor for FeedServiceOptions.RootCursorSource;
LABEL_17:
  sub_1D61EAD2C(v19, v24);
  return v26 & 1;
}

unint64_t sub_1D61EA520()
{
  result = qword_1EDF149F0;
  if (!qword_1EDF149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149F0);
  }

  return result;
}