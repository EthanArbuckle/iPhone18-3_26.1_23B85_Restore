uint64_t TagRouteContext.feedItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7B1B2A8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v2 = sub_1D7D303CC();
  v4 = v3;

  qword_1ECA0BBD0 = v2;
  *algn_1ECA0BBD8 = v4;
  return result;
}

uint64_t sub_1D7B1B384()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v2 = sub_1D7D303CC();
  v4 = v3;

  qword_1ECA0BBE0 = v2;
  *algn_1ECA0BBE8 = v4;
  return result;
}

uint64_t sub_1D7B1B468()
{
  if (*v0)
  {
    return 0x736E6F73616572;
  }

  else
  {
    return 0x656C6369747261;
  }
}

unint64_t sub_1D7B1B4A0()
{
  result = qword_1EC9E4C50;
  if (!qword_1EC9E4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4C50);
  }

  return result;
}

uint64_t sub_1D7B1B4F4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D7B1B64C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_newsletterManager);
  if (!v1)
  {
    return 2;
  }

  if ([swift_unknownObjectRetain() activeNewsletter] <= 1)
  {
    swift_unknownObjectRelease();
    return 2;
  }

  v3 = [v1 subscription];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      swift_unknownObjectRelease();
      return 4;
    }

    if (v3 == 3)
    {
      swift_unknownObjectRelease();
      return 5;
    }

    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      swift_unknownObjectRelease();
      return 3;
    }

LABEL_16:
    result = sub_1D7D3160C();
    __break(1u);
    return result;
  }

  v4 = [v1 canSubscribe];
  swift_unknownObjectRelease();
  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1D7B1B7B8(uint64_t a1)
{
  v3 = sub_1D7D2DB3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2DB7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE6C50();
  v13 = sub_1D7D30E1C();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1D7B1BC90;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_20;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_1D7D2DB5C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7B1BCB0(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
  sub_1D7B18DEC();
  sub_1D7B1BCB0(&qword_1EE0BF270, sub_1D7B18DEC);
  sub_1D7D313AC();
  MEMORY[0x1DA70E890](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D7B1BA94(uint64_t a1, unint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_observers) allObjects];
  sub_1D7B1BCF8();
  v4 = sub_1D7D3063C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v5 = sub_1D7D3167C();
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA70EF00](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    if (a2 >= 4)
    {
      break;
    }

    [v7 newsletterSubscriptionStatusDidChangeFromStatus_];
    swift_unknownObjectRelease();
    ++v6;
    if (v8 == v5)
    {
      goto LABEL_15;
    }
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7B1BCB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7B1BCF8()
{
  result = qword_1EE0BAF88;
  if (!qword_1EE0BAF88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BAF88);
  }

  return result;
}

uint64_t IssueTableOfContentsPostAction.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t IssueTableOfContentsActionHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D7B1BE6C()
{
  result = qword_1EC9E4CD8;
  if (!qword_1EC9E4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4CD8);
  }

  return result;
}

uint64_t type metadata accessor for IssueTableOfContentsAction()
{
  result = qword_1EC9E4CE0;
  if (!qword_1EC9E4CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7B1BF38()
{
  result = sub_1D7A67968();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2824C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AudioPlaybackState.nowPlaying.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x1EEE9AC00](a1, v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if (EnumCaseMultiPayload > 1)
  {
    v13 = 1;
  }

  else
  {
    (*(*(v11 - 8) + 32))(a2, v8, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a2, v13, 1, v11);
}

uint64_t AudioPlaybackState.playbackRate.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    MEMORY[0x1EEE9AC00](result, v10);
    strcpy(&v13[-6], "item time playbackRate waiting ");
    v11 = *(a1 + 16);
    v13[0] = v11;
    v13[1] = MEMORY[0x1E69E63B0];
    v13[2] = &type metadata for AudioPlaybackRate;
    v13[3] = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    goto LABEL_5;
  }

  if (result == 1)
  {
    v11 = *(a1 + 16);
    TupleTypeMetadata = swift_getTupleTypeMetadata3();
LABEL_5:
    *a2 = v7[*(TupleTypeMetadata + 64)];
    return (*(*(v11 - 8) + 8))(v7, v11);
  }

  *a2 = 6;
  return result;
}

uint64_t AudioPlaybackState.isPlaying.getter(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  (*(*(*(a1 + 16) - 8) + 8))(v5);
  return v8;
}

uint64_t static AudioPlaybackState.== infix(_:_:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v67 = *(a3 - 8);
  v68 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = &v62[-v8];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v62[-v11];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v62[-v15];
  v66 = v17;
  v18 = type metadata accessor for AudioPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v20);
  v23 = &v62[-v22];
  v25 = &v62[*(v24 + 56) - v22];
  v26 = *(v18 - 8);
  v27 = *(v26 + 16);
  v27(&v62[-v22], a1, v18, v21);
  (v27)(v25, v68, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v68 = v16;
    v65 = v12;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v29);
    strcpy(&v62[-48], "item time playbackRate waiting ");
    v69 = a3;
    v70 = MEMORY[0x1E69E63B0];
    v71 = &type metadata for AudioPlaybackRate;
    v72 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v45 = TupleTypeMetadata[16];
    v46 = v23[v45];
    v47 = TupleTypeMetadata[20];
    v48 = v23[v47];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_8;
    }

    v63 = v46;
    LODWORD(v64) = v48;
    v49 = TupleTypeMetadata[12];
    v50 = *&v23[v49];
    v51 = *&v25[v49];
    v52 = v25[v45];
    v53 = v25[v47];
    v54 = v67;
    v55 = v68;
    v56 = *(v67 + 32);
    v56(v68, v23, a3);
    v57 = v65;
    v56(v65, v25, a3);
    v58 = sub_1D7D3030C();
    v59 = *(v54 + 8);
    v59(v57, a3);
    v59(v55, a3);
    result = 0;
    if ((v58 & 1) == 0 || v50 != v51)
    {
      return result;
    }

    if (v52 > 2)
    {
      if (v52 == 3)
      {
        v60 = v63 == 3;
      }

      else if (v52 == 4)
      {
        v60 = v63 == 4;
      }

      else
      {
        v60 = v63 == 5;
      }
    }

    else
    {
      if (!v52)
      {
        v61 = v64;
        if (v63)
        {
          return 0;
        }

        return v61 ^ v53 ^ 1u;
      }

      if (v52 == 1)
      {
        v60 = v63 == 1;
      }

      else
      {
        v60 = v63 == 2;
      }
    }

    v61 = v64;
    if (!v60)
    {
      return 0;
    }

    return v61 ^ v53 ^ 1u;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v31 = *(TupleTypeMetadata3 + 64);
  v32 = v23[v31];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    (*(v67 + 8))(v23, a3);
LABEL_11:
    (*(v26 + 8))(v25, v18);
    return 0;
  }

  v33 = *(TupleTypeMetadata3 + 48);
  v34 = *&v23[v33];
  v35 = *&v25[v33];
  v36 = v25[v31];
  v37 = v67;
  v38 = *(v67 + 32);
  v39 = v64;
  v38(v64, v23, a3);
  v40 = v65;
  v38(v65, v25, a3);
  v41 = sub_1D7D3030C();
  v42 = *(v37 + 8);
  v42(v40, a3);
  v42(v39, a3);
  result = 0;
  if ((v41 & 1) != 0 && v34 == v35)
  {
    return dbl_1D7D4DE50[v32] == dbl_1D7D4DE50[v36];
  }

  return result;
}

uint64_t SyncObservable.throttlePlaybackChanges<A>(frequency:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*v1 + *MEMORY[0x1E69D6540]);
  v5 = swift_allocBox();
  sub_1D7D28EDC();
  v6 = swift_allocObject();
  v7 = *(v4 + 16);
  v6[2] = v7;
  v8 = *(v4 + 24);
  v6[3] = v8;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;

  v10 = sub_1D7D28E8C();

  return v10;
}

BOOL sub_1D7B1CB18(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  v5 = type metadata accessor for AudioPlaybackState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13[-v8];
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = a3(v9, a2);
  (*(v6 + 8))(v9, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v10, a2, v5);
  }

  return (v11 & 1) == 0;
}

uint64_t sub_1D7B1CCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioPlaybackState();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t static AudioPlaybackUpdateFrequency.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1D79F47C0;
  a3[1] = result;
  return result;
}

uint64_t static AudioPlaybackUpdateFrequency.trackChanges.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, char *a2)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1D7B1D330;
  a3[1] = result;
  return result;
}

uint64_t sub_1D7B1CDF8(uint64_t a1, char *a2, uint64_t a3)
{
  v59 = *(a3 - 8);
  v60 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v56 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v55 - v15;
  v58 = v17;
  v18 = type metadata accessor for AudioPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v20);
  v23 = &v55 - v22;
  v25 = &v55 + *(v24 + 56) - v22;
  v26 = *(v18 - 8);
  v27 = *(v26 + 16);
  v27(&v55 - v22, a1, v18, v21);
  (v27)(v25, v60, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v30 = *(swift_getTupleTypeMetadata3() + 64);
    v31 = v23[v30];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v25[v30];
      v33 = v59;
      v34 = *(v59 + 32);
      v35 = v56;
      v34(v56, v23, a3);
      v36 = v57;
      v34(v57, v25, a3);
      v37 = sub_1D7D3030C();
      v38 = *(v33 + 8);
      v38(v36, a3);
      v38(v35, a3);
      if (v37)
      {
        return dbl_1D7D4DE50[v31] != dbl_1D7D4DE50[v32];
      }

      return 1;
    }

LABEL_7:
    (*(v59 + 8))(v23, a3);
LABEL_10:
    (*(v26 + 8))(v25, v18);
    return 1;
  }

  v40 = v16;
  v60 = v12;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v29);
  strcpy(&v55 - 48, "item time playbackRate waiting ");
  v61 = a3;
  v62 = MEMORY[0x1E69E63B0];
  v63 = &type metadata for AudioPlaybackRate;
  v64 = MEMORY[0x1E69E6370];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = *(TupleTypeMetadata + 64);
  v43 = v23[v42];
  v44 = *(TupleTypeMetadata + 80);
  v45 = v23[v44];
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_7;
  }

  LODWORD(v56) = v43;
  LODWORD(v57) = v45;
  v46 = v25[v42];
  v47 = v25[v44];
  v48 = v59;
  v49 = *(v59 + 32);
  v49(v40, v23, a3);
  v50 = v60;
  v49(v60, v25, a3);
  v51 = sub_1D7D3030C();
  v52 = *(v48 + 8);
  v52(v50, a3);
  v52(v40, a3);
  if ((v51 & 1) == 0)
  {
    return 1;
  }

  if (v46 > 2)
  {
    if (v46 == 3)
    {
      v53 = v56 == 3;
    }

    else if (v46 == 4)
    {
      v53 = v56 == 4;
    }

    else
    {
      v53 = v56 == 5;
    }

LABEL_25:
    v54 = v57;
    if (!v53)
    {
      return 1;
    }

    return v54 ^ v47;
  }

  if (v46)
  {
    if (v46 == 1)
    {
      v53 = v56 == 1;
    }

    else
    {
      v53 = v56 == 2;
    }

    goto LABEL_25;
  }

  v54 = v57;
  if (v56)
  {
    return 1;
  }

  return v54 ^ v47;
}

uint64_t static AudioPlaybackUpdateFrequency.timeInterval(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2)@<X8>, double a4@<D0>)
{
  if (a4 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = a2;
    *(result + 32) = a4;
    *a3 = sub_1D7B1D9D0;
    a3[1] = result;
  }

  return result;
}

uint64_t sub_1D7B1D3B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v72 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v70 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = &v67[-v10];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v67[-v13];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67[-v17];
  v73 = v19;
  v71 = v20;
  v21 = type metadata accessor for AudioPlaybackState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v23);
  v26 = &v67[-v25];
  v28 = &v67[*(v27 + 56) - v25];
  v29 = *(v21 - 8);
  v30 = *(v29 + 16);
  v30(&v67[-v25], a1, v21, v24);
  (v30)(v28, a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v69 = v18;
    v70 = v14;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v32);
    strcpy(&v67[-48], "item time playbackRate waiting ");
    v33 = v73;
    v74 = v73;
    v75 = MEMORY[0x1E69E63B0];
    v76 = &type metadata for AudioPlaybackRate;
    v77 = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v47 = TupleTypeMetadata[12];
    v48 = *&v26[v47];
    v49 = TupleTypeMetadata[16];
    v50 = v26[v49];
    v51 = TupleTypeMetadata[20];
    v52 = v26[v51];
    if (!swift_getEnumCaseMultiPayload())
    {
      v68 = v50;
      v54 = *&v28[v47];
      v55 = v28[v49];
      v56 = v28[v51];
      v57 = v72;
      v58 = *(v72 + 32);
      v59 = v69;
      v58(v69, v26, v33);
      v60 = v70;
      v58(v70, v28, v33);
      if (sub_1D7D3030C())
      {
        if (v55 > 2)
        {
          v61 = v73;
          if (v55 == 3)
          {
            v62 = v68 == 3;
          }

          else if (v55 == 4)
          {
            v62 = v68 == 4;
          }

          else
          {
            v62 = v68 == 5;
          }
        }

        else
        {
          v61 = v73;
          if (v55)
          {
            if (v55 == 1)
            {
              v62 = v68 == 1;
            }

            else
            {
              v62 = v68 == 2;
            }
          }

          else
          {
            v62 = v68 == 0;
          }
        }

        v65 = !v62;
        v63 = ((v65 | v52 ^ v56) & 1) != 0 || vabdd_f64(v54, v48) >= a4;
      }

      else
      {
        v63 = 1;
        v61 = v73;
      }

      v66 = *(v57 + 8);
      v66(v60, v61);
      v66(v59, v61);
      return v63;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v33 = v73;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v35 = *(TupleTypeMetadata3 + 48);
  v36 = *&v26[v35];
  v37 = *(TupleTypeMetadata3 + 64);
  v38 = v26[v37];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:
    (*(v72 + 8))(v26, v33);
LABEL_14:
    (*(v29 + 8))(v28, v21);
    return 1;
  }

  v68 = v38;
  v39 = *&v28[v35];
  v40 = v28[v37];
  v41 = v72;
  v42 = *(v72 + 32);
  v43 = v69;
  v42(v69, v26, v33);
  v44 = v70;
  v42(v70, v28, v33);
  if (sub_1D7D3030C())
  {
    if (v40 > 2)
    {
      v45 = v73;
      if (v40 == 3)
      {
        if (v68 == 3)
        {
          goto LABEL_32;
        }
      }

      else if (v40 == 4)
      {
        if (v68 == 4)
        {
          goto LABEL_32;
        }
      }

      else if (v68 == 5)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v45 = v73;
      if (v40)
      {
        if (v40 == 1)
        {
          if (v68 != 1)
          {
            goto LABEL_30;
          }

LABEL_32:
          v63 = vabdd_f64(v39, v36) >= a4;
          goto LABEL_33;
        }

        if (v68 == 2)
        {
          goto LABEL_32;
        }
      }

      else if (!v68)
      {
        goto LABEL_32;
      }
    }

LABEL_30:
    v63 = 1;
    goto LABEL_33;
  }

  v63 = 1;
  v45 = v73;
LABEL_33:
  v64 = *(v41 + 8);
  v64(v44, v45);
  v64(v43, v45);
  return v63;
}

