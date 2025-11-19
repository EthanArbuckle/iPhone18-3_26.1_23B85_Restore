unint64_t sub_1D6AE91F8()
{
  result = qword_1EC891940;
  if (!qword_1EC891940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891940);
  }

  return result;
}

uint64_t PuzzleResource.init(puzzle:indexFileURL:dataFileURL:dataResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for PuzzleResource();
  v10 = v9[5];
  v11 = sub_1D72585BC();
  v12 = *(*(v11 - 8) + 32);
  v12(&a5[v10], a2, v11);
  result = (v12)(&a5[v9[6]], a3, v11);
  *&a5[v9[7]] = a4;
  return result;
}

uint64_t type metadata accessor for PuzzleResource()
{
  result = qword_1EC891950;
  if (!qword_1EC891950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PuzzleResource.indexFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleResource() + 20);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleResource.dataFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleResource() + 24);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t PuzzleResource.description.getter()
{
  sub_1D7263D4C();

  type metadata accessor for PuzzleResource();
  sub_1D72585BC();
  sub_1D614088C();
  v0 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x694661746164202CLL, 0xEF203A4C5255656CLL);
  v1 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

void sub_1D6AE95C4()
{
  sub_1D6152704();
  if (v0 <= 0x3F)
  {
    sub_1D72585BC();
    if (v1 <= 0x3F)
    {
      sub_1D6AE9660();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6AE9660()
{
  if (!qword_1EC891968)
  {
    sub_1D5F7DC80();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891968);
    }
  }
}

uint64_t FormatTextNodeAttachment.scaled.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2);
}

Class sub_1D6AE96E4(__int128 *a1, uint64_t a2)
{
  v5 = a1[5];
  v35 = a1[4];
  v36 = v5;
  v6 = a1[7];
  v37 = a1[6];
  v38 = v6;
  v7 = a1[1];
  v31 = *a1;
  v32 = v7;
  v8 = a1[3];
  v33 = a1[2];
  v34 = v8;
  v21 = v31;
  v22 = v7;
  v23 = v33;
  v24 = v8;
  v25 = v35;
  v26 = v5;
  v27 = v37;
  v28 = v6;
  if (sub_1D5CFD0B8(&v21) == 1)
  {
    return 0;
  }

  v29[4] = v25;
  v29[5] = v26;
  v29[6] = v27;
  v29[7] = v28;
  v29[0] = v21;
  v29[1] = v22;
  v29[2] = v23;
  v29[3] = v24;
  v10 = sub_1D5CFD35C(v29);
  if ((v10 - 1) < 2)
  {
    sub_1D5CFD34C(v29);
    return [objc_opt_self() blackColor];
  }

  if (v10)
  {
    v14 = *sub_1D5CFD34C(v29);
    v20[2] = v33;
    v20[3] = v34;
    v20[0] = v31;
    v20[1] = v32;
    v20[6] = v37;
    v20[7] = v38;
    v20[4] = v35;
    v20[5] = v36;
    sub_1D5CFD190(v20, v18);
    v15 = sub_1D6FD6FB8(a2, v14, &v19);
    if (!v2)
    {
      v16 = v19;
      if ((v19 & 7) > 1 || (v17 = v19, (v19 & 7) != 0))
      {
        v17 = v19 & 0xFFFFFFFFFFFFFFF8;
      }

      v18[0] = v17;
      v13 = FormatColor.color.getter(v15);
      sub_1D6AEA880(a1, sub_1D62DF9E8);
      sub_1D6086768(v16);
      return v13;
    }

    return sub_1D6AEA880(a1, sub_1D62DF9E8);
  }

  v11 = *sub_1D5CFD34C(v29);
  v30 = v11;
  sub_1D6AEA7BC(a1, v20, sub_1D62DF9E8);
  sub_1D6AEA7BC(&v30, v20, sub_1D6AEA824);
  sub_1D5FA6CB0(a2, v11, v18);
  v12 = sub_1D6AEA880(&v30, sub_1D6AEA824);
  if (v2)
  {
    return sub_1D6AEA880(a1, sub_1D62DF9E8);
  }

  *&v20[0] = v18[0];
  v13 = FormatColor.color.getter(v12);
  sub_1D6AEA880(a1, sub_1D62DF9E8);

  return v13;
}

uint64_t sub_1D6AE99BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_1D5E04CC4(*a1);
  result = sub_1D5D2F2C4(v6, v7, v8);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t FormatTextNodeAttachment.scaled.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D5D2F2C4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

void (**sub_1D6AE9A8C(void *a1, uint64_t a2))(char *, uint64_t)
{
  v6 = sub_1D725A19C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = v2[3];
  *&v51 = v2[2];
  *(&v51 + 1) = v13;
  LODWORD(v72) = *(v2 + 32);
  *&v61 = v11;

  v14 = sub_1D5E42CB0(a1);
  if (v3)
  {
  }

  else
  {
    v15 = v14;
    v49 = v12;
    v46 = v10;
    v47 = v7;
    v48 = v6;
    v50 = a2;

    v16 = [v15 imageWithRenderingMode_];

    v17 = v51;
    v61 = v51;
    v18 = v72;
    LOBYTE(v62) = v72;
    sub_1D5E04CC4(v51);
    sub_1D725A7EC();
    LOBYTE(v15) = FormatBoolean.value(contextLayoutOptions:)(v53);
    v45 = a1;

    sub_1D5D2F2C4(v17, *(&v17 + 1), v18);
    if (v15)
    {
      v19 = v16;
      v20 = [objc_opt_self() textAttachmentWithImage_];
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      v19 = v16;
      [v20 setImage_];
    }

    v21 = v45;
    v22 = v50;
    LOBYTE(v61) = v49;
    sub_1D69CB128(v45, v50, v19, v69);
    if ((v70 & 1) == 0)
    {
      [v20 setBounds_];
    }

    sub_1D5B5A498(0, &qword_1EDF1A7E0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v72 = v20;
    v7 = [ObjCClassFromMetadata attributedStringWithAttachment_];
    if (v22)
    {
      if ((~*(v22 + 56) & 0xF000000000000007) != 0)
      {
        *&v53 = *(v22 + 56);

        v24 = sub_1D5F4FDC4(v21);

        v25 = v46;
        sub_1D7259EDC();
        sub_1D725A18C();
        v27 = v26;
        if (qword_1EDF34BB8 != -1)
        {
          swift_once();
        }

        sub_1D7264C3C();
        v28 = v47;
        *(&v51 + 1) = v24;
        if (v53 == 1)
        {
          [v24 pointSize];
          v30 = v29;
          sub_1D7264C3C();
          v31 = round(v27 * (v30 * 4.0) * 0.25);
          if (!v53)
          {
            v31 = v30;
          }

          v32 = [v24 fontWithSize_];
        }

        else
        {
          v32 = v24;
        }

        v33 = v32;
        v28[1](v25, v48);
        sub_1D5DF6790();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v35 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        *(inited + 64) = sub_1D5B5A498(0, &qword_1EDF1A720);
        *(inited + 40) = v33;
        v36 = v35;
        v37 = v33;
        sub_1D5C09CEC(inited);
        swift_setDeallocating();
        sub_1D6AEA880(inited + 32, sub_1D5C09DD4);
        type metadata accessor for Key(0);
        sub_1D5C09E68();
        v38 = sub_1D7261D2C();

        [v7 addAttributes:v38 range:{0, objc_msgSend(v7, sel_length)}];

        v21 = v45;
        v19 = v16;
        v22 = v50;
      }

      v39 = *(v22 + 144);
      v57 = *(v22 + 128);
      v58 = v39;
      v40 = *(v22 + 176);
      v59 = *(v22 + 160);
      v60 = v40;
      v41 = *(v22 + 80);
      v53 = *(v22 + 64);
      v54 = v41;
      v42 = *(v22 + 112);
      v55 = *(v22 + 96);
      v56 = v42;
      sub_1D6AEA7BC(&v53, &v52, sub_1D62DF9E8);
      v65 = v57;
      v66 = v58;
      v67 = v59;
      v68 = v60;
      v61 = v53;
      v62 = v54;
      v63 = v55;
      v64 = v56;
    }

    else
    {
      sub_1D69B875C(&v61);
    }

    v71[4] = v65;
    v71[5] = v66;
    v71[6] = v67;
    v71[7] = v68;
    v71[0] = v61;
    v71[1] = v62;
    v71[2] = v63;
    v71[3] = v64;
    sub_1D6AEA0FC(v71, v7, v21);

    sub_1D6AEA880(&v61, sub_1D62DF9E8);
  }

  return v7;
}

void sub_1D6AEA0FC(__int128 *a1, void *a2, uint64_t a3)
{
  v7 = a1[5];
  v31 = a1[4];
  v32 = v7;
  v8 = a1[7];
  v33 = a1[6];
  v34 = v8;
  v9 = a1[1];
  v27 = *a1;
  v28 = v9;
  v10 = a1[3];
  v29 = a1[2];
  v30 = v10;
  v26[0] = v27;
  v26[1] = v9;
  v26[2] = v29;
  v26[3] = v10;
  v26[4] = v31;
  v26[5] = v7;
  v26[6] = v33;
  v26[7] = v8;
  if (sub_1D5CFD0B8(v26) != 1)
  {
    v24[4] = v31;
    v24[5] = v32;
    v24[6] = v33;
    v24[7] = v34;
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_1D5CFD190(v24, v23);
    v11 = [a2 length];
    v25[4] = v31;
    v25[5] = v32;
    v25[6] = v33;
    v25[7] = v34;
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    sub_1D5CFD190(v25, v23);
    v12 = sub_1D6AE96E4(a1, a3);
    if (v3)
    {
      sub_1D6AEA880(a1, sub_1D62DF9E8);
      v13 = a1;
LABEL_4:
      sub_1D6AEA880(v13, sub_1D62DF9E8);
      return;
    }

    if (v12)
    {
      v14 = v12;
      [a2 addAttribute:*MEMORY[0x1E69DB650] value:v12 range:{0, v11}];
    }

    v23[4] = v31;
    v23[5] = v32;
    v23[6] = v33;
    v23[7] = v34;
    v23[0] = v27;
    v23[1] = v28;
    v23[2] = v29;
    v23[3] = v30;
    v15 = sub_1D5CFD35C(v23);
    v16 = sub_1D5CFD34C(v23);
    if (v15)
    {
      v19 = [objc_opt_self() clearColor];
      sub_1D6AEA880(a1, sub_1D62DF9E8);
      if (!v19)
      {
        v13 = a1;
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *(v16 + 8);
      sub_1D6AEA7BC(a1, &v22, sub_1D62DF9E8);

      sub_1D5FA6CB0(a3, v17, &v35);

      *&v22 = v35;
      v19 = FormatColor.color.getter(v18);
      sub_1D6AEA880(a1, sub_1D62DF9E8);

      sub_1D6AEA880(a1, sub_1D62DF9E8);
    }

    v20 = *MEMORY[0x1E69DB600];
    v21 = v19;
    [a2 addAttribute:v20 value:v21 range:{0, v11}];
    sub_1D6AEA880(a1, sub_1D62DF9E8);
  }
}

uint64_t _s8NewsFeed24FormatTextNodeAttachmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v17 = *a2;
  v18 = v2;

  LOBYTE(v2) = static FormatSyncImageContent.== infix(_:_:)(&v18, &v17);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    v11 = 0x61437265746E6563;
  }

  else
  {
    v11 = 0x656E696C65736162;
  }

  if (v3)
  {
    v12 = 0xEF74686769654870;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v7)
  {
    v13 = 0x61437265746E6563;
  }

  else
  {
    v13 = 0x656E696C65736162;
  }

  if (v7)
  {
    v14 = 0xEF74686769654870;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  if (v11 != v13 || v12 != v14)
  {
    v15 = sub_1D72646CC();

    if (v15)
    {
      goto LABEL_18;
    }

    return 0;
  }

LABEL_18:

  return sub_1D5F588CC(v4, v5, v6, v8, v9, v10);
}

unint64_t sub_1D6AEA618(uint64_t a1)
{
  result = sub_1D6AEA640();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AEA640()
{
  result = qword_1EC891970;
  if (!qword_1EC891970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891970);
  }

  return result;
}

unint64_t sub_1D6AEA694(void *a1)
{
  a1[1] = sub_1D5CCEDF0();
  a1[2] = sub_1D66F6488();
  result = sub_1D6AEA6CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AEA6CC()
{
  result = qword_1EC891978;
  if (!qword_1EC891978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891978);
  }

  return result;
}

unint64_t sub_1D6AEA720(uint64_t a1)
{
  result = sub_1D6AEA748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AEA748()
{
  result = qword_1EC891980;
  if (!qword_1EC891980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891980);
  }

  return result;
}

uint64_t sub_1D6AEA7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6AEA824()
{
  if (!qword_1EDF2CA80)
  {
    sub_1D618AB6C();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2CA80);
    }
  }
}

uint64_t sub_1D6AEA880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6AEA8E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BAABFC(0, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v39 - v5);
  v7 = type metadata accessor for GroupLayoutContext();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BAABFC(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v39 - v14);
  v16 = type metadata accessor for GroupLayoutBindingContext();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AEB474(v1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, &v39, &unk_1EDF27C10, sub_1D5C10AB0);
  if (v40)
  {
    sub_1D5B63F14(&v39, v41);
    sub_1D6AEB474(v1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v15, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v41);
      v21 = qword_1EDF3ECD8;
      v22 = type metadata accessor for GroupLayoutBindingContext;
      v23 = v15;
    }

    else
    {
      sub_1D5BDA89C(v15, v20, type metadata accessor for GroupLayoutBindingContext);
      sub_1D6AEB474(v1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, v6, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_1D5BDA89C(v6, v11, type metadata accessor for GroupLayoutContext);
        sub_1D5B68374(v41, (a1 + 2));
        v26 = type metadata accessor for DebugGroupLayoutKey();
        sub_1D5BE6458(v20, a1 + *(v26 + 24), type metadata accessor for GroupLayoutBindingContext);
        sub_1D7259EAC();
        v27 = a1 + *(v26 + 28);
        sub_1D7259F4C();
        v28 = v7[5];
        v29 = sub_1D7259CFC();
        (*(*(v29 - 8) + 16))(&v27[v28], &v11[v28], v29);
        v30 = *&v11[v7[10]];
        sub_1D5BE6458(&v11[v7[6]], &v27[v7[6]], type metadata accessor for FeedLayoutSolverOptions);
        v31 = *&v11[v7[7]];
        v32 = *&v11[v7[8]];
        v33 = v11[v7[9]];
        v34 = v11[v7[11]];
        v35 = *&v11[v7[12]];
        *&v27[v7[10]] = v30;
        *&v27[v7[7]] = v31;
        *&v27[v7[8]] = v32;
        v27[v7[9]] = v33;
        v27[v7[11]] = v34;
        *&v27[v7[12]] = v35;
        __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

        v36 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0();
        v38 = v37;
        sub_1D5BE7A4C(v11, type metadata accessor for GroupLayoutContext);
        sub_1D5BE7A4C(v20, type metadata accessor for GroupLayoutBindingContext);
        __swift_destroy_boxed_opaque_existential_1(v41);
        *a1 = v36;
        a1[1] = v38;
        return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
      }

      sub_1D5BE7A4C(v20, type metadata accessor for GroupLayoutBindingContext);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v21 = qword_1EDF403D0;
      v22 = type metadata accessor for GroupLayoutContext;
      v23 = v6;
    }
  }

  else
  {
    v21 = &unk_1EDF27C10;
    v22 = sub_1D5C10AB0;
    v23 = &v39;
  }

  sub_1D5BD561C(v23, v21, v22);
  v24 = type metadata accessor for DebugGroupLayoutKey();
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

uint64_t GroupLayoutKey.hash(into:)()
{
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t static GroupLayoutKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(a1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) == *(a2 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) && *(a1 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8) == *(a2 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8))
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t static GroupLayoutKey.default.getter()
{
  v0 = sub_1D725895C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v5 = sub_1D725893C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0x746C7561666564;
  *(v8 + 24) = 0xE700000000000000;
  v9 = (v8 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v9 = v5;
  v9[1] = v7;
  v10 = v8 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v12 = type metadata accessor for GroupLayoutBindingContext();
  (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  v14 = type metadata accessor for GroupLayoutContext();
  (*(*(v14 - 8) + 56))(v8 + v13, 1, 1, v14);
  return v8;
}

uint64_t GroupLayoutKey.deinit()
{

  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext);

  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory, &unk_1EDF27C10, sub_1D5C10AB0);
  sub_1D5BD561C(v0 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, qword_1EDF403D0, type metadata accessor for GroupLayoutContext);
  return v0;
}

uint64_t GroupLayoutKey.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6AEB258()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6AEB2B8()
{
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t sub_1D6AEB308()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

unint64_t sub_1D6AEB368()
{
  result = qword_1EDF11A68;
  if (!qword_1EDF11A68)
  {
    type metadata accessor for GroupLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11A68);
  }

  return result;
}

