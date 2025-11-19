uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = CircularBuffer.startIndex.getter(a2, a3, a4);
  CircularBuffer.index(_:offsetBy:)(v12, a1, a2, a3, a4);

  return CircularBuffer.subscript.getter(a5, a6);
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003CD6EC(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void sub_1003CB224(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1003CD6EC(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1003CD6EC((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  if (keepingCapacity)
  {
    v9 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v9);
  }

  else
  {
    sub_1004A6904();
    sub_1004A68F4(0);
    (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
    sub_1004A68E4();
  }

  v2[1] = 0;
  v2[2] = 0;
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v16 = v4;
  if (CircularBuffer.count.getter(v10, v11, v12) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[1] = v11;
      return;
    }

    sub_1004A6904();
    sub_1004A6874();
    sub_1004A6874();
    v13 = *(*(v16 - 8) + 56);
    while (1)
    {
      v13(v9, 1, 1, v16);
      sub_1004A6874();
      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(*v2 + 16) <= v11)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v9, v5);
      v14 = *v2;
      v11 = (sub_1004A68C4() + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

void CircularBuffer.modify<A>(_:_:)(unsigned int a1, void (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1004A6374();
  sub_1004A6904();
  sub_1004A6874();
  if (*(*v4 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *v4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
    if ((*(*(v6 - 8) + 48))(v9, 1, v6) != 1)
    {
      a2(v9);
      return;
    }
  }

  __break(1u);
}

uint64_t CircularBuffer.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1004A6374();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  CircularBuffer.first.getter(*v2, *(v2 + 8), *(v2 + 16), v4, &v10 - v7);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a2, v8, v4);
    type metadata accessor for CircularBuffer();
    CircularBuffer.removeFirst(_:)(1);
  }
}

uint64_t CircularBuffer.popLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1004A6374();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v10 - v7;
  v10[1] = *v2;
  v11 = *(v2 + 8);
  swift_getWitnessTable();
  sub_1004A55D4();
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a2, v8, v4);
    type metadata accessor for CircularBuffer();
    CircularBuffer.removeLast(_:)(1);
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = v2[2];
  if (CircularBuffer.count.getter(*v2, v2[1], v10) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[2] = v10;
      return;
    }

    v11 = sub_1004A6904();
    sub_1004A6874();
    v15[1] = v11;
    sub_1004A6874();
    while (1)
    {
      v12 = *v2;
      v13 = sub_1004A68C4() - 1;
      (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
      sub_1004A6874();
      v10 = v13 & (v10 - 1);
      if (v10 < 0 != v14)
      {
        break;
      }

      if (*(*v2 + 16) <= v10)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9, v5);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    CircularBuffer.startIndex.getter(a1, a2, a3);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  v8 = *(*(a4 - 8) + 56);

  return v8(a5, v7, 1, a4);
}

uint64_t CircularBuffer.removeSubrange(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = HIDWORD(a2);
  v6 = *(a3 + 16);
  v29 = *(v6 - 8);
  v30 = a3;
  v7 = *(v29 + 64);
  v8 = HIWORD(a2);
  __chkstk_darwin(a1);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CircularBuffer.Index();
  LODWORD(v38) = a2;
  v33 = v5;
  WORD2(v38) = v5;
  BYTE6(v38) = v8;
  HIBYTE(v38) = HIBYTE(a2) & 1;
  v10 = *v3;
  v11 = v3[1];
  v27 = v3 + 1;
  v31 = v3;
  v12 = v3[2];
  v13 = CircularBuffer.startIndex.getter(v10, v11, v12);
  v34 = v13;
  v35 = WORD2(v13);
  v36 = BYTE6(v13);
  v37 = HIBYTE(v13) != 0;
  swift_getWitnessTable();
  result = sub_1004A5674();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  LODWORD(v38) = a2;
  WORD2(v38) = v33;
  BYTE6(v38) = v8;
  HIBYTE(v38) = HIBYTE(a2) & 1;
  v15 = CircularBuffer.endIndex.getter(v10, v11, v12);
  v34 = v15;
  v35 = WORD2(v15);
  v36 = BYTE6(v15);
  v37 = HIBYTE(v15) != 0;
  result = sub_1004A5684();
  if ((result & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = v32;
  v17 = CircularBuffer.distance(from:to:)(v32 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL);
  if (v17 == 1)
  {
    v18 = v16 & 0x1FFFFFFFFFFFFFFLL;
    v19 = v28;
    CircularBuffer.remove(at:)(v18, v30, v28);
    return (*(v29 + 8))(v19, v6);
  }

  else if (CircularBuffer.count.getter(v10, v11, v12) == v17)
  {
    sub_1004A6374();
    v20 = sub_1004A68C4();
    CircularBuffer.init(initialCapacity:)(v20, v6);
    v22 = v21;

    *v31 = v22;
    v23 = v27;
    *v27 = 0;
    v23[1] = 0;
  }

  else
  {
    v38 = sub_1004A5C54();
    v24 = sub_1004A5CD4();
    WitnessTable = swift_getWitnessTable();
    CircularBuffer.replaceSubrange<A>(_:with:)(v16 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, &v38, v30, v24, WitnessTable);
  }

  return result;
}

void CircularBuffer.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v5) = a1;
  v40 = a3;
  v44 = a1;
  v6 = *(a2 + 16);
  v7 = sub_1004A6374();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[1];
  v18 = v3[2];
  v51 = *v3;
  v52 = v17;
  v42 = v17;
  v37 = v18;
  v53 = v18;
  swift_getWitnessTable();
  sub_1004A5F14();
  v45 = v48;
  v46 = v49;
  v47 = v50;
  v19 = sub_1004A5574();
  swift_getWitnessTable();
  type metadata accessor for CircularBuffer.Index();
  swift_getWitnessTable();
  v20 = sub_1004A5BB4();
  v54[0] = v45;
  v54[1] = v46;
  v55 = v47;
  (*(*(v19 - 8) + 8))(v54, v19);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v5;
  sub_1004A6914();
  if ((*(v13 + 48))(v12, 1, v6) != 1)
  {
    v21 = *(v13 + 32);
    v21(v43, v12, v6);
    v38 = v21;
    if (v42 != v5)
    {
      v26 = v37 - 1;
      if (((sub_1004A68C4() - 1) & v26) != v5)
      {
        v30 = v41;
        v25 = v6;
        (*(v13 + 56))(v41, 1, 1, v6);
        sub_1004A6904();
        sub_1004A6874();
        if (*(*v4 + 16) > v5)
        {
          (*(v39 + 40))(*v4 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v5, v30, v7);
          v31 = *v4;
          v32 = v4[2];
          for (i = (sub_1004A68C4() - 1) & (v5 + 1); i != v32; i = (sub_1004A68C4() - 1) & (i + 1))
          {
            *&v48 = v5;
            *&v45 = i;
            swift_getWitnessTable();
            sub_1004A56B4();
            v34 = *v4;
            v5 = i;
          }

          v35 = *v4;
          v36 = v4[2] - 1;
          v4[2] = (sub_1004A68C4() - 1) & v36;
          goto LABEL_13;
        }

        goto LABEL_17;
      }

      v27 = *v4;
      v28 = v4[2] - 1;
      v4[2] = (sub_1004A68C4() - 1) & v28;
      v29 = v41;
      v25 = v6;
      (*(v13 + 56))(v41, 1, 1, v6);
      sub_1004A6904();
      sub_1004A6874();
      if (*(*v4 + 16) > v5)
      {
        (*(v39 + 40))(*v4 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v5, v29, v7);
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v22 = *v4;
    v23 = v4[1] + 1;
    v4[1] = (sub_1004A68C4() - 1) & v23;
    v24 = v41;
    v25 = v6;
    (*(v13 + 56))(v41, 1, 1, v6);
    sub_1004A6904();
    sub_1004A6874();
    if (*(*v4 + 16) > v42)
    {
      (*(v39 + 40))(*v4 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42, v24, v7);
LABEL_13:
      v38(v40, v43, v25);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  v4 = *v2;
  v5 = *(v1 + 16);
  sub_1004A6374();
  if (sub_1004A68C4() < a1)
  {
    v6 = __clz(a1 - 1);
    if (v6)
    {
      v7 = 1 << -v6;
    }

    else
    {
      v7 = 0;
    }

    if (a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    CircularBuffer._resizeAndFlatten(newCapacity:)(v8);
  }
}

void sub_1003CC6DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_1003CC70C(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v7 = 0;
  }

  CircularBuffer.replaceSubrange<A>(_:with:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v8, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v7, a2, a5, a3, a4);
  v9 = *(*(a3 - 1) + 8);

  return v9(a2, a3);
}

uint64_t sub_1003CC7DC(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void sub_1003CC864(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v3 = 0;
  }

  CircularBuffer.remove(at:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, a2, a3);
}

uint64_t sub_1003CC890(unsigned int *a1, uint64_t a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
  }

  return CircularBuffer.removeSubrange(_:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v2, a2);
}

uint64_t sub_1003CC8E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast()(a1, WitnessTable, a2);
}

uint64_t sub_1003CC950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable, a3);
}

uint64_t static CircularBuffer<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = CircularBuffer.count.getter(a1, a2, a3);
  if (v13 == CircularBuffer.count.getter(a4, a5, a6))
  {
    type metadata accessor for CircularBuffer();
    swift_getWitnessTable();
    sub_1004A6E04();
    v14 = swift_allocObject();
    v14[2] = a7;
    v14[3] = a8;
    v14[4] = a7;
    __chkstk_darwin(v14);
    sub_1004A6764();
    swift_getWitnessTable();
    v15 = sub_1004A5B04();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t CircularBuffer<A>.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = CircularBuffer.startIndex.getter(a2, a3, a4);
  v15 = CircularBuffer.endIndex.getter(a2, a3, a4);
  if ((v14 & 0xFFFFFFFFFFFFFFLL) != (v15 & 0xFFFFFFFFFFFFFFLL) || (HIBYTE(v14) != 0) != (HIBYTE(v15) != 0))
  {
    do
    {
      do
      {
        CircularBuffer.subscript.getter(a5, v13);
        v14 = CircularBuffer.index(_:offsetBy:)(v14, 1, a2, a3, a4);
        sub_1004A5564();
        (*(v10 + 8))(v13, a5);
        v16 = CircularBuffer.endIndex.getter(a2, a3, a4);
      }

      while ((v14 & 0xFFFFFFFFFFFFFFLL) != (v16 & 0xFFFFFFFFFFFFFFLL));
    }

    while ((HIBYTE(v14) != 0) != (HIBYTE(v16) != 0));
  }
}

Swift::Int CircularBuffer<A>.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004A6E94();
  CircularBuffer<A>.hash(into:)(v11, a1, a2, a3, a4, a5);
  return sub_1004A6F14();
}

Swift::Int sub_1003CCEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1004A6E94();
  CircularBuffer<A>.hash(into:)(v7, *v3, *(v3 + 8), *(v3 + 16), *(a2 + 16), v5);
  return sub_1004A6F14();
}

uint64_t CircularBuffer.init(arrayLiteral:)()
{
  type metadata accessor for CircularBuffer();
  sub_1004A5CD4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004A5F84();
  return v1;
}

uint64_t sub_1003CCFFC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = CircularBuffer.init(arrayLiteral:)();
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1003CD02C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = 0x1FFFFFF00000000;
  if (result < a2)
  {
    v2 = 0xFFFFFF00000000;
  }

  return v2 | result;
}

void sub_1003CD058(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1004A6CF4();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

unint64_t sub_1003CD0BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  result = CircularBuffer.distance(from:to:)(v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) != 0) << 56), a1 & 0x1FFFFFFFFFFFFFFLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = CircularBuffer.endIndex.getter(a3, a4, a5);
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) != 0) << 56));
    if ((result & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

void sub_1003CD18C(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6824(a1);
  sub_1004A6824(a2);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
  }
}

void sub_1003CD228(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1004A6374();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v14 - v11;
  v13 = *(v6 - 8);
  (*(v13 + 16))(&v14 - v11, a1, v6, v10);
  (*(v13 + 56))(v12, 0, 1, v6);
  sub_1004A6904();
  sub_1004A6874();
  if (*(*v3 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 40))(*v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v12, v7);
  }
}

uint64_t sub_1003CD3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A6884();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1004A6904();
    return v8;
  }

  return result;
}

void sub_1003CD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *v6;
  v13 = v6[1];
  v14 = v6[2];
  v15 = a6[2];
  v16 = CircularBuffer.startIndex.getter(*v6, v13, v14);
  if ((CircularBuffer.distance(from:to:)(v16 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v16) != 0) << 56), a4 & 0x1FFFFFFFFFFFFFFLL) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = CircularBuffer.endIndex.getter(v12, v13, v14);
    if ((CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v17 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v17) != 0) << 56)) & 0x8000000000000000) == 0)
    {
      v20[0] = a1;
      v20[1] = a2;
      v20[2] = a3;
      WitnessTable = swift_getWitnessTable();
      CircularBuffer.replaceSubrange<A>(_:with:)(a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, v20, a6, a6, WitnessTable);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003CD638()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003CD670@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[5];
  v5 = v1[6];
  v4();
  v6 = *(*(v3 - 8) + 56);

  return v6(a1, 0, 1, v3);
}

void sub_1003CD6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = CircularBuffer.startIndex.getter(*v3, v8, v9);
  v12 = CircularBuffer.index(_:offsetBy:)(v11, a2, v7, v8, v9);

  sub_1003CD228(a1, v12, a3);
}

uint64_t sub_1003CD7BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1004A5724() & 1;
}

uint64_t sub_1003CD7E8(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1003CDA74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003CDAB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003CDAEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003CDB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

void Command.hash(into:)(uint64_t a1)
{
  v319 = a1;
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v316 = *(v1 - 8);
  v317 = v1;
  v2 = *(v316 + 64);
  __chkstk_darwin(v1);
  v313 = &v302 - v3;
  v4 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v305 = &v302 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v309 = &v302 - v8;
  __chkstk_darwin(v9);
  v306 = &v302 - v10;
  __chkstk_darwin(v11);
  v310 = &v302 - v12;
  __chkstk_darwin(v13);
  v304 = &v302 - v14;
  __chkstk_darwin(v15);
  v311 = &v302 - v16;
  __chkstk_darwin(v17);
  v303 = &v302 - v18;
  __chkstk_darwin(v19);
  v308 = &v302 - v20;
  __chkstk_darwin(v21);
  v302 = &v302 - v22;
  __chkstk_darwin(v23);
  v307 = &v302 - v24;
  v25 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v314 = *(v25 - 8);
  v315 = v25;
  v26 = *(v314 + 64);
  __chkstk_darwin(v25);
  v312 = &v302 - v27;
  v28 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v302 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v302 - v33;
  __chkstk_darwin(v35);
  v37 = &v302 - v36;
  __chkstk_darwin(v38);
  v40 = &v302 - v39;
  __chkstk_darwin(v41);
  v43 = &v302 - v42;
  __chkstk_darwin(v44);
  v46 = &v302 - v45;
  __chkstk_darwin(v47);
  v49 = &v302 - v48;
  __chkstk_darwin(v50);
  v52 = &v302 - v51;
  v53 = type metadata accessor for Command();
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = &v302 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DABD4(v318, v56, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v180 = *v56;
      v145 = *(v56 + 2);
      v146 = 4;
      goto LABEL_83;
    case 2u:
      v159 = *v56;
      v160 = *(v56 + 2);
      v161 = *(v56 + 2);
      v162 = 5;
      goto LABEL_50;
    case 3u:
      v167 = *(v56 + 3);
      *&v321[16] = *(v56 + 2);
      v322 = v167;
      v168 = *(v56 + 9);
      v323 = *(v56 + 8);
      v169 = *(v56 + 1);
      v320 = *v56;
      *v321 = v169;
      v170 = *(v56 + 20);
      v172 = *(v56 + 11);
      v171 = *(v56 + 12);
      v173 = *(v56 + 26) | ((*(v56 + 54) | (v56[110] << 16)) << 32);
      v174 = v56[111];
      v317 = *(v56 + 14);
      v318 = v171;
      v175 = v319;
      sub_1004A6EB4(6uLL);
      v176 = v323;
      if (v323)
      {
        v312 = *&v321[8];
        v313 = *v321;
        v177 = v321[16];
        v315 = v322;
        v316 = *&v321[24];
        v314 = *(&v322 + 1);
        sub_1004A6EC4(1u);
        if (v177 == 255)
        {
          sub_1004A6EB4(0);
        }

        else
        {
          sub_1004A6EB4(1uLL);
          if (v177)
          {
            sub_1004A6EB4(1uLL);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            sub_1004A6EB4(0);
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1003B0040(v175, v316, v315, v314);
        }

        sub_1003AD7B0(v175, v176);
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(v170 | (v170 << 32));

      if (v174)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v172 + 16));
        v293 = *(v172 + 16);
        if (v293)
        {
          v294 = (v172 + 54);
          do
          {
            v295 = *(v294 - 22);
            v296 = *(v294 - 14);
            v297 = *(v294 - 10);
            v298 = *(v294 - 1);
            v299 = *v294;
            v294 += 24;
            swift_beginAccess();
            v300 = *(v295 + 24);
            v175 = v319;
            sub_1004A6EA4();
            --v293;
          }

          while (v293);
        }
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        v301 = *(v172 + 24) + ((v173 >> 24) & 0xFFFF00 | BYTE6(v173));
        sub_1004A6EA4();
      }

      sub_1003AD398(v175, v317);
      sub_1003A30F4(v172, v318, v173, v174);
      sub_100025F40(&v320, &qword_1005DC128, &qword_100500D08);
      goto LABEL_84;
    case 4u:
      v123 = *v56;
      v124 = *(v56 + 1);
      v125 = *(v56 + 4);
      v126 = *(v56 + 3);
      v127 = *(v56 + 4);
      v128 = *(v56 + 10) | ((*(v56 + 22) | (v56[46] << 16)) << 32);
      v129 = v56[47];
      v318 = *(v56 + 6);
      v130 = v319;
      sub_1004A6EB4(7uLL);
      sub_1003AD0B4(v130, v123);

      sub_1004A6EB4(v125 | (v125 << 32));

      v317 = v128;
      if (v129)
      {
        v131 = v127;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v126 + 16));
        v132 = *(v126 + 16);
        if (v132)
        {
          v133 = (v126 + 54);
          do
          {
            v134 = *(v133 - 22);
            v135 = *(v133 - 14);
            v136 = *(v133 - 10);
            v137 = *(v133 - 1);
            v138 = *v133;
            v133 += 24;
            swift_beginAccess();
            v139 = *(v134 + 24) + (v138 | (v137 << 8));
            v130 = v319;
            sub_1004A6EA4();
            --v132;
          }

          while (v132);
        }
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        v273 = *(v126 + 24) + ((v128 >> 24) & 0xFFFF00 | BYTE6(v128));
        v131 = v127;
        sub_1004A6EA4();
      }

      sub_1003AD398(v130, v318);
      sub_1003A30F4(v126, v131, v317, v129);
      goto LABEL_84;
    case 5u:
      v193 = *v56;
      v194 = *(v56 + 2);
      v195 = *(v56 + 2);
      v196 = *(v56 + 6);
      v197 = *(v56 + 7);
      v198 = *(v56 + 18);
      v199 = v56[38];
      sub_1004A6EB4(8uLL);
      sub_1004A6EB4(v194 | (v194 << 32));

      swift_beginAccess();
      v200 = *(v195 + 24) + (v199 | (v198 << 8));
      sub_1004A6EA4();
      goto LABEL_60;
    case 6u:
      v207 = *v56;
      v208 = *(v56 + 2);
      v209 = *(v56 + 2);
      v210 = *(v56 + 6);
      v211 = *(v56 + 4);
      v212 = *(v56 + 5);
      v213 = *(v56 + 6);
      v214 = v319;
      sub_1004A6EB4(9uLL);
      sub_1004A6EB4(v208 | (v208 << 32));

      sub_1004A6EB4(v210 | (v210 << 32));

      sub_1003A1878(v214, v212, v213);

      return;
    case 7u:
      v178 = *v56;
      v160 = *(v56 + 2);
      v161 = *(v56 + 2);
      v162 = 10;
