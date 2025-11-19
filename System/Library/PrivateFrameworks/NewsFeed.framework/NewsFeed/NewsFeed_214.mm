uint64_t sub_1D6E8BC10(uint64_t a1)
{
  sub_1D5C0ED14(0, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6E8BCA0()
{
  result = qword_1EC897470;
  if (!qword_1EC897470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897470);
  }

  return result;
}

unint64_t sub_1D6E8BCF8()
{
  result = qword_1EC897478;
  if (!qword_1EC897478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897478);
  }

  return result;
}

uint64_t sub_1D6E8BDC8(uint64_t a1, uint64_t a2)
{
  sub_1D5C0ED14(0, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E8BE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6E8BEBC()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isSelected];
  v3 = [v1 layer];
  v4 = objc_opt_self();
  v5 = &selRef_systemBlueColor;
  if (!v2)
  {
    v5 = &selRef_systemGray2Color;
  }

  v6 = [v4 *v5];
  v7 = [v6 CGColor];

  [v3 setBorderColor_];
}

uint64_t sub_1D6E8BF88()
{
  sub_1D5B5A498(0, &qword_1EDF1A710);
  sub_1D6CDC4B0();
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = sub_1D725AA4C();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D6E8CDB8(v6);
    v3 = [v1 superview];
    if (v3)
    {
      v4 = v3;
      v2 = sub_1D6E8BF88();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

char *sub_1D6E8C0A0(void *a1, void *a2, char a3)
{
  v4 = v3;
  v64 = a2;
  ObjectType = swift_getObjectType();
  sub_1D606FC88(0, &qword_1EDF3B460, MEMORY[0x1E69D8768]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v60 - v12);
  v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isSelected] = 0;
  v14 = OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_onTap;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *&v4[v14] = [objc_allocWithZone(v15) init];
  *&v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_children] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_view] = a1;
  v16 = a1;
  v17 = sub_1D6E8C6C4();
  *&v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_image] = v17;
  type metadata accessor for DebugGroupLayoutView();
  if (swift_dynamicCastClass())
  {
    v18 = 1;
    v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isRoot] = 1;
  }

  else
  {
    v18 = 0;
    v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isRoot] = 0;
    if (a3)
    {
      sub_1D725A03C();
      v18 = swift_dynamicCastClass() == 0;
    }
  }

  HIDWORD(v60) = v18;
  v4[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isContent] = v18;
  v19 = v17;
  v63 = v16;
  [v16 frame];
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v61 = ObjectType;
  v20 = objc_msgSendSuper2(&v66, sel_initWithFrame_);
  v21 = *&v20[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_onTap];
  *v13 = 1;
  v22 = *MEMORY[0x1E69D8758];
  v23 = *(v10 + 104);
  v24 = v20;
  v23(v13, v22, v9);
  v25 = v24;
  v26 = v21;

  (*(v10 + 8))(v13, v9);
  v27 = [v25 layer];

  if (v17 && (v28 = [v19 CGImage]) != 0)
  {
    v65 = v28;
    type metadata accessor for CGImage(0);
    v29 = sub_1D72646AC();
  }

  else
  {
    v29 = 0;
  }

  v30 = v63;
  v31 = MEMORY[0x1E69E7CC0];
  [v27 setContents_];

  swift_unknownObjectRelease();
  v32 = [v25 layer];

  v33 = [objc_opt_self() systemGray2Color];
  v34 = [v33 CGColor];

  [v32 setBorderColor_];
  v35 = [v25 layer];

  [v35 setBorderWidth_];
  v36 = [v30 superview];
  [v30 frame];
  if (v36)
  {
    [v36 convertRect:v64 toCoordinateSpace:?];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v40 = v48;
    v39 = v46;
    v38 = v44;
    v37 = v42;
  }

  [v25 setFrame_];

  v49 = [v30 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v50 = sub_1D726267C();

  v65 = v31;
  if (!(v50 >> 62))
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v19;
    if (v51)
    {
      goto LABEL_13;
    }

LABEL_30:
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

LABEL_29:
  v51 = sub_1D7263BFC();
  v62 = v19;
  if (!v51)
  {
    goto LABEL_30;
  }

LABEL_13:
  v52 = 0;
  v19 = (v50 & 0xC000000000000001);
  v53 = MEMORY[0x1E69E7CC0];
  do
  {
    v54 = v52;
    while (1)
    {
      if (v19)
      {
        v55 = MEMORY[0x1DA6FB460](v54, v50);
      }

      else
      {
        if (v54 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v55 = *(v50 + 8 * v54 + 32);
      }

      v56 = v55;
      v52 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (![v55 isHidden])
      {
        break;
      }

      ++v54;
      if (v52 == v51)
      {
        goto LABEL_31;
      }
    }

    v57 = objc_allocWithZone(v61);
    v58 = v64;
    sub_1D6E8C0A0(v56, v58, HIDWORD(v60));
    MEMORY[0x1DA6F9CE0]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v53 = v65;
  }

  while (v52 != v51);
LABEL_31:

  *&v25[OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_children] = v53;

  return v25;
}

uint64_t sub_1D6E8C6C4()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v43 = v0;
  v2 = [v0 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v3 = sub_1D726267C();

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_5:
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      }

      v10 = [v7 isHidden];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v6;
      v12 = sub_1D5C5E034(v8);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_25;
      }

      v18 = v13;
      if (v6[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v22 = v12;
      sub_1D6D86DB8();
      v12 = v22;
      v6 = aBlock[0];
      if (v18)
      {
LABEL_6:
        *(v6[7] + v12) = v10;
        goto LABEL_7;
      }

LABEL_18:
      v6[(v12 >> 6) + 8] |= 1 << v12;
      *(v6[6] + 8 * v12) = v8;
      *(v6[7] + v12) = v10;
      v20 = v6[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_26;
      }

      v6[2] = v21;
LABEL_7:
      [v8 setHidden_];

      ++v5;
      if (v9 == v4)
      {
        goto LABEL_29;
      }
    }

    sub_1D6D75AAC(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_1D5C5E034(v8);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_45;
    }

LABEL_17:
    v6 = aBlock[0];
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_28:
  v6 = MEMORY[0x1E69E7CC8];
LABEL_29:

  sub_1D5B5A498(0, &qword_1EC8974B8);
  v23 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v23 setOpaque_];
  v24 = [objc_opt_self() mainScreen];
  [v24 scale];
  v26 = v25;

  [v23 setScale_];
  v27 = v43;
  [v43 bounds];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v23 format:{v28, v29}];
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D6BEBDF0;
  *(v32 + 24) = v31;
  aBlock[4] = sub_1D6139588;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_103;
  v33 = _Block_copy(aBlock);
  v34 = v43;

  v35 = [v30 imageWithActions_];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    v36 = [v34 subviews];
    v27 = sub_1D726267C();

    if (!(v27 >> 62))
    {
      v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_32;
      }

LABEL_43:

      return v35;
    }
  }

  v37 = sub_1D7263BFC();
  if (!v37)
  {
    goto LABEL_43;
  }

LABEL_32:
  if (v37 >= 1)
  {
    for (i = 0; i != v37; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1DA6FB460](i, v27);
      }

      else
      {
        v39 = *(v27 + 8 * i + 32);
      }

      v40 = v39;
      if (v6[2])
      {
        v41 = sub_1D5C5E034(v39);
        if (v42)
        {
          [v40 setHidden_];
        }
      }
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_45:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6E8CDB8(uint64_t a1)
{
  sub_1D6CDC574();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed31DebugFormatPackageViewAccessoryO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D6E8CE30(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D6E8CE58(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return 0x7365676E616863;
    }

    else if (a1)
    {
      return 0x7461636572706564;
    }

    else
    {
      return 0x726564726F6572;
    }
  }

  else if (a2)
  {
    return 0x676E696E726177;
  }

  else
  {
    return 0x64656C696166;
  }
}

void sub_1D6E8CEF4(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 0x7365676E616863;
      a1[1] = 0xE700000000000000;
    }

    else
    {
      v6 = 0x7461636572706564;
      if (!*v1)
      {
        v6 = 0x726564726F6572;
      }

      v7 = 0xEA00000000006465;
      if (!*v1)
      {
        v7 = 0xE700000000000000;
      }

      *a1 = v6;
      a1[1] = v7;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = v2 == 0;
    if (*(v1 + 8))
    {
      v5 = 0x676E696E726177;
    }

    else
    {
      v5 = 0x64656C696166;
    }

    if (!v4)
    {
      v3 = 0xE700000000000000;
    }

    *a1 = v5;
    a1[1] = v3;
  }
}

