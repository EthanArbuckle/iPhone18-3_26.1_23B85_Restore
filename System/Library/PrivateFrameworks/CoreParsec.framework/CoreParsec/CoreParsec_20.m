void SearchSessionCursor.readFilterParameters(idxNum:idxStr:arguments:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = a2;
      v8 = (a3 + 32);
      do
      {
        v9 = *v7++;
        v10 = *v8;
        v11 = SQLiteArgument.getDouble()();
        HIDWORD(v12) = v9 - 4;
        LODWORD(v12) = v9 - 4;
        switch((v12 >> 2))
        {
          case 0u:
            if (v4 < v11)
            {
              v4 = v11 + 0.0;
              if (v11 != INFINITY)
              {
                *&v4 += (*&v4 >> 63) | 1;
              }
            }

            break;
          case 1u:
            if (v11 <= v5)
            {
              v5 = v11;
            }

            break;
          case 3u:
            if (v11 < v5)
            {
              v13 = 0.0 - v11;
              if (v13 != INFINITY)
              {
                *&v13 += (*&v13 >> 63) | 1;
              }

              v5 = -v13;
            }

            break;
          case 7u:
            if (v4 <= v11)
            {
              v4 = v11;
            }

            break;
          default:
            break;
        }

        ++v8;
        --v6;
      }

      while (v6);
    }
  }

  v14 = 0.0;
  if (v4 >= 0.0)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0.0;
  }

  if (v5 >= 0.0)
  {
    v14 = v5;
  }

  if (v14 < v15)
  {
    v14 = v15;
  }

  if (v15 > v14)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v3 + 64);
    v17 = ClosedRange<>.fromUnixToReferenceTime.getter(v15, v14);
    v19 = v18;
    swift_beginAccess();
    *(v16 + 24) = v17;
    *(v16 + 32) = v19;
  }
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSessionCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;

  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  switch(SearchSessionTableColumn.init(rawValue:)(v6).value)
  {
    case SearchFeedback_SearchSessionTableColumn_session:
      v10 = *(v2 + 64);
      BiomeStoreEnumerator.setPayload(on:)(on);
      break;
    case SearchFeedback_SearchSessionTableColumn_client:
      v7 = *(v2 + 64);
      sub_100181290(on.context._rawValue);
      break;
    case SearchFeedback_SearchSessionTableColumn_userGuid:
      v8 = sub_100006560();
      sub_100181880(v8);
      break;
    case SearchFeedback_SearchSessionTableColumn_duEnabled:
      sub_100006560();
      sub_1001813C8();
      break;
    case SearchFeedback_SearchSessionTableColumn_countryCode:
      v11 = sub_100006560();
      sub_10018141C(v11);
      break;
    case SearchFeedback_SearchSessionTableColumn_locale:
      v12 = sub_100006560();
      sub_100181450(v12);
      break;
    case SearchFeedback_SearchSessionTableColumn_systemBuild:
      v9 = sub_100006560();
      sub_10018181C(v9);
      break;
    case SearchFeedback_SearchSessionTableColumn_unknownDefault:
      SQLiteContext.setNull()();
      break;
    default:
      sub_100006560();
      sub_100181BE0();
      break;
  }

  return 0;
}

uint64_t SearchFeedbackCursor.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return v0;
}

