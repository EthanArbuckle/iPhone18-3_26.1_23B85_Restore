unint64_t sub_1D6068DD4(uint64_t a1)
{
  result = sub_1D6068DFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6068DFC()
{
  result = qword_1EC882F70;
  if (!qword_1EC882F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F70);
  }

  return result;
}

unint64_t sub_1D6068E50(void *a1)
{
  a1[1] = sub_1D5C95C0C();
  a1[2] = sub_1D5C95C60();
  result = sub_1D5C95D10();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6068E98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D6068EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D6068F4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (a3)
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = 0;
    sub_1D606988C();

    sub_1D726443C();
    if (v3)
    {
      (*(v9 + 8))(v12, v8);
    }

    v15 = a2;
    v16 = a3;
    v14 = xmmword_1D7279980;
    sub_1D5C947A8();
    sub_1D5C75D80(&qword_1EDF12710);
    sub_1D726443C();
  }

  else
  {
    LOBYTE(v14) = 1;
    sub_1D606988C();
    v15 = 0;
    v16 = 0;
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6069194(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x63696D616E7964;
  }

  else
  {
    v3 = 0x636974617473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x63696D616E7964;
  }

  else
  {
    v5 = 0x636974617473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D6069238()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60692B8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6069324()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60693A0@<X0>(char *a1@<X8>)
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

void sub_1D6069400(uint64_t *a1@<X8>)
{
  v2 = 0x636974617473;
  if (*v1)
  {
    v2 = 0x63696D616E7964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_1D60694EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6069534(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1D6069534(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v9 = *v13;
        v13 += 2;
        if (v9 >= 4)
        {
          v16 = *(v15 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v17 = v16;
          *(v17 + 8) = v9;
          *(v17 + 16) = &unk_1F5111270;
          *(v17 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v5 + 8))(v8, v4);
          goto LABEL_9;
        }
      }
    }

    sub_1D6069838();
    v20 = 0;
    v21 = 0;
    sub_1D726431C();
    if (v19)
    {
      (*(v5 + 8))(v8, v4);
      v9 = 0;
    }

    else
    {
      sub_1D5C947A8();
      v19 = xmmword_1D7279980;
      sub_1D5C75D80(&qword_1EDF419A8);
      sub_1D726431C();
      (*(v5 + 8))(v8, v4);
      v9 = v20;
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6069838()
{
  result = qword_1EC882F78;
  if (!qword_1EC882F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F78);
  }

  return result;
}

unint64_t sub_1D606988C()
{
  result = qword_1EC882F80;
  if (!qword_1EC882F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F80);
  }

  return result;
}

unint64_t sub_1D60698F4()
{
  result = qword_1EC882F88;
  if (!qword_1EC882F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F88);
  }

  return result;
}

unint64_t sub_1D6069948()
{
  result = qword_1EC882F90;
  if (!qword_1EC882F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882F90);
  }

  return result;
}

uint64_t FormatBindingContent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatBindingContent.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBindingContent.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatBindingContent.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatBindingContent() + 28);

  return sub_1D6069A70(v3, a1);
}