LABEL_50:
      v179 = v319;
      sub_1004A6EB4(v162);
      sub_1004A6EB4(v160 | (v160 << 32));

      sub_1003AD9BC(v179, v161);
      goto LABEL_84;
    case 8u:
      v219 = *v56;
      v220 = *(v56 + 2);
      v221 = *(v56 + 2);
      v222 = v319;
      sub_1004A6EB4(0xBuLL);
      sub_1004A6EB4(v220 | (v220 << 32));

      sub_1002E5960(v222, v221);
      goto LABEL_84;
    case 9u:
      v144 = *v56;
      v145 = *(v56 + 2);
      v146 = 12;
      goto LABEL_83;
    case 0xAu:
      v218 = *v56;
      v145 = *(v56 + 2);
      v146 = 13;
      goto LABEL_83;
    case 0xBu:
      v114 = *v56;
      v115 = *(v56 + 1);
      v116 = *(v56 + 2);
      v117 = *(v56 + 3);
      v118 = v56[38];
      v119 = *(v56 + 18);
      v120 = *(v56 + 8);
      sub_1004A6EB4(0xEuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (!v116)
      {
        goto LABEL_58;
      }

      v121 = v120 | ((v119 | (v118 << 16)) << 32);
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v122 = *(v116 + 24) + ((v121 >> 24) & 0xFFFF00 | BYTE6(v121));
      goto LABEL_30;
    case 0xCu:
      v140 = *v56;
      v141 = *(v56 + 1);
      v142 = *(v56 + 2);
      v143 = *(v56 + 3);
      sub_1004A6EB4(0xFuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0xDu:
      v205 = *v56;
      v206 = v319;
      sub_1004A6EB4(0x14uLL);
      sub_1002E5AF4(v206, v205);
      goto LABEL_84;
    case 0xEu:
      v108 = &v56[*(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48)];
      v109 = *v108;
      v110 = *(v108 + 2);
      sub_100025FDC(v56, v52, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1004A6EB4(0x17uLL);
      sub_10000E268(v52, v49, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v314 + 48))(v49, 1, v315) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v271 = v49;
        v272 = v312;
        sub_100025FDC(v271, v312, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v272, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(v110 | (v110 << 32));

      v268 = &qword_1005CDA78;
      v269 = &unk_1004CF7E0;
      v270 = v52;
      goto LABEL_127;
    case 0xFu:
      v163 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v164 = *&v56[*(v163 + 48)];
      v165 = *&v56[*(v163 + 64)];
      sub_100025FDC(v56, v46, &qword_1005CDA78, &unk_1004CF7E0);
      v166 = v319;
      sub_1004A6EB4(0x18uLL);
      sub_10000E268(v46, v43, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v314 + 48))(v43, 1, v315) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v275 = v312;
        sub_100025FDC(v43, v312, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v275, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(*(v164 + 16));
      v276 = *(v164 + 16);
      if (v276)
      {
        v277 = (v164 + 32);
        do
        {
          v278 = *v277;
          v279 = v277[1];
          *&v321[13] = *(v277 + 29);
          v320 = v278;
          *v321 = v279;
          sub_1002E7F14(&v320, v324);
          FetchAttribute.hash(into:)(v166);
          sub_1002E7F70(&v320);
          v277 = (v277 + 40);
          --v276;
        }

        while (v276);
      }

      sub_1003AC97C(v166, v165);

      v268 = &qword_1005CDA78;
      v269 = &unk_1004CF7E0;
      goto LABEL_124;
    case 0x10u:
      v102 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v103 = *&v56[*(v102 + 48)];
      v104 = &v56[*(v102 + 64)];
      v105 = *v104;
      v106 = v104[1];
      sub_100025FDC(v56, v40, &qword_1005CDA78, &unk_1004CF7E0);
      v107 = v319;
      sub_1004A6EB4(0x19uLL);
      sub_10000E268(v40, v37, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v314 + 48))(v37, 1, v315) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v267 = v312;
        sub_100025FDC(v37, v312, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v267, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1003AC298(v107, v103);

      StoreData.hash(into:)(v107, v105, v106);
      sub_10027FF20();
      v268 = &qword_1005CDA78;
      v269 = &unk_1004CF7E0;
      v270 = v40;
      goto LABEL_127;
    case 0x11u:
      v154 = *v56;
      v187 = *(v56 + 1);
      v157 = *(v56 + 2);
      v156 = *(v56 + 3);
      v158 = 26;
      goto LABEL_54;
    case 0x12u:
      v215 = &v56[*(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48)];
      v216 = *v215;
      v217 = *(v215 + 2);
      sub_100025FDC(v56, v34, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1004A6EB4(0x1BuLL);
      sub_10000E268(v34, v31, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v314 + 48))(v31, 1, v315) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v281 = v312;
        sub_100025FDC(v31, v312, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v281, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(v217 | (v217 << 32));

      v268 = &qword_1005CDA78;
      v269 = &unk_1004CF7E0;
      goto LABEL_115;
    case 0x13u:
      v243 = *v56;
      v244 = *(v56 + 1);
      v245 = *(v56 + 2);
      v246 = v319;
      sub_1004A6EB4(0x1CuLL);
      sub_1002E5DBC(v246, v244, v245);

      goto LABEL_60;
    case 0x14u:
      v190 = *v56;
      v189 = *(v56 + 1);
      v191 = *(v56 + 2);
      v192 = v56[24];
      sub_1004A6EB4(0x1EuLL);
      sub_1004A6EB4(v190);
      if (v192 == 1)
      {
LABEL_58:
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v189);
        sub_1004A6EB4(v191);
      }

      return;
    case 0x15u:
      v201 = &v56[*(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48)];
      v202 = *v201;
      v203 = *(v201 + 2);
      v34 = v307;
      sub_100025FDC(v56, v307, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x1FuLL);
      v204 = v302;
      sub_10000E268(v34, v302, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v316 + 48))(v204, 1, v317) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v280 = v313;
        sub_100025FDC(v204, v313, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v280, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(v203 | (v203 << 32));

      goto LABEL_112;
    case 0x16u:
      v239 = &v56[*(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48)];
      v240 = *v239;
      v241 = *(v239 + 2);
      v46 = v308;
      sub_100025FDC(v56, v308, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x20uLL);
      v242 = v303;
      sub_10000E268(v46, v303, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v316 + 48))(v242, 1, v317) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v282 = v313;
        sub_100025FDC(v242, v313, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v282, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(v241 | (v241 << 32));
      goto LABEL_123;
    case 0x17u:
      v247 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
      v248 = *&v56[*(v247 + 48)];
      v249 = *&v56[*(v247 + 64)];
      v46 = v311;
      sub_100025FDC(v56, v311, &qword_1005CD1C0, &unk_1004CEC40);
      v250 = v319;
      sub_1004A6EB4(0x21uLL);
      v251 = v304;
      sub_10000E268(v46, v304, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v316 + 48))(v251, 1, v317) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v283 = v313;
        sub_100025FDC(v251, v313, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v283, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(*(v248 + 16));
      v284 = *(v248 + 16);
      if (v284)
      {
        v285 = (v248 + 32);
        do
        {
          v286 = *v285;
          v287 = v285[1];
          *&v321[13] = *(v285 + 29);
          v320 = v286;
          *v321 = v287;
          sub_1002E7F14(&v320, v324);
          FetchAttribute.hash(into:)(v250);
          sub_1002E7F70(&v320);
          v285 = (v285 + 40);
          --v284;
        }

        while (v284);
      }

      sub_1003AC97C(v250, v249);
LABEL_123:

      v268 = &qword_1005CD1C0;
      v269 = &unk_1004CEC40;
LABEL_124:
      v270 = v46;
      goto LABEL_127;
    case 0x18u:
      v154 = *v56;
      v155 = *(v56 + 1);
      v157 = *(v56 + 2);
      v156 = *(v56 + 3);
      v158 = 34;
LABEL_54:
      v188 = v319;
      sub_1004A6EB4(v158);
      SearchKey.hash(into:)(v188, v154);
      if (v157)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1003ABB18(v188, v156);
      sub_1000B37D8(v154);
      goto LABEL_84;
    case 0x19u:
      v147 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v148 = *&v56[*(v147 + 48)];
      v149 = &v56[*(v147 + 64)];
      v150 = *v149;
      v151 = v149[1];
      v34 = v310;
      sub_100025FDC(v56, v310, &qword_1005CD1C0, &unk_1004CEC40);
      v152 = v319;
      sub_1004A6EB4(0x23uLL);
      v153 = v306;
      sub_10000E268(v34, v306, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v316 + 48))(v153, 1, v317) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v274 = v313;
        sub_100025FDC(v153, v313, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v274, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1003AC298(v152, v148);

      StoreData.hash(into:)(v152, v150, v151);
      sub_10027FF20();
LABEL_112:
      v268 = &qword_1005CD1C0;
      v269 = &unk_1004CEC40;
LABEL_115:
      v270 = v34;
      goto LABEL_127;
    case 0x1Au:
      v265 = v309;
      sub_100025FDC(v56, v309, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x24uLL);
      v266 = v305;
      sub_10000E268(v265, v305, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v316 + 48))(v266, 1, v317) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v288 = v313;
        sub_100025FDC(v266, v313, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v288, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      v268 = &qword_1005CD1C0;
      v269 = &unk_1004CEC40;
      v270 = v265;
LABEL_127:
      sub_100025F40(v270, v268, v269);
      return;
    case 0x1Bu:
      v85 = *v56;
      v86 = *(v56 + 2);
      v87 = *(v56 + 3);
      v88 = *(v56 + 10);
      v89 = v56[22];
      sub_1004A6EB4(0x25uLL);
      swift_beginAccess();
      v90 = *(v85 + 24) + (v89 | (v88 << 8));
LABEL_30:
      sub_1004A6EA4();
      goto LABEL_60;
    case 0x1Cu:
      v252 = *v56;
      v145 = *(v56 + 2);
      v146 = 38;
LABEL_83:
      sub_1004A6EB4(v146);
      sub_1004A6EB4(v145 | (v145 << 32));
      goto LABEL_84;
    case 0x1Du:
      v253 = *v56;
      v254 = *(v56 + 2);
      v255 = *(v56 + 3);
      v256 = *(v56 + 10);
      v257 = v56[22];
      v258 = *(v56 + 3);
      sub_1004A6EB4(0x27uLL);
      swift_beginAccess();
      v259 = *(v253 + 24) + (v257 | (v256 << 8));
      sub_1004A6EA4();
      sub_1004A6EB4(*(v258 + 16));
      v260 = *(v258 + 16);
      if (v260)
      {
        v261 = (v258 + 48);
        do
        {
          v263 = *(v261 - 2);
          v262 = *(v261 - 1);
          v264 = *v261;
          v261 += 3;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1004A6EB4(v264);

          --v260;
        }

        while (v260);
      }

      goto LABEL_84;
    case 0x1Eu:
      v223 = *v56;
      v224 = *(v56 + 1);
      v225 = *(v56 + 4);
      v226 = *(v56 + 3);
      v227 = v319;
      sub_1004A6EB4(0x28uLL);
      sub_1003AB39C(v227, v223);

      sub_1004A6EB4(v225 | (v225 << 32));

      sub_1004A6EB4(*(v226 + 16));
      v228 = *(v226 + 16);
      if (v228)
      {
        v229 = (v226 + 54);
        do
        {
          v230 = *(v229 - 22);
          v231 = *(v229 - 14);
          v232 = *(v229 - 10);
          v233 = *(v229 - 1);
          v234 = *v229;
          v229 += 24;
          swift_beginAccess();
          v235 = *(v230 + 24) + (v234 | (v233 << 8));
          sub_1004A6EA4();
          --v228;
        }

        while (v228);
      }

      goto LABEL_84;
    case 0x1Fu:
      v181 = *v56;
      v182 = *(v56 + 2);
      v183 = *(v56 + 2);
      v184 = *(v56 + 3);
      v185 = *(v56 + 4);
      v186 = v319;
      sub_1004A6EB4(0x29uLL);
      sub_1004A6EB4(v182 | (v182 << 32));

      sub_1003A1460(v186, v184, v185);

LABEL_60:

      return;
    case 0x20u:
      v236 = *(v56 + 1);
      v320 = *v56;
      *v321 = v236;
      v237 = *(v56 + 3);
      *&v321[16] = *(v56 + 2);
      v322 = v237;
      v238 = v319;
      sub_1004A6EB4(0x2AuLL);
      ExtendedSearchOptions.hash(into:)(v238);
      sub_1003D9E64(&v320);
      return;
    case 0x21u:
      v111 = *v56;
      v112 = *(v56 + 2);
      v113 = *(v56 + 2);
      sub_1004A6EB4(0x2BuLL);
      if (v111)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v112 | (v112 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v113 + 16));
      v289 = *(v113 + 16);
      if (v289)
      {
        v290 = (v113 + 40);
        do
        {
          v291 = *(v290 - 1);
          v292 = *v290;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v290 += 2;
          --v289;
        }

        while (v289);
      }

      goto LABEL_84;
    case 0x22u:
      v91 = *v56;
      sub_1004A6EB4(0x2CuLL);
      sub_1004A6EB4(*(v91 + 16));
      v92 = *(v91 + 16);
      if (v92)
      {
        v93 = 0;
        do
        {
          v94 = *(v91 + v93 + 32);
          v95 = *(v91 + v93 + 40);
          v96 = *(v91 + v93 + 44);
          v97 = *(v91 + v93 + 52);
          v98 = *(v91 + v93 + 54);
          v99 = *(v91 + v93 + 56);
          v100 = *(v91 + v93 + 64);
          swift_beginAccess();
          v101 = *(v94 + 24) + (v98 | (v97 << 8));
          sub_1004A6EA4();

          swift_bridgeObjectRetain_n();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          swift_bridgeObjectRelease_n();
          v93 += 40;
          --v92;
        }

        while (v92);
      }

      goto LABEL_84;
    case 0x23u:
      v74 = *v56;
      sub_1004A6EB4(0x2DuLL);
      sub_1004A6EB4(*(v74 + 16));
      v75 = *(v74 + 16);
      if (v75)
      {
        v76 = (v74 + 54);
        do
        {
          v77 = *(v76 - 22);
          v78 = *(v76 - 14);
          v79 = *(v76 - 10);
          v80 = *(v76 - 1);
          v81 = *v76;
          v76 += 24;
          swift_beginAccess();
          v82 = *(v77 + 24) + (v81 | (v80 << 8));
          sub_1004A6EA4();
          --v75;
        }

        while (v75);
      }

      goto LABEL_84;
    case 0x24u:
      v83 = *v56;
      v84 = *(v56 + 1);
      sub_1004A6EB4(0x2EuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0x25u:
      v62 = *v56;
      v63 = *(v56 + 1);
      v64 = *(v56 + 2);
      sub_1004A6EB4(0x2FuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      sub_1004A6EB4(*(v64 + 16));
      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = (v64 + 48);
        do
        {
          v70 = *(v66 - 2);
          v69 = *(v66 - 1);
          v71 = *(v66 + 6);
          v72 = *(v66 + 2);
          v73 = *v66;
          if (v70 < 0)
          {
            sub_1004A6EB4(1uLL);
            v67 = ((v70 & 0x7FFFFFFFFFFFFFFFLL) + 24);
          }

          else
          {
            sub_1004A6EB4(0);
            v67 = (v70 + 24);
          }

          swift_beginAccess();
          v68 = *v67;
          sub_1004A6EA4();
          v66 += 6;
          --v65;
        }

        while (v65);
      }

      goto LABEL_84;
    case 0x26u:
      v61 = 0;
      goto LABEL_93;
    case 0x27u:
      v61 = 1;
      goto LABEL_93;
    case 0x28u:
      v61 = 2;
      goto LABEL_93;
    case 0x29u:
      v61 = 16;
      goto LABEL_93;
    case 0x2Au:
      v61 = 17;
      goto LABEL_93;
    case 0x2Bu:
      v61 = 18;
      goto LABEL_93;
    case 0x2Cu:
      v61 = 19;
      goto LABEL_93;
    case 0x2Du:
      v61 = 21;
      goto LABEL_93;
    case 0x2Eu:
      v61 = 22;
      goto LABEL_93;
    case 0x2Fu:
      v61 = 29;
LABEL_93:
      sub_1004A6EB4(v61);
      break;
    default:
      v57 = *v56;
      v58 = *(v56 + 2);
      v59 = *(v56 + 2);
      v60 = v319;
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(v58 | (v58 << 32));

      sub_1003AE7F8(v60, v59);
LABEL_84:

      break;
  }
}

Swift::Int Command.hashValue.getter()
{
  sub_1004A6E94();
  Command.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003CFA2C()
{
  sub_1004A6E94();
  Command.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_1003CFAA8(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v215[-v5];
  v7 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v215[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v215[-v12];
  v14 = type metadata accessor for Command();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v215[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003DABD4(a1, v17, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_72;
    case 2u:
      goto LABEL_56;
    case 3u:
      v118 = *(v17 + 48);
      v219 = *(v17 + 32);
      v220 = v118;
      v119 = *(v17 + 72);
      v221 = *(v17 + 64);
      v120 = *(v17 + 16);
      v217 = *v17;
      v218 = v120;
      v121 = *(v17 + 80);
      v122 = *(v17 + 88);
      v123 = *(v17 + 96);
      v124 = *(v17 + 104) | ((*(v17 + 108) | (*(v17 + 110) << 16)) << 32);
      v216 = *(v17 + 111);
      v125 = v216;
      v28 = sub_1003D1330(&v217, v119, v121, v122, v123, v124 | (v216 << 56), *(v17 + 112));

      sub_1003A30F4(v122, v123, v124, v125);

      sub_100025F40(&v217, &qword_1005DC128, &qword_100500D08);
      return v28;
    case 4u:
      v69 = *v17;
      v70 = *(v17 + 8);
      v71 = *(v17 + 16);
      v72 = *(v17 + 24);
      v73 = *(v17 + 32);
      v74 = *(v17 + 40) | ((*(v17 + 44) | (*(v17 + 46) << 16)) << 32);
      v75 = *(v17 + 47);
      v76 = *(v17 + 48);
      LOBYTE(v217) = v75;
      v28 = sub_1003D190C(v69, v70, v71, v72, v73, v74 | (v75 << 56), v76);

      sub_1003A30F4(v72, v73, v74, v75);

      goto LABEL_103;
    case 5u:
      v68 = sub_1003D1CE8(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32) | (*(v17 + 36) << 32) | (*(v17 + 38) << 48));
      goto LABEL_87;
    case 6u:
      v28 = sub_1003D1E20(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48));

      return v28;
    case 7u:
      v126 = *v17;
      v17 = *(v17 + 16);
      v127 = *(v1 + 20);
      v128 = sub_1002F178C(0x205443454C4553, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v129)
      {
        v130._countAndFlagsBits = 0x205443454C4553;
        v130._object = 0xE700000000000000;
        v128 = ByteBuffer._setStringSlowpath(_:at:)(v130, v127);
      }

      v131 = v128;
      v132 = *(v1 + 20);
      v23 = __CFADD__(v132, v128);
      v133 = v132 + v128;
      if (v23)
      {
        goto LABEL_168;
      }

      *(v1 + 20) = v133;
      v134 = sub_100441F24(v126);
      v113 = __OFADD__(v131, v134);
      v135 = v131 + v134;
      if (v113)
      {
        goto LABEL_177;
      }

      v1 = sub_100494D28(v17);

      result = v135 + v1;
      if (!__OFADD__(v135, v1))
      {
        return result;
      }

      __break(1u);
LABEL_72:
      v17 = *v17;
      v136 = *(v1 + 20);
      v137 = sub_1002F178C(0x204554454C4544, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v138)
      {
        v139._countAndFlagsBits = 0x204554454C4544;
        v139._object = 0xE700000000000000;
        v137 = ByteBuffer._setStringSlowpath(_:at:)(v139, v136);
      }

      v140 = v137;
      v141 = *(v1 + 20);
      v23 = __CFADD__(v141, v137);
      v142 = v141 + v137;
      if (v23)
      {
        goto LABEL_169;
      }

      *(v1 + 20) = v142;
      v143 = sub_100441F24(v17);

      result = v140 + v143;
      if (!__OFADD__(v140, v143))
      {
        return result;
      }

      __break(1u);
LABEL_78:
      v28 = sub_1003D42E8(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));

      return v28;
    case 8u:
      goto LABEL_100;
    case 9u:
      v17 = *v17;
      v11 = *(v1 + 20);
      v80 = sub_1002F178C(0x4249524353425553, 0xEA00000000002045, (v1 + 8), *(v1 + 20));
      if (v81)
      {
        v82._countAndFlagsBits = 0x4249524353425553;
        v82._object = 0xEA00000000002045;
        v80 = ByteBuffer._setStringSlowpath(_:at:)(v82, v11);
      }

      v83 = v80;
      v84 = *(v1 + 20);
      v23 = __CFADD__(v84, v80);
      v85 = v84 + v80;
      if (v23)
      {
        goto LABEL_165;
      }

      *(v1 + 20) = v85;
      v86 = sub_100441F24(v17);

      result = v83 + v86;
      if (!__OFADD__(v83, v86))
      {
        return result;
      }

      __break(1u);
LABEL_48:
      v87 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v88 = *(v17 + *(v87 + 48));
      v89 = (v17 + *(v87 + 64));
      v90 = *v89;
      v91 = v89[1];
      v55 = &qword_1005CD1C0;
      v56 = &unk_1004CEC40;
      sub_100025FDC(v17, v11, &qword_1005CD1C0, &unk_1004CEC40);
      v57 = sub_1003D362C(v11, v88, v90, v91);

      sub_10027FF20();
      v58 = v11;
LABEL_49:
      v92 = v55;
      v93 = v56;
      goto LABEL_138;
    case 0xAu:
      v17 = *v17;
      v153 = *(v1 + 20);
      v154 = sub_1002F178C(0x5243534255534E55, 0xEC00000020454249, (v1 + 8), *(v1 + 20));
      if (v155)
      {
        v156._countAndFlagsBits = 0x5243534255534E55;
        v156._object = 0xEC00000020454249;
        v154 = ByteBuffer._setStringSlowpath(_:at:)(v156, v153);
      }

      v157 = v154;
      v158 = *(v1 + 20);
      v23 = __CFADD__(v158, v154);
      v159 = v158 + v154;
      if (v23)
      {
        goto LABEL_170;
      }

      *(v1 + 20) = v159;
      v160 = sub_100441F24(v17);

      result = v157 + v160;
      if (!__OFADD__(v157, v160))
      {
        return result;
      }

      __break(1u);
LABEL_100:
      v18 = sub_1003D2998(*v17, *(v17 + 8), *(v17 + 16));
      goto LABEL_101;
    case 0xBu:
      v68 = sub_1003D2B0C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32) | ((*(v17 + 36) | (*(v17 + 38) << 16)) << 32));
LABEL_87:
      v57 = v68;

      return v57;
    case 0xCu:
      goto LABEL_41;
    case 0xDu:
      v28 = sub_1003D2FAC(*v17);
      goto LABEL_103;
    case 0xEu:
      goto LABEL_32;
    case 0xFu:
      goto LABEL_63;
    case 0x10u:
      v50 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v51 = *(v17 + *(v50 + 48));
      v52 = (v17 + *(v50 + 64));
      v53 = *v52;
      v54 = v52[1];
      v55 = &qword_1005CDA78;
      v56 = &unk_1004CF7E0;
      sub_100025FDC(v17, v6, &qword_1005CDA78, &unk_1004CF7E0);
      v57 = sub_1003D32D4(v6, v51, v53, v54);

      sub_10027FF20();
      v58 = v6;
      goto LABEL_49;
    case 0x11u:
      v144 = *v17;
      v28 = sub_1003D3940(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));

      sub_1000B37D8(v144);
      return v28;
    case 0x12u:
      v152 = v17 + *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v63 = *v152;
      v64 = *(v152 + 8);
      v65 = &qword_1005CDA78;
      v66 = &unk_1004CF7E0;
      sub_100025FDC(v17, v6, &qword_1005CDA78, &unk_1004CF7E0);
      v67 = 1163284301;
      goto LABEL_92;
    case 0x13u:
      goto LABEL_124;
    case 0x14u:
      return sub_1003D4A54(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
    case 0x15u:
      v148 = v17 + *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v149 = *v148;
      v150 = *(v148 + 8);
      v65 = &qword_1005CD1C0;
      v66 = &unk_1004CEC40;
      sub_100025FDC(v17, v11, &qword_1005CD1C0, &unk_1004CEC40);
      v151 = 0x59504F4320444955;
      goto LABEL_118;
    case 0x16u:
      goto LABEL_117;
    case 0x17u:
      goto LABEL_135;
    case 0x18u:
      v94 = *v17;
      v95 = *(v17 + 8);
      v96 = *(v17 + 16);
      v17 = *(v17 + 24);
      v97 = *(v1 + 20);
      v98 = sub_1002F178C(541346133, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v99)
      {
        v100._countAndFlagsBits = 541346133;
        v100._object = 0xE400000000000000;
        v98 = ByteBuffer._setStringSlowpath(_:at:)(v100, v97);
      }

      v101 = v98;
      v102 = *(v1 + 20);
      v23 = __CFADD__(v102, v98);
      v103 = v102 + v98;
      if (v23)
      {
        goto LABEL_166;
      }

      *(v1 + 20) = v103;
      v1 = sub_1003D3940(v94, v95, v96, v17);

      sub_1000B37D8(v94);
      result = v101 + v1;
      if (!__OFADD__(v101, v1))
      {
        return result;
      }

      __break(1u);
LABEL_56:
      v104 = *v17;
      v17 = *(v17 + 16);
      v105 = *(v1 + 20);
      v106 = sub_1002F178C(0x20454E494D415845, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v107)
      {
        v108._countAndFlagsBits = 0x20454E494D415845;
        v108._object = 0xE800000000000000;
        v106 = ByteBuffer._setStringSlowpath(_:at:)(v108, v105);
      }

      v109 = v106;
      v110 = *(v1 + 20);
      v23 = __CFADD__(v110, v106);
      v111 = v110 + v106;
      if (v23)
      {
        goto LABEL_167;
      }

      *(v1 + 20) = v111;
      v112 = sub_100441F24(v104);
      v113 = __OFADD__(v109, v112);
      v6 = (v109 + v112);
      if (v113)
      {
        goto LABEL_176;
      }

      v114 = sub_100494D28(v17);

      result = &v6[v114];
      if (!__OFADD__(v6, v114))
      {
        return result;
      }

      __break(1u);
LABEL_63:
      v115 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v116 = *(v17 + *(v115 + 48));
      v117 = *(v17 + *(v115 + 64));
      v65 = &qword_1005CDA78;
      v66 = &unk_1004CF7E0;
      sub_100025FDC(v17, v6, &qword_1005CDA78, &unk_1004CF7E0);
      v57 = sub_1003D318C(v6, v116, v117, 0x204843544546, 0xE600000000000000, sub_10048D800);

LABEL_93:

      v58 = v6;
      goto LABEL_137;
    case 0x19u:
      goto LABEL_48;
    case 0x1Au:
      goto LABEL_152;
    case 0x1Bu:
      v38 = *v17;
      v39 = *(v17 + 8);
      v40 = *(v17 + 16);
      v41 = *(v17 + 20);
      v42 = *(v17 + 22);
      v43 = *(v1 + 20);
      v44 = sub_1002F178C(0x41544F5551544547, 0xE900000000000020, (v1 + 8), *(v1 + 20));
      if (v45)
      {
        v46._countAndFlagsBits = 0x41544F5551544547;
        v46._object = 0xE900000000000020;
        v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
      }

      v17 = v44;
      v47 = *(v1 + 20);
      v23 = __CFADD__(v47, v44);
      v48 = v47 + v44;
      if (v23)
      {
        goto LABEL_164;
      }

      *(v1 + 20) = v48;
      v49 = sub_1003B1E70(v38, v39, v40 | (v41 << 32) | (v42 << 48));

      result = v17 + v49;
      if (!__OFADD__(v17, v49))
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v28 = sub_1003D468C(*v17);
      goto LABEL_103;
    case 0x1Cu:
      v17 = *v17;
      v193 = *(v1 + 20);
      v194 = sub_1002F178C(0x41544F5551544547, 0xED000020544F4F52, (v1 + 8), *(v1 + 20));
      if (v195)
      {
        v196._countAndFlagsBits = 0x41544F5551544547;
        v196._object = 0xED000020544F4F52;
        v194 = ByteBuffer._setStringSlowpath(_:at:)(v196, v193);
      }

      v197 = v194;
      v198 = *(v1 + 20);
      v23 = __CFADD__(v198, v194);
      v199 = v198 + v194;
      if (v23)
      {
        goto LABEL_173;
      }

      *(v1 + 20) = v199;
      v200 = sub_100441F24(v17);

      result = v197 + v200;
      if (!__OFADD__(v197, v200))
      {
        return result;
      }

      __break(1u);
LABEL_146:
      v28 = sub_1003D3C44(*v17, *(v17 + 8), *(v17 + 16) | (*(v17 + 20) << 32) | (*(v17 + 22) << 48), *(v17 + 24));

      goto LABEL_103;
    case 0x1Du:
      goto LABEL_146;
    case 0x1Eu:
      v28 = sub_1003D3F4C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));

      goto LABEL_102;
    case 0x1Fu:
      goto LABEL_78;
    case 0x20u:
      v161 = *(v17 + 16);
      v217 = *v17;
      v218 = v161;
      v162 = *(v17 + 48);
      v219 = *(v17 + 32);
      v220 = v162;
      v163 = *(v1 + 20);
      v164 = sub_1002F178C(0x48435241455345, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v165)
      {
        v166._countAndFlagsBits = 0x48435241455345;
        v166._object = 0xE700000000000000;
        v164 = ByteBuffer._setStringSlowpath(_:at:)(v166, v163);
      }

      v167 = v164;
      v168 = *(v1 + 20);
      v23 = __CFADD__(v168, v164);
      v169 = v168 + v164;
      if (v23)
      {
        goto LABEL_171;
      }

      *(v1 + 20) = v169;
      v1 = sub_1003E8C6C(&v217);
      sub_1003D9E64(&v217);
      result = v167 + v1;
      if (!__OFADD__(v167, v1))
      {
        return result;
      }

      __break(1u);