uint64_t sub_1D6AEB3C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24);
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) == *(v3 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) && *(v2 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8) == *(v3 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8))
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t sub_1D6AEB474(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5BAABFC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t FormatConfig.init(showMissingOptionBindings:environment:annotator:feedAppConfig:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10 = a3[3];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  if (v7 == 8)
  {
    v18 = *(a3 + 1);
    v19 = a4[2];
    v20 = a4[1];
    v21 = *a4;
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    LOBYTE(v7) = v22;
    v12 = v20;
    v11 = v21;
    v9 = v18;
    v13 = v19;
  }

  if (v9.i64[0] == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  *a5 = v5 & 1;
  *(a5 + 1) = v7;
  *(a5 + 8) = v14;
  v15 = vdup_n_s32(v9.i64[0] == 1);
  v16.i64[0] = v15.u32[0];
  v16.i64[1] = v15.u32[1];
  *(a5 + 16) = vandq_s8(v9, vcgezq_s64(vshlq_n_s64(v16, 0x3FuLL)));
  if (v9.i64[0] == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  *(a5 + 32) = v17;
  *(a5 + 40) = v11;
  *(a5 + 56) = v12;
  *(a5 + 72) = v13;
  return result;
}

double static FormatConfig.default.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  *a1 = 0;
  *(a1 + 1) = v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

uint64_t FormatConfig.copy(withAnnotator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(v2 + 32);
  v8 = *(v2 + 64);
  v21 = *(v2 + 48);
  v22 = v8;
  v23 = *(v2 + 80);
  v9 = *(v2 + 16);
  v19[0] = *v2;
  v19[1] = v9;
  v20 = v7;
  if (v3 == 1)
  {
    v10 = *(v2 + 48);
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v2 + 64);
    *(a2 + 80) = *(v2 + 80);
    v11 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v11;
    sub_1D5CF6A5C(v19, v18);
  }

  else
  {
    v12 = BYTE1(v19[0]);
    v13 = *(&v20 + 1);
    v14 = v21;
    v16 = v22;
    v15 = v23;
    *a2 = v19[0];
    *(a2 + 1) = v12;
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
    *(a2 + 64) = v16;
    *(a2 + 80) = v15;
    sub_1D60B297C(v13, v14, *(&v14 + 1), v16, *(&v16 + 1), v15);
  }

  return sub_1D6AEB780(v4, v3);
}

uint64_t sub_1D6AEB780(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D6AEB7C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D6AEB824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D6AEB920(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_1D6AEC024;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D6AEBD2C;
  v6[3] = &block_descriptor_11_3;
  v5 = _Block_copy(v6);

  [v2 scheduleLowPriorityAsyncBlock_];
  _Block_release(v5);
}

uint64_t sub_1D6AEBA34(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a1();
  }

  sub_1D6AEBB10(a4);
  v6 = sub_1D725B92C();
  sub_1D725BB2C();
}

uint64_t sub_1D6AEBB10(uint64_t *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  if (v4)
  {
    sub_1D7262EDC();
    sub_1D725C30C();
    sub_1D6AEC074();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);
    type metadata accessor for FeedContentPrefetchTask.Result();
    sub_1D725BDCC();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_1D725B92C();
    sub_1D725BAAC();

    v1 = sub_1D725BB4C();
  }

  return v1;
}

uint64_t sub_1D6AEBD2C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D6AEC02C, v4);
}

uint64_t sub_1D6AEBDC0(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2();
    sub_1D6AEB920(v4);
  }

  return result;
}

uint64_t sub_1D6AEBE40(uint64_t a1, uint64_t a2)
{
  sub_1D5B68374(a2 + 24, v5);
  sub_1D5B68374(a2 + 64, &v6);
  v3 = FeedContentPrefetchTask.run(with:)(v5);
  sub_1D6AEC0C8(v5);
  return v3;
}

uint64_t sub_1D6AEBEB4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) interestTokenForContentManifest_];
  v4 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v4);
  if (*((*(a2 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t sub_1D6AEBF9C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6AEC074()
{
  result = qword_1EDF13A00;
  if (!qword_1EDF13A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13A00);
  }

  return result;
}

unint64_t sub_1D6AEC130()
{
  result = qword_1EC891990;
  if (!qword_1EC891990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891990);
  }

  return result;
}

uint64_t sub_1D6AEC1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D6AED8E8(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - v11;
  v13 = *(v4 + 48);
  if (*(v13 + 16) && (v14 = sub_1D5B69D90(a1, a2), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for FormatDerivedDataOption();
    v19 = *(v18 - 8);
    sub_1D5EB9A4C(v17 + *(v19 + 72) * v16, v12);
    v20 = *(v19 + 56);
    v20(v12, 0, 1, v18);
    sub_1D60E27A4(v12, a4);
    return (v20)(a4, 0, 1, v18);
  }

  else
  {
    v29 = a4;
    v22 = type metadata accessor for FormatDerivedDataOption();
    v23 = *(v22 - 8);
    v24 = *(v23 + 56);
    v25 = 1;
    v24(v12, 1, 1, v22);
    swift_beginAccess();
    v26 = *(a3 + 56);
    if (*(v26 + 16))
    {

      v27 = sub_1D5B69D90(a1, a2);
      if (v28)
      {
        sub_1D5EB9A4C(*(v26 + 56) + *(v23 + 72) * v27, v29);
        v25 = 0;
      }
    }

    v24(v29, v25, 1, v22);
    result = (*(v23 + 48))(v12, 1, v22);
    if (result != 1)
    {
      return sub_1D6AED870(v12);
    }
  }

  return result;
}

uint64_t sub_1D6AEC490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  sub_1D6AED8E8(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for FormatDerivedDataOption();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - v22;
  swift_bridgeObjectRetain_n();
  v57 = a1;
  v58 = a4;
  sub_1D6AEC1FC(a1, a2, a4, v15);
  v24 = *(v17 + 48);
  v60 = v16;
  if (v24(v15, 1, v16) == 1)
  {
    swift_bridgeObjectRelease_n();
    v25 = v15;
LABEL_3:
    sub_1D6AED870(v25);
    v26 = 1;
    v27 = v61;
LABEL_12:
    sub_1D5EA24BC();
    return (*(*(v36 - 8) + 56))(v27, v26, 1, v36);
  }

  v55 = a2;
  sub_1D60E27A4(v15, v23);
  v28 = *(v23 + 2);
  if (!v23[40])
  {
    v34 = v55;

    v35 = v59;

    if ((sub_1D6183C84(v28, v35) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError();
      sub_1D5E40444();
      swift_allocError();
      *v47 = v57;
      *(v47 + 8) = v34;
      *(v47 + 16) = v28;
      *(v47 + 24) = v35;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D60E13EC(v23);
    }

LABEL_11:
    v27 = v61;
    sub_1D5EA3B90(&v23[*(v60 + 28)], v61);
    sub_1D60E13EC(v23);
    v26 = 0;
    goto LABEL_12;
  }

  if (v23[40] != 1)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_11;
  }

  v29 = v23;
  v32 = v23 + 24;
  v31 = *(v23 + 3);
  v30 = *(v32 + 1);

  sub_1D6AEC1FC(v28, v31, v58, v11);
  v33 = v60;
  if (v24(v11, 1, v60) == 1)
  {

    sub_1D60E13EC(v29);
    v25 = v11;
    goto LABEL_3;
  }

  v23 = v29;
  v38 = v11;
  v39 = v56;
  sub_1D60E27A4(v38, v56);
  v40 = v62;
  if (*(v39 + 40))
  {

    type metadata accessor for FormatDerivedDataError();
    sub_1D5E40444();
    swift_allocError();
    v42 = v41;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    v66 = 0xD000000000000012;
    v67 = 0x80000001D73E5630;
    v43 = *(v39 + 32);
    v44 = *(v39 + 40);
    v63 = *(v39 + 16);
    v64 = v43;
    v65 = v44;
    v45 = FormatDerivedDataOptionType.description.getter();
    MEMORY[0x1DA6F9910](v45);

    v46 = v67;
    *v42 = v66;
    v42[1] = v46;
    swift_storeEnumTagMultiPayload();
LABEL_16:
    swift_willThrow();
LABEL_17:
    sub_1D60E13EC(v39);
    return sub_1D60E13EC(v23);
  }

  v48 = v33;
  v49 = *(v39 + 16);
  v50 = *(v30 + 16);

  if (!v50)
  {
LABEL_25:

    v52 = v59;

    if (sub_1D6183C84(v49, v52))
    {

      sub_1D60E13EC(v29);
      v27 = v61;
      sub_1D5EA3B90(v39 + *(v48 + 28), v61);
      sub_1D60E13EC(v39);
      v26 = 0;
      goto LABEL_12;
    }

    type metadata accessor for FormatDerivedDataError();
    sub_1D5E40444();
    swift_allocError();
    v53 = v55;
    *v54 = v57;
    *(v54 + 8) = v53;
    *(v54 + 16) = v49;
    *(v54 + 24) = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  v51 = 0;
  while (v51 < *(v30 + 16))
  {
    LOBYTE(v66) = *(v30 + v51 + 32);
    v68 = v49;
    result = sub_1D5E3FC18(&v68, &v63);
    if (v40)
    {

      goto LABEL_17;
    }

    ++v51;
    v49 = v63;
    if (v50 == v51)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6AECA24(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40) | (*(a2 + 44) << 32);
  if (v3 <= 0xFD)
  {
    v21 = *(a2 + 24);
    v22 = *(a2 + 16);
    v23 = *(a2 + 8);
    v10 = *result;
    v11 = *(result + 8);
    v12 = *(v2 + 24);
    sub_1D6007830(*result, v11, v3);
    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1D698CCB0(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_1D698CCB0((v14 > 1), v15 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v15 + 1;
    v16 = v12 + 24 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v3;
    *(v2 + 24) = v12;
    v4 = v13;
    v6 = v22;
    v5 = v23;
    v7 = v21;
  }

  if (((v9 >> 41) & 0x7F) != 0x7F)
  {
    v17 = *(v2 + 32);
    sub_1D67084A4(v4, v5, v6, v7, v8, v9);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D6992318(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1D6992318((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 48 * v19;
    *(v20 + 32) = v4;
    *(v20 + 40) = v5;
    *(v20 + 48) = v6;
    *(v20 + 56) = v7;
    *(v20 + 64) = v8;
    *(v20 + 76) = WORD2(v9);
    *(v20 + 72) = v9;
    *(v2 + 32) = v17;
  }

  return result;
}

uint64_t sub_1D6AECBE0(uint64_t *a1, uint64_t a2)
{
  v47 = a2;
  v3 = v2;
  sub_1D6AED8E8(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for FormatDerivedDataOption();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[1];
  v55[0] = *v3;
  v55[1] = v16;
  v17 = v3[3];
  v19 = *v3;
  v18 = v3[1];
  v55[2] = v3[2];
  v55[3] = v17;
  v51 = v19;
  v52 = v18;
  v20 = v3[3];
  v53 = v3[2];
  v54 = v20;
  v22 = *a1;
  v21 = a1[1];
  v49 = a1;
  sub_1D670E544(v55, v50);
  sub_1D6AEC1FC(v22, v21, v47, v11);
  v23 = v12;
  v24 = v57;
  v56[0] = v51;
  v56[1] = v52;
  v56[2] = v53;
  v56[3] = v54;
  sub_1D670E6B8(v56);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_1D6AED870(v11);
    v25 = v48;
    sub_1D5EB9A4C(v49, v48);
    (*(v24 + 56))(v25, 0, 1, v23);

    return sub_1D6D60D3C(v25, v22, v21);
  }

  v47 = v21;
  v27 = v48;
  sub_1D60E27A4(v11, v15);
  v28 = v49;
  v29 = v15;
  if (!v15[40] && !*(v49 + 40))
  {
    v46 = v23;
    v30 = v49;
    v31 = v49[2];
    v45 = *(v29 + 16);
    LOBYTE(v51) = v45;
    v44 = v31;
    v50[0] = v31;
    v32 = FormatOptionType.rawValue.getter();
    v34 = v33;
    if (v32 == FormatOptionType.rawValue.getter() && v34 == v35)
    {

      v28 = v30;
      v23 = v46;
      v24 = v57;
    }

    else
    {
      v36 = sub_1D72646CC();

      v28 = v30;
      v23 = v46;
      v24 = v57;
      if ((v36 & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5E40444();
        swift_allocError();
        v39 = v38;
        v41 = *v29;
        v40 = *(v29 + 8);
        sub_1D6057620();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = v44;

        v43 = sub_1D5E26E28(inited);
        swift_setDeallocating();
        *v39 = v41;
        *(v39 + 8) = v40;
        *(v39 + 16) = v45;
        *(v39 + 24) = v43;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D60E13EC(v29);
      }
    }
  }

  sub_1D5EB9A4C(v28, v27);
  (*(v24 + 56))(v27, 0, 1, v23);
  v37 = v47;

  sub_1D6D60D3C(v27, v22, v37);
  return sub_1D60E13EC(v29);
}

uint64_t sub_1D6AECFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v46 = a2;
  v7 = type metadata accessor for FormatDerivedDataOption();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = v3[3];
  v45[2] = v3[2];
  v45[3] = v13;
  v14 = v3[1];
  v45[0] = *v3;
  v45[1] = v14;
  if (*(v12 + 16))
  {
    v38 = a3;
    v15 = v3[1];
    v41 = *v3;
    v42 = v15;
    v16 = v3[3];
    v43 = v3[2];
    v44 = v16;
    v17 = 1 << *(v12 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v12 + 64);
    sub_1D670E544(v45, v40);

    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v22 = v21;
LABEL_9:
        sub_1D5EB9A4C(*(v12 + 56) + *(v39 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v10);
        sub_1D6AECBE0(v10, v46);
        if (v4)
        {
          break;
        }

        v19 &= v19 - 1;
        result = sub_1D60E13EC(v10);
        v21 = v22;
        if (!v19)
        {
          goto LABEL_6;
        }
      }

      sub_1D60E13EC(v10);

      v40[0] = v41;
      v40[1] = v42;
      v40[2] = v43;
      v40[3] = v44;
      return sub_1D670E6B8(v40);
    }

    else
    {
      while (1)
      {
LABEL_6:
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v22 >= ((v17 + 63) >> 6))
        {
          break;
        }

        v19 = *(v12 + 64 + 8 * v22);
        ++v21;
        if (v19)
        {
          goto LABEL_9;
        }
      }

      v23 = 1 << *(v11 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v11 + 56);
      v26 = (v23 + 63) >> 6;

      for (i = 0; v25; result = )
      {
        v28 = i;
LABEL_20:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = (*(v11 + 48) + ((v28 << 10) | (16 * v29)));
        v31 = *v30;
        v32 = v30[1];

        sub_1D5B860D0(v40, v31, v32);
      }

      while (1)
      {
        v28 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v28 >= v26)
        {

          v33 = v42;
          v34 = v38;
          *v38 = v41;
          v34[1] = v33;
          v35 = v44;
          v34[2] = v43;
          v34[3] = v35;
          return result;
        }

        v25 = *(v11 + 56 + 8 * v28);
        ++i;
        if (v25)
        {
          i = v28;
          goto LABEL_20;
        }
      }

LABEL_26:
      __break(1u);
    }
  }

  else
  {
    v36 = v3[1];
    *a3 = *v3;
    a3[1] = v36;
    v37 = v3[3];
    a3[2] = v3[2];
    a3[3] = v37;
    return sub_1D670E544(v45, v40);
  }

  return result;
}

uint64_t FormatDerivedDataContextKey.hash(into:)()
{
  MEMORY[0x1DA6FC0B0](*(v0 + 16));

  return sub_1D72621EC();
}

uint64_t FormatDerivedDataContextKey.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6AED3C4()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6AED428()
{
  MEMORY[0x1DA6FC0B0](*(v0 + 16));

  return sub_1D72621EC();
}

uint64_t sub_1D6AED47C()
{
  v1 = *(v0 + 16);
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t FormatDerivedDataContextKey.description.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = 0x203A6B636F6C62;
    }

    else
    {
      v1 = 0x203A6E6F6974706FLL;
    }
  }

  else
  {
    v1 = 0x203A656C6966;
  }

  v3 = v1;
  MEMORY[0x1DA6F9910](*v0, *(v0 + 8));
  return v3;
}

uint64_t _s8NewsFeed27FormatDerivedDataContextKeyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1D72646CC();
        sub_1D5DEA210(v6, v5, 0);
        sub_1D5DEA210(v3, v2, 0);
        sub_1D5DEA520(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_21;
      }

      sub_1D5DEA210(v14, v2, 0);
      sub_1D5DEA210(v3, v2, 0);
      sub_1D5DEA520(v3, v2, 0);
      v19 = v3;
      v20 = v2;
      v21 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1D72646CC();
        sub_1D5DEA210(v6, v5, 1u);
        sub_1D5DEA210(v3, v2, 1u);
        sub_1D5DEA520(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_21:
        sub_1D5DEA520(v11, v12, v13);
        return v10 & 1;
      }

      sub_1D5DEA210(v8, v2, 1u);
      sub_1D5DEA210(v3, v2, 1u);
      sub_1D5DEA520(v3, v2, 1u);
      v19 = v3;
      v20 = v2;
      v21 = 1;
      goto LABEL_26;
    }

LABEL_22:
    sub_1D5DEA210(*a2, *(a2 + 8), v7);
    sub_1D5DEA210(v3, v2, v4);
    sub_1D5DEA520(v3, v2, v4);
    sub_1D5DEA520(v6, v5, v7);
    return 0;
  }

  if (v7 != 2)
  {
    goto LABEL_22;
  }

  v16 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_1D72646CC();
    sub_1D5DEA210(v6, v5, 2u);
    sub_1D5DEA210(v3, v2, 2u);
    sub_1D5DEA520(v3, v2, 2u);
    v11 = v6;
    v12 = v5;
    v13 = 2;
    goto LABEL_21;
  }

  sub_1D5DEA210(v16, v2, 2u);
  sub_1D5DEA210(v3, v2, 2u);
  sub_1D5DEA520(v3, v2, 2u);
  v19 = v3;
  v20 = v2;
  v21 = 2;
LABEL_26:
  sub_1D5DEA520(v19, v20, v21);
  return 1;
}

unint64_t sub_1D6AED800()
{
  result = qword_1EC8919A0;
  if (!qword_1EC8919A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8919A0);
  }

  return result;
}