uint64_t sub_1D6069A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8NewsFeed20FormatBindingContentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_16:
  v8 = *(type metadata accessor for FormatBindingContent() + 28);

  return static FormatContent.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t sub_1D6069BE0(uint64_t a1)
{
  result = sub_1D6069CB0(&qword_1EC882F98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6069C24(void *a1)
{
  a1[1] = sub_1D6069CB0(&qword_1EC882FA0);
  a1[2] = sub_1D6069CB0(&qword_1EC882FA8);
  result = sub_1D6069CB0(&qword_1EC882FB0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6069CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBindingContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D6069D38(id *a1, double *a2, char *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  [a3 setFrame_];
  v10 = *&a3[qword_1EDF30C40];
  v11 = type metadata accessor for TagMastheadViewLayoutAttributes();
  [v10 setFrame_];
  [*&a3[qword_1EDF3A2E8] setFrame_];
  [*&a3[qword_1EDF3A2E0] setFrame_];
  [*&a3[qword_1EDF3A2D8] setFrame_];
  v12 = *&a3[qword_1EDF30C48];
  [v12 setFrame_];
  sub_1D71C526C(v35);
  if (LOBYTE(v35[0]))
  {
    v13 = 4;
  }

  else
  {
    v13 = 7;
  }

  [v12 setContentMode_];
  v14 = *&a3[qword_1EDF30C38];
  [v14 setFrame_];
  [v14 setNumberOfLines_];
  v15 = *&a3[qword_1EDF3A2D0];
  [v15 setFrame_];
  v16 = *&a3[qword_1EDF30C68];
  v17 = [v16 setFrame_];
  v18 = (a2 + *(v11 + 52));
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 3);
  v23 = &a3[qword_1EDF30C58];
  *v23 = v19;
  v23[1] = v20;
  v23[2] = v21;
  *(v23 + 3) = v22;
  v24 = *&a3[qword_1EDF30C60];
  if ((a3[qword_1EDF30C50 + 8] & 1) == 0)
  {
    MEMORY[0x1DA6FA970](v17, *&a3[qword_1EDF30C50], v19, v20, v21);
  }

  [v24 setFrame_];
  v25 = sub_1D606A438();
  [v15 setBackgroundColor_];

  sub_1D5F42B3C(a3, (v34 + 96));
  v27 = *(a2 + 20);
  v26 = *(a2 + 21);
  if (*(a2 + 176) == 1)
  {
    v28 = v27;
    [v14 setHidden_];
    [v12 setHidden_];
    [v14 setAttributedText_];
    sub_1D606A3FC(v27, v26, 1);
  }

  else
  {

    v29 = v26;
    [v14 setHidden_];
    [v12 setHidden_];
    v35[3] = type metadata accessor for PublisherLogoProcessorRequest(0);
    v35[4] = sub_1D606A39C();
    v35[0] = v27;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;

    v32 = v29;
    sub_1D725FB5C();

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  [v16 setHidden_];
  return sub_1D606C690(v16, a1);
}

void sub_1D606A198(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = qword_1EDF30C48;
    v8 = *(Strong + qword_1EDF30C48);
    v9 = a1;
    v10 = v8;
    sub_1D725FBBC();

    [*&v6[v7] setIsAccessibilityElement_];
    v11 = *&v6[v7];
    v12 = [a3 string];
    if (!v12)
    {
      sub_1D726207C();
      v12 = sub_1D726203C();
    }

    [v11 setAccessibilityLabel_];

    v13 = *MEMORY[0x1E69DD9D0];
    v14 = *&v6[v7];
    v15 = [v14 accessibilityTraits];
    if ((v13 & ~v15) != 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    [v14 setAccessibilityTraits_];

    if (!a1)
    {
      v17 = qword_1EDF30C38;
      [*&v6[qword_1EDF30C38] setHidden_];
      [*&v6[v7] setHidden_];
      [*&v6[v17] setAttributedText_];
    }
  }
}

uint64_t sub_1D606A330()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

unint64_t sub_1D606A39C()
{
  result = qword_1EDF20D90;
  if (!qword_1EDF20D90)
  {
    type metadata accessor for PublisherLogoProcessorRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20D90);
  }

  return result;
}

void sub_1D606A3FC(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    a1 = a2;
    v3 = vars8;
  }
}

id sub_1D606A438()
{
  v1 = *v0;
  result = [v1 theme];
  if (result)
  {
    v3 = [result navigationChromeSeparatorColor];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v1 theme];
      if (!v4 || (v5 = [v4 darkStyleNavigationChromeSeparatorColor], swift_unknownObjectRelease(), !v5))
      {
        v5 = v3;
      }

      v6 = objc_opt_self();
      v7 = [v3 ne_color];
      v8 = [v5 ne_color];
      v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D606A578()
{
  v1 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_1D72608BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TagMastheadModel();
  sub_1D606A8EC(v0 + *(v14 + 20), v4);
  sub_1D606BD34();
  if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_1D5CEB57C(v4, v8);
  }

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D606BD98(v8, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = sub_1D726086C();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t TagMastheadModel.init(tag:placement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for TagMastheadModel();
  sub_1D606A8EC(a2, a3 + v5[5]);
  v6 = swift_unknownObjectRetain();
  v7 = sub_1D606A950(v6, a2);
  v9 = v8;
  swift_unknownObjectRelease();
  result = sub_1D606BEF4(a2, type metadata accessor for TagMastheadPlacement);
  *(a3 + v5[6]) = v7;
  *(a3 + v5[7]) = v9 & 1;
  return result;
}

uint64_t type metadata accessor for TagMastheadModel()
{
  result = qword_1EDF2F9F8;
  if (!qword_1EDF2F9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D606A8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadPlacement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D606A950(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  swift_getObjectType();
  v24 = [a1 theme];
  if ((FCTagProviding.forceBasicTagMasthead.getter() & 1) == 0)
  {
    if (v24)
    {
      sub_1D606A8EC(a2, v19);
      sub_1D606BD34();
      v30 = v29;
      v31 = *(v29 - 8);
      v32 = *(v31 + 48);
      v74 = v31 + 48;
      v75 = v32;
      v33 = v32(v19, 1, v29);
      v34 = objc_opt_self();
      swift_unknownObjectRetain();
      if (v33 == 1)
      {
        v35 = [v34 systemBackgroundColor];
      }

      else
      {
        v41 = [v34 secondarySystemBackgroundColor];
        v73 = v11;
        v42 = a2;
        v43 = v41;
        v44 = [v34 systemBackgroundColor];
        v72 = v24;
        v45 = v30;
        v46 = v7;
        v47 = v44;
        v35 = [v34 ts:v43 dynamicColor:v44 withDarkStyleVariant:?];

        a2 = v42;
        v11 = v73;

        v7 = v46;
        v30 = v45;
        v24 = v72;
        sub_1D606BD98(v19, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      swift_getObjectType();
      v28 = FCFeedTheming.navigationChromeDynamicBackgroundColor(fallback:)(v35);
      swift_unknownObjectRelease();

      if (v28)
      {
        goto LABEL_16;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v48 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
      swift_unknownObjectRelease();
      if (v48)
      {
        sub_1D606A8EC(a2, v15);
        v49 = v75(v15, 1, v30);
        v27 = objc_opt_self();
        if (v49 == 1)
        {
          goto LABEL_3;
        }

        v54 = v27;
        v55 = [v27 secondarySystemBackgroundColor];
        v56 = [v54 systemBackgroundColor];
        v28 = [v54 ts:v55 dynamicColor:v56 withDarkStyleVariant:?];

        swift_unknownObjectRelease();
        v39 = MEMORY[0x1E69B40B8];
        v40 = v15;
        goto LABEL_8;
      }
    }

    if ([a1 asSports])
    {
      swift_getObjectType();
      v28 = FCSportsProviding.navigationBarBackgroundColor.getter();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (v24)
    {
      v51 = [v24 darkStyleBackgroundColor];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 ne_color];
      }

      else
      {
        v53 = 0;
      }

      v57 = a2;
      sub_1D606A8EC(a2, v11);
      sub_1D606BD34();
      v59 = (*(*(v58 - 8) + 48))(v11, 1, v58);
      v60 = objc_opt_self();
      swift_unknownObjectRetain();
      if (v59 == 1)
      {
        v61 = [v60 systemBackgroundColor];
      }

      else
      {
        v62 = [v60 secondarySystemBackgroundColor];
        v63 = v7;
        v64 = [v60 systemBackgroundColor];
        v61 = [v60 ts:v62 dynamicColor:v64 withDarkStyleVariant:?];

        v7 = v63;
        sub_1D606BD98(v11, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      swift_getObjectType();
      v28 = FCFeedTheming.dynamicBackgroundColor(fallback:)(v61);
      swift_unknownObjectRelease();

      if (v28)
      {
        goto LABEL_31;
      }

      a2 = v57;
    }

    else
    {
      v53 = 0;
    }

    sub_1D606A8EC(a2, v7);
    sub_1D606BD34();
    v66 = (*(*(v65 - 8) + 48))(v7, 1, v65);
    v67 = objc_opt_self();
    if (v66 != 1)
    {
      v68 = v67;
      v69 = [v67 secondarySystemBackgroundColor];
      v70 = v7;
      v71 = [v68 systemBackgroundColor];
      v28 = [v68 ts:v69 dynamicColor:v71 withDarkStyleVariant:?];

      swift_unknownObjectRelease();
      sub_1D606BD98(v70, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      goto LABEL_33;
    }

    v28 = [v67 systemBackgroundColor];
LABEL_31:
    swift_unknownObjectRelease();
LABEL_33:

    return v28;
  }

  sub_1D606A8EC(a2, v23);
  sub_1D606BD34();
  v26 = (*(*(v25 - 8) + 48))(v23, 1, v25);
  v27 = objc_opt_self();
  if (v26 == 1)
  {
LABEL_3:
    v28 = [v27 systemBackgroundColor];
LABEL_16:
    swift_unknownObjectRelease();
    return v28;
  }

  v36 = v27;
  v37 = [v27 secondarySystemBackgroundColor];
  v38 = [v36 systemBackgroundColor];
  v28 = [v36 ts:v37 dynamicColor:v38 withDarkStyleVariant:?];

  swift_unknownObjectRelease();
  v39 = MEMORY[0x1E69B40B8];
  v40 = v23;
LABEL_8:
  sub_1D606BD98(v40, &qword_1EDF45AB0, v39);
  return v28;
}

double sub_1D606B16C@<D0>(SEL *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = [*v3 *a1];
  if (v7)
  {
    v8 = v7;
    v14 = sub_1D5B5A498(0, &qword_1EDF1AB50);
    v15 = sub_1D5EECFF8();
    *&v13 = v8;
    sub_1D5B63F14(&v13, a3);
  }

  else
  {
    v10 = [v6 theme];
    if (v10 && (v11 = [v10 *a2], swift_unknownObjectRelease(), v11) && (v12 = objc_msgSend(v11, sel_assetHandle), v11, v12))
    {
      *(a3 + 24) = sub_1D5B5A498(0, &qword_1EDF1AB50);
      *(a3 + 32) = sub_1D5EECFF8();
      *a3 = v12;
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

uint64_t _s8NewsFeed16TagMastheadModelV2eeoiySbAC_ACtFZ_0(id *a1, id *a2)
{
  v4 = sub_1D72608BC();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606BDF4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v79 - v17;
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v83 = &v79 - v24;
  *&v27 = MEMORY[0x1EEE9AC00](v25, v26).n128_u64[0];
  v87 = &v79 - v28;
  v29 = [*a1 identifier];
  v30 = sub_1D726207C();
  v32 = v31;

  v33 = [*a2 identifier];
  v34 = sub_1D726207C();
  v36 = v35;

  if (v30 == v34 && v32 == v36)
  {
  }

  else
  {
    v37 = sub_1D72646CC();

    if ((v37 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v38 = type metadata accessor for TagMastheadModel();
  v39 = *(v38 + 20);
  if ((_s8NewsFeed20TagMastheadPlacementO2eeoiySbAC_ACtFZ_0(a1 + v39, a2 + v39) & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_1D5B5A498(0, &qword_1EDF1A650);
  if ((sub_1D726370C() & 1) == 0 || *(a1 + *(v38 + 28)) != *(a2 + *(v38 + 28)))
  {
    goto LABEL_35;
  }

  sub_1D606B16C(&selRef_nameImageLargeAssetHandle, &selRef_bannerImageForThemeBackground, v88);
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v40 = sub_1D725D2DC();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v40 = 0;
    v42 = 0;
  }

  sub_1D606B16C(&selRef_nameImageLargeAssetHandle, &selRef_bannerImageForThemeBackground, v88);
  if (v89)
  {
    v80 = v40;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v43 = sub_1D725D2DC();
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(v88);
    if (v42)
    {
      if (!v45)
      {
        goto LABEL_34;
      }

      if (v80 == v43 && v42 == v45)
      {
      }

      else
      {
        v46 = sub_1D72646CC();

        if ((v46 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v45)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (v42)
    {
      goto LABEL_34;
    }
  }

  sub_1D606B16C(&selRef_nameImageLargeMaskAssetHandle, &selRef_bannerImageForMask, v88);
  if (v89)
  {
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v47 = sub_1D725D2DC();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v47 = 0;
    v49 = 0;
  }

  sub_1D606B16C(&selRef_nameImageLargeMaskAssetHandle, &selRef_bannerImageForMask, v88);
  if (!v89)
  {
    sub_1D606BD98(v88, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (!v49)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v80 = v47;
  __swift_project_boxed_opaque_existential_1(v88, v89);
  v50 = sub_1D725D2DC();
  v52 = v51;
  __swift_destroy_boxed_opaque_existential_1(v88);
  if (!v49)
  {
    if (!v52)
    {
      goto LABEL_38;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!v52)
  {
    goto LABEL_34;
  }

  if (v80 == v50 && v49 == v52)
  {
  }

  else
  {
    v55 = sub_1D72646CC();

    if ((v55 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  v56 = sub_1D606A438();
  v57 = sub_1D606A438();
  v58 = v57;
  if (!v56)
  {
    if (v57)
    {

      goto LABEL_35;
    }

    goto LABEL_44;
  }

  if (!v57)
  {

    goto LABEL_35;
  }

  sub_1D5B5A498(0, qword_1EDF1A6A0);
  v59 = sub_1D726370C();

  if (v59)
  {
LABEL_44:
    sub_1D606A8EC(a1 + v39, v18);
    sub_1D606BD34();
    v61 = v60;
    v62 = *(*(v60 - 8) + 48);
    if (v62(v18, 1, v60) == 1)
    {
      v63 = v87;
      (*(v85 + 56))(v87, 1, 1, v86);
    }

    else
    {
      v63 = v87;
      sub_1D5CEB57C(v18, v87);
    }

    sub_1D606A8EC(a2 + v39, v14);
    if (v62(v14, 1, v61) == 1)
    {
      v65 = v85;
      v64 = v86;
      v66 = v83;
      (*(v85 + 56))(v83, 1, 1, v86);
    }

    else
    {
      v67 = v14;
      v66 = v83;
      sub_1D5CEB57C(v67, v83);
      v65 = v85;
      v64 = v86;
    }

    v68 = *(v8 + 48);
    v69 = v84;
    sub_1D606BE74(v63, v84);
    sub_1D606BE74(v66, v69 + v68);
    v70 = v63;
    v71 = *(v65 + 48);
    if (v71(v69, 1, v64) == 1)
    {
      v72 = MEMORY[0x1E69B40B8];
      sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      sub_1D606BD98(v70, &qword_1EDF45AB0, v72);
      if (v71(v69 + v68, 1, v64) == 1)
      {
        sub_1D606BD98(v69, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
        v53 = 1;
        return v53 & 1;
      }
    }

    else
    {
      v73 = v82;
      sub_1D606BE74(v69, v82);
      if (v71(v69 + v68, 1, v64) != 1)
      {
        v75 = v69 + v68;
        v76 = v81;
        (*(v65 + 32))(v81, v75, v64);
        sub_1D606BF54();
        v53 = sub_1D7261FBC();
        v77 = *(v65 + 8);
        v77(v76, v64);
        v78 = MEMORY[0x1E69B40B8];
        sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
        sub_1D606BD98(v87, &qword_1EDF45AB0, v78);
        v77(v73, v64);
        sub_1D606BD98(v69, &qword_1EDF45AB0, v78);
        return v53 & 1;
      }

      v74 = MEMORY[0x1E69B40B8];
      sub_1D606BD98(v66, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      sub_1D606BD98(v87, &qword_1EDF45AB0, v74);
      (*(v65 + 8))(v73, v64);
    }

    sub_1D606BEF4(v69, sub_1D606BDF4);
  }

LABEL_35:
  v53 = 0;
  return v53 & 1;
}

unint64_t sub_1D606BC80()
{
  result = sub_1D5B65AF4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TagMastheadPlacement();
    if (v2 <= 0x3F)
    {
      result = sub_1D5B5A498(319, qword_1EDF1A6A0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D606BD34()
{
  if (!qword_1EDF3AA00)
  {
    sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3AA00);
    }
  }
}

uint64_t sub_1D606BD98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B594E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D606BDF4()
{
  if (!qword_1EDF3A9F8)
  {
    sub_1D5B594E4(255, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3A9F8);
    }
  }
}

uint64_t sub_1D606BE74(uint64_t a1, uint64_t a2)
{
  sub_1D5B594E4(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D606BEF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D606BF54()
{
  result = qword_1EC882FB8;
  if (!qword_1EC882FB8)
  {
    sub_1D72608BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882FB8);
  }

  return result;
}

void sub_1D606BFAC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v3 = [Strong traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v26 = *(v1 + 32);
    v27 = [v46 view];
    if (v27)
    {
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v49.origin.x = v30;
      v49.origin.y = v32;
      v49.size.width = v34;
      v49.size.height = v36;
      Width = CGRectGetWidth(v49);
      v38 = [v46 view];
      if (v38)
      {
        v39 = v38;
        ObjectType = swift_getObjectType();
        [v39 safeAreaInsets];

        sub_1D7262E2C();
        (*(v26 + 16))(ObjectType, v26, (Width - v41) * 0.5);
        v21 = [v46 navigationItem];
        sub_1D5E42B34();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D72816C0;
        sub_1D606C620();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1D72816C0;
        v24 = *(v1 + 40);
        *(v42 + 32) = v24;
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return;
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    v5 = *(v1 + 32);
    v6 = [v46 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v48.origin.x = v9;
      v48.origin.y = v11;
      v48.size.width = v13;
      v48.size.height = v15;
      v16 = CGRectGetWidth(v48);
      v17 = [v46 view];
      if (v17)
      {
        v18 = v17;
        v19 = swift_getObjectType();
        [v18 safeAreaInsets];

        sub_1D7262E2C();
        (*(v5 + 16))(v19, v5, (v16 - v20) * 0.4);
        v21 = [v46 navigationItem];
        sub_1D5E42B34();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D72816C0;
        sub_1D606C620();
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D72816D0;
        sub_1D606C3B0();
        v24 = *(v1 + 40);
        *(v23 + 32) = v25;
        *(v23 + 40) = v24;
LABEL_11:
        v43 = v24;
        v44 = sub_1D726317C();

        *(v22 + 32) = v44;
        v45 = sub_1D726265C();

        [v21 setLeadingItemGroups_];

        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
}

void sub_1D606C3B0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1D726203C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v3 style:0 target:v0 action:sel_presentSidebar];

    v5 = *(v0 + 48);
    *(v0 + 48) = v4;
    v4;

    v1 = 0;
LABEL_4:
    v6 = v1;
    return;
  }

  __break(1u);
}

void sub_1D606C494()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong splitViewController];

    if (v2)
    {
      v5 = [v2 viewControllerForColumn_];

      if (v5)
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          v4 = v3;
          [v3 presentViewController:v5 animated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_1D606C5AC()
{
  MEMORY[0x1DA6FD660](v0 + 2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D606C620()
{
  result = qword_1EC88B4C0;
  if (!qword_1EC88B4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88B4C0);
  }

  return result;
}

id sub_1D606C690(void *a1, id *a2)
{
  if (UIAccessibilityIsInvertColorsEnabled() || [*a2 isLocal] || (objc_msgSend(*(a2 + *(type metadata accessor for TagMastheadModel() + 24)), sel_ts_luminance), v8 = v7, sub_1D5B5A498(0, qword_1EDF1A6A0), sub_1D726358C(), v9 >= v8))
  {
    v4 = a1;
    v5 = 2;
  }

  else
  {
    v4 = a1;
    v5 = 1;
  }

  return [v4 setOverrideUserInterfaceStyle_];
}

id sub_1D606C754(void *a1, char a2)
{
  if (sub_1D7261A3C())
  {
    v4 = objc_opt_self();
    v5 = [v4 systemFontOfSize:34.0 weight:*MEMORY[0x1E69DB958]];
    v6 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v7 = sub_1D726207C();
    v9 = v8;

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660);
    *&v55 = v10;
    sub_1D5B7C390(&v55, v54);
    v11 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v7, v9, isUniquelyReferenced_nonNull_native);

    v13 = v11;
    if (*(v11 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = [a1 horizontalSizeClass];
  if (v14 < 2)
  {
    if ((a2 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = [v4 systemFontOfSize:42.0 weight:*MEMORY[0x1E69DB958]];
      v31 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
      v32 = sub_1D726207C();
      v34 = v33;

      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v56 = sub_1D5B5A498(0, &qword_1EDF1A660);
      *&v55 = v35;
      sub_1D5B7C390(&v55, v54);
      v36 = MEMORY[0x1E69E7CC8];
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D5BAFB24(v54, v32, v34, v37);

      v13 = v36;
      if (*(v36 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v14 != 2)
  {
LABEL_10:
    v4 = objc_opt_self();
    v5 = [v4 systemFontOfSize:28.0 weight:*MEMORY[0x1E69DB958]];
    v24 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v25 = sub_1D726207C();
    v27 = v26;

    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660);
    *&v55 = v28;
    sub_1D5B7C390(&v55, v54);
    v29 = MEMORY[0x1E69E7CC8];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v25, v27, v30);

    v13 = v29;
    if (*(v29 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = objc_opt_self();
  v4 = v15;
  v16 = *MEMORY[0x1E69DB958];
  if (a2)
  {
    v5 = [v15 systemFontOfSize:34.0 weight:v16];
    v17 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v18 = sub_1D726207C();
    v20 = v19;

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660);
    *&v55 = v21;
    sub_1D5B7C390(&v55, v54);
    v22 = MEMORY[0x1E69E7CC8];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v18, v20, v23);

    v13 = v22;
    if (*(v22 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = [v15 systemFontOfSize:48.0 weight:v16];
    v38 = [objc_opt_self() ts_fontSystemFontGradeTraitKey];
    v39 = sub_1D726207C();
    v41 = v40;

    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v56 = sub_1D5B5A498(0, &qword_1EDF1A660);
    *&v55 = v42;
    sub_1D5B7C390(&v55, v54);
    v43 = MEMORY[0x1E69E7CC8];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D5BAFB24(v54, v39, v41, v44);

    v13 = v43;
    if (*(v43 + 16))
    {
LABEL_15:
      v45 = [v5 fontDescriptor];
      sub_1D606D738(0, &qword_1EDF194D8, &qword_1EDF1A788, type metadata accessor for AttributeName);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v47 = *MEMORY[0x1E69DB8F0];
      *(inited + 32) = *MEMORY[0x1E69DB8F0];
      sub_1D5BB0DB0();
      *(inited + 64) = v48;
      *(inited + 40) = v13;
      v49 = v47;
      sub_1D5BAA78C(inited);
      swift_setDeallocating();
      sub_1D5BAA86C(inited + 32);
      type metadata accessor for AttributeName(0);
      sub_1D606D790(&qword_1EDF1A790, type metadata accessor for AttributeName);
      v50 = sub_1D7261D2C();

      v51 = [v45 fontDescriptorByAddingAttributes_];

      [v5 pointSize];
      v52 = [v4 fontWithDescriptor:v51 size:?];

      return v52;
    }
  }

LABEL_16:

  return v5;
}

id sub_1D606D364(void **a1, void *a2, __int16 a3)
{
  v5 = sub_1D606C754(a2, a3 & 1);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  type metadata accessor for TagMastheadModel();
  sub_1D71C526C(v33);
  [v6 setAlignment_];
  if ((a3 & 0x100) != 0)
  {
    [v6 setLineBreakMode_];
  }

  [v5 pointSize];
  [v6 setMinimumLineHeight_];
  [v5 pointSize];
  [v6 setMaximumLineHeight_];
  v8 = *a1;
  v32 = v6;
  if ([v8 isLocal])
  {
    v9 = [objc_opt_self() whiteColor];
  }

  else
  {
    if ([v8 theme])
    {
      swift_getObjectType();
      v10 = FCFeedTheming.navigationBarForegroundColor.getter();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v9 = [objc_opt_self() labelColor];
  }

  v10 = v9;
LABEL_9:
  v11 = [v8 displayName];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  sub_1D606D738(0, &qword_1EDF194E0, &qword_1EDF1A8B0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v14 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 40) = v10;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 80) = v5;
  v17 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v32;
  v19 = v5;
  v20 = *MEMORY[0x1E69DB748];
  *(inited + 144) = v18;
  *(inited + 152) = v20;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFD3333333333333;
  v21 = v13;
  v22 = v10;
  v23 = v15;
  v24 = v19;
  v25 = v17;
  v26 = v32;
  v27 = v20;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5BAA9E8(0, &qword_1EDF1A8B0, type metadata accessor for Key);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  type metadata accessor for Key(0);
  sub_1D606D790(&qword_1EDF1A8E0, type metadata accessor for Key);
  v29 = sub_1D7261D2C();

  v30 = [v28 initWithString:v11 attributes:v29];

  return v30;
}

void sub_1D606D738(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5BAA9E8(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D606D790(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1D606D7D8@<D0>(void **a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagMastheadModel();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1D725EA8C())
  {
    v10 = 72.0;
  }

  else
  {
    sub_1D725EAAC();
    v10 = v11 + 72.0;
  }

  v12 = 0.0;
  if ((sub_1D725EA8C() & 1) == 0)
  {
    sub_1D725EAAC();
    v12 = v13;
  }

  sub_1D725EAAC();
  v15 = v14;
  v16 = *a2;
  v171 = a2[1];
  sub_1D725EAAC();
  v18 = v17;
  sub_1D725EAAC();
  v172 = v16;
  v20 = v16 - (v18 + v19);
  v21 = v10 - v12;
  v179.origin.x = v15;
  v179.origin.y = v12;
  v179.size.width = v20;
  v179.size.height = v10 - v12;
  Width = CGRectGetWidth(v179);
  sub_1D725EA7C();
  sub_1D7262E2C();
  v24 = Width - v23;
  v180.origin.x = v15;
  v180.origin.y = v12;
  v180.size.width = v20;
  v180.size.height = v10 - v12;
  Height = CGRectGetHeight(v180);
  v26 = *(v6 + 20);
  sub_1D71C526C(&v178);
  if (v178)
  {
    v181.origin.x = v15;
    v181.origin.y = v12;
    v181.size.width = v20;
    v181.size.height = v21;
    v27 = CGRectGetWidth(v181) * 0.5 - v24 * 0.5;
    v182.origin.x = v15;
    v182.origin.y = v12;
    v182.size.width = v20;
    v182.size.height = v21;
    v28 = CGRectGetHeight(v182) * 0.5 - Height * 0.5;
  }

  else
  {
    sub_1D725EA7C();
    v27 = v29;
    v28 = 0.0;
  }

  v30 = v27;
  v31 = v24;
  v32 = Height;
  v183 = CGRectIntegral(*(&v28 - 1));
  x = v183.origin.x;
  y = v183.origin.y;
  v35 = v183.size.width;
  v36 = v183.size.height;
  v184.origin.x = sub_1D606E18C(a1);
  v167 = v184.origin.y;
  v168 = v184.origin.x;
  v165 = v184.size.height;
  v166 = v184.size.width;
  v37 = CGRectGetHeight(v184);
  v174 = 0.0;
  v175 = y;
  v176 = x;
  v164 = v12;
  v163 = v15;
  v162 = v20;
  v161 = v21;
  if (v37 > 1.0)
  {
    v185.origin.y = v167;
    v185.origin.x = v168;
    v185.size.height = v165;
    v185.size.width = v166;
    v38 = CGRectGetWidth(v185);
    v39 = v38 + 12.0;
    if (v38 + 12.0 > 0.0)
    {
      v40 = v176;
      v186.origin.x = v176;
      v186.origin.y = y;
      v186.size.width = v35;
      v186.size.height = v36;
      v41 = CGRectGetWidth(v186) - v39;
      goto LABEL_16;
    }

    v174 = v38 + 12.0;
    x = v176;
  }

  v42 = sub_1D725EABC();
  v43 = [v42 horizontalSizeClass];

  v187.origin.x = x;
  v187.origin.y = y;
  v187.size.width = v35;
  v187.size.height = v36;
  v41 = CGRectGetWidth(v187);
  if (v43 == 1)
  {
    sub_1D725EA7C();
    sub_1D7262E2C();
    v41 = v41 - v44;
  }

  v40 = v176;
LABEL_16:
  v188.origin.x = v40;
  v45 = v175;
  v188.origin.y = v175;
  v188.size.width = v35;
  v188.size.height = v36;
  v46 = CGRectGetWidth(v188);
  if (v41 >= v46)
  {
    v41 = v46;
  }

  v189.origin.x = v40;
  v189.origin.y = v45;
  v189.size.width = v35;
  v189.size.height = v36;
  v47 = CGRectGetHeight(v189);
  v48 = v36;
  if (v47 <= 40.0)
  {
    v49 = v47;
  }

  else
  {
    v49 = 40.0;
  }

  sub_1D606E5C0(a1, v40, v45, v35, v48);
  v50 = v35;
  v52 = v51;
  v190.origin.x = v40;
  v190.origin.y = v45;
  v190.size.width = v50;
  v190.size.height = v48;
  v191.origin.y = CGRectGetHeight(v190) * 0.5 - v49 * 0.5;
  v191.origin.x = v52;
  v191.size.width = v41;
  v191.size.height = v49;
  v192 = CGRectIntegral(v191);
  v160 = v192.origin.x;
  v159 = v192.origin.y;
  v169 = v192.size.height;
  v170 = v192.size.width;
  v192.origin.x = v40;
  v192.origin.y = v45;
  v192.size.width = v50;
  v192.size.height = v48;
  CGRectGetWidth(v192);
  v173 = v50;
  v174 = v48;
  sub_1D72632FC();
  v54 = v53;
  v56 = v55;
  v157 = v55;
  v58 = v57;
  v60 = v59;
  v61 = sub_1D725EABC();
  v62 = sub_1D606D364(a1, v61, 0);
  v193.origin.x = v54;
  v193.origin.y = v56;
  v193.size.width = v58;
  v193.size.height = v60;
  CGRectGetWidth(v193);
  v63 = sub_1D726313C();
  [v63 lineHeight];

  sub_1D726312C();
  v64 = v194.origin.x;
  v65 = v194.origin.y;
  v66 = v194.size.width;
  v67 = v194.size.height;
  v68 = CGRectGetWidth(v194);
  v158 = v54;
  v195.origin.x = v54;
  v69 = v157;
  v195.origin.y = v157;
  v195.size.width = v58;
  v195.size.height = v60;
  if (CGRectGetWidth(v195) <= v68)
  {
    v74 = 1;
  }

  else
  {
    v196.origin.x = v64;
    v196.origin.y = v65;
    v196.size.width = v66;
    v196.size.height = v67;
    v70 = CGRectGetHeight(v196);
    v71 = sub_1D726313C();
    [v71 lineHeight];
    v73 = v72;

    v74 = v73 < v70;
  }

  v75 = sub_1D606D364(a1, v61, v74);

  v76 = sub_1D725EABC();
  v77 = sub_1D606E94C(a1, v76, v158, v69, v58, v60);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  sub_1D71C526C(&v177);
  v84 = v176;
  v85 = v176;
  if (v177)
  {
    v87 = v174;
    v86 = v175;
    v88 = v175;
    v89 = v173;
    v90 = v173;
    v91 = v174;
    v92 = CGRectGetWidth(*&v85) * 0.5;
    v197.origin.x = v77;
    v197.origin.y = v79;
    v197.size.width = v81;
    v197.size.height = v83;
    v93 = v92 - CGRectGetWidth(v197) * 0.5;
    v198.origin.x = v176;
    v198.origin.y = v86;
    v198.size.width = v89;
    v84 = v176;
    v198.size.height = v87;
    v94 = CGRectGetHeight(v198) * 0.5;
    v199.origin.x = v77;
    v199.origin.y = v79;
    v199.size.width = v81;
    v199.size.height = v83;
    v95 = v94 - CGRectGetHeight(v199) * 0.5;
    v200.origin.x = v77;
    v200.origin.y = v79;
    v200.size.width = v81;
    v200.size.height = v83;
    v96 = CGRectGetWidth(v200);
    v201.origin.x = v77;
    v201.origin.y = v79;
    v201.size.width = v81;
    v201.size.height = v83;
    v97 = CGRectGetHeight(v201);
  }

  else
  {
    v99 = v174;
    v98 = v175;
    v100 = v173;
    v101 = CGRectGetHeight(*&v85) * 0.5;
    v202.origin.x = v77;
    v202.origin.y = v79;
    v202.size.width = v81;
    v202.size.height = v83;
    v95 = v101 - CGRectGetHeight(v202) * 0.5;
    v203.origin.x = v77;
    v203.origin.y = v79;
    v203.size.width = v81;
    v203.size.height = v83;
    v96 = CGRectGetWidth(v203);
    v204.origin.x = v77;
    v204.origin.y = v79;
    v204.size.width = v81;
    v204.size.height = v83;
    v97 = CGRectGetHeight(v204);
    v93 = 0.0;
  }

  v102 = v93;
  v103 = v95;
  v104 = v96;
  v205 = CGRectIntegral(*(&v97 - 3));
  v158 = v205.origin.x;
  v157 = v205.origin.y;
  v156 = v205.size.width;
  v155 = v205.size.height;
  v105 = sub_1D606A438();
  v106 = v171;
  if (v105)
  {

    v107 = sub_1D725EABC();
    [v107 displayScale];
    v109 = v108;

    v153 = 1.0 / fmax(v109, 1.0);
    v154 = v106 - v153;
    v110 = v172;
    v152 = v172;
  }

  else
  {
    v154 = 0.0;
    v152 = 0.0;
    v153 = 0.0;
    v110 = v172;
  }

  sub_1D606F3A4(a1, v9, type metadata accessor for TagMastheadModel);
  v111 = sub_1D725EABC();
  v112 = type metadata accessor for TagMastheadViewLayoutAttributes();
  v113 = a3 + v112[10];
  sub_1D5F42628(v9, v111, v113, 0.0, 0.0, v110, v106);
  v114 = sub_1D725EABC();
  v115 = type metadata accessor for TagMastheadViewBackground();
  v116 = v169;
  v117 = v170;
  v118 = sub_1D606EAF8(a1, v114, *(v113 + *(v115 + 44)), v75, v170, v169);
  v120 = v119;
  LOBYTE(v113) = v121;

  v122 = sub_1D726313C();
  [v122 descender];
  v124 = v123;

  v150 = round(fabs(v124 * 0.5));
  v206.origin.x = v84;
  v206.size.height = v174;
  v206.origin.y = v175;
  v206.size.width = v173;
  v125 = CGRectGetWidth(v206);
  v127 = v167;
  v126 = v168;
  v207.origin.x = v168;
  v207.origin.y = v167;
  v128 = v165;
  v129 = v166;
  v207.size.width = v166;
  v207.size.height = v165;
  v151 = v125 - CGRectGetWidth(v207);
  v130 = v160;
  v208.origin.x = v160;
  v131 = v159;
  v208.origin.y = v159;
  v208.size.width = v117;
  v208.size.height = v116;
  MidY = CGRectGetMidY(v208);
  v209.origin.x = v126;
  v209.origin.y = v127;
  v209.size.width = v129;
  v209.size.height = v128;
  v133 = MidY - CGRectGetHeight(v209) * 0.5 - v150;
  v210.origin.x = v126;
  v210.origin.y = v127;
  v210.size.width = v129;
  v210.size.height = v128;
  v134 = CGRectGetWidth(v210);
  v211.origin.x = v126;
  v211.origin.y = v127;
  v211.size.width = v129;
  v211.size.height = v128;
  v212.size.height = CGRectGetHeight(v211);
  v212.origin.x = v151;
  v212.origin.y = v133;
  v212.size.width = v134;
  v213 = CGRectIntegral(v212);
  v135 = v213.origin.x;
  v136 = v213.origin.y;
  v137 = v213.size.width;
  v138 = v213.size.height;

  sub_1D606F3A4(a1 + v26, a3 + v112[11], type metadata accessor for TagMastheadPlacement);
  *a3 = 0;
  *(a3 + 8) = 0;
  v139 = v171;
  *(a3 + 16) = v172;
  *(a3 + 24) = v139;
  *(a3 + 32) = v130;
  *(a3 + 40) = v131;
  v140 = v169;
  *(a3 + 48) = v170;
  *(a3 + 56) = v140;
  v141 = v157;
  *(a3 + 64) = v158;
  *(a3 + 72) = v141;
  v142 = v155;
  *(a3 + 80) = v156;
  *(a3 + 88) = v142;
  *(a3 + 96) = 0;
  v143 = v152;
  *(a3 + 104) = v154;
  *(a3 + 112) = v143;
  *(a3 + 120) = v153;
  *(a3 + 128) = v135;
  *(a3 + 136) = v136;
  *(a3 + 144) = v137;
  *(a3 + 152) = v138;
  *(a3 + 160) = v118;
  *(a3 + 168) = v120;
  *(a3 + 176) = v113 & 1;
  v144 = (a3 + v112[12]);
  v145 = v175;
  *v144 = v176;
  v144[1] = v145;
  v146 = v174;
  v144[2] = v173;
  v144[3] = v146;
  v147 = (a3 + v112[13]);
  v148 = v164;
  *v147 = v163;
  v147[1] = v148;
  result = v161;
  v147[2] = v162;
  v147[3] = result;
  return result;
}

double sub_1D606E18C(uint64_t a1)
{
  sub_1D5C0ECB0(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = sub_1D72608BC();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for TagMastheadModel() + 20);
  sub_1D606F3A4(a1 + v18, v17, type metadata accessor for TagMastheadPlacement);
  sub_1D606BD34();
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = 0.0;
  if (v21(v17, 1, v19) != 1)
  {
    if (sub_1D606A578())
    {
      sub_1D606F3A4(a1 + v18, v13, type metadata accessor for TagMastheadPlacement);
      if (v21(v13, 1, v20) == 1)
      {
        v23 = v28;
        (*(v28 + 56))(v5, 1, 1, v6);
      }

      else
      {
        sub_1D5CEB57C(v13, v5);
        v23 = v28;
      }

      if ((*(v23 + 48))(v5, 1, v6) == 1)
      {
        sub_1D5CF280C(v5, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }

      else
      {
        (*(v23 + 32))(v9, v5, v6);
        v24 = sub_1D726086C();
        if (v24)
        {
          v25 = v24;
          if ((sub_1D726085C() & 1) == 0)
          {
            (*(v23 + 8))(v9, v6);

            goto LABEL_13;
          }

          [v25 frame];
          *&v22 = CGRectIntegral(v29);
        }

        (*(v23 + 8))(v9, v6);
      }
    }

LABEL_13:
    sub_1D5CF280C(v17, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  return v22;
}

uint64_t sub_1D606E564()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D606E5C0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1D72608BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C0ECB0(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v31 - v21;
  v23 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TagMastheadModel();
  sub_1D606F3A4(a1 + *(v27 + 20), v26, type metadata accessor for TagMastheadPlacement);
  sub_1D606BD34();
  if ((*(*(v28 - 8) + 48))(v26, 1, v28) == 1)
  {
    goto LABEL_2;
  }

  sub_1D5CEB57C(v26, v22);
  if (sub_1D7261A3C())
  {
    sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    return;
  }

  sub_1D5CF2478(v22, v18, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v29 = MEMORY[0x1E69B40B8];
    sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    sub_1D5CF280C(v18, &qword_1EDF45AB0, v29);
LABEL_2:
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetWidth(v32);
    return;
  }

  (*(v11 + 32))(v14, v18, v10);
  v30 = sub_1D726085C();
  (*(v11 + 8))(v14, v10);
  sub_1D5CF280C(v22, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  if ((v30 & 1) == 0)
  {
    goto LABEL_2;
  }
}

double sub_1D606E94C(void **a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_1D606D364(a1, a2, 0);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetWidth(v30);
  v13 = sub_1D726313C();
  [v13 lineHeight];

  sub_1D726312C();
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v18 = CGRectGetWidth(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  if (CGRectGetWidth(v32) <= v18)
  {
    v23 = 1;
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v19 = CGRectGetHeight(v33);
    v20 = sub_1D726313C();
    [v20 lineHeight];
    v22 = v21;

    v23 = v22 < v19;
  }

  v24 = sub_1D606D364(a1, a2, v23);

  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetWidth(v34);
  v25 = sub_1D726313C();
  [v25 lineHeight];

  sub_1D726312C();
  v27 = v26;

  return v27;
}

uint64_t sub_1D606EAF8(id *a1, void *a2, char a3, void *a4, double a5, double a6)
{
  v12 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C0ECB0(0, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v61 - v25;
  v27 = type metadata accessor for PublisherLogoProcessorOptions(0);
  v28 = *(v27 - 8);
  *&v30 = MEMORY[0x1EEE9AC00](v27, v29).n128_u64[0];
  v65 = (&v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([*a1 isLocal])
  {
    goto LABEL_11;
  }

  v63 = a4;
  if ([a2 userInterfaceStyle] == 2 && (a3 & 1) != 0)
  {
    sub_1D606B158(&v71);
    if (v72)
    {
      sub_1D5B63F14(&v71, &v73);
    }

    else
    {
      sub_1D606B144(&v73);
      if (v72)
      {
        sub_1D5CF280C(&v71, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      }
    }
  }

  else
  {
    sub_1D606B144(&v73);
  }

  if (!v74)
  {
    a4 = v63;
LABEL_11:
    v41 = a4;
    goto LABEL_17;
  }

  sub_1D5B63F14(&v73, &v71);
  [a2 displayScale];
  v33 = v32;
  v34 = *(v12 + 24);
  v35 = sub_1D725CB5C();
  v36 = v65;
  (*(*(v35 - 8) + 56))(v65 + v34, 1, 1, v35);
  *v36 = v33;
  v36[1] = a2;
  *(v36 + *(v27 + 20)) = 1;
  sub_1D5B68374(&v71, v70);
  v37 = a2;
  [v37 displayScale];
  v39 = v38;
  v62 = [v37 userInterfaceStyle];
  LODWORD(v61) = v62 == 2;
  v40 = v26;
  sub_1D606F3A4(v36, v26, type metadata accessor for PublisherLogoProcessorOptions);
  (*(v28 + 56))(v26, 0, 1, v27);
  type metadata accessor for PublisherLogoProcessorRequest(0);
  v41 = swift_allocObject();
  sub_1D5B68374(v70, v41 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle);
  sub_1D5C0ECB0(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001D73C7830;
  sub_1D5B68374(v70, inited + 48);
  v43 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D606F40C(inited + 32, sub_1D5C16B18);
  *(v41 + 32) = v43;
  *(v41 + 40) = a5;
  *(v41 + 48) = a6;
  *(v41 + 56) = v39;
  *(v41 + 64) = v61;
  *(v41 + 65) = 0;
  sub_1D5CF2478(v26, v41 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_options, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  sub_1D5CF2478(v26, v22, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  v44 = *(v28 + 48);
  if (v44(v22, 1, v27) == 1)
  {
    sub_1D5CF280C(v22, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
    v45 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v46 = v22[*(v27 + 20)];
    sub_1D606F40C(v22, type metadata accessor for PublisherLogoProcessorOptions);
    LOBYTE(v68) = v46;
    v61 = sub_1D72620FC();
    v45 = v47;
  }

  sub_1D5CF2478(v26, v18, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  if (v44(v18, 1, v27) == 1)
  {
    sub_1D5CF280C(v18, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
    v48 = 0xE300000000000000;
    v49 = 7104878;
  }

  else
  {
    v50 = v64;
    sub_1D606F3A4(v18, v64, type metadata accessor for ImageRequestOptions);
    sub_1D606F40C(v18, type metadata accessor for PublisherLogoProcessorOptions);
    v51 = *(v50 + 8);
    sub_1D606F40C(v50, type metadata accessor for ImageRequestOptions);
    v49 = sub_1D69F5644();
    v48 = v52;
  }

  v53 = v62 == 2;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1D7263D4C();
  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  v54 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v54);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v66 = a5;
  v67 = a6;
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v55 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v55);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v66 = *&v53;
  v56 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v56);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v61, v45);

  MEMORY[0x1DA6F9910](11561, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v49, v48);

  v57 = v68;
  v58 = v69;
  sub_1D5CF280C(v40, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions);
  sub_1D606F40C(v65, type metadata accessor for PublisherLogoProcessorOptions);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  *(v41 + 16) = v57;
  *(v41 + 24) = v58;
  __swift_destroy_boxed_opaque_existential_1(v70);
  a4 = v63;
LABEL_17:
  v59 = a4;
  return v41;
}

uint64_t sub_1D606F3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D606F40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TagMastheadView()
{
  result = qword_1EDF30C20;
  if (!qword_1EDF30C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D606F524(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_1D606FC88(0, &qword_1EDF3B460, MEMORY[0x1E69D8768]);
  v48 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v45 - v12);
  v14 = qword_1EDF30C30;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *&v4[v14] = [objc_allocWithZone(v15) init];
  v16 = qword_1EDF30C60;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17 = &v4[qword_1EDF30C58];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = &v4[qword_1EDF30C50];
  *v18 = 0;
  v18[8] = 1;
  v19 = qword_1EDF30C40;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v20 = qword_1EDF30C48;
  *&v4[v20] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v21 = qword_1EDF30C38;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v22 = qword_1EDF30C68;
  *&v4[v22] = [objc_allocWithZone(sub_1D72607AC()) initWithFrame_];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  [v23 setClipsToBounds_];
  v24 = qword_1EDF30C40;
  v25 = qword_1EDF30C38;
  [*&v23[qword_1EDF30C40] addSubview_];
  v26 = qword_1EDF30C48;
  [*&v23[v24] addSubview_];
  [*&v23[v24] addSubview_];
  v27 = qword_1EDF30C60;
  [*&v23[qword_1EDF30C60] addSubview_];
  [v23 addSubview_];
  ObjectType = v25;
  [*&v23[v25] setNumberOfLines_];
  [*&v23[v25] setMinimumScaleFactor_];
  [*&v23[v26] setContentMode_];
  v46 = qword_1EDF30C30;
  v28 = *&v23[qword_1EDF30C30];
  v29 = *&v23[v26];
  v30 = v13;
  *v13 = 1;
  v31 = *MEMORY[0x1E69D8758];
  v32 = v10;
  v33 = *(v10 + 104);
  v34 = v13;
  v35 = v48;
  v33(v34, v31, v48);
  v36 = v28;
  v37 = v29;

  v38 = *(v32 + 8);
  v38(v30, v35);
  v39 = *&v23[v46];
  v40 = *(ObjectType + v23);
  *v30 = 1;
  v33(v30, v31, v35);
  v41 = v39;
  v42 = v40;
  v43 = sub_1D725F66C();

  v38(v30, v35);
  return v23;
}

void sub_1D606F9B4()
{
  v1 = *(v0 + qword_1EDF30C68);
}

void sub_1D606FA34(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF30C68);
}

void sub_1D606FAC8()
{
  v1 = qword_1EDF30C30;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = qword_1EDF30C60;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = (v0 + qword_1EDF30C58);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = v0 + qword_1EDF30C50;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = qword_1EDF30C40;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v7 = qword_1EDF30C48;
  *(v0 + v7) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v8 = qword_1EDF30C38;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = qword_1EDF30C68;
  *(v0 + v9) = [objc_allocWithZone(sub_1D72607AC()) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void sub_1D606FC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TagMastheadViewProvider.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  return sub_1D606FD38(v1 + v3, a1);
}

uint64_t sub_1D606FD38(uint64_t a1, uint64_t a2)
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TagMastheadViewProvider.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FE18(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D606FE18(uint64_t a1, uint64_t a2)
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TagMastheadViewProvider.parallaxX.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  swift_beginAccess();
  return *v1;
}

id TagMastheadViewProvider.parallaxX.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  v7 = swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = v5;
  v8 = *(v2 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
  v9 = v8 + qword_1EDF30C50;
  *v9 = a1;
  *(v9 + 8) = v5;
  if (a2)
  {
    v10 = *(v8 + qword_1EDF30C60);
    v11 = (v8 + qword_1EDF30C58);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
  }

  else
  {
    v16 = *&a1;
    v10 = *(v8 + qword_1EDF30C60);
    v12 = MEMORY[0x1DA6FA970](v7, v16, *(v8 + qword_1EDF30C58), *(v8 + qword_1EDF30C58 + 8), *(v8 + qword_1EDF30C58 + 16), *(v8 + qword_1EDF30C58 + 24));
  }

  return [v10 setFrame_];
}

void (*TagMastheadViewProvider.parallaxX.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D60700C0;
}

void sub_1D60700C0(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v5 + v3[4];
    v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
    v8 = *v6;
    LOBYTE(v6) = *(v6 + 8);
    v9 = v7 + qword_1EDF30C50;
    *v9 = v8;
    *(v9 + 8) = v6;
    v10 = *(v7 + qword_1EDF30C60);
    if (v6)
    {
      v11 = (v7 + qword_1EDF30C58);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
    }

    else
    {
      v12 = MEMORY[0x1DA6FA970](v4, v8, *(v7 + qword_1EDF30C58), *(v7 + qword_1EDF30C58 + 8), *(v7 + qword_1EDF30C58 + 16), *(v7 + qword_1EDF30C58 + 24));
    }

    [v10 setFrame_];
  }

  free(v3);
}

id TagMastheadViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagMastheadViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D60703B4()
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *v0;
  v6 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v5 + v6, v4);
  v7 = type metadata accessor for TagMastheadModel();
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_1D6071170(v4, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  result = 0.0;
  if (v5 != 1)
  {
    if (sub_1D725EA8C())
    {
      return 72.0;
    }

    else
    {
      sub_1D725EAAC();
      return v9 + 72.0;
    }
  }

  return result;
}

double TagMastheadViewProvider.height(for:)()
{
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v0 + v5, v4);
  v6 = type metadata accessor for TagMastheadModel();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1D6071170(v4, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  result = 0.0;
  if (v7 != 1)
  {
    if (sub_1D725EA8C())
    {
      return 72.0;
    }

    else
    {
      sub_1D725EAAC();
      return v9 + 72.0;
    }
  }

  return result;
}

void sub_1D6070658()
{
  v1 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagMastheadModel();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6071054(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  if (!(*(v6 + 48))(v0 + v14, 1, v5))
  {
    sub_1D60710A8(v0 + v14, v9, type metadata accessor for TagMastheadModel);
    sub_1D60710A8(&v9[*(v5 + 20)], v4, type metadata accessor for TagMastheadPlacement);
    sub_1D6071110(v9, type metadata accessor for TagMastheadModel);
    sub_1D606BD34();
    if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
    {
      v16 = sub_1D72608BC();
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    }

    else
    {
      sub_1D5CEB57C(v4, v13);
    }

    v17 = sub_1D72608BC();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      sub_1D6071170(v13, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }

    else
    {
      v19 = sub_1D726086C();
      (*(v18 + 8))(v13, v17);
      if (v19)
      {
        swift_getObjectType();
        sub_1D726065C();
      }
    }
  }
}

id sub_1D60709C4()
{
  v1 = *v0 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  v2 = type metadata accessor for TagMastheadModel();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    v3 = [objc_opt_self() systemBackgroundColor];

    return v3;
  }

  else
  {
    v5 = *(v1 + *(v2 + 24));

    return v5;
  }
}

UIColor __swiftcall TagMastheadViewProvider.backgroundColor(traitCollection:)(UITraitCollection traitCollection)
{
  v2 = v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  v3 = type metadata accessor for TagMastheadModel();
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = [objc_opt_self() systemBackgroundColor];

    return v4;
  }

  else
  {
    v6 = *(v2 + *(v3 + 24));

    return v6;
  }
}

uint64_t _s8NewsFeed23TagMastheadViewProviderC6layout0G7Options12mastheadabley5TeaUI0de6LayoutH0V_AG12Mastheadable_ptF_0()
{
  v1 = v0;
  v2 = type metadata accessor for TagMastheadPlacement();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1D6071054(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v39 - v8 + 16;
  v10 = type metadata accessor for TagMastheadViewLayoutAttributes();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_1D6071054(0, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v39 - v16 + 16;
  v18 = type metadata accessor for TagMastheadModel();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v23 = OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_model;
  swift_beginAccess();
  sub_1D606FD38(v1 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1D6071170(v17, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  }

  sub_1D60711EC(v17, v22);
  sub_1D725EACC();
  Width = CGRectGetWidth(v40);
  if (sub_1D725EA8C())
  {
    v26 = 72.0;
  }

  else
  {
    sub_1D725EAAC();
    v26 = v27 + 72.0;
  }

  v28 = (v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_layoutAttributesFactory);
  sub_1D725EA9C();
  sub_1D725EACC();
  sub_1D725E10C();
  v39[0] = Width;
  v39[1] = v26;
  v39[2] = v29;
  v39[3] = v30;
  v39[4] = v31;
  v39[5] = v32;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D606D7D8(v22, v39, v13);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_renderer), *(v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_renderer + 24));
  v33 = *(v1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_mastheadView);
  sub_1D6069D38(v22, v13, v33);
  if ((sub_1D725EA8C() & 1) == 0)
  {
    v34 = *&v33[qword_1EDF30C68];
    sub_1D60710A8(v22 + *(v18 + 20), v5, type metadata accessor for TagMastheadPlacement);
    sub_1D606BD34();
    if ((*(*(v35 - 8) + 48))(v5, 1, v35) == 1)
    {
      v36 = sub_1D72608BC();
      (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    }

    else
    {
      sub_1D5CEB57C(v5, v9);
    }

    v37 = v34;
    sub_1D726079C();

    sub_1D6071170(v9, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  }

  sub_1D6071110(v13, type metadata accessor for TagMastheadViewLayoutAttributes);
  return sub_1D6071110(v22, type metadata accessor for TagMastheadModel);
}

void sub_1D6071054(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D60710A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6071110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6071170(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6071054(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60711EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagMastheadModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TagMastheadViewLayoutAttributes()
{
  result = qword_1EDF1F3F0;
  if (!qword_1EDF1F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60712D0()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TagMastheadViewBackground();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TagMastheadPlacement();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6071398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D60713F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D607145C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v24 = a4;
    v8 = *(result + 24);
    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = 0;
      v11 = 32;
      while (v10 < *(v8 + 16))
      {
        v12 = *(v8 + v11);
        v13 = *(v8 + v11 + 16);
        v14 = *(v8 + v11 + 48);
        v37 = *(v8 + v11 + 32);
        v38 = v14;
        v35 = v12;
        v36 = v13;
        v15 = *(v8 + v11 + 16);
        v31 = *(v8 + v11);
        v32 = v15;
        v16 = *(v8 + v11 + 48);
        v33 = *(v8 + v11 + 32);
        v34 = v16;
        v17 = v31;
        v18 = v32;
        v29 = v31;
        v30 = v32;
        sub_1D6072164(&v35, &v25);
        sub_1D5D03180(v17, *(&v17 + 1), v18);
        v19 = a1(&v29);
        sub_1D5D07BA8(v29, *(&v29 + 1), v30);
        if (v19)
        {

          v24(&v32 + 8);

          v25 = v31;
          v26 = v32;
          v27 = v33;
          v28 = v34;
          return sub_1D60721EC(&v25, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
        }

        ++v10;
        v25 = v31;
        v26 = v32;
        v27 = v33;
        v28 = v34;
        result = sub_1D60721EC(&v25, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
        v11 += 64;
        if (v9 == v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v20 = v7[5];
      v22 = v7[6];
      v21 = v7[7];
      v23 = v7[8];
      *&v35 = v7[4];
      *(&v35 + 1) = v20;
      *&v36 = v22;
      *(&v36 + 1) = v21;
      *&v37 = v23;

      v24(&v35);
    }
  }

  return result;
}

uint64_t sub_1D6071690(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = a4;
    v15 = result;
    v6 = *(result + 24);
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = (v6 + 56);
      while (v8 < *(v6 + 16))
      {
        v10 = *v9;
        v11 = *(v9 - 8);
        v13 = *(v9 - 3);
        v12 = *(v9 - 2);
        v21 = v13;
        v22 = v12;
        v23 = v11;
        v24 = v10;
        v18 = v13;
        v19 = v12;
        v20 = v11;
        sub_1D5D03180(v13, v12, v11);

        sub_1D5D03180(v13, v12, v11);
        v14 = a1(&v18);
        sub_1D5D07BA8(v18, v19, v20);
        if (v14)
        {

          v16(&v24);

          sub_1D5D07BA8(v21, v22, v23);
        }

        ++v8;
        sub_1D5D07BA8(v13, v12, v11);

        v9 += 4;
        if (v7 == v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v21 = *(v15 + 32);

      v16(&v21);
    }
  }

  return result;
}

unint64_t sub_1D607184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *v5;
  if (*v5 < 0)
  {
    v18 = v5[1];
    v17 = v5[2];
    v19 = [objc_opt_self() defaultCenter];
    v20 = sub_1D726203C();
    v21 = [objc_opt_self() mainQueue];
    v22 = swift_allocObject();
    v22[2] = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v22[3] = v18;
    v22[4] = v17;
    v22[5] = a3;
    v22[6] = a4;
    v27[4] = sub_1D60720A0;
    v27[5] = v22;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = sub_1D6071E1C;
    v27[3] = &block_descriptor_17;
    v23 = _Block_copy(v27);

    sub_1D60720B0(v9);

    v24 = [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v23];
    _Block_release(v23);

    v25 = type metadata accessor for FormatNotificationCenterObserver();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    a5[3] = v25;
    result = sub_1D6072100();
    a5[4] = result;
    *a5 = v26;
  }

  else
  {
    v12 = *(v9 + 16);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a3;
    v14[4] = a4;
    v15 = *(v12 + 72);

    v15(a1, a2, sub_1D6072158, v14);
  }

  return result;
}

uint64_t sub_1D6071AF8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *))
{
  v8 = sub_1D7257B0C();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  *&v22 = 1635017060;
  *(&v22 + 1) = 0xE400000000000000;
  sub_1D7263C9C();
  if (!*(v9 + 16) || (v10 = sub_1D6D62B40(v30), (v11 & 1) == 0))
  {

    sub_1D5F42574(v30);
LABEL_11:
    v31 = 0u;
    v32 = 0u;
    return sub_1D60721EC(&v31, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  sub_1D5B76B10(*(v9 + 56) + 32 * v10, &v31);
  sub_1D5F42574(v30);

  if (!*(&v32 + 1))
  {
    return sub_1D60721EC(&v31, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v26 = v30[4];
    v27 = v30[5];
    v28 = v30[6];
    v29 = v30[7];
    v22 = v30[0];
    v23 = v30[1];
    v24 = v30[2];
    v25 = v30[3];
    if (!a4)
    {
      v19 = *(&v27 + 1);
      v20 = v28;
      v21 = v29;

      a5(&v19);

      if (qword_1EDF16528 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDFFC6E8;
      sub_1D725AB5C();
      v14 = v23;

      sub_1D725A76C();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v13 + 16);
      *(v13 + 16) = 0x8000000000000000;
      sub_1D6D76D20(v17, v18, v14, *(&v14 + 1), isUniquelyReferenced_nonNull_native);

      *(v13 + 16) = v16;
      swift_endAccess();
      sub_1D725A77C();
      sub_1D6072298(&v22);
    }

    if (v22 == __PAIR128__(a4, a3) || (sub_1D72646CC() & 1) != 0)
    {
      v19 = *(&v27 + 1);
      v20 = v28;
      v21 = v29;

      a5(&v19);
      sub_1D6072298(&v22);
    }

    return sub_1D6072298(&v22);
  }

  return result;
}

uint64_t sub_1D6071E1C(uint64_t a1)
{
  v2 = sub_1D7257B1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1D7257AEC();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D6071F10()
{
  type metadata accessor for FormatLayoutViewToken();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC8NewsFeed21FormatLayoutViewToken_children;
    swift_beginAccess();
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1DA6F9CE0](v3);
    if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D6072020()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60720B0(uint64_t a1)
{
  if (a1 < 0)
  {
  }
}

unint64_t sub_1D6072100()
{
  result = qword_1EDF08288;
  if (!qword_1EDF08288)
  {
    type metadata accessor for FormatNotificationCenterObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08288);
  }

  return result;
}

uint64_t sub_1D6072164(uint64_t a1, uint64_t a2)
{
  sub_1D6072248(0, qword_1EDF264D0, &type metadata for FormatStateMachineEvent, type metadata accessor for FormatCommandActionValue.CaseValue);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60721EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D6072248(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6072248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1D60722EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v8 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  if (a3)
  {
    v16 = sub_1D726203C();
  }

  else
  {
    v16 = 0;
  }

  v73.receiver = v3;
  v73.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v73, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  v19 = *&v17[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = v19;
  v23 = [v20 systemYellowColor];
  v24 = [v23 colorWithAlphaComponent_];

  [v22 setBackgroundColor_];
  v25 = [v21 contentView];
  [v25 addSubview_];

  v26 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  [*&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer] setLineWidth_];
  v27 = *&v21[v26];
  sub_1D5E42B34();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D72816C0;
  sub_1D5BAFAD8();
  v29 = v27;
  *(v28 + 32) = sub_1D72636EC();
  v30 = sub_1D726265C();

  [v29 setLineDashPattern_];

  v31 = *&v21[v26];
  v32 = [v20 lightGrayColor];
  v33 = [v32 CGColor];

  [v31 setStrokeColor_];
  v34 = *&v21[v26];
  v35 = [v20 clearColor];
  v36 = [v35 &selRef_constraintEqualToAnchor_constant_];

  [v34 setFillColor_];
  v37 = [v21 contentView];
  v38 = [v37 layer];

  [v38 addSublayer_];
  v39 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  v40 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemFontOfSize_];
  [v42 setFont_];

  v44 = [v21 contentView];
  [v44 addSubview_];

  v45 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  v46 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel];
  v47 = [v41 systemFontOfSize_];
  [v46 setFont_];

  v48 = [v21 contentView];
  [v48 addSubview_];

  v49 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  v50 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel];
  v51 = [v41 systemFontOfSize_];
  [v50 setFont_];

  v52 = [v21 contentView];
  [v52 addSubview_];

  v53 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  v54 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel];
  v55 = [v41 systemFontOfSize_];
  [v54 setFont_];

  v56 = [v21 contentView];
  [v56 addSubview_];

  v57 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  v58 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel];
  v59 = [v41 systemFontOfSize_];
  [v58 setFont_];

  v60 = [v21 contentView];
  [v60 addSubview_];

  v61 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  v62 = *&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
  v63 = [v20 systemYellowColor];
  [v62 setBackgroundColor_];

  [*&v21[v61] setFrame_];
  v64 = [*&v21[v61] layer];
  [v64 setCornerRadius_];

  v65 = [v21 contentView];
  [v65 addSubview_];

  v66 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  [*&v21[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer] setLineWidth_];
  v67 = *&v21[v66];
  v68 = [v20 clearColor];
  v69 = [v68 CGColor];

  [v67 setFillColor_];
  [*&v21[v66] setLineJoin_];
  [*&v21[v66] setLineCap_];
  v70 = [v21 contentView];

  v71 = [v70 layer];
  [v71 addSublayer_];

  return v21;
}

uint64_t sub_1D6072C0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725A2CC();
  v109 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v108 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D7259FDC();
  v107 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v6);
  v106 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725A5BC();
  v104 = *(v8 - 8);
  v105 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v103 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1D7259F6C();
  v101 = *(v102 - 1);
  MEMORY[0x1EEE9AC00](v102, v11);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725A04C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725A32C();
  v20 = *(v19 - 8);
  *&v22 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115.receiver = v1;
  v115.super_class = ObjectType;
  objc_msgSendSuper2(&v115, sel_layoutSubviews, v22);
  result = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor];
  if (result)
  {
    v110 = v3;
    v26 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel];
    v113 = 0x203A73736150;
    v114 = 0xE600000000000000;

    sub_1D725A40C();
    sub_1D725A31C();
    (*(v20 + 8))(v24, v19);
    sub_1D5B6ABFC(&qword_1EC883010, MEMORY[0x1E69D71B8]);
    v27 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v27);

    (*(v15 + 8))(v18, v14);
    v28 = sub_1D726203C();

    [v26 setText_];

    [v26 sizeToFit];
    [v26 frame];
    Width = CGRectGetWidth(v116);
    [v26 frame];
    [v26 setFrame_];
    v30 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel];
    v113 = 0x676E697A69736552;
    v114 = 0xEA0000000000203ALL;
    sub_1D725A44C();
    sub_1D5B6ABFC(&qword_1EC883018, MEMORY[0x1E69D7168]);
    v31 = v102;
    v32 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v32);

    (*(v101 + 8))(v13, v31);
    v33 = sub_1D726203C();

    [v30 setText_];

    [v30 sizeToFit];
    [v1 bounds];
    Height = CGRectGetHeight(v118);
    [v30 frame];
    v35 = Height - CGRectGetHeight(v119) + -8.0;
    [v30 frame];
    v36 = CGRectGetWidth(v120);
    [v30 frame];
    [v30 setFrame_];
    v37 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel];
    sub_1D725A41C();
    sub_1D725A42C();
    sub_1D726327C();
    sub_1D707FF40();
    v38 = sub_1D726203C();

    [v37 setText_];

    [v37 sizeToFit];
    v39 = [v1 contentView];
    [v39 center];
    v41 = v40;
    v43 = v42;

    [v37 setCenter_];
    [v1 bounds];
    v44 = CGRectGetWidth(v122) * 0.5;
    v45 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer];
    [v1 bounds];
    v46 = CGRectGetWidth(v123) * 0.5 - v44 * 0.5;
    [v1 bounds];
    [v45 setFrame_];
    [v45 bounds];
    v51 = [objc_opt_self() bezierPathWithRect_];
    v52 = [v51 CGPath];

    [v45 setPath_];
    sub_1D725A41C();
    CGRectGetWidth(v125);
    v53 = v1;
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A41C();
      CGRectGetWidth(v126);
    }

    sub_1D725A41C();
    CGRectGetHeight(v127);
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A41C();
      CGRectGetHeight(v128);
    }

    sub_1D725A3BC();
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A3BC();
    }

    sub_1D725A3BC();
    if ((sub_1D725A63C() & 1) == 0)
    {
      sub_1D725A3BC();
    }

    v54 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView];
    [v45 frame];
    [v54 &selRef_isHiddenFromAutoFavorites];
    v55 = *&v1[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer];
    v56 = [objc_opt_self() systemYellowColor];
    v57 = [v56 CGColor];

    [v55 setStrokeColor_];
    v58 = v103;
    sub_1D725A45C();
    v60 = v104;
    v59 = v105;
    v61 = (*(v104 + 88))(v58, v105);
    v62 = *MEMORY[0x1E69D74D0];
    v102 = v45;
    if (v61 == v62)
    {
      v63 = *&v53[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
      [v54 frame];
      MaxX = CGRectGetMaxX(v129);
      [v54 frame];
      [v63 setCenter_];
      [v63 center];
      v66 = v65;
      v68 = v67;
      [v45 frame];
      v69 = CGRectGetMaxX(v131);
      [v45 frame];
      MinY = CGRectGetMinY(v132);
      v71 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v71 moveToPoint_];
      [v71 addLineToPoint_];
      sub_1D6089D88(v71, v66, v68, v69, MinY);
      v72 = [v71 CGPath];
    }

    else
    {
      if (v61 != *MEMORY[0x1E69D74D8])
      {
        (*(v60 + 8))(v58, v59);
        goto LABEL_16;
      }

      v73 = *&v53[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView];
      [v54 frame];
      MinX = CGRectGetMinX(v133);
      [v54 frame];
      [v73 setCenter_];
      [v73 center];
      v76 = v75;
      v78 = v77;
      [v45 frame];
      v79 = CGRectGetMinX(v135);
      [v45 frame];
      MaxY = CGRectGetMaxY(v136);
      v71 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v71 moveToPoint_];
      [v71 addLineToPoint_];
      sub_1D6089D88(v71, v76, v78, v79, MaxY);
      v72 = [v71 CGPath];
    }

    v81 = v72;

    [v55 setPath_];
LABEL_16:
    v82 = *&v53[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel];
    v83 = v106;
    sub_1D725A3EC();
    v84 = v108;
    sub_1D7259FBC();
    v107 = *(v107 + 8);
    (v107)(v83, v111);
    sub_1D725A2BC();
    v109 = *(v109 + 8);
    (v109)(v84, v110);
    v85 = sub_1D726203C();

    [v82 setText_];

    [v82 sizeToFit];
    v86 = v53;
    [v53 bounds];
    v87 = CGRectGetWidth(v137) * 0.5;
    [v82 bounds];
    v88 = v87 - CGRectGetWidth(v138) * 0.5;
    v89 = v102;
    [v102 frame];
    v90 = CGRectGetMinY(v139);
    [v82 bounds];
    v91 = v90 - CGRectGetHeight(v140) + -4.0;
    [v82 bounds];
    v92 = CGRectGetWidth(v141);
    [v82 bounds];
    v93 = v89;
    [v82 setFrame_];
    v94 = *&v86[OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel];
    sub_1D725A3EC();
    sub_1D7259FCC();
    (v107)(v83, v111);
    sub_1D725A2BC();
    (v109)(v84, v110);
    v95 = sub_1D726203C();

    [v94 setText_];

    [v94 sizeToFit];
    [v93 frame];
    v96 = CGRectGetMaxX(v143) + 4.0;
    [v86 bounds];
    v97 = CGRectGetHeight(v144) * 0.5;
    [v94 bounds];
    v98 = v97 - CGRectGetHeight(v145) * 0.5;
    [v94 bounds];
    v99 = CGRectGetWidth(v146);
    [v94 bounds];
    [v94 setFrame_];
  }

  return result;
}

void sub_1D6073BA0()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_cursor) = 0;
  v1 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v2 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_frameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_widthSizingConstraintLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_heightSizingConstraintLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_filledAreaView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_passLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_resizingLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_positionView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed30DebugFormatInspectorCursorCell_directionLayer;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t FormatFrameNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatFrameNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatFrameNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatFrameNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatFrameNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatFrameNode.__allocating_init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = *(a5 + 32);
  v13 = *(a5 + 40);
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v11;
  swift_beginAccess();
  *(v10 + 40) = a4;
  v14 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v14;
  *(v10 + 80) = v12;
  *(v10 + 88) = v13;
  return v10;
}

uint64_t FormatFrameNode.init(identifier:size:adjustments:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v10;
  swift_beginAccess();
  *(v5 + 40) = a4;
  v13 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v13;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  return v5;
}

uint64_t FormatFrameNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t FormatFrameNode.__deallocating_deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6074160(uint64_t a1)
{
  result = sub_1D60742A4(&qword_1EC883020);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60741A4(void *a1)
{
  a1[1] = sub_1D60742A4(&qword_1EDF31958);
  a1[2] = sub_1D60742A4(&qword_1EDF118D8);
  result = sub_1D60742A4(&qword_1EC883028);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6074260(uint64_t a1)
{
  result = sub_1D60742A4(&qword_1EC883030);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60742A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFrameNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60742E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v26 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v19 = v26;
    v18 = v20;
  }

  else
  {
  }

  v21 = swift_allocObject();
  v23 = *(a4 + 16);
  v22 = *(a4 + 24);
  type metadata accessor for FormatFrameNodeLayoutAttributes();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v24 + 48) = v23;
  *(v24 + 56) = v22;
  *(v24 + 64) = a6;
  *(v24 + 72) = a7;
  *(v24 + 80) = a8;
  *(v24 + 88) = a9;
  *(v21 + 16) = v24;
  *a5 = v21 | 0x4000000000000000;
}

uint64_t sub_1D607446C(uint64_t a1)
{
  v2 = type metadata accessor for FormatSlotDefinitionItemSet();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60747E4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  sub_1D60748EC(a1 + *(v20 + 20), v19, sub_1D60747E4);
  v34 = v3;
  v21 = *(v3 + 48);
  v22 = v21(v19, 1, v2);
  sub_1D6074954(v19, sub_1D60747E4);
  if (v22 == 1)
  {
    sub_1D60748EC(a1 + *(v20 + 24), v15, sub_1D60747E4);
    if (v21(v15, 1, v2) == 1)
    {
      return sub_1D6074954(v15, sub_1D60747E4);
    }

    else
    {
      v25 = v35;
      sub_1D607483C(v15, v35);
      v26 = *(type metadata accessor for FormatDerivedDataBindingItemResult() + 20);
      v27 = v32;
      sub_1D60748EC(v25, v32, type metadata accessor for FormatSlotDefinitionItemSet);
      (*(v34 + 56))(v27, 0, 1, v2);
      v28 = v36;
      v29 = v33;
      v30 = v37;
      sub_1D6C956D4(v36 + v26, v27, v33);
      sub_1D6074954(v27, sub_1D60747E4);
      result = sub_1D6074954(v25, type metadata accessor for FormatSlotDefinitionItemSet);
      if (!v30)
      {
        return sub_1D60749B4(v29, v28 + v26);
      }
    }
  }

  else
  {
    type metadata accessor for FormatDerivedDataError();
    sub_1D5E40444();
    swift_allocError();
    *v24 = 6;
    *(v24 + 8) = 0xD00000000000002FLL;
    *(v24 + 16) = 0x80000001D73C7B90;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

void sub_1D60747E4()
{
  if (!qword_1EDF22050)
  {
    type metadata accessor for FormatSlotDefinitionItemSet();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF22050);
    }
  }
}

uint64_t sub_1D607483C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinitionItemSet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatDerivedDataBindingItemResult()
{
  result = qword_1EC883038;
  if (!qword_1EC883038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60748EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6074954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60749B4(uint64_t a1, uint64_t a2)
{
  sub_1D60747E4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D6074A40()
{
  sub_1D60747E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D6074ABC()
{
  sub_1D5C14A38();
  v0 = sub_1D726338C();
  v1 = [objc_opt_self() configurationWithFont_];

  qword_1EC9BA770 = v1;
}

void sub_1D6074B34()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    xmmword_1EC9BA778 = 0uLL;
    qword_1EC9BA788 = v1;
    byte_1EC9BA790 = 0;
    *&xmmword_1EC9BA798 = 1701736270;
    *(&xmmword_1EC9BA798 + 1) = 0xE400000000000000;
    qword_1EC9BA7A8 = 0;
    unk_1EC9BA7B0 = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6074BCC()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0x7974706D65;
  }

  return v1;
}

uint64_t sub_1D6074C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6074C6C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t static CoverIssueViewLayout.make18ColumnCatalogLayout(context:factories:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v11 = a1;
  v12 = a2;
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v6);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6074E08(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25[-v10];
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  v14 = (*(v13 + 48))(v12, v13);
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 56))(v15, v16);
  v18 = v14 + v17 + v17;
  v19 = sub_1D6076AA0(a2);
  if ((a2[7] & 4) != 0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 20.0;
  }

  v21 = v19;
  sub_1D726334C();
  [v21 boundingRectWithSize:35 options:0 context:?];
  v22 = v20 + v18 + 20.0 + CGRectGetWidth(v33) + 10.0;
  v32 = a1;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D74A8], v7);
  v26 = a2;
  v27 = a3;
  v28 = v22;
  v29 = 0x4024000000000000;
  v30 = v21;
  v31 = v20;
  v23 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v23);
  sub_1D7259A2C();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60750C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v51 = a4;
  v52 = a1;
  v48 = a2;
  v49 = a3;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (v43 - v16);
  v59 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4024000000000000;
  *v17 = v18;
  v19 = *MEMORY[0x1E69D7488];
  v20 = *(v14 + 104);
  v53 = v14 + 104;
  v50 = v19;
  v20(v17, v19, v13);
  v44 = v20;
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v23 = v22;
  v24 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  v47 = v23;
  v43[1] = v24;
  sub_1D7259A9C();
  v25 = *(v14 + 8);
  v25(v17, v13);
  v45 = v25;
  v46 = v14 + 8;
  v26 = a2;
  v27 = v52;
  sub_1D6B0960C(v26, v49, v52);
  v59 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4030000000000000;
  *v17 = v28;
  v20(v17, v19, v13);
  sub_1D7259A9C();
  v25(v17, v13);
  v59 = v27;
  sub_1D5EF9444();
  v30 = v29;
  v31 = swift_allocBox();
  v33 = v32;
  v34 = *(v30 + 48);
  v35 = *MEMORY[0x1E69D71E8];
  v36 = sub_1D725A09C();
  v37 = *(*(v36 - 8) + 104);
  v37(v33, v35, v36);
  v37(v33 + v34, *MEMORY[0x1E69D7208], v36);
  *v17 = v31;
  v38 = v44;
  v44(v17, *MEMORY[0x1E69D7468], v13);
  v54 = a5;
  v55 = v48;
  v56 = a6;
  v57 = v51;
  v58 = a7;
  sub_1D72599EC();
  v39 = v45;
  v45(v17, v13);
  v40 = v52;
  v59 = v52;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x404C000000000000;
  *v17 = v41;
  v38(v17, v50, v13);
  sub_1D7259A9C();
  v39(v17, v13);
  v59 = v40;
  v38(v17, *MEMORY[0x1E69D7460], v13);
  sub_1D7259B2C();
  return (v39)(v17, v13);
}

uint64_t sub_1D607559C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v52 = a1;
  v53 = a3;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v51 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v47 - v13);
  v58 = a1;
  sub_1D5EF9444();
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18;
  v49 = *(v16 + 48);
  v50 = v17;
  v20 = sub_1D725A09C();
  v21 = swift_allocBox();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *v23 = v24;
  v25 = *MEMORY[0x1E69D71F0];
  v26 = *(*(v20 - 8) + 104);
  v26(v23, v25, v20);
  *v19 = v21;
  v26(v19, *MEMORY[0x1E69D71F8], v20);
  v27 = swift_allocObject();
  v28 = a2;
  v48 = a2;
  v29 = *(a2 + 320);
  v30 = *(v28 + 328);
  __swift_project_boxed_opaque_existential_1((v28 + 296), v29);
  *(v27 + 16) = (*(v30 + 24))(v29, v30);
  v31 = v49;
  *(v19 + v49) = v27;
  v26((v19 + v31), v25, v20);
  v32 = v51;
  *v14 = v50;
  v33 = v54;
  v34 = *(v54 + 104);
  v34(v14, *MEMORY[0x1E69D7468], v32);
  v57 = v48;
  v35 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v35);
  sub_1D72599EC();
  v36 = *(v33 + 8);
  v36(v14, v32);
  v54 = v33 + 8;
  v37 = v52;
  v58 = v52;
  v38 = swift_allocObject();
  *(v38 + 16) = a5;
  *v14 = v38;
  v34(v14, *MEMORY[0x1E69D7480], v32);
  sub_1D7259A9C();
  v36(v14, v32);
  v58 = v37;
  v34(v14, *MEMORY[0x1E69D74A8], v32);
  sub_1D6076D50();
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = *MEMORY[0x1E69D7070];
  sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
  (*(*(v45 - 8) + 104))(v43 + v42, v44, v45);
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69D7080], v40);
  v55 = v53;
  v56 = a6;
  sub_1D72599EC();

  return (v36)(v14, v32);
}

uint64_t sub_1D6075B08(uint64_t a1, uint64_t a2)
{
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v29 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50();
    sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = *MEMORY[0x1E69D7068];
    sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
    (*(*(v26 - 8) + 104))(v24 + v23, v25, v26);
    (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69D7080], v21);
    v27 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v27);
    sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
    v28 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6075F5C(uint64_t a1, void *a2, double a3)
{
  v40 = a2;
  v47 = a1;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v42 = v6;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v35 - v10);
  v48 = a1;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v41 = v11;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D73E8];
  v14 = *(v8 + 104);
  v45 = v8 + 104;
  v46 = v14;
  v14(v11, v13, v7);
  sub_1D6076D50();
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v39 = v20;
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v20 + v19;
  *(v20 + v19) = a3;
  v37 = *MEMORY[0x1E69D7240];
  v22 = v37;
  v23 = sub_1D725A13C();
  v24 = *(v23 - 8);
  v36 = *(v24 + 104);
  v38 = v24 + 104;
  v36(v21, v22, v23);
  v25 = *MEMORY[0x1E69D72D8];
  v26 = sub_1D725A29C();
  v27 = *(*(v26 - 8) + 104);
  v27(v21, v25, v26);
  v28 = *(v17 + 104);
  v28(v21, *MEMORY[0x1E69D6FC0], v16);
  *(v21 + v18) = 0x4008000000000000;
  v36(v21 + v18, v37, v23);
  v27(v21 + v18, v25, v26);
  v28(v21 + v18, *MEMORY[0x1E69D6FD0], v16);
  v29 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v29);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  v30 = v40;
  v31 = v41;
  sub_1D7259A7C();

  v32 = v42;
  v33 = *(v43 + 8);
  v33(v31, v42);
  v48 = v47;
  swift_getKeyPath();
  v46(v31, *MEMORY[0x1E69D7470], v32);
  sub_1D7259A7C();

  return (v33)(v31, v32);
}

uint64_t sub_1D6076418(void *a1)
{
  v1 = *a1;
  v83 = a1;
  v85 = v1;
  sub_1D6076DC4(0, &qword_1EDF17F88, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v58 - v7);
  v86 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v10 = v9;
  v82 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *MEMORY[0x1E69D71E8];
  v16 = sub_1D725A09C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v19 = v17 + 104;
  v76 = v16;
  v18(v13, v15);
  v77 = v19;
  v72 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4000000000000000;
  *(v13 + v14) = v20;
  v75 = *MEMORY[0x1E69D71F0];
  (v18)(v13 + v14);
  *v8 = v11;
  v79 = *MEMORY[0x1E69D7468];
  v21 = v5;
  v22 = *(v5 + 104);
  v80 = v5 + 104;
  v81 = v22;
  (v22)(v8);
  sub_1D6076D50();
  v74 = v23;
  sub_1D6076DC4(0, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
  v64 = v24;
  v25 = *(v24 - 8);
  v71 = *(v25 + 72);
  v73 = *(v25 + 80);
  v26 = (v73 + 32) & ~v73;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  v70 = *MEMORY[0x1E69D7050];
  v28 = v70;
  sub_1D6076DC4(0, &qword_1EDF180E0, MEMORY[0x1E69D7078]);
  v67 = v29;
  v30 = *(v29 - 8);
  v68 = *(v30 + 104);
  v69 = v30 + 104;
  v59 = v26;
  v68(v27 + v26, v28, v29);
  v63 = *MEMORY[0x1E69D7080];
  v65 = *(v25 + 104);
  v66 = v25 + 104;
  v65(v27 + v26);
  v62 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v61 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  v84 = v8;
  sub_1D7259A7C();

  v31 = *(v21 + 8);
  v60 = v21 + 8;
  KeyPath = v31;
  v31(v8, v4);
  v86 = v83;
  v83 = swift_getKeyPath();
  v32 = v82;
  v33 = swift_allocBox();
  v35 = v34;
  v36 = *(v32 + 48);
  v37 = swift_allocObject();
  *(v37 + 16) = 0x403C000000000000;
  *v35 = v37;
  v38 = v75;
  v39 = v76;
  v40 = v72;
  (v72)(v35, v75, v76);
  v41 = swift_allocObject();
  *(v41 + 16) = 0x403C000000000000;
  *(v35 + v36) = v41;
  v40(v35 + v36, v38, v39);
  *v84 = v33;
  v58 = v4;
  v81();
  v42 = v71;
  v43 = v59;
  v44 = swift_allocObject();
  v82 = v44;
  *(v44 + 16) = xmmword_1D7279970;
  v45 = v44 + v43;
  v46 = v67;
  v47 = v68;
  v68(v45, v70, v67);
  v48 = v63;
  v49 = v64;
  v50 = v65;
  (v65)(v45, v63, v64);
  v47(v45 + v42, *MEMORY[0x1E69D7070], v46);
  v50(v45 + v42, v48, v49);
  __asm { FMOV            V0.2D, #-10.0 }

  *(v45 + 2 * v42) = _Q0;
  v50(v45 + 2 * v42, *MEMORY[0x1E69D7090], v49);
  v56 = v84;
  sub_1D7259A7C();

  return KeyPath(v56, v58);
}

uint64_t sub_1D6076AA0(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 56) & 4) == 0)
  {
    v8 = *(a1 + 368);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 376);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D6076C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CoverIssueViewLayout;
    v8[1] = &type metadata for CoverIssueViewLayout.Attributes;
    v8[2] = sub_1D5EF9538();
    v8[3] = sub_1D5EF958C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6076CF4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6076C70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6076D50()
{
  if (!qword_1EDF02400)
  {
    sub_1D6076DC4(255, &qword_1EDF180C8, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02400);
    }
  }
}

void sub_1D6076DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EF9538();
    v7 = a3(a1, &type metadata for CoverIssueViewLayout, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for WebEmbedDatastoreProperty()
{
  result = qword_1EDF0BB58;
  if (!qword_1EDF0BB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6076ED0()
{
  result = type metadata accessor for WebEmbedDataSourceCacheEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D6076F4C()
{
  result = qword_1EDF326B8;
  if (!qword_1EDF326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326B8);
  }

  return result;
}

unint64_t sub_1D6076FA0()
{
  result = qword_1EDF32698;
  if (!qword_1EDF32698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32698);
  }

  return result;
}

uint64_t FormatItemKind.encode(to:)(void *a1)
{
  v182 = a1;
  sub_1D5CB85B4(0, &qword_1EDF027E8, sub_1D5CB861C, &type metadata for FormatItemKind.CodingKeys, MEMORY[0x1E69E6F58]);
  v2 = v1;
  v179 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v180 = &v179 - v4;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v179 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](&v179 - v17, v18);
  MEMORY[0x1EEE9AC00](v20, &v179 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v179 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v179 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v179 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v179 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v179 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v179 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v179 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v64 = &v179 - v63;
  switch(v181[1])
  {
    case 0:
      v65 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v66 = v65[3];
      v67 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v66);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
      (*(*(v68 - 8) + 16))(v64, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v70 = v183;
      sub_1D5D2BEC4(v64, sub_1D60789E8, 0, v66, v67);
      v71 = v64;
      if (v70)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v64);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 1:
      v126 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v127 = v126[3];
      v128 = v126[4];
      __swift_project_boxed_opaque_existential_1(v126, v127);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD98);
      (*(*(v129 - 8) + 16))(v52, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v131 = v183;
      sub_1D5D2BEC4(v52, sub_1D6078A04, 0, v127, v128);
      v71 = v52;
      if (v131)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v52);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 2:
      v102 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v103 = v102[3];
      v104 = v102[4];
      __swift_project_boxed_opaque_existential_1(v102, v103);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD30);
      (*(*(v105 - 8) + 16))(v48, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = v183;
      sub_1D5D2BEC4(v48, sub_1D6078A20, 0, v103, v104);
      v71 = v48;
      if (v107)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v48);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 3:
      v114 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v115 = v114[3];
      v116 = v114[4];
      __swift_project_boxed_opaque_existential_1(v114, v115);
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD18);
      (*(*(v117 - 8) + 16))(v44, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v119 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078A3C, 0, v115, v116);
      if (!v119)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 4:
      v84 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v85 = v84[3];
      v86 = v84[4];
      __swift_project_boxed_opaque_existential_1(v84, v85);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD98);
      (*(*(v87 - 8) + 16))(v40, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v89 = v183;
      sub_1D5D2BEC4(v40, sub_1D6078A58, 0, v85, v86);
      v71 = v40;
      if (v89)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v40);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 5:
      v132 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v133 = v132[3];
      v134 = v132[4];
      __swift_project_boxed_opaque_existential_1(v132, v133);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v135 = sub_1D725BD1C();
      v136 = __swift_project_value_buffer(v135, qword_1EDFFCDE0);
      (*(*(v135 - 8) + 16))(v36, v136, v135);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v137 = v183;
      sub_1D5D2BEC4(v36, sub_1D6078A74, 0, v133, v134);
      v71 = v36;
      if (v137)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v36);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 6:
      v145 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v146 = v145[3];
      v147 = v145[4];
      __swift_project_boxed_opaque_existential_1(v145, v146);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v148 = sub_1D725BD1C();
      v149 = __swift_project_value_buffer(v148, qword_1EDFFCDE0);
      (*(*(v148 - 8) + 16))(v32, v149, v148);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v150 = v183;
      sub_1D5D2BEC4(v32, sub_1D6078A90, 0, v146, v147);
      if (v150)
      {
        sub_1D6079974(v32);
        return __swift_destroy_boxed_opaque_existential_1(v184);
      }

      sub_1D6079974(v32);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 7:
      v120 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v121 = v120[3];
      v122 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v121);
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD80);
      (*(*(v123 - 8) + 16))(v28, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v125 = v183;
      sub_1D5D2BEC4(v28, sub_1D6078AAC, 0, v121, v122);
      v71 = v28;
      if (v125)
      {
        goto LABEL_66;
      }

      sub_1D6079974(v28);
      __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
      goto LABEL_73;
    case 8:
      v44 = v59;
      v158 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v159 = v158[3];
      v160 = v158[4];
      __swift_project_boxed_opaque_existential_1(v158, v159);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v161 = sub_1D725BD1C();
      v162 = __swift_project_value_buffer(v161, qword_1EDFFCD68);
      (*(*(v161 - 8) + 16))(v44, v162, v161);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v163 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078AC8, 0, v159, v160);
      if (v163)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    case 9:
      v44 = v58;
      v96 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v97 = v96[3];
      v98 = v96[4];
      __swift_project_boxed_opaque_existential_1(v96, v97);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD68);
      (*(*(v99 - 8) + 16))(v44, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v101 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078AE4, 0, v97, v98);
      if (!v101)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 10:
      v44 = v57;
      v152 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v153 = v152[3];
      v154 = v152[4];
      __swift_project_boxed_opaque_existential_1(v152, v153);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v155 = sub_1D725BD1C();
      v156 = __swift_project_value_buffer(v155, qword_1EDFFCD68);
      (*(*(v155 - 8) + 16))(v44, v156, v155);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v157 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B00, 0, v153, v154);
      if (!v157)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 11:
      v44 = v56;
      v78 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v79 = v78[3];
      v80 = v78[4];
      __swift_project_boxed_opaque_existential_1(v78, v79);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD68);
      (*(*(v81 - 8) + 16))(v44, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B1C, 0, v79, v80);
      if (!v83)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 12:
      v44 = v55;
      v90 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v91 = v90[3];
      v92 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v91);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD68);
      (*(*(v93 - 8) + 16))(v44, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v95 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B38, 0, v91, v92);
      if (!v95)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 13:
      v44 = v14;
      v138 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v139 = v138[3];
      v140 = v138[4];
      __swift_project_boxed_opaque_existential_1(v138, v139);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD68);
      (*(*(v141 - 8) + 16))(v14, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v143 = v14;
      v144 = v183;
      sub_1D5D2BEC4(v143, sub_1D6078B54, 0, v139, v140);
      if (!v144)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 14:
      v44 = v62;
      v72 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v73 = v72[3];
      v74 = v72[4];
      __swift_project_boxed_opaque_existential_1(v72, v73);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCE80);
      (*(*(v75 - 8) + 16))(v44, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v77 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B70, 0, v73, v74);
      if (!v77)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    case 15:
      v44 = v61;
      v108 = v182;
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D7264B3C();
      v109 = v108[3];
      v110 = v108[4];
      __swift_project_boxed_opaque_existential_1(v108, v109);
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCE50);
      (*(*(v111 - 8) + 16))(v44, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v113 = v183;
      sub_1D5D2BEC4(v44, sub_1D6078B8C, 0, v109, v110);
      if (v113)
      {
LABEL_65:
        v71 = v44;
LABEL_66:
        sub_1D6079974(v71);
      }

      else
      {
LABEL_72:
        sub_1D6079974(v44);
        __swift_mutable_project_boxed_opaque_existential_1(v184, v185);
LABEL_73:
        sub_1D726473C();
      }

      return __swift_destroy_boxed_opaque_existential_1(v184);
    default:
      v164 = v60;
      v165 = v2;
      v166 = *v181;
      v167 = v182;
      v168 = v181[1];
      __swift_project_boxed_opaque_existential_1(v182, v182[3]);
      sub_1D5CB861C();
      v169 = v168;

      sub_1D7264B5C();
      v170 = v167[3];
      v171 = v167[4];
      __swift_project_boxed_opaque_existential_1(v167, v170);
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v172 = sub_1D725BD1C();
      v173 = __swift_project_value_buffer(v172, qword_1EDFFCDC8);
      (*(*(v172 - 8) + 16))(v164, v173, v172);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v174 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v174, v175);
      *(&v179 - 2) = v166;
      *(&v179 - 1) = v169;
      v176 = v183;
      sub_1D5D2BEC4(v164, sub_1D607996C, (&v179 - 4), v170, v171);
      if (v176)
      {
        sub_1D5CBA0FC(v166, v169);
        sub_1D6079974(v164);
        return (*(v179 + 8))(v180, v165);
      }

      else
      {
        sub_1D6079974(v164);
        LOBYTE(v184[0]) = 0;
        sub_1D60799D0();
        v177 = v180;
        sub_1D726443C();
        v178 = v179;
        v184[0] = v166;
        v184[1] = v169;
        v186 = 1;
        sub_1D6079A24();
        sub_1D726443C();
        sub_1D5CBA0FC(v166, v169);
        return (*(v178 + 8))(v177, v165);
      }
  }
}

unint64_t sub_1D6078BA8(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_1D6078C38@<X0>(char *a1@<X8>)
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

uint64_t sub_1D6078C98@<X0>(char *a1@<X8>)
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

uint64_t sub_1D6078CFC(uint64_t a1)
{
  v2 = sub_1D5CB861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6078D38(uint64_t a1)
{
  v2 = sub_1D5CB861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6078D74()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6078DD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6078E24@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D6078F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1D6078FD8(uint64_t a1)
{
  v2 = sub_1D6079C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6079014(uint64_t a1)
{
  v2 = sub_1D6079C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6079050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D5CB85B4(0, &qword_1EDF19C50, sub_1D6079C70, &type metadata for FormatItemKind.Object.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6079C70();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D6079200(void *a1)
{
  sub_1D5CB85B4(0, &qword_1EDF027E0, sub_1D6079C70, &type metadata for FormatItemKind.Object.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6079C70();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FormatItemKind.hashValue.getter()
{
  sub_1D7264A0C();
  FormatItemKind.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t sub_1D60793B8()
{
  sub_1D7264A0C();
  FormatItemKind.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t FormatItemKind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x656C6369747261;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x6575737369;
      break;
    case 2uLL:
      v3 = 0x6465626D45626577;
      break;
    case 3uLL:
      v3 = 0x6172546F69647561;
      break;
    case 4uLL:
      v3 = 6775156;
      break;
    case 5uLL:
      v3 = 0x65726F6373;
      break;
    case 6uLL:
      v3 = 0x676E69646E617473;
      break;
    case 7uLL:
      v3 = 0x74656B63617262;
      break;
    case 8uLL:
      v3 = 0x65726F6353786F62;
      break;
    case 9uLL:
      v3 = 0x726F6353656E696CLL;
      break;
    case 0xAuLL:
      v3 = 0x65527972756A6E69;
      break;
    case 0xBuLL:
      v3 = 0x6579616C5079656BLL;
      break;
    case 0xCuLL:
      v3 = 0x656C7A7A7570;
      break;
    case 0xDuLL:
      v3 = 0x7954656C7A7A7570;
      break;
    case 0xEuLL:
      v3 = 0x7453656C7A7A7570;
      break;
    case 0xFuLL:
      v3 = 0x657069636572;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1D5CBA110(v1, v2);
  return v3;
}

uint64_t static FormatItemKind.< infix(_:_:)()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D60796B4()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6079758()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6079810()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D60798C8()
{
  v0 = FormatItemKind.description.getter();
  v2 = v1;
  if (v0 == FormatItemKind.description.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6079974(uint64_t a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D60799D0()
{
  result = qword_1EDF11B90;
  if (!qword_1EDF11B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B90);
  }

  return result;
}

unint64_t sub_1D6079A24()
{
  result = qword_1EDF11B88;
  if (!qword_1EDF11B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B88);
  }

  return result;
}

unint64_t sub_1D6079A78(uint64_t a1)
{
  result = sub_1D6079AA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6079AA0()
{
  result = qword_1EC883048;
  if (!qword_1EC883048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883048);
  }

  return result;
}

unint64_t sub_1D6079AF4(void *a1)
{
  a1[1] = sub_1D5B4CCC0();
  a1[2] = sub_1D5B4C410();
  result = sub_1D5B4CB84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6079B70()
{
  result = qword_1EC883050;
  if (!qword_1EC883050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883050);
  }

  return result;
}

unint64_t sub_1D6079BC8()
{
  result = qword_1EC883058;
  if (!qword_1EC883058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883058);
  }

  return result;
}

unint64_t sub_1D6079C1C()
{
  result = qword_1EDF326C0;
  if (!qword_1EDF326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326C0);
  }

  return result;
}

unint64_t sub_1D6079C70()
{
  result = qword_1EDF326B0;
  if (!qword_1EDF326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326B0);
  }

  return result;
}

unint64_t sub_1D6079CD8()
{
  result = qword_1EC883060;
  if (!qword_1EC883060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883060);
  }

  return result;
}

unint64_t sub_1D6079D30()
{
  result = qword_1EDF326A0;
  if (!qword_1EDF326A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326A0);
  }

  return result;
}

unint64_t sub_1D6079D88()
{
  result = qword_1EDF326A8;
  if (!qword_1EDF326A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326A8);
  }

  return result;
}

id SharingArticleTextActivityItemSource.__allocating_init(headline:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D6079EEC(v4);
  v6 = &v3[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
  *v6 = v5;
  *(v6 + 1) = v7;
  v10.receiver = v3;
  v10.super_class = v1;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id SharingArticleTextActivityItemSource.init(headline:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D6079EEC(v4);
  v6 = &v1[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
  *v6 = v5;
  *(v6 + 1) = v7;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id sub_1D6079EEC(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D726207C();

    v5 = [a1 sourceName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D726207C();
      v9 = v8;

      MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
      MEMORY[0x1DA6F9910](v7, v9);

      return v4;
    }
  }

  result = [a1 title];
  if (result || (result = [a1 sourceName]) != 0)
  {
    v11 = result;
    v12 = sub_1D726207C();

    return v12;
  }

  return result;
}

uint64_t SharingArticleTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

void SharingArticleTextActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

LABEL_17:
    v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
    v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v24;
    *(a2 + 8) = v23;

    return;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      v13 = sub_1D726207C();
      v15 = v14;
      if (v13 == sub_1D726207C() && v15 == v16)
      {
        goto LABEL_14;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
LABEL_15:
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return;
      }

      v19 = sub_1D726207C();
      v21 = v20;
      if (v19 == sub_1D726207C() && v21 == v22)
      {
LABEL_14:

        goto LABEL_15;
      }

      v47 = sub_1D72646CC();

      if (v47)
      {
        goto LABEL_15;
      }

      v48 = sub_1D726207C();
      v50 = v49;
      if (v48 == sub_1D726207C() && v50 == v51)
      {
        goto LABEL_39;
      }

      v52 = sub_1D72646CC();

      if (v52)
      {
        goto LABEL_44;
      }

      v53 = sub_1D726207C();
      v55 = v54;
      if (v53 == sub_1D726207C() && v55 == v56)
      {
LABEL_39:

LABEL_44:
        *(a2 + 24) = MEMORY[0x1E69E6158];
        *a2 = 0;
        *(a2 + 8) = 0xE000000000000000;
        return;
      }

      v57 = sub_1D72646CC();

      if (v57)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }
  }

  v25 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v59 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle);
  v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle + 8);
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27 == 0xE000000000000000;
  }

  if (!v28 && (sub_1D72646CC() & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v25;
    sub_1D6D76D20(v26, v27, 0x2D656C6369747261, 0xED0000656C746974, isUniquelyReferenced_nonNull_native);
    v59 = v25;
  }

  v30 = OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline;
  v31 = [*(v2 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline) shortExcerpt];
  if (v31)
  {

    v32 = [*(v2 + v30) shortExcerpt];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1D726207C();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    sub_1D6D60518(v34, v36, 0x2D656C6369747261, 0xEF7972616D6D7573);
  }

  v37 = objc_opt_self();
  v38 = sub_1D7261D2C();

  v58 = 0;
  v39 = [v37 archivedDataWithRootObject:v38 requiringSecureCoding:1 error:&v58];

  v40 = v58;
  if (v39)
  {
    v41 = sub_1D725867C();
    v43 = v42;

    v44 = MEMORY[0x1E6969080];
  }

  else
  {
    v45 = v40;
    v46 = sub_1D725829C();

    swift_willThrow();
    v41 = 0;
    v43 = 0;
    v44 = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v41;
  *(a2 + 8) = v43;
  *(a2 + 24) = v44;
}

Swift::String __swiftcall SharingArticleTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SharingArticleTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D607A9A8(uint64_t a1)
{
  v2 = 0xD00000000000001DLL;
  v3 = sub_1D726203C();
  v4 = v3;
  if (a1)
  {
    v5 = sub_1D726207C();
    v7 = v6;
    if (v5 == sub_1D726207C() && v7 == v8)
    {

      return v2;
    }

    v10 = sub_1D72646CC();

    if (v10)
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

id _s8NewsFeed36SharingArticleTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline;
  result = [*(v0 + OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline) sourceName];
  if (result)
  {
    v3 = result;
    sub_1D726207C();

    v4 = sub_1D726213C();

    v5 = [*(v0 + v1) title];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D726207C();
      v9 = v8;

      MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v7, v9);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

__n128 sub_1D607AC1C(char **a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6;
  v8 = *a1;
  sub_1D5F58038(v3, v4, v5, v6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D5D095A0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D5D095A0((v9 > 1), v10 + 1, 1, v8);
  }

  *&v18 = v3;
  *(&v18 + 1) = v4;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  *&v20 = 0;
  WORD4(v20) = 0;
  BYTE10(v20) = 1;
  sub_1D5FD8134(&v18);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[128 * v10];
  v12 = v18;
  v13 = v19;
  v14 = v21;
  *(v11 + 4) = v20;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  result = v22;
  v16 = v23;
  v17 = v24[0];
  *(v11 + 137) = *(v24 + 9);
  *(v11 + 7) = v16;
  *(v11 + 8) = v17;
  *(v11 + 6) = result;
  *a1 = v8;
  return result;
}

uint64_t sub_1D607AD58(uint64_t result)
{
  if (*(v1 + 24) >= 3u)
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 10;
    sub_1D5F58038(v5, v4, v3, 3);
    result = sub_1D703E0C8(v8, &v9);
    if (!v2)
    {
      v6 = result;
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }

  return result;
}

uint64_t _s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v37[0] = *a1;
  v37[1] = v3;
  v37[2] = v5;
  v38 = v6;
  v39 = v8;
  v40 = v7;
  v41 = v9;
  v42 = v10;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v10 == 2)
      {
        v33 = v4;
        v34 = v3;
        v35 = v5;
        v36 = BYTE2(v5);
        v29 = v8;
        v30 = v7;
        v32 = BYTE2(v9);
        v31 = v9;
        v11 = _s8NewsFeed18FormatGroupBindingV4FontO2eeoiySbAE_AEtFZ_0(&v33, &v29, a3);
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    if (v10 != 3)
    {
      v18 = v9;
      v19 = v10;

      LOBYTE(v10) = v19;
      v9 = v18;
      goto LABEL_21;
    }

    if (v4 != v8 || v3 != v7)
    {
      v14 = v9;
      v15 = sub_1D72646CC();
      v9 = v14;
      if ((v15 & 1) == 0)
      {
        sub_1D5F58038(v8, v7, v14, 3);
        v20 = v4;
        v21 = v3;
        v9 = v5;
        LOBYTE(v10) = 3;
        goto LABEL_22;
      }
    }

    v16 = v9;
    sub_1D5F58038(v8, v7, v9, 3);
    sub_1D5F58038(v4, v3, v5, 3);
    sub_1D5F58038(v8, v7, v16, 3);
    sub_1D5F58038(v4, v3, v5, 3);
    v17 = sub_1D6341C50(v5, v16);
    sub_1D5D281E8(v37, sub_1D607B85C);
    sub_1D5F57FEC(v8, v7, v16, 3);
    sub_1D5F57FEC(v4, v3, v5, 3);
    if ((v17 & 1) == 0)
    {
LABEL_24:
      v12 = 0;
      return v12 & 1;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    a3.n128_u64[0] = v4;
    if (*&v4 != *&v8)
    {
LABEL_23:
      sub_1D5D281E8(v37, sub_1D607B85C);
      goto LABEL_24;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      v13 = v9 & 0xFF00;
      sub_1D5D281E8(v37, sub_1D607B85C);
      if (v13 != 3072)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((v9 & 0xFF00) == 0xC00)
      {
        goto LABEL_23;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9)
        {
          goto LABEL_23;
        }

        a3.n128_u64[0] = v3;
        if (*&v3 != *&v7)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v33) = BYTE1(v5);
      LOBYTE(v29) = BYTE1(v9);
      v23 = FormatFontScalingStyle.rawValue.getter(a3);
      v25 = v24;
      if (v23 == FormatFontScalingStyle.rawValue.getter(v26) && v25 == v27)
      {

        sub_1D5D281E8(v37, sub_1D607B85C);
        v12 = 1;
        return v12 & 1;
      }

      v28 = sub_1D72646CC();

      sub_1D5D281E8(v37, sub_1D607B85C);
      if ((v28 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v12 = 1;
    return v12 & 1;
  }

  if (v10)
  {
LABEL_21:
    v20 = v8;
    v21 = v7;
LABEL_22:
    sub_1D5F58038(v20, v21, v9, v10);
    goto LABEL_23;
  }

  v33 = v4;
  v34 = v3;
  v35 = v5;
  v36 = BYTE2(v5);
  v29 = v8;
  v30 = v7;
  v31 = v9;
  v32 = BYTE2(v9);
  v11 = _s8NewsFeed16FormatTagBindingV4FontO2eeoiySbAE_AEtFZ_0(&v33, &v29, a3);
LABEL_8:
  v12 = v11;
  sub_1D5D281E8(v37, sub_1D607B85C);
  return v12 & 1;
}

void sub_1D607B228(uint64_t a1)
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
  if (*(v1 + 24) >= 3u)
  {
    v34 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v35[0] = *v1;
    v35[1] = v19;
    v35[2] = v18;
    v36 = 10;

    v21 = sub_1D703E0C8(v35, &v36);
    if (!v3)
    {
      v33 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v34 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D281E8(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
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
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
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
      sub_1D5D281E8(v25, v24);
    }
  }
}

unint64_t sub_1D607B5F8(uint64_t a1)
{
  result = sub_1D607B620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607B620()
{
  result = qword_1EC883080;
  if (!qword_1EC883080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883080);
  }

  return result;
}

unint64_t sub_1D607B674(void *a1)
{
  a1[1] = sub_1D607B6AC();
  a1[2] = sub_1D607B700();
  result = sub_1D607B754();
  a1[3] = result;
  return result;
}

unint64_t sub_1D607B6AC()
{
  result = qword_1EDF10D08;
  if (!qword_1EDF10D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D08);
  }

  return result;
}

unint64_t sub_1D607B700()
{
  result = qword_1EDF10D10;
  if (!qword_1EDF10D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D10);
  }

  return result;
}

unint64_t sub_1D607B754()
{
  result = qword_1EC883088;
  if (!qword_1EC883088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883088);
  }

  return result;
}

uint64_t sub_1D607B7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D607B7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1D607B85C()
{
  if (!qword_1EC883090)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883090);
    }
  }
}

NewsFeed::FormatPatternAnchor_optional __swiftcall FormatPatternAnchor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatPatternAnchor.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 6)
  {
    v3 = 0x69526D6F74746F62;
  }

  v4 = 0x7466654C706F74;
  if (v1 != 4)
  {
    v4 = 0x7468676952706F74;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1952867692;
  if (v1 != 2)
  {
    v5 = 0x7468676972;
  }

  if (*v0)
  {
    v2 = 0x6D6F74746F62;
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

unint64_t sub_1D607BA14()
{
  result = qword_1EDF0FAF0;
  if (!qword_1EDF0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAF0);
  }

  return result;
}

void sub_1D607BA90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xEA00000000007466;
  v6 = 0x654C6D6F74746F62;
  if (v2 != 6)
  {
    v6 = 0x69526D6F74746F62;
    v5 = 0xEB00000000746867;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7466654C706F74;
  if (v2 != 4)
  {
    v8 = 0x7468676952706F74;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1952867692;
  if (v2 != 2)
  {
    v10 = 0x7468676972;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D6F74746F62;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_1D607BB84(uint64_t a1)
{
  *(a1 + 8) = sub_1D607BBB4();
  result = sub_1D607BC08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D607BBB4()
{
  result = qword_1EC883098;
  if (!qword_1EC883098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883098);
  }

  return result;
}

unint64_t sub_1D607BC08()
{
  result = qword_1EDF0FAE8;
  if (!qword_1EDF0FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAE8);
  }

  return result;
}

unint64_t sub_1D607BC5C(uint64_t a1)
{
  result = sub_1D607BC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607BC84()
{
  result = qword_1EDF0FAD8;
  if (!qword_1EDF0FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAD8);
  }

  return result;
}

unint64_t sub_1D607BCD8(void *a1)
{
  a1[1] = sub_1D607BD10();
  a1[2] = sub_1D607BD64();
  result = sub_1D607BA14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D607BD10()
{
  result = qword_1EDF0FAE0;
  if (!qword_1EDF0FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAE0);
  }

  return result;
}

unint64_t sub_1D607BD64()
{
  result = qword_1EDF0FAF8;
  if (!qword_1EDF0FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FAF8);
  }

  return result;
}

uint64_t FormatFlexBoxNodeLayout.display.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607BE90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

uint64_t FormatFlexBoxNodeLayout.display.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t FormatFlexBoxNodeLayout.direction.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607BFF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
}

uint64_t FormatFlexBoxNodeLayout.direction.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t FormatFlexBoxNodeLayout.wrap.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607C150(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
}

uint64_t FormatFlexBoxNodeLayout.wrap.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t FormatFlexBoxNodeLayout.justifyContent.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607C2B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
}

uint64_t FormatFlexBoxNodeLayout.justifyContent.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
}

uint64_t FormatFlexBoxNodeLayout.alignContent.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607C410(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 80) = v2;
  *(v4 + 88) = v3;
}

uint64_t FormatFlexBoxNodeLayout.alignContent.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
}

uint64_t FormatFlexBoxNodeLayout.alignItems.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3;
}

uint64_t sub_1D607C570(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;
}

uint64_t FormatFlexBoxNodeLayout.alignItems.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
}

uint64_t FormatFlexBoxNodeLayout.rowGap.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1D607C6D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1D607C724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 112) = v2;
  *(v4 + 120) = v3;
}

uint64_t FormatFlexBoxNodeLayout.rowGap.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 112) = *a1;
}

uint64_t FormatFlexBoxNodeLayout.columnGap.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1D607C898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1D607C8EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 128) = v2;
  *(v4 + 136) = v3;
}