LABEL_112:
      v11 = 0x5443454C45534E55;
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x5443454C45534E55, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v170)
      {
        v171._countAndFlagsBits = 0x5443454C45534E55;
        v171._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v171, v17);
      }

      v172 = *(v1 + 20);
      v23 = __CFADD__(v172, result);
      v24 = v172 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_117:
      v173 = v17 + *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v149 = *v173;
      v150 = *(v173 + 8);
      v65 = &qword_1005CD1C0;
      v66 = &unk_1004CEC40;
      sub_100025FDC(v17, v11, &qword_1005CD1C0, &unk_1004CEC40);
      v151 = 0x45564F4D20444955;
LABEL_118:
      v57 = sub_1003D3B18(v11, v149, v150, v151, 0xE900000000000020, sub_10048DA10);
      goto LABEL_136;
    case 0x21u:
      v28 = sub_1003D4430(*v17, *(v17 + 8), *(v17 + 16));

      goto LABEL_103;
    case 0x22u:
      goto LABEL_25;
    case 0x23u:
      goto LABEL_14;
    case 0x24u:
      v222._countAndFlagsBits = *v17;
      v29 = *(v17 + 8);
      *&v217 = 0x53534552504D4F43;
      *(&v217 + 1) = 0xE900000000000020;
      v222._object = v29;
      sub_1004A5994(v222);
      v30 = v1;
      v31 = v217;
      v32 = *(v1 + 20);
      v33 = sub_1002F178C(v217, *(&v217 + 1), (v30 + 8), *(v30 + 20));
      if (v34)
      {
        v33 = ByteBuffer._setStringSlowpath(_:at:)(v31, v32);
        v30 = v1;
      }

      v35 = v33;

      v36 = *(v30 + 20);
      result = v35;
      v23 = __CFADD__(v36, v35);
      v37 = v36 + v35;
      if (v23)
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        JUMPOUT(0x1003D0F64);
      }

      *(v30 + 20) = v37;
      return result;
    case 0x25u:
      goto LABEL_8;
    case 0x26u:
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x494C494241504143, 0xEA00000000005954, (v1 + 8), *(v1 + 20));
      if (v201)
      {
        v202._countAndFlagsBits = 0x494C494241504143;
        v202._object = 0xEA00000000005954;
        result = ByteBuffer._setStringSlowpath(_:at:)(v202, v17);
      }

      v203 = *(v1 + 20);
      v23 = __CFADD__(v203, result);
      v24 = v203 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_152:
      sub_100025FDC(v17, v13, &qword_1005CD1C0, &unk_1004CEC40);
      v204 = *(v1 + 20);
      v205 = sub_1002F178C(0x5550584520444955, 0xEC0000002045474ELL, (v1 + 8), *(v1 + 20));
      if (v206)
      {
        v207._object = 0xEC0000002045474ELL;
        v207._countAndFlagsBits = 0x5550584520444955;
        v205 = ByteBuffer._setStringSlowpath(_:at:)(v207, v204);
      }

      v208 = v205;
      v209 = *(v1 + 20);
      v23 = __CFADD__(v209, v205);
      v210 = v209 + v205;
      if (v23)
      {
        goto LABEL_174;
      }

      *(v1 + 20) = v210;
      v1 = sub_10048DA10(v13);
      sub_100025F40(v13, &qword_1005CD1C0, &unk_1004CEC40);
      result = v208 + v1;
      if (!__OFADD__(v208, v1))
      {
        return result;
      }

      __break(1u);
LABEL_158:
      v211 = *(v1 + 20);
      result = sub_1002F178C(1162626121, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v212)
      {
        v213._countAndFlagsBits = 1162626121;
        v213._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v213, v211);
      }

      v214 = *(v1 + 20);
      v23 = __CFADD__(v214, result);
      v24 = v214 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      goto LABEL_175;
    case 0x27u:
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x54554F474F4CLL, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v174)
      {
        v175._countAndFlagsBits = 0x54554F474F4CLL;
        v175._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v175, v17);
      }

      v176 = *(v1 + 20);
      v23 = __CFADD__(v176, result);
      v24 = v176 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_124:
      v177 = *v17;
      v178 = *(v17 + 8);
      v179 = *(v17 + 16);
      v180 = *(v1 + 20);
      v181 = sub_1002F178C(2114633, 0xE300000000000000, (v1 + 8), *(v1 + 20));
      if (v182)
      {
        v183._countAndFlagsBits = 2114633;
        v183._object = 0xE300000000000000;
        v181 = ByteBuffer._setStringSlowpath(_:at:)(v183, v180);
      }

      v184 = v181;
      v185 = *(v1 + 20);
      v23 = __CFADD__(v185, v181);
      v186 = v185 + v181;
      if (v23)
      {
        goto LABEL_172;
      }

      *(v1 + 20) = v186;
      v1 = sub_100430E74(v177, v178, v179);

      result = v184 + v1;
      if (!__OFADD__(v184, v1))
      {
        return result;
      }

      __break(1u);
LABEL_130:
      v11 = 0x4B43454843;
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x4B43454843, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v187)
      {
        v188._countAndFlagsBits = 0x4B43454843;
        v188._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v188, v17);
      }

      v189 = *(v1 + 20);
      v23 = __CFADD__(v189, result);
      v24 = v189 + result;
      if (v23)
      {
        __break(1u);
LABEL_135:
        v190 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
        v191 = *(v17 + *(v190 + 48));
        v192 = *(v17 + *(v190 + 64));
        v65 = &qword_1005CD1C0;
        v66 = &unk_1004CEC40;
        sub_100025FDC(v17, v11, &qword_1005CD1C0, &unk_1004CEC40);
        v57 = sub_1003D318C(v11, v191, v192, 0x4354454620444955, 0xEA00000000002048, sub_10048DA10);

LABEL_136:

        v58 = v11;
LABEL_137:
        v92 = v65;
        v93 = v66;
LABEL_138:
        sub_100025F40(v58, v92, v93);
        return v57;
      }

      else
      {
LABEL_161:
        *(v1 + 20) = v24;
      }

      return result;
    case 0x28u:
      v17 = *(v1 + 20);
      result = sub_1002F178C(1347374926, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v77)
      {
        v78._countAndFlagsBits = 1347374926;
        v78._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v78, v17);
      }

      v79 = *(v1 + 20);
      v23 = __CFADD__(v79, result);
      v24 = v79 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_41:
      v18 = sub_1003D2E74(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
      goto LABEL_101;
    case 0x29u:
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x534C545452415453, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v145)
      {
        v146._countAndFlagsBits = 0x534C545452415453;
        v146._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v146, v17);
      }

      v147 = *(v1 + 20);
      v23 = __CFADD__(v147, result);
      v24 = v147 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
      return sub_1003D4A54(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
    case 0x2Au:
      goto LABEL_130;
    case 0x2Bu:
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x45534F4C43, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v20)
      {
        v21._countAndFlagsBits = 0x45534F4C43;
        v21._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
      }

      v22 = *(v1 + 20);
      v23 = __CFADD__(v22, result);
      v24 = v22 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_8:
      v18 = sub_1003D4B78(*v17, *(v17 + 8), *(v17 + 16));
LABEL_101:
      v28 = v18;
LABEL_102:

      goto LABEL_103;
    case 0x2Cu:
      v17 = *(v1 + 20);
      v6 = 0;
      result = sub_1002F178C(0x45474E55505845, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v59)
      {
        v6 = v1;
        v60._countAndFlagsBits = 0x45474E55505845;
        v60._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v60, v17);
      }

      v61 = *(v1 + 20);
      v23 = __CFADD__(v61, result);
      v24 = v61 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_32:
      v62 = v17 + *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v63 = *v62;
      v64 = *(v62 + 8);
      v65 = &qword_1005CDA78;
      v66 = &unk_1004CF7E0;
      sub_100025FDC(v17, v6, &qword_1005CDA78, &unk_1004CF7E0);
      v67 = 1498435395;
LABEL_92:
      v57 = sub_1003D3B18(v6, v63, v64, v67 & 0xFFFF0000FFFFFFFFLL | 0x2000000000, 0xE500000000000000, sub_10048D800);
      goto LABEL_93;
    case 0x2Du:
      goto LABEL_112;
    case 0x2Eu:
      goto LABEL_158;
    case 0x2Fu:
      v17 = *(v1 + 20);
      result = sub_1002F178C(0x43415053454D414ELL, 0xE900000000000045, (v1 + 8), *(v1 + 20));
      if (v25)
      {
        v26._object = 0xE900000000000045;
        v26._countAndFlagsBits = 0x43415053454D414ELL;
        result = ByteBuffer._setStringSlowpath(_:at:)(v26, v17);
      }

      v27 = *(v1 + 20);
      v23 = __CFADD__(v27, result);
      v24 = v27 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_14:
      v28 = sub_1003D4874(*v17);
LABEL_103:

      return v28;
    default:
      v18 = sub_1003D1064(*v17, *(v17 + 8), *(v17 + 16));
      goto LABEL_101;
  }
}