uint64_t sub_1D6AED870(uint64_t a1)
{
  sub_1D6AED8E8(0, &qword_1EC8801B8, type metadata accessor for FormatDerivedDataOption);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6AED8E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6AED93C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6AED984(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

CACornerMask __swiftcall CACornerMask.init(_:)(__C::UIRectCorner a1)
{
  if (a1.rawValue)
  {
    if ((a1.rawValue & 2) != 0)
    {
      v1 = 3;
      if ((a1.rawValue & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 1;
      if ((a1.rawValue & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((a1.rawValue & 2) == 0)
  {
    v1 = 0;
    if ((a1.rawValue & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v1 |= 4uLL;
    goto LABEL_8;
  }

  v1 = 2;
  if ((a1.rawValue & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a1.rawValue & 8) != 0)
  {
    v1 |= 8uLL;
  }

  return v1;
}

uint64_t FormatVideoPlayerSession.feedItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatVideoPlayerSession.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatVideoPlayerSession() + 24);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FormatVideoPlayerSession()
{
  result = qword_1EC8919A8;
  if (!qword_1EC8919A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatVideoPlayerSession.feedKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatVideoPlayerSession();
  *a1 = *(v1 + *(result + 28));
  return result;
}

void sub_1D6AEDBF8()
{
  sub_1D5B58D88();
  if (v0 <= 0x3F)
  {
    sub_1D5B5AF64();
    if (v1 <= 0x3F)
    {
      sub_1D72585BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id FeedBannerAdIntegrator.__allocating_init(pipeline:blueprintProvider:policyValidator:layoutCollectionProvider:journal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_1D5BB20BC(a1, a2, a3, a4, a5);
  (*(*(*(v6 + 10) - 8) + 8))(a2);
  return v13;
}

uint64_t sub_1D6AEDD5C(void *a1, uint64_t a2)
{
  if (*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0)) != 1)
  {
    return sub_1D5C0E5B4(a2);
  }

  swift_beginAccess();

  sub_1D5C0DFE0(v2);
  return swift_endAccess();
}

uint64_t sub_1D6AEDE2C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D7258DBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_1D6AEE300(v12, v11);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6AEDF40(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB8);
  result = swift_beginAccess();
  if (*(*(a1 + v3) + 16))
  {

    sub_1D5C0E5B4(v5);

    *(a1 + v3) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    *(a1 + *((*v2 & *a1) + 0xB0)) = 0;
  }

  return result;
}

id FeedBannerAdIntegrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedBannerAdIntegrator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6AEE188(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x88)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x90)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0x98)]);
}

uint64_t sub_1D6AEE300(void *a1, uint64_t a2)
{
  v3 = v2;
  v134 = a1;
  v130 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1D5BE1514();
  v110 = v5;
  v109 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v108 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B5E220(0, &qword_1EDF3A940, MEMORY[0x1E69B43D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v105 = &v101 - v11;
  v12 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v104 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D7260DDC();
  v107 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v15);
  v114 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5E220(0, &qword_1EDF3A918, sub_1D5C25550, v8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v106 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v111 = &v101 - v22;
  sub_1D5C25550();
  v113 = v23;
  v116 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D72604AC();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v26);
  v117 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v118 = &v101 - v30;
  v123 = sub_1D72604BC();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v31);
  v102 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v121 = &v101 - v35;
  sub_1D5B5E220(0, &qword_1EDF34B00, type metadata accessor for FeedBannerAd, v8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v129 = &v101 - v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v40);
  v127 = &v101 - v41;
  v132 = type metadata accessor for FeedBannerAd();
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v42);
  v103 = &v101 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v124 = (&v101 - v46);
  v47 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  v137[0] = v47;
  v137[1] = AssociatedTypeWitness;
  v137[2] = AssociatedConformanceWitness;
  v138 = v49;
  v50 = sub_1D725FACC();
  v125 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v101 - v52;
  v133 = sub_1D725CE8C();
  v131 = *(v133 - 8);
  *&v55 = MEMORY[0x1EEE9AC00](v133, v54).n128_u64[0];
  v57 = &v101 - v56;
  v58 = [v134 indexPathsForVisibleItems];
  sub_1D7258DBC();
  v59 = sub_1D726267C();

  LOBYTE(v58) = sub_1D5E4529C(a2, v59);

  if ((v58 & 1) == 0)
  {
    result = sub_1D725F53C();
    if (result)
    {
      sub_1D725E03C();
      v61 = v57;
      sub_1D725FADC();
      (*(v125 + 8))(v53, v50);
      v62 = v127;
      v63 = v133;
      sub_1D725CE7C();
      v64 = v129;
      (*(*(v130 + 112) + 8))(AssociatedTypeWitness);
      (*(v128 + 8))(v62, AssociatedTypeWitness);
      if ((*(v126 + 48))(v64, 1, v132) == 1)
      {
        (*(v131 + 8))(v61, v63);
        return sub_1D6AEF5DC(v64, &qword_1EDF34B00, type metadata accessor for FeedBannerAd);
      }

      else
      {
        v65 = v124;
        sub_1D6AEF4B8(v64, v124);
        v66 = v121;
        sub_1D7260DBC();
        v67 = v122;
        v68 = v123;
        if ((*(v122 + 88))(v66, v123) == *MEMORY[0x1E69B3E98])
        {
          (*(v67 + 96))(v66, v68);
          v69 = v119;
          v70 = v118;
          v71 = v66;
          v72 = v120;
          (*(v119 + 32))(v118, v71, v120);
          v73 = v117;
          (*(v69 + 16))(v117, v70, v72);
          v74 = (*(v69 + 88))(v73, v72);
          if (v74 == *MEMORY[0x1E69B3EB0])
          {
            (*(v69 + 96))(v73, v72);
            sub_1D5B63F14(v73, v137);
            sub_1D5B63F14((v73 + 40), v136);
            sub_1D5B68374(v136, v135);
            sub_1D6AEF578();
            v75 = v111;
            v76 = v113;
            if (swift_dynamicCast())
            {
              v101 = v3;
              v134 = v61;
              v77 = v116;
              v129 = *(v116 + 56);
              v130 = v116 + 56;
              (v129)(v75, 0, 1, v76);
              (*(v77 + 32))(v112, v75, v76);
              sub_1D7260D7C();
              v78 = v102;
              sub_1D5B68374(v137, v102);
              (*(v122 + 104))(v78, *MEMORY[0x1E69B3ED8], v123);
              sub_1D7260D7C();
              sub_1D7260CCC();

              v79 = v114;
              sub_1D7260D8C();
              sub_1D7260D7C();
              __swift_project_boxed_opaque_existential_1(v137, v138);
              sub_1D726074C();
              v80 = sub_1D7260D6C();
              v81 = v105;
              (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
              v82 = v112;
              sub_1D7260CFC();

              sub_1D6AEF5DC(v81, &qword_1EDF3A940, MEMORY[0x1E69B43D8]);
              v83 = v76;
              v84 = *v124;
              v85 = v124[1];
              v86 = v132;
              v87 = v107;
              v88 = v103;
              (*(v107 + 16))(&v103[*(v132 + 20)], v79, v115);
              *(v88 + v86[6]) = 0x2000;
              v89 = v88 + v86[7];
              *v89 = 0;
              v89[8] = 1;
              *(v88 + v86[8]) = xmmword_1D72830B0;
              *v88 = v84;
              v88[1] = v85;
              v90 = v106;
              (*(v116 + 16))(v106, v82, v83);
              v91 = v83;
              (v129)(v90, 0, 1, v83);
              sub_1D5B73830(qword_1EDF42200, type metadata accessor for FeedBannerAd);

              v92 = v108;
              sub_1D726051C();
              sub_1D5B5E220(0, &qword_1EDF19AB0, sub_1D5BE1514, MEMORY[0x1E69E6F90]);
              v93 = v109;
              v94 = (*(v109 + 80) + 32) & ~*(v109 + 80);
              v95 = swift_allocObject();
              *(v95 + 16) = xmmword_1D7273AE0;
              v96 = v95 + v94;
              v97 = v110;
              (*(v93 + 16))(v96, v92, v110);
              FeedBannerAdIntegrator.integrateBannerAdUpdates(_:)(v95);

              (*(v93 + 8))(v92, v97);
              (*(v87 + 8))(v114, v115);
              (*(v116 + 8))(v82, v91);
              __swift_destroy_boxed_opaque_existential_1(v136);
              (*(v119 + 8))(v118, v120);
              sub_1D6AEF51C(v124);
              (*(v131 + 8))(v134, v133);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v136);
              (*(v69 + 8))(v70, v72);
              sub_1D6AEF51C(v65);
              (*(v131 + 8))(v61, v63);
              (*(v116 + 56))(v75, 1, 1, v76);
              sub_1D6AEF5DC(v75, &qword_1EDF3A918, sub_1D5C25550);
            }

            return __swift_destroy_boxed_opaque_existential_1(v137);
          }

          else
          {
            v98 = v74;
            v99 = *MEMORY[0x1E69B3EA8];
            v100 = *(v69 + 8);
            v100(v70, v72);
            sub_1D6AEF51C(v65);
            result = (*(v131 + 8))(v61, v63);
            if (v98 != v99)
            {
              return (v100)(v117, v120);
            }
          }
        }

        else
        {
          sub_1D6AEF51C(v65);
          (*(v131 + 8))(v61, v63);
          return (*(v67 + 8))(v66, v68);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6AEF4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedBannerAd();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AEF51C(uint64_t a1)
{
  v2 = type metadata accessor for FeedBannerAd();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6AEF578()
{
  result = qword_1EDF3AA90;
  if (!qword_1EDF3AA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3AA90);
  }

  return result;
}

uint64_t sub_1D6AEF5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B5E220(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6AEF68C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  if (v2 != v4)
  {
    if (v2)
    {
      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }

    else
    {
      *(v3 + 56) = 2;
    }
  }
}

void LayeredMediaViewDisplayStateCoordinator.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v4 != v3)
  {
    if (a1)
    {
      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }

    else
    {
      *(v1 + 56) = 2;
    }
  }
}

Swift::Void __swiftcall LayeredMediaViewDisplayStateCoordinator.updateDisplay()()
{
  swift_beginAccess();
  if (*(v0 + 16) != 1)
  {
    return;
  }

  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = *(v0 + 17);

  v5 = [v3 window];
  v6 = *(v0 + 40);
  if (v4 < 0)
  {
    v7 = v5;

    v4 = (v7 != 0) & ~v6;
    goto LABEL_11;
  }

  if (*(v0 + 40))
  {
  }

  else if (v5)
  {

    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v9 = *(v0 + 56);
  if (v9 == 2 || ((v4 ^ v9) & 1) != 0 || ((IsReduceMotionEnabled ^ *(v0 + 57)) & 1) != 0)
  {
    if (IsReduceMotionEnabled)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    *(v0 + 56) = v10 & 0xFFFE | v4 & 1;
    v11[0] = v4 & 1;
    v11[1] = IsReduceMotionEnabled;
    v1(v11);
  }

  sub_1D5B74328(v1);
}

void (*LayeredMediaViewDisplayStateCoordinator.isEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_1D6AEF930;
}

void sub_1D6AEF930(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;
  if (a2)
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 24);
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 24);
    if (!v4)
    {
LABEL_4:
      *(v6 + 56) = 2;
      goto LABEL_8;
    }
  }

  v7 = v2;
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  v2 = v7;
LABEL_8:

  free(v2);
}

uint64_t LayeredMediaViewDisplayStateCoordinator.visibilityTracking.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 17);
  return result;
}

void LayeredMediaViewDisplayStateCoordinator.visibilityTracking.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 17);
  *(v1 + 17) = v2;
  if (!(v3 >> 6))
  {
    if (v2 > 0x3F)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (((v3 ^ v2) & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 >> 6 != 1)
  {
    if (v2 == 128)
    {
      return;
    }

    goto LABEL_7;
  }

  if ((v2 & 0xC0) == 0x40)
  {
    goto LABEL_6;
  }

LABEL_7:
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

void (*LayeredMediaViewDisplayStateCoordinator.visibilityTracking.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 17);
  return sub_1D6AEFAFC;
}

void sub_1D6AEFAFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 24);
  v4 = *(v3 + 17);
  *(v3 + 17) = v2;
  if (!(v4 >> 6))
  {
    if (v2 <= 0x3F)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (v4 >> 6 == 1)
  {
    if ((v2 & 0xC0) != 0x40)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (((v4 ^ v2) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v2 != 128)
  {
LABEL_7:
    LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  }

LABEL_8:

  free(v1);
}

uint64_t LayeredMediaViewDisplayStateCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  LayeredMediaViewDisplayStateCoordinator.init()();
  return v0;
}

uint64_t LayeredMediaViewDisplayStateCoordinator.init()()
{
  *(v0 + 16) = -32767;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 2;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_sceneDidEnterBackground name:*MEMORY[0x1E69DE348] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_sceneWillEnterForeground name:*MEMORY[0x1E69DE360] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_reduceMotionStatusDidChange name:*MEMORY[0x1E69DD918] object:0];

  return v0;
}

uint64_t LayeredMediaViewDisplayStateCoordinator.deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DE348] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69DE360] object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x1E69DD918] object:0];

  sub_1D5B74328(*(v0 + 24));
  MEMORY[0x1DA6FD660](v0 + 48);
  return v0;
}

uint64_t LayeredMediaViewDisplayStateCoordinator.__deallocating_deinit()
{
  LayeredMediaViewDisplayStateCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t LayeredMediaViewDisplayStateCoordinator.register(view:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 24);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  sub_1D5B74328(v6);
}

uint64_t sub_1D6AEFE80(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 40) = a3;

  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

uint64_t sub_1D6AEFF4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1[4];
  v42[5] = a1[5];
  v8 = a1[7];
  v42[6] = a1[6];
  v43[0] = v8;
  *(v43 + 9) = *(a1 + 121);
  v9 = *a1;
  v42[1] = a1[1];
  v10 = a1[3];
  v42[2] = a1[2];
  v42[3] = v10;
  v42[4] = v7;
  v42[0] = v9;
  v11 = *(a2 + 80);
  v12 = *(a2 + 112);
  if (*v3)
  {
    v37 = *(a2 + 96);
    v38 = v12;
    v39 = *(a2 + 128);
    v13 = *(a2 + 64);
    v34 = *(a2 + 48);
    v35 = v13;
    v36 = v11;
    v14 = swift_allocObject();
    v15 = a1[7];
    v14[7] = a1[6];
    v14[8] = v15;
    *(v14 + 137) = *(a1 + 121);
    v16 = a1[3];
    v14[3] = a1[2];
    v14[4] = v16;
    v17 = a1[5];
    v14[5] = a1[4];
    v14[6] = v17;
    v18 = a1[1];
    v14[1] = *a1;
    v14[2] = v18;
    v19 = *(a2 + 96);
    *&v41[39] = *(a2 + 80);
    *&v41[55] = v19;
    *&v41[71] = *(a2 + 112);
    v20 = *(a2 + 64);
    *&v41[7] = *(a2 + 48);
    v40[0] = 1;
    v41[87] = *(a2 + 128);
    *&v41[23] = v20;
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    v23 = *&v41[48];
    *(v21 + 81) = *&v41[32];
    *(v21 + 97) = v23;
    *(v21 + 113) = *&v41[64];
    v24 = *&v41[16];
    *(v21 + 49) = *v41;
    *(v21 + 48) = 1;
    *(v21 + 129) = *&v41[80];
    *(v21 + 65) = v24;
    v25 = sub_1D6AF0A7C;
  }

  else
  {
    v37 = *(a2 + 96);
    v38 = v12;
    v39 = *(a2 + 128);
    v26 = *(a2 + 64);
    v34 = *(a2 + 48);
    v35 = v26;
    v36 = v11;
    v14 = swift_allocObject();
    v27 = a1[7];
    v14[7] = a1[6];
    v14[8] = v27;
    *(v14 + 137) = *(a1 + 121);
    v28 = a1[3];
    v14[3] = a1[2];
    v14[4] = v28;
    v29 = a1[5];
    v14[5] = a1[4];
    v14[6] = v29;
    v30 = a1[1];
    v14[1] = *a1;
    v14[2] = v30;
    *&v33[39] = *(a2 + 80);
    *&v33[55] = *(a2 + 96);
    *&v33[71] = *(a2 + 112);
    v31 = *(a2 + 64);
    *&v33[7] = *(a2 + 48);
    v40[0] = 1;
    v33[87] = *(a2 + 128);
    *&v33[23] = v31;
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 81) = *&v33[32];
    *(v21 + 97) = *&v33[48];
    *(v21 + 113) = *&v33[64];
    *(v21 + 49) = *v33;
    *(v21 + 48) = 1;
    *(v21 + 129) = *&v33[80];
    *(v21 + 65) = *&v33[16];
    v25 = sub_1D6AF0A84;
  }

  *(v21 + 144) = v25;
  *(v21 + 152) = v14;
  sub_1D673F334(&v34, v40);
  *a3 = v22 | 0x2000000000000000;
  return sub_1D5ECF2C4(v42, &v34);
}