char *sub_1D6E8CFA0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v51 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v51, v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatCacheFile();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for DebugFormatCompilerResultEntry();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatCompilerOptions(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E8D6D8(*(a1 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v20, type metadata accessor for FormatCompilerOptions);
  v21 = *&v20[*(v17 + 40)];

  sub_1D6E8D740(v20, type metadata accessor for FormatCompilerOptions);
  if (!*(v21 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v22 = sub_1D7264A5C(), v23 = -1 << *(v21 + 32), v2 = v22 & ~v23, ((*(v21 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0))
  {
LABEL_8:

    if (!v55 || !*(v55 + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v26 = v56;
    sub_1D6E8D6D8(v55 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v56, type metadata accessor for DebugFormatCompilerResultEntry);
    v27 = *(v26 + *(v54 + 24));
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      v31 = v57;
      while (1)
      {
        v32 = *(v27 + 16);
        if (v29 >= v32)
        {
          break;
        }

        v2 = (v31[80] + 32) & ~v31[80];
        v33 = *(v31 + 9);
        sub_1D6E8D6D8(v27 + v2 + v33 * v29, v12, type metadata accessor for DebugFormatCacheFile);
        if (v12[24] == 1)
        {
          sub_1D61554B0(v12, v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6998F60(0, *(v30 + 16) + 1, 1);
            v31 = v57;
            v30 = v59;
          }

          v36 = *(v30 + 16);
          v35 = *(v30 + 24);
          v26 = v36 + 1;
          if (v36 >= v35 >> 1)
          {
            sub_1D6998F60(v35 > 1, v36 + 1, 1);
            v31 = v57;
            v30 = v59;
          }

          *(v30 + 16) = v26;
          sub_1D61554B0(v58, v30 + v2 + v36 * v33);
        }

        else
        {
          sub_1D6E8D740(v12, type metadata accessor for DebugFormatCacheFile);
        }

        if (v28 == ++v29)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
LABEL_24:
      if (!*(v30 + 16))
      {

        v31 = MEMORY[0x1E69E7CC0];
        v2 = v52;
LABEL_28:
        sub_1D6E8D6D8(v56 + *(v54 + 20), v2, type metadata accessor for DebugFormatCompilerResultOutput);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v39 = *v2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1D69930A4(0, *(v31 + 2) + 1, 1, v31);
            }

            v41 = *(v31 + 2);
            v40 = *(v31 + 3);
            if (v41 >= v40 >> 1)
            {
              v31 = sub_1D69930A4((v40 > 1), v41 + 1, 1, v31);
            }

            sub_1D6E8D740(v56, type metadata accessor for DebugFormatCompilerResultEntry);
            *(v31 + 2) = v41 + 1;
            v42 = &v31[16 * v41];
            *(v42 + 4) = v39;
            v42[40] = 0;
            return v31;
          }

          sub_1D67D37A8();
          v45 = *(v2 + *(v44 + 48));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1D69930A4(0, *(v31 + 2) + 1, 1, v31);
          }

          v47 = *(v31 + 2);
          v46 = *(v31 + 3);
          if (v47 >= v46 >> 1)
          {
            v31 = sub_1D69930A4((v46 > 1), v47 + 1, 1, v31);
          }

          sub_1D6E8D740(v56, type metadata accessor for DebugFormatCompilerResultEntry);
          *(v31 + 2) = v47 + 1;
          v48 = &v31[16 * v47];
          *(v48 + 4) = v45;
          v48[40] = 1;
          v43 = type metadata accessor for FormatFile;
        }

        else
        {
          sub_1D6E8D740(v56, type metadata accessor for DebugFormatCompilerResultEntry);
          v43 = type metadata accessor for DebugFormatCompilerResultOutput;
        }

        sub_1D6E8D740(v2, v43);
        return v31;
      }

      v31 = sub_1D69930A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v27 = *(v31 + 2);
      v32 = *(v31 + 3);
      v26 = v27 + 1;
      v2 = v52;
      if (v27 < v32 >> 1)
      {
LABEL_26:
        *(v31 + 2) = v26;
        v37 = &v31[16 * v27];
        *(v37 + 4) = v30;
        v37[40] = 2;
        goto LABEL_28;
      }
    }

    v31 = sub_1D69930A4((v32 > 1), v26, 1, v31);
    goto LABEL_26;
  }

  v24 = ~v23;
  while (!*(*(v21 + 48) + v2) || *(*(v21 + 48) + v2) == 1)
  {
    v25 = sub_1D72646CC();

    if (v25)
    {
      goto LABEL_43;
    }

    v2 = (v2 + 1) & v24;
    if (((*(v21 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_43:

  return &unk_1F5112078;
}

uint64_t sub_1D6E8D6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E8D740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 FeedPersonalizationClusteringRules.init(minClusterSize:maxClusterSize:bundleArticleQuotas:maxInaccessibleHeadlines:maxEvergreenHeadlines:maxPublisherOccurrences:maxPublisherOccurrencesByPublisherID:topicDiversity:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v26 = *(a14 + 32);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v18 = type metadata accessor for FeedPersonalizationClusteringRules();
  sub_1D6E8D8A4(a5, a9 + v18[6]);
  v19 = a9 + v18[7];
  *v19 = a6;
  *(v19 + 8) = a7 & 1;
  v20 = a9 + v18[8];
  *v20 = a8;
  *(v20 + 8) = a10 & 1;
  v21 = a9 + v18[9];
  *v21 = a11;
  *(v21 + 8) = a12 & 1;
  *(a9 + v18[10]) = a13;
  v22 = a9 + v18[11];
  result = *a14;
  v24 = *(a14 + 16);
  *v22 = *a14;
  *(v22 + 16) = v24;
  *(v22 + 32) = v26;
  return result;
}

uint64_t sub_1D6E8D8A4(uint64_t a1, uint64_t a2)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FeedPersonalizationClusteringRules.minClusterSize.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t FeedPersonalizationClusteringRules.maxClusterSize.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t FeedPersonalizationClusteringRules.bundleArticleQuotas.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedPersonalizationClusteringRules() + 24);

  return sub_1D6E8D9E0(v3, a1);
}

uint64_t sub_1D6E8D9E0(uint64_t a1, uint64_t a2)
{
  sub_1D5CEE38C(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedPersonalizationClusteringRules.maxPublisherOccurrencesByPublisherID.getter()
{
  type metadata accessor for FeedPersonalizationClusteringRules();
}

uint64_t FeedPersonalizationClusteringRules.topicDiversity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedPersonalizationClusteringRules() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D67113E8(v4, v5, v6, v7, v8);
}

double sub_1D6E8DB70()
{
  v0 = type metadata accessor for FeedPersonalizationClusteringRules();
  __swift_allocate_value_buffer(v0, qword_1EC8974C0);
  v1 = __swift_project_value_buffer(v0, qword_1EC8974C0);
  v2 = v0[6];
  v3 = type metadata accessor for FeedGroupBundleArticleQuotas();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v4 = v1 + v0[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v1 + v0[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + v0[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v0[10]) = 0;
  v7 = v1 + v0[11];
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  return result;
}

uint64_t static FeedPersonalizationClusteringRules.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87DBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeedPersonalizationClusteringRules();
  v3 = __swift_project_value_buffer(v2, qword_1EC8974C0);

  return sub_1D6E8DCDC(v3, a1);
}

uint64_t sub_1D6E8DCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPersonalizationClusteringRules();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E8DD40(uint64_t a1, uint64_t a2)
{
  if (v2[3])
  {
    v11 = v2[2];
    v12 = v2[3];

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
    a1 = v11;
    a2 = v12;
  }

  else
  {
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 32);
    v7 = v2[6];
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + 16);
    *(v6 + 16) = 0x8000000000000000;
    sub_1D6D7741C(v7, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 16) = v10;
    swift_endAccess();
  }

  return a1;
}

void *sub_1D6E8DE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (v2[3])
  {
    if (!a2)
    {

      return v3;
    }

    v13 = v2[2];
    v14 = v2[3];

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
    v7 = v2[4];
    v6 = v2[5];
    v8 = v3[6];
    swift_weakLoadStrong();
    v3 = swift_allocObject();
    swift_weakInit();
    v3[2] = v13;
    v3[3] = v14;
    v3[4] = v7;
    v3[5] = v6;
    v3[6] = v8;
    swift_weakAssign();
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v3[6];
    swift_weakLoadStrong();
    v3 = swift_allocObject();
    swift_weakInit();
    v3[2] = a1;
    v3[3] = a2;
    v3[4] = v10;
    v3[5] = v9;
    v3[6] = v11;
    swift_weakAssign();
  }

  return v3;
}

void *sub_1D6E8E000(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  if (v5)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = v2[2];
    v7 = v2[3];
    v9 = v2[6];
    swift_weakLoadStrong();
    v14 = swift_allocObject();
    swift_weakInit();
    v14[2] = v8;
    v14[3] = v7;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = v9;
    swift_weakAssign();
  }

  else
  {
    v10 = v2[3];
    v11 = v2[2];
    v16 = v2[4];

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
    v12 = v5;
    v13 = v2[6];
    swift_weakLoadStrong();
    v14 = swift_allocObject();
    swift_weakInit();
    v14[2] = v11;
    v14[3] = v10;
    v14[4] = v16;
    v14[5] = v12;
    v14[6] = v13;
    swift_weakAssign();
  }

  return v14;
}

void *sub_1D6E8E17C(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v13 = *(a1 + 1);
    v4 = v1[6];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D698F85C(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1D698F85C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[32 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
    *(v7 + 3) = v13;
    v9 = v1[2];
    v8 = v1[3];
    v11 = v1[4];
    v10 = v1[5];
    swift_weakLoadStrong();
    v1 = swift_allocObject();
    swift_weakInit();
    v1[2] = v9;
    v1[3] = v8;
    v1[4] = v11;
    v1[5] = v10;
    v1[6] = v4;
    swift_weakAssign();
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1D6E8E2E8()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E8E35C()
{
  if (*(*v0 + 24))
  {
    v1 = *(*v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1D6E8E3D4()
{
  result = type metadata accessor for WebEmbedStateMachineLoadContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebEmbedStateMachineErrorContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6E8E4B0()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    result = sub_1D5BA6EF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725891C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725891C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D6E8E6BC()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6E8E73C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E8E940(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = &unk_1F51199D0;
    }

    else
    {
      v8 = &unk_1F51199F8;
    }

    return sub_1D5E29560(v8);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v7 = &unk_1F5119A48;
    }

    else
    {
      v7 = &unk_1F5119A20;
    }

    v9 = sub_1D5E29560(v7);
    sub_1D6E8E9A4(v4);
    return v9;
  }
}

uint64_t sub_1D6E8E818@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](v2, a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E8E940(v6, v5);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    v8 = result != 2;
  }

  else if (result)
  {
    result = sub_1D6E8E9A4(v5);
    v8 = 3;
  }

  else
  {
    result = sub_1D6E8E9A4(v5);
    v8 = 2;
  }

  *a2 = v8;
  return result;
}

unint64_t sub_1D6E8E8EC()
{
  result = qword_1EDF16430;
  if (!qword_1EDF16430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16430);
  }

  return result;
}

uint64_t sub_1D6E8E940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedStateMachineEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E8E9A4(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedStateMachineEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double FormatProgressKind.value(contextLayoutOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      FormatProgressCircleOptions.value(contextLayoutOptions:)(a1, &v12);
      if (!v3)
      {
        v7 = v13;
        v8 = v15;
        v9 = v16 | 0x40;
        *a2 = v12;
        *(a2 + 8) = v7;
        result = *&v14;
        *(a2 + 16) = v14;
        *(a2 + 32) = v8;
        *(a2 + 40) = v9;
      }
    }

    else
    {
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = 0x80;
    }
  }

  else
  {
    FormatProgressPieOptions.value(contextLayoutOptions:)(a1, &v12);
    if (!v3)
    {
      v10 = v13;
      v11 = v15;
      *a2 = v12;
      *(a2 + 8) = v10;
      result = *&v14;
      *(a2 + 16) = v14;
      *(a2 + 32) = v11;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_1D6E8EB24(uint64_t a1)
{
  v2 = sub_1D6E8FD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E8EB60(uint64_t a1)
{
  v2 = sub_1D6E8FD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E8EB9C(uint64_t a1)
{
  v2 = sub_1D6E8FC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E8EBD8(uint64_t a1)
{
  v2 = sub_1D6E8FC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E8EC14()
{
  v1 = 6646128;
  if (*v0 != 1)
  {
    v1 = 0x656C63726963;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7496034;
  }
}

uint64_t sub_1D6E8EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E906E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E8EC84(uint64_t a1)
{
  v2 = sub_1D6E8FD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E8ECC0(uint64_t a1)
{
  v2 = sub_1D6E8FD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E8ECFC(uint64_t a1)
{
  v2 = sub_1D6E8FCB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E8ED38(uint64_t a1)
{
  v2 = sub_1D6E8FCB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressKind.Resolved.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D6E8FE58(0, &qword_1EC8974D8, sub_1D6E8FC60, &type metadata for FormatProgressKind.Resolved.CircleCodingKeys, MEMORY[0x1E69E6F58]);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v35 = &v30 - v6;
  sub_1D6E8FE58(0, &qword_1EC8974E8, sub_1D6E8FCB4, &type metadata for FormatProgressKind.Resolved.PieCodingKeys, v3);
  v34 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v33 = &v30 - v9;
  sub_1D6E8FE58(0, &qword_1EC8974F8, sub_1D6E8FD08, &type metadata for FormatProgressKind.Resolved.BarCodingKeys, v3);
  v11 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - v13;
  sub_1D6E8FE58(0, &qword_1EC897508, sub_1D6E8FD5C, &type metadata for FormatProgressKind.Resolved.CodingKeys, v3);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v30 - v17;
  v19 = v1[1];
  v38 = *v1;
  v39 = v19;
  v20 = v1[3];
  v40 = v1[2];
  v41 = v20;
  v42 = v1[4];
  v21 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E8FD5C();
  sub_1D7264B5C();
  if (!(v21 >> 6))
  {
    v25 = v31;
    LOBYTE(v45) = 1;
    sub_1D6E8FCB4();
    v26 = v33;
    v23 = v44;
    sub_1D726436C();
    v45 = v38;
    v46 = v39 & 1;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    sub_1D6E8FE04();
    v27 = v34;
    sub_1D726443C();
    (*(v25 + 8))(v26, v27);
    return (*(v43 + 8))(v18, v23);
  }

  if (v21 >> 6 == 1)
  {
    LOBYTE(v45) = 2;
    sub_1D6E8FC60();
    v22 = v35;
    v23 = v44;
    sub_1D726436C();
    v45 = v38;
    v46 = v39 & 1;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v21 & 0x3F;
    sub_1D6E8FDB0();
    v24 = v37;
    sub_1D726443C();
    (*(v36 + 8))(v22, v24);
    return (*(v43 + 8))(v18, v23);
  }

  LOBYTE(v45) = 0;
  sub_1D6E8FD08();
  v29 = v44;
  sub_1D726436C();
  (*(v32 + 8))(v14, v11);
  return (*(v43 + 8))(v18, v29);
}

uint64_t FormatProgressKind.Resolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6E8FE58(0, &qword_1EC897528, sub_1D6E8FC60, &type metadata for FormatProgressKind.Resolved.CircleCodingKeys, MEMORY[0x1E69E6F48]);
  v46 = v4;
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = &v45 - v6;
  sub_1D6E8FE58(0, &qword_1EC897530, sub_1D6E8FCB4, &type metadata for FormatProgressKind.Resolved.PieCodingKeys, v3);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v52 = &v45 - v10;
  sub_1D6E8FE58(0, &qword_1EC897538, sub_1D6E8FD08, &type metadata for FormatProgressKind.Resolved.BarCodingKeys, v3);
  v12 = v11;
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - v14;
  sub_1D6E8FE58(0, &qword_1EC897540, sub_1D6E8FD5C, &type metadata for FormatProgressKind.Resolved.CodingKeys, v3);
  v17 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - v19;
  v21 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D6E8FD5C();
  v22 = v55;
  sub_1D7264B0C();
  if (!v22)
  {
    v23 = v51;
    v24 = v52;
    v25 = v12;
    v26 = v53;
    v27 = sub_1D726433C();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = sub_1D60F961C();
    if (v29 == 3 || v63 != v64 >> 1)
    {
      v33 = sub_1D7263E3C();
      swift_allocError();
      v35 = v34;
      sub_1D5EEA608();
      *v35 = &type metadata for FormatProgressKind.Resolved;
      sub_1D72641FC();
      sub_1D7263DFC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v54 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v56) = 1;
          sub_1D6E8FCB4();
          sub_1D72641EC();
          v30 = v50;
          v31 = v54;
          sub_1D6E8FF14();
          v32 = v47;
          sub_1D726431C();
          (*(v48 + 8))(v24, v32);
          (*(v31 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = v56;
          v42 = v57;
          v43 = v58;
          v44 = v59;
        }

        else
        {
          LOBYTE(v56) = 2;
          sub_1D6E8FC60();
          v37 = v26;
          sub_1D72641EC();
          v30 = v50;
          v38 = v54;
          sub_1D6E8FEC0();
          v39 = v46;
          sub_1D726431C();
          (*(v49 + 8))(v37, v39);
          (*(v38 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v41 = v56;
          v42 = v57;
          v43 = v58;
          v44 = v59;
          v40 = v60 | 0x40;
        }
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_1D6E8FD08();
        sub_1D72641EC();
        (*(v23 + 8))(v15, v25);
        (*(v54 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v41 = 0;
        v42 = 0;
        v44 = 0;
        v43 = 0uLL;
        v40 = 0x80;
        v30 = v50;
      }

      *v30 = v41;
      *(v30 + 8) = v42;
      *(v30 + 16) = v43;
      *(v30 + 32) = v44;
      *(v30 + 40) = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t _s8NewsFeed18FormatProgressKindO2eeoiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v32 = *a1;
  v33 = v2;
  *v34 = a1[2];
  v3 = *v34;
  v4 = a2[1];
  *v35 = *a2;
  *&v35[16] = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v35[32] = a2[2];
  *&v35[41] = *(a2 + 41);
  v7 = *(a1 + 41);
  *&v34[9] = v7;
  v36[0] = v32;
  v36[1] = v2;
  v37[0] = v3;
  *(v37 + 9) = v7;
  v37[2] = v6;
  v37[3] = v5;
  v38[0] = a2[2];
  *(v38 + 9) = *(a2 + 41);
  v8 = HIBYTE(v7) >> 6;
  if (!v8)
  {
    if (v35[56] <= 0x3Fu)
    {
      v18 = v32;
      *&v19 = v2;
      BYTE8(v19) = BYTE8(v2) & 1;
      v20 = *v34;
      v21 = v7 >> 56;
      v13 = *v35;
      v14 = *&v35[8];
      v15 = v35[24] & 1;
      v16 = *&v35[32];
      v17 = *&v35[40];
      sub_1D66AD764(v35, &v23);
      sub_1D66AD764(&v32, &v23);
      sub_1D66AD764(v35, &v23);
      sub_1D66AD764(&v32, &v23);
      v9 = _s8NewsFeed24FormatProgressPieOptionsV2eeoiySbAC_ACtFZ_0(&v18, &v13);
      goto LABEL_7;
    }

LABEL_12:
    sub_1D66AD764(v35, &v23);
    sub_1D66AD764(&v32, &v23);
    sub_1D6E907F8(v36);
    v10 = 0;
    return v10 & 1;
  }

  if (v8 != 1)
  {
    if ((v35[56] & 0xC0) == 0x80 && v35[56] == 128)
    {
      v11 = vorrq_s8(*&v35[24], *&v35[40]);
      if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *&v35[16] | *&v35[8] | *v35))
      {
        sub_1D6E907F8(v36);
        v10 = 1;
        return v10 & 1;
      }
    }

    goto LABEL_12;
  }

  if ((v35[56] & 0xC0) != 0x40)
  {
    goto LABEL_12;
  }

  v23 = v32;
  v24 = v2;
  v25 = BYTE8(v2);
  v26 = *(&v33 + 9);
  v28 = (*(&v33 + 9) | ((*(&v33 + 13) | (HIBYTE(v33) << 16)) << 32)) >> 48;
  v27 = *(&v33 + 13);
  v29 = *v34;
  v30 = v7 >> 56;
  v31 = HIBYTE(v7) & 0x3F;
  v18 = *v35;
  v19 = *&v35[16];
  v20 = *&v35[32];
  v21 = *&v35[48];
  v22 = v35[56] & 0x3F;
  sub_1D66AD764(v35, &v13);
  sub_1D66AD764(&v32, &v13);
  sub_1D66AD764(v35, &v13);
  sub_1D66AD764(&v32, &v13);
  v9 = _s8NewsFeed27FormatProgressCircleOptionsV2eeoiySbAC_ACtFZ_0(&v23, &v18);
LABEL_7:
  v10 = v9;
  sub_1D6E907F8(v36);
  sub_1D62B63E4(v35);
  sub_1D62B63E4(&v32);
  return v10 & 1;
}

unint64_t sub_1D6E8FC60()
{
  result = qword_1EC8974E0;
  if (!qword_1EC8974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8974E0);
  }

  return result;
}

unint64_t sub_1D6E8FCB4()
{
  result = qword_1EC8974F0;
  if (!qword_1EC8974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8974F0);
  }

  return result;
}

unint64_t sub_1D6E8FD08()
{
  result = qword_1EC897500;
  if (!qword_1EC897500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897500);
  }

  return result;
}

unint64_t sub_1D6E8FD5C()
{
  result = qword_1EC897510;
  if (!qword_1EC897510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897510);
  }

  return result;
}

unint64_t sub_1D6E8FDB0()
{
  result = qword_1EC897518;
  if (!qword_1EC897518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897518);
  }

  return result;
}

unint64_t sub_1D6E8FE04()
{
  result = qword_1EC897520;
  if (!qword_1EC897520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897520);
  }

  return result;
}

void sub_1D6E8FE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6E8FEC0()
{
  result = qword_1EC897548;
  if (!qword_1EC897548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897548);
  }

  return result;
}

unint64_t sub_1D6E8FF14()
{
  result = qword_1EC897550;
  if (!qword_1EC897550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897550);
  }

  return result;
}

unint64_t sub_1D6E8FF68(uint64_t a1)
{
  result = sub_1D6E8FF90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E8FF90()
{
  result = qword_1EC897558;
  if (!qword_1EC897558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897558);
  }

  return result;
}

unint64_t sub_1D6E8FFE4(void *a1)
{
  a1[1] = sub_1D66FA638();
  a1[2] = sub_1D66AD81C();
  result = sub_1D6E9001C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E9001C()
{
  result = qword_1EC897560;
  if (!qword_1EC897560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897560);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatProgressKindO(uint64_t a1)
{
  v1 = *(a1 + 56);
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

uint64_t sub_1D6E90090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D6E900E0(uint64_t result, int a2, int a3)
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
      *(result + 57) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6E90154(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 56) & 3 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 56) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatProgressKind.Resolved(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatProgressKind.Resolved(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6E90258(uint64_t a1)
{
  v1 = *(a1 + 40);
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

uint64_t sub_1D6E90288(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 3 | (a2 << 6);
    *(result + 8) &= 1uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

unint64_t sub_1D6E90320()
{
  result = qword_1EC897568;
  if (!qword_1EC897568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897568);
  }

  return result;
}

unint64_t sub_1D6E90378()
{
  result = qword_1EC897570;
  if (!qword_1EC897570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897570);
  }

  return result;
}

unint64_t sub_1D6E903D0()
{
  result = qword_1EC897578;
  if (!qword_1EC897578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897578);
  }

  return result;
}

unint64_t sub_1D6E90428()
{
  result = qword_1EC897580;
  if (!qword_1EC897580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897580);
  }

  return result;
}

unint64_t sub_1D6E90480()
{
  result = qword_1EC897588;
  if (!qword_1EC897588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897588);
  }

  return result;
}

unint64_t sub_1D6E904D8()
{
  result = qword_1EC897590;
  if (!qword_1EC897590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897590);
  }

  return result;
}

unint64_t sub_1D6E90530()
{
  result = qword_1EC897598;
  if (!qword_1EC897598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897598);
  }

  return result;
}

unint64_t sub_1D6E90588()
{
  result = qword_1EC8975A0;
  if (!qword_1EC8975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975A0);
  }

  return result;
}

unint64_t sub_1D6E905E0()
{
  result = qword_1EC8975A8;
  if (!qword_1EC8975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975A8);
  }

  return result;
}

unint64_t sub_1D6E90638()
{
  result = qword_1EC8975B0;
  if (!qword_1EC8975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975B0);
  }

  return result;
}

unint64_t sub_1D6E90690()
{
  result = qword_1EC8975B8;
  if (!qword_1EC8975B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975B8);
  }

  return result;
}

uint64_t sub_1D6E906E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7496034 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6646128 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C63726963 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6E907F8(uint64_t a1)
{
  sub_1D6E90854();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E90854()
{
  if (!qword_1EDF102C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF102C0);
    }
  }
}

uint64_t FormatContentPoolPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContentPoolPlaceholder.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatContentPoolPlaceholder.init(identifier:items:itemOptions:itemSelectors:itemAuxiliaries:options:selectors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t FormatContentPoolSlotPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::FormatContentPoolSlotPlaceholder __swiftcall FormatContentPoolSlotPlaceholder.init(identifier:placeholders:)(Swift::String identifier, Swift::OpaquePointer placeholders)
{
  *v2 = identifier;
  *(v2 + 16) = placeholders;
  result.identifier = identifier;
  result.placeholders = placeholders;
  return result;
}

uint64_t sub_1D6E909F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  sub_1D6E91084(0, &qword_1EC8975D0, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E91030();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D72643FC();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6E90BC0()
{
  if (*v0)
  {
    return 0x736574617473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D6E90BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_1D6E90CC8(uint64_t a1)
{
  v2 = sub_1D6E91030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E90D04(uint64_t a1)
{
  v2 = sub_1D6E91030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E90D40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6E90E04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D6E90D90(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D5BF1C0C(v2, v3);
}

uint64_t sub_1D6E90E04(void *a1)
{
  sub_1D6E91084(0, &qword_1EC8975C0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E91030();
  sub_1D7264B0C();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1D72642BC();
    sub_1D5BBE0A8();
    v11[15] = 1;
    sub_1D5B99688(&qword_1EDF3C830);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6E91030()
{
  result = qword_1EC8975C8;
  if (!qword_1EC8975C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975C8);
  }

  return result;
}

void sub_1D6E91084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E91030();
    v7 = a3(a1, &type metadata for FormatDerivedDataStateMachineReference.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E910FC()
{
  result = qword_1EC8975D8;
  if (!qword_1EC8975D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975D8);
  }

  return result;
}

unint64_t sub_1D6E91154()
{
  result = qword_1EC8975E0;
  if (!qword_1EC8975E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975E0);
  }

  return result;
}

unint64_t sub_1D6E911AC()
{
  result = qword_1EC8975E8;
  if (!qword_1EC8975E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8975E8);
  }

  return result;
}

uint64_t sub_1D6E91200()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_leadingItemContainerView);
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    result = sub_1D7263BFC();
    v5 = result;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    if (v5 < 1)
    {
      __break(1u);
      goto LABEL_41;
    }

    v28 = v0;

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = *(v7 + 56);
      if (v8 >= 2)
      {
        v9 = sub_1D725E67C();
        if (v9)
        {
          v10 = v9;

          v11 = v10 == v8;
        }

        else
        {
          v11 = 0;
        }

        [*(v7 + 16) setSelected_];
      }

      v12 = *(v7 + 32);
      if (v12)
      {
        v13 = *(v7 + 16);

        [v13 setEnabled_];

        sub_1D5B74328(v12);
      }

      else
      {
      }
    }

    v0 = v28;
  }

  v15 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_trailingItemContainerView);
  v16 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
  result = swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    result = sub_1D7263BFC();
    v18 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return result;
    }
  }

  if (v18 < 1)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  for (j = 0; j != v18; ++j)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1DA6FB460](j, v17);
    }

    else
    {
      v20 = *(v17 + 8 * j + 32);
    }

    v21 = *(v20 + 56);
    if (v21 >= 2)
    {
      v22 = sub_1D725E67C();
      if (v22)
      {
        v23 = v22;

        v24 = v23 == v21;
      }

      else
      {
        v24 = 0;
      }

      [*(v20 + 16) setSelected_];
    }

    v25 = *(v20 + 32);
    if (v25)
    {
      v26 = *(v20 + 16);

      [v26 setEnabled_];

      sub_1D5B74328(v25);
    }

    else
    {
    }
  }
}

uint64_t sub_1D6E914D8()
{
  v1 = sub_1D6E92EA8(v0);
  sub_1D5B5D53C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72EC970;
  sub_1D5B5A498(0, &qword_1EDF04350);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 40) = sub_1D726375C();

  sub_1D725B31C();

  v21[10] = v17;
  v21[11] = v18;
  v21[12] = v19;
  v21[6] = v13;
  v21[7] = v14;
  v21[8] = v15;
  v21[9] = v16;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v12;
  v21[0] = v7;
  v21[1] = v8;
  v23[10] = v17;
  v23[11] = v18;
  v23[12] = v19;
  v23[6] = v13;
  v23[7] = v14;
  v23[8] = v15;
  v23[9] = v16;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  v23[5] = v12;
  v22 = v20;
  v24 = v20;
  v23[0] = v7;
  v23[1] = v8;
  if (sub_1D5DEA380(v23) != 1)
  {
    sub_1D5F0B7F0(v21);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 48) = sub_1D726375C();
  sub_1D5B5A498(0, &qword_1EC885090);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  *(v2 + 56) = sub_1D726375C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 64) = sub_1D726375C();
  v5 = sub_1D726340C();

  return v5;
}