uint64_t sub_1003D1064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x20455441455243, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x20455441455243;
    v10._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + 20) = v14;
  result = sub_100441F24(a1);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = *(v3 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = result;
    v21 = *(v3 + 20);
    v22 = (v21 + result);
    if (__CFADD__(v21, result))
    {
      goto LABEL_31;
    }

    *(v3 + 20) = v22;
    v47 = a3;
    result = sub_1002F178C(0, 0xE000000000000000, (v3 + 8), v22);
    if (v23)
    {
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v3 + 20);
    v27 = (v26 + result);
    if (__CFADD__(v26, result))
    {
      goto LABEL_32;
    }

    *(v3 + 20) = v27;
    result = sub_1002F178C(40, 0xE100000000000000, (v3 + 8), v27);
    if (v28)
    {
      v29._countAndFlagsBits = 40;
      v29._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
    }

    v30 = *(v3 + 20);
    v13 = __CFADD__(v30, result);
    v31 = v30 + result;
    if (v13)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v31;
    v32 = v25 + result;
    if (__OFADD__(v25, result))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __chkstk_darwin(result);
    v46[2] = sub_1003D4E2C;
    v46[3] = 0;
    v46[4] = v4;
    v46[5] = &v47;
    v46[6] = 0;
    v46[7] = 0xE000000000000000;
    result = sub_100451E28(0, sub_1003DAA94, v46, a3);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v34 = *(v4 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v4 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_36;
    }

    *(v4 + 20) = v38;
    v39 = __OFADD__(v33, result);
    v40 = v33 + result;
    if (v39)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v38);
    if (v41)
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v38);
    }

    v43 = *(v4 + 20);
    v13 = __CFADD__(v43, result);
    v44 = v43 + result;
    if (v13)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v44;
    v45 = v40 + result;
    if (__OFADD__(v40, result))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v39 = __OFADD__(v20, v45);
    v16 = v20 + v45;
    if (v39)
    {
LABEL_40:
      __break(1u);
      return result;
    }
  }

  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1003D1330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v85 = a4;
  v87 = a2;
  v10 = *(a1 + 16);
  v98 = *a1;
  v99 = v10;
  v11 = *(a1 + 32);
  v96 = *(a1 + 40);
  v12 = *(a1 + 64);
  v97 = *(a1 + 56);
  v13 = *(v7 + 20);
  result = sub_1002F178C(1414744396, 0xE400000000000000, (v7 + 8), *(v7 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = 1414744396;
    v16._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = result;
  v18 = *(v7 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_59;
  }

  *(v7 + 20) = v19;
  v20 = *(a1 + 64);
  if (!v20)
  {
    goto LABEL_36;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v7 + 8), v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v7 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_68;
  }

  v81 = result;
  *(v7 + 20) = v24;
  result = sub_1002F178C(40, 0xE100000000000000, (v7 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = 40;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v7 + 20);
  v28 = (v27 + result);
  if (__CFADD__(v27, result))
  {
    goto LABEL_69;
  }

  v82 = result;
  *(v7 + 20) = v28;
  v95 = v12;
  v29 = *(v12 + 16);
  if (v29)
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v94 = v12;
    sub_1003DAAC0(&v89, v88);
    result = sub_1002F178C(0, 0xE000000000000000, (v7 + 8), v28);
    if (v30)
    {
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = result;
    v33 = *(v8 + 20);
    v34 = __CFADD__(v33, result);
    v35 = v33 + result;
    if (v34)
    {
      goto LABEL_78;
    }

    *(v8 + 20) = v35;
  }

  else
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v94 = v12;
    result = sub_1003DAAC0(&v89, v88);
    v32 = 0;
  }

  __chkstk_darwin(result);
  v80[2] = sub_100438924;
  v80[3] = 0;
  v80[4] = v8;
  v80[5] = &v95;
  v80[6] = 0;
  v80[7] = 0xE000000000000000;
  result = sub_10045219C(0, sub_1003DAB1C, v80, v12);
  v36 = v32 + result;
  if (__OFADD__(v32, result))
  {
    goto LABEL_70;
  }

  if (v29)
  {
    v37 = *(v8 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v8 + 8), *(v8 + 20));
    if (v38)
    {
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v8 + 20);
    v34 = __CFADD__(v40, result);
    v41 = v40 + result;
    if (v34)
    {
      goto LABEL_79;
    }

    *(v8 + 20) = v41;
    v42 = v36 + result;
    if (!__OFADD__(v36, result))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v42 = v32 + result;
LABEL_23:
  if (v11 == 0xFF)
  {
    v43 = *(v8 + 20);
    v44 = sub_1002F178C(0x4249524353425553, 0xEA00000000004445, (v8 + 8), *(v8 + 20));
    if (v45)
    {
      v46._countAndFlagsBits = 0x4249524353425553;
      v46._object = 0xEA00000000004445;
      v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
    }

    v47 = v44;
    result = sub_100025F40(a1, &qword_1005DC128, &qword_100500D08);
    v48 = *(v8 + 20);
    v34 = __CFADD__(v48, v47);
    v49 = v48 + v47;
    if (v34)
    {
      goto LABEL_80;
    }

    *(v8 + 20) = v49;
  }

  else
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v47 = sub_100462548(&v89);
    result = sub_100025F40(a1, &qword_1005DC128, &qword_100500D08);
  }

  v50 = v42 + v47;
  if (__OFADD__(v42, v47))
  {
    goto LABEL_71;
  }

  v51 = v82 + v50;
  if (__OFADD__(v82, v50))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v52 = *(v8 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v53)
  {
    v54._countAndFlagsBits = 41;
    v54._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v52);
  }

  v55 = *(v8 + 20);
  LODWORD(v19) = v55 + result;
  if (__CFADD__(v55, result))
  {
    goto LABEL_73;
  }

  *(v8 + 20) = v19;
  v56 = v51 + result;
  if (__OFADD__(v51, result))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v57 = __OFADD__(v81, v56);
  v20 = v81 + v56;
  if (v57)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_36:
  v58 = v17 + v20;
  if (__OFADD__(v17, v20))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), v19);
  if (v59)
  {
    v60._countAndFlagsBits = 32;
    v60._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v60, v19);
  }

  v61 = *(v8 + 20);
  v34 = __CFADD__(v61, result);
  v62 = v61 + result;
  if (v34)
  {
    goto LABEL_61;
  }

  *(v8 + 20) = v62;
  v63 = v58 + result;
  if (__OFADD__(v58, result))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_100441F24(v87);
  v64 = v63 + result;
  if (__OFADD__(v63, result))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v65 = *(v8 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v66)
  {
    v67._countAndFlagsBits = 32;
    v67._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v67, v65);
  }

  v68 = v86;
  v69 = *(v8 + 20);
  v34 = __CFADD__(v69, result);
  v70 = v69 + result;
  if (v34)
  {
    goto LABEL_64;
  }

  *(v8 + 20) = v70;
  v71 = v64 + result;
  if (__OFADD__(v64, result))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if ((v84 & 0x100000000000000) != 0)
  {
    result = sub_100475A74(v85);
  }

  else
  {
    result = sub_1003B1E70(v85, v83, v84 & 0xFFFFFFFFFFFFFFLL);
  }

  v72 = v71 + result;
  if (__OFADD__(v71, result))
  {
    goto LABEL_66;
  }

  v73 = *(v68 + 16);
  if (v73)
  {
    v74 = *(v8 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v75)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v76, v74);
    }

    v77 = result;
    v78 = *(v8 + 20);
    v34 = __CFADD__(v78, result);
    v79 = v78 + result;
    if (v34)
    {
      goto LABEL_76;
    }

    *(v8 + 20) = v79;
    result = sub_1004366B8(v68);
    v73 = v77 + result;
    if (__OFADD__(v77, result))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return result;
    }
  }

  result = v72 + v73;
  if (__OFADD__(v72, v73))
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_1003D190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v68 = a7;
  v14 = *(v7 + 20);
  result = sub_1002F178C(1414744396, 0xE400000000000000, (v7 + 8), *(v7 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 1414744396;
    v17._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = result;
  v19 = *(v7 + 20);
  v20 = (v19 + result);
  if (__CFADD__(v19, result))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 20) = v20;
  v21 = *(a1 + 16);
  v67 = a5;
  if (v21)
  {
    v69 = a1;
    result = sub_1002F178C(0, 0xE000000000000000, (v7 + 8), v20);
    if (v22)
    {
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
    }

    v24 = result;
    v25 = *(v7 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_51;
    }

    *(v7 + 20) = v26;
    result = sub_1002F178C(40, 0xE100000000000000, (v7 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v7 + 20);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_52;
    }

    *(v7 + 20) = v31;
    v32 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __chkstk_darwin(result);
    v66[2] = sub_1003D4E50;
    v66[3] = 0;
    v66[4] = v8;
    v66[5] = &v69;
    v66[6] = 32;
    v66[7] = 0xE100000000000000;
    result = sub_1004521D8(0, sub_1003DAB48, v66, a1);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v34 = *(v8 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v8 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_55;
    }

    *(v8 + 20) = v38;
    v39 = __OFADD__(v33, result);
    v40 = v33 + result;
    if (v39)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v8 + 8), v38);
    if (v41)
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v38);
    }

    v43 = *(v8 + 20);
    LODWORD(v20) = v43 + result;
    if (__CFADD__(v43, result))
    {
      goto LABEL_57;
    }

    *(v8 + 20) = v20;
    v21 = v40 + result;
    if (__OFADD__(v40, result))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v44 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_43;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), v20);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v20);
  }

  v47 = *(v8 + 20);
  v30 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v30)
  {
    goto LABEL_44;
  }

  *(v8 + 20) = v48;
  v49 = v44 + result;
  if (__OFADD__(v44, result))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = sub_100441F24(a2);
  v50 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v51 = *(v8 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v52)
  {
    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v51);
  }

  v54 = *(v8 + 20);
  v30 = __CFADD__(v54, result);
  v55 = v54 + result;
  if (v30)
  {
    goto LABEL_47;
  }

  *(v8 + 20) = v55;
  v56 = v50 + result;
  if (__OFADD__(v50, result))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    result = sub_100475A74(a4);
  }

  else
  {
    result = sub_1003B1E70(a4, v67, a6 & 0xFFFFFFFFFFFFFFLL);
  }

  v57 = v68;
  v58 = v56 + result;
  if (__OFADD__(v56, result))
  {
    goto LABEL_49;
  }

  v59 = *(v68 + 16);
  if (v59)
  {
    v60 = *(v8 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v61)
    {
      v62._countAndFlagsBits = 32;
      v62._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v62, v60);
    }

    v63 = result;
    v64 = *(v8 + 20);
    v30 = __CFADD__(v64, result);
    v65 = v64 + result;
    if (v30)
    {
      goto LABEL_59;
    }

    *(v8 + 20) = v65;
    result = sub_1004366B8(v57);
    v59 = v63 + result;
    if (__OFADD__(v63, result))
    {
LABEL_60:
      __break(1u);
      return result;
    }
  }

  result = v58 + v59;
  if (__OFADD__(v58, v59))
  {
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1003D1CE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  result = sub_1002F178C(0x204255534CLL, 0xE500000000000000, (v5 + 8), *(v5 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x204255534CLL;
    v13._object = 0xE500000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  result = sub_100441F24(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v5 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = sub_1003B1E70(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL);
  v26 = __OFADD__(v24, v25);
  result = v24 + v25;
  if (v26)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v174 = a6;
  v175 = a7;
  v11 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v172 = *(v11 - 8);
  v12 = *(v172 + 64);
  __chkstk_darwin(v11 - 8);
  v160 = &v151 - v13;
  v159 = type metadata accessor for ParameterValue();
  v14 = *(v159 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v159);
  v155 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v17 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v184 = (&v151 - v18);
  v170 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  v19 = *(*(v170 - 8) + 64);
  v20 = __chkstk_darwin(v170);
  v169 = (&v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v168 = (&v151 - v22);
  v167 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
  v23 = *(*(v167 - 8) + 64);
  v24 = __chkstk_darwin(v167);
  v166 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v165 = (&v151 - v27);
  v28 = __chkstk_darwin(v26);
  v183 = (&v151 - v29);
  v30 = __chkstk_darwin(v28);
  v164 = (&v151 - v31);
  __chkstk_darwin(v30);
  v163 = &v151 - v32;
  v162 = sub_10000C9C0(&qword_1005DC308, &qword_100503010);
  v33 = *(*(v162 - 8) + 64);
  v34 = __chkstk_darwin(v162);
  v161 = (&v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v182 = (&v151 - v36);
  v37 = *(v7 + 20);
  v38 = 0;
  result = sub_1002F178C(0x20454D414E4552, 0xE700000000000000, (v7 + 8), *(v7 + 20));
  if (v40)
  {
    v41._countAndFlagsBits = 0x20454D414E4552;
    v41._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v37);
  }

  v42 = result;
  v43 = *(v7 + 20);
  v44 = __CFADD__(v43, result);
  v45 = v43 + result;
  if (v44)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v46 = v7;
  *(v7 + 20) = v45;
  result = sub_100441F24(a1);
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v48 = *(v7 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v7 + 8), *(v7 + 20));
  if (v49)
  {
    v50._countAndFlagsBits = 32;
    v50._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v50, v48);
  }

  v51 = *(v7 + 20);
  v44 = __CFADD__(v51, result);
  v52 = v51 + result;
  if (v44)
  {
    goto LABEL_65;
  }

  *(v7 + 20) = v52;
  v53 = __OFADD__(v47, result);
  v54 = v47 + result;
  if (v53)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = sub_100441F24(a3);
  v53 = __OFADD__(v54, result);
  v55 = v54 + result;
  if (v53)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v56 = *(v175 + 16);
  v173 = v56;
  if (v56)
  {
    v57 = *(v7 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v7 + 8), *(v7 + 20));
    if (v58)
    {
      v59._countAndFlagsBits = 32;
      v59._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v59, v57);
    }

    v60 = *(v7 + 20);
    v61 = (v60 + result);
    if (!__CFADD__(v60, result))
    {
      v152 = result;
      *(v7 + 20) = v61;
      result = sub_1002F178C(0, 0xE000000000000000, (v7 + 8), v61);
      if (v62)
      {
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v63, v61);
      }

      v64 = result;
      v65 = *(v7 + 20);
      v66 = (v65 + result);
      if (!__CFADD__(v65, result))
      {
        *(v7 + 20) = v66;
        result = sub_1002F178C(40, 0xE100000000000000, (v7 + 8), v66);
        if (v67)
        {
          v68._countAndFlagsBits = 40;
          v68._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v68, v66);
        }

        v69 = *(v7 + 20);
        v44 = __CFADD__(v69, result);
        v70 = v69 + result;
        if (!v44)
        {
          *(v7 + 20) = v70;
          if (!__OFADD__(v64, result))
          {
            v153 = v64 + result;
            v151 = v55;
            v157 = (v14 + 48);
            v156 = v173 - 1;
            v154 = a5;
            swift_retain_n();
            v71 = v174;
            swift_retain_n();
            result = swift_retain_n();
            v72 = 0;
            v73 = 0;
            v74 = (v71 + 40);
            v75 = &unk_100502FF0;
            v158 = v46;
            do
            {
              if (v73 >= *(v174 + 16))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v76 = v170;
              v77 = *(v170 + 48);
              v181 = v38;
              v177 = v74;
              v78 = *(v74 - 1);
              v79 = *v74;
              v179 = v72;
              v180 = v79;
              v80 = v168;
              *v168 = v78;
              v80[1] = v79;
              sub_10000E268(v175 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v73, v80 + v77, &qword_1005D7F50, v75);
              v81 = v80;
              v82 = v169;
              sub_100025FDC(v81, v169, &qword_1005D8488, &unk_100503000);
              v83 = *(v76 + 48);
              v84 = v167;
              v85 = *(v167 + 48);
              v86 = v82[1];
              v87 = v164;
              *v164 = *v82;
              v87[1] = v86;
              sub_100025FDC(v82 + v83, v87 + v85, &qword_1005D7F50, v75);
              v88 = v87;
              v89 = v163;
              sub_100025FDC(v88, v163, &qword_1005DBCA0, &qword_1004FE5C0);
              v90 = v162;
              v91 = *(v162 + 48);
              v92 = v182;
              v176 = v73;
              *v182 = v73;
              sub_100025FDC(v89, v92 + v91, &qword_1005DBCA0, &qword_1004FE5C0);
              v93 = v161;
              sub_10000E268(v92, v161, &qword_1005DC308, &qword_100503010);
              v178 = *v93;
              v94 = (v93 + *(v90 + 48));
              v95 = *(v84 + 48);
              v96 = *v94;
              v97 = v94[1];
              v98 = v165;
              sub_100025FDC(v94 + v95, v165 + v95, &qword_1005D7F50, v75);
              v99 = *(v84 + 48);
              v100 = v183;
              *v183 = v96;
              v100[1] = v97;
              sub_100025FDC(v98 + v95, v100 + v99, &qword_1005D7F50, v75);
              sub_10000E268(v100, v98, &qword_1005DBCA0, &qword_1004FE5C0);
              v101 = v158;
              v102 = *(v84 + 48);
              v103 = v166;
              sub_10000E268(v100, v166, &qword_1005DBCA0, &qword_1004FE5C0);
              v104 = *(v84 + 48);
              v105 = *v98;
              v106 = v98[1];
              v107 = v184;
              *v184 = *v98;
              v107[1] = v106;
              v108 = *(v171 + 52);
              sub_100025FDC(v103 + v104, v107 + v108, &qword_1005D7F50, v75);
              v109 = *(v103 + 8);

              v110 = v98 + v102;
              v111 = v75;
              sub_100025F40(v110, &qword_1005D7F50, v75);
              v112 = *(v101 + 20);
              v38 = v181;
              result = sub_1002F178C(v105, v106, (v101 + 8), *(v101 + 20));
              if (v113)
              {
                v114._countAndFlagsBits = v105;
                v114._object = v106;
                result = ByteBuffer._setStringSlowpath(_:at:)(v114, v112);
              }

              v115 = result;
              v116 = *(v101 + 20);
              v117 = (v116 + result);
              if (__CFADD__(v116, result))
              {
                goto LABEL_56;
              }

              v75 = v111;
              *(v101 + 20) = v117;
              v118 = v184 + v108;
              v119 = v160;
              sub_10000E268(v118, v160, &qword_1005D7F50, v111);
              if ((*v157)(v119, 1, v159) == 1)
              {
                result = sub_100025F40(v119, &qword_1005D7F50, v111);
                v120 = 0;
                v121 = v179;
              }

              else
              {
                v122 = v119;
                v123 = v155;
                sub_1002FC114(v122, v155);
                result = sub_1002F178C(32, 0xE100000000000000, (v101 + 8), v117);
                v121 = v179;
                if (v124)
                {
                  v125._countAndFlagsBits = 32;
                  v125._object = 0xE100000000000000;
                  result = ByteBuffer._setStringSlowpath(_:at:)(v125, v117);
                }

                v126 = result;
                v127 = *(v101 + 20);
                v44 = __CFADD__(v127, result);
                v128 = v127 + result;
                if (v44)
                {
                  goto LABEL_60;
                }

                *(v101 + 20) = v128;
                v129 = sub_100463ACC(v123);
                result = sub_1003DADA0(v123, type metadata accessor for ParameterValue);
                v120 = v126 + v129;
                if (__OFADD__(v126, v129))
                {
                  goto LABEL_61;
                }
              }

              v130 = v115 + v120;
              if (__OFADD__(v115, v120))
              {
                goto LABEL_57;
              }

              result = sub_100025F40(v184, &qword_1005DBCA8, &unk_100504BF0);
              v131 = v121 + v130;
              if (__OFADD__(v121, v130))
              {
                goto LABEL_58;
              }

              if (v178 >= v156)
              {
                result = sub_100025F40(v183, &qword_1005DBCA0, &qword_1004FE5C0);
                v136 = 0;
              }

              else
              {
                v132 = *(v101 + 20);
                v133 = sub_1002F178C(32, 0xE100000000000000, (v101 + 8), *(v101 + 20));
                if (v134)
                {
                  v135._countAndFlagsBits = 32;
                  v135._object = 0xE100000000000000;
                  v133 = ByteBuffer._setStringSlowpath(_:at:)(v135, v132);
                }

                v136 = v133;
                result = sub_100025F40(v183, &qword_1005DBCA0, &qword_1004FE5C0);
                v137 = *(v101 + 20);
                v44 = __CFADD__(v137, v136);
                v138 = v137 + v136;
                if (v44)
                {
                  goto LABEL_62;
                }

                *(v101 + 20) = v138;
              }

              v53 = __OFADD__(v131, v136);
              v72 = v131 + v136;
              if (v53)
              {
                goto LABEL_59;
              }

              v73 = v176 + 1;
              result = sub_100025F40(v182, &qword_1005DC308, &qword_100503010);
              v74 = v177 + 2;
            }

            while (v173 != v73);

            v139 = v153 + v72;
            if (__OFADD__(v153, v72))
            {
              goto LABEL_73;
            }

            v140 = *(v101 + 20);
            result = sub_1002F178C(41, 0xE100000000000000, (v101 + 8), *(v101 + 20));
            if (v141)
            {
              v142._countAndFlagsBits = 41;
              v142._object = 0xE100000000000000;
              result = ByteBuffer._setStringSlowpath(_:at:)(v142, v140);
            }

            v143 = *(v101 + 20);
            v144 = (v143 + result);
            if (!__CFADD__(v143, result))
            {
              *(v101 + 20) = v144;
              v53 = __OFADD__(v139, result);
              v145 = v139 + result;
              if (v53)
              {
                goto LABEL_75;
              }

              result = sub_1002F178C(0, 0xE000000000000000, (v101 + 8), v144);
              if (v146)
              {
                v147._countAndFlagsBits = 0;
                v147._object = 0xE000000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v147, v144);
              }

              v148 = *(v101 + 20);
              v44 = __CFADD__(v148, result);
              v149 = v148 + result;
              if (!v44)
              {
                *(v101 + 20) = v149;
                v150 = v145 + result;
                if (__OFADD__(v145, result))
                {
                  goto LABEL_77;
                }

                v53 = __OFADD__(v152, v150);
                v56 = v152 + v150;
                if (!v53)
                {
                  v55 = v151;
                  goto LABEL_53;
                }

                goto LABEL_78;
              }

LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              return result;
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_53:
  result = v55 + v56;
  if (__OFADD__(v55, v56))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  return result;
}

uint64_t sub_1003D2998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 20);
  result = sub_1002F178C(0x20535554415453, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_100441F24(a1);
  v14 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + 20);
  result = sub_1002F178C(10272, 0xE200000000000000, (v3 + 8), *(v3 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 10272;
    v17._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v3 + 20);
  v12 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v19;
  v20 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10043C43C(a3);
  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = *(v3 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v3 + 20);
  v12 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v27;
  v21 = __OFADD__(v22, result);
  result += v22;
  if (v21)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D2B0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(v6 + 20);
  result = sub_1002F178C(0x49544E4548545541, 0xED00002045544143, (v6 + 8), *(v6 + 20));
  v46 = a5;
  if (v13)
  {
    v14._countAndFlagsBits = 0x49544E4548545541;
    v14._object = 0xED00002045544143;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v6 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v6 + 20) = v17;
  result = sub_1002F178C(a1, a2, (v6 + 8), v17);
  if (v18)
  {
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v6 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_37;
  }

  *(v6 + 20) = v21;
  v22 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_34;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v6 + 8), v21);
  if (v23)
  {
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
  }

  v25 = result;
  v26 = *(v6 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_40;
  }

  *(v6 + 20) = v27;
  if (*v6 != 1)
  {
    v34 = HIDWORD(a4);
    if (HIDWORD(a4) == a4)
    {
      result = sub_1002F178C(61, 0xE100000000000000, (v6 + 8), v27);
      if (v40)
      {
        v41._countAndFlagsBits = 61;
        v41._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v41, v27);
      }

      v42 = result;
      v43 = *(v6 + 20);
      v31 = __CFADD__(v43, result);
      v44 = v43 + result;
      if (v31)
      {
        goto LABEL_47;
      }

      *(v6 + 20) = v44;
    }

    else
    {
      v35 = v34 - a4;
      if (v34 < a4)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v36 = (WORD2(v46) << 8) | BYTE6(v46);
      if ((v46 - v36) < v34)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v49[0] = a3;
      v49[1] = a4;
      v50 = v46;
      v51 = WORD2(v46);
      v52 = BYTE6(v46);
      v53 = a4;
      v54 = HIDWORD(a4);
      result = swift_beginAccess();
      if (v35 < -4)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v37 = 4 * ((v35 + 2) / 3);
      v38 = *(a3 + 24);

      if (v35 < 1)
      {
        v39 = _swiftEmptyArrayStorage;
      }

      else
      {
        v39 = sub_1004A5C64();
        v39[2] = v37;
      }

      v48 = 0;
      result = sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v38 + v36 + a4, v35, (v39 + 4), v37, 0, &v48);
      if (v37 < v48)
      {
        goto LABEL_46;
      }

      v39[2] = v48;
      sub_1003A52D0(v49);
      sub_1003E0AC4(v39);
      v42 = v45;
    }

    v33 = v25 + v42;
    if (__OFADD__(v25, v42))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  result = sub_1002F178C(8751330, 0xA300000000000000, (v6 + 8), v27);
  if (v28)
  {
    v29._countAndFlagsBits = 8751330;
    v29._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v6 + 20);
  v31 = __CFADD__(v30, result);
  v32 = v30 + result;
  if (v31)
  {
    goto LABEL_41;
  }

  *(v6 + 20) = v32;
  v33 = v25 + result;
  if (__OFADD__(v25, result))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_34:
  result = v22 + v33;
  if (__OFADD__(v22, v33))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t sub_1003D2E74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 20);
  result = sub_1002F178C(0x204E49474F4CLL, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x204E49474F4CLL;
    v12._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  result = sub_100441B60(a1, a2);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v4 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v4 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = sub_100441B60(a3, a4);
  v25 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v25)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D2FAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20454C42414E45, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x20454C42414E45;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003C40B8;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100451D54(0, sub_1003C4564, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1002F178C(a4, a5, (v6 + 8), *(v6 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(v6 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v6 + 8), *(v6 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_14;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_1003ED4FC(a2);
  v27 = __OFADD__(v26, result);
  v28 = v26 + result;
  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_1003EF9B8(a3);
  v27 = __OFADD__(v28, v29);
  result = v28 + v29;
  if (v27)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D32D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x2045524F5453, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x2045524F5453;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v17;
  result = sub_10048D800(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = *(v4 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v4 + 20);
    v25 = (v24 + result);
    if (__CFADD__(v24, result))
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v25;
    v60 = a2;
    result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = result;
    v29 = *(v4 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v30;
    result = sub_1002F178C(40, 0xE100000000000000, (v4 + 8), v30);
    if (v31)
    {
      v32._countAndFlagsBits = 40;
      v32._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
    }

    v33 = *(v4 + 20);
    v16 = __CFADD__(v33, result);
    v34 = v33 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v4 + 20) = v34;
    v35 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    __chkstk_darwin(result);
    v59[2] = sub_1003D52A8;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1004525B0(0, sub_1003DABA8, v59, a2);
    v36 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = *(v5 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v38)
    {
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v5 + 20);
    v41 = (v40 + result);
    if (__CFADD__(v40, result))
    {
      goto LABEL_47;
    }

    *(v5 + 20) = v41;
    v42 = __OFADD__(v36, result);
    v43 = v36 + result;
    if (v42)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), v41);
    if (v44)
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v41);
    }

    v46 = *(v5 + 20);
    v16 = __CFADD__(v46, result);
    v47 = v46 + result;
    if (v16)
    {
      goto LABEL_49;
    }

    *(v5 + 20) = v47;
    v48 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v42 = __OFADD__(v23, v48);
    v19 = v23 + v48;
    if (v42)
    {
LABEL_51:
      __break(1u);
      return result;
    }
  }

  v49 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_39;
  }

  v50 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
  }

  v53 = *(v5 + 20);
  v16 = __CFADD__(v53, result);
  v54 = v53 + result;
  if (v16)
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v54;
  v55 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v57 = sub_10049CC04(v56, a4);
    v42 = __OFADD__(v55, v57);
    result = v55 + v57;
    if (!v42)
    {
      return result;
    }

    goto LABEL_36;
  }

  v58 = sub_10049CD5C(v56, a4);
  v42 = __OFADD__(v55, v58);
  result = v55 + v58;
  if (v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_1003D362C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x524F545320444955, 0xEA00000000002045, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x524F545320444955;
    v13._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_10048DA10(a1);
  v18 = __OFADD__(v14, result);
  v19 = v14 + result;
  if (v18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v54 = a2;
    v21 = *(v4 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v26;
    result = sub_1002F178C(40, 0xE100000000000000, (v4 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v16 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v16)
    {
      goto LABEL_39;
    }

    *(v4 + 20) = v30;
    v31 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    __chkstk_darwin(result);
    v53[2] = sub_10049D76C;
    v53[3] = 0;
    v53[4] = v5;
    v53[5] = &v54;
    v53[6] = 32;
    v53[7] = 0xE100000000000000;
    result = sub_1004525B0(0, sub_1003DAE00, v53, a2);
    v32 = v31 + result;
    if (__OFADD__(v31, result))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v5 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v34)
    {
      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
    }

    v36 = *(v5 + 20);
    v37 = (v36 + result);
    if (__CFADD__(v36, result))
    {
      goto LABEL_42;
    }

    *(v5 + 20) = v37;
    v18 = __OFADD__(v32, result);
    v38 = v32 + result;
    if (v18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), v37);
    if (v39)
    {
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v5 + 20);
    v16 = __CFADD__(v41, result);
    v42 = v41 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v5 + 20) = v42;
    v20 = v38 + result;
    if (__OFADD__(v38, result))
    {
LABEL_45:
      __break(1u);
      return result;
    }
  }

  v43 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_35;
  }

  v44 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
  }

  v47 = *(v5 + 20);
  v16 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v16)
  {
    goto LABEL_36;
  }

  *(v5 + 20) = v48;
  v49 = v43 + result;
  if (__OFADD__(v43, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v51 = sub_10049CC04(v50, a4);
    v18 = __OFADD__(v49, v51);
    result = v49 + v51;
    if (!v18)
    {
      return result;
    }

    goto LABEL_32;
  }

  v52 = sub_10049CD5C(v50, a4);
  v18 = __OFADD__(v49, v52);
  result = v49 + v52;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1003D3940(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x484352414553, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x484352414553;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v17;
  result = sub_10048FB98(a4);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v4 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_20;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_100489F10(a1);
  v26 = 0;
  if ((result & 1) != 0 && a3)
  {
    v34._countAndFlagsBits = a2;
    v34._object = a3;
    sub_1004A5994(v34);
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_1004A5994(v35);
    v27 = sub_1002F178C(0x2054455352414843, 0xE800000000000000, (v5 + 8), v23);
    if (v28)
    {
      v29._countAndFlagsBits = 0x2054455352414843;
      v29._object = 0xE800000000000000;
      v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v23);
    }

    v26 = v27;

    v30 = *(v5 + 20);
    v16 = __CFADD__(v30, v26);
    v31 = v30 + v26;
    if (v16)
    {
      goto LABEL_24;
    }

    *(v5 + 20) = v31;
  }

  v32 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_22;
  }

  v33 = sub_10048AE40(a1);
  v24 = __OFADD__(v32, v33);
  result = v32 + v33;
  if (v24)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1002F178C(a4, a5, (v6 + 8), *(v6 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = *(v6 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v6 + 8), *(v6 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_13;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = sub_100441F24(a2);
  v28 = __OFADD__(v26, v27);
  result = v26 + v27;
  if (v28)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D3C44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1002F178C(0x41544F5551544553, 0xE900000000000020, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x41544F5551544553;
    v13._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1003B1E70(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = *(v4 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_35;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = a4;
  v26 = *(a4 + 16);
  if (v26)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v23);
    if (v27)
    {
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v23);
    }

    v29 = result;
    v30 = *(v4 + 20);
    LODWORD(v23) = v30 + result;
    if (__CFADD__(v30, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v23;
  }

  else
  {
    v29 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v4 + 8), v23);
  if (v31)
  {
    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v23);
  }

  v33 = *(v4 + 20);
  v16 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __chkstk_darwin(result);
  v48[2] = sub_1003D54E8;
  v48[3] = 0;
  v48[4] = v5;
  v48[5] = &v49;
  v48[6] = 32;
  v48[7] = 0xE100000000000000;
  result = sub_100452600(0, sub_1003DAC3C, v48, a4);
  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = *(v5 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v38)
  {
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
  }

  v40 = *(v5 + 20);
  v41 = (v40 + result);
  if (__CFADD__(v40, result))
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v41;
  v24 = __OFADD__(v36, result);
  v42 = v36 + result;
  if (v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
    v47 = v42;
    goto LABEL_29;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), v41);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
  }

  v45 = *(v5 + 20);
  v16 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v16)
  {
    goto LABEL_44;
  }

  *(v5 + 20) = v46;
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:
  result = v25 + v47;
  if (__OFADD__(v25, v47))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D3F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  result = sub_1002F178C(0x444154454D544547, 0xEB00000000415441, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544547;
    v12._object = 0xEB00000000415441;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v4 + 20) = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v4 + 8), v15);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = (v20 + result);
    if (__CFADD__(v20, result))
    {
      goto LABEL_45;
    }

    *(v4 + 20) = v21;
    v60 = a1;
    result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v21);
    if (v22)
    {
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v26;
    result = sub_1002F178C(40, 0xE100000000000000, (v4 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_47;
    }

    *(v4 + 20) = v31;
    v32 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __chkstk_darwin(result);
    v59[2] = sub_10045ADA4;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1004526CC(0, sub_1003DAC60, v59, a1);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v34 = *(v5 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v5 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_50;
    }

    *(v5 + 20) = v38;
    v39 = v33 + result;
    if (__OFADD__(v33, result))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), v38);
    if (v40)
    {
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = *(v5 + 20);
    LODWORD(v15) = v42 + result;
    if (__CFADD__(v42, result))
    {
      goto LABEL_52;
    }

    *(v5 + 20) = v15;
    v43 = v39 + result;
    if (__OFADD__(v39, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v44 = __OFADD__(v19, v43);
    v16 = v19 + v43;
    if (v44)
    {
LABEL_54:
      __break(1u);
      return result;
    }
  }

  v45 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
    goto LABEL_38;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), v15);
  if (v46)
  {
    v47._countAndFlagsBits = 32;
    v47._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v47, v15);
  }

  v48 = *(v5 + 20);
  v30 = __CFADD__(v48, result);
  v49 = v48 + result;
  if (v30)
  {
    goto LABEL_39;
  }

  *(v5 + 20) = v49;
  v50 = v45 + result;
  if (__OFADD__(v45, result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_100441F24(a2);
  v44 = __OFADD__(v50, result);
  v51 = v50 + result;
  if (v44)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v52 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v53)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v52);
  }

  v55 = *(v5 + 20);
  v30 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v56;
  v57 = v51 + result;
  if (__OFADD__(v51, result))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = sub_1003E6898(a4);
  v44 = __OFADD__(v57, v58);
  result = v57 + v58;
  if (v44)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1003D42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 20);
  result = sub_1002F178C(0x444154454D544553, 0xEC00000020415441, (v5 + 8), *(v5 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544553;
    v12._object = 0xEC00000020415441;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v16;
  result = sub_100441F24(a1);
  v17 = __OFADD__(v13, result);
  v18 = v13 + result;
  if (v17)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v5 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v5 + 20);
  v15 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = sub_1003E6AB8(a3, a4, a5);
  v17 = __OFADD__(v24, v25);
  result = v24 + v25;
  if (v17)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4430(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x59454B5445534552, 0xE800000000000000, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x59454B5445534552;
    v10._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    goto LABEL_27;
  }

  *(v3 + 20) = v13;
  if (!a1)
  {
    v28 = 0;
    goto LABEL_23;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), v13);
  if (v14)
  {
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(v3 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_29;
  }

  *(v3 + 20) = v19;
  result = sub_100441F24(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v38 = a3;
  v21 = a3[2];
  if (v21)
  {
    v22 = *(v3 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
    if (v23)
    {
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v4 + 20);
    v18 = __CFADD__(v26, result);
    v27 = v26 + result;
    if (v18)
    {
      goto LABEL_33;
    }

    *(v4 + 20) = v27;
  }

  else
  {
    v25 = 0;
  }

  __chkstk_darwin(result);
  v37[2] = sub_1003C40B8;
  v37[3] = 0;
  v37[4] = v4;
  v37[5] = &v38;
  v37[6] = 32;
  v37[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003DACD4, v37, a3);
  v29 = v25 + result;
  if (__OFADD__(v25, result))
  {
    goto LABEL_31;
  }

  if (!v21)
  {
    result = 0;
    v35 = v29;
    goto LABEL_22;
  }

  v30 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v31)
  {
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v4 + 20);
  v18 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v18)
  {
    goto LABEL_34;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v36 = __OFADD__(v20, v35);
  v28 = v20 + v35;
  if (v36)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

LABEL_23:
  result = v11 + v28;
  if (__OFADD__(v11, v28))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1003D468C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x55414C52554E4547, 0xEA00000000004854, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x55414C52554E4547;
    v7._object = 0xEA00000000004854;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003D4DEC;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100452734(0, sub_1003DACF8, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4874(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x48435445464C5255, 0xE800000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435445464C5255;
    v7._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003D4D5C;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1004520C0(0, sub_1003DAD1C, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4A54(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v20 = 0x4843544142444955;
  v21 = 0xEB00000000205345;
  v22._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v22);

  v9 = *(v4 + 20);
  v10 = sub_1002F178C(0x4843544142444955, 0xEB00000000205345, (v5 + 8), *(v5 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x4843544142444955;
    v12._object = 0xEB00000000205345;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  *(v5 + 20) = v17;
  if (a4)
  {
    v18 = 0;
  }

  else
  {
    v20 = a2;
    v21 = a3;
    v18 = sub_1003D5084(&v20, v5);
  }

  v19 = __OFADD__(v13, v18);
  result = &v18[v13];
  if (v19)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1003D4B78(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);

  v9 = sub_1002F178C(a1, a2, (v3 + 8), v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;

  v14 = *(v3 + 20);
  v15 = (v14 + v12);
  if (__CFADD__(v14, v12))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v15;
  v31 = a3;
  v16 = *(a3 + 16);
  if (v16)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), v14 + v12);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  __chkstk_darwin(result);
  v30[2] = sub_1003D51E0;
  v30[3] = 0;
  v30[4] = v4;
  v30[5] = &v31;
  v30[6] = 0;
  v30[7] = 0xE000000000000000;
  result = sub_100452870(0, sub_1003DAD48, v30, a3);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
    goto LABEL_21;
  }

  if (!v16)
  {
    v29 = v19 + result;
    goto LABEL_16;
  }

  v24 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v21 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v21)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v12 + v29;
  if (__OFADD__(v12, v29))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4D5C(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    v6 = *(result + 20);
    v7 = *(result + 22);
    if (v5 - (v7 | (v6 << 8)) >= v4)
    {
      v18 = v1;
      v19 = v2;
      v10 = *result;
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = v3;
      v17 = v4;

      sub_1003E0BCC(&v10);
      v9 = v8;
      sub_1003A52D0(&v10);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D4DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_100487790(v3);
}

uint64_t sub_1003D4E50(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (v3 == 254)
  {
LABEL_8:
    v10 = *(v2 + 5);
    v2 = (v2 + 20);
    v9 = v10;
    result = sub_1002F178C(0x2D4C414943455053, 0xEB00000000455355, (v2 - 12), v10);
    if (v11)
    {
      v12._countAndFlagsBits = 0x2D4C414943455053;
      v12._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_11:
      *v2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v3 == 255)
  {
    v2 = (a2 + 20);
    v4 = *(a2 + 5);
    result = sub_1002F178C(0x45544F4D4552, 0xE600000000000000, a2 + 1, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 0x45544F4D4552;
      v7._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *a1;
  v16 = *(a1 + 8);
  if (v3)
  {
    result = sub_100462978(*a1, v16, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v18 = *(a2 + 5);
    result = sub_1002F178C(*a1, v16, a2 + 1, *(a2 + 5));
    if (v19)
    {
      v20._countAndFlagsBits = v17;
      v20._object = v16;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v2 + 5);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v2 + 5) = v23;
  }

  if (HIBYTE(v15) != 255)
  {
    v24 = result;
    v25 = *(v2 + 5);
    sub_1003A30E8(v13, v14, v15, HIBYTE(v15) & 1);
    result = sub_1002F178C(32, 0xE100000000000000, v2 + 1, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 5);
    v22 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (v22)
    {
      goto LABEL_27;
    }

    *(v2 + 5) = v29;
    v30 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v31 = sub_100462BEC(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) & 1) << 56));
    sub_1003A3390(v13, v14, v15);
    result = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_29:
      __break(1u);
    }
  }

  return result;
}

char *sub_1003D5084(char *result, uint64_t a2)
{
  v2 = *result;
  if ((*result - 0x100000000) < 0xFFFFFFFF00000001)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(result + 1);
  if (v3 - 0x100000000 < 0xFFFFFFFF00000001)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < v2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(a2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (a2 + 8), v5);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = result;
  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_21;
  }

  *(a2 + 20) = v11;
  result = sub_10049FCFC(v2);
  v12 = result;
  if (v2 >= v3)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v13 = *(a2 + 20);
  result = sub_1002F178C(58, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_24;
  }

  *(a2 + 20) = v18;
  result = sub_10049FCFC(v3);
  v19 = &result[v16];
  if (__OFADD__(v16, result))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  v20 = __OFADD__(v12, v19);
  v21 = &v19[v12];
  if (v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = &v21[v8];
  if (__OFADD__(v8, v21))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D51E0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_1003B1E70(result, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  }

  if (HIDWORD(v3) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v3) > v4 - (BYTE6(v4) | (WORD2(v4) << 8)))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7[0] = result & 0x7FFFFFFFFFFFFFFFLL;
  v7[1] = v3;
  v8 = v4;
  v9 = WORD2(v4);
  v10 = BYTE6(v4);
  v11 = v3;
  v12 = HIDWORD(v3);

  sub_1003E0BCC(v7);
  v6 = v5;
  sub_1003A52D0(v7);
  return v6;
}

uint64_t sub_1003D52A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v31 - v6);
  v8 = type metadata accessor for StoreModifier();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DABD4(a1, v11, type metadata accessor for StoreModifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100025FDC(v11, v7, &qword_1005DBCA8, &unk_100504BF0);
    v12 = sub_10049EB14(v7);
    sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
    return v12;
  }

  v14 = *v11;
  v15 = *(a2 + 20);
  result = sub_1002F178C(0x45474E4148434E55, 0xEF2045434E495344, (a2 + 8), *(a2 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 0x45474E4148434E55;
    v17._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = *(a2 + 20);
  v20 = (v19 + result);
  if (__CFADD__(v19, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v20;
  v31[0] = v14;
  v21 = sub_1004A6CE4();
  v23 = v22;
  v24 = sub_1002F178C(v21, v22, (a2 + 8), v20);
  if (v25)
  {
    v26._countAndFlagsBits = v21;
    v26._object = v23;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v20);
  }

  v27 = v24;

  v28 = *(a2 + 20);
  v29 = __CFADD__(v28, v27);
  v30 = v28 + v27;
  if (v29)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v30;
  result = v18 + v27;
  if (__OFADD__(v18, v27))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Command.uidBatches(batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 1;
  type metadata accessor for Command();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003D557C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v29[0] = a3;
  v29[1] = a4;
  v30 = a2;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v29 - v9;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v29 - v21;
  sub_10000E268(a1, v10, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    v23 = 1;
  }

  else
  {
    sub_100025FDC(v10, v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v20, v14, &qword_1005CD1D0, &unk_1004CF2C0);
    v23 = 0;
  }

  v24 = *(v16 + 56);
  v24(v14, v23, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
    v25 = type metadata accessor for Command();
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }

  else
  {
    sub_100025FDC(v14, v22, &qword_1005CD1D0, &unk_1004CF2C0);
    v27 = a5 + *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
    sub_100025FDC(v22, a5, &qword_1005CD1D0, &unk_1004CF2C0);
    v24(a5, 0, 1, v15);
    *v27 = v30;
    *(v27 + 8) = v29[0];
    v28 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(a5, 0, 1, v28);
  }
}

uint64_t static Command.uidFetch(messages:attributes:modifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  sub_10000E268(a1, v9, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    v22 = 1;
  }

  else
  {
    sub_100025FDC(v9, v19, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v19, v13, &qword_1005CD1D0, &unk_1004CF2C0);
    v22 = 0;
  }

  v23 = *(v15 + 56);
  v23(v13, v22, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100025F40(v13, &qword_1005CD518, &qword_1004CF2F0);
    v24 = type metadata accessor for Command();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  else
  {
    sub_100025FDC(v13, v21, &qword_1005CD1D0, &unk_1004CF2C0);
    v26 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 64);
    sub_100025FDC(v21, a4, &qword_1005CD1D0, &unk_1004CF2C0);
    v23(a4, 0, 1, v14);
    v29 = v32;
    *(a4 + v27) = v31;
    *(a4 + v28) = v29;
    v30 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(a4, 0, 1, v30);
  }
}

uint64_t static Command.uidStore(messages:modifiers:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v33 - v21;
  sub_10000E268(a1, v10, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    v23 = 1;
  }

  else
  {
    sub_100025FDC(v10, v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v20, v14, &qword_1005CD1D0, &unk_1004CF2C0);
    v23 = 0;
  }

  v24 = *(v16 + 56);
  v24(v14, v23, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
    v25 = type metadata accessor for Command();
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }

  else
  {
    sub_100025FDC(v14, v22, &qword_1005CD1D0, &unk_1004CF2C0);
    v27 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
    v28 = *(v27 + 48);
    v29 = (a5 + *(v27 + 64));
    sub_100025FDC(v22, a5, &qword_1005CD1D0, &unk_1004CF2C0);
    v24(a5, 0, 1, v15);
    v30 = v35;
    *(a5 + v28) = v34;
    v31 = v36;
    *v29 = v30;
    v29[1] = v31;
    v32 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(a5, 0, 1, v32);

    return IndexingDiagnostics.unindexed.getter();
  }
}

uint64_t static Command.uidExpunge(messages:mailbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  sub_10000E268(a1, v7, &unk_1005D91B0, &unk_1004CF400);
  if (sub_1003D6384() < 1)
  {
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v20 = 1;
  }

  else
  {
    sub_100025FDC(v7, v16, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v16, v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v20 = 0;
  }

  v21 = *(v13 + 56);
  v21(v11, v20, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
    v22 = type metadata accessor for Command();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    sub_100025FDC(v11, v19, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v19, a2, &qword_1005CD1D0, &unk_1004CF2C0);
    v21(a2, 0, 1, v12);
    v24 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }
}

uint64_t sub_1003D6384()
{
  v0 = sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v22 = v6;
  (*(v6 + 16))(v10, v12, v5);
  sub_1003DAA44(&qword_1005DC2F8);
  sub_1004A5AC4();
  v13 = *(v1 + 44);
  sub_1003DAA44(&qword_1005DC300);
  v14 = 0;
  while (1)
  {
    sub_1004A5EA4();
    if (*&v4[v13] == v23[0])
    {
      break;
    }

    v15 = sub_1004A5F34();
    v18 = *v16;
    v17 = v16[1];
    v15(v23, 0);
    sub_1004A5EB4();
    v19 = __OFADD__(v14, v17 - v18);
    v14 += v17 - v18;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  sub_100025F40(v4, &qword_1005DC2F0, &qword_100500E20);
  (*(v22 + 8))(v12, v5);
  return v14;
}

uint64_t sub_1003D6610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + 64);
  v12 = *a6;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v14 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v14;
  v17 = v11;
  result = a8(v10, v16, a3, a4, a5, v12);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1003D6670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100491C4C(*a1, *a2, a2[1], a2[2], a2[3], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003D66D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100494CF4(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003D673C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *a6;
  v20[0] = *a2;
  v20[1] = v12;
  v20[2] = *(a2 + 16);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result = sub_100491DBC(v11, v20, a3, a4, a5, v18, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003D67AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100491F40(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v532 = a1;
  v533 = a2;
  v2 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v491 = &v490 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v498 = &v490 - v6;
  __chkstk_darwin(v7);
  v496 = &v490 - v8;
  __chkstk_darwin(v9);
  v495 = &v490 - v10;
  __chkstk_darwin(v11);
  v494 = &v490 - v12;
  v13 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v493 = &v490 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v497 = &v490 - v17;
  __chkstk_darwin(v18);
  v492 = &v490 - v19;
  __chkstk_darwin(v20);
  v490 = &v490 - v21;
  v531 = type metadata accessor for Command();
  v22 = *(*(v531 - 8) + 64);
  __chkstk_darwin(v531);
  v529 = &v490 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v528 = &v490 - v25;
  __chkstk_darwin(v26);
  v527 = &v490 - v27;
  __chkstk_darwin(v28);
  v526 = (&v490 - v29);
  __chkstk_darwin(v30);
  v525 = &v490 - v31;
  __chkstk_darwin(v32);
  v522 = (&v490 - v33);
  __chkstk_darwin(v34);
  v524 = &v490 - v35;
  __chkstk_darwin(v36);
  v519 = &v490 - v37;
  __chkstk_darwin(v38);
  v521 = &v490 - v39;
  __chkstk_darwin(v40);
  v517 = &v490 - v41;
  __chkstk_darwin(v42);
  v516 = &v490 - v43;
  __chkstk_darwin(v44);
  v520 = &v490 - v45;
  __chkstk_darwin(v46);
  v523 = &v490 - v47;
  __chkstk_darwin(v48);
  v513 = (&v490 - v49);
  __chkstk_darwin(v50);
  v518 = &v490 - v51;
  __chkstk_darwin(v52);
  v515 = &v490 - v53;
  __chkstk_darwin(v54);
  v514 = &v490 - v55;
  __chkstk_darwin(v56);
  v509 = &v490 - v57;
  __chkstk_darwin(v58);
  v507 = (&v490 - v59);
  __chkstk_darwin(v60);
  v512 = &v490 - v61;
  __chkstk_darwin(v62);
  v506 = (&v490 - v63);
  __chkstk_darwin(v64);
  v511 = &v490 - v65;
  __chkstk_darwin(v66);
  v510 = &v490 - v67;
  __chkstk_darwin(v68);
  v508 = &v490 - v69;
  __chkstk_darwin(v70);
  v505 = (&v490 - v71);
  __chkstk_darwin(v72);
  v504 = (&v490 - v73);
  __chkstk_darwin(v74);
  v503 = &v490 - v75;
  __chkstk_darwin(v76);
  v502 = &v490 - v77;
  __chkstk_darwin(v78);
  v501 = &v490 - v79;
  __chkstk_darwin(v80);
  v500 = &v490 - v81;
  __chkstk_darwin(v82);
  v499 = &v490 - v83;
  __chkstk_darwin(v84);
  v86 = &v490 - v85;
  __chkstk_darwin(v87);
  v89 = &v490 - v88;
  __chkstk_darwin(v90);
  v92 = &v490 - v91;
  __chkstk_darwin(v93);
  v530 = &v490 - v94;
  __chkstk_darwin(v95);
  v97 = &v490 - v96;
  __chkstk_darwin(v98);
  v100 = &v490 - v99;
  __chkstk_darwin(v101);
  v103 = &v490 - v102;
  v104 = sub_10000C9C0(&qword_1005DC310, &qword_100500E28);
  v105 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104 - 8);
  v107 = &v490 - v106;
  v109 = &v490 + *(v108 + 56) - v106;
  sub_1003DABD4(v532, &v490 - v106, type metadata accessor for Command);
  v110 = v533;
  v533 = v109;
  sub_1003DABD4(v110, v109, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1003DABD4(v107, v100, type metadata accessor for Command);
      v229 = *v100;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_86;
      }

      v305 = *(v100 + 2);
      goto LABEL_170;
    case 2u:
      sub_1003DABD4(v107, v97, type metadata accessor for Command);
      v255 = *v97;
      v256 = *(v97 + 2);
      v257 = v533;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 3u:
      v532 = v107;
      v277 = v530;
      sub_1003DABD4(v107, v530, type metadata accessor for Command);
      v278 = *(v277 + 48);
      v563 = *(v277 + 32);
      v564 = v278;
      v279 = *(v277 + 72);
      v565 = *(v277 + 64);
      v280 = *(v277 + 16);
      v561 = *v277;
      v562 = v280;
      v281 = *(v277 + 80);
      v283 = *(v277 + 88);
      v282 = *(v277 + 96);
      v284 = *(v277 + 104) | ((*(v277 + 108) | (*(v277 + 110) << 16)) << 32);
      v285 = *(v277 + 111);
      v286 = *(v277 + 112);
      v287 = v533;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_1003A30F4(v283, v282, v284, v285);

        sub_100025F40(&v561, &qword_1005DC128, &qword_100500D08);
        v107 = v532;
        goto LABEL_210;
      }

      v531 = v286;
      v288 = *(v287 + 16);
      v289 = *(v287 + 48);
      v558 = *(v287 + 32);
      v559 = v289;
      v290 = *(v287 + 16);
      v557[0] = *v287;
      v557[1] = v290;
      v291 = *(v277 + 16);
      v555 = *v277;
      v556 = v291;
      v553 = *(v277 + 40);
      v292 = *(v287 + 64);
      v529 = *(v287 + 72);
      v560 = v292;
      v293 = *(v287 + 80);
      v294 = *(v287 + 88);
      v295 = *(v287 + 96);
      v296 = *(v287 + 104) | ((*(v287 + 108) | (*(v287 + 110) << 16)) << 32);
      v297 = *(v287 + 111);
      v298 = *(v287 + 112);
      v554 = *(v277 + 56);
      v299 = v563;
      v300 = v565;
      v549 = v557[0];
      v550 = v288;
      v301 = *(v287 + 48);
      v551 = v558;
      v552 = v301;
      v302 = v292;
      if (!v565)
      {
        if (!v292)
        {
          v523 = v293;
          LODWORD(v524) = v297;
          v526 = v294;
          v527 = v295;
          v528 = v296;
          v525 = v298;
          v478 = *(v530 + 16);
          v540 = *v530;
          v541 = v478;
          *&v542[0] = v563;
          *(v542 + 8) = *(v530 + 40);
          *(&v542[1] + 1) = *(v530 + 56);
          v543 = 0;
          sub_10000E268(&v561, &v534, &qword_1005DC128, &qword_100500D08);
          sub_10000E268(v557, &v534, &qword_1005DC128, &qword_100500D08);
          sub_100025F40(&v540, &qword_1005DC128, &qword_100500D08);
          goto LABEL_302;
        }

LABEL_255:
        sub_1003A30F4(v294, v295, v296, v297);
        sub_1003A30F4(v283, v282, v284, v285);

        v540 = v555;
        v541 = v556;
        *(v542 + 8) = v553;
        v544 = v549;
        v545 = v550;
        v546 = v551;
        *&v542[0] = v299;
        *(&v542[1] + 1) = v554;
        v543 = v300;
        v547 = v552;
        v548 = v302;
        v469 = &unk_1005DC318;
        v470 = &unk_100500E30;
        v471 = &v540;
LABEL_256:
        sub_100025F40(v471, v469, v470);
        goto LABEL_311;
      }

      if (!v292)
      {
        goto LABEL_255;
      }

      v303 = *(v533 + 16);
      v540 = *v533;
      v541 = v303;
      v304 = *(v533 + 48);
      v542[0] = *(v533 + 32);
      v542[1] = v304;
      v543 = v292;
      v525 = v298;
      v526 = v294;
      v527 = v295;
      v528 = v296;
      LODWORD(v524) = v297;
      if (v563 == 0xFF)
      {
        if (LOBYTE(v542[0]) == 0xFF)
        {
          v523 = v293;
          sub_10000E268(&v561, &v534, &qword_1005DC128, &qword_100500D08);
          sub_10000E268(v557, &v534, &qword_1005DC128, &qword_100500D08);
          goto LABEL_301;
        }

        goto LABEL_287;
      }

      v476 = *(v530 + 16);
      v566[0] = *v530;
      v566[1] = v476;
      v568 = *(v530 + 40);
      v477 = *(v530 + 56);
      v567 = v563;
      v569 = v477;
      if (LOBYTE(v542[0]) == 0xFF)
      {
LABEL_287:
        sub_10000E268(&v561, &v534, &qword_1005DC128, &qword_100500D08);
        sub_10000E268(v557, &v534, &qword_1005DC128, &qword_100500D08);
LABEL_288:
        sub_100025F40(&v540, &qword_1005DC128, &qword_100500D08);
        v534 = v555;
        v535 = v556;
        v536 = v299;
        v537 = v553;
        v538 = v554;
        v539 = v300;
        sub_100025F40(&v534, &qword_1005DC128, &qword_100500D08);
LABEL_308:
        sub_100025F40(&v561, &qword_1005DC128, &qword_100500D08);
        sub_100025F40(v557, &qword_1005DC128, &qword_100500D08);
        sub_1003A30F4(v526, v527, v528, v524);
        sub_1003A30F4(v283, v282, v284, v285);

        goto LABEL_309;
      }

      v523 = v293;
      v480 = *(v533 + 16);
      v570[0] = *v533;
      v570[1] = v480;
      v572 = *(v533 + 40);
      v481 = *(v533 + 56);
      v571 = *&v542[0];
      v573 = v481;
      sub_10000E268(&v561, &v534, &qword_1005DC128, &qword_100500D08);
      sub_10000E268(v557, &v534, &qword_1005DC128, &qword_100500D08);
      if (!sub_1004369D8(v566, v570))
      {
        goto LABEL_288;
      }

LABEL_301:
      v482 = sub_1003988F4(v300, v302);
      sub_100025F40(&v540, &qword_1005DC128, &qword_100500D08);
      v534 = v555;
      v535 = v556;
      v536 = v299;
      v537 = v553;
      v538 = v554;
      v539 = v300;
      sub_100025F40(&v534, &qword_1005DC128, &qword_100500D08);
      if ((v482 & 1) == 0)
      {
        goto LABEL_308;
      }

LABEL_302:
      if ((v281 | (v281 << 32)) != (v523 | (v523 << 32)))
      {
        goto LABEL_308;
      }

      v483 = sub_1000FFC98(v279, v529);

      if ((v483 & 1) == 0)
      {
        sub_100025F40(&v561, &qword_1005DC128, &qword_100500D08);
        sub_100025F40(v557, &qword_1005DC128, &qword_100500D08);
        sub_1003A30F4(v526, v527, v528, v524);
        sub_1003A30F4(v283, v282, v284, v285);
LABEL_309:

LABEL_310:

        goto LABEL_311;
      }

      if (v285)
      {
        v484 = v531;
        v485 = v524;
        if (v524)
        {
          v486 = v526;
          if (sub_1003A370C(v283, v526))
          {
            goto LABEL_337;
          }

          goto LABEL_332;
        }

        goto LABEL_338;
      }

      v484 = v531;
      v485 = v524;
      if (v524)
      {
LABEL_332:
        v489 = 1;
LABEL_339:

        sub_1003A30F4(v526, v527, v528, v489);

        sub_1003A30F4(v283, v282, v284, v285);
        sub_100025F40(v557, &qword_1005DC128, &qword_100500D08);
        v471 = &v561;
        v469 = &qword_1005DC128;
        v470 = &qword_100500D08;
        goto LABEL_256;
      }

      v486 = v526;
      if (!sub_10020FBD0(v283, v282, v284 & 0xFFFFFFFFFFFFFFLL, v526, v527, v528 & 0xFFFFFFFFFFFFFFLL))
      {
LABEL_338:
        v489 = 0;
        goto LABEL_339;
      }

LABEL_337:
      v139 = sub_1002F3208(v484, v525);
      sub_1003A30F4(v486, v527, v528, v485);
      sub_1003A30F4(v283, v282, v284, v285);
      sub_100025F40(v557, &qword_1005DC128, &qword_100500D08);
      sub_100025F40(&v561, &qword_1005DC128, &qword_100500D08);

LABEL_318:

      v244 = v532;
LABEL_283:
      sub_1003DADA0(v244, type metadata accessor for Command);
      return v139 & 1;
    case 4u:
      v532 = v107;
      sub_1003DABD4(v107, v92, type metadata accessor for Command);
      v191 = *v92;
      v190 = *(v92 + 1);
      v530 = *(v92 + 4);
      v192 = *(v92 + 3);
      v193 = *(v92 + 4);
      v194 = *(v92 + 10) | ((*(v92 + 22) | (v92[46] << 16)) << 32);
      v195 = v92[47];
      v196 = *(v92 + 6);
      v197 = v533;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1003A30F4(v192, v193, v194, v195);

        goto LABEL_203;
      }

      v525 = v190;
      v526 = v192;
      LODWORD(v527) = v195;
      v528 = v193;
      v529 = v194;
      v531 = v196;
      v199 = *v197;
      v198 = *(v197 + 8);
      v524 = *(v197 + 16);
      v200 = *(v197 + 24);
      v201 = *(v197 + 32);
      v202 = *(v197 + 40) | ((*(v197 + 44) | (*(v197 + 46) << 16)) << 32);
      v203 = *(v197 + 47);
      v204 = *(v197 + 48);
      v205 = sub_10039AE70(v191, v199);

      if ((v205 & 1) == 0)
      {

        sub_1003A30F4(v200, v201, v202, v203);

        sub_1003A30F4(v526, v528, v529, v527);
        goto LABEL_310;
      }

      v533 = v204;
      v206 = v203;
      v207 = v202;
      if ((v530 | (v530 << 32)) != (v524 | (v524 << 32)))
      {
        sub_1003A30F4(v200, v201, v202, v203);
        sub_1003A30F4(v526, v528, v529, v527);

        goto LABEL_309;
      }

      v208 = sub_1000FFC98(v525, v198);

      v209 = v201;
      if ((v208 & 1) == 0)
      {
        sub_1003A30F4(v200, v201, v202, v203);
        sub_1003A30F4(v526, v528, v529, v527);
        goto LABEL_309;
      }

      v210 = v200;
      v211 = v528;
      v212 = v529;
      v213 = v527;
      v214 = v526;
      if (v527)
      {
        v215 = v531;
        if (v206)
        {
          v216 = v210;
          if ((sub_1003A370C(v526, v210) & 1) == 0)
          {
            v217 = 1;
LABEL_334:
            v212 = v529;
            goto LABEL_335;
          }

          goto LABEL_328;
        }

        v217 = 0;
      }

      else
      {
        v215 = v531;
        if ((v206 & 1) == 0)
        {
          v216 = v210;
          if (!sub_10020FBD0(v526, v528, v529 & 0xFFFFFFFFFFFFFFLL, v210, v209, v207 & 0xFFFFFFFFFFFFFFLL))
          {
            v217 = 0;
            goto LABEL_334;
          }

LABEL_328:
          v531 = v209;
          v139 = sub_1002F3208(v215, v533);
          sub_1003A30F4(v216, v531, v207, v206);
          sub_1003A30F4(v214, v211, v529, v213);
          goto LABEL_317;
        }

        v217 = 1;
      }

LABEL_335:

      sub_1003A30F4(v210, v209, v207, v217);

      sub_1003A30F4(v214, v211, v212, v213);
LABEL_311:
      v467 = v532;
LABEL_312:
      sub_1003DADA0(v467, type metadata accessor for Command);
LABEL_313:
      v139 = 0;
      return v139 & 1;
    case 5u:
      v336 = v107;
      sub_1003DABD4(v107, v89, type metadata accessor for Command);
      v337 = *v89;
      v338 = *(v89 + 2);
      v532 = *(v89 + 3);
      v339 = *(v89 + 8);
      v340 = *(v89 + 18);
      v341 = v89[38];
      v342 = v533;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v107 = v336;
        goto LABEL_210;
      }

      v343 = *(v89 + 2);
      v344 = *v342;
      v345 = *(v342 + 16);
      if ((v343 | (v343 << 32)) == (*(v342 + 8) | (*(v342 + 8) << 32)))
      {
        v346 = *(v342 + 24);
        v530 = *(v342 + 32);
        v531 = v346;
        v529 = *(v342 + 36);
        v533 = *(v342 + 38);
        v347 = sub_1000FFC98(v337, v344);

        if (v347)
        {
          v139 = sub_10020FBD0(v338, v532, v339 | (v340 << 32) | (v341 << 48), v345, v531, v530 | (v529 << 32) | (v533 << 48));

          v244 = v336;
          goto LABEL_283;
        }
      }

      else
      {
      }

      v467 = v336;
      goto LABEL_312;
    case 6u:
      sub_1003DABD4(v107, v86, type metadata accessor for Command);
      v357 = *v86;
      v358 = *(v86 + 2);
      v359 = *(v86 + 6);
      v360 = *(v86 + 4);
      v361 = *(v86 + 5);
      v362 = *(v86 + 6);
      v363 = v533;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_210;
      }

      v530 = v360;
      v532 = v107;
      v364 = *(v86 + 2);
      v365 = *v363;
      v366 = *(v363 + 8);
      v367 = *(v363 + 16);
      v368 = *(v363 + 32);
      v531 = *(v363 + 40);
      v528 = *(v363 + 48);
      v529 = v368;
      if ((v364 | (v364 << 32)) == (v366 | (v366 << 32)))
      {
        v369 = *(v363 + 24);
        v370 = sub_1000FFC98(v357, v365);

        if ((v370 & 1) != 0 && (v359 | (v359 << 32)) == (v369 | (v369 << 32)))
        {
          v371 = sub_1000FFC98(v358, v367);

          if (v371)
          {
            v372 = sub_10020FB40(v361, v531);
            v373 = v532;
            if (v372)
            {
              sub_10039FBE4(v362, v528);
              v375 = v374;

              if (v375)
              {
                v320 = v373;
                goto LABEL_270;
              }
            }

            else
            {
            }

            v467 = v373;
            goto LABEL_312;
          }

LABEL_241:

          goto LABEL_311;
        }
      }

      else
      {
      }

      goto LABEL_241;
    case 7u:
      v97 = v499;
      sub_1003DABD4(v107, v499, type metadata accessor for Command);
      v255 = *v97;
      v256 = *(v97 + 2);
      v257 = v533;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_85;
      }

LABEL_71:
      v258 = *(v97 + 2);
      v259 = *v257;
      v260 = *(v257 + 8);
      v261 = *(v257 + 16);
      if ((v258 | (v258 << 32)) != (v260 | (v260 << 32)))
      {
        goto LABEL_181;
      }

      v262 = sub_1000FFC98(v255, v259);

      if ((v262 & 1) == 0)
      {
        goto LABEL_276;
      }

      v118 = sub_100399F0C(v256, v261);
      goto LABEL_280;
    case 8u:
      v384 = v500;
      sub_1003DABD4(v107, v500, type metadata accessor for Command);
      v385 = *v384;
      v386 = *(v384 + 16);
      v387 = v533;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_185;
      }

      v388 = *(v384 + 8);
      v389 = *v387;
      v390 = *(v387 + 8);
      v391 = *(v387 + 16);
      if ((v388 | (v388 << 32)) != (v390 | (v390 << 32)))
      {

        goto LABEL_276;
      }

      v392 = sub_1000FFC98(v385, v389);

      if ((v392 & 1) == 0)
      {
        goto LABEL_276;
      }

      v139 = sub_1002F32E8(v386, v391);

      goto LABEL_281;
    case 9u:
      v228 = v501;
      sub_1003DABD4(v107, v501, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xAu:
      v228 = v502;
      sub_1003DABD4(v107, v502, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xBu:
      v532 = v107;
      v178 = v503;
      sub_1003DABD4(v107, v503, type metadata accessor for Command);
      v180 = *v178;
      v179 = *(v178 + 8);
      v181 = *(v178 + 16);
      v530 = *(v178 + 24);
      v182 = *(v178 + 38);
      v183 = *(v178 + 36);
      v184 = *(v178 + 32);
      v185 = v533;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v107 = v532;
        goto LABEL_210;
      }

      v186 = *v185;
      v187 = *(v185 + 8);
      v188 = *(v185 + 16);
      v531 = *(v185 + 24);
      LODWORD(v529) = *(v185 + 38);
      LODWORD(v528) = *(v185 + 36);
      v189 = *(v185 + 32);
      if (v180 == v186 && v179 == v187)
      {
      }

      else
      {
        v458 = sub_1004A6D34();

        if ((v458 & 1) == 0)
        {
          goto LABEL_258;
        }
      }

      if (v181)
      {
        if (v188)
        {
          v459 = v189 | ((v528 | (v529 << 16)) << 32);

          v461 = sub_10020FBD0(v460, v530, (v184 | ((v183 | (v182 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v188, v531, v459 & 0xFFFFFFFFFFFFFFLL);

          if (!v461)
          {
            goto LABEL_311;
          }

LABEL_259:
          v320 = v532;
LABEL_270:
          sub_1003DADA0(v320, type metadata accessor for Command);
          v139 = 1;
          return v139 & 1;
        }
      }

      else if (!v188)
      {
        goto LABEL_259;
      }

LABEL_258:

      goto LABEL_311;
    case 0xCu:
      v218 = v504;
      sub_1003DABD4(v107, v504, type metadata accessor for Command);
      v220 = *v218;
      v219 = v218[1];
      v222 = v218[2];
      v221 = v218[3];
      v223 = v533;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_85;
      }

      v224 = *v223;
      v225 = v223[1];
      v227 = v223[2];
      v226 = v223[3];
      if (v220 == v224 && v219 == v225)
      {
      }

      else
      {
        v462 = sub_1004A6D34();

        if ((v462 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      if (v222 == v227 && v221 == v226)
      {
LABEL_19:

        goto LABEL_269;
      }

      v455 = sub_1004A6D34();

LABEL_216:

      if ((v455 & 1) == 0)
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0xDu:
      v354 = v505;
      sub_1003DABD4(v107, v505, type metadata accessor for Command);
      v355 = *v354;
      v356 = v533;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_86;
      }

      v118 = sub_1001CE84C(v355, *v356);
      goto LABEL_280;
    case 0xEu:
      v162 = v508;
      sub_1003DABD4(v107, v508, type metadata accessor for Command);
      v163 = *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v164 = *(v162 + v163);
      v165 = *(v162 + v163 + 8);
      v166 = v533;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_130;
      }

      v167 = *(v166 + v163);
      v532 = *(v166 + v163 + 8);
      v168 = v166;
      v169 = v490;
      goto LABEL_127;
    case 0xFu:
      v263 = v510;
      sub_1003DABD4(v107, v510, type metadata accessor for Command);
      v264 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v265 = *(v264 + 48);
      v266 = *(v263 + v265);
      v267 = *(v264 + 64);
      v268 = *(v263 + v267);
      v269 = v533;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        v382 = &qword_1005CDA78;
        v383 = &unk_1004CF7E0;
        goto LABEL_208;
      }

      v532 = v268;
      v270 = *(v269 + v265);
      v271 = *(v269 + v267);
      v169 = v492;
      sub_100025FDC(v269, v492, &qword_1005CDA78, &unk_1004CF7E0);
      v272 = sub_100488D88(v263, v169);
      sub_100025F40(v263, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v272 & 1) == 0)
      {
        v465 = &qword_1005CDA78;
        v466 = &unk_1004CF7E0;
        goto LABEL_249;
      }

      v273 = sub_1002F2B00(v266, v270);

      if (v273)
      {
        v274 = v169;
        v139 = sub_10039B1CC(v532, v271);

        v275 = &qword_1005CDA78;
        v276 = &unk_1004CF7E0;
        goto LABEL_167;
      }

      v452 = &qword_1005CDA78;
      v453 = &unk_1004CF7E0;
      goto LABEL_275;
    case 0x10u:
      v143 = v511;
      sub_1003DABD4(v107, v511, type metadata accessor for Command);
      v144 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v145 = *(v144 + 48);
      v146 = *(v143 + v145);
      v147 = *(v144 + 64);
      v149 = *(v143 + v147);
      v148 = *(v143 + v147 + 8);
      v150 = v533;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_10027FF20();

        v382 = &qword_1005CDA78;
        v383 = &unk_1004CF7E0;
        goto LABEL_191;
      }

      v151 = *(v150 + v145);
      v152 = *(v150 + v147 + 8);
      v531 = *(v150 + v147);
      v532 = v107;
      v530 = v152;
      v153 = v497;
      sub_100025FDC(v150, v497, &qword_1005CDA78, &unk_1004CF7E0);
      v154 = sub_100488D88(v143, v153);
      sub_100025F40(v143, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v154 & 1) == 0)
      {
        v456 = &qword_1005CDA78;
        v457 = &unk_1004CF7E0;
        goto LABEL_231;
      }

      v155 = v530;
      v156 = v531;
      v157 = sub_10039B220(v146, v151);

      v158 = v532;
      if (v157)
      {
        v139 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v149, v148, v156, v155);
        sub_10027FF20();
        sub_10027FF20();
        v159 = &qword_1005CDA78;
        v160 = &unk_1004CF7E0;
        v161 = v497;
        goto LABEL_62;
      }

      v472 = &qword_1005CDA78;
      v473 = &unk_1004CF7E0;
      v474 = v497;
      goto LABEL_264;
    case 0x11u:
      v321 = v506;
      sub_1003DABD4(v107, v506, type metadata accessor for Command);
      v322 = *v321;
      v323 = v321[1];
      v325 = v321[2];
      v324 = v321[3];
      v326 = v533;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1000B37D8(v322);
        goto LABEL_210;
      }

      v532 = v107;
      v327 = *v326;
      v328 = v326[1];
      v330 = v326[2];
      v329 = v326[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v322, v327) & 1) == 0)
      {

        sub_1000B37D8(v327);
        sub_1000B37D8(v322);
        goto LABEL_311;
      }

      if (v325)
      {
        if (!v330)
        {

          sub_1000B37D8(v327);
          sub_1000B37D8(v322);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v323 == v328 && v325 == v330)
        {
        }

        else
        {
          v488 = sub_1004A6D34();

          if ((v488 & 1) == 0)
          {
            sub_1000B37D8(v327);
            sub_1000B37D8(v322);
LABEL_324:

LABEL_325:

            v467 = v532;
            goto LABEL_312;
          }
        }
      }

      else if (v330)
      {
        sub_1000B37D8(v327);
        sub_1000B37D8(v322);
        goto LABEL_293;
      }

      v139 = sub_1002F361C(v324, v329);
      sub_1000B37D8(v327);
      sub_1000B37D8(v322);
      goto LABEL_317;
    case 0x12u:
      v162 = v512;
      sub_1003DABD4(v107, v512, type metadata accessor for Command);
      v376 = *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v164 = *(v162 + v376);
      v165 = *(v162 + v376 + 8);
      v377 = v533;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_130:

        v382 = &qword_1005CDA78;
        v383 = &unk_1004CF7E0;
        goto LABEL_154;
      }

      v167 = *(v377 + v376);
      v532 = *(v377 + v376 + 8);
      v168 = v377;
      v169 = v493;