uint64_t FormatFlexBoxNodeLayout.columnGap.setter(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 128) = *a1;
}

uint64_t FormatFlexBoxNodeLayout.integral.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_1D5E04CC4(v3);
}

uint64_t sub_1D607CA70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  v6 = *(v3 + 160);
  v7 = *(v3 + 168);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1D5E04CC4(v4);
}

uint64_t sub_1D607CAD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 144);
  v8 = *(v6 + 152);
  v9 = *(v6 + 160);
  sub_1D5E04CC4(v2);
  *(v6 + 144) = v2;
  *(v6 + 152) = v3;
  *(v6 + 160) = v4;
  *(v6 + 168) = v5;

  sub_1D5D2F2C4(v7, v8, v9);
}

uint64_t FormatFlexBoxNodeLayout.integral.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  swift_beginAccess();
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 168) = v5;
  sub_1D5D2F2C4(v6, v7, v8);
}

uint64_t FormatFlexBoxNodeLayout.__allocating_init(display:direction:wrap:justifyContent:alignContent:alignItems:rowGap:columnGap:integral:)(char *a1, char *a2, char *a3, char *a4, char *a5, char *a6, _OWORD *a7, _OWORD *a8, uint64_t *a9)
{
  v15 = swift_allocObject();
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *a2;
  v19 = *(a2 + 1);
  v20 = *a3;
  v21 = *(a3 + 1);
  v28 = v20;
  v29 = *a4;
  v22 = *(a4 + 1);
  v23 = *a5;
  v24 = *(a5 + 1);
  v30 = v23;
  v31 = *a6;
  v25 = *(a6 + 1);
  v33 = a9[1];
  v34 = *a9;
  v32 = *(a9 + 16);
  v26 = a9[3];
  swift_beginAccess();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  swift_beginAccess();
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  swift_beginAccess();
  *(v15 + 48) = v28;
  *(v15 + 56) = v21;
  swift_beginAccess();
  *(v15 + 64) = v29;
  *(v15 + 72) = v22;
  swift_beginAccess();
  *(v15 + 80) = v30;
  *(v15 + 88) = v24;
  swift_beginAccess();
  *(v15 + 96) = v31;
  *(v15 + 104) = v25;
  swift_beginAccess();
  *(v15 + 112) = *a7;
  swift_beginAccess();
  *(v15 + 128) = *a8;
  swift_beginAccess();
  *(v15 + 144) = v34;
  *(v15 + 152) = v33;
  *(v15 + 160) = v32;
  *(v15 + 168) = v26;
  return v15;
}