uint64_t sub_1D6E91984()
{
  v1 = v0;
  sub_1D6E93E9C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;

  sub_1D6A9DC44(v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D5B6F3F8(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v7 + 32))(v14, v5, v6);
  (*(v7 + 16))(v10, v14, v6);
  v16 = objc_allocWithZone(type metadata accessor for DebugFormatSelectPackageViewController());

  v18 = sub_1D6743E00(v17, v10);
  v19 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v19 setModalPresentationStyle_];
  [v19 setModalInPresentation_];
  [v1 presentViewController:v19 animated:1 completion:0];

  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_1D6E91C2C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController____lazy_storage___uploadPresenter;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController____lazy_storage___uploadPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController____lazy_storage___uploadPresenter);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_editor);
    type metadata accessor for DebugFormatUploadPresenter();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D6E91CAC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_leadingItemContainerView;
  v5 = type metadata accessor for DebugFormatDockButtonItemContainerView();
  *&v1[v4] = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_trailingItemContainerView;
  *&v1[v6] = [objc_allocWithZone(v5) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_separator;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController____lazy_storage___uploadPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_editor] = *(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_editor);
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController] = a1;
  v9.receiver = v1;
  v9.super_class = ObjectType;

  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D6E91E04()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_separator];
  v11 = [v4 separatorColor];
  [v10 setBackgroundColor_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController];
  [v1 addChildViewController_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v14 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  [v16 addSubview_];

  [v14 didMoveToParentViewController_];
  v19 = [v14 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  [v19 setClipsToBounds_];

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725B33C();

  sub_1D725B2EC();

  v37 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController;
  v21 = *&v14[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController];
  v22 = sub_1D725E66C();

  v36 = v22;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_compilerViewController;
    v25 = (v36 + 32);
    do
    {
      v26 = *&v14[v37];
      v27 = swift_allocObject();
      v38 = *v25;
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v38;
      type metadata accessor for DebugFormatDockButtonItem();
      swift_allocObject();
      v29 = v38;
      v30 = sub_1D6C0D6EC(v29, *(&v38 + 1), v26, sub_1D6E93E20, v28);
      if (*&v14[v24] == v29)
      {

        sub_1D725B33C();

        sub_1D725B35C();
      }

      sub_1D5EE6AEC(v30);

      ++v25;
      --v23;
    }

    while (v23);
  }

  sub_1D6E9270C();
  sub_1D5EE6AEC(v31);
  v32 = sub_1D726203C();
  v33 = [objc_opt_self() systemImageNamed_];

  if (v33)
  {
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DebugFormatDockButtonItem();
    swift_allocObject();
    v35 = sub_1D6C0CFEC(v33, 0x502064616F6C7055, 0xEF736567616B6361, sub_1D6E93E2C, v34);
    sub_1D5EE6AEC(v35);

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1D6E923F0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1D6E93EF0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D5B6B06C;
  v6[3] = &block_descriptor_104;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.3];
  _Block_release(v4);
}

void sub_1D6E924E4(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

uint64_t sub_1D6E925A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(sub_1D6BF6F14(*a2) + 16);

  if (v3)
  {
    sub_1D6BF6F14(v2);

    v4 = objc_opt_self();
    v5 = [v4 whiteColor];
    v6 = [v4 systemRedColor];
  }

  else
  {
    v7 = *(sub_1D6BF6C58(v2) + 16);

    if (!v7)
    {

      sub_1D725B32C();
    }

    sub_1D6BF6C58(v2);

    v8 = objc_opt_self();
    v5 = [v8 blackColor];
    v6 = [v8 systemYellowColor];
  }

  v9 = v6;

  v10 = v5;
  v11 = v9;
  sub_1D725B32C();
}

void sub_1D6E9270C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DebugFormatDockButtonItem();
    swift_allocObject();
    v3 = sub_1D6C0E364(v1, sub_1D6E93E8C, v2);

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[4];
    v3[4] = sub_1D6E93E94;
    v3[5] = v4;
    swift_retain_n();
    sub_1D5B74328(v5);
    [v3[2] setEnabled_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D6E928BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725EDAC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78.receiver = v1;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, sel_viewWillLayoutSubviews, v6);
  v9 = [v1 traitCollection];
  [v9 displayScale];
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_separator];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v79.origin.x = v16;
  v79.origin.y = v18;
  v79.size.width = v20;
  v79.size.height = v22;
  [v12 setFrame_];

  sub_1D725972C();

  if (v77[24] != 1)
  {
    goto LABEL_9;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = result;
  v24 = [result traitCollection];

  v25 = [v24 horizontalSizeClass];
  if (v25 != 2)
  {
LABEL_9:
    v26 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController];
    result = [v26 view];
    if (!result)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v48 = result;
    result = [v1 view];
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v49 = result;
    [result bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    [v48 setFrame_];
    [v26 setPresentsWithGesture_];
    v47 = MEMORY[0x1E69D8390];
    goto LABEL_12;
  }

  v26 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController];
  result = [v26 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = result;
  [result bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v80.origin.x = v30;
  v80.origin.y = v32;
  v80.size.width = v34;
  v80.size.height = v36;
  Width = CGRectGetWidth(v80);
  result = [v1 view];
  if (result)
  {
    v38 = result;
    [result bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v81.origin.x = v40;
    v81.origin.y = v42;
    v81.size.width = v44;
    v81.size.height = v46;
    [v27 setFrame_];

    [v26 setPresentsWithGesture_];
    v47 = MEMORY[0x1E69D8398];
LABEL_12:
    v58 = *&v26[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController];
    (*(v4 + 104))(v8, *v47, v3);
    v59 = v58;
    sub_1D725E6AC();

    v60 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_leadingItemContainerView];
    v61 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
    swift_beginAccess();
    v62 = *&v60[v61];
    if (v62 >> 62)
    {
      v63 = sub_1D7263BFC();
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v60 setFrame_];
    v64 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_trailingItemContainerView];
    v65 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDockButtonItemContainerView_items;
    swift_beginAccess();
    v66 = *&v64[v65];
    if (v66 >> 62)
    {
      v67 = sub_1D7263BFC();
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = [v1 view];
    if (result)
    {
      v68 = result;
      [result bounds];
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;

      v82.origin.x = v70;
      v82.origin.y = v72;
      v82.size.width = v74;
      v82.size.height = v76;
      return [v64 setFrame_];
    }

    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D6E92EA8(uint64_t a1)
{
  sub_1D6E93E9C(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3).n128_u64[0];
  v6 = v13 - v5;
  v7 = [*(*(a1 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController) + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController) navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 topViewController];

    if (v9)
    {
      type metadata accessor for DebugFormatPackageTreeViewController();
      if (swift_dynamicCastClass())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1D72600CC();

        return v13[1];
      }
    }
  }

  sub_1D725B31C();

  v11 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if ((*(*(v11 - 8) + 48))(v6, 1, v11))
  {
    sub_1D5B6F3F8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    return 0;
  }

  else
  {
    v12 = *&v6[*(v11 + 24)];

    sub_1D5B6F3F8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    return v12;
  }
}

uint64_t sub_1D6E930EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1D6E91C2C();
    v2 = *(*&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_inventoryViewController);
    sub_1D6C82984();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    v26 = __dst[0];
    v17 = v1;

    sub_1D725B31C();

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v29, __src, sizeof(v29));
    v3 = sub_1D71689D8();
    sub_1D60CEF18(__dst);
    v28 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v5 = 0;
      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      v22 = v3 & 0xC000000000000001;
      v19 = v3;
      v20 = v3 + 32;
      v23 = (v26 + 32);
      v18 = i;
      while (1)
      {
        if (v22)
        {
          v27 = MEMORY[0x1DA6FB460](v5, v3);
          v6 = __OFADD__(v5++, 1);
          if (v6)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          goto LABEL_8;
        }

        if (v5 >= *(v21 + 16))
        {
          break;
        }

        v27 = *(v20 + 8 * v5);

        v6 = __OFADD__(v5++, 1);
        if (v6)
        {
          goto LABEL_34;
        }

LABEL_8:
        v24 = *(v26 + 16);
        if (!v24)
        {
          goto LABEL_28;
        }

        v7 = *v23;
        v3 = *(*v23 + 16);
        if (!v3)
        {
          goto LABEL_28;
        }

        v8 = 1;
        do
        {
          v25 = v8;

          v9 = 0;
          v10 = v7 + 40;
          v11 = v3 - 1;
          v12 = 1;
          while (1)
          {
            if (v12)
            {
              v3 = *(v27 + 16);
              v13 = v3 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v13 + 8))
              {
                sub_1D726210C();
                v3 = v14;
                sub_1D5BF4D9C();

                v15 = sub_1D7263ABC();

                if (v15)
                {

LABEL_18:
                  if (v11 == v9)
                  {

                    goto LABEL_28;
                  }

                  v12 = 1;
                  goto LABEL_12;
                }

                v3 = sub_1D7263ABC();

                if (v3)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                sub_1D5BF4D9C();
                if (sub_1D7263ABC())
                {
                  goto LABEL_18;
                }
              }
            }

            if (v11 == v9)
            {
              break;
            }

            v12 = 0;
LABEL_12:
            ++v9;
            v10 += 16;
            if (v9 >= *(v7 + 16))
            {
              __break(1u);
              goto LABEL_37;
            }
          }

          if (v25 == v24)
          {

            goto LABEL_29;
          }

          if (v25 >= *(v26 + 16))
          {
            goto LABEL_38;
          }

          v7 = v23[v25];
          v8 = v25 + 1;
          v3 = *(v7 + 16);
        }

        while (v3);
LABEL_28:
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
LABEL_29:
        v3 = v19;
        if (v5 == v18)
        {
LABEL_35:
          v16 = v28;
          goto LABEL_41;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_41:

    sub_1D69F8A48(v16, v17);
  }

  return result;
}

void sub_1D6E93570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1D725B31C();

    v17[10] = v13;
    v17[11] = v14;
    v17[12] = v15;
    v17[6] = v9;
    v17[7] = v10;
    v17[8] = v11;
    v17[9] = v12;
    v17[2] = v5;
    v17[3] = v6;
    v17[4] = v7;
    v17[5] = v8;
    v17[0] = v3;
    v17[1] = v4;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v21 = v5;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v18 = v16;
    v32 = v16;
    v19 = v3;
    v20 = v4;
    if (sub_1D5DEA380(&v19) != 1)
    {
      sub_1D6E91C2C();
      v13 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
      v9 = v25;
      v10 = v26;
      v11 = v27;
      v12 = v28;
      v5 = v21;
      v6 = v22;
      v7 = v23;
      v8 = v24;
      v3 = v19;
      v4 = v20;
      v2 = sub_1D6312F2C(&v3);
      sub_1D69F8A48(v2, v1);
      sub_1D61DEB94(v2);

      sub_1D5F0B7F0(v17);
    }
  }
}

void sub_1D6E93700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      sub_1D6E91C2C();
      sub_1D5B5D53C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D72816C0;
      *(v6 + 32) = a3;
      swift_retain_n();
      sub_1D69F8A48(v6, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1D6E937F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D6E91C2C();
    sub_1D69F8A48(a3, v5);
  }

  return result;
}

void sub_1D6E93870(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController;
    v6 = *(*(Strong + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_mainViewController) + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController);
    v7 = sub_1D725E67C();

    if (!v7 || (v7, v7 != a2))
    {
      v8 = [v4 traitCollection];
      v9 = [v8 horizontalSizeClass];

      if (v9 == 2 && [*&v4[v5] displayMode] == 1)
      {
        [*&v4[v5] toggleSidebar_];
      }

      v10 = *(*&v4[v5] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController);
      sub_1D725E6BC();

      v11 = [*(*&v4[v5] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController) navigationController];
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = v11;
      v13 = [v11 viewControllers];
      sub_1D5B5A498(0, &qword_1EDF1AA80);
      v14 = sub_1D726267C();

      if (v14 >> 62)
      {
        v15 = sub_1D7263BFC();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 >= 2)
      {
        v16 = [v12 popViewControllerAnimated_];

        v12 = v16;
      }

      goto LABEL_20;
    }

    v17 = [*(*&v4[v5] + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_sidebarViewController) navigationController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 viewControllers];
      sub_1D5B5A498(0, &qword_1EDF1AA80);
      v20 = sub_1D726267C();

      if (v20 >> 62)
      {
        v21 = sub_1D7263BFC();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v21 >= 2)
      {
        v12 = [v18 popViewControllerAnimated_];

        goto LABEL_20;
      }
    }

    v22 = [v4 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 != 2)
    {
LABEL_21:

      return;
    }

    v12 = *&v4[v5];
    [v12 toggleSidebar_];
LABEL_20:

    goto LABEL_21;
  }
}

void sub_1D6E93BA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D6E91984();
  }
}

uint64_t sub_1D6E93BF8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1D725B31C();

    return v2;
  }

  return result;
}

uint64_t sub_1D6E93C8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = sub_1D6E914D8();

  v3 = [v2 children];
  sub_1D5B5A498(0, &qword_1EC883280);
  v4 = sub_1D726267C();

  return v4;
}