uint64_t sub_1D7B1D9DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 10;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1D7B1DB00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 10;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D7B1DCC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7B1DD18(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 153))
  {
    goto LABEL_16;
  }

  sub_1D7B1F05C(a1, v8, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = a1;
  if (EnumCaseMultiPayload <= 1)
  {
    v48 = v2;
    if (EnumCaseMultiPayload)
    {
      v20 = *(v8 + 1);
      v57 = *v8;
      v58 = v20;
      v21 = *(v8 + 3);
      v59 = *(v8 + 2);
      v60 = v21;
      v22 = *(v8 + 5);
      v61 = *(v8 + 4);
      v62 = v22;
      v19 = v58;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v57);
      goto LABEL_11;
    }

LABEL_10:
    sub_1D7B1F550(v8, v12, type metadata accessor for ArticleViewerArticlePage);
    v19 = *(v12 + 2);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7B1F780(v12, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v48 = v2;
    if (EnumCaseMultiPayload == 3)
    {
      v14 = *(v8 + 9);
      v65 = *(v8 + 8);
      v66 = v14;
      v67 = *(v8 + 20);
      v15 = *(v8 + 5);
      v61 = *(v8 + 4);
      v62 = v15;
      v16 = *(v8 + 7);
      v63 = *(v8 + 6);
      v64 = v16;
      v17 = *(v8 + 1);
      v57 = *v8;
      v58 = v17;
      v18 = *(v8 + 3);
      v59 = *(v8 + 2);
      v60 = v18;
      v19 = *(&v63 + 1);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D79F949C(&v57);
LABEL_11:

      swift_unknownObjectRelease();

      ArticleViewerPage.article.getter(&v53);
      v57 = v53;
      v58 = v54;
      v59 = v55;
      v60 = v56;
      if (!*(&v53 + 1))
      {
        goto LABEL_15;
      }

      v24 = v58;
      swift_unknownObjectRetain();
      sub_1D7A1ED38(&v57, &qword_1EE0C0600, &type metadata for Article);
      v25 = [v24 sourceChannel];
      swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_15;
      }

      if (*(a2 + 160) < 768.0)
      {
LABEL_14:
        swift_unknownObjectRelease();
LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v28 = *(v48 + 16);
      v29 = [v28 purchaseProvider];
      if ([swift_unknownObjectRetain() tagType] == 3)
      {
        v30 = [v25 asSection];
        if (!v30 || (v31 = [v30 parentID], swift_unknownObjectRelease(), !v31))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_24;
        }
      }

      else
      {
        v31 = [v25 identifier];
      }

      v32 = sub_1D7D3034C();
      v34 = v33;

      v35 = [v29 purchasedTagIDs];
      v36 = sub_1D7D309AC();

      LOBYTE(v35) = sub_1D7D053C8(v32, v34, v36);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v35)
      {
        goto LABEL_48;
      }

LABEL_24:
      v37 = [objc_msgSend(v28 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v37, v37 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53 = v51;
      v54 = v52;
      v38 = MEMORY[0x1E69E7CA0];
      if (*(&v52 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v39 = v50;
          v40 = [v50 integerValue];
          if (v40 == -1)
          {

            goto LABEL_44;
          }

          v41 = v40;
LABEL_33:
          if (objc_getAssociatedObject(v37, ~v41))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
          }

          v53 = v51;
          v54 = v52;
          if (*(&v52 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v42 = v50;
              v43 = [v42 integerValue];

              if (((v43 ^ v41) & 1) == 0)
              {
                goto LABEL_47;
              }

              goto LABEL_44;
            }
          }

          else
          {
            sub_1D7A1ED38(&v53, &qword_1EE0BE7A0, v38 + 8);
          }

          if ((v41 & 1) == 0)
          {
LABEL_47:
            if ([v19 isPaid])
            {
              goto LABEL_14;
            }

LABEL_48:
            v26 = sub_1D7C3C50C();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return v26 & 1;
          }

LABEL_44:
          v44 = [objc_msgSend(v28 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v45 = [v25 identifier];
          if (!v45)
          {
            sub_1D7D3034C();
            v45 = sub_1D7D3031C();
          }

          v46 = [v44 containsTagID_];

          if (v46)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else
      {
        sub_1D7A1ED38(&v53, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
      }

      v39 = 0;
      v41 = 0;
      goto LABEL_33;
    }

    sub_1D799A6BC();
    sub_1D79DA510(*&v8[*(v23 + 48)], *&v8[*(v23 + 48) + 8], *&v8[*(v23 + 48) + 16]);
    goto LABEL_10;
  }

  sub_1D7B1F780(v8, type metadata accessor for ArticleViewerPage);
LABEL_16:
  v26 = 0;
  return v26 & 1;
}

double sub_1D7B1E47C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  sub_1D7B1EFC0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - v10;
  sub_1D7B1F028(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = off_1EE0C8058;
  v51 = qword_1EE0C8050;
  sub_1D7B1F05C(a1, v11, sub_1D7B1EFC0);
  sub_1D7B1EFF4(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = 1;
  v21 = v19(v11, 1, v17);
  v22 = sub_1D7B1EFC0;
  if (v21 != 1)
  {
    sub_1D7B1F05C(v11, v15, type metadata accessor for TextResizeFeatureContext);
    v20 = 0;
    v22 = sub_1D7B1EFF4;
  }

  v23 = v22;

  sub_1D7B1F780(v11, v23);
  v24 = type metadata accessor for TextResizeFeatureContext();
  (*(*(v24 - 8) + 56))(v15, v20, 1, v24);
  sub_1D7B1F05C(a1, v7, sub_1D7B1EFC0);
  v25 = v19(v7, 1, v18);
  v50 = v16;
  if (v25 == 1)
  {
    sub_1D7B1F780(v7, sub_1D7B1EFC0);
    memset(v56, 0, sizeof(v56));
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
  }

  else
  {
    sub_1D79DA880(&v7[*(v18 + 28)], v56);
    sub_1D7B1F780(v7, sub_1D7B1EFF4);
  }

  sub_1D7B1F0C4(0, qword_1EE0C1B60, type metadata accessor for TextResizeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v27 = v26;
  v28 = (a1 + *(v26 + 32));
  v30 = *v28;
  v29 = v28[1];
  v31 = sub_1D7B1F128(v15, v56, *v28, v29);
  v33 = v32;
  v35 = v34;
  sub_1D7A1ED38(v56, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D7B1F780(v15, sub_1D7B1F028);
  v36 = *(v27 + 28);
  v37 = v52;
  sub_1D79DA880(v52, v56);
  v38 = sub_1D7B1F128(a1 + v36, v56, v30, v29);
  v40 = v39;
  LOBYTE(v30) = v41;
  sub_1D7A1ED38(v56, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D79DA880(v37, v56);
  v42 = *(v53 + 24);
  v43 = v54;
  *(v54 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v43 + 32) = &off_1F52A4FC8;
  v44 = swift_allocObject();
  *v43 = v44;
  v45 = v50;
  *(v44 + 16) = v51;
  *(v44 + 24) = v45;
  *(v44 + 32) = v31;
  *(v44 + 40) = v33;
  *(v44 + 48) = v35;
  *(v44 + 56) = v38;
  *(v44 + 64) = v40;
  *(v44 + 72) = v30;
  v46 = v57;
  sub_1D7A1EE44(v31);
  sub_1D7A1EE44(v38);
  *(v44 + 96) = sub_1D7C550C4(v46);
  *(v44 + 104) = v42;
  v47 = *&v64;

  BarButtonOrder.init(for:)(&v55, v47);
  sub_1D7A1EE84(v38);
  sub_1D7A1EE84(v31);
  sub_1D79DA8DC(v56);
  result = *&v55;
  *(v44 + 80) = v55;
  *(v43 + 40) = 0;
  return result;
}

void *sub_1D7B1E948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for TextResizeFeatureContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    v28 = a1;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    sub_1D7992EFC(0, &qword_1EE0BF050);
    v17 = qword_1EC9E0058;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC9E92D0;
    v19 = sub_1D7D30C9C();
    sub_1D7992EFC(0, &qword_1EE0BAF70);
    sub_1D7B1F05C(a3, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextResizeFeatureContext);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v28;
    *(v21 + 24) = a2;
    sub_1D7B1F550(v14, v21 + v20, type metadata accessor for TextResizeFeatureContext);

    v22 = sub_1D7D311EC();
    [v19 setMenuRepresentation_];
    [v19 setPrimaryAction_];
  }

  else
  {
    v23 = _sSo8UIButtonC12NewsArticlesE15textSizerButton9tintColor016buttonBackgroundH05TeaUI06ActionF0CSo7UIColorC_AKtFZ_0(a4, a5);
    sub_1D7D2A94C();
    sub_1D7B1F05C(a3, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextResizeFeatureContext);
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    sub_1D7B1F550(v14, v25 + v24, type metadata accessor for TextResizeFeatureContext);

    v22 = v23;
    v19 = sub_1D7D2A92C();
    sub_1D7D2A93C();

    sub_1D7D2A90C();
  }

  return v19;
}

uint64_t sub_1D7B1ED24(void *a1, void (*a2)(_BYTE *), uint64_t a3, __int128 *a4)
{
  v7 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a4[1];
  v18 = *a4;
  v19 = v11;
  v12 = a4[3];
  v20 = a4[2];
  v21 = v12;
  sub_1D79F5B54(&v18, v17);
  v13 = [a1 presentationSourceItem];
  v14 = v19;
  *v10 = v18;
  *(v10 + 1) = v14;
  v15 = v21;
  *(v10 + 2) = v20;
  *(v10 + 3) = v15;
  *(v10 + 8) = v13;
  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_1D7B1F780(v10, type metadata accessor for ArticleViewerFeatureAction);
}

uint64_t sub_1D7B1EE34(void *a1, void (*a2)(_BYTE *), uint64_t a3, _OWORD *a4)
{
  v7 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a4[1];
  v16[0] = *a4;
  v16[1] = v10;
  v12 = a4[3];
  v17 = a4[2];
  v11 = v17;
  v18 = v12;
  *v9 = v16[0];
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 8) = a1;
  swift_storeEnumTagMultiPayload();
  sub_1D79F5B54(v16, v15);
  v13 = a1;
  a2(v9);
  return sub_1D7B1F780(v9, type metadata accessor for ArticleViewerFeatureAction);
}

uint64_t sub_1D7B1EF28()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B1F05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7B1F0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B1F128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v6 = sub_1D7D2AC3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  sub_1D7B1F028(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TextResizeFeatureContext();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B1F05C(a1, v18, sub_1D7B1F028);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D7B1F780(v18, sub_1D7B1F028);
    return 0;
  }

  sub_1D7B1F550(v18, v23, type metadata accessor for TextResizeFeatureContext);
  sub_1D7AEC678(a2, v34);
  if (!v35)
  {
    sub_1D7B1F780(v23, type metadata accessor for TextResizeFeatureContext);
    sub_1D7A1ED38(v34, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
    return 0;
  }

  sub_1D7A1ED38(v34, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D7D2AC8C();
  v24 = sub_1D7D2ABFC();
  v25 = *(v7 + 8);
  v25(v14, v6);
  if (!v24)
  {
    v24 = [objc_opt_self() systemBackgroundColor];
  }

  sub_1D7D2AC8C();
  v26 = sub_1D7D2AC2C();
  v25(v10, v6);
  if (!v26)
  {
    v26 = sub_1D7D3112C();
  }

  v27 = sub_1D7B1E948(v32, v33, v23, v26, v24);

  v28 = sub_1D7D3031C();

  [v27 setIdentifier_];

  v29 = *(v23 + 2);
  sub_1D79995B8(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7D3B4D0;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  swift_unknownObjectRetain();

  sub_1D7B1F780(v23, type metadata accessor for TextResizeFeatureContext);
  return v29;
}

uint64_t sub_1D7B1F550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = (type metadata accessor for TextResizeFeatureContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_1D7D2ACCC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7B1F6F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TextResizeFeatureContext() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1D7B1F780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B1F808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B1FD34(0, &qword_1EE0BEAF0, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B1FCE0();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData() + 20)) = 2;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7B1FA6C(void *a1)
{
  v3 = v1;
  sub_1D7B1FD34(0, &qword_1EC9E4D70, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B1FCE0();
  sub_1D7D31B1C();
  v12[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8);
  sub_1D7D318BC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData() + 20));
    v12[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7B1FC38(uint64_t a1)
{
  v2 = sub_1D7B1FCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B1FC74(uint64_t a1)
{
  v2 = sub_1D7B1FCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7B1FCE0()
{
  result = qword_1EE0C0CC8[0];
  if (!qword_1EE0C0CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C0CC8);
  }

  return result;
}

void sub_1D7B1FD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7B1FCE0();
    v7 = a3(a1, &type metadata for RecommendedEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7B1FDAC()
{
  result = qword_1EC9E4D78;
  if (!qword_1EC9E4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4D78);
  }

  return result;
}

unint64_t sub_1D7B1FE04()
{
  result = qword_1EE0C0CB8;
  if (!qword_1EE0C0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0CB8);
  }

  return result;
}

unint64_t sub_1D7B1FE5C()
{
  result = qword_1EE0C0CC0;
  if (!qword_1EE0C0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0CC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSeekState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AudioSeekState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D7B1FF00(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7B1FF1C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D7B1FF4C(void *a1)
{
  v49 = v1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for EndOfArticleFeedGapLocation();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EndOfArticleExpandRequest();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v45 - v12;
  memset(v54, 0, 57);
  memset(&v54[64], 0, 57);
  memset(&v54[128], 0, 57);
  memset(&v54[192], 0, 57);
  v15 = (v45 + *(v14 + 28) - v12);
  *v15 = a1;
  sub_1D7B20D74(v54, (v15 + 1));
  swift_storeEnumTagMultiPayload();
  strcpy(v13, "prewarmRequest");
  v13[15] = -18;
  swift_unknownObjectRetain();
  v16 = CACurrentMediaTime();
  sub_1D7B20DEC(v15, v6, type metadata accessor for EndOfArticleFeedGapLocation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v46 = qword_1EE0CA138;
    v45[3] = sub_1D7D30C6C();
    sub_1D79F3AB0();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7D3C680;
    v18 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1D79D6AE0();
    *(v17 + 64) = v19;
    strcpy((v17 + 32), "prewarmRequest");
    *(v17 + 47) = -18;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D7D315DC();
    v20 = v52;
    v21 = v53;
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 72) = v20;
    *(v17 + 80) = v21;
    v22 = [a1 identifier];
    v23 = sub_1D7D3034C();
    v25 = v24;

    *(v17 + 136) = v18;
    *(v17 + 144) = v19;
    *(v17 + 112) = v23;
    *(v17 + 120) = v25;
    sub_1D7D29AAC();

    sub_1D7B2107C(v6, type metadata accessor for EndOfArticleFeedGapLocation);
  }

  else
  {
    v26 = (v6 + 8);
    swift_unknownObjectRelease();
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    v46 = qword_1EE0CA138;
    sub_1D7D30C6C();
    sub_1D79F3AB0();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7D3B4E0;
    v28 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1D79D6AE0();
    *(v27 + 64) = v29;
    strcpy((v27 + 32), "prewarmRequest");
    *(v27 + 47) = -18;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D7D315DC();
    v30 = v52;
    v31 = v53;
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 72) = v30;
    *(v27 + 80) = v31;
    sub_1D7D29AAC();

    sub_1D7B16290(v26);
  }

  *(swift_allocObject() + 16) = a1;
  type metadata accessor for EndOfArticleFeedServiceConfig();
  swift_unknownObjectRetain();
  sub_1D7D294AC();

  sub_1D7B20E54(0, &unk_1EE0BF918, MEMORY[0x1E69B5B50]);
  sub_1D7D293BC();

  sub_1D7AE6C50();
  v32 = sub_1D7D30E1C();
  v49 = type metadata accessor for EndOfArticleExpandRequest;
  v33 = v50;
  sub_1D7B20DEC(v13, v50, type metadata accessor for EndOfArticleExpandRequest);
  v34 = *(v47 + 80);
  v35 = (v34 + 16) & ~v34;
  v36 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  ObjectType = v13;
  v37 = swift_allocObject();
  sub_1D7B20EF0(v33, v37 + v35);
  *(v37 + v36) = v16;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  swift_unknownObjectRetain();
  sub_1D7D293AC();

  v38 = sub_1D7D2934C();
  sub_1D7D2939C();

  v40 = ObjectType;
  v39 = v49;
  sub_1D7B20DEC(ObjectType, v33, v49);
  v41 = swift_allocObject();
  *(v41 + 16) = v16;
  sub_1D7B20EF0(v33, v41 + ((v34 + 24) & ~v34));
  v42 = sub_1D7D2934C();
  v43 = sub_1D7D293DC();

  sub_1D7B2107C(v40, v39);
  sub_1D7B16290(v54);
  return v43;
}

uint64_t sub_1D7B2065C()
{
  swift_unknownObjectRetain();
  v0 = sub_1D7D2DCAC();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D7B206BC(uint64_t a1, uint64_t a2)
{
  sub_1D7B20E54(0, &qword_1EE0BF760, MEMORY[0x1E69B5FE0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v11[1] = *(a2 + OBJC_IVAR____TtC12NewsArticles23EndOfArticleDataManager_feedService);
  type metadata accessor for EndOfArticleFeedServiceConfig();
  sub_1D798EE24(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);

  sub_1D7D2ED4C();
  sub_1D7994F18();
  sub_1D798EE24(&qword_1EE0BF788, sub_1D7994F18);
  v9 = sub_1D7D2DFBC();
  (*(v5 + 8))(v8, v4);

  return v9;
}

uint64_t sub_1D7B20880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v7 = *a2;
  v6 = a2[1];
  v8 = qword_1EE0CA130;
  swift_bridgeObjectRetain_n();

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D79F3AB0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7D42910;
  sub_1D7D3094C();
  v10 = MEMORY[0x1E69E6438];
  *(v9 + 56) = MEMORY[0x1E69E63B0];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(v9 + 96) = MEMORY[0x1E69E6158];
  v13 = sub_1D79D6AE0();
  *(v9 + 104) = v13;
  *(v9 + 72) = v7;
  *(v9 + 80) = v6;
  sub_1D7D315DC();
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  v14 = [a3 identifier];
  v15 = sub_1D7D3034C();
  v17 = v16;

  *(v9 + 176) = v12;
  *(v9 + 184) = v13;
  *(v9 + 152) = v15;
  *(v9 + 160) = v17;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  *a4 = v7;
  a4[1] = v6;
  a4[2] = v5;
  return result;
}

uint64_t sub_1D7B20A44(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  sub_1D7B210DC(0, &qword_1EE0BEA40, &type metadata for EndOfArticleExpandResult, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4D0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  sub_1D7B210DC(0, &unk_1EE0C02C8, &type metadata for EndOfArticlePrewarmResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  return sub_1D7D2940C();
}

uint64_t sub_1D7B20B28(uint64_t a1, uint64_t *a2)
{
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D79F3AB0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3C680;
  sub_1D7D3094C();
  v4 = MEMORY[0x1E69E6438];
  *(v3 + 56) = MEMORY[0x1E69E63B0];
  *(v3 + 64) = v4;
  *(v3 + 32) = v5;
  v7 = *a2;
  v6 = a2[1];
  v8 = MEMORY[0x1E69E6158];
  *(v3 + 96) = MEMORY[0x1E69E6158];
  v9 = sub_1D79D6AE0();
  *(v3 + 104) = v9;
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  sub_1D798F168(0, &qword_1EE0BE7E0);

  sub_1D7D315DC();
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
}

uint64_t sub_1D7B20DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7B20E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for EndOfArticleFeedServiceConfig();
    v7 = sub_1D798EE24(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7B20EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleExpandRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B20F54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for EndOfArticleExpandRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D7B20880(a1, (v2 + v6), *(v2 + ((((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1D7B21008(uint64_t a1)
{
  v3 = *(type metadata accessor for EndOfArticleExpandRequest() - 8);
  v4 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_1D7B20B28(a1, v4);
}

uint64_t sub_1D7B2107C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B210DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7B21154@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B2167C(0, &qword_1EE0BEAF8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B21628();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData() + 20)) = 0;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7B213B4(void *a1)
{
  v3 = v1;
  sub_1D7B2167C(0, &qword_1EC9E4DA8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B21628();
  sub_1D7D31B1C();
  v12[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8);
  sub_1D7D318BC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData() + 20));
    v12[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7B21580(uint64_t a1)
{
  v2 = sub_1D7B21628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B215BC(uint64_t a1)
{
  v2 = sub_1D7B21628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7B21628()
{
  result = qword_1EE0C12E8[0];
  if (!qword_1EE0C12E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C12E8);
  }

  return result;
}

void sub_1D7B2167C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7B21628();
    v7 = a3(a1, &type metadata for MoreFromEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7B216F4()
{
  result = qword_1EC9E4DB0;
  if (!qword_1EC9E4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4DB0);
  }

  return result;
}

unint64_t sub_1D7B2174C()
{
  result = qword_1EE0C12D8;
  if (!qword_1EE0C12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C12D8);
  }

  return result;
}

unint64_t sub_1D7B217A4()
{
  result = qword_1EE0C12E0;
  if (!qword_1EE0C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C12E0);
  }

  return result;
}

uint64_t sub_1D7B217F8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a1(MEMORY[0x1E69E7CC0]);
  }

  v14[0] = a4;
  v14[1] = a5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = sub_1D7B218F0(v14, Strong, a7);
  swift_unknownObjectRelease();
  a1(v12);
}

uint64_t sub_1D7B218F0(id *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = sub_1D7D2B49C();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D7D29C6C();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *a1;
  sub_1D7B21EA8(0, &qword_1EC9E4DB8, MEMORY[0x1E69B5790]);
  v11 = sub_1D7D29C7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7D481C0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, *MEMORY[0x1E69B5738], v11);
  v17(v16 + v13, *MEMORY[0x1E69B5748], v11);
  v17(v16 + 2 * v13, *MEMORY[0x1E69B5768], v11);
  v17(v16 + 3 * v13, *MEMORY[0x1E69B5788], v11);
  v17(v16 + 4 * v13, *MEMORY[0x1E69B5760], v11);
  v30 = v30;
  v18 = sub_1D7BDE13C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D7D29C8C();
  sub_1D7B21EA8(0, &qword_1EC9E4DC0, MEMORY[0x1E69B57C8]);
  v19 = sub_1D7D2C33C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7D3B4E0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x1E69B57C0], v19);
  v25(v24 + v21, *MEMORY[0x1E69B57B8], v19);
  v26 = v31;
  *v10 = v30;
  v10[1] = v23;
  v10[2] = 0;
  (*(v7 + 104))(v10, *MEMORY[0x1E69B5718], v26);
  MEMORY[0x1DA7076C0](v10, v18);

  (*(v7 + 8))(v10, v26);
  (*(v33 + 104))(v32, *MEMORY[0x1E69D7FD8], v34);
  v38 = sub_1D7D28A3C();
  v39 = sub_1D7A108E4();
  v37 = v35;
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_1D7D2B09C();
  if (sub_1D7D29C4C())
  {
    v27 = sub_1D7D29C2C();
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v27;
}

uint64_t sub_1D7B21E4C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7B21EA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B21F4C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 72), *(a1 + 96));
  v1 = sub_1D7D2A88C();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      v4 = sub_1D7D30D4C();

      v5 = sub_1D7B22090();
      [v4 presentViewController:v5 animated:1 completion:0];
    }
  }
}

uint64_t sub_1D7B2201C()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

id sub_1D7B22090()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_1D7D2811C();

  v3 = [v1 bundleForClass_];
  sub_1D7D2811C();

  v4 = objc_allocWithZone(MEMORY[0x1E698CD00]);
  v5 = sub_1D7D3031C();

  v6 = sub_1D7D3031C();

  v7 = [v4 initWithTitle:v5 message:{v6, 0x80000001D7D73870}];

  v8 = v7;
  [v8 setStyle_];
  v9 = sub_1D7D3031C();
  v10 = [objc_opt_self() systemImageNamed_];

  [v8 setIconImage_];
  v11 = [objc_allocWithZone(MEMORY[0x1E698CD38]) initWithRequest_];

  v12 = [objc_allocWithZone(MEMORY[0x1E698CD30]) init];
  v13 = [objc_opt_self() systemGreenColor];
  [v12 setImageTintColor_];

  v14 = [objc_opt_self() configurationWithPointSize:6 weight:36.0];
  [v12 setImageSymbolConfiguration_];

  v15 = v12;
  [v11 setPreferredAppearance_];

  return v11;
}

uint64_t SearchableDelegate.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t SearchableDelegate.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t SearchableDelegate.__deallocating_deinit()
{
  sub_1D79C92AC(v0 + 16);

  return swift_deallocClassInstance();
}

id SearchableDelegate.search(with:)(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E69CE0B0]) initWithTotal:0 index:0];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1D7B22558(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E69CE0B0]) initWithTotal:0 index:0];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1D7B22708(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v5 = [objc_opt_self() whiteColor];

      return v5;
    }

    else
    {
      type metadata accessor for UIUserInterfaceStyle(0);
      result = sub_1D7D319FC();
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_opt_self() blackColor];
    v3 = [v2 colorWithAlphaComponent_];

    return v3;
  }

  return result;
}

id sub_1D7B227F4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 >= 3)
  {
    type metadata accessor for UIUserInterfaceStyle(0);
    result = sub_1D7D319FC();
    __break(1u);
  }

  else
  {
    v2 = [objc_opt_self() *off_1E84EAB10[v1]];

    return v2;
  }

  return result;
}

uint64_t sub_1D7B22A10(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D7B23BA8(0, a2, a3);
    v5 = sub_1D7D3141C();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v12);
      result = sub_1D7D31ABC();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D7B22B40(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D7D3167C())
    {
LABEL_3:
      sub_1D7B23374();
      v3 = sub_1D7D3141C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D7D3167C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA70EF00](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D7D311CC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D7B23408();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D7D311DC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1D7D311CC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D7B23408();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D7D311DC();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D7B22E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7B23BA8(0, &qword_1EC9E4DD8, sub_1D7B23320);
    v3 = sub_1D7D3141C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v10);
      result = sub_1D7D31ABC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D7B22FA4(uint64_t a1)
{
  v2 = sub_1D7D2B08C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1D7B23C08();
    v11 = sub_1D7D3141C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1D7B23C9C(&unk_1EE0BFEC0, MEMORY[0x1E69D7E00]);
      v18 = sub_1D7D302BC();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1D7B23C9C(&qword_1EE0BFEB8, MEMORY[0x1E69D7E00]);
          v25 = sub_1D7D3030C();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D7B232BC()
{
  result = qword_1EC9E4DC8;
  if (!qword_1EC9E4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4DC8);
  }

  return result;
}

unint64_t sub_1D7B23320()
{
  result = qword_1EC9E4DE0;
  if (!qword_1EC9E4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4DE0);
  }

  return result;
}