uint64_t FormatFlexBoxNodeLayout.init(display:direction:wrap:justifyContent:alignContent:alignItems:rowGap:columnGap:integral:)(char *a1, char *a2, char *a3, char *a4, char *a5, char *a6, _OWORD *a7, _OWORD *a8, uint64_t *a9)
{
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *a4;
  v17 = *(a4 + 1);
  v18 = *a5;
  v22 = *a6;
  v20 = *(a5 + 1);
  v21 = *(a6 + 1);
  v25 = a9[1];
  v26 = *a9;
  v24 = *(a9 + 16);
  v23 = a9[3];
  swift_beginAccess();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  swift_beginAccess();
  *(v9 + 32) = v12;
  *(v9 + 40) = v13;
  swift_beginAccess();
  *(v9 + 48) = v14;
  *(v9 + 56) = v15;
  swift_beginAccess();
  *(v9 + 64) = v16;
  *(v9 + 72) = v17;
  swift_beginAccess();
  *(v9 + 80) = v18;
  *(v9 + 88) = v20;
  swift_beginAccess();
  *(v9 + 96) = v22;
  *(v9 + 104) = v21;
  swift_beginAccess();
  *(v9 + 112) = *a7;
  swift_beginAccess();
  *(v9 + 128) = *a8;
  swift_beginAccess();
  *(v9 + 144) = v26;
  *(v9 + 152) = v25;
  *(v9 + 160) = v24;
  *(v9 + 168) = v23;
  return v9;
}