id sub_1D6AF0208@<X0>(id *a1@<X2>, void *a2@<X8>)
{
  result = [*a1 coverImageAssetHandle];
  v4 = result;
  if (result)
  {
    v5 = sub_1D5C169F4();
    result = sub_1D5EECFF8();
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = result;
  return result;
}

double sub_1D6AF0274@<D0>(void *a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v6 = [objc_msgSend(*a3 sourceChannel)];
    swift_unknownObjectRelease();
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = [v6 bannerImageForMask];
    swift_unknownObjectRelease();
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = [a1 userInterfaceStyle];
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        v10 = [objc_msgSend(*a3 sourceChannel)];
        swift_unknownObjectRelease();
        if (!v10)
        {
          goto LABEL_18;
        }

        v7 = [v10 bannerImageForMask];
        swift_unknownObjectRelease();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = [objc_msgSend(*a3 sourceChannel)];
        swift_unknownObjectRelease();
        if (!v11)
        {
          goto LABEL_18;
        }

        v7 = [v11 bannerImageForWhiteBackground];
        swift_unknownObjectRelease();
        if (!v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = [objc_msgSend(*a3 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v9)
      {
        goto LABEL_18;
      }

      v7 = [v9 bannerImageForWhiteBackground];
      swift_unknownObjectRelease();
      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = [v7 assetHandle];

  if (v12)
  {
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v12;
    return result;
  }

LABEL_18:
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1D6AF04F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656873696C627570;
  }

  else
  {
    v3 = 0x7265766F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xED00006F676F4C72;
  }

  if (*a2)
  {
    v5 = 0x656873696C627570;
  }

  else
  {
    v5 = 0x7265766F63;
  }

  if (*a2)
  {
    v6 = 0xED00006F676F4C72;
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

uint64_t sub_1D6AF05A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6AF0630()
{
  sub_1D72621EC();
}

uint64_t sub_1D6AF06A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6AF0730(uint64_t *a1@<X8>)
{
  v2 = 0x7265766F63;
  if (*v1)
  {
    v2 = 0x656873696C627570;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xED00006F676F4C72;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatIssueBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6AF0874()
{
  result = qword_1EC8919B8;
  if (!qword_1EC8919B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8919B8);
  }

  return result;
}

unint64_t sub_1D6AF08C8(uint64_t a1)
{
  result = sub_1D6AF08F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AF08F0()
{
  result = qword_1EC8919C0;
  if (!qword_1EC8919C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8919C0);
  }

  return result;
}

unint64_t sub_1D6AF0984(void *a1)
{
  a1[1] = sub_1D5CD3BE8();
  a1[2] = sub_1D66FC884();
  result = sub_1D6AF0874();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AF0A28()
{
  result = qword_1EC8919E8;
  if (!qword_1EC8919E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8919E8);
  }

  return result;
}

void sub_1D6AF0A8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (!v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
    v12 = Strong;
    [v11 setClipsToBounds_];
    v13 = [v11 layer];
    [v13 setMaskedCorners_];

    v14 = [v11 layer];
    [v14 setCornerRadius_];

    v15 = *(v12 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
    [v15 setClipsToBounds_];
    v16 = [v15 layer];
    [v16 setMaskedCorners_];

    v17 = [v15 layer];
    [v17 setCornerRadius_];

    sub_1D726345C();
    sub_1D726345C();
    sub_1D726345C();
    goto LABEL_12;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  v22 = v3;
  if (v2)
  {
    sub_1D6B4C3C4(v3);
    swift_unknownObjectRelease();
    v3 = v22;
  }

  v4 = [v3 isPictureInPictureActive];
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    if (v5)
    {
      v6 = v5;
      sub_1D6B4C628(*(v5 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView), *(v5 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
      v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
      [v7 setClipsToBounds_];
      v8 = [v7 layer];
      [v8 setMaskedCorners_];

      v9 = [v7 layer];
      [v9 setCornerRadius_];

      sub_1D726345C();
      sub_1D726345C();
LABEL_11:
      sub_1D726345C();

LABEL_12:

      swift_unknownObjectRelease();
      return;
    }
  }

  else if (v5)
  {
    v18 = v5;
    sub_1D6B4C628(*(v5 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView), *(v5 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
    v19 = *(v18 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
    [v19 setClipsToBounds_];
    v20 = [v19 layer];
    [v20 setMaskedCorners_];

    v21 = [v19 layer];
    [v21 setCornerRadius_];

    sub_1D726345C();
    sub_1D726345C();
    goto LABEL_11;
  }
}

void sub_1D6AF0E7C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController;
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (!v3 || ([v3 isPictureInPictureActive] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
      v6 = Strong;
      [v5 setClipsToBounds_];
      v7 = [v5 layer];
      [v7 setMaskedCorners_];

      v8 = [v5 layer];
      [v8 setCornerRadius_];

      v9 = *(v6 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
      [v9 setClipsToBounds_];
      v10 = [v9 layer];
      [v10 setMaskedCorners_];

      v11 = [v9 layer];
      [v11 setCornerRadius_];

      sub_1D726345C();
      sub_1D726345C();
      sub_1D726345C();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D6B4C094();
      swift_unknownObjectRelease();
    }

    v12 = *(v1 + v2);
    if (v12)
    {
      [v12 pause];
      v12 = *(v1 + v2);
    }

    *(v1 + v2) = 0;
  }
}

void sub_1D6AF1084(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVideoPlayerData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController;
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController))
  {
    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69CE130]) init];
  v11 = *(v1 + v9);
  *(v1 + v9) = v10;

  sub_1D725A9FC();
  if ((sub_1D725A9CC() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = [a1 view];
  if (*(v1 + v9))
  {
    v27 = *(v1 + v9);
    v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_adJournal);
    v14 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_commandCenter;
    v15 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data;
    v16 = v12;
    v17 = swift_allocObject();
    v28 = *(v2 + v14);
    swift_unknownObjectWeakInit();
    sub_1D5EBC2B0(v2 + v15, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    sub_1D6AF42CC(v8, v20 + v18);
    *(v20 + v19) = v17;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_1D6AF4330;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_77;
    v21 = _Block_copy(aBlock);
    v22 = v27;

    swift_unknownObjectRetain();

    [v22 addDebuggerAction_];

    _Block_release(v21);
LABEL_6:
    v23 = *(v2 + v9);
    if (!v23)
    {
      return;
    }

    goto LABEL_7;
  }

  v23 = *(v1 + v9);
  if (!v23)
  {
    return;
  }

LABEL_7:
  [v23 setDelegate_];
  v24 = *(v2 + v9);
  if (v24)
  {
    [v24 setDataSource_];
    v25 = *(v2 + v9);
    if (v25)
    {
      [v25 setEnablePictureInPictureBehaviors_];
    }
  }
}

uint64_t sub_1D6AF1368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = a4;
  v21[2] = a5;
  sub_1D6AF4E08(0, &qword_1EC891B70, MEMORY[0x1E69B3E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v21[0] = v21 - v8;
  v9 = sub_1D725E84C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D726035C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 40))
  {
  }

  sub_1D7260CCC();

  (*(v10 + 104))(v13, *MEMORY[0x1E69D7FB8], v9);
  v21[10] = &type metadata for Tracker;
  v21[11] = sub_1D6AF43D0();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  sub_1D725E36C();
  swift_allocObject();
  sub_1D725E34C();
  swift_getObjectType();
  sub_1D725F80C();
  v19 = v21[0];
  (*(v15 + 16))(v21[0], v18, v14);
  (*(v15 + 56))(v19, 0, 1, v14);

  sub_1D725D97C();

  sub_1D6AF4424(v19);
  return (*(v15 + 8))(v18, v14);
}

void sub_1D6AF16CC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cover;
  swift_beginAccess();
  sub_1D6AF3FC0(v0 + v1, v6);
  LODWORD(v1) = v6[8];
  sub_1D6AF4034(v6);
  if (v1 == 1 && (*(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_isBookmarkInProgress) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_isViewTransitionInProcess) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
    if (v2)
    {
      v3 = v2;
      if (![v3 isPlaying] || (objc_msgSend(v3, sel_isFullscreenInProgress) & 1) != 0)
      {
        goto LABEL_12;
      }

      v4 = [v3 mode];
      if (v4)
      {
        if (v4 != 1)
        {
LABEL_12:

          return;
        }

        v5 = &selRef_pause;
      }

      else
      {
        v5 = &selRef_startPictureInPictureIfPossible;
      }

      [v3 *v5];
      goto LABEL_12;
    }
  }
}

void sub_1D6AF1840(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7257B1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725ECEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 1;
  v14 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cover;
  swift_beginAccess();
  sub_1D6AF4F80(&v21, v2 + v14);
  swift_endAccess();
  (*(v5 + 16))(v8, a1, v4);
  sub_1D725ECCC();
  v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D725ECDC();
    if (v17)
    {
      v18 = v17;
      v19 = sub_1D7262FDC();

      (*(v10 + 8))(v13, v9);
      if (v19)
      {
        swift_unknownObjectWeakInit();

        v22 = 0;
        swift_beginAccess();
        sub_1D6AF4F80(&v21, v2 + v14);
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
      (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    (*(v10 + 8))(v13, v9);
  }
}

void sub_1D6AF1ACC(uint64_t a1)
{
  v3 = sub_1D7257B1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1D725ECEC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 16))(v7, a1, v3, v11);
  sub_1D725ECCC();
  v14 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cover;
  swift_beginAccess();
  sub_1D6AF3FC0(v1 + v14, v21);
  if (v21[8] == 1)
  {
    (*(v9 + 8))(v13, v8);
    sub_1D6AF4034(v21);
    return;
  }

  v15 = v1;
  sub_1D6AF4F18(v21, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = sub_1D725ECDC();
  v18 = v17;
  if (!Strong)
  {
    sub_1D6AF4F50(v24);
    (*(v9 + 8))(v13, v8);
    if (v18)
    {

      return;
    }

    goto LABEL_9;
  }

  if (!v17)
  {
    sub_1D6AF4F50(v24);
    (*(v9 + 8))(v13, v8);

    return;
  }

  sub_1D5B5A498(0, &qword_1EDF1AA80);
  v19 = sub_1D726370C();
  sub_1D6AF4F50(v24);
  (*(v9 + 8))(v13, v8);

  if (v19)
  {
LABEL_9:
    v22 = 0;
    v23 = 1;
    swift_beginAccess();
    sub_1D6AF4F80(&v22, v15 + v14);
    swift_endAccess();
  }
}

uint64_t sub_1D6AF1DA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D7257B1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257AEC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for FormatVideoPlayerManager()
{
  result = qword_1EC891A98;
  if (!qword_1EC891A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6AF2040()
{
  result = type metadata accessor for FormatVideoPlayerData();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D6AF2150(void *a1)
{
  v2 = v1;
  sub_1D6AF275C(&v33);
  if (!v34)
  {
    sub_1D6AF1084(a1);
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
    if (!v16)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v16;
    if (Strong)
    {
      sub_1D6B4C3C4(v31);
      swift_unknownObjectRelease();
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      sub_1D6B4C628(*(v18 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView), *(v18 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
      v20 = *(v19 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
      [v20 setClipsToBounds_];
      v21 = [v20 layer];
      [v21 setMaskedCorners_];

      v22 = [v20 layer];
      [v22 setCornerRadius_];

      sub_1D726345C();
      sub_1D726345C();
      sub_1D726345C();
      swift_unknownObjectRelease();
    }

    [v31 playWithButtonTapped_];
    v15 = v31;
    goto LABEL_15;
  }

  v30 = v34;
  v4 = v33;
  v6 = v35;
  v5 = v36;
  v8 = v37;
  v7 = v38;
  v9 = v39;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_sceneProvider), *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_sceneProvider + 24));
  v10 = sub_1D725DA4C();
  if (v10)
  {
    v11 = v10;
    v29 = [v10 rootViewController];

    if (v29)
    {
      v12 = [v29 presentedViewController];
      if (v12 && (v13 = v12, objc_opt_self(), v14 = swift_dynamicCastObjCClass(), v13, v14))
      {
        sub_1D5C39354(v4, v30);
        v15 = v29;
      }

      else
      {
        v25 = (v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineAlertControllerFactory);
        v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineAlertControllerFactory + 24);
        v27 = v25[4];
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v32[0] = v4;
        v32[1] = v30;
        v32[2] = v6;
        v32[3] = v5;
        v32[4] = v8;
        v32[5] = v7;
        v32[6] = v9;
        v28 = (*(v27 + 8))(v32, v26, v27);
        sub_1D5C39354(v4, v30);
        [v29 presentViewController:v28 animated:1 completion:0];

        v15 = v28;
      }

LABEL_15:

      return;
    }

    v23 = v4;
    v24 = v30;
  }

  else
  {
    v23 = v4;
    v24 = v30;
  }

  sub_1D5C39354(v23, v24);
}

uint64_t sub_1D6AF250C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + qword_1EC894F58);
  v5 = *(v1 + qword_1EC894F58 + 24);
  v4 = *(v1 + qword_1EC894F58 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v4 + 8) + 8))(v5);
  if (result <= 2)
  {
    if (!result)
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    if (result == 1 || result == 2)
    {
      if (qword_1EDF102F8 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDFFC5B8;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      goto LABEL_19;
    }

    if (result == 6)
    {
      if (qword_1EC87DA70 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EC9BAC18;
      goto LABEL_22;
    }

LABEL_25:
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  if (result != 3)
  {
LABEL_19:
    if (qword_1EC87DA68 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC9BABE0;
    goto LABEL_22;
  }

  if (qword_1EC87DA78 != -1)
  {
    swift_once();
  }

  v7 = &qword_1EC9BAC50;
LABEL_22:
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  v13 = v7[6];
  *a1 = *v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
}

uint64_t sub_1D6AF275C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + qword_1EC894F58);
  v5 = *(v1 + qword_1EC894F58 + 24);
  v4 = *(v1 + qword_1EC894F58 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v4 + 8) + 8))(v5);
  if (result <= 2)
  {
    if (!result)
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    if (result == 1 || result == 2)
    {
      if (qword_1EC87DD60 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EC9BAE20;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      goto LABEL_19;
    }

    if (result == 6)
    {
      if (qword_1EC87DD78 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EC9BAEC8;
      goto LABEL_22;
    }

LABEL_25:
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  if (result != 3)
  {
LABEL_19:
    if (qword_1EC87DD70 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC9BAE90;
    goto LABEL_22;
  }

  if (qword_1EC87DD80 != -1)
  {
    swift_once();
  }

  v7 = &qword_1EC9BAF00;
LABEL_22:
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  v13 = v7[6];
  *a1 = *v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
}

void sub_1D6AF29AC(void *a1)
{
  v2 = v1;
  sub_1D6AF275C(&v36);
  if (!v37)
  {
    sub_1D6AF1084(a1);
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
    if (!v16)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = v16;
    v34 = v18;
    if (Strong)
    {
      sub_1D6B4C3C4(v18);
      swift_unknownObjectRelease();
      v18 = v34;
    }

    v19 = [v18 isPictureInPictureActive];
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        sub_1D6B4C628(*(v20 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView), *(v20 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
        v22 = (v21 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
LABEL_22:
        v28 = *v22;
        [*v22 setClipsToBounds_];
        v29 = [v28 layer];
        [v29 setMaskedCorners_];

        v30 = [v28 layer];
        [v30 setCornerRadius_];

        sub_1D726345C();
        sub_1D726345C();
        sub_1D726345C();
        swift_unknownObjectRelease();
      }
    }

    else if (v20)
    {
      sub_1D6B4C628(*(v20 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView), *(v20 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
      v22 = (v21 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
      goto LABEL_22;
    }

    if ([v34 isPlaying])
    {
      [v34 pause];
    }

    else
    {
      [v34 playWithButtonTapped_];
    }

    v15 = v34;
    goto LABEL_27;
  }

  v33 = v37;
  v4 = v36;
  v6 = v38;
  v5 = v39;
  v8 = v40;
  v7 = v41;
  v9 = v42;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_sceneProvider), *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_sceneProvider + 24));
  v10 = sub_1D725DA4C();
  if (v10)
  {
    v11 = v10;
    v32 = [v10 rootViewController];

    if (v32)
    {
      v12 = [v32 presentedViewController];
      if (v12 && (v13 = v12, objc_opt_self(), v14 = swift_dynamicCastObjCClass(), v13, v14))
      {
        sub_1D5C39354(v4, v33);
        v15 = v32;
      }

      else
      {
        v25 = (v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineAlertControllerFactory);
        v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineAlertControllerFactory + 24);
        v27 = v25[4];
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v35[0] = v4;
        v35[1] = v33;
        v35[2] = v6;
        v35[3] = v5;
        v35[4] = v8;
        v35[5] = v7;
        v35[6] = v9;
        v31 = (*(v27 + 8))(v35, v26, v27);
        sub_1D5C39354(v4, v33);
        [v32 presentViewController:v31 animated:1 completion:0];

        v15 = v31;
      }

LABEL_27:

      return;
    }

    v23 = v4;
    v24 = v33;
  }

  else
  {
    v23 = v4;
    v24 = v33;
  }

  sub_1D5C39354(v23, v24);
}

void sub_1D6AF2E58(void *a1)
{
  v2 = v1;
  v4 = sub_1D7261ABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatPictureInPictureModel();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D72585BC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1D725ADAC();
  sub_1D6AF4DA8(v17, type metadata accessor for FormatPictureInPictureModel);
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (v19)
  {
    v20 = v19;
    if (![v20 isFullscreen] && !objc_msgSend(v20, sel_isFullscreenInProgress))
    {
      v41 = v10;
      if ([a1 isPlaying] && *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage) < 1.0)
      {
        v21 = [a1 playerViewController];
        v22 = [v21 presentingViewController];

        if (v22)
        {
        }

        else
        {
          [a1 pause];
          v40 = v5;
          v23 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator + 24);
          v24 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator), v23);
          v25 = *(v24 + 104);
          v26 = v24;
          v5 = v40;
          v25(v23, v26);
        }
      }

      v27 = [objc_opt_self() currentDevice];
      v28 = [v27 userInterfaceIdiom];

      if (v28 == 5)
      {
        [a1 pause];
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = v5;
        v30 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
        v39[1] = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame;
        v31 = Strong;
        sub_1D6B4C628(v30, *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
        v39[0] = OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView;
        v32 = *(v31 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
        [v32 setClipsToBounds_];
        v33 = [v32 layer];
        [v33 setMaskedCorners_];

        v34 = [v32 layer];
        [v34 setCornerRadius_];

        sub_1D726345C();
        sub_1D726345C();
        sub_1D726345C();
        sub_1D5B5A498(0, &qword_1EDF1AA30);
        v35 = sub_1D726308C();
        v36 = swift_allocObject();
        *(v36 + 16) = a1;
        aBlock[4] = sub_1D6AF4EB0;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D5B6B06C;
        aBlock[3] = &block_descriptor_37_0;
        v37 = _Block_copy(aBlock);
        v38 = a1;

        sub_1D7261AEC();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D5F5D6D4();
        sub_1D6AF4E08(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D5F5D72C();
        sub_1D7263B6C();
        MEMORY[0x1DA6FA730](0, v13, v8, v37);

        _Block_release(v37);
        swift_unknownObjectRelease();

        (*(v40 + 8))(v8, v4);
        (*(v41 + 8))(v13, v9);
        return;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D6BCE844(*(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey), *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey + 8));
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1D6AF3500(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  a5(v7);

  swift_unknownObjectRelease();
}

uint64_t sub_1D6AF360C(void *a1)
{
  v2 = sub_1D7261ABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7261B2C();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 embedVideoPlayerIfNeeded];
  v13 = [a1 isPictureInPictureActive];
  result = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    if (result)
    {
      v15 = result;
      sub_1D6B4C628(*(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView), *(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
      v16 = *(v15 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
      [v16 setClipsToBounds_];
      v17 = [v16 layer];
      [v17 setMaskedCorners_];

      v18 = [v16 layer];
      [v18 setCornerRadius_];

      sub_1D726345C();
      sub_1D726345C();
      sub_1D726345C();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (result)
    {
      v29 = v8;
      v19 = *(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
      v30 = v7;
      v20 = result;
      sub_1D6B4C628(v19, *(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
      v31 = v3;
      v21 = *(v20 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
      [v21 setClipsToBounds_];
      v22 = [v21 layer];
      [v22 setMaskedCorners_];

      v23 = [v21 layer];
      [v23 setCornerRadius_];

      v8 = v29;
      sub_1D726345C();
      v7 = v30;
      sub_1D726345C();
      v3 = v31;
      sub_1D726345C();
      swift_unknownObjectRelease();
    }

    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v24 = sub_1D726308C();
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    aBlock[4] = sub_1D6AF500C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_22;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_1D7261AEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D5F5D6D4();
    sub_1D6AF4E08(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5F5D72C();
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v12, v6, v26);
    _Block_release(v26);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_1D6AF3B5C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data + 48);
  if (v3)
  {
    if (([swift_unknownObjectRetain() disablePrerollAds] & 1) == 0 && *(v2 + *(type metadata accessor for FormatVideoPlayerData() + 52)) == 1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_videoAdProviderFactory + 24);
      v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_videoAdProviderFactory + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_videoAdProviderFactory), v5);
      if (v2[5])
      {
        v7 = v2[4];
        v8 = v2[5];
      }

      else
      {
        v7 = v2[2];
        v8 = v2[3];
      }

      v15 = *(v6 + 8);

      v16 = v15(v3, v7, v8, a1, v5, v6);
      swift_unknownObjectRelease();

      return v16;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D6AF4E08(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B49CBC(0, &qword_1EDF43BE0);

  v11 = sub_1D72620FC();
  v13 = v12;
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1D5B7E2C0();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1D7262EDC();
  sub_1D725C30C();

  return 0;
}

uint64_t sub_1D6AF3E64()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (v2)
  {
    [v2 pause];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 stopPictureInPicture];
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator + 24);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator), v4);
  return (*(v5 + 104))(v4, v5);
}

void sub_1D6AF3EF4(double a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage;
  *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  if ([v5 isPlaying])
  {
    v4 = [v5 mode];
    if (v4 == 1)
    {
      if (*(v1 + v2) > 0.5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (!v4 && *(v1 + v2) < 1.0)
    {
LABEL_6:
      sub_1D6AF16CC();
    }
  }

LABEL_7:

  MEMORY[0x1EEE66BE0]();
}

uint64_t sub_1D6AF3FC0(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC891B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AF4034(uint64_t a1)
{
  sub_1D5B49CBC(0, &qword_1EC891B68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6AF40A0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
  if (v2 && [v2 isLoading])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
      v5 = Strong;
      [v4 setClipsToBounds_];
      v6 = [v4 layer];
      [v6 setMaskedCorners_];

      v7 = [v4 layer];
      [v7 setCornerRadius_];

      v8 = *(v5 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
      [v8 setClipsToBounds_];
      v9 = [v8 layer];
      [v9 setMaskedCorners_];

      v10 = [v8 layer];
      [v10 setCornerRadius_];

      sub_1D726345C();
      sub_1D726345C();
      sub_1D726345C();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D6B4C094();
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + v1);
    if (v11)
    {
      [v11 pause];
      v11 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }

  else
  {

    sub_1D6AF16CC();
  }
}

uint64_t sub_1D6AF42CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVideoPlayerData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AF4330()
{
  v1 = *(type metadata accessor for FormatVideoPlayerData() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1D6AF1368(v4, v0 + v2, v5, v7, v8);
}

unint64_t sub_1D6AF43D0()
{
  result = qword_1EC891B78;
  if (!qword_1EC891B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891B78);
  }

  return result;
}

uint64_t sub_1D6AF4424(uint64_t a1)
{
  sub_1D6AF4E08(0, &qword_1EC891B70, MEMORY[0x1E69B3E38], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6AF44B0()
{
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController) && swift_unknownObjectWeakLoadStrong())
  {
    sub_1D6BCE844(*(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey), *(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey + 8));

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D6AF452C()
{
  v1 = type metadata accessor for FormatPictureInPictureModel();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data;
  v6 = *(type metadata accessor for FormatVideoPlayerData() + 36);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v5 + v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_1D725ADAC();
  sub_1D6AF4DA8(v4, type metadata accessor for FormatPictureInPictureModel);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1D6B4C628(*(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView), *(result + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_posterFrame));
    v11 = *(v10 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
    [v11 setClipsToBounds_];
    v12 = [v11 layer];
    [v12 setMaskedCorners_];

    v13 = [v11 layer];
    [v13 setCornerRadius_];

    sub_1D726345C();
    sub_1D726345C();
    sub_1D726345C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D6AF4754(void *a1)
{
  v2 = v1;
  if (([a1 isFullscreen] & 1) == 0)
  {
    v4 = [a1 viewIfLoaded];
    v5 = [v4 window];

    if (!v5)
    {
LABEL_5:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_videoContainerView);
        v8 = Strong;
        [v7 setClipsToBounds_];
        v9 = [v7 layer];
        [v9 setMaskedCorners_];

        v10 = [v7 layer];
        [v10 setCornerRadius_];

        v11 = *(v8 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_placeholderView);
        [v11 setClipsToBounds_];
        v12 = [v11 layer];
        [v12 setMaskedCorners_];

        v13 = [v11 layer];
        [v13 setCornerRadius_];

        sub_1D726345C();
        sub_1D726345C();
        sub_1D726345C();
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D6B4C094();
        swift_unknownObjectRelease();
      }

      v14 = OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController;
      v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController);
      if (v15)
      {
        [v15 pause];
        v16 = *(v2 + v14);
      }

      else
      {
        v16 = 0;
      }

      *(v2 + v14) = 0;

      v18 = (v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator);
      v19 = *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator + 24);
      v20 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v19);
      return (*(v20 + 104))(v19, v20);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage) == 0.0)
  {
    goto LABEL_5;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D6BCEA98(*(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey), *(v2 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey + 8));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D6AF4A1C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage) <= 0.5 && [a1 mode] == 1)
  {
    [a1 pause];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D6BCEA98(*(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey), *(v1 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey + 8));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D6AF4AC8(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = objc_opt_self();
  _Block_copy(a2);
  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5 || [a1 isFullscreen])
  {
    a2[2](a2, 1);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D6AF4E6C;
    *(v9 + 24) = v4;
    v11[4] = sub_1D6AF4E84;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D5B6B06C;
    v11[3] = &block_descriptor_31_1;
    v10 = _Block_copy(v11);

    [a1 enterFullscreenWithCompletionBlock_];
    _Block_release(v10);
  }
}

id sub_1D6AF4C88()
{
  v1 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EBC2B0(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data, v4);
  sub_1D5B68374(v0 + OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator, v11);
  v5 = type metadata accessor for FormatVideoPlayerProvider();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata] = 0;
  sub_1D5EBC2B0(v4, &v6[OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data]);
  sub_1D5B68374(v11, &v6[OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator]);
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_1D6AF4DA8(v4, type metadata accessor for FormatVideoPlayerData);
  return v7;
}

uint64_t sub_1D6AF4DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6AF4E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D6AF4EB4()
{
  v1 = *(v0 + 16);
  result = [v1 isPlaying];
  if ((result & 1) == 0)
  {

    return [v1 flashPlaybackControlsWithDuration_];
  }

  return result;
}

uint64_t sub_1D6AF4F80(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC891B68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AF501C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  *&v15 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = &v32 - v16;
  v18 = *(a1 + 56);
  if (*v2)
  {
    if (*v2 == 1)
    {
      v19 = [v18 lastModifiedDate];
      if (v19)
      {
        v20 = v19;
        sub_1D72588BC();

        v21 = sub_1D725891C();
        (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
      }

      else
      {
        v28 = sub_1D725891C();
        (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
      }

      v17 = v12;
    }

    else
    {
      v25 = [v18 fetchDate];
      if (v25)
      {
        v26 = v25;
        sub_1D72588BC();

        v27 = sub_1D725891C();
        (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      }

      else
      {
        v30 = sub_1D725891C();
        (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
      }

      v17 = v8;
    }
  }

  else
  {
    v22 = [v18 publishDate];
    if (v22)
    {
      v23 = v22;
      sub_1D72588BC();

      v24 = sub_1D725891C();
      (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    }

    else
    {
      v29 = sub_1D725891C();
      (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    }
  }

  return sub_1D5DF42F8(v17, a2);
}

uint64_t sub_1D6AF5300(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001D73B6E60;
  if (v2 == 1)
  {
    v5 = 0x80000001D73B6E60;
  }

  else
  {
    v3 = 0x7461446863746566;
    v5 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x446873696C627570;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000657461;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x7461446863746566;
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x446873696C627570;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000657461;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6AF5408()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6AF54BC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6AF555C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6AF560C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6AF61C8();
  *a1 = result;
  return result;
}

void sub_1D6AF563C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657461;
  v4 = 0x80000001D73B6E60;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x7461446863746566;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x446873696C627570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatRecipeBinding.DateTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6AF57F8()
{
  result = qword_1EC891B80;
  if (!qword_1EC891B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891B80);
  }

  return result;
}

unint64_t sub_1D6AF584C(uint64_t a1)
{
  result = sub_1D6AF5874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AF5874()
{
  result = qword_1EC891B88;
  if (!qword_1EC891B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891B88);
  }

  return result;
}

unint64_t sub_1D6AF58C8(void *a1)
{
  a1[1] = sub_1D6685D58();
  a1[2] = sub_1D66FF204();
  result = sub_1D6AF57F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AF5954()
{
  result = qword_1EC891B90;
  if (!qword_1EC891B90)
  {
    sub_1D6AF59AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891B90);
  }

  return result;
}

void sub_1D6AF59AC()
{
  if (!qword_1EC891B98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891B98);
    }
  }
}

unint64_t sub_1D6AF5A00()
{
  result = qword_1EC891BA0;
  if (!qword_1EC891BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BA0);
  }

  return result;
}

unint64_t sub_1D6AF5A54()
{
  result = qword_1EC891BA8;
  if (!qword_1EC891BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BA8);
  }

  return result;
}

uint64_t sub_1D6AF5AA8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v84 = a3;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v80 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v80 - v24;
  v26 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v80 - v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v80 - v36);
  v38 = *a1;
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v39 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v83 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7273AE0;
  if (v38)
  {
    if (v38 == 1)
    {
      sub_1D5E47A08(v86, v33);
      v41 = [v33[7] lastModifiedDate];
      v42 = v40;
      if (v41)
      {
        v43 = v41;
        sub_1D72588BC();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v54 = sub_1D725891C();
      v55 = *(v54 - 8);
      (*(v55 + 56))(v13, v44, 1, v54);
      sub_1D5DF42F8(v13, v17);
      if ((*(v55 + 48))(v17, 1, v54) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v17);
        v56 = 0;
        v57 = 0;
      }

      else
      {
        v58 = sub_1D72587AC();
        v60 = v59;
        (*(v55 + 8))(v17, v54);
        v57 = v60;
        v56 = v58;
      }

      v61 = v83;
      v62 = v84;
      sub_1D6D0A5F8(v56, v57, v85);
      v40 = v42;
      sub_1D711B30C(0xD000000000000012, 0x80000001D73BD710, v85, (v42 + v61));
      v63 = v33;
    }

    else
    {
      sub_1D5E47A08(v86, v29);
      v49 = [v29[7] fetchDate];
      if (v49)
      {
        v50 = v81;
        v51 = v49;
        sub_1D72588BC();

        v52 = 0;
      }

      else
      {
        v52 = 1;
        v50 = v81;
      }

      v53 = v82;
      v73 = sub_1D725891C();
      v74 = *(v73 - 8);
      (*(v74 + 56))(v50, v52, 1, v73);
      sub_1D5DF42F8(v50, v53);
      if ((*(v74 + 48))(v53, 1, v73) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v53);
        v75 = 0;
        v76 = 0;
      }

      else
      {
        v77 = sub_1D72587AC();
        v79 = v78;
        (*(v74 + 8))(v53, v73);
        v76 = v79;
        v75 = v77;
      }

      v62 = v84;
      sub_1D6D0A5F8(v75, v76, v85);
      sub_1D711B30C(0x6144206863746546, 0xEA00000000006574, v85, (v40 + v83));
      v63 = v29;
    }

    result = sub_1D5E47A6C(v63);
  }

  else
  {
    sub_1D5E47A08(v86, v37);
    v45 = [v37[7] publishDate];
    v46 = v40;
    if (v45)
    {
      v47 = v45;
      sub_1D72588BC();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v64 = sub_1D725891C();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v21, v48, 1, v64);
    sub_1D5DF42F8(v21, v25);
    if ((*(v65 + 48))(v25, 1, v64) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v25);
      v66 = 0;
      v67 = 0;
    }

    else
    {
      v68 = sub_1D72587AC();
      v70 = v69;
      (*(v65 + 8))(v25, v64);
      v67 = v70;
      v66 = v68;
    }

    v71 = v83;
    sub_1D6D0A5F8(v66, v67, v85);
    v40 = v46;
    sub_1D711B30C(0x206873696C627550, 0xEC00000065746144, v85, (v46 + v71));
    result = sub_1D5E47A6C(v37);
    v62 = v84;
  }

  *v62 = v40;
  return result;
}

uint64_t sub_1D6AF61C8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6AF6214()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_1D6AF7410(v0 + 72, &qword_1EC891BB0, sub_1D6AF73AC);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AF62BC@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_1D6AF67EC(a1);
  *a2 = result & 1;
  return result;
}

void sub_1D6AF631C(uint64_t a1, char a2, uint64_t a3)
{
  sub_1D5B54A80(0, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31[-1] - v13;
  v15 = *a1;
  if (a2)
  {
    if (*(a1 + 8))
    {
      sub_1D6AF746C(v3 + 72, v31, &qword_1EC891BB0, sub_1D6AF73AC);
      if (v32)
      {
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v16 = [v15 identifier];
        sub_1D726207C();

        sub_1D7261BEC();
LABEL_8:
        sub_1D68AF74C(v15, 1);

        __swift_destroy_boxed_opaque_existential_1(v31);
        return;
      }

LABEL_19:
      v25 = &qword_1EC891BB0;
      v26 = sub_1D6AF73AC;
      v27 = v31;
LABEL_26:
      sub_1D6AF7410(v27, v25, v26);
      return;
    }

    if (a3)
    {
      v18 = v3;
      swift_unknownObjectRetain();
      sub_1D725E35C();
      v19 = sub_1D725E84C();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v14, 0, 1, v19);
      sub_1D6AF746C(v14, v10, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0]);
      if ((*(v20 + 88))(v10, v19) == *MEMORY[0x1E69D7FB0])
      {
        v21 = *(v18 + 16);
        v22 = [v15 identifier];
        if (!v22)
        {
          sub_1D726207C();
          v22 = sub_1D726203C();
        }

        [v21 addArticleToReadingList:v22 eventInitiationLevel:1 origin:3];
LABEL_25:
        sub_1D68AF74C(v15, 0);

        v25 = &unk_1EDF16FC0;
        v26 = MEMORY[0x1E69D7FF0];
        v27 = v14;
        goto LABEL_26;
      }

      (*(v20 + 8))(v10, v19);
      v3 = v18;
    }

    else
    {
      v28 = sub_1D725E84C();
      (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
      swift_unknownObjectRetain();
    }

    v29 = *(v3 + 16);
    v22 = [v15 identifier];
    if (!v22)
    {
      sub_1D726207C();
      v22 = sub_1D726203C();
    }

    [v29 addArticleToReadingList_];
    goto LABEL_25;
  }

  if (*(a1 + 8))
  {
    sub_1D6AF746C(v3 + 72, v31, &qword_1EC891BB0, sub_1D6AF73AC);
    if (v32)
    {
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v17 = [v15 identifier];
      sub_1D726207C();

      sub_1D7261BCC();
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v23 = *(v3 + 16);
  v24 = [swift_unknownObjectRetain() identifier];
  if (!v24)
  {
    sub_1D726207C();
    v24 = sub_1D726203C();
  }

  [v23 removeArticleFromReadingList_];

  sub_1D68AF74C(v15, 0);
}

uint64_t sub_1D6AF67EC(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    v17 = *(v1 + 16);
    v18 = [swift_unknownObjectRetain() identifier];
    if (!v18)
    {
      sub_1D726207C();
      v18 = sub_1D726203C();
    }

    v19 = [v17 isArticleOnReadingList_];
    sub_1D68AF74C(v2, 0);

    return v19 ^ 1;
  }

  sub_1D6AF746C(v1 + 72, &v22, &qword_1EC891BB0, sub_1D6AF73AC);
  if (!v23)
  {
    sub_1D6AF7410(&v22, &qword_1EC891BB0, sub_1D6AF73AC);
    return 1;
  }

  sub_1D5B63F14(&v22, v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v20 = v2;
  v21 = v2;
  result = sub_1D7261BDC();
  v4 = result;
  v5 = (result + 40);
  v6 = -*(result + 16);
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7 == -1;
    if (v6 + v7 == -1)
    {
      goto LABEL_17;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v10 = *(v5 - 1);
    v9 = *v5;

    v11 = [v21 identifier];
    v12 = sub_1D726207C();
    v14 = v13;

    if (v10 == v12 && v9 == v14)
    {

LABEL_17:

      sub_1D68AF74C(v20, 1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return v8;
    }

    v5 += 2;
    v16 = sub_1D72646CC();

    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6AF6A2C(uint64_t a1)
{
  v2 = v1;
  sub_1D5B54A80(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  LOBYTE(v6) = *(a1 + 9);
  *&v67 = *a1;
  BYTE8(v67) = v9;
  BYTE9(v67) = v6;
  if ((sub_1D6AF67EC(&v67) & 1) == 0)
  {

    v11 = 1;
    return v11 & 1;
  }

  v10 = sub_1D72646CC();

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      v12 = v2[7];
      v13 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v12);
      v14 = *(v13 + 200);
      sub_1D5F946C4(v8, 1);
      if (v14(v12, v13))
      {
        v15 = [objc_opt_self() mainBundle];
        v16 = [v15 bundleIdentifier];

        if (v16)
        {
          v17 = sub_1D726207C();
          v19 = v18;

          if (v17 == 0x6C7070612E6D6F63 && v19 == 0xEE007377656E2E65)
          {

LABEL_25:
            sub_1D6AF746C((v2 + 9), &v67, &qword_1EC891BB0, sub_1D6AF73AC);
            if (*(&v68 + 1))
            {
              sub_1D6AF7410(&v67, &qword_1EC891BB0, sub_1D6AF73AC);
              v38 = v2[17];
              v39 = v2[18];
              __swift_project_boxed_opaque_existential_1(v2 + 14, v38);
              v40 = *(v39 + 8);
              sub_1D5F946C4(v8, 1);
              v11 = v40(v8, v38, v39);
              sub_1D68AF74C(v8, 1);
              sub_1D68AF74C(v8, 1);
              return v11 & 1;
            }

            sub_1D68AF74C(v8, 1);
            v33 = &qword_1EC891BB0;
            v34 = sub_1D6AF73AC;
            v35 = &v67;
            goto LABEL_29;
          }

          v37 = sub_1D72646CC();

          if (v37)
          {
            goto LABEL_25;
          }
        }
      }

      sub_1D68AF74C(v8, 1);
LABEL_30:
      v11 = 0;
      return v11 & 1;
    }

    v20 = objc_opt_self();
    sub_1D5F946C4(v8, 0);
    v21 = [v20 mainBundle];
    v22 = [v21 bundleIdentifier];

    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = sub_1D726207C();
    v25 = v24;

    if (v23 == 0x6C7070612E6D6F63 && v25 == 0xEE007377656E2E65)
    {

      goto LABEL_17;
    }

    v26 = sub_1D72646CC();

    if ((v26 & 1) == 0)
    {
LABEL_16:
      v27 = v2[7];
      v28 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v27);
      if (((*(v28 + 32))(v27, v28) & 1) == 0)
      {
LABEL_23:
        sub_1D68AF74C(v8, 0);
        goto LABEL_30;
      }
    }

LABEL_17:
    if ([v8 respondsToSelector_])
    {
      v29 = [v8 role];
      if (v29 <= 7 && ((1 << v29) & 0x9D) != 0)
      {
        goto LABEL_23;
      }
    }

    v30 = [v8 routeURL];
    if (v30)
    {
      v31 = v30;
      sub_1D72584EC();
      sub_1D68AF74C(v8, 0);

      v32 = sub_1D72585BC();
      (*(*(v32 - 8) + 56))(v7, 0, 1, v32);
      v33 = &qword_1EDF45B40;
      v34 = MEMORY[0x1E6968FB0];
      v35 = v7;
LABEL_29:
      sub_1D6AF7410(v35, v33, v34);
      goto LABEL_30;
    }

    v36 = sub_1D72585BC();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
    sub_1D6AF7410(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if ([v8 contentType] == 1)
    {
      goto LABEL_23;
    }

    v42 = [v8 sourceChannel];
    if (!v42)
    {
      goto LABEL_64;
    }

    v43 = v42;
    v44 = v2[3];
    v45 = [v44 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v46 = [v43 asSection];
      if (!v46 || (v47 = [v46 parentID], swift_unknownObjectRelease(), !v47))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_40;
      }
    }

    else
    {
      v47 = [v43 identifier];
    }

    v48 = sub_1D726207C();
    v50 = v49;

    v51 = [v45 purchasedTagIDs];
    v52 = sub_1D7262B0C();

    LOBYTE(v51) = sub_1D5BE240C(v48, v50, v52);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v51)
    {
      sub_1D68AF74C(v8, 0);
      swift_unknownObjectRelease();
      v11 = 1;
      return v11 & 1;
    }

LABEL_40:
    v53 = [objc_msgSend(v44 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v53, v53 + 1))
    {
      sub_1D7263AEC();
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    v67 = v65;
    v68 = v66;
    if (*(&v66 + 1))
    {
      sub_1D5BAFAD8();
      if (swift_dynamicCast())
      {
        v54 = v64;
        v55 = [v64 integerValue];
        if (v55 == -1)
        {

          goto LABEL_60;
        }

        v56 = v55;
LABEL_49:
        if (objc_getAssociatedObject(v53, ~v56))
        {
          sub_1D7263AEC();
          swift_unknownObjectRelease();
        }

        else
        {
          v65 = 0u;
          v66 = 0u;
        }

        v67 = v65;
        v68 = v66;
        if (*(&v66 + 1))
        {
          sub_1D5BAFAD8();
          if (swift_dynamicCast())
          {
            v57 = v64;
            v58 = [v57 integerValue];

            if (((v58 ^ v56) & 1) == 0)
            {
LABEL_65:
              v62 = [v8 isPaid];
              swift_unknownObjectRelease();
              sub_1D68AF74C(v8, 0);
              v11 = v62 ^ 1;
              return v11 & 1;
            }

            goto LABEL_60;
          }
        }

        else
        {
          sub_1D5EBD03C(&v67);
        }

        if ((v56 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_60:
        v59 = [objc_msgSend(v44 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v60 = [v43 identifier];
        if (!v60)
        {
          sub_1D726207C();
          v60 = sub_1D726203C();
        }

        v61 = [v59 containsTagID_];

        if ((v61 & 1) == 0)
        {
          goto LABEL_65;
        }

        swift_unknownObjectRelease();
LABEL_64:
        sub_1D68AF74C(v8, 0);
        v11 = 1;
        return v11 & 1;
      }
    }

    else
    {
      sub_1D5EBD03C(&v67);
    }

    v54 = 0;
    v56 = 0;
    goto LABEL_49;
  }

  v11 = 1;
  return v11 & 1;
}

unint64_t sub_1D6AF73AC()
{
  result = qword_1EDF3A8E0;
  if (!qword_1EDF3A8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3A8E0);
  }

  return result;
}

uint64_t sub_1D6AF7410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B54A80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6AF746C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54A80(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6AF74E8(void *a1)
{
  v3 = v1;
  sub_1D6AFBEC8(0, &qword_1EC891C68, sub_1D6AFBE74, &type metadata for A18_V3.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AFBE74();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6AFBF30(&qword_1EC8801E8, type metadata accessor for CGRect);
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

uint64_t sub_1D6AF7730(uint64_t a1)
{
  v2 = sub_1D6AFBE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AF776C(uint64_t a1)
{
  v2 = sub_1D6AFBE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6AF77A8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6AFBBD4(a1, v6);
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

uint64_t sub_1D6AF7808()
{
  sub_1D6AFB868();

  return sub_1D725A24C();
}

uint64_t sub_1D6AF7884@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6AFBEC8(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6AF7940@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
  v133 = &type metadata for A18_V3;
  v36 = sub_1D5ECE388();
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
  v133 = &type metadata for A18_V3;
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
    goto LABEL_68;
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

          v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v64 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v36 + v64 * v43], v54, type metadata accessor for FeedHeadline);
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
            sub_1D5BDA904(v123, v56 + v36 + v37 * v64, type metadata accessor for FeedHeadline);
            v54 = v120;
          }

          else
          {
            sub_1D5BE792C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_67;
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
        goto LABEL_72;
      }

      v73 = sub_1D5C0FAD4(v56, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5113A28, v73, v57);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113A28, v56, v57);

        if (!v36)
        {
          v124[0] = &unk_1F5113A28;
          v4 = v108;
          sub_1D5E239F4(v124);
          if (v4)
          {
            goto LABEL_76;
          }

          if (!*(v124[0] + 2))
          {
            goto LABEL_74;
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
          goto LABEL_65;
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
      if (qword_1F5113A48)
      {
        v124[0] = &unk_1F5113A28;
        v4 = v108;
        sub_1D5E239F4(v124);
        if (v4)
        {
          goto LABEL_76;
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
LABEL_47:

          sub_1D5BE792C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v131);
        }

        __break(1u);
LABEL_70:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
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
      goto LABEL_70;
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

    v120 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
      if ((*v59 & 1) == 0)
      {

        v88 = sub_1D62F071C(v57);

        v57 = v88;
      }

      v36 = v120;
      v89 = *&v59[v121[18]];
      v90 = *&v59[v121[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_73;
      }

      v91 = sub_1D5C0FAD4(v57, v89 - v90);
      v92 = sub_1D5C11E10(&unk_1F5113A50, v91, v37);

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
LABEL_57:
        v43 = v116;
        goto LABEL_58;
      }

      v95 = sub_1D5C11E10(&unk_1F5113A50, v57, v37);

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
        goto LABEL_57;
      }

      v124[0] = &unk_1F5113A50;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_76;
      }

      v43 = v116;
      if (!*(v124[0] + 2))
      {
        goto LABEL_75;
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
LABEL_65:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v36 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v36 >= v55)
      {
        break;
      }

      v80 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v81 = v117;
      sub_1D5BE3ED8(v37 + v80 + v52 * v36, v117, type metadata accessor for FeedHeadline);
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

      ++v36;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v122, &v57[v80 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v135;
      if (v43 == v36)
      {
        goto LABEL_50;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F5113A70 || !qword_1F5113A78)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v124[0] = v36;
    sub_1D5C122E4(v87);
    v98 = v124[0];
    v99 = type metadata accessor for A18_V3.Bound();
    v100 = v107;
    v107[3] = v99;
    v100[4] = sub_1D6AFBF30(&qword_1EC891BC8, type metadata accessor for A18_V3.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
    *boxed_opaque_existential_1 = v114;
    sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v99 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v99 + 28)) = v98;
    return result;
  }

  v124[0] = &unk_1F5113A50;
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
      goto LABEL_47;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_1D6AF8B7C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  *&v41 = sub_1D725A36C();
  *&v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + *(type metadata accessor for A18_V3.Bound() + 24);
  v7 = type metadata accessor for GroupLayoutContext();
  v8 = *(v6 + *(v7 + 40));
  v9 = *(v8 + 16);
  v10 = *(v7 + 32);
  v42 = v6;
  v11 = *(v6 + v10);
  sub_1D5B68374(v9 + 16, v48);
  sub_1D5B68374(v9 + 56, v47);
  v12 = v11 * *(v9 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v48, inited + 16);
  sub_1D5B63F14(v47, inited + 56);
  *(inited + 96) = v12;
  v46[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  sub_1D5B49474(0, &qword_1EDF27C08);
  v14 = sub_1D726276C();
  *(v14 + 16) = 3;
  sub_1D5B68374(v49, v14 + 32);
  sub_1D5B68374(v49, v14 + 72);
  sub_1D5B63F14(v49, v14 + 112);
  v15 = *(v8 + 16);
  sub_1D5B68374(v15 + 16, v48);
  sub_1D5B68374(v15 + 56, v47);
  v16 = v11 * *(v15 + 96);
  v17 = swift_initStackObject();
  sub_1D5B63F14(v48, v17 + 16);
  sub_1D5B63F14(v47, v17 + 56);
  *(v17 + 96) = v16;
  v46[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, v49);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v17 + 16);
  __swift_destroy_boxed_opaque_existential_1(v17 + 56);
  v18 = sub_1D726276C();
  v18[2] = 3;
  sub_1D5B68374(v49, (v18 + 4));
  sub_1D5B68374(v49, (v18 + 9));
  sub_1D5B63F14(v49, (v18 + 14));
  *&v49[0] = v14;
  sub_1D698609C(v18);
  v19 = *&v49[0];
  v43 = v2;
  v45[2] = v2;

  v21 = sub_1D6310828(v20, v19, sub_1D6AFB804, v45);

  v22 = *(v21 + 16);
  if (v22)
  {
    v37 = (2 * v22) | 1;
    if (v22 >= 3)
    {
      v38 = 3;
    }

    else
    {
      v38 = *(v21 + 16);
    }

    v39 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v21, v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38, v37);
  }

  else
  {
  }

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v5, v23, v24);
  v25 = (*(v40 + 104))(v5, *MEMORY[0x1E69D7370], v41);
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1D6AFB910(0, &qword_1EC891BE8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v27 = sub_1D725A4CC();

  v42 = v27;
  sub_1D725A4DC();
  v28 = v50;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v29 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v40 = v49[1];
  v41 = v49[0];
  *&v49[0] = v21;
  *&v48[0] = v28;
  MEMORY[0x1EEE9AC00](v29, v30);

  v31 = sub_1D725C00C();

  v32 = v44;
  *v44 = 0;
  v33 = v41;
  *(v32 + 24) = v40;
  *(v32 + 8) = v33;
  *&v49[0] = v31;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v34 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v32 + 5) = v34;
  *(v32 + 6) = v36;
  return result;
}

uint64_t sub_1D6AF91DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6AF92AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 18;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D6AFB910(0, &qword_1EC891C08, MEMORY[0x1E69D7150]);
  sub_1D6AFB8CC(&qword_1EC891C10, &qword_1EC891C08, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6AF949C(uint64_t a1, void (*a2)(uint64_t *, uint64_t), uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v57 = sub_1D6AFB814;
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v41 - v8);
  v62 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v52 = *MEMORY[0x1E69D6F50];
  v53 = v10;
  v50 = v12 + 104;
  v51 = v13;
  v13(v14);
  *v9 = v11;
  v15 = *(v6 + 104);
  v49 = *MEMORY[0x1E69D73C0];
  v15(v9);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  v60 = v17;
  v18 = sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v16);
  sub_1D7259A9C();
  v19 = *(v6 + 8);
  v19(v9, v5);
  v56 = a1;
  v62 = a1;
  v20 = *MEMORY[0x1E69D7460];
  v54 = v15;
  v55 = v6 + 104;
  (v15)(v9, v20, v5);
  sub_1D6AFB994();
  v22 = v21;
  sub_1D6AFBEC8(0, &qword_1EC891C30, v57, &type metadata for A18_V3.Layout, MEMORY[0x1E69D70D8]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 80);
  v27 = (v26 + 32) & ~v26;
  v45 = *(v25 + 72);
  v44 = v26;
  v48 = v22;
  v28 = swift_allocObject();
  v41 = xmmword_1D7273AE0;
  *(v28 + 16) = xmmword_1D7273AE0;
  v29 = *MEMORY[0x1E69D7098];
  v30 = *(v25 + 104);
  v46 = v27;
  v43 = v29;
  v47 = v24;
  v42 = v30;
  v30(v28 + v27);
  v61 = v58;
  v57 = v18;
  sub_1D72599EC();

  v58 = v19;
  result = (v19)(v9, v5);
  if (*(v59 + 16) == 3)
  {
    v32 = v56;
    v62 = v56;
    v33 = v53;
    v34 = swift_allocBox();
    v51(v35, v52, v33);
    *v9 = v34;
    v36 = v54;
    (v54)(v9, v49, v5);
    sub_1D7259A9C();
    v58(v9, v5);
    v62 = v32;
    (v36)(v9, *MEMORY[0x1E69D74A8], v5);
    v37 = v46;
    v38 = swift_allocObject();
    *(v38 + 16) = v41;
    v39 = v42(v38 + v37, v43, v47);
    MEMORY[0x1EEE9AC00](v39, v40);
    sub_1D72599EC();

    return (v58)(v9, v5);
  }

  return result;
}

uint64_t sub_1D6AF99F8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v19 - v8);
  v26 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v22 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v19 = v11;
  v25 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v12);
  sub_1D7259A2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = v21;
  v26 = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  (v11)(v9, v22, v5);
  v16 = v20;
  v24 = v20;
  sub_1D7259A2C();
  v13(v9, v5);
  v26 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 6;
  *v9 = v17;
  (v19)(v9, v22, v5);
  v23 = v16;
  sub_1D7259A2C();
  return (v13)(v9, v5);
}

uint64_t sub_1D6AF9D38(uint64_t a1, uint64_t a2)
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
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
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
  *&v13[v10[6]] = 0;
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
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6AFA308(uint64_t a1, uint64_t a2)
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
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
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
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6AFA8E4(uint64_t a1, uint64_t a2)
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
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 2 * *(v15 + 72), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
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
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D6AFAEC0(uint64_t a1, uint64_t a2)
{
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    v24 = *MEMORY[0x1E69D7490];
    v22 = (v6 + 8);
    v23 = (v6 + 104);
    v21 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v26 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v23)(v9, v24, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
      sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v20);
      sub_1D7259A2C();
      v5 = v21;
      (*v22)(v9, v21);
      sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v25;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D6AFB1EC(uint64_t a1, uint64_t a2)
{
  v27[0] = a2;
  v3 = type metadata accessor for HeadlineViewLayout.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AFBEC8(0, &qword_1EC891C00, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v27 - v12);
  v27[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  v15 = v4[7];
  v16 = *MEMORY[0x1E69D7348];
  v17 = sub_1D725A34C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v7[v15], v16, v17);
  (*(v18 + 56))(&v7[v15], 0, 1, v17);
  v19 = *MEMORY[0x1E69DDC70];
  *v7 = 0;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = v19;
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  v24 = v19;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v27[0], v7, v20, v21, v22, v23);
  sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
  v25 = MEMORY[0x1E69D6F38];
  sub_1D6AFB910(0, &qword_1EC891C18, MEMORY[0x1E69D6F38]);
  sub_1D6AFB8CC(&qword_1EC891C20, &qword_1EC891C18, v25);
  sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6AFB54C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A18_V3.Bound() + 24);
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

unint64_t sub_1D6AFB660(uint64_t a1)
{
  *(a1 + 8) = sub_1D6AFB690();
  result = sub_1D6AFB6E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6AFB690()
{
  result = qword_1EC891BB8;
  if (!qword_1EC891BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BB8);
  }

  return result;
}

unint64_t sub_1D6AFB6E4()
{
  result = qword_1EC891BC0;
  if (!qword_1EC891BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BC0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V3.Bound()
{
  result = qword_1EC891BD0;
  if (!qword_1EC891BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6AFB7AC(uint64_t a1)
{
  result = sub_1D6AFBF30(&qword_1EC891BE0, type metadata accessor for A18_V3.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AFB814()
{
  result = qword_1EC891BF0;
  if (!qword_1EC891BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BF0);
  }

  return result;
}

unint64_t sub_1D6AFB868()
{
  result = qword_1EC891BF8;
  if (!qword_1EC891BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891BF8);
  }

  return result;
}

uint64_t sub_1D6AFB8CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6AFB910(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6AFB910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V3.Layout;
    v8[1] = &type metadata for A18_V3.Layout.Attributes;
    v8[2] = sub_1D6AFB814();
    v8[3] = sub_1D6AFB868();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6AFB994()
{
  if (!qword_1EC891C28)
  {
    sub_1D6AFBEC8(255, &qword_1EC891C30, sub_1D6AFB814, &type metadata for A18_V3.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891C28);
    }
  }
}

unint64_t sub_1D6AFBA78()
{
  result = qword_1EC891C38;
  if (!qword_1EC891C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C38);
  }

  return result;
}

unint64_t sub_1D6AFBAD0()
{
  result = qword_1EC891C40;
  if (!qword_1EC891C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C40);
  }

  return result;
}

unint64_t sub_1D6AFBB28()
{
  result = qword_1EC891C48;
  if (!qword_1EC891C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C48);
  }

  return result;
}

unint64_t sub_1D6AFBB80()
{
  result = qword_1EC891C50;
  if (!qword_1EC891C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C50);
  }

  return result;
}

uint64_t sub_1D6AFBBD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6AFBEC8(0, &qword_1EC891C58, sub_1D6AFBE74, &type metadata for A18_V3.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AFBE74();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6AFBF30(&qword_1EDF1A740, type metadata accessor for CGRect);
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

unint64_t sub_1D6AFBE74()
{
  result = qword_1EC891C60;
  if (!qword_1EC891C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C60);
  }

  return result;
}

void sub_1D6AFBEC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6AFBF30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6AFBF8C()
{
  result = qword_1EC891C70;
  if (!qword_1EC891C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C70);
  }

  return result;
}

unint64_t sub_1D6AFBFE4()
{
  result = qword_1EC891C78;
  if (!qword_1EC891C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C78);
  }

  return result;
}

unint64_t sub_1D6AFC03C()
{
  result = qword_1EC891C80;
  if (!qword_1EC891C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C80);
  }

  return result;
}

uint64_t sub_1D6AFC090(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D6AFC1A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D6AFC360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a7;
  v13 = sub_1D726393C();
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v22 = type metadata accessor for FormatCodingKeysContainer();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v30 - v25;

  sub_1D7264BDC();
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v31 + 8))(v16, v32);
    *v26 = a1;
    *(v26 + 1) = a2;
  }

  else
  {

    v27 = *(v17 + 32);
    v27(v21, v16, a3);
    v27(v26, v21, a3);
  }

  swift_storeEnumTagMultiPayload();
  v28 = v33;
  (*(v23 + 32))(v33, v26, v22);
  return (*(v23 + 56))(v28, 0, 1, v22);
}

uint64_t sub_1D6AFC690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v18[-v11];
  sub_1D7263D6C();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  KeyPath = swift_getKeyPath();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1D5B874E4(sub_1D6AFCDDC, v18, AssociatedTypeWitness, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v15);

  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1D6AFC82C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v6;
  }

  (*(v3 + 8))(v6, a1);
  return 0;
}

uint64_t sub_1D6AFC920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v5;
  v9 = type metadata accessor for FormatCodingKeysContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v34 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v19);
  v22 = v34 - v21;
  v24 = (v34 + *(v23 + 48) - v21);
  v25 = *(v10 + 16);
  v25(v34 - v21, v37, v9, v20);
  (v25)(v24, v38, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v25)(v17, v22, v9);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = v36;
      v31 = v34[0];
      (*(v36 + 32))(v34[0], v24, a3);
      v29 = sub_1D7261FBC();
      v32 = *(v30 + 8);
      v32(v31, a3);
      v32(v17, a3);
      goto LABEL_14;
    }

    (*(v36 + 8))(v17, a3);
    goto LABEL_11;
  }

  (v25)(v13, v22, v9);
  v27 = *v13;
  v26 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    v29 = 0;
    v10 = v35;
    v9 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  if (v27 == *v24 && v26 == v24[1])
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_1D72646CC();
  }