void sub_1D7B23374()
{
  if (!qword_1EC9E4DE8)
  {
    sub_1D7B23408();
    sub_1D7B23C9C(&qword_1EC9E4DF0, sub_1D7B23408);
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4DE8);
    }
  }
}

unint64_t sub_1D7B23408()
{
  result = qword_1EC9E7600;
  if (!qword_1EC9E7600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E7600);
  }

  return result;
}

uint64_t sub_1D7B2347C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D7B23BA8(0, a2, a3);
    v4 = sub_1D7D3141C();
    v5 = v4 + 56;
    while (1)
    {
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](0);
      result = sub_1D7D31ABC();
      v7 = result & ~(-1 << *(v4 + 32));
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if ((v10 & v9) == 0)
      {
        *(v5 + 8 * v8) = v10 | v9;
        v11 = *(v4 + 16);
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v13;
      }

      if (!--v3)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D7B23554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7B23B50();
    v3 = sub_1D7D3141C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D7D31A8C();

      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1D7D3197C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D7B236D8(uint64_t a1)
{
  v2 = sub_1D7D2B95C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1D7B23A68();
    v11 = sub_1D7D3141C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1D7B23C9C(&qword_1EC9E4E18, MEMORY[0x1E69D83C0]);
      v18 = sub_1D7D302BC();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1D7B23C9C(&qword_1EC9E4E20, MEMORY[0x1E69D83C0]);
          v25 = sub_1D7D3030C();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D7B23A14()
{
  result = qword_1EC9E7220;
  if (!qword_1EC9E7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7220);
  }

  return result;
}

void sub_1D7B23A68()
{
  if (!qword_1EC9E4E10)
  {
    sub_1D7D2B95C();
    sub_1D7B23C9C(&qword_1EC9E4E18, MEMORY[0x1E69D83C0]);
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4E10);
    }
  }
}

unint64_t sub_1D7B23AFC()
{
  result = qword_1EE0C53A0;
  if (!qword_1EE0C53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C53A0);
  }

  return result;
}

void sub_1D7B23B50()
{
  if (!qword_1EE0BEC28)
  {
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEC28);
    }
  }
}

void sub_1D7B23BA8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7D3142C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7B23C08()
{
  if (!qword_1EE0BEC30)
  {
    sub_1D7D2B08C();
    sub_1D7B23C9C(&unk_1EE0BFEC0, MEMORY[0x1E69D7E00]);
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEC30);
    }
  }
}

uint64_t sub_1D7B23C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7B23CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D7D2F51C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2F4EC();
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69B6360])
  {
    return sub_1D799CC84(v1 + 16, a1);
  }

  if (v8 != *MEMORY[0x1E69B6350])
  {
    if (v8 != *MEMORY[0x1E69B6340] && v8 != *MEMORY[0x1E69B6368] && v8 != *MEMORY[0x1E69B6358] && v8 != *MEMORY[0x1E69B6348])
    {
      sub_1D799CC84(v1 + 16, a1);
      return (*(v4 + 8))(v7, v3);
    }

    return sub_1D799CC84(v1 + 16, a1);
  }

  sub_1D7B29168(v1 + 56, &v14);
  if (v15)
  {
    return sub_1D799D69C(&v14, a1);
  }

  result = sub_1D799CC84(v1 + 16, a1);
  if (v15)
  {
    return sub_1D7B291F8(&v14);
  }

  return result;
}

