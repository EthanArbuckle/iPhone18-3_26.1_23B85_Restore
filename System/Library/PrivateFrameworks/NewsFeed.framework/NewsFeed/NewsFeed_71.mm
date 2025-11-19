uint64_t _s8NewsFeed17WebEmbedDatastoreC5empty3forAcA0cD17DataVisualizationO_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedDataVisualization();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61B9368(a1, v6, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WebEmbedDatastore();
    v7 = swift_allocObject();
    (*(v3 + 56))(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, 1, 1, v2);
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = 0;
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
    v8 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v9 = sub_1D726203C();
    v10 = [v8 initWithJSONString_];

    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v10;
    sub_1D61B9308(v6, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    sub_1D61B9308(v6, type metadata accessor for WebEmbedDataVisualization);
    type metadata accessor for WebEmbedDatastore();
    v7 = swift_allocObject();
    (*(v3 + 56))(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, 1, 1, v2);
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents) = 0;
    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents) = 0;
    v11 = objc_allocWithZone(MEMORY[0x1E69CE158]);
    v12 = sub_1D726203C();
    v13 = [v11 initWithJSONString_];

    *(v7 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) = v13;
  }

  return v7;
}

void *sub_1D61B87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61B9368(a1, v18, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v18 >> 61;
    if (v20 <= 2)
    {
      if (!v20)
      {

        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v19 = sub_1D61AC308(v26, a2);
        sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
LABEL_16:

        return v19;
      }

      if (v20 == 1)
      {

        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v22 = sub_1D61AE8D4(v23, a2);
      }

      else
      {
        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v22 = sub_1D61AF414(v27, a2, a3);
      }

LABEL_15:
      v19 = v22;
      sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_16;
    }

    if (v20 > 4)
    {
      if (v20 == 5)
      {

        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v25 = sub_1D61B4B60(v24, a2);
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      else
      {

        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v25 = sub_1D61B54D4(v29, a2);
        if (!v3)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v20 == 3)
      {

        type metadata accessor for WebEmbedDatastore();
        swift_allocObject();

        v22 = sub_1D61B388C(v21, a2);
        goto LABEL_15;
      }

      type metadata accessor for WebEmbedDatastore();
      swift_allocObject();

      v25 = sub_1D61B41F4(v28, a2);
      if (!v3)
      {
LABEL_18:
        v19 = v25;
        sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);

        return v19;
      }
    }

    v19 = v3;
    sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);

    return v19;
  }

  sub_1D5BE748C(v18, v14, type metadata accessor for GenericDataVisualization);
  sub_1D61B9368(v14, v10, type metadata accessor for GenericDataVisualization);
  type metadata accessor for WebEmbedDatastore();
  swift_allocObject();
  v19 = sub_1D61B5E40(v10, a2);
  sub_1D61B9308(a1, type metadata accessor for WebEmbedDataVisualization);
  sub_1D61B9308(v14, type metadata accessor for GenericDataVisualization);
  return v19;
}

void sub_1D61B8C3C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D61B95A4(255, a3);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D61B8C94()
{
  if (!qword_1EDF05448)
  {
    sub_1D61B8CFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05448);
    }
  }
}

void sub_1D61B8CFC()
{
  if (!qword_1EDF05710)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05710);
    }
  }
}

void sub_1D61B8D8C()
{
  if (!qword_1EDF05438)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05438);
    }
  }
}

void sub_1D61B8E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D61B8EA4()
{
  if (!qword_1EDF05718)
  {
    sub_1D61B8CFC();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05718);
    }
  }
}

uint64_t sub_1D61B8F0C(uint64_t a1, unint64_t *a2)
{
  sub_1D61B95A4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D61B8F68()
{
  result = qword_1EC884E20;
  if (!qword_1EC884E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E20);
  }

  return result;
}

uint64_t sub_1D61B8FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B62C58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D61B902C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62C58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D61B90AC()
{
  if (!qword_1EDF17C30)
  {
    type metadata accessor for SportsRosterPlayer();
    sub_1D61B9434(&qword_1EDF0FD98, type metadata accessor for SportsRosterPlayer);
    sub_1D61B9434(&qword_1EDF0FDA0, type metadata accessor for SportsRosterPlayer);
    v0 = sub_1D725AEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C30);
    }
  }
}

void sub_1D61B9178()
{
  if (!qword_1EDF04720)
  {
    sub_1D61B91E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04720);
    }
  }
}

void sub_1D61B91E4()
{
  if (!qword_1EDF05510)
  {
    sub_1D61B94CC(255, &qword_1EDF1B790, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    sub_1D725891C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF05510);
    }
  }
}

uint64_t sub_1D61B9288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62C58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D61B9308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D61B9368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D61B93D0()
{
  if (!qword_1EC884E28)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884E28);
    }
  }
}

uint64_t sub_1D61B9434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA6FD500);
  }

  return result;
}

void sub_1D61B94CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D61B952C(uint64_t a1, uint64_t a2)
{
  sub_1D61B95A4(0, &qword_1EDF1B5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D61B95A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

NewsFeed::FormatSymbolWeight_optional __swiftcall FormatSymbolWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSymbolWeight.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 1684828002;
    v7 = 0x7976616568;
    if (v1 != 8)
    {
      v7 = 0x6B63616C62;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6D756964656DLL;
    if (v1 != 5)
    {
      v8 = 0x646C6F62696D6573;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6669636570736E75;
    v3 = 1852401780;
    v4 = 0x746867696CLL;
    if (v1 != 3)
    {
      v4 = 0x72616C75676572;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x67694C6172746C75;
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
}

unint64_t sub_1D61B978C()
{
  result = qword_1EC884E40;
  if (!qword_1EC884E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E40);
  }

  return result;
}

uint64_t sub_1D61B97E0()
{
  sub_1D7264A0C();
  sub_1D694F4F8();
  return sub_1D7264A5C();
}

uint64_t sub_1D61B9830()
{
  sub_1D7264A0C();
  sub_1D694F4F8();
  return sub_1D7264A5C();
}

uint64_t sub_1D61B9880@<X0>(uint64_t *a1@<X8>)
{
  result = FormatSymbolWeight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D61B98A8(uint64_t a1)
{
  *(a1 + 8) = sub_1D61B98D8();
  result = sub_1D61B992C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61B98D8()
{
  result = qword_1EC884E48;
  if (!qword_1EC884E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E48);
  }

  return result;
}

unint64_t sub_1D61B992C()
{
  result = qword_1EDF2D9D8;
  if (!qword_1EDF2D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D9D8);
  }

  return result;
}

unint64_t sub_1D61B9980(uint64_t a1)
{
  result = sub_1D61B99A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61B99A8()
{
  result = qword_1EC884E50;
  if (!qword_1EC884E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E50);
  }

  return result;
}

unint64_t sub_1D61B99FC(void *a1)
{
  a1[1] = sub_1D5C76094();
  a1[2] = sub_1D61B9A34();
  result = sub_1D61B978C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61B9A34()
{
  result = qword_1EDF101A0;
  if (!qword_1EDF101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF101A0);
  }

  return result;
}

void sub_1D61B9B78(double (*a1)(double, double, double, double), double (*a2)(double, double, double, double), double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  v17 = [v8 CGContext];
  v18 = a1(a3, a4, a5, a6);
  v19 = a2(a3, a4, a5, a6);
  CGContextTranslateCTM(v17, v18, v19);

  v20 = [v8 CGContext];
  CGContextScaleCTM(v20, a7, a8);
}

void UIGraphicsImageRendererContext.rotate(degrees:targetRect:)(long double a1, double a2, double a3, double a4, double a5)
{
  v9 = fmod(a1, 360.0) * 3.14159265 / 180.0;
  if (a1 == 0.0)
  {
    v10 = 6.28318531;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v5 CGContext];
  CGContextTranslateCTM(v11, a4 * 0.5, a5 * 0.5);

  v12 = [v5 CGContext];
  CGContextScaleCTM(v12, 1.0, 1.0);

  v13 = [v5 CGContext];
  CGContextRotateCTM(v13, v10);

  v14 = [v5 CGContext];
  CGContextTranslateCTM(v14, a4 * -0.5, a5 * -0.5);
}

unint64_t FormatStateViewNodeDataLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatStateViewNodeDataLayoutAttributes.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

double FormatStateViewNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatStateViewNodeDataLayoutAttributes.__allocating_init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  result = swift_allocObject();
  v13 = *a3;
  v14 = *a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v13;
  *(result + 40) = a4;
  *(result + 48) = v14;
  *(result + 56) = a6;
  return result;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.init(layoutAttributes:stateLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = *a3;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));
  return v0;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatStateViewNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 64);

  return v1;
}

uint64_t FormatStateViewNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

uint64_t sub_1D61BA0B4()
{
  v1 = *(*(*v0 + 16) + 48);

  return v1;
}

void *sub_1D61BA11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 24) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v27 = MEMORY[0x1E69E7CC0];
  for (i = 0; v12; i = v16)
  {
    v16 = i;
LABEL_8:
    v12 &= v12 - 1;

    v17 = a3(a1, a2);

    if (v17)
    {
      result = v27;
      v25 = v27[2];
      v26 = *(v17 + 16);
      v18 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_29;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      if (!result || (v20 = v27[3] >> 1, v20 < v18))
      {
        if (v25 <= v18)
        {
          v21 = v25 + v26;
        }

        else
        {
          v21 = v25;
        }

        result = sub_1D698F994(result, v21, 1, v27);
        v19 = result;
        v20 = result[3] >> 1;
      }

      v27 = v19;
      if (*(v17 + 16))
      {
        if (v20 - v19[2] < v26)
        {
          goto LABEL_30;
        }

        sub_1D61BA350();
        swift_arrayInitWithCopy();

        if (v26)
        {
          v22 = v27[2];
          v23 = __OFADD__(v22, v26);
          v24 = v22 + v26;
          if (v23)
          {
            goto LABEL_31;
          }

          v27[2] = v24;
        }
      }

      else
      {

        if (v26)
        {
          __break(1u);
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
LABEL_25:

      result = v27;
      if (!v27[2])
      {

        return 0;
      }

      return result;
    }

    v12 = *(v8 + 8 * v16);
    ++i;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1D61BA350()
{
  result = qword_1EDF3B4D8;
  if (!qword_1EDF3B4D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3B4D8);
  }

  return result;
}

unint64_t FormatVideoPlayerOverlayContent.logoSize.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5DEA234(v2);
}

uint64_t FormatVideoPlayerOverlayContent.showDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2);
}

uint64_t _s8NewsFeed31FormatVideoPlayerOverlayContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  v22 = *(a1 + 48);
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v26[0] = *a1;
  v25[0] = v5;

  v12 = static FormatAsyncImageContent.== infix(_:_:)(v26, v25);

  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  switch(v2)
  {
    case 0uLL:
      if (v6)
      {
        goto LABEL_16;
      }

LABEL_10:
      sub_1D5CBF568(v2);
      sub_1D5CBF568(v2);
      goto LABEL_11;
    case 1uLL:
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    case 2uLL:
      if (v6 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
  }

  if (v6 >= 3)
  {
    sub_1D5DEA234(v2);
    sub_1D5DEA234(v6);
    sub_1D5DEA234(v2);
    sub_1D5DEA234(v6);
    v21 = sub_1D633A310(v2, v6);
    sub_1D5CBF568(v2);
    sub_1D5CBF568(v6);
    sub_1D5CBF568(v6);
    sub_1D5CBF568(v2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (v3)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      type metadata accessor for FormatImageNodeStyle();

      v13 = static FormatImageNodeStyle.== infix(_:_:)(v3, v8);

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v8)
    {
      goto LABEL_17;
    }

    if (v4)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v16 = *(v4 + 16);
      v17 = *(v7 + 16);
      swift_beginAccess();
      v18 = *(v16 + 16);
      swift_beginAccess();
      v19 = *(v17 + 16);

      v20 = sub_1D5E1F5F0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v7)
    {
      goto LABEL_17;
    }

    v30 = v24;
    v31 = v23;
    v32 = v22;
    v27 = v9;
    v28 = v10;
    v29 = v11;
    sub_1D5E04CC4(v24);
    sub_1D5E04CC4(v9);
    v14 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v30, &v27);
    sub_1D5D2F2C4(v27, v28, v29);
    sub_1D5D2F2C4(v30, v31, v32);
    return v14 & 1;
  }

LABEL_16:
  sub_1D5DEA234(v2);
  sub_1D5DEA234(v6);
  sub_1D5CBF568(v2);
  sub_1D5CBF568(v6);
LABEL_17:
  v14 = 0;
  return v14 & 1;
}

unint64_t sub_1D61BA740(uint64_t a1)
{
  result = sub_1D61BA768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61BA768()
{
  result = qword_1EC884E58;
  if (!qword_1EC884E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E58);
  }

  return result;
}

unint64_t sub_1D61BA7BC(void *a1)
{
  a1[1] = sub_1D61BA7F4();
  a1[2] = sub_1D61BA848();
  result = sub_1D61BA89C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61BA7F4()
{
  result = qword_1EDF1F820;
  if (!qword_1EDF1F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F820);
  }

  return result;
}

unint64_t sub_1D61BA848()
{
  result = qword_1EDF093B0;
  if (!qword_1EDF093B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093B0);
  }

  return result;
}

unint64_t sub_1D61BA89C()
{
  result = qword_1EC884E60;
  if (!qword_1EC884E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatAsyncImageContentO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatPublisherLogoSizingO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D61BA924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_1D61BA980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D61BAA2C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1D5C3AD08();
}

void FormatLayoutViewRenderer.presentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1D5C3AD08();
}

void (*FormatLayoutViewRenderer.presentingViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D61BAB5C;
}

void sub_1D61BAB5C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1D5C3AD08();
  }

  free(v3);
}

void (*FormatLayoutViewRenderer.analyticsDataProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D61BACB0;
}

void sub_1D61BACB0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(*(v4 + 184) + 56);
    swift_unknownObjectWeakLoadStrong();
    *(v5 + 24) = *(v4 + 32);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t FormatLayoutViewRenderer.debugger.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:actionSenderHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a5 + 2);
  v12 = *a5;
  v13 = v10;
  return FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:resizingProvider:actionSenderHandler:)(a1, a2, a3, a4, &v12, *(v9 + 320), a6, a7, a8, a9);
}