LABEL_14:
  (*(v10 + 8))(v22, v9);
  return v29 & 1;
}

uint64_t sub_1D6AFCCF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6AFCD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6AFCDA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6AFCE08(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *v2;
  if (!*(v2 + 8))
  {
    v11 = [*(a1 + 56) orderedNavigationBarThemes];
    if (!v11)
    {
      goto LABEL_38;
    }

    v12 = v11;
    sub_1D632010C();
    v13 = sub_1D726267C();

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v13 >> 62)
      {
        if (v5 < sub_1D7263BFC())
        {
          goto LABEL_16;
        }
      }

      else if (v5 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1DA6FB460](v5, v13);
        }

        else
        {
          if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v14 = *(v13 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v14 rankForegroundColor];
        swift_unknownObjectRelease();
        if (v10)
        {
          goto LABEL_20;
        }

LABEL_38:
        v27 = [v4 themeColor];
        if (v27)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (*(v2 + 8) != 1)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        v27 = [*(a1 + 56) darkStyleThemeColor];
        if (!v27)
        {
          v28 = swift_allocObject();
          v24 = v28;
          v29 = 6;
          goto LABEL_41;
        }
      }

      else
      {
        v27 = [*(a1 + 56) themeColor];
        if (!v27)
        {
          v28 = swift_allocObject();
          v24 = v28;
          v29 = 12;
LABEL_41:
          *(v28 + 16) = v29;
          goto LABEL_42;
        }
      }

      goto LABEL_39;
    }

    if (v5 != 2)
    {
      v27 = [*(a1 + 56) darkStylePuzzlePrimaryColor];
      if (!v27)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v27 = [*(a1 + 56) puzzlePrimaryColor];
    if (v27)
    {
LABEL_39:
      v30 = v27;
      v24 = swift_allocObject();
      [v30 red];
      v32 = v31 * 255.0;
      [v30 green];
      v34 = v33 * 255.0;
      [v30 blue];
      v36 = v35 * 255.0;
      [v30 alpha];
      v38 = v37;

      *(v24 + 16) = v32;
      *(v24 + 24) = v34;
      v25 = (v24 + 48);
      v26 = 0x6000000000000000;
      *(v24 + 32) = v36;
      *(v24 + 40) = v38;
      goto LABEL_43;
    }

LABEL_40:
    v28 = swift_allocObject();
    v24 = v28;
    v29 = 1;
    goto LABEL_41;
  }

  v6 = [*(a1 + 56) orderedNavigationBarThemes];
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v6;
  sub_1D632010C();
  v8 = sub_1D726267C();

  if (v5 < 0)
  {
    goto LABEL_33;
  }

  if (v8 >> 62)
  {
    if (v5 < sub_1D7263BFC())
    {
      goto LABEL_7;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_7:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1DA6FB460](v5, v8);
LABEL_10:

    v10 = [v9 rankForegroundDarkModeColor];
    swift_unknownObjectRelease();
    if (!v10)
    {
LABEL_34:
      v27 = [v4 themeColor];
      if (!v27)
      {
LABEL_35:
        v28 = swift_allocObject();
        v24 = v28;
        *(v28 + 16) = 0;
LABEL_42:
        *(v28 + 24) = 0x3FF0000000000000;
        v25 = (v28 + 32);
        v26 = 0x1000000000000000;
        goto LABEL_43;
      }

      goto LABEL_39;
    }

LABEL_20:
    v15 = swift_allocObject();
    [v10 red];
    v17 = v16 * 255.0;
    [v10 green];
    v19 = v18 * 255.0;
    [v10 blue];
    v21 = v20 * 255.0;
    [v10 alpha];
    v23 = v22;

    v24 = v15;
    *(v15 + 16) = v17;
    *(v15 + 24) = v19;
    v25 = (v15 + 48);
    v26 = 0x6000000000000000;
    *(v15 + 32) = v21;
    *(v15 + 40) = v23;
LABEL_43:
    *v25 = 0;
    *a2 = v26 | v24;
    return;
  }

  if (v5 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t FormatPuzzleTypeBinding.Color.CodingType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t FormatPuzzleTypeBinding.Color.CodingType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6F43656D656874;
  v3 = 0xD00000000000001BLL;
  v4 = 0x6152656C7A7A7570;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_1D6AFD410()
{
  sub_1D72621EC();
}

void sub_1D6AFD534(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000726FLL;
  v4 = 0x6C6F43656D656874;
  v5 = 0x80000001D73BB960;
  v6 = 0xD00000000000001BLL;
  v7 = 0xEF726F6C6F436B6ELL;
  v8 = 0x6152656C7A7A7570;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001D73BB990;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000013;
  v10 = 0x80000001D73BB920;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x80000001D73BB940;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
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

id sub_1D6AFD708@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a2;
  v76 = type metadata accessor for FormatInspectionItem(0);
  v6 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v14 = &v71 - v13;
  v15 = *a1;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      sub_1D67ED888();
      v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D7273AE0;
      v47 = a3;
      v48 = (v18 + v46);
      v79 = 3;
      LOBYTE(v80) = 2;
      sub_1D6AFCE08(v77, &v81);
      v49 = v76;
      v50 = *(v76 + 24);
      *&v48[v50] = v81;
      v51 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v51 - 8) + 56))(&v48[v50], 0, 1, v51);
      *v48 = 0xD00000000000001FLL;
      *(v48 + 1) = 0x80000001D73E5A10;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0;
      v45 = &v48[*(v49 + 28)];
      a3 = v47;
      goto LABEL_18;
    }

    if (v15 == 4)
    {
      result = [*(v77 + 56) orderedNavigationBarThemes];
      if (result)
      {
        v26 = result;
        sub_1D632010C();
        v27 = sub_1D726267C();

        v72 = a3;
        if (!(v27 >> 62))
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

          goto LABEL_10;
        }

        v70 = sub_1D7263BFC();

        if ((v70 & 0x8000000000000000) == 0)
        {
LABEL_36:
          v28 = v70;
LABEL_10:
          v18 = MEMORY[0x1E69E7CC0];
          if (v28)
          {
            v71 = v3;
            v81 = MEMORY[0x1E69E7CC0];
            sub_1D6997AF0(0, v28, 0);
            v29 = 0;
            v18 = v81;
            v74 = 0x80000001D73E59F0;
            v75 = v28;
            do
            {
              v79 = 0;
              v80 = 0xE000000000000000;
              sub_1D7263D4C();

              v78 = v29;
              v79 = 0xD000000000000012;
              v80 = v74;
              v30 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v30);

              v32 = v79;
              v31 = v80;
              v79 = v29;
              LOBYTE(v80) = 0;
              sub_1D6AFCE08(v77, &v78);
              v33 = v76;
              v34 = *(v76 + 24);
              *&v14[v34] = v78;
              v35 = type metadata accessor for FormatInspectionItem.Value(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v35 - 8) + 56))(&v14[v34], 0, 1, v35);
              *v14 = v32;
              *(v14 + 1) = v31;
              *(v14 + 2) = 0;
              *(v14 + 3) = 0;
              v36 = &v14[*(v33 + 28)];
              *v36 = 0;
              *(v36 + 1) = 0;
              v36[16] = -1;
              v81 = v18;
              v38 = *(v18 + 16);
              v37 = *(v18 + 24);
              if (v38 >= v37 >> 1)
              {
                sub_1D6997AF0(v37 > 1, v38 + 1, 1);
                v18 = v81;
              }

              ++v29;
              *(v18 + 16) = v38 + 1;
              result = sub_1D613ADAC(v14, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v38);
            }

            while (v75 != v29);
          }