uint64_t sub_1D7B23EB0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1D7B28E5C(0, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v52 - v10;
  v12 = sub_1D7D2F4FC();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == *MEMORY[0x1E69B6328])
  {
    v52[4] = a3;
    (*(v13 + 96))(v17, v12);
    v19 = *(v17 + 1);
    sub_1D7B28B9C(0, v20);
    v22 = v21;
    v23 = *(v21 + 80);
    v53 = v17;
    v24 = &v17[v23];
    v26 = *v24;
    v25 = *(v24 + 1);
    v52[2] = v26;
    v52[3] = v25;
    v52[1] = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v19();
    if (a4)
    {
      a4 = sub_1D7D2B0CC();
      sub_1D7D2B0AC();
    }

    v32 = *(v22 + 64);
    v33 = sub_1D7D2FF9C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v34 = sub_1D7D2F51C();
    (*(*(v34 - 8) + 8))(&v53[v32], v34);
    return v33;
  }

  if (v18 == *MEMORY[0x1E69B6318])
  {
    (*(v13 + 96))(v17, v12);
    sub_1D7B28A64();
    v28 = v27;
    v29 = *(v27 + 48);
    v53 = v17;
    sub_1D7B28B1C(&v17[v29], v11);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    if (a4)
    {
      v30 = sub_1D7D2B0CC();
      sub_1D7D2B0AC();
    }

    else
    {
      v30 = 0;
    }

    v39 = *(v28 + 64);
    v33 = sub_1D7D2FFFC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1D7B28F78(v11, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
    v40 = sub_1D7D2F51C();
    (*(*(v40 - 8) + 8))(&v53[v39], v40);
    return v33;
  }

  if (v18 == *MEMORY[0x1E69B62F8])
  {
    (*(v13 + 96))(v17, v12);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    if (a4)
    {
      v31 = sub_1D7D2B0CC();
      sub_1D7D2B0AC();
    }

    else
    {
      v31 = 0;
    }

    sub_1D7B28964(0, &qword_1EC9E4E28, &qword_1EC9E4E30);
    v46 = *(v45 + 48);
    v33 = sub_1D7D2FFBC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v47 = sub_1D7D2F51C();
    (*(*(v47 - 8) + 8))(&v17[v46], v47);
    return v33;
  }

  if (v18 != *MEMORY[0x1E69B6320])
  {
    if (v18 == *MEMORY[0x1E69B6310])
    {
      (*(v13 + 96))(v17, v12);
      v41 = *v17;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      if (a4)
      {
        a4 = sub_1D7D2B0CC();
      }

      sub_1D79E1154();
      v43 = *(v42 + 48);
      v44 = sub_1D7D2FFEC();
    }

    else
    {
      if (v18 == *MEMORY[0x1E69B6300])
      {
        (*(v13 + 96))(v17, v12);
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        if (a4)
        {
          a4 = sub_1D7D2B0CC();
        }

        sub_1D7B28964(0, &qword_1EC9E4E38, &qword_1EE0BF070);
        v43 = *(v48 + 48);
        v33 = sub_1D7D2FFCC();
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      if (v18 != *MEMORY[0x1E69B6308])
      {
        sub_1D7D2B3EC();
        v33 = sub_1D7D2B3DC();
        (*(v13 + 8))(v17, v12);
        return v33;
      }

      (*(v13 + 96))(v17, v12);
      v41 = *v17;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      if (a4)
      {
        a4 = sub_1D7D2B0CC();
      }

      sub_1D7B289E0();
      v43 = *(v51 + 48);
      v44 = sub_1D7D2FFDC();
    }

    v33 = v44;

LABEL_28:
    v49 = sub_1D7D2F51C();
    (*(*(v49 - 8) + 8))(&v17[v43], v49);
    return v33;
  }

  (*(v13 + 96))(v17, v12);
  v35 = *v17;
  sub_1D7A4AC40();
  v37 = *(v36 + 48);
  v38 = sub_1D7D2F51C();
  (*(*(v38 - 8) + 8))(&v17[v37], v38);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (a4)
  {
    sub_1D7D2B0AC();
  }

  v33 = sub_1D7D2FFAC();

  swift_unknownObjectRelease();
  return v33;
}

uint64_t sub_1D7B24664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2B49C();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B28DDC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B28E5C(0, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v49 - v21;
  v23 = sub_1D7D2F4FC();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a1, v23, v26);
  if ((*(v24 + 88))(v28, v23) == *MEMORY[0x1E69B6318])
  {
    (*(v24 + 96))(v28, v23);
    swift_unknownObjectRelease();
    if (a2)
    {
      sub_1D7D2B0FC();
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v31 = v52;
    v32 = *(v52 + 56);
    v32(v22, v29, 1, v4);
    (*(v31 + 104))(v18, *MEMORY[0x1E69D7FB8], v4);
    v32(v18, 0, 1, v4);
    v33 = *(v8 + 48);
    v34 = MEMORY[0x1E69D7FF0];
    sub_1D7B28EB0(v22, v11, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
    sub_1D7B28EB0(v18, &v11[v33], &qword_1EC9E4ED8, v34);
    v35 = *(v31 + 48);
    if (v35(v11, 1, v4) == 1)
    {
      v36 = MEMORY[0x1E69D7FF0];
      sub_1D7B28F78(v18, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
      sub_1D7B28F78(v22, &qword_1EC9E4ED8, v36, sub_1D7B28E5C);
      if (v35(&v11[v33], 1, v4) == 1)
      {
        sub_1D7B28F78(v11, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
        v30 = 1;
LABEL_13:
        sub_1D7B28A64();
        v45 = *(v44 + 48);
        v46 = *(v44 + 64);
        v47 = sub_1D7D2F51C();
        (*(*(v47 - 8) + 8))(&v28[v46], v47);
        sub_1D7B28F78(&v28[v45], &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
        return v30 & 1;
      }
    }

    else
    {
      v37 = v51;
      sub_1D7B28EB0(v11, v51, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
      if (v35(&v11[v33], 1, v4) != 1)
      {
        v39 = v52;
        v40 = &v11[v33];
        v41 = v50;
        (*(v52 + 32))(v50, v40, v4);
        sub_1D7B29120(&qword_1EC9E4EE0, MEMORY[0x1E69D7FF0]);
        v30 = sub_1D7D3030C();
        v42 = *(v39 + 8);
        v42(v41, v4);
        v43 = MEMORY[0x1E69D7FF0];
        sub_1D7B28F78(v18, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
        sub_1D7B28F78(v22, &qword_1EC9E4ED8, v43, sub_1D7B28E5C);
        v42(v51, v4);
        sub_1D7B28F78(v11, &qword_1EC9E4ED8, v43, sub_1D7B28E5C);
        goto LABEL_13;
      }

      v38 = MEMORY[0x1E69D7FF0];
      sub_1D7B28F78(v18, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
      sub_1D7B28F78(v22, &qword_1EC9E4ED8, v38, sub_1D7B28E5C);
      (*(v52 + 8))(v37, v4);
    }

    sub_1D7B28F1C(v11);
    v30 = 0;
    goto LABEL_13;
  }

  (*(v24 + 8))(v28, v23);
  v30 = 0;
  return v30 & 1;
}

void sub_1D7B24D30(void *a1)
{
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v4 = sub_1D7D2A87C();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 windows];

  sub_1D7992EFC(0, &qword_1EC9E4EC0);
  v7 = sub_1D7D3063C();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_25:

    return;
  }

  if (!sub_1D7D3167C())
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA70EF00](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 rootViewController];

  if (!v10)
  {
    return;
  }

  v6 = sub_1D7D30D4C();

  sub_1D7992EFC(0, &qword_1EC9E4EC8);
  sub_1D7D30D7C();
  if (!v22 || (v3 = [v22 selectedViewController], v22, !v3))
  {

    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    return;
  }

  v12 = v11;
  v13 = [v11 navigationBar];
  v14 = [v13 topItem];

  v15 = [v14 overflowPresentationSource];
  if (v15)
  {
LABEL_20:
    [a1 setModalPresentationStyle_];
    v21 = [a1 popoverPresentationController];
    [v21 setSourceItem_];

    [v6 presentViewController:a1 animated:1 completion:0];
    swift_unknownObjectRelease();
    return;
  }

  v16 = [v12 navigationBar];
  v7 = sub_1D7D30CAC();

  if (!(v7 >> 62))
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_31:

    return;
  }

LABEL_30:
  v17 = sub_1D7D3167C();
  if (!v17)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v20 = MEMORY[0x1DA70EF00](v19, v7);
    goto LABEL_19;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v7 + 8 * v19 + 32);
LABEL_19:
    v15 = v20;

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1D7B250AC(id a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a2 && (v8 = sub_1D7D2B0AC()) != 0)
  {
    v9 = v8;
    [a1 setModalPresentationStyle_];
    v10 = [a1 popoverPresentationController];
    if (v10)
    {
      v11 = v10;
      [v10 setSourceItem_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    [a1 setModalPresentationStyle_];
    v12 = [a1 popoverPresentationController];
    if (v12)
    {
      v13 = v12;
      if (a2)
      {
        v14 = sub_1D7D2B0CC();
      }

      else
      {
        v14 = 0;
      }

      [v13 setSourceView_];
    }

    v15 = [a1 popoverPresentationController];
    if (v15)
    {
      v16 = v15;
      if (a2 && (v17 = &v30, sub_1D7D2B0BC(), (v34 & 1) == 0))
      {
        v18 = v31;
        v19 = v32;
        v20 = v33;
      }

      else
      {
        v17 = MEMORY[0x1E695F050];
        v18 = *(MEMORY[0x1E695F050] + 8);
        v19 = *(MEMORY[0x1E695F050] + 16);
        v20 = *(MEMORY[0x1E695F050] + 24);
      }

      [v16 setSourceRect_];
    }
  }

  v21 = [a1 popoverPresentationController];
  [v21 setCanOverlapSourceViewRect_];

  __swift_project_boxed_opaque_existential_1((v4 + 152), *(v4 + 176));
  v22 = sub_1D7D2A87C();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v24 = [v22 windows];

  sub_1D7992EFC(0, &qword_1EC9E4EC0);
  v25 = sub_1D7D3063C();

  if (v25 >> 62)
  {
    if (sub_1D7D3167C())
    {
      goto LABEL_20;
    }

LABEL_29:

    return;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA70EF00](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v26 = *(v25 + 32);
  }

  v27 = v26;

  v28 = [v27 rootViewController];

  if (v28)
  {
    v29 = sub_1D7D30D4C();

    [v29 presentViewController:a1 animated:1 completion:0];
  }
}

uint64_t sub_1D7B253D0()
{
  v1 = v0;
  v2 = sub_1D7D2F4FC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 != *MEMORY[0x1E69B6328])
  {
    if (v8 == *MEMORY[0x1E69B6318])
    {
      (*(v3 + 96))(v7, v2);
      swift_unknownObjectRelease();
      sub_1D7B28A64();
      v15 = *(v14 + 48);
      v16 = *(v14 + 64);
      v17 = sub_1D7D2F51C();
      (*(*(v17 - 8) + 8))(v7 + v16, v17);
      sub_1D7B28F78(v7 + v15, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
    }

    else
    {
      if (v8 == *MEMORY[0x1E69B62F8])
      {
        (*(v3 + 96))(v7, v2);
        swift_unknownObjectRelease();
        sub_1D7B28964(0, &qword_1EC9E4E28, &qword_1EC9E4E30);
      }

      else if (v8 == *MEMORY[0x1E69B6320])
      {
        (*(v3 + 96))(v7, v2);

        sub_1D7A4AC40();
      }

      else
      {
        if (v8 != *MEMORY[0x1E69B6310])
        {
          if (v8 == *MEMORY[0x1E69B6300])
          {
            (*(v3 + 96))(v7, v2);
            v24 = *v7;
            sub_1D7B28964(0, &qword_1EC9E4E38, &qword_1EE0BF070);
            v26 = *(v25 + 48);
            v27 = [v24 isDeprecated];
            swift_unknownObjectRelease();
            v13 = v27 ^ 1;
            v28 = sub_1D7D2F51C();
            (*(*(v28 - 8) + 8))(v7 + v26, v28);
          }

          else if (v8 == *MEMORY[0x1E69B6308])
          {
            (*(v3 + 96))(v7, v2);
            v29 = *v7;
            sub_1D7B289E0();
            v31 = *(v30 + 48);
            v32 = [sub_1D7D30CCC() isDeprecated];
            swift_unknownObjectRelease();

            v13 = v32 ^ 1;
            v33 = sub_1D7D2F51C();
            (*(*(v33 - 8) + 8))(v7 + v31, v33);
          }

          else
          {
            (*(v3 + 8))(v7, v2);
            v13 = 0;
          }

          return v13 & 1;
        }

        (*(v3 + 96))(v7, v2);

        sub_1D79E1154();
      }

      v21 = *(v20 + 48);
      v22 = sub_1D7D2F51C();
      (*(*(v22 - 8) + 8))(v7 + v21, v22);
    }

    v13 = 1;
    return v13 & 1;
  }

  (*(v3 + 96))(v7, v2);
  v9 = *v7;

  sub_1D7B28B9C(0, v10);
  v12 = v11;

  if ([v9 respondsToSelector_])
  {
    [v9 role];
    v13 = sub_1D7D30BAC();
  }

  else
  {
    v13 = 1;
  }

  swift_unknownObjectRelease();
  v18 = *(v12 + 64);
  v19 = sub_1D7D2F51C();
  (*(*(v19 - 8) + 8))(v7 + v18, v19);
  return v13 & 1;
}

void sub_1D7B258DC(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = a8;
  v88 = a6;
  v89 = a7;
  v90 = a2;
  sub_1D7B28E5C(0, &qword_1EC9E4EE8, MEMORY[0x1E69B6650]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v83 - v13;
  sub_1D7B28E5C(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v83 - v17;
  v19 = sub_1D7D2F4FC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v83 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v34 = (&v83 - v33);
  if (a1)
  {
    v85 = v32;
    v86 = v14;
    v35 = a5;
    if (sub_1D7D3034C() == 0xD000000000000024 && 0x80000001D7D73B20 == v36)
    {
    }

    else
    {
      v45 = sub_1D7D3197C();

      if ((v45 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    (*(v20 + 16))(v34, v35, v19);
    if ((*(v20 + 88))(v34, v19) != *MEMORY[0x1E69B6320])
    {
      (*(v20 + 8))(v34, v19);
      v58 = v35;
      if (a4)
      {
        goto LABEL_12;
      }

LABEL_14:
      if (v90)
      {
        swift_getObjectType();
        v69 = a1;
        sub_1D7D2C4AC();
        (*(v20 + 16))(v29, v58, v19);
        v70 = v69;
        v71 = v86;
        sub_1D7D2FC5C();
        v72 = sub_1D7D2FC6C();
        (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
        sub_1D7D2A78C();
        sub_1D7B28F78(v71, &qword_1EC9E4EE8, MEMORY[0x1E69B6650], sub_1D7B28E5C);
      }

      else
      {
        v73 = a1;
        v74 = sub_1D7D30C4C();
        v75 = v85;
        (*(v20 + 16))(v85, v58, v19);
        sub_1D7992EFC(0, &qword_1EE0BEC80);
        v76 = sub_1D7D312CC();
        if (os_log_type_enabled(v76, v74))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v92 = v78;
          *v77 = 136315138;
          sub_1D7B29120(&qword_1EC9E4EF0, MEMORY[0x1E69B6330]);
          v79 = sub_1D7D3190C();
          v81 = v80;
          (*(v20 + 8))(v75, v19);
          v82 = sub_1D7B06D4C(v79, v81, &v92);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_1D7987000, v76, v74, "Sharing did not complete; skipping completion for %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1DA7102E0](v78, -1, -1);
          MEMORY[0x1DA7102E0](v77, -1, -1);
        }

        else
        {

          (*(v20 + 8))(v75, v19);
        }
      }

      return;
    }

    (*(v20 + 96))(v34, v19);
    v46 = *v34;
    sub_1D7A4AC40();
    v48 = *(v47 + 48);
    v49 = sub_1D7D2F51C();
    (*(*(v49 - 8) + 8))(v34 + v48, v49);
    v50 = sub_1D7D3087C();
    (*(*(v50 - 8) + 56))(v18, 1, 1, v50);
    sub_1D7D3084C();
    v84 = v20;
    v51 = v88;

    v52 = v46;
    v53 = v89;

    v54 = a4;
    v55 = sub_1D7D3083C();
    v56 = swift_allocObject();
    v57 = MEMORY[0x1E69E85E0];
    *(v56 + 16) = v55;
    *(v56 + 24) = v57;
    *(v56 + 32) = v51;
    *(v56 + 40) = v52;
    v20 = v84;
    *(v56 + 48) = v53;
    *(v56 + 56) = v90 & 1;
    *(v56 + 64) = a4;
    sub_1D7AF94C0(0, 0, v18, &unk_1D7D4E780, v56);

LABEL_11:
    v58 = v35;
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (a4)
  {
LABEL_12:
    v59 = a4;
    sub_1D7D30C4C();
    sub_1D7B28FD8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1D7D3B4E0;
    sub_1D7B29120(&qword_1EC9E4EF0, MEMORY[0x1E69B6330]);
    v61 = sub_1D7D3190C();
    v63 = v62;
    v64 = MEMORY[0x1E69E6158];
    *(v60 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1D79D6AE0();
    *(v60 + 64) = v65;
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    v92 = 0;
    v93 = 0xE000000000000000;
    v91 = a4;
    sub_1D798F168(0, &qword_1EE0BE7E0);
    sub_1D7D315DC();
    v66 = v92;
    v67 = v93;
    *(v60 + 96) = v64;
    *(v60 + 104) = v65;
    *(v60 + 72) = v66;
    *(v60 + 80) = v67;
    sub_1D7992EFC(0, &qword_1EE0BEC80);
    v68 = sub_1D7D312CC();
    sub_1D7D29AAC();

    return;
  }

  v37 = sub_1D7D30C4C();
  (*(v20 + 16))(v23, a5, v19);
  sub_1D7992EFC(0, &qword_1EE0BEC80);
  v38 = sub_1D7D312CC();
  if (os_log_type_enabled(v38, v37))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v92 = v40;
    *v39 = 136315138;
    sub_1D7B29120(&qword_1EC9E4EF0, MEMORY[0x1E69B6330]);
    v41 = sub_1D7D3190C();
    v43 = v42;
    (*(v20 + 8))(v23, v19);
    v44 = sub_1D7B06D4C(v41, v43, &v92);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1D7987000, v38, v37, "Sharing did not return an activity type; skipping completion for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1DA7102E0](v40, -1, -1);
    MEMORY[0x1DA7102E0](v39, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_1D7B262EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  sub_1D7D3084C();
  *(v8 + 48) = sub_1D7D3083C();
  v10 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7B2638C, v10, v9);
}

uint64_t sub_1D7B2638C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  sub_1D7B2641C(v4, v3, v2, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D7B2641C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v69 = a3;
  v73 = sub_1D7D27E1C();
  v6 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v7);
  v77 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v71 = &v65[-v11];
  v12 = sub_1D7D2B49C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7B28DDC();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v65[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7B28E5C(0, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v67 = &v65[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v65[-v27];
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v65[-v31];
  v78 = sub_1D7D27E2C();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v33);
  v74 = a1;
  v75 = &v65[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = v6;
  if (a2)
  {
    sub_1D7D2B0FC();
    v35 = *(v13 + 56);
    v35(v32, 0, 1, v12);
  }

  else
  {
    v35 = *(v13 + 56);
    v35(v32, 1, 1, v12);
  }

  (*(v13 + 104))(v28, *MEMORY[0x1E69D7FD8], v12);
  v35(v28, 0, 1, v12);
  v36 = v13;
  v37 = *(v18 + 48);
  v38 = MEMORY[0x1E69D7FF0];
  sub_1D7B28EB0(v32, v21, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
  sub_1D7B28EB0(v28, &v21[v37], &qword_1EC9E4ED8, v38);
  v39 = v36;
  v40 = *(v36 + 48);
  if (v40(v21, 1, v12) == 1)
  {
    v41 = MEMORY[0x1E69D7FF0];
    sub_1D7B28F78(v28, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
    sub_1D7B28F78(v32, &qword_1EC9E4ED8, v41, sub_1D7B28E5C);
    v42 = v40(&v21[v37], 1, v12);
    v43 = v72;
    if (v42 == 1)
    {
      sub_1D7B28F78(v21, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
      v44 = MEMORY[0x1E6997388];
      v45 = v73;
      v46 = v71;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v47 = v67;
  sub_1D7B28EB0(v21, v67, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
  if (v40(&v21[v37], 1, v12) == 1)
  {
    v48 = v47;
    v49 = MEMORY[0x1E69D7FF0];
    sub_1D7B28F78(v28, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
    sub_1D7B28F78(v32, &qword_1EC9E4ED8, v49, sub_1D7B28E5C);
    (*(v39 + 8))(v48, v12);
    v43 = v72;
LABEL_9:
    sub_1D7B28F1C(v21);
    v45 = v73;
    v46 = v71;
LABEL_10:
    v44 = MEMORY[0x1E6997390];
    goto LABEL_11;
  }

  (*(v36 + 32))(v16, &v21[v37], v12);
  sub_1D7B29120(&qword_1EC9E4EE0, MEMORY[0x1E69D7FF0]);
  v66 = sub_1D7D3030C();
  v63 = *(v36 + 8);
  v63(v16, v12);
  v64 = MEMORY[0x1E69D7FF0];
  sub_1D7B28F78(v28, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0], sub_1D7B28E5C);
  sub_1D7B28F78(v32, &qword_1EC9E4ED8, v64, sub_1D7B28E5C);
  v63(v47, v12);
  sub_1D7B28F78(v21, &qword_1EC9E4ED8, v64, sub_1D7B28E5C);
  v43 = v72;
  v45 = v73;
  v46 = v71;
  if ((v66 & 1) == 0)
  {
    goto LABEL_10;
  }

  v44 = MEMORY[0x1E6997388];
LABEL_11:
  v50 = v70;
  v51 = v75;
  (*(v76 + 104))(v75, *v44, v78);
  v52 = *(v43 + 104);
  v53 = MEMORY[0x1E6997360];
  v54 = MEMORY[0x1E6997368];
  if (v68)
  {
    v54 = MEMORY[0x1E6997358];
  }

  if (v69)
  {
    v54 = MEMORY[0x1E6997360];
  }

  v52(v46, *v54, v45);
  if (*(v50 + 192))
  {
    v55 = *(v50 + 200);
    ObjectType = swift_getObjectType();
    (*(v55 + 72))(v74, v51, v46, ObjectType, v55);
  }

  v52(v77, *v53, v45);
  sub_1D7B29120(&qword_1EC9E4EF8, MEMORY[0x1E6997370]);
  sub_1D7D305EC();
  sub_1D7D305EC();
  if (v81 == v79 && v82 == v80)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_1D7D3197C();
  }

  v58 = *(v43 + 8);
  v58(v77, v45);

  if (v57)
  {
    v59 = [v74 identifier];
    sub_1D7D3034C();

    sub_1D7B26DD4();

    v60 = [objc_opt_self() defaultCenter];
    v61 = sub_1D7D30E7C();
    [v60 postNotificationName:v61 object:0];
  }

  v58(v46, v45);
  return (*(v76 + 8))(v75, v78);
}

uint64_t sub_1D7B26D18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1D7D3063C();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_1D7B26DD4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  v1 = sub_1D7D2A88C();
  if (v1 && (v2 = v1, v3 = [v1 rootViewController], v2, v3))
  {
    v4 = sub_1D7D30D4C();

    sub_1D7D27E0C();
  }

  else
  {
    sub_1D7992EFC(0, &qword_1EE0BEC80);
    v4 = sub_1D7D312CC();
    sub_1D7D30C6C();
    sub_1D7D29AAC();
  }
}

uint64_t sub_1D7B26EE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D7B291F8(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B26FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a2;
  v65 = a1;
  v7 = sub_1D7D2F51C();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v55 - v12;
  v13 = sub_1D7D2F4FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v55 - v20);
  if (a4 && (sub_1D7D2B0DC(), sub_1D798F168(0, &qword_1EE0C00A0), sub_1D7D28A3C(), swift_dynamicCast()))
  {
    v22 = v70[0];
  }

  else
  {
    v22 = *(v4 + 144);
  }

  sub_1D7B23CF0(v70);
  v23 = sub_1D7B23EB0(a3, v70, v22, a4);
  if (v23)
  {
    v58 = v22;
    v59 = v7;
    v61 = a4;
    v62 = v4;
    v24 = v23;
    v25 = [v23 activityItems];
    v26 = a3;
    v27 = [v24 activities];
    sub_1D7992EFC(0, &qword_1EC9E4EB0);
    sub_1D7D3063C();

    v28 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v29 = sub_1D7D3062C();

    v30 = [v28 initWithActivityItems:v25 applicationActivities:v29];

    v57 = v24;
    v31 = [v24 excludedActivityTypes];
    v56 = v30;
    [v30 setExcludedActivityTypes_];

    v32 = *(v14 + 16);
    v60 = v26;
    v32(v21, v26, v13);
    if ((*(v14 + 88))(v21, v13) == *MEMORY[0x1E69B6320])
    {
      (*(v14 + 96))(v21, v13);
      v33 = *v21;
      sub_1D7A4AC40();
      v35 = v59;
      (*(v68 + 8))(v21 + *(v34 + 48), v59);
      if (*(v62 + 192))
      {
        v36 = *(v62 + 200);
        ObjectType = swift_getObjectType();
        (*(v36 + 64))(v33, ObjectType, v36);
      }
    }

    else
    {
      (*(v14 + 8))(v21, v13);
      v35 = v59;
    }

    v39 = v60;
    v32(v17, v60, v13);
    v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v41 = (v63 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    (*(v14 + 32))(v43 + v40, v17, v13);
    *(v43 + v41) = v62;
    v44 = v61;
    *(v43 + v42) = v61;
    v45 = v39;
    v46 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
    v47 = v64;
    *v46 = v65;
    v46[1] = v47;
    aBlock[4] = sub_1D7B28CE4;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7B26D18;
    aBlock[3] = &block_descriptor_21;
    v48 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    v49 = v56;
    [v56 setCompletionWithItemsHandler_];
    _Block_release(v48);
    v50 = v66;
    sub_1D7D2F4EC();
    v52 = v67;
    v51 = v68;
    (*(v68 + 104))(v67, *MEMORY[0x1E69B6368], v35);
    LOBYTE(v48) = sub_1D7D2F50C();
    v53 = *(v51 + 8);
    v53(v52, v35);
    v53(v50, v35);
    if (v48)
    {
      sub_1D7B24D30(v49);
    }

    else
    {
      v54 = sub_1D7B24664(v45, v44);
      sub_1D7B250AC(v49, v44, v54 & 1);
    }

    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
  }
}

uint64_t sub_1D7B275F4(uint64_t a1)
{
  v2 = sub_1D7D2F51C();
  v3 = *(v2 - 8);
  v110 = v2;
  v111 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v107 - v9;
  v11 = sub_1D7D2F22C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B28E5C(0, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v107 - v22;
  v23 = sub_1D7D2F4FC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1D7B253D0() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(v24 + 16))(v27, a1, v23);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == *MEMORY[0x1E69B6328])
  {
    (*(v24 + 96))(v27, v23);
    v29 = *v27;

    sub_1D7B28B9C(0, v30);
    v32 = *(v31 + 64);

    v33 = v27;
    if ([v29 isPaid])
    {
      v34 = [v29 sourceChannel];
      if (v34)
      {
        v35 = v34;
        v36 = *(v108 + 96);
        v37 = [v36 purchaseProvider];
        if ([swift_unknownObjectRetain() tagType] == 3)
        {
          v38 = [v35 asSection];
          if (!v38 || (v39 = [v38 parentID], swift_unknownObjectRelease(), !v39))
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_25;
          }
        }

        else
        {
          v39 = [v35 identifier];
        }

        v51 = sub_1D7D3034C();
        v53 = v52;

        v54 = [v37 purchasedTagIDs];
        v55 = sub_1D7D309AC();

        LOBYTE(v54) = sub_1D7D053C8(v51, v53, v55);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        if (v54)
        {
          v45 = 1;
LABEL_82:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*(v111 + 8))(v33 + v32, v110);
          return v45 & 1;
        }

LABEL_25:
        v56 = &off_1E84EC000;
        v57 = [objc_msgSend(v36 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v57, v57 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
        }

        v115 = v113;
        v116 = v114;
        if (*(&v114 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v66 = v112;
            v67 = [v112 integerValue];
            if (v67 == -1)
            {

              goto LABEL_79;
            }

            v68 = v67;
LABEL_42:
            if (objc_getAssociatedObject(v57, ~v68))
            {
              sub_1D7D3138C();
              swift_unknownObjectRelease();
            }

            else
            {
              v113 = 0u;
              v114 = 0u;
            }

            v115 = v113;
            v116 = v114;
            if (*(&v114 + 1))
            {
              sub_1D7992EFC(0, &qword_1EE0BECA0);
              if (swift_dynamicCast())
              {
                v72 = v112;
                v73 = [v72 integerValue];

                v74 = v73 ^ v68;
                v56 = &off_1E84EC000;
                if (v74)
                {
                  goto LABEL_79;
                }

                goto LABEL_60;
              }
            }

            else
            {
              sub_1D7B28F78(&v115, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, sub_1D799956C);
            }

            if ((v68 & 1) == 0)
            {
LABEL_60:
              v45 = 0;
              goto LABEL_82;
            }

LABEL_79:
            v91 = [objc_msgSend(v36 v56[340])];
            swift_unknownObjectRelease();
            v92 = [v35 identifier];
            if (!v92)
            {
              sub_1D7D3034C();
              v92 = sub_1D7D3031C();
            }

            v45 = [v91 containsTagID_];

            goto LABEL_82;
          }
        }

        else
        {
          sub_1D7B28F78(&v115, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, sub_1D799956C);
        }

        v66 = 0;
        v68 = 0;
        goto LABEL_42;
      }

      swift_unknownObjectRelease();
      (*(v111 + 8))(v27 + v32, v110);
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    (*(v111 + 8))(v27 + v32, v110);
    goto LABEL_17;
  }

  if (v28 == *MEMORY[0x1E69B6318])
  {
    (*(v24 + 96))(v27, v23);
    v40 = *v27;
    sub_1D7B28A64();
    v42 = *(v41 + 64);
    v43 = v109;
    sub_1D7B28B1C(v27 + *(v41 + 48), v109);
    if ([v40 isPaid])
    {
      sub_1D7B28EB0(v43, v19, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0]);
      if ((*(v12 + 48))(v19, 1, v11) == 1)
      {
        sub_1D7B28F78(v19, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
        goto LABEL_28;
      }

      (*(v12 + 32))(v15, v19, v11);
      v58 = sub_1D7D2F21C();
      (*(v12 + 8))(v15, v11);
      if ((v58 & 1) == 0)
      {
LABEL_28:
        v59 = [objc_msgSend(*(v108 + 96) bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v59, v59 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
        }

        v115 = v113;
        v116 = v114;
        if (*(&v114 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          v69 = v42;
          if (swift_dynamicCast())
          {
            v70 = v112;
            v71 = [v112 integerValue];
            if (v71 == -1)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v69 = v42;
          sub_1D7B28F78(&v115, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, sub_1D799956C);
        }

        v70 = 0;
        v71 = 0;
LABEL_51:
        if (objc_getAssociatedObject(v59, ~v71))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
        }

        v115 = v113;
        v116 = v114;
        if (*(&v114 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v77 = v112;
            v78 = [v112 integerValue];

            swift_unknownObjectRelease();
            sub_1D7B28F78(v109, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);

            v45 = (v78 ^ v71) & 1;
LABEL_69:
            (*(v111 + 8))(v27 + v69, v110);
            return v45 & 1;
          }
        }

        else
        {
          sub_1D7B28F78(&v115, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, sub_1D799956C);
        }

LABEL_68:
        swift_unknownObjectRelease();

        sub_1D7B28F78(v109, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
        v45 = v71 & 1;
        goto LABEL_69;
      }
    }

    sub_1D7B28F78(v43, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0], sub_1D7B28E5C);
    swift_unknownObjectRelease();
    (*(v111 + 8))(v27 + v42, v110);
LABEL_17:
    v45 = 1;
    return v45 & 1;
  }

  if (v28 == *MEMORY[0x1E69B62F8])
  {
    (*(v24 + 96))(v27, v23);
    swift_unknownObjectRelease();
    sub_1D7B28964(0, &qword_1EC9E4E28, &qword_1EC9E4E30);
    (*(v111 + 8))(v27 + *(v44 + 48), v110);
    v45 = 1;
    return v45 & 1;
  }

  v46 = v27;
  if (v28 == *MEMORY[0x1E69B6320])
  {
    (*(v24 + 96))(v27, v23);
    v47 = *v27;
    sub_1D7A4AC40();
    v49 = *(v48 + 48);
    __swift_project_boxed_opaque_existential_1((v108 + 104), *(v108 + 128));
    v50 = v47;
    v45 = sub_1D7D2FB3C();

    (*(v111 + 8))(v27 + v49, v110);
    return v45 & 1;
  }

  if (v28 == *MEMORY[0x1E69B6310])
  {
    (*(v24 + 96))(v27, v23);
    v60 = *v27;
    v61 = *(v108 + 96);
    v62 = [*v27 sourceChannel];
    v63 = [v61 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v64 = [v62 asSection];
      if (!v64 || (v65 = [v64 parentID], swift_unknownObjectRelease(), !v65))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_73;
      }
    }

    else
    {
      v65 = [v62 identifier];
    }

    v79 = sub_1D7D3034C();
    v81 = v80;

    v82 = [v63 purchasedTagIDs];
    v83 = sub_1D7D309AC();

    LOBYTE(v82) = sub_1D7D053C8(v79, v81, v83);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v82)
    {
      swift_unknownObjectRelease();
LABEL_107:

      v45 = 1;
LABEL_109:
      v105 = v110;
      v104 = v111;
      sub_1D79E1154();
      (*(v104 + 8))(v46 + *(v106 + 48), v105);
      return v45 & 1;
    }

LABEL_73:
    v84 = [objc_msgSend(v61 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v84, v84 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v113 = 0u;
      v114 = 0u;
    }

    v115 = v113;
    v116 = v114;
    v94 = MEMORY[0x1E69E7CA0];
    if (*(&v114 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v95 = v112;
        v96 = [v112 integerValue];
        if (v96 == -1)
        {

          v46 = v27;
          goto LABEL_104;
        }

        v97 = v96;
LABEL_92:
        if (objc_getAssociatedObject(v84, ~v97))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
        }

        v115 = v113;
        v116 = v114;
        if (*(&v114 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v98 = v112;
            v99 = [v98 integerValue];

            v46 = v27;
            if ((v99 ^ v97))
            {
LABEL_104:
              v100 = [objc_msgSend(v61 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v101 = [v62 identifier];
              if (!v101)
              {
                sub_1D7D3034C();
                v101 = sub_1D7D3031C();
              }

              v102 = [v100 containsTagID_];

              swift_unknownObjectRelease();
              if (v102)
              {
                goto LABEL_107;
              }

LABEL_108:
              v103 = [v60 isPaid];

              v45 = v103 ^ 1;
              goto LABEL_109;
            }

LABEL_101:
            swift_unknownObjectRelease();
            goto LABEL_108;
          }
        }

        else
        {
          sub_1D7B28F78(&v115, &qword_1EE0BE7A0, v94 + 8, sub_1D799956C);
        }

        v46 = v27;
        if (v97)
        {
          goto LABEL_104;
        }

        goto LABEL_101;
      }
    }

    else
    {
      sub_1D7B28F78(&v115, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, sub_1D799956C);
    }

    v95 = 0;
    v97 = 0;
    goto LABEL_92;
  }

  v75 = v111;
  if (v28 == *MEMORY[0x1E69B6300])
  {
    (*(v24 + 96))(v46, v23);
    swift_unknownObjectRelease();
    sub_1D7B28964(0, &qword_1EC9E4E38, &qword_1EE0BF070);
    (*(v75 + 8))(v46 + *(v76 + 48), v110);
    v45 = 1;
    return v45 & 1;
  }

  if (v28 != *MEMORY[0x1E69B6308])
  {
    (*(v24 + 8))(v46, v23);
LABEL_21:
    v45 = 0;
    return v45 & 1;
  }

  (*(v24 + 96))(v46, v23);
  v85 = *v46;
  sub_1D7B289E0();
  v87 = v110;
  (*(v75 + 32))(v10, v46 + *(v86 + 48), v110);
  (*(v75 + 104))(v6, *MEMORY[0x1E69B6368], v87);
  v88 = sub_1D7D2F50C();
  v89 = *(v75 + 8);
  v89(v6, v87);
  if (v88)
  {
    v90 = sub_1D7D30CBC();

    v89(v10, v87);
    v45 = v90 ^ 1;
  }

  else
  {
    v89(v10, v87);

    v45 = 1;
  }

  return v45 & 1;
}

void sub_1D7B28964(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D798C3BC(255, a3);
    sub_1D7D2F51C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7B289E0()
{
  if (!qword_1EC9E4E40)
  {
    sub_1D7992EFC(255, &qword_1EC9E4E48);
    sub_1D7D2F51C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E4E40);
    }
  }
}

void sub_1D7B28A64()
{
  if (!qword_1EE0BAFD0)
  {
    sub_1D798C3BC(255, &qword_1EE0BAFC8);
    sub_1D7B28E5C(255, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0]);
    sub_1D7D2F51C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0BAFD0);
    }
  }
}

uint64_t sub_1D7B28B1C(uint64_t a1, uint64_t a2)
{
  sub_1D7B28E5C(0, &qword_1EE0BF6F0, MEMORY[0x1E69B61A0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7B28B9C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0BEF80)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D798C3BC(255, &qword_1EE0CBA60);
    sub_1D79E6E78();
    sub_1D7D2F51C();
    sub_1D799956C(255, &qword_1EE0CBB10);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0BEF80);
    }
  }
}

void sub_1D7B28CE4(void *a1, int a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1D7D2F4FC() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D7B258DC(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7B28DDC()
{
  if (!qword_1EC9E4ED0)
  {
    sub_1D7B28E5C(255, &qword_1EC9E4ED8, MEMORY[0x1E69D7FF0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E4ED0);
    }
  }
}

void sub_1D7B28E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7B28EB0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7B28E5C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7B28F1C(uint64_t a1)
{
  sub_1D7B28DDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7B28F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7B28FD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7B29040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D7A4E2D8;

  return sub_1D7B262EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D7B29120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7B29168(uint64_t a1, uint64_t a2)
{
  sub_1D7B28FD8(0, &qword_1EE0BF510, &qword_1EE0CBB38, MEMORY[0x1E69B6820], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B291F8(uint64_t a1)
{
  sub_1D7B28FD8(0, &qword_1EE0BF510, &qword_1EE0CBB38, MEMORY[0x1E69B6820], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7B29434()
{
  v48 = [v0 DOMObjectProvider];
  v47 = [v0 viewport];
  v46 = [objc_msgSend(v0 presentationDelegateProvider)];
  swift_unknownObjectRelease();
  v45 = [v0 componentStyleRendererFactory];
  sub_1D799CC84(&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_bannerAdFactory], v62);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_viewManager];
  v43 = *&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_requestManager];
  v44 = v1;
  sub_1D799CC84(&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_bannerAdRenderer], v61);
  sub_1D799CC84(&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_integrator], v59);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_journal];
  v41 = *&v0[OBJC_IVAR____TtC12NewsArticles22AdComponentViewFactory_exposureMonitor];
  v42 = v2;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v4 = MEMORY[0x1EEE9AC00](v3, v3);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v9 = MEMORY[0x1EEE9AC00](v8, v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v6;
  v14 = *v11;
  v15 = type metadata accessor for ArticleBannerAdFactory();
  v57 = v15;
  v58 = &off_1F52B4328;
  v56[0] = v13;
  v16 = type metadata accessor for AdComponentIntegrator();
  v54 = v16;
  v55 = &off_1F52A4098;
  v53[0] = v14;
  v17 = type metadata accessor for AdComponentView();
  v18 = objc_allocWithZone(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v20 = MEMORY[0x1EEE9AC00](v19, v19);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v25 = MEMORY[0x1EEE9AC00](v24, v24);
  v27 = (&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v22;
  v30 = *v27;
  v52[3] = v15;
  v52[4] = &off_1F52B4328;
  v51[4] = &off_1F52A4098;
  v52[0] = v29;
  v51[3] = v16;
  v51[0] = v30;
  v31 = &v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerView];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView____lazy_storage___debugView] = 0;
  v32 = OBJC_IVAR____TtC12NewsArticles15AdComponentView_layoutAttributes;
  v33 = sub_1D7D2D3BC();
  (*(*(v33 - 8) + 56))(&v18[v32], 1, 1, v33);
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_componentImpressionVisibilityPercentage] = 0x3FE0000000000000;
  sub_1D799CC84(v52, &v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdFactory]);
  v34 = v43;
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_viewManager] = v44;
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_requestManager] = v34;
  sub_1D799CC84(v61, &v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_bannerAdRenderer]);
  sub_1D799CC84(v51, &v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_integrator]);
  v35 = v42;
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_exposureMonitor] = v41;
  *&v18[OBJC_IVAR____TtC12NewsArticles15AdComponentView_journal] = v35;
  v50.receiver = v18;
  v50.super_class = v17;

  swift_unknownObjectRetain();

  v36 = v47;
  v37 = objc_msgSendSuper2(&v50, sel_initWithDOMObjectProvider_viewport_presentationDelegate_componentStyleRendererFactory_, v48, v47, v46, v45);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v37;
  sub_1D7D2CF6C();

  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_1D7D28AEC();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v38;
}

char *sub_1D7B29A74(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  *&v4[OBJC_IVAR____TtC12NewsArticles26SearchInArticleTextToolBar_toolbar] = [objc_allocWithZone(MEMORY[0x1E69DD180]) initWithFrame_];
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC12NewsArticles26SearchInArticleTextToolBar_toolbar;
  v12 = *&v10[OBJC_IVAR____TtC12NewsArticles26SearchInArticleTextToolBar_toolbar];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v10[v11];
  v15 = v13;
  [v15 addSubview_];
  [v15 setAutoresizingMask_];
  v16 = objc_opt_self();
  sub_1D79EB1FC();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7D4E7B0;
  v18 = [*&v10[v11] leadingAnchor];
  v19 = [v15 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [*&v10[v11] trailingAnchor];
  v22 = [v15 trailingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v17 + 40) = v23;
  v24 = [*&v10[v11] topAnchor];
  v25 = [v15 topAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v17 + 48) = v26;
  v27 = [*&v10[v11] bottomAnchor];
  v28 = [v15 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v17 + 56) = v29;
  sub_1D79F3BA0();
  v30 = sub_1D7D3062C();

  [v16 activateConstraints_];

  return v15;
}

uint64_t sub_1D7B29E74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7B29ED0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7B29F5C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t ArticleViewerFeatureAppearState.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7B2A0F8()
{
  result = qword_1EC9E4F48;
  if (!qword_1EC9E4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4F48);
  }

  return result;
}

id sub_1D7B2A27C()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  result = [v2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v2 view];
  if (result)
  {
    v17 = result;
    [result setInsetsLayoutMarginsFromSafeArea_];

    sub_1D7D2B2CC();
    v18 = sub_1D7D2AF0C();

    [v18 setPreservesSuperviewLayoutMargins_];

    sub_1D7D2B2CC();
    v19 = sub_1D7D2AF0C();

    [v19 setInsetsLayoutMarginsFromSafeArea_];

    [v1 setPreferredContentSize_];
    v20 = [v1 traitCollection];
    sub_1D7B2BA9C();

    sub_1D7B2BBB4(0, &qword_1EE0BE900, sub_1D79F3CAC, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7D3B4D0;
    v22 = sub_1D7D2C9FC();
    v23 = MEMORY[0x1E69DC130];
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    sub_1D7D30DCC();
    swift_unknownObjectRelease();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1D7B2A5EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D7B2BBB4(0, &qword_1EC9E4F70, MEMORY[0x1E69D8720], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = (&v30 - v6);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewWillLayoutSubviews, v5);
  v8 = [*&v1[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_blueprintViewController] view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 bounds];

  sub_1D7D2B2CC();
  v12 = sub_1D7D2AF0C();

  v13 = [v12 collectionViewLayout];

  [v13 collectionViewContentSize];
  sub_1D7D30FEC();
  [v9 setFrame_];

  type metadata accessor for RecipeViewController(0);
  v14 = sub_1D7D30D9C();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  sub_1D7D2B33C();
  v16 = [v15 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1D7D2B2FC();
  swift_getObjectType();
  v26 = swift_allocObject();
  *(v26 + 2) = v19;
  *(v26 + 3) = v21;
  *(v26 + 4) = v23;
  *(v26 + 5) = v25;
  *v7 = sub_1D7B2BC18;
  v7[1] = v26;
  v27 = *MEMORY[0x1E69D8718];
  v28 = sub_1D7D2C0EC();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v7, v27, v28);
  (*(v29 + 56))(v7, 0, 1, v28);
  sub_1D7D2BE3C();
  swift_unknownObjectRelease();
}

double sub_1D7B2A90C(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v22 = sub_1D7D2B6AC();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27, a1, v22, v25);
  if ((*(v23 + 88))(v27, v22) == *MEMORY[0x1E69D81B0])
  {
    a5 = a13;
    a6 = a14;
    a3 = a11;
    a4 = a12;
  }

  else
  {
    (*(v23 + 8))(v27, v22);
  }

  if ([a2 horizontalSizeClass] == 2)
  {
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    CGRectGetWidth(v30);
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetHeight(v31);
  }

  return 0.0;
}

uint64_t sub_1D7B2AC30(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = result;
    v6 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    return (*(v6 + 24))(v5, a2, ObjectType, v6);
  }

  return result;
}

void sub_1D7B2ACB0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 setNeedsLayout];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  [v3 layoutIfNeeded];

  v5 = [*&v0[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_blueprintViewController] view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 frame];
  v8 = v7;
  v10 = v9;

  [v0 setPreferredContentSize_];
  v11 = [v0 traitCollection];
  sub_1D7B2BA9C();

  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D7D29AFC();
  __swift_project_value_buffer(v12, qword_1ECA0BB60);
  v13 = v0;
  oslog = sub_1D7D29ADC();
  v14 = sub_1D7D30C6C();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    [v13 preferredContentSize];
    type metadata accessor for CGSize(0);
    v17 = sub_1D7D303AC();
    v19 = sub_1D7B06D4C(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1D7987000, oslog, v14, "EndOfRecipeViewController size=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA7102E0](v16, -1, -1);
    MEMORY[0x1DA7102E0](v15, -1, -1);
  }

  else
  {
  }
}

void sub_1D7B2AF3C()
{
  sub_1D7D2B2CC();
  v0 = sub_1D7D2AF0C();

  [v0 reloadData];
}

uint64_t sub_1D7B2AFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7D2BE7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x1E69D8608])
  {
    v12 = sub_1D7D2B2FC();
    v14 = v13;
    v15 = objc_allocWithZone(sub_1D7D2B7BC());
    swift_unknownObjectRetain();
    v16 = sub_1D7D2B7AC();
    v17 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(v12, v14, v16, ObjectType, v17);

    return swift_unknownObjectRelease();
  }

  if (result == *MEMORY[0x1E69D8628])
  {
    goto LABEL_4;
  }

  if (result != *MEMORY[0x1E69D8658])
  {
    if (result != *MEMORY[0x1E69D8610])
    {
      if (result == *MEMORY[0x1E69D8638])
      {
        return result;
      }

      if (result != *MEMORY[0x1E69D8650] && result != *MEMORY[0x1E69D8640] && result != *MEMORY[0x1E69D8648] && result != *MEMORY[0x1E69D8618] && result != *MEMORY[0x1E69D8620])
      {
        return (*(v6 + 8))(v10, v5);
      }
    }

LABEL_4:
    v19 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler) + 40);
    v20 = swift_getObjectType();
    return (*(v19 + 40))(v20, v19);
  }

  return result;
}

