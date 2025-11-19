uint64_t FormatStandingDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatStandingDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatStandingDataVisualization.init(from:)(void *a1)
{
  v49 = *v1;
  v50 = v2;
  sub_1D5E18934();
  v45 = v4;
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v8 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C6B084(0, &qword_1EC894250, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E191B4();
  v17 = v50;
  v18 = v1;
  sub_1D7264B0C();
  if (v17)
  {
    swift_deallocPartialClassInstance();
    v38 = a1;
  }

  else
  {
    v43 = v11;
    v19 = v47;
    v20 = v48;
    v50 = a1;
    LOBYTE(v51) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v21;
    v42 = v1;
    v54 = 1;
    if (sub_1D726434C())
    {
      v53 = 1;
      sub_1D726431C();
      v22 = v51;
      v23 = v52;
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = v42;
    v42[4] = v22;
    v24[5] = v23;
    LOBYTE(v51) = 2;
    v25 = v16;
    v26 = sub_1D726434C();
    v27 = v43;
    if (v26)
    {
      v54 = 2;
      sub_1D6C6B0E8(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
      v28 = v8;
      sub_1D726431C();
      v29 = v13;
      v30 = v20;
      v31 = v27;
      v32 = v25;
      v33 = v29;
      v34 = sub_1D725A74C();
      (*(v44 + 8))(v31, v28);
    }

    else
    {
      v30 = v20;
      v32 = v25;
      v33 = v13;
      v34 = MEMORY[0x1E69E7CD0];
    }

    v42[6] = v34;
    LOBYTE(v51) = 3;
    v35 = sub_1D726434C();
    v36 = v46;
    if (v35)
    {
      v54 = 3;
      sub_1D6C6B0E8(&qword_1EDF3BD70, 255, sub_1D5E18934);
      v37 = v45;
      sub_1D726431C();
      v40 = sub_1D725A74C();
      (*(v30 + 8))(v36, v37);
      (*(v19 + 8))(v32, v33);
    }

    else
    {
      (*(v19 + 8))(v32, v33);
      v40 = MEMORY[0x1E69E7CC0];
    }

    v38 = v50;
    v18 = v42;
    v42[7] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v18;
}

void *sub_1D6C6AFFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatStandingDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1D6C6B084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E191B4();
    v7 = a3(a1, &type metadata for FormatStandingDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C6B0E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6C6B130(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C6B0E8(&qword_1EC885B20, a2, type metadata accessor for FormatStandingDataVisualization);
  a1[2] = sub_1D6C6B0E8(&qword_1EC885B60, v3, type metadata accessor for FormatStandingDataVisualization);
  result = sub_1D6C6B0E8(&qword_1EC894258, v4, type metadata accessor for FormatStandingDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C6B268()
{
  result = qword_1EC894260;
  if (!qword_1EC894260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894260);
  }

  return result;
}

unint64_t sub_1D6C6B2C0()
{
  result = qword_1EC894268;
  if (!qword_1EC894268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894268);
  }

  return result;
}

unint64_t sub_1D6C6B318()
{
  result = qword_1EC894270;
  if (!qword_1EC894270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894270);
  }

  return result;
}

void FeedItemFilterTagMatcher.createApplicator()(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      *a1 = sub_1D6C6B8E0;
      a1[1] = v2;
    }

    else
    {
      if (v1[1] | v1[2] | v2)
      {
        if (v2 == 1 && *(v1 + 1) == 0)
        {
          v6 = sub_1D6C6B568;
        }

        else if (v2 == 2 && *(v1 + 1) == 0)
        {
          v6 = sub_1D6C6B598;
        }

        else if (v2 == 3 && *(v1 + 1) == 0)
        {
          v6 = sub_1D5C00104;
        }

        else
        {
          v6 = sub_1D5DF55B8;
        }
      }

      else
      {
        v6 = sub_1D6C6B52C;
      }

      *a1 = v6;
      a1[1] = 0;
    }
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *a1 = sub_1D6A8D470;
    a1[1] = v4;
  }
}

uint64_t sub_1D6C6B4B8(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  LOBYTE(a2) = sub_1D5BE240C(v4, v6, a2);

  return a2 & 1;
}

id sub_1D6C6B598()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    result = [result supergroupKnobs];
    if (result)
    {
      v1 = result;
      v2 = [result isEligible];

      return v2;
    }
  }

  return result;
}

uint64_t FeedItemFilterTagMatcher.debugName(for:)(void *a1)
{
  v1 = [a1 name];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedItemFilterTagMatcher.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      swift_beginAccess();
      v4 = *(v2 + 16);

      return v4;
    }

    else
    {
      v7 = v3 | v1;
      if (v3 | v1 | v2)
      {
        if (v2 == 1 && v7 == 0)
        {
          return 0x6974636553207349;
        }

        else if (v2 != 2 || v7)
        {
          if (v2 == 3 && v7 == 0)
          {
            return 0x737961776C41;
          }

          else
          {
            return 0x726576654ELL;
          }
        }

        else
        {
          return 0xD000000000000016;
        }
      }

      else
      {
        return 0x776F6C6C41207349;
      }
    }
  }

  else
  {
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](v1, v3);
    MEMORY[0x1DA6F9910](0x20666F2074655320, 0xE800000000000000);
    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    MEMORY[0x1DA6F9910](0x736D65744920, 0xE600000000000000);
    return 0xD000000000000018;
  }
}

uint64_t sub_1D6C6B844(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_1D726207C();

  return v2;
}

unint64_t sub_1D6C6B920(uint64_t a1)
{
  result = sub_1D6C6B948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C6B948()
{
  result = qword_1EC894278;
  if (!qword_1EC894278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894278);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B20ItemFilterTagMatcherO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D6C6B9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a1;
  v6 = sub_1D725895C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GroupLayoutContext();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for GroupLayoutBindingContext();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v16;
  v17 = *v3;
  v39 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v20 = type metadata accessor for M12_V1.Bound();
  a3[3] = v20;
  v21 = v20;
  v45 = v20;
  a3[4] = sub_1D6C6DA28(&qword_1EDF05B00, type metadata accessor for M12_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  boxed_opaque_existential_1[3] = &type metadata for M12_V1;
  v23 = sub_1D5ECDD38();
  boxed_opaque_existential_1[4] = v23;
  *boxed_opaque_existential_1 = v17;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + 16) = v19;
  sub_1D5BF03F4(a2, boxed_opaque_existential_1 + *(v21 + 20), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  v24 = v41;
  v44 = sub_1D6C559CC(0, 0, 0, 0, 0);
  sub_1D5BF03F4(v24, v16, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BF03F4(a2, v61, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v25 = sub_1D725893C();
  v27 = v26;
  (*(v42 + 8))(v9, v43);
  v59 = &type metadata for M12_V1;
  v60 = v23;
  v56[0] = v39;
  v57 = v18;
  v58 = v19;
  type metadata accessor for GroupLayoutKey();
  v28 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v54 = sub_1D7264C5C();
  v55 = v29;
  v52 = 95;
  v53 = 0xE100000000000000;
  v50 = 45;
  v51 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v30 = sub_1D7263A6C();
  v32 = v31;

  *(v28 + 16) = v30;
  *(v28 + 24) = v32;
  v33 = (v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v33 = v25;
  v33[1] = v27;
  sub_1D5B68374(v56, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v34 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v40, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v46 + 56))(v28 + v34, 0, 1, v47);
  v35 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v61, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v48 + 56))(v28 + v35, 0, 1, v49);
  result = __swift_destroy_boxed_opaque_existential_1(v56);
  v37 = v45;
  *(boxed_opaque_existential_1 + *(v45 + 24)) = v44;
  *(boxed_opaque_existential_1 + *(v37 + 28)) = v28;
  return result;
}

uint64_t sub_1D6C6BE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for M12_V1.Bound();
  v5 = *(v2 + *(v4 + 24));
  v17 = v2;
  v6 = sub_1D5ECCA18(sub_1D6C6DA70, v16, v5);
  sub_1D6C6C1C4(v6, v2 + *(v4 + 20));
  sub_1D725A4DC();
  v7 = v21;
  sub_1D5B49714(0, &unk_1EDF04F70);
  sub_1D5B49714(0, &qword_1EDF04BD8);
  sub_1D6C6DA98();
  v8 = sub_1D6C6DB00();
  v14 = v20;
  v15 = v19;
  v18 = v7;
  *&v19 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);

  v10 = sub_1D725C00C();

  *a1 = 0;
  *(a1 + 24) = v14;
  *(a1 + 8) = v15;
  *&v19 = v10;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v11 = sub_1D72623BC();

  v13 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_1D6C6C09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for M12_V1.Bound();
  v7 = *(a2 + *(v6 + 28));
  sub_1D5F76D3C(a1, (a3 + 1));
  v8 = a2 + *(v6 + 20);
  v9 = *(*(v8 + *(type metadata accessor for GroupLayoutContext() + 40)) + 16);
  sub_1D5B68374(v9 + 16, v17);
  sub_1D5B68374(v9 + 56, v16);
  sub_1D5B63F14(v17, v14);
  sub_1D5B63F14(v16, v15);
  sub_1D5B68374(v15, v13);
  v10 = type metadata accessor for CategoryViewStyler();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4030000000000000;
  sub_1D5B63F14(v13, v11 + 24);
  a3[23] = v10;
  a3[24] = &off_1F5138158;

  __swift_destroy_boxed_opaque_existential_1(v14);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a3[20] = v11;
  *a3 = v7;
  return result;
}

uint64_t sub_1D6C6C1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  sub_1D5B49714(0, &unk_1EDF04F70);
  sub_1D6C6DBC0();
  v9 = sub_1D7262C1C();
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = a2 + *(v10 + 24);
  v12 = *(v11 + 20);
  v13 = *(v11 + 21);
  v14 = *(*(*(a2 + *(v10 + 40)) + 24) + 16);
  v15 = *MEMORY[0x1E69D7130];
  v16 = sub_1D7259D1C();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v20 = v9;
  v21 = v14;
  v22 = v12;
  v23 = v13;
  sub_1D6C563C8(0, &qword_1EDF17FD0, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v17 = sub_1D725A4CC();

  return v17;
}

uint64_t sub_1D6C6C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v54 = *(a3 + 2);
  v55 = *(a3 + 3);
  v56 = *(a3 + 4);
  v57 = *(a3 + 5);
  v52 = *a3;
  v53 = *(a3 + 1);
  v10 = a3[12];
  v11 = a3[13];
  v13 = a3[14];
  v12 = a3[15];
  v15 = *(a3 + 16);
  v14 = a3[17];
  v16 = a3[18];
  v17 = a3[19];
  v51 = v12;
  if (*(a4 + 16) - 2 <= a1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v25 = a3[17];
    v26 = a3[20];
  }

  else
  {
    v49 = *(a3 + 16);
    rect = a3[20];
    v58.origin.x = a3[17];
    v58.origin.y = a3[18];
    v58.size.width = a3[19];
    v58.size.height = rect;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v10;
    v59.origin.y = v11;
    v59.size.width = v13;
    v59.size.height = v12;
    v19 = MinX + CGRectGetMinX(v59);
    v47 = v11;
    v48 = v10;
    v46 = v13;
    v20 = v14;
    v21 = v16;
    v22 = v17;
    v23 = rect;
    if (a1)
    {
      CGRectGetMinX(*&v20);
      v61.origin.x = v14;
      v61.origin.y = v16;
      v61.size.width = v17;
      v61.size.height = rect;
      CGRectGetWidth(v61);
    }

    else
    {
      CGRectGetWidth(*&v20);
      v60.origin.x = v10;
      v60.origin.y = v11;
      v60.size.width = v13;
      v60.size.height = v12;
      CGRectGetMinX(v60);
    }

    v25 = v14;
    v27 = v14;
    v26 = rect;
    MEMORY[0x1DA6FA970](v19, v27, v16, v17, rect);
    v62.origin.x = v25;
    v62.origin.y = v16;
    v62.size.width = v17;
    v62.size.height = rect;
    CGRectGetMaxY(v62);
    sub_1D72632EC();
    sub_1D72632FC();
    type metadata accessor for M12_V1.Bound();
    sub_1D7259F1C();
    sub_1D726330C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_1D6C6DB68();
    v36 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v38 = (v24 + v37);
    *v38 = v29;
    v38[1] = v31;
    v38[2] = v33;
    v38[3] = v35;
    swift_storeEnumTagMultiPayload();
    v10 = v48;
    v15 = v49;
    v13 = v46;
    v11 = v47;
  }

  v39 = swift_allocObject();
  v40 = swift_allocObject();
  sub_1D6C561EC(a2, v40 + 16);
  *(v40 + 248) = v54;
  *(v40 + 264) = v55;
  *(v40 + 280) = v56;
  *(v40 + 296) = v57;
  *(v40 + 216) = v52;
  *(v40 + 232) = v53;
  *(v40 + 312) = v10;
  *(v40 + 320) = v11;
  *(v40 + 328) = v13;
  *(v40 + 336) = v51;
  *(v40 + 344) = v15;
  *(v40 + 352) = v25;
  *(v40 + 360) = v16;
  *(v40 + 368) = v17;
  *(v40 + 376) = v26;
  v41 = a5 + *(type metadata accessor for M12_V1.Bound() + 20);
  result = type metadata accessor for GroupLayoutContext();
  v43 = *(v41 + *(result + 28));
  v44 = __OFADD__(v43, a1);
  v45 = v43 + a1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 384) = v45;
    *(v39 + 16) = v40 | 0x8000000000000000;
    *(v39 + 24) = v24;
    *a6 = v39 | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1D6C6C780(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16[-v12];
  v20 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 12;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7490], v9);
  v17 = a2;
  v18 = a3;
  v19 = a4 & 0x101;
  sub_1D6C563C8(0, &qword_1EDF18080, MEMORY[0x1E69D7150]);
  sub_1D6C6DC58();
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6C6C960(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v42 - v12);
  v55 = a1;
  v14 = sub_1D725994C();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69D6F50], v14);
  *v13 = v15;
  v17 = *MEMORY[0x1E69D73C0];
  v52 = *(v10 + 104);
  v53 = v10 + 104;
  v52(v13, v17, v9);
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v19 = v18;
  v50 = sub_1D6C6DCCC();
  v51 = v19;
  sub_1D7259A9C();
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v20 = v22;
  result = v22(v13, v9);
  v24 = *(a2 + 16);
  if (v24)
  {
    v25 = (a2 + 32);
    v46 = *MEMORY[0x1E69D74A8];
    v26 = *MEMORY[0x1E69D7098];
    v44 = a4 & 1;
    v45 = v26;
    v43 = (a4 >> 8) & 1;
    v42 = xmmword_1D7273AE0;
    v48 = v9;
    v49 = a1;
    v47 = v20;
    do
    {
      v27 = *v25++;
      v54 = v27;
      v55 = a1;
      v52(v13, v46, v9);
      sub_1D6C5644C();
      sub_1D6C56678(0, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
      v29 = v28;
      v30 = *(v28 - 8);
      v31 = v13;
      v32 = v21;
      v33 = a3;
      v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v42;
      v36 = v35 + v34;
      a3 = v33;
      v21 = v32;
      v13 = v31;
      v37 = (*(v30 + 104))(v36, v45, v29);
      MEMORY[0x1EEE9AC00](v37, v38);
      v39 = v54;
      *(&v42 - 4) = a3;
      *(&v42 - 3) = v39;

      v41 = v50;
      a1 = v49;
      sub_1D72599EC();
      v40 = v47;
      v9 = v48;

      result = v40(v13, v9);
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t sub_1D6C6CD64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v27 - v12);
  v29 = a1;
  v34 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 6;
  *v13 = v14;
  v15 = *MEMORY[0x1E69D7490];
  v16 = *(v10 + 104);
  v16(v13, v15, v9);
  v30 = a2;
  v31 = a2;
  v32 = a3;
  v27[1] = a4 & 1;
  v33 = a4 & 0x101;
  v27[0] = (a4 >> 8) & 1;
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D6C6DCCC();
  v26 = v19;
  v28 = v18;
  sub_1D7259A2C();
  v20 = a3;
  v21 = *(v10 + 8);
  result = v21(v13, v9);
  if (*(v20 + 16) == 2)
  {
    v34 = v29;
    v23 = swift_allocObject();
    *(v23 + 16) = 6;
    *v13 = v23;
    v24 = (v16)(v13, v15, v9);
    MEMORY[0x1EEE9AC00](v24, v25);
    *&v27[-8] = v30;
    *&v27[-6] = v20;
    v26 = v19;
    sub_1D7259A2C();
    return v21(v13, v9);
  }

  return result;
}

uint64_t sub_1D6C6D048(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v23 - v17;
  v31 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v25 = v15;
  v20 = *(v15 + 104);
  v27 = v14;
  result = v20(v18, v19, v14);
  v30 = a2;
  if (*(a3 + 16))
  {
    sub_1D5F76D3C(a3 + 40, v29);
    v28 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    v24 = v9;
    sub_1D6C56734();
    sub_1D6C6DA28(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);

    v22 = v26;
    sub_1D7259D2C();
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C6DCCC();
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v24);
    return (*(v25 + 8))(v18, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6C6D3EC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v23 - v17;
  v31 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v25 = v15;
  v20 = *(v15 + 104);
  v27 = v14;
  result = v20(v18, v19, v14);
  v30 = a2;
  if (*(a3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D5F76D3C(a3 + 240, v29);
    v28 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    v24 = v9;
    sub_1D6C56734();
    sub_1D6C6DA28(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);

    v22 = v26;
    sub_1D7259D2C();
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C6DCCC();
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v24);
    return (*(v25 + 8))(v18, v27);
  }

  return result;
}

unint64_t sub_1D6C6D7C0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C6D7F0();
  result = sub_1D6C6D844();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C6D7F0()
{
  result = qword_1EDF05A58;
  if (!qword_1EDF05A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05A58);
  }

  return result;
}

unint64_t sub_1D6C6D844()
{
  result = qword_1EDF05A60[0];
  if (!qword_1EDF05A60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF05A60);
  }

  return result;
}