LABEL_127:
      sub_100025FDC(v168, v169, &qword_1005CDA78, &unk_1004CF7E0);
      v378 = sub_100488D88(v162, v169);
      sub_100025F40(v162, &qword_1005CDA78, &unk_1004CF7E0);
      if ((v378 & 1) == 0)
      {
        v452 = &qword_1005CDA78;
        v453 = &unk_1004CF7E0;
        goto LABEL_275;
      }

      if ((v165 | (v165 << 32)) == (v532 | (v532 << 32)))
      {
        v379 = sub_1000FFC98(v164, v167);

        v380 = &qword_1005CDA78;
        v381 = &unk_1004CF7E0;
        goto LABEL_151;
      }

      v463 = &qword_1005CDA78;
      v464 = &unk_1004CF7E0;
      goto LABEL_246;
    case 0x13u:
      v414 = v507;
      sub_1003DABD4(v107, v507, type metadata accessor for Command);
      v415 = *v414;
      v416 = v414[1];
      v417 = v414[2];
      v418 = v533;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_196;
      }

      v419 = *v418;
      v420 = v418[1];
      v421 = v418[2];
      if (sub_10020FB40(v416, v420))
      {
        v422 = sub_10020FA9C(v417, v421);

        if (v422)
        {
          goto LABEL_269;
        }
      }

      else
      {
      }

      goto LABEL_278;
    case 0x14u:
      v331 = v509;
      sub_1003DABD4(v107, v509, type metadata accessor for Command);
      v333 = *(v331 + 8);
      v332 = *(v331 + 16);
      v334 = *(v331 + 24);
      v335 = v533;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_210;
      }

      if (*v331 != *v335)
      {
        goto LABEL_278;
      }

      if (v334)
      {
        if (*(v335 + 24))
        {
          goto LABEL_269;
        }

        goto LABEL_278;
      }

      if ((*(v335 + 24) & 1) != 0 || v333 != *(v335 + 8) || v332 != *(v335 + 16))
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0x15u:
      v162 = v514;
      sub_1003DABD4(v107, v514, type metadata accessor for Command);
      v348 = *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v349 = *(v162 + v348);
      v350 = *(v162 + v348 + 8);
      v351 = v533;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_153;
      }

      v352 = *(v351 + v348);
      v532 = *(v351 + v348 + 8);
      v353 = v351;
      v169 = v494;
      goto LABEL_148;
    case 0x16u:
      v162 = v515;
      sub_1003DABD4(v107, v515, type metadata accessor for Command);
      v410 = *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v349 = *(v162 + v410);
      v350 = *(v162 + v410 + 8);
      v411 = v533;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_153:

        v382 = &qword_1005CD1C0;
        v383 = &unk_1004CEC40;