void sub_1D6E93E9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D6E93EF8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_leadingItemContainerView;
  v2 = type metadata accessor for DebugFormatDockButtonItemContainerView();
  *(v0 + v1) = [objc_allocWithZone(v2) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_trailingItemContainerView;
  *(v0 + v3) = [objc_allocWithZone(v2) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController_separator;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatDockViewController____lazy_storage___uploadPresenter) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t PluginModel.feedItem.getter@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  type metadata accessor for FeedItem(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t PluginModel.feedContextIdentifier.getter()
{
  sub_1D725CC0C();
  sub_1D5E4049C();
  return sub_1D7263ADC();
}

uint64_t sub_1D6E940DC@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for FeedItem(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E94130()
{
  sub_1D725CC0C();
  sub_1D5E4049C();
  return sub_1D7263ADC();
}

double PluginModel.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72F40E0;
  return result;
}

unint64_t sub_1D6E941BC(uint64_t a1)
{
  result = sub_1D6E941E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6E941E4()
{
  result = qword_1EDF17310;
  if (!qword_1EDF17310)
  {
    sub_1D725CC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17310);
  }

  return result;
}

id InternalErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *InternalErrorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_onButtonTap;
  sub_1D5BFDBB4();
  v13 = v12;
  *&v5[v11] = [objc_allocWithZone(v12) init];
  v14 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_onErrorButtonTap;
  *&v5[v14] = [objc_allocWithZone(v13) init];
  v15 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_iconImageView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_titleLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_errorLabel;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_subtitleLabel;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_footerLabel;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_button;
  *&v5[v20] = [objc_allocWithZone(sub_1D725DB3C()) initWithFrame_];
  v21 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_attachmentLabel;
  sub_1D725D04C();
  *&v5[v21] = sub_1D725D01C();
  v22 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = *&v23[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_iconImageView];
  v25 = v23;
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  v26 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_button;
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  v27 = *&v25[v26];
  v28 = *&v25[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_onButtonTap];
  v29 = v27;
  sub_1D725F67C();

  return v25;
}

id InternalErrorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InternalErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6E947E8()
{
  sub_1D5BBDE68(&qword_1EDF2EC08);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed17InternalErrorViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_onButtonTap;
  sub_1D5BFDBB4();
  v4 = v3;
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_onErrorButtonTap;
  *(v1 + v5) = [objc_allocWithZone(v4) init];
  v6 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_iconImageView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_titleLabel;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_errorLabel;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_subtitleLabel;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_footerLabel;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_button;
  *(v1 + v11) = [objc_allocWithZone(sub_1D725DB3C()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_attachmentLabel;
  sub_1D725D04C();
  *(v1 + v12) = sub_1D725D01C();
  v13 = OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton;
  *(v1 + v13) = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6E94A50()
{
  v2 = [objc_opt_self() cachedOnlyCachePolicy];
  sub_1D6E956DC(0, &unk_1EDF17950, sub_1D5B90088, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0 = sub_1D725BBAC();

  return v0;
}

uint64_t sub_1D6E94B28()
{
  v2 = [objc_opt_self() defaultCachePolicy];
  sub_1D6E956DC(0, &unk_1EDF17950, sub_1D5B90088, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0 = sub_1D725BBAC();

  return v0;
}

uint64_t sub_1D6E94C00(id *a1)
{
  v2 = sub_1D725ABEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6E956DC(0, &qword_1EDF17650, sub_1D5B63B80, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v16 = *a1;
  v9 = qword_1EDF17D30;
  v10 = v16;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_1EDF17D38);
  v12 = (*(v3 + 16))(v6, v11, v2);
  MEMORY[0x1EEE9AC00](v12, v13);
  *(&v15 - 2) = sub_1D5B63B80();
  swift_getKeyPath();
  sub_1D725BF6C();
  return sub_1D725A9AC();
}

uint64_t sub_1D6E94E08(uint64_t a1)
{
  sub_1D5B90088();
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = a1;

  v2 = sub_1D725B92C();
  sub_1D725BB7C();

  v3 = sub_1D725B92C();
  sub_1D725A9BC();
  sub_1D6E95750(&unk_1EDF1AE30, sub_1D5B90088);
  v4 = sub_1D725BBDC();

  return v4;
}

void sub_1D6E94FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15 = *(a5 + 16);
  v16 = *(a6 + 16);
  if (!v16)
  {

    goto LABEL_5;
  }

  v29 = v15;
  v30 = v13;
  v31 = a3;
  v32 = a4;
  v17 = sub_1D5B9A6D8(v16, 0);
  v18 = sub_1D5B9A6EC(&aBlock, v17 + 4, v16, a6);
  v19 = aBlock;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;

  sub_1D5BA45DC(v19, v20, v21, v22, v23);
  if (v18 == v16)
  {
    a3 = v31;
    a4 = v32;
    v15 = v29;
    v14 = v30;
LABEL_5:
    v24 = objc_allocWithZone(MEMORY[0x1E69B5370]);
    v25 = sub_1D726265C();

    v26 = [v24 initWithContext:v15 issueIDs:v25];

    [v26 setQualityOfService_];
    [v26 setRelativePriority_];
    [v26 setCachePolicy_];
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = a4;
    v27[4] = a6;
    v27[5] = sub_1D5B7E910;
    v27[6] = v14;
    v38 = sub_1D6E95740;
    v39 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1D7014C08;
    v37 = &block_descriptor_105;
    v28 = _Block_copy(&aBlock);

    [v26 setFetchCompletionHandler_];
    _Block_release(v28);
    [v26 start];

    return;
  }

  __break(1u);
}

void sub_1D6E9521C(unint64_t a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, void (*a6)(unint64_t), uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    v9 = a2;
    v10 = v8;
LABEL_3:
    a3(v10);
    v11 = v8;
LABEL_4:

    return;
  }

  v12 = a1;
  if (!a1)
  {
    v16 = sub_1D725B50C();
    sub_1D6E95750(&qword_1EDF17B48, MEMORY[0x1E69D68A0]);
    a5 = swift_allocError();
    v12 = v28;
    if (qword_1EDF17D30 == -1)
    {
LABEL_25:
      v29 = sub_1D725ABEC();
      v30 = __swift_project_value_buffer(v29, qword_1EDF17D38);
      (*(*(v29 - 8) + 16))(v12, v30, v29);
      (*(*(v16 - 1) + 104))(v12, *MEMORY[0x1E69D6890], v16);
      a3(a5);
      v11 = a5;
      goto LABEL_4;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

  v41 = a7;
  if (a1 >> 62)
  {
    v14 = sub_1D7263BFC();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_20;
  }

  v38 = a5;
  v39 = a3;
  v42 = MEMORY[0x1E69E7CC0];
  v16 = &v42;
  sub_1D5BFC364(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v17 = 0;
  v15 = v42;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA6FB460](v17, v12);
    }

    else
    {
      v18 = *(v12 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = [v18 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    v42 = v15;
    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1D5BFC364((v24 > 1), v25 + 1, 1);
      v15 = v42;
    }

    ++v17;
    *(v15 + 16) = v25 + 1;
    v26 = v15 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
  }

  while (v14 != v17);
  a5 = v38;
  a3 = v39;
LABEL_20:
  v27 = sub_1D5B86020(v15);

  if ((sub_1D5BFC390(v27, a5) & 1) == 0)
  {
    v31 = sub_1D725B50C();
    sub_1D6E95750(&qword_1EDF17B48, MEMORY[0x1E69D68A0]);
    v8 = swift_allocError();
    v33 = v32;
    if (qword_1EDF17D30 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725ABEC();
    v35 = __swift_project_value_buffer(v34, qword_1EDF17D38);
    (*(*(v34 - 8) + 16))(v33, v35, v34);
    if (*(v27 + 16) <= *(a5 + 16) >> 3)
    {
      v42 = a5;

      sub_1D6836478(v27);

      v36 = v42;
    }

    else
    {

      v36 = sub_1D6E14F70(v27, a5);
    }

    sub_1D691F858();
    *(v33 + *(v37 + 48)) = v36;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69D6898], v31);
    v10 = v8;
    goto LABEL_3;
  }

  a6(v12);
}

void sub_1D6E956DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6E95750(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D6E957AC()
{
  v0 = objc_opt_self();
  v1 = [v0 secondaryLabelColor];
  result = [v0 systemPinkColor];
  qword_1EC897678 = v1;
  unk_1EC897680 = result;
  return result;
}

NewsFeed::HiddenContentColorPalette __swiftcall HiddenContentColorPalette.init(titleTextColor:dismissalTextColor:)(UIColor titleTextColor, UIColor dismissalTextColor)
{
  v2->super.isa = titleTextColor.super.isa;
  v2[1].super.isa = dismissalTextColor.super.isa;
  result.dismissalTextColor = dismissalTextColor;
  result.titleTextColor = titleTextColor;
  return result;
}

id static HiddenContentColorPalette.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DC00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EC897678;
  v1 = unk_1EC897680;
  v6 = unk_1EC897680;
  *a1 = qword_1EC897678;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

uint64_t static Sizing.publisherLogo(height:headline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = [*(a1 + 40) sourceChannel];
  if (v9)
  {
    v10 = [v9 theme];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() defaultMetrics];
  static Sizing.publisherLogo(height:theme:fontMetrics:)(v10, v11, a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t static Sizing.cardSpacingHeight(_:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7259CEC();
  if (v2 > 24.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 24.0;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  v5 = *MEMORY[0x1E69D7488];
  v6 = sub_1D725A52C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t static Sizing.publisherLogo(height:theme:fontMetrics:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v39 = a5;
  v11 = sub_1D7259BBC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (v36 - v14);
  v40 = a3;
  v16 = sub_1D725A52C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v23 = MEMORY[0x1EEE9AC00](v21, v22).n128_u64[0];
  v38 = v36 - v24;
  if (a1)
  {
    [a1 bannerImageScale];
    v26 = v25;
    [a1 bannerImageBaselineOffsetPercentage];
    v28 = v27;
  }

  else
  {
    v26 = 1.0;
    v28 = 0;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a6;
  *v20 = v29;
  (*(v17 + 104))(v20, *MEMORY[0x1E69D7418], v16);
  *v15 = v26;
  v30 = *MEMORY[0x1E69D7038];
  v37 = *(v12 + 104);
  v37(v15, v30, v11);
  v31 = a2;
  v32 = v38;
  v36[1] = a4;
  sub_1D725A21C();
  v33 = *(v12 + 8);
  v33(v15, v11);
  v34 = *(v17 + 8);
  v34(v20, v16);
  *v15 = 0.0;
  *(v15 + 1) = v28;
  v37(v15, *MEMORY[0x1E69D6FC8], v11);
  sub_1D725A21C();
  v33(v15, v11);
  return (v34)(v32, v16);
}

void static Sizing.publisherLogo(height:issue:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = [objc_msgSend(*a1 sourceChannel)];
  swift_unknownObjectRelease();
  v10 = [objc_opt_self() defaultMetrics];
  static Sizing.publisherLogo(height:theme:fontMetrics:)(v9, v10, a2, a3, a4, a5);
  swift_unknownObjectRelease();
}

uint64_t sub_1D6E95E48(uint64_t a1)
{
  sub_1D6E96094();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for FeedSponsorshipBannerAd();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D67524A0(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v5);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1D6E960EC(v5, v10);
  v11 = sub_1D726086C();
  if (v11)
  {
    v12 = v11;
    sub_1D725C11C();
    if (swift_dynamicCastClass())
    {
      v13 = sub_1D7259EEC();
      sub_1D725C10C();

      return sub_1D6E96150(v10, type metadata accessor for FeedSponsorshipBannerAd);
    }
  }

  return sub_1D6E96150(v10, type metadata accessor for FeedSponsorshipBannerAd);
}

void sub_1D6E96094()
{
  if (!qword_1EDF36578)
  {
    type metadata accessor for FeedSponsorshipBannerAd();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF36578);
    }
  }
}

uint64_t sub_1D6E960EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E96150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::PuzzleFullScreenModalBlurEffect_optional __swiftcall PuzzleFullScreenModalBlurEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleFullScreenModalBlurEffect.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746867696CLL;
  v3 = 1802658148;
  v4 = 0x7261446172747865;
  if (v1 != 4)
  {
    v4 = 0x6E656E696D6F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x67694C6172747865;
  if (v1 != 1)
  {
    v5 = 0x72616C75676572;
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

uint64_t sub_1D6E962EC()
{
  sub_1D72621EC();
}

void sub_1D6E963EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  v5 = 0xE400000000000000;
  v6 = 1802658148;
  v7 = 0x7261446172747865;
  v8 = 0xE90000000000006BLL;
  if (v2 != 4)
  {
    v7 = 0x6E656E696D6F7270;
    v8 = 0xE900000000000074;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEA00000000007468;
  v10 = 0x67694C6172747865;
  if (v2 != 1)
  {
    v10 = 0x72616C75676572;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

NewsFeed::PuzzleModalType_optional __swiftcall PuzzleModalType.init(rawValue:)(Swift::String rawValue)
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

unint64_t PuzzleModalType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C6169726F747574;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656C7A7A7570;
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

uint64_t sub_1D6E9658C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E96650()
{
  sub_1D72621EC();
}

uint64_t sub_1D6E96700()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6E967CC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C6169726F747574;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D73B94B0;
  }

  if (*v1)
  {
    v3 = 0x656C7A7A7570;
    v2 = 0xE600000000000000;
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

uint64_t PuzzleFullScreenModal.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::PuzzleFullScreenModal __swiftcall PuzzleFullScreenModal.init(identifier:blurEffect:isGameplay:modalType:)(NewsFeed::PuzzleFullScreenModal identifier, NewsFeed::PuzzleFullScreenModalBlurEffect_optional blurEffect, Swift::Bool_optional isGameplay, NewsFeed::PuzzleModalType_optional modalType)
{
  v5 = *blurEffect.value;
  v6 = *modalType.value;
  *v4 = identifier.identifier;
  *(v4 + 16) = v5;
  *(v4 + 17) = isGameplay;
  *(v4 + 18) = v6;
  identifier.blurEffect = blurEffect;
  return identifier;
}

unint64_t sub_1D6E968BC()
{
  result = qword_1EC897688;
  if (!qword_1EC897688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897688);
  }

  return result;
}

unint64_t sub_1D6E96914()
{
  result = qword_1EC897690;
  if (!qword_1EC897690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897690);
  }

  return result;
}

uint64_t sub_1D6E96988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1D6E969D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6E96A24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();
}

uint64_t sub_1D6E96A9C(uint64_t a1, __int128 *a2)
{
  v3 = a2[11];
  v31[10] = a2[10];
  v31[11] = v3;
  v31[12] = a2[12];
  v32 = *(a2 + 26);
  v4 = a2[7];
  v31[6] = a2[6];
  v31[7] = v4;
  v5 = a2[9];
  v31[8] = a2[8];
  v31[9] = v5;
  v6 = a2[3];
  v31[2] = a2[2];
  v31[3] = v6;
  v7 = a2[5];
  v31[4] = a2[4];
  v31[5] = v7;
  v8 = a2[1];
  v31[0] = *a2;
  v31[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a2[11];
  v27 = a2[10];
  v28 = v9;
  v29 = a2[12];
  v30 = *(a2 + 26);
  v10 = a2[7];
  v23 = a2[6];
  v24 = v10;
  v11 = a2[9];
  v25 = a2[8];
  v26 = v11;
  v12 = a2[3];
  v19 = a2[2];
  v20 = v12;
  v13 = a2[5];
  v21 = a2[4];
  v22 = v13;
  v14 = a2[1];
  v17 = *a2;
  v18 = v14;
  sub_1D6DAB0E0(v31, v16);

  return sub_1D72600DC();
}

uint64_t sub_1D6E96BA4()
{

  v1 = OBJC_IVAR____TtC8NewsFeed22DebugFormatBindingTree__workspace;
  sub_1D619BF58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatBindingTree()
{
  result = qword_1EC8976A0;
  if (!qword_1EC8976A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E96C9C()
{
  sub_1D619BF58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1D6E96D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory] = 3;
  v7 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCF60]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = &v3[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock];
  *v9 = 0;
  v9[1] = 0;
  if (a3)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  v62.receiver = v3;
  v62.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v62, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider];
  v14 = v11;
  [v13 setMinimumValue_];
  LODWORD(v15) = 11.0;
  [*&v11[v12] setMaximumValue_];
  v16 = *&v11[v12];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setTintColor_];

  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v11[v12] addTarget:v14 action:sel_onValueChangeWithSlider_ forControlEvents:4096];
  v20 = [v14 contentView];
  [v20 addSubview_];

  v21 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label;
  v22 = *&v14[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 systemFontOfSize_];
  [v24 setFont_];

  [*&v14[v21] setTextAlignment_];
  [*&v14[v21] setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v14 &selRef_navigationChromeSeparatorColor];
  [v26 addSubview_];

  v61 = objc_opt_self();
  sub_1D5E42B34();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D727D5D0;
  v28 = [*&v11[v12] topAnchor];
  v29 = [v14 &selRef_navigationChromeSeparatorColor];
  v30 = [v29 &selRef_dataProvider];

  v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
  *(v27 + 32) = v31;
  v32 = [*&v11[v12] leadingAnchor];
  v33 = [v14 &selRef_navigationChromeSeparatorColor];
  v34 = [v33 layoutMarginsGuide];

  v35 = [v34 &off_1E84D3528 + 1];
  v36 = [v32 constraintEqualToAnchor_];

  *(v27 + 40) = v36;
  v37 = [*&v11[v12] trailingAnchor];
  v38 = [v14 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor_];

  *(v27 + 48) = v41;
  v42 = [*&v14[v21] topAnchor];
  v43 = [*&v11[v12] bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:8.0];

  *(v27 + 56) = v44;
  v45 = [*&v14[v21] leadingAnchor];
  v46 = [v14 contentView];
  v47 = [v46 layoutMarginsGuide];

  v48 = [v47 leadingAnchor];
  v49 = [v45 &selRef_size + 5];

  *(v27 + 64) = v49;
  v50 = [*&v14[v21] trailingAnchor];
  v51 = [v14 contentView];
  v52 = [v51 layoutMarginsGuide];

  v53 = [v52 trailingAnchor];
  v54 = [v50 &selRef_size + 5];

  *(v27 + 72) = v54;
  v55 = [*&v14[v21] bottomAnchor];
  v56 = [v14 contentView];

  v57 = [v56 bottomAnchor];
  v58 = [v55 constraintEqualToAnchor:v57 constant:-8.0];

  *(v27 + 80) = v58;
  sub_1D60D0DF4();
  v59 = sub_1D726265C();

  [v61 activateConstraints_];

  return v14;
}

id sub_1D6E97520(void *a1)
{
  result = [a1 value];
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_1D5EDF410(v3);
  if (result != 12)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory;
    *(v1 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory) = result;
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label);
    sub_1D5EDF2A8(result);
    v7 = sub_1D726203C();

    [v6 setText_];

    LOBYTE(v8) = *(v1 + v5);
    *&v9 = v8;
    result = [*(v1 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider) setValue_];
    v10 = *(v1 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock);
    if (v10)
    {

      v10(v4);

      return sub_1D613694C(v10);
    }
  }

  return result;
}

void sub_1D6E9775C()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_contentSizeCategory) = 3;
  v1 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_slider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCF60]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6E97868()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D6E978A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73F5580 == a2)
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

uint64_t sub_1D6E97984(uint64_t a1)
{
  v2 = sub_1D6E97C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E979C0(uint64_t a1)
{
  v2 = sub_1D6E97C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CategoryViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6E981F0(0, &qword_1EC8976D0, sub_1D6E97C28, &type metadata for CategoryViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v14 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E97C28();
  sub_1D7264B5C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAAD4(&qword_1EC8801E8);
  sub_1D726443C();
  if (!v2)
  {
    *&v15 = v14;
    v17 = 1;
    sub_1D6E97C7C();
    sub_1D6E97F94(&qword_1EC8976D8, sub_1D6E97CCC);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6E97C28()
{
  result = qword_1EDF107C0;
  if (!qword_1EDF107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF107C0);
  }

  return result;
}

void sub_1D6E97C7C()
{
  if (!qword_1EDF04BD8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04BD8);
    }
  }
}

unint64_t sub_1D6E97CCC()
{
  result = qword_1EDF0ABD8;
  if (!qword_1EDF0ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABD8);
  }

  return result;
}

uint64_t CategoryViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6E981F0(0, &qword_1EDF03A60, sub_1D6E97C28, &type metadata for CategoryViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E97C28();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D5BEAAD4(&qword_1EDF1A740);
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    sub_1D6E97C7C();
    v20 = 1;
    sub_1D6E97F94(&qword_1EDF04BC8, sub_1D6E98000);
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v18;
    v14 = v15;
    *v11 = v16;
    *(v11 + 16) = v14;
    *(v11 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6E97F94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6E97C7C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E98000()
{
  result = qword_1EDF0ABD0;
  if (!qword_1EDF0ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABD0);
  }

  return result;
}

uint64_t sub_1D6E98054(uint64_t a1)
{
  v2 = sub_1D6E986C4();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6E980C0()
{
  sub_1D6C56318();

  return sub_1D725A24C();
}

uint64_t CategoryViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6E981F0(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

void sub_1D6E981F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6E9825C()
{
  result = qword_1EDF107A0;
  if (!qword_1EDF107A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF107A0);
  }

  return result;
}

unint64_t sub_1D6E982B4()
{
  result = qword_1EC8976E0;
  if (!qword_1EC8976E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8976E0);
  }

  return result;
}

unint64_t sub_1D6E9830C()
{
  result = qword_1EDF10788;
  if (!qword_1EDF10788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10788);
  }

  return result;
}

unint64_t sub_1D6E98364()
{
  result = qword_1EDF10790;
  if (!qword_1EDF10790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10790);
  }

  return result;
}

unint64_t sub_1D6E983BC()
{
  result = qword_1EDF107A8;
  if (!qword_1EDF107A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF107A8);
  }

  return result;
}

uint64_t sub_1D6E98410@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6E981F0(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D6E984E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1D6E9852C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6E985C0()
{
  result = qword_1EC8976E8;
  if (!qword_1EC8976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8976E8);
  }

  return result;
}

unint64_t sub_1D6E98618()
{
  result = qword_1EDF107B0;
  if (!qword_1EDF107B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF107B0);
  }

  return result;
}

unint64_t sub_1D6E98670()
{
  result = qword_1EDF107B8;
  if (!qword_1EDF107B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF107B8);
  }

  return result;
}

unint64_t sub_1D6E986C4()
{
  result = qword_1EC8976F0;
  if (!qword_1EC8976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8976F0);
  }

  return result;
}

uint64_t PuzzleStatisticCategory.primaryValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v13, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    return sub_1D6EA2830(v13, type metadata accessor for PuzzleStatisticCategory);
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D6EA8A74(v13, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    PuzzleStatisticValue.primaryValue.getter();
    v16 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v17 = v5;
  }

  else
  {
    sub_1D6EA8A74(v13, v9, type metadata accessor for PuzzleStatisticValue);
    PuzzleStatisticValue.primaryValue.getter();
    v16 = type metadata accessor for PuzzleStatisticValue;
    v17 = v9;
  }

  return sub_1D6EA2830(v17, v16);
}