uint64_t sub_1D7B2B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (v7[11])
  {
    v8 = v7[12];
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
  }

  v10 = v7[5];
  v11 = swift_getObjectType();
  return (*(v10 + 48))(a2, a4, v11, v10);
}

void sub_1D7B2B304(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 80))(a2, ObjectType, v5);
  }
}

void sub_1D7B2B36C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 88))(a2, ObjectType, v5);
  }
}

void sub_1D7B2B3D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(a2, ObjectType, v5);
  }
}

void sub_1D7B2B43C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(a2, ObjectType, v5);
  }
}

void sub_1D7B2B4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(a2, ObjectType, v5);
  }
}

void sub_1D7B2B50C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler);
  if (*(v3 + 88))
  {
    v5 = *(v3 + 96);
    ObjectType = swift_getObjectType();
    (*(v5 + 96))(a2, ObjectType, v5);
  }
}

uint64_t sub_1D7B2B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v23 = a3;
  v24 = a4;
  v31 = a1;
  v25 = a9;
  sub_1D799476C(0, &qword_1EC9E2710, MEMORY[0x1E69D87F8]);
  v11 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - v13;
  sub_1D7D2B2DC();
  v42 = v34;
  sub_1D7996944(0);
  sub_1D7996F5C(&qword_1EC9E4F68, sub_1D7996944);
  sub_1D7D2AEEC();

  sub_1D7B2BBB4(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  v33 = xmmword_1D7D3B4D0;
  v30 = v15;
  *(v15 + 16) = xmmword_1D7D3B4D0;
  v16 = swift_allocObject();
  *(v16 + 16) = v33;
  v17 = sub_1D7D2A36C();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  sub_1D7996F5C(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
  *&v33 = v11;
  v18 = sub_1D7D2C7CC();
  v34 = a2;
  v35 = v23;
  v36 = v24;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v25;
  sub_1D7D29B5C();
  type metadata accessor for EndOfRecipeSectionDescriptor();
  type metadata accessor for EndOfRecipeModel();
  sub_1D7996F5C(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
  sub_1D7996F5C(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
  sub_1D7D29B1C();
  v19 = sub_1D7D2A28C();

  sub_1D7AAF6F4(v18);
  if (v19)
  {
    v20 = MEMORY[0x1E69D7890];
  }

  else
  {
    v17 = 0;
    v20 = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
  }

  *(v16 + 32) = v19;
  *(v16 + 56) = v17;
  *(v16 + 64) = v20;
  sub_1D7D29C8C();
  sub_1D7D2A53C();
  sub_1D7D2A51C();

  v21 = sub_1D7D29C4C();
  (*(v32 + 8))(v14, v33);
  return v21;
}

void sub_1D7B2BA9C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_1D7D2B2CC();
    v6 = sub_1D7D2AF0C();

    [v6 contentSize];
    v3 = 1.0;
    if (v4 <= 1.0)
    {
      v3 = 0.0;
    }

    [v2 setAlpha_];
    v5 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    [v6 setAlwaysBounceVertical_];
    [v6 _setPocketsEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7B2BBB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B2BC48(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);

      v6(v7, &off_1F52A5F88, a1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D7B2BD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_1D7B2DC64();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for EndOfRecipeFeedServiceConfig();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for EndOfRecipeFeedGapLocation();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for EndOfRecipeExpandRequest();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7B2BEB8, 0, 0);
}

uint64_t sub_1D7B2BEB8()
{
  v60 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(*(*(v0 + 112) + 32) + 16);
  *(v0 + 240) = v3;
  v4 = &v1[*(v2 + 20)];
  v5 = qword_1EC9DFE00;
  v6 = v3;
  v7 = v2;
  if (v5 != -1)
  {
    swift_once();
    v1 = *(v0 + 232);
    v7 = *(v0 + 184);
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 104);
  v10 = qword_1ECA0BBC8;
  v56 = *(v0 + 88);
  *v4 = v6;
  *(v4 + 1) = v10;
  swift_storeEnumTagMultiPayload();
  strcpy(v1, "prewarmRequest");
  v1[15] = -18;
  v11 = &v1[*(v7 + 24)];
  *v11 = v56;
  *(v11 + 2) = v9;

  swift_unknownObjectRetain();
  v12 = v9;
  *(v0 + 248) = CACurrentMediaTime();
  sub_1D7B2DCFC(v4, v8, type metadata accessor for EndOfRecipeFeedGapLocation);
  v55 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EC9DFDA0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 232);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = sub_1D7D29AFC();
    __swift_project_value_buffer(v16, qword_1ECA0BB60);
    sub_1D7B2DCFC(v13, v14, type metadata accessor for EndOfRecipeExpandRequest);
    sub_1D7B2DCFC(v13, v15, type metadata accessor for EndOfRecipeExpandRequest);
    v17 = sub_1D7D29ADC();
    v18 = sub_1D7D30C6C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    if (v19)
    {
      v53 = *(v0 + 168);
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v22 = 136315394;
      v23 = *v21;
      v24 = v21[1];

      sub_1D7B2DD64(v21, type metadata accessor for EndOfRecipeExpandRequest);
      v25 = sub_1D7B06D4C(v23, v24, &v59);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_1D7B2DCFC(v20 + *(v2 + 20), v53, type metadata accessor for EndOfRecipeFeedGapLocation);
      v26 = sub_1D7D303AC();
      v28 = v27;
      sub_1D7B2DD64(v20, type metadata accessor for EndOfRecipeExpandRequest);
      v29 = sub_1D7B06D4C(v26, v28, &v59);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1D7987000, v17, v18, "EndOfRecipe feed expansion triggered: identifier=%s, location: %s)", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v57, -1, -1);
      MEMORY[0x1DA7102E0](v22, -1, -1);
    }

    else
    {

      sub_1D7B2DD64(v20, type metadata accessor for EndOfRecipeExpandRequest);
      sub_1D7B2DD64(v21, type metadata accessor for EndOfRecipeExpandRequest);
    }

    v47 = *(v0 + 176);
    v48 = type metadata accessor for EndOfRecipeFeedGapLocation;
  }

  else
  {
    sub_1D7B2DD64(*(v0 + 176), type metadata accessor for EndOfRecipeFeedGapLocation);
    if (qword_1EC9DFDA0 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    v32 = *(v0 + 216);
    v33 = sub_1D7D29AFC();
    __swift_project_value_buffer(v33, qword_1ECA0BB60);
    sub_1D7B2DCFC(v30, v31, type metadata accessor for EndOfRecipeExpandRequest);
    sub_1D7B2DCFC(v30, v32, type metadata accessor for EndOfRecipeExpandRequest);
    v34 = sub_1D7D29ADC();
    v35 = sub_1D7D30C6C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 216);
    v38 = *(v0 + 224);
    if (v36)
    {
      v54 = *(v0 + 168);
      v39 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v58;
      *v39 = 136315394;
      v41 = *v38;
      v40 = v38[1];

      sub_1D7B2DD64(v38, type metadata accessor for EndOfRecipeExpandRequest);
      v42 = sub_1D7B06D4C(v41, v40, &v59);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      sub_1D7B2DCFC(v37 + *(v2 + 20), v54, type metadata accessor for EndOfRecipeFeedGapLocation);
      v43 = sub_1D7D303AC();
      v45 = v44;
      sub_1D7B2DD64(v37, type metadata accessor for EndOfRecipeExpandRequest);
      v46 = sub_1D7B06D4C(v43, v45, &v59);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_1D7987000, v34, v35, "EndOfRecipe feed expansion triggered: identifier=%s at location=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v58, -1, -1);
      MEMORY[0x1DA7102E0](v39, -1, -1);

      goto LABEL_16;
    }

    sub_1D7B2DD64(v37, type metadata accessor for EndOfRecipeExpandRequest);
    v47 = v38;
    v48 = type metadata accessor for EndOfRecipeExpandRequest;
  }

  sub_1D7B2DD64(v47, v48);
LABEL_16:
  *(v0 + 48) = v55;
  v49 = v55;
  *(v0 + 256) = sub_1D7D2DCAC();

  v50 = swift_task_alloc();
  *(v0 + 264) = v50;
  *v50 = v0;
  v50[1] = sub_1D7B2C570;
  v51 = *(v0 + 152);

  return MEMORY[0x1EEE44EE0](v51);
}