LABEL_154:
        v413 = v162;
        goto LABEL_209;
      }

      v352 = *(v411 + v410);
      v532 = *(v411 + v410 + 8);
      v353 = v411;
      v169 = v495;
LABEL_148:
      sub_100025FDC(v353, v169, &qword_1005CD1C0, &unk_1004CEC40);
      v412 = sub_100488A9C(v162, v169);
      sub_100025F40(v162, &qword_1005CD1C0, &unk_1004CEC40);
      if ((v412 & 1) == 0)
      {
        v452 = &qword_1005CD1C0;
        v453 = &unk_1004CEC40;
        goto LABEL_275;
      }

      if ((v350 | (v350 << 32)) == (v532 | (v532 << 32)))
      {
        v379 = sub_1000FFC98(v349, v352);

        v380 = &qword_1005CD1C0;
        v381 = &unk_1004CEC40;
LABEL_151:
        sub_100025F40(v169, v380, v381);
        if (v379)
        {
LABEL_269:
          v320 = v107;
          goto LABEL_270;
        }
      }

      else
      {

        v463 = &qword_1005CD1C0;
        v464 = &unk_1004CEC40;
LABEL_246:
        sub_100025F40(v169, v463, v464);
      }

      goto LABEL_278;
    case 0x17u:
      v263 = v518;
      sub_1003DABD4(v107, v518, type metadata accessor for Command);
      v423 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
      v424 = *(v423 + 48);
      v425 = *(v263 + v424);
      v426 = *(v423 + 64);
      v427 = *(v263 + v426);
      v428 = v533;
      if (swift_getEnumCaseMultiPayload() != 23)
      {

LABEL_207:
        v382 = &qword_1005CD1C0;
        v383 = &unk_1004CEC40;
LABEL_208:
        v413 = v263;
        goto LABEL_209;
      }

      v532 = v427;
      v429 = *(v428 + v424);
      v430 = *(v428 + v426);
      v169 = v496;
      sub_100025FDC(v428, v496, &qword_1005CD1C0, &unk_1004CEC40);
      v431 = sub_100488A9C(v263, v169);
      sub_100025F40(v263, &qword_1005CD1C0, &unk_1004CEC40);
      if (v431)
      {
        v432 = sub_1002F2B00(v425, v429);

        if (v432)
        {
          v274 = v169;
          v139 = sub_10039B1CC(v532, v430);

          v275 = &qword_1005CD1C0;
          v276 = &unk_1004CEC40;
LABEL_167:
          sub_100025F40(v274, v275, v276);
          goto LABEL_282;
        }

        v452 = &qword_1005CD1C0;
        v453 = &unk_1004CEC40;
LABEL_275:
        sub_100025F40(v169, v452, v453);
      }

      else
      {
        v465 = &qword_1005CD1C0;
        v466 = &unk_1004CEC40;
LABEL_249:
        sub_100025F40(v169, v465, v466);
      }

      goto LABEL_276;
    case 0x18u:
      v245 = v513;
      sub_1003DABD4(v107, v513, type metadata accessor for Command);
      v246 = *v245;
      v247 = v245[1];
      v249 = v245[2];
      v248 = v245[3];
      v250 = v533;
      if (swift_getEnumCaseMultiPayload() != 24)
      {

        sub_1000B37D8(v246);
        goto LABEL_210;
      }

      v532 = v107;
      v251 = *v250;
      v252 = v250[1];
      v254 = v250[2];
      v253 = v250[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v246, v251) & 1) == 0)
      {

        sub_1000B37D8(v251);
        sub_1000B37D8(v246);
        goto LABEL_311;
      }

      if (v249)
      {
        if (!v254)
        {

          sub_1000B37D8(v251);
          sub_1000B37D8(v246);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v247 == v252 && v249 == v254)
        {
        }

        else
        {
          v479 = sub_1004A6D34();

          if ((v479 & 1) == 0)
          {
            sub_1000B37D8(v251);
            sub_1000B37D8(v246);
            goto LABEL_324;
          }
        }
      }

      else if (v254)
      {
        sub_1000B37D8(v251);
        sub_1000B37D8(v246);
LABEL_293:

        goto LABEL_325;
      }

      v139 = sub_1002F361C(v248, v253);
      sub_1000B37D8(v251);
      sub_1000B37D8(v246);