uint64_t SearchFeedbackCursor.__deallocating_deinit()
{
  SearchFeedbackCursor.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_10017EDF8(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100005DE0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_100046184(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_10000381C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10017EF0C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100005DE0();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_100046184(a5, a6);
      v16 = swift_allocObject();
      j__malloc_size(v16);
      sub_100008084();
      v16[2] = v14;
      v16[3] = v17;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    sub_10000381C();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_10017EFF8(void *a1, int64_t a2, char a3)
{
  result = sub_100185920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10017F018(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10018265C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + v6 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_10017F0D4()
{
  result = qword_10021FCE0;
  if (!qword_10021FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCE0);
  }

  return result;
}

unint64_t sub_10017F128(void *a1)
{
  a1[1] = sub_10017F160();
  a1[2] = sub_10017F1B4();
  result = sub_10017F208();
  a1[3] = result;
  return result;
}

unint64_t sub_10017F160()
{
  result = qword_10021FCE8;
  if (!qword_10021FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCE8);
  }

  return result;
}

unint64_t sub_10017F1B4()
{
  result = qword_10021FCF0;
  if (!qword_10021FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCF0);
  }

  return result;
}

unint64_t sub_10017F208()
{
  result = qword_10021FCF8;
  if (!qword_10021FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCF8);
  }

  return result;
}

unint64_t sub_10017F260()
{
  result = qword_10021FD00;
  if (!qword_10021FD00)
  {
    sub_1000461CC(&qword_10021FD08, &qword_1001A80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD00);
  }

  return result;
}

unint64_t sub_10017F2C4(uint64_t a1)
{
  result = sub_10017F0D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10017F2F0()
{
  result = qword_10021FD10;
  if (!qword_10021FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSessionTableColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10017F550()
{
  result = qword_100220260;
  if (!qword_100220260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220260);
  }

  return result;
}

uint64_t BaseBiomeTable.init(config:environment:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1000092B4(a1, v3 + 48);
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  v7 = SQLiteVTab.init(style:)(0);
  sub_100007378(a1);
  return v7;
}

uint64_t BaseBiomeTable.deinit()
{
  v0 = SQLiteVTab.deinit();
  sub_100007378((v0 + 48));
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseBiomeTable.getSQLiteBridge()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_getObjectType();
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  v4 = sub_1000082A8();
  v5 = v3(v4);
  swift_unknownObjectRelease();
  return v5;
}

double BaseBiomeTable.getQueryTimeFrameGuideline()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_getObjectType();
  v3 = *(v2 + 24);
  swift_unknownObjectRetain();
  v4 = sub_1000082A8();
  v5 = v3(v4);
  swift_unknownObjectRelease();
  return v5;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.getMessageName(forTable:storeIndex:)(Swift::String forTable, Swift::Int storeIndex)
{
  v5 = v2[10];
  sub_100007534(v2 + 6, v2[9]);
  v6 = sub_100003F4C();
  v7(v6);
  if (v3)
  {
    goto LABEL_5;
  }

  sub_100007534(v25, v25[3]);
  v8 = sub_1000088D4();
  v9(v8);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v10 = _arrayForceCast<A, B>(_:)();

  if (storeIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v10 + 16) <= storeIndex)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100005728(v11, v12, v13, v14, v15, v16, v17, v18, v24[0]);

  v19 = v24[4];
  sub_100007534(v24, v24[3]);
  v20 = *(v19 + 16);
  v21 = sub_10000AB28();
  v22(v21, v19);
  sub_100007378(v24);
  sub_100007378(v25);
LABEL_5:
  v11 = sub_10000450C();
LABEL_8:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t BaseBiomeTable.getStoreReader(at:forTable:)(unint64_t a1)
{
  v4 = v1[10];
  sub_100007534(v1 + 6, v1[9]);
  v5 = sub_100003F4C();
  v6(v5);
  if (v2)
  {
    return v1;
  }

  sub_100007534(v38, v38[3]);
  v7 = sub_1000088D4();
  v8(v7);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v9 = _arrayForceCast<A, B>(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v9 + 16) > a1)
  {
    sub_100005728(result, v11, v12, v13, v14, v15, v16, v17, v35[0]);

    v18 = v37;
    sub_100007534(v35, v36);
    v19 = *(v18 + 8);
    v20 = sub_10000AB28();
    v22 = v21(v20, v18);
    v24 = v23;
    v25 = v36;
    v26 = v37;
    sub_100007534(v35, v36);
    v27 = (*(v26 + 24))(v25, v26);
    v28 = type metadata accessor for RawPayload();
    v29 = BMUseCaseLegacy;
    v30 = objc_allocWithZone(BMStreamDatastoreReader);
    v31 = v29;
    v32 = v27;
    v1 = v30;
    v33 = sub_100180808(v22, v24, v32, v28, v31);
    if (v33)
    {
      v1 = v33;
    }

    else
    {
      sub_10017F550();
      sub_100004248();
      *v34 = 3;
      swift_willThrow();
    }

    sub_100007378(v35);
    sub_100007378(v38);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *v3;
  v3[5] = 100;
  sub_100003710();
  v8 = *(v7 + 192);
  sub_100003710();
  v10 = *(v9 + 200);
  sub_100004744();
  type metadata accessor for BaseBiomeTable();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    if (a2 == 3)
    {
      return SQLiteVTab.BaseConnection.init(_:argc:argv:)(v11, 3, a3);
    }

    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  sub_10017F550();
  sub_100004248();
  *v14 = v13;
  swift_willThrow();

  sub_100004744();
  type metadata accessor for BaseBiomeTable.BiomeConnection();
  return swift_deallocPartialClassInstance();
}

uint64_t BaseBiomeTable.BiomeConnection.bestIndex(_:)(uint64_t a1)
{
  sub_1000037B0();
  if (((*(v3 + 240))() & 1) == 0)
  {
    return 19;
  }

  sub_1000037B0();
  (*(v4 + 248))(a1);
  sub_100005B40();
  result = 0;
  *(a1 + 72) = *(v1 + 40);
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.estimatedRows.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.getSQLiteBridge()()
{
  sub_100005D28();
  v2 = *(v1 + 192);
  sub_100003710();
  v4 = *(v3 + 200);
  type metadata accessor for BaseBiomeTable();
  sub_100006888();
  if (!v0)
  {
    BaseBiomeTable.getSQLiteBridge()();
    sub_10000F74C();
  }

  return sub_10000450C();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.BiomeConnection.getMessageName(forStoreIndex:)(Swift::Int forStoreIndex)
{
  sub_100005D28();
  v5 = *(v4 + 192);
  sub_100003710();
  v7 = *(v6 + 200);
  type metadata accessor for BaseBiomeTable();
  static SQLiteVTab.getTable(forConnection:)();
  if (!v2)
  {
    BaseBiomeTable.getMessageName(forTable:storeIndex:)(v1[1], forStoreIndex);
    sub_10000F74C();
  }

  v8 = sub_10000450C();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

double BaseBiomeTable.BiomeConnection.getQueryTimeFrameGuideline()()
{
  sub_100005D28();
  v3 = *(v2 + 192);
  sub_100003710();
  v5 = *(v4 + 200);
  type metadata accessor for BaseBiomeTable();
  sub_100006888();
  if (!v0)
  {
    TimeFrame = BaseBiomeTable.getQueryTimeFrameGuideline()();
  }

  return TimeFrame;
}

unint64_t BaseBiomeTable.BiomeConnection.getReader(forStoreIndex:)(unint64_t a1)
{
  sub_100005D28();
  v5 = *(v4 + 192);
  sub_100003710();
  v7 = *(v6 + 200);
  type metadata accessor for BaseBiomeTable();
  static SQLiteVTab.getTable(forConnection:)();
  if (!v2)
  {
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    a1 = BaseBiomeTable.getStoreReader(at:forTable:)(a1);
  }

  return a1;
}

uint64_t BaseBiomeTable.BiomeCursor.init(_:)()
{
  v2 = v0;
  sub_100005D28();
  v4 = *(v3 + 216);
  sub_100003710();
  v6 = *(v5 + 224);
  sub_100004744();
  type metadata accessor for BaseBiomeTable.BiomeConnection();
  if (!swift_dynamicCastClass())
  {
    sub_10017F550();
    v9 = sub_100004248();
    sub_10000828C(v9, v10);

    goto LABEL_6;
  }

  v7 = BaseBiomeTable.BiomeConnection.getSQLiteBridge()();
  if (v1)
  {

LABEL_6:
    sub_100004744();
    type metadata accessor for BaseBiomeTable.BiomeCursor();
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = BaseBiomeTable.BiomeConnection.getQueryTimeFrameGuideline()();
  *(v0 + 56) = v12;
  v2 = SQLiteVTab.BaseCursor.init(_:)();

  return v2;
}

uint64_t BaseBiomeTable.BiomeCursor.deinit()
{
  v0 = SQLiteBaseVTab.Cursor.deinit();
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseBiomeTable.BiomeCursor.filter(idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = SQLiteBaseVTab.Cursor.filter(idxNum:idxStr:arguments:)();
  if (!v3 && !result)
  {
    sub_1000037B0();
    (*(v8 + 296))(a1, a2, a3);
    sub_1000037B0();
    (*(v9 + 304))();
    return 0;
  }

  return result;
}

uint64_t BaseBiomeTable.__allocating_init(config:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v5 = sub_10000AB28();
  return BaseBiomeTable.init(config:environment:)(v5, a2, a3);
}

Swift::String __swiftcall BaseBiomeTable.getModuleName()()
{
  v0 = 0x6D61657274735F70;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t BaseBiomeTable.register(with:)(uint64_t a1)
{
  sub_1000037B0();
  v5 = (*(v4 + 448))();
  v7 = v6;
  (*(*a1 + 152))(v1, &protocol witness table for SQLiteBaseVTab, v5, v6);
  if (v2)
  {
  }

  v8 = v1[9];
  v9 = v1[10];
  sub_100007534(v1 + 6, v8);
  result = (*(v9 + 8))(v8, v9);
  v11 = 0;
  v19 = *(result + 16);
  v24 = result;
  for (i = (result + 40); ; i += 2)
  {
    if (v19 == v11)
    {
      goto LABEL_9;
    }

    if (v11 >= *(v24 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v13 = *i;

    _StringGuts.grow(_:)(37);

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x20474E49535520;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v5;
    v17._object = v7;
    String.append(_:)(v17);
    (*(*a1 + 176))(&v20, 0xD00000000000001ALL, 0x80000001001B3CC0, 0);

    SQLiteStatement.execute()();
    if (v18)
    {

      v23 = v21;
      sub_100062E58(&v23);

LABEL_9:
    }

    v22 = v21;
    sub_100062E58(&v22);

    ++v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001804EC()
{
  sub_100007378((v0 + 48));
  v1 = *(v0 + 88);

  return swift_unknownObjectRelease();
}

uint64_t BaseBiomeTable.__deallocating_deinit()
{
  v0 = BaseBiomeTable.deinit();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t BaseBiomeTable.BiomeConnection.__deallocating_deinit()
{
  v0 = SQLiteBaseVTab.Connection.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t BaseBiomeTable.BiomeCursor.__allocating_init(_:)()
{
  swift_allocObject();
  sub_10000AB28();
  return BaseBiomeTable.BiomeCursor.init(_:)();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.BiomeCursor.getMessageName(forStoreIndex:)(Swift::Int forStoreIndex)
{
  sub_100005D28();
  if (!(*(v1 + 120))())
  {
    goto LABEL_5;
  }

  if (!sub_100007078())
  {

LABEL_5:
    sub_10017F550();
    v3 = sub_100004248();
    sub_10000828C(v3, v4);
    goto LABEL_6;
  }

  v2 = sub_10000AB28();
  BaseBiomeTable.BiomeConnection.getMessageName(forStoreIndex:)(v2);
  sub_10000F74C();

LABEL_6:
  v5 = sub_10000450C();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

unint64_t BaseBiomeTable.BiomeCursor.getReader(forStoreIndex:)()
{
  sub_100005D28();
  if (!(*(v1 + 120))())
  {
    goto LABEL_5;
  }

  if (!sub_100007078())
  {

LABEL_5:
    sub_10017F550();
    v3 = sub_100004248();
    sub_10000828C(v3, v4);
    return v0;
  }

  v2 = sub_10000AB28();
  v0 = BaseBiomeTable.BiomeConnection.getReader(forStoreIndex:)(v2);

  return v0;
}

uint64_t BaseBiomeTable.BiomeCursor.__deallocating_deinit()
{
  v0 = BaseBiomeTable.BiomeCursor.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_100180808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = String._bridgeToObjectiveC()();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v12 = [v6 initWithStream:v10 config:a3 eventDataClass:ObjCClassFromMetadata useCase:a5];

  return v12;
}

unint64_t sub_1001808EC()
{
  result = qword_100220298[0];
  if (!qword_100220298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100220298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BiomeTableError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_100180AFC()
{
  Hasher.init(_seed:)();
  SessionDBFeatureFlags.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100180B3C()
{
  result = qword_100220428;
  if (!qword_100220428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220428);
  }

  return result;
}

unint64_t sub_100180B94()
{
  result = qword_100220430;
  if (!qword_100220430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220430);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadFrom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionDBFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_100180D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, double a7, double a8)
{
  *(v8 + 144) = 0;
  *(v8 + 152) = 1;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  result = sub_1000092B4(a6, v8 + 104);
  v16 = a7 + -1200.0;
  if (v16 > a8)
  {
    __break(1u);
  }

  else
  {
    v18 = a6[3];
    v17 = a6[4];
    sub_100007534(a6, v18);
    v19 = (*(*(v17 + 8) + 8))(v18);
    v21 = BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(a3, a4, a5, v19, v20, v16, a8);
    sub_100007378(a6);
    return v21;
  }

  return result;
}

void *sub_100180E68()
{
  v1 = v0;
  v2 = sub_100046184(&qword_100220688, &qword_1001A8588);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v24 - v4;
  v6 = type metadata accessor for BiomeSessionWrapper(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v24[0] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v9 = BiomeStoreEnumerator.getNextEvent()();
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v11 = [v9 eventBody];
    if (v11)
    {
      v12 = v11;
      sub_10018C83C(v12, v5);
      sub_1000051C0(v5, 0, 1, v6);
      v13 = v24[0];
      sub_100181A30(v5, v24[0]);
      v14 = *(v13 + *(v6 + 20));
      v15 = RawPayload.schemitized(with:)(v1 + 104);
      v16 = *(v1 + 160);
      *(v1 + 160) = v15;
      *(v1 + 168) = v17;
      swift_unknownObjectRelease();
      [v10 timestamp];
      *(v1 + 144) = v18;
      *(v1 + 152) = 0;
      v19 = SessionType.canonicalIdentifier.getter();
      v21 = v20;

      v22 = *(v1 + 184);
      *(v1 + 176) = v19;
      *(v1 + 184) = v21;

      sub_10002719C(v13);
      return v10;
    }
  }

  return v10;
}

uint64_t sub_100181064()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_100181070()
{
  if (!*(v0 + 160))
  {
    return 0;
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 24);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v1);
  swift_unknownObjectRelease();
  return v5;
}

double sub_100181100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 160))
  {
    v6 = *(v3 + 168);
    v7 = *(v3 + 160);
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 56);
    swift_unknownObjectRetain();
    v9(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -256;
  }

  return result;
}

void sub_1001811C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100181100(a1, a2, &v5);
  if (!v2)
  {
    if (v6 == 255)
    {
      sub_10000F94C(&v5, &qword_10021D078, &qword_1001A2370);
    }

    else
    {
      sub_100006570(v3);
      if (v6 != 8)
      {
        sub_10002633C(&v5);
        sub_100181A94();
        swift_allocError();
        *v4 = 0;
        swift_willThrow();
      }

      sub_10002633C(v7);
    }
  }
}

uint64_t sub_100181290(sqlite3_context *a1)
{
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);

  SQLiteContext.setString(_:destructor:)(v4, v3, 1, a1);
}

void sub_1001812EC()
{
  v1 = sub_100181100(0x656C62616E457564, 0xE900000000000064, v3);
  if (!v0)
  {
    if (v4 == 255)
    {
      sub_10000F94C(v3, &qword_10021D078, &qword_1001A2370);
    }

    else
    {
      sub_100006570(v1);
      if (v4 != 6)
      {
        sub_10002633C(v3);
        sub_100181A94();
        swift_allocError();
        *v2 = 0;
        swift_willThrow();
      }

      sub_10002633C(v5);
    }
  }
}

void sub_1001813C8()
{
  sub_1001812EC();
  if (!v0)
  {
    if (v1 == 2)
    {
      SQLiteContext.setNull()();
    }

    else
    {
      SQLiteContext.setBool(_:)(v1 & 1);
    }
  }
}

unint64_t sub_100181478()
{
  sub_1001811C8(0x746E656761, 0xE500000000000000);
  if (v1)
  {
    return v0;
  }

  v0 = v2;
  v4 = v3;
  if (!v3)
  {
    return v0;
  }

  sub_10013DDB8(40, 0xE100000000000000, v2, v3);
  if (v5)
  {
    goto LABEL_7;
  }

  v6 = String.index(after:)();
  v0 = sub_100181778(v6, v0, v4);
  sub_100004754();
  result = sub_10018168C(v7, v8, v9, v10);
  if (v12)
  {
    goto LABEL_7;
  }

  if (result >> 14 < v0 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_100004754();
    Substring.subscript.getter();
    v14 = v13;
    v0 = v15;

    __chkstk_darwin(v16);
    sub_100003F74();
    sub_100181AE8(v17, v18, v19, v20, v21, v22);
    if (v23)
    {
LABEL_7:

      sub_100181A94();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      return v0;
    }

    result = Substring.index(after:)();
    if (v14 >> 14 >= result >> 14)
    {
      sub_100003F74();
      Substring.subscript.getter();

      v0 = static String._fromSubstring(_:)();

      return v0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018168C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    if (Substring.subscript.getter() == a1 && v8 == a2)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return a3;
    }

    a3 = Substring.index(after:)();
  }

  return a3;
}

unint64_t sub_100181778(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = String.subscript.getter();

    return v4;
  }

  return result;
}

void sub_10018181C(sqlite3_context *a1)
{
  v3 = sub_100181478();
  if (!v1)
  {
    if (v4)
    {
      SQLiteContext.setString(_:destructor:)(v3, v4, 1, a1);
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

void sub_1001818B8(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  sub_1001811C8(a2, a3);
  if (!v3)
  {
    if (v6)
    {
      SQLiteContext.setString(_:destructor:)(v5, v6, 1, a1);
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

uint64_t sub_100181954()
{
  v1 = v0[12];

  sub_100007378(v0 + 13);
  v2 = v0[20];
  swift_unknownObjectRelease();
  v3 = v0[23];
}

void *sub_100181994()
{
  v0 = BiomeStoreEnumerator.deinit();
  v1 = v0[12];

  sub_100007378(v0 + 13);
  v2 = v0[20];
  swift_unknownObjectRelease();
  v3 = v0[23];

  return v0;
}

uint64_t sub_1001819DC()
{
  v0 = sub_100181994();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_100181A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeSessionWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100181A94()
{
  result = qword_100220690;
  if (!qword_100220690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220690);
  }

  return result;
}

uint64_t sub_100181AE8(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a6;
  while (1)
  {
    if ((a4 ^ a3) < 0x4000)
    {
      return 0;
    }

    a4 = Substring.index(before:)();
    v14[0] = Substring.subscript.getter();
    v14[1] = v9;
    v10 = a1(v14);
    if (v6)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return a4;
    }
  }

  return a4;
}

void sub_100181BE0()
{
  v1 = COERCE_DOUBLE((*(*v0 + 240))());
  if (v2)
  {
    SQLiteContext.setNull()();
  }

  else
  {
    Double.fromReferenceToUnixTime.getter(v1);
    SQLiteContext.setDouble(_:)(v3);
  }
}

uint64_t Double.fromReferenceToUnixTime.getter(double a1)
{
  if (qword_10021FA80 != -1)
  {
    result = sub_1000088EC();
  }

  if (*&qword_1002206A8 >= a1)
  {
    if (qword_10021FA70 != -1)
    {
      return sub_100006D80();
    }
  }

  else
  {
    if (qword_10021FA88 != -1)
    {
      result = sub_100004768();
    }

    if (*&qword_1002206B0 <= a1)
    {
      if (qword_10021FA78 != -1)
      {
        return sub_1000065A0();
      }
    }

    else if (qword_10021FA90 != -1)
    {
      return sub_100003F88();
    }
  }

  return result;
}

double ClosedRange<>.fromUnixToReferenceTime.getter(double a1, double a2)
{
  if (qword_10021FA70 != -1)
  {
    sub_100006D80();
  }

  v4 = *&qword_100220698;
  if (*&qword_100220698 >= a1)
  {
    if (qword_10021FA80 != -1)
    {
      sub_1000088EC();
    }

    a1 = *&qword_1002206A8;
    goto LABEL_15;
  }

  if (qword_10021FA78 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*&qword_1002206A0 <= a1)
    {
      if (qword_10021FA88 != -1)
      {
        sub_100004768();
      }

      a1 = *&qword_1002206B0;
    }

    else
    {
      if (qword_10021FA90 != -1)
      {
        sub_100003F88();
      }

      a1 = a1 - *&qword_1002206B8;
    }

LABEL_15:
    if (v4 >= a2)
    {
      if (qword_10021FA80 != -1)
      {
        sub_1000088EC();
      }

      v5 = *&qword_1002206A8;
    }

    else
    {
      if (qword_10021FA78 != -1)
      {
        sub_1000065A0();
      }

      if (*&qword_1002206A0 <= a2)
      {
        if (qword_10021FA88 != -1)
        {
          sub_100004768();
        }

        v5 = *&qword_1002206B0;
      }

      else
      {
        if (qword_10021FA90 != -1)
        {
          sub_100003F88();
        }

        v5 = a2 - *&qword_1002206B8;
      }
    }

    if (a1 <= v5)
    {
      break;
    }

    __break(1u);
LABEL_31:
    sub_1000065A0();
  }

  return a1;
}

uint64_t sub_100181FB0()
{
  v0 = BiomeStoreEnumerator.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1001820B0(uint64_t a1, uint64_t (*a2)(double), double (*a3)(uint64_t), double *a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2(v10);
  v14 = a3(v13);
  result = (*(v8 + 8))(v12, v7);
  *a4 = v14;
  return result;
}

double sub_1001821A4()
{
  if (qword_10021FA70 != -1)
  {
    swift_once();
  }

  v0 = *&qword_100220698;
  if (qword_10021FA80 != -1)
  {
    swift_once();
  }

  result = v0 - *&qword_1002206A8;
  *&qword_1002206B8 = v0 - *&qword_1002206A8;
  return result;
}

uint64_t Double.fromUnixToReferenceTime.getter(double a1)
{
  if (qword_10021FA70 != -1)
  {
    result = sub_100006D80();
  }

  if (*&qword_100220698 >= a1)
  {
    if (qword_10021FA80 != -1)
    {
      return sub_1000088EC();
    }
  }

  else
  {
    if (qword_10021FA78 != -1)
    {
      result = sub_1000065A0();
    }

    if (*&qword_1002206A0 <= a1)
    {
      if (qword_10021FA88 != -1)
      {
        return sub_100004768();
      }
    }

    else if (qword_10021FA90 != -1)
    {
      return sub_100003F88();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchStoreEnumerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100182444()
{
  result = qword_100220820;
  if (!qword_100220820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220820);
  }

  return result;
}

uint64_t UploadStateFileStore.uploadedAtBookmarks()()
{
  result = sub_10018B8D4();
  if (v0)
  {
    return v1;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v1 = _swiftEmptyArrayStorage;
LABEL_5:
  v6 = (v3 + 40 + 16 * v5);
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v6 + 16;
    ++v5;
    v8 = *v6;
    v6 += 16;
    if (v8)
    {
      v9 = *(v7 - 3);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = _swiftEmptyArrayStorage;
      goto LABEL_5;
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_19;
  }

  v10 = *(v3 + 40);

  if (v10)
  {
    return v1;
  }

  type metadata accessor for SessionBookmark();
  swift_allocObject();
  SessionBookmark.init()();
  v12 = v11;
  sub_10008C4AC(0, _swiftEmptyArrayStorage);
  result = sub_10004229C(_swiftEmptyArrayStorage);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = sub_10004229C(_swiftEmptyArrayStorage);
  v14 = __OFADD__(v13, 1);
  result = v13 + 1;
  if (!v14)
  {
    sub_1001826C4(result);
    sub_100182764(0, 0, 1, v12);
    return v1;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10018265C(int64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10006D244(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_1001826C4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100182764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for SessionBookmark();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_100115B50((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t BiomeDatabaseReader.__allocating_init(fileManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1001828FC(id a1, unint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  while (1)
  {
    v9 = [a1 bookmark];
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v11 = [a1 nextEvent];
    if (!v11)
    {

      return;
    }

    v12 = v11;
    sub_100183AE8(v10, v11, a2, a3, a4);
    if (v4)
    {
      break;
    }
  }
}

void *sub_1001829EC(id a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v8 = [a1 bookmark];
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    v10 = [a1 nextEvent];
    if (!v10)
    {

      return 0;
    }

    v11 = v10;
    v12 = sub_1001851C4(v9, v10, a2, a3);
    if (v3)
    {
      break;
    }

    v4 = v12;

    if (v4)
    {

      return v4;
    }
  }

  return v4;
}

void sub_100182AEC()
{
  sub_100006A3C();
  v3 = v2;
  do
  {
    v4 = [v0 bookmark];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v6 = [v0 nextEvent];
    if (!v6)
    {
      v7 = v5;
LABEL_9:

      break;
    }

    v7 = v6;
    v8 = v3(v5, v6);
    if (v1)
    {

      goto LABEL_9;
    }

    v9 = v8;
  }

  while (!v9);
  sub_100007FD4();
}

id sub_100182BCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v12 = v11 - v10;
  if (*(a1 + 16))
  {
    return [v2 newEnumeratorFromBookmark:?];
  }

  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = [v2 newEnumeratorFromStartTime:?];
  (*(v7 + 8))(v12, v4);
  return v13;
}

void sub_100182CD8()
{
  sub_100006A3C();
  v51 = v1;
  v2 = type metadata accessor for BiomeStreamConfig();
  v3 = sub_100003650(v2);
  v45 = v4;
  v46 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v48 = v8 - v7;
  v9 = type metadata accessor for FeedbackStreamDescriptor();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  __chkstk_darwin(v9);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v42 - v15;
  v16 = type metadata accessor for FeedbackStoreConfig();
  v17 = sub_100003650(v16);
  v49 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100003664();
  v23 = v22 - v21;
  v24 = *(v0 + 16);
  sub_100046184(&qword_100220938, &qword_1001A8730);
  v25 = *(v10 + 72);
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100197F20;
  v28 = enum case for FeedbackStreamDescriptor.session(_:);
  v29 = *(v11 + 104);
  v29(v27 + v26, enum case for FeedbackStreamDescriptor.session(_:), v9);
  v30 = v24;
  v31 = v51;
  FeedbackStoreConfig.init(fileManager:streams:)();
  if (!v31)
  {
    v51 = v16;
    v32 = v47;
    v29(v47, v28, v9);
    v43 = FeedbackStreamDescriptor.rawValue.getter();
    v44 = v33;
    v34 = *(v11 + 8);
    v34(v32, v9);
    v29(v50, v28, v9);
    v35 = v48;
    FeedbackStoreConfig.getConfig(forStream:)();
    v34(v50, v9);
    v36 = BiomeStreamConfig.storeConfig.getter();
    (*(v45 + 8))(v35, v46);
    v37 = type metadata accessor for RawPayload();
    v38 = BMUseCaseLegacy;
    objc_allocWithZone(BMStreamDatastoreReader);
    v39 = v38;
    if (!sub_100180808(v43, v44, v36, v37, v39))
    {
      sub_100185740();
      v40 = sub_100004248();
      sub_100011BE4(xmmword_10019B690, v40, v41);
    }

    (*(v49 + 8))(v23, v51);
  }

  sub_100007FD4();
}

void sub_1001830B4()
{
  sub_100006A3C();
  v2 = type metadata accessor for BiomeStreamConfig();
  v3 = sub_100003650(v2);
  v46 = v4;
  v47 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v9 = v8 - v7;
  v49 = type metadata accessor for FeedbackStoreConfig();
  v10 = sub_100003650(v49);
  v48 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v14 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for FeedbackStreamDescriptor();
  v19 = sub_100003650(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100003664();
  v26 = v25 - v24;
  SessionType.biomeStreamDescriptor.getter();
  if (sub_100008D0C(v17, 1, v18) == 1)
  {
    sub_10000F94C(v17, &qword_10021FC98, &qword_1001A7F68);
    sub_100185740();
    v27 = sub_100004248();
    sub_100011BE4(xmmword_10019BC20, v27, v28);
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    v29 = *(v0 + 16);
    sub_100046184(&qword_100220938, &qword_1001A8730);
    v30 = *(v21 + 72);
    v31 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100197F20;
    (*(v21 + 16))(v32 + v31, v26, v18);
    v33 = v29;
    FeedbackStoreConfig.init(fileManager:streams:)();
    if (!v1)
    {
      v34 = FeedbackStreamDescriptor.rawValue.getter();
      v36 = v35;
      FeedbackStoreConfig.getConfig(forStream:)();
      v45 = BiomeStreamConfig.storeConfig.getter();
      (*(v46 + 8))(v9, v47);
      v47 = type metadata accessor for RawPayload();
      v39 = BMUseCaseLegacy;
      objc_allocWithZone(BMStreamDatastoreReader);
      v40 = v39;
      if (sub_100180808(v34, v36, v45, v47, v40))
      {
        v41 = sub_100007824();
        v42(v41);
        (*(v21 + 8))(v26, v18);
        goto LABEL_6;
      }

      sub_100185740();
      v43 = sub_100004248();
      sub_100011BE4(xmmword_10019B690, v43, v44);
      v37 = sub_100007824();
      v38(v37);
    }

    (*(v21 + 8))(v26, v18);
  }

LABEL_6:
  sub_100007FD4();
}

void sub_100183494(uint64_t a1, uint64_t a2, char *a3)
{
  v89 = a3;
  v5 = sub_100046184(&qword_100217050, &qword_100199180);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  v12 = type metadata accessor for Date();
  v13 = sub_100003650(v12);
  v88 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  v19 = v18 - v17;
  v20 = type metadata accessor for SessionType();
  v21 = sub_100003650(v20);
  v86 = v22;
  v87 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_100003664();
  v27 = v26 - v25;
  v28 = [objc_allocWithZone(PBDataWriter) init];
  if (v28)
  {
    v84 = v27;
    v85 = a1;
    v29 = v28;
    sub_1001830B4();
    if (v3)
    {
    }

    else
    {
      v33 = v30;
      v81 = v19;
      v34 = v85;
      swift_beginAccess();
      v35 = (*(v34 + 16) + OBJC_IVAR___SRRawPayload_data);
      v36 = *v35;
      v37 = v35[1];
      sub_100014924(*v35, v37);
      sub_100186E38(v36, v37, v29);
      v38 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate;
      Date.timeIntervalSinceReferenceDate.getter();
      v40 = v39;
      Date.timeIntervalSinceReferenceDate.getter();
      if (v40 <= v41)
      {
        v43 = v41;
        v75 = v38;
        v76 = v11;
        v77 = v12;
        v78 = 0;
        v74 = v8;
        v83 = v29;

        v80 = v33;
        v44 = [v33 fetchEventsFrom:v40 to:v43];
        sub_100046184(&qword_100220948, &qword_1001A8738);
        v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = sub_10004229C(v45);
        v47 = 0;
        LODWORD(v82) = 1;
        while (v46 != v47)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v48 = *(v45 + 8 * v47 + 32);
          }

          v49 = v48;
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v51 = [v48 eventBody];
          if (v51)
          {
            v52 = v51;
            v53 = *&v51[OBJC_IVAR___SRRawPayload_data];
            v82 = *&v51[OBJC_IVAR___SRRawPayload_data + 8];
            sub_100014924(v53, v82);
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100014A40(v53, v82);
            v54 = isa;
            [v83 writeData:isa forTag:200];

            [v49 timestamp];
            LODWORD(v82) = 0;
            v47 = v50;
          }

          else
          {

            ++v47;
          }
        }

        v55 = v83;
        v56 = [v83 data];
        if (v56)
        {
          v57 = v56;
          sub_100026410(v57);
          v58 = objc_allocWithZone(type metadata accessor for RawPayload());
          RawPayload.init(with:)();
          v59 = v85;
          v60 = *(v85 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
          v61 = *(v85 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);
          (*(v86 + 16))(v84, v85 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v87);
          v62 = v77;
          (*(v88 + 16))(v81, v59 + v75, v77);
          v63 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
          swift_beginAccess();
          sub_10002DF94(v59 + v63, v76);
          v64 = type metadata accessor for SessionFeedback(0);
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();

          v67 = v78;
          SessionFeedback.init(session:sessionId:type:creationDate:closingDate:)();
          if (v67)
          {
          }

          else
          {
            v70 = v80;
            if (v82)
            {
              v71 = 1;
              v72 = v89;
              v73 = v74;
            }

            else
            {
              v73 = v74;
              Date.init(timeIntervalSinceReferenceDate:)();
              v71 = 0;
              v72 = v89;
            }

            sub_1000051C0(v73, v71, 1, v62);
            sub_10018D72C(v72, v73);

            sub_10000F94C(v73, &qword_100217050, &qword_100199180);
          }
        }

        else
        {
          sub_10018722C();
          v68 = sub_100004248();
          sub_10000E078(v68, v69);
        }
      }

      else
      {
        sub_10018722C();
        sub_100004248();
        *v42 = 260;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_10018722C();
    v31 = sub_100004248();
    sub_10000E078(v31, v32);
  }
}

void sub_100183AE8(void *a1, void *a2, unint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v11 = sub_100046184(&qword_100217050, &qword_100199180);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v35 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a2 eventBody];
  if (v20)
  {
    v35[1] = a5;
    v36 = a4;
    v21 = v20;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v14, 1, 1, v15);
    v22 = type metadata accessor for SessionFeedback(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v21, v19, v14);
    if (!v5)
    {
      v26 = v25;
      v27 = *(v25 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
      v28 = *(v25 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);

      [a2 timestamp];
      v30 = v29;
      type metadata accessor for SessionBookmark();
      swift_allocObject();
      v31 = sub_100190070(a1, v27, v28, v30);
      v37 = v31;
      __chkstk_darwin(v31);
      v35[-2] = &v37;
      v32 = a1;
      if (sub_100185C14(sub_1001874F4, &v35[-4], a3))
      {
      }

      else
      {

        v36(v26, v31);
      }
    }
  }

  else
  {
    v33 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v34 = v33;
    v34[1] = 0;
    swift_willThrow();
  }
}

void sub_100183E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v22;
  a20 = v23;
  v60 = v20;
  v57 = v24;
  v58 = v25;
  v65 = v26;
  v28 = v27;
  v59 = type metadata accessor for Date();
  v29 = sub_100003650(v59);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  sub_100003664();
  v36 = (v35 - v34);
  v37 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v38 = sub_100003650(v37);
  v61 = v39;
  v62 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_100003664();
  v44 = v43 - v42;
  a10 = sub_10018582C(v28);
  sub_100185D10(&a10);
  if (!v21)
  {
    v45 = a10;
    v64 = a10[2];
    if (!v64)
    {
LABEL_8:

      sub_100007FD4();
      return;
    }

    v46 = 0;
    v47 = v61;
    v63 = *(v62 + 24);
    v48 = a10 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v56 = v31 + 8;
    while (v46 < *(v45 + 16))
    {
      v49 = sub_1001870E8(v48 + *(v47 + 72) * v46, v44);
      v50 = *(v44 + v63);
      a10 = v50;
      __chkstk_darwin(v49);
      *(&v56 - 2) = &a10;
      if ((sub_100185C14(sub_10018714C, (&v56 - 4), v65) & 1) == 0)
      {
        v51 = *(v44 + *(v62 + 20));
        Date.init()();
        sub_100183494(v51, v44, v36);
        v53 = v52;
        v54 = sub_10000AD64();
        v55(v54);

        v57(v53, v50);

        v47 = v61;
      }

      ++v46;
      sub_10018716C(v44);
      if (v64 == v46)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001840D8(void *a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  type metadata accessor for SessionType();
  type metadata accessor for BiomeDatabaseReader.SessionProxy();
  sub_10017D560();
  var48[0] = Dictionary.init(dictionaryLiteral:)();

  while (1)
  {
    v10 = [a1 bookmark];
    if (!v10)
    {

LABEL_8:
      sub_100183E04(var48[0], a2, a3, a4, v14, v15, v16, v17, v19, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
    }

    v11 = v10;
    v12 = [a1 nextEvent];
    if (!v12)
    {

      goto LABEL_8;
    }

    v13 = v12;
    sub_10018425C(v11, v12, var48, a2, v4, a3, a4);
    if (v5)
    {
      break;
    }
  }
}

void sub_10018425C(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v70 = a7;
  v71 = a6;
  v72 = a5;
  v74 = a4;
  v77 = a1;
  v78 = a3;
  v9 = sub_100046184(&qword_100220950, &unk_1001A8750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v75 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SessionType();
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  __chkstk_darwin(v19);
  v76 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  v25 = sub_100046184(&qword_100217050, &qword_100199180);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v66 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a2 eventBody];
  if (v34)
  {
    v69 = v12;
    v73 = v24;
    v35 = v34;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v28, 1, 1, v29);
    v36 = type metadata accessor for SessionFeedback(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v35, v33, v28);
    if (v7)
    {
    }

    else
    {
      v42 = v39;
      v68 = v35;
      v43 = *(v39 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
      v44 = *(v39 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);

      [a2 timestamp];
      v46 = v45;
      type metadata accessor for SessionBookmark();
      swift_allocObject();
      v47 = v77;
      v67 = sub_100190070(v77, v43, v44, v46);
      v66 = *(v79 + 16);
      v66(v73, v42 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v80);
      v48 = *v78;
      v49 = v47;
      sub_10018A30C(v48, v15);
      if (sub_100008D0C(v15, 1, v16) == 1)
      {
        v77 = v42;
        sub_10000F94C(v15, &qword_100220950, &unk_1001A8750);
        v50 = v69;
      }

      else
      {
        v51 = v15;
        v52 = v75;
        v53 = sub_1001871C8(v51, v75);
        v54 = *(v52 + v16[6]);
        v81 = v54;
        __chkstk_darwin(v53);
        *(&v66 - 2) = &v81;
        v55 = sub_100185C14(sub_1001874F4, (&v66 - 4), v74);
        v50 = v69;
        if (v55)
        {
          v77 = v42;
          sub_10018716C(v52);
        }

        else
        {
          v74 = v54;
          sub_100183494(*(v52 + v16[5]), v73, (v42 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate));
          v64 = v63;

          v65 = v74;

          v71(v64, v65);
          v77 = v42;
          sub_10018716C(v75);
        }
      }

      v56 = v76;
      v57 = v73;
      v58 = v80;
      v59 = v66;
      v66(v76, v73, v80);
      v59(v50, v57, v58);
      v60 = v77;

      v61 = v67;

      [a2 timestamp];
      *(v50 + v16[5]) = v60;
      *(v50 + v16[6]) = v61;
      *(v50 + v16[7]) = v62;
      sub_1000051C0(v50, 0, 1, v16);
      sub_1001848FC(v50, v56);

      (*(v79 + 8))(v57, v58);
    }
  }

  else
  {
    v40 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v41 = v40;
    v41[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001848FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100046184(&qword_100220950, &unk_1001A8750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100008D0C(a1, 1, v14) == 1)
  {
    sub_10000F94C(a1, &qword_100220950, &unk_1001A8750);
    sub_1001910F0(v9);
    v15 = type metadata accessor for SessionType();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_10000F94C(v9, &qword_100220950, &unk_1001A8750);
  }

  else
  {
    sub_1001871C8(a1, v13);
    v17 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10019144C();
    *v3 = v20;
    v18 = type metadata accessor for SessionType();
    return (*(*(v18 - 8) + 8))(a2, v18);
  }
}

void BiomeDatabaseReader.forEach(withPredicate:block:)()
{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100182CD8();
  if (v0)
  {
LABEL_16:
    sub_100007FD4();
    return;
  }

  v10 = v9;
  if ((v6 & 0x80) == 0)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_9:

    v13 = sub_100182BCC(v12);

    if (v13)
    {
      if (v6)
      {
        sub_1001840D8(v13, v16, v4, v2);
      }

      else
      {

        sub_1001828FC(v13, v16, v4, v2);
      }
    }

    else
    {

      sub_100185740();
      v14 = sub_100004248();
      sub_100011BE4(xmmword_1001A86D0, v14, v15);
    }

    goto LABEL_16;
  }

  if (!sub_10004229C(v8))
  {
    v16 = v8;
    type metadata accessor for SessionBookmark();
    swift_allocObject();
    SessionBookmark.init()();

    v6 = 1;
    goto LABEL_9;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = v8;

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v6 = 1;
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = v8;
    v11 = *(v8 + 32);
    sub_100185794(v8, v6);

    v6 = 1;
    goto LABEL_9;
  }

  __break(1u);
}

void BiomeDatabaseReader.forEach(start:block:)(uint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  sub_100182CD8();
  if (!v3)
  {
    v7 = v6;
    Date.timeIntervalSinceReferenceDate.getter();
    v8 = [v7 newEnumeratorFromStartTime:?];

    if (v8)
    {
      sub_1001840D8(v8, _swiftEmptyArrayStorage, a2, a3);
    }

    else
    {
      sub_100185740();
      v9 = sub_100004248();
      sub_100011BE4(xmmword_1001A86D0, v9, v10);
    }
  }
}

void BiomeDatabaseReader.lookupSession(guid:creationTs:)()
{
  sub_100006A3C();
  v50 = v2;
  v51 = v3;
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Date();
  v9 = sub_100003650(v8);
  v49 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  v15 = (v14 - v13);
  v16 = type metadata accessor for SessionType();
  v17 = sub_100003650(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100003664();
  v24 = v23 - v22;
  sub_100182CD8();
  if (!v1)
  {
    v26 = v25;
    v44 = v7;
    v45 = v15;
    v46 = v0;
    v47 = v19;
    v48 = v24;
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = [v26 newEnumeratorFromStartTime:?];

    if (v27)
    {
      v28 = v51;

      v29 = sub_1001829EC(v27, v50, v28);
      v32 = v29;
      if (v29)
      {
        v34 = v47;
        v33 = v48;
        v35 = v16;
        v36 = (*(v47 + 16))(v48, v29 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v16);
        __chkstk_darwin(v36);
        *(&v44 - 2) = v33;
        sub_100182AEC();
        v50 = v37;
        v51 = v32;
        v52 = v27;
        if (v37)
        {
          v38 = v49;
          v39 = v44;
          v40 = v8;
          (*(v49 + 16))(v44, v37 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate, v8);
          sub_1000051C0(v39, 0, 1, v8);
          v41 = v45;
          (*(v38 + 32))(v45, v39, v40);
        }

        else
        {
          v42 = v44;
          v40 = v8;
          sub_1000051C0(v44, 1, 1, v8);
          v41 = v45;
          Date.init()();
          v43 = sub_100008D0C(v42, 1, v40);
          v38 = v49;
          if (v43 != 1)
          {
            sub_10000F94C(v42, &qword_100217050, &qword_100199180);
          }
        }

        sub_100183494(v51, v33, v41);
        (*(v38 + 8))(v41, v40);

        (*(v34 + 8))(v33, v35);
      }

      else
      {
      }
    }

    else
    {
      sub_100185740();
      v30 = sub_100004248();
      sub_100011BE4(xmmword_1001A86D0, v30, v31);
    }
  }

  sub_100007FD4();
}

void *sub_1001851C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_100046184(&qword_100217050, &qword_100199180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 eventBody];
  if (v18)
  {
    v19 = v18;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v12, 1, 1, v13);
    v20 = type metadata accessor for SessionFeedback(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v19, v17, v12);
    if (v4 || ((v5 = v23, *(v23 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId) == a3) ? (v27 = *(v23 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8) == a4) : (v27 = 0), v27))
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else
  {
    v24 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v25 = v24;
    v25[1] = 0;
    swift_willThrow();
  }

  return v5;
}

void *sub_1001853D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100046184(&qword_100217050, &qword_100199180);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 eventBody];
  if (v14)
  {
    v15 = v14;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v8, 1, 1, v9);
    v16 = type metadata accessor for SessionFeedback(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v15, v13, v8);
    if (v2)
    {
    }

    else
    {
      v3 = v19;
      v23 = static SessionType.== infix(_:_:)();

      if ((v23 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else
  {
    v20 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v21 = v20;
    v21[1] = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t BiomeDatabaseReader.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void *sub_100185644(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_100220930, &qword_1001A8728);
  v4 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100185740()
{
  result = qword_100220828;
  if (!qword_100220828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220828);
  }

  return result;
}

uint64_t sub_100185794(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for BiomeDatabaseReader.SessionProxy()
{
  result = qword_1002209B0;
  if (!qword_1002209B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10018582C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100185644(*(a1 + 16), 0);
  v4 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
  sub_100186E9C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v5;

  sub_100019180();
  if (v6 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100185920(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = a4[2];
    if (v7 <= v8)
    {
      v9 = a4[2];
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_100216188, &qword_1001A8270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_100117CA8(a4 + 4, v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, a4 + 4, v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_100185A0C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100046184(&qword_100220930, &qword_1001A8728);
  v10 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10018E950(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100185C14(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_10004229C(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_100185D10(size_t *a1)
{
  v2 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001870B0(v3);
  }

  v4 = *(v3 + 16);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100185DB8(v5);
  *a1 = v3;
}

void sub_100185DB8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BiomeDatabaseReader.SessionProxy();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001860E8(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100185EE8(0, v2, 1, a1);
  }
}

void sub_100185EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v36 = a3;
      v33 = v24;
      v34 = v23;
      v25 = v23;
      v35 = v21;
      do
      {
        sub_1001870E8(v24, v18);
        sub_1001870E8(v21, v14);
        v26 = *(v8 + 28);
        v27 = *&v18[v26];
        v28 = *&v14[v26];
        sub_10018716C(v14);
        sub_10018716C(v18);
        if (v27 >= v28)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return;
        }

        sub_1001871C8(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        sub_1001871C8(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v36 + 1;
      v21 = v35 + v31;
      v23 = v34 - 1;
      v24 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1001860E8(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v119 = *(v8 - 8);
  v9 = *(v119 + 64);
  __chkstk_darwin(v8);
  v115 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v124 = &v108 - v12;
  __chkstk_darwin(v13);
  v15 = &v108 - v14;
  __chkstk_darwin(v16);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_100:
    a3 = *v112;
    if (!*v112)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v103 = (v22 + 16);
      v102 = *(v22 + 16);
      for (i = v22; v102 >= 2; v22 = i)
      {
        if (!*v121)
        {
          goto LABEL_138;
        }

        v104 = (v22 + 16 * v102);
        v22 = *v104;
        v105 = &v103[2 * v102];
        v106 = v105[1];
        sub_100186934(*v121 + *(v119 + 72) * *v104, *v121 + *(v119 + 72) * *v105, *v121 + *(v119 + 72) * v106, a3);
        if (v5)
        {
          break;
        }

        if (v106 < v22)
        {
          goto LABEL_126;
        }

        if (v102 - 2 >= *v103)
        {
          goto LABEL_127;
        }

        *v104 = v22;
        v104[1] = v106;
        v107 = *v103 - v102;
        if (*v103 < v102)
        {
          goto LABEL_128;
        }

        v102 = *v103 - 1;
        memmove(v105, v105 + 2, 16 * v107);
        *v103 = v102;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v22 = sub_10011775C(v22);
    goto LABEL_102;
  }

  v125 = v17;
  v110 = a4;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v116 = &v108 - v18;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v21 + 1 < v20)
    {
      v25 = *v121;
      a3 = *(v119 + 72);
      i = v20;
      v123 = v21 + 1;
      v26 = v25 + a3 * v24;
      v27 = v25;
      sub_1001870E8(v26, v19);
      sub_1001870E8(v27 + a3 * v23, v15);
      v28 = *(v125 + 28);
      v29 = *&v19[v28];
      v30 = *&v15[v28];
      sub_10018716C(v15);
      sub_10018716C(v19);
      v31 = i;
      v111 = v23;
      v32 = v23 + 2;
      v120 = a3;
      v33 = v27 + a3 * (v23 + 2);
      while (1)
      {
        v34 = v32;
        if (++v123 >= v31)
        {
          break;
        }

        a3 = v29 < v30;
        sub_1001870E8(v33, v19);
        sub_1001870E8(v26, v15);
        v35 = *(v125 + 28);
        v36 = *&v19[v35];
        v37 = *&v15[v35];
        sub_10018716C(v15);
        sub_10018716C(v19);
        v31 = i;
        v33 += v120;
        v26 += v120;
        v32 = v34 + 1;
        if (v29 < v30 == v36 >= v37)
        {
          goto LABEL_9;
        }
      }

      v123 = v31;
LABEL_9:
      if (v29 < v30)
      {
        v24 = v123;
        if (v123 < v111)
        {
          goto LABEL_132;
        }

        if (v111 >= v123)
        {
          v23 = v111;
          goto LABEL_31;
        }

        i = v22;
        v109 = v5;
        if (v31 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v31;
        }

        v39 = v120 * (v38 - 1);
        v40 = v120 * v38;
        v41 = v111 * v120;
        v42 = v111;
        do
        {
          if (v42 != --v24)
          {
            a3 = *v121;
            if (!*v121)
            {
              goto LABEL_139;
            }

            sub_1001871C8(a3 + v41, v115);
            v43 = v41 < v39 || a3 + v41 >= a3 + v40;
            if (v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1001871C8(v115, a3 + v39);
          }

          ++v42;
          v39 -= v120;
          v40 -= v120;
          v41 += v120;
        }

        while (v42 < v24);
        v5 = v109;
        v22 = i;
      }

      v24 = v123;
      v23 = v111;
    }

LABEL_31:
    v44 = v121[1];
    if (v24 < v44)
    {
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_131;
      }

      if (v24 - v23 < v110)
      {
        break;
      }
    }

LABEL_47:
    if (v24 < v23)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v99 = *(v22 + 16);
      sub_10006C888();
      v22 = v100;
    }

    a3 = *(v22 + 16);
    v59 = a3 + 1;
    if (a3 >= *(v22 + 24) >> 1)
    {
      sub_10006C888();
      v22 = v101;
    }

    *(v22 + 16) = v59;
    v60 = v22 + 32;
    v61 = (v22 + 32 + 16 * a3);
    v62 = v123;
    *v61 = v23;
    v61[1] = v62;
    v120 = *v112;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v22;
      while (1)
      {
        v63 = v59 - 1;
        v64 = (v60 + 16 * (v59 - 1));
        v65 = (v22 + 16 * v59);
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v66 = *(v22 + 32);
          v67 = *(v22 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_68:
          if (v69)
          {
            goto LABEL_117;
          }

          v81 = *v65;
          v80 = v65[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_120;
          }

          v85 = v64[1];
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_125;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v59 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v59 < 2)
        {
          goto LABEL_119;
        }

        v88 = *v65;
        v87 = v65[1];
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_83:
        if (v84)
        {
          goto LABEL_122;
        }

        v90 = *v64;
        v89 = v64[1];
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_124;
        }

        if (v91 < v83)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v63 - 1 >= v59)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v121)
        {
          goto LABEL_137;
        }

        v95 = (v60 + 16 * (v63 - 1));
        v96 = *v95;
        a3 = v63;
        v97 = (v60 + 16 * v63);
        v22 = v97[1];
        sub_100186934(*v121 + *(v119 + 72) * *v95, *v121 + *(v119 + 72) * *v97, *v121 + *(v119 + 72) * v22, v120);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v22 < v96)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        v95[1] = v22;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v59 = v5 - 1;
        memmove(v97, v97 + 2, 16 * (v5 - 1 - a3));
        v22 = i;
        *(i + 16) = v5 - 1;
        v98 = v5 > 2;
        v5 = 0;
        v19 = v116;
        if (!v98)
        {
          goto LABEL_97;
        }
      }

      v70 = v60 + 16 * v59;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_115;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_116;
      }

      v77 = v65[1];
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_118;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_121;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = v64[1];
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v68 < v94)
        {
          v63 = v59 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v121[1];
    v21 = v123;
    if (v123 >= v20)
    {
      goto LABEL_100;
    }
  }

  v45 = v23 + v110;
  if (__OFADD__(v23, v110))
  {
    goto LABEL_133;
  }

  if (v45 >= v44)
  {
    v45 = v121[1];
  }

  if (v45 < v23)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v24 == v45)
  {
    goto LABEL_47;
  }

  i = v22;
  v109 = v5;
  v46 = *v121;
  v47 = *(v119 + 72);
  v48 = *v121 + v47 * (v24 - 1);
  v49 = v23;
  v50 = -v47;
  v111 = v49;
  v51 = v49 - v24;
  v113 = v47;
  v114 = v45;
  v52 = v46 + v24 * v47;
LABEL_40:
  v123 = v24;
  v117 = v52;
  v118 = v51;
  v120 = v48;
  v53 = v48;
  a3 = v125;
  while (1)
  {
    sub_1001870E8(v52, v19);
    sub_1001870E8(v53, v15);
    v54 = *(a3 + 28);
    v55 = *&v19[v54];
    v56 = *&v15[v54];
    sub_10018716C(v15);
    sub_10018716C(v19);
    if (v55 >= v56)
    {
LABEL_45:
      v24 = v123 + 1;
      v48 = v120 + v113;
      v51 = v118 - 1;
      v52 = v117 + v113;
      if (v123 + 1 == v114)
      {
        v24 = v114;
        v5 = v109;
        v22 = i;
        v23 = v111;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v46)
    {
      break;
    }

    v57 = v124;
    sub_1001871C8(v52, v124);
    a3 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_1001871C8(v57, v53);
    v53 += v50;
    v52 += v50;
    v43 = __CFADD__(v51++, 1);
    if (v43)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_100186934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
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

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v20 = v16 / v15;
  v59 = a1;
  v58 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    v53 = v10;
    sub_10018E950(a2, v18 / v15, a4);
    v29 = a4 + v21 * v15;
    v30 = -v15;
    v31 = v29;
    v54 = v30;
    v52 = a1;
LABEL_37:
    v55 = a2 + v30;
    v32 = a3;
    v33 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v33;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v33;
      v34 = a2;
      v35 = a4;
      v36 = v31;
      v37 = v32 + v54;
      v38 = v29 + v54;
      v39 = v29;
      sub_1001870E8(v29 + v54, v13);
      v40 = v13;
      v41 = v53;
      sub_1001870E8(v55, v53);
      v42 = *(v56 + 28);
      v43 = *(v40 + v42);
      v44 = *(v41 + v42);
      v45 = v41;
      v13 = v40;
      sub_10018716C(v45);
      sub_10018716C(v40);
      if (v43 < v44)
      {
        v50 = v39;
        v47 = v32 < v34 || v37 >= v34;
        a3 = v37;
        a4 = v35;
        if (v47)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v51;
          a1 = v52;
          v30 = v54;
          v29 = v50;
        }

        else
        {
          a1 = v52;
          v31 = v51;
          v30 = v54;
          v48 = v55;
          a2 = v55;
          v29 = v50;
          if (v32 != v34)
          {
            v49 = v51;
            swift_arrayInitWithTakeBackToFront();
            v29 = v50;
            a2 = v48;
            v31 = v49;
          }
        }

        goto LABEL_37;
      }

      v46 = v32 < v39 || v37 >= v39;
      a4 = v35;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v37;
        v29 = v38;
        v33 = v38;
        v31 = v36;
        a2 = v34;
        a1 = v52;
      }

      else
      {
        v33 = v38;
        v17 = v39 == v32;
        v32 = v37;
        v29 = v38;
        v31 = v36;
        a2 = v34;
        a1 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v36;
          v32 = v37;
          v29 = v38;
          v33 = v38;
        }
      }
    }

    v59 = a2;
    v57 = v31;
  }

  else
  {
    sub_10018E950(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v57 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1001870E8(a2, v13);
      sub_1001870E8(a4, v10);
      v24 = *(v56 + 28);
      v25 = *&v13[v24];
      v26 = *&v10[v24];
      sub_10018716C(v10);
      sub_10018716C(v13);
      if (v25 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v59 = a1;
    }
  }

LABEL_59:
  sub_100186D58(&v59, &v58, &v57);
}

uint64_t sub_100186D58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_100186E38(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  v7 = [a3 writeData:isa];

  return v7;
}

void sub_100186E9C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v31 = a4;
  v17 = *(a4 + 64);
  v16 = a4 + 64;
  v15 = v17;
  v18 = -1 << *(v16 - 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  if (!a2)
  {
    v22 = 0;
LABEL_21:
    *a1 = v31;
    a1[1] = v16;
    a1[2] = ~v18;
    a1[3] = v22;
    a1[4] = v20;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(v16 - 32);
    v29 = a1;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_24;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_25;
      }

      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v20 = 0;
            goto LABEL_19;
          }

          v20 = *(v16 + 8 * v25);
          ++v22;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = v22;
LABEL_15:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = *(v30 + 72);
      sub_1001870E8(*(v31 + 56) + v27 * (v26 | (v25 << 6)), v11);
      sub_1001871C8(v11, v14);
      sub_1001871C8(v14, a2);
      if (v24 == a3)
      {
        break;
      }

      a2 += v27;
      v21 = v24;
      v22 = v25;
    }

    v22 = v25;
LABEL_19:
    v18 = v28;
    a1 = v29;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1001870E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018716C(uint64_t a1)
{
  v2 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001871C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018722C()
{
  result = qword_100220940;
  if (!qword_100220940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220940);
  }

  return result;
}

unsigned __int16 *getEnumTagSinglePayload for BiomeReadError(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for BiomeReadError(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1001873D4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001873F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

uint64_t sub_100187450()
{
  result = type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionFeedback(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SessionBookmark();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_100187510(char a1, char a2)
{
  v4 = sub_100187A64(a1);
  v6 = v5;
  if (v4 == sub_100187A64(a2) && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = SearchSessionTableColumn.columnType.getter(a1);
    return v11 == SearchSessionTableColumn.columnType.getter(a2);
  }

  return result;
}

BOOL sub_1001875CC(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 29556;
  switch(a1)
  {
    case 1:
      v3 = 0xE800000000000000;
      v4 = 0x6B63616264656566;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v4 = 0x64695F7972657571;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 29556;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v7 = 0x6B63616264656566;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v7 = 1701869940;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v7 = 0x64695F7972657571;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {

    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_16:
    v11 = SearchFeedbackTableColumn.columnType.getter(a1);
    return v11 == SearchFeedbackTableColumn.columnType.getter(a2);
  }

  return result;
}

Swift::Int sub_100187738(char a1)
{
  Hasher.init(_seed:)();
  SearchSessionTableColumn.rawValue.getter(a1);
  sub_100005F34();

  return Hasher._finalize()();
}

Swift::Int sub_100187788()
{
  Hasher.init(_seed:)();
  sub_1001877D0();
  return Hasher._finalize()();
}

uint64_t sub_1001877D0()
{
  String.hash(into:)();
}

uint64_t sub_100187874()
{
  String.hash(into:)();
}

Swift::Int sub_100187990(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  SearchSessionTableColumn.rawValue.getter(a2);
  sub_100005F34();

  return Hasher._finalize()();
}

Swift::Int sub_1001879DC()
{
  Hasher.init(_seed:)();
  sub_1001877D0();
  return Hasher._finalize()();
}

Swift::Int sub_100187A20(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100187A64(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 0x746E65696C63;
      break;
    case 3:
      result = 0x6975675F72657375;
      break;
    case 4:
      result = 0x6C62616E655F7564;
      break;
    case 5:
      result = 0x5F7972746E756F63;
      break;
    case 6:
      result = 0x656C61636F6CLL;
      break;
    case 7:
      result = 0x625F6D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100187B4C(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6B63616264656566;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x64695F7972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100187BBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = v3[10];
  sub_100007534(v3 + 6, v3[9]);
  v7 = sub_100003F4C();
  v8(v7);
  if (v4)
  {
    return sub_10000450C();
  }

  sub_100007534(v25, v25[3]);
  v9 = sub_1000088D4();
  v10(v9);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v11 = _arrayForceCast<A, B>(_:)();

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > a3)
  {
    sub_100005728(result, v13, v14, v15, v16, v17, v18, v19, v22[0]);

    v20 = v23;
    v21 = v24;
    sub_100007534(v22, v23);
    (*(v21 + 16))(v20, v21);
    sub_100007378(v22);
    sub_100007378(v25);
    return sub_10000450C();
  }

  __break(1u);
  return result;
}

uint64_t sub_100187D1C(unint64_t a1)
{
  v4 = v1[10];
  sub_100007534(v1 + 6, v1[9]);
  v5 = sub_100003F4C();
  v6(v5);
  if (v2)
  {
    return v1;
  }

  sub_100007534(v36, v36[3]);
  v7 = sub_1000088D4();
  v8(v7);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v9 = _arrayForceCast<A, B>(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v9 + 16) > a1)
  {
    sub_100005728(result, v11, v12, v13, v14, v15, v16, v17, v33[0]);

    v18 = v34;
    v19 = v35;
    sub_100007534(v33, v34);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    v23 = v34;
    v24 = v35;
    sub_100007534(v33, v34);
    v25 = (*(v24 + 24))(v23, v24);
    v26 = type metadata accessor for RawPayload();
    v27 = BMUseCaseLegacy;
    v28 = objc_allocWithZone(BMStreamDatastoreReader);
    v29 = v27;
    v30 = v25;
    v1 = v28;
    v31 = sub_100180808(v20, v22, v30, v26, v29);
    if (v31)
    {
      v1 = v31;
    }

    else
    {
      sub_10017F550();
      sub_100004248();
      *v32 = 3;
      swift_willThrow();
    }

    sub_100007378(v33);
    sub_100007378(v36);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100187F58()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  sub_100146180();
  sub_100004248();
  *v1 = 0;
  *(v1 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100188014(uint64_t *a1, uint64_t *a2)
{
  sub_100046184(a1, a2);
  sub_100007EAC();
  if (!v2)
  {
    BaseBiomeTable.getSQLiteBridge()();
  }

  return sub_10000450C();
}

uint64_t sub_1001880A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000F75C(a1, a2, a3);
  sub_100187F58();
  if (!v3)
  {
    sub_100187BBC(*(v5 + 16), *(v5 + 24), v4);
  }

  return sub_10000450C();
}

double sub_100188144(uint64_t *a1, uint64_t *a2)
{
  sub_100046184(a1, a2);
  sub_100007EAC();
  if (!v2)
  {
    TimeFrame = BaseBiomeTable.getQueryTimeFrameGuideline()();
  }

  return TimeFrame;
}

uint64_t sub_1001881D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000F75C(a1, a2, a3);
  sub_100187F58();
  if (!v3)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = sub_10000AF78();
    sub_100187D1C(v7);
  }

  return sub_10000AF78();
}

uint64_t sub_10018823C()
{
  v2 = v0;
  sub_100046184(&qword_100220290, &qword_1001A89F0);
  if (!swift_dynamicCastClass())
  {
    sub_10017F550();
    v5 = sub_100004248();
    sub_100008C50(v5, v6);

    goto LABEL_6;
  }

  v3 = sub_100188014(&qword_100220288, &unk_1001A8260);
  if (v1)
  {
    sub_10000E098();
LABEL_6:
    sub_100046184(&qword_100220F78, &qword_1001A89F8);
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = sub_100188144(&qword_100220288, &unk_1001A8260);
  *(v0 + 56) = v8;
  v2 = SQLiteBaseVTab.Cursor.init(_:)();

  return v2;
}

uint64_t sub_100188374()
{
  v2 = v0;
  sub_100046184(&qword_100220280, &qword_1001A89E0);
  if (!swift_dynamicCastClass())
  {
    sub_10017F550();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    goto LABEL_6;
  }

  v3 = sub_100188014(&qword_100220278, &unk_1001A8250);
  if (v1)
  {

LABEL_6:
    sub_100046184(&qword_100220F70, &qword_1001A89E8);
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = sub_100188144(&qword_100220278, &unk_1001A8250);
  *(v0 + 56) = v7;
  v2 = SQLiteBaseVTab.Cursor.init(_:)();

  return v2;
}

void *SearchFeedbackTableColumn.columnType.getter(char a1)
{
  v1 = &type metadata for Double;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
      v1 = &type metadata for String;
      break;
    case 3:
      v1 = sub_100046184(&qword_10021ED60, &qword_1001A87C0);
      sub_10018856C();
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_10018856C()
{
  result = qword_10021ED68;
  if (!qword_10021ED68)
  {
    sub_1000461CC(&qword_10021ED60, &qword_1001A87C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED68);
  }

  return result;
}

uint64_t SearchFeedbackTableColumn.propertyName.getter(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = sub_1000065C0();
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x64497972657571;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchFeedbackTableColumn_optional __swiftcall SearchFeedbackTableColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002030B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchFeedbackTableColumn.rawValue.getter(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = sub_1000065C0();
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x64695F7972657571;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchFeedbackTableColumn_optional sub_100188738@<W0>(Swift::String *a1@<X0>, SearchFeedback::SearchFeedbackTableColumn_optional *a2@<X8>)
{
  result.value = SearchFeedbackTableColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100188768@<X0>(uint64_t *a1@<X8>)
{
  result = SearchFeedbackTableColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall SearchFeedbackTable.getModuleName()()
{
  v0 = 0x6162646565665F70;
  v1 = 0xEA00000000006B63;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SearchFeedbackTable.__allocating_init(config:environment:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_1000092B4(a1, v8);
  v6 = sub_10017DE28(v8, a2, a3);
  sub_100007378(a1);
  return v6;
}

uint64_t SearchFeedbackTable.init(config:environment:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1000092B4(a1, v8);
  v6 = sub_10017DE28(v8, a2, a3);
  sub_100007378(a1);
  return v6;
}

uint64_t SearchFeedbackTable.__deallocating_deinit()
{
  v0 = _s14SearchFeedback0aB5TableCfd_0();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t SearchFeedbackConnection.checkPlanOrdering(_:)(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 24);
    if (!v1)
    {
      goto LABEL_10;
    }

    if (!*(v1 + 4))
    {
      v2 = *v1;
      if (v2 <= 3)
      {
        if ((v2 & 0x80000000) == 0)
        {
          if (!*(&off_100202E98 + v2 + 32))
          {
            *(result + 60) = 1;
          }

          return result;
        }

        __break(1u);
LABEL_10:
        __break(1u);
      }
    }
  }

  return result;
}

void SearchFeedbackConnection.checkPlanConstraints(_:)(unsigned int *a1)
{
  v1 = *a1;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6;
  v9 = 8 * v6;
  v10 = 12 * v6;
  while (v1 != v8)
  {
    if (v8 >= v1)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    v11 = *(a1 + 1);
    if (!v11)
    {
      goto LABEL_45;
    }

    v12 = (v11 + v10);
    v13 = *v12;
    if (v13 <= 3)
    {
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v14 = *(&off_100202F48 + v13 + 32);
      if ((v14 - 2) >= 2)
      {
        v15 = *(v12 + 5);
        if (v14)
        {
          if (!*(v12 + 5))
          {

            return;
          }
        }

        else if (*(v12 + 5))
        {
          v16 = *(v12 + 4);
          HIDWORD(v17) = v16 - 4;
          LODWORD(v17) = v16 - 4;
          switch((v17 >> 2))
          {
            case 0u:
            case 7u:
              v18 = v4;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v4 = v18;
              v3 = 1;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                goto LABEL_25;
              }

              v3 = 1;
              break;
            case 1u:
            case 3u:
              v20 = v3;
              v21 = swift_isUniquelyReferenced_nonNull_native();
              v3 = v20;
              v4 = 1;
              if (v21)
              {
                v4 = 1;
              }

              else
              {
LABEL_25:
                v30 = v7[2] + 1;
                v31 = v7;
                v32 = v3;
                v33 = v4;
                sub_10006C9F0(0, v30, 1, v31);
                v4 = v33;
                v3 = v32;
                v7 = v34;
              }

              break;
            default:
              goto LABEL_15;
          }

          v23 = v7[2];
          v22 = v7[3];
          v45 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v27 = v7;
            v28 = v3;
            v43 = v4;
            sub_10006C9F0(v22 > 1, v45, 1, v27);
            v4 = v43;
            v3 = v28;
            v7 = v29;
          }

          v7[2] = v45;
          *(v7 + v23 + 32) = v16;
          if (__OFADD__(v5++, 1))
          {
            goto LABEL_44;
          }

          v25 = *(a1 + 4);
          if (!v25)
          {
            goto LABEL_47;
          }

          v6 = v8 + 1;
          v26 = v25 + v9;
          *v26 = v5;
          *(v26 + 4) = 1;
          goto LABEL_3;
        }
      }
    }

LABEL_15:
    v9 += 8;
    v10 += 12;
    ++v8;
  }

  *(a1 + 8) = *(&off_100202F70 + v4 + v3 + 4);
  v35 = v7[2];
  if (v35 > 0x7FFFFFFE)
  {
    goto LABEL_43;
  }

  v36 = v35 + 1;
  v37 = sqlite3_malloc(v35 + 1);
  if (!v37)
  {
    goto LABEL_46;
  }

  v38 = v37;
  *(a1 + 6) = v37;
  if (v35)
  {
    v44 = v37;
    v46 = v35 + 1;
    sub_10017EFF8(0, v35, 0);
    v39 = 32;
    while (1)
    {
      v40 = *(v7 + v39);
      if (v40 < 0)
      {
        break;
      }

      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10017EFF8((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      *(&_swiftEmptyArrayStorage[4] + v42) = v40;
      ++v39;
      if (!--v35)
      {

        v38 = v44;
        v36 = v46;
        goto LABEL_36;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_36:
  sub_10017F018(&off_100202FA8);
  memcpy(v38, &_swiftEmptyArrayStorage[4], v36);

  a1[14] = 1;
}

double *sub_100188D58()
{
  swift_allocObject();
  sub_10000AF78();
  return sub_100188DA0();
}

double *sub_100188DA0()
{
  v2 = v0;
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = static BiomeStoreEnumerator.Constants.defaultTimeRange;
  type metadata accessor for SearchFeedbackConnection(0);
  if (!swift_dynamicCastClass())
  {
    sub_10017F550();
    v12 = sub_100004248();
    sub_100008C50(v12, v13);

LABEL_8:
    type metadata accessor for SearchFeedbackCursor(0);
    swift_deallocPartialClassInstance();
    return v2;
  }

  sub_100006D74();
  v5 = sub_100188014(v3, v4);
  if (v1)
  {
    sub_10000E098();
    goto LABEL_8;
  }

  v7 = v5;
  v8 = v6;
  sub_100006D74();
  v14 = sub_1001880A0(v9, v10, v11);
  v16 = v15;
  sub_100006D74();
  v38 = sub_1001880A0(v17, v18, v19);
  v43 = v20;
  ObjectType = swift_getObjectType();
  v36 = *(v8 + 8);
  v36(ObjectType, v8);
  v39 = v21;
  v22 = swift_getObjectType();
  (*(v39 + 40))(v42, v14, v16, v22);
  swift_unknownObjectRelease();

  v36(ObjectType, v8);
  v25 = v24;
  v26 = swift_getObjectType();
  (*(v25 + 40))(v41, v38, v43, v26, v25);
  swift_unknownObjectRelease();

  sub_100006D74();
  *(v0 + 72) = sub_100188144(v27, v28);
  *(v0 + 80) = v29;
  sub_100006D74();
  v33 = sub_1001881D4(v30, v31, v32);
  v34 = v2[9];
  v35 = v2[10];
  sub_1000092B4(v41, v40);
  type metadata accessor for FeedbackEnumerator();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 8) = sub_10018EA74(v33, v7, v8, v40, v34, v35);
  v2 = sub_100188374();

  swift_unknownObjectRelease();
  sub_100007378(v41);
  sub_100007378(v42);
  return v2;
}

void SearchFeedbackCursor.readFilterParameters(idxNum:idxStr:arguments:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = a2;
      v8 = (a3 + 32);
      do
      {
        v9 = *v7++;
        v10 = *v8;
        v11 = SQLiteArgument.getDouble()();
        HIDWORD(v12) = v9 - 4;
        LODWORD(v12) = v9 - 4;
        switch((v12 >> 2))
        {
          case 0u:
            if (v4 < v11)
            {
              v4 = v11 + 0.0;
              if (v11 != INFINITY)
              {
                *&v4 += (*&v4 >> 63) | 1;
              }
            }

            break;
          case 1u:
            if (v11 <= v5)
            {
              v5 = v11;
            }

            break;
          case 3u:
            if (v11 < v5)
            {
              v13 = 0.0 - v11;
              if (v13 != INFINITY)
              {
                *&v13 += (*&v13 >> 63) | 1;
              }

              v5 = -v13;
            }

            break;
          case 7u:
            if (v4 <= v11)
            {
              v4 = v11;
            }

            break;
          default:
            break;
        }

        ++v8;
        --v6;
      }

      while (v6);
    }
  }

  v14 = 0.0;
  if (v4 >= 0.0)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0.0;
  }

  if (v5 >= 0.0)
  {
    v14 = v5;
  }

  if (v14 < v15)
  {
    v14 = v15;
  }

  if (v15 > v14)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v3 + 64);
    v17 = ClosedRange<>.fromUnixToReferenceTime.getter(v15, v14);
    v19 = v18;
    swift_beginAccess();
    *(v16 + 24) = v17;
    *(v16 + 32) = v19;
  }
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchFeedbackCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  v4 = v3;
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  switch(SearchFeedbackTableColumn.init(rawValue:)(v8).value)
  {
    case SearchFeedback_SearchFeedbackTableColumn_feedback:
      v16 = *(v2 + 64);
      v17 = sub_10000AF78();
      sub_10018F200(v17);
      break;
    case SearchFeedback_SearchFeedbackTableColumn_type:
      v13 = *(v2 + 64);
      v14 = sub_10018EFD0();
      if (!v4)
      {
        SQLiteContext.setString(_:destructor:)(v14, v15, 1, on.context._rawValue);
      }

      break;
    case SearchFeedback_SearchFeedbackTableColumn_queryId:
      v10 = *(v2 + 64);
      v11 = sub_10018F090();
      if (!v4)
      {
        if (v12)
        {
          goto LABEL_5;
        }

        SQLiteContext.setUInt64(_:)(v11);
      }

      break;
    case SearchFeedback_SearchFeedbackTableColumn_unknownDefault:
LABEL_5:
      SQLiteContext.setNull()();
      break;
    default:
      v9 = *(v2 + 64);
      sub_10000AF78();
      sub_100181BE0();
      break;
  }

  return 0;
}

unint64_t sub_100189418()
{
  result = qword_1002209F0;
  if (!qword_1002209F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F0);
  }

  return result;
}

unint64_t sub_10018946C(void *a1)
{
  a1[1] = sub_1001894A4();
  a1[2] = sub_1001894F8();
  result = sub_10018954C();
  a1[3] = result;
  return result;
}

unint64_t sub_1001894A4()
{
  result = qword_1002209F8;
  if (!qword_1002209F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F8);
  }

  return result;
}

unint64_t sub_1001894F8()
{
  result = qword_100220A00;
  if (!qword_100220A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A00);
  }

  return result;
}

unint64_t sub_10018954C()
{
  result = qword_100220A08;
  if (!qword_100220A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A08);
  }

  return result;
}

unint64_t sub_1001895A4()
{
  result = qword_100220A10;
  if (!qword_100220A10)
  {
    sub_1000461CC(&qword_100220A18, &qword_1001A8888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A10);
  }

  return result;
}

unint64_t sub_100189608(uint64_t a1)
{
  result = sub_100189418();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100189634()
{
  result = qword_100220A20;
  if (!qword_100220A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchFeedbackTableColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__int128 *BiomeStoreEnumerator.Constants.defaultTimeRange.unsafeMutableAddressor()
{
  if (qword_10021FA98 != -1)
  {
    sub_100003FA8();
  }

  return &static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

void *BiomeStoreEnumerator.getNextEvent()()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 nextEvent];
  v3 = v2;
  if (v2)
  {
    [v2 timestamp];
    v5 = v4;
    sub_1000065D8();
    swift_beginAccess();
    if (v5 > *(v0 + 32))
    {

      return 0;
    }
  }

  return v3;
}

double BiomeStoreEnumerator.enumerationRange.getter()
{
  sub_1000065D8();
  swift_beginAccess();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t BiomeStoreEnumerator.enumerationRange.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void BiomeStoreEnumerator.currentEvent.setter(void *a1)
{
  v2 = v1[6];
  v1[6] = a1;
  v3 = a1;

  (*(*v1 + 272))();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeStoreEnumerator.startEnumeration()()
{
  v1 = *(v0 + 16);
  sub_1000065D8();
  swift_beginAccess();
  v2 = [v1 newEnumeratorFromStartTime:*(v0 + 24)];
  v3 = *(v0 + 40);
  *(v0 + 40) = v2;

  sub_1000037B0();
  (*(v4 + 224))();
}

Swift::Void __swiftcall BiomeStoreEnumerator.next()()
{
  sub_1000037B0();
  v1 = (*(v0 + 216))();

  BiomeStoreEnumerator.currentEvent.setter(v1);
}

Swift::Void __swiftcall BiomeStoreEnumerator.setPayload(on:)(SQLiter::SQLiteContext on)
{
  sub_1000037B0();
  v4 = (*(v3 + 248))();
  if (v5 >> 60 == 15)
  {

    SQLiteContext.setNull()();
  }

  else
  {
    v6 = v4;
    v7 = v5;
    v8 = v1[7];
    v9 = v1[8];
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(v6, v7, v1[9], v1[10], on.context._rawValue, ObjectType, v9);

    sub_100014A2C(v6, v7);
  }
}

uint64_t BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  return v7;
}

uint64_t BiomeStoreEnumerator.deinit()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  return v0;
}

uint64_t BiomeStoreEnumerator.timestamp.getter()
{
  if (!*(v0 + 48))
  {
    return 0;
  }

  [*(v0 + 48) timestamp];
  return v1;
}

uint64_t BiomeStoreEnumerator.payload.getter()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 eventBody];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *&v2[OBJC_IVAR___SRRawPayload_data];
  sub_100014924(v4, *&v2[OBJC_IVAR___SRRawPayload_data + 8]);

  return v4;
}

uint64_t sub_100189CF8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v7, v0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  result = (v10)(v4, v0);
  if (v9 > v12)
  {
    __break(1u);
  }

  else
  {
    *&static BiomeStoreEnumerator.Constants.defaultTimeRange = v9;
    *(&static BiomeStoreEnumerator.Constants.defaultTimeRange + 1) = v12;
  }

  return result;
}

double static BiomeStoreEnumerator.Constants.defaultTimeRange.getter()
{
  if (qword_10021FA98 != -1)
  {
    sub_100003FA8();
  }

  return *&static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

uint64_t BiomeStoreEnumerator.sqliteBridge.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return swift_unknownObjectRetain();
}

uint64_t BiomeStoreEnumerator.messageName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t BiomeStoreEnumerator.__allocating_init(reader:sqliteBridge:enumerationRange:messageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 72) = a4;
  *(result + 80) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeStoreEnumerator.setTimestamp(on:)(SQLiter::SQLiteContext on)
{
  sub_1000037B0();
  v2 = COERCE_DOUBLE((*(v1 + 240))());
  if (v3)
  {
    SQLiteContext.setNull()();
  }

  else
  {
    SQLiteContext.setDouble(_:)(v2);
  }
}

uint64_t BiomeStoreEnumerator.__deallocating_deinit()
{
  BiomeStoreEnumerator.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

Swift::Void __swiftcall BiomeTablesProvider.teardown()()
{
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;
}

uint64_t BiomeTablesProvider.getTableFunction()()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v2 = v0;
    v3 = *(*v0 + 88);
    sub_1000092B4((v2 + 2), v9);
    v4 = v2[9];
    v5 = v2[10];
    v6 = *(v3 + 408);
    swift_unknownObjectRetain();
    v1 = v6(v9, v4, v5);
    v7 = v2[7];
    v2[7] = v1;
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeTablesProvider.configure(databaseConnection:)(Swift::OpaquePointer databaseConnection)
{
  type metadata accessor for SQLiteDatabase();
  swift_allocObject();
  v3 = SQLiteDatabase.init(connection:)(databaseConnection._rawValue);
  if (!v1)
  {
    v4 = v3;
    BiomeTablesProvider.getTableFunction()();
    BaseBiomeTable.register(with:)(v4);

    (*(*v4 + 144))(v5);
  }
}

uint64_t BiomeTablesProvider.__allocating_init(config:environment:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BiomeTablesProvider.init(config:environment:)(a1, a2, a3);
  return v6;
}

uint64_t BiomeTablesProvider.__deallocating_deinit()
{
  BiomeTablesProvider.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10018A30C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10000F794(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
    sub_1000036B8(v8);
    sub_1001870E8(v7 + *(v9 + 72) * v6, a2);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
    v10 = a2;
    v11 = 1;
  }

  return sub_1000051C0(v10, v11, 1, v12);
}

void *sub_10018A3B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000F794();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_10018A3FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionType();
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_10017D560();
  v2[2] = Dictionary.init(dictionaryLiteral:)();
  v2[3] = 0;
  v2[4] = a1;
  sub_10018AA60(a2, &v6);
  if (v7)
  {
    sub_10000B240(a2, &qword_100221280, &unk_1001A8C00);
    sub_100008C84(&v6, &v8);
  }

  else
  {
    v9 = &type metadata for BiomeStreamsTelemetryReporter;
    v10 = &off_100203900;
    sub_10000B240(a2, &qword_100221280, &unk_1001A8C00);
    if (v7)
    {
      sub_10000B240(&v6, &qword_100221280, &unk_1001A8C00);
    }
  }

  sub_100008C84(&v8, (v2 + 5));
  return v2;
}

void sub_10018A518(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionType();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v12 = v11 - v10;
  sub_100006DA0();
  swift_beginAccess();
  v13 = *(v1 + 16);

  v14 = sub_10018A3B4(a1, v13);

  if (v14)
  {

    sub_10000E0B0();
    swift_beginAccess();
    v15 = sub_100191254();
    swift_endAccess();

    if (!*(*(v2 + 16) + 16))
    {
      v16 = *(v2 + 24);
      *(v2 + 24) = 0;
    }
  }

  else
  {
    if (qword_10021FAA8 != -1)
    {
      sub_100003FC8();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000964C(v17, qword_100232E90);
    (*(v7 + 16))(v12, a1, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = SessionType.description.getter();
      v24 = v23;
      (*(v7 + 8))(v12, v4);
      v25 = sub_100009684(v22, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempt to release un-acquired ftore writer for: %s", v20, 0xCu);
      sub_100007378(v21);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      (*(v7 + 8))(v12, v4);
    }
  }
}

uint64_t BiomeDatabaseWriter.deinit()
{
  v25 = sub_100046184(&qword_100221158, &unk_1001A8BA0);
  v1 = sub_1000036B8(v25);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - v4;
  sub_1000240CC();
  v7 = v6;
  [v6 syncMappedFiles];

  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v0 + 16);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = sub_10000B240(v5, &qword_100221158, &unk_1001A8BA0))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v8 + 48);
    v20 = type metadata accessor for SessionType();
    sub_1000036B8(v20);
    (*(v21 + 16))(v5, v19 + *(v21 + 72) * v18);
    v22 = *(*(v8 + 56) + 8 * v18);
    *&v5[*(v25 + 48)] = v22;
    [v22 syncMappedFiles];
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v23 = *(v0 + 16);

      sub_100007378((v0 + 40));
      return v0;
    }

    v11 = *(v8 + 64 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t BiomeDatabaseWriter.__deallocating_deinit()
{
  BiomeDatabaseWriter.deinit();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10018AA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221280, &unk_1001A8C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018AAD0(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018AAF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018AAD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10018AB24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10018AAE8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10018AC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10018ACC4(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_10018AD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018AC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018AD28(uint64_t a1)
{
  v2 = sub_10018C070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018AD64(uint64_t a1)
{
  v2 = sub_10018C070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018ADA0(void *a1, uint64_t a2, char a3)
{
  v7 = sub_100046184(&qword_1002213B8, &unk_1001A8DB0);
  sub_100003650(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_100003760();
  __chkstk_darwin(v12);
  v14 = &v17[-v13];
  v15 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10018C070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17[15] = 0;
  type metadata accessor for SessionBookmark();
  sub_10018C118(&qword_1002213C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v17[14] = a3 & 1;
    v17[13] = 1;
    sub_10018C15C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t sub_10018AF50(uint64_t *a1)
{
  v2 = sub_100046184(&qword_100221398, &qword_1001A8DA8);
  sub_100003650(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10018C070();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for SessionBookmark();
  v13[7] = 0;
  sub_10018C118(&qword_1002213A8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v14;
  v13[5] = 1;
  sub_10018C0C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v9, v2);
  sub_100007378(a1);
  return v12;
}

uint64_t sub_10018B14C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736574617473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10018B1D4(void *a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221408, &qword_1001A9048);
  sub_100003650(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003760();
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10018C508();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[1] = a2;
  sub_100046184(&qword_100221418, &qword_1001A9050);
  sub_10018C5B0(&qword_100221420, sub_10018C55C);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v11, v4);
}

void *sub_10018B350(uint64_t *a1)
{
  v3 = sub_100046184(&qword_100221430, &qword_1001A9058);
  sub_100003650(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  v11 = a1[4];
  v12 = sub_100007534(a1, a1[3]);
  sub_10018C508();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_100221418, &qword_1001A9050);
    sub_10018C5B0(&qword_100221438, sub_10018C628);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v10, v3);
    v12 = v14[1];
    sub_100007378(a1);
  }

  return v12;
}

uint64_t sub_10018B4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10018AF50(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10018B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018B14C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10018B578(uint64_t a1)
{
  v2 = sub_10018C508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018B5B4(uint64_t a1)
{
  v2 = sub_10018C508();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10018B5F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018B350(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t UploadStateFileStore.__allocating_init(fileManager:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  UploadStateFileStore.init(fileManager:)(a1);
  return v5;
}

uint64_t UploadStateFileStore.init(fileManager:)(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  v3 = (v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName);
  *v3 = 0xD000000000000019;
  v3[1] = 0x80000001001B3B50;
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache) = 0;
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_fileManager) = a1;
  return v1;
}

uint64_t sub_10018B79C()
{
  v0 = type metadata accessor for Date();
  v1 = sub_100003650(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  v10 = v8;
  result = (*(v3 + 8))(v7, v0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 / 0x15180 >= 7)
  {
    return Date.init(timeIntervalSince1970:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

void (*sub_10018B8D4())(char *, uint64_t)
{
  v1 = *(*(sub_100046184(&qword_100218230, &unk_100199A00) - 8) + 64);
  sub_100003760();
  __chkstk_darwin(v2);
  v4 = v37 - v3;
  v5 = type metadata accessor for URL();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  __chkstk_darwin(v16);
  v18 = v37 - v17;
  if (*(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache))
  {
    v19 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache);
  }

  else
  {
    v38 = OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache;
    v39 = v0;
    v19 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_fileManager);
    NSFileManager.parsecdAssetsDirectoryURL.getter();
    if (sub_100008D0C(v4, 1, v5) == 1)
    {
      sub_1000982A0(v4);
      sub_10018C1B0();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      return v19;
    }

    (*(v8 + 32))(v18, v4, v5);
    v21 = *(v39 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName);
    v37[1] = *(v39 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName + 8);
    v37[2] = v21;
    URL.appendingPathComponent(_:)();
    URL.path.getter();
    v22 = v15;
    v23 = *(v8 + 8);
    v23(v22, v5);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v19 fileExistsAtPath:v24];

    if (v25)
    {
      v19 = v23;
      URL.appendingPathComponent(_:)();
      v26 = v40;
      v27 = Data.init(contentsOf:options:)();
      if (v26)
      {
        v23(v12, v5);
        v23(v18, v5);
        return v19;
      }

      v30 = v27;
      v31 = v28;
      v19(v12, v5);
      v32 = type metadata accessor for JSONDecoder();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_10018C204();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v40 = 0;
      v19(v18, v5);
      sub_100014A40(v30, v31);

      v19 = v41;
      v36 = *(v39 + v38);
      *(v39 + v38) = v41;
    }

    else
    {
      v29 = *(v39 + v38);
      v19 = _swiftEmptyArrayStorage;
      *(v39 + v38) = _swiftEmptyArrayStorage;

      v23(v18, v5);
    }
  }

  return v19;
}

uint64_t UploadStateFileStore.deinit()
{
  v1 = OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache);

  return v0;
}

uint64_t UploadStateFileStore.__deallocating_deinit()
{
  UploadStateFileStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

unint64_t sub_10018BDAC()
{
  result = qword_100221288;
  if (!qword_100221288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadStateStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for UploadStateFileStore()
{
  result = qword_1002212B8;
  if (!qword_1002212B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018BF30()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10018BFE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018C020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018C070()
{
  result = qword_1002213A0;
  if (!qword_1002213A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213A0);
  }

  return result;
}

unint64_t sub_10018C0C4()
{
  result = qword_1002213B0;
  if (!qword_1002213B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213B0);
  }

  return result;
}

uint64_t sub_10018C118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionBookmark();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018C15C()
{
  result = qword_1002213C8;
  if (!qword_1002213C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213C8);
  }

  return result;
}

unint64_t sub_10018C1B0()
{
  result = qword_1002213D0;
  if (!qword_1002213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213D0);
  }

  return result;
}

unint64_t sub_10018C204()
{
  result = qword_1002213D8;
  if (!qword_1002213D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213D8);
  }

  return result;
}

_BYTE *sub_10018C278(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10018C358()
{
  result = qword_1002213E0;
  if (!qword_1002213E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213E0);
  }

  return result;
}

unint64_t sub_10018C3B0()
{
  result = qword_1002213E8;
  if (!qword_1002213E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213E8);
  }

  return result;
}

unint64_t sub_10018C408()
{
  result = qword_1002213F0;
  if (!qword_1002213F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213F0);
  }

  return result;
}

unint64_t sub_10018C460()
{
  result = qword_1002213F8;
  if (!qword_1002213F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213F8);
  }

  return result;
}

unint64_t sub_10018C4B4()
{
  result = qword_100221400;
  if (!qword_100221400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221400);
  }

  return result;
}

unint64_t sub_10018C508()
{
  result = qword_100221410;
  if (!qword_100221410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221410);
  }

  return result;
}

unint64_t sub_10018C55C()
{
  result = qword_100221428;
  if (!qword_100221428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221428);
  }

  return result;
}

uint64_t sub_10018C5B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_100221418, &qword_1001A9050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018C628()
{
  result = qword_100221440;
  if (!qword_100221440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadStateFileStore.UploadStates.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10018C72C()
{
  result = qword_100221448;
  if (!qword_100221448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221448);
  }

  return result;
}

unint64_t sub_10018C784()
{
  result = qword_100221450;
  if (!qword_100221450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221450);
  }

  return result;
}

unint64_t sub_10018C7DC()
{
  result = qword_100221458;
  if (!qword_100221458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221458);
  }

  return result;
}

void sub_10018C83C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_1002190E0, &qword_10019E238);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for SessionType();
  v10 = sub_100003650(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v17 = v16 - v15;
  v18 = sub_100024DB8();
  if (v2)
  {

    return;
  }

  v20 = v18;
  v21 = v19;
  v40 = v12;
  v41 = a2;
  v44 = v9;
  type metadata accessor for ProtobufPayload();
  v22 = a1;
  v24 = *&a1[OBJC_IVAR___SRRawPayload_data];
  v23 = *&a1[OBJC_IVAR___SRRawPayload_data + 8];
  swift_unknownObjectRetain();
  sub_100014924(v24, v23);
  v25 = sub_10000AD8C();
  v26 = ProtobufPayload.__allocating_init(with:from:payload:)(v25, 0xE700000000000000, v20, v21, v24, v23);
  v39 = v22;
  v27 = *(*v26 + 104);
  v27(&v42, 0x546E6F6973736573, 0xEB00000000657079);
  if (HIBYTE(v43) >= 0xFFu)
  {
    sub_10000B240(&v42, &qword_10021D078, &qword_1001A2370);
LABEL_9:
    sub_10018DE90();
    sub_100004248();
    v30 = 1;
    goto LABEL_10;
  }

  if ((v43 & 0xFF00) != 0x800)
  {
    sub_10002633C(&v42);
    goto LABEL_9;
  }

  SessionType.init(withCanonicalIdentifier:)();
  v28 = v44;
  if (sub_100008D0C(v8, 1, v44) == 1)
  {
    sub_10000B240(v8, &qword_1002190E0, &qword_10019E238);
    sub_10018DE90();
    sub_100004248();
    v30 = 2;
LABEL_10:
    *v29 = v30;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v31 = v40;
  (*(v40 + 32))(v17, v8, v28);
  (*(v31 + 16))(v41, v17, v28);
  v27(&v42, 0x64616F6C796170, 0xE700000000000000);
  if (HIBYTE(v43) < 0xFFu)
  {
    if ((v43 & 0xFF00) == 0x900)
    {
      v32 = objc_allocWithZone(type metadata accessor for RawPayload());
      v33 = RawPayload.init(with:)();
      swift_unknownObjectRelease();

      (*(v40 + 8))(v17, v44);
      *(v41 + *(type metadata accessor for BiomeSessionWrapper(0) + 20)) = v33;
      return;
    }

    sub_10002633C(&v42);
  }

  else
  {
    sub_10000B240(&v42, &qword_10021D078, &qword_1001A2370);
  }

  v34 = v39;
  sub_10018DE90();
  sub_100004248();
  *v35 = 3;
  swift_willThrow();
  swift_unknownObjectRelease();

  v36 = *(v40 + 8);
  v37 = v44;
  v36(v17, v44);
  v36(v41, v37);
}

uint64_t SessionFeedback.__allocating_init(session:sessionId:type:creationDate:closingDate:)()
{
  sub_10000890C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SessionFeedback.init(session:sessionId:type:creationDate:closingDate:)();
  return v3;
}

uint64_t SessionFeedback.__allocating_init(withWrappedPayload:creationDate:closingDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(a1, a2, a3);
  return v9;
}

uint64_t sub_10018CDF4()
{
  sub_100046184(&qword_100221640, &qword_1001A91C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  *(inited + 32) = 0x72657070617257;
  *(inited + 40) = 0xE700000000000000;
  v3.value._rawValue = Dictionary.init(dictionaryLiteral:)();
  v3.is_nil = 0;
  *(inited + 48) = MessageSchemaModel.init(properties:oneOfs:)(v3, v5);
  *(inited + 72) = 0x6E6F6973736553;
  *(inited + 80) = 0xE700000000000000;
  v4.value._rawValue = Dictionary.init(dictionaryLiteral:)();
  v4.is_nil = 0;
  *(inited + 88) = MessageSchemaModel.init(properties:oneOfs:)(v4, v6);
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100221460 = v1;
  *algn_100221468 = result;
  return result;
}

uint64_t sub_10018CF2C()
{
  result = sub_100024DB8();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    type metadata accessor for ProtobufPayload();
    v6 = (*(v0 + *(type metadata accessor for BiomeSessionWrapper(0) + 20)) + OBJC_IVAR___SRRawPayload_data);
    v7 = *v6;
    v8 = v6[1];
    sub_100014924(*v6, v8);
    v9 = ProtobufPayload.__allocating_init(with:from:payload:)(0x6E6F6973736553, 0xE700000000000000, v4, v5, v7, v8);
    (*(*v9 + 104))(&v11, 25705, 0xE200000000000000);
    if (HIBYTE(v12) < 0xFFu)
    {
      if ((v12 & 0xFF00) == 0x800)
      {

        return v11;
      }

      sub_10002633C(&v11);
    }

    else
    {
      sub_10000B240(&v11, &qword_10021D078, &qword_1001A2370);
    }

    sub_10018DE90();
    sub_100004248();
    *v10 = 3;
    swift_willThrow();
  }

  return result;
}

id SessionFeedback.backingStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void SessionFeedback.backingStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*SessionFeedback.backingStore.modify())()
{
  sub_100011994();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SessionFeedback.sessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
  v2 = *(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);

  return v1;
}

uint64_t sub_10018D200@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = sub_1000036B8(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

uint64_t sub_10018D270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  return sub_10002DF94(v3 + v4, a2);
}

uint64_t sub_10018D2CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_10002DF94(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  sub_10002405C(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t SessionFeedback.closingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  return sub_10002DF94(v1 + v3, a1);
}

void *SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = type metadata accessor for SessionType();
  v8 = sub_100003650(v7);
  v35 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100003664();
  v14 = v13 - v12;
  v15 = type metadata accessor for BiomeSessionWrapper(0);
  v16 = sub_1000036B8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100003664();
  v21 = v20 - v19;
  v22 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  v23 = type metadata accessor for Date();
  sub_1000051C0(v5 + v22, 1, 1, v23);
  v24 = a1;
  sub_10018C83C(v24, v21);
  if (v4)
  {

    sub_10000B240(a3, &qword_100217050, &qword_100199180);
    (*(*(v23 - 8) + 8))(a2, v23);
    sub_10000B240(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate, &qword_100217050, &qword_100199180);
    type metadata accessor for SessionFeedback(0);
    v27 = *(*v5 + 48);
    v28 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = *(v21 + *(v15 + 20));
    v5[2] = v25;
    v26 = v25;
    v30 = sub_10018CF2C();
    v32 = v31;

    v33 = (v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
    *v33 = v30;
    v33[1] = v32;
    (*(v35 + 16))(v14, v21, v7);
    sub_10002719C(v21);
    (*(v35 + 32))(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v14, v7);
    (*(*(v23 - 8) + 32))(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate, a2, v23);
    v34 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
    sub_100011994();
    swift_beginAccess();
    sub_10002405C(a3, v5 + v34);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_10018D72C(char *a1, uint64_t a2)
{
  v55 = a2;
  v58 = a1;
  v3 = sub_100046184(&qword_100217050, &qword_100199180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100003838();
  v59 = v5;
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Date();
  v10 = sub_100003650(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100003838();
  v57 = v15;
  __chkstk_darwin(v16);
  v61 = &v53 - v17;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  __chkstk_darwin(v27);
  v29 = &v53 - v28;
  v60 = v2;
  Date.addingTimeInterval(_:)();
  Date.init()();
  sub_10018DE38();
  sub_100006DB4();
  v30 = dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v12 + 8);
  v32 = (v30 & 1) == 0;
  if (v30)
  {
    v33 = v26;
  }

  else
  {
    v33 = v23;
  }

  if (v32)
  {
    v23 = v26;
  }

  v56 = *(v12 + 8);
  v31(v33, v9);
  v34 = *(v12 + 32);
  v34(v29, v23, v9);
  sub_10002DF94(v55, v8);
  v35 = sub_100008D0C(v8, 1, v9);
  v54 = v34;
  if (v35 == 1)
  {
    (*(v12 + 16))(v20, v29, v9);
    if (sub_100008D0C(v8, 1, v9) != 1)
    {
      sub_10000B240(v8, &qword_100217050, &qword_100199180);
    }
  }

  else
  {
    v34(v20, v8, v9);
  }

  sub_100006DB4();
  v36 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v37 = *(v12 + 16);
  if (v36)
  {
    v38 = v29;
  }

  else
  {
    v38 = v20;
  }

  v37(v61, v38, v9);
  v39 = v58;
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v40 = v57;
    v41 = v57;
    v42 = v39;
  }

  else
  {
    v40 = v57;
    v41 = v57;
    v42 = v20;
  }

  v37(v41, v42, v9);
  v43 = v61;
  v44 = v40;
  sub_100006DB4();
  v45 = dispatch thunk of static Comparable.< infix(_:_:)();
  v46 = v56;
  v56(v20, v9);
  v46(v29, v9);
  if (v45)
  {
    v47 = v43;
  }

  else
  {
    v47 = v44;
  }

  if (v45)
  {
    v48 = v44;
  }

  else
  {
    v48 = v43;
  }

  v46(v47, v9);
  v49 = v59;
  v54(v59, v48, v9);
  sub_1000051C0(v49, 0, 1, v9);
  v50 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  v51 = v60;
  sub_100011994();
  swift_beginAccess();
  sub_10002405C(v49, v51 + v50);
  return swift_endAccess();
}

uint64_t SessionFeedback.deinit()
{
  v1 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type;
  v2 = type metadata accessor for SessionType();
  sub_1000036B8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);

  v5 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate;
  v6 = type metadata accessor for Date();
  sub_1000036B8(v6);
  (*(v7 + 8))(v0 + v5);
  sub_10000B240(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate, &qword_100217050, &qword_100199180);
  return v0;
}

uint64_t SessionFeedback.__deallocating_deinit()
{
  SessionFeedback.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10018DC70()
{
  v0 = type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000504A0();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10018DDB4()
{
  result = type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawPayload();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10018DE38()
{
  result = qword_1002183B8;
  if (!qword_1002183B8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002183B8);
  }

  return result;
}

unint64_t sub_10018DE90()
{
  result = qword_100221638;
  if (!qword_100221638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BiomeSessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10018DFC4()
{
  result = qword_100221648;
  if (!qword_100221648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221648);
  }

  return result;
}

void UploadStateFileStore.uploadDidStart(at:)(uint64_t a1)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = sub_100004788();
    v35 = v6;
    *v2 = 136315138;
    type metadata accessor for SessionBookmark();

    v7 = String.init<A>(describing:)();
    v9 = sub_100009684(v7, v8, &v35);

    *(v2 + 4) = v9;
    sub_100008928(&_mh_execute_header, v10, v5, "Starting upload at bookmark: %s");
    sub_100007378(v6);

    sub_100003FDC();
  }

  v11 = sub_10018B8D4();
  if (!v1)
  {
    v12 = v11;
    v13 = v11 + 40;
    v14 = *(v11 + 2) + 1;
    while (--v14)
    {
      v15 = v13 + 16;
      v16 = *(v13 - 1);
      v17 = *v13;
      type metadata accessor for SessionBookmark();
      v18 = static SessionBookmark.== infix(_:_:)(v16, a1);
      v13 = v15;
      if (v18)
      {

        if (v17)
        {
          sub_10018C1B0();
          sub_100004248();
          v20 = 1;
LABEL_21:
          *v19 = v20;
          swift_willThrow();

          return;
        }

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v26, v27))
        {
          swift_slowAlloc();
          v28 = sub_100004788();
          v35 = v28;
          *v12 = 136315138;

          v29 = String.init<A>(describing:)();
          v31 = sub_100009684(v29, v30, &v35);

          *(v12 + 4) = v31;
          sub_100008928(&_mh_execute_header, v32, v27, "restarting upload at bookmark: %s");
          sub_100007378(v28);

          sub_100003FDC();
        }

        return;
      }
    }

    v21 = sub_10018E3B8(v12);
    if (v21)
    {
      v22 = v21;
      type metadata accessor for SessionBookmark();
      if (!static SessionBookmark.< infix(_:_:)(v22, a1))
      {

        sub_10018C1B0();
        sub_100004248();
        v20 = 4;
        goto LABEL_21;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10017EEDC(0, *(v12 + 16) + 1, 1, v12);
      v12 = v33;
    }

    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_10017EEDC(v23 > 1, v24 + 1, 1, v12);
      v12 = v34;
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 16 * v24;
    *(v25 + 32) = a1;
    *(v25 + 40) = 0;
    sub_10018E3FC(v12);
  }
}

uint64_t sub_10018E3B8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = *(v4 + 8);
}

uint64_t sub_10018E3FC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache);
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache) = a1;

  v19 = *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_fileManager);
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v9, 1, v10) == 1)
  {
    sub_1000982A0(v9);
    sub_10018C1B0();
    sub_100004248();
    *v20 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    v22 = type metadata accessor for JSONEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v34 = a1;
    sub_10018EA20();

    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v33 = v26;
    if (v3)
    {

      return (*(v11 + 8))(v17, v10);
    }

    else
    {
      v27 = v25;

      v28 = *(v4 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName);
      v29 = *(v4 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName + 8);
      URL.appendingPathComponent(_:)();
      v30 = v33;
      Data.write(to:options:)();
      sub_100014A40(v27, v30);
      v31 = *(v11 + 8);
      v31(v14, v10);
      return (v31)(v17, v10);
    }
  }
}

void UploadStateFileStore.uploadDidFinish(at:)(uint64_t a1)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = sub_100004788();
    v23 = v6;
    *v2 = 136315138;
    type metadata accessor for SessionBookmark();

    v7 = String.init<A>(describing:)();
    v9 = sub_100009684(v7, v8, &v23);

    *(v2 + 4) = v9;
    sub_100008928(&_mh_execute_header, v10, v5, "Finished uploading at bookmark: %s");
    sub_100007378(v6);

    sub_100003FDC();
  }

  v11 = sub_10018B8D4();
  if (!v1)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *(v11 + 2);
    while (1)
    {
      if (v15 == v14)
      {
        v17 = 3;
        goto LABEL_11;
      }

      v16 = *(v12 + v13 + 32);
      type metadata accessor for SessionBookmark();
      if (static SessionBookmark.== infix(_:_:)(v16, a1))
      {
        break;
      }

      ++v14;
      v13 += 16;
    }

    if (*(v12 + v13 + 40))
    {
      v17 = 2;
LABEL_11:
      sub_10018C1B0();
      sub_100004248();
      *v18 = v17;
      swift_willThrow();
LABEL_20:

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10018EA0C(v12);
      v12 = v22;
    }

    v19 = *(v12 + 16);
    if (v14 < v19)
    {
      *(v12 + v13 + 40) = 1;
      if (*(v12 + 40) == 1)
      {
        while (v19 >= 2 && *(v12 + 56) == 1)
        {
          v20 = v19 - 1;
          v21 = *(v12 + 32);
          memmove((v12 + 32), (v12 + 48), 16 * (v19 - 1));
          *(v12 + 16) = v20;

          v19 = *(v12 + 16);
        }
      }

      sub_10018E3FC(v12);
      goto LABEL_20;
    }

    __break(1u);
  }
}

uint64_t sub_10018E950(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for BiomeDatabaseReader.SessionProxy(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for BiomeDatabaseReader.SessionProxy();
    sub_100006BC0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100006BC0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_10018EA20()
{
  result = qword_100221650;
  if (!qword_100221650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221650);
  }

  return result;
}

uint64_t sub_10018EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6)
{
  *(v6 + 240) = 0;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 128) = 0u;
  sub_1000092B4(a4, v6 + 88);
  v13 = a4[3];
  sub_100007534(a4, v13);
  sub_100003C24();
  v15 = v14(v13);
  v17 = BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(a1, a2, a3, v15, v16, a5, a6);
  sub_100007378(a4);
  return v17;
}

uint64_t sub_10018EB48()
{
  v1 = *(v0 + 128);
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectRelease();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  sub_10018F3B0(v3, v0 + 144);
  return swift_endAccess();
}

uint64_t *sub_10018EBAC()
{
  v1 = v0;
  v2 = *(v0 + 128);
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = v2;
  }

  else
  {
    v5 = BiomeStoreEnumerator.payload.getter();
    if (v6 >> 60 == 15)
    {
      v4 = 0;
    }

    else
    {
      v7 = v5;
      v8 = v6;
      v9 = objc_allocWithZone(type metadata accessor for RawPayload());
      sub_100014924(v7, v8);
      v10 = RawPayload.init(with:)();
      v4 = RawPayload.schemitized(with:)(v0 + 88);
      v12 = v11;
      sub_100014A2C(v7, v8);

      v13 = *(v1 + 128);
      *(v1 + 128) = v4;
      *(v1 + 136) = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t *sub_10018EC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10018EBAC();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -256;
  }

  return result;
}

double sub_10018ED40@<D0>(void *a1@<X8>)
{
  v3 = v2;
  if (!sub_10018EBAC())
  {
    return sub_1000065EC();
  }

  v6 = v5;
  v15 = v1;
  ObjectType = swift_getObjectType();
  v8 = qword_100221658;
  v9 = off_100221660;
  v10 = *(v6 + 136);

  v10(__src, v8, v9, ObjectType, v6);

  swift_unknownObjectRelease();
  if (!v3)
  {
    memcpy(__dst, __src, 0x62uLL);
    if (__dst[3])
    {
      memcpy(a1, __src, 0x62uLL);
      sub_10018F474(a1, __dst);
      v12 = v15;
      swift_beginAccess();
      sub_10018F3B0(__dst, v12 + 144);
      swift_endAccess();
    }

    else
    {
      sub_10000F94C(__dst, &qword_100221870, &qword_1001A92C8);
      return sub_1000065EC();
    }
  }

  return result;
}

void sub_10018EE94()
{
  sub_10018ED40(v4);
  if (!v0)
  {
    sub_100053240(v4, __src, &qword_100221870, &qword_1001A92C8);
    if (__src[3])
    {
      memcpy(__dst, __src, 0x62uLL);
      sub_100026258(&__dst[40], __src);
      if (BYTE1(__src[7]) != 10)
      {
        sub_10002633C(__src);
        sub_100181A94();
        swift_allocError();
        *v1 = 0;
        swift_willThrow();
      }

      sub_10018F420(__dst);
      sub_10000F94C(v4, &qword_100221870, &qword_1001A92C8);
    }

    else
    {
      sub_1000047A4(v4);
      sub_1000047A4(__src);
    }
  }
}

uint64_t sub_10018EFD0()
{
  sub_10018ED40(v7);
  if (!v1)
  {
    if (v8)
    {
      sub_1000092B4(v7, v5);
      sub_10018F420(v7);
      v2 = v6;
      sub_100007534(v5, v6);
      sub_100003C24();
      v0 = v3(v2);
      sub_100007378(v5);
    }

    else
    {
      sub_10000F94C(v7, &qword_100221870, &qword_1001A92C8);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10018F090()
{
  v1 = *aQueryid_0;
  v2 = unk_100221670;

  sub_10018EC98(v1, v2, v9);

  if (!v0)
  {
    sub_100053240(v9, v5, &qword_10021D078, &qword_1001A2370);
    if (HIBYTE(*&v6[24]) <= 0xFEu)
    {
      v7[0] = v5[0];
      v7[1] = v5[1];
      v8[0] = *v6;
      *(v8 + 10) = *&v6[10];
      sub_100026258(v7, v5);
      if (v6[25] == 3)
      {
        sub_10002633C(v7);
        sub_10000F94C(v9, &qword_10021D078, &qword_1001A2370);
        return *&v5[0];
      }

      else
      {
        sub_10002633C(v5);
        sub_100181A94();
        swift_allocError();
        *v4 = 0;
        swift_willThrow();
        sub_10002633C(v7);
        return sub_10000F94C(v9, &qword_10021D078, &qword_1001A2370);
      }
    }

    else
    {
      sub_1000047A4(v9);
      sub_1000047A4(v5);
      return 0;
    }
  }

  return result;
}

void sub_10018F200(uint64_t a1)
{
  sub_10018EE94();
  if (!v2)
  {
    v6 = v4;
    if (v4)
    {
      v7 = v5;
      v8 = *(v1 + 56);
      v9 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(v6, v7, a1, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

uint64_t sub_10018F2D0()
{
  sub_100007378((v0 + 88));
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  return sub_10000F94C(v0 + 144, &qword_100221870, &qword_1001A92C8);
}

uint64_t sub_10018F30C()
{
  v0 = BiomeStoreEnumerator.deinit();
  sub_100007378((v0 + 88));
  v1 = *(v0 + 128);
  swift_unknownObjectRelease();
  sub_10000F94C(v0 + 144, &qword_100221870, &qword_1001A92C8);
  return v0;
}

uint64_t sub_10018F35C()
{
  v0 = sub_10018F30C();

  return _swift_deallocClassInstance(v0, 242, 7);
}

uint64_t sub_10018F3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221870, &qword_1001A92C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static SessionDatabaseError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2)
  {
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    default:
      if ((a4 - 1) < 5)
      {
        return 0;
      }

      if (a2)
      {
        if (!a4)
        {
          return 0;
        }

        v5 = a1 == a3 && a2 == a4;
        return v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      return !a4;
  }
}

void SessionDatabaseError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 1:
      v3 = 0;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 3:
      v3 = 2;
      goto LABEL_7;
    case 4:
      v3 = 3;
      goto LABEL_7;
    case 5:
      v3 = 4;
LABEL_7:
      Hasher._combine(_:)(v3);
      break;
    default:
      Hasher._combine(_:)(5uLL);
      if (a3)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }
}

Swift::Int SessionDatabaseError.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SessionDatabaseError.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10018F6E4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  SessionDatabaseError.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

unint64_t sub_10018F750()
{
  result = qword_100221928;
  if (!qword_100221928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221928);
  }

  return result;
}

uint64_t sub_10018F7A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018F7C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 6)
  {
    return (v3 - 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018F828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_10018F878(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_10018F8C8()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232E90);
  sub_10000964C(v0, qword_100232E90);
  return Logger.init(subsystem:category:)();
}

double SessionBookmark.__allocating_init()()
{
  sub_100003FF8();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t static SessionBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  result = (v4 | v5) == 0;
  if (v4 && v5)
  {
    if (*(a1 + 24) == *(a2 + 24) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

BOOL static SessionBookmark.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = -1.0;
  if (*(a1 + 48))
  {
    v2 = -1.0;
  }

  if (!*(a2 + 48))
  {
    v3 = *(a2 + 40);
  }

  return v2 < v3;
}

uint64_t sub_10018FA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D6B6F6F426D62 && a2 == 0xEA00000000006B72;
  if (v4 || (sub_1000037C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_1000037C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000037C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10018FB00(char a1)
{
  if (!a1)
  {
    return 0x616D6B6F6F426D62;
  }

  if (a1 == 1)
  {
    return 0x496E6F6973736573;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_10018FB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018FA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018FB90(uint64_t a1)
{
  v2 = sub_10018FFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018FBCC(uint64_t a1)
{
  v2 = sub_10018FFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018FC08(void *a1)
{
  v1 = sub_1001908D0(a1);
  if (v2 >> 60 == 15)
  {
    sub_100190934();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  return v1;
}

id sub_10018FC84(uint64_t a1, unint64_t a2)
{
  objc_allocWithZone(BMStoreBookmark);
  sub_100014924(a1, a2);
  result = sub_10019085C(a1, a2);
  if (!result)
  {
    sub_100190934();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

double SessionBookmark.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t SessionBookmark.__allocating_init(from:)(uint64_t *a1)
{
  sub_100003FF8();
  v2 = swift_allocObject();
  SessionBookmark.init(from:)(a1);
  return v2;
}

uint64_t *SessionBookmark.init(from:)(uint64_t *a1)
{
  v19 = *v1;
  v4 = sub_100046184(&qword_100221930, &qword_1001A9500);
  v5 = sub_100003650(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10018FFF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SessionBookmark();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10010B838();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_1000084E8();
    v1[2] = sub_10018FC84(v9, v10);
    sub_1000047BC(1);
    v1[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[4] = v12;
    sub_1000047BC(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v15 = sub_100006604();
    v16(v15);
    v17 = sub_1000084E8();
    sub_100014A40(v17, v18);
    v1[5] = v14;
    *(v1 + 48) = 0;
  }

  sub_100007378(a1);
  return v1;
}

unint64_t sub_10018FFF8()
{
  result = qword_100221938;
  if (!qword_100221938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221938);
  }

  return result;
}

uint64_t sub_100190070(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  return v4;
}

void SessionBookmark.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = sub_100046184(&qword_100221940, &qword_1001A9508);
  v7 = sub_100003650(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v13 = &v23 - v12;
  v14 = v3[2];
  if (v14)
  {
    v23 = v11;
    v24 = v10;
    v15 = a1[4];
    sub_100007534(a1, a1[3]);
    sub_10018FFF8();
    v16 = v14;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v17 = sub_10018FC08(v16);
    if (v2)
    {
      (*(v23 + 8))(v13, v24);
    }

    else
    {
      v25 = v17;
      v26 = v18;
      v27 = 0;
      sub_100069E5C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100014A40(v25, v26);
      v19 = v3[4];
      v25 = v3[3];
      v26 = v19;
      v27 = 1;

      sub_100046184(&qword_1002181F0, &qword_10019C610);
      sub_100190364(&qword_100221948, &qword_1002181F0, &qword_10019C610);
      sub_10000F780();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v20 = *(v3 + 48);
      v25 = v3[5];
      LOBYTE(v26) = v20;
      v27 = 2;
      sub_100046184(&qword_10021ED10, &qword_1001A3940);
      sub_100190364(&qword_100221950, &qword_10021ED10, &qword_1001A3940);
      sub_10000F780();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v21 = sub_100011BFC();
      v22(v21);
    }
  }
}

uint64_t sub_100190364(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SessionBookmark.hash(into:)()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t SessionBookmark.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SessionBookmark.__deallocating_deinit()
{
  SessionBookmark.deinit();
  v0 = sub_100003FF8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int SessionBookmark.hashValue.getter()
{
  Hasher.init(_seed:)();
  SessionBookmark.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100190520()
{
  result = qword_100221958;
  if (!qword_100221958)
  {
    type metadata accessor for SessionBookmark();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221958);
  }

  return result;
}

Swift::Int sub_100190574()
{
  Hasher.init(_seed:)();
  (*(**v0 + 136))(v2);
  return Hasher._finalize()();
}

uint64_t sub_100190604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SessionBookmark.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionBookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100190758()
{
  result = qword_100221A38;
  if (!qword_100221A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A38);
  }

  return result;
}

unint64_t sub_1001907B0()
{
  result = qword_100221A40;
  if (!qword_100221A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A40);
  }

  return result;
}

unint64_t sub_100190808()
{
  result = qword_100221A48;
  if (!qword_100221A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A48);
  }

  return result;
}

id sub_10019085C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A2C(a1, a2);
  }

  v6 = [v2 initWithProtoData:isa];

  return v6;
}

uint64_t sub_1001908D0(void *a1)
{
  v1 = [a1 encodeAsProto];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100190934()
{
  result = qword_100221A50;
  if (!qword_100221A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionBookmarkError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100190A68()
{
  result = qword_100221A58;
  if (!qword_100221A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A58);
  }

  return result;
}

uint64_t sub_100190AC0()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232EA8);
  sub_10000964C(v0, qword_100232EA8);
  return Logger.init(subsystem:category:)();
}

void *WritableSessionDatabase.__allocating_init(fileManager:ledger:)(void *a1, uint64_t a2)
{
  sub_1000092B4(a2, v7);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_100190B9C(a1, v7, v5);
  v3 = sub_10000835C();
  sub_100007378(v3);
  return a1;
}

uint64_t sub_100190B9C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (qword_10021FAB0 != -1)
  {
    sub_100006614();
  }

  v6 = type metadata accessor for Logger();
  sub_10000964C(v6, qword_100232EA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    *swift_slowAlloc() = 0;
    sub_10000ADA0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1000041C0();
  }

  sub_10018AA60(a3, v19);
  type metadata accessor for BiomeDatabaseWriter();
  swift_allocObject();
  v14 = a1;
  v15 = sub_10018A3FC(v14, v19);
  sub_1000092B4(a2, v19);
  type metadata accessor for WritableSessionDatabase();
  v16 = swift_allocObject();
  v17 = sub_1001916A4(v15, v19, v16);

  sub_10019176C(a3);
  sub_100007378(a2);
  return v17;
}

Swift::Bool __swiftcall WritableSessionDatabase.closeSession(guid:)(Swift::String guid)
{
  object = guid._object;
  countAndFlagsBits = guid._countAndFlagsBits;
  v4 = v1[12];

  v5 = sub_100023158(v4, v1, countAndFlagsBits);
  if (v5)
  {
    v6 = v5;
    v7 = v1[5];
    v8 = v1[6];
    sub_100007534(v1 + 2, v7);
    (*(v8 + 24))(v6, v7, v8);
    v14 = *(v4 + 16);
    os_unfair_lock_lock(v14);
    swift_beginAccess();
    sub_100191370(countAndFlagsBits, object);
    swift_endAccess();

    os_unfair_lock_unlock(v14);

    return 1;
  }

  else
  {
    if (qword_10021FAB0 != -1)
    {
      sub_100006614();
    }

    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232EA8);
    sub_10000835C();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100009684(countAndFlagsBits, object, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "Attempt to close missing session with GUID: %s", v12, 0xCu);
      sub_100007378(v13);
      sub_1000041C0();
      sub_1000036D4();
    }

    return 0;
  }
}

uint64_t *WritableSessionDatabase.deinit()
{
  sub_100007378(v0 + 2);
  sub_100007378(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return v0;
}

uint64_t WritableSessionDatabase.__deallocating_deinit()
{
  WritableSessionDatabase.deinit();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_1001910F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10000F794();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    v10 = *(*v2 + 24);
    sub_100046184(&qword_100221B58, &qword_1001A98C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(v21 + 48);
    v12 = type metadata accessor for SessionType();
    sub_1000036B8(v12);
    (*(v13 + 8))(v11 + *(v13 + 72) * v7, v12);
    v14 = *(v21 + 56);
    v15 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
    sub_1000036B8(v15);
    sub_1001871C8(v14 + *(v16 + 72) * v7, a1);
    sub_100004008(&qword_100217588);
    _NativeDictionary._delete(at:)();
    *v2 = v21;
    v17 = a1;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v19 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
    v17 = a1;
    v18 = 1;
  }

  return sub_1000051C0(v17, v18, 1, v19);
}

uint64_t sub_100191254()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000F794();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v8 = *(*v1 + 24);
  sub_100046184(&qword_100221B50, &unk_1001A98B8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(v14 + 48);
  v10 = type metadata accessor for SessionType();
  sub_1000036B8(v10);
  (*(v11 + 8))(v9 + *(v11 + 72) * v5, v10);
  v12 = *(*(v14 + 56) + 8 * v5);
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_100004008(&qword_100217588);
  _NativeDictionary._delete(at:)();
  *v1 = v14;
  return v12;
}

uint64_t sub_100191370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100005B74(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  sub_100046184(&qword_100221B48, &unk_1001A98A8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  type metadata accessor for SessionFeedback(0);
  _NativeDictionary._delete(at:)();
  *v3 = v14;
  return v12;
}

void sub_10019144C()
{
  v1 = sub_1000082BC();
  v2 = sub_100003BC8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_100011C10();
  sub_100005F80(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v7;
  sub_100046184(&qword_100221B58, &qword_1001A98C8);
  if (sub_10000433C())
  {
    v10 = *v0;
    sub_10000F794();
    if ((v9 & 1) != (v11 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v9)
  {
    v12 = *(*v0 + 56);
    v13 = *(*(type metadata accessor for BiomeDatabaseReader.SessionProxy() - 8) + 72);
    sub_100005460();

    sub_100191818(v14, v15);
  }

  else
  {
    v17 = sub_100008C70();
    v18(v17);
    v19 = sub_100005B60();
    sub_1001915C8(v19, v20, v21, v22);
    sub_100005460();
  }
}

uint64_t sub_1001915C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SessionType();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  result = sub_1001871C8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1001916A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = type metadata accessor for BiomeDatabaseWriter();
  v11 = &protocol witness table for BiomeDatabaseWriter;
  *&v9 = a1;
  type metadata accessor for Locker();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(a3 + 96) = v6;
  type metadata accessor for SessionFeedback(0);
  *(a3 + 104) = Dictionary.init(dictionaryLiteral:)();
  sub_100008C84(&v9, a3 + 16);
  sub_100008C84(a2, a3 + 56);
  return a3;
}

uint64_t sub_10019176C(uint64_t a1)
{
  v2 = sub_100046184(&qword_100221280, &unk_1001A8C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001917D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100191818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Client.init(_:)()
{
  return Client.init(_:)();
}

{
  return Client.init(_:)();
}

{
  return Client.init(_:)();
}

uint64_t UserAgent.init(_:requestor:)()
{
  return UserAgent.init(_:requestor:)();
}

{
  return UserAgent.init(_:requestor:)();
}

{
  return UserAgent.init(_:requestor:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}