uint64_t type metadata accessor for M12_V1.Bound()
{
  result = qword_1EDF05AF0;
  if (!qword_1EDF05AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6C6D90C()
{
  sub_1D5C10AB0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GroupLayoutContext();
    if (v1 <= 0x3F)
    {
      sub_1D5B49714(319, &qword_1EDF051B0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GroupLayoutKey();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6C6D9D0(uint64_t a1)
{
  result = sub_1D6C6DA28(&qword_1EDF05B08, type metadata accessor for M12_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C6DA28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6C6DA98()
{
  result = qword_1EDF04F68;
  if (!qword_1EDF04F68)
  {
    sub_1D5B49714(255, &unk_1EDF04F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F68);
  }

  return result;
}

unint64_t sub_1D6C6DB00()
{
  result = qword_1EDF04BD0;
  if (!qword_1EDF04BD0)
  {
    sub_1D5B49714(255, &qword_1EDF04BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04BD0);
  }

  return result;
}

void sub_1D6C6DB68()
{
  if (!qword_1EDF19A20)
  {
    type metadata accessor for FeedItemSupplementaryAttributes();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19A20);
    }
  }
}

unint64_t sub_1D6C6DBC0()
{
  result = qword_1EDF04F60;
  if (!qword_1EDF04F60)
  {
    sub_1D5B49714(255, &unk_1EDF04F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F60);
  }

  return result;
}

unint64_t sub_1D6C6DC58()
{
  result = qword_1EDF18088;
  if (!qword_1EDF18088)
  {
    sub_1D6C563C8(255, &qword_1EDF18080, MEMORY[0x1E69D7150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18088);
  }

  return result;
}

unint64_t sub_1D6C6DCCC()
{
  result = qword_1EDF18160;
  if (!qword_1EDF18160)
  {
    sub_1D6C563C8(255, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18160);
  }

  return result;
}

uint64_t sub_1D6C6DD88(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

uint64_t sub_1D6C6DDB0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_1D5C44878();
    sub_1D725BDCC();
    v2 = sub_1D725B92C();
    sub_1D5C44E18();
    sub_1D6C7626C();
    sub_1D725BBEC();

    v3 = sub_1D725B92C();
    v1 = sub_1D725BA7C();

    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1D6C6DEEC()
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EDC();

  return sub_1D725C30C();
}

uint64_t sub_1D6C6DF7C@<X0>(uint64_t *a1@<X8>)
{
  result = FeedItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6C6DFB8(void *a1)
{
  v3 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v44 - v14;
  v45 = a1;
  v16 = a1[10];
  v17 = MEMORY[0x1E69E7CD0];
  v49 = MEMORY[0x1E69E7CD0];
  v18 = *(v16 + 16);
  if (v18)
  {
    v44[1] = v1;
    v19 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v13 + 72);
    v46 = v44 - v14;
    v47 = v20;
    do
    {
      sub_1D5BC89FC(v19, v15, type metadata accessor for FeedItem);
      sub_1D5BC89FC(v15, v10, type metadata accessor for FeedItem);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1D5D655CC(v10, v6, type metadata accessor for FeedHeadline);
        v23 = *(v6 + 5);
        v24 = [v23 publisherID];
        if (v24)
        {
          v25 = v24;
          v26 = v10;
          v27 = v6;
          v28 = v7;
          v29 = sub_1D726207C();
          v31 = v30;

          v32 = v29;
          v7 = v28;
          v6 = v27;
          v10 = v26;
          v15 = v46;
          sub_1D5B860D0(&v48, v32, v31);
        }

        v33 = [v23 topicIDs];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1D726267C();

          sub_1D5B87D50(v35);
        }

        sub_1D5BCA98C(v15, type metadata accessor for FeedItem);
        v22 = type metadata accessor for FeedHeadline;
        v21 = v6;
      }

      else
      {
        sub_1D5BCA98C(v15, type metadata accessor for FeedItem);
        v21 = v10;
        v22 = type metadata accessor for FeedItem;
      }

      sub_1D5BCA98C(v21, v22);
      v19 += v47;
      --v18;
    }

    while (v18);
    v17 = v49;
  }

  v36 = v45[8];
  v37 = v45[9];
  __swift_project_boxed_opaque_existential_1(v45 + 5, v36);
  v38 = *(v17 + 16);
  if (!v38)
  {
    goto LABEL_15;
  }

  v39 = sub_1D5B9A6D8(*(v17 + 16), 0);
  v40 = sub_1D5B9A6EC(&v48, v39 + 4, v38, v17);
  sub_1D5B87E38();
  if (v40 != v38)
  {
    __break(1u);
LABEL_15:

    v39 = MEMORY[0x1E69E7CC0];
  }

  v41 = [objc_opt_self() defaultCachePolicy];
  v42 = (*(v37 + 32))(v39, v41, 25, v36, v37);

  return v42;
}

uint64_t sub_1D6C6E38C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeedItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 80);
  v30 = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v28 = v10 - 1;
    while (v11 < *(v9 + 16))
    {
      sub_1D5BC89FC(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, type metadata accessor for FeedItem);
      sub_1D6C6E688(v8, v1, a1, &v29);
      v12 = sub_1D5BCA98C(v8, type metadata accessor for FeedItem);
      if (v29)
      {
        MEMORY[0x1DA6F9CE0](v12);
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D726272C();
        }

        v27 = v11 + 1;
        sub_1D726278C();
        v13 = v28 == v11;
        v11 = v27;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    sub_1D5BCA98C(v8, type metadata accessor for FeedItem);

    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = sub_1D725B92C();
    type metadata accessor for DebugInspectionItem();
    sub_1D725BEFC();

    v15 = *(v1 + 104);
    v16 = v2[14];
    v17 = v2[15];
    v20 = v2 + 11;
    v18 = v2[11];
    v19 = v20[1];
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v15;
    v21[4] = v16;
    v21[5] = v17;
    v21[6] = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1D6C762F0;
    *(v22 + 24) = v21;

    v23 = sub_1D725B92C();
    v24 = sub_1D725BA8C();

    return v24;
  }

  return result;
}

void sub_1D6C6E688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v159 = a3;
  v161 = a2;
  v162 = a1;
  v163 = a4;
  v4 = type metadata accessor for FeedRecipe();
  v152 = *(v4 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v154 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v158 = &v150 - v9;
  v10 = type metadata accessor for FeedPuzzleStatistic();
  v153 = *(v10 - 8);
  v11 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v155 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v160 = &v150 - v15;
  v16 = type metadata accessor for FeedWebEmbed();
  v150 = *(v16 - 8);
  v17 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v19 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v151 = &v150 - v22;
  v23 = type metadata accessor for FeedHeadline(0);
  v156 = *(v23 - 8);
  v24 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v157 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v150 - v28;
  v30 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BC89FC(v162, v33, type metadata accessor for FeedItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v68 = sub_1D5D655CC(v33, v29, type metadata accessor for FeedHeadline);
      v69 = *(v29 + 5);
      MEMORY[0x1EEE9AC00](v68, v70);
      v71 = v161;
      *(&v150 - 2) = v161;
      *(&v150 - 1) = v69;
      sub_1D6C764D4();
      sub_1D725BDCC();
      v72 = swift_allocObject();
      v72[2] = v69;
      v72[3] = v71;
      v72[4] = v159;
      swift_unknownObjectRetain();

      v73 = sub_1D725B92C();
      type metadata accessor for DebugInspectionHeadline(0);
      sub_1D725BA8C();

      *(swift_allocObject() + 16) = v69;
      swift_unknownObjectRetain();
      v74 = sub_1D725B92C();
      sub_1D725BACC();

      v75 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      v76 = v157;
      sub_1D5BC89FC(v29, v157, type metadata accessor for FeedHeadline);
      v77 = (*(v156 + 80) + 16) & ~*(v156 + 80);
      v78 = swift_allocObject();
      sub_1D5D655CC(v76, v78 + v77, type metadata accessor for FeedHeadline);
      v79 = sub_1D725B92C();
      v39 = sub_1D725BB6C();

      v40 = type metadata accessor for FeedHeadline;
      v41 = v29;
      goto LABEL_15;
    case 4u:
      v34 = v151;
      sub_1D5D655CC(v33, v151, type metadata accessor for FeedWebEmbed);
      sub_1D6C6FD44(v34);
      v35 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      sub_1D5BC89FC(v34, v19, type metadata accessor for FeedWebEmbed);
      v36 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v37 = swift_allocObject();
      sub_1D5D655CC(v19, v37 + v36, type metadata accessor for FeedWebEmbed);
      v38 = sub_1D725B92C();
      v39 = sub_1D725BB6C();

      v40 = type metadata accessor for FeedWebEmbed;
      v41 = v34;
      goto LABEL_15;
    case 5u:
      v42 = v33[7];
      v200[6] = v33[6];
      v200[7] = v42;
      *(&v200[7] + 9) = *(v33 + 121);
      v43 = v33[3];
      v200[2] = v33[2];
      v200[3] = v43;
      v44 = v33[5];
      v200[4] = v33[4];
      v200[5] = v44;
      v45 = v33[1];
      v200[0] = *v33;
      v200[1] = v45;
      sub_1D6C6FB48(*&v200[0], *(&v43 + 1));
      v46 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      v47 = swift_allocObject();
      v48 = v200[7];
      v47[7] = v200[6];
      v47[8] = v48;
      *(v47 + 137) = *(&v200[7] + 9);
      v49 = v200[3];
      v47[3] = v200[2];
      v47[4] = v49;
      v50 = v200[5];
      v47[5] = v200[4];
      v47[6] = v50;
      v51 = v200[1];
      v47[1] = v200[0];
      v47[2] = v51;
      sub_1D5ECF2C4(v200, &v183);
      v52 = sub_1D725B92C();
      v53 = sub_1D725BB6C();
      sub_1D5ECF320(v200);
      goto LABEL_12;
    case 6u:
      memcpy(v200, v33, 0x11AuLL);
      sub_1D5F76E40(v200, &v183);
      if (!v199)
      {
        v179 = v189;
        v180[0] = v190[0];
        *(v180 + 9) = *(v190 + 9);
        v175 = v185;
        v176 = v186;
        v177 = v187;
        v178 = v188;
        v173 = v183;
        v174 = v184;
        sub_1D6C6FB48(v183, *(&v186 + 1));
        v128 = sub_1D725B92C();
        type metadata accessor for DebugInspectionItem();
        sub_1D725BA8C();

        v129 = swift_allocObject();
        v130 = v180[0];
        v129[7] = v179;
        v129[8] = v130;
        *(v129 + 137) = *(v180 + 9);
        v131 = v176;
        v129[3] = v175;
        v129[4] = v131;
        v132 = v178;
        v129[5] = v177;
        v129[6] = v132;
        v133 = v174;
        v129[1] = v173;
        v129[2] = v133;
        sub_1D5ECF2C4(&v173, &v164);
        v67 = sub_1D725B92C();
        goto LABEL_19;
      }

      if (v199 == 1)
      {
        v179 = v189;
        v180[0] = v190[0];
        *(v180 + 9) = *(v190 + 9);
        v175 = v185;
        v176 = v186;
        v177 = v187;
        v178 = v188;
        v173 = v183;
        v174 = v184;
        v170 = v197;
        v171[0] = *v198;
        *(v171 + 9) = *&v198[9];
        v166 = v193;
        v167 = v194;
        v168 = v195;
        v169 = v196;
        v164 = v191;
        v165 = v192;
        sub_1D5B88D00(&v164, &qword_1EDF34E30, &type metadata for FeedIssue);
        sub_1D6C6FB48(v173, *(&v176 + 1));
        v61 = sub_1D725B92C();
        type metadata accessor for DebugInspectionItem();
        sub_1D725BA8C();

        v62 = swift_allocObject();
        v63 = v180[0];
        v62[7] = v179;
        v62[8] = v63;
        *(v62 + 137) = *(v180 + 9);
        v64 = v176;
        v62[3] = v175;
        v62[4] = v64;
        v65 = v178;
        v62[5] = v177;
        v62[6] = v65;
        v66 = v174;
        v62[1] = v173;
        v62[2] = v66;
        sub_1D5ECF2C4(&v173, &v182);
        v67 = sub_1D725B92C();
LABEL_19:
        v53 = sub_1D725BB6C();

        sub_1D5ECF320(&v173);
        sub_1D5F76EF0(v200);
        goto LABEL_22;
      }

      v179 = v189;
      v180[0] = v190[0];
      v180[1] = v190[1];
      v181 = v191;
      v175 = v185;
      v176 = v186;
      v177 = v187;
      v178 = v188;
      v173 = v183;
      v174 = v184;
      v134 = v184;
      v135 = [v184 identifier];
      v136 = sub_1D726207C();
      v138 = v137;

      v139 = [v134 name];
      v140 = sub_1D726207C();
      v142 = v141;

      *&v164 = v136;
      *(&v164 + 1) = v138;
      *&v165 = v140;
      *(&v165 + 1) = v142;
      sub_1D6C78BE4(0, &unk_1EC894300, &type metadata for DebugInspectionTag, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D725BB1C();
      v143 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      sub_1D5EE5AF8(&v173, &v164);
      v144 = swift_allocObject();
      v145 = v171[0];
      *(v144 + 112) = v170;
      *(v144 + 128) = v145;
      *(v144 + 144) = v171[1];
      *(v144 + 160) = v172;
      v146 = v167;
      *(v144 + 48) = v166;
      *(v144 + 64) = v146;
      v147 = v169;
      *(v144 + 80) = v168;
      *(v144 + 96) = v147;
      v148 = v165;
      *(v144 + 16) = v164;
      *(v144 + 32) = v148;
      v149 = sub_1D725B92C();
      v53 = sub_1D725BB6C();

      sub_1D5F76EF0(v200);
      v112 = &v173;
LABEL_21:
      sub_1D5EE5B54(v112);
LABEL_22:
      *v163 = v53;
      return;
    case 7u:
      v92 = v33[7];
      v200[6] = v33[6];
      v200[7] = v92;
      v200[8] = v33[8];
      LOBYTE(v200[9]) = *(v33 + 144);
      v93 = v33[3];
      v200[2] = v33[2];
      v200[3] = v93;
      v94 = v33[5];
      v200[4] = v33[4];
      v200[5] = v94;
      v95 = v33[1];
      v200[0] = *v33;
      v200[1] = v95;
      v96 = v95;
      v97 = [v95 identifier];
      v98 = sub_1D726207C();
      v100 = v99;

      v101 = [v96 name];
      v102 = sub_1D726207C();
      v104 = v103;

      *&v183 = v98;
      *(&v183 + 1) = v100;
      *&v184 = v102;
      *(&v184 + 1) = v104;
      sub_1D6C78BE4(0, &unk_1EC894300, &type metadata for DebugInspectionTag, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D725BB1C();
      v105 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      sub_1D5EE5AF8(v200, &v183);
      v106 = swift_allocObject();
      v107 = v190[0];
      *(v106 + 112) = v189;
      *(v106 + 128) = v107;
      *(v106 + 144) = v190[1];
      *(v106 + 160) = v191;
      v108 = v186;
      *(v106 + 48) = v185;
      *(v106 + 64) = v108;
      v109 = v188;
      *(v106 + 80) = v187;
      *(v106 + 96) = v109;
      v110 = v184;
      *(v106 + 16) = v183;
      *(v106 + 32) = v110;
      v111 = sub_1D725B92C();
      v53 = sub_1D725BB6C();

      v112 = v200;
      goto LABEL_21;
    case 0xCu:
      v54 = v158;
      sub_1D5D655CC(v33, v158, type metadata accessor for FeedRecipe);
      sub_1D6C70600(v54);
      v55 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      v56 = v154;
      sub_1D5BC89FC(v54, v154, type metadata accessor for FeedRecipe);
      v57 = (*(v152 + 80) + 16) & ~*(v152 + 80);
      v58 = swift_allocObject();
      sub_1D5D655CC(v56, v58 + v57, type metadata accessor for FeedRecipe);
      v59 = sub_1D725B92C();
      v39 = sub_1D725BB6C();

      v60 = type metadata accessor for FeedRecipe;
      goto LABEL_14;
    case 0xEu:
      v113 = v33[10];
      v200[11] = v33[11];
      v200[12] = v33[12];
      v114 = v33[7];
      v200[6] = v33[6];
      v200[7] = v114;
      v115 = v33[8];
      v200[9] = v33[9];
      v200[10] = v113;
      v200[8] = v115;
      v116 = v33[3];
      v200[2] = v33[2];
      v200[3] = v116;
      v117 = v33[5];
      v200[4] = v33[4];
      v200[5] = v117;
      v118 = v33[1];
      v200[0] = *v33;
      v200[1] = v118;
      *&v183 = *(&v200[2] + 1);
      *(&v183 + 1) = v116;
      *&v184 = *(&v200[2] + 1);
      *(&v184 + 1) = v116;
      sub_1D6C78BE4(0, &qword_1EC8942F8, &type metadata for DebugInspectionPuzzle, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      sub_1D725BB1C();
      v119 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      sub_1D5F2DEAC(v200, &v183);
      v120 = swift_allocObject();
      v121 = v193;
      v120[11] = v192;
      v120[12] = v121;
      v120[13] = v194;
      v122 = v190[0];
      v120[7] = v189;
      v120[8] = v122;
      v123 = v191;
      v120[9] = v190[1];
      v120[10] = v123;
      v124 = v186;
      v120[3] = v185;
      v120[4] = v124;
      v125 = v188;
      v120[5] = v187;
      v120[6] = v125;
      v126 = v184;
      v120[1] = v183;
      v120[2] = v126;
      v127 = sub_1D725B92C();
      v53 = sub_1D725BB6C();

      sub_1D5F2DF58(v200);
      goto LABEL_22;
    case 0xFu:
      v80 = v33[3];
      v200[2] = v33[2];
      v200[3] = v80;
      v81 = v33[1];
      v200[0] = *v33;
      v200[1] = v81;
      v183 = *(&v200[2] + 8);
      v184 = *(&v200[2] + 8);
      sub_1D6C78BE4(0, &qword_1EC8942F0, &type metadata for DebugInspectionPuzzleType, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      sub_1D725BB1C();
      v82 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      v83 = swift_allocObject();
      v84 = v200[1];
      v83[1] = v200[0];
      v83[2] = v84;
      v85 = v200[3];
      v83[3] = v200[2];
      v83[4] = v85;
      sub_1D63071F4(v200, &v183);
      v52 = sub_1D725B92C();
      v53 = sub_1D725BB6C();
      sub_1D5F2DE58(v200);
LABEL_12:

      goto LABEL_22;
    case 0x10u:
      v54 = v160;
      sub_1D5D655CC(v33, v160, type metadata accessor for FeedPuzzleStatistic);
      v86 = *(v54 + 48);
      *&v200[0] = *(v54 + 40);
      *(&v200[0] + 1) = v86;
      *&v200[1] = *&v200[0];
      *(&v200[1] + 1) = v86;
      sub_1D6C78BE4(0, &qword_1EC8942E8, &type metadata for DebugInspectionPuzzleStatistic, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      sub_1D725BB1C();
      v87 = sub_1D725B92C();
      type metadata accessor for DebugInspectionItem();
      sub_1D725BA8C();

      v88 = v155;
      sub_1D5BC89FC(v54, v155, type metadata accessor for FeedPuzzleStatistic);
      v89 = (*(v153 + 80) + 16) & ~*(v153 + 80);
      v90 = swift_allocObject();
      sub_1D5D655CC(v88, v90 + v89, type metadata accessor for FeedPuzzleStatistic);
      v91 = sub_1D725B92C();
      v39 = sub_1D725BB6C();

      v60 = type metadata accessor for FeedPuzzleStatistic;
LABEL_14:
      v40 = v60;
      v41 = v54;
LABEL_15:
      sub_1D5BCA98C(v41, v40);
      *v163 = v39;
      return;
    case 0x12u:
      goto LABEL_3;
    default:
      sub_1D5BCA98C(v33, type metadata accessor for FeedItem);
LABEL_3:
      *v163 = 0;
      return;
  }
}

uint64_t sub_1D6C6FAA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [*(a2 + 40) identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = 0x656E696C64616568;
  a3[3] = 0xE800000000000000;
  a3[4] = v9;
  a3[5] = v10;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C6FB48(void *a1, void *a2)
{
  v3 = v2;
  sub_1D5C44878();
  sub_1D725BDCC();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;

  v7 = a1;
  v8 = sub_1D725B92C();
  sub_1D6C788F8();
  sub_1D725BA7C();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D6C78968;
  *(v10 + 24) = v9;

  v11 = v7;
  v12 = a2;
  v13 = sub_1D725B92C();
  sub_1D725BA8C();

  *(swift_allocObject() + 16) = v11;
  v14 = v11;
  v15 = sub_1D725B92C();
  v16 = sub_1D725BACC();

  return v16;
}

uint64_t sub_1D6C6FD44(uint64_t a1)
{
  v3 = type metadata accessor for FeedWebEmbed();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1D6C78B24(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v26 - v9;
  sub_1D6C748C8(a1, v1);
  v11 = *(a1 + v3[10]);
  v26[1] = *(a1 + v3[11]);
  v26[2] = v11;
  sub_1D725838C();
  if (v12 && (, sub_1D6C786DC(a1 + v3[13], v10, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization), v13 = type metadata accessor for WebEmbedDataVisualization(), v14 = v4, v15 = (*(*(v13 - 8) + 48))(v10, 1, v13), sub_1D6C77248(v10, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization), v16 = v15 == 1, v4 = v14, v16))
  {
    v17 = v1[19];
    v18 = v1[20];
    __swift_project_boxed_opaque_existential_1(v1 + 16, v17);
    v19 = *(v18 + 16);
    v20 = v18;
    v4 = v14;
    v19(v17, v20);
  }

  else
  {
    v26[3] = sub_1D605ACB8(MEMORY[0x1E69E7CC0]);
    sub_1D6C78B24(0, &unk_1EDF3B960, sub_1D5B5FBFC, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BB1C();
  }

  sub_1D725BD8C();

  sub_1D5BC89FC(a1, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedWebEmbed);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_1D5D655CC(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for FeedWebEmbed);
  v23 = sub_1D725B92C();
  type metadata accessor for DebugInspectionWebEmbed();
  v24 = sub_1D725BA7C();

  return v24;
}

uint64_t sub_1D6C70108@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a2(a1, a3);
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);

  v7 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v5;
  a3[2] = 0x6465626D45626577;
  a3[3] = 0xE800000000000000;
  a3[4] = v7;
  a3[5] = v8;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C701E4@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x210uLL);
  type metadata accessor for DebugInspectionItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D693ED90(__dst, &v5);
}

uint64_t sub_1D6C70264@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [*a2 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = 0x6575737369;
  a3[3] = 0xE500000000000000;
  a3[4] = v9;
  a3[5] = v10;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70308@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [*(a2 + 16) identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = 6775156;
  a3[3] = 0xE300000000000000;
  a3[4] = v9;
  a3[5] = v10;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C703C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);

  v7 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v5;
  a3[2] = 0x656C7A7A7570;
  a3[3] = 0xE600000000000000;
  a3[4] = v7;
  a3[5] = v8;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C7045C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);

  v7 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v5;
  a3[2] = 0x7420656C7A7A7570;
  a3[3] = 0xEB00000000657079;
  a3[4] = v7;
  a3[5] = v8;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70500@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  type metadata accessor for DebugInspectionItem();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);

  v7 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v5;
  a3[2] = 0xD000000000000010;
  a3[3] = 0x80000001D73EF290;
  a3[4] = v7;
  a3[5] = v8;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70600(uint64_t a1)
{
  v2 = v1;
  sub_1D6C78B24(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v51 - v10;
  v12 = v2[24];
  v13 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v12);
  v14 = *(a1 + 56);
  v15 = [v14 identifier];
  v16 = sub_1D726207C();
  v18 = v17;

  v55 = v16;
  v56 = v18;
  LOBYTE(v57) = 2;
  v19 = *(v13 + 8);
  v53 = v11;
  v19(&v55, v12, v13);
  sub_1D5DEA520(v55, v56, v57);
  v20 = v2[24];
  v21 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v20);
  v22 = [v14 identifier];
  v23 = sub_1D726207C();
  v25 = v24;

  v55 = v23;
  v56 = v25;
  LOBYTE(v57) = 2;
  v26 = *(v21 + 16);
  v54 = v7;
  v26(&v55, v20, v21);
  sub_1D5DEA520(v55, v56, v57);
  v27 = [v14 identifier];
  v28 = sub_1D726207C();
  v51 = v29;
  v52 = v28;

  v30 = [v14 title];
  v31 = sub_1D726207C();
  v33 = v32;

  v34 = [objc_msgSend(v14 sourceChannel)];
  swift_unknownObjectRelease();
  v35 = sub_1D726207C();
  v37 = v36;

  v38 = [v14 scoreProfile];
  if (v38)
  {
    v39 = v38;
    [v38 tabiScore];
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_1D725891C();
  v43 = *(*(v42 - 8) + 48);
  v44 = v53;
  v45 = v43(v53, 1, v42) != 1;
  v46 = v54;
  v47 = v43(v54, 1, v42) != 1;
  v55 = v52;
  v56 = v51;
  v57 = v31;
  v58 = v33;
  v59 = v35;
  v60 = v37;
  v61 = v41;
  v62 = v45;
  v63 = v47;
  sub_1D6C78BE4(0, &qword_1EC8943F8, &type metadata for DebugInspectionRecipe, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v48 = sub_1D725BB1C();
  v49 = MEMORY[0x1E6969530];
  sub_1D6C77248(v46, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D6C77248(v44, &qword_1EDF45B00, v49);
  return v48;
}

uint64_t sub_1D6C709DC@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 10) = *(a1 + 42);
  v4 = *(v8 + 10);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 42) = v4;
  type metadata accessor for DebugInspectionItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D6C78B88(v7, &v6);
}

uint64_t sub_1D6C70A54@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];

  v7 = sub_1D5EE763C(a1);
  *a3 = v6;
  a3[1] = v5;
  a3[2] = 0x657069636572;
  a3[3] = 0xE600000000000000;
  a3[4] = v7;
  a3[5] = v8;
  type metadata accessor for DebugInspectionItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C70AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{

  v14 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  v15 = MEMORY[0x1E69E7CD0];
  a7[4] = a1;
  a7[5] = v15;
  a7[6] = v15;
  a7[7] = v15;
  a7[8] = v14;
  a7[9] = a6;
}

uint64_t sub_1D6C70B74(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  sub_1D6D76CAC(v3, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v10;
  return result;
}

uint64_t sub_1D6C70C24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_1D6C764D4();
  sub_1D725BDCC();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a2;
  v6[4] = v5;
  swift_unknownObjectRetain();

  v7 = sub_1D725B92C();
  type metadata accessor for DebugInspectionHeadline(0);
  sub_1D725BA8C();

  *(swift_allocObject() + 16) = a3;
  swift_unknownObjectRetain();
  v8 = sub_1D725B92C();
  v9 = sub_1D725BACC();

  return v9;
}

uint64_t sub_1D6C70D88@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v6 = v5;
  v247 = a4;
  sub_1D6C78B24(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v233 = v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v234 = v194 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (v194 - v19);
  v21 = type metadata accessor for DebugInspectionArticleData(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = *a1;
  ObjectType = swift_getObjectType();
  v237 = [a2 scoreProfile];
  v242 = a3;
  v241 = sub_1D6C724E0(a2);
  v25 = [a2 surfacedByChannelID];
  if (v25 || (v25 = [a2 surfacedByTopicID]) != 0)
  {
    v26 = v25;
    v240 = sub_1D726207C();
    v238 = v27;
  }

  else
  {
    v240 = 0;
    v238 = 0;
  }

  v28 = *(v242 + 3);
  result = [v28 subscriptionController];
  v236 = result;
  if (!result)
  {
    goto LABEL_157;
  }

  v243 = v28;
  v30 = [objc_msgSend(v28 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v30 respondsToSelector_])
  {
    v235 = [v30 paidBundleConfig];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v235 = 0;
  }

  v31 = [a2 respondsToSelector_];
  v32 = v243;
  if ((v31 & 1) == 0 || (v33 = [a2 contentWithContext_]) == 0)
  {
LABEL_22:
    v224 = 0;
    v225 = 0;
    goto LABEL_23;
  }

  v34 = v33;
  v35 = [v33 anfContent];

  if (!v35)
  {
    v224 = 0;
    v225 = 0;
    goto LABEL_19;
  }

  v36 = [v35 anfDocumentAssetHandles];

  sub_1D5B5A498(0, &qword_1EDF1AB50);
  v37 = sub_1D726267C();

  if (v37 >> 62)
  {
    result = sub_1D7263BFC();
    v32 = v243;
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v243;
  if (!result)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_13:
  if ((v37 & 0xC000000000000001) != 0)
  {
    goto LABEL_155;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v37 + 32); ; i = MEMORY[0x1DA6FB460](0, v37))
    {
      v39 = i;

      v40 = [v39 uniqueKey];

      v41 = sub_1D726207C();
      v224 = v42;
      v225 = v41;

LABEL_19:
      v32 = v243;
LABEL_23:
      v223 = sub_1D6C72734(a2, v247);
      LODWORD(v220) = [a2 respondsToSelector_];
      if (v220)
      {
        v222 = [a2 bodyTextLength];
      }

      else
      {
        v222 = 0;
      }

      v43 = [a2 clusterID];
      if (v43)
      {
        v44 = v43;
        v45 = sub_1D726207C();
        v230 = v46;
        v231 = v45;
      }

      else
      {
        v230 = 0xE000000000000000;
        v231 = 0;
      }

      v221 = sub_1D6C76FDC(a2, v247);
      v47 = [a2 lastFetchedDate];
      if (v47)
      {
        v48 = v47;
        sub_1D72588BC();

        v49 = sub_1D725891C();
        (*(*(v49 - 8) + 56))(v20, 0, 1, v49);
      }

      else
      {
        v50 = sub_1D725891C();
        (*(*(v50 - 8) + 56))(v20, 1, 1, v50);
      }

      if (([a2 respondsToSelector_] & 1) != 0 && (v51 = objc_msgSend(a2, sel_float16FullBodyEncoding)) != 0)
      {
        v52 = v51;
        v53 = sub_1D725867C();
        v228 = v54;
        v229 = v53;
      }

      else
      {
        v228 = 0xF000000000000000;
        v229 = 0;
      }

      v219 = [a2 halfLife];
      v55 = 0.0;
      if (([a2 respondsToSelector_] & 1) != 0 && (v56 = objc_msgSend(a2, sel_halfLifeOverride)) != 0)
      {
        LODWORD(v227) = 0;
        v55 = v56;
      }

      else
      {
        LODWORD(v227) = 1;
      }

      v226 = v20;
      result = [a2 respondsToSelector_];
      if ((result & 1) == 0)
      {
        goto LABEL_158;
      }

      v218 = [a2 hasAudioTrack];
      v217 = [a2 hasVideo];
      v213 = [a2 identifier];
      v57 = sub_1D726207C();
      v215 = v58;
      v216 = v57;
      v214 = [a2 isAIGenerated];
      result = [v32 paidAccessChecker];
      if (!result)
      {
        goto LABEL_159;
      }

      v194[0] = a5;
      v194[1] = v6;
      v212 = [result canGetSubscriptionToChannel_];
      swift_unknownObjectRelease();
      result = [v32 paidAccessChecker];
      if (!result)
      {
        goto LABEL_160;
      }

      v59 = [result canGetBundleSubscriptionToChannel_];
      swift_unknownObjectRelease();
      v211 = [a2 isANF];
      v60 = v241;
      v210 = [v241 isEvergreen];
      v209 = [v60 isCoread];
      result = [a2 respondsToSelector_];
      if ((result & 1) == 0)
      {
        goto LABEL_161;
      }

      v61 = [a2 isFeatured];
      v62 = [a2 isPaid];
      v208 = v61;
      if (v62)
      {
        v63 = 1;
      }

      else
      {
        result = [a2 respondsToSelector_];
        if ((result & 1) == 0)
        {
          goto LABEL_164;
        }

        v63 = [a2 isBundlePaid];
      }

      result = [a2 respondsToSelector_];
      if ((result & 1) == 0)
      {
        goto LABEL_162;
      }

      v64 = [a2 parentIssue];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v64)
      {
      }

      v200 = v64;
      v202 = v63;
      v65 = [a2 publisherArticleVersion];
      v66 = [a2 publishDate];
      v68 = v233;
      v67 = v234;
      v203 = v59;
      v201 = v65;
      if (v66)
      {
        v69 = v66;
        sub_1D72588BC();

        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = sub_1D725891C();
      v72 = *(v71 - 8);
      (*(v72 + 56))(v68, v70, 1, v71);
      sub_1D6C771C8(v68, v67, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      v199 = (*(v72 + 48))(v67, 1, v71);
      if (v199 == 1)
      {
        sub_1D6C77248(v67, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        v73 = 0;
      }

      else
      {
        sub_1D725889C();
        v73 = v74;
        (*(v72 + 8))(v67, v71);
      }

      v75 = [a2 sourceChannelID];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1D726207C();
        v234 = v78;
      }

      else
      {
        v77 = 0;
        v234 = 0xE000000000000000;
      }

      v79 = [a2 sourceName];
      if (v79)
      {
        v80 = v79;
        v233 = sub_1D726207C();
        v213 = v81;
      }

      else
      {
        v233 = 0;
        v213 = 0xE000000000000000;
      }

      v82 = [a2 feedID];
      if (v82)
      {
        v83 = v82;
        v84 = sub_1D726207C();
        v206 = v85;
        v207 = v84;
      }

      else
      {
        v206 = 0;
        v207 = 0;
      }

      v86 = [a2 surfacedByArticleListIDs];
      if (v86)
      {
        v87 = v86;
        v88 = sub_1D726267C();

        if (v88[2])
        {
          v89 = v88[4];
          v197 = v88[5];
          v198 = v89;

          goto LABEL_71;
        }
      }

      v197 = 0;
      v198 = 0;
LABEL_71:
      v90 = sub_1D6C772B8(a2, v247);
      v91 = [a2 title];
      if (v91)
      {
        v92 = v91;
        v93 = sub_1D726207C();
        v204 = v94;
        v205 = v93;
      }

      else
      {
        v204 = 0;
        v205 = 0;
      }

      v95 = v220 ^ 1;
      v96 = [a2 respondsToSelector_];
      v196 = v90;
      if ((v96 & 1) != 0 && (v97 = [a2 float16TitleEncoding]) != 0)
      {
        v98 = v97;
        v220 = sub_1D725867C();
        v195 = v99;
      }

      else
      {
        v220 = 0;
        v195 = 0xF000000000000000;
      }

      v100 = v199 == 1;
      v101 = v200 != 0;
      v102 = sub_1D6C77670(a2, v247);
      v103 = v224;
      *v24 = v225;
      *(v24 + 1) = v103;
      v104 = v222;
      *(v24 + 2) = v223;
      *(v24 + 3) = v104;
      v24[32] = v95 & 1;
      v105 = v230;
      *(v24 + 5) = v231;
      *(v24 + 6) = v105;
      *(v24 + 7) = v221;
      sub_1D6C771C8(v226, &v24[v21[9]], &qword_1EDF45B00, MEMORY[0x1E6969530]);
      v106 = &v24[v21[10]];
      v107 = v228;
      *v106 = v229;
      *(v106 + 1) = v107;
      *&v24[v21[11]] = v219;
      v108 = &v24[v21[12]];
      v108[8] = v227;
      *v108 = v55;
      LOBYTE(v107) = v217;
      v24[v21[13]] = v218;
      v24[v21[14]] = v107;
      v109 = &v24[v21[15]];
      v110 = v215;
      *v109 = v216;
      *(v109 + 1) = v110;
      v24[v21[16]] = v214;
      v24[v21[17]] = v212;
      v24[v21[18]] = v203;
      LOBYTE(v110) = v210;
      v24[v21[19]] = v211;
      v24[v21[20]] = v110;
      LOBYTE(v110) = v208;
      v24[v21[21]] = v209;
      v24[v21[22]] = v110;
      v24[v21[23]] = v202;
      v24[v21[24]] = v101;
      v111 = &v24[v21[25]];
      *v111 = v201;
      v111[8] = 0;
      v112 = &v24[v21[26]];
      *v112 = v73;
      v112[8] = v100;
      v113 = &v24[v21[27]];
      v115 = v233;
      v114 = v234;
      *v113 = v77;
      v113[1] = v114;
      v116 = v213;
      v113[2] = v115;
      v113[3] = v116;
      v117 = &v24[v21[28]];
      v118 = v238;
      *v117 = v240;
      v117[1] = v118;
      v119 = &v24[v21[29]];
      v120 = v206;
      *v119 = v207;
      *(v119 + 1) = v120;
      v121 = &v24[v21[30]];
      v122 = v197;
      *v121 = v198;
      *(v121 + 1) = v122;
      *&v24[v21[31]] = v196;
      v123 = &v24[v21[32]];
      v124 = v204;
      *v123 = v205;
      *(v123 + 1) = v124;
      v125 = &v24[v21[33]];
      v126 = v195;
      *v125 = v220;
      v125[1] = v126;
      *&v24[v21[34]] = v102;

      result = [v243 paidAccessChecker];
      if (!result)
      {
        goto LABEL_163;
      }

      v127 = result;
      v128 = [a2 isPaid];
      if ([a2 respondsToSelector_])
      {
        v129 = [a2 isBundlePaid];
      }

      else
      {
        v129 = 0;
      }

      v130 = [a2 sourceChannel];
      if (v130)
      {
        v131 = [v130 identifier];
        swift_unknownObjectRelease();
        ObjectType = sub_1D726207C();
        v133 = v132;

        if (!v128)
        {
          goto LABEL_88;
        }
      }

      else
      {
        ObjectType = 0;
        v133 = 0;
        if (!v128)
        {
LABEL_88:
          if ((v129 & 1) == 0)
          {
            swift_unknownObjectRelease();

            goto LABEL_117;
          }

          goto LABEL_92;
        }
      }

      v134 = [v127 purchaseProvider];
      if (v133)
      {
        v135 = [v134 purchasedTagIDs];
        v136 = sub_1D7262B0C();

        LOBYTE(v135) = sub_1D5BE240C(ObjectType, v133, v136);

        swift_unknownObjectRelease();
        if (v135)
        {

          swift_unknownObjectRelease();
LABEL_117:
          LODWORD(ObjectType) = 1;
          goto LABEL_119;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (!v129)
      {
        swift_unknownObjectRelease();

        goto LABEL_118;
      }

LABEL_92:
      if (!v133)
      {
        goto LABEL_114;
      }

      v137 = [objc_msgSend(v127 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v137, v137 + 1))
      {
        sub_1D7263AEC();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v246, 0, 32);
      }

      v245[0] = v246[0];
      v245[1] = v246[1];
      if (!*(&v246[1] + 1))
      {
        sub_1D5B88D00(v245, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
LABEL_102:
        v234 = 0;
        v140 = 0;
LABEL_103:
        if (objc_getAssociatedObject(v137, ~v140))
        {
          sub_1D7263AEC();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(v246, 0, 32);
        }

        v245[0] = v246[0];
        v245[1] = v246[1];
        if (*(&v246[1] + 1))
        {
          sub_1D5B5A498(0, &qword_1EDF1A660);
          v141 = swift_dynamicCast();
          v142 = v234;
          if (v141)
          {
            v143 = v244;
            v233 = [v143 integerValue];

            if (((v233 ^ v140) & 1) == 0)
            {
              goto LABEL_113;
            }
          }

          else
          {

            if ((v140 & 1) == 0)
            {
LABEL_113:

LABEL_114:
              swift_unknownObjectRelease();
              goto LABEL_118;
            }
          }
        }

        else
        {
          sub_1D5B88D00(v245, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);

          if ((v140 & 1) == 0)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_116;
      }

      sub_1D5B5A498(0, &qword_1EDF1A660);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_102;
      }

      v138 = v244;
      v139 = [v244 integerValue];
      if (v139 != -1)
      {
        v140 = v139;
        v234 = v138;
        goto LABEL_103;
      }

LABEL_116:
      v144 = [objc_msgSend(v127 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v145 = [v144 bundleChannelIDs];

      v146 = sub_1D726203C();
      v147 = [v145 containsObject_];

      swift_unknownObjectRelease();
      if (v147)
      {
        goto LABEL_117;
      }

LABEL_118:
      LODWORD(ObjectType) = 0;
LABEL_119:
      v148 = v232;
      v149 = v247;
      v150 = v242;
      v234 = sub_1D6C72DD4(a2, v247, v232);
      v233 = sub_1D6C789FC(v149, v148, v150, sub_1D6C78568);
      sub_1D6C77E6C(v237);
      v231 = v152;
      v232 = v151;
      sub_1D6C73118(a2, v149);
      v230 = v153;
      a5 = &selRef_setFillMode_;
      v154 = [v243 readingHistory];
      v20 = &off_1E84D3000;
      v155 = [a2 articleID];
      if (!v155)
      {
        sub_1D726207C();
        v155 = sub_1D726203C();
      }

      LODWORD(v229) = [v154 hasArticleBeenRead_];

      v156 = v241;
      v157 = v241;
      sub_1D5F3CA00(v156, v246);
      v158 = v157;
      v21 = &selRef_setHyphenationFactor_;
      v6 = [v158 debugFields];
      v37 = [v6 scoringType];

      if ((v37 & 0x8000000000000000) == 0)
      {

        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v228 = 0xE600000000000000;
            v159 = 0x726569766158;
            goto LABEL_132;
          }

          if (v37 == 3)
          {
            v228 = 0x80000001D73EED40;
            v159 = 0xD000000000000012;
            goto LABEL_132;
          }
        }

        else
        {
          if (!v37)
          {
            v228 = 0xE700000000000000;
            v159 = 0x6E776F6E6B6E55;
            goto LABEL_132;
          }

          if (v37 == 1)
          {
            v228 = 0xE600000000000000;
            v159 = 0x79636167654CLL;
LABEL_132:
            v227 = v159;
            v241 = sub_1D6C78190(v241);
            v226 = v160;
            v161 = [v243 readingHistory];
            v162 = [a2 articleID];
            if (!v162)
            {
              sub_1D726207C();
              v162 = sub_1D726203C();
            }

            v163 = [v161 hasArticleBeenSeen_];

            LODWORD(v224) = sub_1D6C733E4(a2, v235);
            v164 = [a2 surfacedByBinID];
            if (v164)
            {
              v165 = v164;
              v166 = sub_1D726207C();
              v168 = v167;
            }

            else
            {
              v166 = 0;
              v168 = 0;
            }

            sub_1D7261C5C();
            v169 = sub_1D7261C4C();
            if (v168)
            {
              if (v166 == v169 && v168 == v170)
              {
                LODWORD(v223) = 1;
              }

              else
              {
                LODWORD(v223) = sub_1D72646CC();
              }
            }

            else
            {
              LODWORD(v223) = 0;
            }

            v242 = sub_1D6C7353C(a2, v247);
            v171 = [v158 debugFields];
            v172 = [v171 scoringAssetsIdentifier];

            v173 = v236;
            LODWORD(v225) = v163;
            if (v172)
            {
              v247 = sub_1D726207C();
              v243 = v174;
            }

            else
            {
              v247 = 0;
              v243 = 0;
            }

            v175 = [a2 sourceChannelID];
            LODWORD(v222) = [v173 hasAutoFavoriteSubscriptionForTagID_];

            v176 = [a2 sourceChannelID];
            LODWORD(v221) = [v173 hasSubscriptionToTagID_];

            v177 = v238;
            if (v238)
            {

              v178 = sub_1D726203C();
            }

            else
            {
              v178 = 0;
            }

            v179 = [v173 hasAutoFavoriteSubscriptionForTagID_];

            if (v177)
            {
              v180 = sub_1D726203C();
            }

            else
            {
              v180 = 0;
            }

            memcpy(v245 + 7, v246, 0x198uLL);
            v181 = v224 & 1;
            v182 = v223 & 1;
            v183 = v236;
            v184 = [v236 hasSubscriptionToTagID_];

            v185 = v194[0];
            sub_1D5D655CC(v24, v194[0], type metadata accessor for DebugInspectionArticleData);
            v186 = type metadata accessor for DebugInspectionHeadline(0);
            v187 = v185 + *(v186 + 20);
            *v187 = ObjectType;
            v188 = v233;
            *(v187 + 8) = v234;
            *(v187 + 16) = v188;
            v189 = v231;
            *(v187 + 24) = v232;
            *(v187 + 32) = v189;
            *(v187 + 40) = v230;
            *(v187 + 48) = v229;
            result = memcpy((v187 + 49), v245, 0x19FuLL);
            v190 = v228;
            *(v187 + 464) = v227;
            *(v187 + 472) = v190;
            v191 = v226;
            *(v187 + 480) = v241;
            *(v187 + 488) = v191;
            *(v187 + 496) = v225;
            *(v187 + 497) = v181;
            *(v187 + 498) = v182;
            v192 = v247;
            *(v187 + 504) = v242;
            *(v187 + 512) = v192;
            *(v187 + 520) = v243;
            v193 = (v185 + *(v186 + 24));
            *v193 = v222;
            v193[1] = v221;
            v193[2] = v179;
            v193[3] = v184;
            return result;
          }
        }

        v228 = 0xE700000000000000;
        v159 = 0x746C7561666544;
        goto LABEL_132;
      }

      __break(1u);
LABEL_155:
      ;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}

id sub_1D6C724E0(void *a1)
{
  result = [a1 scoreProfile];
  if (!result)
  {
    if (qword_1EC87DC18 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C384A0();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D7279970;
    v4 = [a1 articleID];
    v5 = sub_1D726207C();
    v7 = v6;

    v8 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1D5B7E2C0();
    *(v3 + 64) = v9;
    *(v3 + 32) = v5;
    *(v3 + 40) = v7;
    sub_1D6C78BE4(0, &qword_1EDF43BE0, v8, MEMORY[0x1E69E6720]);

    v10 = sub_1D72620FC();
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    *(v3 + 72) = v10;
    *(v3 + 80) = v11;

    v12 = sub_1D72620FC();
    *(v3 + 136) = v8;
    *(v3 + 144) = v9;
    *(v3 + 112) = v12;
    *(v3 + 120) = v13;
    sub_1D725C30C();

    sub_1D6C78BE4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D72816C0;
    *(v14 + 32) = a1;
    sub_1D5B5534C(0, &qword_1EDF3C720);
    swift_unknownObjectRetain();
    v15 = sub_1D726265C();

    FCAssignPersonalizationScoresToHeadlines();

    return sub_1D6C724E0(a1);
  }

  return result;
}

id sub_1D6C72734(void *a1, uint64_t a2)
{
  if (![a1 isPaid])
  {
    goto LABEL_41;
  }

  result = [*(v2 + 24) paidAccessChecker];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [a1 isPaid];
  if ([a1 respondsToSelector_])
  {
    v8 = [a1 isBundlePaid];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 sourceChannel];
  if (v9)
  {
    v10 = [v9 identifier];
    swift_unknownObjectRelease();
    v11 = sub_1D726207C();
    v13 = v12;

    if (v7)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v13 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  v14 = [v6 purchaseProvider];
  if (v13)
  {
    v15 = [v14 purchasedTagIDs];
    v16 = sub_1D7262B0C();

    LOBYTE(v15) = sub_1D5BE240C(v11, v13, v16);

    swift_unknownObjectRelease();
    if ((v15 & 1) == 0)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_14:
    swift_unknownObjectRelease();

    v17 = 1;
    goto LABEL_42;
  }

  swift_unknownObjectRelease();
  if (!v8)
  {
LABEL_19:
    swift_unknownObjectRelease();

    goto LABEL_41;
  }

LABEL_16:
  if (!v13)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v18 = [objc_msgSend(v6 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v18, v18 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  aBlock = v45;
  v48 = v46;
  v19 = MEMORY[0x1E69E7CA0];
  if (!*(&v46 + 1))
  {
    sub_1D5B88D00(&aBlock, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_26;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v20 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v20 = v44;
  v21 = [v44 integerValue];
  if (v21 == -1)
  {

    goto LABEL_39;
  }

  v22 = v21;
LABEL_27:
  if (objc_getAssociatedObject(v18, ~v22))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  aBlock = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    sub_1D5B88D00(&aBlock, &qword_1EDF43B70, v19 + 8);
LABEL_35:

    if (v22)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v23 = v44;
  v24 = [v23 integerValue];

  if (((v24 ^ v22) & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_39:
  v25 = [objc_msgSend(v6 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v26 = [v25 bundleChannelIDs];

  v27 = sub_1D726203C();
  LOBYTE(v25) = [v26 containsObject_];

  swift_unknownObjectRelease();
  if (v25)
  {
    v17 = 1;
    goto LABEL_42;
  }

LABEL_41:
  v17 = 0;
LABEL_42:
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x1E69E7CC8];
  v29 = [a1 globalCohorts];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 cohortWithPreferredType_];

    if (v31)
    {
      sub_1D6D61BBC(v31, 42, 0xE100000000000000);
    }
  }

  v32 = [a1 publisherID];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D726207C();
    v36 = v35;

    v37 = [a1 publisherCohorts];
    if (v37 && (v38 = v37, v39 = [v37 cohortWithPreferredType_], v38, v39))
    {
      sub_1D6D61BBC(v39, v34, v36);
    }

    else
    {
    }
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v17;
  *(v40 + 24) = v28;
  v49 = sub_1D6C785D4;
  v50 = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v48 = sub_1D6C78D9C;
  *(&v48 + 1) = &block_descriptor_58_0;
  v41 = _Block_copy(&aBlock);

  [a1 enumerateTopicCohortsWithBlock_];
  _Block_release(v41);
  swift_beginAccess();

  v43 = sub_1D6C766F8(v42, a2, &selRef_clicks, &selRef_rawClicks);

  return v43;
}

uint64_t sub_1D6C72DD4(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = sub_1D6C724E0(a1);
  v4 = [v36 debugFields];
  v5 = [v4 contentTriggerScores];

  sub_1D5B5A498(0, &qword_1EDF1A660);
  v6 = sub_1D7261D3C();

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  while (v9)
  {
    v13 = v9;
LABEL_10:
    v9 = (v13 - 1) & v13;
    if (*(a3 + 16))
    {
      v15 = __clz(__rbit64(v13)) | (v12 << 6);
      v16 = (*(v6 + 48) + 16 * v15);
      v17 = *(*(v6 + 56) + 8 * v15);
      v19 = *v16;
      v18 = v16[1];

      v20 = v17;
      v21 = sub_1D5B69D90(v19, v18);
      if (v22)
      {
        v23 = *(*(a3 + 56) + 16 * v21);
        swift_unknownObjectRetain();
        if (sub_1D6C77968(v23, a2))
        {
          sub_1D6C78BE4(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();
          v24 = sub_1D7261F3C();
          v33 = v25;
          v34 = v24;
        }

        else
        {
          swift_getObjectType();
          sub_1D6C78574();
          v26 = sub_1D72620FC();
          v33 = v27;
          v34 = v26;
        }

        [v20 doubleValue];
        v29 = v28;

        swift_unknownObjectRelease();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D6996348(0, *(v37 + 16) + 1, 1, v37);
          v37 = result;
        }

        v31 = *(v37 + 16);
        v30 = *(v37 + 24);
        if (v31 >= v30 >> 1)
        {
          result = sub_1D6996348((v30 > 1), v31 + 1, 1, v37);
          v37 = result;
        }

        *(v37 + 16) = v31 + 1;
        v32 = v37 + 48 * v31;
        *(v32 + 32) = v19;
        *(v32 + 40) = v18;
        *(v32 + 48) = v34;
        *(v32 + 56) = v33;
        *(v32 + 64) = v29;
        *(v32 + 72) = 0;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return v37;
    }

    v13 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6C73118(void *a1, uint64_t a2)
{
  v37 = sub_1D6C724E0(a1);
  v3 = [v37 debugFields];
  v4 = [v3 nicheContentScores];

  sub_1D5B5A498(0, &qword_1EDF1A660);
  v5 = sub_1D7261D3C();

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (*(a2 + 16))
    {
      v14 = __clz(__rbit64(v12)) | (v10 << 6);
      v15 = (*(v5 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v5 + 56) + 8 * v14);

      v19 = sub_1D5B69D90(v16, v17);
      if (v20)
      {
        v36 = *(*(a2 + 56) + 8 * v19);
        v21 = [swift_unknownObjectRetain() identifier];
        v22 = sub_1D726207C();
        v34 = v23;
        v35 = v22;

        v24 = [v36 name];
        v25 = sub_1D726207C();
        v32 = v26;
        v33 = v25;

        [v18 doubleValue];
        v28 = v27;
        swift_unknownObjectRelease();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D6996348(0, *(v11 + 2) + 1, 1, v11);
        }

        v30 = *(v11 + 2);
        v29 = *(v11 + 3);
        if (v30 >= v29 >> 1)
        {
          v11 = sub_1D6996348((v29 > 1), v30 + 1, 1, v11);
        }

        *(v11 + 2) = v30 + 1;
        v31 = &v11[48 * v30];
        *(v31 + 4) = v35;
        *(v31 + 5) = v34;
        *(v31 + 6) = v33;
        *(v31 + 7) = v32;
        *(v31 + 8) = v28;
        v31[72] = 0;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return;
    }

    v12 = *(v5 + 64 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D6C733E4(void *a1, void *a2)
{
  v3 = [a1 surfacedByBinID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D726207C();
    v7 = v6;

    if (a2)
    {
      v8 = [a2 globalFeedIDForFreeUsers];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1D726207C();
        v12 = v11;

        if (v5 == v10 && v7 == v12)
        {
          goto LABEL_14;
        }

        v14 = sub_1D72646CC();

        if (v14)
        {
          v15 = 1;
LABEL_18:

          return v15 & 1;
        }
      }

      v16 = [a2 globalFeedIDForPaidUsers];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1D726207C();
        v20 = v19;

        if (v5 != v18 || v7 != v20)
        {
          v15 = sub_1D72646CC();
          goto LABEL_17;
        }

LABEL_14:
        v15 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    v15 = 0;
    goto LABEL_18;
  }

  v15 = 0;
  return v15 & 1;
}

char *sub_1D6C7353C(void *a1, uint64_t a2)
{
  v3 = sub_1D6C724E0(a1);
  v4 = [v3 cohortMemberships];
  sub_1D5B5A498(0, &qword_1EC894390);
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
LABEL_25:
    v36 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_1D7263BFC();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v34 = v3;
      v35 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v3 = v7;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1DA6FB460](v3, v5);
          }

          else
          {
            if (v3 >= *(v36 + 16))
            {
              goto LABEL_24;
            }

            v8 = *(v5 + 8 * v3 + 32);
          }

          v9 = v8;
          v7 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          result = [v8 tagID];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v11 = result;
          v12 = sub_1D726207C();
          v14 = v13;

          if (*(a2 + 16))
          {
            break;
          }

LABEL_6:

          ++v3;
          if (v7 == v6)
          {
            v3 = v34;
            goto LABEL_27;
          }
        }

        v15 = sub_1D5B69D90(v12, v14);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          goto LABEL_6;
        }

        v18 = *(*(a2 + 56) + 8 * v15);
        v19 = [swift_unknownObjectRetain() identifier];
        v20 = sub_1D726207C();
        v32 = v21;
        v33 = v20;

        v22 = [v18 name];
        v23 = sub_1D726207C();
        v25 = v24;

        [v9 score];
        v27 = v26;
        swift_unknownObjectRelease();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1D6996348(0, *(v35 + 2) + 1, 1, v35);
        }

        v3 = v34;
        v30 = *(v35 + 2);
        v29 = *(v35 + 3);
        if (v30 >= v29 >> 1)
        {
          v35 = sub_1D6996348((v29 > 1), v30 + 1, 1, v35);
        }

        *(v35 + 2) = v30 + 1;
        v31 = &v35[48 * v30];
        *(v31 + 4) = v33;
        *(v31 + 5) = v32;
        *(v31 + 6) = v23;
        *(v31 + 7) = v25;
        *(v31 + 8) = v27;
        v31[72] = 0;
        if (v7 == v6)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v35;
}

uint64_t sub_1D6C7381C(void *a1, uint64_t a2)
{
  v4 = [a1 topicIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D726267C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1D5F64B20(v6);

  sub_1D5BC66DC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v9 = [a1 publisherID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D726207C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v32[0] = v7;
  sub_1D6988AF8(inited);
  v14 = v7;
  sub_1D5B68374(a2 + 40, v32);
  v15 = v33;
  v16 = v34;
  result = __swift_project_boxed_opaque_existential_1(v32, v33);
  v18 = result;
  v19 = 0;
  v20 = *(v14 + 16);
  v21 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v22 = 16 * v19 + 40;
  while (1)
  {
    if (v20 == v19)
    {

      v29 = TagServiceType.fetchTags(for:qualityOfService:)(v21, 25, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(v32);
      return v29;
    }

    if (v19 >= *(v14 + 16))
    {
      break;
    }

    ++v19;
    v23 = v22 + 16;
    v24 = *(v14 + v22);
    v22 += 16;
    if (v24)
    {
      v31 = v16;
      v35 = v15;
      v25 = *(v14 + v23 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((result & 1) == 0)
      {
        result = sub_1D5B858EC(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1D5B858EC((v26 > 1), v27 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v27 + 1;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v15 = v35;
      v18 = v30;
      v16 = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C73A68(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
LABEL_27:
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_28:
    v23 = MEMORY[0x1E69D6B18];
    sub_1D6C78B24(0, &qword_1EDF3B940, sub_1D5C44E18, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v24 = sub_1D725BB1C();
    MEMORY[0x1EEE9AC00](v24, v25);
    sub_1D6C78B24(0, &qword_1EC8943A8, sub_1D6C764D4, v23);
    swift_allocObject();
    sub_1D725BBAC();
    v26 = sub_1D725BD9C();

    return v26;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_3:
  v3 = 0;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v30 = v1 & 0xC000000000000001;
  v4 = MEMORY[0x1E69E7CC8];
  v28 = v1;
  while (1)
  {
    if (v30)
    {
      v5 = MEMORY[0x1DA6FB460](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 >= *(v29 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(v1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v31 = v6;
    v7 = [v5 identifier];
    v1 = sub_1D726207C();
    v9 = v8;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1D5B69D90(v1, v9);
    v13 = v4[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_25;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D6D7D8F8();
      if (v16)
      {
LABEL_4:

        *(v4[7] + 8 * v12) = v5;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

LABEL_16:
    v4[(v12 >> 6) + 8] |= 1 << v12;
    v19 = (v4[6] + 16 * v12);
    *v19 = v1;
    v19[1] = v9;
    *(v4[7] + 8 * v12) = v5;
    swift_unknownObjectRelease();
    v20 = v4[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v4[2] = v22;
LABEL_5:
    ++v3;
    v1 = v28;
    if (v31 == v2)
    {
      goto LABEL_28;
    }
  }

  sub_1D6D6630C(v15, isUniquelyReferenced_nonNull_native);
  v17 = sub_1D5B69D90(v1, v9);
  if ((v16 & 1) == (v18 & 1))
  {
    v12 = v17;
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_1D726493C();
  __break(1u);
  return result;
}

id sub_1D6C73DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a1;
  v94 = a2;
  sub_1D6C78B24(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v14, v15).n128_u64[0];
  v18 = &v76 - v17;
  v85 = [a3 identifier];
  v19 = sub_1D726207C();
  v90 = v20;
  v91 = v19;
  v84 = [a3 title];
  v21 = sub_1D726207C();
  v88 = v22;
  v89 = v21;
  v92 = a4;
  [a4 agedPersonalizationScore];
  v24 = v23;
  v25 = &off_1E84D3000;
  v26 = [objc_msgSend(a3 sourceChannel)];
  swift_unknownObjectRelease();
  v83 = v26;
  v27 = sub_1D726207C();
  v86 = v28;
  v87 = v27;
  v29 = [a3 publishDate];
  if (v29)
  {
    v30 = v29;
    sub_1D72588BC();

    v31 = sub_1D725891C();
    (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
  }

  else
  {
    v31 = sub_1D725891C();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  }

  sub_1D6C771C8(v13, v18, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D725891C();
  v32 = *(v31 - 8);
  v79 = (*(v32 + 48))(v18, 1, v31);
  if (v79 == 1)
  {
    sub_1D6C77248(v18, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v33 = 0;
  }

  else
  {
    sub_1D725889C();
    v33 = v34;
    (*(v32 + 8))(v18, v31);
  }

  v82 = [a3 halfLife];
  v35 = [objc_msgSend(a3 sourceChannel)];
  swift_unknownObjectRelease();
  v78 = v35;
  v36 = sub_1D726207C();
  v80 = v37;
  v81 = v36;
  v38 = *(a5 + 24);
  v95 = a5;
  v96 = v38;
  result = [v38 paidAccessChecker];
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v40 = result;
  v41 = [a3 isPaid];
  v42 = [a3 isBundlePaid];
  v43 = [objc_msgSend(a3 sourceChannel)];
  swift_unknownObjectRelease();
  v44 = sub_1D726207C();
  v46 = v45;

  v77 = v44;
  if (v41)
  {
    v47 = [objc_msgSend(v40 purchaseProvider)];
    v48 = sub_1D7262B0C();

    LOBYTE(v47) = sub_1D5BE240C(v44, v46, v48);

    swift_unknownObjectRelease();
    if (v47)
    {

      swift_unknownObjectRelease();
      LODWORD(v77) = 1;
      v25 = &off_1E84D3000;
      goto LABEL_37;
    }

    v25 = &off_1E84D3000;
    if (!v42)
    {
      goto LABEL_32;
    }
  }

  else if ((v42 & 1) == 0)
  {

    swift_unknownObjectRelease();
LABEL_35:
    LODWORD(v77) = 1;
    goto LABEL_37;
  }

  v49 = [objc_msgSend(v40 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v49, v49 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v98, 0, 32);
  }

  v99[0] = v98[0];
  v99[1] = v98[1];
  v50 = MEMORY[0x1E69E7CA0];
  if (!*(&v98[1] + 1))
  {
    sub_1D5B88D00(v99, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_22;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v51 = 0;
    v53 = 0;
    goto LABEL_23;
  }

  v51 = v97;
  v52 = [v97 integerValue];
  if (v52 == -1)
  {

    v25 = &off_1E84D3000;
    goto LABEL_34;
  }

  v53 = v52;
LABEL_23:
  if (objc_getAssociatedObject(v49, ~v53))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v98, 0, 32);
  }

  v99[0] = v98[0];
  v99[1] = v98[1];
  if (!*(&v98[1] + 1))
  {
    sub_1D5B88D00(v99, &qword_1EDF43B70, v50 + 8);
LABEL_31:

    v25 = &off_1E84D3000;
    if (v53)
    {
      goto LABEL_34;
    }

LABEL_32:

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v54 = v97;
  v55 = [v54 integerValue];

  v25 = &off_1E84D3000;
  if (((v55 ^ v53) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v56 = [objc_msgSend(v40 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v57 = [v56 bundleChannelIDs];

  v58 = sub_1D726203C();
  v59 = [v57 containsObject_];

  swift_unknownObjectRelease();
  if (v59)
  {
    goto LABEL_35;
  }

LABEL_36:
  LODWORD(v77) = 0;
LABEL_37:
  v60 = v96;
  if ([a3 isPaid])
  {
    v61 = 1;
  }

  else
  {
    v61 = [a3 isBundlePaid];
  }

  result = [v60 paidAccessChecker];
  if (!result)
  {
    goto LABEL_44;
  }

  v62 = [result canGetBundleSubscriptionToChannel_];
  swift_unknownObjectRelease();
  result = [v60 paidAccessChecker];
  if (result)
  {
    v63 = result;
    v64 = v25;
    v65 = v79 == 1;

    swift_unknownObjectRelease();
    LOBYTE(v64) = [v63 canGetSubscriptionToChannel_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v66 = v92;
    v67 = v92;
    sub_1D5F3CA00(v66, v98);
    v68 = a3;
    v69 = v93;
    v70 = sub_1D6C77670(v68, v93);
    v71 = sub_1D6C789FC(v69, v94, v95, sub_1D6C78D30);
    LOBYTE(v97) = v65;
    memcpy(v99 + 4, v98, 0x198uLL);
    v72 = v90;
    *a6 = v91;
    *(a6 + 8) = v72;
    v73 = v88;
    *(a6 + 16) = v89;
    *(a6 + 24) = v73;
    *(a6 + 32) = v24;
    v74 = v86;
    *(a6 + 40) = v87;
    *(a6 + 48) = v74;
    *(a6 + 56) = v33;
    *(a6 + 64) = v97;
    v75 = v81;
    *(a6 + 72) = v82;
    *(a6 + 80) = v75;
    *(a6 + 88) = v80;
    *(a6 + 96) = v77;
    *(a6 + 97) = v61;
    *(a6 + 98) = v62;
    *(a6 + 99) = v64;
    result = memcpy((a6 + 100), v99, 0x19CuLL);
    *(a6 + 512) = v70;
    *(a6 + 520) = v71;
    return result;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D6C7474C(uint64_t a1, void *a2)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5C384A0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7270C10;
  v4 = [a2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v8 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v3 + 64) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v3 + 96) = v8;
  *(v3 + 104) = v9;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D6C748C8(uint64_t a1, uint64_t a2)
{
  sub_1D67F16E8(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C78B24(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for FeedWebEmbed();
  sub_1D6C786DC(a1 + *(v12 + 48), v11, qword_1EDF42030, type metadata accessor for FeedHeadline);
  v13 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_1D6C77248(v11, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v14 = type metadata accessor for DebugInspectionHeadline(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_1D6C78B24(0, &unk_1EC8943D8, sub_1D67F16E8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    v16 = *(v11 + 5);
    swift_unknownObjectRetain();
    v17 = sub_1D5BCA98C(v11, type metadata accessor for FeedHeadline);
    MEMORY[0x1EEE9AC00](v17, v18);
    v24[-2] = v16;
    v24[-1] = a2;
    sub_1D5C44878();
    sub_1D725BDCC();
    v24[1] = MEMORY[0x1E69E7CC8];
    v19 = sub_1D725B92C();
    sub_1D5C44E18();
    sub_1D6C7626C();
    sub_1D725BBEC();

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = v16;
    swift_unknownObjectRetain();

    v21 = sub_1D725B92C();
    type metadata accessor for DebugInspectionHeadline(0);
    sub_1D725BA7C();

    v22 = sub_1D725B92C();
    v23 = sub_1D725BA8C();
    swift_unknownObjectRelease();

    return v23;
  }
}

uint64_t sub_1D6C74C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6C766E0(a1, a2);
  v3 = type metadata accessor for DebugInspectionHeadline(0);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_1D6C74D00(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for DebugInspectionWebEmbed();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C7875C();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E6968FB0];
  sub_1D6C78B24(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v40 = &v39 - v20;
  sub_1D67F16E8(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v24;
  sub_1D5BC89FC(a1, v12, sub_1D6C7875C);
  v25 = *(v9 + 56);
  v26 = *(v9 + 72);

  sub_1D5D655CC(v12, v24, sub_1D67F16E8);
  v27 = v40;
  sub_1D6C771C8(&v12[v25], v40, &qword_1EDF45B40, v13);
  sub_1D6C771C8(&v12[v26], v17, &qword_1EDF45B40, v13);
  v28 = v44;
  v29 = *(v44 + 40);
  v42 = *(v44 + 48);
  v43 = v29;
  v30 = type metadata accessor for FeedWebEmbed();
  v31 = *(v30 + 32);
  v32 = v4[7];
  v33 = sub_1D72585BC();
  (*(*(v33 - 8) + 16))(&v7[v32], v28 + v31, v33);
  sub_1D6C786DC(v27, &v7[v4[8]], &qword_1EDF45B40, v13);
  v34 = v17;
  sub_1D6C786DC(v17, &v7[v4[9]], &qword_1EDF45B40, v13);
  v35 = v41;
  sub_1D5BC89FC(v41, &v7[v4[10]], sub_1D67F16E8);
  sub_1D6C786DC(v28 + *(v30 + 52), &v7[v4[11]], qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  v36 = v42;
  *v7 = v43;
  *(v7 + 1) = v36;
  sub_1D6C78B24(0, &unk_1EC8943C8, type metadata accessor for DebugInspectionWebEmbed, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  v37 = sub_1D725BB1C();
  sub_1D6C77248(v34, &qword_1EDF45B40, v13);
  sub_1D6C77248(v27, &qword_1EDF45B40, v13);
  sub_1D5BCA98C(v35, sub_1D67F16E8);
  return v37;
}

uint64_t sub_1D6C750E8(id *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  result = [*a1 isHidden];
  if (result)
  {
    return result;
  }

  v54 = a2;
  result = [v5 tagID];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 = result;
  v8 = sub_1D726207C();
  v10 = v9;

  result = [v5 tagID];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = result;
  v12 = sub_1D726207C();
  v14 = v13;

  if (*(a3 + 16))
  {
    v15 = sub_1D5B69D90(v12, v14);
    v17 = v16;

    if (v17)
    {
      v18 = [*(*(a3 + 56) + 8 * v15) name];
      v19 = sub_1D726207C();
      v51 = v20;
      v52 = v19;

      goto LABEL_9;
    }
  }

  else
  {
  }

  v51 = 0;
  v52 = 0;
LABEL_9:
  v21 = [v5 hasFlowRate];
  v22 = 0;
  v23 = 0;
  if (v21)
  {
    [v5 flowRate];
    v23 = v24;
  }

  v53 = v10;
  v25 = [v5 hasSubscriptionRate];
  if (v25)
  {
    [v5 subscriptionRate];
    v22 = v26;
  }

  v27 = [v5 hasQuality];
  v28 = 0;
  if (v27)
  {
    [v5 quality];
    v28 = v29;
  }

  v30 = [v5 hasOntologyLevel];
  if (v30)
  {
    v50 = [v5 ontologyLevel];
  }

  else
  {
    v50 = 0;
  }

  v31 = [v5 hasContentAndRelevanceInfo];
  if (v31)
  {
    result = [v5 contentAndRelevanceInfo];
    if (result)
    {
      v32 = result;
      v49 = [result contentRating];

      goto LABEL_22;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v49 = 0;
LABEL_22:
  v33 = [v5 hasContentAndRelevanceInfo];
  v34 = v33;
  if (!v33)
  {
    v48 = 0;
    goto LABEL_26;
  }

  result = [v5 contentAndRelevanceInfo];
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v35 = result;
  v48 = [result relevanceRating];

LABEL_26:
  v47 = [v5 isManagedTopic];
  v46 = [v5 isManagedTopicWinner];
  v45 = [v5 isEligibleForGrouping];
  v44 = [v5 isEligibleForGroupingIfFavorited];
  v43 = [v5 isEligibleForGroupingIfAutofavorited];
  v60[0] = v25 ^ 1;
  v59[0] = v27 ^ 1;
  LOBYTE(v57) = v30 ^ 1;
  LOBYTE(v55) = v31 ^ 1;
  v36 = v25 ^ 1;
  v37 = v27 ^ 1;
  v38 = v31 ^ 1;
  v39 = *v54;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v54 = v39;
  if ((result & 1) == 0)
  {
    result = sub_1D699620C(0, *(v39 + 16) + 1, 1, v39);
    v39 = result;
    *v54 = result;
  }

  v41 = *(v39 + 16);
  v40 = *(v39 + 24);
  if (v41 >= v40 >> 1)
  {
    result = sub_1D699620C((v40 > 1), v41 + 1, 1, v39);
    v39 = result;
    *v54 = result;
  }

  *(v39 + 16) = v41 + 1;
  v42 = v39 + 112 * v41;
  *(v42 + 32) = v8;
  *(v42 + 40) = v53;
  *(v42 + 48) = v52;
  *(v42 + 56) = v51;
  *(v42 + 64) = v23;
  *(v42 + 72) = v21 ^ 1;
  v61[0] = v21 ^ 1;
  *(v42 + 73) = *v61;
  *(v42 + 76) = *&v61[3];
  *(v42 + 80) = v22;
  *(v42 + 88) = v36;
  *(v42 + 92) = *&v60[3];
  *(v42 + 89) = *v60;
  *(v42 + 96) = v28;
  *(v42 + 104) = v37;
  *(v42 + 105) = *v59;
  *(v42 + 108) = *&v59[3];
  *(v42 + 112) = v50;
  *(v42 + 120) = v57;
  *(v42 + 121) = v57;
  *(v42 + 123) = v58;
  *(v42 + 124) = v49;
  *(v42 + 128) = v38;
  *(v42 + 131) = v56;
  *(v42 + 129) = v55;
  *(v42 + 132) = v48;
  *(v42 + 136) = v34 ^ 1;
  *(v42 + 137) = v47;
  *(v42 + 138) = v46;
  *(v42 + 139) = v45;
  *(v42 + 140) = v44;
  *(v42 + 141) = v43;
  return result;
}

void sub_1D6C75590(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v6 = [a3 cohortWithPreferredType_];
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();

    v8 = v7;
    sub_1D6D61BBC(v7, a1, a2);
    swift_endAccess();
  }
}

uint64_t sub_1D6C75638(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();

  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1D6D7BFDC(v8, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v11;
  return swift_endAccess();
}

void sub_1D6C756E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1D726207C();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, v8);
}

uint64_t sub_1D6C7577C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X3>, SEL *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = *(a2 + 16);

  if (v12)
  {
    v13 = v11;
    v14 = sub_1D5B69D90(v10, v9);
    if (v15)
    {
      v16 = *(*(a2 + 56) + 8 * v14);
      v17 = [swift_unknownObjectRetain() name];
      v18 = sub_1D726207C();
      v37 = v19;
      v38 = v18;

      v36 = a4;
      v20 = [v16 identifier];
      v10 = sub_1D726207C();
      v22 = v21;

      v9 = v22;
      goto LABEL_7;
    }
  }

  else
  {

    v23 = v11;
  }

  v37 = v9;
  v38 = v10;
LABEL_7:
  [v11 impressions];
  v24 = 0.0;
  if (v25 > 0.0)
  {
    [v11 *a3];
    v27 = v26;
    [v11 impressions];
    v24 = v27 / v28;
  }

  [v11 *a4];
  v30 = v29;
  [v11 *a3];
  v32 = v31;
  [v11 impressions];
  v34 = v33;

  result = swift_unknownObjectRelease();
  *a5 = v38;
  *(a5 + 8) = v37;
  *(a5 + 16) = 0;
  *(a5 + 24) = v10;
  *(a5 + 32) = v9;
  *(a5 + 40) = v24;
  *(a5 + 48) = v30;
  *(a5 + 56) = 0;
  *(a5 + 64) = v32;
  *(a5 + 72) = v34;
  *(a5 + 80) = 0;
  *(a5 + 88) = 1;
  return result;
}

uint64_t sub_1D6C75964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 32);
  if ([v11 respondsToSelector_])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D5B7E910;
    *(v12 + 24) = v10;
    v15[4] = sub_1D6C785E8;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1D6C75AF8;
    v15[3] = &block_descriptor_67_0;
    v13 = _Block_copy(v15);

    swift_unknownObjectRetain();

    [v11 fetchAggregateMapForPersonalizingItem:a6 completion:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1D6C75AF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D5B5A498(0, &unk_1EC894320);
  sub_1D5B5534C(0, &qword_1EC8956D0);
  sub_1D6C785F0();
  v2 = sub_1D7261D3C();

  v1(v2);
}

uint64_t sub_1D6C75BB0(unint64_t a1, void (*a2)(void *))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_1D7263FEC() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v44 = v5;
  v45 = v2;
  v43 = v10;
  while ((v5 & 0x8000000000000000) != 0)
  {
    if (!sub_1D726401C() || (sub_1D5B5A498(0, &unk_1EC894320), swift_dynamicCast(), v20 = v47, sub_1D5B5534C(0, &qword_1EC8956D0), swift_dynamicCast(), v19 = v47, v16 = v9, v17 = v4, !v47))
    {
LABEL_30:
      sub_1D5B87E38();
      a2(v11);
    }

LABEL_19:
    v46 = v17;
    v21 = v20;
    v22 = [swift_unknownObjectRetain() featureKey];
    v23 = sub_1D726207C();
    v25 = v24;

    v26 = v21;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v11;
    v29 = sub_1D5B69D90(v23, v25);
    v30 = v11[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_32;
    }

    v33 = v28;
    if (v11[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v28)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1D6D85FFC();
        if (v33)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1D6D74A70(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1D5B69D90(v23, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_34;
      }

      v29 = v34;
      if (v33)
      {
LABEL_8:

        v12 = v11[7] + 16 * v29;
        v13 = *v12;
        *v12 = v26;
        *(v12 + 8) = v19;

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }
    }

    v11[(v29 >> 6) + 8] |= 1 << v29;
    v36 = (v11[6] + 16 * v29);
    *v36 = v23;
    v36[1] = v25;
    v37 = (v11[7] + 16 * v29);
    *v37 = v26;
    v37[1] = v19;

    swift_unknownObjectRelease_n();
    v38 = v11[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_33;
    }

    v11[2] = v40;
LABEL_9:
    v9 = v16;
    v2 = v45;
    v4 = v46;
    v10 = v43;
    v5 = v44;
  }

  v14 = v9;
  v15 = v4;
  v16 = v9;
  if (v4)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v5 + 56) + v18);
    v20 = *(*(v5 + 48) + v18);
    swift_unknownObjectRetain();
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_30;
    }

    v15 = *(v2 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D6C75F6C(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  swift_getObjectType();
  sub_1D6C78574();
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = sub_1D72620FC();
  v32 = v14;
  v33 = v13;
  v31 = sub_1D6C77968(v12, a4);
  v15 = [v12 personalizationIdentifier];
  v16 = sub_1D726207C();
  v18 = v17;
  v19 = [objc_msgSend(*(a3 + 24) appConfigurationManager)];
  swift_unknownObjectRelease();
  v20 = [v19 personalizationTreatment];
  v21 = [v20 defaultScoringConfig];

  if (v21)
  {

    swift_unknownObjectRelease();
    [v21 decayFactor];
    v23 = v22;

    [a2 personalizationValueWithBaseline:a5 decayRate:v23];
    v25 = v24;
    [a2 clicks];
    v27 = v26;
    [a2 impressions];
    v29 = v28;
    v30 = [a2 eventCount];
    swift_unknownObjectRelease();

    *a6 = v33;
    *(a6 + 8) = v32;
    *(a6 + 16) = v31;
    *(a6 + 24) = v16;
    *(a6 + 32) = v18;
    *(a6 + 40) = v25;
    *(a6 + 48) = 0;
    *(a6 + 56) = 1;
    *(a6 + 64) = v27;
    *(a6 + 72) = v29;
    *(a6 + 80) = v30;
    *(a6 + 88) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6C76184()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  return v0;
}

uint64_t sub_1D6C761F8()
{
  sub_1D6C76184();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6C7626C()
{
  result = qword_1EDF1AEA0;
  if (!qword_1EDF1AEA0)
  {
    sub_1D5C44878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AEA0);
  }

  return result;
}

uint64_t sub_1D6C76300()
{
  sub_1D6C78B24(0, &qword_1EC8943A8, sub_1D6C764D4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6C764D4()
{
  if (!qword_1EC894310)
  {
    sub_1D6C7653C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894310);
    }
  }
}

void sub_1D6C7653C()
{
  if (!qword_1EC8956C0)
  {
    sub_1D5B5A498(255, &unk_1EC894320);
    sub_1D5B5534C(255, &qword_1EC8956D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8956C0);
    }
  }
}

uint64_t sub_1D6C766F8(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1D699A05C(0, v5, 0);
  v6 = v38;
  v28 = a1 + 64;
  v8 = sub_1D7263B7C();
  if (v8 < 0 || (v9 = v8, v8 >= 1 << *(a1 + 32)))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v39 = *(a1 + 36);
    v10 = 1;
    while (1)
    {
      v11 = v9 >> 6;
      if ((*(v28 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        break;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v12 = (*(a1 + 48) + 16 * v9);
      v13 = v12[1];
      v14 = *(*(a1 + 56) + 8 * v9);
      v35[0] = *v12;
      v35[1] = v13;
      v35[2] = v14;

      v4 = v14;
      sub_1D6C7577C(v35, a2, a3, a4, v36);
      if (v29)
      {
        goto LABEL_31;
      }

      *&v34[9] = *(v37 + 9);
      v33 = v36[3];
      *v34 = v37[0];
      v31 = v36[1];
      v32 = v36[2];
      v30 = v36[0];
      v38 = v6;
      v4 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v4 >= v15 >> 1)
      {
        sub_1D699A05C((v15 > 1), v4 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v4 + 1;
      v16 = (v6 + 96 * v4);
      v16[2] = v30;
      v16[3] = v31;
      *(v16 + 105) = *&v34[9];
      v16[5] = v33;
      v16[6] = *v34;
      v16[4] = v32;
      v17 = 1 << *(a1 + 32);
      if (v9 >= v17)
      {
        goto LABEL_28;
      }

      v18 = *(v28 + 8 * v11);
      if ((v18 & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v19 = v18 & (-2 << (v9 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v4 = v11 << 6;
        v20 = v11 + 1;
        v21 = (a1 + 72 + 8 * v11);
        while (v20 < (v17 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v4 += 64;
          ++v20;
          if (v23)
          {
            sub_1D5C25E1C(v9, v39, 0);
            v9 = __clz(__rbit64(v22)) + v4;
            goto LABEL_20;
          }
        }

        sub_1D5C25E1C(v9, v39, 0);
        v9 = v17;
      }

LABEL_20:
      if (v10 == v5)
      {
        return v6;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        ++v10;
        if (v9 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:

  __break(1u);
  return result;
}

uint64_t sub_1D6C769EC(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, id, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D699A05C(0, v2, 0);
  v3 = v42;
  v5 = v4 + 64;
  result = sub_1D7263B7C();
  v7 = result;
  v8 = 0;
  v39 = *(v4 + 36);
  v33 = v4 + 72;
  v34 = v2;
  v35 = v4;
  v36 = v4 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v39 != *(v4 + 36))
    {
      goto LABEL_23;
    }

    v38 = v8;
    v11 = (*(v4 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v4 + 56) + 16 * v7;
    v15 = *v14;
    v16 = *(v14 + 8);

    v17 = v3;
    v18 = v15;
    swift_unknownObjectRetain();
    a2(v40, v12, v13, v18, v16);
    swift_unknownObjectRelease();

    v3 = v17;

    v42 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1D699A05C((v19 > 1), v20 + 1, 1);
      v3 = v42;
    }

    *(v3 + 16) = v20 + 1;
    v21 = (v3 + 96 * v20);
    v22 = v40[1];
    v21[2] = v40[0];
    v21[3] = v22;
    v23 = v40[2];
    v24 = v40[3];
    v25 = v41[0];
    *(v21 + 105) = *(v41 + 9);
    v21[5] = v24;
    v21[6] = v25;
    v21[4] = v23;
    v4 = v35;
    v5 = v36;
    v9 = 1 << *(v35 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v26 = *(v36 + 8 * v10);
    if ((v26 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v39 != *(v35 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v7 & 0x3F));
    if (v27)
    {
      v9 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v10 << 6;
      v29 = v10 + 1;
      v30 = (v33 + 8 * v10);
      while (v29 < (v9 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1D5C25E1C(v7, v39, 0);
          v9 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v7, v39, 0);
    }

LABEL_4:
    v8 = v38 + 1;
    v7 = v9;
    if (v38 + 1 == v34)
    {
      return v3;
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
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1D6C76CB4(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v4 = a1[4];
  sub_1D5B68374((a1 + 5), v19);
  sub_1D5B68374((a1 + 16), v18);
  v17[0] = a1[10];
  v6 = v5;
  swift_unknownObjectRetain();

  sub_1D6986C7C(a2);
  sub_1D6C78B24(0, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
  sub_1D6C78C34();
  v7 = sub_1D72623CC();

  v8 = a1[13];
  v9 = a1[14];
  v10 = a1[15];
  v11 = a1[11];
  v12 = a1[12];
  sub_1D5B68374((a1 + 21), v17);
  type metadata accessor for DebugInspector();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v6;
  v13[4] = v4;
  sub_1D5B68374(v19, (v13 + 5));
  sub_1D5B68374(v18, (v13 + 16));
  v13[12] = v12;
  v13[13] = v8;
  v13[14] = v9;
  v13[15] = v10;
  v13[10] = v7;
  v13[11] = v11;
  sub_1D5B68374(v17, (v13 + 21));

  v14 = v6;
  swift_unknownObjectRetain();

  sub_1D6C6DDB0();
  v15 = sub_1D725B92C();
  sub_1D725BB2C();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v13;
}

void sub_1D6C76EDC(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1D6C750E8(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D6C76FDC(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = [a1 globalConversionStats];
  if (v5)
  {
    sub_1D6D61CF4(v5, 42, 0xE100000000000000);
  }

  v6 = [a1 publisherID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D726207C();
    v10 = v9;

    v11 = [a1 publisherConversionStats];
    if (v11)
    {
      sub_1D6D61CF4(v11, v8, v10);
    }

    else
    {
    }
  }

  aBlock[4] = sub_1D6C785CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6C78D9C;
  aBlock[3] = &block_descriptor_89;
  v12 = _Block_copy(aBlock);

  [a1 enumerateTopicConversionStatsWithBlock_];
  _Block_release(v12);
  swift_beginAccess();

  v14 = sub_1D6C766F8(v13, a2, &selRef_conversions, &selRef_conversions);

  return v14;
}

uint64_t sub_1D6C771C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6C78B24(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C77248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C78B24(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1D6C772B8(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  v5 = [a1 publisherID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D726207C();
    v9 = v8;

    v10 = [a1 publisherTagMetadata];
    if (v10)
    {
      v11 = v10;
      if (*(a2 + 16) && (v12 = sub_1D5B69D90(v7, v9), (v13 & 1) != 0))
      {
        v14 = [*(*(a2 + 56) + 8 * v12) name];
        v15 = sub_1D726207C();
        v44 = v16;
        v45 = v15;
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      v17 = [v11 hasFlowRate];
      v18 = 0.0;
      v19 = 0.0;
      if (v17)
      {
        [v11 flowRate];
        v19 = v20;
      }

      v21 = [v11 hasSubscriptionRate];
      if (v21)
      {
        [v11 subscriptionRate];
        v18 = v22;
      }

      v46 = v7;
      v23 = [v11 hasQuality];
      v24 = 0.0;
      if (v23)
      {
        [v11 quality];
        v24 = v25;
      }

      v26 = [v11 hasContentAndRelevanceInfo];
      if (v26)
      {
        result = [v11 contentAndRelevanceInfo];
        if (!result)
        {
          __break(1u);
          goto LABEL_29;
        }

        v28 = result;
        HIDWORD(v41) = [result contentRating];
      }

      else
      {
        HIDWORD(v41) = 0;
      }

      v42 = v9;
      v43 = a2;
      v29 = [v11 hasContentAndRelevanceInfo];
      if (!v29)
      {
        LODWORD(v41) = 0;
        goto LABEL_22;
      }

      result = [v11 contentAndRelevanceInfo];
      if (result)
      {
        v30 = result;
        LODWORD(v41) = [result relevanceRating];

LABEL_22:
        v31 = v17 ^ 1;
        v32 = v21 ^ 1;
        v33 = v23 ^ 1;
        v34 = v26 ^ 1;
        v4 = sub_1D699620C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v36 = *(v4 + 2);
        v35 = *(v4 + 3);
        if (v36 >= v35 >> 1)
        {
          v4 = sub_1D699620C((v35 > 1), v36 + 1, 1, v4);
        }

        *(v4 + 2) = v36 + 1;
        v37 = &v4[112 * v36];
        *(v37 + 4) = v46;
        *(v37 + 5) = v42;
        *(v37 + 6) = v45;
        *(v37 + 7) = v44;
        *(v37 + 8) = v19;
        v37[72] = v31;
        *(v37 + 10) = v18;
        v37[88] = v32;
        *(v37 + 12) = v24;
        v37[104] = v33;
        *(v37 + 14) = 0;
        v37[120] = 1;
        *(v37 + 31) = HIDWORD(v41);
        v37[128] = v34;
        *(v37 + 33) = v41;
        v37[136] = v29 ^ 1;
        *(v37 + 137) = 0;
        v37[141] = 0;
        v47 = v4;
        a2 = v43;
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return result;
    }
  }

LABEL_25:
  v38 = [a1 topics];
  if (v38)
  {
    v39 = v38;
    sub_1D5B5A498(0, &unk_1EDF04550);
    v40 = sub_1D726267C();

    sub_1D6C76EDC(v40, &v47, a2);

    return v47;
  }

  return v4;
}

char *sub_1D6C77670(void *a1, uint64_t a2)
{
  v3 = [a1 topicIDs];
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    v6 = sub_1D726267C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = v4;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = (v6 + 40 + 16 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (*(a2 + 16))
      {
        break;
      }

LABEL_8:
      ++v11;
      v10 += 2;
      if (v7 == v11)
      {
        goto LABEL_17;
      }
    }

    v12 = *(v10 - 1);
    v13 = *v10;

    sub_1D5B69D90(v12, v13);
    if ((v14 & 1) == 0)
    {

      goto LABEL_8;
    }

    swift_unknownObjectRetain();

    MEMORY[0x1DA6F9CE0](v15);
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v8 = v11 + 1;
    sub_1D726278C();
    v9 = v4;
  }

  while (v7 - 1 != v11);
LABEL_17:

  if (v9 >> 62)
  {
LABEL_29:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_30;
    }

LABEL_19:
    result = sub_1D699A07C(0, v16 & ~(v16 >> 63), 0);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v19 = v4;
      v20 = v9;
      v34 = v9 & 0xC000000000000001;
      v21 = v9;
      do
      {
        if (v34)
        {
          v22 = MEMORY[0x1DA6FB460](v18, v20);
        }

        else
        {
          v22 = *(v20 + 8 * v18 + 32);
          swift_unknownObjectRetain();
        }

        v23 = [v22 identifier];
        v24 = sub_1D726207C();
        v26 = v25;

        v27 = [v22 name];
        v28 = sub_1D726207C();
        v30 = v29;

        swift_unknownObjectRelease();
        v32 = *(v19 + 16);
        v31 = *(v19 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D699A07C((v31 > 1), v32 + 1, 1);
        }

        ++v18;
        *(v19 + 16) = v32 + 1;
        v33 = (v19 + 32 * v32);
        v33[4] = v24;
        v33[5] = v26;
        v33[6] = v28;
        v33[7] = v30;
        v20 = v21;
      }

      while (v16 != v18);

      return v19;
    }

    __break(1u);
  }

  else
  {
    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_30:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id sub_1D6C77968(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = [v32 lengthID];
      v34 = sub_1D726207C();
      v36 = v35;

      v37 = v34 == 115 && v36 == 0xE100000000000000;
      if (v37 || (sub_1D72646CC() & 1) != 0)
      {

        return &unk_1F5119660;
      }

      else
      {
        v45 = v34 == 109 && v36 == 0xE100000000000000;
        if (v45 || (sub_1D72646CC() & 1) != 0)
        {

          return &unk_1F5119690;
        }

        else if (v34 == 108 && v36 == 0xE100000000000000)
        {

          return &unk_1F51196C0;
        }

        else
        {
          v56 = sub_1D72646CC();

          if (v56)
          {
            return &unk_1F51196C0;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        sub_1D6C78BE4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D7273AE0;
        [v39 groupType];
        result = NSStringFromFCFeedGroupType();
        if (result)
        {
          v41 = result;
          v42 = sub_1D726207C();
          v44 = v43;

          result = v40;
          *(v40 + 32) = v42;
          *(v40 + 40) = v44;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        result = [a1 tagID];
        if (result)
        {
          v46 = result;
          v47 = sub_1D726207C();
          v49 = v48;

          if (*(a2 + 16) && (sub_1D5B69D90(v47, v49), (v50 & 1) != 0))
          {

            sub_1D6C78BE4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1D7273AE0;
            v52 = [swift_unknownObjectRetain() name];
            v53 = sub_1D726207C();
            v55 = v54;

            *(v51 + 32) = v53;
            *(v51 + 40) = v55;
            swift_unknownObjectRelease();
            return v51;
          }

          else
          {
            sub_1D6C78BE4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            result = swift_allocObject();
            *(result + 1) = xmmword_1D7273AE0;
            *(result + 4) = v47;
            *(result + 5) = v49;
          }
        }
      }
    }

    return result;
  }

  v5 = v4;
  v6 = [v4 publisherTagID];
  v7 = sub_1D726207C();
  v9 = v8;

  if (!*(a2 + 16))
  {

    return 0;
  }

  v10 = sub_1D5B69D90(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(a2 + 56) + 8 * v10);
  swift_unknownObjectRetain();
  v14 = [v5 topicTagID];
  v15 = sub_1D726207C();
  v17 = v16;

  if (*(a2 + 16))
  {
    v18 = sub_1D5B69D90(v15, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(a2 + 56) + 8 * v18);
      sub_1D6C78BE4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7270C10;
      swift_unknownObjectRetain();
      v23 = [v13 name];
      v24 = sub_1D726207C();
      v26 = v25;

      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      v27 = [v21 name];
      v28 = sub_1D726207C();
      v30 = v29;

      *(v22 + 48) = v28;
      *(v22 + 56) = v30;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v22;
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1D6C77E6C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 debugFields];
    v3 = [v2 groupingReason];

    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v3 > 5)
      {
        if (v3 < 12)
        {
LABEL_8:

          return;
        }
      }

      else if (v3 >= 0)
      {
        goto LABEL_8;
      }

      sub_1D7263D4C();

      v4 = [v1 debugFields];
      [v4 groupingReason];

      v5 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v5);
    }
  }
}

unint64_t sub_1D6C78190(void *a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  v1 = a1;
  v2 = [v1 debugFields];
  v3 = [v2 scoringContext];

  result = 0x746C7561666544;
  switch(v3)
  {
    case 0uLL:
      return result;
    case 1uLL:
      result = 0x6546206369706F54;
      break;
    case 3uLL:
    case 0x17uLL:
    case 0x1FuLL:
      result = 0xD00000000000001BLL;
      break;
    case 4uLL:
      result = 0xD000000000000013;
      break;
    case 6uLL:
      result = 0xD00000000000001DLL;
      break;
    case 7uLL:
      result = 0xD000000000000019;
      break;
    case 8uLL:
    case 0xCuLL:
      result = 0xD000000000000018;
      break;
    case 9uLL:
    case 0x19uLL:
    case 0x1DuLL:
      result = 0xD00000000000001ALL;
      break;
    case 0xAuLL:
      result = 0x20666F2074736542;
      break;
    case 0xBuLL:
      result = 0x756F5920726F46;
      break;
    case 0xDuLL:
      result = 0x532074736574614CLL;
      break;
    case 0xEuLL:
      result = 0x654E206C61636F4CLL;
      break;
    case 0xFuLL:
      result = 0xD00000000000001DLL;
      break;
    case 0x10uLL:
      result = 0x6957207961646F54;
      break;
    case 0x11uLL:
      result = 0x6764695720676154;
      break;
    case 0x13uLL:
      result = 0xD00000000000001DLL;
      break;
    case 0x14uLL:
    case 0x20uLL:
      result = 0xD000000000000017;
      break;
    case 0x15uLL:
      result = 0xD00000000000001DLL;
      break;
    case 0x16uLL:
      result = 0x6867696C68676948;
      break;
    case 0x18uLL:
      result = 0x6465654620676154;
      break;
    case 0x1AuLL:
      result = 0x726F462065726F4DLL;
      break;
    case 0x1BuLL:
      result = 0xD00000000000001FLL;
      break;
    case 0x1CuLL:
      result = 0xD000000000000024;
      break;
    case 0x1EuLL:
      result = 0xD00000000000001DLL;
      break;
    case 0x21uLL:
      result = 0xD000000000000016;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

unint64_t sub_1D6C78574()
{
  result = qword_1EC894398;
  if (!qword_1EC894398)
  {
    sub_1D5B5A498(255, &unk_1EC894320);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC894398);
  }

  return result;
}

unint64_t sub_1D6C785F0()
{
  result = qword_1EC8943B0;
  if (!qword_1EC8943B0)
  {
    sub_1D5B5A498(255, &unk_1EC894320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8943B0);
  }

  return result;
}

uint64_t sub_1D6C786DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6C78B24(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6C7875C()
{
  if (!qword_1EC8943C0)
  {
    sub_1D67F16E8(255);
    sub_1D6C78B24(255, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    sub_1D5B5FBFC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC8943C0);
    }
  }
}

uint64_t objectdestroy_37Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D6C788F8()
{
  if (!qword_1EC8943E8)
  {
    sub_1D5C44E18();
    sub_1D6C764D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8943E8);
    }
  }
}

uint64_t sub_1D6C789FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, id, uint64_t))
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69B51E0]) init];
  v7 = [v6 personalizationIdentifier];
  v8 = sub_1D726207C();
  v10 = v9;

  if (*(a2 + 16))
  {
    sub_1D5B69D90(v8, v10);
    v12 = v11;

    if (v12)
    {
      v13 = swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = sub_1D6C769EC(a2, a4);

  swift_unknownObjectRelease();
  return v15;
}

void sub_1D6C78B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6C78BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6C78C34()
{
  result = qword_1EDF1B490;
  if (!qword_1EDF1B490)
  {
    sub_1D6C78B24(255, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B490);
  }

  return result;
}

size_t sub_1D6C78DBC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void))
{
  v351 = a8;
  v352 = a7;
  v355 = a6;
  v360 = a5;
  v361 = a4;
  v362 = a3;
  v369 = a2;
  v367 = a1;
  *&v349 = a10;
  v350 = a9;
  sub_1D5C2AF8C(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v363 = &v316 - v14;
  v365 = type metadata accessor for FormatCompilerOptions(0);
  v337 = *(v365 - 1);
  MEMORY[0x1EEE9AC00](v365, v15);
  v364 = (&v316 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v368 = &v316 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v322 = &v316 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v334 = (&v316 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v345 = &v316 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v344 = &v316 - v31;
  v354 = sub_1D725BD1C();
  v348 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354, v32);
  v343 = &v316 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v353 = &v316 - v36;
  v356 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v356, v37);
  v331 = (&v316 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v329 = &v316 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v333 = &v316 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v336 = (&v316 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v347 = &v316 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v366 = &v316 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v359 = &v316 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v358 = &v316 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v357 = &v316 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v342 = &v316 - v65;
  sub_1D6C7C75C(0, v66);
  v68 = v67;
  MEMORY[0x1EEE9AC00](v67, v69);
  v330 = &v316 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v328 = &v316 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v332 = &v316 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v335 = &v316 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v346 = &v316 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v341 = &v316 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v340 = &v316 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v316 - v91;
  MEMORY[0x1EEE9AC00](v93, v94);
  v96 = &v316 - v95;
  MEMORY[0x1EEE9AC00](v97, v98);
  v100 = &v316 - v99;
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = (&v316 - v103);
  MEMORY[0x1EEE9AC00](v105, v106);
  v108 = &v316 - v107;
  sub_1D6C7CB80(v367, &v316 - v107);
  *(v108 + v68[12]) = v369;
  v109 = v361;
  *(v108 + v68[16]) = v362;
  *(v108 + v68[20]) = v109;
  *(v108 + v68[24]) = v360;
  *(v108 + v68[28]) = v355;
  v110 = v351;
  *(v108 + v68[32]) = v352;
  *(v108 + v68[36]) = v110;
  *(v108 + v68[40]) = v350;
  *(v108 + v68[44]) = v349;
  sub_1D6C7CC00(v108, v104, sub_1D6C7C75C);

  v111 = v104[1];
  v320 = *v104;
  v325 = v111;

  v338 = type metadata accessor for FormatObject;
  sub_1D6C7CE14(v104, &qword_1EDF33848, type metadata accessor for FormatObject);
  v367 = sub_1D6C7C75C;
  sub_1D6C7CC00(v108, v100, sub_1D6C7C75C);

  v112 = v342;
  sub_1D6C7CC00(v100, v342, type metadata accessor for FormatPackage);
  v113 = v100;
  v114 = v338;
  sub_1D6C7CE14(v113, &qword_1EDF33848, v338);
  v115 = v112 + v356[24];
  v326 = *(v348 + 16);
  v327 = v348 + 16;
  v326(v353, v115, v354);
  v339 = type metadata accessor for FormatPackage;
  sub_1D6C7CE70(v112, type metadata accessor for FormatPackage);
  sub_1D6C7CC00(v108, v96, sub_1D6C7C75C);

  v116 = v357;
  sub_1D6C7CC00(v96, v357, type metadata accessor for FormatPackage);
  v117 = v114;
  sub_1D6C7CE14(v96, &qword_1EDF33848, v114);
  v319 = *(v116 + 48);
  v118 = v339;
  sub_1D6C7CE70(v116, v339);
  v119 = v367;
  sub_1D6C7CC00(v108, v92, v367);

  v120 = v358;
  sub_1D6C7CC00(v92, v358, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v92, &qword_1EDF33848, v117);
  v318 = *(v120 + 49);
  v121 = v118;
  sub_1D6C7CE70(v120, v118);
  v122 = v340;
  sub_1D6C7CC00(v108, v340, v119);

  v123 = v122;
  v124 = v122;
  v125 = v359;
  v126 = type metadata accessor for FormatPackage;
  sub_1D6C7CC00(v123, v359, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v124, &qword_1EDF33848, v117);
  v127 = *(v125 + 24);
  v317 = *(v125 + 16);
  v342 = v127;

  sub_1D6C7CE70(v125, v121);
  v358 = v108;
  v128 = v369;
  v129 = v341;
  sub_1D6C7CC00(v108, v341, v367);

  v357 = v68;

  v130 = v366;
  sub_1D6C7CC00(v129, v366, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v129, &qword_1EDF33848, v117);
  v131 = *(v130 + 40);
  v316 = *(v130 + 32);
  v341 = v131;

  sub_1D6C7CE70(v130, v121);
  v359 = v128 >> 62;
  if (v128 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v133 = 0;
    v367 = (v128 & 0xC000000000000001);
    v134 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (v367)
    {
      v128 = MEMORY[0x1DA6FB460](v133, v128);
      v108 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v135 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
      swift_beginAccess();
      v130 = *(v128 + v135);

      v128 = *(v130 + 16);
      v121 = v134[2];
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v126 <= v134[3] >> 1)
      {
        if (*(v130 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v137 = v121 + v128;
        }

        else
        {
          v137 = v121;
        }

        v134 = sub_1D5C5DD04(isUniquelyReferenced_nonNull_native, v137, 1, v134);
        if (*(v130 + 16))
        {
LABEL_18:
          v121 = v134[2];
          v126 = ((v134[3] >> 1) - v121);
          sub_1D5C2AF8C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
          if (v126 < v128)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v128)
          {
            v138 = v134[2];
            v139 = __OFADD__(v138, v128);
            v140 = v138 + v128;
            if (v139)
            {
              goto LABEL_29;
            }

            v134[2] = v140;
          }

          goto LABEL_5;
        }
      }

      if (v128)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v133;
      v128 = v369;
      if (v108 == i)
      {
        goto LABEL_32;
      }
    }

    if (v133 >= *(v366 + 16))
    {
      goto LABEL_25;
    }

    v128 = *(v128 + 8 * v133 + 32);

    v108 = v133 + 1;
    if (!__OFADD__(v133, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v134 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v389 = v134;

  sub_1D6985AC4(v141);
  v340 = v389;
  if (v359)
  {
    goto LABEL_56;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_34:
    v143 = 0;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          v355 = v130;
          v356 = v108;
          v357 = v128;
          v130 = v373[0];
          v108 = v373[1];
          sub_1D6F1C000(v351, v390, v372);
          v128 = v126;
          if (!v11)
          {
            goto LABEL_402;
          }

          v369 = v11;

LABEL_404:

          sub_1D5C5D428(v365, v366);

          sub_1D6C7CE14(v367, qword_1EDF40220, type metadata accessor for FormatFileReference);
          v271 = v348 + 8;
          v270 = *(v348 + 8);
          v277 = v354;
          v270(v343, v354);
          goto LABEL_345;
        }

        v128 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_55;
        }
      }

      v145 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v130 = *(v128 + v145);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_352;
      }

      v146 = swift_isUniquelyReferenced_nonNull_native();
      if (v146 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v147 = v121 + v128;
        }

        else
        {
          v147 = v121;
        }

        v144 = sub_1D5D5BC6C(v146, v147, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_35:

          if (v128)
          {
            goto LABEL_353;
          }

          goto LABEL_36;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        goto LABEL_382;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v148 = *(v144 + 16);
        v139 = __OFADD__(v148, v128);
        v149 = v148 + v128;
        if (v139)
        {
          goto LABEL_393;
        }

        *(v144 + 16) = v149;
      }

LABEL_36:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_58;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v388 = v144;

  sub_1D6985A88(v150);
  v339 = v388;
  if (v359)
  {
    goto LABEL_82;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_60:
    v143 = 0;
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v367)
      {
        v130 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_354;
        }

        v130 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_60;
        }
      }

      v151 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v128 = *(v130 + v151);

      v130 = *(v128 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v130);
      if (__OFADD__(v121, v130))
      {
        goto LABEL_355;
      }

      v152 = swift_isUniquelyReferenced_nonNull_native();
      if (v152 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v128 + 16))
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v153 = v121 + v130;
        }

        else
        {
          v153 = v121;
        }

        v144 = sub_1D5D5C308(v152, v153, 1, v144);
        if (!*(v128 + 16))
        {
LABEL_61:

          if (v130)
          {
            goto LABEL_356;
          }

          goto LABEL_62;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2C40C(0);
      if (v126 < v130)
      {
        goto LABEL_383;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v154 = *(v144 + 16);
        v139 = __OFADD__(v154, v130);
        v155 = v154 + v130;
        if (v139)
        {
          goto LABEL_394;
        }

        *(v144 + 16) = v155;
      }

LABEL_62:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_84;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v387 = v144;

  sub_1D6985A40(v156);
  v338 = v387;
  if (v359)
  {
    goto LABEL_108;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_86:
    v143 = 0;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_357;
        }

        v128 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_86;
        }
      }

      v157 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v130 = *(v128 + v157);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_358;
      }

      v158 = swift_isUniquelyReferenced_nonNull_native();
      if (v158 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v159 = v121 + v128;
        }

        else
        {
          v159 = v121;
        }

        v144 = sub_1D5D5C3FC(v158, v159, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_87:

          if (v128)
          {
            goto LABEL_359;
          }

          goto LABEL_88;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        goto LABEL_384;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v160 = *(v144 + 16);
        v139 = __OFADD__(v160, v128);
        v161 = v160 + v128;
        if (v139)
        {
          goto LABEL_395;
        }

        *(v144 + 16) = v161;
      }

LABEL_88:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_110;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_110:
  v386 = v144;

  sub_1D6985A04(v162);
  v323 = v386;
  if (v359)
  {
    goto LABEL_134;
  }

  v143 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v143)
  {
LABEL_112:
    v144 = 0;
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    v367 = (v128 & 0xC000000000000001);
    v142 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v367)
      {
        v130 = MEMORY[0x1DA6FB460](v144, v128);
        v108 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v144 >= *(v366 + 16))
        {
          goto LABEL_360;
        }

        v130 = *(v128 + 8 * v144 + 32);

        v108 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
LABEL_133:
          __break(1u);
LABEL_134:
          v143 = sub_1D7263BFC();
          if (!v143)
          {
            break;
          }

          goto LABEL_112;
        }
      }

      v163 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v128 = *(v130 + v163);

      v130 = *(v128 + 16);
      v121 = v142[2];
      v126 = (v121 + v130);
      if (__OFADD__(v121, v130))
      {
        goto LABEL_361;
      }

      v164 = swift_isUniquelyReferenced_nonNull_native();
      if (v164 && v126 <= (v142[3] >> 1))
      {
        if (!*(v128 + 16))
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v165 = v121 + v130;
        }

        else
        {
          v165 = v121;
        }

        v142 = sub_1D5D5CA88(v164, v165, 1, v142);
        if (!*(v128 + 16))
        {
LABEL_113:

          if (v130)
          {
            goto LABEL_362;
          }

          goto LABEL_114;
        }
      }

      v121 = v142[2];
      v126 = ((v142[3] >> 1) - v121);
      type metadata accessor for FormatSlotDefinition();
      if (v126 < v130)
      {
        goto LABEL_385;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v166 = v142[2];
        v139 = __OFADD__(v166, v130);
        v167 = v166 + v130;
        if (v139)
        {
          goto LABEL_396;
        }

        v142[2] = v167;
      }

LABEL_114:
      ++v144;
      v128 = v369;
      if (v108 == v143)
      {
        goto LABEL_136;
      }
    }
  }

  v142 = MEMORY[0x1E69E7CC0];
LABEL_136:
  v168 = v346;
  sub_1D6C7CC00(v358, v346, sub_1D6C7C75C);

  v169 = v347;
  sub_1D6C7CC00(v168, v347, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v168, &qword_1EDF33848, type metadata accessor for FormatObject);
  v130 = *(v169 + 120);

  sub_1D6C7CE70(v169, type metadata accessor for FormatPackage);
  v385 = v142;
  sub_1D69859BC(v130);
  v321 = v385;
  if (v359)
  {
    goto LABEL_160;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_138:
    v143 = 0;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_159;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_363;
        }

        v128 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_159:
          __break(1u);
LABEL_160:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_138;
        }
      }

      v170 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v130 = *(v128 + v170);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_364;
      }

      v171 = swift_isUniquelyReferenced_nonNull_native();
      if (v171 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v172 = v121 + v128;
        }

        else
        {
          v172 = v121;
        }

        v144 = sub_1D5D5CEF8(v171, v172, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_139:

          if (v128)
          {
            goto LABEL_365;
          }

          goto LABEL_140;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        goto LABEL_386;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v173 = *(v144 + 16);
        v139 = __OFADD__(v173, v128);
        v174 = v173 + v128;
        if (v139)
        {
          goto LABEL_397;
        }

        *(v144 + 16) = v174;
      }

LABEL_140:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_162;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_162:
  v384 = v144;

  sub_1D6985980(v175);
  v352 = v384;
  if (v359)
  {
    goto LABEL_186;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_164:
    v143 = 0;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_366;
        }

        v128 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_185:
          __break(1u);
LABEL_186:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_164;
        }
      }

      v176 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v130 = *(v128 + v176);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_367;
      }

      v177 = swift_isUniquelyReferenced_nonNull_native();
      if (v177 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v178 = v121 + v128;
        }

        else
        {
          v178 = v121;
        }

        v144 = sub_1D5D5D638(v177, v178, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_165:

          if (v128)
          {
            goto LABEL_368;
          }

          goto LABEL_166;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        goto LABEL_387;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v179 = *(v144 + 16);
        v139 = __OFADD__(v179, v128);
        v180 = v179 + v128;
        if (v139)
        {
          goto LABEL_398;
        }

        *(v144 + 16) = v180;
      }

LABEL_166:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_188;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_188:
  v383 = v144;

  sub_1D6985944(v181);
  v351 = v383;
  if (v359)
  {
    goto LABEL_212;
  }

  v142 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_190:
    v143 = 0;
    v367 = (v128 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v128);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_211;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_369;
        }

        v128 = *(v128 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_211:
          __break(1u);
LABEL_212:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_190;
        }
      }

      v182 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
      swift_beginAccess();
      v130 = *(v128 + v182);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_370;
      }

      v183 = swift_isUniquelyReferenced_nonNull_native();
      if (v183 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_191;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v184 = v121 + v128;
        }

        else
        {
          v184 = v121;
        }

        v144 = sub_1D5D5D934(v183, v184, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_191:

          if (v128)
          {
            goto LABEL_371;
          }

          goto LABEL_192;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        v351 = v108;
        v352 = v142;
        v345 = v372[0];
        v340 = v372[1];
        sub_1D5CB13C8(v349, &v371);
        v369 = v11;
        v279 = v361;
        v280 = v355;
        if (!v11)
        {
          sub_1D6C7CC00(v344, v121, type metadata accessor for FormatCompilerOptions);
          type metadata accessor for FormatPackageInventory();
          v281 = swift_allocObject();
          v338 = v143;
          v339 = v130;
          v271 = v281;
          v282 = (v281 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
          *v282 = 0;
          v282[1] = 0;
          v283 = (v281 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
          *v283 = 0;
          v283[1] = 0;
          v337 = v144;
          v284 = v279;
          v286 = v325;
          v285 = v326;
          *(v281 + 16) = v320;
          *(v281 + 24) = v286;
          v349 = v371;
          v285(v281 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v343, v354);
          *(v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = v319;
          v287 = v128;
          v288 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
          swift_beginAccess();
          *(v271 + v288) = v318;
          swift_beginAccess();
          v289 = v342;
          *v282 = v317;
          v282[1] = v289;

          swift_beginAccess();
          v290 = v341;
          *v283 = v316;
          v283[1] = v290;

          v291 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
          swift_beginAccess();
          *v291 = v287;
          v291[1] = v284;
          v291[2] = v362;
          v292 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
          swift_beginAccess();
          v293 = v352;
          *v292 = v337;
          v292[1] = v293;
          v294 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
          swift_beginAccess();
          v295 = v359;
          *v294 = v357;
          v294[1] = v295;
          v296 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
          swift_beginAccess();
          v297 = v338;
          *v296 = v360;
          v296[1] = v297;
          v298 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
          swift_beginAccess();
          v299 = v356;
          *v298 = v280;
          v298[1] = v299;
          v300 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
          swift_beginAccess();
          v301 = v351;
          *v300 = v339;
          v300[1] = v301;
          v302 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
          swift_beginAccess();
          v303 = v340;
          *v302 = v345;
          v302[1] = v303;
          v304 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
          swift_beginAccess();
          *(v271 + v304) = v350;
          v305 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
          swift_beginAccess();
          *(v271 + v305) = v347;
          v370 = v319;
          v306 = sub_1D5D5FDB4(v320, v286);

          v307 = sub_1D5BA8750(v306, v346);

          sub_1D6C7CE14(v367, qword_1EDF40220, type metadata accessor for FormatFileReference);
          v308 = *(v348 + 8);
          v309 = v354;
          v308(v343, v354);
          sub_1D6C7CE70(v344, type metadata accessor for FormatCompilerOptions);
          v308(v353, v309);
          v310 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
          swift_beginAccess();
          *(v271 + v310) = v307;
          v311 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
          swift_beginAccess();
          *(v271 + v311) = v349;
          sub_1D5C502D8(v364, v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
          v312 = (v271 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
          v313 = v366;
          *v312 = v365;
          v312[1] = v313;
          v314 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
          swift_beginAccess();
          *(v271 + v314) = v363;
          v315 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
          swift_beginAccess();
          *(v271 + v315) = v368;
          sub_1D6C7CE70(v358, sub_1D6C7C75C);
          return v271;
        }

        goto LABEL_404;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v185 = *(v144 + 16);
        v139 = __OFADD__(v185, v128);
        v186 = v185 + v128;
        if (v139)
        {
          goto LABEL_399;
        }

        *(v144 + 16) = v186;
      }

LABEL_192:
      ++v143;
      v128 = v369;
      if (v108 == v142)
      {
        goto LABEL_214;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_214:
  v382 = v144;

  sub_1D6985908(v187);
  v350 = v382;
  if (v359)
  {
    v143 = sub_1D7263BFC();
  }

  else
  {
    v143 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v142 = MEMORY[0x1E69E7CC0];
  if (v143)
  {
    v144 = 0;
    v366 = v128 & 0xFFFFFFFFFFFFFF8;
    v367 = (v128 & 0xC000000000000001);
    do
    {
      if (v367)
      {
        v188 = MEMORY[0x1DA6FB460](v144, v128);
        v108 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
          goto LABEL_239;
        }
      }

      else
      {
        if (v144 >= *(v366 + 16))
        {
          goto LABEL_372;
        }

        v188 = *(v128 + 8 * v144 + 32);

        v108 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
LABEL_239:
          __break(1u);
          break;
        }
      }

      v189 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
      swift_beginAccess();
      v128 = *(v188 + v189);

      v130 = *(v128 + 16);
      v121 = v142[2];
      v126 = (v121 + v130);
      if (__OFADD__(v121, v130))
      {
        goto LABEL_373;
      }

      v190 = swift_isUniquelyReferenced_nonNull_native();
      if (v190 && v126 <= (v142[3] >> 1))
      {
        if (!*(v128 + 16))
        {
          goto LABEL_219;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v191 = v121 + v130;
        }

        else
        {
          v191 = v121;
        }

        v142 = sub_1D5CEABA0(v190, v191, 1, v142);
        if (!*(v128 + 16))
        {
LABEL_219:

          if (v130)
          {
            goto LABEL_374;
          }

          goto LABEL_220;
        }
      }

      v121 = v142[2];
      v126 = ((v142[3] >> 1) - v121);
      type metadata accessor for FormatOption();
      if (v126 < v130)
      {
        goto LABEL_391;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v192 = v142[2];
        v139 = __OFADD__(v192, v130);
        v193 = v192 + v130;
        if (v139)
        {
          goto LABEL_400;
        }

        v142[2] = v193;
      }

LABEL_220:
      ++v144;
      v128 = v369;
    }

    while (v108 != v143);
  }

  v367 = sub_1D6C7C75C;
  v194 = v358;
  v195 = v346;
  sub_1D6C7CC00(v358, v346, sub_1D6C7C75C);

  v128 = type metadata accessor for FormatPackage;
  v196 = v347;
  sub_1D6C7CC00(v195, v347, type metadata accessor for FormatPackage);
  v144 = type metadata accessor for FormatObject;
  sub_1D6C7CE14(v195, &qword_1EDF33848, type metadata accessor for FormatObject);
  v126 = *(v196 + 136);

  v121 = type metadata accessor for FormatPackage;
  sub_1D6C7CE70(v196, type metadata accessor for FormatPackage);
  v381 = v142;
  sub_1D5D505F0(v126);
  v347 = v381;
  v197 = v194;
  v198 = v335;
  sub_1D6C7CC00(v197, v335, v367);

  v142 = v336;
  sub_1D6C7CC00(v198, v336, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v198, &qword_1EDF33848, type metadata accessor for FormatObject);
  v143 = v142[18];

  sub_1D6C7CE70(v142, type metadata accessor for FormatPackage);
  v380 = MEMORY[0x1E69E7CC0];
  if (!v359)
  {
    v108 = v369;
    v130 = *((v369 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v130)
    {
      goto LABEL_242;
    }

LABEL_253:
    v201 = MEMORY[0x1E69E7CC0];
    goto LABEL_254;
  }

  v108 = v369;
  v130 = sub_1D7263BFC();
  if (!v130)
  {
    goto LABEL_253;
  }

LABEL_242:
  v367 = v143;
  v128 = 0;
  v121 = v108 & 0xC000000000000001;
  v108 &= 0xFFFFFFFFFFFFFF8uLL;
  v126 = &qword_1EDF3EFA0[12];
  while (v121)
  {
    v199 = MEMORY[0x1DA6FB460](v128, v369);
    v143 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      goto LABEL_250;
    }

LABEL_246:
    v200 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
    swift_beginAccess();
    v144 = *(v199 + v200);

    v142 = &v380;
    sub_1D5D55274(v144);
    ++v128;
    if (v143 == v130)
    {
      goto LABEL_251;
    }
  }

  if (v128 >= *(v108 + 16))
  {
    goto LABEL_375;
  }

  v199 = *(v369 + 8 * v128 + 32);

  v143 = v128 + 1;
  if (!__OFADD__(v128, 1))
  {
    goto LABEL_246;
  }

LABEL_250:
  __break(1u);
LABEL_251:
  v201 = v380;
  v108 = v369;
  v143 = v367;
LABEL_254:
  v346 = sub_1D5BA8750(v201, v143);

  if (v359)
  {
    goto LABEL_278;
  }

  v142 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v142)
  {
LABEL_256:
    v143 = 0;
    v367 = (v108 & 0xC000000000000001);
    v144 = MEMORY[0x1E69E7CC0];
    v366 = v108 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v367)
      {
        v128 = MEMORY[0x1DA6FB460](v143, v108);
        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_277;
        }
      }

      else
      {
        if (v143 >= *(v366 + 16))
        {
          goto LABEL_376;
        }

        v128 = *(v108 + 8 * v143 + 32);

        v108 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
LABEL_277:
          __break(1u);
LABEL_278:
          v142 = sub_1D7263BFC();
          if (!v142)
          {
            break;
          }

          goto LABEL_256;
        }
      }

      v203 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v130 = *(v128 + v203);

      v128 = *(v130 + 16);
      v121 = *(v144 + 16);
      v126 = (v121 + v128);
      if (__OFADD__(v121, v128))
      {
        goto LABEL_377;
      }

      v204 = swift_isUniquelyReferenced_nonNull_native();
      if (v204 && v126 <= *(v144 + 24) >> 1)
      {
        if (!*(v130 + 16))
        {
          goto LABEL_257;
        }
      }

      else
      {
        if (v121 <= v126)
        {
          v205 = v121 + v128;
        }

        else
        {
          v205 = v121;
        }

        v144 = sub_1D5D5F2B8(v204, v205, 1, v144);
        if (!*(v130 + 16))
        {
LABEL_257:

          if (v128)
          {
            goto LABEL_378;
          }

          goto LABEL_258;
        }
      }

      v121 = *(v144 + 16);
      v126 = ((*(v144 + 24) >> 1) - v121);
      sub_1D5C2AF8C(0, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
      if (v126 < v128)
      {
        goto LABEL_392;
      }

      swift_arrayInitWithCopy();

      if (v128)
      {
        v206 = *(v144 + 16);
        v139 = __OFADD__(v206, v128);
        v207 = v206 + v128;
        if (v139)
        {
          goto LABEL_401;
        }

        *(v144 + 16) = v207;
      }

LABEL_258:
      ++v143;
      v202 = v108 == v142;
      v108 = v369;
      if (v202)
      {
        goto LABEL_280;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_280:
  v379 = v144;

  sub_1D698575C(v208);
  v209 = v379;
  if (v359)
  {
    v144 = sub_1D7263BFC();
  }

  else
  {
    v144 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v210 = v337;
  *&v349 = v209;
  if (v144)
  {
    v379 = MEMORY[0x1E69E7CC0];
    result = sub_1D5D5F614(0, v144 & ~(v144 >> 63), 0);
    if (v144 < 0)
    {
      __break(1u);
LABEL_407:
      __break(1u);
      return result;
    }

    v212 = 0;
    v213 = v379;
    do
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        v214 = MEMORY[0x1DA6FB460](v212, v369);
        sub_1D6C7CC00(v214 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v368, type metadata accessor for FormatCompilerOptions);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D6C7CC00(*(v369 + 8 * v212 + 32) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v368, type metadata accessor for FormatCompilerOptions);
      }

      v379 = v213;
      v216 = *(v213 + 2);
      v215 = *(v213 + 3);
      if (v216 >= v215 >> 1)
      {
        sub_1D5D5F614(v215 > 1, v216 + 1, 1);
        v213 = v379;
      }

      ++v212;
      *(v213 + 2) = v216 + 1;
      sub_1D5C502D8(v368, &v213[((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v216], type metadata accessor for FormatCompilerOptions);
    }

    while (v144 != v212);
    v355 = v213;
    v108 = v369;
  }

  else
  {
    v355 = MEMORY[0x1E69E7CC0];
  }

  v217 = v332;
  sub_1D6C7CC00(v358, v332, sub_1D6C7C75C);

  v218 = v333;
  sub_1D6C7CC00(v217, v333, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v217, &qword_1EDF33848, type metadata accessor for FormatObject);
  v219 = v345;
  sub_1D6C7CC00(v218 + v356[23], v345, type metadata accessor for FormatCompilerOptions);
  sub_1D6C7CE70(v218, type metadata accessor for FormatPackage);
  v220 = v334;
  sub_1D6C7CC00(v219, v334, type metadata accessor for FormatCompilerOptions);
  v221 = *(v355 + 16);
  if (v221)
  {
    v222 = v365[7];
    v366 = v365[6];
    v361 = v365[8];
    v362 = v222;
    v144 = v355 + ((*(v337 + 80) + 32) & ~*(v337 + 80));
    v360 = *(v337 + 72);
    v223 = v364;
    v224 = v365;
    v225 = v322;
    do
    {
      sub_1D6C7CC00(v144, v225, type metadata accessor for FormatCompilerOptions);
      v379 = *v220;

      sub_1D5D5F664(v226);
      v368 = v379;
      v379 = v220[1];

      sub_1D5D5F6AC(v227);
      v367 = v379;
      v228 = v363;
      sub_1D6C7CC68(v220 + v366, v363);
      sub_1D5C502D8(v228, v223 + v224[6], type metadata accessor for FormatCompilerOptions.Newsroom);
      sub_1D5D5F6F4(v220 + v362, v225 + v362, (v223 + v224[7]));
      v11 = *(v220 + v361);

      v230 = sub_1D5D5FCA0(v229, v11);
      sub_1D6C7CE70(v225, type metadata accessor for FormatCompilerOptions);
      sub_1D6C7CE70(v220, type metadata accessor for FormatCompilerOptions);
      v231 = v367;
      *v223 = v368;
      v223[1] = v231;
      *(v223 + v224[8]) = v230;
      sub_1D5C502D8(v223, v220, type metadata accessor for FormatCompilerOptions);
      v144 += v360;
      --v221;
    }

    while (v221);

    v108 = v369;
  }

  else
  {
  }

  sub_1D6C7CE70(v345, type metadata accessor for FormatCompilerOptions);
  sub_1D5C502D8(v220, v344, type metadata accessor for FormatCompilerOptions);
  if (v359)
  {
    v143 = sub_1D7263BFC();
  }

  else
  {
    v143 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v143)
  {
    v126 = (v108 & 0xC000000000000001);
    v121 = v108 & 0xFFFFFFFFFFFFFF8;
    v128 = v108 + 32;
    v368 = MEMORY[0x1E69E7CC0];
    v142 = &OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem;
    v130 = 0;
    while (1)
    {
      while (v126)
      {
        result = MEMORY[0x1DA6FB460](v130, v108);
        v144 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_407;
        }

        v240 = *(result + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
        v233 = *(result + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
        v366 = result;
        v367 = v240;
        sub_1D5D5FDA4(v240, v233);
        swift_unknownObjectRelease();
        if (v233 == 2)
        {
          goto LABEL_308;
        }

LABEL_311:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v368 = sub_1D698CA40(0, *(v368 + 2) + 1, 1, v368);
        }

        v234 = v367;
        v236 = *(v368 + 2);
        v235 = *(v368 + 3);
        v237 = v236 + 1;
        if (v236 >= v235 >> 1)
        {
          v366 = v236 + 1;
          v241 = sub_1D698CA40((v235 > 1), v236 + 1, 1, v368);
          v237 = v366;
          v234 = v367;
          v368 = v241;
        }

        v238 = v368;
        *(v368 + 2) = v237;
        v239 = &v238[16 * v236];
        *(v239 + 4) = v234;
        *(v239 + 5) = v233;
        v108 = v369;
        if (v144 == v143)
        {
          goto LABEL_321;
        }

        v130 = v144;
      }

      if (v130 < 0)
      {
        goto LABEL_379;
      }

      if (v130 >= *(v121 + 16))
      {
        goto LABEL_380;
      }

      v144 = v130 + 1;
      v232 = *(v128 + 8 * v130) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem;
      v233 = *(v232 + 8);
      if (v233 != 2)
      {
        v367 = *v232;
        sub_1D62B5D30(v367, v233);
        goto LABEL_311;
      }

LABEL_308:
      v130 = v144;
      if (v144 == v143)
      {
        goto LABEL_321;
      }
    }
  }

  v368 = MEMORY[0x1E69E7CC0];
LABEL_321:
  v242 = v328;
  sub_1D6C7CC00(v358, v328, sub_1D6C7C75C);

  v243 = v329;
  sub_1D6C7CC00(v242, v329, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v242, &qword_1EDF33848, type metadata accessor for FormatObject);
  v244 = *(v243 + 160);
  v128 = *(v243 + 168);
  sub_1D5D5FDA4(v244, v128);
  sub_1D6C7CE70(v243, type metadata accessor for FormatPackage);
  v245 = *(v368 + 2);
  if (v245)
  {
    v246 = (v368 + 40);
    v121 = v364;
    do
    {
      if (v128 == 2)
      {
        v244 = *(v246 - 1);
        v128 = *v246;
        sub_1D62B5D30(v244, *v246);
      }

      v246 += 2;
      --v245;
    }

    while (v245);
  }

  else
  {
    v121 = v364;
  }

  sub_1D6C7CD04();
  sub_1D6C7CD78(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  v248 = (*(*(v247 - 8) + 80) + 32) & ~*(*(v247 - 8) + 80);
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_1D7273AE0;
  v363 = v249;
  sub_1D5D57DE0(a11, v249 + v248);
  v250 = v330;
  sub_1D6C7CC00(v358, v330, sub_1D6C7C75C);

  v142 = v331;
  sub_1D6C7CC00(v250, v331, type metadata accessor for FormatPackage);
  sub_1D6C7CE14(v250, &qword_1EDF33848, type metadata accessor for FormatObject);
  v251 = *(v142 + v356[26]);

  sub_1D6C7CE70(v142, type metadata accessor for FormatPackage);
  v378[0] = MEMORY[0x1E69E7CC0];
  if (v359)
  {
    v126 = sub_1D7263BFC();
  }

  else
  {
    v126 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v365 = v244;
  v366 = v128;
  v367 = a11;
  if (!v126)
  {
    v257 = MEMORY[0x1E69E7CC0];
    goto LABEL_342;
  }

  v368 = v251;
  v143 = 0;
  v252 = v108;
  v108 &= 0xC000000000000001;
  v144 = v252 & 0xFFFFFFFFFFFFFF8;
  v130 = &qword_1EDF3EFA0[12];
  while (v108)
  {
    v253 = MEMORY[0x1DA6FB460](v143, v369);
    v128 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      goto LABEL_339;
    }

LABEL_335:
    v254 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
    swift_beginAccess();
    v255 = *(v253 + v254);

    v142 = v378;
    v256 = v255;
    v121 = v364;
    sub_1D5D55274(v256);
    ++v143;
    if (v128 == v126)
    {
      goto LABEL_340;
    }
  }

  if (v143 >= *(v144 + 16))
  {
    goto LABEL_381;
  }

  v253 = *(v369 + 8 * v143 + 32);

  v128 = v143 + 1;
  if (!__OFADD__(v143, 1))
  {
    goto LABEL_335;
  }

LABEL_339:
  __break(1u);
LABEL_340:
  v257 = v378[0];
  v251 = v368;
LABEL_342:
  v368 = sub_1D5BA8750(v257, v251);

  v258 = v323;
  v390 = sub_1D5F62D3C(v323);
  v259 = v340;
  v260 = sub_1D5F62D78(v340);
  sub_1D6985734(v260);
  v261 = v339;
  v262 = sub_1D5F62DB4(v339);
  sub_1D6985734(v262);
  v263 = sub_1D5F62DF0(v352);
  sub_1D6985734(v263);
  v264 = v338;
  v265 = sub_1D5F62FF8(v338);
  sub_1D6985734(v265);
  v266 = v353;
  v267 = v354;
  v326(v343, v353, v354);
  v268 = v324;
  sub_1D5C5D464(v259, v378);
  if (v268)
  {
    v369 = v268;

    sub_1D5C5D428(v365, v366);

    sub_1D6C7CE14(v367, qword_1EDF40220, type metadata accessor for FormatFileReference);
    v269 = v266;
    v271 = v348 + 8;
    v270 = *(v348 + 8);
    v270(v343, v267);

    sub_1D6C7CE70(v344, type metadata accessor for FormatCompilerOptions);
    v272 = v269;
    v273 = v267;
    goto LABEL_346;
  }

  v274 = v378[0];
  v275 = v378[1];
  v276 = v378[2];
  sub_1D5CCCC20(v261, v377);
  v361 = v275;
  v362 = v276;
  v126 = v274;
  v144 = v377[0];
  v142 = v377[1];
  sub_1D5CA3FB0(v264, v376);
  v369 = 0;
  v128 = v376[0];
  v278 = v376[1];
  sub_1D5C4B5C8(v258, v375);
  v360 = v375[0];
  v143 = v375[1];
  v11 = v369;
  sub_1D5CAF23C(v321, v374);
  if (!v11)
  {
    v359 = v278;
    v130 = v374[0];
    v108 = v374[1];
    sub_1D5CA84CC(v352, v373);
    goto LABEL_388;
  }

  v369 = v11;

  sub_1D5C5D428(v365, v366);

  sub_1D6C7CE14(v367, qword_1EDF40220, type metadata accessor for FormatFileReference);
  v271 = v348 + 8;
  v270 = *(v348 + 8);
  v277 = v354;
  v270(v343, v354);

LABEL_345:
  sub_1D6C7CE70(v344, type metadata accessor for FormatCompilerOptions);
  v272 = v353;
  v273 = v277;
LABEL_346:
  v270(v272, v273);
  sub_1D6C7CE70(v358, sub_1D6C7C75C);
  return v271;
}

void sub_1D6C7C75C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EDF33850)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D6C7CD78(255, &qword_1EDF33848, type metadata accessor for FormatObject);
    sub_1D6C7CB2C(255, &unk_1EDF3C8B0, type metadata accessor for FormatPackageInventory);
    sub_1D6C7CABC(255, &qword_1EDF1B380, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
    sub_1D6C7CABC(255, &qword_1EDF1B398, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);
    sub_1D6C7CB2C(255, &qword_1EDF1B360, sub_1D5C2C40C);
    sub_1D6C7CABC(255, &qword_1EDF1B378, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle);
    sub_1D6C7CABC(255, &qword_1EDF1B3A0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);
    sub_1D6C7CABC(255, &qword_1EDF1B388, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType);
    sub_1D6C7CABC(255, &qword_1EDF1B3B0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration);
    sub_1D6C7CABC(255, &qword_1EDF1B3A8, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF33850);
    }
  }
}

void sub_1D6C7CABC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1D5C2AF8C(255, a3, a4, a5, type metadata accessor for FormatObject);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6C7CB2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C7CB80(uint64_t a1, uint64_t a2)
{
  sub_1D6C7CD78(0, &qword_1EDF33848, type metadata accessor for FormatObject);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C7CC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C7CC68(uint64_t a1, uint64_t a2)
{
  sub_1D5C2AF8C(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6C7CD04()
{
  if (!qword_1EDF3C600)
  {
    sub_1D6C7CD78(255, qword_1EDF40220, type metadata accessor for FormatFileReference);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C600);
    }
  }
}

void sub_1D6C7CD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D5B4A354(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6C7CE14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6C7CD78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C7CE70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8NewsFeed24IssueCoverImageProcessorC7processySo7UIImageCSg5TeaUI09ProcessedE11RequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, v7);
  sub_1D61BA350();
  type metadata accessor for IssueCoverImageProcessorRequest();
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1((v6 + 88), *(v6 + 112));
    v1 = sub_1D725D2EC();
    v2 = v1;
    if (*(v6 + 72))
    {
      if (v1)
      {
        v3 = sub_1D726365C();
LABEL_7:
        v4 = v3;

        return v4;
      }
    }

    else if (v1)
    {
      v3 = sub_1D726362C();
      goto LABEL_7;
    }
  }

  return 0;
}

id SharingPuzzleTypeTextActivityItemSource.__allocating_init(puzzleType:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource____lazy_storage___defaultText];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SharingPuzzleTypeTextActivityItemSource.init(puzzleType:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource____lazy_storage___defaultText];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource____lazy_storage___defaultText);
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource____lazy_storage___defaultText + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType) nameForSharing];
    v2 = sub_1D726207C();
    v5 = v4;

    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_1D6C7D1A0()
{
  v1 = type metadata accessor for SharingPlainTextBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0xE000000000000000;
  swift_beginAccess();
  *(inited + 16) = 0;
  *(inited + 24) = 0xE000000000000000;
  v17 = v1;
  v18 = &off_1F512FCE0;
  v16[0] = inited;
  __swift_project_boxed_opaque_existential_1(v16, v1);
  v3 = [*(v0 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType) nameForSharing];
  v4 = sub_1D726207C();
  v6 = v5;

  (off_1F512FD18[0])(v4, v6, v1, &off_1F512FCE0, v13);

  __swift_destroy_boxed_opaque_existential_1(v16);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v8 + 16))(v16, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = (v10[8])(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

uint64_t sub_1D6C7D32C()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v71 = &v69 - v6;
  v7 = sub_1D72585BC();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v69 - v13;
  v14 = type metadata accessor for SharingHTMLBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0xE000000000000000;
  swift_beginAccess();
  *(inited + 16) = 0;
  *(inited + 24) = 0xE000000000000000;
  v87 = v14;
  v88 = &off_1F51B62F0;
  v86[0] = inited;
  __swift_project_boxed_opaque_existential_1(v86, v14);
  v16 = *(v0 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType);
  v17 = [v16 nameForSharing];
  v18 = sub_1D726207C();

  (off_1F51B6328)(v18, v14, &off_1F51B62F0, v83);

  __swift_destroy_boxed_opaque_existential_1(v86);
  v19 = v84;
  v20 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  (*(v20 + 16))(v86, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v83);
  v21 = [v16 identifier];
  if (!v21)
  {
    sub_1D726207C();
    v21 = sub_1D726203C();
  }

  v22 = objc_opt_self();
  v23 = [v22 nss:v21 NewsURLForPuzzleTypeID:?];

  v24 = &off_1E84D3000;
  v25 = v72;
  if (v23)
  {
    sub_1D72584EC();

    v26 = v69;
    (*(v25 + 32))(v69, v10, v7);
    v27 = v87;
    v28 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (v28[2])(v83, v27, v28);
    v29 = v84;
    v30 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_1D725811C();
    v35 = v34;

    (*(v30 + 56))(v80, v33, v35, v29, v30);

    v36 = v81;
    v37 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v37 + 16))(v77, v36, v37);
    v38 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    sub_1D614088C();
    v39 = sub_1D72644BC();
    v24 = 0x1FB922000;
    (*(v38 + 56))(&v74, v39);

    v40 = v75;
    v41 = v76;
    __swift_project_boxed_opaque_existential_1(&v74, v75);
    v42 = v40;
    v25 = v72;
    (*(v41 + 16))(v73, v42, v41);
    (*(v25 + 8))(v26, v7);
    __swift_destroy_boxed_opaque_existential_1(v86);
    sub_1D5B63F14(v73, v86);
    __swift_destroy_boxed_opaque_existential_1(&v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v43 = [v22 nss_MarketingPageURL];
  if (v43)
  {
    v44 = v70;
    v45 = v43;
    sub_1D72584EC();

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v44 = v70;
  }

  v47 = v71;
  (*(v25 + 56))(v44, v46, 1, v7);
  sub_1D5EB8540(v44, v47);
  if ((*(v25 + 48))(v47, 1, v7) == 1)
  {
    sub_1D5E3E404(v47);
  }

  else
  {
    v48 = v24;
    v49 = sub_1D72583DC();
    v51 = v50;
    (*(v25 + 8))(v47, v7);
    v52 = v87;
    v53 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (v53[2])(v83, v52, v53);
    v54 = v84;
    v55 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    type metadata accessor for Localized();
    v56 = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() v48 + 1083];
    v58 = sub_1D725811C();
    v60 = v59;

    (*(v55 + 56))(v80, v58, v60, v54, v55);

    v61 = v81;
    v62 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v62 + 56))(v77, 32, 0xE100000000000000, v61, v62);
    v63 = v78;
    v64 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v64 + 48))(&v74, 0x654E20656C707041, 0xEA00000000007377, v49, v51, v63, v64);

    __swift_destroy_boxed_opaque_existential_1(v86);
    sub_1D5B63F14(&v74, v86);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v65 = v87;
  v66 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v67 = (v66[8])(v65, v66);
  __swift_destroy_boxed_opaque_existential_1(v86);
  return v67;
}

id SharingPuzzleTypeTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleTypeTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharingPuzzleTypeTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SharingPuzzleTypeTextActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  v81[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    v36 = _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v36;
    *(a2 + 8) = v37;
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
        v52 = a1;
        goto LABEL_27;
      }

      v18 = sub_1D72646CC();
      v19 = a1;

      if (v18)
      {
        goto LABEL_28;
      }

      v20 = sub_1D726207C();
      v22 = v21;
      if (v20 == sub_1D726207C() && v22 == v23)
      {
        goto LABEL_27;
      }

      v24 = sub_1D72646CC();

      if (v24)
      {
        goto LABEL_28;
      }

      v25 = sub_1D726207C();
      v27 = v26;
      if (v25 == sub_1D726207C() && v27 == v28)
      {
        goto LABEL_27;
      }

      v29 = sub_1D72646CC();

      if (v29)
      {
LABEL_28:
        *(a2 + 24) = MEMORY[0x1E69E6158];

        *a2 = 0;
        *(a2 + 8) = 0xE000000000000000;
        return;
      }

      v30 = v19;
      v31 = sub_1D726203C();
      v32 = sub_1D726207C();
      v34 = v33;
      if (v32 == sub_1D726207C() && v34 == v35)
      {

LABEL_27:

        goto LABEL_28;
      }

      v53 = sub_1D72646CC();

      if (v53)
      {
        goto LABEL_28;
      }

      v54 = sub_1D726207C();
      v56 = v55;
      if (v54 == sub_1D726207C() && v56 == v57)
      {

LABEL_35:
        v59 = _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();
LABEL_36:
        v61 = v59;
        v62 = v60;
        *(a2 + 24) = MEMORY[0x1E69E6158];

LABEL_37:
        *a2 = v61;
        *(a2 + 8) = v62;
        return;
      }

      v58 = sub_1D72646CC();

      if (v58)
      {
        goto LABEL_35;
      }

      v63 = sub_1D726207C();
      v65 = v64;
      if (v63 == sub_1D726207C() && v65 == v66)
      {

        v59 = sub_1D6C7D32C();
        goto LABEL_36;
      }

      v67 = sub_1D72646CC();

      if (v67)
      {
        v59 = sub_1D6C7D32C();
        goto LABEL_36;
      }

      v30 = v30;
      v68 = sub_1D726203C();
      v69 = sub_1D726207C();
      v71 = v70;
      if (v69 != sub_1D726207C() || v71 != v72)
      {
        v73 = sub_1D72646CC();

        if (v73)
        {
          goto LABEL_47;
        }

        v74 = v30;
        v68 = sub_1D726203C();
        v75 = sub_1D726207C();
        v77 = v76;
        if (v75 != sub_1D726207C() || v77 != v78)
        {
          v79 = sub_1D72646CC();

          if ((v79 & 1) == 0)
          {
            v61 = _s8NewsFeed39SharingPuzzleTypeTextActivityItemSourceC22activityViewController_010subjectForgE0SSSo010UIActivitykL0C_So0oE0aSgtF_0();
            v62 = v80;
            *(a2 + 24) = MEMORY[0x1E69E6158];

            goto LABEL_37;
          }

          goto LABEL_47;
        }
      }

LABEL_47:
      v59 = sub_1D6C7D1A0();
      goto LABEL_36;
    }
  }

  v38 = [*(v2 + OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType) nameForSharing];
  v39 = sub_1D726207C();
  v41 = v40;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D76D20(v39, v41, 0xD000000000000010, 0x80000001D73E2920, isUniquelyReferenced_nonNull_native);
  v43 = objc_opt_self();
  v44 = sub_1D7261D2C();

  v81[0] = 0;
  v45 = [v43 archivedDataWithRootObject:v44 requiringSecureCoding:1 error:v81];

  v46 = v81[0];
  if (v45)
  {
    v47 = sub_1D725867C();
    v49 = v48;

    *(a2 + 24) = MEMORY[0x1E6969080];
    *a2 = v47;
    *(a2 + 8) = v49;
  }

  else
  {
    v50 = v46;
    v51 = sub_1D725829C();

    swift_willThrow();
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

Swift::String __swiftcall SharingPuzzleTypeTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1D6C7E688@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v15 = a3;
  v5 = type metadata accessor for FormatJsonKeyValue();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 28, 0);
  v10 = 0;
  v11 = v17;
  do
  {
    v16 = byte_1F50F36B8[v10 + 32];
    sub_1D6C7F758(a2, &v16, a1, v9);
    v17 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D6997B40(v12 > 1, v13 + 1, 1);
      v11 = v17;
    }

    ++v10;
    *(v11 + 16) = v13 + 1;
    sub_1D6C80C40(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for FormatJsonKeyValue);
  }

  while (v10 != 28);
  *v15 = v11;
  type metadata accessor for FormatJson();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D6C7E838(char a1)
{
  result = 0x656E6E6168437369;
  switch(a1)
  {
    case 1:
      result = 0x6369706F547369;
      break;
    case 2:
      result = 0x6C61636F4C7369;
      break;
    case 3:
    case 16:
      result = 0x7374726F70537369;
      break;
    case 4:
      result = 0x6F69746365537369;
      break;
    case 5:
      result = 0x61707377654E7369;
      break;
    case 6:
      result = 0x697A6167614D7369;
      break;
    case 7:
      result = 0x63696C6275507369;
      break;
    case 8:
      result = 0x7263736275537369;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x6E65646469487369;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6F62646E61537369;
      break;
    case 14:
      result = 0x6E7265746E497369;
      break;
    case 15:
      result = 0x6672657075537369;
      break;
    case 17:
      result = 0x726F7053794D7369;
      break;
    case 18:
      result = 0x656C7A7A75507369;
      break;
    case 19:
      result = 0x7548646F6F467369;
      break;
    case 20:
      result = 0x6F54646F6F467369;
      break;
    case 21:
      result = 0x6570696365527369;
      break;
    case 22:
      result = 0x75696D6572507369;
      break;
    case 23:
      result = 0x7069636552736168;
      break;
    case 24:
      result = 0x655273776F6C6C61;
      break;
    case 25:
      result = 0x42656C6261736964;
      break;
    case 26:
      result = 0x46656C6261736964;
      break;
    case 27:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C7EB94(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C7E838(*a1);
  v5 = v4;
  if (v3 == sub_1D6C7E838(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C7EC1C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C7E838(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C7EC80()
{
  sub_1D6C7E838(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6C7ECD4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C7E838(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C7ED34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C7E838(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTagBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6C7EE38()
{
  result = qword_1EC894410;
  if (!qword_1EC894410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894410);
  }

  return result;
}

unint64_t sub_1D6C7EE8C(uint64_t a1)
{
  result = sub_1D665AC44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C7EEB4(void *a1)
{
  a1[1] = sub_1D5C78A70();
  a1[2] = sub_1D66FE370();
  result = sub_1D6C7EE38();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C7EF28()
{
  result = qword_1EC894418;
  if (!qword_1EC894418)
  {
    sub_1D6C7EF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894418);
  }

  return result;
}

void sub_1D6C7EF80()
{
  if (!qword_1EC894420)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894420);
    }
  }
}

unint64_t sub_1D6C7EFD4()
{
  result = qword_1EC894428;
  if (!qword_1EC894428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894428);
  }

  return result;
}

uint64_t sub_1D6C7F028@<X0>(id a1@<X1>, _BYTE *a2@<X0>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  switch(*a2)
  {
    case 1:
      ObjectType = swift_getObjectType();
      v6 = FCTagProviding.isTopic.getter(ObjectType);
      v7 = 0xE800000000000000;
      v8 = 0x6369706F54207349;
      break;
    case 2:
      v6 = [a1 isLocal];
      v7 = 0xE800000000000000;
      v8 = 0x6C61636F4C207349;
      break;
    case 3:
      v8 = 0x74726F7053207349;
      v6 = [a1 isSports];
      v7 = 0xE800000000000000;
      break;
    case 4:
      v9 = swift_getObjectType();
      v6 = FCTagProviding.isSection.getter(v9);
      v7 = 0xEA00000000006E6FLL;
      v8 = 0x6974636553207349;
      break;
    case 5:
      v6 = [a1 isNewspaper];
      v7 = 0xEC00000072657061;
      v8 = 0x707377654E207349;
      break;
    case 6:
      v6 = [a1 isMagazine];
      v7 = 0xEB00000000656E69;
      v8 = 0x7A6167614D207349;
      break;
    case 7:
      v7 = 0xE900000000000063;
      v6 = [a1 isPublic];
      v8 = 0x696C627550207349;
      break;
    case 8:
      v6 = [a1 isSubscribable];
      v7 = 0xEF656C6261626972;
      v8 = 0x6373627553207349;
      break;
    case 9:
      v7 = 0x80000001D73EF480;
      v6 = [a1 isExplicitContent];
      v8 = 0xD000000000000013;
      break;
    case 0xA:
      v7 = 0x80000001D73EF460;
      v6 = [a1 isBlockedExplicitContent];
      v8 = 0xD00000000000001BLL;
      break;
    case 0xB:
      v6 = [a1 isHidden];
      v7 = 0xE90000000000006ELL;
      v8 = 0x6564646948207349;
      break;
    case 0xC:
      v7 = 0x80000001D73EF440;
      v6 = [a1 isSensitiveTopic];
      v8 = 0xD000000000000012;
      break;
    case 0xD:
      v6 = [a1 isSandbox];
      v7 = 0xEA0000000000786FLL;
      v8 = 0x62646E6153207349;
      break;
    case 0xE:
      v6 = [a1 isInternal];
      v7 = 0xEB000000006C616ELL;
      v8 = 0x7265746E49207349;
      break;
    case 0xF:
      v7 = 0xEC00000064656566;
      v8 = 0x7265707553207349;
      v10 = [a1 superfeedConfigResourceID];
      v6 = v10 != 0;
      if (v10)
      {

        v6 = 1;
      }

      break;
    case 0x10:
      v8 = 0x74726F7053207349;
      v6 = [a1 isSportsEvent];
      v7 = 0xEF746E6576452073;
      break;
    case 0x11:
      v6 = [a1 isMySports];
      v7 = 0xEC0000007374726FLL;
      v8 = 0x705320794D207349;
      break;
    case 0x12:
      v6 = [a1 isPuzzleHub];
      v7 = 0xED00006275482065;
      v8 = 0x6C7A7A7550207349;
      break;
    case 0x13:
      v8 = 0x20646F6F46207349;
      v6 = [a1 isFoodHub];
      v7 = 0xEB00000000627548;
      break;
    case 0x14:
      v8 = 0x20646F6F46207349;
      v6 = [a1 isFoodTopic];
      v7 = 0xED00006369706F54;
      break;
    case 0x15:
      v8 = 0xD000000000000011;
      v7 = 0x80000001D73EF420;
      v6 = [a1 isRecipeCatalog];
      break;
    case 0x16:
      v7 = 0xEA00000000006D75;
      v8 = 0x696D657250207349;
      if (*(a3 + 104))
      {
        v12 = *(a3 + 144);
        v13 = [a1 identifier];
        if (!v13)
        {
          sub_1D726207C();
          v13 = sub_1D726203C();
        }

        v6 = [v12 containsTagID_];
      }

      else
      {
        v6 = 0;
      }

      break;
    case 0x17:
      v6 = [a1 hasRecipes];
      v7 = 0xEB00000000736570;
      v8 = 0x6963655220736148;
      break;
    case 0x18:
      v6 = [a1 allowsRecipes];
      v7 = 0xEE00736570696365;
      v8 = 0x522073776F6C6C41;
      break;
    case 0x19:
      v8 = 0x20656C6261736944;
      v6 = [a1 disableBlock];
      v7 = 0xED00006B636F6C42;
      break;
    case 0x1A:
      v8 = 0x20656C6261736944;
      v6 = [a1 disableFollow];
      v7 = 0xEE00776F6C6C6F46;
      break;
    case 0x1B:
      v7 = 0x80000001D73EF400;
      v6 = [a1 sponsoredFeedEligible];
      v8 = 0xD00000000000001ALL;
      break;
    default:
      v5 = swift_getObjectType();
      v6 = FCTagProviding.isChannel.getter(v5);
      v7 = 0xEA00000000006C65;
      v8 = 0x6E6E616843207349;
      break;
  }

  v14 = type metadata accessor for FormatInspectionItem(0);
  v15 = *(v14 + 24);
  *(a4 + v15) = v6 & 1;
  v16 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(a4 + v15, 0, 1, v16);
  *a4 = v8;
  a4[1] = v7;
  a4[2] = 0;
  a4[3] = 0;
  v17 = a4 + *(v14 + 28);
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = -1;
  return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
}