LABEL_317:

      goto LABEL_318;
    case 0x19u:
      v143 = v523;
      sub_1003DABD4(v107, v523, type metadata accessor for Command);
      v231 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v232 = *(v231 + 48);
      v233 = *(v143 + v232);
      v234 = *(v231 + 64);
      v236 = *(v143 + v234);
      v235 = *(v143 + v234 + 8);
      v237 = v533;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        sub_10027FF20();

        v382 = &qword_1005CD1C0;
        v383 = &unk_1004CEC40;
LABEL_191:
        v413 = v143;
LABEL_209:
        sub_100025F40(v413, v382, v383);
        goto LABEL_210;
      }

      v238 = *(v237 + v232);
      v239 = *(v237 + v234 + 8);
      v531 = *(v237 + v234);
      v532 = v107;
      v530 = v239;
      v153 = v498;
      sub_100025FDC(v237, v498, &qword_1005CD1C0, &unk_1004CEC40);
      v240 = sub_100488A9C(v143, v153);
      sub_100025F40(v143, &qword_1005CD1C0, &unk_1004CEC40);
      if ((v240 & 1) == 0)
      {
        v456 = &qword_1005CD1C0;
        v457 = &unk_1004CEC40;
LABEL_231:
        sub_100025F40(v153, v456, v457);
        sub_10027FF20();

        sub_10027FF20();
        goto LABEL_311;
      }

      v241 = v530;
      v242 = v531;
      v243 = sub_10039B220(v233, v238);

      v158 = v532;
      if (v243)
      {
        v139 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v236, v235, v242, v241);
        sub_10027FF20();
        sub_10027FF20();
        v159 = &qword_1005CD1C0;
        v160 = &unk_1004CEC40;
        v161 = v498;