uint64_t PuzzleStatisticCategory.secondaryValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v9, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2 || !EnumCaseMultiPayload)
  {
    return sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticCategory);
  }

  sub_1D6EA8A74(v9, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
  PuzzleStatisticValue.primaryValue.getter();
  return sub_1D6EA2830(v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
}

uint64_t PuzzleStatisticCategory.tertiaryValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v9, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2 || !EnumCaseMultiPayload)
  {
    return sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticCategory);
  }

  sub_1D6EA8A74(v9, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
  PuzzleStatisticValue.primaryValue.getter();
  return sub_1D6EA2830(v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
}

uint64_t PuzzleStatisticCategory.hasValue.getter()
{
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v0, v16, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D6EA86C4(v16, v4, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v21 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      v18 = (*(*(v21 - 8) + 48))(v4, 1, v21) != 1;
      sub_1D6EA8744(v4, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

    else
    {
      sub_1D6EA2830(v16, type metadata accessor for PuzzleStatisticCategory);
      v18 = 0;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D6EA8A74(v16, v8, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      if (PuzzleStatisticValue.hasValue.getter() & 1) != 0 || (PuzzleStatisticValue.hasValue.getter())
      {
        v18 = 1;
      }

      else
      {
        v18 = PuzzleStatisticValue.hasValue.getter();
      }

      v19 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v20 = v8;
    }

    else
    {
      sub_1D6EA8A74(v16, v12, type metadata accessor for PuzzleStatisticValue);
      v18 = PuzzleStatisticValue.hasValue.getter();
      v19 = type metadata accessor for PuzzleStatisticValue;
      v20 = v12;
    }

    sub_1D6EA2830(v20, v19);
  }

  return v18 & 1;
}

uint64_t PuzzleStatisticCategory.statisticType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v39 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v39 - v25;
  v27 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v2, v30, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = 10;
    }

    else
    {
      v34 = 9;
    }

    *v40 = v34;
    v37 = type metadata accessor for PuzzleStatisticCategory;
    v38 = v30;
    return sub_1D6EA2830(v38, v37);
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D6EA8A74(v30, v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    sub_1D6EAAED4(v6, v22, type metadata accessor for PuzzleStatisticValue);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      v36 = v6;
    }

    else
    {
      sub_1D6EA2830(v22, type metadata accessor for PuzzleStatisticValue);
      sub_1D6EAAED4(v6, v18, type metadata accessor for PuzzleStatisticValue);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        result = sub_1D6EA2830(v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v33 = 6;
        goto LABEL_32;
      }

      sub_1D6EA2830(v18, type metadata accessor for PuzzleStatisticValue);
      sub_1D6EAAED4(v6, v14, type metadata accessor for PuzzleStatisticValue);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        result = sub_1D6EA2830(v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v33 = 7;
        goto LABEL_32;
      }

      sub_1D6EA2830(v14, type metadata accessor for PuzzleStatisticValue);
      sub_1D6EAAED4(v6, v10, type metadata accessor for PuzzleStatisticValue);
      sub_1D6EA2830(v6, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      result = swift_getEnumCaseMultiPayload();
      if (result == 8)
      {
LABEL_29:
        v33 = 8;
        goto LABEL_32;
      }

      v35 = type metadata accessor for PuzzleStatisticValue;
      v36 = v10;
    }

    result = sub_1D6EA2830(v36, v35);
LABEL_13:
    v33 = 5;
    goto LABEL_32;
  }

  sub_1D6EA8A74(v30, v26, type metadata accessor for PuzzleStatisticValue);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (result)
      {
        v33 = 2;
      }

      else
      {
        v33 = 4;
      }

      goto LABEL_32;
    }

    if (result == 2)
    {
      v33 = 3;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v33 = 6;
      goto LABEL_32;
    }

    *v40 = 0;
    goto LABEL_34;
  }

  if (result == 6)
  {
    *v40 = 1;
LABEL_34:
    v37 = type metadata accessor for PuzzleStatisticValue;
    v38 = v26;
    return sub_1D6EA2830(v38, v37);
  }

  if (result != 7)
  {
    goto LABEL_29;
  }

  v33 = 7;
LABEL_32:
  *v40 = v33;
  return result;
}

uint64_t PuzzleStatisticCategory.primaryDisplayValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v13, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D6EA8A74(v13, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v17 = PuzzleStatisticValue.primaryDisplayValue.getter();
      sub_1D6EA2830(v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      return v17;
    }

    else
    {
      sub_1D6EA8A74(v13, v9, type metadata accessor for PuzzleStatisticValue);
      v16 = PuzzleStatisticValue.primaryDisplayValue.getter();
      sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticValue);
      return v16;
    }
  }

  else
  {
    sub_1D6EA2830(v13, type metadata accessor for PuzzleStatisticCategory);
    return 0;
  }
}

uint64_t PuzzleStatisticCategory.secondaryDisplayValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v9, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
  {
    sub_1D6EA8A74(v9, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v12 = PuzzleStatisticValue.primaryDisplayValue.getter();
    sub_1D6EA2830(v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    return v12;
  }

  else
  {
    sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticCategory);
    return 0;
  }
}

uint64_t PuzzleStatisticCategory.tertiaryDisplayValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v9, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
  {
    sub_1D6EA8A74(v9, v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v12 = PuzzleStatisticValue.primaryDisplayValue.getter();
    sub_1D6EA2830(v5, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    return v12;
  }

  else
  {
    sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticCategory);
    return 0;
  }
}

uint64_t sub_1D6E99958@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PuzzleLeaderboardEntry();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0) + 20));
  v8 = v7[2];
  if ((v8 & 0x7FFFFFFFFFFFFFFELL) == 2)
  {
    v36 = a1;
    v37 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D69973A8(0, v8, 0);
    v9 = v39;
    v10 = v7 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v11 = *(v38 + 72);
    v34 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v35 = v10;
    do
    {
      sub_1D6EAAED4(v10, v6, type metadata accessor for PuzzleLeaderboardEntry);
      v12 = *&v6[*(v3 + 28)];
      sub_1D6EA2830(v6, type metadata accessor for PuzzleLeaderboardEntry);
      v39 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_1D69973A8((v13 > 1), v14 + 1, 1);
        v9 = v39;
      }

      v9[2] = v14 + 1;
      v9[v14 + 4] = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
    v17 = 0;
    v18 = *(v37 + *(v3 + 28));
    while (1)
    {
      if (v14 + 1 == v17)
      {

        return (*(v38 + 56))(v36, 1, 1, v3);
      }

      if (__OFADD__(v17, 1))
      {
        break;
      }

      v19 = v9[v17++ + 4];
      if (v19 == v18)
      {

        if (v7[2] == 2)
        {
          v20 = v36;
          if (*(v35 + *(v3 + 28)) == v18)
          {
            v21 = v35 + v11;
          }

          else
          {
            v21 = v35;
          }

          sub_1D6EAAED4(v21, v36, type metadata accessor for PuzzleLeaderboardEntry);
          return (*(v38 + 56))(v20, 0, 1, v3);
        }

        v39 = v7;

        v7 = 0;
        sub_1D6EA3B6C(&v39);
        v22 = v39[2];
        if (v22)
        {
          if (v22 >= 3)
          {
            v23 = v39 + v34;
            v24 = *(v3 + 32);
            v25 = *(v39 + v34 + v24);
            v26 = *(v39 + v34 + v24 + v11);
            v27 = __OFSUB__(v25, v26);
            v28 = v25 - v26;
            if (!v27)
            {
              v29 = *&v23[2 * v11 + v24];
              if ((v28 & 0x8000000000000000) == 0 || (v27 = __OFSUB__(0, v28), v28 = -v28, !v27))
              {
                v27 = __OFSUB__(v29, v26);
                v30 = v29 - v26;
                if (!v27)
                {
                  if ((v30 & 0x8000000000000000) == 0 || (v27 = __OFSUB__(0, v30), v30 = -v30, !v27))
                  {
                    v31 = (v38 + 56);
                    if (v28 >= v30)
                    {
                      v23 += 2 * v11;
                    }

                    v32 = v36;
                    sub_1D6EAAED4(v23, v36, type metadata accessor for PuzzleLeaderboardEntry);

                    return (*v31)(v32, 0, 1, v3);
                  }

LABEL_36:
                  __break(1u);

                  __break(1u);
                  return result;
                }

LABEL_34:
                __break(1u);
              }

              __break(1u);
              goto LABEL_36;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v15 = *(v38 + 56);

  return v15(a1, 1, 1, v3);
}

NewsFeed::PuzzleDifficultyLevel_optional __swiftcall PuzzleDifficultyLevel.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue == 30)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 10)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t PuzzleStatisticDifficultyLevelValue.value(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 20;
    }

    else
    {
      v4 = 24;
    }

    v2 += *(type metadata accessor for PuzzleStatisticDifficultyLevelValue(0) + v4);
  }

  return sub_1D6EAAED4(v2, a2, type metadata accessor for PuzzleStatisticValue);
}

unint64_t PuzzleStatisticCategory.isMultiStatistic(puzzleType:)()
{
  v1 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v0, v4, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v6 = 1;
  }

  else if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v6 = (FCPuzzleTypeProviding.puzzleTypeTraits.getter() >> 1) & 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1D6EA2830(v4, type metadata accessor for PuzzleStatisticCategory);
  return v6;
}