LABEL_29:
          a3 = v72;
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      result = [*(v77 + 56) orderedNavigationBarThemes];
      if (result)
      {
        v56 = result;
        sub_1D632010C();
        v57 = sub_1D726267C();

        v72 = a3;
        if (!(v57 >> 62))
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);

          goto LABEL_24;
        }

LABEL_34:
        v70 = sub_1D7263BFC();

        if (v70 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v58 = v70;
LABEL_24:
        v18 = MEMORY[0x1E69E7CC0];
        if (v58)
        {
          v71 = v3;
          v81 = MEMORY[0x1E69E7CC0];
          sub_1D6997AF0(0, v58, 0);
          v59 = 0;
          v18 = v81;
          v73 = 0xD000000000000017;
          v74 = 0x80000001D73E59D0;
          v75 = v58;
          do
          {
            v60 = v6;
            v79 = 0;
            v80 = 0xE000000000000000;
            sub_1D7263D4C();

            v79 = v73;
            v80 = v74;
            v78 = v59;
            v61 = sub_1D72644BC();
            MEMORY[0x1DA6F9910](v61);

            v62 = v79;
            v63 = v80;
            v79 = v59;
            LOBYTE(v80) = 1;
            sub_1D6AFCE08(v77, &v78);
            v64 = v76;
            v65 = *(v76 + 24);
            *&v9[v65] = v78;
            v66 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v66 - 8) + 56))(&v9[v65], 0, 1, v66);
            *v9 = v62;
            *(v9 + 1) = v63;
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v67 = &v9[*(v64 + 28)];
            *v67 = 0;
            *(v67 + 1) = 0;
            v67[16] = -1;
            v81 = v18;
            v69 = *(v18 + 16);
            v68 = *(v18 + 24);
            if (v69 >= v68 >> 1)
            {
              sub_1D6997AF0(v68 > 1, v69 + 1, 1);
              v18 = v81;
            }

            ++v59;
            *(v18 + 16) = v69 + 1;
            v6 = v60;
            result = sub_1D613ADAC(v9, v18 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v69);
          }

          while (v75 != v59);
        }

        goto LABEL_29;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  if (!*a1)
  {
    sub_1D67ED888();
    v39 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v40 = a3;
    v41 = v18 + v39;
    v79 = 0;
    LOBYTE(v80) = 2;
    sub_1D6AFCE08(v77, &v81);
    v42 = v76;
    v43 = *(v76 + 24);
    *(v41 + v43) = v81;
    v44 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v44 - 8) + 56))(v41 + v43, 0, 1, v44);
    *v41 = xmmword_1D7321610;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v45 = (v41 + *(v42 + 28));
    a3 = v40;