uint64_t sub_1D7B2C570()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1D7B2CFB0;
  }

  else
  {

    v2 = sub_1D7B2C68C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7B2C68C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v0[8] = *(v0[14] + 48);
  sub_1D7B2DE28(&unk_1EE0CD290, 255, type metadata accessor for EndOfRecipeFeedServiceConfig);

  sub_1D7D2ED4C();
  sub_1D7990D20();
  sub_1D7B2DE28(&qword_1EC9E4F90, 255, sub_1D7990D20);
  v0[35] = sub_1D7D2DFBC();
  (*(v2 + 8))(v1, v3);

  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1D7B2C828;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1D7B2C828()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1D7B2D2D8;
  }

  else
  {
    v2 = sub_1D7B2C95C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7B2C95C()
{
  v0[38] = v0[7];
  v0[39] = sub_1D7D2E16C();
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_1D7B2CA10;

  return MEMORY[0x1EEE44EE0](v0 + 9);
}

uint64_t sub_1D7B2CA10()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1D7B2D614;
  }

  else
  {
    v2 = sub_1D7B2CB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7B2CB44()
{
  v28 = v0;

  v1 = sub_1D7D2E8AC();
  *(v0 + 80) = sub_1D7D2E8BC();
  sub_1D7B2DDC4(0, &qword_1EC9E3A88, MEMORY[0x1E69D7608], MEMORY[0x1E69E62F8]);
  sub_1D7AAEBAC();
  sub_1D7B2DE28(&qword_1EC9E3A98, 255, MEMORY[0x1E69D7608]);
  v2 = sub_1D7D3051C();

  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 240);
  v4 = sub_1D7D29AFC();
  __swift_project_value_buffer(v4, qword_1ECA0BB60);

  v5 = v3;
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C6C();

  v26 = v2;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 134218498;
    sub_1D7D3094C();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    strcpy((v0 + 16), "prewarmRequest");
    *(v0 + 31) = -18;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    sub_1D7B2DEC0();
    v12 = sub_1D7D3190C();
    v14 = sub_1D7B06D4C(v12, v13, &v27);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = [v8 identifier];
    v16 = sub_1D7D3034C();
    v18 = v17;

    v19 = sub_1D7B06D4C(v16, v18, &v27);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_1D7987000, v6, v7, "EndOfRecipe expanded gap successfully: time=%f, expandResult=%s, source recipe=%s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA7102E0](v10, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 152);
  sub_1D7B2DE70();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7D3B4D0;
  strcpy((v23 + 32), "prewarmRequest");
  *(v23 + 47) = -18;
  *(v23 + 48) = v1;
  *(v23 + 56) = v26;

  sub_1D7B2DD64(v22, type metadata accessor for EndOfRecipeFeedServiceConfig);
  sub_1D7B2DD64(v21, type metadata accessor for EndOfRecipeExpandRequest);

  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_1D7B2CFB0()
{
  v24 = v0;

  v1 = v0[34];
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = v0[24];
  v4 = sub_1D7D29AFC();
  __swift_project_value_buffer(v4, qword_1ECA0BB60);
  sub_1D7B2DCFC(v2, v3, type metadata accessor for EndOfRecipeExpandRequest);
  v5 = v1;
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 134218498;
    sub_1D7D3094C();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = *v8;
    v14 = v8[1];

    sub_1D7B2DD64(v8, type metadata accessor for EndOfRecipeExpandRequest);
    v15 = sub_1D7B06D4C(v13, v14, &v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1D7987000, v6, v7, "EndOfRecipe failed to expand gap: time=%f, identifier=%s, error=%@", v9, 0x20u);
    sub_1D7A72BA8(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  else
  {
    v18 = v0[24];

    sub_1D7B2DD64(v18, type metadata accessor for EndOfRecipeExpandRequest);
  }

  v20 = v0[29];
  v19 = v0[30];
  swift_willThrow();

  sub_1D7B2DD64(v20, type metadata accessor for EndOfRecipeExpandRequest);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D7B2D2D8()
{
  v24 = v0;
  sub_1D7B2DD64(v0[19], type metadata accessor for EndOfRecipeFeedServiceConfig);
  v1 = v0[37];
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v3 = v0[24];
  v4 = sub_1D7D29AFC();
  __swift_project_value_buffer(v4, qword_1ECA0BB60);
  sub_1D7B2DCFC(v2, v3, type metadata accessor for EndOfRecipeExpandRequest);
  v5 = v1;
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 134218498;
    sub_1D7D3094C();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = *v8;
    v14 = v8[1];

    sub_1D7B2DD64(v8, type metadata accessor for EndOfRecipeExpandRequest);
    v15 = sub_1D7B06D4C(v13, v14, &v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1D7987000, v6, v7, "EndOfRecipe failed to expand gap: time=%f, identifier=%s, error=%@", v9, 0x20u);
    sub_1D7A72BA8(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  else
  {
    v18 = v0[24];

    sub_1D7B2DD64(v18, type metadata accessor for EndOfRecipeExpandRequest);
  }

  v20 = v0[29];
  v19 = v0[30];
  swift_willThrow();

  sub_1D7B2DD64(v20, type metadata accessor for EndOfRecipeExpandRequest);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D7B2D614()
{
  v25 = v0;
  v1 = v0[19];

  sub_1D7B2DD64(v1, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v2 = v0[41];
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v3 = v0[29];
  v4 = v0[24];
  v5 = sub_1D7D29AFC();
  __swift_project_value_buffer(v5, qword_1ECA0BB60);
  sub_1D7B2DCFC(v3, v4, type metadata accessor for EndOfRecipeExpandRequest);
  v6 = v2;
  v7 = sub_1D7D29ADC();
  v8 = sub_1D7D30C4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 134218498;
    sub_1D7D3094C();
    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = *v9;
    v15 = v9[1];

    sub_1D7B2DD64(v9, type metadata accessor for EndOfRecipeExpandRequest);
    v16 = sub_1D7B06D4C(v14, v15, &v24);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2112;
    v17 = v2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&dword_1D7987000, v7, v8, "EndOfRecipe failed to expand gap: time=%f, identifier=%s, error=%@", v10, 0x20u);
    sub_1D7A72BA8(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA7102E0](v12, -1, -1);
    MEMORY[0x1DA7102E0](v10, -1, -1);
  }

  else
  {
    v19 = v0[24];

    sub_1D7B2DD64(v19, type metadata accessor for EndOfRecipeExpandRequest);
  }

  v21 = v0[29];
  v20 = v0[30];
  swift_willThrow();

  sub_1D7B2DD64(v21, type metadata accessor for EndOfRecipeExpandRequest);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D7B2D960()
{
  sub_1D79C92AC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B2D9EC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, &off_1F52A5F88, a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7B2DA94(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v2, &off_1F52A5F88, a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7B2DB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(v3, &off_1F52A5F88, a1, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
    return v10;
  }

  return result;
}

void sub_1D7B2DC64()
{
  if (!qword_1EC9E4F88)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7B2DE28(&unk_1EE0CD290, 255, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2ED6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4F88);
    }
  }
}

uint64_t sub_1D7B2DCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B2DD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B2DDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B2DE28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D7B2DE70()
{
  if (!qword_1EC9E4F98)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4F98);
    }
  }
}

unint64_t sub_1D7B2DEC0()
{
  result = qword_1EC9E4FA0;
  if (!qword_1EC9E4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4FA0);
  }

  return result;
}