uint64_t FormatLayoutViewRenderer.render<A, B>(for:with:in:traitCollection:sourceItemData:resizingProvider:actionSenderHandler:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v63 = a8;
  v66 = a7;
  v65 = a6;
  v64 = a4;
  v72 = a1;
  v68 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v67 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v69 = v61 - v19;
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v16);
  v61[0] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v62 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[1] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v70 = v61 - v25;
  v26 = *a5;
  v27 = a5[1];
  v73 = a5[2];
  v74 = v26;
  type metadata accessor for FormatAccessibilityRenderer();
  v28 = a2[8];
  v29 = a2[9];
  v31 = v11[34];
  v30 = v11[35];
  LOBYTE(v80) = 7;
  v71 = v28;
  v32 = a3;
  v75 = sub_1D6A61350(v28, v29, a3, &off_1F51E2E28, a2, v31, v30, &v80);
  if (v27)
  {
    v33 = v74;
    v77 = v74;
    v78 = v27;
    v79 = v73;

    swift_unknownObjectRetain();
    sub_1D5EBC314(v33, v27);
    sub_1D6D270A8(v71, v29, a9, a10, &v80);

    v35 = v80;
    v34 = v81;
    v36 = v82;
  }

  else
  {

    swift_unknownObjectRetain();
    v34 = 0;
    v36 = v73;
    v35 = v74;
  }

  v80 = v35;
  v81 = v34;
  v82 = v36;
  v37 = v72;
  sub_1D61BB650(v72, a2, v32, v64, &v80, v65, v75, v66, v63, a9, a10);
  sub_1D5EBC358(v80, v81);
  v80 = v74;
  v81 = v27;
  v82 = v73;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1D67C4728(v37, &v80, Strong, v32, v71, v29, a9, a10);

  v39 = v11[33];
  v40 = (*(a10 + 8))(a9, a10);
  swift_beginAccess();
  v41 = *(a2 + 2);
  v42 = *(a2 + 3);
  v43 = *(a2 + 4);
  v44 = *(a2 + 5);
  (*(v68 + 16))(v67, v37, a9);
  v45 = type metadata accessor for FormatItemNodeLayoutContext();
  v46 = v69;
  v47 = swift_dynamicCast();
  v48 = *(*(v45 - 8) + 56);
  if (v47)
  {
    v48(v46, 0, 1, v45);
    v49 = v70;
    sub_1D5BC885C(v46 + *(v45 + 28), v70, type metadata accessor for FeedItem);
    sub_1D61CCBB4(v46, type metadata accessor for FormatItemNodeLayoutContext);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v48(v46, 1, 1, v45);
    sub_1D61CCAA4(v46, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    v49 = v70;
  }

  v51 = type metadata accessor for FeedItem(0);
  (*(*(v51 - 8) + 56))(v49, v50, 1, v51);
  if (*(v39 + 72) == 1)
  {
    sub_1D725A7EC();
    v52 = v76;
    v53 = MEMORY[0x1E69E6720];
    v54 = v62;
    sub_1D61CC910(v49, v62, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    v55 = (*(v61[0] + 80) + 16) & ~*(v61[0] + 80);
    v56 = swift_allocObject();
    sub_1D61CA3F8(v54, v56 + v55);
    sub_1D71AF2C8(v52, v40, sub_1D61CA48C, v56, v41, v42, v43, v44);

    v57 = v49;
    v58 = v53;
  }

  else
  {
    sub_1D725A7CC();
    v59 = v76;
    if (v76)
    {
      [v76 setHidden_];
    }

    else
    {
    }

    v58 = MEMORY[0x1E69E6720];
    v57 = v49;
  }

  return sub_1D61CCAA4(v57, qword_1EDF34EF0, type metadata accessor for FeedItem, v58, sub_1D61BB5EC);
}

void sub_1D61BB5EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D61BB650(uint64_t a1, uint64_t *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v1438 = a8;
  v1450 = a7;
  v1443 = a6;
  v1451 = a4;
  v12 = a2;
  v1462 = a1;
  v1464 = a11;
  v1445 = *a2;
  v13 = MEMORY[0x1E69E6720];
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v1404 = &v1358 - v16;
  v1426 = type metadata accessor for FormatItemNodeData();
  v1378 = *(v1426 - 8);
  MEMORY[0x1EEE9AC00](v1426, v17);
  v1377 = &v1358 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1466 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v1435 = &v1358 - v21;
  v22 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v1459 = &v1358 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FormatSponsoredBannerData();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v1408 = (&v1358 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for FormatShareAttributionData();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v1425 = &v1358 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FormatVideoData(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v1460 = &v1358 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatMicaData();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v1453 = (&v1358 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for FormatAdMetricsData();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v1424 = &v1358 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, &qword_1EDF29E98, sub_1D61CAB60, v13);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v1389 = &v1358 - v42;
  sub_1D61BB5EC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v13);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v1383 = &v1358 - v45;
  v1382 = sub_1D72585BC();
  v46 = *(v1382 - 8);
  MEMORY[0x1EEE9AC00](v1382, v47);
  v1407 = &v1358 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1388 = type metadata accessor for WebEmbedImageRequest();
  MEMORY[0x1EEE9AC00](v1388, v49);
  v1406 = &v1358 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, v13);
  v1376 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v1390 = &v1358 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v1420 = &v1358 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v1381 = &v1358 - v59;
  v1375 = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v1387 = &v1358 - v63;
  v1434 = type metadata accessor for FeedItem(0);
  v1432 = *(v1434 - 8);
  v64 = *(v1432 + 64);
  MEMORY[0x1EEE9AC00](v1434, v65);
  v1423 = &v1358 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v1372 = &v1358 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v1419 = &v1358 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v1373 = &v1358 - v74;
  v1394 = type metadata accessor for FormatButtonNodeDataAction();
  v1452 = *(v1394 - 8);
  MEMORY[0x1EEE9AC00](v1394, v75);
  v1380 = &v1358 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v1379 = &v1358 - v79;
  sub_1D61BB5EC(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v13);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v1386 = &v1358 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v1385 = &v1358 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v1393 = &v1358 - v88;
  v1384 = type metadata accessor for FormatButtonNodeData();
  MEMORY[0x1EEE9AC00](v1384, v89);
  v1461 = &v1358 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1446 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v91, v92);
  v1374 = &v1358 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94, v95);
  v1403 = &v1358 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v1402 = &v1358 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v1401 = &v1358 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v1405 = &v1358 - v105;
  MEMORY[0x1EEE9AC00](v106, v107);
  v1439 = &v1358 - v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v1400 = &v1358 - v111;
  MEMORY[0x1EEE9AC00](v112, v113);
  v1399 = &v1358 - v114;
  v1436 = v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v1398 = &v1358 - v118;
  v119 = type metadata accessor for FormatViewData(0);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v1458 = &v1358 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v12 + 48);
  v122 = *(v12 + 56);
  v124 = &a3[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
  swift_beginAccess();
  *v124 = v123;
  *(v124 + 1) = v122;

  v1476 = 0;
  v125 = objc_opt_self();
  v126 = swift_allocObject();
  v1463 = a10;
  v127 = v1464;
  v126[2] = a10;
  v126[3] = v127;
  v126[4] = &v1476;
  v126[5] = a3;
  v128 = a3;
  v129 = v1465;
  v126[6] = v12;
  v126[7] = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_1D61CABD4;
  *(v130 + 24) = v126;
  v1397 = v126;
  *&v1474[0] = sub_1D5DF8E8C;
  *(&v1474[0] + 1) = v130;
  *&v1472 = MEMORY[0x1E69E9820];
  v131 = 1107296256;
  *(&v1472 + 1) = 1107296256;
  *&v1473 = sub_1D69C9704;
  *(&v1473 + 1) = &block_descriptor_30;
  v132 = _Block_copy(&v1472);
  v133 = v128;

  [v125 performWithoutAnimation_];
  _Block_release(v132);
  LOBYTE(v129) = swift_isEscapingClosureAtFileLocation();

  if (v129)
  {
    goto LABEL_319;
  }

  *&v133[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = v1450;

  swift_beginAccess();
  v134 = *(v12 + 32);
  v135 = *(v12 + 40);
  type metadata accessor for FormatVisibilityData();
  v136 = swift_allocObject();
  v1396 = v136;
  *(v136 + 16) = MEMORY[0x1E69E7CC8];
  v1457 = (v136 + 16);
  v137 = *(v12 + 96);
  v132 = v133;
  v1456 = *(v137 + 16);
  if (!v1456)
  {

LABEL_304:
    sub_1D69CB880(v1396);
    v12 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
    swift_beginAccess();
    v1350 = *&v132[v12];
    if (!(v1350 >> 62))
    {
      if (!*((v1350 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_317;
      }

      goto LABEL_306;
    }

LABEL_320:
    if (!sub_1D7263BFC())
    {
      goto LABEL_317;
    }

LABEL_306:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v1351 = objc_opt_self();
      [v1351 begin];
      v1352 = *&v132[v12];
      if (v1352 >> 62)
      {
        v1353 = sub_1D7263BFC();
        if (v1353)
        {
          goto LABEL_309;
        }
      }

      else
      {
        v1353 = *((v1352 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1353)
        {
LABEL_309:
          if (v1353 < 1)
          {
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
            goto LABEL_338;
          }

          for (i = 0; i != v1353; ++i)
          {
            if ((v1352 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](i, v1352);
            }

            else
            {
            }

            sub_1D7213B94();
          }
        }
      }

      [v1351 commit];
    }

LABEL_317:

    v1355 = v1476;

    return;
  }

  v1440 = a9;
  v1442 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  v1448 = &v133[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers];
  v1365 = (v12 + *(*v12 + 168));
  v1455 = v137;
  v1454 = v137 + 32;

  swift_beginAccess();
  swift_beginAccess();
  v12 = 0;
  v1449 = (v1446 + 16);
  v1418 = v64 + 7;
  v1447 = v1446 + 32;
  v1395 = (v1432 + 56);
  v1361 = v1466 + 7;
  v1444 = v1436 + 7;
  v1370 = (v46 + 56);
  v1371 = (v46 + 16);
  v1368 = (v46 + 32);
  v1369 = (v46 + 48);
  v1367 = v1452 + 56;
  v1391 = (v1432 + 48);
  v1392 = v1452 + 48;
  v1359 = (v46 + 8);
  v1360 = &v1473;
  v1441 = xmmword_1D72816C0;
  v1366 = xmmword_1D7273AE0;
  v138 = v1459;
  v139 = v1460;
  v140 = v1453;
  v141 = v1461;
  v142 = v1458;
  v1467 = v132;
  while (2)
  {
    if (v12 >= *(v1455 + 16))
    {
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    v150 = *(v1454 + 8 * v12);
    v1466 = v12 + 1;
    switch((v150 >> 59) & 0x1E | (v150 >> 2) & 1)
    {
      case 1uLL:
        v588 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v589 = v150;
        v1430 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v590 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1482 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v591 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1480 = v590;
        v1481 = v591;
        v592 = v590;
        v593 = *(v590 + 32);
        v594 = *(v590 + 40);
        v595 = *(v590 + 104);

        v1437 = sub_1D61C787C(v593, v594, v595, type metadata accessor for FormatLabel, &unk_1F50F6EE8);
        v597 = v596;
        v599 = v598;
        sub_1D726345C();
        *&v1468 = v589;
        v600 = sub_1D6EE8B60();
        v602 = v601;
        type metadata accessor for FormatVisibilityDataValue();
        v603 = swift_allocObject();
        *(v603 + 16) = v589;
        *(v603 + 24) = v597;
        v604 = v1457;
        swift_beginAccess();
        v1431 = v588;

        *&v1433 = v597;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v604;
        *v604 = 0x8000000000000000;
        sub_1D6D7A36C(v603, v600, v602, isUniquelyReferenced_nonNull_native);

        *v604 = v1475;
        swift_endAccess();
        if (!v1476)
        {
          goto LABEL_335;
        }

        v606 = *(v1465 + 304);
        v607 = v1476;
        v608 = v1464;
        v1452 = v592;
        v609 = v599;
        v610 = v1463;
        sub_1D69B7E44(v1430, v592, v1437, v599, v607, v606, v1451, v1463, v1464);

        v611 = swift_allocObject();
        swift_weakInit();
        v612 = v1446;
        v613 = v1399;
        (*(v1446 + 16))(v1399, v1462, v610);
        v614 = (*(v612 + 80) + 88) & ~*(v612 + 80);
        v615 = (v1444 + v614) & 0xFFFFFFFFFFFFFFF8;
        v616 = swift_allocObject();
        *(v616 + 16) = *(v1445 + 80);
        *(v616 + 24) = v610;
        *(v616 + 32) = v608;
        *(v616 + 40) = v611;
        v617 = v1481;
        *(v616 + 48) = v1480;
        *(v616 + 64) = v617;
        *(v616 + 80) = v1482;
        (*(v612 + 32))(v616 + v614, v613, v610);
        v618 = (v616 + v615);
        v619 = v1437;
        v620 = v1433;
        *v618 = v1437;
        v618[1] = v620;
        v618[2] = v609;
        v621 = swift_allocObject();
        *(v621 + 16) = sub_1D61CC858;
        *(v621 + 24) = v616;
        v622 = v1448;
        swift_beginAccess();
        v623 = *v622;
        *&v1433 = v620;

        sub_1D61CC910(&v1480, &v1472, &unk_1EDF1C808, type metadata accessor for FormatTextNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1437 = v619;

        v624 = swift_isUniquelyReferenced_nonNull_native();
        *v622 = v623;
        v1429 = v609;
        if ((v624 & 1) == 0)
        {
          v623 = sub_1D69931DC(0, v623[2] + 1, 1, v623);
          *v1448 = v623;
        }

        v141 = v1461;
        v626 = v623[2];
        v625 = v623[3];
        if (v626 >= v625 >> 1)
        {
          v623 = sub_1D69931DC((v625 > 1), v626 + 1, 1, v623);
        }

        v623[2] = v626 + 1;
        v627 = &v623[2 * v626];
        v627[4] = sub_1D61CCD0C;
        v627[5] = v621;
        *v1448 = v623;
        swift_endAccess();

        v628 = *(&v1480 + 1);
        v1514 = *(&v1480 + 1);
        if (*(&v1480 + 1))
        {
          v630 = *(v1452 + 2);
          v629 = *(v1452 + 3);
          v631 = *(v1465 + 296);
          v632 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1514, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v633 = v1433;
          sub_1D61CC910(&v1514, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v632, sub_1D61BB5EC);

          v634 = [v633 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v635 = swift_allocObject();
          v635[2] = 0;
          v635[3] = 0;
          v635[6] = v629;
          v635[7] = v633;
          v636 = MEMORY[0x1E69E7CC8];
          v635[11] = v628;
          v635[12] = v636;
          v635[4] = v631;
          v635[5] = v630;
          v635[8] = v634;
          v637 = MEMORY[0x1E69E7CC0];
          v635[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v638 = swift_allocObject();
          *(v638 + 16) = v1441;
          *(v638 + 32) = v634;
          *&v1472 = v638;
          v639 = v634;
          sub_1D69879AC(v637);
          v635[10] = v1472;
          v640 = v1467;
          v641 = v1442;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v642);
          if (*((*&v640[v641] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v640[v641] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1514, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v141 = v1461;
        }

        v643 = v1481;
        v644 = v1482;
        v132 = v1467;
        v645 = v1452;
        if (*(&v1481 + 1))
        {
          v1468 = v1481;
          *&v1469 = v1482;
          v646 = *(v1452 + 4);
          v647 = *(v1452 + 5);

          v144 = v1462;
          v648 = v647;
          v146 = v1463;
          v145 = v1464;
          sub_1D6D270A8(v646, v648, v1463, v1464, &v1472);

          v143 = *(&v1472 + 1);
          v643 = v1472;
          v644 = v1473;
        }

        else
        {
          v143 = 0;
          v144 = v1462;
          v145 = v1464;
          v146 = v1463;
        }

        *&v1472 = v643;
        *(&v1472 + 1) = v143;
        *&v1473 = v644;
        Strong = swift_unknownObjectWeakLoadStrong();
        v148 = v144;
        v149 = v1437;
        sub_1D67C4728(v148, &v1472, Strong, v1437, *(v645 + 4), *(v645 + 5), v146, v145);

        sub_1D5EBC358(v1472, *(&v1472 + 1));
        goto LABEL_6;
      case 2uLL:
        sub_1D61CC870(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
        v439 = v438;
        v440 = swift_projectBox();
        v441 = v440 + *(v439 + 48);
        v442 = *(v441 + 32);
        v443 = *(v441 + 16);
        v1477 = *v441;
        v1478 = v443;
        v1479 = v442;
        sub_1D5BC885C(v440, v142, type metadata accessor for FormatViewData);
        v444 = v1477;
        v445 = *(v1477 + 32);
        v446 = *(v1477 + 40);
        v447 = *(v1477 + 104);

        sub_1D61CC910(&v1477, &v1472, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        *&v1433 = sub_1D61C787C(v445, v446, v447, type metadata accessor for FormatView, &unk_1F50F6EC0);
        v449 = v448;
        v1437 = v450;

        sub_1D726345C();
        *&v1468 = v150;
        v451 = sub_1D6EE8B60();
        v453 = v452;
        type metadata accessor for FormatVisibilityDataValue();
        v454 = v150;
        v455 = swift_allocObject();
        *(v455 + 16) = v454;
        *(v455 + 24) = v449;
        v456 = v1457;
        swift_beginAccess();
        v1452 = v454;

        v1430 = v449;
        v457 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v456;
        *v456 = 0x8000000000000000;
        sub_1D6D7A36C(v455, v451, v453, v457);

        *v456 = v1475;
        swift_endAccess();
        if (!v1476)
        {
          goto LABEL_334;
        }

        v458 = v1476;
        v459 = v1464;
        v460 = v1462;
        v1431 = v444;
        v461 = v1437;
        v462 = v1463;
        sub_1D6085298(v1462, v444, v1433, v1437, v142, v458, v1451, v1463, v1464);

        v463 = swift_allocObject();
        swift_weakInit();
        v464 = v1446;
        v465 = v1398;
        (*(v1446 + 16))(v1398, v460, v462);
        v466 = (*(v464 + 80) + 88) & ~*(v464 + 80);
        v467 = (v1444 + v466) & 0xFFFFFFFFFFFFFFF8;
        v468 = swift_allocObject();
        *(v468 + 16) = *(v1445 + 80);
        *(v468 + 24) = v462;
        *(v468 + 32) = v459;
        *(v468 + 40) = v463;
        v469 = v1478;
        *(v468 + 48) = v1477;
        *(v468 + 64) = v469;
        *(v468 + 80) = v1479;
        (*(v464 + 32))(v468 + v466, v465, v462);
        v470 = (v468 + v467);
        v471 = v1433;
        v472 = v1430;
        *v470 = v1433;
        v470[1] = v472;
        v470[2] = v461;
        v473 = swift_allocObject();
        *(v473 + 16) = sub_1D61CCA8C;
        *(v473 + 24) = v468;
        v474 = v1448;
        swift_beginAccess();
        v475 = *v474;
        sub_1D61CC910(&v1477, &v1472, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1430 = v472;

        v476 = v471;

        v477 = swift_isUniquelyReferenced_nonNull_native();
        *v474 = v475;
        *&v1433 = v476;
        if ((v477 & 1) == 0)
        {
          v475 = sub_1D69931DC(0, v475[2] + 1, 1, v475);
          *v1448 = v475;
        }

        v479 = v475[2];
        v478 = v475[3];
        if (v479 >= v478 >> 1)
        {
          v475 = sub_1D69931DC((v478 > 1), v479 + 1, 1, v475);
        }

        v475[2] = v479 + 1;
        v480 = &v475[2 * v479];
        v480[4] = sub_1D61CCD0C;
        v480[5] = v473;
        *v1448 = v475;
        swift_endAccess();

        v481 = *(&v1477 + 1);
        v1515[0] = *(&v1477 + 1);
        if (*(&v1477 + 1))
        {
          v482 = v1431[2];
          v483 = v1431[3];
          v484 = *(v1465 + 296);
          v485 = MEMORY[0x1E69E6720];
          sub_1D61CC910(v1515, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v486 = v1430;
          sub_1D61CC910(v1515, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v485, sub_1D61BB5EC);

          v487 = [v486 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v488 = swift_allocObject();
          v488[2] = 0;
          v488[3] = 0;
          v488[6] = v483;
          v488[7] = v486;
          v489 = MEMORY[0x1E69E7CC8];
          v488[11] = v481;
          v488[12] = v489;
          v488[4] = v484;
          v488[5] = v482;
          v488[8] = v487;
          v490 = MEMORY[0x1E69E7CC0];
          v488[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v491 = swift_allocObject();
          *(v491 + 16) = v1441;
          *(v491 + 32) = v487;
          *&v1472 = v491;
          v492 = v487;
          sub_1D69879AC(v490);
          v488[10] = v1472;
          v493 = v1467;
          v494 = v1442;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v495);
          if (*((*&v493[v494] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v493[v494] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(v1515, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        }

        v496 = v1478;
        v497 = v1479;
        v498 = v1431;
        if (*(&v1478 + 1))
        {
          v1468 = v1478;
          *&v1469 = v1479;
          v499 = v1431[4];
          v500 = v1431[5];

          v501 = v1462;
          v502 = v500;
          v503 = v1463;
          v504 = v1464;
          sub_1D6D270A8(v499, v502, v1463, v1464, &v1472);

          v505 = *(&v1472 + 1);
          v496 = v1472;
          v497 = v1473;
        }

        else
        {
          v505 = 0;
          v501 = v1462;
          v504 = v1464;
          v503 = v1463;
        }

        *&v1472 = v496;
        *(&v1472 + 1) = v505;
        *&v1473 = v497;
        v996 = swift_unknownObjectWeakLoadStrong();
        v997 = v501;
        v998 = v1433;
        sub_1D67C4728(v997, &v1472, v996, v1433, v498[4], v498[5], v503, v504);

        sub_1D5EBC358(v1472, *(&v1472 + 1));
        v142 = v1458;
        sub_1D61CCBB4(v1458, type metadata accessor for FormatViewData);
        sub_1D61CCAA4(&v1477, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v138 = v1459;
        v139 = v1460;
        v140 = v1453;
        v12 = v1466;
        v141 = v1461;
        v132 = v1467;
        goto LABEL_9;
      case 3uLL:
        sub_1D61CC870(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v527 = v526;
        v528 = swift_projectBox();
        v529 = v528 + *(v527 + 48);
        v530 = *(v529 + 32);
        v531 = *(v529 + 16);
        v1486 = *v529;
        v1487 = v531;
        v1488 = v530;
        sub_1D5BC885C(v528, v141, type metadata accessor for FormatButtonNodeData);
        v532 = v1486;
        v533 = *(v1486 + 16);
        v534 = *(v533 + 64);
        v535 = *(v533 + 72);
        v536 = *(v1486 + 32);

        sub_1D61CC910(&v1486, &v1472, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        *&v1433 = sub_1D61C787C(v534, v535, v536, type metadata accessor for FormatButton, &unk_1F50F6F38);
        v538 = v537;
        v1417 = v539;

        sub_1D726345C();
        *&v1468 = v150;
        v540 = sub_1D6EE8B60();
        v542 = v541;
        type metadata accessor for FormatVisibilityDataValue();
        v543 = swift_allocObject();
        *(v543 + 16) = v150;
        *(v543 + 24) = v538;
        v544 = v1457;
        swift_beginAccess();

        v1421 = v538;
        v545 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v544;
        *v544 = 0x8000000000000000;
        sub_1D6D7A36C(v543, v540, v542, v545);

        *v544 = v1475;
        swift_endAccess();
        v546 = *(v532 + 72);
        v547 = v546 >= 0xFE;
        v548 = v546 & 0xC0;
        v550 = !v547 && v548 == 64;
        LODWORD(v1429) = v550;
        v1422 = v532;
        v1452 = v150;
        if (*(&v1487 + 1))
        {
          v1468 = v1487;
          *&v1469 = v1488;
          v551 = *(v532 + 16);
          v552 = *(v551 + 64);
          v553 = *(v551 + 72);
          sub_1D5EBC314(v1487, *(&v1487 + 1));

          v554 = v1462;
          v555 = v552;
          v556 = v1463;
          sub_1D6D270A8(v555, v553, v1463, v1464, &v1472);

          v1437 = *(&v1472 + 1);
          v1431 = v1472;
          v1430 = v1473;
        }

        else
        {
          v1437 = 0;
          v554 = v1462;
          v556 = v1463;
          v1431 = v1487;
          v1430 = v1488;
        }

        v1414 = OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView;
        v1416 = *(v1433 + OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView);
        v1428 = swift_allocObject();
        swift_weakInit();
        v1427 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v902 = v1446;
        ObjectType = *(v1446 + 16);
        v903 = v1439;
        ObjectType(v1439, v554, v556);
        v904 = (*(v902 + 80) + 97) & ~*(v902 + 80);
        v1413 = *(v902 + 80);
        v905 = (v1444 + v904) & 0xFFFFFFFFFFFFFFF8;
        v906 = (v905 + 15) & 0xFFFFFFFFFFFFFFF8;
        v907 = (v906 + 31) & 0xFFFFFFFFFFFFFFF8;
        v908 = (v907 + 15) & 0xFFFFFFFFFFFFFFF8;
        v909 = swift_allocObject();
        v1412 = *(v1445 + 80);
        v910 = v1412;
        v911 = v1487;
        *(v909 + 56) = v1486;
        v912 = v1463;
        *(v909 + 16) = v910;
        *(v909 + 24) = v912;
        v913 = v1428;
        *(v909 + 32) = v1464;
        *(v909 + 40) = v913;
        *(v909 + 48) = v1427;
        *(v909 + 72) = v911;
        *(v909 + 88) = v1488;
        *(v909 + 96) = v1429;
        v1411 = *(v902 + 32);
        v1411(v909 + v904, v903);
        v914 = v1451;
        *(v909 + v905) = v1451;
        v915 = (v909 + v906);
        v916 = v1431;
        v917 = v1437;
        *v915 = v1431;
        v915[1] = v917;
        v918 = v1430;
        v915[2] = v1430;
        *(v909 + v907) = v1443;
        v919 = (v909 + v908);
        v920 = v1440;
        *v919 = v1438;
        v919[1] = v920;
        *(v909 + ((v908 + 23) & 0xFFFFFFFFFFFFFFF8)) = v1450;
        v921 = v1433;
        v922 = (v1433 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
        v923 = *(v1433 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock);
        v1409 = *(v1433 + OBJC_IVAR____TtC8NewsFeed12FormatButton_renderBlock + 8);
        v1410 = v923;

        sub_1D61CC910(&v1486, &v1472, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1416 = v1416;

        v924 = v914;
        sub_1D5EBC314(v916, v917);
        *v922 = sub_1D61CC6E4;
        v922[1] = v909;

        sub_1D5B74328(v1410);

        sub_1D70CF634();

        v925 = v921;
        v926 = *&v921[v1414];
        sub_1D704A77C(v926);

        v1428 = *(v1465 + 72);
        v1472 = v1486;
        v1473 = v1487;
        *&v1474[0] = v1488;
        v927 = *(v1465 + 40);
        *&v1468 = v916;
        *(&v1468 + 1) = v917;
        *&v1469 = v918;
        v928 = swift_allocObject();
        swift_weakInit();
        v929 = v1439;
        v930 = v1462;
        v931 = v1463;
        ObjectType(v1439, v1462, v1463);
        v932 = (v1413 + 48) & ~v1413;
        v933 = (v1444 + v932) & 0xFFFFFFFFFFFFFFF8;
        v934 = swift_allocObject();
        v935 = v1411;
        v934[2] = v1412;
        v934[3] = v931;
        v936 = v931;
        v937 = v1464;
        v934[4] = v1464;
        v934[5] = v928;
        v938 = v934 + v932;
        v939 = v936;
        v935(v938, v929);
        v940 = (v934 + v933);
        v941 = v1440;
        *v940 = v1438;
        v940[1] = v941;

        v1356 = v939;
        v1357 = v937;
        v942 = v925;
        v943 = v1461;
        sub_1D705AC1C(v930, v1461, &v1472, v925, v927, &v1468, sub_1D61CC7C8, v934, v1356, v1357);

        if (v1429)
        {
          *(&v1473 + 1) = type metadata accessor for FormatButton();
          *&v1472 = v925;
          sub_1D5B76B10(&v1472, &v1468);
          v944 = v1450;
          swift_beginAccess();
          v945 = v944[7];
          v946 = v925;
          v947 = swift_isUniquelyReferenced_nonNull_native();
          v944[7] = v945;
          if ((v947 & 1) == 0)
          {
            v945 = sub_1D69917E4(0, *(v945 + 2) + 1, 1, v945);
            v944[7] = v945;
          }

          v948 = v1465;
          v949 = v1422;
          v950 = v1437;
          v952 = *(v945 + 2);
          v951 = *(v945 + 3);
          if (v952 >= v951 >> 1)
          {
            v945 = sub_1D69917E4((v951 > 1), v952 + 1, 1, v945);
          }

          *(v945 + 2) = v952 + 1;
          sub_1D5B7C390(&v1468, &v945[32 * v952 + 32]);
          v944[7] = v945;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1472);
          v953 = v1460;
LABEL_298:
          v1326 = *(&v1486 + 1);
          v1512 = *(&v1486 + 1);
          if (*(&v1486 + 1))
          {
            v1327 = *(v949 + 2);
            v1329 = *(v1327 + 48);
            v1328 = *(v1327 + 56);
            v1330 = *(v948 + 296);
            v1331 = MEMORY[0x1E69E6720];
            sub_1D61CC910(&v1512, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
            v1332 = v1421;
            sub_1D61CC910(&v1512, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v1331, sub_1D61BB5EC);

            v1333 = [v1332 layer];
            type metadata accessor for FormatLayoutViewAnimation();
            v1334 = swift_allocObject();
            v1334[2] = 0;
            v1334[3] = 0;
            v1334[6] = v1328;
            v1334[7] = v1332;
            v1335 = v1467;
            v1336 = MEMORY[0x1E69E7CC8];
            v1334[11] = v1326;
            v1334[12] = v1336;
            v1334[4] = v1330;
            v1334[5] = v1329;
            v1334[8] = v1333;
            v1337 = MEMORY[0x1E69E7CC0];
            v1334[9] = MEMORY[0x1E69E7CC0];
            sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v1338 = swift_allocObject();
            *(v1338 + 16) = v1441;
            *(v1338 + 32) = v1333;
            *&v1472 = v1338;
            v1339 = v1333;
            sub_1D69879AC(v1337);
            v1334[10] = v1472;
            v1340 = v1442;
            swift_beginAccess();

            MEMORY[0x1DA6F9CE0](v1341);
            if (*((*&v1335[v1340] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1335[v1340] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            swift_endAccess();

            sub_1D61CCAA4(&v1512, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
            v953 = v1460;
            v949 = v1422;
            v950 = v1437;
          }

          v1437 = v950;
          v1342 = v1431;
          *&v1472 = v1431;
          *(&v1472 + 1) = v950;
          *&v1473 = v1430;
          v1343 = v953;
          v1344 = swift_unknownObjectWeakLoadStrong();
          v1345 = *(v949 + 2);
          v1346 = *(v1345 + 64);
          v1347 = *(v1345 + 72);

          v1348 = v1433;
          sub_1D67C4728(v1462, &v1472, v1344, v1433, v1346, v1347, v1463, v1464);

          v139 = v1343;

          sub_1D61CCAA4(&v1486, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

          v141 = v1461;
          sub_1D61CCBB4(v1461, type metadata accessor for FormatButtonNodeData);
          v1349 = v1342;
          v132 = v1467;
          sub_1D5EBC358(v1349, v1437);

          v140 = v1453;
          v142 = v1458;
          v12 = v1466;
          v138 = v1459;
          goto LABEL_9;
        }

        v954 = v1393;
        sub_1D5BC885C(v943, v1393, type metadata accessor for FormatButtonNodeDataAction);
        v955 = v1394;
        (*v1367)(v954, 0, 1, v1394);
        v956 = v1385;
        sub_1D61CC910(v954, v1385, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v957 = *v1392;
        if ((*v1392)(v956, 1, v955) == 1)
        {
          sub_1D61CCAA4(v954, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v958 = v956;
        }

        else
        {
          v1037 = v956;
          v1038 = v1379;
          sub_1D61CCB4C(v1037, v1379, type metadata accessor for FormatButtonNodeDataAction);
          v1039 = *(v1038 + *(v955 + 20));
          if (v1039)
          {
            v1040 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1041 = swift_allocObject();
            *(v1041 + 16) = v942;
            *(v1041 + 24) = v1040;
            v1042 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
            *&v1474[0] = sub_1D61CCD14;
            *(&v1474[0] + 1) = v1041;
            *&v1472 = MEMORY[0x1E69E9820];
            *(&v1472 + 1) = v131;
            *&v1473 = sub_1D700BAF0;
            *(&v1473 + 1) = &block_descriptor_171;
            v1043 = _Block_copy(&v1472);
            v1044 = v942;
            v1045 = v1039;

            v1046 = [v1042 initWithAttributedName:v1045 actionHandler:v1043];
            _Block_release(v1043);

            v1047 = v1450;
            swift_beginAccess();
            v1048 = v1047[8];
            v1049 = v1046;
            v1050 = swift_isUniquelyReferenced_nonNull_native();
            v1047[8] = v1048;
            if ((v1050 & 1) == 0)
            {
              v1048 = sub_1D6993224(0, *(v1048 + 2) + 1, 1, v1048);
              v1450[8] = v1048;
            }

            v1052 = *(v1048 + 2);
            v1051 = *(v1048 + 3);
            if (v1052 >= v1051 >> 1)
            {
              v1048 = sub_1D6993224((v1051 > 1), v1052 + 1, 1, v1048);
            }

            *(v1048 + 2) = v1052 + 1;
            v1053 = &v1048[24 * v1052];
            *(v1053 + 4) = v1046;
            *(v1053 + 5) = 0;
            v1053[48] = 0;
            v1450[8] = v1048;
            swift_endAccess();

            sub_1D61CCBB4(v1379, type metadata accessor for FormatButtonNodeDataAction);
            v958 = v1393;
          }

          else
          {
            sub_1D61CCBB4(v1038, type metadata accessor for FormatButtonNodeDataAction);
            v958 = v954;
          }

          v955 = v1394;
        }

        v1306 = MEMORY[0x1E69E6720];
        sub_1D61CCAA4(v958, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v1307 = v1386;
        sub_1D61CC910(v1461 + *(v1384 + 20), v1386, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, v1306, sub_1D61BB5EC);
        if (v957(v1307, 1, v955) == 1)
        {
          sub_1D61CCAA4(v1307, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v948 = v1465;
        }

        else
        {
          v1308 = v1307;
          v1309 = v1380;
          sub_1D61CCB4C(v1308, v1380, type metadata accessor for FormatButtonNodeDataAction);
          v1310 = *(v1309 + *(v955 + 20));
          v948 = v1465;
          if (v1310)
          {
            v1311 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1312 = swift_allocObject();
            v1313 = v1433;
            *(v1312 + 16) = v1433;
            *(v1312 + 24) = v1311;
            v1314 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
            *&v1474[0] = sub_1D61CC838;
            *(&v1474[0] + 1) = v1312;
            *&v1472 = MEMORY[0x1E69E9820];
            *(&v1472 + 1) = v131;
            *&v1473 = sub_1D700BAF0;
            *(&v1473 + 1) = &block_descriptor_163;
            v1315 = _Block_copy(&v1472);
            v1316 = v1313;
            v1317 = v1310;

            v1318 = [v1314 initWithAttributedName:v1317 actionHandler:v1315];
            _Block_release(v1315);

            v1319 = v1450;
            swift_beginAccess();
            v1320 = v1319[8];
            v1321 = v1318;
            v1322 = swift_isUniquelyReferenced_nonNull_native();
            v1319[8] = v1320;
            if ((v1322 & 1) == 0)
            {
              v1320 = sub_1D6993224(0, *(v1320 + 2) + 1, 1, v1320);
              v1450[8] = v1320;
            }

            v1324 = *(v1320 + 2);
            v1323 = *(v1320 + 3);
            v950 = v1437;
            if (v1324 >= v1323 >> 1)
            {
              v1320 = sub_1D6993224((v1323 > 1), v1324 + 1, 1, v1320);
            }

            *(v1320 + 2) = v1324 + 1;
            v1325 = &v1320[24 * v1324];
            *(v1325 + 4) = v1318;
            *(v1325 + 5) = 0;
            v1325[48] = 0;
            v1450[8] = v1320;
            swift_endAccess();

            sub_1D61CCBB4(v1380, type metadata accessor for FormatButtonNodeDataAction);
            v953 = v1460;
            v949 = v1422;
            goto LABEL_298;
          }

          sub_1D61CCBB4(v1309, type metadata accessor for FormatButtonNodeDataAction);
        }

        v953 = v1460;
        v949 = v1422;
        v950 = v1437;
        goto LABEL_298;
      case 4uLL:
        v354 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v355 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v356 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1491 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v1489 = v355;
        v1490 = v356;
        v357 = v355;
        v358 = *(v355 + 32);
        v359 = *(v355 + 40);
        v360 = *(v355 + 104);

        sub_1D61CC910(&v1489, &v1472, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v361 = sub_1D61C711C(v358, v359, v360);
        v363 = v362;
        v1437 = v364;

        v365 = v361;
        sub_1D726344C();

        sub_1D726345C();
        *&v1468 = v150;
        v366 = sub_1D6EE8B60();
        v368 = v367;
        type metadata accessor for FormatVisibilityDataValue();
        v369 = swift_allocObject();
        *(v369 + 16) = v150;
        *(v369 + 24) = v363;
        v370 = v357;
        v371 = v1457;
        swift_beginAccess();
        v1430 = v354;

        v1431 = v363;
        v372 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v371;
        *v371 = 0x8000000000000000;
        v373 = v369;
        v374 = v1465;
        sub_1D6D7A36C(v373, v366, v368, v372);

        *v371 = v1475;
        swift_endAccess();
        if (*&v365[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer])
        {
          v375 = *(v370 + 192);
          if (v375)
          {
            v376 = *(v375 + 72);
            v377 = *(v375 + 80);
            v378 = *(v375 + 88);
            sub_1D5ED34B0(v376, v377, v378);
          }

          else
          {
            v376 = 0;
            v377 = 0;
            v378 = -2;
          }

          *&v1472 = v376;
          *(&v1472 + 1) = v377;
          LOBYTE(v1473) = v378;
          v1078 = *(v370 + 72);
          v1079 = *(v370 + 80);
          v1080 = *(v370 + 88);
          v1081 = *(v370 + 96);

          sub_1D5F91CE8(&v1472, v1078, v1079, v1080, v1081);

          sub_1D5ED348C(v1472, *(&v1472 + 1), v1473);
        }

        v1082 = *(v370 + 88);
        v1083 = *(v370 + 96);
        v1084 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v1085 = swift_allocObject();
        v1085[2] = v1084;
        v1085[3] = v1082;
        v1085[4] = v1083;
        v1085[5] = v134;
        v1085[6] = v135;
        v1086 = &v365[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
        v1087 = *&v365[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
        *v1086 = sub_1D61CCD10;
        *(v1086 + 1) = v1085;
        sub_1D5B74328(v1087);
        v1088 = *(v370 + 144);
        v547 = v1088 >= 0xFE;
        v1089 = v1088 & 0xC0;
        v1091 = !v547 && v1089 == 64;
        v1092 = *(v370 + 64);
        v1094 = *(v1092 + 64);
        v1093 = *(v1092 + 72);
        v1433 = *(v374 + 272);
        type metadata accessor for FormatAccessibilityRenderer();
        v1095 = swift_allocObject();
        v1096 = MEMORY[0x1E69E7CC0];
        *(v1095 + 48) = MEMORY[0x1E69E7CC0];
        *(v1095 + 56) = v1096;
        *(v1095 + 96) = 0;
        swift_unknownObjectWeakInit();
        *(v1095 + 16) = v1094;
        *(v1095 + 24) = v1093;
        *(v1095 + 104) = 0;
        *(v1095 + 96) = &off_1F51E2E28;
        swift_unknownObjectWeakAssign();
        LODWORD(v1421) = v1091;
        if (v1091)
        {
          v1097 = 6;
        }

        else
        {
          v1097 = *(v1092 + 112);
        }

        *(v1095 + 32) = v1097;
        *(v1095 + 72) = v1433;
        *(v1095 + 64) = MEMORY[0x1E69E7CC0];
        *(v1095 + 40) = *(v1092 + 104);
        v1452 = v370;
        v1098 = *(v370 + 64);
        v1099 = *(&v1490 + 1);
        v1100 = v1491;
        v1428 = v1491;
        v1422 = *(&v1490 + 1);
        v1427 = v1490;
        if (*(&v1490 + 1))
        {
          v1468 = v1490;
          *&v1469 = v1491;
          v1101 = *(v1098 + 72);
          v1417 = *(v1098 + 64);
          v1102 = v1490;

          swift_unknownObjectRetain();

          sub_1D5EBC314(v1102, v1099);

          v1103 = v1462;
          v1104 = v1463;
          v1105 = v1464;
          sub_1D6D270A8(v1417, v1101, v1463, v1464, &v1472);

          v1106 = *(&v1472 + 1);
          v1107 = v1472;
          v1108 = v1473;
        }

        else
        {
          v1109 = v1490;

          swift_unknownObjectRetain();

          v1106 = 0;
          v1107 = v1109;
          v1108 = v1100;
          v1103 = v1462;
          v1105 = v1464;
          v1104 = v1463;
        }

        *&v1472 = v1107;
        *(&v1472 + 1) = v1106;
        *&v1473 = v1108;
        sub_1D61BB650(v1103, v1098, v365, v1451, &v1472, v1443, v1095, v1438, v1440, v1104, v1105);
        sub_1D5EBC358(v1472, *(&v1472 + 1));
        if (v1421)
        {
          *(&v1473 + 1) = type metadata accessor for FormatLayoutView();
          *&v1472 = v365;
          sub_1D5B76B10(&v1472, &v1468);
          v1110 = v1450;
          swift_beginAccess();
          v1111 = v1110[7];
          v1112 = v365;
          v1113 = swift_isUniquelyReferenced_nonNull_native();
          v1110[7] = v1111;
          v1114 = v1452;
          if ((v1113 & 1) == 0)
          {
            v1111 = sub_1D69917E4(0, *(v1111 + 2) + 1, 1, v1111);
            v1110[7] = v1111;
          }

          v1116 = *(v1111 + 2);
          v1115 = *(v1111 + 3);
          if (v1116 >= v1115 >> 1)
          {
            v1111 = sub_1D69917E4((v1115 > 1), v1116 + 1, 1, v1111);
          }

          *(v1111 + 2) = v1116 + 1;
          sub_1D5B7C390(&v1468, &v1111[32 * v1116 + 32]);
          v1450[7] = v1111;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1472);
        }

        else
        {
          v1117 = v1450;
          swift_beginAccess();
          v1118 = v1117[6];

          v1119 = swift_isUniquelyReferenced_nonNull_native();
          v1117[6] = v1118;
          v1114 = v1452;
          if ((v1119 & 1) == 0)
          {
            v1118 = sub_1D6993238(0, *(v1118 + 2) + 1, 1, v1118);
            v1117[6] = v1118;
          }

          v1121 = *(v1118 + 2);
          v1120 = *(v1118 + 3);
          if (v1121 >= v1120 >> 1)
          {
            v1118 = sub_1D6993238((v1120 > 1), v1121 + 1, 1, v1118);
          }

          *(v1118 + 2) = v1121 + 1;
          *&v1118[8 * v1121 + 32] = v1095;
          v1450[6] = v1118;
          swift_endAccess();
          *&v365[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;
        }

        v1122 = v1114;
        v1123 = v1463;
        v1124 = v1464;
        sub_1D69D11E4(v1122, v365, v1437, v1451, v1463, v1464);
        v1125 = swift_allocObject();
        swift_weakInit();
        v1126 = v1446;
        v1127 = v1405;
        (*(v1446 + 16))(v1405, v1462, v1123);
        v1128 = (*(v1126 + 80) + 88) & ~*(v1126 + 80);
        v1129 = swift_allocObject();
        *(v1129 + 16) = *(v1445 + 80);
        *(v1129 + 24) = v1123;
        *(v1129 + 32) = v1124;
        *(v1129 + 40) = v1125;
        v1130 = v1490;
        *(v1129 + 48) = v1489;
        *(v1129 + 64) = v1130;
        *(v1129 + 80) = v1491;
        (*(v1126 + 32))(v1129 + v1128, v1127, v1123);
        v1131 = swift_allocObject();
        *(v1131 + 16) = sub_1D61CC5C8;
        *(v1131 + 24) = v1129;
        v1132 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_layoutObservers;
        swift_beginAccess();
        v1133 = *&v365[v1132];
        sub_1D61CC910(&v1489, &v1472, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v1134 = swift_isUniquelyReferenced_nonNull_native();
        *&v365[v1132] = v1133;
        if ((v1134 & 1) == 0)
        {
          v1133 = sub_1D69931DC(0, v1133[2] + 1, 1, v1133);
          *&v365[v1132] = v1133;
        }

        v1136 = v1133[2];
        v1135 = v1133[3];
        v1429 = v1095;
        if (v1136 >= v1135 >> 1)
        {
          v1133 = sub_1D69931DC((v1135 > 1), v1136 + 1, 1, v1133);
        }

        v1133[2] = v1136 + 1;
        v1137 = &v1133[2 * v1136];
        v1137[4] = sub_1D61CCD0C;
        v1137[5] = v1131;
        *&v365[v1132] = v1133;
        swift_endAccess();

        sub_1D704A77C(v365);
        v1138 = *(&v1489 + 1);
        v1511 = *(&v1489 + 1);
        if (*(&v1489 + 1))
        {
          v1139 = *(v1452 + 3);
          *&v1433 = *(v1452 + 2);
          v1140 = *(v1465 + 296);
          v1141 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1511, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v1142 = v1431;
          sub_1D61CC910(&v1511, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v1141, sub_1D61BB5EC);

          v1143 = [v1142 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v1144 = swift_allocObject();
          v1144[2] = 0;
          v1144[3] = 0;
          v1144[6] = v1139;
          v1144[7] = v1142;
          v1145 = MEMORY[0x1E69E7CC8];
          v1144[11] = v1138;
          v1144[12] = v1145;
          v1146 = v1433;
          v1144[4] = v1140;
          v1144[5] = v1146;
          v1144[8] = v1143;
          v1147 = MEMORY[0x1E69E7CC0];
          v1144[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v1148 = swift_allocObject();
          *(v1148 + 16) = v1441;
          *(v1148 + 32) = v1143;
          *&v1472 = v1148;
          v1149 = v1143;
          v1150 = v1467;
          sub_1D69879AC(v1147);
          v1144[10] = v1472;
          v1151 = v1442;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v1152);
          if (*((*&v1150[v1151] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1150[v1151] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1511, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        }

        if (v1422)
        {
          *&v1468 = v1427;
          *(&v1468 + 1) = v1422;
          *&v1469 = v1428;
          v1153 = v1452;
          v1154 = *(v1452 + 4);
          v1155 = *(v1452 + 5);

          v1156 = v1462;
          v1157 = v1155;
          v1158 = v1463;
          v1159 = v1464;
          sub_1D6D270A8(v1154, v1157, v1463, v1464, &v1472);

          v1160 = *(&v1472 + 1);
          v1161 = v1472;
          v1162 = v1473;
        }

        else
        {
          v1160 = 0;
          v1156 = v1462;
          v1159 = v1464;
          v1158 = v1463;
          v1153 = v1452;
          v1162 = v1428;
          v1161 = v1427;
        }

        *&v1472 = v1161;
        *(&v1472 + 1) = v1160;
        *&v1473 = v1162;
        v1163 = swift_unknownObjectWeakLoadStrong();
        sub_1D67C4728(v1156, &v1472, v1163, v365, v1153[4], v1153[5], v1158, v1159);

        sub_1D5EBC358(v1472, *(&v1472 + 1));
        v1164 = [v365 layer];
        [v1164 setMask_];

        v1165 = v1153[19];
        if (!v1165)
        {

          sub_1D61CCAA4(&v1489, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

          v138 = v1459;
          v139 = v1460;
          v140 = v1453;
          v141 = v1461;
          v142 = v1458;
          v12 = v1466;
          v132 = v1467;
          goto LABEL_9;
        }

        v1166 = v1153[21];
        v1167 = v1153[22];
        v1168 = v1153[23];
        v1169 = v1153[19];
        v1422 = v1153[20];
        *&v1433 = v1166;
        v1428 = v1167;
        v1427 = v1168;
        sub_1D61CC60C(v1169, v1422, v1166, v1167);

        v1452 = v1165;
        v1170 = sub_1D67F3DF8(v1165, v1451, v1158, MEMORY[0x1E69E7CA8] + 8, v1159);

        v1171 = v1170[2];
        v1416 = v1170[3];
        v1172 = v1171;
        v1173 = [v365 layer];
        ObjectType = swift_getObjectType();
        v1417 = v1172;
        [v1173 setMask_];

        *&v1468 = MEMORY[0x1E69E7CC0];
        v1421 = v1170;
        v1174 = *(v1170[4] + 16);
        if (!v1174)
        {
          goto LABEL_241;
        }

        v1175 = (v1414 + 40);
        while (1)
        {
          v1177 = *(v1175 - 1);
          v1176 = *v1175;
          v1178 = v1177;
          [v365 frame];
          [v1178 setFrame_];
          v1179 = [v365 superview];
          if (v1176 < 0)
          {
            if (v1179)
            {
              v1183 = v1179;
              v1181 = [v1179 &selRef_setHidePrediction_];

              v1182 = [v365 &selRef_setHidePrediction_];
              [v1181 insertSublayer:v1178 above:v1182];
              goto LABEL_236;
            }
          }

          else if (v1179)
          {
            v1180 = v1179;
            v1181 = [v1179 &selRef_setHidePrediction_];

            v1182 = [v365 &selRef_setHidePrediction_];
            [v1181 insertSublayer:v1178 below:v1182];
LABEL_236:
          }

          MEMORY[0x1DA6F9CE0](v1178);
          if (*((v1468 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1468 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v1175 += 2;
          sub_1D726278C();

          if (!--v1174)
          {

LABEL_241:
            v138 = v1459;
            v139 = v1460;
            v141 = v1461;
            v1184 = v1422;
            if (v1422)
            {
              v1185 = *(v1452 + 2);
              v1186 = *(v1185 + 32);
              v1187 = *(v1185 + 40);
              v1188 = v1468;
              v1189 = *(v1465 + 296);
              type metadata accessor for FormatLayoutViewAnimation();
              v1190 = swift_allocObject();
              v1190[2] = 0;
              v1190[3] = 0;
              v1190[6] = v1187;
              v1190[7] = v365;
              v1191 = MEMORY[0x1E69E7CC8];
              v1190[11] = v1184;
              v1190[12] = v1191;
              v1190[4] = v1189;
              v1190[5] = v1186;
              v1192 = v1417;
              v1190[8] = v1417;
              v1190[9] = v1188;
              sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
              v1193 = swift_allocObject();
              *(v1193 + 16) = v1441;
              *(v1193 + 32) = v1192;
              *&v1472 = v1193;
              v1194 = v365;
              v1195 = v1192;
              swift_retain_n();
              v1196 = v1194;
              v1197 = v1195;

              sub_1D69879AC(v1198);
              v1190[10] = v1472;
              if ((*(v1416 + 1))(ObjectType))
              {
                v1199 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v1200 = v1190[2];
                v1190[2] = sub_1D61CC6DC;
                v1190[3] = v1199;

                sub_1D5B74328(v1200);
              }

              v1201 = v1467;
              v1202 = v1442;
              swift_beginAccess();

              MEMORY[0x1DA6F9CE0](v1203);
              if (*((*&v1201[v1202] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1201[v1202] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D726272C();
              }

              sub_1D726278C();
              swift_endAccess();

              sub_1D61CC678(v1452, v1184, v1433, v1428);

              sub_1D61CCAA4(&v1489, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

              v140 = v1453;
              v142 = v1458;
              v132 = v1201;
              v12 = v1466;
              v141 = v1461;
LABEL_157:
              v138 = v1459;
              v139 = v1460;
              goto LABEL_9;
            }

            sub_1D61CCAA4(&v1489, &unk_1EDF1C7F8, type metadata accessor for FormatGroupNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

            sub_1D61CC678(v1452, 0, v1433, v1428);

            v140 = v1453;
LABEL_280:
            v142 = v1458;
            v132 = v1467;
LABEL_8:
            v12 = v1466;
            goto LABEL_9;
          }
        }

      case 5uLL:
        v659 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v658 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v660 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v1429 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1427 = v660;
        v661 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v1437 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v1428 = v661;
        LOBYTE(v661) = *(v658 + 184);
        v662 = *(v658 + 32);
        v663 = *(v658 + 40);
        v664 = *(v658 + 104);
        v1431 = v659;
        v1430 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        *&v1433 = v658;
        if (v661)
        {

          v665 = sub_1D61C787C(v662, v663, v664, type metadata accessor for WebEmbedImageView, &unk_1F50F6FB0);
          v1417 = v666;
          v668 = v667;
          swift_beginAccess();
          [v665 setFrame_];
          sub_1D5B66EA4(0, &qword_1EDF3C5D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v669 = swift_allocObject();
          *(v669 + 16) = v1366;
          *(v669 + 56) = type metadata accessor for WebEmbedImageView();
          *(v669 + 32) = v665;
          swift_beginAccess();
          v1422 = v665;
          sub_1D6987A04(v669);
          swift_endAccess();
          v670 = v1387;
          sub_1D61CC910(v659 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, v1387, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v671 = (*v1391)(v670, 1, v1434);
          v1421 = v668;
          if (v671 == 1)
          {
            sub_1D61CCAA4(v670, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          }

          else
          {
            v1054 = v1373;
            sub_1D61CCB4C(v670, v1373, type metadata accessor for FeedItem);
            v1416 = *(v659 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions);
            v1055 = swift_allocObject();
            swift_weakInit();
            v1056 = v1419;
            sub_1D61CCB4C(v1054, v1419, type metadata accessor for FeedItem);
            v1452 = v150;
            v1057 = v1446;
            v1058 = v1463;
            (*(v1446 + 16))(v1439, v1462, v1463);
            v1059 = (*(v1432 + 80) + 48) & ~*(v1432 + 80);
            v1060 = (v1418 + v1059) & 0xFFFFFFFFFFFFFFF8;
            v1061 = (*(v1057 + 80) + v1060 + 8) & ~*(v1057 + 80);
            v1062 = swift_allocObject();
            *(v1062 + 2) = *(v1445 + 80);
            *(v1062 + 3) = v1058;
            *(v1062 + 4) = v1464;
            *(v1062 + 5) = v1055;
            sub_1D61CCB4C(v1056, &v1062[v1059], type metadata accessor for FeedItem);
            *&v1062[v1060] = v1416;
            (*(v1057 + 32))(&v1062[v1061], v1439, v1058);
            v1063 = &v1422[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
            v1064 = *&v1422[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
            *v1063 = sub_1D61CC4BC;
            *(v1063 + 1) = v1062;

            v1065 = v1064;
            v150 = v1452;
            sub_1D5B74328(v1065);
          }

          v1066 = v1437;
          v1067 = v1417;
          sub_1D726345C();
          *&v1468 = v150;
          v1068 = v150;
          v1069 = sub_1D6EE8B60();
          v1071 = v1070;
          type metadata accessor for FormatVisibilityDataValue();
          v1072 = swift_allocObject();
          *(v1072 + 16) = v1068;
          *(v1072 + 24) = v1067;
          v1073 = v1457;
          swift_beginAccess();

          v1452 = v1067;
          v1074 = swift_isUniquelyReferenced_nonNull_native();
          v1475 = *v1073;
          *v1073 = 0x8000000000000000;
          sub_1D6D7A36C(v1072, v1069, v1071, v1074);

          *v1073 = v1475;
          swift_endAccess();
          v1075 = v1433;
          if (v1427)
          {
            *&v1468 = v1429;
            *(&v1468 + 1) = v1427;
            *&v1469 = v1066;
            v1076 = *(v1433 + 32);
            v1077 = *(v1433 + 40);

            sub_1D6D270A8(v1076, v1077, v1463, v1464, &v1472);

            v1427 = *(&v1472 + 1);
            v1429 = v1472;
            v1437 = v1473;
          }

          else
          {
            v1427 = 0;
          }

          v1235 = v1382;
          v1234 = v1383;
          v1236 = v1431;
          v1237 = v1422;
          v1238 = *(v1465 + 104);
          v1363 = v134;
          v1364 = v131;
          v1362 = v135;
          if (v1428)
          {
            swift_beginAccess();
            CGRectGetMinX(*(v1075 + 64));
            sub_1D726328C();
            CGRectGetMinY(*(v1075 + 64));
            sub_1D726329C();
            v1240 = v1239;
            v1242 = v1241;
            v1244 = v1243;
            v1246 = v1245;
          }

          else
          {
            v1244 = *(v1075 + 80);
            v1246 = *(v1075 + 88);
            v1240 = 0.0;
            v1242 = 0.0;
          }

          [v1237 bounds];
          v1251 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:v1247 contentFrame:v1248 contentSafeAreaFrame:v1249 systemSafeAreaFrame:{v1250, v1240, v1242, v1244, v1246, *&v1240, *&v1242, *&v1244, *&v1246, *&v1240, *&v1242, *&v1244, *&v1246}];
          (*v1371)(v1407, &v1236[OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url], v1235);
          v131 = v1364;
          (*v1370)(v1234, 1, 1, v1235);

          v1252 = sub_1D726203C();

          v1253 = (*v1369)(v1234, 1, v1235);
          v135 = v1362;
          v134 = v1363;
          if (v1253 == 1)
          {
            v1254 = 0;
          }

          else
          {
            v1254 = sub_1D725844C();
            (*v1359)(v1234, v1235);
          }

          v1255 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v1252 URL:v1254];

          v1256 = *(*(v1431 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + 16);
          v1257 = v1388;
          v1258 = v1406;
          sub_1D61CC910(v1431 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization, v1406 + *(v1388 + 32), qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          (*v1368)(v1258, v1407, v1235);
          *(v1258 + v1257[5]) = v1251;
          *(v1258 + v1257[6]) = v1255;
          *(v1258 + v1257[7]) = v1256;
          v1259 = v1451;
          *(v1258 + v1257[9]) = v1451;
          v1261 = *(v1075 + 16);
          v1260 = *(v1075 + 24);
          v1262 = &v1237[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier];
          swift_beginAccess();
          *v1262 = v1261;
          *(v1262 + 1) = v1260;
          v1263 = v1259;
          v1264 = v1256;

          [v1237 setUserInteractionEnabled_];
          v1265 = *(v1075 + 96);
          if (v1265)
          {
            [v1237 setAccessibilityIgnoresInvertColors_];
            v1266 = (*(v1265 + 90) == 2) | *(v1265 + 90);
          }

          else
          {
            [v1237 setAccessibilityIgnoresInvertColors_];
            v1266 = 1;
          }

          v132 = v1467;
          v1237[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner] = v1266 & 1;
          sub_1D61CAB60();
          v1268 = v1267;
          v1269 = *(v1267 + 48);
          v1270 = v1406;
          v1271 = v1389;
          sub_1D5BC885C(v1406, v1389, type metadata accessor for WebEmbedImageRequest);
          *(v1271 + v1269) = *(v1238 + 24);
          (*(*(v1268 - 8) + 56))(v1271, 0, 1, v1268);
          v1272 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
          swift_beginAccess();

          sub_1D61CC41C(v1271, &v1237[v1272]);
          swift_endAccess();
          sub_1D6F27384();
          sub_1D61CCAA4(v1271, &qword_1EDF29E98, sub_1D61CAB60, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          sub_1D61CCBB4(v1270, type metadata accessor for WebEmbedImageRequest);
          v1273 = swift_allocObject();
          swift_weakInit();
          v1274 = swift_allocObject();
          v1275 = v1237;
          v1276 = v1429;
          *(v1274 + 2) = v1273;
          *(v1274 + 3) = v1276;
          v1277 = v1427;
          v1278 = v1437;
          *(v1274 + 4) = v1427;
          *(v1274 + 5) = v1278;
          v1279 = &v1275[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
          v1280 = *&v1275[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
          *v1279 = sub_1D61CC4B0;
          v1279[1] = v1274;

          sub_1D5EBC314(v1276, v1277);
          sub_1D5B74328(v1280);

          *&v1472 = v1276;
          *(&v1472 + 1) = v1277;
          *&v1473 = v1278;
          v1281 = swift_unknownObjectWeakLoadStrong();
          v1282 = *(v1075 + 32);
          v1283 = *(v1075 + 40);
          v1284 = v1452;

          sub_1D67C4728(v1462, &v1472, v1281, v1284, v1282, v1283, v1463, v1464);

          sub_1D5EBC358(v1276, v1277);

          v138 = v1459;
          v139 = v1460;
          v140 = v1453;
          v142 = v1458;
LABEL_285:
          v12 = v1466;
          v141 = v1461;
LABEL_9:
          if (v12 == v1456)
          {
            goto LABEL_304;
          }

          continue;
        }

        *&v1472 = v664;

        v860 = sub_1D704A8FC(v662, v663, &v1472);

        v861 = swift_unknownObjectWeakLoadStrong();
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v862 = swift_unknownObjectWeakLoadStrong();

        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        swift_weakAssign();
        swift_beginAccess();
        v863 = *(v658 + 80);
        v864 = *(v658 + 88);
        v865 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v866 = swift_allocObject();
        v866[2] = v865;
        v866[3] = v863;
        v866[4] = v864;
        v866[5] = v134;
        v866[6] = v135;
        v867 = &v860[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onSizeInvalidation];
        swift_beginAccess();
        v868 = *v867;
        *v867 = sub_1D61CB158;
        v867[1] = v866;
        sub_1D5B74328(v868);
        v869 = [*&v860[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_webContentViewController] accessibilityElements];
        v870 = v150;
        if (v869)
        {
          v871 = v869;
          v872 = sub_1D726267C();
        }

        else
        {
          v872 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D6987A04(v872);
        swift_endAccess();
        v1422 = v860;
        v1204 = [v1422 view];
        if (v1204)
        {
          v1205 = v1204;
          sub_1D726345C();
          v1206 = v870;
          *&v1468 = v870;
          v1207 = sub_1D6EE8B60();
          v1209 = v1208;
          type metadata accessor for FormatVisibilityDataValue();
          v1210 = swift_allocObject();
          *(v1210 + 16) = v1206;
          *(v1210 + 24) = v1205;
          v1211 = v1457;
          swift_beginAccess();

          v1212 = v1205;
          v1213 = swift_isUniquelyReferenced_nonNull_native();
          v1475 = *v1211;
          *v1211 = 0x8000000000000000;
          sub_1D6D7A36C(v1210, v1207, v1209, v1213);

          *v1211 = v1475;
          swift_endAccess();

          v1214 = v1431;
          v1215 = v1381;
          sub_1D61CC910(v1431 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, v1381, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          if ((*v1391)(v1215, 1, v1434) == 1)
          {
            sub_1D61CCAA4(v1215, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          }

          else
          {
            v1216 = v1215;
            v1217 = v1372;
            v1417 = type metadata accessor for FeedItem;
            sub_1D61CCB4C(v1216, v1372, type metadata accessor for FeedItem);
            v1421 = *&v1214[OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions];
            v1452 = swift_allocObject();
            swift_weakInit();
            v1218 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1219 = v1419;
            sub_1D61CCB4C(v1217, v1419, type metadata accessor for FeedItem);
            v1220 = v1446;
            v1221 = v1439;
            v1222 = v1463;
            (*(v1446 + 16))(v1439, v1462, v1463);
            v1223 = (*(v1432 + 80) + 56) & ~*(v1432 + 80);
            v1224 = (v1418 + v1223) & 0xFFFFFFFFFFFFFFF8;
            v1225 = (*(v1220 + 80) + v1224 + 8) & ~*(v1220 + 80);
            v1226 = swift_allocObject();
            v1226[2] = *(v1445 + 80);
            v1226[3] = v1222;
            v1227 = v1452;
            v1226[4] = v1464;
            v1226[5] = v1227;
            v1226[6] = v1218;
            sub_1D61CCB4C(v1219, v1226 + v1223, v1417);
            *(v1226 + v1224) = v1421;
            v1228 = v1226 + v1225;
            v1214 = v1431;
            (*(v1220 + 32))(v1228, v1221, v1222);
            v1229 = &v1422[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onEmbedInteraction];
            swift_beginAccess();
            v1230 = *v1229;
            *v1229 = sub_1D61CCCF4;
            v1229[1] = v1226;

            sub_1D5B74328(v1230);
          }

          v132 = v1467;
          v1231 = v1428;
          if (v1428)
          {
            swift_beginAccess();
            v1232 = *(v1231 + 64);
            v1233 = *(v1231 + 80);
          }

          else
          {
            v1232 = 0uLL;
            v1233 = 0uLL;
          }

          v1492[0] = v1232;
          v1492[1] = v1233;
          v1493 = v1231 == 0;
          v1285 = v1463;
          v1286 = v1464;
          sub_1D7138410(v1214, v1433, v1492, v1422, *v1365, v1365[1]);
          if (v1427)
          {
            *&v1468 = v1429;
            *(&v1468 + 1) = v1427;
            *&v1469 = v1437;
            v1287 = *(v1433 + 32);
            v1288 = *(v1433 + 40);

            sub_1D6D270A8(v1287, v1288, v1285, v1286, &v1472);

            v1289 = *(&v1472 + 1);
            v1290 = v1472;
            v1291 = v1473;
            v141 = v1461;
          }

          else
          {
            v1289 = 0;
            v141 = v1461;
            v1291 = v1437;
            v1290 = v1429;
          }

          *&v1472 = v1290;
          *(&v1472 + 1) = v1289;
          *&v1473 = v1291;
          v1292 = swift_unknownObjectWeakLoadStrong();
          v1293 = v1422;
          v1294 = [v1422 view];

          if (v1294)
          {
            sub_1D67C4728(v1462, &v1472, v1292, v1294, *(v1433 + 32), *(v1433 + 40), v1463, v1464);

            sub_1D5EBC358(v1472, *(&v1472 + 1));
LABEL_6:

            v138 = v1459;
            v139 = v1460;
            v140 = v1453;
LABEL_7:
            v142 = v1458;
            goto LABEL_8;
          }

LABEL_338:
          __break(1u);
        }

        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
        return;
      case 6uLL:
        v698 = v150 & 0xFFFFFFFFFFFFFFBLL;
        v1437 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v699 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v1494 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1495 = v699;
        v1496 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v700 = *(v1494 + 16);
        v701 = *(v700 + 64);
        v702 = *(v700 + 72);
        v1429 = v1494;
        v703 = *(v1494 + 32);

        v704 = sub_1D61C787C(v701, v702, v703, type metadata accessor for FormatStateView, &unk_1F50F6FD8);
        *&v1433 = v704;
        v706 = v705;
        v1427 = v707;

        sub_1D726345C();
        *&v1468 = v150;
        v708 = sub_1D6EE8B60();
        v710 = v709;
        type metadata accessor for FormatVisibilityDataValue();
        v711 = swift_allocObject();
        v712 = v150;
        v713 = v711;
        *(v711 + 16) = v712;
        *(v711 + 24) = v706;
        v714 = v1457;
        swift_beginAccess();
        v1428 = v698;

        v1421 = v706;
        v715 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v714;
        *v714 = 0x8000000000000000;
        sub_1D6D7A36C(v713, v708, v710, v715);

        *v714 = v1475;
        swift_endAccess();
        v1452 = *(v704 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView);
        v716 = swift_allocObject();
        v1431 = v716;
        swift_weakInit();
        v1430 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v717 = v1446;
        v718 = v1439;
        v719 = v1463;
        (*(v1446 + 16))(v1439, v1462, v1463);
        v720 = (*(v717 + 80) + 96) & ~*(v717 + 80);
        v721 = (v1444 + v720) & 0xFFFFFFFFFFFFFFF8;
        v722 = (v721 + 15) & 0xFFFFFFFFFFFFFFF8;
        v723 = swift_allocObject();
        *(v723 + 16) = *(v1445 + 80);
        *(v723 + 24) = v719;
        *(v723 + 32) = v1464;
        *(v723 + 40) = v716;
        *(v723 + 48) = v1430;
        v724 = v1495;
        *(v723 + 56) = v1494;
        *(v723 + 72) = v724;
        *(v723 + 88) = v1496;
        (*(v717 + 32))(v723 + v720, v718, v719);
        v725 = v1451;
        *(v723 + v721) = v1451;
        *(v723 + v722) = v1443;
        v726 = (v723 + ((v722 + 15) & 0xFFFFFFFFFFFFFFF8));
        v727 = v1440;
        *v726 = v1438;
        v726[1] = v727;
        v728 = v1433;
        v729 = (v1433 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
        v730 = *(v1433 + OBJC_IVAR____TtC8NewsFeed15FormatStateView_renderBlock);
        v731 = v725;
        v732 = v728;

        v733 = v1452;

        sub_1D61CC910(&v1494, &v1472, &unk_1EDF065A8, type metadata accessor for FormatStateViewNodeDataLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        *v729 = sub_1D61CB0A0;
        v729[1] = v723;
        sub_1D5B74328(v730);

        sub_1D6DE7B38();
        v132 = v1467;

        sub_1D704A77C(v733);
        v734 = v1450;
        swift_beginAccess();
        v735 = v734[6];
        v1452 = v732;
        v736 = swift_isUniquelyReferenced_nonNull_native();
        v734[6] = v735;
        v1422 = v733;
        if ((v736 & 1) == 0)
        {
          v735 = sub_1D6993238(0, *(v735 + 2) + 1, 1, v735);
          v734[6] = v735;
        }

        v738 = *(v735 + 2);
        v737 = *(v735 + 3);
        v739 = v1465;
        if (v738 >= v737 >> 1)
        {
          v735 = sub_1D6993238((v737 > 1), v738 + 1, 1, v735);
        }

        *(v735 + 2) = v738 + 1;
        *&v735[8 * v738 + 32] = v732 | 0x8000000000000000;
        v734[6] = v735;
        swift_endAccess();
        *&v1472 = v1437;
        if (!v1476)
        {
          goto LABEL_333;
        }

        v740 = v739;
        v741 = v1476;
        v742 = v1429;
        v743 = v1452;
        sub_1D69D0E34(&v1472, v1429, v1452);

        v744 = *(&v1494 + 1);
        v1510 = *(&v1494 + 1);
        v138 = v1459;
        if (!*(&v1494 + 1))
        {

          goto LABEL_125;
        }

        v745 = *(v742 + 2);
        v747 = *(v745 + 48);
        v746 = *(v745 + 56);
        v748 = *(v740 + 296);
        v749 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1510, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v750 = v1421;
        sub_1D61CC910(&v1510, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v749, sub_1D61BB5EC);

        v751 = [v750 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v752 = swift_allocObject();
        v752[2] = 0;
        v752[3] = 0;
        v752[6] = v746;
        v752[7] = v750;
        v753 = MEMORY[0x1E69E7CC8];
        v752[11] = v744;
        v752[12] = v753;
        v752[4] = v748;
        v752[5] = v747;
        v132 = v1467;
        v752[8] = v751;
        v754 = MEMORY[0x1E69E7CC0];
        v752[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v755 = swift_allocObject();
        *(v755 + 16) = v1441;
        *(v755 + 32) = v751;
        *&v1472 = v755;
        v756 = v751;
        sub_1D69879AC(v754);
        v752[10] = v1472;
        v757 = v1442;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v758);
        if (*((*&v132[v757] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v757] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v759 = MEMORY[0x1E69E6720];
        v760 = &v1510;
        goto LABEL_123;
      case 7uLL:
        v557 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v558 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v1433 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1437 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v559 = v558[4];
        v560 = v558[5];
        v561 = v558[12];

        v562 = sub_1D61C74E8(v559, v560, v561);
        v564 = v563;
        v1431 = v565;
        sub_1D726345C();
        *&v1468 = v150;
        v566 = sub_1D6EE8B60();
        v567 = v150;
        v569 = v568;
        type metadata accessor for FormatVisibilityDataValue();
        v570 = swift_allocObject();
        *(v570 + 16) = v567;
        *(v570 + 24) = v564;
        v571 = v1457;
        swift_beginAccess();
        v1452 = v557;

        v572 = v564;
        v573 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v571;
        *v571 = 0x8000000000000000;
        sub_1D6D7A36C(v570, v566, v569, v573);

        *v571 = v1475;
        swift_endAccess();
        *&v1472 = v1433;
        if (!v1476)
        {
          goto LABEL_332;
        }

        v574 = v1476;
        sub_1D61F9958(&v1472, v558, v562);

        if (!v1437)
        {

          goto LABEL_167;
        }

        v576 = v558[2];
        v575 = v558[3];
        v577 = *(v1465 + 296);
        v578 = v1437;
        swift_retain_n();
        v579 = v572;

        v580 = [v579 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v581 = swift_allocObject();
        v581[2] = 0;
        v581[3] = 0;
        v581[6] = v575;
        v581[7] = v579;
        v582 = MEMORY[0x1E69E7CC8];
        v581[11] = v578;
        v581[12] = v582;
        v581[4] = v577;
        v581[5] = v576;
        v581[8] = v580;
        v583 = MEMORY[0x1E69E7CC0];
        v581[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v584 = swift_allocObject();
        *(v584 + 16) = v1441;
        *(v584 + 32) = v580;
        *&v1472 = v584;
        v585 = v580;
        sub_1D69879AC(v583);
        v581[10] = v1472;
        v132 = v1467;
        v586 = v1442;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v587);
        if (*((*&v132[v586] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v586] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        goto LABEL_124;
      case 8uLL:
        sub_1D61CAFE8();
        v843 = v842;
        v844 = swift_projectBox();
        v845 = *(v844 + *(v843 + 48));
        v846 = *(v844 + *(v843 + 64));
        sub_1D5BC885C(v844, v1424, type metadata accessor for FormatAdMetricsData);
        v847 = v845[4];
        v848 = v845[5];
        v849 = v845[12];

        v1437 = sub_1D61C787C(v847, v848, v849, type metadata accessor for FormatAdMetricsView, &unk_1F50F7028);
        v851 = v850;
        *&v1433 = v852;

        sub_1D726345C();
        *&v1468 = v150;
        v853 = sub_1D6EE8B60();
        v855 = v854;
        type metadata accessor for FormatVisibilityDataValue();
        v856 = swift_allocObject();
        *(v856 + 16) = v150;
        *(v856 + 24) = v851;
        v857 = v1457;
        swift_beginAccess();
        v1452 = v150;

        v858 = v851;
        v859 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v857;
        *v857 = 0x8000000000000000;
        sub_1D6D7A36C(v856, v853, v855, v859);

        *v857 = v1475;
        swift_endAccess();
        if (v846)
        {
          swift_beginAccess();
        }

        v994 = v1437;
        v995 = v1424;
        sub_1D6F38DE4(v1462, v845, v1437, v1424, v1463, v1464);

        sub_1D61CCBB4(v995, type metadata accessor for FormatAdMetricsData);

        v140 = v1453;
        v141 = v1461;
        v142 = v1458;
        v132 = v1467;
        goto LABEL_156;
      case 9uLL:
        sub_1D61CAF6C(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
        v420 = v419;
        v421 = swift_projectBox();
        v422 = *(v421 + *(v420 + 48));
        sub_1D5BC885C(v421, v140, type metadata accessor for FormatMicaData);
        v423 = v422[4];
        v424 = v422[5];
        v425 = v422[13];

        v426 = sub_1D61C787C(v423, v424, v425, MEMORY[0x1E69D87D0], &unk_1F50F7050);
        v428 = v427;
        *&v1433 = v429;

        sub_1D726345C();
        *&v1468 = v150;
        v1437 = sub_1D6EE8B60();
        v431 = v430;
        type metadata accessor for FormatVisibilityDataValue();
        v432 = v150;
        v433 = swift_allocObject();
        *(v433 + 16) = v432;
        *(v433 + 24) = v428;
        v434 = v1457;
        swift_beginAccess();

        v435 = v428;
        v436 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v434;
        *v434 = 0x8000000000000000;
        sub_1D6D7A36C(v433, v1437, v431, v436);

        *v434 = v1475;
        swift_endAccess();
        if (!v1476)
        {
          goto LABEL_331;
        }

        v437 = v1476;
        FormatMicaNodeRenderer.render<A>(context:layoutAttributes:view:micaData:token:traitCollection:)(v1462, v422, v426, v140, v437, v1451, v1463, v1464);

        sub_1D61CCBB4(v140, type metadata accessor for FormatMicaData);

        v141 = v1461;
        v142 = v1458;
        v132 = v1467;
LABEL_156:
        v12 = v1466;
        goto LABEL_157;
      case 0xAuLL:
        v784 = v150 & 0xFFFFFFFFFFFFFFBLL;
        v785 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v1433 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1431 = v785;
        v786 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1430 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        LODWORD(v1429) = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v787 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v1499 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
        v788 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x48);
        v1497 = v787;
        v1498 = v788;
        v789 = v787;
        v790 = *(v787 + 32);
        v791 = *(v787 + 40);
        v792 = *(v787 + 96);

        v1437 = sub_1D61C787C(v790, v791, v792, type metadata accessor for FormatLayeredMediaView, &unk_1F50F7078);
        v794 = v793;
        v796 = v795;
        sub_1D726345C();
        *&v1468 = v150;
        v797 = v150;
        v798 = sub_1D6EE8B60();
        v800 = v799;
        type metadata accessor for FormatVisibilityDataValue();
        v801 = swift_allocObject();
        *(v801 + 16) = v797;
        *(v801 + 24) = v794;
        v802 = v1457;
        swift_beginAccess();
        v1428 = v784;

        v803 = v794;
        v804 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v802;
        *v802 = 0x8000000000000000;
        sub_1D6D7A36C(v801, v798, v800, v804);

        *v802 = v1475;
        swift_endAccess();
        *&v1472 = v1433;
        *(&v1472 + 1) = v1431;
        *&v1473 = v786;
        *(&v1473 + 1) = v1430;
        LOBYTE(v1474[0]) = v1429;
        if (!v1476)
        {
          goto LABEL_330;
        }

        v805 = v1476;
        *&v1433 = v789;
        v806 = v1463;
        v807 = v1464;
        sub_1D6BB42FC(v789, v1437, v796, &v1472, v1451, v1463, v1464);

        v808 = swift_allocObject();
        swift_weakInit();
        v1452 = v796;
        v809 = v1446;
        v810 = v1401;
        (*(v1446 + 16))(v1401, v1462, v806);
        v811 = (*(v809 + 80) + 88) & ~*(v809 + 80);
        v812 = (v1444 + v811) & 0xFFFFFFFFFFFFFFF8;
        v813 = swift_allocObject();
        *(v813 + 16) = *(v1445 + 80);
        *(v813 + 24) = v806;
        *(v813 + 32) = v807;
        *(v813 + 40) = v808;
        v814 = v1498;
        *(v813 + 48) = v1497;
        *(v813 + 64) = v814;
        *(v813 + 80) = v1499;
        v815 = *(v809 + 32);
        v816 = v1452;
        v815(v813 + v811, v810, v806);
        v817 = (v813 + v812);
        v818 = v1437;
        *v817 = v1437;
        v817[1] = v803;
        v817[2] = v816;
        v819 = swift_allocObject();
        *(v819 + 16) = sub_1D61CAF54;
        *(v819 + 24) = v813;
        v820 = v1448;
        swift_beginAccess();
        v821 = *v820;
        v822 = v803;

        sub_1D61CC910(&v1497, &v1472, &unk_1EC884E88, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v562 = v818;

        v823 = swift_isUniquelyReferenced_nonNull_native();
        *v820 = v821;
        if ((v823 & 1) == 0)
        {
          v821 = sub_1D69931DC(0, v821[2] + 1, 1, v821);
          *v1448 = v821;
        }

        v825 = v821[2];
        v824 = v821[3];
        v826 = v1433;
        if (v825 >= v824 >> 1)
        {
          v821 = sub_1D69931DC((v824 > 1), v825 + 1, 1, v821);
        }

        v821[2] = v825 + 1;
        v827 = &v821[2 * v825];
        v827[4] = sub_1D61CCD0C;
        v827[5] = v819;
        *v1448 = v821;
        swift_endAccess();

        v828 = *(&v1497 + 1);
        v1509 = *(&v1497 + 1);
        if (!*(&v1497 + 1))
        {

LABEL_167:
          goto LABEL_173;
        }

        v1437 = v562;
        v829 = *(v826 + 24);
        v1431 = *(v826 + 16);
        v830 = *(v1465 + 296);
        v831 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1509, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v832 = v822;
        sub_1D61CC910(&v1509, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v831, sub_1D61BB5EC);

        v833 = [v832 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v834 = swift_allocObject();
        v834[2] = 0;
        v834[3] = 0;
        v834[6] = v829;
        v834[7] = v832;
        v835 = MEMORY[0x1E69E7CC8];
        v834[11] = v828;
        v834[12] = v835;
        v836 = v1431;
        v834[4] = v830;
        v834[5] = v836;
        v834[8] = v833;
        v837 = MEMORY[0x1E69E7CC0];
        v834[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v838 = swift_allocObject();
        *(v838 + 16) = v1441;
        *(v838 + 32) = v833;
        *&v1472 = v838;
        v839 = v833;
        sub_1D69879AC(v837);
        v834[10] = v1472;
        v132 = v1467;
        v840 = v1442;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v841);
        if (*((*&v132[v840] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v840] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v759 = MEMORY[0x1E69E6720];
        v760 = &v1509;
LABEL_123:
        sub_1D61CCAA4(v760, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v759, sub_1D61BB5EC);

LABEL_124:
        v138 = v1459;
LABEL_125:
        v139 = v1460;
        v140 = v1453;
        v141 = v1461;
        goto LABEL_7;
      case 0xBuLL:
        sub_1D61CC870(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
        v293 = v139;
        v295 = v294;
        v296 = swift_projectBox();
        v297 = v296 + *(v295 + 48);
        v298 = *(v297 + 32);
        v299 = *(v297 + 16);
        v1500 = *v297;
        v1501 = v299;
        v1502 = v298;
        sub_1D5BC885C(v296, v293, type metadata accessor for FormatVideoData);
        v300 = v1500;
        v301 = *(v1500 + 32);
        v302 = *(v1500 + 40);
        v303 = *(v1500 + 96);

        sub_1D61CC910(&v1500, &v1472, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);

        v304 = sub_1D61C787C(v301, v302, v303, type metadata accessor for FormatVideoView, &unk_1F50F70A0);
        v306 = v305;
        v308 = v307;

        sub_1D726345C();
        *&v1468 = v150;
        v309 = sub_1D6EE8B60();
        v311 = v310;
        type metadata accessor for FormatVisibilityDataValue();
        v312 = v150;
        v313 = swift_allocObject();
        *(v313 + 16) = v312;
        *(v313 + 24) = v306;
        v314 = v1457;
        swift_beginAccess();
        v1452 = v312;

        v1437 = v306;
        v315 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v314;
        *v314 = 0x8000000000000000;
        sub_1D6D7A36C(v313, v309, v311, v315);

        *v314 = v1475;
        swift_endAccess();
        if (!v1476)
        {
          goto LABEL_329;
        }

        v316 = v1476;
        *&v1433 = v300;
        v1431 = v304;
        v317 = v308;
        v318 = v1463;
        v319 = v1464;
        sub_1D5F12524(v300, v304, v308, v1460, v316, v1451, v1463, v1464);

        v320 = swift_allocObject();
        swift_weakInit();
        v321 = v1446;
        v322 = v1402;
        (*(v1446 + 16))(v1402, v1462, v318);
        v323 = (*(v321 + 80) + 88) & ~*(v321 + 80);
        v324 = (v1444 + v323) & 0xFFFFFFFFFFFFFFF8;
        v325 = swift_allocObject();
        *(v325 + 16) = *(v1445 + 80);
        *(v325 + 24) = v318;
        *(v325 + 32) = v319;
        *(v325 + 40) = v320;
        v326 = v1501;
        *(v325 + 48) = v1500;
        *(v325 + 64) = v326;
        *(v325 + 80) = v1502;
        (*(v321 + 32))(v325 + v323, v322, v318);
        v327 = (v325 + v324);
        v328 = v1431;
        v329 = v1437;
        *v327 = v1431;
        v327[1] = v329;
        v327[2] = v317;
        v330 = swift_allocObject();
        *(v330 + 16) = sub_1D61CAE9C;
        *(v330 + 24) = v325;
        v331 = v1448;
        swift_beginAccess();
        v332 = *v331;
        sub_1D61CC910(&v1500, &v1472, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v333 = v329;

        v334 = v328;

        v335 = swift_isUniquelyReferenced_nonNull_native();
        *v331 = v332;
        v1437 = v334;
        if ((v335 & 1) == 0)
        {
          v332 = sub_1D69931DC(0, v332[2] + 1, 1, v332);
          *v1448 = v332;
        }

        v337 = v332[2];
        v336 = v332[3];
        v338 = v1433;
        if (v337 >= v336 >> 1)
        {
          v332 = sub_1D69931DC((v336 > 1), v337 + 1, 1, v332);
        }

        v332[2] = v337 + 1;
        v339 = &v332[2 * v337];
        v339[4] = sub_1D61CCD0C;
        v339[5] = v330;
        *v1448 = v332;
        swift_endAccess();

        v340 = *(&v1500 + 1);
        v1508 = *(&v1500 + 1);
        if (!*(&v1500 + 1))
        {

          sub_1D61CCAA4(&v1500, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
          v139 = v1460;
          sub_1D61CCBB4(v1460, type metadata accessor for FormatVideoData);

          v138 = v1459;
          goto LABEL_279;
        }

        v1431 = v317;
        v341 = *(v338 + 24);
        v1430 = *(v338 + 16);
        v342 = *(v1465 + 296);
        v343 = MEMORY[0x1E69E6720];
        sub_1D61CC910(&v1508, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v344 = v333;
        sub_1D61CC910(&v1508, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v343, sub_1D61BB5EC);

        v345 = [v344 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v346 = swift_allocObject();
        v346[2] = 0;
        v346[3] = 0;
        v346[6] = v341;
        v346[7] = v344;
        v347 = MEMORY[0x1E69E7CC8];
        v346[11] = v340;
        v346[12] = v347;
        v348 = v1430;
        v346[4] = v342;
        v346[5] = v348;
        v346[8] = v345;
        v349 = MEMORY[0x1E69E7CC0];
        v346[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v350 = swift_allocObject();
        *(v350 + 16) = v1441;
        *(v350 + 32) = v345;
        *&v1472 = v350;
        v351 = v345;
        sub_1D69879AC(v349);
        v346[10] = v1472;
        v132 = v1467;
        v352 = v1442;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v353);
        if (*((*&v132[v352] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v352] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        sub_1D61CCAA4(&v1508, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);

        sub_1D61CCAA4(&v1500, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v139 = v1460;
        sub_1D61CCBB4(v1460, type metadata accessor for FormatVideoData);

        v138 = v1459;
        goto LABEL_43;
      case 0xCuLL:
        v379 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1472 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v1473 = v379;
        v1474[0] = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        *(v1474 + 9) = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v1505 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
        v380 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
        v1503 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v1504 = v380;
        v381 = v1503;
        v382 = *(v1503 + 32);
        v383 = *(v1503 + 40);
        v384 = *(v1503 + 96);

        v385 = sub_1D61C787C(v382, v383, v384, type metadata accessor for IssueCoverView, &unk_1F50F70C8);
        v386 = v150;
        v388 = v387;
        v390 = v389;
        sub_1D726345C();
        v1475 = v386;
        v1437 = sub_1D6EE8B60();
        v392 = v391;
        type metadata accessor for FormatVisibilityDataValue();
        v393 = swift_allocObject();
        *(v393 + 16) = v386;
        *(v393 + 24) = v388;
        v394 = v1457;
        swift_beginAccess();

        v1452 = v388;
        v395 = swift_isUniquelyReferenced_nonNull_native();
        v1471 = *v394;
        *v394 = 0x8000000000000000;
        sub_1D6D7A36C(v393, v1437, v392, v395);

        *v394 = v1471;
        swift_endAccess();
        v1468 = v1472;
        v1469 = v1473;
        v1470[0] = v1474[0];
        *(v1470 + 9) = *(v1474 + 9);
        if (!v1476)
        {
          goto LABEL_328;
        }

        v396 = v1476;
        v1431 = v385;
        v397 = v385;
        *&v1433 = v390;
        v398 = v1463;
        v399 = v1464;
        sub_1D619C8A4(v381, v397, v390, &v1468, v1451, v1463, v1464);

        v400 = swift_allocObject();
        swift_weakInit();
        v401 = v1446;
        v402 = v1403;
        (*(v1446 + 16))(v1403, v1462, v398);
        v403 = (*(v401 + 80) + 88) & ~*(v401 + 80);
        v404 = (v1444 + v403) & 0xFFFFFFFFFFFFFFF8;
        v405 = swift_allocObject();
        *(v405 + 16) = *(v1445 + 80);
        *(v405 + 24) = v398;
        *(v405 + 32) = v399;
        *(v405 + 40) = v400;
        v406 = v1504;
        *(v405 + 48) = v1503;
        *(v405 + 64) = v406;
        *(v405 + 80) = v1505;
        (*(v401 + 32))(v405 + v403, v402, v398);
        v407 = (v405 + v404);
        v408 = v1431;
        v409 = v1452;
        *v407 = v1431;
        v407[1] = v409;
        v407[2] = v1433;
        v410 = swift_allocObject();
        *(v410 + 16) = sub_1D61CAE84;
        *(v410 + 24) = v405;
        v411 = v1448;
        swift_beginAccess();
        v412 = *v411;
        v413 = v409;
        v1452 = v400;

        sub_1D61CC910(&v1503, &v1468, &unk_1EC884E70, type metadata accessor for FormatIssueCoverNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        v1437 = v408;

        v414 = swift_isUniquelyReferenced_nonNull_native();
        *v411 = v412;
        v415 = v413;
        if ((v414 & 1) == 0)
        {
          v412 = sub_1D69931DC(0, v412[2] + 1, 1, v412);
          *v1448 = v412;
        }

        v12 = v1466;
        v417 = v412[2];
        v416 = v412[3];
        if (v417 >= v416 >> 1)
        {
          v412 = sub_1D69931DC((v416 > 1), v417 + 1, 1, v412);
        }

        v412[2] = v417 + 1;
        v418 = &v412[2 * v417];
        v418[4] = sub_1D61365E8;
        v418[5] = v410;
        *v1448 = v412;
        swift_endAccess();

        v138 = v1459;
        v139 = v1460;
        v140 = v1453;
        v141 = v1461;
        v142 = v1458;
        v132 = v1467;
        goto LABEL_9;
      case 0xDuLL:
        sub_1D61CAF6C(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
        v673 = v672;
        v674 = swift_projectBox();
        v675 = *(v674 + *(v673 + 48));
        sub_1D5BC885C(v674, v1425, type metadata accessor for FormatShareAttributionData);
        v676 = v675[4];
        v677 = v675[5];
        v678 = v675[14];

        v679 = sub_1D61C74E8(v676, v677, v678);
        v681 = v680;
        v1437 = v682;

        sub_1D726345C();
        *&v1468 = v150;
        v683 = sub_1D6EE8B60();
        v685 = v684;
        type metadata accessor for FormatVisibilityDataValue();
        v686 = v150;
        v687 = swift_allocObject();
        *(v687 + 16) = v686;
        *(v687 + 24) = v681;
        v688 = v1457;
        swift_beginAccess();
        v1452 = v686;

        v689 = v681;
        v690 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v688;
        *v688 = 0x8000000000000000;
        sub_1D6D7A36C(v687, v683, v685, v690);

        *v688 = v1475;
        swift_endAccess();
        sub_1D7222C14(v675, v679);
        *(&v1473 + 1) = sub_1D5E2B010();
        *&v1472 = v679;
        sub_1D5B76B10(&v1472, &v1468);
        v691 = v1450;
        swift_beginAccess();
        v692 = v691[7];
        v693 = v679;
        v694 = swift_isUniquelyReferenced_nonNull_native();
        v691[7] = v692;
        if ((v694 & 1) == 0)
        {
          v692 = sub_1D69917E4(0, *(v692 + 2) + 1, 1, v692);
          v1450[7] = v692;
        }

        v696 = *(v692 + 2);
        v695 = *(v692 + 3);
        v697 = v1461;
        v132 = v1467;
        if (v696 >= v695 >> 1)
        {
          v692 = sub_1D69917E4((v695 > 1), v696 + 1, 1, v692);
        }

        *(v692 + 2) = v696 + 1;
        sub_1D5B7C390(&v1468, &v692[32 * v696 + 32]);
        v1450[7] = v692;
        swift_endAccess();

        sub_1D61CCBB4(v1425, type metadata accessor for FormatShareAttributionData);
        __swift_destroy_boxed_opaque_existential_1(&v1472);

        v138 = v1459;
        v139 = v1460;
        v140 = v1453;
        v142 = v1458;
        v12 = v1466;
        v141 = v697;
        goto LABEL_9;
      case 0xEuLL:
        sub_1D61CC870(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v247 = v246;
        v248 = swift_projectBox();
        v249 = (v248 + *(v247 + 48));
        v250 = v138;
        v251 = *v249;
        v252 = v249[1];
        v254 = v249[2];
        v253 = v249[3];
        v255 = v249[4];
        sub_1D5BC885C(v248, v250, type metadata accessor for FormatVideoPlayerData);
        v256 = v251[4];
        v257 = v251[5];
        *&v1472 = v251[12];
        v1437 = v252;

        *&v1433 = v251;

        v1429 = v254;
        v1430 = v253;
        v1431 = v255;
        sub_1D5EBC314(v254, v253);

        v258 = sub_1D704730C(v256, v257, &v1472);

        v259 = v258;
        v260 = [v259 view];
        if (!v260)
        {
          goto LABEL_327;
        }

        v261 = v260;
        sub_1D726345C();
        *&v1468 = v150;
        v262 = sub_1D6EE8B60();
        v264 = v263;
        type metadata accessor for FormatVisibilityDataValue();
        v265 = swift_allocObject();
        *(v265 + 16) = v150;
        *(v265 + 24) = v261;
        v266 = v1457;
        swift_beginAccess();
        v1452 = v150;

        v267 = v261;
        v268 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v266;
        *v266 = 0x8000000000000000;
        sub_1D6D7A36C(v265, v262, v264, v268);

        *v266 = v1475;
        swift_endAccess();

        v269 = v259;
        v270 = [v259 view];
        sub_1D61BB5EC(0, &qword_1EC884E68, sub_1D5E2B010, MEMORY[0x1E69E6720]);
        *(&v1473 + 1) = v271;
        *&v1472 = v270;
        sub_1D5B76B10(&v1472, &v1468);
        v272 = v1450;
        swift_beginAccess();
        v273 = v272[7];
        v274 = swift_isUniquelyReferenced_nonNull_native();
        v272[7] = v273;
        if ((v274 & 1) == 0)
        {
          v273 = sub_1D69917E4(0, *(v273 + 2) + 1, 1, v273);
          v272[7] = v273;
        }

        v275 = v1437;
        v276 = v1433;
        v278 = *(v273 + 2);
        v277 = *(v273 + 3);
        v138 = v1459;
        if (v278 >= v277 >> 1)
        {
          v273 = sub_1D69917E4((v277 > 1), v278 + 1, 1, v273);
        }

        *(v273 + 2) = v278 + 1;
        sub_1D5B7C390(&v1468, &v273[32 * v278 + 32]);
        v272[7] = v273;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1472);
        if (!v1476)
        {
          goto LABEL_326;
        }

        v279 = v1476;
        sub_1D70F19BC(v1462, v276, v269, v138, v279, v1451, v1463, v1464);

        if (!v275)
        {

          sub_1D5EBC358(v1429, v1430);
          sub_1D61CCBB4(v138, type metadata accessor for FormatVideoPlayerData);

LABEL_278:
          v139 = v1460;
LABEL_279:
          v140 = v1453;
          v141 = v1461;
          goto LABEL_280;
        }

        v281 = *(v276 + 16);
        v280 = *(v276 + 24);

        v282 = [v269 view];

        if (!v282)
        {
          goto LABEL_337;
        }

        v283 = *(v1465 + 296);

        v284 = [v282 layer];
        type metadata accessor for FormatLayoutViewAnimation();
        v285 = swift_allocObject();
        v285[2] = 0;
        v285[3] = 0;
        v285[6] = v280;
        v285[7] = v282;
        v286 = MEMORY[0x1E69E7CC8];
        v285[11] = v275;
        v285[12] = v286;
        v285[4] = v283;
        v285[5] = v281;
        v285[8] = v284;
        v287 = MEMORY[0x1E69E7CC0];
        v285[9] = MEMORY[0x1E69E7CC0];
        sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v288 = swift_allocObject();
        *(v288 + 16) = v1441;
        *(v288 + 32) = v284;
        *&v1472 = v288;
        v289 = v284;
        sub_1D69879AC(v287);
        v285[10] = v1472;
        v290 = v1467;
        v291 = v1442;
        swift_beginAccess();

        MEMORY[0x1DA6F9CE0](v292);
        if (*((*&v290[v291] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v290[v291] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        sub_1D5EBC358(v1429, v1430);

        v138 = v1459;
        sub_1D61CCBB4(v1459, type metadata accessor for FormatVideoPlayerData);

        v139 = v1460;
        v140 = v1453;
        v142 = v1458;
        v132 = v290;
        v141 = v1461;
        goto LABEL_8;
      case 0xFuLL:
        v506 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v507 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v1437 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v508 = *(v507 + 152) >> 6;
        v510 = *(v507 + 32);
        v509 = *(v507 + 40);
        v511 = *(v507 + 104);

        if (v508)
        {
          if (v508 == 1)
          {
            v512 = sub_1D61C787C(v510, v509, v511, type metadata accessor for FormatProgressCircleView, &unk_1F50F7168);
            v514 = v513;
            v516 = v515;
            sub_1D726345C();
            *&v1468 = v150;
            *&v1433 = sub_1D6EE8B60();
            v518 = v517;
            type metadata accessor for FormatVisibilityDataValue();
            v519 = swift_allocObject();
            v520 = v150;
            v521 = v519;
            *(v519 + 16) = v520;
            *(v519 + 24) = v514;
            v522 = v1457;
            swift_beginAccess();

            v523 = v514;
            v524 = swift_isUniquelyReferenced_nonNull_native();
            v1475 = *v522;
            *v522 = 0x8000000000000000;
            sub_1D6D7A36C(v521, v1433, v518, v524);

            *v522 = v1475;
            swift_endAccess();
            LODWORD(v1472) = v506;
            *(&v1472 + 1) = v1437;
            *&v1468 = v512 | 0x8000000000000000;
            v525 = v1476;
            if (!v1476)
            {
              goto LABEL_341;
            }
          }

          else
          {
            v512 = sub_1D61C787C(v510, v509, v511, type metadata accessor for FormatProgressBarView, &unk_1F50F7118);
            v1013 = v1012;
            v516 = v1014;
            sub_1D726345C();
            *&v1468 = v150;
            *&v1433 = sub_1D6EE8B60();
            v1016 = v1015;
            type metadata accessor for FormatVisibilityDataValue();
            v1017 = swift_allocObject();
            v1018 = v150;
            v1019 = v1017;
            *(v1017 + 16) = v1018;
            *(v1017 + 24) = v1013;
            v1020 = v1457;
            swift_beginAccess();

            v523 = v1013;
            v1021 = swift_isUniquelyReferenced_nonNull_native();
            v1475 = *v1020;
            *v1020 = 0x8000000000000000;
            sub_1D6D7A36C(v1019, v1433, v1016, v1021);

            *v1020 = v1475;
            swift_endAccess();
            LODWORD(v1472) = v506;
            *(&v1472 + 1) = v1437;
            *&v1468 = v512;
            v525 = v1476;
            if (!v1476)
            {
              goto LABEL_340;
            }
          }
        }

        else
        {
          v512 = sub_1D61C787C(v510, v509, v511, type metadata accessor for FormatProgressPieView, &unk_1F50F7140);
          v1003 = v1002;
          v516 = v1004;
          sub_1D726345C();
          *&v1468 = v150;
          *&v1433 = sub_1D6EE8B60();
          v1006 = v1005;
          type metadata accessor for FormatVisibilityDataValue();
          v1007 = swift_allocObject();
          v1008 = v150;
          v1009 = v1007;
          *(v1007 + 16) = v1008;
          *(v1007 + 24) = v1003;
          v1010 = v1457;
          swift_beginAccess();

          v523 = v1003;
          v1011 = swift_isUniquelyReferenced_nonNull_native();
          v1475 = *v1010;
          *v1010 = 0x8000000000000000;
          sub_1D6D7A36C(v1009, v1433, v1006, v1011);

          *v1010 = v1475;
          swift_endAccess();
          LODWORD(v1472) = v506;
          *(&v1472 + 1) = v1437;
          *&v1468 = v512 | 0x4000000000000000;
          v525 = v1476;
          if (!v1476)
          {
            goto LABEL_342;
          }
        }

        v1022 = v512;
        v1023 = v525;
        sub_1D5E43FD8(&v1472, v507, &v1468, v516, v1023);

        v1024 = v1468;

LABEL_173:
        v138 = v1459;
        v139 = v1460;
        v140 = v1453;
        v141 = v1461;
        v142 = v1458;
        v132 = v1467;
        goto LABEL_8;
      case 0x10uLL:
        sub_1D61CAF6C(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
        v208 = v207;
        v209 = swift_projectBox();
        v210 = *(v209 + *(v208 + 48));
        sub_1D5BC885C(v209, v1435, type metadata accessor for FormatItemNodeData);
        v211 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
        v212 = *(v210 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        v213 = *(v212 + 64);
        v214 = *(v212 + 72);
        v215 = v210[5];

        v216 = sub_1D61C711C(v213, v214, v215);
        v218 = v217;
        v1430 = v219;

        sub_1D726345C();
        *&v1468 = v150;
        v220 = sub_1D6EE8B60();
        v222 = v221;
        type metadata accessor for FormatVisibilityDataValue();
        v223 = swift_allocObject();
        *(v223 + 16) = v150;
        *(v223 + 24) = v218;
        v224 = v150;
        v225 = v1457;
        swift_beginAccess();
        v1452 = v224;

        v1429 = v218;
        v226 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v225;
        *v225 = 0x8000000000000000;
        sub_1D6D7A36C(v223, v220, v222, v226);

        *v225 = v1475;
        swift_endAccess();
        swift_beginAccess();
        v227 = v216;
        sub_1D726344C();

        v228 = *(v210 + v211);
        v230 = v228[8];
        v229 = v228[9];
        type metadata accessor for FormatAccessibilityRenderer();
        v231 = swift_allocObject();
        v232 = MEMORY[0x1E69E7CC0];
        *(v231 + 48) = MEMORY[0x1E69E7CC0];
        *(v231 + 56) = v232;
        *(v231 + 96) = 0;
        v1433 = *(v1465 + 272);
        swift_unknownObjectWeakInit();
        *(v231 + 16) = v230;
        *(v231 + 24) = v229;
        *(v231 + 104) = 0;
        *(v231 + 96) = &off_1F51E2E28;
        swift_unknownObjectWeakAssign();
        *(v231 + 32) = *(v228 + *(*v228 + 144));
        *(v231 + 72) = v1433;
        *(v231 + 64) = v232;
        v233 = v228[13];
        v1437 = v231;
        *(v231 + 40) = v233;
        v1431 = v210;
        v234 = *(v210 + v211);
        v235 = (v234 + *(v1426 + 32) + *(*v234 + 136));
        v237 = *v235;
        v236 = v235[1];
        v238 = v235[2];
        if (v236)
        {
          *&v1468 = *v235;
          *(&v1468 + 1) = v236;
          *&v1469 = v238;
          v240 = v234[8];
          v239 = v234[9];

          swift_unknownObjectRetain();

          sub_1D5EBC314(v237, v236);

          v241 = v1462;
          v242 = v240;
          v243 = v1463;
          v244 = v1464;
          sub_1D6D270A8(v242, v239, v1463, v1464, &v1472);

          v245 = *(&v1472 + 1);
          v237 = v1472;
          v238 = v1473;
        }

        else
        {

          swift_unknownObjectRetain();

          v245 = 0;
          v241 = v1462;
          v244 = v1464;
          v243 = v1463;
        }

        v873 = v1404;
        *&v1472 = v237;
        *(&v1472 + 1) = v245;
        *&v1473 = v238;
        sub_1D61BB650(v241, v234, v227, v1451, &v1472, v1443, v1437, v1438, v1440, v243, v244);
        sub_1D5EBC358(v1472, *(&v1472 + 1));
        *(&v1473 + 1) = type metadata accessor for FormatLayoutView();
        *&v1472 = v227;
        sub_1D5B76B10(&v1472, &v1468);
        v874 = v1450;
        swift_beginAccess();
        v875 = v874[7];
        v876 = v227;
        v877 = swift_isUniquelyReferenced_nonNull_native();
        v874[7] = v875;
        if ((v877 & 1) == 0)
        {
          v875 = sub_1D69917E4(0, *(v875 + 2) + 1, 1, v875);
          v874[7] = v875;
        }

        v132 = v1467;
        v879 = *(v875 + 2);
        v878 = *(v875 + 3);
        if (v879 >= v878 >> 1)
        {
          v875 = sub_1D69917E4((v878 > 1), v879 + 1, 1, v875);
        }

        *(v875 + 2) = v879 + 1;
        sub_1D5B7C390(&v1468, &v875[32 * v879 + 32]);
        v1450[7] = v875;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1472);
        sub_1D704A77C(v876);
        v880 = v1435;
        v881 = v1420;
        sub_1D5BC885C(v1435, v1420, type metadata accessor for FeedItem);
        v882 = *v1395;
        (*v1395)(v881, 0, 1, v1434);
        v883 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
        swift_beginAccess();
        *&v1433 = v876;
        sub_1D61CAC28(v881, &v876[v883]);
        swift_endAccess();
        v884 = v880 + *(v1426 + 24);
        v885 = *v884;
        if (*(v884 + 8) <= 1u)
        {
          if (*(v884 + 8))
          {
            v1025 = swift_allocObject();
            *(v1025 + 16) = v1438;
            *(v1025 + 24) = v1440;
            *(v1025 + 32) = v885;
            v1026 = v1433;

            sub_1D725A7EC();
            v1027 = v1472;
            v1028 = sub_1D725F64C();

            v1029 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v1030 = swift_allocObject();
            v1030[2] = v1029;
            v1030[3] = sub_1D61CACBC;
            v1030[4] = v1025;

            v1031 = *&v1026[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
            v138 = v1459;
            v139 = v1460;
            if (v1031)
            {
              v1032 = v1031;
              [v1032 setEnabled_];
            }

            else
            {
            }

            sub_1D61CCBB4(v1435, type metadata accessor for FormatItemNodeData);

            v140 = v1453;
            v142 = v1458;
          }

          else
          {
            v886 = swift_allocObject();
            swift_weakInit();
            v887 = swift_allocObject();
            *(v887 + 16) = v886;
            *(v887 + 24) = v885;
            v888 = v1433;
            sub_1D61CA640(v885, 0);
            sub_1D61CA640(v885, 0);

            sub_1D725A7EC();
            v889 = v1472;
            v890 = sub_1D725F64C();

            v891 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v892 = swift_allocObject();
            v892[2] = v891;
            v892[3] = sub_1D61CACDC;
            v892[4] = v887;

            v893 = *&v888[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
            v138 = v1459;
            v139 = v1460;
            if (v893)
            {
              v894 = v893;
              [v894 setEnabled_];
            }

            else
            {
            }

            sub_1D61CA538(v885, 0);
            sub_1D61CCBB4(v1435, type metadata accessor for FormatItemNodeData);

            v140 = v1453;
            v142 = v1458;
            v132 = v1467;
          }

          goto LABEL_285;
        }

        if (*(v884 + 8) != 2 && ((v885 - 1) < 2 || v885))
        {
          v1033 = v1433;
          sub_1D725A7CC();
          v1034 = v1472;
          if (v1472)
          {
            v1035 = sub_1D725F64C();
          }

          v1036 = *&v1033[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
          v138 = v1459;
          v139 = v1460;
          v140 = v1453;
          v142 = v1458;
          if (v1036)
          {
            [v1036 setEnabled_];
          }

          sub_1D61CCBB4(v1435, type metadata accessor for FormatItemNodeData);

          goto LABEL_285;
        }

        v895 = *v1449;
        (*v1449)(v1374);
        v896 = type metadata accessor for FormatItemNodeLayoutContext();
        v897 = swift_dynamicCast();
        v898 = *(*(v896 - 8) + 56);
        if (v897)
        {
          v898(v873, 0, 1, v896);
          v899 = v873 + *(v896 + 28);
          v900 = v1390;
          sub_1D5BC885C(v899, v1390, type metadata accessor for FeedItem);
          sub_1D61CCBB4(v873, type metadata accessor for FormatItemNodeLayoutContext);
          v901 = 0;
        }

        else
        {
          v901 = 1;
          v898(v873, 1, 1, v896);
          sub_1D61CCAA4(v873, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v900 = v1390;
        }

        v882(v900, v901, 1, v1434);
        v1295 = MEMORY[0x1E69E7CD0];
        if (*(v884 + 8) == 2)
        {
        }

        v1421 = v1295;
        v1422 = swift_allocObject();
        swift_weakInit();
        v1428 = type metadata accessor for FeedItem;
        v1427 = MEMORY[0x1E69E6720];
        sub_1D61CC910(v900, v1420, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
        v1296 = v1377;
        sub_1D5BC885C(v1435, v1377, type metadata accessor for FormatItemNodeData);
        v1297 = v1463;
        (v895)(v1439, v1462, v1463);
        v1298 = (*(v1376 + 80) + 48) & ~*(v1376 + 80);
        v1299 = (v1375 + *(v1378 + 80) + v1298) & ~*(v1378 + 80);
        v1300 = (v1361 + v1299) & 0xFFFFFFFFFFFFFFF8;
        v1301 = v1446;
        v1302 = (*(v1446 + 80) + v1300 + 8) & ~*(v1446 + 80);
        v1303 = swift_allocObject();
        *(v1303 + 2) = *(v1445 + 80);
        *(v1303 + 3) = v1297;
        v1304 = v1422;
        *(v1303 + 4) = v1464;
        *(v1303 + 5) = v1304;
        sub_1D61CA3F8(v1420, &v1303[v1298]);
        sub_1D61CCB4C(v1296, &v1303[v1299], type metadata accessor for FormatItemNodeData);
        *&v1303[v1300] = v1421;
        (*(v1301 + 32))(&v1303[v1302], v1439, v1297);

        v1305 = v1433;
        sub_1D7047188(sub_1D61CACE4, v1303);

        sub_1D61CCAA4(v1390, qword_1EDF34EF0, v1428, v1427, sub_1D61BB5EC);
        sub_1D61CCBB4(v1435, type metadata accessor for FormatItemNodeData);

        goto LABEL_277;
      case 0x11uLL:
        v649 = (v150 & 0xFFFFFFFFFFFFFFBLL);
        v650 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v1437 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v651 = *((v150 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v652 = v650[4];
        v653 = v650[5];
        *&v1472 = v650[20];

        v654 = sub_1D704AB00(v652, v653, &v1472);

        swift_beginAccess();
        swift_weakAssign();
        v655 = [v654 accessibilityElements];
        v1431 = v650;
        *&v1433 = v651;
        if (v655)
        {
          v656 = v655;
          v657 = sub_1D726267C();
        }

        else
        {
          v657 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D6987A04(v657);
        swift_endAccess();
        v959 = [v654 view];
        if (!v959)
        {
          goto LABEL_325;
        }

        v960 = v959;
        sub_1D726345C();
        *&v1468 = v150;
        v961 = v150;
        v962 = sub_1D6EE8B60();
        v964 = v963;
        type metadata accessor for FormatVisibilityDataValue();
        v965 = swift_allocObject();
        *(v965 + 16) = v961;
        *(v965 + 24) = v960;
        v966 = v1457;
        swift_beginAccess();
        v1430 = v649;

        v967 = v960;
        v968 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v966;
        *v966 = 0x8000000000000000;
        sub_1D6D7A36C(v965, v962, v964, v968);

        *v966 = v1475;
        swift_endAccess();

        v969 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v970 = &v654[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow];
        swift_beginAccess();
        v971 = *v970;
        *v970 = sub_1D61CAE70;
        v970[1] = v969;
        sub_1D5B74328(v971);
        v972 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v973 = &v654[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide];
        swift_beginAccess();
        v974 = *v973;
        *v973 = sub_1D61CAE78;
        v973[1] = v972;
        sub_1D5B74328(v974);
        v975 = v1437;
        v976 = v1423;
        sub_1D5F2DEAC((v1437 + 32), v1423);
        swift_storeEnumTagMultiPayload();
        v1427 = *(v975 + 31);
        v1428 = *&v654[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
        v1452 = swift_allocObject();
        swift_weakInit();
        v977 = swift_allocObject();
        v1429 = v654;
        swift_unknownObjectWeakInit();
        v978 = v1419;
        sub_1D5BC885C(v976, v1419, type metadata accessor for FeedItem);
        v979 = v1446;
        v980 = v1439;
        v981 = v1463;
        (*(v1446 + 16))(v1439, v1462, v1463);
        v982 = (*(v1432 + 80) + 56) & ~*(v1432 + 80);
        v983 = (v1418 + v982) & 0xFFFFFFFFFFFFFFF8;
        v984 = (*(v979 + 80) + v983 + 8) & ~*(v979 + 80);
        v985 = swift_allocObject();
        *(v985 + 2) = *(v1445 + 80);
        *(v985 + 3) = v981;
        v986 = v1452;
        *(v985 + 4) = v1464;
        *(v985 + 5) = v986;
        *(v985 + 6) = v977;
        sub_1D61CCB4C(v978, &v985[v982], type metadata accessor for FeedItem);
        *&v985[v983] = v1427;
        (*(v979 + 32))(&v985[v984], v980, v981);
        v987 = v1428;
        v988 = &v1428[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction];
        swift_beginAccess();
        v989 = *v988;
        *v988 = sub_1D61CAE80;
        v988[1] = v985;

        v990 = v987;

        sub_1D5B74328(v989);

        v991 = v1433;
        if (v1433)
        {
          swift_beginAccess();
          v992 = *(v991 + 64);
          v993 = *(v991 + 80);
        }

        else
        {
          v992 = 0uLL;
          v993 = 0uLL;
        }

        v138 = v1459;
        v139 = v1460;
        v141 = v1461;
        v142 = v1458;
        v999 = v1431;
        v1506[0] = v992;
        v1506[1] = v993;
        v1507 = v991 == 0;

        v1000 = v999;
        v1001 = v1429;
        sub_1D7034244(v1437, v1000, v1506, v1429);

        sub_1D61CCBB4(v1423, type metadata accessor for FeedItem);

        v140 = v1453;
        v132 = v1467;
        goto LABEL_8;
      case 0x12uLL:
        sub_1D61CAF6C(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
        v762 = v761;
        v763 = swift_projectBox();
        v764 = *(v763 + *(v762 + 48));
        v765 = v1408;
        sub_1D5BC885C(v763, v1408, type metadata accessor for FormatSponsoredBannerData);
        v766 = v764[4];
        v767 = v764[5];
        v768 = v764[12];

        v769 = sub_1D61C787C(v766, v767, v768, type metadata accessor for FormatSponsoredBanner, &unk_1F50F70F0);
        v771 = v770;
        v1437 = v772;

        sub_1D726345C();
        *&v1468 = v150;
        *&v1433 = sub_1D6EE8B60();
        v774 = v773;
        type metadata accessor for FormatVisibilityDataValue();
        v775 = v150;
        v776 = swift_allocObject();
        *(v776 + 16) = v775;
        *(v776 + 24) = v771;
        v777 = v1457;
        swift_beginAccess();

        v778 = v771;
        v779 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v777;
        *v777 = 0x8000000000000000;
        v780 = v776;
        v781 = v1461;
        sub_1D6D7A36C(v780, v1433, v774, v779);
        v138 = v1459;

        *v777 = v1475;
        swift_endAccess();
        v782 = v765[1];
        v783 = &v769[OBJC_IVAR____TtC8NewsFeed21FormatSponsoredBanner_adIdentifier];
        *v783 = *v765;
        *(v783 + 1) = v782;

        sub_1D5E2AB94(v764, v769, v765, v1451);

        v142 = v1458;
        v140 = v1453;

        v141 = v781;
        v132 = v1467;
        v139 = v1460;
        sub_1D61CCBB4(v765, type metadata accessor for FormatSponsoredBannerData);

        goto LABEL_8;
      default:
        v1437 = *(v150 + 16);
        v151 = *(v150 + 24);
        v1485 = *(v150 + 56);
        v152 = *(v150 + 40);
        v1483 = v151;
        v1484 = v152;
        v153 = v151;
        v154 = *(v151 + 32);
        v155 = *(v151 + 40);
        v156 = *(v151 + 104);

        v157 = sub_1D61C787C(v154, v155, v156, type metadata accessor for FormatImageView, &unk_1F50F6F10);
        v159 = v158;
        v161 = v160;
        sub_1D726345C();
        *&v1468 = v150;
        v162 = v150;
        v163 = sub_1D6EE8B60();
        v165 = v164;
        type metadata accessor for FormatVisibilityDataValue();
        v166 = swift_allocObject();
        *(v166 + 16) = v162;
        *(v166 + 24) = v159;
        v167 = v1457;
        swift_beginAccess();
        v1452 = v162;

        *&v1433 = v159;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v1475 = *v167;
        *v167 = 0x8000000000000000;
        sub_1D6D7A36C(v166, v163, v165, v168);

        *v167 = v1475;
        swift_endAccess();
        *&v1472 = v1437;
        if (!v1476)
        {
          goto LABEL_336;
        }

        v169 = v1476;
        v170 = v1464;
        v171 = v1462;
        v1431 = v153;
        v172 = v1463;
        sub_1D6C06734(v1462, &v1472, v153, v157, v161, v169, v1451, v1463, v1464);

        v173 = swift_allocObject();
        swift_weakInit();
        v174 = v1446;
        v175 = *(v1446 + 16);
        v1437 = v161;
        v176 = v1400;
        v175(v1400, v171, v172);
        v177 = (*(v174 + 80) + 88) & ~*(v174 + 80);
        v178 = (v1444 + v177) & 0xFFFFFFFFFFFFFFF8;
        v179 = swift_allocObject();
        *(v179 + 16) = *(v1445 + 80);
        *(v179 + 24) = v172;
        *(v179 + 32) = v170;
        *(v179 + 40) = v173;
        v180 = v1484;
        *(v179 + 48) = v1483;
        *(v179 + 64) = v180;
        *(v179 + 80) = v1485;
        v181 = v176;
        v182 = v1437;
        (*(v174 + 32))(v179 + v177, v181, v172);
        v183 = (v179 + v178);
        v184 = v1433;
        *v183 = v157;
        v183[1] = v184;
        v183[2] = v182;
        v185 = swift_allocObject();
        *(v185 + 16) = sub_1D61CC840;
        *(v185 + 24) = v179;
        v186 = v1448;
        swift_beginAccess();
        v187 = *v186;
        v1430 = v184;

        sub_1D61CC910(&v1483, &v1472, &unk_1EDF1C7F0, type metadata accessor for FormatImageNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes, sub_1D61BB5EC);
        *&v1433 = v157;

        v188 = swift_isUniquelyReferenced_nonNull_native();
        *v186 = v187;
        if ((v188 & 1) == 0)
        {
          v187 = sub_1D69931DC(0, v187[2] + 1, 1, v187);
          *v1448 = v187;
        }

        v190 = v187[2];
        v189 = v187[3];
        v191 = v1431;
        if (v190 >= v189 >> 1)
        {
          v187 = sub_1D69931DC((v189 > 1), v190 + 1, 1, v187);
        }

        v187[2] = v190 + 1;
        v192 = &v187[2 * v190];
        v192[4] = sub_1D61CCD0C;
        v192[5] = v185;
        *v1448 = v187;
        swift_endAccess();

        v193 = *(&v1483 + 1);
        v1513 = *(&v1483 + 1);
        if (*(&v1483 + 1))
        {
          v195 = v191[2];
          v194 = v191[3];
          v196 = *(v1465 + 296);
          v197 = MEMORY[0x1E69E6720];
          sub_1D61CC910(&v1513, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);
          v198 = v1430;
          sub_1D61CC910(&v1513, &v1472, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, v197, sub_1D61BB5EC);

          v199 = [v198 layer];
          type metadata accessor for FormatLayoutViewAnimation();
          v200 = swift_allocObject();
          v200[2] = 0;
          v200[3] = 0;
          v200[6] = v194;
          v200[7] = v198;
          v201 = MEMORY[0x1E69E7CC8];
          v200[11] = v193;
          v200[12] = v201;
          v200[4] = v196;
          v200[5] = v195;
          v200[8] = v199;
          v202 = MEMORY[0x1E69E7CC0];
          v200[9] = MEMORY[0x1E69E7CC0];
          sub_1D5B66EA4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v203 = swift_allocObject();
          *(v203 + 16) = v1441;
          *(v203 + 32) = v199;
          *&v1472 = v203;
          v204 = v199;
          sub_1D69879AC(v202);
          v200[10] = v1472;
          v132 = v1467;
          v205 = v1442;
          swift_beginAccess();

          MEMORY[0x1DA6F9CE0](v206);
          if (*((*&v132[v205] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132[v205] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_endAccess();

          sub_1D61CCAA4(&v1513, &qword_1EDF2CBF0, type metadata accessor for FormatAnimationData, MEMORY[0x1E69E6720], sub_1D61BB5EC);

          v138 = v1459;
          v139 = v1460;
LABEL_43:
          v140 = v1453;
          v141 = v1461;
          v142 = v1458;
          goto LABEL_8;
        }

LABEL_277:
        v138 = v1459;
        goto LABEL_278;
    }
  }
}

id FormatLayoutViewRenderer.renderAction<A>(context:itemData:view:sourceItemData:actionSenderHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a1;
  v78 = a8;
  v79 = a3;
  v12 = type metadata accessor for FormatItemNodeData();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v76 - v24;
  v27 = a2 + *(v26 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  if (v29 <= 1)
  {
    v30 = v28;
    if (!v29)
    {
      v31 = swift_allocObject();
      swift_weakInit();
      (*(v16 + 16))(v25, v77, a7);
      v32 = (*(v16 + 80) + 40) & ~*(v16 + 80);
      v33 = swift_allocObject();
      v34 = v78;
      *(v33 + 2) = a7;
      *(v33 + 3) = v34;
      *(v33 + 4) = v31;
      (*(v16 + 32))(&v33[v32], v25, a7);
      *&v33[(v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
      v35 = v79;
      sub_1D61CA640(v30, 0);
      sub_1D61CA640(v30, 0);

      sub_1D725A7EC();
      v36 = v80;
      v37 = sub_1D725F64C();

      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = sub_1D61CA65C;
      v39[4] = v33;

      v40 = *(v35 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
      if (v40)
      {
        v41 = v40;
        [v41 setEnabled_];
      }

      sub_1D61CA538(v30, 0);
    }

    v58 = swift_allocObject();
    *(v58 + 16) = a5;
    *(v58 + 24) = a6;
    *(v58 + 32) = v30;
    v59 = v79;

    sub_1D725A7EC();
    v60 = v80;
    v61 = sub_1D725F64C();

    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = sub_1D61CCD00;
    v63[4] = v58;

    v64 = *(v59 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v64)
    {
      v65 = v64;
      [v65 setEnabled_];
    }
  }

  if (v29 == 2)
  {
    v76 = v28;
    v43 = v23;
    v44 = swift_allocObject();
    swift_weakInit();
    sub_1D5BC885C(a2, &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatItemNodeData);
    (*(v16 + 16))(v20, v77, a7);
    v45 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v46 = (v13 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (*(v16 + 80) + v46 + 8) & ~*(v16 + 80);
    v48 = swift_allocObject();
    v49 = v78;
    *(v48 + 2) = a7;
    *(v48 + 3) = v49;
    *(v48 + 4) = v44;
    sub_1D61CCB4C(v15, &v48[v45], type metadata accessor for FormatItemNodeData);
    v50 = v76;
    *&v48[v46] = v76;
    (*(v16 + 32))(&v48[v47], v20, a7);
    v51 = v79;
    sub_1D61CA640(v50, 2);

    sub_1D725A7EC();
    v52 = v80;
    v53 = sub_1D725F64C();

    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = sub_1D61CA554;
    v55[4] = v48;

    v56 = *(v51 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v56)
    {
      v57 = v56;
      [v57 setEnabled_];
    }

    else
    {
    }
  }

  v66 = v79;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      sub_1D725A7EC();
      v71 = v80;
      v68 = sub_1D725F64C();

      v72 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = swift_allocObject();
      v73[2] = v72;
      v73[3] = sub_1D61C637C;
      v73[4] = 0;
LABEL_17:

      result = *(v66 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
      if (result)
      {
        return [result setEnabled_];
      }

      return result;
    }
  }

  else if (v28)
  {
    sub_1D725A7EC();
    v67 = v80;
    v68 = sub_1D725F64C();

    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = swift_allocObject();
    v70[2] = v69;
    v70[3] = sub_1D61C6364;
    v70[4] = 0;
    goto LABEL_17;
  }

  sub_1D725A7CC();
  v74 = v80;
  if (v80)
  {
    v75 = sub_1D725F64C();
  }

  result = *(v66 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

uint64_t sub_1D61C5EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v36 = a1;
  v34 = sub_1D725E84C();
  v7 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatItemNodeLayoutContext();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v32 = a4;
    v26 = *(result + 288);
    (*(v14 + 16))(v18, v33, a5);

    v27 = swift_dynamicCast();
    v28 = *(v20 + 56);
    if (v27)
    {
      v28(v13, 0, 1, v19);
      sub_1D61CCB4C(v13, v23, type metadata accessor for FormatItemNodeLayoutContext);
      FeedItem.identifier.getter();
      v29 = sub_1D725A5DC();

      sub_1D61CCBB4(v23, type metadata accessor for FormatItemNodeLayoutContext);
      v26 = v29;
    }

    else
    {
      v28(v13, 1, 1, v19);
      sub_1D61CCAA4(v13, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    }

    (*(v7 + 104))(v35, *MEMORY[0x1E69D7FB8], v34);
    v38 = sub_1D725A60C();
    v39 = sub_1D61CAB08();
    v37 = v26;
    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    sub_1D725E36C();
    swift_allocObject();

    v30 = v36;
    v31 = sub_1D725E34C();
    (*(v32 + 56))(*(v25 + 272), *(v25 + 280), v31);
  }

  return result;
}

void sub_1D61C6394(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      type metadata accessor for FormatVideoPlayerViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        break;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_13;
      }
    }

    v12 = v11;

    if (swift_unknownObjectWeakLoadStrong())
    {
      a2(v12);
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1D61C64F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for FormatLayoutViewRoute();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 328);
    sub_1D5BC885C(a3, v15, type metadata accessor for FeedItem);
    swift_storeEnumTagMultiPayload();
    (*(a7 + 24))(v30, a6, a7);
    v19 = v30[0];
    v18 = v30[1];
    v20 = v30[2];
    v21 = v30[3];
    sub_1D61CC910(v17 + 40, &v25, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
    if (v26)
    {
      v24[1] = v19;
      v24[2] = v20;
      sub_1D5B63F14(&v25, v27);
      v22 = v28;
      v23 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v23 + 8))(v15, a1, a4, v22, v23);

      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_1D61CCAA4(&v25, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v27[0] = v19;
      v27[1] = v18;
      v27[2] = v20;
      v28 = v21;
      sub_1D6C0A4BC(v15, a1, v27);
      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
    }
  }

  return result;
}

void FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v100 = a1;
  v101 = a4;
  v103 = a3;
  v6 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v96 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 96);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return;
  }

  v11 = (v9 + 32);
  v94 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  while (1)
  {
    v13 = *v11++;
    v12 = v13;
    v14 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
    if (v14 > 4)
    {
      break;
    }

    if (v14 >= 3)
    {
      v104 = v11;
      if (v14 == 3)
      {
        sub_1D61CC870(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v40 = (swift_projectBox() + *(v39 + 48));
        v41 = *v40;
        v42 = v40[2];
        v98 = v40[3];
        v43 = v98;
        v99 = v42;
        v97 = v40[4];
        v44 = *(v41 + 16);
        v45 = *(v44 + 64);
        v46 = *(v44 + 72);
        v47 = *(v41 + 32);

        sub_1D5EBC314(v42, v43);

        v48 = sub_1D61C787C(v45, v46, v47, type metadata accessor for FormatButton, &unk_1F50F6F38);
        v50 = v49;

        v51 = *(v41 + 16);
        v52 = *&v48[OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView];

        v53 = v52;
        FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v100, v51, v53, v101, v102);

        sub_1D5EBC358(v99, v98);
      }

      else
      {
        v54 = (v12 & 0xFFFFFFFFFFFFFFBLL);
        v55 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v56 = v54[4];
        v57 = v54[5];
        v98 = v54[6];
        v99 = v56;
        v58 = v55[4];
        v59 = v55[5];
        v60 = v55[13];

        sub_1D5EBC314(v56, v57);

        v61 = sub_1D61C711C(v58, v59, v60);
        v63 = v62;

        v64 = v55[8];

        FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v100, v64, v61, v101, v102);

        sub_1D5EBC358(v99, v57);
      }

LABEL_19:

      v11 = v104;
    }

LABEL_4:
    if (!--v10)
    {
      return;
    }
  }

  if (v14 > 0x12)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x6BF80) != 0)
  {
    goto LABEL_4;
  }

  v104 = v11;
  if (v14 != 14)
  {
    if (v14 != 16)
    {
LABEL_23:
      if (v14 != 5)
      {
        v76 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v77 = v76[2];
        v78 = *(v77 + 64);
        v79 = *(v77 + 72);
        v80 = v76[4];

        v81 = sub_1D61C787C(v78, v79, v80, type metadata accessor for FormatStateView, &unk_1F50F6FD8);
        v83 = v82;

        v84 = *&v81[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state + 8];
        if (v84 && (v85 = v76[3], *(v85 + 16)) && (v86 = *&v81[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state], , v87 = sub_1D5B69D90(v86, v84), LOBYTE(v86) = v88, , (v86 & 1) != 0))
        {
          v89 = *(*(*(v85 + 56) + 8 * v87) + 32);
          v90 = *&v81[OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView];

          v91 = v90;
          FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v100, v89, v91, v101, v102);
        }

        else
        {
        }
      }

      goto LABEL_4;
    }

    sub_1D61CAF6C(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v66 = *(swift_projectBox() + *(v65 + 48));
    v67 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    v68 = *(v66 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    v69 = *(v68 + 64);
    v70 = *(v68 + 72);
    v71 = *(v66 + 40);

    v72 = sub_1D61C711C(v69, v70, v71);
    v74 = v73;

    v75 = *(v66 + v67);
    v11 = v104;

    FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v100, v75, v72, v101, v102);

    goto LABEL_4;
  }

  sub_1D61CC870(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
  v16 = v15;
  v17 = swift_projectBox();
  v18 = (v17 + *(v16 + 48));
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  v98 = v18[4];
  v99 = v21;
  sub_1D5BC885C(v17, v96, type metadata accessor for FormatVideoPlayerData);
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[12];
  v26 = v103;
  v27 = v94;
  swift_beginAccess();
  v28 = *(v26 + v27);
  v29 = *(v28 + 16);
  v95 = v20;

  v97 = v22;
  v30 = v22;
  v31 = v99;
  sub_1D5EBC314(v30, v99);

  if (!v29)
  {
    goto LABEL_31;
  }

  v32 = sub_1D5B69D90(v23, v24);
  if ((v33 & 1) == 0)
  {
    goto LABEL_31;
  }

  v34 = *(*(v28 + 56) + 8 * v32);
  swift_endAccess();
  v35 = *(v34 + 56);
  if (((v35 >> 59) & 0x1E | (v35 >> 2) & 1) != 0x10)
  {
    goto LABEL_32;
  }

  v23 = *((v35 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v36 = [v23 view];
  if (v36)
  {
    v37 = v36;
    [v36 setAutoresizingMask_];
    if (v25)
    {
      [v37 setAutoresizingMask_];
    }

    v38 = v96;
    sub_1D70F1F40(v23, v96);

    sub_1D5EBC358(v97, v31);
    sub_1D61CCBB4(v38, type metadata accessor for FormatVideoPlayerData);
    goto LABEL_19;
  }

  __break(1u);
LABEL_31:
  swift_endAccess();
LABEL_32:
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1D7263D4C();

  v105 = 0xD000000000000020;
  v106 = 0x80000001D73CD5F0;
  MEMORY[0x1DA6F9910](v23, v24);
  MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
  type metadata accessor for FormatLayoutViewContainer();

  v92 = sub_1D7261DBC();
  MEMORY[0x1DA6F9910](v92);

  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D61C711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(a1, a2), (v10 & 1) == 0))
  {
LABEL_25:
    swift_endAccess();
LABEL_27:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v24 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v24);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);

  v13 = sub_1D6C141D0(v12);

  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_27;
  }

  v15 = v14;
  v16 = *(v11 + 64);
  [v16 setAutoresizingMask_];
  if (a3)
  {
    [v16 setAutoresizingMask_];
  }

  v17 = *(v11 + 72);
  if (!(v17 >> 62))
  {
    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  a2 = sub_1D7263BFC();
  if (a2)
  {
LABEL_8:
    if (a2 >= 1)
    {

      v18 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6FB460](v18, v17);
          if (a3)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v19 = *(v17 + 8 * v18 + 32);
          if (a3)
          {
LABEL_16:
            v20 = sub_1D5E27C2C(&unk_1F50F6F60);
            type metadata accessor for FormatResizeAuto();
            v21 = swift_allocObject();
            swift_beginAccess();
            *(v21 + 16) = v20;
            [v19 setAutoresizingMask_];
            [v19 setAutoresizingMask_];

            goto LABEL_11;
          }
        }

        [v19 setAutoresizingMask_];
LABEL_11:
        ++v18;

        if (a2 == v18)
        {

          goto LABEL_18;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  if (((*(v11 + 56) >> 59) & 0x1E | (*(v11 + 56) >> 2) & 1) == 7)
  {
    v22 = *(v11 + 64);

    v22;
  }

  else
  {
    *(v11 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v15;
}

uint64_t sub_1D61C74E8(unint64_t a1, char **a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(a1, a2), (v10 & 1) == 0))
  {
LABEL_24:
    swift_endAccess();
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v22 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v22);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);

  v13 = sub_1D6C141D0(v12);

  v14 = *(v11 + 64);
  a2 = &selRef_setHyphenationFactor_;
  [v14 setAutoresizingMask_];
  if (a3)
  {
    [v14 setAutoresizingMask_];
  }

  a1 = *(v11 + 72);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v15 = sub_1D7263BFC();
  if (v15)
  {
LABEL_7:
    if (v15 >= 1)
    {
      v23 = v11;

      v16 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA6FB460](v16, a1);
          if (a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = *(a1 + 8 * v16 + 32);
          if (a3)
          {
LABEL_15:
            v18 = sub_1D5E27C2C(&unk_1F50F7000);
            type metadata accessor for FormatResizeAuto();
            v19 = swift_allocObject();
            swift_beginAccess();
            *(v19 + 16) = v18;
            [v17 setAutoresizingMask_];
            [v17 setAutoresizingMask_];

            goto LABEL_10;
          }
        }

        [v17 setAutoresizingMask_];
LABEL_10:
        ++v16;

        if (v15 == v16)
        {

          v11 = v23;
          goto LABEL_17;
        }
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  if (((*(v11 + 56) >> 59) & 0x1E | (*(v11 + 56) >> 2) & 1) == 7)
  {
    v20 = *(v11 + 64);

    v20;
  }

  else
  {
    *(v11 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v13;
}

uint64_t sub_1D61C787C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v12 = *(v5 + v11);
  v31 = a2;
  if (!*(v12 + 16) || (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) == 0))
  {
LABEL_25:
    swift_endAccess();
LABEL_27:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, v31);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v29 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v29);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v16 = *(v15 + 56);

  v17 = sub_1D6C141D0(v16);

  a4(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_27;
  }

  v19 = v18;
  v20 = *(v15 + 64);
  [v20 setAutoresizingMask_];
  if (a3)
  {
    [v20 setAutoresizingMask_];
  }

  v21 = *(v15 + 72);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v22 = sub_1D7263BFC();
  if (v22)
  {
LABEL_8:
    if (v22 >= 1)
    {
      v30 = v19;

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA6FB460](v23, v21);
          if (a3)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v24 = *(v21 + 8 * v23 + 32);
          if (a3)
          {
LABEL_16:
            v25 = sub_1D5E27C2C(a5);
            type metadata accessor for FormatResizeAuto();
            v26 = swift_allocObject();
            swift_beginAccess();
            *(v26 + 16) = v25;
            [v24 setAutoresizingMask_];
            [v24 setAutoresizingMask_];

            goto LABEL_11;
          }
        }

        [v24 setAutoresizingMask_];
LABEL_11:
        ++v23;

        if (v22 == v23)
        {

          v19 = v30;
          goto LABEL_18;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  if (((*(v15 + 56) >> 59) & 0x1E | (*(v15 + 56) >> 2) & 1) == 7)
  {
    v27 = *(v15 + 64);

    v27;
  }

  else
  {
    *(v15 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v19;
}

uint64_t sub_1D61C7C60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 152);
    v22 = *(v4 + 136);
    v23 = v5;
    v24 = *(v4 + 168);
    v25 = *(v4 + 184);
    v6 = *(v4 + 120);
    v20 = *(v4 + 104);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C7DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 248);
    v22 = *(v4 + 232);
    v23 = v5;
    v25 = *(v4 + 280);
    v6 = *(v4 + 216);
    v20 = *(v4 + 200);
    v21 = v6;
    v24 = *(v4 + 264);
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C7EF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 192);
    v22 = *(v4 + 176);
    v23 = v5;
    v24 = *(v4 + 208);
    v25 = *(v4 + 224);
    v6 = *(v4 + 160);
    v20 = *(v4 + 144);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C8034(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v42 = a6;
      v43 = a7;
      v27 = *a4;
      v28 = *(*a4 + 24);
      if (*(v28 + 16) && (v29 = sub_1D6D62AD4(v22), (v30 & 1) != 0))
      {
        v31 = a5;
        v32 = (*(v28 + 56) + 16 * v29);
      }

      else
      {
        v31 = a5;
        v32 = (v27 + 16);
      }

      v33 = *v32;
      v34 = *(v27 + 16);
      v36 = *(v34 + 64);
      v35 = *(v34 + 72);
      v44 = *(v24 + 272);
      v37 = swift_allocObject();
      v38 = MEMORY[0x1E69E7CC0];
      *(v37 + 48) = MEMORY[0x1E69E7CC0];
      *(v37 + 56) = v38;
      *(v37 + 96) = 0;
      swift_unknownObjectWeakInit();
      *(v37 + 16) = v36;
      *(v37 + 24) = v35;
      *(v37 + 96) = &off_1F51E2E28;
      *(v37 + 104) = 0;
      swift_unknownObjectWeakAssign();
      if (v31)
      {
        v39 = 6;
      }

      else
      {
        v39 = *(v33 + 112);
      }

      *(v37 + 32) = v39;
      *(v37 + 72) = v44;
      *(v37 + 64) = v38;
      *(v37 + 40) = *(v33 + 104);
      v45[0] = a8;
      v45[1] = a9;
      v45[2] = a10;

      swift_unknownObjectRetain();

      sub_1D61BB650(v42, v33, v26, v43, v45, a11, v37, a12, a13, a16, a17);
      if ((v31 & 1) == 0)
      {
        *&v26[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

        sub_1D6A5DE80(v40);
      }

      v41 = &v26[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
      swift_beginAccess();
      *v41 = 0;
      *(v41 + 1) = 0xE000000000000000;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D61C8304(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = a3;
  v30 = a7;
  v11 = type metadata accessor for FeedActionSender();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedAction(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedActionInternal(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC885C(a1, v22, type metadata accessor for FeedActionInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D61CCB4C(v22, v18, type metadata accessor for FeedAction);
    sub_1D5BC885C(v18, v14, type metadata accessor for FeedAction);
    v25 = *(a1 + *(type metadata accessor for FeedActionSenderInternal(0) + 20));
    *&v14[*(v11 + 20)] = v25;
    v26 = v25;
    a4(v14);
    sub_1D61CCBB4(v14, type metadata accessor for FeedActionSender);
    return sub_1D61CCBB4(v18, type metadata accessor for FeedAction);
  }

  if (*v22)
  {
    if (*v22 == 1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v24 = (*(a8 + 8))(v30, a8);
      sub_1D71AE300(v24);
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v28 = (*(a8 + 8))(v30, a8);
      sub_1D71AE324(v28);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v27 = (*(a8 + 8))(v30, a8);
    sub_1D71AE2DC(v27);
  }
}

uint64_t sub_1D61C8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    MEMORY[0x1EEE9AC00](v14, v15);
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = a7;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a1;
    sub_1D71AE160(sub_1D61CCC14, v16);
  }

  return result;
}

uint64_t sub_1D61C8740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 192);
  if (v4)
  {
    v5 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = v5;
    v24 = *(v4 + 160);
    v25 = *(v4 + 176);
    v6 = *(v4 + 112);
    v20 = *(v4 + 96);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

void sub_1D61C8880()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong layer];
    [v2 setMask_];
  }
}

uint64_t sub_1D61C88FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for FormatLayoutViewRoute();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 328);
    sub_1D5BC885C(a3, v16, type metadata accessor for FeedItem);
    swift_storeEnumTagMultiPayload();
    (*(a8 + 24))(v31, a7, a8);
    v20 = v31[0];
    v19 = v31[1];
    v21 = v31[2];
    v22 = v31[3];
    sub_1D61CC910(v18 + 40, &v26, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
    if (v27)
    {
      v25[1] = v20;
      v25[2] = v21;
      sub_1D5B63F14(&v26, v28);
      v23 = v29;
      v24 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v24 + 8))(v16, a1, a4, v23, v24);

      sub_1D61CCBB4(v16, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      sub_1D61CCAA4(&v26, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v28[0] = v20;
      v28[1] = v19;
      v28[2] = v21;
      v29 = v22;
      sub_1D6C0A4BC(v16, a1, v28);
      sub_1D61CCBB4(v16, type metadata accessor for FormatLayoutViewRoute);
    }
  }

  return result;
}

uint64_t sub_1D61C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = *a5;
      v24 = *(*a5 + 24);
      if (*(v24 + 16))
      {
        v25 = sub_1D5B69D90(a1, a2);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);
          v28 = *(v23 + 16);
          v29 = *(v28 + 72);
          v35 = *(v28 + 64);
          v30 = *(v27 + 32);
          type metadata accessor for FormatAccessibilityRenderer();
          v31 = swift_allocObject();
          v36 = *(v20 + 272);
          v32 = MEMORY[0x1E69E7CC0];
          *(v31 + 48) = MEMORY[0x1E69E7CC0];
          *(v31 + 56) = v32;
          *(v31 + 96) = 0;
          swift_unknownObjectWeakInit();
          *(v31 + 16) = v35;
          *(v31 + 24) = v29;
          *(v31 + 96) = &off_1F51E2E28;
          *(v31 + 104) = 0;
          swift_unknownObjectWeakAssign();
          *(v31 + 32) = *(v30 + 112);
          *(v31 + 72) = v36;
          *(v31 + 64) = v32;
          *(v31 + 40) = *(v30 + 104);
          v33 = *(v27 + 32);
          memset(v37, 0, sizeof(v37));

          swift_unknownObjectRetain();

          sub_1D61BB650(a6, v33, v22, a7, v37, a8, v31, a9, a10, a12, a13);
          *&v22[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

          v34 = &v22[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
          swift_beginAccess();
          *v34 = 0;
          *(v34 + 1) = 0xE000000000000000;

          return v31;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D61C8E64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 144);
  if (v4)
  {
    v5 = *(v4 + 152);
    v22 = *(v4 + 136);
    v23 = v5;
    v24 = *(v4 + 168);
    v25 = *(v4 + 184);
    v6 = *(v4 + 120);
    v20 = *(v4 + 104);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20[10] = a11;

    MEMORY[0x1EEE9AC00](v18, v19);
    v20[2] = a8;
    v20[3] = a9;
    v20[4] = a10;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    v20[9] = a7;
    sub_1D71AE160(a11, v20);
  }

  return result;
}

uint64_t sub_1D61C90A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 144);
  if (v4)
  {
    v5 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = v5;
    v24 = *(v4 + 160);
    v25 = *(v4 + 176);
    v6 = *(v4 + 112);
    v20 = *(v4 + 96);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

void *sub_1D61C91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for FormatLayoutViewRoute();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v29 = a4;
      v20 = v17[41];
      sub_1D5BC885C(a3, v15, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      result = [v19 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v21 = result;
      (*(a8 + 24))(v35, a7, a8);
      v22 = v35[0];
      v23 = v35[1];
      v25 = v35[2];
      v24 = v35[3];
      sub_1D61CC910(v20 + 40, &v30, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (!v31)
      {
        sub_1D61CCAA4(&v30, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
        v32[0] = v22;
        v32[1] = v23;
        v32[2] = v25;
        v33 = v24;
        sub_1D6C0A4BC(v15, v21, v32);

        sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
      }

      v28[0] = v25;
      v28[1] = v20;
      v28[2] = v24;
      sub_1D5B63F14(&v30, v32);
      v27 = v33;
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      (*(v26 + 8))(v15, v21, v29, v27, v26);

      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }

  return result;
}

uint64_t sub_1D61C9574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725E84C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7FB8], v5);
    v12 = *(v11 + 288);
    v18[5] = sub_1D725A60C();
    v18[6] = sub_1D61CAB08();
    v18[2] = v12;
    v19 = 0u;
    v20 = 0u;
    v21 = 1;
    sub_1D725E36C();
    swift_allocObject();

    v13 = a1;
    v14 = sub_1D725E34C();
    v15 = *(v11 + 280);
    v16 = *(a3 + 56);
    v17 = swift_unknownObjectRetain();
    v16(v17, v15, v14);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D61C973C(void *a1, void (*a2)(_BYTE *), uint64_t a3, char a4)
{
  v7 = type metadata accessor for FeedActionSender();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = a4;
  type metadata accessor for FeedAction(0);
  swift_storeEnumTagMultiPayload();
  *&v11[*(v8 + 28)] = a1;
  v12 = a1;
  a2(v11);
  return sub_1D61CCBB4(v11, type metadata accessor for FeedActionSender);
}

uint64_t sub_1D61C9814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v48 = a6;
  v47 = a5;
  v50 = a1;
  v11 = type metadata accessor for FormatLayoutViewRoute();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v47 - v17;
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for FeedItem(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v51 = result;
  if (result)
  {
    sub_1D61CC910(a3, v22, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1D61CCAA4(v22, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
      v29 = *(v51 + 328);
      sub_1D5BC885C(a4, v18, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      (*(a9 + 24))(&v59, v49, a9);
      v30 = v59;
      v31 = v60;
      v32 = v61;
      v33 = v62;
      sub_1D61CC910(v29 + 40, &v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (v53)
      {
        v49 = v32;
        sub_1D5B63F14(&v52, &v54);
        v34 = v57;
        v35 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        (*(v35 + 8))(v18, v50, v47, v34, v35);

        v45 = type metadata accessor for FormatLayoutViewRoute;
        v46 = v18;
LABEL_10:
        sub_1D61CCBB4(v46, v45);
        __swift_destroy_boxed_opaque_existential_1(&v54);
      }

      sub_1D61CCAA4(&v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v54 = v30;
      v55 = v31;
      v56 = v32;
      v57 = v33;
      sub_1D6C0A4BC(v18, v50, &v54);
      sub_1D61CCBB4(v18, type metadata accessor for FormatLayoutViewRoute);
    }

    else
    {
      sub_1D61CCB4C(v22, v27, type metadata accessor for FeedItem);
      v36 = *(v51 + 328);
      sub_1D61CCC84();
      v38 = *(v37 + 48);
      sub_1D5BC885C(a4, v14, type metadata accessor for FeedItem);
      sub_1D5BC885C(v27, &v14[v38], type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      (*(a9 + 24))(&v59, v49, a9);
      v39 = v59;
      v40 = v60;
      v41 = v61;
      v42 = v62;
      sub_1D61CC910(v36 + 40, &v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (v53)
      {
        v48 = v41;
        v49 = v36;
        sub_1D5B63F14(&v52, &v54);
        v43 = v57;
        v44 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        (*(v44 + 8))(v14, v50, v47, v43, v44);

        sub_1D61CCBB4(v14, type metadata accessor for FormatLayoutViewRoute);
        v45 = type metadata accessor for FeedItem;
        v46 = v27;
        goto LABEL_10;
      }

      sub_1D61CCAA4(&v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v54 = v39;
      v55 = v40;
      v56 = v41;
      v57 = v42;
      sub_1D6C0A4BC(v14, v50, &v54);
      sub_1D61CCBB4(v14, type metadata accessor for FormatLayoutViewRoute);
      sub_1D61CCBB4(v27, type metadata accessor for FeedItem);
    }
  }

  return result;
}

uint64_t FormatLayoutViewRenderer.deinit()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  sub_1D5B87E10(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 224);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t FormatLayoutViewRenderer.__deallocating_deinit()
{
  FormatLayoutViewRenderer.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D61CA168(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D61BAB5C;
}

void (*sub_1D61CA234(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FormatLayoutViewRenderer.analyticsDataProvider.modify(v2);
  return sub_1D5FE8C5C;
}

uint64_t sub_1D61CA3F8(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61CA48C@<X0>(uint64_t a1@<X8>)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1D71B0070(v4, a1);
}

uint64_t sub_1D61CA538(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D61CA554(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for FormatItemNodeData() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[4];
  v9 = *(v1 + v7);
  v10 = v1 + ((v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80));

  return sub_1D61C64F8(a1, v8, v1 + v6, v9, v10, v3, v4);
}

uint64_t sub_1D61CA640(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D61CA6C8(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 96);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v6 + 8 * v5);
    if ((v7 >> 59) & 0x1E | (v7 >> 2) & 1)
    {
      goto LABEL_5;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[13];

    v13 = sub_1D61C787C(v10, v11, v12, type metadata accessor for FormatImageView, &unk_1F50F6F10);
    v15 = v14;
    v16 = v13;
    LOBYTE(v10) = sub_1D725FB9C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    v17 = v8[12];
    if (v17 && (v18 = *(v17 + 120), v18 != 3))
    {
      *&v28[0] = *(v17 + 120);
      sub_1D5D0AFBC(v18);
      v19 = sub_1D6FFCF10(a3);
      sub_1D5D0AFCC(*&v28[0]);
    }

    else
    {
      v19 = 0;
    }

    if ((v9 >> 61) > 1)
    {
      if (v9 >> 61 != 6)
      {
        goto LABEL_18;
      }

LABEL_4:

      v6 = v3 + 32;
      goto LABEL_5;
    }

    if (v9 >> 61 != 1)
    {
LABEL_18:

      return 0;
    }

    v20 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
    v28[5] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    v28[6] = v20;
    v21 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
    v28[7] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
    v29 = v21;
    v22 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v28[1] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v28[2] = v22;
    v23 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
    v28[3] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v28[4] = v23;
    v28[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = v29;
    sub_1D61CAA58(v28, v27);
    v24(v27, a3, v19);

    sub_1D61CAAB4(v28);
    v25 = v27[3];
    sub_1D61CCAA4(v27, &qword_1EDF3B6B0, &qword_1EDF3B6C0, MEMORY[0x1E69D7838], sub_1D5BFB8A8);

    v6 = v3 + 32;
    if (v25)
    {
      return 0;
    }

LABEL_5:
    if (v4 == ++v5)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D61CAB08()
{
  result = qword_1EDF3BED0;
  if (!qword_1EDF3BED0)
  {
    sub_1D725A60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BED0);
  }

  return result;
}

void sub_1D61CAB60()
{
  if (!qword_1EDF29EA0)
  {
    type metadata accessor for WebEmbedImageRequest();
    type metadata accessor for WebEmbedImageGenerator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF29EA0);
    }
  }
}

void sub_1D61CABD4()
{
  v1 = *(v0 + 32);
  sub_1D7047510(*(v0 + 48), *(*(v0 + 56) + 112), *(*(v0 + 56) + 176), *(*(v0 + 56) + 192), *(*(v0 + 56) + 208));
  v2 = *v1;
  *v1 = v3;
}

uint64_t sub_1D61CAC28(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61CACE4(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(type metadata accessor for FormatItemNodeData() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C9814(a1, v1[5], v1 + v7, v1 + v10, *(v1 + v11), v1 + ((v11 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80)), v3, v4, v5);
}

uint64_t sub_1D61CAEB4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = (*(*(v2[3] - 8) + 80) + 88) & ~*(*(v2[3] - 8) + 80);
  v4 = (*(*(v2[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8FAC(a1, v2[5], (v2 + 6), v2 + v3, *(v2 + v4), *(v2 + v4 + 8), *(v2 + v4 + 16), v2[2], v2[3], v2[4], a2);
}

void sub_1D61CAF6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D61CAFE8()
{
  if (!qword_1EDF2CDF0[0])
  {
    type metadata accessor for FormatAdMetricsData();
    type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
    sub_1D61BB5EC(255, qword_1EDF1FAC0, type metadata accessor for FormatFrameNodeLayoutAttributes, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EDF2CDF0);
    }
  }
}

uint64_t sub_1D61CB0A0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[3] - 8) + 80) + 96) & ~*(*(v2[3] - 8) + 80);
  v4 = (*(*(v2[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8C00(a1, a2, v2[5], v2[6], v2 + 7, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2[2], v2[3], v2[4]);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for FeedItem(0) - 8);
  v96 = *(v2 + 64);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 48) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 1u:

      if (*(v6 + 80) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 2u:

      v47 = type metadata accessor for FeedBannerAd();
      v48 = *(v47 + 20);
      v49 = sub_1D7260DDC();
      goto LABEL_95;
    case 3u:
      v95 = v1;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v50 = type metadata accessor for FeedHeadline(0);
      v51 = v50[10];
      v52 = v6 + v51 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v53 = type metadata accessor for SharedItem();
      if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
      {
        v54 = sub_1D725891C();
        (*(*(v54 - 8) + 8))(v52, v54);

        v55 = *(v53 + 28);
        v56 = sub_1D72585BC();
        (*(*(v56 - 8) + 8))(v52 + v55, v56);
      }

      v57 = v50[11];
      v58 = sub_1D726045C();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v6 + v57, 1, v58))
      {
        (*(v59 + 8))(v6 + v57, v58);
      }

      v1 = v95;
      if (*(v6 + v50[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v6 + v50[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_125;
    case 4u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v94 = v1;

      v21 = type metadata accessor for FeedWebEmbed();
      v22 = v21[8];
      v23 = sub_1D72585BC();
      v24 = *(v23 - 8);
      v91 = *(v24 + 8);
      v91(v6 + v22, v23);
      v25 = v21[9];
      if (!(*(v24 + 48))(v6 + v25, 1, v23))
      {
        v91(v6 + v25, v23);
      }

      v90 = v23;

      v26 = v6 + v21[12];
      v27 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v27 - 1) + 48))(v26, 1, v27))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v28 = v27[10];
        v86 = v26 + v28 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v88 = type metadata accessor for SharedItem();
        if (!(*(*(v88 - 8) + 48))(v86, 1))
        {
          v29 = sub_1D725891C();
          (*(*(v29 - 8) + 8))(v86, v29);

          v91(v86 + *(v88 + 28), v90);
        }

        v30 = v27[11];
        v31 = sub_1D726045C();
        v87 = *(v31 - 8);
        v89 = v30;
        v32 = v26 + v30;
        v33 = v31;
        if (!(*(v87 + 48))(v32, 1, v31))
        {
          (*(v87 + 8))(v26 + v89, v33);
        }

        if (*(v26 + v27[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v26 + v27[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v34 = v6 + v21[13];
      v35 = type metadata accessor for WebEmbedDataVisualization();
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v36 = type metadata accessor for GenericDataVisualization();
          v91(v34 + *(v36 + 20), v90);
        }

        else
        {
        }
      }

      goto LABEL_124;
    case 5u:
      goto LABEL_81;
    case 6u:
      v60 = *(v6 + 281);
      if (v60 == 2)
      {
        goto LABEL_85;
      }

      if (v60 == 1)
      {

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
        }

        v74 = *(v6 + 144);
        if (v74)
        {

          if (*(v6 + 224) != 1)
          {
          }

          if (*(v6 + 272) >= 0x12uLL)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if (*(v6 + 281))
        {
          goto LABEL_125;
        }

LABEL_81:

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_125;
    case 7u:
LABEL_85:

      swift_unknownObjectRelease();

      if (*(v6 + 88) != 1)
      {

        if (*(v6 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1(v6 + 96);
        }
      }

      goto LABEL_125;
    case 8u:
      v94 = v1;

      v61 = v6 + *(type metadata accessor for FeedCustomItem() + 20);

      v62 = *(type metadata accessor for FormatCustomItem.Resolved() + 24);
      v63 = type metadata accessor for FormatCustomItem.Action();
      if (!(*(*(v63 - 8) + 48))(v61 + v62, 1, v63))
      {
        v64 = sub_1D72585BC();
        (*(*(v64 - 8) + 8))(v61 + v62, v64);
      }

LABEL_124:

      v1 = v94;
      goto LABEL_125;
    case 9u:

      if (*(v6 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 32);
      }

      if (*(v6 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 72);
      }

      if (*(v6 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 112);
      }

      goto LABEL_125;
    case 0xAu:

      v47 = type metadata accessor for FeedEngagementBanner();
      v48 = *(v47 + 20);
      v49 = sub_1D725C08C();
LABEL_95:
      (*(*(v49 - 8) + 8))(v6 + v48, v49);
      if (*(v6 + *(v47 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 0xBu:

      goto LABEL_125;
    case 0xCu:

      if (*(v6 + 40) >= 0x12uLL)
      {
      }

      if (*(v6 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v37 = type metadata accessor for FeedRecipe();
      v38 = v37[9];
      v39 = v6 + v38 + *(type metadata accessor for FeedRecipe.State() + 20);
      v40 = type metadata accessor for SharedItem();
      if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
      {
        v41 = sub_1D725891C();
        (*(*(v41 - 8) + 8))(v39, v41);

        v42 = *(v40 + 28);
        v43 = sub_1D72585BC();
        (*(*(v43 - 8) + 8))(v39 + v42, v43);
      }

      v44 = v6 + v37[10];
      if (*(v44 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
      }

      v45 = v6 + v37[12];
      if (*(v45 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = v6 + v37[13];
      if (*(v46 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      goto LABEL_125;
    case 0xDu:
      goto LABEL_68;
    case 0xEu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 88);
      }

      if (*(v6 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 128);
      }

      if (*(v6 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 168);
      }

      goto LABEL_125;
    case 0xFu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

LABEL_68:

      swift_unknownObjectRelease();
      goto LABEL_125;
    case 0x10u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v7 = v6 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      swift_unknownObjectRelease();
      v8 = v7 + *(type metadata accessor for PuzzleStatistic() + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v78 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v78 - 8) + 48))(v8, 1, v78))
          {
            v79 = sub_1D725891C();
            (*(*(v79 - 8) + 8))(v8, v79);
            v80 = type metadata accessor for PuzzleLeaderboardEntry();

            v81 = v8 + *(v80 + 24);

            v82 = *(v81 + 40);
            if (v82 >> 60 != 15)
            {
              sub_1D5B952F8(*(v81 + 32), v82);
            }

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v65 = v8;
          v93 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v66 = *(v93 + 28);
          v67 = type metadata accessor for PuzzleStreak();
          v68 = *(*(v67 - 8) + 48);
          v92 = v66;
          v69 = v65 + v66;
          v70 = v65;
          if (!v68(v69, 1, v67))
          {
            v71 = sub_1D7257ADC();
            (*(*(v71 - 8) + 8))(v65 + v92, v71);
          }

          v72 = *(v93 + 32);
          if (!v68(v70 + v72, 1, v67))
          {
            v73 = sub_1D7257ADC();
            (*(*(v73 - 8) + 8))(v70 + v72, v73);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_125;
        }

        type metadata accessor for PuzzleStatisticValue(0);
        v10 = swift_getEnumCaseMultiPayload();
        if (v10 == 6 || v10 == 5)
        {
          v11 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v11 - 8) + 48))(v8, 1, v11))
          {
            v12 = sub_1D7257ADC();
            (*(*(v12 - 8) + 8))(v8, v12);
          }
        }

        v13 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v14 = *(v13 + 20);
        v15 = swift_getEnumCaseMultiPayload();
        if (v15 == 6 || v15 == 5)
        {
          v16 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v16 - 8) + 48))(v8 + v14, 1, v16))
          {
            v17 = sub_1D7257ADC();
            (*(*(v17 - 8) + 8))(v8 + v14, v17);
          }
        }

        v18 = *(v13 + 24);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 == 6)
        {
          v84 = type metadata accessor for PuzzleStreak();
          if ((*(*(v84 - 8) + 48))(v8 + v18, 1, v84))
          {
            goto LABEL_125;
          }

          goto LABEL_129;
        }

        if (v19 == 5)
        {
          v20 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v20 - 8) + 48))(v8 + v18, 1, v20))
          {
LABEL_129:
            v85 = sub_1D7257ADC();
            (*(*(v85 - 8) + 8))(v8 + v18, v85);
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v75 = swift_getEnumCaseMultiPayload();
        if (v75 == 6 || v75 == 5)
        {
          v76 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v76 - 8) + 48))(v8, 1, v76))
          {
            v77 = sub_1D7257ADC();
            (*(*(v77 - 8) + 8))(v8, v77);
          }
        }
      }

LABEL_125:

      (*(v4 + 8))(v0 + ((((v96 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v1);

      return swift_deallocObject();
    case 0x11u:

      if (*(v6 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 240) < 0x12uLL)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    default:
      goto LABEL_125;
  }
}

void *sub_1D61CC33C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for FeedItem(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C91E0(v0[5], v0[6], v0 + v5, *(v0 + v6), v0 + ((v6 + *(*(v2 - 8) + 80) + 8) & ~*(*(v2 - 8) + 80)), v1, v2, v3);
}

uint64_t sub_1D61CC41C(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, &qword_1EDF29E98, sub_1D61CAB60, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61CC4BC(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for FeedItem(0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[5];
  v10 = *(v1 + v8);
  v11 = v1 + ((v8 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80));

  return sub_1D61C88FC(a1, v9, v1 + v7, v10, v11, v3, v4, v5);
}

uint64_t sub_1D61CC60C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1D5EBC314(a3, a4);
  }

  return result;
}

uint64_t sub_1D61CC678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1D5EBC358(a3, a4);
  }

  return result;
}

uint64_t sub_1D61CC6E4(uint64_t *a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 97) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8034(a1, *(v1 + 40), *(v1 + 48), (v1 + 56), *(v1 + 96), v1 + v2, *(v1 + v3), *(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1D61CC7C8(uint64_t a1)
{
  v2 = (*(*(v1[3] - 8) + 80) + 48) & ~*(*(v1[3] - 8) + 80);
  v3 = v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D61C8304(a1, v1[5], v1 + v2, *v3, *(v3 + 1), v1[2], v1[3], v1[4]);
}

void sub_1D61CC870(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D61BB5EC(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D61CC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t objectdestroy_85Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 72))
  {
  }

  v5 = (v3 + 88) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1D61CCAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D61CCB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61CCBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61CCC84()
{
  if (!qword_1EC8938A0)
  {
    type metadata accessor for FeedItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8938A0);
    }
  }
}

uint64_t FormatSectionDescriptor.identifier.getter()
{
  v1 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v12, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v12, v8);
  sub_1D61CD984(v8, v4, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v8, type metadata accessor for FormatPluginData);
  v13 = *v4;

  sub_1D61CCEF0(v4, type metadata accessor for FormatContent.Resolved);
  return v13;
}

uint64_t type metadata accessor for FormatSectionDescriptor()
{
  result = qword_1EDF0D3D0;
  if (!qword_1EDF0D3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61CCEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatSectionDescriptor.slotItems.getter()
{
  v1 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  v9 = FormatContent.Resolved.slotItems.getter();
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v9;
}

uint64_t FormatSectionDescriptor.formatContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v10, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v10, v6);
  sub_1D61CD984(v6, a1, type metadata accessor for FormatContent.Resolved);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.hasItemConstrainingHeight.getter()
{
  v1 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CD984(v4, v12, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  v13 = FormatContent.Resolved.compilerOptionIdentifiers.getter();
  sub_1D61CCEF0(v12, type metadata accessor for FormatContent.Resolved);
  v14 = sub_1D5BE240C(0xD000000000000018, 0x80000001D73CDA20, v13);

  return v14 & 1;
}

uint64_t sub_1D61CD328()
{
  v1 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v12, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v12, v8);
  sub_1D61CD984(v8, v4, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v8, type metadata accessor for FormatPluginData);
  v13 = *v4;

  sub_1D61CCEF0(v4, type metadata accessor for FormatContent.Resolved);
  return v13;
}

uint64_t static FormatSectionDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D61CD594();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D61CD984(a1, v7, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CD984(a2, &v7[v9], type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(&v7[v9], type metadata accessor for FormatPluginData);
  sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
  return 1;
}

void sub_1D61CD594()
{
  if (!qword_1EDF0D358[0])
  {
    type metadata accessor for FormatSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF0D358);
    }
  }
}

uint64_t sub_1D61CD5F8(uint64_t a1, uint64_t a2)
{
  sub_1D61CD594();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D61CD984(a1, v7, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CD984(a2, &v7[v9], type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(&v7[v9], type metadata accessor for FormatPluginData);
  sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
  return 1;
}

uint64_t FormatSectionDescriptor.feedLayoutOrder.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 1;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.feedGroupKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 0x8000000000000030;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.feedGroupDebug.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v11, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v11, v7);
  sub_1D61CD984(&v7[*(v4 + 32)], a1, sub_1D5D6013C);
  return sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CD984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61CD9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 1;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CDA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 0x8000000000000030;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CDB58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v11, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v11, v7);
  sub_1D61CD984(&v7[*(v4 + 32)], a1, sub_1D5D6013C);
  return sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.isImpressionable.getter()
{
  v1 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CDD9C();
  v9 = sub_1D725D11C();
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v9 & 1;
}

unint64_t sub_1D61CDD9C()
{
  result = qword_1EDF112B8;
  if (!qword_1EDF112B8)
  {
    type metadata accessor for FormatPluginData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF112B8);
  }

  return result;
}

uint64_t sub_1D61CDDF4()
{
  v1 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CDD9C();
  LOBYTE(v8) = sub_1D725D11C();
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v8 & 1;
}

uint64_t FormatSectionDescriptor.allowAdjacentAd.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 3;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.adGroupKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  v7 = *MEMORY[0x1E69B3FB8];
  v8 = sub_1D72605EC();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.tag.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 60)];
  swift_unknownObjectRetain();
  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t FormatSectionDescriptor.adKeywords.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 32)];

  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t FormatSectionDescriptor.allowsPrerollAds.getter()
{
  v1 = type metadata accessor for FormatSectionDescriptor();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v4, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return 1;
}

uint64_t sub_1D61CE498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 3;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CE544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  v7 = *MEMORY[0x1E69B3FB8];
  v8 = sub_1D72605EC();
  (*(*(v8 - 8) + 104))(a3, v7, v8);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CE630()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 60)];
  swift_unknownObjectRetain();
  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t sub_1D61CE7C8()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 32)];

  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t sub_1D61CE960(uint64_t a1, uint64_t a2)
{
  sub_1D61CE9CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1D61CE9CC()
{
  if (!qword_1EDF112C0)
  {
    v0 = type metadata accessor for FormatPluginData();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF112C0);
    }
  }
}

uint64_t sub_1D61CEA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61CE9CC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D61CEA90(uint64_t a1)
{
  sub_1D61CE9CC();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for FormatPluginData();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

NewsFeed::FormatSizeConstraint_optional __swiftcall FormatSizeConstraint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D61CEBA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 1702521203;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (*a2 != 1)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6874646977;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D61CEC8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61CED20()
{
  sub_1D72621EC();
}

uint64_t sub_1D61CEDA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61CEE3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746867696568;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatSizeConstraint.description.getter()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

unint64_t sub_1D61CEF54()
{
  result = qword_1EC884E98;
  if (!qword_1EC884E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E98);
  }

  return result;
}

unint64_t sub_1D61CEFA8(uint64_t a1)
{
  *(a1 + 8) = sub_1D61CEFD8();
  result = sub_1D61CF02C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61CEFD8()
{
  result = qword_1EC884EA0;
  if (!qword_1EC884EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EA0);
  }

  return result;
}

unint64_t sub_1D61CF02C()
{
  result = qword_1EDF0ED30;
  if (!qword_1EDF0ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED30);
  }

  return result;
}

unint64_t sub_1D61CF080(uint64_t a1)
{
  result = sub_1D61CF0A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61CF0A8()
{
  result = qword_1EC884EA8;
  if (!qword_1EC884EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EA8);
  }

  return result;
}

unint64_t sub_1D61CF0FC(void *a1)
{
  a1[1] = sub_1D61CF134();
  a1[2] = sub_1D61CF188();
  result = sub_1D61CEF54();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61CF134()
{
  result = qword_1EDF0ED28;
  if (!qword_1EDF0ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED28);
  }

  return result;
}

unint64_t sub_1D61CF188()
{
  result = qword_1EDF0ED38;
  if (!qword_1EDF0ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED38);
  }

  return result;
}

uint64_t sub_1D61CF1DC()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1D61CF274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t FormatSwitchNodeDefault.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t FormatSwitchNodeDefault.__allocating_init(children:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t FormatSwitchNodeDefault.init(children:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t FormatSwitchNodeDefault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D61CF460(uint64_t a1)
{
  result = sub_1D61CF530(&qword_1EC884EB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61CF4A4(void *a1)
{
  a1[1] = sub_1D61CF530(&qword_1EDF26EB0);
  a1[2] = sub_1D61CF530(&qword_1EDF0D318);
  result = sub_1D61CF530(&qword_1EC884EB8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D61CF530(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSwitchNodeDefault();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D61CF594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D633E44C(v4, v5);

  return v6 & 1;
}

unint64_t sub_1D61CF690(uint64_t a1)
{
  result = sub_1D61CF6B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61CF6B8()
{
  result = qword_1EC884EC0;
  if (!qword_1EC884EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EC0);
  }

  return result;
}

unint64_t sub_1D61CF70C(void *a1)
{
  a1[1] = sub_1D5CA16F8();
  a1[2] = sub_1D61CF744();
  result = sub_1D61CF798();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61CF744()
{
  result = qword_1EDF0A828;
  if (!qword_1EDF0A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A828);
  }

  return result;
}

unint64_t sub_1D61CF798()
{
  result = qword_1EC884EC8;
  if (!qword_1EC884EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EC8);
  }

  return result;
}

id CoverIssueFontBook.followButtonFontBook.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v9 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v9;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

void __swiftcall CoverIssueFontBook.init(titleFont:accessoryFont:followButtonFontBook:)(NewsFeed::CoverIssueFontBook *__return_ptr retstr, UIFont titleFont, UIFont accessoryFont, NewsFeed::CoverIssueFontBook::FollowButtonFontBook followButtonFontBook)
{
  retstr->titleFont = titleFont;
  retstr->accessoryFont = accessoryFont;
  v4 = *(followButtonFontBook.followButtonFont.super.isa + 1);
  *&retstr->followButtonFontBook.followButtonFont.super.isa = *followButtonFontBook.followButtonFont.super.isa;
  *&retstr->followButtonFontBook.plusSignFont.super.isa = v4;
}

uint64_t sub_1D61CF89C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t SportsEmbedConfigResourceGroup.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsEmbedConfigResourceGroup.embeds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SportsEmbedConfigResourceGroup.record.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D60531A0(v2, v3);
}

uint64_t sub_1D61CF99C()
{
  v1 = 0x736465626D65;
  if (*v0 != 1)
  {
    v1 = 0x64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D61CF9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61D05AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61CFA10(uint64_t a1)
{
  v2 = sub_1D61CFCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61CFA4C(uint64_t a1)
{
  v2 = sub_1D61CFCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceGroup.encode(to:)(void *a1)
{
  sub_1D61D0344(0, &qword_1EC884ED0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61CFCB8();
  sub_1D7264B5C();
  LOBYTE(v22) = 0;
  v11 = v21;
  sub_1D72643FC();
  if (!v11)
  {
    v13 = v17;
    v12 = v18;
    v14 = v19;
    if (*(v20 + 16))
    {
      v26 = 1;
      v22 = v20;
      sub_1D61CFD0C();
      sub_1D61CFD80();
      sub_1D61CFDD0();
      sub_1D72647EC();
    }

    v22 = v14;
    v23 = v12;
    v24 = v13;
    v25 = v16;
    v26 = 2;
    sub_1D60531A0(v14, v12);
    sub_1D61CFE9C();
    sub_1D72643BC();
    sub_1D5D559EC(v22, v23);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D61CFCB8()
{
  result = qword_1EDF09A28;
  if (!qword_1EDF09A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A28);
  }

  return result;
}

unint64_t sub_1D61CFD0C()
{
  result = qword_1EC884ED8;
  if (!qword_1EC884ED8)
  {
    sub_1D61D0344(255, &qword_1EC884ED0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884ED8);
  }

  return result;
}

void sub_1D61CFD80()
{
  if (!qword_1EDF04C90)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04C90);
    }
  }
}

unint64_t sub_1D61CFDD0()
{
  result = qword_1EC884EE0;
  if (!qword_1EC884EE0)
  {
    sub_1D61CFD80();
    sub_1D61CFE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EE0);
  }

  return result;
}

unint64_t sub_1D61CFE48()
{
  result = qword_1EDF0BD88;
  if (!qword_1EDF0BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD88);
  }

  return result;
}

unint64_t sub_1D61CFE9C()
{
  result = qword_1EC884EE8;
  if (!qword_1EC884EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EE8);
  }

  return result;
}

uint64_t SportsEmbedConfigResourceGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  sub_1D61D0288();
  v4 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61D0344(0, &qword_1EDF03938, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61CFCB8();
  v14 = v31;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v15 = v10;
  LOBYTE(v32) = 0;
  v27 = sub_1D72642BC();
  v28 = v17;
  LOBYTE(v32) = 1;
  v18 = sub_1D726434C();
  if (v18)
  {
    v36 = 1;
    sub_1D61D03FC();
    sub_1D726431C();
    v19 = sub_1D725A74C();
    (*(v29 + 8))(v7, v4);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v36 = 2;
  sub_1D61D03A8();
  sub_1D726427C();
  v20 = v30;
  (*(v15 + 8))(v13, v9);
  v22 = v32;
  v21 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v28;
  *v20 = v27;
  v20[1] = v25;
  v20[2] = v19;
  v20[3] = v22;
  v20[4] = v21;
  v20[5] = v23;
  v20[6] = v24;

  sub_1D60531A0(v22, v21);
  __swift_destroy_boxed_opaque_existential_1(v31);

  return sub_1D5D559EC(v22, v21);
}

void sub_1D61D0288()
{
  if (!qword_1EDF17EC8)
  {
    sub_1D61D02F0();
    sub_1D61CFE48();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17EC8);
    }
  }
}

unint64_t sub_1D61D02F0()
{
  result = qword_1EDF0BD80;
  if (!qword_1EDF0BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD80);
  }

  return result;
}

void sub_1D61D0344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61CFCB8();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61D03A8()
{
  result = qword_1EDF09158;
  if (!qword_1EDF09158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09158);
  }

  return result;
}

unint64_t sub_1D61D03FC()
{
  result = qword_1EDF17ED0;
  if (!qword_1EDF17ED0)
  {
    sub_1D61D0288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17ED0);
  }

  return result;
}

unint64_t sub_1D61D04A8()
{
  result = qword_1EC884EF0;
  if (!qword_1EC884EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EF0);
  }

  return result;
}

unint64_t sub_1D61D0500()
{
  result = qword_1EDF09A18;
  if (!qword_1EDF09A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A18);
  }

  return result;
}

unint64_t sub_1D61D0558()
{
  result = qword_1EDF09A20;
  if (!qword_1EDF09A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A20);
  }

  return result;
}

uint64_t sub_1D61D05AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736465626D65 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
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

id FeedScoredHeadline.init(headline:scoreProfile:)@<X0>(id result@<X0>, id a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

id FeedScoredHeadline.item.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = 0;
  swift_unknownObjectRetain();

  return v3;
}

uint64_t _s8NewsFeed0B14ScoredHeadlineV10identifierSSvg_0()
{
  v1 = [*v0 articleID];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D61D0864(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D726207C();

  return v4;
}

uint64_t FeedScoredHeadline.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D61D0980()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t Sequence<>.items.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1D6EBA4D4(sub_1D61D0A98, 0, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
}

{
  return sub_1D6EBA4D4(sub_1D6724380, 0, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
}

id sub_1D61D0A98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = 0;
  swift_unknownObjectRetain();
  return v2;
}