LABEL_18:
    *v45 = 0;
    *(v45 + 1) = 0;
    v45[16] = -1;
    goto LABEL_31;
  }

  v16 = a3;
  if (v15 == 1)
  {
    sub_1D67ED888();
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = (v18 + v17);
    v20 = 0x80000001D73E5A50;
    v79 = 1;
    LOBYTE(v80) = 2;
    sub_1D6AFCE08(v77, &v81);
    v21 = v76;
    v22 = *(v76 + 24);
    *(v19 + v22) = v81;
    v23 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v23 - 8) + 56))(v19 + v22, 0, 1, v23);
    v25 = 0xD000000000000016;
  }

  else
  {
    sub_1D67ED888();
    v52 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = (v18 + v52);
    v20 = 0x80000001D73E5A30;
    v79 = 2;
    LOBYTE(v80) = 2;
    sub_1D6AFCE08(v77, &v81);
    v21 = v76;
    v53 = *(v76 + 24);
    *(v19 + v53) = v81;
    v54 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    result = (*(*(v54 - 8) + 56))(v19 + v53, 0, 1, v54);
    v25 = 0xD000000000000014;
  }

  *v19 = v25;
  v19[1] = v20;
  v19[2] = 0;
  v19[3] = 0;
  v55 = v19 + *(v21 + 28);
  *v55 = 0;
  *(v55 + 1) = 0;
  v55[16] = -1;
  a3 = v16;
LABEL_31:
  *a3 = v18;
  return result;
}

BOOL _s8NewsFeed23FormatPuzzleTypeBindingV5ColorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return v4 == 2 && v3 == 2;
    }

    else
    {
      return v4 == 2 && v3 == 3;
    }
  }

  else
  {
    if (!v2)
    {
      return v4 == 2 && !v3;
    }

    return v4 == 2 && v3 == 1;
  }
}

unint64_t sub_1D6AFE124()
{
  result = qword_1EC891C88;
  if (!qword_1EC891C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C88);
  }

  return result;
}

unint64_t sub_1D6AFE17C()
{
  result = qword_1EC891C90;
  if (!qword_1EC891C90)
  {
    sub_1D6AFE1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891C90);
  }

  return result;
}

void sub_1D6AFE1D4()
{
  if (!qword_1EC891C98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891C98);
    }
  }
}

unint64_t sub_1D6AFE224(uint64_t a1)
{
  result = sub_1D6AFE24C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AFE24C()
{
  result = qword_1EC891CA0;
  if (!qword_1EC891CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CA0);
  }

  return result;
}

unint64_t sub_1D6AFE2A0(void *a1)
{
  a1[1] = sub_1D667EB18();
  a1[2] = sub_1D66FE150();
  result = sub_1D6AFE2D8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AFE2D8()
{
  result = qword_1EC891CA8;
  if (!qword_1EC891CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CA8);
  }

  return result;
}

uint64_t sub_1D6AFE32C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D6AFE344(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D6AFE37C@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = a1[1];
  v23[0] = *a1;
  v23[1] = v4;
  v5 = a1[3];
  v23[2] = a1[2];
  v23[3] = v5;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = byte_1F50F75C0[v3 + 32];
    result = sub_1D6AFD708(&v20, v23, v21);
    v8 = *&v21[0];
    v9 = *(*&v21[0] + 16);
    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= v6[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      v6 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v8 + 16))
      {
LABEL_13:
        v14 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for FormatInspectionItem(0);
        if (v14 < v9)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v9);
          v17 = v15 + v9;
          if (v16)
          {
            goto LABEL_21;
          }

          v6[2] = v17;
        }

        goto LABEL_3;
      }
    }

    if (v9)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v3 == 6)
    {
      v18 = sub_1D5F62998(v6);

      sub_1D6795150(0x7954656C7A7A7550, 0xEA00000000006570, 0, 0, v18, v21);

      v19 = v21[1];
      *a2 = v21[0];
      *(a2 + 16) = v19;
      *(a2 + 32) = v22;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D6AFE570()
{
  result = qword_1EDF27080;
  if (!qword_1EDF27080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27080);
  }

  return result;
}