uint64_t sub_1D7B2DF48()
{
  v1 = v0[1];
  v2 = sub_1D7B2E0BC(*v0, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header);
  v3 = sub_1D7B2E0BC(v1, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer);
  sub_1D79E2E10(v3);
  return v2;
}

uint64_t sub_1D7B2DFE0(uint64_t a1)
{
  v2 = sub_1D7B2EE5C();

  return MEMORY[0x1EEE47F40](a1, v2);
}

uint64_t sub_1D7B2E01C(uint64_t a1)
{
  v2 = sub_1D7B2E060();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

unint64_t sub_1D7B2E060()
{
  result = qword_1EC9E4FA8;
  if (!qword_1EC9E4FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4FA8);
  }

  return result;
}

uint64_t sub_1D7B2E0BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v32 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - v10;
  v12 = sub_1D7D2EA2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C30C(0, v17, 0);
    v18 = v36;
    v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    v29 = (v13 + 32);
    v30 = v20;
    v21 = (v13 + 16);
    v22 = (v13 + 8);
    do
    {
      v23 = v32;
      sub_1D7B2ED94(v19, v11, v32);
      v24 = v31;
      sub_1D7B2ED94(v11, v31, v23);
      (*v29)(v16, v24, v12);
      sub_1D7B2EDFC(v11, v23);
      v36 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D7A5C30C((v25 > 1), v26 + 1, 1);
      }

      v34 = v12;
      v35 = sub_1D7A91BF8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*v21)(boxed_opaque_existential_1, v16, v12);
      v18 = v36;
      *(v36 + 16) = v26 + 1;
      sub_1D799D69C(&v33, v18 + 40 * v26 + 32);
      (*v22)(v16, v12);
      v19 += v30;
      --v17;
    }

    while (v17);
  }

  return v18;
}

uint64_t sub_1D7B2E364(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration(0);
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2BC2C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x1E69D8478];
  v65 = *(v16 + 104);
  v66 = v16 + 104;
  v65(v20, v21, v15, v18);
  v22 = sub_1D7D2E02C();
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v67 = v20;
  v64 = v24;
  v24(v20, v15);
  v25 = *(v22 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  v68 = v5;
  v69 = a1;
  if (v25)
  {
    v60 = v23;
    v61 = v15;
    v62 = v9;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C59C(0, v25, 0);
    v27 = v22;
    v28 = v73;
    v71 = sub_1D7D2EA2C();
    v29 = *(v71 - 8);
    v70 = *(v29 + 16);
    v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v29 + 72);
    do
    {
      v70(v14, v30, v71);
      v73 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D7A5C59C(v32 > 1, v33 + 1, 1);
        v28 = v73;
      }

      *(v28 + 16) = v33 + 1;
      sub_1D7B2ED2C(v14, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header);
      v30 += v31;
      --v25;
    }

    while (v25);

    v5 = v68;
    a1 = v69;
    v15 = v61;
    v9 = v62;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v34 = v67;
  (v65)(v67, *MEMORY[0x1E69D8470], v15);
  v35 = sub_1D7D2E02C();
  v36 = v34;
  v37 = v35;
  v64(v36, v15);
  v38 = *(v37 + 16);
  if (v38)
  {
    v73 = v26;
    sub_1D7A5C54C(0, v38, 0);
    v39 = v73;
    v71 = sub_1D7D2EA2C();
    v40 = *(v71 - 8);
    v70 = *(v40 + 16);
    v41 = *(v40 + 80);
    v67 = v37;
    v42 = v37 + ((v41 + 32) & ~v41);
    v43 = *(v40 + 72);
    v44 = v63;
    do
    {
      v70(v9, v42, v71);
      v73 = v39;
      v45 = v9;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D7A5C54C(v46 > 1, v47 + 1, 1);
        v44 = v63;
        v39 = v73;
      }

      *(v39 + 16) = v47 + 1;
      sub_1D7B2ED2C(v45, v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v47, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer);
      v42 += v43;
      --v38;
      v9 = v45;
    }

    while (v38);

    v5 = v68;
    a1 = v69;
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v48 = sub_1D7D2E01C();
  v49 = *(v48 + 16);
  if (v49)
  {
    v73 = v26;
    sub_1D7A5C4FC(0, v49, 0);
    v50 = v73;
    v71 = sub_1D7D2E2FC();
    v51 = *(v71 - 8);
    v70 = *(v51 + 16);
    v52 = *(v51 + 80);
    v67 = v48;
    v53 = v48 + ((v52 + 32) & ~v52);
    v54 = *(v51 + 72);
    do
    {
      v70(v5, v53, v71);
      v73 = v50;
      v56 = *(v50 + 16);
      v55 = *(v50 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1D7A5C4FC(v55 > 1, v56 + 1, 1);
        v50 = v73;
      }

      *(v50 + 16) = v56 + 1;
      sub_1D7B2ED2C(v5, v50 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v56, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration);
      v53 += v54;
      --v49;
    }

    while (v49);
    v57 = sub_1D7D2E03C();
    (*(*(v57 - 8) + 8))(v69, v57);
  }

  else
  {

    v58 = sub_1D7D2E03C();
    (*(*(v58 - 8) + 8))(a1, v58);
  }

  return v28;
}

uint64_t sub_1D7B2EA40(uint64_t a1)
{
  v25 = sub_1D7D2E2FC();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C344(0, v14, 0);
    v15 = v27;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    do
    {
      sub_1D7B2ED94(v16, v13, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration);
      v17 = v24;
      sub_1D7B2ED94(v13, v24, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration);
      v18 = v25;
      (*(v2 + 32))(v5, v17, v25);
      sub_1D7D2E2DC();
      (*(v2 + 8))(v5, v18);
      sub_1D7B2EDFC(v13, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration);
      v27 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D7A5C344((v19 > 1), v20 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v20 + 1;
      sub_1D799D69C(&v26, v15 + 40 * v20 + 32);
      v16 += v23;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_1D7B2ED2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B2ED94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B2EDFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7B2EE5C()
{
  result = qword_1EC9E4FB0;
  if (!qword_1EC9E4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4FB0);
  }

  return result;
}

uint64_t sub_1D7B2EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1D7B2EF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_1D7B2EFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t EndOfRecipeModule.createViewController(from:)(uint64_t a1)
{
  v3 = sub_1D7D28A6C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B4C08], v3, v6);
  v9 = sub_1D7D289DC();
  (*(v4 + 8))(v8, v3);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for EndOfRecipeViewController();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = a1;

  v12 = sub_1D7D28CFC();

  if (v12)
  {

    sub_1D7B2F41C();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B2F29C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D28A3C();
    sub_1D7D28BEC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D28BEC();
    sub_1D7B2F5E4(v3 + 64, &v4);
    if (v5)
    {
      sub_1D799D69C(&v4, v6);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D7B2F4A4();
      sub_1D7D28BFC();

      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {

      return sub_1D7A09534(&v4);
    }
  }

  return result;
}

unint64_t sub_1D7B2F41C()
{
  result = qword_1EC9E4FE8;
  if (!qword_1EC9E4FE8)
  {
    type metadata accessor for EndOfRecipeViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4FE8);
  }

  return result;
}

uint64_t EndOfRecipeModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1D7A09534(v0 + 64);
  return v0;
}

unint64_t sub_1D7B2F4A4()
{
  result = qword_1EE0BF898;
  if (!qword_1EE0BF898)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF898);
  }

  return result;
}

uint64_t EndOfRecipeModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1D7A09534(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B2F5E4(uint64_t a1, uint64_t a2)
{
  sub_1D7A09590();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B2F648@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF898);
    result = sub_1D7D28D2C();
    if (v10)
    {
      sub_1D799D69C(&v9, v11);
      v6 = type metadata accessor for EndOfRecipeModule();
      v7 = swift_allocObject();
      result = sub_1D799D69C(v13, v7 + 16);
      *(v7 + 56) = v5;
      v8 = v11[1];
      *(v7 + 64) = v11[0];
      *(v7 + 80) = v8;
      *(v7 + 96) = v12;
      a2[3] = v6;
      a2[4] = &protocol witness table for EndOfRecipeModule;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B2F7C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2E9BC();
  swift_allocObject();
  result = sub_1D7D2E9AC();
  v4 = MEMORY[0x1E69B5CE8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7B2F84C()
{
  type metadata accessor for EndOfRecipeViewController();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E4FF0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E4FF8);
  sub_1D7D291EC();
  type metadata accessor for EndOfRecipeRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E5000);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E5008);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E5010);
  sub_1D7D291EC();

  type metadata accessor for EndOfRecipeBlueprintModifierFactory();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E5018);
  sub_1D7D291EC();

  sub_1D7B3435C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7B34BF4();
  sub_1D7D291DC();

  sub_1D7B34DE8();
  sub_1D7D291DC();

  sub_1D7D2BD6C();
  sub_1D7D291DC();

  sub_1D7B34448();
  sub_1D7D291DC();

  sub_1D7B34D30();
  sub_1D7D291DC();

  sub_1D7B348D0();
  sub_1D7D291DC();

  type metadata accessor for EndOfRecipeBlueprintLayoutBuilder();
  sub_1D7D291DC();

  sub_1D7B34E7C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7992EFC(0, &unk_1EE0BF020);
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7B34584();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0BFCE0);
  sub_1D7D291EC();
  sub_1D7D2BA3C();
  sub_1D7D28ABC();

  sub_1D7B358CC(0, &qword_1EE0BFD80, MEMORY[0x1E69D8580], MEMORY[0x1E69D8570], MEMORY[0x1E69D83A0]);
  sub_1D7D291DC();

  sub_1D7B34700();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7B34988();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7B34B08();
  sub_1D7D291DC();

  type metadata accessor for EndOfRecipeBlueprintViewCellProvider();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for EndOfRecipeBlueprintViewSupplementaryViewProvider();
  sub_1D7D291DC();

  sub_1D7B34FB8();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for EndOfRecipeModelFactory();
  sub_1D7D291DC();

  sub_1D7D2A81C();
  sub_1D7D291DC();

  sub_1D7B3504C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7D2B4CC();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D798C468(0, &qword_1EE0BFCC0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E50E8);
  sub_1D7D291EC();

  sub_1D7B35138();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D7B35210(0, &qword_1EC9E5100, &off_1F52A6190, type metadata accessor for ArticleBlueprintRouteModelFactory);
  sub_1D7D291DC();

  sub_1D7B35210(0, &qword_1EC9E5110, &off_1F52A61A0, type metadata accessor for RecipeRouteModelFactory);
  sub_1D7D291DC();

  sub_1D7B353C8(0, &qword_1EC9E5118, type metadata accessor for BlueprintRecipeViewerTokenSession);
  sub_1D7D291DC();

  sub_1D7B35334();
  sub_1D7D291DC();
}