uint64_t sub_1D607CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v112 = a1;
  v111 = sub_1D725A12C();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v5);
  v107 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v108 = &v91 - v9;
  v10 = sub_1D725A26C();
  v105 = *(v10 - 8);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v103 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v91 - v15;
  v16 = sub_1D725A1AC();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v99 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = &v91 - v21;
  v22 = sub_1D7259B9C();
  v97 = *(v22 - 8);
  v98 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v95 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v96 = &v91 - v27;
  v94 = sub_1D725A0BC();
  v28 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v29);
  v92 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v93 = &v91 - v33;
  v34 = sub_1D7259F8C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v91 - v41;
  sub_1D7259DEC();
  swift_beginAccess();
  v43 = *(v3 + 16);
  v44 = *(v3 + 24);

  sub_1D5F9F5B4(v43, v44, v127);

  v45 = MEMORY[0x1E69D7190];
  if (!v127[0])
  {
    v45 = MEMORY[0x1E69D7188];
  }

  (*(v35 + 104))(v38, *v45, v34);
  (*(v35 + 32))(v42, v38, v34);
  sub_1D7259DBC();
  swift_beginAccess();
  v46 = *(v3 + 40);
  v47 = *(v3 + 32);

  v48 = v112;
  sub_1D5FBB060(v126, v112, v47, v46);

  v49 = v92;
  v50 = v94;
  (*(v28 + 104))(v92, **(&unk_1E84CDBF0 + SLOBYTE(v126[0])), v94);
  (*(v28 + 32))(v93, v49, v50);
  sub_1D7259DDC();
  swift_beginAccess();
  v51 = *(v3 + 56);
  v52 = *(v3 + 48);

  sub_1D5F9F37C(v52, v51, v125);

  v54 = v97;
  v53 = v98;
  v55 = v95;
  (*(v97 + 104))(v95, **(&unk_1E84CDC68 + v125[0]), v98);
  (*(v54 + 32))(v96, v55, v53);
  sub_1D7259D9C();
  swift_beginAccess();
  v56 = *(v3 + 88);
  v57 = *(v3 + 80);

  sub_1D5F9F364(v57, v56, v124);

  v59 = v101;
  v58 = v102;
  v60 = v99;
  (*(v101 + 104))(v99, **(&unk_1E84CDC10 + v124[0]), v102);
  (*(v59 + 32))(v100, v60, v58);
  sub_1D7259D6C();
  swift_beginAccess();
  v61 = *(v3 + 72);
  v62 = *(v3 + 64);

  sub_1D5F9F34C(v62, v61, v123);

  v64 = v105;
  v63 = v106;
  v65 = v103;
  (*(v105 + 104))(v103, **(&unk_1E84CDC80 + v123[0]), v106);
  (*(v64 + 32))(v104, v65, v63);
  sub_1D7259D7C();
  swift_beginAccess();
  v66 = *(v3 + 104);
  v67 = *(v3 + 96);

  sub_1D5FBB060(v122, v48, v67, v66);

  v68 = v109;
  v69 = v107;
  v70 = v111;
  (*(v109 + 104))(v107, **(&unk_1E84CDC48 + SLOBYTE(v122[0])), v111);
  (*(v68 + 32))(v108, v69, v70);
  v111 = a2;
  sub_1D7259D5C();
  swift_beginAccess();
  v71 = *(v3 + 112);
  v72 = *(v3 + 120);

  sub_1D5FBB05C(v121, v48, v71, v72);

  v73 = v121[0];
  v117[0] = v48;
  v74 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v75 = v74();
  v76 = v110;
  sub_1D5E02AFC(v75, v73);

  if (v76)
  {
    v82 = sub_1D7259DFC();
    return (*(*(v82 - 8) + 8))(v111, v82);
  }

  else
  {
    sub_1D7259DAC();
    swift_beginAccess();
    v77 = *(v3 + 128);
    v78 = *(v3 + 136);

    v79 = v112;
    sub_1D5FBB05C(v117, v112, v77, v78);

    v80 = v117[0];
    v118 = v79;
    v81 = v74();
    sub_1D5E02AFC(v81, v80);

    sub_1D7259DCC();
    swift_beginAccess();
    v83 = *(v3 + 144);
    v84 = *(v3 + 152);
    v85 = *(v3 + 160);
    v86 = *(v3 + 168);
    sub_1D5E04CC4(v83);

    sub_1D5F9F0B4(v83, v84, v85, v86, &v118);
    sub_1D5D2F2C4(v83, v84, v85);

    v87 = v118;
    v88 = v119;
    v89 = v120;
    v114 = v118;
    v115 = v119;
    v116 = v120;
    sub_1D725A7EC();
    FormatBoolean.value(contextLayoutOptions:)(v113);

    sub_1D5D2F2C4(v87, v88, v89);
    return sub_1D7259D8C();
  }
}