uint64_t type metadata accessor for DebugNewsroomServiceError()
{
  result = qword_1EC891CB0;
  if (!qword_1EC891CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AFE610()
{
  sub_1D6AFE768(319, &qword_1EC891CC0, sub_1D61B93D0);
  if (v0 <= 0x3F)
  {
    sub_1D604F9B8();
    if (v1 <= 0x3F)
    {
      sub_1D6AFE768(319, &qword_1EC891CC8, MEMORY[0x1E6967EC8]);
      if (v2 <= 0x3F)
      {
        sub_1D5F185A4();
        if (v3 <= 0x3F)
        {
          sub_1D5F18638();
          if (v4 <= 0x3F)
          {
            sub_1D6AFE768(319, &qword_1EDF18AC8, MEMORY[0x1E6968FB0]);
            if (v5 <= 0x3F)
            {
              sub_1D7257C7C();
              if (v6 <= 0x3F)
              {
                sub_1D604FBC4();
                if (v7 <= 0x3F)
                {
                  sub_1D604FAD0();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D6AFE768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t RecipeAccessProvider.__allocating_init(bundleSubscriptionManager:paidAccessChecker:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t RecipeAccessProvider.init(bundleSubscriptionManager:paidAccessChecker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void RecipeAccessProvider.accessLevel(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = [a1 isPaid];
  if ([a1 respondsToSelector_])
  {
    v7 = [a1 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = &selRef_firstSeenDateFor_;
  v9 = [a1 publisherID];
  if (v9)
  {
    v10 = v9;
    v33 = sub_1D726207C();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v33 = 0;
  v12 = 0;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [v5 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = a2;
    v16 = sub_1D7262B0C();

    LOBYTE(v14) = sub_1D5BE240C(v33, v12, v16);
    a2 = v15;
    v8 = &selRef_firstSeenDateFor_;

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_12:

    v17 = 0;
    goto LABEL_42;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_17:

    goto LABEL_38;
  }

LABEL_14:
  if (!v12)
  {
    goto LABEL_38;
  }

  v18 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v18, v18 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    sub_1D5EBD03C(&v37);
    goto LABEL_24;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v19 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v19 = v34;
  v20 = [v34 integerValue];
  if (v20 == -1)
  {

    goto LABEL_36;
  }

  v21 = v20;
LABEL_25:
  if (objc_getAssociatedObject(v18, ~v21))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    sub_1D5EBD03C(&v37);
LABEL_33:

    if (v21)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v32 = a2;
  v22 = v34;
  v23 = [v22 integerValue];

  a2 = v32;
  v24 = v23 ^ v21;
  v8 = &selRef_firstSeenDateFor_;
  if (v24)
  {
LABEL_36:
    v25 = [objc_msgSend(v5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v26 = [v25 bundleChannelIDs];

    v27 = sub_1D726203C();
    LOBYTE(v25) = [v26 containsObject_];

    if (v25)
    {
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:

LABEL_38:
  v28 = [a1 v8[21]];
  v17 = 1;
  if (v28)
  {
    v29 = v28;
    v30 = [*(v2 + 16) bundleSubscription];
    v31 = [v30 containsTagID_];

    if (v31)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

LABEL_42:
  *a2 = v17;
}

uint64_t RecipeAccessProvider.shouldFilter(recipe:)(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
    v5 = [v4 allowedStorefrontIDs];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D726267C();

      v8 = [objc_opt_self() sharedAccount];
      v9 = [v8 currentStoreFrontID];

      if (v9)
      {
        v10 = sub_1D726207C();
        v12 = v11;

        v13 = sub_1D5B86020(v7);

        v14 = sub_1D5BE240C(v10, v12, v13);

        swift_unknownObjectRelease();
        if ((v14 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (FCPaidAccessCheckerHasAccessToRecipeInline(*(v1 + 24), a1))
  {
    return 0;
  }

  result = [a1 isPaid];
  if (result)
  {
    v16 = [a1 publisherID];
    if (v16)
    {
      v17 = v16;
      v18 = [*(v1 + 16) bundleSubscription];
      v19 = [v18 containsTagID_];

      return v19 ^ 1;
    }

    return 1;
  }

  return result;
}

uint64_t FCPaidAccessCheckerHasAccessToRecipeInline(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isPaid])
  {
    v5 = [v3 bundleSubscriptionProvider];
    v6 = [v5 bundleSubscription];
    v7 = v6;
    v8 = objc_getAssociatedObject(v7, (v6 + 1));
    v9 = [v8 unsignedIntegerValue];
    v10 = v9;
    v11 = objc_getAssociatedObject(v7, ~v9);
    v12 = [v11 unsignedIntegerValue];

    v13 = (v12 ^ v10) & 1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t RecipeAccessProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RecipeAccessProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

NewsFeed::FormatTextLineBreakMode_optional __swiftcall FormatTextLineBreakMode.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D6AFF12C()
{
  sub_1D72621EC();
}

void sub_1D6AFF250(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E6970;
  v4 = 0x7061725764726F77;
  v5 = 0xEC00000064616548;
  v6 = 0xEC0000006C696154;
  if (v2 != 4)
  {
    v6 = 0xEE00656C6464694DLL;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0x80000001D73BB9F0;
  v8 = 0xD000000000000011;
  if (v2 != 1)
  {
    v8 = 1885957219;
    v7 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x657461636E757274;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D6AFF3AC()
{
  v1 = 0x7061725764726F77;
  v2 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v2 = 1885957219;
  }

  if (*v0)
  {
    v1 = v2;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 0x657461636E757274;
  }
}

unint64_t sub_1D6AFF48C()
{
  result = qword_1EC891CD0;
  if (!qword_1EC891CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CD0);
  }

  return result;
}

unint64_t sub_1D6AFF4E0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6AFF510();
  result = sub_1D6AFF564();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6AFF510()
{
  result = qword_1EC891CD8;
  if (!qword_1EC891CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CD8);
  }

  return result;
}

unint64_t sub_1D6AFF564()
{
  result = qword_1EDF26E08[0];
  if (!qword_1EDF26E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF26E08);
  }

  return result;
}

unint64_t sub_1D6AFF5B8(uint64_t a1)
{
  result = sub_1D6AFF5E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AFF5E0()
{
  result = qword_1EC891CE0;
  if (!qword_1EC891CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891CE0);
  }

  return result;
}

unint64_t sub_1D6AFF634(void *a1)
{
  a1[1] = sub_1D5CAA81C();
  a1[2] = sub_1D665B5A8();
  result = sub_1D6AFF48C();
  a1[3] = result;
  return result;
}

uint64_t FormatSupplementaryNodePinDistanceAdjustmentValue.description.getter()
{
  result = 0x676E696361705368;
  if (!*v0)
  {
    return 0x676E696361705376;
  }

  if (*v0 != 1)
  {
    return sub_1D6936F98(*v0);
  }

  return result;
}

uint64_t sub_1D6AFF770()
{
  result = 0x676E696361705368;
  if (!*v0)
  {
    return 0x676E696361705376;
  }

  if (*v0 != 1)
  {
    return sub_1D6936F98(*v0);
  }

  return result;
}

uint64_t _s8NewsFeed44FormatSupplementaryNodePinDistanceAdjustmentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v5 != 3)
      {
        goto LABEL_25;
      }

      if (v2)
      {
        if (v2 == 1)
        {
          if (v4 == 1)
          {
            v6 = 1;
            sub_1D610CA48(1uLL, 3u);
            sub_1D610CA48(1uLL, 3u);
            sub_1D610CA48(1uLL, 3u);
            sub_1D5C08648(1uLL);
            sub_1D5C08648(1uLL);
            sub_1D60CF6C8(1uLL, 3u);
            sub_1D60CF6C8(1uLL, 3u);
            sub_1D60CF6C8(1uLL, 3u);
            v7 = 3;
            goto LABEL_24;
          }
        }

        else if (v4 >= 2)
        {
          sub_1D610CA48(*a2, 3u);
          sub_1D610CA48(v2, 3u);
          sub_1D610CA48(v4, 3u);
          sub_1D610CA48(v2, 3u);
          sub_1D610CA48(v4, 3u);
          sub_1D610CA48(v2, 3u);
          v14 = sub_1D633A310(v2, v4);
          sub_1D5C08648(v2);
          sub_1D5C08648(v4);
          sub_1D60CF6C8(v2, 3u);
          sub_1D60CF6C8(v4, 3u);
          sub_1D60CF6C8(v4, 3u);
          sub_1D60CF6C8(v2, 3u);
          return (v14 & 1) != 0;
        }
      }

      else if (!v4)
      {
        sub_1D610CA48(0, 3u);
        sub_1D610CA48(0, 3u);
        sub_1D610CA48(0, 3u);
        sub_1D5C08648(0);
        sub_1D5C08648(0);
        sub_1D60CF6C8(0, 3u);
        sub_1D60CF6C8(0, 3u);
        sub_1D60CF6C8(0, 3u);
        v11 = 3;
        goto LABEL_43;
      }

      sub_1D610CA48(*a2, 3u);
      sub_1D610CA48(v2, 3u);
      sub_1D610CA48(v4, 3u);
      sub_1D610CA48(v2, 3u);
      sub_1D610CA48(v4, 3u);
      sub_1D610CA48(v2, 3u);
      sub_1D5C08648(v2);
      sub_1D5C08648(v4);
      sub_1D60CF6C8(v2, 3u);
      sub_1D60CF6C8(v4, 3u);
      sub_1D60CF6C8(v4, 3u);
      v8 = v2;
      v9 = 3;
      goto LABEL_26;
    }

    if (v5 != 2)
    {
      goto LABEL_25;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 == 1)
        {
          v6 = 1;
          sub_1D610CA48(1uLL, 2u);
          sub_1D610CA48(1uLL, 2u);
          sub_1D610CA48(1uLL, 2u);
          sub_1D5C08648(1uLL);
          sub_1D5C08648(1uLL);
          sub_1D60CF6C8(1uLL, 2u);
          sub_1D60CF6C8(1uLL, 2u);
          sub_1D60CF6C8(1uLL, 2u);
          v7 = 2;
LABEL_24:
          sub_1D60CF6C8(1uLL, v7);
          return v6;
        }
      }

      else if (v4 >= 2)
      {
        sub_1D610CA48(*a2, 2u);
        sub_1D610CA48(v2, 2u);
        sub_1D610CA48(v4, 2u);
        sub_1D610CA48(v2, 2u);
        sub_1D610CA48(v4, 2u);
        sub_1D610CA48(v2, 2u);
        v12 = sub_1D633A310(v2, v4);
        sub_1D5C08648(v2);
        sub_1D5C08648(v4);
        sub_1D60CF6C8(v2, 2u);
        sub_1D60CF6C8(v4, 2u);
        sub_1D60CF6C8(v4, 2u);
        sub_1D60CF6C8(v2, 2u);
        return (v12 & 1) != 0;
      }
    }

    else if (!v4)
    {
      sub_1D610CA48(0, 2u);
      sub_1D610CA48(0, 2u);
      sub_1D610CA48(0, 2u);
      sub_1D5C08648(0);
      sub_1D5C08648(0);
      sub_1D60CF6C8(0, 2u);
      sub_1D60CF6C8(0, 2u);
      sub_1D60CF6C8(0, 2u);
      v11 = 2;
      goto LABEL_43;
    }

    sub_1D610CA48(*a2, 2u);
    sub_1D610CA48(v2, 2u);
    sub_1D610CA48(v4, 2u);
    sub_1D610CA48(v2, 2u);
    sub_1D610CA48(v4, 2u);
    sub_1D610CA48(v2, 2u);
    sub_1D5C08648(v2);
    sub_1D5C08648(v4);
    sub_1D60CF6C8(v2, 2u);
    sub_1D60CF6C8(v4, 2u);
    sub_1D60CF6C8(v4, 2u);
    v8 = v2;
    v9 = 2;
    goto LABEL_26;
  }

  if (*(a1 + 8))
  {
    if (v5 != 1)
    {
      goto LABEL_25;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 == 1)
        {
          v6 = 1;
          sub_1D610CA48(1uLL, 1u);
          sub_1D610CA48(1uLL, 1u);
          sub_1D610CA48(1uLL, 1u);
          sub_1D5C08648(1uLL);
          sub_1D5C08648(1uLL);
          sub_1D60CF6C8(1uLL, 1u);
          sub_1D60CF6C8(1uLL, 1u);
          sub_1D60CF6C8(1uLL, 1u);
          v7 = 1;
          goto LABEL_24;
        }
      }

      else if (v4 >= 2)
      {
        v6 = 1;
        sub_1D610CA48(*a2, 1u);
        sub_1D610CA48(v2, 1u);
        sub_1D610CA48(v4, 1u);
        sub_1D610CA48(v2, 1u);
        sub_1D610CA48(v4, 1u);
        sub_1D610CA48(v2, 1u);
        v13 = sub_1D633A310(v2, v4);
        sub_1D5C08648(v2);
        sub_1D5C08648(v4);
        sub_1D60CF6C8(v2, 1u);
        sub_1D60CF6C8(v4, 1u);
        sub_1D60CF6C8(v4, 1u);
        sub_1D60CF6C8(v2, 1u);
        if (v13)
        {
          return v6;
        }

        return 0;
      }
    }

    else if (!v4)
    {
      v6 = 1;
      sub_1D610CA48(0, 1u);
      sub_1D610CA48(0, 1u);
      sub_1D610CA48(0, 1u);
      sub_1D5C08648(0);
      sub_1D5C08648(0);
      sub_1D60CF6C8(0, 1u);
      sub_1D60CF6C8(0, 1u);
      sub_1D60CF6C8(0, 1u);
      sub_1D60CF6C8(0, 1u);
      return v6;
    }

    sub_1D610CA48(*a2, 1u);
    sub_1D610CA48(v2, 1u);
    sub_1D610CA48(v4, 1u);
    sub_1D610CA48(v2, 1u);
    sub_1D610CA48(v4, 1u);
    sub_1D610CA48(v2, 1u);
    sub_1D5C08648(v2);
    sub_1D5C08648(v4);
    sub_1D60CF6C8(v2, 1u);
    sub_1D60CF6C8(v4, 1u);
    sub_1D60CF6C8(v4, 1u);
    v8 = v2;
    v9 = 1;
    goto LABEL_26;
  }

  if (*(a2 + 8))
  {
LABEL_25:
    sub_1D610CA48(*a2, *(a2 + 8));
    sub_1D610CA48(v2, v3);
    sub_1D60CF6C8(v2, v3);
    v8 = v4;
    v9 = v5;
LABEL_26:
    sub_1D60CF6C8(v8, v9);
    return 0;
  }

  if (!v2)
  {
    if (v4)
    {
      goto LABEL_45;
    }

    sub_1D610CA48(0, 0);
    sub_1D610CA48(0, 0);
    sub_1D610CA48(0, 0);
    sub_1D5C08648(0);
    sub_1D5C08648(0);
    sub_1D60CF6C8(0, 0);
    sub_1D60CF6C8(0, 0);
    sub_1D60CF6C8(0, 0);
    v11 = 0;
LABEL_43:
    sub_1D60CF6C8(0, v11);
    return 1;
  }

  if (v2 != 1)
  {
    if (v4 < 2)
    {
      goto LABEL_45;
    }

    sub_1D610CA48(*a2, 0);
    sub_1D610CA48(v2, 0);
    sub_1D610CA48(v4, 0);
    sub_1D610CA48(v2, 0);
    sub_1D610CA48(v4, 0);
    sub_1D610CA48(v2, 0);
    v15 = sub_1D633A310(v2, v4);
    sub_1D5C08648(v2);
    sub_1D5C08648(v4);
    sub_1D60CF6C8(v2, 0);
    sub_1D60CF6C8(v4, 0);
    sub_1D60CF6C8(v4, 0);
    sub_1D60CF6C8(v2, 0);
    return (v15 & 1) != 0;
  }

  if (v4 != 1)
  {
LABEL_45:
    sub_1D610CA48(*a2, 0);
    sub_1D610CA48(v2, 0);
    sub_1D610CA48(v4, 0);
    sub_1D610CA48(v2, 0);
    sub_1D610CA48(v4, 0);
    sub_1D610CA48(v2, 0);
    sub_1D5C08648(v2);
    sub_1D5C08648(v4);
    sub_1D60CF6C8(v2, 0);
    sub_1D60CF6C8(v4, 0);
    sub_1D60CF6C8(v4, 0);
    v8 = v2;
    v9 = 0;
    goto LABEL_26;
  }

  v6 = 1;
  sub_1D610CA48(1uLL, 0);
  sub_1D610CA48(1uLL, 0);
  sub_1D610CA48(1uLL, 0);
  sub_1D5C08648(1uLL);
  sub_1D5C08648(1uLL);
  sub_1D60CF6C8(1uLL, 0);
  sub_1D60CF6C8(1uLL, 0);
  sub_1D60CF6C8(1uLL, 0);
  sub_1D60CF6C8(1uLL, 0);
  return v6;
}

uint64_t _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (*(a2 + 9))
    {
      if (v3 == 255)
      {
        sub_1D610CA28(*a2, *(a2 + 8), 1);
        sub_1D610CA28(v2, 0xFFu, 1);
        sub_1D610CA28(v5, v6, 1);
        sub_1D610CA28(v2, 0xFFu, 1);
        sub_1D60CF6A8(v2, 0xFFu, 1);
        sub_1D60CF6A8(v5, v6, 1);
        if (v6 == 255)
        {
          sub_1D60CF6B4(v2, 0xFFu);
          return 1;
        }
      }

      else
      {
        v13 = *a1;
        v14 = v3;
        if (v6 != 255)
        {
          v11 = v5;
          v12 = v6;
          sub_1D610CA28(v5, v6, 1);
          sub_1D610CA28(v2, v3, 1);
          sub_1D610CA28(v5, v6, 1);
          sub_1D610CA28(v2, v3, 1);
          sub_1D610CA34(v2, v3);
          v8 = _s8NewsFeed44FormatSupplementaryNodePinDistanceAdjustmentO2eeoiySbAC_ACtFZ_0(&v13, &v11);
          sub_1D60CF6A8(v2, v3, 1);
          sub_1D60CF6A8(v5, v6, 1);
          sub_1D60CF6C8(v11, v12);
          sub_1D60CF6C8(v13, v14);
          sub_1D60CF6B4(v2, v3);
          result = 1;
          if (v8)
          {
            return result;
          }

          return 0;
        }

        sub_1D610CA28(v5, 0xFFu, 1);
        sub_1D610CA28(v2, v3, 1);
        sub_1D610CA28(v5, 0xFFu, 1);
        sub_1D610CA28(v2, v3, 1);
        sub_1D610CA34(v2, v3);
        sub_1D60CF6A8(v2, v3, 1);
        sub_1D60CF6A8(v5, 0xFFu, 1);
        sub_1D60CF6C8(v2, v3);
      }

      sub_1D60CF6B4(v2, v3);
      sub_1D60CF6B4(v5, v6);
      return 0;
    }

LABEL_8:
    sub_1D610CA28(*a2, *(a2 + 8), v7);
    sub_1D610CA28(v2, v3, v4);
    sub_1D60CF6A8(v2, v3, v4);
    sub_1D60CF6A8(v5, v6, v7);
    return 0;
  }

  if (*(a2 + 9))
  {
    goto LABEL_8;
  }

  sub_1D610CA28(*a2, *(a2 + 8), 0);
  sub_1D610CA28(v2, v3, 0);
  v10 = sub_1D633A310(v2, v5);
  sub_1D60CF6A8(v2, v3, 0);
  sub_1D60CF6A8(v5, v6, 0);
  return v10 & 1;
}