uint64_t sub_1D7B303E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E4FF0);
  result = sub_1D7D28D2C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5000);
  result = sub_1D7D28D2C();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34E7C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for EndOfRecipeStyler();
    v21 = &off_1F52A5FB8;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for EndOfRecipeViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_1D7B35CB4(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B306A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for EndOfRecipeStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A5FB8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B30754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF990);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBDD0);
  result = sub_1D7D28D2C();
  if (v9)
  {
    v6 = type metadata accessor for EndOfRecipeRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D799D69C(v12, v7 + 24);
    *(v7 + 64) = v5;
    sub_1D799D69C(&v10, v7 + 72);
    result = sub_1D799D69C(&v8, v7 + 112);
    a2[3] = v6;
    a2[4] = &off_1F52A6A98;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D7B308D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EndOfRecipeViewController();
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7B30950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5008);
  result = sub_1D7D28D2C();
  v5 = v28;
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E4FF8);
  result = sub_1D7D28D2C();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5148);
  result = sub_1D7D28D2C();
  v7 = v24;
  if (v24)
  {
    v8 = v25;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for EndOfRecipeRouter();
    v23[3] = v15;
    v23[4] = &off_1F52A6A98;
    v23[0] = v14;
    type metadata accessor for EndOfRecipeEventHandler();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v15);
    v18 = MEMORY[0x1EEE9AC00](v17, v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = sub_1D7B35DD8(v5, v6, *v20, v7, v8, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    *a2 = v22;
    a2[1] = &off_1F52A68F8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B30C50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5010);
  result = sub_1D7D28D2C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B3435C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeBlueprintModifierFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B35210(0, &qword_1EC9E5100, &off_1F52A6190, type metadata accessor for ArticleBlueprintRouteModelFactory);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B35210(0, &qword_1EC9E5110, &off_1F52A61A0, type metadata accessor for RecipeRouteModelFactory);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B353C8(0, &qword_1EC9E5118, type metadata accessor for BlueprintRecipeViewerTokenSession);
  result = sub_1D7D28D1C();
  if (result)
  {
    v9 = result;
    sub_1D7B35C20();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v11;
    v10[7] = v12;
    v10[4] = v5;
    v10[5] = v6;
    v10[8] = v7;
    v10[9] = v8;
    v10[10] = v9;
    *(v11 + 24) = &off_1F52A6518;
    result = swift_unknownObjectWeakAssign();
    *a2 = v10;
    a2[1] = &off_1F52A6540;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7B30ECC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeConfig();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B35138();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7990D20();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7995088();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0);
  result = sub_1D7D28D2C();
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B35B68();
  result = sub_1D7D28D1C();
  if (result)
  {
    v9 = result;
    type metadata accessor for EndOfRecipeDataManager();
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[4] = v5;
    v10[5] = v6;
    v10[6] = v7;
    v10[7] = v8;
    sub_1D799CC84(v12, (v10 + 8));
    v10[13] = v9;
    swift_allocObject();
    swift_weakInit();

    v11 = v9;

    sub_1D7996FA4(&qword_1EC9E51E8, type metadata accessor for EndOfRecipeDataManager);

    sub_1D7D2E19C();

    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v10;
    a2[1] = &off_1F52A5F88;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7B311B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5018);
  result = sub_1D7D28D2C();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x1EEE9AC00](v2, v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for EndOfRecipeSectionFactory();
    v16[3] = v8;
    v16[4] = &off_1F52AA760;
    v16[0] = v7;
    type metadata accessor for EndOfRecipeBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x1EEE9AC00](v10, v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_1F52AA760;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B313C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeModelFactory();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for EndOfRecipeSectionFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F52AA760;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B31450(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7B34448();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7B3435C();
      swift_allocObject();
      return sub_1D7D2A6DC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B31534(uint64_t a1, void *a2)
{
  sub_1D7B35990();
  swift_allocObject();
  v6[0] = sub_1D7D2BB8C();
  sub_1D7B35A7C();
  swift_allocObject();
  sub_1D7996FA4(&qword_1EC9E51C8, sub_1D7B35990);
  sub_1D7D2B6BC();
  sub_1D7D2A6FC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B34BF4();
  result = sub_1D7D28D1C();
  if (result)
  {
    v6[0] = result;
    swift_allocObject();
    sub_1D7996FA4(&qword_1EC9E51D0, sub_1D7B34BF4);
    sub_1D7D2B6BC();
    sub_1D7D2A6FC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &qword_1EE0BF898);
    result = sub_1D7D28D2C();
    if (v5)
    {
      sub_1D799D69C(&v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_1D7B3435C();
      sub_1D7D2E91C();
      return __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B31794(void *a1)
{
  sub_1D7B35938();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D7D2C11C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeBlueprintLayoutBuilder();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34D30();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34DE8();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7B34BF4();
    swift_allocObject();
    return sub_1D7D2C0AC();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B318FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (v3)
  {
    sub_1D7B34DE8();
    swift_allocObject();
    return sub_1D7D2BC8C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B31AA4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_1D7B31AE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BFC70);
    result = sub_1D7D28D2C();
    if (v3)
    {
      sub_1D7B34448();
      swift_allocObject();
      return sub_1D7D2A95C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B31C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B358CC(0, &qword_1EE0BF9E0, MEMORY[0x1E69B63B8], MEMORY[0x1E69B63B0], MEMORY[0x1E69B5998]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2FE6C();
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      type metadata accessor for EndOfRecipeBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B31D2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFCE0);
  result = sub_1D7D28CEC();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFC70);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34FB8();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2A81C();
  result = sub_1D7D28CDC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7996FA4(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
    sub_1D7B34E7C();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2B35C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7B32034(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B34DE8();
  if (sub_1D7D28D1C())
  {
    sub_1D7996FA4(&qword_1EC9E51B0, sub_1D7B34DE8);
  }

  sub_1D7D2B32C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B35334();
  if (sub_1D7D28D1C())
  {
    sub_1D7996FA4(&qword_1EC9E51A8, sub_1D7B35334);
  }

  return sub_1D7D2B30C();
}

uint64_t sub_1D7B32188(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B358CC(0, &qword_1EE0BFD80, MEMORY[0x1E69D8580], MEMORY[0x1E69D8570], MEMORY[0x1E69D83A0]);
  result = sub_1D7D28CDC();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7B3226C(id *a1)
{
  v1 = *a1;
  [*a1 _setShouldDeriveVisibleBoundsFromContainingScrollView_];
  [v1 _setNeedsLayoutOnVisibleBoundsChange_];

  return [v1 setScrollEnabled_];
}

uint64_t sub_1D7B322D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020);
  result = sub_1D7D28CDC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34700();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34988();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34B08();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7B34584();
    swift_allocObject();
    return sub_1D7D2AEFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7B32444@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2BA3C();
    swift_allocObject();
    result = sub_1D7D2BA2C();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B324FC()
{
  v0 = sub_1D7D2B00C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7DB0], v2);
  return sub_1D7D2BA1C();
}

uint64_t sub_1D7B325CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2BD6C();
  result = sub_1D7D28CDC();
  if (result)
  {
    sub_1D7B358CC(0, &qword_1EE0BFD80, MEMORY[0x1E69D8580], MEMORY[0x1E69D8570], MEMORY[0x1E69D83A0]);
    v3 = objc_allocWithZone(v2);
    return sub_1D7D2B90C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B32698(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeBlueprintViewCellProvider();
  sub_1D799CC84(a1, v8);
  v4 = swift_allocObject();
  sub_1D799D69C(v8, v4 + 16);
  v5 = sub_1D7D28CFC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeBlueprintViewSupplementaryViewProvider();
  result = sub_1D7D28D1C();
  if (result)
  {
    *&v8[0] = v3;
    sub_1D7B34700();
    v7 = objc_allocWithZone(v6);
    return sub_1D7D2BCFC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7B32834(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &unk_1EE0BF020);
  result = sub_1D7D28CDC();
  if (result)
  {
    v4 = result;
    sub_1D7992EFC(0, &qword_1EE0BF110);
    sub_1D7D3040C();
    sub_1D7D28BDC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B32938(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, &qword_1EE0BFCC0);
  result = sub_1D7D28CEC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D7D2C07C();
    sub_1D7D2BD0C();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B32A10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34FB8();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1D7996FA4(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFE00);
  result = sub_1D7D28D2C();
  if (v5)
  {
    sub_1D7B34988();
    v4 = objc_allocWithZone(v3);
    return sub_1D7D2BBDC();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7B32C60(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7D2A81C();
  sub_1D7D28CDC();
  sub_1D7D2BBFC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B3504C();
  if (sub_1D7D28D1C())
  {
    sub_1D7996FA4(&qword_1EC9E51A0, sub_1D7B3504C);
  }

  sub_1D7D2BC0C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B35138();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2BBBC();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D7B34E7C();
    sub_1D7D28D1C();
    return sub_1D7D2BBAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B32DD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7B348D0();
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7B34B08();
      v4 = objc_allocWithZone(v3);
      return sub_1D7D2BE5C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B32E98(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF950);
  result = sub_1D7D28D2C();
  if (v3)
  {
    type metadata accessor for EndOfRecipeBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7B32F44(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EndOfRecipeViewController();
  v4 = sub_1D7D28D1C();
  v3 = &off_1F52A5F38;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7B32FD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF830);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for EndOfRecipeBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33078(void *a1)
{
  v2 = sub_1D7D2BD2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D7D2BD4C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D7B35830();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D7D2BD3C();
    v17[1] = v16;
    sub_1D7B34FB8();
    swift_allocObject();
    return sub_1D7D2B68C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B332D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7996FA4(&qword_1EC9E5170, sub_1D7B348D0);
    sub_1D7D2B65C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &qword_1EE0CBBB0);
    sub_1D7D28D2C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D798C468(0, &unk_1EE0BFA10);
    sub_1D7D28D2C();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D7992EFC(0, &qword_1EE0BF040);
    sub_1D7D28D1C();
    sub_1D7B35628();
    swift_allocObject();
    sub_1D7D2E98C();
    sub_1D7996FA4(&qword_1EC9E5180, sub_1D7B35628);
    sub_1D7D2B66C();

    sub_1D7B35700();
    swift_allocObject();
    sub_1D7D2EA0C();
    sub_1D7996FA4(&qword_1EC9E5190, sub_1D7B35700);
    sub_1D7D2B66C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33598(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2E0BC();
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = result;
    type metadata accessor for EndOfRecipeModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33608(void *a1)
{
  sub_1D7B355BC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7D3B4E0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B3504C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7996FA4(&qword_1EC9E5168, sub_1D7B3504C);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D2B4CC();
    result = sub_1D7D28CDC();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D7D2A81C();
      swift_allocObject();
      return sub_1D7D2A80C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B33748(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7996944(0);
    result = sub_1D7D28D1C();
    if (result)
    {
      sub_1D7B3504C();
      swift_allocObject();
      return sub_1D7D2BCCC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B3385C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2AF0C();

    sub_1D7D2B4CC();
    swift_allocObject();
    return sub_1D7D2B4BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33918(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B34E7C();
  v7 = sub_1D7D28D1C();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7996FA4(a3, sub_1D7B34E7C);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_1D7B339CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34E7C();
  v4 = v3;
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1D7996FA4(&qword_1EC9E5150, sub_1D7B34E7C);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33A74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EndOfRecipeModelFactory();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1D7B35528();
  swift_allocObject();
  sub_1D7D2F3CC();
  sub_1D7996FA4(&qword_1EC9E5140, sub_1D7B35528);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E5148);
  result = sub_1D7D28D2C();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D2F23C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7D2F58C();
    swift_allocObject();
    result = sub_1D7D2F57C();
    v5 = MEMORY[0x1E69B6378];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B33C40(void *a1)
{
  v2 = sub_1D7D2EB7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9DFE90 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1ECA0BC28);
  (*(v8 + 16))(v11, v12, v7);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B5E98], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E50E8);
  result = sub_1D7D28CEC();
  if (v14)
  {
    sub_1D7B35138();
    return sub_1D7D2E18C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33E84(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7B34E7C();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7996FA4(&qword_1EC9E5128, sub_1D7B34E7C);
    return sub_1D7D2E17C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B33F28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7992EFC(0, &unk_1EE0BEFB0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      sub_1D7B35210(0, &qword_1EC9E5100, &off_1F52A6190, type metadata accessor for ArticleBlueprintRouteModelFactory);
      v5 = swift_allocObject();
      *(v5 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v5 + 16) = v3;
      *(v5 + 32) = 0;
      *(v5 + 40) = v4;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0;
      swift_unknownObjectWeakAssign();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B34044(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B348D0();
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &unk_1EE0BEFB0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CCE80);
  result = sub_1D7D28D2C();
  if (v7)
  {
    sub_1D7B35210(0, &qword_1EC9E5110, &off_1F52A61A0, type metadata accessor for RecipeRouteModelFactory);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    sub_1D799D69C(&v6, v5 + 32);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7B34198(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7996944(0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7B348D0();
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      sub_1D7B353C8(0, &qword_1EC9E5118, type metadata accessor for BlueprintRecipeViewerTokenSession);
      v5 = swift_allocObject();
      sub_1D7B353C8(0, &qword_1EC9E5420, type metadata accessor for BlueprintRecipeViewerTokenState);
      swift_storeEnumTagMultiPayload();
      *(v5 + *(*v5 + 152)) = v3;
      *(v5 + *(*v5 + 160)) = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B342E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B34584();
  result = sub_1D7D28D1C();
  if (result)
  {
    sub_1D7B35334();
    swift_allocObject();
    return sub_1D7D2B3FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7B3435C()
{
  if (!qword_1EC9E5020)
  {
    sub_1D7996944(255);
    sub_1D7B34448();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E5098, sub_1D7B34448);
    v0 = sub_1D7D2A73C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5020);
    }
  }
}

void sub_1D7B34448()
{
  if (!qword_1EC9E5028)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor();
    type metadata accessor for EndOfRecipeModel();
    sub_1D7B34584();
    sub_1D7996FA4(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7996FA4(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    sub_1D7996FA4(&qword_1EC9E5090, sub_1D7B34584);
    v0 = sub_1D7D2A96C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5028);
    }
  }
}

void sub_1D7B34584()
{
  if (!qword_1EC9E5030)
  {
    sub_1D7992EFC(255, &unk_1EE0BF020);
    sub_1D7B34700();
    sub_1D7B34988();
    sub_1D7B34B08();
    type metadata accessor for EndOfRecipeViewController();
    sub_1D7996FA4(&qword_1EC9E5078, sub_1D7B34700);
    sub_1D7996FA4(&qword_1EC9E5080, sub_1D7B34988);
    sub_1D7996FA4(&qword_1EC9E5088, sub_1D7B34B08);
    v0 = sub_1D7D2AF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5030);
    }
  }
}

void sub_1D7B34700()
{
  if (!qword_1EC9E5038)
  {
    sub_1D7996944(255);
    sub_1D7B348D0();
    type metadata accessor for EndOfRecipeBlueprintViewCellProvider();
    type metadata accessor for EndOfRecipeBlueprintViewSupplementaryViewProvider();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    sub_1D7996FA4(&qword_1EC9E5048, type metadata accessor for EndOfRecipeBlueprintViewCellProvider);
    sub_1D7996FA4(&qword_1EC9E5050, type metadata accessor for EndOfRecipeBlueprintViewSupplementaryViewProvider);
    sub_1D7996FA4(&qword_1EC9E5058, type metadata accessor for EndOfRecipeLayoutModel);
    v0 = sub_1D7D2BD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5038);
    }
  }
}

void sub_1D7B348D0()
{
  if (!qword_1EC9E5330)
  {
    type metadata accessor for EndOfRecipeLayoutModel();
    sub_1D7A2B544();
    sub_1D7996FA4(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel);
    v0 = sub_1D7D2B28C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5330);
    }
  }
}

void sub_1D7B34988()
{
  if (!qword_1EC9E5060)
  {
    sub_1D7996944(255);
    sub_1D7B348D0();
    type metadata accessor for EndOfRecipeViewController();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    sub_1D7996FA4(&qword_1EC9E5068, type metadata accessor for EndOfRecipeViewController);
    sub_1D7996FA4(&qword_1EC9E5058, type metadata accessor for EndOfRecipeLayoutModel);
    v0 = sub_1D7D2BC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5060);
    }
  }
}

void sub_1D7B34B08()
{
  if (!qword_1EC9E5070)
  {
    sub_1D7996944(255);
    sub_1D7B348D0();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    v0 = sub_1D7D2BE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5070);
    }
  }
}

void sub_1D7B34BF4()
{
  if (!qword_1EC9E50A0)
  {
    sub_1D7B348D0();
    type metadata accessor for EndOfRecipeBlueprintLayoutBuilder();
    sub_1D7B34D30();
    sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    sub_1D7996FA4(&qword_1EC9E50B0, type metadata accessor for EndOfRecipeBlueprintLayoutBuilder);
    sub_1D7996FA4(&qword_1EC9E50B8, sub_1D7B34D30);
    v0 = sub_1D7D2C0DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50A0);
    }
  }
}

void sub_1D7B34D30()
{
  if (!qword_1EC9E50A8)
  {
    type metadata accessor for EndOfRecipeLayoutModel();
    sub_1D7B2E060();
    sub_1D7996FA4(&qword_1EC9E5058, type metadata accessor for EndOfRecipeLayoutModel);
    v0 = sub_1D7D2BC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50A8);
    }
  }
}

void sub_1D7B34DE8()
{
  if (!qword_1EC9E50C0)
  {
    sub_1D7B348D0();
    sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    v0 = sub_1D7D2BC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50C0);
    }
  }
}

void sub_1D7B34E7C()
{
  if (!qword_1EC9E50C8)
  {
    sub_1D7996944(255);
    sub_1D7B34584();
    type metadata accessor for EndOfRecipeViewController();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E5090, sub_1D7B34584);
    sub_1D7996FA4(&qword_1EC9E5068, type metadata accessor for EndOfRecipeViewController);
    v0 = sub_1D7D2B37C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50C8);
    }
  }
}

void sub_1D7B34FB8()
{
  if (!qword_1EC9E50D0)
  {
    sub_1D7996944(255);
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    v0 = sub_1D7D2B69C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50D0);
    }
  }
}

void sub_1D7B3504C()
{
  if (!qword_1EC9E50D8)
  {
    sub_1D7B34584();
    sub_1D7996944(255);
    sub_1D7996FA4(&qword_1EC9E5090, sub_1D7B34584);
    sub_1D7996FA4(&qword_1EC9E50E0, sub_1D7996944);
    v0 = sub_1D7D2BCEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50D8);
    }
  }
}

void sub_1D7B35138()
{
  if (!qword_1EC9E50F0)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7996FA4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    sub_1D7996FA4(&qword_1EC9E50F8, type metadata accessor for EndOfRecipeFeedGroup);
    v0 = sub_1D7D2E1AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E50F0);
    }
  }
}

void sub_1D7B35210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7B348D0();
    v11[0] = v8;
    v11[1] = sub_1D7996FA4(&qword_1EC9E5040, sub_1D7B348D0);
    v11[2] = a3;
    v11[3] = sub_1D7996FA4(&unk_1EC9E5350, type metadata accessor for EndOfRecipeLayoutModel);
    v11[4] = sub_1D7996FA4(&qword_1EC9E5108, type metadata accessor for EndOfRecipeLayoutModel);
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}