unint64_t sub_1D6E99EE0()
{
  v1 = 0x656C676E6973;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x53646570756F7267;
  }

  if (*v0)
  {
    v1 = 0x6C75636966666964;
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

uint64_t sub_1D6E99F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EAA874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E99F98(uint64_t a1)
{
  v2 = sub_1D6EA8328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E99FD4(uint64_t a1)
{
  v2 = sub_1D6EA8328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9A010(uint64_t a1)
{
  v2 = sub_1D6EA8280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9A04C(uint64_t a1)
{
  v2 = sub_1D6EA8280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9A088(uint64_t a1)
{
  v2 = sub_1D6EA822C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9A0C4(uint64_t a1)
{
  v2 = sub_1D6EA822C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9A100(uint64_t a1)
{
  v2 = sub_1D6EA81D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9A13C(uint64_t a1)
{
  v2 = sub_1D6EA81D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9A178(uint64_t a1)
{
  v2 = sub_1D6EA82D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9A1B4(uint64_t a1)
{
  v2 = sub_1D6EA82D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleStatisticCategory.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D6EA8948(0, &qword_1EDF02618, sub_1D6EA81D8, &type metadata for PuzzleStatisticCategory.GroupedStatsCodingKeys, MEMORY[0x1E69E6F58]);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v65 = &v50 - v5;
  v62 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  MEMORY[0x1EEE9AC00](v62, v6);
  v64 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EA8948(0, &qword_1EDF02608, sub_1D6EA822C, &type metadata for PuzzleStatisticCategory.GameCenterLeaderboardCodingKeys, v2);
  v63 = v8;
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v50 - v10;
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v50 - v13;
  sub_1D6EA8948(0, &qword_1EDF02610, sub_1D6EA8280, &type metadata for PuzzleStatisticCategory.DifficultyLevelCodingKeys, v2);
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v56 = &v50 - v16;
  v54 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v54, v17);
  v55 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EA8948(0, &qword_1EDF02620, sub_1D6EA82D4, &type metadata for PuzzleStatisticCategory.SingleCodingKeys, v2);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v50 - v21;
  v51 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v51, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EA8948(0, &qword_1EDF02628, sub_1D6EA8328, &type metadata for PuzzleStatisticCategory.CodingKeys, v2);
  v70 = *(v30 - 8);
  v71 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v50 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA8328();
  v69 = v33;
  sub_1D7264B5C();
  sub_1D6EAAED4(v68, v29, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D6EA8A74(v29, v25, type metadata accessor for PuzzleStatisticValue);
      v72 = 0;
      sub_1D6EA82D4();
      v35 = v71;
      v36 = v69;
      sub_1D726436C();
      sub_1D6EA8D1C(&qword_1EDF0E850, type metadata accessor for PuzzleStatisticValue);
      v37 = v53;
      sub_1D726443C();
      (*(v52 + 8))(v22, v37);
      v38 = type metadata accessor for PuzzleStatisticValue;
      v39 = v25;
LABEL_9:
      sub_1D6EA2830(v39, v38);
      return (*(v70 + 8))(v36, v35);
    }

    v43 = v55;
    sub_1D6EA8A74(v29, v55, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v73 = 1;
    sub_1D6EA8280();
    v44 = v56;
    v35 = v71;
    v36 = v69;
    sub_1D726436C();
    sub_1D6EA8D1C(&qword_1EC897708, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v45 = v58;
    sub_1D726443C();
    (*(v57 + 8))(v44, v45);
    v46 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
LABEL_8:
    v38 = v46;
    v39 = v43;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v43 = v64;
    sub_1D6EA8A74(v29, v64, type metadata accessor for PuzzleStatisticsGroupedValue);
    v75 = 3;
    sub_1D6EA81D8();
    v47 = v65;
    v35 = v71;
    v36 = v69;
    sub_1D726436C();
    sub_1D6EA8D1C(&qword_1EC8976F8, type metadata accessor for PuzzleStatisticsGroupedValue);
    v48 = v67;
    sub_1D726443C();
    (*(v66 + 8))(v47, v48);
    v46 = type metadata accessor for PuzzleStatisticsGroupedValue;
    goto LABEL_8;
  }

  v40 = v59;
  sub_1D6EA86C4(v29, v59, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v74 = 2;
  sub_1D6EA822C();
  v41 = v60;
  v35 = v71;
  v36 = v69;
  sub_1D726436C();
  type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  sub_1D6EA8D1C(&qword_1EC897700, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v42 = v63;
  sub_1D72643BC();
  (*(v61 + 8))(v41, v42);
  sub_1D6EA8744(v40, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  return (*(v70 + 8))(v36, v35);
}

uint64_t PuzzleStatisticCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6EA8948(0, &qword_1EC897710, sub_1D6EA81D8, &type metadata for PuzzleStatisticCategory.GroupedStatsCodingKeys, MEMORY[0x1E69E6F48]);
  v75 = v4;
  v80 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v87 = &v68 - v6;
  sub_1D6EA8948(0, &qword_1EC897718, sub_1D6EA822C, &type metadata for PuzzleStatisticCategory.GameCenterLeaderboardCodingKeys, v3);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v86 = &v68 - v10;
  sub_1D6EA8948(0, &qword_1EC897720, sub_1D6EA8280, &type metadata for PuzzleStatisticCategory.DifficultyLevelCodingKeys, v3);
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v81 = &v68 - v13;
  sub_1D6EA8948(0, &qword_1EC897728, sub_1D6EA82D4, &type metadata for PuzzleStatisticCategory.SingleCodingKeys, v3);
  v74 = v14;
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v84 = &v68 - v16;
  sub_1D6EA8948(0, &qword_1EC897730, sub_1D6EA8328, &type metadata for PuzzleStatisticCategory.CodingKeys, v3);
  v85 = v17;
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v68 - v19;
  v82 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v82, v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v68 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v68 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v68 - v38;
  v40 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1D6EA8328();
  v41 = v89;
  sub_1D7264B0C();
  if (!v41)
  {
    v69 = v31;
    v70 = v27;
    v71 = v35;
    v89 = v23;
    v42 = v84;
    v43 = v86;
    v44 = v87;
    v72 = v39;
    v45 = v83;
    v46 = v88;
    v47 = v85;
    v48 = sub_1D726433C();
    v49 = (2 * *(v48 + 16)) | 1;
    v91 = v48;
    v92 = v48 + 32;
    v93 = 0;
    v94 = v49;
    v50 = sub_1D60F6EB8();
    if (v50 != 4 && v93 == v94 >> 1)
    {
      if (v50 > 1u)
      {
        if (v50 == 2)
        {
          v95 = 2;
          sub_1D6EA822C();
          sub_1D72641EC();
          v57 = v45;
          type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          sub_1D6EA8D1C(&qword_1EC897740, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
          v58 = v70;
          v59 = v78;
          sub_1D726427C();
          (*(v79 + 8))(v43, v59);
          (*(v57 + 8))(v20, v47);
          swift_unknownObjectRelease();
        }

        else
        {
          v95 = 3;
          sub_1D6EA81D8();
          sub_1D72641EC();
          type metadata accessor for PuzzleStatisticsGroupedValue(0);
          sub_1D6EA8D1C(&qword_1EC897738, type metadata accessor for PuzzleStatisticsGroupedValue);
          v63 = v75;
          sub_1D726431C();
          (*(v80 + 8))(v44, v63);
          (*(v45 + 8))(v20, v47);
          swift_unknownObjectRelease();
          v58 = v89;
        }

        swift_storeEnumTagMultiPayload();
        v67 = v58;
        v64 = v46;
      }

      else
      {
        if (!v50)
        {
          v95 = 0;
          sub_1D6EA82D4();
          v51 = v42;
          sub_1D72641EC();
          type metadata accessor for PuzzleStatisticValue(0);
          sub_1D6EA8D1C(&qword_1EC897750, type metadata accessor for PuzzleStatisticValue);
          v52 = v74;
          sub_1D726431C();
          (*(v73 + 8))(v51, v52);
          v64 = v46;
          (*(v45 + 8))(v20, v47);
          swift_unknownObjectRelease();
          v65 = v71;
          swift_storeEnumTagMultiPayload();
          v66 = v72;
          v67 = v65;
LABEL_15:
          sub_1D6EA8A74(v67, v66, type metadata accessor for PuzzleStatisticCategory);
          sub_1D6EA8A74(v66, v64, type metadata accessor for PuzzleStatisticCategory);
          return __swift_destroy_boxed_opaque_existential_1(v90);
        }

        v95 = 1;
        sub_1D6EA8280();
        sub_1D72641EC();
        type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        sub_1D6EA8D1C(&qword_1EC897748, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v60 = v69;
        v61 = v77;
        v62 = v81;
        sub_1D726431C();
        (*(v76 + 8))(v62, v61);
        (*(v45 + 8))(v20, v47);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v67 = v60;
        v64 = v88;
      }

      v66 = v72;
      goto LABEL_15;
    }

    v53 = sub_1D7263E3C();
    swift_allocError();
    v55 = v54;
    sub_1D5EEA608();
    *v55 = v82;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    (*(v45 + 8))(v20, v47);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

unint64_t PuzzleStatisticCategory.debugDescription.getter()
{
  v1 = v0;
  v35 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v2);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = &v32 - v10;
  v11 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v26, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = v34;
      sub_1D6EA86C4(v26, v34, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D6EA87B4(v29, v7, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      if ((*(v33 + 48))(v7, 1, v35) == 1)
      {
        sub_1D6EA8744(v7, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        sub_1D6EA8744(v29, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        return 0xD00000000000001ALL;
      }

      else
      {
        v30 = v32;
        sub_1D6EA8A74(v7, v32, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73F55C0);
        sub_1D7263F9C();
        MEMORY[0x1DA6F9910](93, 0xE100000000000000);
        v28 = v36;
        sub_1D6EA2830(v30, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        sub_1D6EA8744(v29, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      }
    }

    else
    {
      sub_1D6EA8A74(v26, v14, type metadata accessor for PuzzleStatisticsGroupedValue);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x53646570756F7267, 0xED00005B73746174);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v28 = v36;
      sub_1D6EA2830(v14, type metadata accessor for PuzzleStatisticsGroupedValue);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D6EA8A74(v26, v18, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F55E0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](93, 0xE100000000000000);
    v28 = v36;
    sub_1D6EA2830(v18, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
  }

  else
  {
    sub_1D6EA8A74(v26, v22, type metadata accessor for PuzzleStatisticValue);
    v36 = 0;
    v37 = 0xE000000000000000;
    MEMORY[0x1DA6F9910](0x5B656C676E6973, 0xE700000000000000);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](93, 0xE100000000000000);
    v28 = v36;
    sub_1D6EA2830(v22, type metadata accessor for PuzzleStatisticValue);
  }

  return v28;
}

uint64_t sub_1D6E9BD00(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74615265766C6F73;
    v6 = 0x5374636566726570;
    if (a1 != 2)
    {
      v6 = 0x5474736574736166;
    }

    if (a1)
    {
      v5 = 0x6C6F536C61746F74;
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
    v1 = 0x53746E6572727563;
    v2 = 0x5374736568676968;
    if (a1 != 7)
    {
      v2 = 0x5365676172657661;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x5465676172657661;
    if (a1 != 4)
    {
      v3 = 0x53747365676E6F6CLL;
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

uint64_t sub_1D6E9BE70(uint64_t a1)
{
  v2 = sub_1D6EA837C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9BEAC(uint64_t a1)
{
  v2 = sub_1D6EA837C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9BEE8(uint64_t a1)
{
  v2 = sub_1D6EA84CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9BF24(uint64_t a1)
{
  v2 = sub_1D6EA84CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9BF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EAA568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E9BF90(uint64_t a1)
{
  v2 = sub_1D6EA8670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9BFCC(uint64_t a1)
{
  v2 = sub_1D6EA8670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C008(uint64_t a1)
{
  v2 = sub_1D6EA8424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C044(uint64_t a1)
{
  v2 = sub_1D6EA8424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C080(uint64_t a1)
{
  v2 = sub_1D6EA8520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C0BC(uint64_t a1)
{
  v2 = sub_1D6EA8520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C0F8(uint64_t a1)
{
  v2 = sub_1D6EA83D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C134(uint64_t a1)
{
  v2 = sub_1D6EA83D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C170(uint64_t a1)
{
  v2 = sub_1D6EA8478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C1AC(uint64_t a1)
{
  v2 = sub_1D6EA8478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C1E8(uint64_t a1)
{
  v2 = sub_1D6EA8574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C224(uint64_t a1)
{
  v2 = sub_1D6EA8574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C260(uint64_t a1)
{
  v2 = sub_1D6EA861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C29C(uint64_t a1)
{
  v2 = sub_1D6EA861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E9C2D8(uint64_t a1)
{
  v2 = sub_1D6EA85C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9C314(uint64_t a1)
{
  v2 = sub_1D6EA85C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleStatisticValue.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D6EA8948(0, &qword_1EC897758, sub_1D6EA837C, &type metadata for PuzzleStatisticValue.AverageScoreCodingKeys, MEMORY[0x1E69E6F58]);
  v85 = v3;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v84 = &v65 - v5;
  sub_1D6EA8948(0, &qword_1EDF026B0, sub_1D6EA83D0, &type metadata for PuzzleStatisticValue.HighestScoreCodingKeys, v2);
  v83 = v6;
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = &v65 - v8;
  sub_1D6EA8948(0, &qword_1EDF026A8, sub_1D6EA8424, &type metadata for PuzzleStatisticValue.CurrentStreakCodingKeys, v2);
  v82 = v9;
  v71 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v80 = &v65 - v11;
  sub_1D6EA8948(0, &qword_1EDF026A0, sub_1D6EA8478, &type metadata for PuzzleStatisticValue.LongestStreakCodingKeys, v2);
  v79 = v12;
  v70 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v65 - v14;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v77 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v65 - v20;
  sub_1D6EA8948(0, &qword_1EDF026C8, sub_1D6EA84CC, &type metadata for PuzzleStatisticValue.AverageTimeCodingKeys, v2);
  v75 = v21;
  v69 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v74 = &v65 - v23;
  sub_1D6EA8948(0, &qword_1EDF026C0, sub_1D6EA8520, &type metadata for PuzzleStatisticValue.FastestTimeCodingKeys, v2);
  v91 = v24;
  v68 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v65 - v26;
  sub_1D6EA8948(0, &qword_1EC897768, sub_1D6EA8574, &type metadata for PuzzleStatisticValue.PerfectSolvedCodingKeys, v2);
  v89 = v27;
  v67 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v65 - v29;
  sub_1D6EA8948(0, &qword_1EDF026B8, sub_1D6EA85C8, &type metadata for PuzzleStatisticValue.TotalSolvedCodingKeys, v2);
  v87 = v30;
  v65 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v86 = &v65 - v32;
  sub_1D6EA8948(0, &qword_1EDF026D0, sub_1D6EA861C, &type metadata for PuzzleStatisticValue.SolveRateCodingKeys, v2);
  v34 = v33;
  v66 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v65 - v36;
  v38 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EA8948(0, &qword_1EDF026D8, sub_1D6EA8670, &type metadata for PuzzleStatisticValue.CodingKeys, v2);
  v95 = v42;
  v92 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v65 - v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA8670();
  v94 = v45;
  sub_1D7264B5C();
  sub_1D6EAAED4(v93, v41, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v100 = 4;
        sub_1D6EA84CC();
        v47 = v74;
        v48 = v94;
        v49 = v95;
        sub_1D726436C();
        v50 = v75;
        sub_1D726439C();
        v51 = &v105;
LABEL_17:
        (*(*(v51 - 32) + 8))(v47, v50);
        return (*(v92 + 8))(v48, v49);
      }

      v60 = v76;
      sub_1D6EA86C4(v41, v76, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v101 = 5;
      sub_1D6EA8478();
      v61 = v78;
      v48 = v94;
      v49 = v95;
      sub_1D726436C();
      type metadata accessor for PuzzleStreak();
      sub_1D6EA8D1C(&qword_1EDF11FD0, type metadata accessor for PuzzleStreak);
      v62 = v79;
      sub_1D72643BC();
      v63 = &v106;
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v103 = 7;
          sub_1D6EA83D0();
          v47 = v81;
          v48 = v94;
          v49 = v95;
          sub_1D726436C();
          v50 = v83;
          sub_1D72643AC();
          v51 = &v108;
        }

        else
        {
          v104 = 8;
          sub_1D6EA837C();
          v47 = v84;
          v48 = v94;
          v49 = v95;
          sub_1D726436C();
          v50 = v85;
          sub_1D726439C();
          v51 = &v109;
        }

        goto LABEL_17;
      }

      v60 = v77;
      sub_1D6EA86C4(v41, v77, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v102 = 6;
      sub_1D6EA8424();
      v61 = v80;
      v48 = v94;
      v49 = v95;
      sub_1D726436C();
      type metadata accessor for PuzzleStreak();
      sub_1D6EA8D1C(&qword_1EDF11FD0, type metadata accessor for PuzzleStreak);
      v62 = v82;
      sub_1D72643BC();
      v63 = &v107;
    }

    (*(*(v63 - 32) + 8))(v61, v62);
    sub_1D6EA8744(v60, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    return (*(v92 + 8))(v48, v49);
  }

  v52 = v34;
  v53 = v86;
  v54 = v87;
  v56 = v88;
  v55 = v89;
  v57 = v90;
  v58 = v91;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v98 = 2;
      sub_1D6EA8574();
      v59 = v56;
      v48 = v94;
      v49 = v95;
      sub_1D726436C();
      sub_1D726442C();
      (*(v67 + 8))(v59, v55);
    }

    else
    {
      v99 = 3;
      sub_1D6EA8520();
      v48 = v94;
      v49 = v95;
      sub_1D726436C();
      sub_1D72643AC();
      (*(v68 + 8))(v57, v58);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v97 = 1;
    sub_1D6EA85C8();
    v48 = v94;
    v49 = v95;
    sub_1D726436C();
    sub_1D726442C();
    (*(v65 + 8))(v53, v54);
  }

  else
  {
    v96 = 0;
    sub_1D6EA861C();
    v48 = v94;
    v49 = v95;
    sub_1D726436C();
    sub_1D726439C();
    (*(v66 + 8))(v37, v52);
  }

  return (*(v92 + 8))(v48, v49);
}

uint64_t PuzzleStatisticValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6EA8948(0, &qword_1EC897778, sub_1D6EA837C, &type metadata for PuzzleStatisticValue.AverageScoreCodingKeys, MEMORY[0x1E69E6F48]);
  v171 = v4;
  v178 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v182 = &v152 - v6;
  sub_1D6EA8948(0, &qword_1EC897780, sub_1D6EA83D0, &type metadata for PuzzleStatisticValue.HighestScoreCodingKeys, v3);
  v174 = v7;
  v177 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v191 = &v152 - v9;
  sub_1D6EA8948(0, &qword_1EC897788, sub_1D6EA8424, &type metadata for PuzzleStatisticValue.CurrentStreakCodingKeys, v3);
  v176 = v10;
  v175 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v181 = &v152 - v12;
  sub_1D6EA8948(0, &qword_1EC897790, sub_1D6EA8478, &type metadata for PuzzleStatisticValue.LongestStreakCodingKeys, v3);
  v173 = v13;
  v172 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v183 = &v152 - v15;
  sub_1D6EA8948(0, &qword_1EC897798, sub_1D6EA84CC, &type metadata for PuzzleStatisticValue.AverageTimeCodingKeys, v3);
  v169 = v16;
  v170 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v179 = &v152 - v18;
  sub_1D6EA8948(0, &qword_1EC8977A0, sub_1D6EA8520, &type metadata for PuzzleStatisticValue.FastestTimeCodingKeys, v3);
  v168 = v19;
  v167 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v190 = &v152 - v21;
  sub_1D6EA8948(0, &qword_1EC8977A8, sub_1D6EA8574, &type metadata for PuzzleStatisticValue.PerfectSolvedCodingKeys, v3);
  v166 = v22;
  v165 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v180 = &v152 - v24;
  sub_1D6EA8948(0, &qword_1EC8977B0, sub_1D6EA85C8, &type metadata for PuzzleStatisticValue.TotalSolvedCodingKeys, v3);
  v164 = v25;
  v163 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v189 = &v152 - v27;
  sub_1D6EA8948(0, &qword_1EC8977B8, sub_1D6EA861C, &type metadata for PuzzleStatisticValue.SolveRateCodingKeys, v3);
  v162 = v28;
  v161 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v187 = &v152 - v30;
  sub_1D6EA8948(0, &qword_1EC8977C0, sub_1D6EA8670, &type metadata for PuzzleStatisticValue.CodingKeys, v3);
  v192 = v31;
  v186 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v152 - v33;
  v185 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v185, v35);
  v158 = (&v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37, v38);
  v157 = (&v152 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v159 = &v152 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v160 = &v152 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v156 = (&v152 - v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = (&v152 - v51);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = (&v152 - v55);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = (&v152 - v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = (&v152 - v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v152 - v67;
  v69 = a1;
  v70 = a1[3];
  v193 = v69;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  sub_1D6EA8670();
  v188 = v34;
  v71 = v194;
  sub_1D7264B0C();
  if (v71)
  {
    goto LABEL_12;
  }

  v152 = v64;
  v153 = v60;
  v154 = v56;
  v155 = v52;
  v73 = v186;
  v72 = v187;
  v75 = v189;
  v74 = v190;
  v194 = 0;
  v77 = v191;
  v76 = v192;
  v78 = v188;
  v79 = sub_1D726433C();
  v80 = (2 * *(v79 + 16)) | 1;
  v195 = v79;
  v196 = v79 + 32;
  v197 = 0;
  v198 = v80;
  v81 = sub_1D60F6E84();
  if (v81 != 9 && v197 == v198 >> 1)
  {
    if (v81 > 3u)
    {
      v82 = v68;
      if (v81 > 5u)
      {
        v83 = v73;
        if (v81 == 6)
        {
          v199 = 6;
          sub_1D6EA8424();
          v107 = v181;
          v108 = v194;
          sub_1D72641EC();
          if (!v108)
          {
            v194 = v82;
            type metadata accessor for PuzzleStreak();
            sub_1D6EA8D1C(&qword_1EDF11FC8, type metadata accessor for PuzzleStreak);
            v109 = v159;
            v110 = v176;
            sub_1D726427C();
            (*(v175 + 8))(v107, v110);
            (*(v73 + 8))(v78, v192);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v142 = v109;
            goto LABEL_38;
          }
        }

        else if (v81 == 7)
        {
          v199 = 7;
          sub_1D6EA83D0();
          v84 = v194;
          sub_1D72641EC();
          if (!v84)
          {
            v85 = v76;
            v194 = v82;
            v86 = v174;
            v138 = sub_1D726425C();
            v140 = v139;
            (*(v177 + 8))(v77, v86);
            (*(v73 + 8))(v78, v85);
            swift_unknownObjectRelease();
            v141 = v157;
            *v157 = v138;
            *(v141 + 8) = v140 & 1;
            swift_storeEnumTagMultiPayload();
            v142 = v141;
LABEL_38:
            v130 = v193;
            v131 = v184;
            goto LABEL_39;
          }
        }

        else
        {
          v199 = 8;
          sub_1D6EA837C();
          v115 = v182;
          v116 = v194;
          sub_1D72641EC();
          if (!v116)
          {
            v120 = v76;
            v194 = v82;
            v121 = v171;
            v122 = sub_1D726424C();
            v144 = v143;
            v145 = *(v178 + 8);
            v191 = v122;
            v145(v115, v121);
            (*(v83 + 8))(v78, v120);
            swift_unknownObjectRelease();
            v146 = v158;
            *v158 = v191;
            *(v146 + 8) = v144 & 1;
            swift_storeEnumTagMultiPayload();
            v142 = v146;
            goto LABEL_38;
          }
        }

        (*(v83 + 8))(v78, v76);
        goto LABEL_11;
      }

      v101 = v73;
      v131 = v184;
      if (v81 == 4)
      {
        v199 = 4;
        sub_1D6EA84CC();
        v103 = v179;
        v104 = v194;
        sub_1D72641EC();
        if (!v104)
        {
          v194 = v82;
          v105 = v103;
          v106 = v169;
          v148 = sub_1D726424C();
          v149 = *(v170 + 8);
          LODWORD(v191) = v150;
          v149(v105, v106);
          (*(v73 + 8))(v78, v76);
          swift_unknownObjectRelease();
          v151 = v156;
          *v156 = v148;
          *(v151 + 8) = v191 & 1;
          swift_storeEnumTagMultiPayload();
          v142 = v151;
          v130 = v193;
          goto LABEL_39;
        }
      }

      else
      {
        v199 = 5;
        sub_1D6EA8478();
        v117 = v194;
        sub_1D72641EC();
        if (!v117)
        {
          v194 = v68;
          type metadata accessor for PuzzleStreak();
          sub_1D6EA8D1C(&qword_1EDF11FC8, type metadata accessor for PuzzleStreak);
          v123 = v160;
          v124 = v173;
          v125 = v183;
          sub_1D726427C();
          (*(v172 + 8))(v125, v124);
          (*(v101 + 8))(v78, v192);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v130 = v193;
          v142 = v123;
          goto LABEL_39;
        }
      }

      goto LABEL_33;
    }

    if (v81 <= 1u)
    {
      v94 = v194;
      if (!v81)
      {
        v199 = 0;
        sub_1D6EA861C();
        v95 = v72;
        sub_1D72641EC();
        if (!v94)
        {
          v96 = v76;
          v97 = v162;
          v126 = sub_1D726424C();
          v128 = v127;
          (*(v161 + 8))(v95, v97);
          (*(v73 + 8))(v78, v96);
          swift_unknownObjectRelease();
          v129 = v152;
          *v152 = v126;
          *(v129 + 8) = v128 & 1;
          swift_storeEnumTagMultiPayload();
          v142 = v129;
          v130 = v193;
          v131 = v184;
          v194 = v68;
LABEL_39:
          v147 = v194;
          sub_1D6EA8A74(v142, v194, type metadata accessor for PuzzleStatisticValue);
          sub_1D6EA8A74(v147, v131, type metadata accessor for PuzzleStatisticValue);
          v92 = v130;
          return __swift_destroy_boxed_opaque_existential_1(v92);
        }

        goto LABEL_27;
      }

      v199 = 1;
      sub_1D6EA85C8();
      sub_1D72641EC();
      if (v94)
      {
LABEL_27:
        (*(v73 + 8))(v78, v76);
        goto LABEL_11;
      }

      v118 = v76;
      v194 = v68;
      v119 = v164;
      v137 = sub_1D72642FC();
      (*(v163 + 8))(v75, v119);
      (*(v73 + 8))(v78, v118);
      swift_unknownObjectRelease();
      v133 = v153;
      *v153 = v137;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      v142 = v133;
      goto LABEL_38;
    }

    v98 = v68;
    v99 = v194;
    if (v81 == 2)
    {
      v199 = 2;
      sub_1D6EA8574();
      v100 = v180;
      sub_1D72641EC();
      v101 = v73;
      if (!v99)
      {
        v194 = v98;
        v102 = v166;
        v132 = sub_1D72642FC();
        (*(v165 + 8))(v100, v102);
        (*(v73 + 8))(v78, v76);
        swift_unknownObjectRelease();
        v133 = v154;
        *v154 = v132;
        goto LABEL_37;
      }
    }

    else
    {
      v199 = 3;
      sub_1D6EA8520();
      v111 = v74;
      sub_1D72641EC();
      v101 = v73;
      if (!v99)
      {
        v112 = v76;
        v194 = v98;
        v113 = v111;
        v114 = v168;
        v134 = sub_1D726425C();
        v136 = v135;
        (*(v167 + 8))(v113, v114);
        (*(v73 + 8))(v78, v112);
        swift_unknownObjectRelease();
        v133 = v155;
        *v155 = v134;
        *(v133 + 8) = v136 & 1;
        goto LABEL_37;
      }
    }

LABEL_33:
    (*(v101 + 8))(v78, v76);
    goto LABEL_11;
  }

  v87 = v76;
  v88 = sub_1D7263E3C();
  swift_allocError();
  v89 = v78;
  v91 = v90;
  sub_1D5EEA608();
  *v91 = v185;
  sub_1D72641FC();
  sub_1D7263DFC();
  (*(*(v88 - 8) + 104))(v91, *MEMORY[0x1E69E6AF8], v88);
  swift_willThrow();
  (*(v73 + 8))(v89, v87);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v92 = v193;
  return __swift_destroy_boxed_opaque_existential_1(v92);
}

unint64_t PuzzleStatisticValue.debugDescription.getter()
{
  v1 = v0;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v21, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = *v21;
        v49[0] = 0;
        v49[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v29 = 0x5374636566726570;
        v30 = 0xEE00286465766C6FLL;
LABEL_31:
        v49[0] = v29;
        v49[1] = v30;
        v48 = v28;
        goto LABEL_32;
      }

      if (v21[8])
      {
        return 0xD000000000000010;
      }

      v37 = *v21;
      v38 = 0x5474736574736166;
      v39 = 677735785;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v23.n128_u64[0] = *v21;
        v25 = v21[8];
        strcpy(v49, "solveRate(");
        BYTE3(v49[1]) = 0;
        HIDWORD(v49[1]) = -369098752;
        if ((v25 & 1) == 0)
        {
LABEL_15:
          v26 = sub_1D7262AAC();
          v27 = v32;
          goto LABEL_16;
        }

LABEL_10:
        v26 = 7104878;
        v27 = 0xE300000000000000;
LABEL_16:
        v33 = v27;
LABEL_33:
        MEMORY[0x1DA6F9910](v26, v33, v23);

LABEL_34:
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        return v49[0];
      }

      v37 = *v21;
      v38 = 0x6C6F536C61746F74;
      v39 = 677668214;
    }

    v49[0] = v38;
    v49[1] = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    v48 = v37;
LABEL_32:
    v26 = sub_1D72644BC();
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_1D6EA86C4(v21, v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      sub_1D7263D4C();

      strcpy(v49, "longestStreak(");
      HIBYTE(v49[1]) = -18;
      sub_1D6EA87B4(v17, v13, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v40 = type metadata accessor for PuzzleStreak();
      if ((*(*(v40 - 8) + 48))(v13, 1, v40) == 1)
      {
        v41 = 7104878;
        sub_1D6EA8744(v13, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v42 = 0xE300000000000000;
      }

      else
      {
        v41 = PuzzleStreak.debugDescription.getter();
        v42 = v45;
        sub_1D6EA2830(v13, type metadata accessor for PuzzleStreak);
      }

      MEMORY[0x1DA6F9910](v41, v42);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v46 = v49[0];
      sub_1D6EA8744(v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      return v46;
    }

    v23.n128_u64[0] = *v21;
    v31 = v21[8];
    strcpy(v49, "averageTime(");
    BYTE5(v49[1]) = 0;
    HIWORD(v49[1]) = -5120;
    if ((v31 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (v21[8])
      {
        return 0xD000000000000011;
      }

      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x5365676172657661, 0xED00002865726F63);
      sub_1D7262ABC();
      goto LABEL_34;
    }

    if (v21[8])
    {
      return 0xD000000000000011;
    }

    v28 = *v21;
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    sub_1D7263D4C();

    v29 = 0x5374736568676968;
    v30 = 0xED00002865726F63;
    goto LABEL_31;
  }

  sub_1D6EA86C4(v21, v9, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1D7263D4C();

  strcpy(v49, "currentStreak(");
  HIBYTE(v49[1]) = -18;
  sub_1D6EA87B4(v9, v5, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v34 = type metadata accessor for PuzzleStreak();
  if ((*(*(v34 - 8) + 48))(v5, 1, v34) == 1)
  {
    v35 = 7104878;
    sub_1D6EA8744(v5, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v36 = 0xE300000000000000;
  }

  else
  {
    v35 = PuzzleStreak.debugDescription.getter();
    v36 = v43;
    sub_1D6EA2830(v5, type metadata accessor for PuzzleStreak);
  }

  MEMORY[0x1DA6F9910](v35, v36);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v44 = v49[0];
  sub_1D6EA8744(v9, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  return v44;
}

uint64_t sub_1D6E9ED08()
{
  v1 = 0x6574617265646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x676E656C6C616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2037604709;
  }
}

uint64_t sub_1D6E9ED64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E9F760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E9ED8C(uint64_t a1)
{
  v2 = sub_1D6EA8834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E9EDC8(uint64_t a1)
{
  v2 = sub_1D6EA8834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleStatisticDifficultyLevelValue.encode(to:)(void *a1)
{
  sub_1D6EA8948(0, &qword_1EC8977C8, sub_1D6EA8834, &type metadata for PuzzleStatisticDifficultyLevelValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA8834();
  sub_1D7264B5C();
  v13 = 0;
  type metadata accessor for PuzzleStatisticValue(0);
  sub_1D6EA8D1C(&qword_1EDF0E850, type metadata accessor for PuzzleStatisticValue);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
    v12 = 1;
    sub_1D726443C();
    v11 = 2;
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleStatisticDifficultyLevelValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v30, v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v25 - v11;
  sub_1D6EA8948(0, &qword_1EC8977D8, sub_1D6EA8834, &type metadata for PuzzleStatisticDifficultyLevelValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v12;
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA8834();
  v20 = v32;
  sub_1D7264B0C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v28;
  v32 = a1;
  v25 = v16;
  v35 = 0;
  sub_1D6EA8D1C(&qword_1EC897750, type metadata accessor for PuzzleStatisticValue);
  v22 = v29;
  sub_1D726431C();
  sub_1D6EA8A74(v22, v19, type metadata accessor for PuzzleStatisticValue);
  v34 = 1;
  sub_1D726431C();
  sub_1D6EA8A74(v8, &v19[*(v25 + 20)], type metadata accessor for PuzzleStatisticValue);
  v33 = 2;
  v23 = v27;
  sub_1D726431C();
  (*(v21 + 8))(v15, v31);
  sub_1D6EA8A74(v23, &v19[*(v25 + 24)], type metadata accessor for PuzzleStatisticValue);
  sub_1D6EAAED4(v19, v26, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1D6EA2830(v19, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
}

uint64_t PuzzleStatisticDifficultyLevelValue.debugDescription.getter()
{
  sub_1D7263D4C();

  v0 = PuzzleStatisticValue.debugDescription.getter();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x617265646F6D202CLL, 0xEC000000203A6574);
  type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v1 = PuzzleStatisticValue.debugDescription.getter();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x656C6C616863202CLL, 0xEF203A676E69676ELL);
  v2 = PuzzleStatisticValue.debugDescription.getter();
  MEMORY[0x1DA6F9910](v2);

  return 0x203A79736165;
}

uint64_t static PuzzleStatisticDifficultyLevel.== infix(_:_:)()
{
  if (sub_1D7261FBC() & 1) != 0 && (type metadata accessor for PuzzleStatisticDifficultyLevel(), (sub_1D7261FBC()))
  {
    v0 = sub_1D7261FBC();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1D6E9F760(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2037604709 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617265646F6DLL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEB00000000676E69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6E9F87C(char a1)
{
  if (!a1)
  {
    return 2037604709;
  }

  if (a1 == 1)
  {
    return 0x6574617265646F6DLL;
  }

  return 0x676E656C6C616863;
}

uint64_t sub_1D6E9F8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6E9F760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6E9F918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E3192C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6E9F94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6E9F9A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PuzzleStatisticDifficultyLevel.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[0] = *(a2 + 32);
  v11[1] = v3;
  v12 = v3;
  v13 = v11[0];
  type metadata accessor for PuzzleStatisticDifficultyLevel.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  LOBYTE(v12) = 0;
  v9 = v14;
  sub_1D726443C();
  if (!v9)
  {
    LOBYTE(v12) = 1;
    sub_1D726443C();
    LOBYTE(v12) = 2;
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleStatisticDifficultyLevel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v53 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v50 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v43 - v17;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v60 = v21;
  type metadata accessor for PuzzleStatisticDifficultyLevel.CodingKeys();
  swift_getWitnessTable();
  v54 = sub_1D726435C();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v22);
  v24 = &v43 - v23;
  v52 = a2;
  v57 = a2;
  v58 = a3;
  v55 = a3;
  v59 = a4;
  v60 = a5;
  v25 = type metadata accessor for PuzzleStatisticDifficultyLevel();
  v46 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v43 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = v24;
  v29 = v61;
  sub_1D7264B0C();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v49;
  v30 = v50;
  v45 = v28;
  v61 = a1;
  v32 = v52;
  v33 = v53;
  LOBYTE(v57) = 0;
  v34 = v51;
  sub_1D726431C();
  v51 = *(v33 + 32);
  (v51)(v45, v34, v32);
  LOBYTE(v57) = 1;
  v35 = v30;
  sub_1D726431C();
  v44 = v25;
  v36 = v45;
  v37 = &v45[*(v25 + 52)];
  v38 = v51;
  (v51)(v37, v35, v32);
  LOBYTE(v57) = 2;
  v39 = v48;
  sub_1D726431C();
  (*(v31 + 8))(v56, v54);
  v40 = v44;
  v38(&v36[*(v44 + 56)], v39, v32);
  v41 = v46;
  (*(v46 + 16))(v47, v36, v40);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return (*(v41 + 8))(v36, v40);
}

uint64_t PuzzleStatisticsGroupedValue.fastestTime.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v4;
  return result;
}

uint64_t PuzzleStatisticsGroupedValue.averageTime.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v4;
  return result;
}

uint64_t PuzzleStatisticsGroupedValue.highestScore.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v4;
  return result;
}

uint64_t PuzzleStatisticsGroupedValue.averageScore.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  LOBYTE(v4) = *(v4 + 40);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_1D6EA0324(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C6F536C61746F74;
    v6 = 0x74615265766C6F73;
    if (a1 != 2)
    {
      v6 = 0x53747365676E6F6CLL;
    }

    if (a1)
    {
      v5 = 0x5374636566726570;
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
    v1 = 0x5465676172657661;
    v2 = 0x5374736568676968;
    if (a1 != 7)
    {
      v2 = 0x5365676172657661;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x53746E6572727563;
    if (a1 != 4)
    {
      v3 = 0x5474736574736166;
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

uint64_t sub_1D6EA0498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EAA9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EA04C0(uint64_t a1)
{
  v2 = sub_1D6EA88A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EA04FC(uint64_t a1)
{
  v2 = sub_1D6EA88A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleStatisticsGroupedValue.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6EA8948(0, &qword_1EC8977E0, sub_1D6EA88A0, &type metadata for PuzzleStatisticsGroupedValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v42 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA88A0();
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  sub_1D726442C();
  if (!v2)
  {
    LOBYTE(v43) = 1;
    sub_1D726442C();
    LOBYTE(v43) = 2;
    sub_1D726439C();
    v12 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
    LOBYTE(v43) = 3;
    type metadata accessor for PuzzleStreak();
    sub_1D6EA8D1C(&qword_1EDF11FD0, type metadata accessor for PuzzleStreak);
    sub_1D72643BC();
    LOBYTE(v43) = 4;
    sub_1D72643BC();
    v13 = (v3 + v12[9]);
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = v13[2];
    v17 = *(v13 + 24);
    v18 = v13[4];
    LOBYTE(v13) = *(v13 + 40);
    v43 = v14;
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v13;
    v49 = 5;
    sub_1D5B7AB2C();
    v20 = v19;
    sub_1D6EA8D1C(&qword_1EC8977F0, sub_1D5B7AB2C);
    sub_1D726443C();
    v21 = (v3 + v12[10]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = v21[2];
    v25 = *(v21 + 24);
    v26 = v21[4];
    LOBYTE(v21) = *(v21 + 40);
    v42[3] = v20;
    v43 = v22;
    v44 = v23;
    v45 = v24;
    v46 = v25;
    v47 = v26;
    v48 = v21;
    v49 = 6;
    sub_1D5B7ACBC();
    v28 = v27;
    v29 = sub_1D6EA8D1C(&qword_1EC8977F8, sub_1D5B7ACBC);
    v42[2] = v28;
    sub_1D726443C();
    v42[1] = v29;
    v30 = (v3 + v12[11]);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = v30[2];
    v34 = *(v30 + 24);
    v35 = v30[4];
    LOBYTE(v30) = *(v30 + 40);
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v30;
    v49 = 7;
    sub_1D726443C();
    v36 = (v3 + v12[12]);
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = v36[2];
    v40 = *(v36 + 24);
    v41 = v36[4];
    LOBYTE(v36) = *(v36 + 40);
    v43 = v37;
    v44 = v38;
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v36;
    v49 = 8;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t PuzzleStatisticsGroupedValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v55 - v7;
  sub_1D6EA8948(0, &qword_1EC897800, sub_1D6EA88A0, &type metadata for PuzzleStatisticsGroupedValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v60 = v9;
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6EA88A0();
  v61 = v12;
  v18 = v62;
  sub_1D7264B0C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v19 = v8;
  v21 = v58;
  v20 = v59;
  LOBYTE(v64) = 0;
  v22 = v60;
  *v16 = sub_1D72642FC();
  LOBYTE(v64) = 1;
  *(v16 + 1) = sub_1D72642FC();
  LOBYTE(v64) = 2;
  *(v16 + 2) = sub_1D726424C();
  v16[24] = v23 & 1;
  v24 = type metadata accessor for PuzzleStreak();
  v57 = v16;
  v25 = v24;
  LOBYTE(v64) = 3;
  v26 = sub_1D6EA8D1C(&qword_1EDF11FC8, type metadata accessor for PuzzleStreak);
  v62 = v25;
  v56 = v26;
  sub_1D726427C();
  v27 = v57;
  sub_1D6EA86C4(v19, &v57[v13[7]], &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  LOBYTE(v64) = 4;
  sub_1D726427C();
  sub_1D6EA86C4(0, v27 + v13[8], &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  sub_1D5B7AB2C();
  v70 = 5;
  v28 = sub_1D6EA8D1C(&qword_1EC897808, sub_1D5B7AB2C);
  v62 = 0;
  sub_1D726431C();
  v56 = v28;
  v29 = v65;
  v30 = v66;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  v34 = v27 + v13[9];
  *v34 = v64;
  *(v34 + 8) = v29;
  *(v34 + 16) = v30;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = v33;
  sub_1D5B7ACBC();
  v70 = 6;
  v55[1] = sub_1D6EA8D1C(&qword_1EC897810, sub_1D5B7ACBC);
  sub_1D726431C();
  v35 = v65;
  v36 = v66;
  v37 = v67;
  v38 = v68;
  v39 = v69;
  v40 = v27 + v13[10];
  *v40 = v64;
  *(v40 + 8) = v35;
  *(v40 + 16) = v36;
  *(v40 + 24) = v37;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  v70 = 7;
  v41 = v61;
  sub_1D726431C();
  v42 = v65;
  v43 = v66;
  v44 = v67;
  v45 = v68;
  v46 = v69;
  v47 = v27 + v13[11];
  *v47 = v64;
  *(v47 + 8) = v42;
  *(v47 + 16) = v43;
  *(v47 + 24) = v44;
  *(v47 + 32) = v45;
  *(v47 + 40) = v46;
  v70 = 8;
  sub_1D726431C();
  (*(v21 + 8))(v41, v22);
  v48 = v65;
  v49 = v66;
  v50 = v67;
  v51 = v68;
  v52 = v69;
  v53 = v27 + v13[12];
  *v53 = v64;
  *(v53 + 8) = v48;
  *(v53 + 16) = v49;
  *(v53 + 24) = v50;
  *(v53 + 32) = v51;
  *(v53 + 40) = v52;
  sub_1D6EAAED4(v27, v20, type metadata accessor for PuzzleStatisticsGroupedValue);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_1D6EA2830(v27, type metadata accessor for PuzzleStatisticsGroupedValue);
}

unint64_t sub_1D6EA1144()
{
  v1 = 0x73656972746E65;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F6272656461656CLL;
  }

  if (!*v0)
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

uint64_t sub_1D6EA11D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EAACF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EA11FC(uint64_t a1)
{
  v2 = sub_1D6EA88F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EA1238(uint64_t a1)
{
  v2 = sub_1D6EA88F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleStatisticsGameCenterLeaderboardResult.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6EA8948(0, &qword_1EC897818, sub_1D6EA88F4, &type metadata for PuzzleStatisticsGameCenterLeaderboardResult.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA88F4();
  sub_1D7264B5C();
  v16 = 0;
  type metadata accessor for PuzzleLeaderboardEntry();
  sub_1D6EA8D1C(&qword_1EC897828, type metadata accessor for PuzzleLeaderboardEntry);
  sub_1D726443C();
  if (!v2)
  {
    v12[1] = *(v3 + *(type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0) + 20));
    v15 = 1;
    sub_1D5B7A644(0, &qword_1EDF3C898, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E62F8]);
    sub_1D6EA89B0(&qword_1EC897830, &qword_1EC897828);
    sub_1D726443C();
    v14 = 2;
    sub_1D726442C();
    v13 = 3;
    sub_1D726437C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t PuzzleStatisticsGameCenterLeaderboardResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EA8948(0, &qword_1EC897838, sub_1D6EA88F4, &type metadata for PuzzleStatisticsGameCenterLeaderboardResult.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EA88F4();
  v30 = v9;
  v14 = v31;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v27;
  v16 = v13;
  v36 = 0;
  sub_1D6EA8D1C(&qword_1EC897840, type metadata accessor for PuzzleLeaderboardEntry);
  v17 = v28;
  v18 = v29;
  sub_1D726431C();
  sub_1D6EA8A74(v17, v16, type metadata accessor for PuzzleLeaderboardEntry);
  sub_1D5B7A644(0, &qword_1EDF3C898, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E62F8]);
  v35 = 1;
  sub_1D6EA89B0(&qword_1EC897848, &qword_1EC897840);
  sub_1D726431C();
  *(v16 + v10[5]) = v32;
  v34 = 2;
  v19 = a1;
  *(v16 + v10[6]) = sub_1D72642FC();
  v33 = 3;
  v20 = sub_1D726422C();
  v22 = v21;
  (*(v15 + 8))(v30, v18);
  v23 = (v16 + v10[7]);
  *v23 = v20;
  v23[1] = v22;
  sub_1D6EAAED4(v16, v26, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1D6EA2830(v16, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
}

uint64_t sub_1D6EA1A08()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0E0](10 * v1 + 10);
  return sub_1D7264A5C();
}

uint64_t sub_1D6EA1A90()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0E0](10 * v1 + 10);
  return sub_1D7264A5C();
}

uint64_t PuzzleStatisticValue.statisticType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v2, v7, type metadata accessor for PuzzleStatisticValue);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 5;
      }
    }

    else if (result)
    {
      v9 = 2;
    }

    else
    {
      v9 = 4;
    }

    goto LABEL_17;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v9 = 6;
LABEL_17:
      *a1 = v9;
      return result;
    }

    *a1 = 0;
  }

  else
  {
    if (result != 6)
    {
      if (result == 7)
      {
        v9 = 7;
      }

      else
      {
        v9 = 8;
      }

      goto LABEL_17;
    }

    *a1 = 1;
  }

  return sub_1D6EA2830(v7, type metadata accessor for PuzzleStatisticValue);
}

uint64_t PuzzleStatisticDifficultyLevelValue.statisticType.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  sub_1D6EAAED4(v1, &v21 - v17, type metadata accessor for PuzzleStatisticValue);
  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    sub_1D6EA2830(v18, type metadata accessor for PuzzleStatisticValue);
    sub_1D6EAAED4(v1, v14, type metadata accessor for PuzzleStatisticValue);
    result = swift_getEnumCaseMultiPayload();
    if (result == 4)
    {
      v20 = 6;
      goto LABEL_9;
    }

    sub_1D6EA2830(v14, type metadata accessor for PuzzleStatisticValue);
    sub_1D6EAAED4(v1, v10, type metadata accessor for PuzzleStatisticValue);
    result = swift_getEnumCaseMultiPayload();
    if (result == 7)
    {
      v20 = 7;
      goto LABEL_9;
    }

    sub_1D6EA2830(v10, type metadata accessor for PuzzleStatisticValue);
    sub_1D6EAAED4(v1, v6, type metadata accessor for PuzzleStatisticValue);
    result = swift_getEnumCaseMultiPayload();
    if (result == 8)
    {
      v20 = 8;
      goto LABEL_9;
    }

    result = sub_1D6EA2830(v6, type metadata accessor for PuzzleStatisticValue);
  }

  v20 = 5;
LABEL_9:
  *a1 = v20;
  return result;
}

uint64_t PuzzleStatisticCategory.isValid.getter()
{
  v1 = v0;
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v9, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D6EA86C4(v9, v5, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v10 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    v11 = (*(*(v10 - 8) + 48))(v5, 1, v10) != 1;
    sub_1D6EA8744(v5, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  }

  else
  {
    sub_1D6EA2830(v9, type metadata accessor for PuzzleStatisticCategory);
    return 1;
  }

  return v11;
}

uint64_t PuzzleStatisticValue.hasValue.getter()
{
  v1 = v0;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v13, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2 && (EnumCaseMultiPayload - 1) < 2)
    {
      v15 = 1;
      return v15 & 1;
    }

LABEL_8:
    v15 = v13[8] ^ 1;
    return v15 & 1;
  }

  if (EnumCaseMultiPayload > 6)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D6EA86C4(v13, v9, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v16 = type metadata accessor for PuzzleStreak();
    v15 = (*(*(v16 - 8) + 48))(v9, 1, v16) != 1;
    v17 = v9;
  }

  else
  {
    sub_1D6EA86C4(v13, v5, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v18 = type metadata accessor for PuzzleStreak();
    v15 = (*(*(v18 - 8) + 48))(v5, 1, v18) != 1;
    v17 = v5;
  }

  sub_1D6EA8744(v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  return v15 & 1;
}

uint64_t PuzzleStatisticDifficultyLevelValue.hasValue.getter()
{
  if (PuzzleStatisticValue.hasValue.getter())
  {
    return 1;
  }

  type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  if (PuzzleStatisticValue.hasValue.getter())
  {
    return 1;
  }

  else
  {
    return PuzzleStatisticValue.hasValue.getter() & 1;
  }
}

double PuzzleStatisticValue.primaryValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStreak();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - v8;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v35 - v24;
  v26 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v29, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_13;
      }

      sub_1D6EA86C4(v29, v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v25, v21, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if ((*(v36 + 48))(v21, 1, v2) == 1)
      {
        sub_1D6EA8744(v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v32 = v21;
        goto LABEL_19;
      }

      sub_1D6EA8A74(v21, v9, type metadata accessor for PuzzleStreak);
      v33 = PuzzleStreak.days.getter();
      sub_1D6EA2830(v9, type metadata accessor for PuzzleStreak);
      v34 = v25;
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      sub_1D6EA86C4(v29, v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v17, v13, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if ((*(v36 + 48))(v13, 1, v2) == 1)
      {
        sub_1D6EA8744(v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v32 = v13;
LABEL_19:
        sub_1D6EA8744(v32, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        return -1.0;
      }

      sub_1D6EA8A74(v13, v5, type metadata accessor for PuzzleStreak);
      v33 = PuzzleStreak.days.getter();
      sub_1D6EA2830(v5, type metadata accessor for PuzzleStreak);
      v34 = v17;
    }

    sub_1D6EA8744(v34, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    return v33;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_10:
      result = -1.0;
      if (v29[8])
      {
        return result;
      }
    }

    return *v29;
  }

  if (EnumCaseMultiPayload)
  {
    return *v29;
  }

LABEL_13:
  result = -1.0;
  if ((v29[8] & 1) == 0)
  {
    return *v29;
  }

  return result;
}

uint64_t sub_1D6EA2830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PuzzleStatisticValue.primaryDisplayValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PuzzleStreak();
  v53 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v52 - v8;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - v24;
  v26 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAED4(v1, v29, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          if (v29[8])
          {
            return 0;
          }

LABEL_12:
          v54 = *v29;
          return sub_1D72644BC();
        }

        if (v29[8])
        {
          return 0;
        }

        v40 = *v29;
        if (qword_1EC87D900 != -1)
        {
          swift_once();
        }

        v41 = qword_1EC891E20;
        v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v34 = [v41 stringFromNumber_];

        if (!v34)
        {
          return 0;
        }

        v43 = sub_1D726207C();
        goto LABEL_39;
      }

      sub_1D6EA86C4(v29, v17, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v17, v13, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if ((*(v53 + 48))(v13, 1, v2) == 1)
      {
        sub_1D6EA8744(v13, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v33 = v17;
LABEL_30:
        sub_1D6EA8744(v33, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        return 0;
      }

      sub_1D6EA8A74(v13, v5, type metadata accessor for PuzzleStreak);
      v54 = PuzzleStreak.days.getter();
      v44 = sub_1D72644BC();
      sub_1D6EA2830(v5, type metadata accessor for PuzzleStreak);
      v45 = v17;
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload != 4)
    {
      sub_1D6EA86C4(v29, v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v25, v21, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if ((*(v53 + 48))(v21, 1, v2) == 1)
      {
        sub_1D6EA8744(v21, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v33 = v25;
        goto LABEL_30;
      }

      sub_1D6EA8A74(v21, v9, type metadata accessor for PuzzleStreak);
      v54 = PuzzleStreak.days.getter();
      v44 = sub_1D72644BC();
      sub_1D6EA2830(v9, type metadata accessor for PuzzleStreak);
      v45 = v25;
LABEL_34:
      sub_1D6EA8744(v45, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      return v44;
    }

    if ((v29[8] & 1) == 0)
    {
      v32 = *v29;
      if (qword_1EDF0AEE8 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_40;
    }

    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((v29[8] & 1) == 0)
      {
        return sub_1D7262A9C();
      }

      return 0;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_12;
  }

  if (v29[8])
  {
    return 0;
  }

  v32 = *v29;
  if (qword_1EDF0AEE8 != -1)
  {
LABEL_40:
    swift_once();
  }

LABEL_21:
  v34 = qword_1EDF0AEF0;
  v35 = [v34 stringFromTimeInterval_];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D726207C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v54 = v37;
  v55 = v39;
  v60 = 44;
  v61 = 0xE100000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D5BF4D9C();
  v46 = MEMORY[0x1E69E6158];
  v47 = sub_1D7263A6C();
  v49 = v48;

  v54 = v47;
  v55 = v49;
  v60 = 32;
  v61 = 0xE100000000000000;
  v50 = sub_1D72639FC();
  v51 = *(v50 + 16);
  if (v51 >= 2)
  {
    v51 = 2;
  }

  v54 = v50;
  v55 = v50 + 32;
  v56 = 0;
  v57 = (2 * v51) | 1;
  sub_1D5B7A428(0, &unk_1EDF1A5F0, v46, MEMORY[0x1E69E6948]);
  sub_1D67B6CDC();
  v43 = sub_1D7261F3C();

LABEL_39:

  return v43;
}

uint64_t sub_1D6EA3184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((a3() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  if (((a3)(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return (a3)(a1 + v6, a2 + v6);
}

uint64_t sub_1D6EA32F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((static PuzzleStatisticValue.== infix(_:_:))() & 1) == 0 || (static PuzzleStatisticValue.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static PuzzleStatisticValue.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1D6EA3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static PuzzleStatisticValue.< infix(_:_:)(a1, a2) & 1) == 0 || (static PuzzleStatisticValue.< infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static PuzzleStatisticValue.< infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1D6EA33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static PuzzleStatisticValue.< infix(_:_:)(a2, a1) & 1) != 0 && (static PuzzleStatisticValue.< infix(_:_:)(a2 + *(a3 + 20), a1 + *(a3 + 20)))
  {
    v6 = static PuzzleStatisticValue.< infix(_:_:)(a2 + *(a3 + 24), a1 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6EA34CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static PuzzleStatisticValue.< infix(_:_:)(a2, a1) & 1) == 0 || (static PuzzleStatisticValue.< infix(_:_:)(a2 + *(a3 + 20), a1 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return static PuzzleStatisticValue.< infix(_:_:)(a2 + v6, a1 + v6);
}

uint64_t PuzzleStatisticsGameCenterLeaderboardResult.hash(into:)(uint64_t a1)
{
  sub_1D725891C();
  sub_1D6EA8D1C(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  v3 = type metadata accessor for PuzzleLeaderboardEntry();
  sub_1D72621EC();
  v4 = *(v1 + v3[6] + 40);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v4 >> 60 != 15)
  {
    sub_1D725868C();
  }

  MEMORY[0x1DA6FC0B0](*(v1 + v3[7]));
  MEMORY[0x1DA6FC0B0](*(v1 + v3[8]));
  v5 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  sub_1D690774C(a1, *(v1 + v5[5]));
  MEMORY[0x1DA6FC0B0](*(v1 + v5[6]));
  if (!*(v1 + v5[7] + 8))
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t PuzzleStatisticsGameCenterLeaderboardResult.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D725891C();
  sub_1D6EA8D1C(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  v1 = type metadata accessor for PuzzleLeaderboardEntry();
  sub_1D72621EC();
  v2 = *(v0 + v1[6] + 40);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v2 >> 60 != 15)
  {
    sub_1D725868C();
  }

  MEMORY[0x1DA6FC0B0](*(v0 + v1[7]));
  MEMORY[0x1DA6FC0B0](*(v0 + v1[8]));
  v3 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  sub_1D690774C(v5, *(v0 + v3[5]));
  MEMORY[0x1DA6FC0B0](*(v0 + v3[6]));
  if (*(v0 + v3[7] + 8))
  {
    sub_1D7264A2C();
    sub_1D72621EC();
  }

  else
  {
    sub_1D7264A2C();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6EA38B4(uint64_t a1, int *a2)
{
  PuzzleLeaderboardEntry.hash(into:)();
  sub_1D690774C(a1, *(v2 + a2[5]));
  MEMORY[0x1DA6FC0B0](*(v2 + a2[6]));
  if (!*(v2 + a2[7] + 8))
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t sub_1D6EA3960(uint64_t a1, int *a2)
{
  sub_1D7264A0C();
  sub_1D725891C();
  sub_1D6EA8D1C(&qword_1EC89A880, MEMORY[0x1E6969530]);
  sub_1D7261E8C();
  v4 = type metadata accessor for PuzzleLeaderboardEntry();
  sub_1D72621EC();
  v5 = *(v2 + v4[6] + 40);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v5 >> 60 != 15)
  {
    sub_1D725868C();
  }

  MEMORY[0x1DA6FC0B0](*(v2 + v4[7]));
  MEMORY[0x1DA6FC0B0](*(v2 + v4[8]));
  sub_1D690774C(v7, *(v2 + a2[5]));
  MEMORY[0x1DA6FC0B0](*(v2 + a2[6]));
  if (*(v2 + a2[7] + 8))
  {
    sub_1D7264A2C();
    sub_1D72621EC();
  }

  else
  {
    sub_1D7264A2C();
  }

  return sub_1D7264A5C();
}

void sub_1D6EA3B6C(void **a1)
{
  v2 = *(type metadata accessor for PuzzleLeaderboardEntry() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFAE0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D6EA3C14(v5);
  *a1 = v3;
}

void sub_1D6EA3C14(uint64_t *a1)
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
        type metadata accessor for PuzzleLeaderboardEntry();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PuzzleLeaderboardEntry() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6EA3FA4(v8, v9, a1, v4);
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
    sub_1D6EA3D40(0, v2, 1, a1);
  }
}

void sub_1D6EA3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - v18;
  v34 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v39 = -v21;
    v40 = v20;
    v23 = a1 - a3;
    v33 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v37 = v22;
    v38 = a3;
    v35 = v24;
    v36 = v23;
    while (1)
    {
      sub_1D6EAAED4(v24, v19, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D6EAAED4(v22, v14, type metadata accessor for PuzzleLeaderboardEntry);
      v25 = *(v8 + 28);
      v26 = v8;
      v27 = *&v19[v25];
      v28 = *&v14[v25];
      sub_1D6EA2830(v14, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D6EA2830(v19, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v27 < v28;
      v8 = v26;
      if (!v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v22 = v37 + v33;
        v23 = v36 - 1;
        v24 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_1D6EA8A74(v24, v41, type metadata accessor for PuzzleLeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6EA8A74(v30, v22, type metadata accessor for PuzzleLeaderboardEntry);
      v22 += v39;
      v24 += v39;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D6EA3FA4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v130 = type metadata accessor for PuzzleLeaderboardEntry();
  v9 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v10);
  v119 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v129 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v128 = &v111 - v20;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
LABEL_99:
      v131 = v106;
      a4 = *(v106 + 2);
      if (a4 >= 2)
      {
        v107 = v9;
        while (*a3)
        {
          v108 = *&v106[16 * a4];
          v109 = v106;
          v9 = *&v106[16 * a4 + 24];
          sub_1D6EA4904(*a3 + *(v107 + 72) * v108, *a3 + *(v107 + 72) * *&v106[16 * a4 + 16], *a3 + *(v107 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v108)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D62FF50C(v109);
          }

          if (a4 - 2 >= *(v109 + 2))
          {
            goto LABEL_124;
          }

          v110 = &v109[16 * a4];
          *v110 = v108;
          *(v110 + 1) = v9;
          v131 = v109;
          sub_1D62FF480(a4 - 1);
          v106 = v131;
          a4 = *(v131 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v106 = sub_1D62FF50C(a4);
    goto LABEL_99;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v117 = a3;
  v112 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v120 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v113 = v6;
      v26 = *a3;
      v27 = *(v9 + 72);
      v5 = *a3 + v27 * v25;
      v28 = v128;
      sub_1D6EAAED4(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v129;
      sub_1D6EAAED4(v26 + v27 * v24, v129, type metadata accessor for PuzzleLeaderboardEntry);
      v30 = *(v130 + 28);
      v31 = *(v28 + v30);
      v123 = *(v29 + v30);
      v124 = v31;
      sub_1D6EA2830(v29, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D6EA2830(v28, type metadata accessor for PuzzleLeaderboardEntry);
      v114 = v24;
      v32 = v24 + 2;
      v125 = v27;
      v33 = v26 + v27 * v32;
      while (v21 != v32)
      {
        LODWORD(v126) = v124 < v123;
        v34 = v128;
        sub_1D6EAAED4(v33, v128, type metadata accessor for PuzzleLeaderboardEntry);
        v35 = v129;
        sub_1D6EAAED4(v5, v129, type metadata accessor for PuzzleLeaderboardEntry);
        v36 = *(v130 + 28);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_1D6EA2830(v35, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D6EA2830(v34, type metadata accessor for PuzzleLeaderboardEntry);
        ++v32;
        v33 += v125;
        v5 += v125;
        if (((v126 ^ (v37 >= v38)) & 1) == 0)
        {
          v21 = v32 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v112;
      v6 = v113;
      v24 = v114;
      a4 = v115;
      if (v124 < v123)
      {
        if (v21 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v21)
        {
          v39 = v125 * (v21 - 1);
          v40 = v21 * v125;
          v124 = v21;
          v41 = v21;
          v42 = v114;
          v43 = v114 * v125;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              v5 = v44 + v43;
              sub_1D6EA8A74(v44 + v43, v119, type metadata accessor for PuzzleLeaderboardEntry);
              if (v43 < v39 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D6EA8A74(v119, v44 + v39, type metadata accessor for PuzzleLeaderboardEntry);
            }

            ++v42;
            v39 -= v125;
            v40 -= v125;
            v43 += v125;
          }

          while (v42 < v41);
          a3 = v117;
          v9 = v112;
          v24 = v114;
          a4 = v115;
          v21 = v124;
        }
      }
    }

    v45 = a3[1];
    if (v21 >= v45)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_32:
      v47 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v45)
    {
      v46 = a3[1];
    }

    else
    {
      v46 = v24 + a4;
    }

    if (v46 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v46)
    {
      goto LABEL_32;
    }

    v92 = *a3;
    v93 = *(v9 + 72);
    v94 = *a3 + v93 * (v21 - 1);
    v95 = v24;
    v96 = -v93;
    v113 = v6;
    v114 = v95;
    v97 = v95 - v21;
    v126 = v92;
    v118 = v93;
    v5 = v92 + v21 * v93;
    v98 = v130;
    v121 = v46;
LABEL_86:
    v123 = v97;
    v124 = v21;
    v122 = v5;
    v125 = v94;
    v99 = v94;
LABEL_87:
    a4 = v128;
    sub_1D6EAAED4(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
    v100 = v129;
    sub_1D6EAAED4(v99, v129, type metadata accessor for PuzzleLeaderboardEntry);
    v101 = *(v98 + 28);
    v102 = *(a4 + v101);
    v103 = *(v100 + v101);
    sub_1D6EA2830(v100, type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D6EA2830(a4, type metadata accessor for PuzzleLeaderboardEntry);
    if (v102 < v103)
    {
      break;
    }

    v98 = v130;
LABEL_85:
    v21 = v124 + 1;
    v94 = v125 + v118;
    v97 = v123 - 1;
    v5 = v122 + v118;
    v47 = v121;
    if (v124 + 1 != v121)
    {
      goto LABEL_86;
    }

    v9 = v112;
    v6 = v113;
    a3 = v117;
    v24 = v114;
    if (v121 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v120;
    }

    else
    {
      v23 = sub_1D698BA94(0, *(v120 + 2) + 1, 1, v120);
    }

    a4 = *(v23 + 2);
    v48 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v23 = sub_1D698BA94((v48 > 1), a4 + 1, 1, v23);
    }

    *(v23 + 2) = v5;
    v49 = &v23[16 * a4];
    *(v49 + 4) = v24;
    *(v49 + 5) = v47;
    v50 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v121 = v47;
    if (a4)
    {
      while (2)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          v56 = &v23[16 * v5 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_112;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_113;
          }

          v63 = &v23[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_115;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v67 >= v59)
          {
            v85 = &v23[16 * v51 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_122;
            }

            if (v54 < v88)
            {
              v51 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v55)
            {
              goto LABEL_114;
            }

            v68 = &v23[16 * v5];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_117;
            }

            v74 = &v23[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_121;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_66;
            }

            if (v54 < v77)
            {
              v51 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v52 = *(v23 + 4);
            v53 = *(v23 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_52;
          }

          v78 = &v23[16 * v5];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_66:
          if (v73)
          {
            goto LABEL_116;
          }

          v81 = &v23[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v89 = v23;
        v90 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v51 + 40];
        sub_1D6EA4904(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v23[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v90)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D62FF50C(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v89[16 * a4];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v131 = v89;
        sub_1D62FF480(v51);
        v23 = v131;
        v5 = *(v131 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = a3[1];
    v22 = v121;
    a4 = v115;
    if (v121 >= v21)
    {
      goto LABEL_96;
    }
  }

  if (v126)
  {
    v104 = v127;
    sub_1D6EA8A74(v5, v127, type metadata accessor for PuzzleLeaderboardEntry);
    v98 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D6EA8A74(v104, v99, type metadata accessor for PuzzleLeaderboardEntry);
    v99 += v96;
    v5 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}