LABEL_62:
        sub_100025F40(v161, v159, v160);
        v244 = v158;
        goto LABEL_283;
      }

      v472 = &qword_1005CD1C0;
      v473 = &unk_1004CEC40;
      v474 = v498;
LABEL_264:
      sub_100025F40(v474, v472, v473);
      sub_10027FF20();
      sub_10027FF20();
      v467 = v158;
      goto LABEL_312;
    case 0x1Au:
      v263 = v520;
      sub_1003DABD4(v107, v520, type metadata accessor for Command);
      v449 = v533;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_207;
      }

      v450 = v449;
      v451 = v491;
      sub_100025FDC(v450, v491, &qword_1005CD1C0, &unk_1004CEC40);
      v139 = sub_100488A9C(v263, v451);
      sub_100025F40(v451, &qword_1005CD1C0, &unk_1004CEC40);
      sub_100025F40(v263, &qword_1005CD1C0, &unk_1004CEC40);
      goto LABEL_282;
    case 0x1Bu:
      v136 = v516;
      sub_1003DABD4(v107, v516, type metadata accessor for Command);
      v137 = *v136;
      v138 = v533;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_197;
      }

      v139 = sub_10020FBD0(v137, *(v136 + 8), *(v136 + 16) | (*(v136 + 22) << 48) | (*(v136 + 20) << 32), *v138, *(v138 + 8), *(v138 + 16) | (*(v138 + 20) << 32) | (*(v138 + 22) << 48));

      goto LABEL_282;
    case 0x1Cu:
      v228 = v517;
      sub_1003DABD4(v107, v517, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_86;
      }

LABEL_169:
      v305 = *(v228 + 8);
LABEL_170:
      v433 = *v230;
      if ((v305 | (v305 << 32)) != (*(v230 + 8) | (*(v230 + 8) << 32)))
      {
        goto LABEL_276;
      }

      v434 = sub_1000FFC98(v229, *v230);
      goto LABEL_215;
    case 0x1Du:
      v435 = v521;
      sub_1003DABD4(v107, v521, type metadata accessor for Command);
      v436 = *v435;
      v437 = *(v435 + 24);
      v438 = v533;
      if (swift_getEnumCaseMultiPayload() != 29)
      {

        goto LABEL_86;
      }

      v439 = *(v435 + 22);
      v440 = *(v435 + 20);
      v441 = *(v435 + 16);
      v442 = *(v435 + 8);
      v444 = *v438;
      v443 = *(v438 + 8);
      v445 = *(v438 + 16);
      v446 = *(v438 + 20);
      v447 = *(v438 + 22);
      v448 = *(v438 + 24);
      if (sub_10020FBD0(v436, v442, v441 | (v439 << 48) | (v440 << 32), v444, v443, v445 | (v446 << 32) | (v447 << 48)))
      {
        v139 = sub_10039C32C(v437, v448);

        goto LABEL_282;
      }

      goto LABEL_276;
    case 0x1Eu:
      v532 = v107;
      v393 = v519;
      sub_1003DABD4(v107, v519, type metadata accessor for Command);
      v395 = *v393;
      v394 = *(v393 + 8);
      v396 = *(v393 + 16);
      v397 = *(v393 + 24);
      v398 = v533;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

LABEL_203:

        v107 = v532;
        goto LABEL_210;
      }

      v399 = *(v398 + 8);
      v400 = *(v398 + 16);
      v401 = *(v398 + 24);
      v402 = sub_10039C3E8(v395, *v398);

      if ((v402 & 1) == 0)
      {

        goto LABEL_310;
      }

      if ((v396 | (v396 << 32)) == (v400 | (v400 << 32)))
      {
        v403 = sub_1000FFC98(v394, v399);

        v312 = v532;
        if (v403)
        {
          v139 = sub_1003A370C(v397, v401);

          v244 = v312;
          goto LABEL_283;
        }
      }

      else
      {

        v312 = v532;
      }

      goto LABEL_273;
    case 0x1Fu:
      v306 = v524;
      sub_1003DABD4(v107, v524, type metadata accessor for Command);
      v307 = *v306;
      v308 = *(v306 + 16);
      v309 = *(v306 + 24);
      v310 = *(v306 + 32);
      v311 = v533;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

LABEL_196:

LABEL_197:

LABEL_210:
        sub_100025F40(v107, &qword_1005DC310, &qword_100500E28);
        goto LABEL_313;
      }

      v312 = v107;
      v313 = *(v306 + 8);
      v314 = *v311;
      v315 = *(v311 + 8);
      v316 = *(v311 + 24);
      v532 = *(v311 + 16);
      v317 = *(v311 + 32);
      if ((v313 | (v313 << 32)) == (v315 | (v315 << 32)))
      {
        v318 = sub_1000FFC98(v307, v314);

        if (v318 & 1) != 0 && (sub_1003A0868(v309, v316))
        {
          v319 = sub_1003A09B0(v310, v317);

          if (v319)
          {
            v320 = v312;
            goto LABEL_270;
          }

          goto LABEL_273;
        }
      }

      else
      {
      }

LABEL_273:
      v467 = v312;
      goto LABEL_312;
    case 0x20u:
      v404 = v522;
      sub_1003DABD4(v107, v522, type metadata accessor for Command);
      v405 = v404[1];
      v561 = *v404;
      v562 = v405;
      v406 = v404[3];
      v563 = v404[2];
      v564 = v406;
      v407 = v533;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v408 = v407[1];
        v540 = *v407;
        v541 = v408;
        v409 = v407[3];
        v542[0] = v407[2];
        v542[1] = v409;
        v139 = _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(&v561, &v540);
        sub_1003D9E64(&v540);
        sub_1003D9E64(&v561);
        goto LABEL_282;
      }

      sub_1003D9E64(&v561);
      goto LABEL_210;
    case 0x21u:
      v170 = v525;
      sub_1003DABD4(v107, v525, type metadata accessor for Command);
      v171 = *v170;
      v172 = *(v170 + 8);
      v173 = *(v170 + 16);
      v174 = v533;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
LABEL_185:

        goto LABEL_210;
      }

      v175 = *v174;
      v176 = *(v174 + 16);
      if (v171)
      {
        if (!v175)
        {
          goto LABEL_182;
        }

        if ((v172 | (v172 << 32)) != (*(v174 + 8) | (*(v174 + 8) << 32)))
        {
          v475 = *v174;

          swift_bridgeObjectRelease_n();
LABEL_276:

LABEL_277:

LABEL_278:
          v467 = v107;
          goto LABEL_312;
        }

        v177 = sub_1000FFC98(v171, *v174);

        if ((v177 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      else if (v175)
      {
        v468 = *(v174 + 16);

        goto LABEL_277;
      }

      v118 = sub_1003A3714(v173, v176);
      goto LABEL_280;
    case 0x22u:
      v140 = v526;
      sub_1003DABD4(v107, v526, type metadata accessor for Command);
      v141 = *v140;
      v142 = v533;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_86;
      }

      v118 = sub_10039C440(v141, *v142);
      goto LABEL_280;
    case 0x23u:
      v127 = v527;
      sub_1003DABD4(v107, v527, type metadata accessor for Command);
      v128 = *v127;
      v129 = v533;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_86;
      }

      v118 = sub_1003A370C(v128, *v129);
      goto LABEL_280;
    case 0x24u:
      v130 = v528;
      sub_1003DABD4(v107, v528, type metadata accessor for Command);
      v132 = *v130;
      v131 = v130[1];
      v133 = v533;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_86;
      }

      v134 = *v133;
      v135 = v133[1];
      if (v132 == v134 && v131 == v135)
      {
        goto LABEL_19;
      }

      v434 = sub_1004A6D34();
LABEL_215:
      v455 = v434;

      goto LABEL_216;
    case 0x25u:
      v119 = v529;
      sub_1003DABD4(v107, v529, type metadata accessor for Command);
      v121 = *v119;
      v120 = v119[1];
      v122 = v119[2];
      v123 = v533;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_85;
      }

      v124 = *v123;
      v125 = v123[1];
      v126 = v123[2];
      if (v121 == v124 && v120 == v125)
      {
      }

      else
      {
        v454 = sub_1004A6D34();

        if ((v454 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      v118 = sub_10039C650(v122, v126);
      goto LABEL_280;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() == 44)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() == 45)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() == 46)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() == 47)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    default:
      sub_1003DABD4(v107, v103, type metadata accessor for Command);
      v111 = *v103;
      v112 = *(v103 + 2);
      v113 = v533;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_85:

LABEL_86:

        goto LABEL_210;
      }

      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = *(v113 + 16);
      if ((*(v103 + 2) | (*(v103 + 2) << 32)) != (v115 | (v115 << 32)))
      {
LABEL_181:

LABEL_182:

        goto LABEL_276;
      }

      v117 = sub_1000FFC98(v111, v114);

      if ((v117 & 1) == 0)
      {
        goto LABEL_276;
      }

      v118 = sub_100398C80(v112, v116);
LABEL_280:
      v139 = v118;

LABEL_281:

LABEL_282:
      v244 = v107;
      goto LABEL_283;
  }
}

unint64_t sub_1003D9EE8()
{
  result = qword_1005DC130;
  if (!qword_1005DC130)
  {
    type metadata accessor for Command();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC130);
  }

  return result;
}

void sub_1003D9F40()
{
  sub_1003DA7C8(319, &qword_1005DC1B8, &qword_1005DC1C0, &qword_100500DB8);
  if (v0 <= 0x3F)
  {
    sub_1003DA7C8(319, &qword_1005DC1C8, &qword_1005DC1D0, &qword_100500DC0);
    if (v1 <= 0x3F)
    {
      sub_1003DA388(319, &qword_1005DC1D8);
      if (v2 <= 0x3F)
      {
        sub_1003DA388(319, &qword_1005DC1E0);
        if (v3 <= 0x3F)
        {
          sub_1003DA4F8(319, &qword_1005DC1F0);
          if (v4 <= 0x3F)
          {
            sub_1003DA47C();
            if (v5 <= 0x3F)
            {
              sub_1003DA7C8(319, &qword_1005D7E18, &qword_1005D7E20, &qword_100506180);
              if (v6 <= 0x3F)
              {
                sub_1002E8B34();
                if (v7 <= 0x3F)
                {
                  sub_1003DA4F8(319, &qword_1005D7DE0);
                  if (v8 <= 0x3F)
                  {
                    sub_100050E14(319, &qword_1005D5250);
                    if (v9 <= 0x3F)
                    {
                      sub_1003DA5E4(319, &qword_1005DC208, &qword_1005CDA78, &unk_1004CF7E0);
                      if (v10 <= 0x3F)
                      {
                        sub_1003DA648(319, &qword_1005DC210, &qword_1005CDA78, &unk_1004CF7E0);
                        if (v11 <= 0x3F)
                        {
                          sub_1003DA6E4(319, &qword_1005DC228, &qword_1005CDA78, &unk_1004CF7E0);
                          if (v12 <= 0x3F)
                          {
                            sub_1003DA550();
                            if (v13 <= 0x3F)
                            {
                              sub_1002E8F98();
                              if (v14 <= 0x3F)
                              {
                                sub_1002E8F20();
                                if (v15 <= 0x3F)
                                {
                                  sub_1003DA5E4(319, &qword_1005DC240, &qword_1005CD1C0, &unk_1004CEC40);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1003DA648(319, &qword_1005DC248, &qword_1005CD1C0, &unk_1004CEC40);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1003DA6E4(319, &qword_1005DC250, &qword_1005CD1C0, &unk_1004CEC40);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1003DA76C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1003DA7C8(319, &qword_1005DC260, &qword_1005DC268, &qword_100500DF0);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1003DA834();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1003DA8C8();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1003DA940();
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_100050E14(319, &qword_1005DC2A8);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_100050E14(319, &qword_1005DC2B0);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1003DA9CC();
                                                      if (v26 <= 0x3F)
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
}

void sub_1003DA388(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __chkstk_darwin(0);
    sub_10000DEFC(v3, v4);
    sub_10000DEFC(&qword_1005D7E10, &qword_1004F3060);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1003DA47C()
{
  if (!qword_1005DC1F8)
  {
    sub_10000DEFC(&qword_1005DC200, &qword_100500DD0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC1F8);
    }
  }
}

void sub_1003DA4F8(uint64_t a1, unint64_t *a2)
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

void sub_1003DA550()
{
  if (!qword_1005DC238)
  {
    sub_10000DEFC(&qword_1005D4660, &qword_1004E05E8);
    sub_10000DEFC(&qword_1005D7E40, &qword_1004F3070);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC238);
    }
  }
}

void sub_1003DA5E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1003DA648(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    sub_10000DEFC(&qword_1005DC218, &qword_100500DD8);
    sub_10000DEFC(&qword_1005DC220, &qword_100500DE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1003DA6E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    sub_10000DEFC(&qword_1005DC230, &qword_100500DE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1003DA76C()
{
  if (!qword_1005DC258)
  {
    sub_100016948();
    CommandSet = type metadata accessor for LastCommandSet();
    if (!v1)
    {
      atomic_store(CommandSet, &qword_1005DC258);
    }
  }
}

void sub_1003DA7C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1003DA834()
{
  if (!qword_1005DC270)
  {
    sub_10000DEFC(&qword_1005DC278, &qword_100500DF8);
    sub_10000DEFC(&qword_1005DC280, &qword_100500E00);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005DC270);
    }
  }
}

void sub_1003DA8C8()
{
  if (!qword_1005DC288)
  {
    sub_10000DEFC(&qword_1005DC290, &qword_100500E08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC288);
    }
  }
}

void sub_1003DA940()
{
  if (!qword_1005DC298)
  {
    sub_10000DEFC(&qword_1005D7E08, &qword_1004F4700);
    sub_10000DEFC(&qword_1005DC2A0, &qword_100500E10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC298);
    }
  }
}

void sub_1003DA9CC()
{
  if (!qword_1005DC2B8)
  {
    sub_10000DEFC(&unk_1005DC2C0, &qword_100500E18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005DC2B8);
    }
  }
}

uint64_t sub_1003DAA44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005CD7B0, &unk_1004D16C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003DAB74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  return sub_1003D6610(a1, a2, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), a4, a3);
}

uint64_t sub_1003DABD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DAC8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, void, void, void, void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a2, *(v4 + 16), *(v4 + 24), *(v4 + 32), **(v4 + 40), *(v4 + 48), *(v4 + 56));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1003DADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1003DAE20()
{
  v1 = *v0;
  v2 = 2 * *(*v0 + 16);
  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1003E54DC(0, v2, 0);
  v3 = v0[1];
  v4 = *(v1 + 16);
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = (2 * v4) | 1;

  sub_1003DAF48(v6, v1 + 32, v3, v5);
  v7 = v0[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v1 + 16) < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = (2 * v7) | 1;

  sub_1003DAF48(v9, v1 + 32, 0, v8);
  v10 = _swiftEmptyArrayStorage[2];
  if (v2 - v10 >= 0)
  {
    sub_1003DB068(v2 - v10, 0, 1);

    v0[1] = 0;
    v0[2] = v10;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1003DAF48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v13 = *(v11 + 24) >> 1;
  if (v13 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v7;
      }

LABEL_11:
      result = sub_1003E54DC(result, v14, 1);
      v11 = *v4;
      v13 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v11 + 16);
  if (v13 - v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 16 * v15 + 32), (v6 + 16 * v5), 16 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v16 = *(v11 + 16);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v11 + 16) = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}