uint64_t FormatFlexBoxNodeLayout.deinit()
{

  sub_1D5D2F2C4(*(v0 + 144), *(v0 + 152), *(v0 + 160));

  return v0;
}

uint64_t FormatFlexBoxNodeLayout.__deallocating_deinit()
{
  FormatFlexBoxNodeLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D607DB74(uint64_t a1)
{
  result = sub_1D607DC68(&qword_1EC8830A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D607DBDC(void *a1)
{
  a1[1] = sub_1D607DC68(&qword_1EDF27568);
  a1[2] = sub_1D607DC68(&qword_1EDF0D508);
  result = sub_1D607DC68(&qword_1EC8830A8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D607DC68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFlexBoxNodeLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D607DCA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6664E38(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PuzzleHistoryInfo.asDictionary.getter()
{
  v1 = v0;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1E69E7CC8];
  sub_1D5B76E3C(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    result = sub_1D725889C();
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v27 = MEMORY[0x1E69E6530];
        *&v26 = v13;
        sub_1D5B7C390(&v26, v25);
        v14 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v14;
        sub_1D5BAFB24(v25, 0xD000000000000012, 0x80000001D73C7FA0, isUniquelyReferenced_nonNull_native);
        (*(v7 + 8))(v10, v6);
        v11 = v24;
        v28 = v24;
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v5);
  v11 = MEMORY[0x1E69E7CC8];
LABEL_7:
  v16 = type metadata accessor for PuzzleHistoryInfo();
  v17 = v1 + *(v16 + 20);
  if (*(v17 + 8))
  {
    sub_1D607E0F0(0xD000000000000011, 0x80000001D73C7F80, &v26);
    sub_1D5EBD03C(&v26);
  }

  else
  {
    v18 = *v17;
    v27 = MEMORY[0x1E69E6530];
    *&v26 = v18;
    sub_1D5B7C390(&v26, v25);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11;
    sub_1D5BAFB24(v25, 0xD000000000000011, 0x80000001D73C7F80, v19);
    v28 = v24;
  }

  v20 = v1 + *(v16 + 24);
  if (*(v20 + 8))
  {
    sub_1D607E0F0(0x726F635374736562, 0xE900000000000065, &v26);
    sub_1D5EBD03C(&v26);
    return v28;
  }

  else
  {
    v21 = *v20;
    v27 = MEMORY[0x1E69E6530];
    *&v26 = v21;
    sub_1D5B7C390(&v26, v25);
    v22 = v28;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v22;
    sub_1D5BAFB24(v25, 0x726F635374736562, 0xE900000000000065, v23);
    return v24;
  }
}

uint64_t type metadata accessor for PuzzleHistoryInfo()
{
  result = qword_1EC8830B0;
  if (!qword_1EC8830B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D607E0F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D5C06BE0();
      v10 = v12;
    }

    sub_1D5B7C390((*(v10 + 56) + 32 * v8), a3);
    sub_1D67135D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607E1D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D7DE64();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1D6713938(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D607E284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D7E384();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1D725891C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1D6713AE8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1D725891C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D607E49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(unint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1D5B69D90(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1D607F0BC(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1D607E620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D801A8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D6713788(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1D607E6CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D80514();
      v10 = v16;
    }

    v11 = *(v10 + 56) + 104 * v8;
    v12 = *(v11 + 80);
    *(a3 + 64) = *(v11 + 64);
    *(a3 + 80) = v12;
    *(a3 + 96) = *(v11 + 96);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    v14 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v14;
    sub_1D6713DE8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 96) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D607E840@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D6D62B40(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D8285C();
      v9 = v11;
    }

    sub_1D5F42574(*(v9 + 48) + 40 * v7);
    sub_1D5B7C390((*(v9 + 56) + 32 * v7), a2);
    sub_1D67147F0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607E8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D5B69D90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D82E2C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D6716D80(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D607E9BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5C5E034(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D6D82FEC();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1D6714994(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_1D607EB94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    *&v16[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86324();
      v10 = *&v16[0];
    }

    memmove(a3, (*(v10 + 56) + (v8 << 7)), 0x80uLL);
    sub_1D6715300(v8, v10);
    *v4 = v10;
    nullsub_1();
  }

  else
  {
    sub_1D607F0A4(v16);
    v12 = v20;
    a3[4] = v19;
    a3[5] = v12;
    v13 = v22;
    a3[6] = v21;
    a3[7] = v13;
    v14 = v16[1];
    *a3 = v16[0];
    a3[1] = v14;
    result = *&v17;
    v15 = v18;
    a3[2] = v17;
    a3[3] = v15;
  }

  return result;
}

double sub_1D607EC64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v7 = sub_1D6D63460(a1, a2, a3 & 1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86750();
      v11 = v13;
    }

    sub_1D607F09C();
    sub_1D5B7C390((*(v11 + 56) + 32 * v9), a4);
    sub_1D67154B0(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1D607ED14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D5B69D90(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D86934();
      v10 = v12;
    }

    sub_1D5B63F14((*(v10 + 56) + 40 * v8), a3);
    sub_1D67156D0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D607EE00@<D0>(uint64_t a1@<X0>, void (*a2)(unint64_t, _OWORD *)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = sub_1D5B7C598(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = sub_1D7263FCC();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_1D607EF3C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = a2();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

void sub_1D607F008()
{
  sub_1D5B5B2A0();
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF3C7C0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1D607F0A4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D607F0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D607F15C(uint64_t a1)
{
  result = sub_1D607F184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D607F184()
{
  result = qword_1EC8830C0;
  if (!qword_1EC8830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8830C0);
  }

  return result;
}

void sub_1D607F1D8()
{
  if (!qword_1EDF1B3C0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B3C0);
    }
  }
}

uint64_t sub_1D607F228(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D607F1D8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D607F294()
{
  result = qword_1EDF125C8;
  if (!qword_1EDF125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF125C8);
  }

  return result;
}

void sub_1D607F370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = v5;
  v9 = *a1;
  v10 = *(a1 + 8);
  v53 = *(a1 + 16);
  v55 = *(a1 + 24);
  v56 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *a3;
  v12 = *(a3 + 8);
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v17 = *(a3 + 32);
  v16 = *(a3 + 40);
  v18 = *(a3 + 48);
  v57 = *(a3 + 56);
  v19 = *a5;
  v20 = [*a1 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  v24.value._countAndFlagsBits = v21;
  v24.value._object = v23;
  ArticleThumbnailView.prepareForReuse(identifier:)(v24);
  v25 = v18;

  [a2 setFrame_];
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
    *&v60 = v19;
    v26 = v19;
    sub_1D6D4BBDC(a2, v18, &v60, v16);
  }

  if ((v11 & 1) == 0)
  {
    v58[0] = v9;
    goto LABEL_8;
  }

  v27 = a4;
  if (!sub_1D5E46CD0(1, a4) || UIAccessibilityIsReduceMotionEnabled())
  {
    v58[0] = v56;
LABEL_8:
    *&v60 = v13;
    *(&v60 + 1) = v12;
    v61 = v15;
    v62 = *&v14;
    v63 = v17;
    v64 = v16;
    v65 = v18;
    v66 = v57;
    v59 = v19;
    sub_1D607F8F0(v58, a2, &v60, &v59);
    return;
  }

  sub_1D5B68374(v6 + 152, &v60);
  v28 = v63;
  v51 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v62);
  v29 = [v9 identifier];
  v50 = sub_1D726207C();
  v52 = v25;
  v31 = v30;

  v32 = type metadata accessor for LayeredMediaLoader();
  v33 = swift_allocObject();
  v34 = type metadata accessor for LayeredMediaParser();
  v35 = swift_allocObject();
  v35[2] = v50;
  v35[3] = v31;
  v35[4] = v53;
  v35[5] = v55;
  v33[5] = v34;
  v33[6] = &protocol witness table for LayeredMediaParser;
  v33[2] = v35;
  v58[3] = v32;
  v58[4] = &protocol witness table for LayeredMediaLoader;
  v58[0] = v33;
  if (sub_1D5E46CD0(0, v27))
  {
    v36 = &unk_1F5111360;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = v28;
  v38 = *(v28 + 8);

  v38(v58, v36, v51, v37);

  __swift_destroy_boxed_opaque_existential_1(v58);
  v39 = __swift_destroy_boxed_opaque_existential_1(&v60);
  MEMORY[0x1EEE9AC00](v39, v40);
  type metadata accessor for LayeredMediaView(0);
  sub_1D725BDCC();
  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = v9;
  *(v41 + 32) = v10;
  *(v41 + 40) = v53;
  *(v41 + 48) = v55;
  *(v41 + 56) = v19;
  *(v41 + 64) = v6;
  *(v41 + 72) = v13;
  *(v41 + 80) = v12;
  *(v41 + 88) = v15;
  *(v41 + 96) = v14;
  *(v41 + 104) = v17;
  *(v41 + 112) = v16;
  *(v41 + 120) = v52;
  *(v41 + 128) = v57;
  v54 = v19;
  v42 = a2;
  swift_unknownObjectRetain();

  v43 = sub_1D725B92C();
  sub_1D725BA7C();

  v44 = sub_1D725B92C();
  sub_1D725BACC();

  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v45 = sub_1D726308C();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v56;
  *(v47 + 32) = v42;
  *(v47 + 40) = v13;
  *(v47 + 48) = v12;
  *(v47 + 56) = v15;
  *(v47 + 64) = v14;
  *(v47 + 72) = v17;
  *(v47 + 80) = v16;
  *(v47 + 88) = v52;
  *(v47 + 96) = v57;
  *(v47 + 104) = v19;
  v48 = v54;
  v49 = v42;
  swift_unknownObjectRetain();
  sub_1D725BB6C();
}

void sub_1D607F8F0(void **a1, char *a2, _OWORD *a3, void **a4)
{
  sub_1D6081298();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v84, v13);
  v15 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v77 - v18;
  v20 = *a1;
  v21 = a3[1];
  v92[0] = *a3;
  v92[1] = v21;
  v93[0] = a3[2];
  *(v93 + 9) = *(a3 + 41);
  v22 = *a4;
  v23 = [swift_unknownObjectRetain() identifier];
  v24 = sub_1D726207C();
  v26 = v25;

  v27 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8];
  if (v27)
  {
    if (v24 == *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier] && v27 == v26)
    {

      goto LABEL_13;
    }

    v29 = sub_1D72646CC();

    if (v29)
    {
LABEL_13:
      v79 = v15;
      v80 = v12;
      v30 = v4;
      v81 = v19;
      v83 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView];
      sub_1D725FBBC();
      v82 = a2;
      v31 = *&a2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
      v32 = [v31 subviews];
      sub_1D5B5A498(0, &qword_1EDF1A710);
      v33 = sub_1D726267C();

      if (v33 >> 62)
      {
        v34 = sub_1D7263BFC();
        if (!v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_22;
        }
      }

      if (v34 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v34; ++i)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1DA6FB460](i, v33);
        }

        else
        {
          v36 = *(v33 + 8 * i + 32);
        }

        v37 = v36;
        [v36 removeFromSuperview];
      }

LABEL_22:

      [v31 setHidden_];
      v38 = v83;
      [v83 setHidden_];
      v39 = v82;
      v40 = *&v82[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView];
      *&v82[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView] = 0;

      if (v22)
      {
        v41 = __swift_project_boxed_opaque_existential_1(v30 + 7, v30[10]);
        v42 = *(*v41 + 16);
        v43 = *(*v41 + 24);
        v44 = *(*v41 + 32);
        v78 = *(*v41 + 40);
        v45 = swift_allocObject();
        v45[2] = v22;
        v45[3] = v42;
        v45[4] = v43;
        v46 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v87 = sub_1D60814F4;
        v88 = v45;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v86 = sub_1D6E0CD34;
        *(&v86 + 1) = &block_descriptor_44;
        v47 = _Block_copy(&aBlock);
        v48 = v22;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v78;
        v53 = v49;
        v54 = v50;
        v55 = [v46 initWithDynamicProvider_];
        _Block_release(v47);

        [v38 setBackgroundColor_];

        v39 = v82;
      }

      v56 = [objc_opt_self() mainScreen];
      [v56 scale];
      v58 = v57;

      v59 = [v39 traitCollection];
      v60 = *(v84 + 24);
      v61 = sub_1D725CB5C();
      v62 = *(*(v61 - 8) + 56);
      v63 = v81 + v60;
      v64 = v81;
      v62(v63, 1, 1, v61);
      *v64 = v58;
      v64[1] = v59;
      v65 = v79;
      sub_1D60812F0(v64, v79);
      v66 = v80;
      v62(v80, 1, 1, v61);
      v87 = 0;
      v86 = 0u;
      aBlock = 0u;
      v67 = sub_1D6EB4CF8(v20, v92, v65, v66, &aBlock);
      v68 = v67;
      if (v67)
      {
        v69 = type metadata accessor for ThumbnailProcessorRequest();
        v67 = sub_1D60814A4(qword_1EDF23E18, type metadata accessor for ThumbnailProcessorRequest);
      }

      else
      {
        v69 = 0;
        *&v86 = 0;
        *(&aBlock + 1) = 0;
      }

      *&aBlock = v68;
      *(&v86 + 1) = v69;
      v87 = v67;
      sub_1D6081354(&aBlock, &v89, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
      if (v90)
      {
        sub_1D5B63F14(&v89, v91);
        __swift_project_boxed_opaque_existential_1(v30 + 12, v30[15]);
        v70 = sub_1D725D0BC();
        if (!v70)
        {
          sub_1D725FBBC();
          v72 = [objc_opt_self() areAnimationsEnabled];
          v73 = swift_allocObject();
          swift_weakInit();
          v74 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v75 = swift_allocObject();
          *(v75 + 16) = v74;
          *(v75 + 24) = v73;
          *(v75 + 32) = 0;
          *(v75 + 40) = 0;
          *(v75 + 48) = v72;

          sub_1D725FB6C();

          __swift_destroy_boxed_opaque_existential_1(v91);
          sub_1D6081448(v64);

LABEL_33:
          sub_1D60813D8(&aBlock, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          v76 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
          if (*(v39 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion))
          {
            sub_1D725CF4C();
            sub_1D725CF3C();
            sub_1D60814A4(&qword_1EC8830C8, type metadata accessor for ArticleThumbnailView);
            sub_1D725CF2C();

            *(v39 + v76) = 0;
          }

          return;
        }

        v71 = v70;
        sub_1D725FBBC();

        __swift_destroy_boxed_opaque_existential_1(v91);
      }

      else
      {
        sub_1D60813D8(&v89, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        sub_1D725FBBC();
      }

      sub_1D6081448(v64);
      goto LABEL_33;
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D60801B8(uint64_t a1, uint64_t a2, void *a3, char *a4, _OWORD *a5, void *a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = a3;
    v11 = a5[1];
    v13[0] = *a5;
    v13[1] = v11;
    v14[0] = a5[2];
    *(v14 + 9) = *(a5 + 41);
    v12 = a6;
    sub_1D607F8F0(&v15, a4, v13, &v12);
  }

  return result;
}

uint64_t sub_1D608026C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E62F8];
  sub_1D5C3973C(0, &qword_1EDF3C8E8, &type metadata for LayeredMediaLayer, MEMORY[0x1E69E62F8]);
  sub_1D725BDCC();

  v4 = sub_1D725B92C();
  sub_1D5C3973C(0, &qword_1EDF04C00, &type metadata for LayeredMediaLayerRenderable, v3);
  sub_1D725BA8C();

  v5 = sub_1D725A95C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = a2;
  *(v6 + 24) = v7;
  type metadata accessor for LayeredMediaView(0);

  v8 = sub_1D725BA8C();

  return v8;
}

uint64_t sub_1D60803E8()
{
  sub_1D5C3973C(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6080488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v17 = a11;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = [a6 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  v23 = *&a5[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8];
  if (!v23 || (v20 == *&a5[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier] ? (v24 = v23 == v22) : (v24 = 0), !v24 && (sub_1D72646CC() & 1) == 0))
  {
    v37 = a10;

    v38 = a5;
LABEL_23:

    return;
  }

  v79 = a10;

  v78 = a5;
  v25 = a5;

  v77 = a4;

  v26 = [a9 superview];
  v80 = v25;
  v27 = *&v25[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
  if (v26)
  {
    v28 = v26;
    sub_1D5B5A498(0, &qword_1EDF1A710);
    v29 = v27;
    v30 = sub_1D726370C();

    if (v30)
    {
LABEL_20:
      if (a10)
      {
        v41 = __swift_project_boxed_opaque_existential_1((v17 + 56), *(v17 + 80));
        v42 = *(*v41 + 16);
        v43 = *(*v41 + 24);
        v44 = *(*v41 + 32);
        v76 = *(*v41 + 40);
        v45 = swift_allocObject();
        v45[2] = v79;
        v45[3] = v42;
        v45[4] = v43;
        v46 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v85 = sub_1D5E46A8C;
        v86 = v45;
        aBlock = MEMORY[0x1E69E9820];
        v82 = 1107296256;
        v83 = sub_1D6E0CD34;
        v84 = &block_descriptor_18;
        v47 = _Block_copy(&aBlock);
        v48 = v79;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        v52 = v76;
        v53 = v49;
        v54 = v50;
        v55 = [v46 initWithDynamicProvider_];
        _Block_release(v47);

        [a9 setBackgroundColor_];
      }

      [a9 setClipsToBounds_];
      sub_1D726327C();
      [a9 setFrame_];
      v56 = objc_opt_self();
      v57 = [v56 mainScreen];
      [v57 nativeBounds];
      v59 = v58;
      v61 = v60;

      [v80 bounds];
      v63 = v62;
      v65 = v64;
      v66 = [v56 mainScreen];
      [v66 scale];
      v68 = v67;

      aBlock = v59;
      v82 = v61;
      v83 = v63;
      v84 = v65;
      v85 = v68;
      v69 = [a9 setAlpha_];
      MEMORY[0x1EEE9AC00](v69, v70);
      sub_1D725BDCC();
      v71 = swift_allocObject();
      v71[2] = a9;
      v71[3] = sub_1D5DF743C;
      v71[4] = v18;

      v72 = a9;
      v73 = sub_1D725B92C();
      type metadata accessor for ArticleThumbnailViewRenderer();
      sub_1D725BAAC();

      v74 = swift_allocObject();
      *(v74 + 16) = a3;
      *(v74 + 24) = v77;

      v75 = sub_1D725B92C();
      sub_1D725BACC();

      sub_1D7041968();

      a5 = v78;
      v37 = v79;
      goto LABEL_23;
    }
  }

  v31 = [v27 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v32 = sub_1D726267C();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_11;
    }

LABEL_19:

    [v27 addSubview_];
    [v27 setHidden_];
    [*&v80[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView] setHidden_];
    v39 = *&v80[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView];
    *&v80[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView] = a9;

    v40 = a9;
    v17 = a11;
    goto LABEL_20;
  }

  v33 = sub_1D7263BFC();
  if (!v33)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v33 >= 1)
  {
    for (i = 0; i != v33; ++i)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1DA6FB460](i, v32);
      }

      else
      {
        v35 = *(v32 + 8 * i + 32);
      }

      v36 = v35;
      [v35 removeFromSuperview];
    }

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1D6080B50(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = sub_1D725CFDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v11;
  v20 = *(a3 + 32);
  swift_beginAccess();
  sub_1D6081354(a1 + 16, &v16, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  if (v17)
  {
    sub_1D5B63F14(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1D725CFBC();
    v12 = sub_1D725E62C();
    (*(v7 + 8))(v10, v6);
    v13 = v12 ^ 1;
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1D60813D8(&v16, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
    v13 = 0;
  }

  return LayeredMediaViewRenderer.render(view:options:forceAsync:)(a2, v19, v13 & 1);
}

id sub_1D6080D10(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = sub_1D725CFDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1D6081354(a2 + 16, &v22, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  if (v23)
  {
    sub_1D5B63F14(&v22, aBlock);
    v24 = v7;
    __swift_project_boxed_opaque_existential_1(aBlock, v19);
    sub_1D725CFCC();
    v12 = sub_1D725E62C();
    (*(v8 + 8))(v11, v24);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if ((v12 & 1) == 0)
    {
      return [a3 setAlpha_];
    }
  }

  else
  {
    sub_1D60813D8(&v22, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v20 = sub_1D5E46C18;
  v21 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  v19 = &block_descriptor_25_0;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  [v14 animateWithDuration:v16 animations:0.15];
  _Block_release(v16);
  return a4();
}

uint64_t sub_1D6080FB0()
{
  if (qword_1EDF11618 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B678C8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
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

uint64_t sub_1D6081108()
{
  sub_1D60813D8(v0 + 16, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return swift_deallocClassInstance();
}

void sub_1D6081298()
{
  if (!qword_1EDF3B7E8)
  {
    sub_1D725CB5C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B7E8);
    }
  }
}

uint64_t sub_1D60812F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRequestOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6081354(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5B678C8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D60813D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B678C8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6081448(uint64_t a1)
{
  v2 = type metadata accessor for ImageRequestOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60814A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6081500(uint64_t a1, uint64_t a2)
{
  sub_1D6084754();
  v5 = v4;
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v57 = &v53 - v18;
  sub_1D6085198();
  v62 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v56 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v54 = a2;
  v55 = &v53 - v28;
  v64 = a1;
  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (v30 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = *(a2 + 16);
  }

  v68 = MEMORY[0x1E69E7CC0];
  result = sub_1D7263ECC();
  v60 = v30;
  v61 = v29;
  if (v31)
  {
    v33 = 0;
    v58 = v54 + 32;
    while (v29 != v33)
    {
      v34 = v59;
      result = sub_1D5BE3FA8(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v33, v59, sub_1D6084754);
      if (v30 == v33)
      {
        goto LABEL_21;
      }

      v65 = v33 + 1;
      v35 = *(v58 + 8 * v33);
      v36 = *(v62 + 48);
      sub_1D5BDA9D4(v34, v22, sub_1D6084754);
      *&v22[v36] = v35;
      v37 = *&v22[*(v5 + 48)];
      v38 = v22[*(v5 + 64)];
      sub_1D5BE3FA8(v22, v15, type metadata accessor for DebugGroupLayoutKey);
      *&v15[*(v5 + 48)] = v37;
      v15[*(v5 + 64)] = v38;
      v39 = v31;
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);

      v67 = v11[*(v5 + 64)];
      sub_1D5C3978C(0, &qword_1EC883140);
      swift_allocObject();
      sub_1D725BB1C();
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);
      v40 = *&v11[*(v5 + 48)];

      sub_1D6C76CB4(v40, v35);
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D6C6DDB0();

      v41 = sub_1D725B92C();
      sub_1D725B91C();

      v31 = v39;
      sub_1D6085238(v15, sub_1D6084754);
      sub_1D6085238(v22, sub_1D6085198);
      sub_1D7263E9C();
      sub_1D7263EDC();
      v30 = v60;
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v33 = v65;
      v42 = v39 == v65;
      v29 = v61;
      if (v42)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_10:
    if (v29 <= v30)
    {
      return v68;
    }

    v43 = v55;
    v58 = v54 + 32;
    while (v31 < v29)
    {
      result = sub_1D5BE3FA8(v64 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v31, v57, sub_1D6084754);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_23;
      }

      if (v30 == v31)
      {
        sub_1D6085238(v57, sub_1D6084754);
        return v68;
      }

      if (v31 >= v30)
      {
        goto LABEL_24;
      }

      v59 = v31 + 1;
      v44 = *(v58 + 8 * v31);
      v65 = v31;
      v45 = v62;
      v46 = *(v62 + 48);
      v47 = v56;
      sub_1D5BDA9D4(v57, v56, sub_1D6084754);
      *(v47 + v46) = v44;
      sub_1D5BDA9D4(v47, v43, sub_1D6085198);
      v48 = *(v43 + *(v5 + 48));
      LOBYTE(v46) = *(v43 + *(v5 + 64));
      v49 = *(v43 + *(v45 + 48));
      sub_1D5BE3FA8(v43, v15, type metadata accessor for DebugGroupLayoutKey);
      *&v15[*(v5 + 48)] = v48;
      v15[*(v5 + 64)] = v46;
      v29 = v61;
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);

      v66 = v11[*(v5 + 64)];
      sub_1D5C3978C(0, &qword_1EC883140);
      swift_allocObject();
      sub_1D725BB1C();
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D5BE3FA8(v15, v11, sub_1D6084754);
      v50 = *&v11[*(v5 + 48)];

      sub_1D6C76CB4(v50, v49);
      sub_1D6085238(v11, type metadata accessor for DebugGroupLayoutKey);
      sub_1D6C6DDB0();

      v51 = sub_1D725B92C();
      sub_1D725B91C();

      v52 = v65;
      sub_1D6085238(v15, sub_1D6084754);
      sub_1D6085238(v43, sub_1D6085198);
      sub_1D7263E9C();
      sub_1D7263EDC();
      v30 = v60;
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v31 = v52 + 1;
      if (v59 == v29)
      {
        return v68;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t DebugPersonalizationInspectionGroupProvider.__allocating_init(cloudContext:debugPersonalizationGroupLayoutKeyProvider:feedPersonalizer:headlineService:inventory:tagService:webEmbedDataSourceService:history:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D5B63F14(a2, v16 + 24);
  *(v16 + 64) = a3;
  type metadata accessor for DebugInspectHeadlineService();
  v17 = swift_allocObject();
  sub_1D5B63F14(a4, v17 + 16);
  *(v16 + 72) = v17;
  v18 = *(a5 + 16);
  *(v16 + 80) = *a5;
  *(v16 + 96) = v18;
  *(v16 + 112) = *(a5 + 32);
  *(v16 + 128) = *(a5 + 48);
  sub_1D5B63F14(a6, v16 + 136);
  sub_1D5B63F14(a7, v16 + 176);
  sub_1D5B63F14(a8, v16 + 216);
  return v16;
}

uint64_t DebugPersonalizationInspectionGroupProvider.init(cloudContext:debugPersonalizationGroupLayoutKeyProvider:feedPersonalizer:headlineService:inventory:tagService:webEmbedDataSourceService:history:)(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  *(v8 + 16) = a1;
  sub_1D5B63F14(a2, v8 + 24);
  *(v8 + 64) = a3;
  type metadata accessor for DebugInspectHeadlineService();
  v15 = swift_allocObject();
  sub_1D5B63F14(a4, v15 + 16);
  *(v8 + 72) = v15;
  v16 = *(a5 + 16);
  *(v8 + 80) = *a5;
  *(v8 + 96) = v16;
  *(v8 + 112) = *(a5 + 32);
  *(v8 + 128) = *(a5 + 48);
  sub_1D5B63F14(a6, v8 + 136);
  sub_1D5B63F14(a7, v8 + 176);
  sub_1D5B63F14(a8, v8 + 216);
  return v8;
}

uint64_t sub_1D6081E1C()
{
  if (*v0)
  {
    return 0x2D666F2D74736562;
  }

  else
  {
    return 0x756F792D726F66;
  }
}

uint64_t DebugPersonalizationInspectionGroupProvider.inspectionGroups()()
{
  v1[61] = v0;
  v2 = sub_1D725895C();
  v1[62] = v2;
  v1[63] = *(v2 - 8);
  v1[64] = swift_task_alloc();
  v3 = type metadata accessor for DebugGroupLayoutKey();
  v1[65] = v3;
  v1[66] = *(v3 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  sub_1D6084754();
  v1[69] = v4;
  v1[70] = *(v4 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v5 = MEMORY[0x1E69E6720];
  sub_1D60847D0(0, qword_1EDF403D0, type metadata accessor for GroupLayoutContext, MEMORY[0x1E69E6720]);
  v1[75] = swift_task_alloc();
  v6 = type metadata accessor for GroupLayoutContext();
  v1[76] = v6;
  v1[77] = *(v6 - 8);
  v1[78] = swift_task_alloc();
  sub_1D60847D0(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v5);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  sub_1D60847D0(0, &qword_1EC8830D8, sub_1D6084834, v5);
  v1[81] = swift_task_alloc();
  sub_1D6084834();
  v1[82] = v7;
  v1[83] = *(v7 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  sub_1D60847D0(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, v5);
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v1[88] = v8;
  v1[89] = *(v8 - 8);
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6082294, 0, 0);
}

uint64_t sub_1D6082294()
{
  v1 = *(v0 + 488);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = (v4 & 0xFFFFFFFFFFFFFF8);
    if (v4 >> 62)
    {
LABEL_86:
      v7 = sub_1D7263BFC();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = (*(v0 + 712) + 48);
    if (!v7)
    {
      v130 = MEMORY[0x1E69E7CC0];
      goto LABEL_34;
    }

    v8 = 0;
    v9 = *(v0 + 728);
    v130 = MEMORY[0x1E69E7CC0];
    v133 = v5 & 0xC000000000000001;
    v121 = v5;
    v123 = v7;
    v126 = v6;
    while (2)
    {
      v10 = v8;
      while (1)
      {
        if (v133)
        {
          v12 = MEMORY[0x1DA6FB460](v10, v5);
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v10 >= v6[2])
          {
            goto LABEL_82;
          }

          v12 = *(v5 + 8 * v10 + 32);

          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }
        }

        v13 = *(v0 + 704);
        v14 = *(v0 + 696);
        sub_1D60849C0(v12 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v14, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
        if ((*v137)(v14, 1, v13) == 1)
        {
          v11 = *(v0 + 696);

          sub_1D5BD55AC(v11, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
          v6 = v126;
          goto LABEL_8;
        }

        sub_1D5BDA9D4(*(v0 + 696), *(v0 + 728), type metadata accessor for GroupLayoutBindingContext);
        v15 = v9[4];
        v16 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v15);
        v17 = *((*(v16 + 16))(v15, v16) + 16);

        if (!v17)
        {
          v24 = *(v0 + 728);

          sub_1D6085238(v24, type metadata accessor for GroupLayoutBindingContext);
          v6 = v126;
          goto LABEL_8;
        }

        v18 = v9[4];
        v19 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v18);
        (*(v19 + 88))(v18, v19);
        v20 = sub_1D726230C();

        v21 = *(v0 + 728);
        if (v20)
        {
          break;
        }

        v22 = v9[4];
        v23 = v9[5];
        __swift_project_boxed_opaque_existential_1(v9 + 1, v22);
        (*(v23 + 88))(v22, v23);
        LOBYTE(v22) = sub_1D726230C();

        sub_1D6085238(v21, type metadata accessor for GroupLayoutBindingContext);
        if (v22)
        {
          goto LABEL_22;
        }

        v5 = v121;
        v6 = v126;
LABEL_8:
        ++v10;
        if (v8 == v123)
        {
          goto LABEL_34;
        }
      }

      sub_1D6085238(*(v0 + 728), type metadata accessor for GroupLayoutBindingContext);
LABEL_22:
      v6 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_1D6991BE4(0, v130[2] + 1, 1, v130);
      }

      v26 = v130[2];
      v25 = v130[3];
      if (v26 >= v25 >> 1)
      {
        v130 = sub_1D6991BE4((v25 > 1), v26 + 1, 1, v130);
      }

      v130[2] = v26 + 1;
      v27 = &v130[2 * v26];
      v27[4] = v12;
      *(v27 + 40) = (v20 ^ 1) & 1;
      v5 = v121;
      if (v8 != v123)
      {
        continue;
      }

      break;
    }

LABEL_34:

    v31 = v130;
    v6 = MEMORY[0x1E69E7CC0];
    v127 = v130[2];
    if (v127)
    {
      v32 = 0;
      v33 = *(v0 + 664);
      v115 = *(v0 + 640);
      v116 = *(v0 + 656);
      v34 = *(v0 + 528);
      v114 = (*(v0 + 616) + 48);
      v124 = (v34 + 56);
      v122 = (v34 + 48);
      v117 = v33;
      v119 = (v33 + 48);
      v120 = (v33 + 56);
      v35 = v130 + 5;
      v109 = *(v0 + 520);
      v110 = *(v0 + 608);
      v36 = qword_1EDF3ECD8;
      do
      {
        if (v32 >= v31[2])
        {
          goto LABEL_83;
        }

        v37 = *(v35 - 1);
        v134 = *v35;
        sub_1D608489C(v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, v0 + 312);
        if (*(v0 + 336))
        {
          v38 = *(v0 + 704);
          v39 = *(v0 + 688);
          sub_1D5B63F14((v0 + 312), v0 + 272);
          sub_1D60849C0(v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v39, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
          if ((*v137)(v39, 1, v38) == 1)
          {
            v40 = *(v0 + 688);
            __swift_destroy_boxed_opaque_existential_1(v0 + 272);
            v41 = type metadata accessor for GroupLayoutBindingContext;
          }

          else
          {
            v42 = *(v0 + 608);
            v43 = *(v0 + 600);
            sub_1D5BDA9D4(*(v0 + 688), *(v0 + 720), type metadata accessor for GroupLayoutBindingContext);
            v36 = qword_1EDF403D0;
            sub_1D60849C0(v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, v43, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
            v44 = (*v114)(v43, 1, v42);
            v45 = *(v0 + 720);
            if (v44 != 1)
            {
              v54 = *(v0 + 640);
              v55 = *(v0 + 624);
              v112 = *(v0 + 520);
              sub_1D5BDA9D4(*(v0 + 600), v55, type metadata accessor for GroupLayoutContext);
              sub_1D5B68374(v0 + 272, (v115 + 2));
              sub_1D5BE3FA8(v45, v54 + *(v109 + 24), type metadata accessor for GroupLayoutBindingContext);

              sub_1D7259EAC();
              v111 = v45;
              v56 = v54 + *(v109 + 28);
              sub_1D7259F4C();
              v57 = v110[5];
              v58 = sub_1D7259CFC();
              (*(*(v58 - 8) + 16))(&v56[v57], v55 + v57, v58);
              v113 = v6;
              v59 = *(v55 + v110[10]);
              sub_1D5BE3FA8(v55 + v110[6], &v56[v110[6]], type metadata accessor for FeedLayoutSolverOptions);
              v60 = *(v55 + v110[7]);
              v61 = *(v55 + v110[8]);
              v62 = *(v55 + v110[9]);
              v63 = *(v55 + v110[11]);
              v64 = *(v55 + v110[12]);
              *&v56[v110[10]] = v59;
              *&v56[v110[7]] = v60;
              *&v56[v110[8]] = v61;
              v56[v110[9]] = v62;
              v56[v110[11]] = v63;
              *&v56[v110[12]] = v64;
              __swift_project_boxed_opaque_existential_1(v115 + 2, v115[5]);
              v6 = v113;

              v65 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
              v67 = v66;

              sub_1D6085238(v55, type metadata accessor for GroupLayoutContext);
              sub_1D6085238(v111, type metadata accessor for GroupLayoutBindingContext);
              __swift_destroy_boxed_opaque_existential_1(v0 + 272);
              *v54 = v65;
              v115[1] = v67;
              (*v124)(v54, 0, 1, v112);
              goto LABEL_47;
            }

            v40 = *(v0 + 600);
            sub_1D6085238(*(v0 + 720), type metadata accessor for GroupLayoutBindingContext);
            __swift_destroy_boxed_opaque_existential_1(v0 + 272);
            v41 = type metadata accessor for GroupLayoutContext;
          }

          sub_1D5BD55AC(v40, v36, v41);
        }

        else
        {
          sub_1D5BFB704(v0 + 312, &unk_1EDF27C10, &qword_1EDF3FA20, &protocol descriptor for GroupLayoutFactoryType);
        }

        (*v124)(*(v0 + 640), 1, 1, *(v0 + 520));
LABEL_47:
        v46 = *(v0 + 632);
        v47 = *(v0 + 520);
        sub_1D608492C(*(v0 + 640), v46);
        v48 = 1;
        if ((*v122)(v46, 1, v47) != 1)
        {
          v49 = *(v0 + 648);
          v50 = *(v116 + 48);
          sub_1D5BDA9D4(*(v0 + 632), v49, type metadata accessor for DebugGroupLayoutKey);
          v48 = 0;
          *(v49 + v50) = v134;
        }

        v5 = *(v0 + 656);
        v51 = *(v0 + 648);
        (*v120)(v51, v48, 1, v5);
        if ((*v119)(v51, 1, v5) == 1)
        {
          sub_1D5BD55AC(*(v0 + 648), &qword_1EC8830D8, sub_1D6084834);
          v31 = v130;
        }

        else
        {
          sub_1D5BDA9D4(*(v0 + 648), *(v0 + 680), sub_1D6084834);
          v31 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D69919AC(0, v6[2] + 1, 1, v6);
          }

          v5 = v6[2];
          v52 = v6[3];
          if (v5 >= v52 >> 1)
          {
            v6 = sub_1D69919AC(v52 > 1, v5 + 1, 1, v6);
          }

          v53 = *(v0 + 680);
          v6[2] = v5 + 1;
          sub_1D5BDA9D4(v53, v6 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v5, sub_1D6084834);
        }

        v36 = qword_1EDF3ECD8;
        ++v32;
        v35 += 16;
      }

      while (v127 != v32);
    }

    v68 = v6[2];
    if (v68)
    {
      v69 = *(v0 + 664);
      v131 = *(v0 + 560);
      v135 = *(v0 + 656);
      v128 = *(v0 + 552);
      v141 = MEMORY[0x1E69E7CC0];
      sub_1D6998868(0, v68, 0);
      v70 = 0;
      v71 = v141;
      v139 = v69;
      v125 = v6 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      while (v70 < v6[2])
      {
        v72 = v6;
        v73 = *(v0 + 672);
        v74 = *(v0 + 592);
        v75 = *(v0 + 488);
        sub_1D5BE3FA8(&v125[*(v139 + 72) * v70], v73, sub_1D6084834);
        v5 = *(v128 + 48);
        v76 = *(v128 + 64);
        *(v74 + v5) = sub_1D60841C8(v74, v73, *(v73 + *(v135 + 48)), v75);
        *(v74 + v76) = v77 & 1;
        sub_1D6085238(v73, sub_1D6084834);
        v79 = *(v141 + 16);
        v78 = *(v141 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1D6998868(v78 > 1, v79 + 1, 1);
        }

        v80 = *(v0 + 592);
        ++v70;
        *(v141 + 16) = v79 + 1;
        sub_1D5BDA9D4(v80, v141 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v79, sub_1D6084754);
        v6 = v72;
        if (v68 == v70)
        {

          goto LABEL_64;
        }
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v71 = MEMORY[0x1E69E7CC0];
LABEL_64:
    *(v0 + 736) = v71;
    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    *(v0 + 744) = qword_1EC9BAD28;
    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    *(v0 + 752) = v81;
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1D7273AE0;
    v83 = *(v71 + 16);
    v84 = MEMORY[0x1E69E65A8];
    *(v82 + 56) = MEMORY[0x1E69E6530];
    *(v82 + 64) = v84;
    *(v82 + 32) = v83;
    sub_1D7262EDC();
    sub_1D725C30C();

    v85 = MEMORY[0x1E69E7CC0];
    if (v83)
    {
      v86 = *(v0 + 560);
      v132 = *(v0 + 528);
      v136 = *(v0 + 552);
      v142 = MEMORY[0x1E69E7CC0];
      sub_1D6998818(0, v83, 0);
      v5 = v142;
      v87 = v71 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v129 = *(v86 + 72);
      v118 = v0;
      do
      {
        v140 = v83;
        v88 = *(v0 + 584);
        v89 = *(v0 + 576);
        v90 = *(v0 + 568);
        v91 = *(v0 + 544);
        sub_1D5BE3FA8(v87, v88, sub_1D6084754);
        sub_1D5BE3FA8(v88, v89, sub_1D6084754);
        v92 = *(v136 + 48);
        v93 = *(v89 + v92);
        v94 = v5;
        v95 = *(v136 + 64);
        v96 = *(v89 + v95);
        sub_1D5BDA9D4(v89, v90, type metadata accessor for DebugGroupLayoutKey);
        *(v90 + v92) = v93;
        *(v90 + v95) = v96;
        v5 = v94;
        sub_1D5BE3FA8(v90, v91, type metadata accessor for DebugGroupLayoutKey);
        sub_1D6085238(v90, sub_1D6084754);
        sub_1D6085238(v88, sub_1D6084754);
        v98 = *(v94 + 16);
        v97 = *(v94 + 24);
        v6 = (v98 + 1);
        if (v98 >= v97 >> 1)
        {
          sub_1D6998818(v97 > 1, v98 + 1, 1);
          v5 = v94;
        }

        v0 = v118;
        v99 = *(v118 + 544);
        *(v5 + 16) = v6;
        sub_1D5BDA9D4(v99, v5 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v98, type metadata accessor for DebugGroupLayoutKey);
        v87 += v129;
        v83 = v140 - 1;
      }

      while (v140 != 1);
      v85 = MEMORY[0x1E69E7CC0];
      v100 = *(v5 + 16);
      if (v100)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v100 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v100)
      {
LABEL_72:
        v101 = v0;
        v102 = *(v0 + 528);
        v143 = v85;

        sub_1D7263ECC();
        v103 = 0;
        v104 = v5 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        while (v103 < *(v5 + 16))
        {
          v105 = *(v101 + 536);
          v0 = v103 + 1;
          sub_1D5BE3FA8(v104 + *(v102 + 72) * v103, v105, type metadata accessor for DebugGroupLayoutKey);
          sub_1D68D8814(v105);
          sub_1D6085238(v105, type metadata accessor for DebugGroupLayoutKey);
          sub_1D7263E9C();
          v6 = *(v143 + 16);
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          v103 = v0;
          if (v100 == v0)
          {

            v106 = v143;
            v0 = v101;
            goto LABEL_78;
          }
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v106 = MEMORY[0x1E69E7CC0];
LABEL_78:
    sub_1D5C3978C(0, &qword_1EC8830F0);
    *(v0 + 464) = v106;
    v107 = sub_1D725B92C();
    sub_1D6084A40();
    sub_1D6084AA8();
    *(v0 + 760) = sub_1D725BA3C();

    v108 = swift_task_alloc();
    *(v0 + 768) = v108;
    *v108 = v0;
    v108[1] = sub_1D60834C8;

    return MEMORY[0x1EEE44EE0](v0 + 456);
  }

  else
  {
    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D725C30C();
    v138 = sub_1D605C2D8(v28);

    v29 = *(v0 + 8);

    return v29(v138);
  }
}